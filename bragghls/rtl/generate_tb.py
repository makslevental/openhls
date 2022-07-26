import argparse
import importlib.util
import sys

import numpy as np
from jinja2 import Template

from bragghls.rtl.convert_flopoco import convert_float_to_flopoco_binary_str

TB_TEMPLATE = """\
`default_nettype none
`include "{{ include_filename }}"
`include "flopoco_fadd_4_4.v"
`include "flopoco_fmul_4_4.v"
`include "frelu.v"
`include "fneg.v"
`timescale 1ns/1ps

module {{ top_level }}_tb;
    parameter HALF_PERIOD = {{ clock_period/2 }};
    parameter PERIOD = {{ clock_period }};
    reg clk;
    reg reset;
    reg ce;
    always #HALF_PERIOD clk=~clk;

    reg[10:0] count = 32'b0;
    initial begin
        reset = 1;
        clk = 0;
        count = 0;
        #PERIOD;
        reset <= 0;
    end
    always @ (posedge clk) begin
        count <= count + 1'b1;
    end

    initial begin
        clk = 0;
    end

    {%- for input_wire in input_wires %}
    reg[{{ precision - 1 }}:0] {{ input_wire }};
    {%- endfor %}
    {%- for output_wire in output_wires %}
    wire[{{ precision - 1 }}:0] {{ output_wire }};
    {%- endfor %}

    {{ top_level }} dut(
        .clk(clk),
        .reset(reset),
        {%- for input_wire in input_wires %}
        .{{ input_wire }}({{ input_wire }}),
        {%- endfor %}
        {%- for output_wire in output_wires[:-1] %}
        .{{ output_wire }}({{ output_wire }}),
        {%- endfor %}
        .{{ output_wires[-1] }}({{ output_wires[-1] }})
    );

    initial begin
        {%- for input_wire in input_wires %}
        {{ input_wire }} = {{ precision }}'b{{ to_flopoco(input_values[loop.index0]) }}; // {{ input_values[loop.index0] }}
        {%- endfor %}
        $dumpfile("{{ top_level }}.vcd");
        $dumpvars(0, {{ top_level }}_tb);
        
        
        {% for n in range(simulation_time) %}
        #PERIOD;
        $display("count %0d res %11b", count, {{ output_wires[-1] }} );
        {% endfor %}
        
        // #{{ simulation_time }};
        // {%- for output_wire in output_wires %}
        // if({{ output_wire }} != {{ precision }}'b{{ to_flopoco(output_values[loop.index0]) }}) // {{ output_values[loop.index0] }})
        //     $display("failed with sum %{{ precision }}b", {{ output_wire }});
        // {%- endfor %}
        $finish();
    end

endmodule
"""


def generate(
    top_level,
    include_filename,
    clock_period,
    precision,
    simulation_time,
    input_wires,
    output_wires,
    input_values,
    output_values,
):
    template = Template(TB_TEMPLATE)
    return template.render(
        top_level=top_level,
        include_filename=include_filename,
        clock_period=clock_period,
        precision=precision,
        simulation_time=simulation_time,
        input_wires=input_wires,
        output_wires=output_wires,
        input_values=input_values,
        output_values=output_values,
        to_flopoco=convert_float_to_flopoco_binary_str,
    )


def test_fadd():
    X, Y = np.random.uniform(0, 100, 2)
    tb_str = generate(
        "fadd",
        "flopoco_fadd_4_4.v",
        10,
        11,
        100,
        ["X", "Y"],
        ["R"],
        [X, Y],
        [X + Y],
    )
    open(
        "/Users/mlevental/dev_projects/bragghls/ip_cores/flopoco_fadd_4_4_tb.v", "w"
    ).write(tb_str)


def test_dot(fp, size=4):
    X, Y = 2 * np.ones((2, size))
    inputs = np.hstack((X, Y))
    output = float(np.dot(X, Y))
    print(X, Y, output)
    tb_str = generate(
        "dot_inner",
        "dot.v",
        3.33333,
        11,
        40,
        [f"v_arg{i}_wire" for i in range(len(inputs))],
        [f"output_v_val_23_wire"],
        inputs,
        [output],
    )
    open(f"{fp}/dot_tb.v", "w").write(tb_str)


def run_py(py_fp):
    spec = importlib.util.spec_from_file_location("py_spec", py_fp)
    foo = importlib.util.module_from_spec(spec)
    sys.modules["py_spec"] = foo
    spec.loader.exec_module(foo)
    foo.MyClass()


if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("fp")
    parser.add_argument("--size", type=int, default=4)
    args = parser.parse_args()
    test_dot(args.fp, args.size)
