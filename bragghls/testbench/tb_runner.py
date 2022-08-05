import argparse

# import pydevd
# pydevd.settrace("localhost", port=9090, stdoutToServer=True, stderrToServer=True)
import os
import os.path
import sys
from pathlib import Path

import cocotb
import numpy as np
from cocotb.clock import Clock
from cocotb.handle import ModifiableObject
from cocotb.triggers import FallingEdge
from cocotb.triggers import Timer

from bragghls.compiler.runner import (
    get_default_args,
    get_py_module_args_globals,
    run_model_with_fp_number,
)
from bragghls.flopoco.convert_flopoco import convert_flopoco_binary_str_to_float
from bragghls.testbench.cocotb_runner import get_runner
from bragghls.util import import_module_from_fp


async def reset_dut(dut, duration_ns):
    for name, mod_obj in dut._sub_handles.items():
        if not isinstance(mod_obj, ModifiableObject):
            continue
        mod_obj.value = 0
    await Timer(duration_ns, units="ns")
    dut._log.debug("Reset complete")


FIXED = np.linspace(0, 0.1, 11)


def set_inputs(mod, width_exponent, width_fraction, dut=None):
    args = get_default_args(mod.forward)
    input_memrefs, *_ = get_py_module_args_globals(args)
    test_inputs = {}
    for inp_name, inp_memref in input_memrefs.items():
        np_inputs = test_inputs[inp_name] = np.random.random(inp_memref.shape)
    test_inputs, outputs = run_model_with_fp_number(
        mod, test_inputs, width_exponent=width_exponent, width_fraction=width_fraction
    )
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


@cocotb.test()
async def test_tb(dut):
    MAX_FSM_STAGE = int(os.getenv("MAX_FSM_STAGE"))  # 16
    LATENCY = MAX_FSM_STAGE + 1
    TEST_VECTORS = int(os.getenv("N_TEST_VECTORS"))
    WIDTH_EXPONENT = int(os.getenv("WIDTH_EXPONENT"))
    WIDTH_FRACTION = int(os.getenv("WIDTH_FRACTION"))
    OUTPUT_NAME = os.getenv("OUTPUT_NAME")
    MODULE_FP = os.getenv("MODULE_FP")
    THRESHOLD = float(os.getenv("THRESHOLD", "0"))
    module = import_module_from_fp("test_module", MODULE_FP)

    clock = Clock(dut.clk, 2, units="ns")  # Create a 2ns period clock on port clk
    cocotb.start_soon(clock.start())  # Start the clock
    await FallingEdge(dut.clk)
    dut._discover_all()

    # TODO: handle multiple output wires
    output_wire = next(
        mod_obj for name, mod_obj in dut._sub_handles.items() if "output" in name
    )

    if THRESHOLD:
        n_wrong = 0

    for i in range(LATENCY * TEST_VECTORS):
        # print(dut.current_fsm.value)
        if i % LATENCY == 0:
            outputs = set_inputs(module, WIDTH_EXPONENT, WIDTH_FRACTION, dut)
            output = outputs[OUTPUT_NAME].registers[0]
            dut.rst.value = 1
        elif i % LATENCY == 1:
            dut.rst.value = 0
        elif i % LATENCY == LATENCY - 1:
            if output_wire.value.binstr[0] != "1" and output.fp.binstr()[0] != "1":
                if output_wire.value.binstr != output.fp.binstr():
                    incorrect_output = output_wire.value.binstr
                    print(
                        "failed", f"clk {i}",
                        f"output <FPNumber {convert_flopoco_binary_str_to_float(incorrect_output, WIDTH_EXPONENT, WIDTH_FRACTION)}:{incorrect_output}>",
                        f"true {output.fp}",
                    )
                    if THRESHOLD:
                        n_wrong += 1
                    else:
                        await FallingEdge(dut.clk)
                        await FallingEdge(dut.clk)
                        assert False
                else:
                    print(f"passed {i}")
            else:
                print(f"overflow {i} with {output_wire.value.binstr}")

        await FallingEdge(dut.clk)

    if THRESHOLD:
        print("threshold", THRESHOLD, "percent failed", n_wrong / TEST_VECTORS)
        if n_wrong / TEST_VECTORS > THRESHOLD:
            assert False
    print("\n")


def testbench_runner(
    proj_path,
    module_fp,
    sv_file_name,
    top_level,
    max_fsm_stage,
    output_name,
    width_exponent,
    width_fraction,
    ip_cores_path=(Path(__file__) / "../../../ip_cores").resolve(),
    n_test_vectors=10,
    threshold=None,
):
    proj_path = Path(proj_path).resolve()
    ip_cores_path = Path(ip_cores_path).resolve()
    verilog_sources = [
        proj_path / sv_file_name,
        ip_cores_path / f"flopoco_fmul_{width_exponent}_{width_fraction}.sv",
        ip_cores_path / f"flopoco_fadd_{width_exponent}_{width_fraction}.sv",
        ip_cores_path / "flopoco_relu.sv",
        ip_cores_path / "flopoco_neg.sv",
    ]
    runner = get_runner("icarus")()
    runner.build(
        verilog_sources=verilog_sources, toplevel=top_level, build_dir=proj_path
    )
    runner.test(
        toplevel=top_level,
        python_search=[Path(__file__).parent.resolve()],
        py_module="tb_runner",
        extra_env={
            "VIRTUAL_ENV": (Path(sys.executable) / "../..").resolve(),
            "WIDTH_EXPONENT": str(width_exponent),
            "WIDTH_FRACTION": str(width_fraction),
            "MAX_FSM_STAGE": str(max_fsm_stage),
            "N_TEST_VECTORS": str(n_test_vectors),
            "OUTPUT_NAME": output_name,
            "MODULE_FP": module_fp,
            "THRESHOLD": str(threshold if threshold is not None else 0),
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
    parser.add_argument("--width_exponent", default="4")
    parser.add_argument("--width_fraction", default="4")
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
        args.width_exponent,
        args.width_fraction,
    )
