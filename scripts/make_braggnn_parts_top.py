import re
from textwrap import dedent

signal_width = 8

part_1 = open("part_1/braggnn_part_1.sv").read()
part_2 = open("part_2/braggnn_part_2.sv").read()
part_3 = open("part_3/braggnn_part_3.sv").read()

part_1_inputs = [v.strip().replace(",", "") for v in re.findall(r"input wire \[9:0\] (.*)", part_1, re.MULTILINE)]
part_1_outputs = [v.strip().replace(",", "") for v in re.findall(r"output wire \[9:0\] (.*)", part_1, re.MULTILINE)]

part_2_inputs = [v.strip().replace(",", "") for v in re.findall(r"input wire \[9:0\] (.*)", part_2, re.MULTILINE)]
part_2_outputs = [v.strip().replace(",", "") for v in re.findall(r"output wire \[9:0\] (.*)", part_2, re.MULTILINE)]

part_3_inputs = [v.strip().replace(",", "") for v in re.findall(r"input wire \[9:0\] (.*)", part_3, re.MULTILINE)]
part_3_outputs = [v.strip().replace(",", "") for v in re.findall(r"output wire \[9:0\] (.*)", part_3, re.MULTILINE)]


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
    top.write(f"input wire [9:0] {part_1_input},\n")
for part_3_output in part_3_outputs[:-1]:
    top.write(f"output wire [9:0] {part_3_output},\n")
top.write(f"output wire [9:0] {part_3_outputs[-1]}\n")
top.write(");\n")

top.write("\n")

for part_1_output in part_1_outputs:
    top.write(f"wire [9:0] part_1_{part_1_output};\n")
for part_1_output in part_1_outputs:
    top.write(f"reg [9:0] part_1_launch_{part_1_output};\n")
for part_1_output in part_1_outputs:
    top.write(f"reg [9:0] part_1_land_{part_1_output};\n")

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

top.write("\n")

top.write("always @(posedge clk) begin\n")
for part_1_output in part_1_outputs:
    top.write(f"part_1_launch_{part_1_output} <= part_1_{part_1_output};\n")
top.write("end\n")
top.write("\n")
top.write("always @(posedge clk) begin\n")
for part_1_output in part_1_outputs:
    top.write(f"part_1_land_{part_1_output} <= part_1_launch_{part_1_output};\n")
top.write("end\n")




top.write("\n")


for part_2_output in part_2_outputs:
    top.write(f"wire [9:0] part_2_{part_2_output};\n")
for part_2_output in part_2_outputs:
    top.write(f"reg [9:0] part_2_launch_{part_2_output};\n")
for part_2_output in part_2_outputs:
    top.write(f"reg [9:0] part_2_land_{part_2_output};\n")


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

top.write("always @(posedge clk) begin\n")
for part_2_output in part_2_outputs:
    top.write(f"part_2_launch_{part_2_output} <= part_2_{part_2_output};\n")
top.write("end\n")
top.write("\n")
top.write("always @(posedge clk) begin\n")
for part_2_output in part_2_outputs:
    top.write(f"part_2_land_{part_2_output} <= part_2_launch_{part_2_output};\n")
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
