// tb_top.v - Testbench del blink (SOLO simulacion, no agregar a Diamond)
//
// Dos modos:
//   normal      : HALF_PERIOD = 10 ciclos -> rapido, para ver la logica
//   TIEMPO_REAL : HALF_PERIOD = 6_045_000 -> el LED cambia cada 0.5 s
//                 como en la tarjeta (compilar con -DTIEMPO_REAL)
`timescale 1ns/1ps
module tb_top;

    localparam integer HP      = 10;               // ~827 ns
    localparam real    T_RUN   = 20000.0;          // 20 us

    reg  rst_n;
    wire led;

    top #(.HALF_PERIOD(HP)) dut (
        .rst_n (rst_n),
        .led   (led)
    );

    initial begin
        $dumpfile("test.vcd");
        $dumpvars(0, tb_top);

        rst_n = 1'b0;     // reset presionado
        #500;
        rst_n = 1'b1;     // suelta reset
        #(T_RUN);
        $finish;
    end

    // Muestra el tiempo de cada cambio del LED en ms
    always @(led)
        $display("t = %0.3f ms   led = %b", $realtime / 1.0e6, led);

endmodule
