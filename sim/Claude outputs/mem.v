module mem (
    input  wire        clk,
    input  wire [7:0]  address,   // 8 bits -> 256 posiciones (0..255)
    output reg  [13:0] dato       // instruccion de 14 bits
);

    reg [13:0] rom [0:255];       // 256 palabras de 14 bits

    initial $readmemh("rom32x14.mem", rom);

    always @(posedge clk)
        dato <= rom[address];

endmodule
