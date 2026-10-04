module mux #(
    parameter integer WIDTH = 8
) (
    input  wire [WIDTH-1:0] a,      // sel = 1  -> sale a  (el literal)
    input  wire [WIDTH-1:0] b,      // sel = 0  -> sale b  (dato de RAM)
    input  wire             sel,
    output reg  [WIDTH-1:0] c
);

    always @(*) begin
        if (sel)
            c = a;
        else
            c = b;
    end

endmodule