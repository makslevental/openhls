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

    fadd add(
        .clk(clk),
        .X(X),
        .Y(Y),
        .R(R)
    );

    initial begin
        X = 11'b01010000100; // 2.5
        Y = 11'b01010010110; // 5.5
        $dumpfile("signals.vcd"); // Name of the signal dump file
        $dumpvars(0, flopoco_fadd_4_4_tb); // Signals to dump
        #100;  // Simulation time
        if(R != 11'b01010100000) // 8.0
            $display("failed with sum %10b", R);
        $finish();  // Don't forget this or the simulation will run forever and fill up your hard drive.
    end

endmodule