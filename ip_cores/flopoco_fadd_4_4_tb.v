`default_nettype none
`include "flopoco_fadd_4_4.v"
`timescale 1ns/1ps

module fadd_tb;
    parameter HALF_PERIOD = 1.666665;
    parameter PERIOD = 3.33333;
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

    fadd dut(
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

        #PERIOD;
        $display("count %0d res %11b", count, res);
        if(res !== 11'b01010010100) // 5.0
            $display("failed with sum %10b", res);
        else
            $display("passed with sum %10b", res);

        #PERIOD;
        $display("count %0d res %11b", count, res);

        $dumpfile("fadd.vcd");
        $dumpvars(0, fadd_tb);
        #20;
        $finish();
    end

endmodule