module demux_1x4#(parameter
    ID=1,
    WIDTH=2
)(
    input wire[WIDTH-1:0] y,               // 1 Input
    input wire [1:0] sel,       // Select
    // output wire[WIDTH-1:0] a, b, c, d       // 4 Outputs
    output wire[3:0][WIDTH-1:0] outp
);
    // assign a = (sel == 2'b00) ? y:0;
    // assign b = (sel == 2'b01) ? y:0;
    // assign c = (sel == 2'b10) ? y:0;
    // assign d = (sel == 2'b11) ? y:0;
    assign outp[2'b00] = (sel == 2'b00) ? y:0;
    assign outp[2'b01] = (sel == 2'b01) ? y:0;
    assign outp[2'b10] = (sel == 2'b10) ? y:0;
    assign outp[2'b11] = (sel == 2'b11) ? y:0;
endmodule