// multiplexer to demultiplexer

module mux_to_demux_2#(parameter
    WIDTH=2
)(
    input wire[1:0][WIDTH-1:0] inp,
    input wire sel,
    output wire[1:0][WIDTH-1:0] outp
);

    wire[WIDTH-1:0] y;

    mux_2x1#(WIDTH) MUX_2X1(
        .inp(inp),
        .sel(sel),
        .y(y)
    );

    demux_1x2#(WIDTH) DEMUX_1X2(
        .y(y),
        .sel(sel),
        .outp(outp)
    );

endmodule