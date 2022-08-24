# import pydevd
# pydevd.settrace("localhost", port=9090, stdoutToServer=True, stderrToServer=True)

import json
import logging
import os
import os.path

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
        test_inputs[inp_name][test_inputs[inp_name] < -1] = -1
        test_inputs[inp_name][test_inputs[inp_name] > 1] = 1
        # test_inputs[inp_name] = np.random.randint(-3, 3, (inp_memref.shape))
        # test_inputs[inp_name] = np.ones(inp_memref.shape) * 2
    test_inputs, outputs = run_model_with_fp_number(
        mod, test_inputs, width_exponent=width_exponent, width_fraction=width_fraction
    )

    if dut is not None:
        for _, inp_memref in test_inputs.items():
            for inp_name, fpval in inp_memref.val_names_map.items():
                inp_name = inp_name.replace("%", "p_")
                if hasattr(dut, inp_name):
                    mod_obj = getattr(dut, inp_name)
                    mod_obj.value = int(fpval.fp.binstr(), 2)

    return test_inputs, outputs


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

    if THRESHOLD:
        n_wrong = 0

    for i in range(LATENCY * TEST_VECTORS):
        if i % LATENCY == 0:
            test_inputs, expected_outputs = set_inputs(
                module, WIDTH_EXPONENT, WIDTH_FRACTION, dut
            )
            # for arr_name, input in test_inputs.items():
            #     print(
            #         "input",
            #         arr_name,
            #         input,
            #     )
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
            passed = True
            for output_wire, output in [
                (
                    wire,
                    expected_outputs[OUTPUT_MAP[wire_name][0]].registers[
                        OUTPUT_MAP[wire_name][1]
                    ],
                )
                for wire_name, wire in output_wires.items()
            ]:
                measured_output = output_wire.value.binstr
                if output_wire.value.binstr[0] == "1" or output.fp.binstr()[0] == "1":
                    print(f"overflow {i} with {output_wire.value.binstr}")
                elif all(o == "0" for o in output.fp.binstr()) and measured_output != output.fp.binstr():
                    # TODO: figure this out for real
                    try:
                        measured_output_str = f"<FPNumber {convert_flopoco_binary_str_to_float(measured_output, WIDTH_EXPONENT, WIDTH_FRACTION)}:{measured_output}>"
                        print(
                            "underflow",
                            f"clk {i}",
                            f"wire {output_wire._name}",
                            f"measured output {measured_output_str}",
                            f"true result {output}",
                        )
                    except Exception as e:
                        print(f"Exception {e}")
                        print(
                            "underflow",
                            f"clk {i}",
                            f"wire {output_wire._name}",
                            f"measured output <FPNumber UNICODE_ERROR:{measured_output}>",
                            f"true result {output.fp}",
                        )
                else:
                    if measured_output != output.fp.binstr():
                        try:
                            measured_output_str = f"<FPNumber {convert_flopoco_binary_str_to_float(measured_output, WIDTH_EXPONENT, WIDTH_FRACTION)}:{measured_output}>"
                            print(
                                "failed",
                                f"clk {i}",
                                f"measured output {measured_output_str}",
                                f"true result {output}",
                            )
                        except Exception as e:
                            print(f"Exception {e}")
                            print(
                                "failed",
                                f"clk {i}",
                                f"measured output <FPNumber UNICODE_ERROR:{measured_output}>",
                                f"true result {output}",
                            )
                        passed = False
                        if THRESHOLD:
                            n_wrong += 1

            if passed:
                print(f"passed {i}")
            elif not THRESHOLD:
                await FallingEdge(dut.clk)
                await FallingEdge(dut.clk)
                assert False

        await FallingEdge(dut.clk)

    if THRESHOLD:
        num_all_vals = n_wrong / (TEST_VECTORS * len(output_wires))
        print(
            "threshold",
            THRESHOLD,
            "total n_wrong",
            n_wrong,
            "percent failed",
            num_all_vals,
        )
        if num_all_vals > THRESHOLD:
            assert False
    print("\n")
