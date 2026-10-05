module status_reg 
#(
    parameter integer WIDTH = 8
) 
(
    input  wire             clk,

    // flags que calcula la ALU
    input  wire             z_in,
    input  wire             c_in,
    input  wire             dc_in,

    input  wire             z_we,
    input  wire             c_we,
    input  wire             dc_we,

    output wire [WIDTH-1:0] status_out
);
    // pora ahora solo alu modifica eso sbits
    // bit:  7    6    5    4    3    2   1   0
    //      IRP  RP1  RP0  /TO  /PD   Z   DC  C
    // valor al encender: 0x18 -> /TO = 1, /PD = 1, el resto en 0

    reg z_reg;
    reg dc_reg;
    reg c_reg;

    initial begin
        z_reg  = 1'b0;
        dc_reg = 1'b0;
        c_reg  = 1'b0;
    end

    always @(posedge clk) begin
        if (z_we)  z_reg  <= z_in;
        if (dc_we) dc_reg <= dc_in;
        if (c_we)  c_reg  <= c_in;
    end

    // bits fijos (IRP, RP1, RP0 = 0; /TO, /PD = 1) + banderas
    assign status_out = {3'b000, 1'b1, 1'b1, z_reg, dc_reg, c_reg};

endmodule
