`default_nettype none
`timescale 1ns/1ps

`include "flopoco_fmul_4_4.v"
`include "flopoco_fadd_4_4.v"

module fmac(
    input wire clk,
    input wire[10:0] arg1,
    input wire[10:0] arg2,
    input wire[10:0] arg3,
    input wire[10:0] arg4,
    input wire[10:0] arg5,
    input wire[10:0] arg6,
    input wire[10:0] arg7,
    input wire[10:0] arg8,

    output reg[10:0] fmul_x,
    output reg[10:0] fmul_y,
    output reg fmul_ce,
    input wire[10:0] fmul_r,

    output reg[10:0] fadd_x,
    output reg[10:0] fadd_y,
    output reg fadd_ce,
    input wire[10:0] fadd_r,

    input wire current_state_fsm_state01,
    input wire current_state_fsm_state02,
    input wire current_state_fsm_state03,
    input wire current_state_fsm_state04,
    input wire current_state_fsm_state05,
    input wire current_state_fsm_state06,
    input wire current_state_fsm_state07,
    input wire current_state_fsm_state08,
    input wire current_state_fsm_state09,
    input wire current_state_fsm_state10,
    input wire current_state_fsm_state1,
    input wire current_state_fsm_state12,
    input wire current_state_fsm_state13,
    input wire current_state_fsm_state14,
    input wire current_state_fsm_state15
);

    always @(posedge clk) begin
        fmul_x = 0;
        fmul_y = 0;
        fmul_ce = 0;
        fadd_x = 0;
        fadd_y = 0;
        fadd_ce = 0;
        if ((1'b1 == current_state_fsm_state01)) begin
            fmul_x <= arg1; // 1.0
            fmul_y <= arg2; // 2.0
            fmul_ce <= 1;
        end
        if ((1'b1 == current_state_fsm_state03)) begin
            fadd_x <= 'b0; // 0.0
            fadd_y <= fmul_r; // 2.0
            fadd_ce <= 1;
        end
        // need to put a spacer here between the start of the previous
        if ((1'b1 == current_state_fsm_state04)) begin
            fmul_x <= arg3; // 3.0
            fmul_y <= arg4; // 4.0
            fmul_ce <= 1;
            fadd_ce <= 1;
        end
        if ((1'b1 == current_state_fsm_state06)) begin
            fadd_x <= fadd_r;
            fadd_y <= fmul_r;
            fadd_ce <= 1;
        end
        //
        if ((1'b1 == current_state_fsm_state07)) begin
            fmul_x <= arg5;
            fmul_y <= arg6;
            fmul_ce <= 1;
            fadd_ce <= 1;
        end
        if ((1'b1 == current_state_fsm_state09)) begin
            fadd_x <= fadd_r;
            fadd_y <= fmul_r;
            fadd_ce <= 1;
        end
        //
        if ((1'b1 == current_state_fsm_state10)) begin
            fmul_x <= arg7;
            fmul_y <= arg8;
            fmul_ce <= 1;
            fadd_ce <= 1;
        end
        if ((1'b1 == current_state_fsm_state12)) begin
            fadd_x <= fadd_r;
            fadd_y <= fmul_r;
            fadd_ce <= 1;
        end
        //
        if ((1'b1 == current_state_fsm_state13)) begin
            fadd_ce <= 1;
        end
    end
endmodule