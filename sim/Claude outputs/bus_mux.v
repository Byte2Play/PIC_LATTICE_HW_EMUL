module bus_mux
#(
    parameter integer WIDTH = 8
)
(
    input  wire [WIDTH-1:0] a,      // sel = 2'b00  -> ram
    input  wire [WIDTH-1:0] b,      // sel = 2'b01  -> portb
    input  wire [WIDTH-1:0] c,      // sel = 2'b10  -> status
    input  wire [WIDTH-1:0] d,      // sel = 2'b11  -> fsr
    input  wire [1:0]       sel,
    output reg  [WIDTH-1:0] y
);

    always @(*) begin
        case (sel)
            2'b00:   y = a;
            2'b01:   y = b;
            2'b10:   y = c;
            2'b11:   y = d;
            default: y = {WIDTH{1'b0}};
        endcase
    end

endmodule
