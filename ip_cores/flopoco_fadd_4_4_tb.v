`include "flopoco_fadd_4_4.v"
`timescale 1ns/1ps

module flopoco_fadd_4_4_tb;
    parameter PERIOD = 10;
    reg clk;
    always #PERIOD clk=~clk;

    initial begin
      $display($time, " << Starting the Simulation >>");
        clk = 0;
    end

    reg[10:0] X;
    reg[10:0] Y;
    wire[10:0] R;

    fadd uut(
        .clk(clk),
        .X(X),
        .Y(Y),
        .R(R)
    );

    initial begin
        X = 1;
        Y = 1;
        // Not needed on Cloud V:
        $dumpfile("signals.vcd"); // Name of the signal dump file
        $dumpvars(0, flopoco_fadd_4_4_tb); // Signals to dump
        #3000;  // Simulation time
        $finish();  // Don't forget this or the simulation will run forever and fill up your hard drive.
    end

endmodule