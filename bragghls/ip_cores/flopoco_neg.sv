`timescale 1ns/1ps
module fneg
    #(parameter
        ID=1,
        WIDTH=16
    )(
    input wire[WIDTH-1:0] a,
    output wire[WIDTH-1:0] res
);
    assign res = a ^ (1 << (WIDTH-3));
endmodule
