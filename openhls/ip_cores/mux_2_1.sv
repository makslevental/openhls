// 2x1 multiplexer
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