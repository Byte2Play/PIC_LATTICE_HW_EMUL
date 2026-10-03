`timescale 1ns/1ps
// -----------------------------------------------------------------------------
// Testbench del decoder (solo GOTO por ahora).
// Es combinacional: se pone una instruccion, se espera un poco y se compara.
// -----------------------------------------------------------------------------
module tb_decoder;

    reg  [13:0] instruction;
    wire        jump_to;

    integer errors;

    decoder #(.INSTR_SIZE(14)) dut (
        .instruction (instruction),
        .jump_to     (jump_to)
    );

    task check(input [13:0] instr, input expected, input [255:0] name);
        begin
            instruction = instr;
            #10;
            if (jump_to !== expected) begin
                $display("ERROR  %-12s instr=%04h  jump_to=%b  esperado=%b",
                         name, instr, jump_to, expected);
                errors = errors + 1;
            end else begin
                $display("ok     %-12s instr=%04h  jump_to=%b", name, instr, jump_to);
            end
        end
    endtask

    initial begin
        errors = 0;

        //     instruccion  esperado  nombre
        check(14'h2800,     1'b1,     "GOTO 0x000");
        check(14'h2FFF,     1'b1,     "GOTO 0x7FF");
        check(14'h2A55,     1'b1,     "GOTO 0x255");
        check(14'h27FF,     1'b0,     "CALL (100)");   // 100k kkkk kkkk kkkk
        check(14'h3001,     1'b0,     "MOVLW 0x01");
        check(14'h30FF,     1'b0,     "MOVLW 0xFF");
        check(14'h0000,     1'b0,     "NOP");
        check(14'h3FFF,     1'b0,     "ADDLW 0xFF");

        if (errors == 0) $display("\nTB_DECODER: PASS");
        else             $display("\nTB_DECODER: FAIL (%0d errores)", errors);
        $finish;
    end

endmodule
