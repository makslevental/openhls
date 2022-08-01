`default_nettype none
`timescale 1ns/1ps

`include "flopoco_fmul_{{wE}}_{{wF}}.sv"
`include "flopoco_fadd_{{wE}}_{{wF}}.sv"

module fmac(
    input wire clk,
    input wire[{{ wE + wF + 3 - 1 }}:0] init_val,
    {%- for input_wire in input_wires %}
    input wire[{{ wE + wF + 3 - 1 }}:0] {{ input_wire }},
    {%- endfor %}

    output reg[{{ wE + wF + 3 - 1 }}:0] fmul_x,
    output reg[{{ wE + wF + 3 - 1 }}:0] fmul_y,
    {#- output reg fmul_ce, #}
    input wire[{{ wE + wF + 3 - 1 }}:0] fmul_r,

    output reg[{{ wE + wF + 3 - 1 }}:0] fadd_x,
    output reg[{{ wE + wF + 3 - 1 }}:0] fadd_y,
    {#- output reg fadd_ce, #}
    input wire[{{ wE + wF + 3 - 1 }}:0] fadd_r,

    {%- for fsm_state in all_fsm_states[:-1] %}
    input wire fsm_state{{ fsm_state }},
    {%- endfor %}
    input wire fsm_state{{ all_fsm_states[-1] }}
);

    always @(posedge clk) begin
        fmul_x = 0;
        fmul_y = 0;
        {#- fmul_ce = 0; #}
        fadd_x = 0;
        fadd_y = 0;
        {#- fadd_ce = 0; #}
        {%- for fmul_state in fmul_states %}
        // ****************
        if ((1'b1 == fsm_state{{ fmul_state }})) begin
            fmul_x <= {{ input_wires[2 * loop.index0] }};
            fmul_y <= {{ input_wires[2 * loop.index0 + 1] }};
            {#- fmul_ce <= 1; #}
            {#- fadd_ce <= 1; #}
        end
        if ((1'b1 == fsm_state{{ fadd_states[loop.index0] }})) begin
            {%- if loop.index0 == 0 %}
            fadd_x <= init_val;
            {%- else %}
            fadd_x <= fadd_r;
            {%- endif %}
            fadd_y <= fmul_r;
            {#- fadd_ce <= 1; #}
        end
        {%- endfor %}

        {#- if ((1'b1 == fsm_state{{ fsm_states[-1] }})) begin #}
        {#-      fadd_ce <= 1; #}
        {#- end #}
    end
endmodule