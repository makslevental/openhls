`default_nettype none
`include "flopoco_fmul_4_4.v"
`timescale 1ns/1ps

module fmul_tb;
    parameter HALF_PERIOD = 5;
    parameter PERIOD = 10;
    reg clk;
    reg reset;
    reg ce;
    always #HALF_PERIOD clk=~clk;

    reg[10:0] count = 11'b0;
    initial begin
        clk = 0;
        count = 0;
    end
    always @ (posedge clk) begin
        count <= count + 1'b1;
    end


    reg[10:0] X;
    reg[10:0] Y;
    wire[10:0] R;
    reg[10:0] res;

    fmul dut(
        .clk(clk),
        .X(X),
        .Y(Y),
        .R(R)
    );
    always @(posedge clk)
        res = R;

    initial begin
        #0;
        $display("count %0d res %11b", count, res);

        #PERIOD;
        X <= 11'b01010000000; // 2.0
        Y <= 11'b01010001000; // 3.0
        $display("count %0d res %11b", count, res);
        $display("write to inputs");

        #PERIOD;
        $display("count %0d res %11b", count, res);

        #PERIOD;
        $display("count %0d res %11b", count, res);
        if(res !== 11'b01010011000) // 6.0
            $display("failed with product %11b", res);
        else
            $display("passed with product %11b", res);

        #PERIOD;
        $display("count %0d res %11b", count, res);

        #PERIOD;
        $display("count %0d res %11b", count, res);

        #PERIOD;
        $display("count %0d res %11b", count, res);

        $dumpfile("fmul.vcd");
        $dumpvars(0, fmul_tb);
        #20;
        $finish();
    end

endmodule