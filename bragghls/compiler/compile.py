import argparse
import ast
import importlib.util
import io
import os
import shutil
from subprocess import Popen, PIPE

import astor

import bragghls.runner
import bragghls.state
from bragghls.parse import parse_mlir_module
from bragghls.rtl.emit_verilog import emit_verilog
from bragghls.runner import Forward, get_default_args
from bragghls.testbench.tb_runner import testbench_runner
from bragghls.transforms import transform_forward, rewrite_schedule_vals
from scripts.hack_affine_scf import scf_to_affine


def import_module_from_string(name: str, source: str):
    spec = importlib.util.spec_from_loader(name, loader=None)
    module = importlib.util.module_from_spec(spec)
    exec(source, module.__dict__)
    return module


def import_module_from_fp(name: str, fp: str):
    spec = importlib.util.spec_from_file_location(name, fp)
    mod = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(mod)
    return mod


def translate(affine_mlir_str):
    p = Popen(
        [
            shutil.which("bragghls_translate", path=os.getenv("BRAGGHLS_PATH")),
            "--emit-hlspy",
            "--mlir-print-elementsattrs-with-hex-if-larger=-1",
        ],
        stdout=PIPE,
        stdin=PIPE,
        stderr=PIPE,
    )
    return p.communicate(input=affine_mlir_str.encode())[0].decode()


def rewrite(pythonized_mlir):
    tree = ast.parse(pythonized_mlir)
    new_tree = transform_forward(tree)
    rewritten_py_code = astor.code_gen.to_source(new_tree)
    return rewritten_py_code


def run_rewrite(mod):
    file = io.StringIO()
    bragghls.state.state = bragghls.state.State(file)
    Forward(mod.forward)
    file.seek(0)
    s = file.read()

    args = get_default_args(mod.forward)
    output_name = next(arg_name for arg_name, arg in args.items() if hasattr(arg, "output") and arg.output)

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


def main(args):
    dirname, filename = os.path.split(args.fp)
    name, ext = os.path.splitext(filename)
    artifacts_dir = f"{dirname}"
    os.makedirs(artifacts_dir, exist_ok=True)

    if args.translate and not os.path.exists(f"{artifacts_dir}/{name}_pythonized_mlir.py"):
        affine_mlir_str = scf_to_affine(args.fp)
        pythonized_mlir = translate(affine_mlir_str)
        if DEBUG:
            with open(f"{artifacts_dir}/{name}_pythonized_mlir.py", "w") as f:
                f.write(pythonized_mlir)
    else:
        with open(f"{artifacts_dir}/{name}_pythonized_mlir.py", "r") as f:
            pythonized_mlir = f.read()

    output_name = "UNKNOWN"
    if args.rewrite:
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

    rewritten_mlir_output, output_name = run_rewrite(mod)
    if DEBUG:
        with open(f"{artifacts_dir}/{name}.rewritten.mlir", "w") as f:
            f.write(rewritten_mlir_output)
    with open(f"{artifacts_dir}/{name}.rewritten.mlir", "r") as f:
        rewritten_mlir_output = f.read()

    if args.schedule:
        scheduled_mlir = run_circt(rewritten_mlir_output)
        if DEBUG:
            with open(f"{artifacts_dir}/{name}.sched.mlir", "w") as f:
                f.write(scheduled_mlir)

        sched_and_rewritten_mlir = rewrite_schedule_vals(
            scheduled_mlir, rewritten_mlir_output
        )
        if DEBUG:
            with open(f"{artifacts_dir}/{name}.rewritten.sched.mlir", "w") as f:
                f.write(sched_and_rewritten_mlir)
    else:
        with open(f"{artifacts_dir}/{name}.rewritten.sched.mlir", "r") as f:
            sched_and_rewritten_mlir = f.read()

    if args.verilog:
        (
            op_id_data,
            func_args,
            returns,
            return_time,
            vals,
            csts,
            pe_idxs,
        ) = parse_mlir_module(sched_and_rewritten_mlir)

        verilog_file, input_wires, output_wires, max_fsm_stage = emit_verilog(
            name,
            args.wE + args.wF + 3,
            op_id_data,
            func_args,
            returns,
            return_time,
            vals,
            csts,
            pe_idxs,
            include_outer_module=not args.testbench,
        )
        verilog_file = verilog_file.replace("%", "v_")
        with open(f"{artifacts_dir}/{name}.sv", "w") as f:
            f.write(verilog_file)

        print(f"{max_fsm_stage=}")

    if args.testbench:
        testbench_runner(
            proj_path=f"{artifacts_dir}",
            sv_file_name=f"{name}.sv",
            top_level=name,
            py_module=f"{name}_tb",
            max_fsm_stage=max_fsm_stage,
            output_name=output_name
        )

    os.remove(f"{artifacts_dir}/{name}_rewritten.mlir")

if __name__ == "__main__":
    DEBUG = bool(int(os.getenv("DEBUG", "0")))
    parser = argparse.ArgumentParser()
    parser.add_argument("fp")
    parser.add_argument("-t", "--translate", default=False, action="store_true")
    parser.add_argument("-r", "--rewrite", default=False, action="store_true")
    parser.add_argument("-s", "--schedule", default=False, action="store_true")
    parser.add_argument("-v", "--verilog", default=False, action="store_true")
    parser.add_argument("--wE", default=4)
    parser.add_argument("--wF", default=4)
    parser.add_argument("-b", "--testbench", default=False, action="store_true")
    args = parser.parse_args()
    main(args)
