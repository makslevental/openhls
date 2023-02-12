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