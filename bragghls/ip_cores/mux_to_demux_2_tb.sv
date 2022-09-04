`timescale 1ns/1ps

`include "mux_to_demux_2.sv"

`include "mux_2_1.sv"
`include "demux_1_2.sv"
`include "counter.sv"

module mux_to_demux_tb_2;
    localparam PERIOD = 2;
    // width = num registers * width of registers
    localparam NUM_REGISTERS_PER = 5;
    localparam WIDTH_REGISTER = 5;
    localparam WIDTH = NUM_REGISTERS_PER*WIDTH_REGISTER;
    localparam HALF_PERIOD = PERIOD/2;
    reg clk;
    always #HALF_PERIOD clk = ~clk;

// FILES
    initial begin
        $dumpfile("mux_to_demux_2_tb.vcd");
        $dumpvars(0, mux_to_demux_tb_2);
    end


// UUT

    reg rst;
    wire out;
    counter#(1) counter_(
        .clk(clk),
        .rst(rst),
        .out(out)
    );

    wire[WIDTH_REGISTER-1:0] a1, b1, c1, d1, e1;
    wire[WIDTH_REGISTER-1:0] a2, b2, c2, d2, e2;
    mux_to_demux_2#(WIDTH) uut(
        .inp({25'b11111_01111_00111_00011_00001, 25'b10000_01000_00100_00010_00001}),
        .sel(out),
        .outp({e2, d2, c2, b2, a2, e1, d1, c1, b1, a1})
    );

    integer i;
    initial begin
        $display("test start");
        clk <= 0;
        rst <= 1;
        #PERIOD;
        rst <= 0;


        for (i = 0; i < 10; i = i+1) begin
            #PERIOD;
        end

        $display("test complete");
        $finish;
    end

endmodule