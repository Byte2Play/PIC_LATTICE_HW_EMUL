module decoder #(
    parameter integer INSTR_SIZE = 14
) (
    input  wire [INSTR_SIZE-1:0] instruction,
    output reg                   jump_to
);

    always @(*) begin
        jump_to = 1'b0;                     // valor por defecto

        casez (instruction[13:11])
            3'b101:  jump_to = 1'b1;        // GOTO
            default: jump_to = 1'b0;
        endcase
    end

endmodule