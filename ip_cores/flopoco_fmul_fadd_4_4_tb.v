// 0 b00000000000
// 1 b01001110000
// 2 b01010000000
// 3 b01010001000
// 4 b01010010000
// 5 b01010010100
// 6 b01010011000
// 7 b01010011100
// 8 b01010100000
// 9 b01010100010
// 10 b01010100100
// 11 b01010100110
// 12 b01010101000
// 13 b01010101010
// 14 b01010101100
// 15 b01010101110
// 16 b01010110000
// 17 b01010110001
// 18 b01010110010
// 19 b01010110011

`default_nettype none
`include "flopoco_fmul_4_4.v"
`include "flopoco_fadd_4_4.v"
`timescale 1ns/1ps

module fmul_fadd_tb;
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

    reg[10:0] fmul_x_reg;
    reg[10:0] fmul_y_reg;
    wire[10:0] fmul_r_wire;
    reg[10:0] val_1_reg;

    reg[10:0] fadd_x_reg;
    reg[10:0] fadd_y_reg;
    wire[10:0] fadd_r_wire;
    reg[10:0] val_2_reg;

    fmul mul_dut(
        .clk(clk),
        .X(fmul_x_reg),
        .Y(fmul_y_reg),
        .R(fmul_r_wire)
    );
    always @(posedge clk)
        val_1_reg = fmul_r_wire;

    fadd add_dut(
        .clk(clk),
        .X(fadd_x_reg),
        .Y(fadd_y_reg),
        .R(fadd_r_wire)
    );
    always @(posedge clk)
        val_2_reg = fadd_r_wire;

    always @(*)
    	if ((11'd2 == count)) begin
            fadd_x_reg <= val_1_reg;
            fadd_y_reg <= 11'b01010100100; // 10.0
        end

    initial begin
        $monitor("Time = %0t val_2_reg = %0b", $time, val_2_reg);
        #PERIOD;
        fmul_x_reg <= 11'b01010000000; // 2.0
        fmul_y_reg <= 11'b01010001000; // 3.0
        $display("tick 1 fmul_r_wire %11b, val_1_reg %11b, fadd_r_wire %11b, val_2_reg %11b", fmul_r_wire, val_1_reg, fadd_r_wire, val_2_reg);
        #PERIOD;
        $display("tick 2 fmul_r_wire %11b, val_1_reg %11b, fadd_r_wire %11b, val_2_reg %11b", fmul_r_wire, val_1_reg, fadd_r_wire, val_2_reg);
        #PERIOD;
        $display("tick 3 fmul_r_wire %11b, val_1_reg %11b, fadd_r_wire %11b, val_2_reg %11b", fmul_r_wire, val_1_reg, fadd_r_wire, val_2_reg);
        #PERIOD;
        $display("tick 4 fmul_r_wire %11b, val_1_reg %11b, fadd_r_wire %11b, val_2_reg %11b", fmul_r_wire, val_1_reg, fadd_r_wire, val_2_reg);
        #PERIOD;
        $display("tick 5 fmul_r_wire %11b, val_1_reg %11b, fadd_r_wire %11b, val_2_reg %11b", fmul_r_wire, val_1_reg, fadd_r_wire, val_2_reg);
        #PERIOD;
        $display("tick 6 fmul_r_wire %11b, val_1_reg %11b, fadd_r_wire %11b, val_2_reg %11b", fmul_r_wire, val_1_reg, fadd_r_wire, val_2_reg);
        #PERIOD;
        if(val_2_reg !== 11'b01010110000) // 16.0
            $display("failed with fma %11b", val_2_reg);
        $display("tick 7 fmul_r_wire %11b, val_1_reg %11b, fadd_r_wire %11b, val_2_reg %11b", fmul_r_wire, val_1_reg, fadd_r_wire, val_2_reg);
        #PERIOD;
        $display("tick 8 fmul_r_wire %11b, val_1_reg %11b, fadd_r_wire %11b, val_2_reg %11b", fmul_r_wire, val_1_reg, fadd_r_wire, val_2_reg);

        $dumpfile("fmul_fadd.vcd");
        $dumpvars(0, fmul_fadd_tb);
        #20;
        $finish();
    end

endmodule