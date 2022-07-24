`timescale 1ns/1ps
module neg
    #(parameter
        ID=1,
        WIDTH=16
    )(
    input wire[WIDTH-1:0] a,
    output wire[WIDTH-1:0] res
);
    assign res = (a[WIDTH-1] == 0) ? a:0;   //if the sign bit is high, send zero on the output else send the input
endmodule
