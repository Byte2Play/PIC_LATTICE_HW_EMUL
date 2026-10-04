module decoder #(
    parameter integer INSTR_SIZE = 14
) (
    input  wire [INSTR_SIZE-1:0] instruction,
    output reg                   jump_to,
    output reg                   w_we
);

    always @(*) begin
        jump_to = 1'b0;                 // valores por defecto
        w_we    = 1'b0;

        casez (instruction[13:10])
            4'b101?: jump_to = 1'b1;    // GOTO
            4'b1100: w_we    = 1'b1;    // MOVLW
            default: ;                  // NOP y demas: nada
        endcase
    end

endmodule