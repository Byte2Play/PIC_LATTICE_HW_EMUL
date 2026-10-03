// osch_sim.v - Modelo del OSCH de Lattice (SOLO simulacion, no agregar a Diamond)
`timescale 1ns/1ps
module OSCH #(
    parameter NOM_FREQ = "12.09"
) (
    input  wire STDBY,
    output reg  OSC,
    output wire SEDSTDBY
);
    initial OSC = 1'b0;
    always #41.36 OSC = ~OSC;   // ~12.09 MHz
    assign SEDSTDBY = 1'b0;
endmodule
