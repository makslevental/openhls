// 4x1 multiplexer
module mux_4x1#(parameter
    WIDTH=2
)(
    // input wire[WIDTH-1:0] a, b, c, d,      // 4 Inputs
    input wire[3:0][WIDTH-1:0] inp,      // 4 Inputs
    input wire [1:0] sel,       // Select
    output wire[WIDTH-1:0] y                // 1 Output
);
    // assign y = (sel == 2'b00) ? a:(sel == 2'b01) ? b:(sel == 2'b10) ? c:d;
    assign y = inp[sel];
endmodule