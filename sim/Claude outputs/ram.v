module ram #(
    parameter integer DATA_WIDTH = 8,
    parameter integer ADDR_WIDTH = 9,
    parameter integer DEPTH      = 368
) (
    input  wire                  clk,
    input  wire                  we,        // 1 = escribir data_in en addr
    input  wire [ADDR_WIDTH-1:0] addr,
    input  wire [DATA_WIDTH-1:0] data_in,
    output wire [DATA_WIDTH-1:0] data_out
);

    reg [DATA_WIDTH-1:0] mem [0:DEPTH-1];

    integer i;

    // valor inicial: toda la RAM en 0 (evita 'x' en simulacion)
    initial begin
        for (i = 0; i < DEPTH; i = i + 1) begin
            mem[i] = {DATA_WIDTH{1'b0}};
        end
    end

    // escritura sincrona
    always @(posedge clk) begin
        if (we)
            mem[addr] <= data_in;
    end

    // lectura asincrona: el dato sale en cuanto cambia addr
    // (direcciones fuera de rango devuelven 0)
    assign data_out = (addr < DEPTH) ? mem[addr] : {DATA_WIDTH{1'b0}};

endmodule
