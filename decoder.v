module decoder 
#(
    parameter integer INSTR_SIZE = 14
) 
(
    input  wire [INSTR_SIZE-1:0] instruction,
    output reg                   jump_to,
    output reg                   w_we,
    //decoder external signals
    output reg                   ram_we,
    //decoder to status reg
    output reg                   zero_status,
    output reg                   carry_status,
    output reg                   dc_status,
	output reg                   alu_b_sel,
	output reg [1 : 0]          read_bus,
   output reg                   fsr_we
);

    always @(*) begin
        // valores por defecto (NOP y demas)
        jump_to      = 1'b0;
        w_we         = 1'b0;
        ram_we       = 1'b0;
        zero_status  = 1'b0;
        carry_status = 1'b0;
        dc_status    = 1'b0;
		alu_b_sel = 1'b1;
		fsr_we    = 1'b0;
		
		// RAM to W
		read_bus[0] = 1'b0;
		read_bus[1] = 1'b0;
		
        casez (instruction)
            14'b101?_??_????_????: begin    	// GOTO
                jump_to = 1'b1;
            end

            14'b1100_??_????_????: begin    	// MOVLW: LITEAL = K -> WORK
                w_we    = 1'b1;
            end

            14'b00_0000_1???_????: begin    	// MOVWF: WORK -> RAM
                casez (instruction)
                    14'b??_????_?000_0100: fsr_we = 1'b1;      // f = 0x04 FSR
                    default:               ram_we = 1'b1;      // RAM
                endcase
            end
			
			14'b00_1000_0???_????: begin    // MOVF f,d: RAM -> WORK
				w_we      = 1'b1;           // W guarda lo que salga de la ALU
				alu_b_sel = 1'b0;           // el mux B elige la memoria (main_bus), no el literal
				casez (instruction)
					14'b??_????_?000_0011: read_bus = 2'b10;   // 0x03 STATUS
					14'b??_????_?000_0110: read_bus = 2'b01;   // 0x06 PORTB
					14'b??_????_?000_0100: read_bus = 2'b11;   // 0x04 FSR
					default:                read_bus = 2'b00;    // RAM
				endcase
				
            end

            default: begin                  	// NOP y demas
            end
        endcase
    end

endmodule