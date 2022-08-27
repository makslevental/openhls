# import pydevd
# pydevd.settrace("localhost", port=9090, stdoutToServer=True, stderrToServer=True)

import json
import logging
import os
import os.path

import cocotb
import numpy as np
from cocotb.binary import BinaryValue, BinaryRepresentation
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
from bragghls.util import import_module_from_fp

logger = logging.getLogger(__file__)


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
        test_inputs[inp_name] = np.random.randn(*inp_memref.shape)
        # test_inputs[inp_name] = np.random.random(inp_memref.shape)
        # test_inputs[inp_name][test_inputs[inp_name] < -1] = -1
        # test_inputs[inp_name][test_inputs[inp_name] > 1] = 1
        # test_inputs[inp_name] = np.random.randint(-10, 10, (inp_memref.shape))
        # test_inputs[inp_name] = np.ones(inp_memref.shape) * 1
    test_inputs, outputs = run_model_with_fp_number(
        mod, test_inputs, width_exponent=width_exponent, width_fraction=width_fraction
    )

    if dut is not None:
        for _, inp_memref in test_inputs.items():
            for inp_name, fpval in inp_memref.val_names_map.items():
                inp_name = inp_name.replace("%", "p_")
                if hasattr(dut, inp_name):
                    mod_obj = getattr(dut, inp_name)
                    vec = BinaryValue(
                        value=fpval.fp.binstr(),
                        n_bits=None,
                        bigEndian=True,
                        binaryRepresentation=BinaryRepresentation.UNSIGNED,
                    )
                    mod_obj.setimmediatevalue(vec)

    return test_inputs, outputs


def get_tolerance(width_exponent, width_fraction):
    if (width_exponent, width_fraction) <= (5, 5):
        return 1e-1
    else:
        return 1e-2


@cocotb.test()
async def test_tb(dut):
    MAX_FSM_STAGE = int(os.getenv("MAX_FSM_STAGE"))  # 16
    LATENCY = MAX_FSM_STAGE + 1
    TEST_VECTORS = int(os.getenv("N_TEST_VECTORS"))
    WIDTH_EXPONENT = int(os.getenv("WIDTH_EXPONENT"))
    WIDTH_FRACTION = int(os.getenv("WIDTH_FRACTION"))
    MODULE_FP = os.getenv("MODULE_FP")
    THRESHOLD = float(os.getenv("THRESHOLD", "0"))
    TB_RANDOM = int(os.getenv("TB_RANDOM", "1"))
    DEBUG = bool(int(os.getenv("DEBUG", "0")))
    OUTPUT_MAP = {
        val_name: (arr_name, tuple(idx))
        for val_name, (arr_name, idx) in json.loads(
            os.getenv("OUTPUT_MAP", "{}")
        ).items()
    }

    np.random.seed(TB_RANDOM)

    module = import_module_from_fp("test_module", MODULE_FP)

    clock = Clock(dut.clk, 2, units="ns")  # Create a 2ns period clock on port clk
    cocotb.start_soon(clock.start())  # Start the clock
    await FallingEdge(dut.clk)
    dut._discover_all()

    output_wires = {
        name: mod_obj for name, mod_obj in dut._sub_handles.items() if "output" in name
    }

    await FallingEdge(dut.clk)
    await FallingEdge(dut.clk)

    n_wrong = 0

    for i in range(LATENCY * TEST_VECTORS):
        if i % LATENCY == 0:
            test_inputs, expected_outputs = set_inputs(
                module, WIDTH_EXPONENT, WIDTH_FRACTION, dut
            )
            # for arr_name, input in test_inputs.items():
            #     if hasattr(input, "input") and input.input:
            #         print(
            #             "input",
            #             arr_name,
            #             list(input.registers.flatten() if isinstance(input, MemRef) else input.global_array.flatten()),
            #         )
            # for arr_name, expected_output in expected_outputs.items():
            #     print(
            #         "expected output",
            #         arr_name,
            #         list(expected_output.registers.flatten()),
            #     )
            dut.rst.value = 1
        elif i % LATENCY == 1:
            dut.rst.value = 0
        elif i % LATENCY == LATENCY - 1:
            for output_wire, output in [
                (
                    wire,
                    expected_outputs[OUTPUT_MAP[wire_name][0]].registers[
                        OUTPUT_MAP[wire_name][1]
                    ],
                )
                for wire_name, wire in sorted(
                    output_wires.items(),
                    key=lambda wire_name_: int(wire_name_[0].split("_")[-1]),
                )
            ]:
                measured_output = output_wire.value.binstr
                expected_output = output.fp
                if measured_output != expected_output.binstr():
                    n_wrong += 1

                if DEBUG:
                    try:
                        measured_output_str = f"{convert_flopoco_binary_str_to_float(measured_output, WIDTH_EXPONENT, WIDTH_FRACTION)}:{measured_output}"
                    except:
                        measured_output_str = f"UNICODE_ERROR:{measured_output}"
                    expected_output_str = f"{expected_output}"
                    print(output_wire._name)
                    print("equal", measured_output == expected_output.binstr())
                    print(measured_output_str)
                    print(
                        expected_output_str.replace("<FPNumber ", "").replace(">", "")
                    )
                    print("*" * 10)

            print("click", i)

        await FallingEdge(dut.clk)

    if THRESHOLD:
        total = TEST_VECTORS * len(output_wires)
        num_all_vals = n_wrong / total
        print(
            "threshold",
            THRESHOLD,
            "total",
            total,
            "n_wrong",
            n_wrong,
            "percent failed",
            num_all_vals,
        )
        if num_all_vals > THRESHOLD:
            assert False
    print("\n")
