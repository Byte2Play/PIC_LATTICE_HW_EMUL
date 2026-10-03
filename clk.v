module clk_div
#(
    parameter integer DIV = 24
)
(
    input  wire clk,
    output reg  clk_out
);

    reg [$clog2(DIV)-1:0] cnt;

    // Valores iniciales: sin esto la simulacion muestra 'x'
    initial begin
        cnt     = 0;
        clk_out = 1'b0;
    end

    always @(posedge clk) begin
        if (cnt == DIV/2 - 1) begin    // ya pasaron DIV/2 ciclos
            cnt     <= 0;              // reinicia el contador
            clk_out <= ~clk_out;       // invierte la salida
        end else begin
            cnt     <= cnt + 1;        // sigue contando
        end
    end

endmodule