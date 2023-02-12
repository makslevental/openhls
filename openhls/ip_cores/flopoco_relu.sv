`timescale 1ns/1ps
module frelu
    #(parameter
        ID=1,
        WIDTH=16
    )(
    input wire clk,
    input wire[WIDTH-1:0] X,
    output reg[WIDTH-1:0] R
);
    always @(posedge clk) begin
        R <= (X[WIDTH-3] == 0) ? X:0;   //if the sign bit is high, send zero on the output else send the input
    end
endmodule
