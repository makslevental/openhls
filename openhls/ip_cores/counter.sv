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