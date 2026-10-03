`timescale 1ns/1ps
// -----------------------------------------------------------------------------
// Testbench del CPU (top con PC + memoria + decoder).
//
// - Usa osch_sim.v como modelo del OSCH (solo simulacion).
// - Baja DIV a un valor chico para no esperar segundos de simulacion.
// - Imprime una linea por cada paso del PC (flanco de clk_out).
// - Auto-chequeo:
//     1) el PC nunca pasa de la direccion del GOTO + 1 (si pasa, el salto fallo
//        y esta recorriendo los NOP);
//     2) el programa da la vuelta al menos NUM_VUELTAS veces.
//
// Programa esperado en la memoria:
//   00..09: MOVLW (0x01,0x02,0x04,0x08,0x10,0x20,0x40,0x80,0xFF,0x00)
//   0A    : GOTO 0x000
// -----------------------------------------------------------------------------
module tb_cpu_top;

    localparam integer GOTO_ADDR   = 5'h0A;   // direccion del GOTO en la memoria
    localparam integer NUM_VUELTAS = 3;       // vueltas completas a observar
    localparam integer MAX_PASOS   = 200;     // tope de seguridad

    reg         rst_n;
    wire [7:0]  led;

    integer pasos;
    integer vueltas;
    integer errors;
    reg     visto_goto;

    // DIV chico: el PC avanza rapido en simulacion
    top #(
        .DIV     (4),
        .LEDS    (8),
        .PC_SIZE (13),
        .PC_K    (11)
    ) dut (
        .rst_n (rst_n),
        .led   (led)
    );

    // ---- Reset ---------------------------------------------------------------
    initial begin
        rst_n = 1'b0;
        #2000;
        rst_n = 1'b1;
    end

    // ---- Monitor y chequeos (un paso por flanco de clk_out) -------------------
    initial begin
        pasos      = 0;
        vueltas    = 0;
        errors     = 0;
        visto_goto = 0;
    end

    always @(posedge dut.clk_out) begin
        if (rst_n) begin
            pasos = pasos + 1;

            $display("t=%0t  paso=%3d  pc=%02h  instr=%04h  jump=%b  led=%b (~%02h)",
                     $time, pasos, dut.pc_counter[4:0], dut.mem_data,
                     dut.jump_to, led, ~led);

            // 1) El PC no debe pasar de GOTO_ADDR + 1
            //    (+1 porque con memoria sincrona el PC va un ciclo adelante)
            if (dut.pc_counter[4:0] > GOTO_ADDR + 1) begin
                $display("ERROR: pc=%02h paso de la direccion del GOTO (%02h). El salto no funciona.",
                         dut.pc_counter[4:0], GOTO_ADDR);
                errors = errors + 1;
            end

            // 2) Contar vueltas: el GOTO se ve en el bus de instruccion
            if (dut.jump_to) begin
                visto_goto = 1;
                vueltas    = vueltas + 1;
            end

            if (vueltas >= NUM_VUELTAS || pasos >= MAX_PASOS) begin
                if (!visto_goto) begin
                    $display("ERROR: jump_to nunca se activo.");
                    errors = errors + 1;
                end
                if (vueltas < NUM_VUELTAS) begin
                    $display("ERROR: solo %0d vueltas de %0d esperadas.", vueltas, NUM_VUELTAS);
                    errors = errors + 1;
                end

                if (errors == 0) $display("\nTB_CPU_TOP: PASS (%0d vueltas, %0d pasos)", vueltas, pasos);
                else             $display("\nTB_CPU_TOP: FAIL (%0d errores)", errors);
                $finish;
            end
        end
    end

    // ---- Formas de onda -------------------------------------------------------
    initial begin
        $dumpfile("test_cpu.vcd");
        $dumpvars(0, tb_cpu_top);
    end

endmodule
