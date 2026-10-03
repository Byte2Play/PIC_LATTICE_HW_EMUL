module pc
#(
    parameter integer PC_SIZE = 13,
	parameter integer PC_K = 11
)
(
    input  wire               clk,
    input  wire               rst,
	input  wire				  jump,
	input  wire [PC_K-1:0] new_counter,
    output reg  [PC_SIZE-1:0] counter
);

    always @(posedge clk) begin
        if (rst) begin
            counter <= 0;                // reset: vuelve a la direccion 0
        end else begin
			if(jump) begin
				counter <= {{(PC_SIZE-PC_K){1'b0}}, new_counter};   // 00 + k (11 bits)
			end else begin
				counter <= counter + 1;      // avanza a la siguiente instruccion	
			end
        end
    end

endmodule