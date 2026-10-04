module alu #(
    parameter integer WIDTH = 8
) (
    input  wire [WIDTH-1:0] a,      // W
    input  wire [WIDTH-1:0] b,      // operando que sale del MUX (literal o RAM)
    input  wire [1:0]       sel,    // 00 = pasar b
    output reg  [WIDTH-1:0] c
);

    always @(*) begin
        case (sel)
            2'b00:   c = b;                  // PASS (MOVLW, MOVWF, MOVF)
            default: c = {WIDTH{1'b0}};      // cualquier otro valor: 0
        endcase
    end

endmodule