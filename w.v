module w #(
    parameter integer WIDTH = 8
) (
    input  wire             clk,
    input  wire             w_we,
    input  wire [WIDTH-1:0] w_in,
    output reg  [WIDTH-1:0] w_out
);

    initial w_out = {WIDTH{1'b0}};

    always @(posedge clk) begin
        if (w_we)
            w_out <= w_in;
    end

endmodule