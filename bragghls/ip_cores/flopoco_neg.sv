`timescale 1ns/1ps
module fneg
    #(parameter
        ID=1,
        WIDTH=16
    )(
    input clk,
    input wire[WIDTH-1:0] a,
    output reg[WIDTH-1:0] res
);
    always @(posedge clk) begin
        if (a != 0) begin
            res <= a ^ (1 << (WIDTH-3));
        end else begin
            res <= a;
        end
    end
endmodule
