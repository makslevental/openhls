// multiplexer to demultiplexer
module counter#(parameter
    ID=1,
    WIDTH=2
)(
    input wire clk,
    input wire rst,
    output reg[WIDTH-1:0] out);
    initial out = 0;
    always @(negedge clk) begin
        if (rst) begin
            out <= 0;
        end else begin
            out <= out+1;
        end
    end
endmodule

module demux_1x2#(parameter
    ID=1,
    WIDTH=2
)(
    input wire[WIDTH-1:0] y,               // 1 Input
    input wire sel,       // Select
    output wire[1:0][WIDTH-1:0] outp
);
    assign outp[1'b0] = (sel == 1'b0) ? y:0;
    assign outp[1'b1] = (sel == 1'b1) ? y:0;
endmodule

module mux_2x1#(parameter
    ID=1,
    WIDTH=2
)(
    input wire[1:0][WIDTH-1:0] inp,
    input wire sel,
    output wire[WIDTH-1:0] y
);
    assign y = inp[sel];
endmodule

module mux_to_demux_2#(parameter
    ID=1,
    WIDTH=2
)(
    input wire[1:0][WIDTH-1:0] inp,
    input wire sel,
    output wire[1:0][WIDTH-1:0] outp
);

    wire[WIDTH-1:0] y;

    (* dont_touch = "yes" *) mux_2x1#(ID, WIDTH) MUX_2X1(
        .inp(inp),
        .sel(sel),
        .y(y)
    );

    (* dont_touch = "yes" *) demux_1x2#(ID, WIDTH) DEMUX_1X2(
        .y(y),
        .sel(sel),
        .outp(outp)
    );

endmodule