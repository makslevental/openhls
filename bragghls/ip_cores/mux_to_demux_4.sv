// multiplexer to demultiplexer

module mux_to_demux_4#(parameter
    WIDTH=2
)(
    // input wire[WIDTH-1:0] a_in, b_in, c_in, d_in,      // 4 Inputs
    input wire[3:0][WIDTH-1:0] inp,
    input[1:0] sel,                   // Select
    // output wire[WIDTH-1:0] a_out, b_out, c_out, d_out   // 4 Outputs
    output wire[3:0][WIDTH-1:0] outp
);

    wire[WIDTH-1:0] y;

    mux_4x1#(WIDTH) MUX_4X1(
        // .a(a_in), .b(b_in), .c(c_in), .d(d_in),
        .inp(inp),
        .sel(sel),
        .y(y)
    );

    demux_1x4#(WIDTH) DEMUX_1X4(
        .y(y),
        .sel(sel),
        .outp(outp)
        // .a(a_out), .b(b_out), .c(c_out), .d(d_out)
    );

endmodule