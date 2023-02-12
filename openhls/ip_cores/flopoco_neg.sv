`timescale 1ns/1ps
module fneg
    #(parameter
        ID=1,
        WIDTH=16
    )(
    input wire clk,
    input wire[WIDTH-1:0] X,
    output reg[WIDTH-1:0] R
);
    always @(posedge clk) begin
        if (X != 0) begin
            R <= X ^ (1 << (WIDTH-3));
        end else begin
            R <= X;
        end
    end
endmodule
