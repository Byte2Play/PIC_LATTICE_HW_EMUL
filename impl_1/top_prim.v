// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.14.0.75.2
// Netlist written on Sun Oct 04 21:28:15 2026
//
// Verilog Description of module top
//

module top (rst_n, led) /* synthesis syn_module_defined=1 */ ;   // d:/adelsoft/lattice/projects/bit_processor/top.v(1[8:11])
    input rst_n;   // d:/adelsoft/lattice/projects/bit_processor/top.v(9[33:38])
    output [7:0]led;   // d:/adelsoft/lattice/projects/bit_processor/top.v(10[33:36])
    
    wire clk_osc /* synthesis SET_AS_NETWORK=clk_osc, is_clock=1 */ ;   // d:/adelsoft/lattice/projects/bit_processor/top.v(22[29:36])
    
    wire GND_net, VCC_net, rst_n_c, led_c_7, led_c_6, led_c_5, led_c_4, 
        led_c_3, led_c_2, led_c_1, led_c_0, clk_cpu;
    wire [12:0]pc_counter;   // d:/adelsoft/lattice/projects/bit_processor/top.v(28[29:39])
    wire [13:0]instruction;   // d:/adelsoft/lattice/projects/bit_processor/top.v(29[29:40])
    wire [1:0]wire_read_bus;   // d:/adelsoft/lattice/projects/bit_processor/top.v(42[29:42])
    wire [7:0]wire_main_bus;   // d:/adelsoft/lattice/projects/bit_processor/top.v(47[29:42])
    wire [7:0]wire_alu_b;   // d:/adelsoft/lattice/projects/bit_processor/top.v(49[29:39])
    wire [7:0]w_out;   // d:/adelsoft/lattice/projects/bit_processor/top.v(51[29:34])
    wire [7:0]fsr_to_mux;   // d:/adelsoft/lattice/projects/bit_processor/top.v(52[29:39])
    
    wire clk_osc_enable_19, clk_osc_enable_26, n4469, n5, n3384, n3383;
    wire [7:0]data_out_7__N_95;
    
    wire n3324, n4361, n2, n2_adj_158, n2_adj_159, n2_adj_160, n2_adj_161, 
        n2_adj_162, n2_adj_163, n2_adj_164, n3537, n3558, n4398, 
        n4636, n4635, n4634, clk_osc_enable_12, n4631, n3460, n3459, 
        n3441, n3440, n3422, n3421, n4633;
    
    VHI i2 (.Z(VCC_net));
    w u_w (.w_out({w_out}), .clk_osc(clk_osc), .clk_osc_enable_26(clk_osc_enable_26), 
      .wire_alu_b({wire_alu_b})) /* synthesis syn_module_defined=1 */ ;   // d:/adelsoft/lattice/projects/bit_processor/top.v(166[29] 171[6])
    LUT4 i1_3_lut_4_lut (.A(n4635), .B(instruction[6]), .C(instruction[4]), 
         .D(instruction[5]), .Z(n3440)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_3_lut_4_lut.init = 16'h0100;
    LUT4 i1_3_lut_4_lut_adj_6 (.A(n4635), .B(instruction[6]), .C(n4636), 
         .D(n3537), .Z(n3383)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_3_lut_4_lut_adj_6.init = 16'h0100;
    OB led_pad_7 (.I(led_c_7), .O(led[7]));   // d:/adelsoft/lattice/projects/bit_processor/top.v(10[33:36])
    OSCH u_osc (.STDBY(GND_net), .OSC(clk_osc)) /* synthesis syn_instantiated=1 */ ;
    defparam u_osc.NOM_FREQ = "12.09";
    LUT4 w_out_7__I_0_i7_1_lut (.A(w_out[6]), .Z(led_c_6)) /* synthesis lut_function=(!(A)) */ ;   // d:/adelsoft/lattice/projects/bit_processor/top.v(187[18:24])
    defparam w_out_7__I_0_i7_1_lut.init = 16'h5555;
    OB led_pad_6 (.I(led_c_6), .O(led[6]));   // d:/adelsoft/lattice/projects/bit_processor/top.v(10[33:36])
    decoder u_decoder (.\instruction[7] (instruction[7]), .\instruction[11] (instruction[11]), 
            .\wire_main_bus[7] (wire_main_bus[7]), .\wire_alu_b[7] (wire_alu_b[7]), 
            .\instruction[12] (instruction[12]), .\instruction[13] (instruction[13]), 
            .n5(n5), .n4634(n4634), .n4635(n4635), .\instruction[6] (instruction[6]), 
            .n4633(n4633), .\instruction[5] (instruction[5]), .\instruction[4] (instruction[4]), 
            .n4636(n4636), .\instruction[3] (instruction[3]), .n4361(n4361), 
            .n3421(n3421), .\instruction[0] (instruction[0]), .\instruction[2] (instruction[2]), 
            .n4631(n4631), .fsr_to_mux({fsr_to_mux}), .n2(n2_adj_161), 
            .n2_adj_8(n2_adj_158), .n2_adj_9(n2_adj_162), .n2_adj_10(n2), 
            .n2_adj_11(n2_adj_160), .n2_adj_12(n2_adj_164), .n2_adj_13(n2_adj_163), 
            .n2_adj_14(n2_adj_159), .n4398(n4398), .n3459(n3459), .n3422(n3422), 
            .n3460(n3460), .\instruction[1] (instruction[1]), .n3537(n3537), 
            .\instruction[10] (instruction[10]), .\wire_read_bus[1] (wire_read_bus[1])) /* synthesis syn_module_defined=1 */ ;   // d:/adelsoft/lattice/projects/bit_processor/top.v(133[13] 144[6])
    ram u_ram (.\instruction[4] (instruction[4]), .\instruction[0] (instruction[0]), 
        .\instruction[1] (instruction[1]), .\instruction[2] (instruction[2]), 
        .\instruction[3] (instruction[3]), .w_out({w_out}), .clk_cpu(clk_cpu), 
        .n3383(n3383), .\pc_counter[0] (pc_counter[0]), .\pc_counter[1] (pc_counter[1]), 
        .\pc_counter[2] (pc_counter[2]), .\pc_counter[3] (pc_counter[3]), 
        .\pc_counter[4] (pc_counter[4]), .\pc_counter[5] (pc_counter[5]), 
        .\pc_counter[6] (pc_counter[6]), .\pc_counter[7] (pc_counter[7]), 
        .\instruction[11] (instruction[11]), .\instruction[12] (instruction[12]), 
        .\instruction[13] (instruction[13]), .\instruction[5] (instruction[5]), 
        .\instruction[6] (instruction[6]), .\instruction[7] (instruction[7]), 
        .\instruction[10] (instruction[10]), .clk_osc(clk_osc), .clk_osc_enable_12(clk_osc_enable_12), 
        .GND_net(GND_net), .VCC_net(VCC_net), .n3384(n3384), .n3440(n3440), 
        .n3460(n3460), .n3422(n3422), .n3441(n3441), .n3459(n3459), 
        .n3421(n3421), .data_out_7__N_95({data_out_7__N_95})) /* synthesis syn_module_defined=1 */ ;   // d:/adelsoft/lattice/projects/bit_processor/top.v(112[9] 118[6])
    OB led_pad_5 (.I(led_c_5), .O(led[5]));   // d:/adelsoft/lattice/projects/bit_processor/top.v(10[33:36])
    OB led_pad_4 (.I(led_c_4), .O(led[4]));   // d:/adelsoft/lattice/projects/bit_processor/top.v(10[33:36])
    OB led_pad_3 (.I(led_c_3), .O(led[3]));   // d:/adelsoft/lattice/projects/bit_processor/top.v(10[33:36])
    OB led_pad_2 (.I(led_c_2), .O(led[2]));   // d:/adelsoft/lattice/projects/bit_processor/top.v(10[33:36])
    OB led_pad_1 (.I(led_c_1), .O(led[1]));   // d:/adelsoft/lattice/projects/bit_processor/top.v(10[33:36])
    OB led_pad_0 (.I(led_c_0), .O(led[0]));   // d:/adelsoft/lattice/projects/bit_processor/top.v(10[33:36])
    IB rst_n_pad (.I(rst_n), .O(rst_n_c));   // d:/adelsoft/lattice/projects/bit_processor/top.v(9[33:38])
    LUT4 w_out_7__I_0_i8_1_lut (.A(w_out[7]), .Z(led_c_7)) /* synthesis lut_function=(!(A)) */ ;   // d:/adelsoft/lattice/projects/bit_processor/top.v(187[18:24])
    defparam w_out_7__I_0_i8_1_lut.init = 16'h5555;
    LUT4 i1202_2_lut_rep_15 (.A(clk_cpu), .B(n3558), .Z(clk_osc_enable_12)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/adelsoft/lattice/projects/bit_processor/w.v(12[12] 15[8])
    defparam i1202_2_lut_rep_15.init = 16'h4444;
    LUT4 w_out_7__I_0_i2_1_lut (.A(w_out[1]), .Z(led_c_1)) /* synthesis lut_function=(!(A)) */ ;   // d:/adelsoft/lattice/projects/bit_processor/top.v(187[18:24])
    defparam w_out_7__I_0_i2_1_lut.init = 16'h5555;
    GSR GSR_INST (.GSR(VCC_net));
    LUT4 w_out_7__I_0_i1_1_lut (.A(w_out[0]), .Z(led_c_0)) /* synthesis lut_function=(!(A)) */ ;   // d:/adelsoft/lattice/projects/bit_processor/top.v(187[18:24])
    defparam w_out_7__I_0_i1_1_lut.init = 16'h5555;
    LUT4 i1196_3_lut_3_lut_4_lut (.A(clk_cpu), .B(n3558), .C(n3537), .D(n4633), 
         .Z(clk_osc_enable_19)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // d:/adelsoft/lattice/projects/bit_processor/w.v(12[12] 15[8])
    defparam i1196_3_lut_3_lut_4_lut.init = 16'h0004;
    LUT4 i1203_4_lut (.A(instruction[10]), .B(n4634), .C(n4398), .D(instruction[11]), 
         .Z(n4469)) /* synthesis lut_function=(!(A (B)+!A (B ((D)+!C)))) */ ;
    defparam i1203_4_lut.init = 16'h3373;
    LUT4 i1206_2_lut_3_lut (.A(clk_cpu), .B(n3558), .C(rst_n_c), .Z(n3324)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // d:/adelsoft/lattice/projects/bit_processor/w.v(12[12] 15[8])
    defparam i1206_2_lut_3_lut.init = 16'h0404;
    LUT4 w_out_7__I_0_i6_1_lut (.A(w_out[5]), .Z(led_c_5)) /* synthesis lut_function=(!(A)) */ ;   // d:/adelsoft/lattice/projects/bit_processor/top.v(187[18:24])
    defparam w_out_7__I_0_i6_1_lut.init = 16'h5555;
    TSALL TSALL_INST (.TSALL(GND_net));
    LUT4 i1204_2_lut_3_lut (.A(clk_cpu), .B(n3558), .C(n4469), .Z(clk_osc_enable_26)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // d:/adelsoft/lattice/projects/bit_processor/w.v(12[12] 15[8])
    defparam i1204_2_lut_3_lut.init = 16'h4040;
    LUT4 w_out_7__I_0_i5_1_lut (.A(w_out[4]), .Z(led_c_4)) /* synthesis lut_function=(!(A)) */ ;   // d:/adelsoft/lattice/projects/bit_processor/top.v(187[18:24])
    defparam w_out_7__I_0_i5_1_lut.init = 16'h5555;
    mux u_mux_alu_b (.\instruction[6] (instruction[6]), .\wire_main_bus[6] (wire_main_bus[6]), 
        .n4634(n4634), .\wire_alu_b[6] (wire_alu_b[6]), .\instruction[5] (instruction[5]), 
        .\wire_main_bus[5] (wire_main_bus[5]), .\wire_alu_b[5] (wire_alu_b[5]), 
        .\instruction[4] (instruction[4]), .\wire_main_bus[4] (wire_main_bus[4]), 
        .\wire_alu_b[4] (wire_alu_b[4]), .\instruction[3] (instruction[3]), 
        .\wire_main_bus[3] (wire_main_bus[3]), .\wire_alu_b[3] (wire_alu_b[3]), 
        .\instruction[2] (instruction[2]), .\wire_main_bus[2] (wire_main_bus[2]), 
        .\wire_alu_b[2] (wire_alu_b[2]), .\instruction[1] (instruction[1]), 
        .\wire_main_bus[1] (wire_main_bus[1]), .\wire_alu_b[1] (wire_alu_b[1]), 
        .\instruction[0] (instruction[0]), .\wire_main_bus[0] (wire_main_bus[0]), 
        .\wire_alu_b[0] (wire_alu_b[0])) /* synthesis syn_module_defined=1 */ ;   // d:/adelsoft/lattice/projects/bit_processor/top.v(149[31] 154[6])
    w_U0 u_fsr (.fsr_to_mux({fsr_to_mux}), .clk_osc(clk_osc), .clk_osc_enable_19(clk_osc_enable_19), 
         .w_out({w_out})) /* synthesis syn_module_defined=1 */ ;   // d:/adelsoft/lattice/projects/bit_processor/top.v(105[29] 110[6])
    LUT4 w_out_7__I_0_i4_1_lut (.A(w_out[3]), .Z(led_c_3)) /* synthesis lut_function=(!(A)) */ ;   // d:/adelsoft/lattice/projects/bit_processor/top.v(187[18:24])
    defparam w_out_7__I_0_i4_1_lut.init = 16'h5555;
    bus_mux u_bus_mux (.n2(n2_adj_164), .\wire_read_bus[1] (wire_read_bus[1]), 
            .wire_main_bus({wire_main_bus}), .n2_adj_1(n2_adj_163), .n2_adj_2(n2_adj_162), 
            .n2_adj_3(n2_adj_161), .n2_adj_4(n2_adj_160), .n2_adj_5(n2_adj_159), 
            .\instruction[2] (instruction[2]), .n4631(n4631), .\instruction[6] (instruction[6]), 
            .n4361(n4361), .n2_adj_6(n2_adj_158), .n2_adj_7(n2), .data_out_7__N_95({data_out_7__N_95})) /* synthesis syn_module_defined=1 */ ;   // d:/adelsoft/lattice/projects/bit_processor/top.v(121[35] 128[6])
    \clk_div(DIV=1209000)  u_clk_div (.n3558(n3558), .clk_osc(clk_osc), 
            .clk_cpu(clk_cpu), .GND_net(GND_net)) /* synthesis syn_module_defined=1 */ ;   // d:/adelsoft/lattice/projects/bit_processor/top.v(72[30] 75[6])
    LUT4 w_out_7__I_0_i3_1_lut (.A(w_out[2]), .Z(led_c_2)) /* synthesis lut_function=(!(A)) */ ;   // d:/adelsoft/lattice/projects/bit_processor/top.v(187[18:24])
    defparam w_out_7__I_0_i3_1_lut.init = 16'h5555;
    VLO i1 (.Z(GND_net));
    pc u_pc (.\pc_counter[7] (pc_counter[7]), .GND_net(GND_net), .\pc_counter[0] (pc_counter[0]), 
       .clk_osc(clk_osc), .clk_osc_enable_12(clk_osc_enable_12), .n3324(n3324), 
       .\instruction[0] (instruction[0]), .n5(n5), .\instruction[10] (instruction[10]), 
       .\instruction[7] (instruction[7]), .\instruction[6] (instruction[6]), 
       .\instruction[5] (instruction[5]), .\instruction[4] (instruction[4]), 
       .\instruction[3] (instruction[3]), .\pc_counter[6] (pc_counter[6]), 
       .\instruction[2] (instruction[2]), .\pc_counter[5] (pc_counter[5]), 
       .\pc_counter[4] (pc_counter[4]), .\pc_counter[3] (pc_counter[3]), 
       .\pc_counter[2] (pc_counter[2]), .\pc_counter[1] (pc_counter[1]), 
       .\instruction[1] (instruction[1])) /* synthesis syn_module_defined=1 */ ;   // d:/adelsoft/lattice/projects/bit_processor/top.v(80[49] 86[6])
    LUT4 i1_2_lut_3_lut_4_lut (.A(n4635), .B(instruction[6]), .C(instruction[5]), 
         .D(instruction[4]), .Z(n3384)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'h0100;
    LUT4 i1_2_lut_3_lut_4_lut_adj_7 (.A(n4635), .B(instruction[6]), .C(instruction[5]), 
         .D(instruction[4]), .Z(n3441)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_7.init = 16'h1000;
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    
endmodule
//
// Verilog Description of module w
//

module w (w_out, clk_osc, clk_osc_enable_26, wire_alu_b) /* synthesis syn_module_defined=1 */ ;
    output [7:0]w_out;
    input clk_osc;
    input clk_osc_enable_26;
    input [7:0]wire_alu_b;
    
    wire clk_osc /* synthesis SET_AS_NETWORK=clk_osc, is_clock=1 */ ;   // d:/adelsoft/lattice/projects/bit_processor/top.v(22[29:36])
    
    FD1P3AX w_out_i0_i0 (.D(wire_alu_b[0]), .SP(clk_osc_enable_26), .CK(clk_osc), 
            .Q(w_out[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=6, LSE_LLINE=166, LSE_RLINE=171 */ ;   // d:/adelsoft/lattice/projects/bit_processor/w.v(12[12] 15[8])
    defparam w_out_i0_i0.GSR = "ENABLED";
    FD1P3AX w_out_i0_i7 (.D(wire_alu_b[7]), .SP(clk_osc_enable_26), .CK(clk_osc), 
            .Q(w_out[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=6, LSE_LLINE=166, LSE_RLINE=171 */ ;   // d:/adelsoft/lattice/projects/bit_processor/w.v(12[12] 15[8])
    defparam w_out_i0_i7.GSR = "ENABLED";
    FD1P3AX w_out_i0_i6 (.D(wire_alu_b[6]), .SP(clk_osc_enable_26), .CK(clk_osc), 
            .Q(w_out[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=6, LSE_LLINE=166, LSE_RLINE=171 */ ;   // d:/adelsoft/lattice/projects/bit_processor/w.v(12[12] 15[8])
    defparam w_out_i0_i6.GSR = "ENABLED";
    FD1P3AX w_out_i0_i5 (.D(wire_alu_b[5]), .SP(clk_osc_enable_26), .CK(clk_osc), 
            .Q(w_out[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=6, LSE_LLINE=166, LSE_RLINE=171 */ ;   // d:/adelsoft/lattice/projects/bit_processor/w.v(12[12] 15[8])
    defparam w_out_i0_i5.GSR = "ENABLED";
    FD1P3AX w_out_i0_i4 (.D(wire_alu_b[4]), .SP(clk_osc_enable_26), .CK(clk_osc), 
            .Q(w_out[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=6, LSE_LLINE=166, LSE_RLINE=171 */ ;   // d:/adelsoft/lattice/projects/bit_processor/w.v(12[12] 15[8])
    defparam w_out_i0_i4.GSR = "ENABLED";
    FD1P3AX w_out_i0_i3 (.D(wire_alu_b[3]), .SP(clk_osc_enable_26), .CK(clk_osc), 
            .Q(w_out[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=6, LSE_LLINE=166, LSE_RLINE=171 */ ;   // d:/adelsoft/lattice/projects/bit_processor/w.v(12[12] 15[8])
    defparam w_out_i0_i3.GSR = "ENABLED";
    FD1P3AX w_out_i0_i2 (.D(wire_alu_b[2]), .SP(clk_osc_enable_26), .CK(clk_osc), 
            .Q(w_out[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=6, LSE_LLINE=166, LSE_RLINE=171 */ ;   // d:/adelsoft/lattice/projects/bit_processor/w.v(12[12] 15[8])
    defparam w_out_i0_i2.GSR = "ENABLED";
    FD1P3AX w_out_i0_i1 (.D(wire_alu_b[1]), .SP(clk_osc_enable_26), .CK(clk_osc), 
            .Q(w_out[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=6, LSE_LLINE=166, LSE_RLINE=171 */ ;   // d:/adelsoft/lattice/projects/bit_processor/w.v(12[12] 15[8])
    defparam w_out_i0_i1.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module decoder
//

module decoder (\instruction[7] , \instruction[11] , \wire_main_bus[7] , 
            \wire_alu_b[7] , \instruction[12] , \instruction[13] , n5, 
            n4634, n4635, \instruction[6] , n4633, \instruction[5] , 
            \instruction[4] , n4636, \instruction[3] , n4361, n3421, 
            \instruction[0] , \instruction[2] , n4631, fsr_to_mux, n2, 
            n2_adj_8, n2_adj_9, n2_adj_10, n2_adj_11, n2_adj_12, n2_adj_13, 
            n2_adj_14, n4398, n3459, n3422, n3460, \instruction[1] , 
            n3537, \instruction[10] , \wire_read_bus[1] ) /* synthesis syn_module_defined=1 */ ;
    input \instruction[7] ;
    input \instruction[11] ;
    input \wire_main_bus[7] ;
    output \wire_alu_b[7] ;
    input \instruction[12] ;
    input \instruction[13] ;
    output n5;
    output n4634;
    output n4635;
    input \instruction[6] ;
    output n4633;
    input \instruction[5] ;
    input \instruction[4] ;
    output n4636;
    input \instruction[3] ;
    output n4361;
    output n3421;
    input \instruction[0] ;
    input \instruction[2] ;
    output n4631;
    input [7:0]fsr_to_mux;
    output n2;
    output n2_adj_8;
    output n2_adj_9;
    output n2_adj_10;
    output n2_adj_11;
    output n2_adj_12;
    output n2_adj_13;
    output n2_adj_14;
    output n4398;
    output n3459;
    output n3422;
    output n3460;
    input \instruction[1] ;
    output n3537;
    input \instruction[10] ;
    output \wire_read_bus[1] ;
    
    
    wire n4358, n4261;
    
    LUT4 b_7__I_0_i8_3_lut_4_lut (.A(n4358), .B(\instruction[7] ), .C(\instruction[11] ), 
         .D(\wire_main_bus[7] ), .Z(\wire_alu_b[7] )) /* synthesis lut_function=(A (B)+!A (B+(C (D)))) */ ;   // d:/adelsoft/lattice/projects/bit_processor/decoder.v(35[9] 65[16])
    defparam b_7__I_0_i8_3_lut_4_lut.init = 16'hdccc;
    LUT4 i2_3_lut (.A(\instruction[12] ), .B(\instruction[13] ), .C(\instruction[11] ), 
         .Z(n5)) /* synthesis lut_function=(A+!(B (C))) */ ;   // d:/adelsoft/lattice/projects/bit_processor/decoder.v(35[9] 65[16])
    defparam i2_3_lut.init = 16'hbfbf;
    LUT4 i2_3_lut_rep_17 (.A(n4358), .B(\instruction[7] ), .C(\instruction[11] ), 
         .Z(n4634)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // d:/adelsoft/lattice/projects/bit_processor/decoder.v(35[9] 65[16])
    defparam i2_3_lut_rep_17.init = 16'hefef;
    LUT4 i2_3_lut_rep_18 (.A(n4358), .B(\instruction[7] ), .C(\instruction[11] ), 
         .Z(n4635)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // d:/adelsoft/lattice/projects/bit_processor/decoder.v(35[9] 65[16])
    defparam i2_3_lut_rep_18.init = 16'hfbfb;
    LUT4 i2_2_lut_rep_16_4_lut (.A(n4358), .B(\instruction[7] ), .C(\instruction[11] ), 
         .D(\instruction[6] ), .Z(n4633)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // d:/adelsoft/lattice/projects/bit_processor/decoder.v(35[9] 65[16])
    defparam i2_2_lut_rep_16_4_lut.init = 16'hfffb;
    LUT4 i1_2_lut_rep_19 (.A(\instruction[5] ), .B(\instruction[4] ), .Z(n4636)) /* synthesis lut_function=(A+(B)) */ ;   // d:/adelsoft/lattice/projects/bit_processor/decoder.v(54[5] 59[12])
    defparam i1_2_lut_rep_19.init = 16'heeee;
    LUT4 i2_2_lut_3_lut (.A(\instruction[5] ), .B(\instruction[4] ), .C(\instruction[3] ), 
         .Z(n4361)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/adelsoft/lattice/projects/bit_processor/decoder.v(54[5] 59[12])
    defparam i2_2_lut_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_3_lut_4_lut (.A(\instruction[5] ), .B(\instruction[4] ), 
         .C(n4635), .D(\instruction[6] ), .Z(n3421)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // d:/adelsoft/lattice/projects/bit_processor/decoder.v(54[5] 59[12])
    defparam i1_2_lut_3_lut_4_lut.init = 16'h0100;
    LUT4 i3_4_lut (.A(n4634), .B(\instruction[6] ), .C(\instruction[3] ), 
         .D(n4636), .Z(n4261)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3_4_lut.init = 16'hfffe;
    LUT4 i2_3_lut_rep_14 (.A(\instruction[0] ), .B(n4261), .C(\instruction[2] ), 
         .Z(n4631)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // d:/adelsoft/lattice/projects/bit_processor/decoder.v(35[9] 65[16])
    defparam i2_3_lut_rep_14.init = 16'h1010;
    LUT4 i564_2_lut_4_lut (.A(\instruction[0] ), .B(n4261), .C(\instruction[2] ), 
         .D(fsr_to_mux[0]), .Z(n2)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // d:/adelsoft/lattice/projects/bit_processor/decoder.v(35[9] 65[16])
    defparam i564_2_lut_4_lut.init = 16'h1000;
    LUT4 i561_2_lut_4_lut (.A(\instruction[0] ), .B(n4261), .C(\instruction[2] ), 
         .D(fsr_to_mux[6]), .Z(n2_adj_8)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // d:/adelsoft/lattice/projects/bit_processor/decoder.v(35[9] 65[16])
    defparam i561_2_lut_4_lut.init = 16'h1000;
    LUT4 i565_2_lut_2_lut_4_lut (.A(\instruction[0] ), .B(n4261), .C(\instruction[2] ), 
         .D(fsr_to_mux[3]), .Z(n2_adj_9)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // d:/adelsoft/lattice/projects/bit_processor/decoder.v(35[9] 65[16])
    defparam i565_2_lut_2_lut_4_lut.init = 16'hffef;
    LUT4 i560_2_lut_4_lut (.A(\instruction[0] ), .B(n4261), .C(\instruction[2] ), 
         .D(fsr_to_mux[1]), .Z(n2_adj_10)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // d:/adelsoft/lattice/projects/bit_processor/decoder.v(35[9] 65[16])
    defparam i560_2_lut_4_lut.init = 16'h1000;
    LUT4 i563_2_lut_4_lut (.A(\instruction[0] ), .B(n4261), .C(\instruction[2] ), 
         .D(fsr_to_mux[2]), .Z(n2_adj_11)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // d:/adelsoft/lattice/projects/bit_processor/decoder.v(35[9] 65[16])
    defparam i563_2_lut_4_lut.init = 16'h1000;
    LUT4 i569_2_lut_2_lut_4_lut (.A(\instruction[0] ), .B(n4261), .C(\instruction[2] ), 
         .D(fsr_to_mux[4]), .Z(n2_adj_12)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // d:/adelsoft/lattice/projects/bit_processor/decoder.v(35[9] 65[16])
    defparam i569_2_lut_2_lut_4_lut.init = 16'hffef;
    LUT4 i566_2_lut_4_lut (.A(\instruction[0] ), .B(n4261), .C(\instruction[2] ), 
         .D(fsr_to_mux[5]), .Z(n2_adj_13)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // d:/adelsoft/lattice/projects/bit_processor/decoder.v(35[9] 65[16])
    defparam i566_2_lut_4_lut.init = 16'h1000;
    LUT4 i562_2_lut_4_lut (.A(\instruction[0] ), .B(n4261), .C(\instruction[2] ), 
         .D(fsr_to_mux[7]), .Z(n2_adj_14)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // d:/adelsoft/lattice/projects/bit_processor/decoder.v(35[9] 65[16])
    defparam i562_2_lut_4_lut.init = 16'h1000;
    LUT4 i1100_2_lut (.A(\instruction[12] ), .B(\instruction[13] ), .Z(n4398)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1100_2_lut.init = 16'h8888;
    LUT4 i2_3_lut_4_lut (.A(\instruction[6] ), .B(n4635), .C(\instruction[5] ), 
         .D(\instruction[4] ), .Z(n3459)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i2_3_lut_4_lut.init = 16'h0020;
    LUT4 i1_2_lut_3_lut_4_lut_adj_2 (.A(\instruction[6] ), .B(n4635), .C(\instruction[5] ), 
         .D(\instruction[4] ), .Z(n3422)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_2.init = 16'h0200;
    LUT4 i1_2_lut_3_lut_4_lut_adj_3 (.A(\instruction[6] ), .B(n4635), .C(\instruction[5] ), 
         .D(\instruction[4] ), .Z(n3460)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_3.init = 16'h2000;
    LUT4 i3_4_lut_adj_4 (.A(\instruction[0] ), .B(\instruction[1] ), .C(\instruction[2] ), 
         .D(n4361), .Z(n3537)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // d:/adelsoft/lattice/projects/bit_processor/decoder.v(54[5] 59[12])
    defparam i3_4_lut_adj_4.init = 16'hffef;
    LUT4 i2_3_lut_adj_5 (.A(\instruction[12] ), .B(\instruction[13] ), .C(\instruction[10] ), 
         .Z(n4358)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/adelsoft/lattice/projects/bit_processor/decoder.v(40[13:34])
    defparam i2_3_lut_adj_5.init = 16'hfefe;
    LUT4 instruction_0__bdd_4_lut_1382 (.A(\instruction[0] ), .B(n4261), 
         .C(\instruction[1] ), .D(\instruction[2] ), .Z(\wire_read_bus[1] )) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (B+(C+!(D))))) */ ;
    defparam instruction_0__bdd_4_lut_1382.init = 16'h0120;
    
endmodule
//
// Verilog Description of module ram
//

module ram (\instruction[4] , \instruction[0] , \instruction[1] , \instruction[2] , 
            \instruction[3] , w_out, clk_cpu, n3383, \pc_counter[0] , 
            \pc_counter[1] , \pc_counter[2] , \pc_counter[3] , \pc_counter[4] , 
            \pc_counter[5] , \pc_counter[6] , \pc_counter[7] , \instruction[11] , 
            \instruction[12] , \instruction[13] , \instruction[5] , \instruction[6] , 
            \instruction[7] , \instruction[10] , clk_osc, clk_osc_enable_12, 
            GND_net, VCC_net, n3384, n3440, n3460, n3422, n3441, 
            n3459, n3421, data_out_7__N_95) /* synthesis syn_module_defined=1 */ ;
    output \instruction[4] ;
    output \instruction[0] ;
    output \instruction[1] ;
    output \instruction[2] ;
    output \instruction[3] ;
    input [7:0]w_out;
    input clk_cpu;
    input n3383;
    input \pc_counter[0] ;
    input \pc_counter[1] ;
    input \pc_counter[2] ;
    input \pc_counter[3] ;
    input \pc_counter[4] ;
    input \pc_counter[5] ;
    input \pc_counter[6] ;
    input \pc_counter[7] ;
    output \instruction[11] ;
    output \instruction[12] ;
    output \instruction[13] ;
    output \instruction[5] ;
    output \instruction[6] ;
    output \instruction[7] ;
    output \instruction[10] ;
    input clk_osc;
    input clk_osc_enable_12;
    input GND_net;
    input VCC_net;
    input n3384;
    input n3440;
    input n3460;
    input n3422;
    input n3441;
    input n3459;
    input n3421;
    output [7:0]data_out_7__N_95;
    
    wire clk_osc /* synthesis SET_AS_NETWORK=clk_osc, is_clock=1 */ ;   // d:/adelsoft/lattice/projects/bit_processor/top.v(22[29:36])
    
    wire n3408, n3416, n4427, n3370, n3378, n4425, n3427, n3435, 
        n4426, n3366, n3367, n3368, n3369, n3442, n3450, n4456, 
        n3423, n3431, n4454, n3404, n3412, n4455, n3428, n3436, 
        n4419, n3371, n3379, n4418, n3380, n3381, n3429, n3430, 
        n3454, n3455, n3456, n3457, n3417, n3418, n3419, n3372, 
        n3373, n3437, n3438, n3409, n4420, n3446, n3447, n3448, 
        n3449, n4421, n3374, n4453, n3443, n3451, n4449, n3405, 
        n3413, n4448, n3424, n3432, n4447, n3410, n3411, n3375, 
        n4446, n4411, n4412, n4415, n4439, n4440, n4443, n4413, 
        n4414, n4416, n3406, n3407, n3425, n3426, n3376, n3377, 
        n3444, n3445, n3414, n3415, n3433, n3434, n3452, n3453, 
        n4442, n4441, n4444, n4450, n4451, n4457, n4458, n4422, 
        n4423, n4429, n4430, n4408, n4409, n4436, n4437, n4428, 
        n4404, n4405, n4406, n4407, n4432, n4433, n4434, n4435;
    
    LUT4 i1129_3_lut (.A(n3408), .B(n3416), .C(\instruction[4] ), .Z(n4427)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i1129_3_lut.init = 16'hcaca;
    LUT4 i1127_3_lut (.A(n3370), .B(n3378), .C(\instruction[4] ), .Z(n4425)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i1127_3_lut.init = 16'hcaca;
    LUT4 i1128_3_lut (.A(n3427), .B(n3435), .C(\instruction[4] ), .Z(n4426)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i1128_3_lut.init = 16'hcaca;
    SPR16X4C mem8 (.DI0(w_out[0]), .DI1(w_out[1]), .DI2(w_out[2]), .DI3(w_out[3]), 
            .AD0(\instruction[0] ), .AD1(\instruction[1] ), .AD2(\instruction[2] ), 
            .AD3(\instruction[3] ), .CK(clk_cpu), .WRE(n3383), .DO0(n3366), 
            .DO1(n3367), .DO2(n3368), .DO3(n3369));
    defparam mem8.initval = "0x0000000000000000";
    PDPW8KC mux_31 (.DI0(GND_net), .DI1(GND_net), .DI2(GND_net), .DI3(GND_net), 
            .DI4(GND_net), .DI5(GND_net), .DI6(GND_net), .DI7(GND_net), 
            .DI8(GND_net), .DI9(GND_net), .DI10(GND_net), .DI11(GND_net), 
            .DI12(GND_net), .DI13(GND_net), .DI14(GND_net), .DI15(GND_net), 
            .DI16(GND_net), .DI17(GND_net), .ADW0(GND_net), .ADW1(GND_net), 
            .ADW2(GND_net), .ADW3(GND_net), .ADW4(GND_net), .ADW5(GND_net), 
            .ADW6(GND_net), .ADW7(GND_net), .ADW8(GND_net), .BE0(GND_net), 
            .BE1(GND_net), .CEW(VCC_net), .CLKW(GND_net), .CSW0(GND_net), 
            .CSW1(GND_net), .CSW2(GND_net), .ADR0(GND_net), .ADR1(GND_net), 
            .ADR2(GND_net), .ADR3(GND_net), .ADR4(\pc_counter[0] ), .ADR5(\pc_counter[1] ), 
            .ADR6(\pc_counter[2] ), .ADR7(\pc_counter[3] ), .ADR8(\pc_counter[4] ), 
            .ADR9(\pc_counter[5] ), .ADR10(\pc_counter[6] ), .ADR11(\pc_counter[7] ), 
            .ADR12(GND_net), .CER(clk_osc_enable_12), .OCER(VCC_net), 
            .CLKR(clk_osc), .CSR0(GND_net), .CSR1(GND_net), .CSR2(GND_net), 
            .RST(GND_net), .DO0(\instruction[11] ), .DO1(\instruction[12] ), 
            .DO2(\instruction[13] ), .DO9(\instruction[0] ), .DO10(\instruction[1] ), 
            .DO11(\instruction[2] ), .DO12(\instruction[3] ), .DO13(\instruction[4] ), 
            .DO14(\instruction[5] ), .DO15(\instruction[6] ), .DO16(\instruction[7] ), 
            .DO17(\instruction[10] ));
    defparam mux_31.DATA_WIDTH_W = 18;
    defparam mux_31.DATA_WIDTH_R = 18;
    defparam mux_31.REGMODE = "NOREG";
    defparam mux_31.CSDECODE_W = "0b000";
    defparam mux_31.CSDECODE_R = "0b000";
    defparam mux_31.GSR = "DISABLED";
    defparam mux_31.RESETMODE = "ASYNC";
    defparam mux_31.ASYNC_RESET_RELEASE = "SYNC";
    defparam mux_31.INIT_DATA = "STATIC";
    defparam mux_31.INITVAL_00 = "0x0009300C800009200C400009100C200009000C100008F00C080008E00C040008D00C020008C00C01";
    defparam mux_31.INITVAL_01 = "0x0020E0020D0020C000000000000000000000020400C000008400C550000000000000000000000203";
    defparam mux_31.INITVAL_02 = "0x0000000000000000020C00A1E0020D0020E0020F002100021100212002130021200211002100020F";
    defparam mux_31.INITVAL_03 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_31.INITVAL_04 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_31.INITVAL_05 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_31.INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_31.INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_31.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_31.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_31.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_31.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_31.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_31.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_31.INITVAL_0E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_31.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_31.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_31.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_31.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_31.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_31.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_31.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_31.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_31.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_31.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_31.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_31.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_31.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_31.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_31.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_31.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_31.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    LUT4 i1158_3_lut (.A(n3442), .B(n3450), .C(\instruction[4] ), .Z(n4456)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i1158_3_lut.init = 16'hcaca;
    LUT4 i1156_3_lut (.A(n3423), .B(n3431), .C(\instruction[4] ), .Z(n4454)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i1156_3_lut.init = 16'hcaca;
    LUT4 i1157_3_lut (.A(n3404), .B(n3412), .C(\instruction[4] ), .Z(n4455)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i1157_3_lut.init = 16'hcaca;
    LUT4 i1121_3_lut (.A(n3428), .B(n3436), .C(\instruction[4] ), .Z(n4419)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i1121_3_lut.init = 16'hcaca;
    LUT4 i1120_3_lut (.A(n3371), .B(n3379), .C(\instruction[4] ), .Z(n4418)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i1120_3_lut.init = 16'hcaca;
    SPR16X4C mem2 (.DI0(w_out[4]), .DI1(w_out[5]), .DI2(w_out[6]), .DI3(w_out[7]), 
            .AD0(\instruction[0] ), .AD1(\instruction[1] ), .AD2(\instruction[2] ), 
            .AD3(\instruction[3] ), .CK(clk_cpu), .WRE(n3384), .DO0(n3378), 
            .DO1(n3379), .DO2(n3380), .DO3(n3381));
    defparam mem2.initval = "0x0000000000000000";
    SPR16X4C mem1 (.DI0(w_out[4]), .DI1(w_out[5]), .DI2(w_out[6]), .DI3(w_out[7]), 
            .AD0(\instruction[0] ), .AD1(\instruction[1] ), .AD2(\instruction[2] ), 
            .AD3(\instruction[3] ), .CK(clk_cpu), .WRE(n3440), .DO0(n3427), 
            .DO1(n3428), .DO2(n3429), .DO3(n3430));
    defparam mem1.initval = "0x0000000000000000";
    SPR16X4C mem6 (.DI0(w_out[4]), .DI1(w_out[5]), .DI2(w_out[6]), .DI3(w_out[7]), 
            .AD0(\instruction[0] ), .AD1(\instruction[1] ), .AD2(\instruction[2] ), 
            .AD3(\instruction[3] ), .CK(clk_cpu), .WRE(n3460), .DO0(n3454), 
            .DO1(n3455), .DO2(n3456), .DO3(n3457));
    defparam mem6.initval = "0x0000000000000000";
    SPR16X4C mem4 (.DI0(w_out[4]), .DI1(w_out[5]), .DI2(w_out[6]), .DI3(w_out[7]), 
            .AD0(\instruction[0] ), .AD1(\instruction[1] ), .AD2(\instruction[2] ), 
            .AD3(\instruction[3] ), .CK(clk_cpu), .WRE(n3422), .DO0(n3416), 
            .DO1(n3417), .DO2(n3418), .DO3(n3419));
    defparam mem4.initval = "0x0000000000000000";
    SPR16X4C mem7 (.DI0(w_out[4]), .DI1(w_out[5]), .DI2(w_out[6]), .DI3(w_out[7]), 
            .AD0(\instruction[0] ), .AD1(\instruction[1] ), .AD2(\instruction[2] ), 
            .AD3(\instruction[3] ), .CK(clk_cpu), .WRE(n3383), .DO0(n3370), 
            .DO1(n3371), .DO2(n3372), .DO3(n3373));
    defparam mem7.initval = "0x0000000000000000";
    SPR16X4C mem5 (.DI0(w_out[4]), .DI1(w_out[5]), .DI2(w_out[6]), .DI3(w_out[7]), 
            .AD0(\instruction[0] ), .AD1(\instruction[1] ), .AD2(\instruction[2] ), 
            .AD3(\instruction[3] ), .CK(clk_cpu), .WRE(n3441), .DO0(n3435), 
            .DO1(n3436), .DO2(n3437), .DO3(n3438));
    defparam mem5.initval = "0x0000000000000000";
    LUT4 i1122_3_lut (.A(n3409), .B(n3417), .C(\instruction[4] ), .Z(n4420)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i1122_3_lut.init = 16'hcaca;
    SPR16X4C mem3 (.DI0(w_out[4]), .DI1(w_out[5]), .DI2(w_out[6]), .DI3(w_out[7]), 
            .AD0(\instruction[0] ), .AD1(\instruction[1] ), .AD2(\instruction[2] ), 
            .AD3(\instruction[3] ), .CK(clk_cpu), .WRE(n3459), .DO0(n3446), 
            .DO1(n3447), .DO2(n3448), .DO3(n3449));
    defparam mem3.initval = "0x0000000000000000";
    LUT4 i1123_3_lut (.A(n3447), .B(n3455), .C(\instruction[4] ), .Z(n4421)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i1123_3_lut.init = 16'hcaca;
    LUT4 i1155_3_lut (.A(n3366), .B(n3374), .C(\instruction[4] ), .Z(n4453)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i1155_3_lut.init = 16'hcaca;
    LUT4 i1151_3_lut (.A(n3443), .B(n3451), .C(\instruction[4] ), .Z(n4449)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i1151_3_lut.init = 16'hcaca;
    LUT4 i1150_3_lut (.A(n3405), .B(n3413), .C(\instruction[4] ), .Z(n4448)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i1150_3_lut.init = 16'hcaca;
    LUT4 i1149_3_lut (.A(n3424), .B(n3432), .C(\instruction[4] ), .Z(n4447)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i1149_3_lut.init = 16'hcaca;
    SPR16X4C mem0 (.DI0(w_out[4]), .DI1(w_out[5]), .DI2(w_out[6]), .DI3(w_out[7]), 
            .AD0(\instruction[0] ), .AD1(\instruction[1] ), .AD2(\instruction[2] ), 
            .AD3(\instruction[3] ), .CK(clk_cpu), .WRE(n3421), .DO0(n3408), 
            .DO1(n3409), .DO2(n3410), .DO3(n3411));
    defparam mem0.initval = "0x0000000000000000";
    LUT4 i1148_3_lut (.A(n3367), .B(n3375), .C(\instruction[4] ), .Z(n4446)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i1148_3_lut.init = 16'hcaca;
    PFUMX i1117 (.BLUT(n4411), .ALUT(n4412), .C0(\instruction[5] ), .Z(n4415));
    PFUMX i1145 (.BLUT(n4439), .ALUT(n4440), .C0(\instruction[5] ), .Z(n4443));
    PFUMX i1118 (.BLUT(n4413), .ALUT(n4414), .C0(\instruction[5] ), .Z(n4416));
    SPR16X4C mem9 (.DI0(w_out[0]), .DI1(w_out[1]), .DI2(w_out[2]), .DI3(w_out[3]), 
            .AD0(\instruction[0] ), .AD1(\instruction[1] ), .AD2(\instruction[2] ), 
            .AD3(\instruction[3] ), .CK(clk_cpu), .WRE(n3421), .DO0(n3404), 
            .DO1(n3405), .DO2(n3406), .DO3(n3407));
    defparam mem9.initval = "0x0000000000000000";
    SPR16X4C mem10 (.DI0(w_out[0]), .DI1(w_out[1]), .DI2(w_out[2]), .DI3(w_out[3]), 
            .AD0(\instruction[0] ), .AD1(\instruction[1] ), .AD2(\instruction[2] ), 
            .AD3(\instruction[3] ), .CK(clk_cpu), .WRE(n3440), .DO0(n3423), 
            .DO1(n3424), .DO2(n3425), .DO3(n3426));
    defparam mem10.initval = "0x0000000000000000";
    SPR16X4C mem11 (.DI0(w_out[0]), .DI1(w_out[1]), .DI2(w_out[2]), .DI3(w_out[3]), 
            .AD0(\instruction[0] ), .AD1(\instruction[1] ), .AD2(\instruction[2] ), 
            .AD3(\instruction[3] ), .CK(clk_cpu), .WRE(n3384), .DO0(n3374), 
            .DO1(n3375), .DO2(n3376), .DO3(n3377));
    defparam mem11.initval = "0x0000000000000000";
    SPR16X4C mem12 (.DI0(w_out[0]), .DI1(w_out[1]), .DI2(w_out[2]), .DI3(w_out[3]), 
            .AD0(\instruction[0] ), .AD1(\instruction[1] ), .AD2(\instruction[2] ), 
            .AD3(\instruction[3] ), .CK(clk_cpu), .WRE(n3459), .DO0(n3442), 
            .DO1(n3443), .DO2(n3444), .DO3(n3445));
    defparam mem12.initval = "0x0000000000000000";
    SPR16X4C mem13 (.DI0(w_out[0]), .DI1(w_out[1]), .DI2(w_out[2]), .DI3(w_out[3]), 
            .AD0(\instruction[0] ), .AD1(\instruction[1] ), .AD2(\instruction[2] ), 
            .AD3(\instruction[3] ), .CK(clk_cpu), .WRE(n3422), .DO0(n3412), 
            .DO1(n3413), .DO2(n3414), .DO3(n3415));
    defparam mem13.initval = "0x0000000000000000";
    SPR16X4C mem14 (.DI0(w_out[0]), .DI1(w_out[1]), .DI2(w_out[2]), .DI3(w_out[3]), 
            .AD0(\instruction[0] ), .AD1(\instruction[1] ), .AD2(\instruction[2] ), 
            .AD3(\instruction[3] ), .CK(clk_cpu), .WRE(n3441), .DO0(n3431), 
            .DO1(n3432), .DO2(n3433), .DO3(n3434));
    defparam mem14.initval = "0x0000000000000000";
    SPR16X4C mem15 (.DI0(w_out[0]), .DI1(w_out[1]), .DI2(w_out[2]), .DI3(w_out[3]), 
            .AD0(\instruction[0] ), .AD1(\instruction[1] ), .AD2(\instruction[2] ), 
            .AD3(\instruction[3] ), .CK(clk_cpu), .WRE(n3460), .DO0(n3450), 
            .DO1(n3451), .DO2(n3452), .DO3(n3453));
    defparam mem15.initval = "0x0000000000000000";
    LUT4 i1144_3_lut (.A(n3444), .B(n3452), .C(\instruction[4] ), .Z(n4442)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i1144_3_lut.init = 16'hcaca;
    LUT4 i1143_3_lut (.A(n3406), .B(n3414), .C(\instruction[4] ), .Z(n4441)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i1143_3_lut.init = 16'hcaca;
    L6MUX21 i1147 (.D0(n4443), .D1(n4444), .SD(\instruction[6] ), .Z(data_out_7__N_95[2]));
    L6MUX21 i1154 (.D0(n4450), .D1(n4451), .SD(\instruction[6] ), .Z(data_out_7__N_95[1]));
    L6MUX21 i1161 (.D0(n4457), .D1(n4458), .SD(\instruction[6] ), .Z(data_out_7__N_95[0]));
    L6MUX21 i1126 (.D0(n4422), .D1(n4423), .SD(\instruction[6] ), .Z(data_out_7__N_95[5]));
    L6MUX21 i1133 (.D0(n4429), .D1(n4430), .SD(\instruction[6] ), .Z(data_out_7__N_95[4]));
    L6MUX21 i1112 (.D0(n4408), .D1(n4409), .SD(\instruction[6] ), .Z(data_out_7__N_95[7]));
    L6MUX21 i1140 (.D0(n4436), .D1(n4437), .SD(\instruction[6] ), .Z(data_out_7__N_95[3]));
    L6MUX21 i1119 (.D0(n4415), .D1(n4416), .SD(\instruction[6] ), .Z(data_out_7__N_95[6]));
    PFUMX i1146 (.BLUT(n4441), .ALUT(n4442), .C0(\instruction[5] ), .Z(n4444));
    LUT4 i1115_3_lut (.A(n3410), .B(n3418), .C(\instruction[4] ), .Z(n4413)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i1115_3_lut.init = 16'hcaca;
    LUT4 i1142_3_lut (.A(n3425), .B(n3433), .C(\instruction[4] ), .Z(n4440)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i1142_3_lut.init = 16'hcaca;
    LUT4 i1141_3_lut (.A(n3368), .B(n3376), .C(\instruction[4] ), .Z(n4439)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i1141_3_lut.init = 16'hcaca;
    LUT4 i1114_3_lut (.A(n3429), .B(n3437), .C(\instruction[4] ), .Z(n4412)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i1114_3_lut.init = 16'hcaca;
    LUT4 i1113_3_lut (.A(n3372), .B(n3380), .C(\instruction[4] ), .Z(n4411)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i1113_3_lut.init = 16'hcaca;
    PFUMX i1152 (.BLUT(n4446), .ALUT(n4447), .C0(\instruction[5] ), .Z(n4450));
    PFUMX i1153 (.BLUT(n4448), .ALUT(n4449), .C0(\instruction[5] ), .Z(n4451));
    PFUMX i1159 (.BLUT(n4453), .ALUT(n4454), .C0(\instruction[5] ), .Z(n4457));
    LUT4 i1116_3_lut (.A(n3448), .B(n3456), .C(\instruction[4] ), .Z(n4414)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i1116_3_lut.init = 16'hcaca;
    PFUMX i1124 (.BLUT(n4418), .ALUT(n4419), .C0(\instruction[5] ), .Z(n4422));
    PFUMX i1125 (.BLUT(n4420), .ALUT(n4421), .C0(\instruction[5] ), .Z(n4423));
    PFUMX i1160 (.BLUT(n4455), .ALUT(n4456), .C0(\instruction[5] ), .Z(n4458));
    PFUMX i1131 (.BLUT(n4425), .ALUT(n4426), .C0(\instruction[5] ), .Z(n4429));
    PFUMX i1132 (.BLUT(n4427), .ALUT(n4428), .C0(\instruction[5] ), .Z(n4430));
    PFUMX i1110 (.BLUT(n4404), .ALUT(n4405), .C0(\instruction[5] ), .Z(n4408));
    PFUMX i1111 (.BLUT(n4406), .ALUT(n4407), .C0(\instruction[5] ), .Z(n4409));
    PFUMX i1138 (.BLUT(n4432), .ALUT(n4433), .C0(\instruction[5] ), .Z(n4436));
    PFUMX i1139 (.BLUT(n4434), .ALUT(n4435), .C0(\instruction[5] ), .Z(n4437));
    LUT4 i1137_3_lut (.A(n3445), .B(n3453), .C(\instruction[4] ), .Z(n4435)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i1137_3_lut.init = 16'hcaca;
    LUT4 i1136_3_lut (.A(n3407), .B(n3415), .C(\instruction[4] ), .Z(n4434)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i1136_3_lut.init = 16'hcaca;
    LUT4 i1135_3_lut (.A(n3426), .B(n3434), .C(\instruction[4] ), .Z(n4433)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i1135_3_lut.init = 16'hcaca;
    LUT4 i1134_3_lut (.A(n3369), .B(n3377), .C(\instruction[4] ), .Z(n4432)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i1134_3_lut.init = 16'hcaca;
    LUT4 i1109_3_lut (.A(n3449), .B(n3457), .C(\instruction[4] ), .Z(n4407)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i1109_3_lut.init = 16'hcaca;
    LUT4 i1108_3_lut (.A(n3411), .B(n3419), .C(\instruction[4] ), .Z(n4406)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i1108_3_lut.init = 16'hcaca;
    LUT4 i1107_3_lut (.A(n3430), .B(n3438), .C(\instruction[4] ), .Z(n4405)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i1107_3_lut.init = 16'hcaca;
    LUT4 i1106_3_lut (.A(n3373), .B(n3381), .C(\instruction[4] ), .Z(n4404)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i1106_3_lut.init = 16'hcaca;
    LUT4 i1130_3_lut (.A(n3446), .B(n3454), .C(\instruction[4] ), .Z(n4428)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i1130_3_lut.init = 16'hcaca;
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module mux
//

module mux (\instruction[6] , \wire_main_bus[6] , n4634, \wire_alu_b[6] , 
            \instruction[5] , \wire_main_bus[5] , \wire_alu_b[5] , \instruction[4] , 
            \wire_main_bus[4] , \wire_alu_b[4] , \instruction[3] , \wire_main_bus[3] , 
            \wire_alu_b[3] , \instruction[2] , \wire_main_bus[2] , \wire_alu_b[2] , 
            \instruction[1] , \wire_main_bus[1] , \wire_alu_b[1] , \instruction[0] , 
            \wire_main_bus[0] , \wire_alu_b[0] ) /* synthesis syn_module_defined=1 */ ;
    input \instruction[6] ;
    input \wire_main_bus[6] ;
    input n4634;
    output \wire_alu_b[6] ;
    input \instruction[5] ;
    input \wire_main_bus[5] ;
    output \wire_alu_b[5] ;
    input \instruction[4] ;
    input \wire_main_bus[4] ;
    output \wire_alu_b[4] ;
    input \instruction[3] ;
    input \wire_main_bus[3] ;
    output \wire_alu_b[3] ;
    input \instruction[2] ;
    input \wire_main_bus[2] ;
    output \wire_alu_b[2] ;
    input \instruction[1] ;
    input \wire_main_bus[1] ;
    output \wire_alu_b[1] ;
    input \instruction[0] ;
    input \wire_main_bus[0] ;
    output \wire_alu_b[0] ;
    
    
    LUT4 b_7__I_0_i7_3_lut (.A(\instruction[6] ), .B(\wire_main_bus[6] ), 
         .C(n4634), .Z(\wire_alu_b[6] )) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;   // d:/adelsoft/lattice/projects/bit_processor/mux.v(14[13:19])
    defparam b_7__I_0_i7_3_lut.init = 16'hacac;
    LUT4 b_7__I_0_i6_3_lut (.A(\instruction[5] ), .B(\wire_main_bus[5] ), 
         .C(n4634), .Z(\wire_alu_b[5] )) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;   // d:/adelsoft/lattice/projects/bit_processor/mux.v(14[13:19])
    defparam b_7__I_0_i6_3_lut.init = 16'hacac;
    LUT4 b_7__I_0_i5_3_lut (.A(\instruction[4] ), .B(\wire_main_bus[4] ), 
         .C(n4634), .Z(\wire_alu_b[4] )) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;   // d:/adelsoft/lattice/projects/bit_processor/mux.v(14[13:19])
    defparam b_7__I_0_i5_3_lut.init = 16'hacac;
    LUT4 b_7__I_0_i4_3_lut (.A(\instruction[3] ), .B(\wire_main_bus[3] ), 
         .C(n4634), .Z(\wire_alu_b[3] )) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;   // d:/adelsoft/lattice/projects/bit_processor/mux.v(14[13:19])
    defparam b_7__I_0_i4_3_lut.init = 16'hacac;
    LUT4 b_7__I_0_i3_3_lut (.A(\instruction[2] ), .B(\wire_main_bus[2] ), 
         .C(n4634), .Z(\wire_alu_b[2] )) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;   // d:/adelsoft/lattice/projects/bit_processor/mux.v(14[13:19])
    defparam b_7__I_0_i3_3_lut.init = 16'hacac;
    LUT4 b_7__I_0_i2_3_lut (.A(\instruction[1] ), .B(\wire_main_bus[1] ), 
         .C(n4634), .Z(\wire_alu_b[1] )) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;   // d:/adelsoft/lattice/projects/bit_processor/mux.v(14[13:19])
    defparam b_7__I_0_i2_3_lut.init = 16'hacac;
    LUT4 b_7__I_0_i1_3_lut (.A(\instruction[0] ), .B(\wire_main_bus[0] ), 
         .C(n4634), .Z(\wire_alu_b[0] )) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;   // d:/adelsoft/lattice/projects/bit_processor/mux.v(14[13:19])
    defparam b_7__I_0_i1_3_lut.init = 16'hacac;
    
endmodule
//
// Verilog Description of module w_U0
//

module w_U0 (fsr_to_mux, clk_osc, clk_osc_enable_19, w_out) /* synthesis syn_module_defined=1 */ ;
    output [7:0]fsr_to_mux;
    input clk_osc;
    input clk_osc_enable_19;
    input [7:0]w_out;
    
    wire clk_osc /* synthesis SET_AS_NETWORK=clk_osc, is_clock=1 */ ;   // d:/adelsoft/lattice/projects/bit_processor/top.v(22[29:36])
    
    FD1P3AX w_out_i0_i0 (.D(w_out[0]), .SP(clk_osc_enable_19), .CK(clk_osc), 
            .Q(fsr_to_mux[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=6, LSE_LLINE=105, LSE_RLINE=110 */ ;   // d:/adelsoft/lattice/projects/bit_processor/w.v(12[12] 15[8])
    defparam w_out_i0_i0.GSR = "ENABLED";
    FD1P3AX w_out_i0_i7 (.D(w_out[7]), .SP(clk_osc_enable_19), .CK(clk_osc), 
            .Q(fsr_to_mux[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=6, LSE_LLINE=105, LSE_RLINE=110 */ ;   // d:/adelsoft/lattice/projects/bit_processor/w.v(12[12] 15[8])
    defparam w_out_i0_i7.GSR = "ENABLED";
    FD1P3AX w_out_i0_i6 (.D(w_out[6]), .SP(clk_osc_enable_19), .CK(clk_osc), 
            .Q(fsr_to_mux[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=6, LSE_LLINE=105, LSE_RLINE=110 */ ;   // d:/adelsoft/lattice/projects/bit_processor/w.v(12[12] 15[8])
    defparam w_out_i0_i6.GSR = "ENABLED";
    FD1P3AX w_out_i0_i5 (.D(w_out[5]), .SP(clk_osc_enable_19), .CK(clk_osc), 
            .Q(fsr_to_mux[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=6, LSE_LLINE=105, LSE_RLINE=110 */ ;   // d:/adelsoft/lattice/projects/bit_processor/w.v(12[12] 15[8])
    defparam w_out_i0_i5.GSR = "ENABLED";
    FD1P3AX w_out_i0_i4 (.D(w_out[4]), .SP(clk_osc_enable_19), .CK(clk_osc), 
            .Q(fsr_to_mux[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=6, LSE_LLINE=105, LSE_RLINE=110 */ ;   // d:/adelsoft/lattice/projects/bit_processor/w.v(12[12] 15[8])
    defparam w_out_i0_i4.GSR = "ENABLED";
    FD1P3AX w_out_i0_i3 (.D(w_out[3]), .SP(clk_osc_enable_19), .CK(clk_osc), 
            .Q(fsr_to_mux[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=6, LSE_LLINE=105, LSE_RLINE=110 */ ;   // d:/adelsoft/lattice/projects/bit_processor/w.v(12[12] 15[8])
    defparam w_out_i0_i3.GSR = "ENABLED";
    FD1P3AX w_out_i0_i2 (.D(w_out[2]), .SP(clk_osc_enable_19), .CK(clk_osc), 
            .Q(fsr_to_mux[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=6, LSE_LLINE=105, LSE_RLINE=110 */ ;   // d:/adelsoft/lattice/projects/bit_processor/w.v(12[12] 15[8])
    defparam w_out_i0_i2.GSR = "ENABLED";
    FD1P3AX w_out_i0_i1 (.D(w_out[1]), .SP(clk_osc_enable_19), .CK(clk_osc), 
            .Q(fsr_to_mux[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=6, LSE_LLINE=105, LSE_RLINE=110 */ ;   // d:/adelsoft/lattice/projects/bit_processor/w.v(12[12] 15[8])
    defparam w_out_i0_i1.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module bus_mux
//

module bus_mux (n2, \wire_read_bus[1] , wire_main_bus, n2_adj_1, n2_adj_2, 
            n2_adj_3, n2_adj_4, n2_adj_5, \instruction[2] , n4631, 
            \instruction[6] , n4361, n2_adj_6, n2_adj_7, data_out_7__N_95) /* synthesis syn_module_defined=1 */ ;
    input n2;
    input \wire_read_bus[1] ;
    output [7:0]wire_main_bus;
    input n2_adj_1;
    input n2_adj_2;
    input n2_adj_3;
    input n2_adj_4;
    input n2_adj_5;
    input \instruction[2] ;
    input n4631;
    input \instruction[6] ;
    input n4361;
    input n2_adj_6;
    input n2_adj_7;
    input [7:0]data_out_7__N_95;
    
    
    wire n1, n1_adj_137, n1_adj_139, n1_adj_141, n1_adj_143, n1_adj_145, 
        n3482, n1_adj_147, n1_adj_149;
    
    PFUMX sel_1__I_0_Mux_4_i3 (.BLUT(n1), .ALUT(n2), .C0(\wire_read_bus[1] ), 
          .Z(wire_main_bus[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=35, LSE_RCOL=6, LSE_LLINE=121, LSE_RLINE=128 */ ;
    PFUMX sel_1__I_0_Mux_5_i3 (.BLUT(n1_adj_137), .ALUT(n2_adj_1), .C0(\wire_read_bus[1] ), 
          .Z(wire_main_bus[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=35, LSE_RCOL=6, LSE_LLINE=121, LSE_RLINE=128 */ ;
    PFUMX sel_1__I_0_Mux_3_i3 (.BLUT(n1_adj_139), .ALUT(n2_adj_2), .C0(\wire_read_bus[1] ), 
          .Z(wire_main_bus[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=35, LSE_RCOL=6, LSE_LLINE=121, LSE_RLINE=128 */ ;
    PFUMX sel_1__I_0_Mux_0_i3 (.BLUT(n1_adj_141), .ALUT(n2_adj_3), .C0(\wire_read_bus[1] ), 
          .Z(wire_main_bus[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=35, LSE_RCOL=6, LSE_LLINE=121, LSE_RLINE=128 */ ;
    PFUMX sel_1__I_0_Mux_2_i3 (.BLUT(n1_adj_143), .ALUT(n2_adj_4), .C0(\wire_read_bus[1] ), 
          .Z(wire_main_bus[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=35, LSE_RCOL=6, LSE_LLINE=121, LSE_RLINE=128 */ ;
    PFUMX sel_1__I_0_Mux_7_i3 (.BLUT(n1_adj_145), .ALUT(n2_adj_5), .C0(\wire_read_bus[1] ), 
          .Z(wire_main_bus[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=35, LSE_RCOL=6, LSE_LLINE=121, LSE_RLINE=128 */ ;
    LUT4 i1213_4_lut (.A(\instruction[2] ), .B(n4631), .C(\instruction[6] ), 
         .D(n4361), .Z(n3482)) /* synthesis lut_function=(!(A (B+(C))+!A (B+(C (D))))) */ ;
    defparam i1213_4_lut.init = 16'h0313;
    PFUMX sel_1__I_0_Mux_6_i3 (.BLUT(n1_adj_147), .ALUT(n2_adj_6), .C0(\wire_read_bus[1] ), 
          .Z(wire_main_bus[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=35, LSE_RCOL=6, LSE_LLINE=121, LSE_RLINE=128 */ ;
    PFUMX sel_1__I_0_Mux_1_i3 (.BLUT(n1_adj_149), .ALUT(n2_adj_7), .C0(\wire_read_bus[1] ), 
          .Z(wire_main_bus[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=35, LSE_RCOL=6, LSE_LLINE=121, LSE_RLINE=128 */ ;
    LUT4 i576_2_lut (.A(data_out_7__N_95[1]), .B(n3482), .Z(n1_adj_149)) /* synthesis lut_function=(A (B)) */ ;   // d:/adelsoft/lattice/projects/bit_processor/bus_mux.v(15[9] 21[16])
    defparam i576_2_lut.init = 16'h8888;
    LUT4 i575_2_lut (.A(data_out_7__N_95[6]), .B(n3482), .Z(n1_adj_147)) /* synthesis lut_function=(A (B)) */ ;   // d:/adelsoft/lattice/projects/bit_processor/bus_mux.v(15[9] 21[16])
    defparam i575_2_lut.init = 16'h8888;
    LUT4 i574_2_lut (.A(data_out_7__N_95[7]), .B(n3482), .Z(n1_adj_145)) /* synthesis lut_function=(A (B)) */ ;   // d:/adelsoft/lattice/projects/bit_processor/bus_mux.v(15[9] 21[16])
    defparam i574_2_lut.init = 16'h8888;
    LUT4 i573_2_lut (.A(data_out_7__N_95[2]), .B(n3482), .Z(n1_adj_143)) /* synthesis lut_function=(A (B)) */ ;   // d:/adelsoft/lattice/projects/bit_processor/bus_mux.v(15[9] 21[16])
    defparam i573_2_lut.init = 16'h8888;
    LUT4 i572_2_lut (.A(data_out_7__N_95[0]), .B(n3482), .Z(n1_adj_141)) /* synthesis lut_function=(A (B)) */ ;   // d:/adelsoft/lattice/projects/bit_processor/bus_mux.v(15[9] 21[16])
    defparam i572_2_lut.init = 16'h8888;
    LUT4 i571_2_lut (.A(data_out_7__N_95[3]), .B(n3482), .Z(n1_adj_139)) /* synthesis lut_function=(A (B)) */ ;   // d:/adelsoft/lattice/projects/bit_processor/bus_mux.v(15[9] 21[16])
    defparam i571_2_lut.init = 16'h8888;
    LUT4 i570_2_lut (.A(data_out_7__N_95[5]), .B(n3482), .Z(n1_adj_137)) /* synthesis lut_function=(A (B)) */ ;   // d:/adelsoft/lattice/projects/bit_processor/bus_mux.v(15[9] 21[16])
    defparam i570_2_lut.init = 16'h8888;
    LUT4 i577_2_lut (.A(data_out_7__N_95[4]), .B(n3482), .Z(n1)) /* synthesis lut_function=(A (B)) */ ;   // d:/adelsoft/lattice/projects/bit_processor/bus_mux.v(15[9] 21[16])
    defparam i577_2_lut.init = 16'h8888;
    
endmodule
//
// Verilog Description of module \clk_div(DIV=1209000) 
//

module \clk_div(DIV=1209000)  (n3558, clk_osc, clk_cpu, GND_net) /* synthesis syn_module_defined=1 */ ;
    output n3558;
    input clk_osc;
    output clk_cpu;
    input GND_net;
    
    wire clk_osc /* synthesis SET_AS_NETWORK=clk_osc, is_clock=1 */ ;   // d:/adelsoft/lattice/projects/bit_processor/top.v(22[29:36])
    
    wire n4400;
    wire [20:0]cnt;   // d:/adelsoft/lattice/projects/bit_processor/clk.v(10[27:30])
    
    wire n4402, n12;
    wire [20:0]n89;
    
    wire clk_out_N_46, n4240, n4241, n4239, n4245, n4244, n4243, 
        n4238, n4237, n4236, n19, n17, n18, n4242;
    
    LUT4 i1210_4_lut (.A(n4400), .B(cnt[11]), .C(n4402), .D(n12), .Z(n3558)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // d:/adelsoft/lattice/projects/bit_processor/clk.v(19[13:29])
    defparam i1210_4_lut.init = 16'h0080;
    FD1S3IX cnt_69__i0 (.D(n89[0]), .CK(clk_osc), .CD(n3558), .Q(cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/adelsoft/lattice/projects/bit_processor/clk.v(23[24:31])
    defparam cnt_69__i0.GSR = "ENABLED";
    FD1S3AX clk_out_12 (.D(clk_out_N_46), .CK(clk_osc), .Q(clk_cpu)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=30, LSE_RCOL=6, LSE_LLINE=72, LSE_RLINE=75 */ ;   // d:/adelsoft/lattice/projects/bit_processor/clk.v(18[12] 25[8])
    defparam clk_out_12.GSR = "ENABLED";
    LUT4 i1_2_lut (.A(clk_cpu), .B(n3558), .Z(clk_out_N_46)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_2_lut.init = 16'h6666;
    CCU2D cnt_69_add_4_11 (.A0(cnt[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n4240), 
          .COUT(n4241), .S0(n89[9]), .S1(n89[10]));   // d:/adelsoft/lattice/projects/bit_processor/clk.v(23[24:31])
    defparam cnt_69_add_4_11.INIT0 = 16'hfaaa;
    defparam cnt_69_add_4_11.INIT1 = 16'hfaaa;
    defparam cnt_69_add_4_11.INJECT1_0 = "NO";
    defparam cnt_69_add_4_11.INJECT1_1 = "NO";
    CCU2D cnt_69_add_4_9 (.A0(cnt[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n4239), 
          .COUT(n4240), .S0(n89[7]), .S1(n89[8]));   // d:/adelsoft/lattice/projects/bit_processor/clk.v(23[24:31])
    defparam cnt_69_add_4_9.INIT0 = 16'hfaaa;
    defparam cnt_69_add_4_9.INIT1 = 16'hfaaa;
    defparam cnt_69_add_4_9.INJECT1_0 = "NO";
    defparam cnt_69_add_4_9.INJECT1_1 = "NO";
    CCU2D cnt_69_add_4_21 (.A0(cnt[19]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[20]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n4245), 
          .S0(n89[19]), .S1(n89[20]));   // d:/adelsoft/lattice/projects/bit_processor/clk.v(23[24:31])
    defparam cnt_69_add_4_21.INIT0 = 16'hfaaa;
    defparam cnt_69_add_4_21.INIT1 = 16'hfaaa;
    defparam cnt_69_add_4_21.INJECT1_0 = "NO";
    defparam cnt_69_add_4_21.INJECT1_1 = "NO";
    CCU2D cnt_69_add_4_19 (.A0(cnt[17]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[18]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n4244), 
          .COUT(n4245), .S0(n89[17]), .S1(n89[18]));   // d:/adelsoft/lattice/projects/bit_processor/clk.v(23[24:31])
    defparam cnt_69_add_4_19.INIT0 = 16'hfaaa;
    defparam cnt_69_add_4_19.INIT1 = 16'hfaaa;
    defparam cnt_69_add_4_19.INJECT1_0 = "NO";
    defparam cnt_69_add_4_19.INJECT1_1 = "NO";
    CCU2D cnt_69_add_4_17 (.A0(cnt[15]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n4243), 
          .COUT(n4244), .S0(n89[15]), .S1(n89[16]));   // d:/adelsoft/lattice/projects/bit_processor/clk.v(23[24:31])
    defparam cnt_69_add_4_17.INIT0 = 16'hfaaa;
    defparam cnt_69_add_4_17.INIT1 = 16'hfaaa;
    defparam cnt_69_add_4_17.INJECT1_0 = "NO";
    defparam cnt_69_add_4_17.INJECT1_1 = "NO";
    CCU2D cnt_69_add_4_7 (.A0(cnt[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n4238), 
          .COUT(n4239), .S0(n89[5]), .S1(n89[6]));   // d:/adelsoft/lattice/projects/bit_processor/clk.v(23[24:31])
    defparam cnt_69_add_4_7.INIT0 = 16'hfaaa;
    defparam cnt_69_add_4_7.INIT1 = 16'hfaaa;
    defparam cnt_69_add_4_7.INJECT1_0 = "NO";
    defparam cnt_69_add_4_7.INJECT1_1 = "NO";
    CCU2D cnt_69_add_4_5 (.A0(cnt[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n4237), 
          .COUT(n4238), .S0(n89[3]), .S1(n89[4]));   // d:/adelsoft/lattice/projects/bit_processor/clk.v(23[24:31])
    defparam cnt_69_add_4_5.INIT0 = 16'hfaaa;
    defparam cnt_69_add_4_5.INIT1 = 16'hfaaa;
    defparam cnt_69_add_4_5.INJECT1_0 = "NO";
    defparam cnt_69_add_4_5.INJECT1_1 = "NO";
    LUT4 i1102_4_lut (.A(cnt[19]), .B(cnt[12]), .C(cnt[8]), .D(cnt[1]), 
         .Z(n4400)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1102_4_lut.init = 16'h8000;
    FD1S3IX cnt_69__i1 (.D(n89[1]), .CK(clk_osc), .CD(n3558), .Q(cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/adelsoft/lattice/projects/bit_processor/clk.v(23[24:31])
    defparam cnt_69__i1.GSR = "ENABLED";
    CCU2D cnt_69_add_4_3 (.A0(cnt[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n4236), 
          .COUT(n4237), .S0(n89[1]), .S1(n89[2]));   // d:/adelsoft/lattice/projects/bit_processor/clk.v(23[24:31])
    defparam cnt_69_add_4_3.INIT0 = 16'hfaaa;
    defparam cnt_69_add_4_3.INIT1 = 16'hfaaa;
    defparam cnt_69_add_4_3.INJECT1_0 = "NO";
    defparam cnt_69_add_4_3.INJECT1_1 = "NO";
    FD1S3IX cnt_69__i2 (.D(n89[2]), .CK(clk_osc), .CD(n3558), .Q(cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/adelsoft/lattice/projects/bit_processor/clk.v(23[24:31])
    defparam cnt_69__i2.GSR = "ENABLED";
    FD1S3IX cnt_69__i3 (.D(n89[3]), .CK(clk_osc), .CD(n3558), .Q(cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/adelsoft/lattice/projects/bit_processor/clk.v(23[24:31])
    defparam cnt_69__i3.GSR = "ENABLED";
    FD1S3IX cnt_69__i4 (.D(n89[4]), .CK(clk_osc), .CD(n3558), .Q(cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/adelsoft/lattice/projects/bit_processor/clk.v(23[24:31])
    defparam cnt_69__i4.GSR = "ENABLED";
    FD1S3IX cnt_69__i5 (.D(n89[5]), .CK(clk_osc), .CD(n3558), .Q(cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/adelsoft/lattice/projects/bit_processor/clk.v(23[24:31])
    defparam cnt_69__i5.GSR = "ENABLED";
    FD1S3IX cnt_69__i6 (.D(n89[6]), .CK(clk_osc), .CD(n3558), .Q(cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/adelsoft/lattice/projects/bit_processor/clk.v(23[24:31])
    defparam cnt_69__i6.GSR = "ENABLED";
    FD1S3IX cnt_69__i7 (.D(n89[7]), .CK(clk_osc), .CD(n3558), .Q(cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/adelsoft/lattice/projects/bit_processor/clk.v(23[24:31])
    defparam cnt_69__i7.GSR = "ENABLED";
    FD1S3IX cnt_69__i8 (.D(n89[8]), .CK(clk_osc), .CD(n3558), .Q(cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/adelsoft/lattice/projects/bit_processor/clk.v(23[24:31])
    defparam cnt_69__i8.GSR = "ENABLED";
    FD1S3IX cnt_69__i9 (.D(n89[9]), .CK(clk_osc), .CD(n3558), .Q(cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/adelsoft/lattice/projects/bit_processor/clk.v(23[24:31])
    defparam cnt_69__i9.GSR = "ENABLED";
    FD1S3IX cnt_69__i10 (.D(n89[10]), .CK(clk_osc), .CD(n3558), .Q(cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/adelsoft/lattice/projects/bit_processor/clk.v(23[24:31])
    defparam cnt_69__i10.GSR = "ENABLED";
    FD1S3IX cnt_69__i11 (.D(n89[11]), .CK(clk_osc), .CD(n3558), .Q(cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/adelsoft/lattice/projects/bit_processor/clk.v(23[24:31])
    defparam cnt_69__i11.GSR = "ENABLED";
    FD1S3IX cnt_69__i12 (.D(n89[12]), .CK(clk_osc), .CD(n3558), .Q(cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/adelsoft/lattice/projects/bit_processor/clk.v(23[24:31])
    defparam cnt_69__i12.GSR = "ENABLED";
    FD1S3IX cnt_69__i13 (.D(n89[13]), .CK(clk_osc), .CD(n3558), .Q(cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/adelsoft/lattice/projects/bit_processor/clk.v(23[24:31])
    defparam cnt_69__i13.GSR = "ENABLED";
    FD1S3IX cnt_69__i14 (.D(n89[14]), .CK(clk_osc), .CD(n3558), .Q(cnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/adelsoft/lattice/projects/bit_processor/clk.v(23[24:31])
    defparam cnt_69__i14.GSR = "ENABLED";
    FD1S3IX cnt_69__i15 (.D(n89[15]), .CK(clk_osc), .CD(n3558), .Q(cnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/adelsoft/lattice/projects/bit_processor/clk.v(23[24:31])
    defparam cnt_69__i15.GSR = "ENABLED";
    FD1S3IX cnt_69__i16 (.D(n89[16]), .CK(clk_osc), .CD(n3558), .Q(cnt[16])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/adelsoft/lattice/projects/bit_processor/clk.v(23[24:31])
    defparam cnt_69__i16.GSR = "ENABLED";
    FD1S3IX cnt_69__i17 (.D(n89[17]), .CK(clk_osc), .CD(n3558), .Q(cnt[17])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/adelsoft/lattice/projects/bit_processor/clk.v(23[24:31])
    defparam cnt_69__i17.GSR = "ENABLED";
    FD1S3IX cnt_69__i18 (.D(n89[18]), .CK(clk_osc), .CD(n3558), .Q(cnt[18])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/adelsoft/lattice/projects/bit_processor/clk.v(23[24:31])
    defparam cnt_69__i18.GSR = "ENABLED";
    FD1S3IX cnt_69__i19 (.D(n89[19]), .CK(clk_osc), .CD(n3558), .Q(cnt[19])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/adelsoft/lattice/projects/bit_processor/clk.v(23[24:31])
    defparam cnt_69__i19.GSR = "ENABLED";
    FD1S3IX cnt_69__i20 (.D(n89[20]), .CK(clk_osc), .CD(n3558), .Q(cnt[20])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/adelsoft/lattice/projects/bit_processor/clk.v(23[24:31])
    defparam cnt_69__i20.GSR = "ENABLED";
    CCU2D cnt_69_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n4236), 
          .S1(n89[0]));   // d:/adelsoft/lattice/projects/bit_processor/clk.v(23[24:31])
    defparam cnt_69_add_4_1.INIT0 = 16'hF000;
    defparam cnt_69_add_4_1.INIT1 = 16'h0555;
    defparam cnt_69_add_4_1.INJECT1_0 = "NO";
    defparam cnt_69_add_4_1.INJECT1_1 = "NO";
    LUT4 i1104_4_lut (.A(cnt[4]), .B(cnt[16]), .C(cnt[13]), .D(cnt[0]), 
         .Z(n4402)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1104_4_lut.init = 16'h8000;
    LUT4 i1_4_lut (.A(n19), .B(cnt[6]), .C(n17), .D(n18), .Z(n12)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;
    defparam i1_4_lut.init = 16'hfffb;
    LUT4 i8_4_lut (.A(cnt[5]), .B(cnt[3]), .C(cnt[18]), .D(cnt[15]), 
         .Z(n19)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/adelsoft/lattice/projects/bit_processor/clk.v(19[13:29])
    defparam i8_4_lut.init = 16'hfffe;
    LUT4 i6_3_lut (.A(cnt[17]), .B(cnt[14]), .C(cnt[10]), .Z(n17)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/adelsoft/lattice/projects/bit_processor/clk.v(19[13:29])
    defparam i6_3_lut.init = 16'hfefe;
    CCU2D cnt_69_add_4_15 (.A0(cnt[13]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n4242), 
          .COUT(n4243), .S0(n89[13]), .S1(n89[14]));   // d:/adelsoft/lattice/projects/bit_processor/clk.v(23[24:31])
    defparam cnt_69_add_4_15.INIT0 = 16'hfaaa;
    defparam cnt_69_add_4_15.INIT1 = 16'hfaaa;
    defparam cnt_69_add_4_15.INJECT1_0 = "NO";
    defparam cnt_69_add_4_15.INJECT1_1 = "NO";
    CCU2D cnt_69_add_4_13 (.A0(cnt[11]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n4241), 
          .COUT(n4242), .S0(n89[11]), .S1(n89[12]));   // d:/adelsoft/lattice/projects/bit_processor/clk.v(23[24:31])
    defparam cnt_69_add_4_13.INIT0 = 16'hfaaa;
    defparam cnt_69_add_4_13.INIT1 = 16'hfaaa;
    defparam cnt_69_add_4_13.INJECT1_0 = "NO";
    defparam cnt_69_add_4_13.INJECT1_1 = "NO";
    LUT4 i7_4_lut (.A(cnt[20]), .B(cnt[7]), .C(cnt[9]), .D(cnt[2]), 
         .Z(n18)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/adelsoft/lattice/projects/bit_processor/clk.v(19[13:29])
    defparam i7_4_lut.init = 16'hfffe;
    
endmodule
//
// Verilog Description of module pc
//

module pc (\pc_counter[7] , GND_net, \pc_counter[0] , clk_osc, clk_osc_enable_12, 
           n3324, \instruction[0] , n5, \instruction[10] , \instruction[7] , 
           \instruction[6] , \instruction[5] , \instruction[4] , \instruction[3] , 
           \pc_counter[6] , \instruction[2] , \pc_counter[5] , \pc_counter[4] , 
           \pc_counter[3] , \pc_counter[2] , \pc_counter[1] , \instruction[1] ) /* synthesis syn_module_defined=1 */ ;
    output \pc_counter[7] ;
    input GND_net;
    output \pc_counter[0] ;
    input clk_osc;
    input clk_osc_enable_12;
    input n3324;
    input \instruction[0] ;
    input n5;
    input \instruction[10] ;
    input \instruction[7] ;
    input \instruction[6] ;
    input \instruction[5] ;
    input \instruction[4] ;
    input \instruction[3] ;
    output \pc_counter[6] ;
    input \instruction[2] ;
    output \pc_counter[5] ;
    output \pc_counter[4] ;
    output \pc_counter[3] ;
    output \pc_counter[2] ;
    output \pc_counter[1] ;
    input \instruction[1] ;
    
    wire clk_osc /* synthesis SET_AS_NETWORK=clk_osc, is_clock=1 */ ;   // d:/adelsoft/lattice/projects/bit_processor/top.v(22[29:36])
    
    wire n4232;
    wire [12:0]counter;   // d:/adelsoft/lattice/projects/bit_processor/pc.v(11[31:38])
    wire [12:0]n94;
    wire [12:0]counter_12__N_60;
    
    wire n4231, n4230, n4229;
    
    CCU2D add_10_9 (.A0(\pc_counter[7] ), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n4232), .S0(n94[7]), .S1(n94[8]));   // d:/adelsoft/lattice/projects/bit_processor/pc.v(21[16:27])
    defparam add_10_9.INIT0 = 16'h5aaa;
    defparam add_10_9.INIT1 = 16'h5aaa;
    defparam add_10_9.INJECT1_0 = "NO";
    defparam add_10_9.INJECT1_1 = "NO";
    FD1P3IX counter__i0 (.D(counter_12__N_60[0]), .SP(clk_osc_enable_12), 
            .CD(n3324), .CK(clk_osc), .Q(\pc_counter[0] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=49, LSE_RCOL=6, LSE_LLINE=80, LSE_RLINE=86 */ ;   // d:/adelsoft/lattice/projects/bit_processor/pc.v(14[12] 24[8])
    defparam counter__i0.GSR = "ENABLED";
    LUT4 mux_4_i1_3_lut (.A(\instruction[0] ), .B(n94[0]), .C(n5), .Z(counter_12__N_60[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/adelsoft/lattice/projects/bit_processor/pc.v(20[13] 22[7])
    defparam mux_4_i1_3_lut.init = 16'hcaca;
    LUT4 mux_4_i9_3_lut (.A(\instruction[10] ), .B(n94[8]), .C(n5), .Z(counter_12__N_60[8])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/adelsoft/lattice/projects/bit_processor/pc.v(20[13] 22[7])
    defparam mux_4_i9_3_lut.init = 16'hcaca;
    LUT4 mux_4_i8_3_lut (.A(\instruction[7] ), .B(n94[7]), .C(n5), .Z(counter_12__N_60[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/adelsoft/lattice/projects/bit_processor/pc.v(20[13] 22[7])
    defparam mux_4_i8_3_lut.init = 16'hcaca;
    LUT4 mux_4_i7_3_lut (.A(\instruction[6] ), .B(n94[6]), .C(n5), .Z(counter_12__N_60[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/adelsoft/lattice/projects/bit_processor/pc.v(20[13] 22[7])
    defparam mux_4_i7_3_lut.init = 16'hcaca;
    LUT4 mux_4_i6_3_lut (.A(\instruction[5] ), .B(n94[5]), .C(n5), .Z(counter_12__N_60[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/adelsoft/lattice/projects/bit_processor/pc.v(20[13] 22[7])
    defparam mux_4_i6_3_lut.init = 16'hcaca;
    LUT4 mux_4_i5_3_lut (.A(\instruction[4] ), .B(n94[4]), .C(n5), .Z(counter_12__N_60[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/adelsoft/lattice/projects/bit_processor/pc.v(20[13] 22[7])
    defparam mux_4_i5_3_lut.init = 16'hcaca;
    FD1P3IX counter__i8 (.D(counter_12__N_60[8]), .SP(clk_osc_enable_12), 
            .CD(n3324), .CK(clk_osc), .Q(counter[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=49, LSE_RCOL=6, LSE_LLINE=80, LSE_RLINE=86 */ ;   // d:/adelsoft/lattice/projects/bit_processor/pc.v(14[12] 24[8])
    defparam counter__i8.GSR = "ENABLED";
    FD1P3IX counter__i7 (.D(counter_12__N_60[7]), .SP(clk_osc_enable_12), 
            .CD(n3324), .CK(clk_osc), .Q(\pc_counter[7] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=49, LSE_RCOL=6, LSE_LLINE=80, LSE_RLINE=86 */ ;   // d:/adelsoft/lattice/projects/bit_processor/pc.v(14[12] 24[8])
    defparam counter__i7.GSR = "ENABLED";
    LUT4 mux_4_i4_3_lut (.A(\instruction[3] ), .B(n94[3]), .C(n5), .Z(counter_12__N_60[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/adelsoft/lattice/projects/bit_processor/pc.v(20[13] 22[7])
    defparam mux_4_i4_3_lut.init = 16'hcaca;
    FD1P3IX counter__i6 (.D(counter_12__N_60[6]), .SP(clk_osc_enable_12), 
            .CD(n3324), .CK(clk_osc), .Q(\pc_counter[6] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=49, LSE_RCOL=6, LSE_LLINE=80, LSE_RLINE=86 */ ;   // d:/adelsoft/lattice/projects/bit_processor/pc.v(14[12] 24[8])
    defparam counter__i6.GSR = "ENABLED";
    LUT4 mux_4_i3_3_lut (.A(\instruction[2] ), .B(n94[2]), .C(n5), .Z(counter_12__N_60[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/adelsoft/lattice/projects/bit_processor/pc.v(20[13] 22[7])
    defparam mux_4_i3_3_lut.init = 16'hcaca;
    FD1P3IX counter__i5 (.D(counter_12__N_60[5]), .SP(clk_osc_enable_12), 
            .CD(n3324), .CK(clk_osc), .Q(\pc_counter[5] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=49, LSE_RCOL=6, LSE_LLINE=80, LSE_RLINE=86 */ ;   // d:/adelsoft/lattice/projects/bit_processor/pc.v(14[12] 24[8])
    defparam counter__i5.GSR = "ENABLED";
    FD1P3IX counter__i4 (.D(counter_12__N_60[4]), .SP(clk_osc_enable_12), 
            .CD(n3324), .CK(clk_osc), .Q(\pc_counter[4] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=49, LSE_RCOL=6, LSE_LLINE=80, LSE_RLINE=86 */ ;   // d:/adelsoft/lattice/projects/bit_processor/pc.v(14[12] 24[8])
    defparam counter__i4.GSR = "ENABLED";
    FD1P3IX counter__i3 (.D(counter_12__N_60[3]), .SP(clk_osc_enable_12), 
            .CD(n3324), .CK(clk_osc), .Q(\pc_counter[3] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=49, LSE_RCOL=6, LSE_LLINE=80, LSE_RLINE=86 */ ;   // d:/adelsoft/lattice/projects/bit_processor/pc.v(14[12] 24[8])
    defparam counter__i3.GSR = "ENABLED";
    FD1P3IX counter__i2 (.D(counter_12__N_60[2]), .SP(clk_osc_enable_12), 
            .CD(n3324), .CK(clk_osc), .Q(\pc_counter[2] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=49, LSE_RCOL=6, LSE_LLINE=80, LSE_RLINE=86 */ ;   // d:/adelsoft/lattice/projects/bit_processor/pc.v(14[12] 24[8])
    defparam counter__i2.GSR = "ENABLED";
    FD1P3IX counter__i1 (.D(counter_12__N_60[1]), .SP(clk_osc_enable_12), 
            .CD(n3324), .CK(clk_osc), .Q(\pc_counter[1] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=49, LSE_RCOL=6, LSE_LLINE=80, LSE_RLINE=86 */ ;   // d:/adelsoft/lattice/projects/bit_processor/pc.v(14[12] 24[8])
    defparam counter__i1.GSR = "ENABLED";
    LUT4 mux_4_i2_3_lut (.A(\instruction[1] ), .B(n94[1]), .C(n5), .Z(counter_12__N_60[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/adelsoft/lattice/projects/bit_processor/pc.v(20[13] 22[7])
    defparam mux_4_i2_3_lut.init = 16'hcaca;
    CCU2D add_10_7 (.A0(\pc_counter[5] ), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\pc_counter[6] ), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n4231), .COUT(n4232), .S0(n94[5]), .S1(n94[6]));   // d:/adelsoft/lattice/projects/bit_processor/pc.v(21[16:27])
    defparam add_10_7.INIT0 = 16'h5aaa;
    defparam add_10_7.INIT1 = 16'h5aaa;
    defparam add_10_7.INJECT1_0 = "NO";
    defparam add_10_7.INJECT1_1 = "NO";
    CCU2D add_10_5 (.A0(\pc_counter[3] ), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\pc_counter[4] ), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n4230), .COUT(n4231), .S0(n94[3]), .S1(n94[4]));   // d:/adelsoft/lattice/projects/bit_processor/pc.v(21[16:27])
    defparam add_10_5.INIT0 = 16'h5aaa;
    defparam add_10_5.INIT1 = 16'h5aaa;
    defparam add_10_5.INJECT1_0 = "NO";
    defparam add_10_5.INJECT1_1 = "NO";
    CCU2D add_10_3 (.A0(\pc_counter[1] ), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\pc_counter[2] ), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n4229), .COUT(n4230), .S0(n94[1]), .S1(n94[2]));   // d:/adelsoft/lattice/projects/bit_processor/pc.v(21[16:27])
    defparam add_10_3.INIT0 = 16'h5aaa;
    defparam add_10_3.INIT1 = 16'h5aaa;
    defparam add_10_3.INJECT1_0 = "NO";
    defparam add_10_3.INJECT1_1 = "NO";
    CCU2D add_10_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(\pc_counter[0] ), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n4229), .S1(n94[0]));   // d:/adelsoft/lattice/projects/bit_processor/pc.v(21[16:27])
    defparam add_10_1.INIT0 = 16'hF000;
    defparam add_10_1.INIT1 = 16'h5555;
    defparam add_10_1.INJECT1_0 = "NO";
    defparam add_10_1.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

