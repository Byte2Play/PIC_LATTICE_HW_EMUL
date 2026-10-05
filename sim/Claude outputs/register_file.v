module register_file #(
    parameter integer DATA_WIDTH = 8,
    parameter integer GPR_DEPTH  = 68
) (
    input  wire                  clk,
    input  wire                  we,          // 1 = escribir data_in
    input  wire                  rp0,         // bit RP0 de STATUS (banco)
    input  wire [6:0]            f,           // direccion de 7 bits de la instruccion
    input  wire [DATA_WIDTH-1:0] data_in,
    output reg  [DATA_WIDTH-1:0] data_out,
    output wire [DATA_WIDTH-1:0] portb_out,   // hacia los LEDs
    output wire [DATA_WIDTH-1:0] trisb_out
);

    // ---------------------------------------------------------------
    // Direcciones
    // ---------------------------------------------------------------
    localparam [6:0] ADDR_PORTB     = 7'h06;   // banco 0: PORTB, banco 1: TRISB
    localparam [6:0] ADDR_GPR_FIRST = 7'h0C;
    localparam [6:0] ADDR_GPR_LAST  = 7'h4F;

    // ---------------------------------------------------------------
    // Decodificador: que bloque esta seleccionado
    // ---------------------------------------------------------------
    wire sel_portb = (f == ADDR_PORTB) && (rp0 == 1'b0);              // usa RP0
    wire sel_trisb = (f == ADDR_PORTB) && (rp0 == 1'b1);              // usa RP0
    wire sel_gpr   = (f >= ADDR_GPR_FIRST) && (f <= ADDR_GPR_LAST);   // ignora RP0 (reflejo)

    wire portb_we = we && sel_portb;
    wire trisb_we = we && sel_trisb;
    wire gpr_we   = we && sel_gpr;

    // ---------------------------------------------------------------
    // Registros especiales
    // ---------------------------------------------------------------
    reg [DATA_WIDTH-1:0] portb_reg;
    reg [DATA_WIDTH-1:0] trisb_reg;

    initial begin
        portb_reg = {DATA_WIDTH{1'b0}};
        trisb_reg = {DATA_WIDTH{1'b1}};   // al encender: todos los pines como entrada
    end

    always @(posedge clk) begin
        if (portb_we) portb_reg <= data_in;
        if (trisb_we) trisb_reg <= data_in;
    end

    assign portb_out = portb_reg;
    assign trisb_out = trisb_reg;

    // ---------------------------------------------------------------
    // RAM de uso general (68 bytes)
    // ---------------------------------------------------------------
    wire [DATA_WIDTH-1:0] gpr_out;

    ram #(
        .DATA_WIDTH (DATA_WIDTH),
        .ADDR_WIDTH (7),
        .DEPTH      (GPR_DEPTH)
    ) u_gpr (
        .clk      (clk),
        .we       (gpr_we),
        .addr     (f - ADDR_GPR_FIRST),
        .data_in  (data_in),
        .data_out (gpr_out)
    );

    // ---------------------------------------------------------------
    // Mux de lectura
    // ---------------------------------------------------------------
    always @(*) begin
        if (sel_portb)
            data_out = portb_reg;
        else if (sel_trisb)
            data_out = trisb_reg;
        else if (sel_gpr)
            data_out = gpr_out;
        else
            data_out = {DATA_WIDTH{1'b0}};   // sin implementar: lee 0
    end

endmodule
