module top #(
    parameter integer DIV     = 12_090_000 / 3,   // 2 Hz: el PC avanza 2 veces por segundo
    parameter integer LEDS    = 8,
    parameter integer PC_SIZE = 13,
	parameter integer PC_K = 11
) (
    input  wire              rst_n,
    output wire [LEDS-1:0]   led
);

    wire               clk;
    wire               clk_out;
    wire [PC_SIZE-1:0] pc_counter; 
	wire [13:0] mem_data; 
	
	wire jump_to;

    OSCH #(.NOM_FREQ("12.09")) u_osc (
        .STDBY    (1'b0),
        .OSC      (clk),
        .SEDSTDBY ()
    );

    clk_div #(.DIV(DIV)) u_div (
        .clk     (clk),
        .clk_out (clk_out)
    );

	pc #(.PC_SIZE(PC_SIZE), .PC_K(PC_K)) u_pc (
		.clk         (clk_out),
		.rst         (~rst_n),
		.jump        (jump_to),
		.new_counter (mem_data[10:0]),
		.counter     (pc_counter)
	);

	mem u_mem (
		.clk     (clk_out),
		.address (pc_counter[4:0]),
		.dato    (mem_data)
	);
	
	decoder u_decoder 
	(
		.instruction (mem_data),
		.jump_to (jump_to)
	);

	assign led = ~mem_data[7:0];

endmodule















