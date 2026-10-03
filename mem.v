module mem (
    input  wire        clk,
    input  wire [4:0]  address,   // 5 bits -> 32 posiciones (0..31)
    output reg  [13:0] dato       // instruccion de 14 bits
);

    reg [13:0] rom [0:31];        // 32 palabras de 14 bits

    initial $readmemh("rom32x14.mem", rom);

    always @(posedge clk)
        dato <= rom[address];

endmodule