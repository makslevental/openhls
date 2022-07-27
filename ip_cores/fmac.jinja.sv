`default_nettype none
`timescale 1ns/1ps

`include "flopoco_fmul_4_4.v"
`include "flopoco_fadd_4_4.v"

module fmac(
    input wire clk,
    input wire[{{ precision - 1 }}:0] init_val,
    {%- for input_wire in input_wires %}
    input wire[{{ precision - 1 }}:0] {{ input_wire }},
    {%- endfor %}

    output reg[{{ precision - 1 }}:0] fmul_x,
    output reg[{{ precision - 1 }}:0] fmul_y,
    output reg fmul_ce,
    input wire[{{ precision - 1 }}:0] fmul_r,

    output reg[{{ precision - 1 }}:0] fadd_x,
    output reg[{{ precision - 1 }}:0] fadd_y,
    output reg fadd_ce,
    input wire[{{ precision - 1 }}:0] fadd_r,

    {%- for fsm_state in fsm_states[:-1] %}
    input wire fsm_state{{ fsm_state }},
    {%- endfor %}
    input wire fsm_state{{ fsm_states[-1] }}
);

    always @(posedge clk) begin
        fmul_x = 0;
        fmul_y = 0;
        fmul_ce = 0;
        fadd_x = 0;
        fadd_y = 0;
        fadd_ce = 0;
        if ((1'b1 == fsm_state{{ fsm_states[0] }})) begin
            fmul_x <= arg1; 
            fmul_y <= arg2; 
            fmul_ce <= 1;
        end
        if ((1'b1 == fsm_state{{ fsm_states[1] }})) begin
            fadd_x <= init_val;
            fadd_y <= fmul_r; 
            fadd_ce <= 1;
        end

        {%- for fsm_state in fsm_states[2:-1:2] %}
        // ****************
        if ((1'b1 == fsm_state{{ fsm_state }})) begin
            fmul_x <= {{ input_wires[2 * (loop.index0 + 1)] }};
            fmul_y <= {{ input_wires[2 * (loop.index0 + 1) + 1] }};
            fmul_ce <= 1;
            fadd_ce <= 1;
        end
        if ((1'b1 == fsm_state{{ fsm_states[2 * loop.index0 + 2 + 1] }})) begin
            fadd_x <= fadd_r;
            fadd_y <= fmul_r;
            fadd_ce <= 1;
        end
        {%- endfor %}

        if ((1'b1 == fsm_state{{ fsm_states[-1] }})) begin
            fadd_ce <= 1;
        end
    end
endmodule