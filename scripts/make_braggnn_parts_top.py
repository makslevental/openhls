import re
import enum
from textwrap import dedent

signal_width = 12
num_tdm_wires = 0
num_mux_to_demux = 10


class CombOrSeq(enum.Enum):
    COMB = "*"
    SEQPOS = "posedge clk"
    SEQNEG = "negedge clk"


comb_or_seq = CombOrSeq.SEQPOS

part_1 = open("part_1/braggnn_part_1.sv").read()
part_2 = open("part_2/braggnn_part_2.sv").read()
part_3 = open("part_3/braggnn_part_3.sv").read()

part_1_inputs = sorted(
    [
        v.strip().replace(",", "")
        for v in re.findall(
            fr"input wire \[{signal_width - 1}:0\] (.*);", part_1, re.MULTILINE
        )
    ]
)
part_1_outputs = sorted(
    [
        v.strip().replace(",", "")
        for v in re.findall(
            fr"output wire \[{signal_width - 1}:0\] (.*);", part_1, re.MULTILINE
        )
    ]
)

part_2_inputs = sorted(
    [
        v.strip().replace(",", "")
        for v in re.findall(
            fr"input wire \[{signal_width - 1}:0\] (.*);", part_2, re.MULTILINE
        )
    ]
)
part_2_outputs = sorted(
    [
        v.strip().replace(",", "")
        for v in re.findall(
            fr"output wire \[{signal_width - 1}:0\] (.*);", part_2, re.MULTILINE
        )
    ]
)

part_3_inputs = sorted(
    [
        v.strip().replace(",", "")
        for v in re.findall(
            fr"input wire \[{signal_width - 1}:0\] (.*);", part_3, re.MULTILINE
        )
    ]
)
part_3_outputs = sorted(
    [
        v.strip().replace(",", "")
        for v in re.findall(
            fr"output wire \[{signal_width - 1}:0\] (.*);", part_3, re.MULTILINE
        )
    ]
)

top = open("top.sv", "w")

top.write(
    dedent(
        """\
        `default_nettype none
        module braggnn (
        input wire clk,
        input wire rst,\n"""
    )
)

for part_1_input in part_1_inputs:
    top.write(f"input wire [{signal_width - 1}:0] {part_1_input},\n")
for part_3_output in part_3_outputs[:-1]:
    top.write(f"output wire [{signal_width - 1}:0] {part_3_output},\n")
top.write(f"output wire [{signal_width - 1}:0] {part_3_outputs[-1]}\n")
top.write(");\n")

top.write("\n")

for part_1_output in part_1_outputs:
    top.write(f"wire [{signal_width - 1}:0] part_1_{part_1_output};\n")
for part_1_output in part_1_outputs:
    # top.write(f"(* USER_SLL_REG=\"true\", shreg_extract=\"no\" *) reg [{signal_width - 1}:0] part_1_launch_{part_1_output};\n")
    top.write(f"reg [{signal_width - 1}:0] part_1_launch_{part_1_output};\n")
for part_1_output in part_1_outputs:
    # top.write(f"(* USER_SLL_REG=\"true\", shreg_extract=\"no\" *) reg [{signal_width - 1}:0] part_1_land_{part_1_output};\n")
    top.write(f"reg [{signal_width - 1}:0] part_1_land_{part_1_output};\n")

top.write("\n")

top.write(
    dedent(
        """\
        braggnn_part_1 part_1 (
        clk,
        rst,\n"""
    )
)
for part_1_input in part_1_inputs:
    top.write(f"{part_1_input},\n")
for part_1_output in part_1_outputs[:-1]:
    top.write(f"part_1_{part_1_output},\n")
top.write(f"part_1_{part_1_outputs[-1]}\n")
top.write(");\n")

# mux in

top.write("\n")

if num_tdm_wires > 0:
    step = len(part_1_outputs) // num_tdm_wires
    tdm_indices = set(range(0, len(part_1_outputs), step))
else:
    tdm_indices = set()

reg_indices = sorted(list(set(range(len(part_1_outputs))) - tdm_indices))
tdm_indices = sorted(list(tdm_indices))

for part_1_output in [part_1_outputs[t] for t in tdm_indices]:
    top.write(f"wire [{signal_width - 1}:0] part_1_land_{part_1_output}_wire;\n")

top.write(f"always @ ({comb_or_seq.value}) begin\n")
for part_1_output in part_1_outputs:
    top.write(
        f"part_1_launch_{part_1_output} {'=' if comb_or_seq == CombOrSeq.COMB else '<='} part_1_{part_1_output};\n"
    )
top.write("end\n")

top.write(f"always @ ({comb_or_seq.value}) begin\n")
for part_1_output in [part_1_outputs[t] for t in reg_indices]:
    top.write(
        f"part_1_land_{part_1_output} {'=' if comb_or_seq == CombOrSeq.COMB else '<='} part_1_launch_{part_1_output};\n"
    )
top.write("end\n")

top.write(f"always @ ({comb_or_seq.value}) begin\n")
for part_1_output in [part_1_outputs[t] for t in tdm_indices]:
    top.write(
        f"part_1_land_{part_1_output} {'=' if comb_or_seq == CombOrSeq.COMB else '<='} part_1_land_{part_1_output}_wire;\n"
    )
top.write("end\n")

launch_regs = [
    f"part_1_launch_{part_1_output}"
    for part_1_output in [part_1_outputs[t] for t in tdm_indices]
]
land_wires = [
    f"part_1_land_{part_1_output}_wire"
    for part_1_output in [part_1_outputs[t] for t in tdm_indices]
]

if num_tdm_wires > 0:
    wires_per_mux_to_demux = num_tdm_wires // num_mux_to_demux
    for i in range(num_mux_to_demux):

        step = lambda i: i * wires_per_mux_to_demux
        top.write(
            f"""\
        wire out_{i};
        counter#({i}, 1) counter_{i}(
            .clk(clk),
            .rst(rst),
            .out(out_{i})
        );
        mux_to_demux_2#({i}, {(wires_per_mux_to_demux // 2) * signal_width}) mux_to_demux_{i}(
            .inp({{{','.join(launch_regs[step(i):step(i+1)])}}}),
            .sel(out_{i}),
            .outp({{{','.join(land_wires[step(i):step(i+1)])}}})
        );
        """
        )

    top.write("\n")


for part_2_output in part_2_outputs:
    top.write(f"wire [{signal_width - 1}:0] part_2_{part_2_output};\n")
for part_2_output in part_2_outputs:
    # top.write(f"(* USER_SLL_REG=\"true\", shreg_extract=\"no\" *) reg [{signal_width - 1}:0] part_2_launch_{part_2_output};\n")
    top.write(f"reg [{signal_width - 1}:0] part_2_launch_{part_2_output};\n")
for part_2_output in part_2_outputs:
    # top.write(f"(* USER_SLL_REG=\"true\", shreg_extract=\"no\" *) reg [{signal_width - 1}:0] part_2_land_{part_2_output};\n")
    top.write(f"reg [{signal_width - 1}:0] part_2_land_{part_2_output};\n")

top.write("\n")

top.write(
    dedent(
        """\
        braggnn_part_2 part_2 (
        clk,
        rst,\n"""
    )
)

for part_1_output in part_1_outputs:
    top.write(f"part_1_land_{part_1_output},\n")
for part_2_output in part_2_outputs[:-1]:
    top.write(f"part_2_{part_2_output},\n")
top.write(f"part_2_{part_2_outputs[-1]}\n")
top.write(");\n")

top.write("\n")

top.write(f"always @ ({comb_or_seq.value}) begin\n")
for part_2_output in part_2_outputs:
    top.write(
        f"part_2_launch_{part_2_output} {'=' if comb_or_seq == CombOrSeq.COMB else '<='} part_2_{part_2_output};\n"
    )
top.write("end\n")

top.write("\n")

top.write(f"always @ ({comb_or_seq.value}) begin\n")
for part_2_output in part_2_outputs:
    top.write(
        f"part_2_land_{part_2_output} {'=' if comb_or_seq == CombOrSeq.COMB else '<='} part_2_launch_{part_2_output};\n"
    )
top.write("end\n")

top.write("\n")

top.write(
    dedent(
        """\
        braggnn_part_3 part_3 (
        clk,
        rst,\n"""
    )
)

for part_2_output in part_2_outputs:
    top.write(f"part_2_land_{part_2_output},\n")
for part_3_output in part_3_outputs[:-1]:
    top.write(f"{part_3_output},\n")
top.write(f"{part_3_outputs[-1]}\n")
top.write(");\n")

top.write("endmodule")

# for i in range(1, 4):
#     top.write("\n")
#     blackbox = open(f"part_{i}/braggnn_part_{i}_blackbox.sv").read()
#     top.write(blackbox)
#     top.write("\n")


clock = open("clock.xdc", "w")
clock.write("create_clock -name clk -period 10 -waveform {0.000 5} [get_ports clk]\n")

# set_input_delay -clock [get_clocks clk] 0 [get_ports X]
# set_input_delay -clock [get_clocks clk] 0 [get_ports Y]
# set_output_delay -clock [get_clocks clk] 0 [get_ports R]

for input in part_1_inputs:
    clock.write(f"set_input_delay -clock [get_clocks clk] 0 [get_ports {input}]\n")

for output in part_3_outputs:
    clock.write(f"set_output_delay -clock [get_clocks clk] 0 [get_ports {output}]\n")
