`default_nettype none
`include "flopoco_fmul_4_4.sv"
`include "flopoco_fadd_4_4.sv"
`timescale 1ns/1ps

module fmul_fadd_tb;
    localparam PERIOD = 2;
    localparam HALF_PERIOD = PERIOD / 2;
    reg clk;
    reg reset;
    always #HALF_PERIOD clk=~clk;

    reg[10:0] count = 11'b0;
    initial begin
        $dumpfile("fmul_fadd.vcd");
        $dumpvars(0, fmul_fadd_tb);
        clk = 0;
        count = 0;
    end

    always @ (posedge clk) begin
        count <= count + 1'b1;
    end

    wire[10:0] arg0;
    assign arg0 = 11'b00000000000;
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
    reg fmul_ce = 0;
    wire[10:0] fmul_r;

    fmul #(2) fmul_dut(
        .clk(clk),
        .ce(fmul_ce),
        .X(fmul_x),
        .Y(fmul_y),
        .R(fmul_r)
    );

    reg[10:0] fadd_x;
    reg[10:0] fadd_y;
    reg fadd_ce = 0;
    wire[10:0] fadd_r;

    fadd #(1) fadd_dut(
        .clk(clk),
        .ce(fadd_ce),
        .X(fadd_x),
        .Y(fadd_y),
        .R(fadd_r)
    );

    reg[10:0] res;

    always @ (posedge clk) begin
        fmul_x = 0;
        fmul_y = 0;
        fmul_ce = 0;
        fadd_x = 0;
        fadd_y = 0;
        fadd_ce = 0;
        if ((11'd1 == count)) begin
            fmul_x <= arg1; // 1.0
            fmul_y <= arg2; // 2.0
            fmul_ce <= 1;
        end
        // 2 == count
        if ((11'd3 == count)) begin
            fadd_x <= arg0; // 0.0
            fadd_y <= fmul_r; // 2.0
            fadd_ce <= 1;
        end
        // need to put a spacer here between the start of the previous
        if ((11'd4 == count)) begin
            fmul_x <= arg3; // 3.0
            fmul_y <= arg4; // 4.0
            fmul_ce <= 1;
            fadd_ce <= 1;
        end
        // 5 == count

        if ((11'd6 == count)) begin
            fadd_x <= fadd_r;
            fadd_y <= fmul_r;
            fadd_ce <= 1;
        end
        if ((11'd7 == count)) begin
            fmul_x <= arg5;
            fmul_y <= arg6;
            fmul_ce <= 1;
            fadd_ce <= 1;
        end
        // 8 == count

        if ((11'd9 == count)) begin
            fadd_x <= fadd_r;
            fadd_y <= fmul_r;
            fadd_ce <= 1;
        end
        if ((11'd10 == count)) begin
            fmul_x <= arg7;
            fmul_y <= arg8;
            fmul_ce <= 1;
            fadd_ce <= 1;
        end
        // 11 == count

        if ((11'd12 == count)) begin
            fadd_x <= fadd_r;
            fadd_y <= fmul_r;
            fadd_ce <= 1;
        end
        if ((11'd13 == count)) begin
            fadd_ce <= 1;
        end

        if ((11'd15 == count)) begin
            res <= fadd_r;
        end
	end

    initial begin
        $display("count %0d fmul_r %11b fadd_r %11b", count, fmul_r, fadd_r);
        #PERIOD;
        $display("count %0d fmul_r %11b fadd_r %11b", count, fmul_r, fadd_r);
        #PERIOD;
        $display("count %0d fmul_r %11b fadd_r %11b", count, fmul_r, fadd_r);
        #PERIOD;
        $display("count %0d fmul_r %11b fadd_r %11b", count, fmul_r, fadd_r);
        #PERIOD;
        $display("count %0d fmul_r %11b fadd_r %11b", count, fmul_r, fadd_r);
        #PERIOD;
        $display("count %0d fmul_r %11b fadd_r %11b", count, fmul_r, fadd_r);
        #PERIOD;
        $display("count %0d fmul_r %11b fadd_r %11b", count, fmul_r, fadd_r);
        #PERIOD;
        $display("count %0d fmul_r %11b fadd_r %11b", count, fmul_r, fadd_r);
        #PERIOD;
        $display("count %0d fmul_r %11b fadd_r %11b", count, fmul_r, fadd_r);
        #PERIOD;
        $display("count %0d fmul_r %11b fadd_r %11b", count, fmul_r, fadd_r);
        #PERIOD;
        $display("count %0d fmul_r %11b fadd_r %11b", count, fmul_r, fadd_r);
        #PERIOD;
        $display("count %0d fmul_r %11b fadd_r %11b", count, fmul_r, fadd_r);
        #PERIOD;
        $display("count %0d fmul_r %11b fadd_r %11b", count, fmul_r, fadd_r);
        #PERIOD;
        $display("count %0d fmul_r %11b fadd_r %11b", count, fmul_r, fadd_r);
        #PERIOD;
        $display("count %0d fmul_r %11b fadd_r %11b", count, fmul_r, fadd_r);
        #PERIOD;
        $display("count %0d fmul_r %11b fadd_r %11b", count, fmul_r, fadd_r);
        #PERIOD;
        $display("count %0d fmul_r %11b fadd_r %11b", count, fmul_r, fadd_r);
        #PERIOD;
        if(res !== 11'b01011011001) // 100
            $display("failed with accum %11b", res);
        else
            $display("passed with accum %11b", res);
        $finish();
    end


endmodule