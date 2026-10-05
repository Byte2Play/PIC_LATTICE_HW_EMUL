module alu 
#(
    parameter integer WIDTH = 8,
    parameter integer FLAG = 3
) 
(
    input  wire [WIDTH-1:0] a,      // W
    input  wire [WIDTH-1:0] b,      // operando que sale del MUX (literal o RAM)
    input  wire [1:0]       sel,    // 00 = pasar b
    output reg  [WIDTH-1:0] c,
    output reg              zero_flag,
    output reg              carry_flag,
    output reg              dc_flag
);

    always @(*) begin
        case (sel)
            2'b00: begin                        // PASS (MOVLW, MOVWF, MOVF)
                c          = b;
                zero_flag  = 1'b0;
                carry_flag = 1'b0;
                dc_flag    = 1'b0;
            end

            default: begin                      // cualquier otro valor: 0
                c          = {WIDTH{1'b0}};
                zero_flag  = 1'b0;
                carry_flag = 1'b0;
                dc_flag    = 1'b0;
            end
        endcase
    end

endmodule