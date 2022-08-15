`default_nettype none
`timescale 1ns/1ps

`include "flopoco_fmul_{{wE}}_{{wF}}.sv"
`include "flopoco_fadd_{{wE}}_{{wF}}.sv"

module fmac(
    input wire clk,
    input wire[{{wE+wF+3-1}}:0] init_val,
    {%- for input_wire in input_wires %}
    input wire [{{wE + wF + 3-1}}:0] {{ input_wire }},
    {%-endfor %}

    {% for fmul_state in fmul_states %}
    output reg [{{wE + wF + 3-1}}:0] fmul{{loop.index0}}_x,
    output reg[{{wE+wF+3-1}}:0] fmul{{loop.index0}}_y,
    {#-output reg fmul_ce, #}
    input wire[{{wE+wF+3-1}}:0] fmul{{loop.index0}}_r,
    output reg[{{wE+wF+3-1}}:0] fadd{{loop.index0}}_x,
    output reg[{{wE+wF+3-1}}:0] fadd{{loop.index0}}_y,
    {#-output reg fadd_ce, #}
    input wire[{{wE+wF+3-1}}:0] fadd{{loop.index0}}_r,
    {%endfor %}

    {%- for fsm_state in all_fsm_states[:-1]%}
    input wire fsm_state{{fsm_state }},
    {%-endfor %}
    input wire fsm_state{{all_fsm_states[-1] }}
);

    always @(posedge clk) begin
        {%- for fmul_state in fmul_states %}
        fmul{{loop.index0}}_x = 0;
        fmul{{loop.index0}}_y = 0;
        fadd{{loop.index0}}_x = 0;
        fadd{{loop.index0}}_y = 0;
        {%-endfor%}
        {%- for fmul_state in fmul_states %}
        // ****************
        if ((1'b1 == fsm_state{{ fmul_state }})) begin
            fmul{{loop.index0}}_x <= {{input_wires[2*loop.index0]}};
            fmul{{loop.index0}}_y <= {{input_wires[2*loop.index0+1]}};
            {#-fmul_ce <= 1; #}
            {#-fadd_ce <= 1; #}
        end
        if ((1'b1 == fsm_state{{ fadd_states[loop.index0] }})) begin
            {%- if loop.index0 == 0%}
            fadd{{loop.index0}}_x <= init_val;
            {%- else %}
            fadd{{loop.index0}}_x <= fadd{{loop.index0 - 1}}_r;
            {%- endif%}
            fadd{{loop.index0}}_y <= fmul{{loop.index0}}_r;
            {#-fadd_ce <= 1; #}
        end
        {%-endfor%}

        {#-if ((1'b1 == fsm_state{{ fsm_states[-1]} })) begin #}
            {#-fadd_ce <= 1; #}
    {#- end #}
    end
endmodule