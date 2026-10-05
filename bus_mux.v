module bus_mux
#(
    parameter integer WIDTH = 8
)
(
    input  wire [WIDTH-1:0] ram_data,      // sel = 2'b00
    input  wire [WIDTH-1:0] portb_data,    // sel = 2'b01
    input  wire [WIDTH-1:0] status_data,   // sel = 2'b10
    input  wire [WIDTH-1:0] fsr_data,      // sel = 2'b11
    input  wire [1:0]       sel,
    output reg  [WIDTH-1:0] bus_out
);

    always @(*) begin
        case (sel)
            2'b00:   bus_out = ram_data;
            2'b01:   bus_out = portb_data;
            2'b10:   bus_out = status_data;
            2'b11:   bus_out = fsr_data;
            default: bus_out = {WIDTH{1'b0}};
        endcase
    end

endmodule
