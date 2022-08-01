import argparse
import os.path
import sys
from pathlib import Path

import numpy as np
from cocotb.handle import ModifiableObject
from cocotb.triggers import Timer

from bragghls.runner import (
    get_default_args,
    get_py_module_args_globals,
    run_model_with_fp_number,
)
from bragghls.testbench.cocotb_runner import get_runner


async def reset_dut(dut, duration_ns):
    for name, mod_obj in dut._sub_handles.items():
        if not isinstance(mod_obj, ModifiableObject):
            continue
        mod_obj.value = 0
    await Timer(duration_ns, units="ns")
    dut._log.debug("Reset complete")

FIXED =  np.linspace(0, 0.1, 11)

def set_inputs(mod, wE, wF, dut=None):
    args = get_default_args(mod.forward)
    input_memrefs, *_ = get_py_module_args_globals(args)
    test_inputs = {}
    for inp_name, inp_memref in input_memrefs.items():
        # if DEBUG:
        # scale = np.random.randint(-10, 10) or 1
        # np_inputs = test_inputs[inp_name] = np.ones(inp_memref.shape) * scale
        # else:
        np_inputs = test_inputs[inp_name] = np.random.random(inp_memref.shape)
        # np_inputs = test_inputs[inp_name] = np.random.choice(FIXED, np.prod(inp_memref.shape)).reshape(inp_memref.shape)
    test_inputs, outputs = run_model_with_fp_number(mod, test_inputs, wE=wE, wF=wF)
    # print(f"test_inputs {test_inputs}")

    if dut is not None:
        for _, inp_memref in test_inputs.items():
            for inp_name, fpval in inp_memref.val_names_map.items():
                inp_name = inp_name.replace("%", "v_")
                if hasattr(dut, inp_name):
                    mod_obj = getattr(dut, inp_name)
                    mod_obj.value = int(fpval.fp.binstr(), 2)

    # print(f"inputs {np_inputs}")
    print(f"outputs {outputs}")
    return outputs


def testbench_runner(
    proj_path,
    sv_file_name,
    top_level,
    py_module,
    max_fsm_stage,
    output_name,
    ip_cores_path=(Path(__file__) / "../../../ip_cores").resolve(),
    python_search=(Path(__file__) / "../../../examples").resolve(),
    wE=4,
    wF=4,
    n_test_vectors=20,
):
    proj_path = Path(proj_path).resolve()
    ip_cores_path = Path(ip_cores_path).resolve()
    verilog_sources = [
        proj_path / sv_file_name,
        ip_cores_path / "flopoco_fmul_4_4.sv",
        ip_cores_path / "flopoco_fadd_4_4.sv",
        ip_cores_path / "frelu.sv",
        ip_cores_path / "fneg.sv",
    ]
    runner = get_runner("icarus")()
    runner.build(
        verilog_sources=verilog_sources, toplevel=top_level, build_dir=proj_path
    )
    runner.test(
        toplevel=top_level,
        python_search=[python_search],
        py_module=py_module,
        extra_env={
            "VIRTUAL_ENV": (Path(sys.executable) / "../..").resolve(),
            "WE": str(wE),
            "WF": str(wF),
            "MAX_FSM_STAGE": str(max_fsm_stage),
            "N_TEST_VECTORS": str(n_test_vectors),
            "OUTPUT_NAME": output_name,
        },
        build_dir=proj_path,
        sim_dir=proj_path,
        waves=True,
    )


if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("proj_path")
    parser.add_argument("sv_file_name")
    parser.add_argument("max_fsm_stage", type=int)
    parser.add_argument(
        "--ip_cores_path",
        type=Path,
        default=(Path(__file__) / "../../ip_cores").resolve(),
    )
    parser.add_argument("--top_level")
    parser.add_argument("--py_module")
    parser.add_argument(
        "--python_search",
        type=Path,
        default=(Path(__file__) / "../../examples").resolve(),
    )
    parser.add_argument("--wE", default="4")
    parser.add_argument("--wF", default="4")
    args = parser.parse_args()
    if args.top_level is None:
        args.top_level = os.path.splitext(args.sv_file_name)[0]
    if args.py_module is None:
        args.py_module = f"{os.path.splitext(args.sv_file_name)[0]}_tb"
    args.ip_cores_path = args.ip_cores_path.resolve()
    args.python_search = args.python_search.resolve()
    testbench_runner(
        args.proj_path,
        args.sv_file_name,
        args.top_level,
        args.py_module,
        args.max_fsm_stage,
        args.ip_cores_path,
        args.python_search,
        args.wE,
        args.wF,
    )
