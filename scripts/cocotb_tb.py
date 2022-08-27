from pathlib import Path

import cocotb
from cocotb.clock import Clock
from cocotb.triggers import FallingEdge

from bragghls.testbench.cocotb_runner import get_runner


# test_dff.py


@cocotb.test()
async def test_fneg(dut):
    """Test that d propagates to q"""

    clock = Clock(dut.clk, 1, units="ns")  # Create a 10us period clock on port clk
    cocotb.start_soon(clock.start())  # Start the clock

    dut.rst.value = 1
    await FallingEdge(dut.clk)
    dut.rst.value = 0
    await FallingEdge(dut.clk)
    print("before", dut.a.value, dut.res.value)

    for i in range(10):
        if i == 2:
            dut.a.value = int("0010001001111100", 2)  # Assign the random value val to the input port d
        await FallingEdge(dut.clk)
        print(i, dut.a.value, dut.res.value)


if __name__ == "__main__":
    proj_path = Path(__file__).parent
    verilog_sources = ["/home/mlevental/dev_projects/bragghls/bragghls/ip_cores/flopoco_neg.sv"]
    top_level = "fneg"
    runner = get_runner("icarus")()
    runner.build(
        verilog_sources=verilog_sources,
        toplevel=top_level,
        build_dir=proj_path.resolve(),
    )
    runner.test(
        toplevel=top_level,
        python_search=[Path(__file__).parent.resolve()],
        py_module=__file__.split("/")[-1].split(".")[0],
        build_dir=proj_path,
        sim_dir=proj_path,
        waves=True,
    )
