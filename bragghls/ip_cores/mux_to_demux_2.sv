// multiplexer to demultiplexer

module mux_to_demux_2#(parameter
    ID=1,
    WIDTH=2
)(
    input wire[1:0][WIDTH-1:0] inp,
    input wire sel,
    output wire[1:0][WIDTH-1:0] outp
);

    wire[WIDTH-1:0] y;

    // (* dont_touch = "yes" *)
    (* keep = "true" *) mux_2x1#(ID, WIDTH) MUX_2X1(
        .inp(inp),
        .sel(sel),
        .y(y)
    );

    // (* dont_touch = "yes" *)
    (* keep = "true" *) demux_1x2#(ID, WIDTH) DEMUX_1X2(
        .y(y),
        .sel(sel),
        .outp(outp)
    );

endmodule