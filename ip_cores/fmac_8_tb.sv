`default_nettype none
`include "fmac_8.sv"
`timescale 1ns/1ps

module fmul_fadd_tb;
    localparam PERIOD = 2;
    localparam HALF_PERIOD = PERIOD/2;
    reg clk;
    reg reset;
    always #HALF_PERIOD clk = ~clk;

    initial begin
        $dumpfile("fmul_fadd.vcd");
        $dumpvars(0, fmul_fadd_tb);
        clk = 0;
        reset = 1;
    end

    parameter fsm_state01 = 16'd1;
    parameter fsm_state02 = 16'd2;
    parameter fsm_state03 = 16'd4;
    parameter fsm_state04 = 16'd8;
    parameter fsm_state05 = 16'd16;
    parameter fsm_state06 = 16'd32;
    parameter fsm_state07 = 16'd64;
    parameter fsm_state08 = 16'd128;
    parameter fsm_state09 = 16'd256;
    parameter fsm_state10 = 16'd512;
    parameter fsm_state11 = 16'd1024;
    parameter fsm_state12 = 16'd2048;
    parameter fsm_state13 = 16'd4096;
    parameter fsm_state14 = 16'd8192;
    parameter fsm_state15 = 16'd16384;

    reg[15:0] current_state_fsm = 16'b0;

    wire current_state_fsm_state01;
    wire current_state_fsm_state02;
    wire current_state_fsm_state03;
    wire current_state_fsm_state04;
    wire current_state_fsm_state05;
    wire current_state_fsm_state06;
    wire current_state_fsm_state07;
    wire current_state_fsm_state08;
    wire current_state_fsm_state09;
    wire current_state_fsm_state10;
    wire current_state_fsm_state11;
    wire current_state_fsm_state12;
    wire current_state_fsm_state13;
    wire current_state_fsm_state14;
    wire current_state_fsm_state15;

    always @(posedge clk) begin
        if (current_state_fsm == 16'b0) begin
            current_state_fsm <= 16'b0000000000000001;
        end else begin
            current_state_fsm <= current_state_fsm << 1;
        end
    end

    assign current_state_fsm_state01 = current_state_fsm[4'd0];
    assign current_state_fsm_state02 = current_state_fsm[4'd1];
    assign current_state_fsm_state03 = current_state_fsm[4'd2];
    assign current_state_fsm_state04 = current_state_fsm[4'd3];
    assign current_state_fsm_state05 = current_state_fsm[4'd4];
    assign current_state_fsm_state06 = current_state_fsm[4'd5];
    assign current_state_fsm_state07 = current_state_fsm[4'd6];
    assign current_state_fsm_state08 = current_state_fsm[4'd7];
    assign current_state_fsm_state09 = current_state_fsm[4'd8];
    assign current_state_fsm_state10 = current_state_fsm[4'd9];
    assign current_state_fsm_state11 = current_state_fsm[4'd10];
    assign current_state_fsm_state12 = current_state_fsm[4'd11];
    assign current_state_fsm_state13 = current_state_fsm[4'd12];
    assign current_state_fsm_state14 = current_state_fsm[4'd13];
    assign current_state_fsm_state15 = current_state_fsm[4'd14];

    wire[10:0] arg1;
    assign arg1 = 11'b01001110000;
    wire[10:0] arg2;
    assign arg2 = 11'b01010000000;
    wire[10:0] arg3;
    assign arg3 = 11'b01010001000;
    wire[10:0] arg4;
    assign arg4 = 11'b01010010000;
    wire[10:0] arg5;
    assign arg5 = 11'b01010010100;
    wire[10:0] arg6;
    assign arg6 = 11'b01010011000;
    wire[10:0] arg7;
    assign arg7 = 11'b01010011100;
    wire[10:0] arg8;
    assign arg8 = 11'b01010100000;

    reg[10:0] fmul_x;
    reg[10:0] fmul_y;
    reg fmul_ce;
    wire[10:0] fmul_r;

    fmul#(2) fmul_dut(
        .clk(clk),
        .ce(fmul_ce),
        .X(fmul_x),
        .Y(fmul_y),
        .R(fmul_r)
    );

    reg[10:0] fadd_x;
    reg[10:0] fadd_y;
    reg fadd_ce;
    wire[10:0] fadd_r;

    fadd#(1) fadd_dut(
        .clk(clk),
        .ce(fadd_ce),
        .X(fadd_x),
        .Y(fadd_y),
        .R(fadd_r)
    );

    fmac fmac_dut(
        clk,
        arg1,
        arg2,
        arg3,
        arg4,
        arg5,
        arg6,
        arg7,
        arg8,
        fmul_x,
        fmul_y,
        fmul_ce,
        fmul_r,
        fadd_x,
        fadd_y,
        fadd_ce,
        fadd_r,
        current_state_fsm_state01,
        current_state_fsm_state02,
        current_state_fsm_state03,
        current_state_fsm_state04,
        current_state_fsm_state05,
        current_state_fsm_state06,
        current_state_fsm_state07,
        current_state_fsm_state08,
        current_state_fsm_state09,
        current_state_fsm_state10,
        current_state_fsm_state11,
        current_state_fsm_state12,
        current_state_fsm_state13,
        current_state_fsm_state14,
        current_state_fsm_state15
    );

    integer i;
    initial begin
        for (i = 0; i < 15; i = i+1) begin
            $display("count #%0d fmul_r %11b fadd_r %11b current_state %16b", i, fmul_r, fadd_r, current_state_fsm);
            #PERIOD;
        end
        $display("count #%0d fmul_r %11b fadd_r %11b current_state %16b", i, fmul_r, fadd_r, current_state_fsm);
        if (fadd_r !== 11'b01011011001) // 100
            $display("failed with accum %11b", fadd_r);
        else
            $display("passed with accum %11b", fadd_r);
        $finish();
    end

endmodule