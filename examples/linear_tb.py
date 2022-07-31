# import pydevd
# pydevd.settrace("localhost", port=9090, stdoutToServer=True, stderrToServer=True)
import os

import cocotb
from cocotb.clock import Clock
from cocotb.triggers import FallingEdge, RisingEdge

# from bragghls.flopoco.convert_flopoco import convert_flopoco_binary_str_to_float
from bragghls.testbench.tb_runner import set_inputs
from linear_bragghls_artifacts import linear_rewritten


@cocotb.test()
async def linear_test(dut):
    MAX_FSM_STAGE = int(os.getenv("MAX_FSM_STAGE"))  # 16
    LATENCY = MAX_FSM_STAGE + 1
    TEST_VECTORS = int(os.getenv("N_TEST_VECTORS"))
    WE = int(os.getenv("WE"))
    WF = int(os.getenv("WF"))
    OUTPUT_NAME = os.getenv("OUTPUT_NAME")

    clock = Clock(dut.clk, 2, units="ns")  # Create a 10us period clock on port clk
    cocotb.start_soon(clock.start())  # Start the clock
    await FallingEdge(dut.clk)
    dut._discover_all()

    output_wire = next(
        mod_obj for name, mod_obj in dut._sub_handles.items() if "output" in name
    )

    for i in range(LATENCY * TEST_VECTORS):
        # print(dut.current_fsm)
        if i % LATENCY == 0:
            outputs = set_inputs(linear_rewritten, WE, WF, dut)
            output = outputs[OUTPUT_NAME].registers[0]
            dut.ce.value = 1
            dut.reset.value = 1
        elif i % LATENCY == 1:
            dut.reset.value = 0
        elif i % LATENCY == LATENCY - 1:
            # print(outputs["_6"].registers[0].fp)
            # print(convert_flopoco_binary_str_to_float(output_wire.value.binstr))
            if (
                output_wire.value.binstr[0] != "1"
                and output.fp.binstr()[0] != "1"
            ):
                assert output_wire.value.binstr == output.fp.binstr(), (
                    i,
                    output_wire.value.binstr,
                    output.fp.binstr(),
                )
                print(f"passed {i}")
            else:
                print(f"overflow {i}")

        await FallingEdge(dut.clk)

    print("\n")
