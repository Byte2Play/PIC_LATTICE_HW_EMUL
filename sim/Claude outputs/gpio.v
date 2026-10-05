module gpio #(
    parameter integer WIDTH = 8
) (
    input  wire             clk,
    input  wire             port_we,      // 1 = escribir el latch del puerto
    input  wire             tris_we,      // 1 = escribir la direccion (TRIS)
    input  wire [WIDTH-1:0] data_in,
    output wire [WIDTH-1:0] port_rd,      // lectura del puerto: estado real del pin
    output wire [WIDTH-1:0] tris_rd,
    inout  wire [WIDTH-1:0] pins          // pines fisicos
);

    reg [WIDTH-1:0] port_reg;             // latch de salida
    reg [WIDTH-1:0] tris_reg;             // 1 = entrada, 0 = salida

    initial begin
        port_reg = {WIDTH{1'b0}};
        tris_reg = {WIDTH{1'b1}};         // al encender: todos como entrada
    end

    always @(posedge clk) begin
        if (port_we) port_reg <= data_in;
        if (tris_we) tris_reg <= data_in;
    end

    // salida: TRIS = 0 -> el pin lleva el latch; TRIS = 1 -> alta impedancia
    genvar i;
    generate
        for (i = 0; i < WIDTH; i = i + 1) begin : g_pin
            assign pins[i] = tris_reg[i] ? 1'bz : port_reg[i];
        end
    endgenerate

    // lectura: valor real del pin
    assign port_rd = pins;
    assign tris_rd = tris_reg;

endmodule
