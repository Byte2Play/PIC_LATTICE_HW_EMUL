module top #(
    parameter integer CLK_DIV    = 12_090_000 / 15,  // 12.09 MHz / 3 -> el PC avanza 3 veces por segundo
    parameter integer LED_WIDTH  = 8,
    parameter integer PC_WIDTH   = 13,
    parameter integer PC_K_WIDTH = 11,
    parameter integer DATA_WIDTH = 8,
    parameter integer INSTR_WIDTH = 14
) (
    input  wire                 rst_n,
    output wire [LED_WIDTH-1:0] led
);

    // ---------------------------------------------------------------
    // Reloj
    // ---------------------------------------------------------------
    wire                    clk;
    wire                    clk_out;

    // ---------------------------------------------------------------
    // Programa: PC y memoria
    // ---------------------------------------------------------------
    wire [PC_WIDTH-1:0]     pc_counter;
    wire [INSTR_WIDTH-1:0]  mem_data;

    // ---------------------------------------------------------------
    // Control (salidas del decoder)
    // ---------------------------------------------------------------
    wire                    jump_to;
    wire                    w_we;

    // ---------------------------------------------------------------
    // Camino de datos
    // ---------------------------------------------------------------
    wire [DATA_WIDTH-1:0]   mux_mem_to_alu;
    wire [DATA_WIDTH-1:0]   alu_out;
    wire [DATA_WIDTH-1:0]   w_out;


    // ===============================================================
    // Reloj
    // ===============================================================
    OSCH #(.NOM_FREQ("12.09")) u_osc (
        .STDBY    (1'b0),
        .OSC      (clk),
        .SEDSTDBY ()
    );

    clk_div #(.DIV(CLK_DIV)) u_div (
        .clk     (clk),
        .clk_out (clk_out)
    );

    // ===============================================================
    // Fetch: PC y memoria de programa
    // ===============================================================
    pc #(.PC_SIZE(PC_WIDTH), .PC_K(PC_K_WIDTH)) u_pc (
        .clk         (clk_out),
        .rst         (~rst_n),
        .jump        (jump_to),
        .new_counter (mem_data[PC_K_WIDTH-1:0]),
        .counter     (pc_counter)
    );

    mem u_mem (
        .clk     (clk_out),
        .address (pc_counter[4:0]),
        .dato    (mem_data)
    );

    // ===============================================================
    // Decode
    // ===============================================================
    decoder u_decoder (
        .instruction (mem_data),
        .jump_to     (jump_to),
        .w_we        (w_we)
    );

    // ===============================================================
    // Execute: mux -> ALU -> W
    // ===============================================================
    mux #(.WIDTH(DATA_WIDTH)) u_mux_to_alu (
        .a   (mem_data[DATA_WIDTH-1:0]),
        .b   (),
        .c   (mux_mem_to_alu),
        .sel (1'b1)
    );

    alu #(.WIDTH(DATA_WIDTH)) u_alu (
        .a   (w_out),
        .b   (mux_mem_to_alu),
        .c   (alu_out),
        .sel (2'b00)
    );

    w #(.WIDTH(DATA_WIDTH)) w (
        .clk   (clk_out),
        .w_we  (w_we),
        .w_in  (alu_out),
        .w_out (w_out)
    );

    // ===============================================================
    // Salida
    // ===============================================================
    assign led = ~w_out;

endmodule