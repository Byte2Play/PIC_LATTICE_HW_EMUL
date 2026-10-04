// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.14.0.75.2
// Netlist written on Sat Oct 03 23:06:39 2026
//
// Verilog Description of module top
//

module top (rst_n, led) /* synthesis syn_module_defined=1 */ ;   // d:/adelsoft/lattice/projects/bit_processor/top.v(1[8:11])
    input rst_n;   // d:/adelsoft/lattice/projects/bit_processor/top.v(9[33:38])
    output [7:0]led;   // d:/adelsoft/lattice/projects/bit_processor/top.v(10[33:36])
    
    wire clk /* synthesis SET_AS_NETWORK=clk, is_clock=1 */ ;   // d:/adelsoft/lattice/projects/bit_processor/top.v(16[29:32])
    
    wire GND_net, VCC_net, rst_n_c, led_c_7, led_c_6, led_c_5, led_c_4, 
        led_c_3, led_c_2, led_c_1, led_c_0, clk_out;
    wire [12:0]pc_counter;   // d:/adelsoft/lattice/projects/bit_processor/top.v(22[29:39])
    wire [13:0]mem_data;   // d:/adelsoft/lattice/projects/bit_processor/top.v(23[29:37])
    
    wire n687, n692, n694;
    wire [7:0]w_out;   // d:/adelsoft/lattice/projects/bit_processor/top.v(36[29:34])
    
    wire n607, n2, n695, n1051, n1030, n564, n707, n710, n32, 
        n1100, n1011, n872, clk_enable_24, n15, clk_enable_20, n649, 
        n645;
    
    VHI i2 (.Z(VCC_net));
    w w (.w_out({w_out}), .clk(clk), .clk_enable_20(clk_enable_20), .\mem_data[0] (mem_data[0]), 
      .\mem_data[7] (mem_data[7]), .\mem_data[6] (mem_data[6]), .\mem_data[5] (mem_data[5]), 
      .\mem_data[4] (mem_data[4]), .\mem_data[3] (mem_data[3]), .\mem_data[2] (mem_data[2]), 
      .\mem_data[1] (mem_data[1])) /* synthesis syn_module_defined=1 */ ;   // d:/adelsoft/lattice/projects/bit_processor/top.v(96[29] 101[6])
    OB led_pad_7 (.I(led_c_7), .O(led[7]));   // d:/adelsoft/lattice/projects/bit_processor/top.v(10[33:36])
    LUT4 i1_2_lut_3_lut (.A(clk_out), .B(n645), .C(pc_counter[0]), .Z(n695)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // d:/adelsoft/lattice/projects/bit_processor/w.v(12[12] 15[8])
    defparam i1_2_lut_3_lut.init = 16'h4040;
    OSCH u_osc (.STDBY(GND_net), .OSC(clk)) /* synthesis syn_instantiated=1 */ ;
    defparam u_osc.NOM_FREQ = "12.09";
    LUT4 w_out_7__I_0_i2_1_lut (.A(w_out[1]), .Z(led_c_1)) /* synthesis lut_function=(!(A)) */ ;   // d:/adelsoft/lattice/projects/bit_processor/top.v(106[18:24])
    defparam w_out_7__I_0_i2_1_lut.init = 16'h5555;
    LUT4 i576_3_lut_4_lut (.A(pc_counter[2]), .B(pc_counter[3]), .C(pc_counter[1]), 
         .D(pc_counter[4]), .Z(n1011)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A ((C+(D))+!B))) */ ;   // d:/adelsoft/lattice/projects/bit_processor/mem.v(11[12] 12[30])
    defparam i576_3_lut_4_lut.init = 16'h0006;
    GSR GSR_INST (.GSR(VCC_net));
    LUT4 w_out_7__I_0_i3_1_lut (.A(w_out[2]), .Z(led_c_2)) /* synthesis lut_function=(!(A)) */ ;   // d:/adelsoft/lattice/projects/bit_processor/top.v(106[18:24])
    defparam w_out_7__I_0_i3_1_lut.init = 16'h5555;
    LUT4 i1_2_lut_3_lut_adj_1 (.A(clk_out), .B(n645), .C(pc_counter[4]), 
         .Z(n649)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // d:/adelsoft/lattice/projects/bit_processor/w.v(12[12] 15[8])
    defparam i1_2_lut_3_lut_adj_1.init = 16'h4040;
    LUT4 i568_2_lut_rep_4 (.A(clk_out), .B(n645), .Z(clk_enable_24)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/adelsoft/lattice/projects/bit_processor/w.v(12[12] 15[8])
    defparam i568_2_lut_rep_4.init = 16'h4444;
    LUT4 w_out_7__I_0_i8_1_lut (.A(w_out[7]), .Z(led_c_7)) /* synthesis lut_function=(!(A)) */ ;   // d:/adelsoft/lattice/projects/bit_processor/top.v(106[18:24])
    defparam w_out_7__I_0_i8_1_lut.init = 16'h5555;
    LUT4 w_out_7__I_0_i5_1_lut (.A(w_out[4]), .Z(led_c_4)) /* synthesis lut_function=(!(A)) */ ;   // d:/adelsoft/lattice/projects/bit_processor/top.v(106[18:24])
    defparam w_out_7__I_0_i5_1_lut.init = 16'h5555;
    LUT4 w_out_7__I_0_i7_1_lut (.A(w_out[6]), .Z(led_c_6)) /* synthesis lut_function=(!(A)) */ ;   // d:/adelsoft/lattice/projects/bit_processor/top.v(106[18:24])
    defparam w_out_7__I_0_i7_1_lut.init = 16'h5555;
    LUT4 i560_2_lut_3_lut (.A(clk_out), .B(n645), .C(rst_n_c), .Z(n564)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // d:/adelsoft/lattice/projects/bit_processor/w.v(12[12] 15[8])
    defparam i560_2_lut_3_lut.init = 16'h0404;
    LUT4 w_out_7__I_0_i1_1_lut (.A(w_out[0]), .Z(led_c_0)) /* synthesis lut_function=(!(A)) */ ;   // d:/adelsoft/lattice/projects/bit_processor/top.v(106[18:24])
    defparam w_out_7__I_0_i1_1_lut.init = 16'h5555;
    LUT4 i563_2_lut_3_lut (.A(clk_out), .B(n645), .C(pc_counter[0]), .Z(n694)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // d:/adelsoft/lattice/projects/bit_processor/w.v(12[12] 15[8])
    defparam i563_2_lut_3_lut.init = 16'h0404;
    IB rst_n_pad (.I(rst_n), .O(rst_n_c));   // d:/adelsoft/lattice/projects/bit_processor/top.v(9[33:38])
    OB led_pad_0 (.I(led_c_0), .O(led[0]));   // d:/adelsoft/lattice/projects/bit_processor/top.v(10[33:36])
    OB led_pad_1 (.I(led_c_1), .O(led[1]));   // d:/adelsoft/lattice/projects/bit_processor/top.v(10[33:36])
    OB led_pad_2 (.I(led_c_2), .O(led[2]));   // d:/adelsoft/lattice/projects/bit_processor/top.v(10[33:36])
    OB led_pad_3 (.I(led_c_3), .O(led[3]));   // d:/adelsoft/lattice/projects/bit_processor/top.v(10[33:36])
    OB led_pad_4 (.I(led_c_4), .O(led[4]));   // d:/adelsoft/lattice/projects/bit_processor/top.v(10[33:36])
    OB led_pad_5 (.I(led_c_5), .O(led[5]));   // d:/adelsoft/lattice/projects/bit_processor/top.v(10[33:36])
    LUT4 w_out_7__I_0_i6_1_lut (.A(w_out[5]), .Z(led_c_5)) /* synthesis lut_function=(!(A)) */ ;   // d:/adelsoft/lattice/projects/bit_processor/top.v(106[18:24])
    defparam w_out_7__I_0_i6_1_lut.init = 16'h5555;
    VLO i1 (.Z(GND_net));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    TSALL TSALL_INST (.TSALL(GND_net));
    LUT4 w_out_7__I_0_i4_1_lut (.A(w_out[3]), .Z(led_c_3)) /* synthesis lut_function=(!(A)) */ ;   // d:/adelsoft/lattice/projects/bit_processor/top.v(106[18:24])
    defparam w_out_7__I_0_i4_1_lut.init = 16'h5555;
    pc u_pc (.\mem_data[2] (mem_data[2]), .n2(n2), .\mem_data[4] (mem_data[4]), 
       .\pc_counter[1] (pc_counter[1]), .\pc_counter[2] (pc_counter[2]), 
       .\pc_counter[3] (pc_counter[3]), .\pc_counter[4] (pc_counter[4]), 
       .n1100(n1100), .n687(n687), .\mem_data[1] (mem_data[1]), .GND_net(GND_net), 
       .n707(n707), .n710(n710), .n1051(n1051), .\pc_counter[0] (pc_counter[0]), 
       .n15(n15), .n32(n32), .\mem_data[3] (mem_data[3]), .n607(n607), 
       .n1030(n1030), .\mem_data[0] (mem_data[0]), .n692(n692), .clk(clk), 
       .clk_enable_24(clk_enable_24), .n564(n564)) /* synthesis syn_module_defined=1 */ ;   // d:/adelsoft/lattice/projects/bit_processor/top.v(56[49] 62[6])
    mem u_mem (.\mem_data[0] (mem_data[0]), .clk(clk), .clk_enable_24(clk_enable_24), 
        .n694(n694), .n692(n692), .\mem_data[1] (mem_data[1]), .n695(n695), 
        .n1100(n1100), .\mem_data[2] (mem_data[2]), .n1051(n1051), .\mem_data[3] (mem_data[3]), 
        .n607(n607), .\mem_data[4] (mem_data[4]), .n707(n707), .\mem_data[5] (mem_data[5]), 
        .n710(n710), .\mem_data[6] (mem_data[6]), .n1011(n1011), .\mem_data[12] (mem_data[12]), 
        .n687(n687), .\mem_data[7] (mem_data[7]), .n649(n649), .n15(n15), 
        .\mem_data[11] (mem_data[11]), .n1030(n1030), .\mem_data[13] (mem_data[13]), 
        .n872(n872), .n32(n32)) /* synthesis syn_module_defined=1 */ ;   // d:/adelsoft/lattice/projects/bit_processor/top.v(64[9] 68[6])
    LUT4 i573_2_lut_3_lut (.A(clk_out), .B(n645), .C(pc_counter[4]), .Z(n872)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // d:/adelsoft/lattice/projects/bit_processor/w.v(12[12] 15[8])
    defparam i573_2_lut_3_lut.init = 16'h0404;
    \clk_div(DIV=806000)  u_div (.GND_net(GND_net), .clk(clk), .n645(n645), 
            .clk_out(clk_out)) /* synthesis syn_module_defined=1 */ ;   // d:/adelsoft/lattice/projects/bit_processor/top.v(48[30] 51[6])
    OB led_pad_6 (.I(led_c_6), .O(led[6]));   // d:/adelsoft/lattice/projects/bit_processor/top.v(10[33:36])
    decoder u_decoder (.\mem_data[11] (mem_data[11]), .\mem_data[13] (mem_data[13]), 
            .\mem_data[12] (mem_data[12]), .clk_enable_24(clk_enable_24), 
            .clk_enable_20(clk_enable_20), .n2(n2)) /* synthesis syn_module_defined=1 */ ;   // d:/adelsoft/lattice/projects/bit_processor/top.v(73[13] 77[6])
    
endmodule
//
// Verilog Description of module w
//

module w (w_out, clk, clk_enable_20, \mem_data[0] , \mem_data[7] , 
          \mem_data[6] , \mem_data[5] , \mem_data[4] , \mem_data[3] , 
          \mem_data[2] , \mem_data[1] ) /* synthesis syn_module_defined=1 */ ;
    output [7:0]w_out;
    input clk;
    input clk_enable_20;
    input \mem_data[0] ;
    input \mem_data[7] ;
    input \mem_data[6] ;
    input \mem_data[5] ;
    input \mem_data[4] ;
    input \mem_data[3] ;
    input \mem_data[2] ;
    input \mem_data[1] ;
    
    wire clk /* synthesis SET_AS_NETWORK=clk, is_clock=1 */ ;   // d:/adelsoft/lattice/projects/bit_processor/top.v(16[29:32])
    
    FD1P3AX w_out_i0_i0 (.D(\mem_data[0] ), .SP(clk_enable_20), .CK(clk), 
            .Q(w_out[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=6, LSE_LLINE=96, LSE_RLINE=101 */ ;   // d:/adelsoft/lattice/projects/bit_processor/w.v(12[12] 15[8])
    defparam w_out_i0_i0.GSR = "ENABLED";
    FD1P3AX w_out_i0_i7 (.D(\mem_data[7] ), .SP(clk_enable_20), .CK(clk), 
            .Q(w_out[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=6, LSE_LLINE=96, LSE_RLINE=101 */ ;   // d:/adelsoft/lattice/projects/bit_processor/w.v(12[12] 15[8])
    defparam w_out_i0_i7.GSR = "ENABLED";
    FD1P3AX w_out_i0_i6 (.D(\mem_data[6] ), .SP(clk_enable_20), .CK(clk), 
            .Q(w_out[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=6, LSE_LLINE=96, LSE_RLINE=101 */ ;   // d:/adelsoft/lattice/projects/bit_processor/w.v(12[12] 15[8])
    defparam w_out_i0_i6.GSR = "ENABLED";
    FD1P3AX w_out_i0_i5 (.D(\mem_data[5] ), .SP(clk_enable_20), .CK(clk), 
            .Q(w_out[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=6, LSE_LLINE=96, LSE_RLINE=101 */ ;   // d:/adelsoft/lattice/projects/bit_processor/w.v(12[12] 15[8])
    defparam w_out_i0_i5.GSR = "ENABLED";
    FD1P3AX w_out_i0_i4 (.D(\mem_data[4] ), .SP(clk_enable_20), .CK(clk), 
            .Q(w_out[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=6, LSE_LLINE=96, LSE_RLINE=101 */ ;   // d:/adelsoft/lattice/projects/bit_processor/w.v(12[12] 15[8])
    defparam w_out_i0_i4.GSR = "ENABLED";
    FD1P3AX w_out_i0_i3 (.D(\mem_data[3] ), .SP(clk_enable_20), .CK(clk), 
            .Q(w_out[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=6, LSE_LLINE=96, LSE_RLINE=101 */ ;   // d:/adelsoft/lattice/projects/bit_processor/w.v(12[12] 15[8])
    defparam w_out_i0_i3.GSR = "ENABLED";
    FD1P3AX w_out_i0_i2 (.D(\mem_data[2] ), .SP(clk_enable_20), .CK(clk), 
            .Q(w_out[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=6, LSE_LLINE=96, LSE_RLINE=101 */ ;   // d:/adelsoft/lattice/projects/bit_processor/w.v(12[12] 15[8])
    defparam w_out_i0_i2.GSR = "ENABLED";
    FD1P3AX w_out_i0_i1 (.D(\mem_data[1] ), .SP(clk_enable_20), .CK(clk), 
            .Q(w_out[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=6, LSE_LLINE=96, LSE_RLINE=101 */ ;   // d:/adelsoft/lattice/projects/bit_processor/w.v(12[12] 15[8])
    defparam w_out_i0_i1.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module pc
//

module pc (\mem_data[2] , n2, \mem_data[4] , \pc_counter[1] , \pc_counter[2] , 
           \pc_counter[3] , \pc_counter[4] , n1100, n687, \mem_data[1] , 
           GND_net, n707, n710, n1051, \pc_counter[0] , n15, n32, 
           \mem_data[3] , n607, n1030, \mem_data[0] , n692, clk, 
           clk_enable_24, n564) /* synthesis syn_module_defined=1 */ ;
    input \mem_data[2] ;
    input n2;
    input \mem_data[4] ;
    output \pc_counter[1] ;
    output \pc_counter[2] ;
    output \pc_counter[3] ;
    output \pc_counter[4] ;
    output n1100;
    output n687;
    input \mem_data[1] ;
    input GND_net;
    output n707;
    output n710;
    output n1051;
    output \pc_counter[0] ;
    output n15;
    output n32;
    input \mem_data[3] ;
    output n607;
    output n1030;
    input \mem_data[0] ;
    output n692;
    input clk;
    input clk_enable_24;
    input n564;
    
    wire clk /* synthesis SET_AS_NETWORK=clk, is_clock=1 */ ;   // d:/adelsoft/lattice/projects/bit_processor/top.v(16[29:32])
    wire [12:0]n94;
    wire [12:0]counter_12__N_58;
    
    wire n1113, n986, n987;
    
    LUT4 mux_4_i3_3_lut (.A(\mem_data[2] ), .B(n94[2]), .C(n2), .Z(counter_12__N_58[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/adelsoft/lattice/projects/bit_processor/pc.v(20[13] 22[7])
    defparam mux_4_i3_3_lut.init = 16'hcaca;
    LUT4 mux_4_i5_3_lut (.A(\mem_data[4] ), .B(n94[4]), .C(n2), .Z(counter_12__N_58[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/adelsoft/lattice/projects/bit_processor/pc.v(20[13] 22[7])
    defparam mux_4_i5_3_lut.init = 16'hcaca;
    LUT4 pc_counter_1__bdd_4_lut (.A(\pc_counter[1] ), .B(\pc_counter[2] ), 
         .C(\pc_counter[3] ), .D(\pc_counter[4] ), .Z(n1100)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B+(C+(D))))) */ ;
    defparam pc_counter_1__bdd_4_lut.init = 16'h0081;
    LUT4 i182_1_lut (.A(\pc_counter[4] ), .Z(n687)) /* synthesis lut_function=(!(A)) */ ;   // d:/adelsoft/lattice/projects/bit_processor/pc.v(14[12] 24[8])
    defparam i182_1_lut.init = 16'h5555;
    LUT4 i535_2_lut_rep_5 (.A(\pc_counter[4] ), .B(\pc_counter[1] ), .Z(n1113)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i535_2_lut_rep_5.init = 16'heeee;
    LUT4 mux_4_i2_3_lut (.A(\mem_data[1] ), .B(n94[1]), .C(n2), .Z(counter_12__N_58[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/adelsoft/lattice/projects/bit_processor/pc.v(20[13] 22[7])
    defparam mux_4_i2_3_lut.init = 16'hcaca;
    CCU2D add_10_3 (.A0(\pc_counter[1] ), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\pc_counter[2] ), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n986), .COUT(n987), .S0(n94[1]), .S1(n94[2]));   // d:/adelsoft/lattice/projects/bit_processor/pc.v(21[16:27])
    defparam add_10_3.INIT0 = 16'h5aaa;
    defparam add_10_3.INIT1 = 16'h5aaa;
    defparam add_10_3.INJECT1_0 = "NO";
    defparam add_10_3.INJECT1_1 = "NO";
    LUT4 i205_3_lut_4_lut (.A(\pc_counter[2] ), .B(n1113), .C(\pc_counter[3] ), 
         .D(n707), .Z(n710)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/adelsoft/lattice/projects/bit_processor/pc.v(14[12] 24[8])
    defparam i205_3_lut_4_lut.init = 16'hf202;
    LUT4 i1_2_lut_3_lut_4_lut (.A(\pc_counter[4] ), .B(\pc_counter[1] ), 
         .C(\pc_counter[3] ), .D(\pc_counter[2] ), .Z(n1051)) /* synthesis lut_function=(!(A+(B+!(C (D)+!C !(D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'h1001;
    LUT4 i197_3_lut_4_lut_4_lut (.A(\pc_counter[2] ), .B(\pc_counter[0] ), 
         .C(\pc_counter[1] ), .D(\pc_counter[3] ), .Z(n15)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B+(C+!(D))))) */ ;
    defparam i197_3_lut_4_lut_4_lut.init = 16'h01a0;
    LUT4 i571_2_lut_4_lut (.A(\pc_counter[2] ), .B(\pc_counter[0] ), .C(\pc_counter[1] ), 
         .D(\pc_counter[3] ), .Z(n32)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i571_2_lut_4_lut.init = 16'h0001;
    LUT4 mux_4_i4_3_lut (.A(\mem_data[3] ), .B(n94[3]), .C(n2), .Z(counter_12__N_58[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/adelsoft/lattice/projects/bit_processor/pc.v(20[13] 22[7])
    defparam mux_4_i4_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_3_lut (.A(\pc_counter[2] ), .B(\pc_counter[4] ), .C(\pc_counter[1] ), 
         .Z(n707)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut.init = 16'h1010;
    LUT4 i551_3_lut_4_lut (.A(\pc_counter[2] ), .B(n1113), .C(\pc_counter[3] ), 
         .D(n707), .Z(n607)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/adelsoft/lattice/projects/bit_processor/pc.v(14[12] 24[8])
    defparam i551_3_lut_4_lut.init = 16'h2f20;
    LUT4 i3_4_lut (.A(\pc_counter[3] ), .B(\pc_counter[4] ), .C(\pc_counter[2] ), 
         .D(\pc_counter[1] ), .Z(n1030)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i3_4_lut.init = 16'h0004;
    LUT4 mux_4_i1_3_lut (.A(\mem_data[0] ), .B(n94[0]), .C(n2), .Z(counter_12__N_58[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/adelsoft/lattice/projects/bit_processor/pc.v(20[13] 22[7])
    defparam mux_4_i1_3_lut.init = 16'hcaca;
    LUT4 i2_3_lut_4_lut (.A(\pc_counter[1] ), .B(\pc_counter[2] ), .C(\pc_counter[3] ), 
         .D(\pc_counter[4] ), .Z(n692)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // d:/adelsoft/lattice/projects/bit_processor/pc.v(14[12] 24[8])
    defparam i2_3_lut_4_lut.init = 16'h0080;
    FD1P3IX counter__i4 (.D(counter_12__N_58[4]), .SP(clk_enable_24), .CD(n564), 
            .CK(clk), .Q(\pc_counter[4] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=49, LSE_RCOL=6, LSE_LLINE=56, LSE_RLINE=62 */ ;   // d:/adelsoft/lattice/projects/bit_processor/pc.v(14[12] 24[8])
    defparam counter__i4.GSR = "ENABLED";
    FD1P3IX counter__i3 (.D(counter_12__N_58[3]), .SP(clk_enable_24), .CD(n564), 
            .CK(clk), .Q(\pc_counter[3] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=49, LSE_RCOL=6, LSE_LLINE=56, LSE_RLINE=62 */ ;   // d:/adelsoft/lattice/projects/bit_processor/pc.v(14[12] 24[8])
    defparam counter__i3.GSR = "ENABLED";
    FD1P3IX counter__i2 (.D(counter_12__N_58[2]), .SP(clk_enable_24), .CD(n564), 
            .CK(clk), .Q(\pc_counter[2] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=49, LSE_RCOL=6, LSE_LLINE=56, LSE_RLINE=62 */ ;   // d:/adelsoft/lattice/projects/bit_processor/pc.v(14[12] 24[8])
    defparam counter__i2.GSR = "ENABLED";
    FD1P3IX counter__i1 (.D(counter_12__N_58[1]), .SP(clk_enable_24), .CD(n564), 
            .CK(clk), .Q(\pc_counter[1] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=49, LSE_RCOL=6, LSE_LLINE=56, LSE_RLINE=62 */ ;   // d:/adelsoft/lattice/projects/bit_processor/pc.v(14[12] 24[8])
    defparam counter__i1.GSR = "ENABLED";
    FD1P3IX counter__i0 (.D(counter_12__N_58[0]), .SP(clk_enable_24), .CD(n564), 
            .CK(clk), .Q(\pc_counter[0] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=49, LSE_RCOL=6, LSE_LLINE=56, LSE_RLINE=62 */ ;   // d:/adelsoft/lattice/projects/bit_processor/pc.v(14[12] 24[8])
    defparam counter__i0.GSR = "ENABLED";
    CCU2D add_10_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(\pc_counter[0] ), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n986), .S1(n94[0]));   // d:/adelsoft/lattice/projects/bit_processor/pc.v(21[16:27])
    defparam add_10_1.INIT0 = 16'hF000;
    defparam add_10_1.INIT1 = 16'h5555;
    defparam add_10_1.INJECT1_0 = "NO";
    defparam add_10_1.INJECT1_1 = "NO";
    CCU2D add_10_5 (.A0(\pc_counter[3] ), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\pc_counter[4] ), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n987), .S0(n94[3]), .S1(n94[4]));   // d:/adelsoft/lattice/projects/bit_processor/pc.v(21[16:27])
    defparam add_10_5.INIT0 = 16'h5aaa;
    defparam add_10_5.INIT1 = 16'h5aaa;
    defparam add_10_5.INJECT1_0 = "NO";
    defparam add_10_5.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module mem
//

module mem (\mem_data[0] , clk, clk_enable_24, n694, n692, \mem_data[1] , 
            n695, n1100, \mem_data[2] , n1051, \mem_data[3] , n607, 
            \mem_data[4] , n707, \mem_data[5] , n710, \mem_data[6] , 
            n1011, \mem_data[12] , n687, \mem_data[7] , n649, n15, 
            \mem_data[11] , n1030, \mem_data[13] , n872, n32) /* synthesis syn_module_defined=1 */ ;
    output \mem_data[0] ;
    input clk;
    input clk_enable_24;
    input n694;
    input n692;
    output \mem_data[1] ;
    input n695;
    input n1100;
    output \mem_data[2] ;
    input n1051;
    output \mem_data[3] ;
    input n607;
    output \mem_data[4] ;
    input n707;
    output \mem_data[5] ;
    input n710;
    output \mem_data[6] ;
    input n1011;
    output \mem_data[12] ;
    input n687;
    output \mem_data[7] ;
    input n649;
    input n15;
    output \mem_data[11] ;
    input n1030;
    output \mem_data[13] ;
    input n872;
    input n32;
    
    wire clk /* synthesis SET_AS_NETWORK=clk, is_clock=1 */ ;   // d:/adelsoft/lattice/projects/bit_processor/top.v(16[29:32])
    
    FD1P3IX dato__i1 (.D(n692), .SP(clk_enable_24), .CD(n694), .CK(clk), 
            .Q(\mem_data[0] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=68 */ ;   // d:/adelsoft/lattice/projects/bit_processor/mem.v(11[12] 12[30])
    defparam dato__i1.GSR = "ENABLED";
    FD1P3IX dato__i2 (.D(n1100), .SP(clk_enable_24), .CD(n695), .CK(clk), 
            .Q(\mem_data[1] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=68 */ ;   // d:/adelsoft/lattice/projects/bit_processor/mem.v(11[12] 12[30])
    defparam dato__i2.GSR = "ENABLED";
    FD1P3IX dato__i3 (.D(n1051), .SP(clk_enable_24), .CD(n694), .CK(clk), 
            .Q(\mem_data[2] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=68 */ ;   // d:/adelsoft/lattice/projects/bit_processor/mem.v(11[12] 12[30])
    defparam dato__i3.GSR = "ENABLED";
    FD1P3IX dato__i4 (.D(n607), .SP(clk_enable_24), .CD(n695), .CK(clk), 
            .Q(\mem_data[3] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=68 */ ;   // d:/adelsoft/lattice/projects/bit_processor/mem.v(11[12] 12[30])
    defparam dato__i4.GSR = "ENABLED";
    FD1P3IX dato__i5 (.D(n707), .SP(clk_enable_24), .CD(n694), .CK(clk), 
            .Q(\mem_data[4] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=68 */ ;   // d:/adelsoft/lattice/projects/bit_processor/mem.v(11[12] 12[30])
    defparam dato__i5.GSR = "ENABLED";
    FD1P3IX dato__i6 (.D(n710), .SP(clk_enable_24), .CD(n695), .CK(clk), 
            .Q(\mem_data[5] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=68 */ ;   // d:/adelsoft/lattice/projects/bit_processor/mem.v(11[12] 12[30])
    defparam dato__i6.GSR = "ENABLED";
    FD1P3IX dato__i7 (.D(n1011), .SP(clk_enable_24), .CD(n694), .CK(clk), 
            .Q(\mem_data[6] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=68 */ ;   // d:/adelsoft/lattice/projects/bit_processor/mem.v(11[12] 12[30])
    defparam dato__i7.GSR = "ENABLED";
    FD1P3AX dato__i10 (.D(n687), .SP(clk_enable_24), .CK(clk), .Q(\mem_data[12] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=68 */ ;   // d:/adelsoft/lattice/projects/bit_processor/mem.v(11[12] 12[30])
    defparam dato__i10.GSR = "ENABLED";
    FD1P3IX dato__i8 (.D(n15), .SP(clk_enable_24), .CD(n649), .CK(clk), 
            .Q(\mem_data[7] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=68 */ ;   // d:/adelsoft/lattice/projects/bit_processor/mem.v(11[12] 12[30])
    defparam dato__i8.GSR = "ENABLED";
    FD1P3IX dato__i9 (.D(n1030), .SP(clk_enable_24), .CD(n695), .CK(clk), 
            .Q(\mem_data[11] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=68 */ ;   // d:/adelsoft/lattice/projects/bit_processor/mem.v(11[12] 12[30])
    defparam dato__i9.GSR = "ENABLED";
    FD1P3JX dato__i11 (.D(n32), .SP(clk_enable_24), .PD(n872), .CK(clk), 
            .Q(\mem_data[13] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=68 */ ;   // d:/adelsoft/lattice/projects/bit_processor/mem.v(11[12] 12[30])
    defparam dato__i11.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module \clk_div(DIV=806000) 
//

module \clk_div(DIV=806000)  (GND_net, clk, n645, clk_out) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    input clk;
    output n645;
    output clk_out;
    
    wire clk /* synthesis SET_AS_NETWORK=clk, is_clock=1 */ ;   // d:/adelsoft/lattice/projects/bit_processor/top.v(16[29:32])
    wire [19:0]cnt;   // d:/adelsoft/lattice/projects/bit_processor/clk.v(10[27:30])
    wire [19:0]n85;
    
    wire n993, n994, n995, n996, n1066, n1068, n12, clk_out_N_44, 
        n997, n998, n1001, n1002, n1000, n17, n15, n16, n999;
    
    CCU2D cnt_59_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n993), 
          .S1(n85[0]));   // d:/adelsoft/lattice/projects/bit_processor/clk.v(23[24:31])
    defparam cnt_59_add_4_1.INIT0 = 16'hF000;
    defparam cnt_59_add_4_1.INIT1 = 16'h0555;
    defparam cnt_59_add_4_1.INJECT1_0 = "NO";
    defparam cnt_59_add_4_1.INJECT1_1 = "NO";
    FD1S3IX cnt_59__i9 (.D(n85[9]), .CK(clk), .CD(n645), .Q(cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/adelsoft/lattice/projects/bit_processor/clk.v(23[24:31])
    defparam cnt_59__i9.GSR = "ENABLED";
    FD1S3IX cnt_59__i8 (.D(n85[8]), .CK(clk), .CD(n645), .Q(cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/adelsoft/lattice/projects/bit_processor/clk.v(23[24:31])
    defparam cnt_59__i8.GSR = "ENABLED";
    FD1S3IX cnt_59__i7 (.D(n85[7]), .CK(clk), .CD(n645), .Q(cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/adelsoft/lattice/projects/bit_processor/clk.v(23[24:31])
    defparam cnt_59__i7.GSR = "ENABLED";
    FD1S3IX cnt_59__i6 (.D(n85[6]), .CK(clk), .CD(n645), .Q(cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/adelsoft/lattice/projects/bit_processor/clk.v(23[24:31])
    defparam cnt_59__i6.GSR = "ENABLED";
    FD1S3IX cnt_59__i5 (.D(n85[5]), .CK(clk), .CD(n645), .Q(cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/adelsoft/lattice/projects/bit_processor/clk.v(23[24:31])
    defparam cnt_59__i5.GSR = "ENABLED";
    FD1S3IX cnt_59__i4 (.D(n85[4]), .CK(clk), .CD(n645), .Q(cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/adelsoft/lattice/projects/bit_processor/clk.v(23[24:31])
    defparam cnt_59__i4.GSR = "ENABLED";
    FD1S3IX cnt_59__i10 (.D(n85[10]), .CK(clk), .CD(n645), .Q(cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/adelsoft/lattice/projects/bit_processor/clk.v(23[24:31])
    defparam cnt_59__i10.GSR = "ENABLED";
    CCU2D cnt_59_add_4_5 (.A0(cnt[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n994), 
          .COUT(n995), .S0(n85[3]), .S1(n85[4]));   // d:/adelsoft/lattice/projects/bit_processor/clk.v(23[24:31])
    defparam cnt_59_add_4_5.INIT0 = 16'hfaaa;
    defparam cnt_59_add_4_5.INIT1 = 16'hfaaa;
    defparam cnt_59_add_4_5.INJECT1_0 = "NO";
    defparam cnt_59_add_4_5.INJECT1_1 = "NO";
    CCU2D cnt_59_add_4_3 (.A0(cnt[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n993), 
          .COUT(n994), .S0(n85[1]), .S1(n85[2]));   // d:/adelsoft/lattice/projects/bit_processor/clk.v(23[24:31])
    defparam cnt_59_add_4_3.INIT0 = 16'hfaaa;
    defparam cnt_59_add_4_3.INIT1 = 16'hfaaa;
    defparam cnt_59_add_4_3.INJECT1_0 = "NO";
    defparam cnt_59_add_4_3.INJECT1_1 = "NO";
    CCU2D cnt_59_add_4_7 (.A0(cnt[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n995), 
          .COUT(n996), .S0(n85[5]), .S1(n85[6]));   // d:/adelsoft/lattice/projects/bit_processor/clk.v(23[24:31])
    defparam cnt_59_add_4_7.INIT0 = 16'hfaaa;
    defparam cnt_59_add_4_7.INIT1 = 16'hfaaa;
    defparam cnt_59_add_4_7.INJECT1_0 = "NO";
    defparam cnt_59_add_4_7.INJECT1_1 = "NO";
    LUT4 i557_4_lut (.A(n1066), .B(cnt[2]), .C(n1068), .D(n12), .Z(n645)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // d:/adelsoft/lattice/projects/bit_processor/clk.v(19[13:29])
    defparam i557_4_lut.init = 16'h0080;
    LUT4 i1_2_lut (.A(clk_out), .B(n645), .Z(clk_out_N_44)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_2_lut.init = 16'h6666;
    LUT4 i547_4_lut (.A(cnt[9]), .B(cnt[5]), .C(cnt[4]), .D(cnt[10]), 
         .Z(n1066)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i547_4_lut.init = 16'h8000;
    CCU2D cnt_59_add_4_11 (.A0(cnt[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n997), 
          .COUT(n998), .S0(n85[9]), .S1(n85[10]));   // d:/adelsoft/lattice/projects/bit_processor/clk.v(23[24:31])
    defparam cnt_59_add_4_11.INIT0 = 16'hfaaa;
    defparam cnt_59_add_4_11.INIT1 = 16'hfaaa;
    defparam cnt_59_add_4_11.INJECT1_0 = "NO";
    defparam cnt_59_add_4_11.INJECT1_1 = "NO";
    CCU2D cnt_59_add_4_19 (.A0(cnt[17]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[18]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1001), 
          .COUT(n1002), .S0(n85[17]), .S1(n85[18]));   // d:/adelsoft/lattice/projects/bit_processor/clk.v(23[24:31])
    defparam cnt_59_add_4_19.INIT0 = 16'hfaaa;
    defparam cnt_59_add_4_19.INIT1 = 16'hfaaa;
    defparam cnt_59_add_4_19.INJECT1_0 = "NO";
    defparam cnt_59_add_4_19.INJECT1_1 = "NO";
    CCU2D cnt_59_add_4_17 (.A0(cnt[15]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1000), 
          .COUT(n1001), .S0(n85[15]), .S1(n85[16]));   // d:/adelsoft/lattice/projects/bit_processor/clk.v(23[24:31])
    defparam cnt_59_add_4_17.INIT0 = 16'hfaaa;
    defparam cnt_59_add_4_17.INIT1 = 16'hfaaa;
    defparam cnt_59_add_4_17.INJECT1_0 = "NO";
    defparam cnt_59_add_4_17.INJECT1_1 = "NO";
    FD1S3AX clk_out_12 (.D(clk_out_N_44), .CK(clk), .Q(clk_out)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=30, LSE_RCOL=6, LSE_LLINE=48, LSE_RLINE=51 */ ;   // d:/adelsoft/lattice/projects/bit_processor/clk.v(18[12] 25[8])
    defparam clk_out_12.GSR = "ENABLED";
    LUT4 i549_4_lut (.A(cnt[18]), .B(cnt[17]), .C(cnt[13]), .D(cnt[0]), 
         .Z(n1068)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i549_4_lut.init = 16'h8000;
    FD1S3IX cnt_59__i3 (.D(n85[3]), .CK(clk), .CD(n645), .Q(cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/adelsoft/lattice/projects/bit_processor/clk.v(23[24:31])
    defparam cnt_59__i3.GSR = "ENABLED";
    LUT4 i1_4_lut (.A(n17), .B(cnt[1]), .C(n15), .D(n16), .Z(n12)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;
    defparam i1_4_lut.init = 16'hfffb;
    FD1S3IX cnt_59__i19 (.D(n85[19]), .CK(clk), .CD(n645), .Q(cnt[19])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/adelsoft/lattice/projects/bit_processor/clk.v(23[24:31])
    defparam cnt_59__i19.GSR = "ENABLED";
    LUT4 i7_4_lut (.A(cnt[15]), .B(cnt[6]), .C(cnt[19]), .D(cnt[7]), 
         .Z(n17)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/adelsoft/lattice/projects/bit_processor/clk.v(19[13:29])
    defparam i7_4_lut.init = 16'hfffe;
    LUT4 i5_2_lut (.A(cnt[12]), .B(cnt[3]), .Z(n15)) /* synthesis lut_function=(A+(B)) */ ;   // d:/adelsoft/lattice/projects/bit_processor/clk.v(19[13:29])
    defparam i5_2_lut.init = 16'heeee;
    FD1S3IX cnt_59__i18 (.D(n85[18]), .CK(clk), .CD(n645), .Q(cnt[18])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/adelsoft/lattice/projects/bit_processor/clk.v(23[24:31])
    defparam cnt_59__i18.GSR = "ENABLED";
    FD1S3IX cnt_59__i17 (.D(n85[17]), .CK(clk), .CD(n645), .Q(cnt[17])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/adelsoft/lattice/projects/bit_processor/clk.v(23[24:31])
    defparam cnt_59__i17.GSR = "ENABLED";
    FD1S3IX cnt_59__i16 (.D(n85[16]), .CK(clk), .CD(n645), .Q(cnt[16])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/adelsoft/lattice/projects/bit_processor/clk.v(23[24:31])
    defparam cnt_59__i16.GSR = "ENABLED";
    FD1S3IX cnt_59__i15 (.D(n85[15]), .CK(clk), .CD(n645), .Q(cnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/adelsoft/lattice/projects/bit_processor/clk.v(23[24:31])
    defparam cnt_59__i15.GSR = "ENABLED";
    FD1S3IX cnt_59__i14 (.D(n85[14]), .CK(clk), .CD(n645), .Q(cnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/adelsoft/lattice/projects/bit_processor/clk.v(23[24:31])
    defparam cnt_59__i14.GSR = "ENABLED";
    FD1S3IX cnt_59__i13 (.D(n85[13]), .CK(clk), .CD(n645), .Q(cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/adelsoft/lattice/projects/bit_processor/clk.v(23[24:31])
    defparam cnt_59__i13.GSR = "ENABLED";
    FD1S3IX cnt_59__i12 (.D(n85[12]), .CK(clk), .CD(n645), .Q(cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/adelsoft/lattice/projects/bit_processor/clk.v(23[24:31])
    defparam cnt_59__i12.GSR = "ENABLED";
    FD1S3IX cnt_59__i11 (.D(n85[11]), .CK(clk), .CD(n645), .Q(cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/adelsoft/lattice/projects/bit_processor/clk.v(23[24:31])
    defparam cnt_59__i11.GSR = "ENABLED";
    FD1S3IX cnt_59__i2 (.D(n85[2]), .CK(clk), .CD(n645), .Q(cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/adelsoft/lattice/projects/bit_processor/clk.v(23[24:31])
    defparam cnt_59__i2.GSR = "ENABLED";
    FD1S3IX cnt_59__i1 (.D(n85[1]), .CK(clk), .CD(n645), .Q(cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/adelsoft/lattice/projects/bit_processor/clk.v(23[24:31])
    defparam cnt_59__i1.GSR = "ENABLED";
    LUT4 i6_4_lut (.A(cnt[16]), .B(cnt[8]), .C(cnt[14]), .D(cnt[11]), 
         .Z(n16)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/adelsoft/lattice/projects/bit_processor/clk.v(19[13:29])
    defparam i6_4_lut.init = 16'hfffe;
    CCU2D cnt_59_add_4_15 (.A0(cnt[13]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n999), 
          .COUT(n1000), .S0(n85[13]), .S1(n85[14]));   // d:/adelsoft/lattice/projects/bit_processor/clk.v(23[24:31])
    defparam cnt_59_add_4_15.INIT0 = 16'hfaaa;
    defparam cnt_59_add_4_15.INIT1 = 16'hfaaa;
    defparam cnt_59_add_4_15.INJECT1_0 = "NO";
    defparam cnt_59_add_4_15.INJECT1_1 = "NO";
    CCU2D cnt_59_add_4_9 (.A0(cnt[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n996), 
          .COUT(n997), .S0(n85[7]), .S1(n85[8]));   // d:/adelsoft/lattice/projects/bit_processor/clk.v(23[24:31])
    defparam cnt_59_add_4_9.INIT0 = 16'hfaaa;
    defparam cnt_59_add_4_9.INIT1 = 16'hfaaa;
    defparam cnt_59_add_4_9.INJECT1_0 = "NO";
    defparam cnt_59_add_4_9.INJECT1_1 = "NO";
    CCU2D cnt_59_add_4_13 (.A0(cnt[11]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n998), 
          .COUT(n999), .S0(n85[11]), .S1(n85[12]));   // d:/adelsoft/lattice/projects/bit_processor/clk.v(23[24:31])
    defparam cnt_59_add_4_13.INIT0 = 16'hfaaa;
    defparam cnt_59_add_4_13.INIT1 = 16'hfaaa;
    defparam cnt_59_add_4_13.INJECT1_0 = "NO";
    defparam cnt_59_add_4_13.INJECT1_1 = "NO";
    FD1S3IX cnt_59__i0 (.D(n85[0]), .CK(clk), .CD(n645), .Q(cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/adelsoft/lattice/projects/bit_processor/clk.v(23[24:31])
    defparam cnt_59__i0.GSR = "ENABLED";
    CCU2D cnt_59_add_4_21 (.A0(cnt[19]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1002), 
          .S0(n85[19]));   // d:/adelsoft/lattice/projects/bit_processor/clk.v(23[24:31])
    defparam cnt_59_add_4_21.INIT0 = 16'hfaaa;
    defparam cnt_59_add_4_21.INIT1 = 16'h0000;
    defparam cnt_59_add_4_21.INJECT1_0 = "NO";
    defparam cnt_59_add_4_21.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module decoder
//

module decoder (\mem_data[11] , \mem_data[13] , \mem_data[12] , clk_enable_24, 
            clk_enable_20, n2) /* synthesis syn_module_defined=1 */ ;
    input \mem_data[11] ;
    input \mem_data[13] ;
    input \mem_data[12] ;
    input clk_enable_24;
    output clk_enable_20;
    output n2;
    
    
    LUT4 i3_4_lut (.A(\mem_data[11] ), .B(\mem_data[13] ), .C(\mem_data[12] ), 
         .D(clk_enable_24), .Z(clk_enable_20)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i3_4_lut.init = 16'h4000;
    LUT4 i2_3_lut (.A(\mem_data[12] ), .B(\mem_data[13] ), .C(\mem_data[11] ), 
         .Z(n2)) /* synthesis lut_function=(A+!(B (C))) */ ;   // d:/adelsoft/lattice/projects/bit_processor/decoder.v(14[13:20])
    defparam i2_3_lut.init = 16'hbfbf;
    
endmodule
