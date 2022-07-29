`default_nettype none
`include "flopoco_fadd_4_4.sv"
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
        $dumpfile("fadd.vcd");
        $dumpvars(0, fadd_tb);
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

    fadd #(1) dut(
        .clk(clk),
        .X(X),
        .Y(Y),
        .R(R)
    );

    always @ (*) begin
        X = 1'b0;
        Y = 1'b0;
        if ((11'd1 == count)) begin
            X = 11'b01010000000; // 2.0
            Y = 11'b01010001000; // 3.0
        end
        if ((11'd3 == count)) begin
            //res = R;
        end
	end
    always @ (posedge clk) begin
        if ((11'd3 == count)) begin
            res <= R;
        end
	end


    initial begin
        #0;
        $display("count %0d res %11b", count, res);

        #PERIOD;
        $display("count %0d res %11b", count, res);

        #PERIOD;
        $display("count %0d res %11b", count, res);

        #PERIOD;
        $display("count %0d res %11b", count, res);

        #PERIOD;
        $display("count %0d res %11b", count, res);

        #20;
        $finish();
    end

endmodule