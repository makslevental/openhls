module fmax #(parameter
    ID=1,
    WIDTH=10
)
    (input wire clk,
        input wire[WIDTH-1:0] X,
        input wire[WIDTH-1:0] Y,
        output reg[WIDTH-1:0] R
    );

    wire unordered;
    wire XltY;

    fcmplt#(ID) _fcmplt(
        clk,
        X,
        Y,
        unordered,
        XltY
    );

    always @(posedge clk) begin
        R <= (unordered == 1) ? X:(XltY == 1 ? Y : X);
    end

endmodule

