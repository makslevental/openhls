`timescale 1ns/1ps

// include files in mux-to-demux-headerfiles.vh
`include "mux_to_demux_4.sv"

`include "mux_4_1.sv"
`include "demux_1_4.sv"
`include "counter.sv"

module mux_to_demux_tb_4;
    localparam PERIOD = 2;
    // width = num registers * width of registers
    localparam NUM_REGISTERS_PER = 4;
    localparam WIDTH_REGISTER = 4;
    localparam WIDTH = NUM_REGISTERS_PER*WIDTH_REGISTER;
    localparam HALF_PERIOD = PERIOD/2;
    reg clk;
    always #HALF_PERIOD clk = ~clk;

// FILES
    initial begin
        $dumpfile("mux_to_demux_4_tb.vcd");
        $dumpvars(0, mux_to_demux_tb_4);
    end


// UUT

    reg rst;
    wire[1:0] out;
    counter#(2) counter_(
        .clk(clk),
        .rst(rst),
        .out(out)
    );

    wire[WIDTH_REGISTER-1:0] a1, b1, c1, d1;
    wire[WIDTH_REGISTER-1:0] a2, b2, c2, d2;
    wire[WIDTH_REGISTER-1:0] a3, b3, c3, d3;
    wire[WIDTH_REGISTER-1:0] a4, b4, c4, d4;
    // wire[3:0][WIDTH-1:0] outp;
    mux_to_demux_4#(WIDTH) uut(
        // .a_in(3'b001), .b_in(3'b010), .c_in(3'b100), .d_in(3'b011),
        .inp({16'b0001_0011_0111_1111, 16'b0001_0010_0100_1000, 16'b1111_0111_0011_0001, 16'b1000_0100_0010_0001}),
        .sel(out),
        // .a_out(a_out), .b_out(b_out), .c_out(c_out), .d_out(d_out)
        // .outp({{d4, c4, b4, a4}, {d3, c3, b3, a3}, {d2, c2, b2, a2}, {d1, c1, b1, a1}})
        .outp({d4, c4, b4, a4, d3, c3, b3, a3, d2, c2, b2, a2, d1, c1, b1, a1})
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