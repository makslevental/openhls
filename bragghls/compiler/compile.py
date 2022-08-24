import argparse
import ast
import io
import logging
import os
import re
import shutil
import sys
from pathlib import Path
from subprocess import Popen, PIPE

import astor

from bragghls import ip_cores
from bragghls.compiler import state
from bragghls.compiler.runner import Forward, get_default_args
from bragghls.config import DEBUG, WIDTH_EXPONENT, WIDTH_FRACTION
from bragghls.ir.parse import parse_mlir_module
from bragghls.ir.transforms import transform_forward, rewrite_schedule_vals
from bragghls.rtl.emit_verilog import emit_verilog
from bragghls.rtl.ip import generate_imports_tcl
from bragghls.testbench.tb_runner import testbench_runner
from bragghls.util import import_module_from_fp, import_module_from_string

logger = logging.getLogger(__name__)


def translate(affine_mlir_str):
    cmd = [
        Path(sys.executable).parent.resolve() / "bragghls/bragghls_translate",
        "--emit-hlspy",
        "--mlir-print-elementsattrs-with-hex-if-larger=-1",
    ]
    logger.debug(" ".join(map(str, cmd)))
    p = Popen(
        cmd,
        stdout=PIPE,
        stdin=PIPE,
        stderr=PIPE,
    )
    res, err = p.communicate(input=affine_mlir_str.encode())
    if err:
        raise Exception(f"translation failed {err.decode()}")
    return res.decode()


def rewrite(pythonized_mlir):
    tree = ast.parse(pythonized_mlir)
    new_tree = transform_forward(tree)
    rewritten_py_code = astor.code_gen.to_source(new_tree)
    return rewritten_py_code


def run_rewrite(mod):
    file = io.StringIO()
    state.state = state.State(file)
    Forward(mod.forward)
    file.seek(0)
    s = file.read()

    args = get_default_args(mod.forward)
    output_name = next(
        arg_name
        for arg_name, arg in args.items()
        if hasattr(arg, "output") and arg.output
    )

    return s, output_name


def run_circt(mlir_output):
    p = Popen(
        [
            shutil.which("circt-opt", path=os.getenv("BRAGGHLS_PATH")),
            "-test-lp-scheduler=with=Problem",
            "-allow-unregistered-dialect",
        ],
        stdout=PIPE,
        stdin=PIPE,
        stderr=PIPE,
    )

    res, err = p.communicate(input=mlir_output.encode())
    if err:
        raise Exception(err.decode())
    return res.decode()


def scf_to_affine(fp):
    cst_map = {}
    old_lines = open(fp).readlines()
    new_lines = []

    for i, line in enumerate(old_lines):
        if "arith.constant" in line and "index" in line:
            matches = re.findall(r"%c([\d|_]+) = arith.constant (\d+) : index", line)[0]
            assert len(matches) == 2
            cst_map[f"%c{matches[0]}"] = matches[1]
        if "scf.for" in line or "scf.parallel" in line:
            for cst_ident, cst in cst_map.items():
                line = line.replace(cst_ident, cst)
            line = line.replace("scf", "affine")
        if "scf.yield" not in line and "cf.assert" not in line:
            new_lines.append(line)

    return "\n".join(new_lines)


def compile(
    fp,
    do_translate,
    do_rewrite,
    do_schedule,
    do_verilog,
    do_testbench,
    width_exponent,
    width_fraction,
    n_test_vectors,
    threshold,
):
    fp = os.path.abspath(fp)
    dirname, filename = os.path.split(fp)
    name, ext = os.path.splitext(filename)
    artifacts_dir = f"{dirname}"
    os.makedirs(artifacts_dir, exist_ok=True)

    if do_translate:
        logger.info("Translating MLIR back to Python")
        affine_mlir_str = scf_to_affine(fp)
        if DEBUG:
            with open(f"{artifacts_dir}/{name}.affine.mlir", "w") as f:
                f.write(affine_mlir_str)
        pythonized_mlir = translate(affine_mlir_str)
        if DEBUG:
            with open(f"{artifacts_dir}/{name}_pythonized_mlir.py", "w") as f:
                f.write(pythonized_mlir)
    else:
        with open(f"{artifacts_dir}/{name}_pythonized_mlir.py", "r") as f:
            pythonized_mlir = f.read()

    if do_rewrite:
        logger.info("Rewriting Python")
        rewritten_py_code = rewrite(pythonized_mlir)
        if DEBUG:
            with open(f"{artifacts_dir}/{name}_rewritten.py", "w") as f:
                f.write(rewritten_py_code)
            mod = import_module_from_fp(
                "pythonized_mlir", f"{artifacts_dir}/{name}_rewritten.py"
            )
        else:
            mod = import_module_from_string("pythonized_mlir", rewritten_py_code)
    else:
        mod = import_module_from_fp(
            "pythonized_mlir", f"{artifacts_dir}/{name}_rewritten.py"
        )

    if DEBUG:
        rewritten_mlir_output, output_name = run_rewrite(mod)
        with open(f"{artifacts_dir}/{name}.rewritten.mlir", "w") as f:
            f.write(rewritten_mlir_output)

    with open(f"{artifacts_dir}/{name}.rewritten.mlir", "r") as f:
        rewritten_mlir_output = f.read()

    if do_schedule:
        logger.info("Scheduling")
        scheduled_mlir = run_circt(rewritten_mlir_output)
        if DEBUG:
            with open(f"{artifacts_dir}/{name}.sched.mlir", "w") as f:
                f.write(scheduled_mlir)

        sched_and_rewritten_mlir = rewrite_schedule_vals(
            scheduled_mlir, rewritten_mlir_output
        )
        with open(f"{artifacts_dir}/{name}.rewritten.sched.mlir", "w") as f:
            f.write(sched_and_rewritten_mlir)

    if do_verilog or do_testbench:
        with open(f"{artifacts_dir}/{name}.rewritten.sched.mlir", "r") as f:
            sched_and_rewritten_mlir = f.read()

        (
            op_id_data,
            func_args,
            returns,
            output_map,
            return_time,
            vals,
            csts,
            pe_idxs,
        ) = parse_mlir_module(sched_and_rewritten_mlir)

    if do_verilog:
        logger.info("Emitting RTL")
        verilog_file, input_wires, output_wires, max_fsm_stage = emit_verilog(
            name,
            width_exponent,
            width_fraction,
            op_id_data,
            func_args,
            returns,
            return_time,
            vals,
            csts,
            pe_idxs,
            for_testbench=do_testbench
        )
        verilog_file = verilog_file.replace("%", "p_")
        with open(f"{artifacts_dir}/{name}.sv", "w") as f:
            f.write(verilog_file)

        # pblock_bridge = pblock_bridge.replace("%", "p_")
        # with open(f"{artifacts_dir}/{name}_pblock_bridge.sv", "w") as f:
        #     f.write(pblock_bridge)

        imports_file = generate_imports_tcl(
            f"{name}.sv", width_exponent, width_fraction
        )
        with open(f"{artifacts_dir}/imports.tcl", "w") as f:
            f.write(imports_file)

        logger.info(f"Final FSM time step {max_fsm_stage}")

    logger.info(f"RTL top-level {name}")

    for ip_core_sv in [
        f"flopoco_fadd_{width_exponent}_{width_fraction}.sv",
        f"flopoco_fmul_{width_exponent}_{width_fraction}.sv",
        f"flopoco_fdiv_{width_exponent}_{width_fraction}.sv",
        f"flopoco_neg.sv",
        f"flopoco_relu.sv",
        f"alveo-u280-xdc.xdc",
    ]:
        full_file_name = os.path.join(os.path.dirname(ip_cores.__file__), ip_core_sv)
        if os.path.isfile(full_file_name):
            shutil.copy(full_file_name, f"{artifacts_dir}/")

    if do_testbench:
        logger.info("Running testbench")

        max_fsm_stage = return_time + 1
        testbench_runner(
            proj_path=f"{artifacts_dir}",
            module_fp=os.path.abspath(f"{artifacts_dir}/{name}_rewritten.py"),
            sv_file_name=f"{name}.sv",
            top_level=name,
            max_fsm_stage=max_fsm_stage,
            output_map={
                val_name.replace("%", "output_p_"): (arr_name, idx)
                for val_name, (arr_name, idx) in output_map.items()
            },
            width_exponent=width_exponent,
            width_fraction=width_fraction,
            ip_cores_path=os.path.dirname(ip_cores.__file__),
            n_test_vectors=n_test_vectors,
            threshold=threshold,
        )
        logger.info("Thank you, come again")
        os.remove(f"{artifacts_dir}/{name}_rewritten.mlir")
        sys.exit(0)
    os.remove(f"{artifacts_dir}/{name}_rewritten.mlir")


def main():
    parser = argparse.ArgumentParser("BraggHLS compiler driver")
    parser.add_argument("fp", help="Filepath of top-level MLIR file")
    parser.add_argument(
        "-t",
        "--translate",
        default=False,
        action="store_true",
        help="Translate MLIR to python",
    )
    parser.add_argument(
        "-r",
        "--rewrite",
        default=False,
        action="store_true",
        help="Transform/rewrite python",
    )
    parser.add_argument(
        "-s",
        "--schedule",
        default=False,
        action="store_true",
        help="Schedule the model using CIRCT",
    )
    parser.add_argument(
        "-v", "--verilog", default=False, action="store_true", help="Emit verilog"
    )
    parser.add_argument(
        "-b",
        "--testbench",
        default=False,
        action="store_true",
        help="Run autogenerated testbench",
    )
    parser.add_argument(
        "-n",
        "--n_test_vectors",
        default=10,
        type=int,
        help="Number of test vectors for testbench",
    )
    parser.add_argument(
        "--threshold",
        type=float,
        help="Test for average number of testbench failures instead of absolute",
    )
    args = parser.parse_args()
    compile(
        args.fp,
        args.translate,
        args.rewrite,
        args.schedule,
        args.verilog,
        args.testbench,
        WIDTH_EXPONENT,
        WIDTH_FRACTION,
        args.n_test_vectors,
        args.threshold,
    )


if __name__ == "__main__":
    main()
