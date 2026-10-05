module top #(
    parameter integer CLK_DIV     = 12_090_000 / 10,  // 12.09 MHz / 10 -> el PC avanza 10 veces por segundo
    parameter integer LED_WIDTH   = 8,
    parameter integer PC_WIDTH    = 13,
    parameter integer PC_K_WIDTH  = 11,
    parameter integer DATA_WIDTH  = 8,
    parameter integer INSTR_WIDTH = 14
) (
    input  wire                 rst_n,
    output wire [LED_WIDTH-1:0] led
);

    // ---------------------------------------------------------------
    // Convencion de nombres:
    //   wire_xxx -> cable que solo conecta modulos (bus o control)
    //   xxx      -> dato que sale de un modulo y lleva su nombre
    // ---------------------------------------------------------------

    // ---------------------------------------------------------------
    // Reloj
    // ---------------------------------------------------------------
    wire                    clk_osc;        // oscilador interno
    wire                    clk_cpu;        // reloj dividido del procesador

    // ---------------------------------------------------------------
    // Programa: PC y memoria
    // ---------------------------------------------------------------
    wire [PC_WIDTH-1:0]     pc_counter;
    wire [INSTR_WIDTH-1:0]  instruction;

    // ---------------------------------------------------------------
    // Control (salidas del decoder)
    // ---------------------------------------------------------------
    wire                    wire_jump_en;
    wire                    wire_w_we;
    wire                    wire_fsr_we;
    wire                    wire_ram_we;
    wire                    wire_status_z_we;
    wire                    wire_status_c_we;
    wire                    wire_status_dc_we;
    wire                    wire_alu_b_sel;     // 1 = literal, 0 = dato de memoria
    wire [1:0]              wire_read_bus;      // quien contesta en el mux de lectura

    // ---------------------------------------------------------------
    // Camino de datos
    // ---------------------------------------------------------------
    wire [DATA_WIDTH-1:0]   wire_main_bus;      // salida del bus_mux
    wire [DATA_WIDTH-1:0]   wire_ram_addr;      // salida del mux de direccion
    wire [DATA_WIDTH-1:0]   wire_alu_b;         // operando b de la ALU (sale del mux)
    wire [DATA_WIDTH-1:0]   alu_out;
    wire [DATA_WIDTH-1:0]   w_out;
    wire [DATA_WIDTH-1:0]   fsr_to_mux;
    wire [DATA_WIDTH-1:0]   ram_dout;
    wire [DATA_WIDTH-1:0]   status_reg_dout;

    // ---------------------------------------------------------------
    // Banderas: ALU -> STATUS
    // ---------------------------------------------------------------
    wire                    alu_z;
    wire                    alu_c;
    wire                    alu_dc;

    // ===============================================================
    // Reloj
    // ===============================================================
    OSCH #(.NOM_FREQ("12.09")) u_osc (
        .STDBY    (1'b0),
        .OSC      (clk_osc),
        .SEDSTDBY ()
    );

    clk_div #(.DIV(CLK_DIV)) u_clk_div (
        .clk     (clk_osc),
        .clk_out (clk_cpu)
    );

    // ===============================================================
    // Fetch: PC y memoria de programa
    // ===============================================================
    pc #(.PC_SIZE(PC_WIDTH), .PC_K(PC_K_WIDTH)) u_pc (
        .clk         (clk_cpu),
        .rst         (~rst_n),
        .jump        (wire_jump_en),
        .new_counter (instruction[PC_K_WIDTH-1:0]),
        .counter     (pc_counter)
    );

    mem u_mem (
        .clk     (clk_cpu),
        .address (pc_counter[7:0]),
        .dato    (instruction)
    );

    // ===============================================================
    // Direccionamiento: Addr Mux, FSR y RAM
    // ===============================================================
    mux #(.WIDTH(DATA_WIDTH)) u_mux_address_ram (
        .a   ({1'b0, instruction[6:0]}),
        .b   (fsr_to_mux),
        .c   (wire_ram_addr),
        .sel (1'b1)
    );

    // FSR (el dato que se guarda sale de W)
    w #(.WIDTH(DATA_WIDTH)) u_fsr (
        .clk   (clk_cpu),
        .w_we  (wire_fsr_we),           // control
        .w_in  (w_out),
        .w_out (fsr_to_mux)
    );

    ram u_ram (
        .clk      (clk_cpu),
        .we       (wire_ram_we),
        .addr     ({1'b0, wire_ram_addr}),
        .data_in  (w_out),              // salida de u_w
        .data_out (ram_dout)
    );

    // Salidas de cada modulo: datapath de lectura
    bus_mux #(.WIDTH(DATA_WIDTH)) u_bus_mux (
        .ram_data    (ram_dout),            // 00
        .portb_data  (8'h00),               // 01 (sin conectar todavia)
        .status_data (status_reg_dout),     // 10
        .fsr_data    (fsr_to_mux),          // 11
        .sel         (wire_read_bus),
        .bus_out     (wire_main_bus)
    );

    // ===============================================================
    // Decode
    // ===============================================================
    decoder u_decoder (
        .instruction  (instruction),
        .jump_to      (wire_jump_en),
        .w_we         (wire_w_we),
        .ram_we       (wire_ram_we),
        .zero_status  (wire_status_z_we),
        .carry_status (wire_status_c_we),
        .dc_status    (wire_status_dc_we),
        .alu_b_sel    (wire_alu_b_sel),
        .read_bus     (wire_read_bus),
        .fsr_we       (wire_fsr_we)
    );

    // ===============================================================
    // Execute: mux -> ALU -> W / STATUS
    // ===============================================================
    mux #(.WIDTH(DATA_WIDTH)) u_mux_alu_b (
        .a   (instruction[DATA_WIDTH-1:0]),
        .b   (wire_main_bus),
        .c   (wire_alu_b),
        .sel (wire_alu_b_sel)
    );

    alu #(.WIDTH(DATA_WIDTH)) u_alu (
        .a          (w_out),
        .b          (wire_alu_b),
        .c          (alu_out),
        .sel        (2'b00),
        .zero_flag  (alu_z),
        .carry_flag (alu_c),
        .dc_flag    (alu_dc)
    );

    w #(.WIDTH(DATA_WIDTH)) u_w (
        .clk   (clk_cpu),
        .w_we  (wire_w_we),             // control
        .w_in  (alu_out),
        .w_out (w_out)
    );

    status_reg #(.WIDTH(DATA_WIDTH)) u_status_reg (
        .clk        (clk_cpu),
        .z_in       (alu_z),
        .c_in       (alu_c),
        .dc_in      (alu_dc),
        .z_we       (wire_status_z_we), // control
        .c_we       (wire_status_c_we), // control
        .dc_we      (wire_status_dc_we),// control
        .status_out (status_reg_dout)
    );

    // ===============================================================
    // Salida
    // ===============================================================
    assign led = ~w_out;

endmodule
