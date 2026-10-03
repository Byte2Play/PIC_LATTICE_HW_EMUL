// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.14.0.75.2
// Netlist written on Sat Oct 03 16:04:52 2026
//
// Verilog Description of module top
//

module top (rst_n, led) /* synthesis syn_module_defined=1 */ ;   // d:/adelsoft/lattice/projects/bit_processor/top.v(1[8:11])
    input rst_n;   // d:/adelsoft/lattice/projects/bit_processor/top.v(7[30:35])
    output [7:0]led;   // d:/adelsoft/lattice/projects/bit_processor/top.v(8[30:33])
    
    wire clk /* synthesis SET_AS_NETWORK=clk, is_clock=1 */ ;   // d:/adelsoft/lattice/projects/bit_processor/top.v(11[24:27])
    
    wire GND_net, rst_n_c, led_c_7, led_c_6, led_c_5, led_c_4, led_c_3, 
        led_c_2, led_c_1, led_c_0, clk_out;
    wire [12:0]pc_counter;   // d:/adelsoft/lattice/projects/bit_processor/top.v(13[24:34])
    wire [13:0]mem_data;   // d:/adelsoft/lattice/projects/bit_processor/top.v(14[14:22])
    
    wire VCC_net, n536, n512, n5, n15, n745, n743, n946, n15_adj_91, 
        n552, n579, n586, n15_adj_92, n971, n973, n1061, clk_enable_16, 
        n943;
    
    VHI i7 (.Z(VCC_net));
    OSCH u_osc (.STDBY(GND_net), .OSC(clk)) /* synthesis syn_instantiated=1 */ ;
    defparam u_osc.NOM_FREQ = "12.09";
    pc u_pc (.\mem_data[0] (mem_data[0]), .n5(n5), .\mem_data[1] (mem_data[1]), 
       .GND_net(GND_net), .\pc_counter[0] (pc_counter[0]), .\pc_counter[3] (pc_counter[3]), 
       .\pc_counter[4] (pc_counter[4]), .\pc_counter[1] (pc_counter[1]), 
       .\pc_counter[2] (pc_counter[2]), .clk(clk), .clk_enable_16(clk_enable_16), 
       .n512(n512), .\mem_data[4] (mem_data[4]), .\mem_data[3] (mem_data[3]), 
       .\mem_data[2] (mem_data[2])) /* synthesis syn_module_defined=1 */ ;   // d:/adelsoft/lattice/projects/bit_processor/top.v(29[39] 35[3])
    LUT4 i2_4_lut (.A(pc_counter[3]), .B(pc_counter[4]), .C(pc_counter[1]), 
         .D(pc_counter[2]), .Z(n973)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B+((D)+!C)))) */ ;   // d:/adelsoft/lattice/projects/bit_processor/mem.v(11[12] 12[30])
    defparam i2_4_lut.init = 16'h0012;
    LUT4 i565_4_lut (.A(pc_counter[2]), .B(pc_counter[1]), .C(pc_counter[3]), 
         .D(pc_counter[4]), .Z(n946)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B+((D)+!C)))) */ ;   // d:/adelsoft/lattice/projects/bit_processor/mem.v(11[12] 12[30])
    defparam i565_4_lut.init = 16'h0012;
    OB led_pad_7 (.I(led_c_7), .O(led[7]));   // d:/adelsoft/lattice/projects/bit_processor/top.v(8[30:33])
    LUT4 i2_3_lut_4_lut (.A(pc_counter[1]), .B(pc_counter[2]), .C(pc_counter[3]), 
         .D(pc_counter[4]), .Z(n943)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // d:/adelsoft/lattice/projects/bit_processor/mem.v(11[12] 12[30])
    defparam i2_3_lut_4_lut.init = 16'h0020;
    LUT4 mem_data_7__I_0_i1_1_lut (.A(mem_data[0]), .Z(led_c_0)) /* synthesis lut_function=(!(A)) */ ;   // d:/adelsoft/lattice/projects/bit_processor/top.v(49[15:29])
    defparam mem_data_7__I_0_i1_1_lut.init = 16'h5555;
    GSR GSR_INST (.GSR(VCC_net));
    LUT4 i125_2_lut_3_lut (.A(clk_out), .B(n1061), .C(pc_counter[0]), 
         .Z(n586)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // d:/adelsoft/lattice/projects/bit_processor/mem.v(11[12] 12[30])
    defparam i125_2_lut_3_lut.init = 16'h4040;
    LUT4 mem_data_7__I_0_i6_1_lut (.A(mem_data[5]), .Z(led_c_5)) /* synthesis lut_function=(!(A)) */ ;   // d:/adelsoft/lattice/projects/bit_processor/top.v(49[15:29])
    defparam mem_data_7__I_0_i6_1_lut.init = 16'h5555;
    TSALL TSALL_INST (.TSALL(GND_net));
    LUT4 mem_data_7__I_0_i8_1_lut (.A(mem_data[7]), .Z(led_c_7)) /* synthesis lut_function=(!(A)) */ ;   // d:/adelsoft/lattice/projects/bit_processor/top.v(49[15:29])
    defparam mem_data_7__I_0_i8_1_lut.init = 16'h5555;
    LUT4 i548_2_lut_3_lut (.A(pc_counter[1]), .B(pc_counter[2]), .C(pc_counter[4]), 
         .Z(n536)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // d:/adelsoft/lattice/projects/bit_processor/mem.v(11[12] 12[30])
    defparam i548_2_lut_3_lut.init = 16'h0101;
    LUT4 i1_3_lut_4_lut (.A(pc_counter[1]), .B(pc_counter[2]), .C(pc_counter[0]), 
         .D(pc_counter[3]), .Z(n971)) /* synthesis lut_function=(!(A+(B+!(C+(D))))) */ ;   // d:/adelsoft/lattice/projects/bit_processor/mem.v(11[12] 12[30])
    defparam i1_3_lut_4_lut.init = 16'h1110;
    LUT4 i556_2_lut_3_lut (.A(pc_counter[1]), .B(pc_counter[2]), .C(pc_counter[3]), 
         .Z(n743)) /* synthesis lut_function=(!(A (C)+!A (B (C)))) */ ;   // d:/adelsoft/lattice/projects/bit_processor/mem.v(11[12] 12[30])
    defparam i556_2_lut_3_lut.init = 16'h1f1f;
    LUT4 i119_2_lut_3_lut (.A(clk_out), .B(n1061), .C(pc_counter[4]), 
         .Z(n579)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // d:/adelsoft/lattice/projects/bit_processor/mem.v(11[12] 12[30])
    defparam i119_2_lut_3_lut.init = 16'h4040;
    LUT4 mux_16_Mux_3_i15_4_lut_4_lut (.A(pc_counter[0]), .B(pc_counter[1]), 
         .C(pc_counter[2]), .D(pc_counter[3]), .Z(n15)) /* synthesis lut_function=(!(A (B (C+(D))+!B (C+!(D)))+!A (B+(C+!(D))))) */ ;   // d:/adelsoft/lattice/projects/bit_processor/mem.v(11[12] 12[30])
    defparam mux_16_Mux_3_i15_4_lut_4_lut.init = 16'h0308;
    LUT4 mem_data_7__I_0_i7_1_lut (.A(mem_data[6]), .Z(led_c_6)) /* synthesis lut_function=(!(A)) */ ;   // d:/adelsoft/lattice/projects/bit_processor/top.v(49[15:29])
    defparam mem_data_7__I_0_i7_1_lut.init = 16'h5555;
    LUT4 mem_data_7__I_0_i2_1_lut (.A(mem_data[1]), .Z(led_c_1)) /* synthesis lut_function=(!(A)) */ ;   // d:/adelsoft/lattice/projects/bit_processor/top.v(49[15:29])
    defparam mem_data_7__I_0_i2_1_lut.init = 16'h5555;
    LUT4 i92_4_lut_4_lut (.A(pc_counter[1]), .B(pc_counter[2]), .C(pc_counter[4]), 
         .D(pc_counter[3]), .Z(n552)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A (B+(C+!(D))))) */ ;   // d:/adelsoft/lattice/projects/bit_processor/mem.v(11[12] 12[30])
    defparam i92_4_lut_4_lut.init = 16'h0108;
    IB rst_n_pad (.I(rst_n), .O(rst_n_c));   // d:/adelsoft/lattice/projects/bit_processor/top.v(7[30:35])
    OB led_pad_0 (.I(led_c_0), .O(led[0]));   // d:/adelsoft/lattice/projects/bit_processor/top.v(8[30:33])
    OB led_pad_1 (.I(led_c_1), .O(led[1]));   // d:/adelsoft/lattice/projects/bit_processor/top.v(8[30:33])
    OB led_pad_2 (.I(led_c_2), .O(led[2]));   // d:/adelsoft/lattice/projects/bit_processor/top.v(8[30:33])
    OB led_pad_3 (.I(led_c_3), .O(led[3]));   // d:/adelsoft/lattice/projects/bit_processor/top.v(8[30:33])
    OB led_pad_4 (.I(led_c_4), .O(led[4]));   // d:/adelsoft/lattice/projects/bit_processor/top.v(8[30:33])
    OB led_pad_5 (.I(led_c_5), .O(led[5]));   // d:/adelsoft/lattice/projects/bit_processor/top.v(8[30:33])
    LUT4 mem_data_7__I_0_i3_1_lut (.A(mem_data[2]), .Z(led_c_2)) /* synthesis lut_function=(!(A)) */ ;   // d:/adelsoft/lattice/projects/bit_processor/top.v(49[15:29])
    defparam mem_data_7__I_0_i3_1_lut.init = 16'h5555;
    LUT4 mux_16_Mux_7_i15_4_lut_4_lut (.A(pc_counter[0]), .B(pc_counter[1]), 
         .C(pc_counter[2]), .D(pc_counter[3]), .Z(n15_adj_92)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C+!(D)))+!A (B+(C+!(D))))) */ ;   // d:/adelsoft/lattice/projects/bit_processor/mem.v(11[12] 12[30])
    defparam mux_16_Mux_7_i15_4_lut_4_lut.init = 16'h0380;
    LUT4 mux_16_Mux_5_i15_4_lut_4_lut_4_lut (.A(pc_counter[1]), .B(pc_counter[2]), 
         .C(pc_counter[0]), .D(pc_counter[3]), .Z(n15_adj_91)) /* synthesis lut_function=(!(A+(B ((D)+!C)+!B !(D)))) */ ;   // d:/adelsoft/lattice/projects/bit_processor/mem.v(11[12] 12[30])
    defparam mux_16_Mux_5_i15_4_lut_4_lut_4_lut.init = 16'h1140;
    LUT4 i545_2_lut_3_lut (.A(clk_out), .B(n1061), .C(rst_n_c), .Z(n512)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // d:/adelsoft/lattice/projects/bit_processor/mem.v(11[12] 12[30])
    defparam i545_2_lut_3_lut.init = 16'h0404;
    \clk_div(DIV=4030000)  u_div (.GND_net(GND_net), .clk_out(clk_out), 
            .clk(clk), .n1061(n1061), .clk_enable_16(clk_enable_16)) /* synthesis syn_module_defined=1 */ ;   // d:/adelsoft/lattice/projects/bit_processor/top.v(24[26] 27[6])
    LUT4 mem_data_7__I_0_i5_1_lut (.A(mem_data[4]), .Z(led_c_4)) /* synthesis lut_function=(!(A)) */ ;   // d:/adelsoft/lattice/projects/bit_processor/top.v(49[15:29])
    defparam mem_data_7__I_0_i5_1_lut.init = 16'h5555;
    LUT4 i563_4_lut (.A(pc_counter[0]), .B(pc_counter[3]), .C(pc_counter[2]), 
         .D(pc_counter[1]), .Z(n745)) /* synthesis lut_function=(!(A (B (C+(D)))+!A (B (C)))) */ ;
    defparam i563_4_lut.init = 16'h373f;
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    OB led_pad_6 (.I(led_c_6), .O(led[6]));   // d:/adelsoft/lattice/projects/bit_processor/top.v(8[30:33])
    mem u_mem (.\mem_data[0] (mem_data[0]), .clk(clk), .clk_enable_16(clk_enable_16), 
        .n586(n586), .n536(n536), .\mem_data[1] (mem_data[1]), .n579(n579), 
        .n971(n971), .\mem_data[2] (mem_data[2]), .n973(n973), .\mem_data[3] (mem_data[3]), 
        .n15(n15), .\mem_data[4] (mem_data[4]), .n946(n946), .\mem_data[5] (mem_data[5]), 
        .n15_adj_1(n15_adj_91), .\mem_data[6] (mem_data[6]), .n552(n552), 
        .\mem_data[7] (mem_data[7]), .n15_adj_2(n15_adj_92), .\mem_data[11] (mem_data[11]), 
        .n943(n943), .\mem_data[12] (mem_data[12]), .n743(n743), .\mem_data[13] (mem_data[13]), 
        .n745(n745)) /* synthesis syn_module_defined=1 */ ;   // d:/adelsoft/lattice/projects/bit_processor/top.v(37[6] 41[3])
    decoder u_decoder (.\mem_data[13] (mem_data[13]), .\mem_data[12] (mem_data[12]), 
            .\mem_data[11] (mem_data[11]), .n5(n5)) /* synthesis syn_module_defined=1 */ ;   // d:/adelsoft/lattice/projects/bit_processor/top.v(43[10] 47[3])
    VLO i1 (.Z(GND_net));
    LUT4 mem_data_7__I_0_i4_1_lut (.A(mem_data[3]), .Z(led_c_3)) /* synthesis lut_function=(!(A)) */ ;   // d:/adelsoft/lattice/projects/bit_processor/top.v(49[15:29])
    defparam mem_data_7__I_0_i4_1_lut.init = 16'h5555;
    
endmodule
//
// Verilog Description of module pc
//

module pc (\mem_data[0] , n5, \mem_data[1] , GND_net, \pc_counter[0] , 
           \pc_counter[3] , \pc_counter[4] , \pc_counter[1] , \pc_counter[2] , 
           clk, clk_enable_16, n512, \mem_data[4] , \mem_data[3] , 
           \mem_data[2] ) /* synthesis syn_module_defined=1 */ ;
    input \mem_data[0] ;
    input n5;
    input \mem_data[1] ;
    input GND_net;
    output \pc_counter[0] ;
    output \pc_counter[3] ;
    output \pc_counter[4] ;
    output \pc_counter[1] ;
    output \pc_counter[2] ;
    input clk;
    input clk_enable_16;
    input n512;
    input \mem_data[4] ;
    input \mem_data[3] ;
    input \mem_data[2] ;
    
    wire clk /* synthesis SET_AS_NETWORK=clk, is_clock=1 */ ;   // d:/adelsoft/lattice/projects/bit_processor/top.v(11[24:27])
    wire [12:0]n94;
    wire [12:0]counter_12__N_62;
    
    wire n925, n926;
    
    LUT4 mux_4_i1_3_lut (.A(\mem_data[0] ), .B(n94[0]), .C(n5), .Z(counter_12__N_62[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/adelsoft/lattice/projects/bit_processor/pc.v(20[13] 22[7])
    defparam mux_4_i1_3_lut.init = 16'hcaca;
    LUT4 mux_4_i2_3_lut (.A(\mem_data[1] ), .B(n94[1]), .C(n5), .Z(counter_12__N_62[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/adelsoft/lattice/projects/bit_processor/pc.v(20[13] 22[7])
    defparam mux_4_i2_3_lut.init = 16'hcaca;
    CCU2D add_10_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(\pc_counter[0] ), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n925), .S1(n94[0]));   // d:/adelsoft/lattice/projects/bit_processor/pc.v(21[16:27])
    defparam add_10_1.INIT0 = 16'hF000;
    defparam add_10_1.INIT1 = 16'h5555;
    defparam add_10_1.INJECT1_0 = "NO";
    defparam add_10_1.INJECT1_1 = "NO";
    CCU2D add_10_5 (.A0(\pc_counter[3] ), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\pc_counter[4] ), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n926), .S0(n94[3]), .S1(n94[4]));   // d:/adelsoft/lattice/projects/bit_processor/pc.v(21[16:27])
    defparam add_10_5.INIT0 = 16'h5aaa;
    defparam add_10_5.INIT1 = 16'h5aaa;
    defparam add_10_5.INJECT1_0 = "NO";
    defparam add_10_5.INJECT1_1 = "NO";
    CCU2D add_10_3 (.A0(\pc_counter[1] ), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\pc_counter[2] ), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n925), .COUT(n926), .S0(n94[1]), .S1(n94[2]));   // d:/adelsoft/lattice/projects/bit_processor/pc.v(21[16:27])
    defparam add_10_3.INIT0 = 16'h5aaa;
    defparam add_10_3.INIT1 = 16'h5aaa;
    defparam add_10_3.INJECT1_0 = "NO";
    defparam add_10_3.INJECT1_1 = "NO";
    FD1P3IX counter__i4 (.D(counter_12__N_62[4]), .SP(clk_enable_16), .CD(n512), 
            .CK(clk), .Q(\pc_counter[4] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=39, LSE_RCOL=3, LSE_LLINE=29, LSE_RLINE=35 */ ;   // d:/adelsoft/lattice/projects/bit_processor/pc.v(14[12] 24[8])
    defparam counter__i4.GSR = "ENABLED";
    FD1P3IX counter__i3 (.D(counter_12__N_62[3]), .SP(clk_enable_16), .CD(n512), 
            .CK(clk), .Q(\pc_counter[3] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=39, LSE_RCOL=3, LSE_LLINE=29, LSE_RLINE=35 */ ;   // d:/adelsoft/lattice/projects/bit_processor/pc.v(14[12] 24[8])
    defparam counter__i3.GSR = "ENABLED";
    FD1P3IX counter__i2 (.D(counter_12__N_62[2]), .SP(clk_enable_16), .CD(n512), 
            .CK(clk), .Q(\pc_counter[2] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=39, LSE_RCOL=3, LSE_LLINE=29, LSE_RLINE=35 */ ;   // d:/adelsoft/lattice/projects/bit_processor/pc.v(14[12] 24[8])
    defparam counter__i2.GSR = "ENABLED";
    FD1P3IX counter__i1 (.D(counter_12__N_62[1]), .SP(clk_enable_16), .CD(n512), 
            .CK(clk), .Q(\pc_counter[1] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=39, LSE_RCOL=3, LSE_LLINE=29, LSE_RLINE=35 */ ;   // d:/adelsoft/lattice/projects/bit_processor/pc.v(14[12] 24[8])
    defparam counter__i1.GSR = "ENABLED";
    LUT4 mux_4_i5_3_lut (.A(\mem_data[4] ), .B(n94[4]), .C(n5), .Z(counter_12__N_62[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/adelsoft/lattice/projects/bit_processor/pc.v(20[13] 22[7])
    defparam mux_4_i5_3_lut.init = 16'hcaca;
    FD1P3IX counter__i0 (.D(counter_12__N_62[0]), .SP(clk_enable_16), .CD(n512), 
            .CK(clk), .Q(\pc_counter[0] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=39, LSE_RCOL=3, LSE_LLINE=29, LSE_RLINE=35 */ ;   // d:/adelsoft/lattice/projects/bit_processor/pc.v(14[12] 24[8])
    defparam counter__i0.GSR = "ENABLED";
    LUT4 mux_4_i4_3_lut (.A(\mem_data[3] ), .B(n94[3]), .C(n5), .Z(counter_12__N_62[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/adelsoft/lattice/projects/bit_processor/pc.v(20[13] 22[7])
    defparam mux_4_i4_3_lut.init = 16'hcaca;
    LUT4 mux_4_i3_3_lut (.A(\mem_data[2] ), .B(n94[2]), .C(n5), .Z(counter_12__N_62[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/adelsoft/lattice/projects/bit_processor/pc.v(20[13] 22[7])
    defparam mux_4_i3_3_lut.init = 16'hcaca;
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module \clk_div(DIV=4030000) 
//

module \clk_div(DIV=4030000)  (GND_net, clk_out, clk, n1061, clk_enable_16) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    output clk_out;
    input clk;
    output n1061;
    output clk_enable_16;
    
    wire clk /* synthesis SET_AS_NETWORK=clk, is_clock=1 */ ;   // d:/adelsoft/lattice/projects/bit_processor/top.v(11[24:27])
    wire [21:0]cnt;   // d:/adelsoft/lattice/projects/bit_processor/clk.v(10[27:30])
    
    wire n1005, n935;
    wire [21:0]n93;
    
    wire n936, n1035, n1011, n1009, clk_out_N_48, n932, n933, 
        n934, n937, n938, n939, n940, n941, n942, n13, n11, 
        n1013;
    
    LUT4 i529_4_lut (.A(cnt[9]), .B(cnt[8]), .C(cnt[1]), .D(cnt[2]), 
         .Z(n1005)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i529_4_lut.init = 16'h8000;
    CCU2D cnt_50_add_4_9 (.A0(cnt[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n935), 
          .COUT(n936), .S0(n93[7]), .S1(n93[8]));   // d:/adelsoft/lattice/projects/bit_processor/clk.v(23[24:31])
    defparam cnt_50_add_4_9.INIT0 = 16'hfaaa;
    defparam cnt_50_add_4_9.INIT1 = 16'hfaaa;
    defparam cnt_50_add_4_9.INJECT1_0 = "NO";
    defparam cnt_50_add_4_9.INJECT1_1 = "NO";
    LUT4 i1_2_lut_4_lut (.A(n1035), .B(n1011), .C(n1009), .D(clk_out), 
         .Z(clk_out_N_48)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // d:/adelsoft/lattice/projects/bit_processor/clk.v(19[13:29])
    defparam i1_2_lut_4_lut.init = 16'h7f80;
    CCU2D cnt_50_add_4_3 (.A0(cnt[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n932), 
          .COUT(n933), .S0(n93[1]), .S1(n93[2]));   // d:/adelsoft/lattice/projects/bit_processor/clk.v(23[24:31])
    defparam cnt_50_add_4_3.INIT0 = 16'hfaaa;
    defparam cnt_50_add_4_3.INIT1 = 16'hfaaa;
    defparam cnt_50_add_4_3.INJECT1_0 = "NO";
    defparam cnt_50_add_4_3.INJECT1_1 = "NO";
    CCU2D cnt_50_add_4_7 (.A0(cnt[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n934), 
          .COUT(n935), .S0(n93[5]), .S1(n93[6]));   // d:/adelsoft/lattice/projects/bit_processor/clk.v(23[24:31])
    defparam cnt_50_add_4_7.INIT0 = 16'hfaaa;
    defparam cnt_50_add_4_7.INIT1 = 16'hfaaa;
    defparam cnt_50_add_4_7.INJECT1_0 = "NO";
    defparam cnt_50_add_4_7.INJECT1_1 = "NO";
    CCU2D cnt_50_add_4_13 (.A0(cnt[11]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n937), 
          .COUT(n938), .S0(n93[11]), .S1(n93[12]));   // d:/adelsoft/lattice/projects/bit_processor/clk.v(23[24:31])
    defparam cnt_50_add_4_13.INIT0 = 16'hfaaa;
    defparam cnt_50_add_4_13.INIT1 = 16'hfaaa;
    defparam cnt_50_add_4_13.INJECT1_0 = "NO";
    defparam cnt_50_add_4_13.INJECT1_1 = "NO";
    CCU2D cnt_50_add_4_17 (.A0(cnt[15]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n939), 
          .COUT(n940), .S0(n93[15]), .S1(n93[16]));   // d:/adelsoft/lattice/projects/bit_processor/clk.v(23[24:31])
    defparam cnt_50_add_4_17.INIT0 = 16'hfaaa;
    defparam cnt_50_add_4_17.INIT1 = 16'hfaaa;
    defparam cnt_50_add_4_17.INJECT1_0 = "NO";
    defparam cnt_50_add_4_17.INJECT1_1 = "NO";
    CCU2D cnt_50_add_4_21 (.A0(cnt[19]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[20]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n941), 
          .COUT(n942), .S0(n93[19]), .S1(n93[20]));   // d:/adelsoft/lattice/projects/bit_processor/clk.v(23[24:31])
    defparam cnt_50_add_4_21.INIT0 = 16'hfaaa;
    defparam cnt_50_add_4_21.INIT1 = 16'hfaaa;
    defparam cnt_50_add_4_21.INJECT1_0 = "NO";
    defparam cnt_50_add_4_21.INJECT1_1 = "NO";
    CCU2D cnt_50_add_4_5 (.A0(cnt[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n933), 
          .COUT(n934), .S0(n93[3]), .S1(n93[4]));   // d:/adelsoft/lattice/projects/bit_processor/clk.v(23[24:31])
    defparam cnt_50_add_4_5.INIT0 = 16'hfaaa;
    defparam cnt_50_add_4_5.INIT1 = 16'hfaaa;
    defparam cnt_50_add_4_5.INJECT1_0 = "NO";
    defparam cnt_50_add_4_5.INJECT1_1 = "NO";
    CCU2D cnt_50_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n932), 
          .S1(n93[0]));   // d:/adelsoft/lattice/projects/bit_processor/clk.v(23[24:31])
    defparam cnt_50_add_4_1.INIT0 = 16'hF000;
    defparam cnt_50_add_4_1.INIT1 = 16'h0555;
    defparam cnt_50_add_4_1.INJECT1_0 = "NO";
    defparam cnt_50_add_4_1.INJECT1_1 = "NO";
    CCU2D cnt_50_add_4_19 (.A0(cnt[17]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[18]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n940), 
          .COUT(n941), .S0(n93[17]), .S1(n93[18]));   // d:/adelsoft/lattice/projects/bit_processor/clk.v(23[24:31])
    defparam cnt_50_add_4_19.INIT0 = 16'hfaaa;
    defparam cnt_50_add_4_19.INIT1 = 16'hfaaa;
    defparam cnt_50_add_4_19.INJECT1_0 = "NO";
    defparam cnt_50_add_4_19.INJECT1_1 = "NO";
    CCU2D cnt_50_add_4_11 (.A0(cnt[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n936), 
          .COUT(n937), .S0(n93[9]), .S1(n93[10]));   // d:/adelsoft/lattice/projects/bit_processor/clk.v(23[24:31])
    defparam cnt_50_add_4_11.INIT0 = 16'hfaaa;
    defparam cnt_50_add_4_11.INIT1 = 16'hfaaa;
    defparam cnt_50_add_4_11.INJECT1_0 = "NO";
    defparam cnt_50_add_4_11.INJECT1_1 = "NO";
    LUT4 i559_4_lut (.A(n13), .B(n11), .C(cnt[6]), .D(n1013), .Z(n1035)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // d:/adelsoft/lattice/projects/bit_processor/clk.v(19[13:29])
    defparam i559_4_lut.init = 16'h0100;
    CCU2D cnt_50_add_4_15 (.A0(cnt[13]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n938), 
          .COUT(n939), .S0(n93[13]), .S1(n93[14]));   // d:/adelsoft/lattice/projects/bit_processor/clk.v(23[24:31])
    defparam cnt_50_add_4_15.INIT0 = 16'hfaaa;
    defparam cnt_50_add_4_15.INIT1 = 16'hfaaa;
    defparam cnt_50_add_4_15.INJECT1_0 = "NO";
    defparam cnt_50_add_4_15.INJECT1_1 = "NO";
    FD1S3IX cnt_50__i20 (.D(n93[20]), .CK(clk), .CD(n1061), .Q(cnt[20])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/adelsoft/lattice/projects/bit_processor/clk.v(23[24:31])
    defparam cnt_50__i20.GSR = "ENABLED";
    FD1S3IX cnt_50__i19 (.D(n93[19]), .CK(clk), .CD(n1061), .Q(cnt[19])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/adelsoft/lattice/projects/bit_processor/clk.v(23[24:31])
    defparam cnt_50__i19.GSR = "ENABLED";
    FD1S3IX cnt_50__i18 (.D(n93[18]), .CK(clk), .CD(n1061), .Q(cnt[18])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/adelsoft/lattice/projects/bit_processor/clk.v(23[24:31])
    defparam cnt_50__i18.GSR = "ENABLED";
    FD1S3IX cnt_50__i17 (.D(n93[17]), .CK(clk), .CD(n1061), .Q(cnt[17])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/adelsoft/lattice/projects/bit_processor/clk.v(23[24:31])
    defparam cnt_50__i17.GSR = "ENABLED";
    FD1S3IX cnt_50__i16 (.D(n93[16]), .CK(clk), .CD(n1061), .Q(cnt[16])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/adelsoft/lattice/projects/bit_processor/clk.v(23[24:31])
    defparam cnt_50__i16.GSR = "ENABLED";
    FD1S3IX cnt_50__i15 (.D(n93[15]), .CK(clk), .CD(n1061), .Q(cnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/adelsoft/lattice/projects/bit_processor/clk.v(23[24:31])
    defparam cnt_50__i15.GSR = "ENABLED";
    FD1S3IX cnt_50__i14 (.D(n93[14]), .CK(clk), .CD(n1061), .Q(cnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/adelsoft/lattice/projects/bit_processor/clk.v(23[24:31])
    defparam cnt_50__i14.GSR = "ENABLED";
    FD1S3IX cnt_50__i13 (.D(n93[13]), .CK(clk), .CD(n1061), .Q(cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/adelsoft/lattice/projects/bit_processor/clk.v(23[24:31])
    defparam cnt_50__i13.GSR = "ENABLED";
    FD1S3IX cnt_50__i12 (.D(n93[12]), .CK(clk), .CD(n1061), .Q(cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/adelsoft/lattice/projects/bit_processor/clk.v(23[24:31])
    defparam cnt_50__i12.GSR = "ENABLED";
    FD1S3IX cnt_50__i11 (.D(n93[11]), .CK(clk), .CD(n1061), .Q(cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/adelsoft/lattice/projects/bit_processor/clk.v(23[24:31])
    defparam cnt_50__i11.GSR = "ENABLED";
    FD1S3IX cnt_50__i10 (.D(n93[10]), .CK(clk), .CD(n1061), .Q(cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/adelsoft/lattice/projects/bit_processor/clk.v(23[24:31])
    defparam cnt_50__i10.GSR = "ENABLED";
    FD1S3IX cnt_50__i9 (.D(n93[9]), .CK(clk), .CD(n1061), .Q(cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/adelsoft/lattice/projects/bit_processor/clk.v(23[24:31])
    defparam cnt_50__i9.GSR = "ENABLED";
    FD1S3IX cnt_50__i8 (.D(n93[8]), .CK(clk), .CD(n1061), .Q(cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/adelsoft/lattice/projects/bit_processor/clk.v(23[24:31])
    defparam cnt_50__i8.GSR = "ENABLED";
    FD1S3IX cnt_50__i7 (.D(n93[7]), .CK(clk), .CD(n1061), .Q(cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/adelsoft/lattice/projects/bit_processor/clk.v(23[24:31])
    defparam cnt_50__i7.GSR = "ENABLED";
    FD1S3IX cnt_50__i6 (.D(n93[6]), .CK(clk), .CD(n1061), .Q(cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/adelsoft/lattice/projects/bit_processor/clk.v(23[24:31])
    defparam cnt_50__i6.GSR = "ENABLED";
    FD1S3IX cnt_50__i5 (.D(n93[5]), .CK(clk), .CD(n1061), .Q(cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/adelsoft/lattice/projects/bit_processor/clk.v(23[24:31])
    defparam cnt_50__i5.GSR = "ENABLED";
    FD1S3IX cnt_50__i4 (.D(n93[4]), .CK(clk), .CD(n1061), .Q(cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/adelsoft/lattice/projects/bit_processor/clk.v(23[24:31])
    defparam cnt_50__i4.GSR = "ENABLED";
    FD1S3IX cnt_50__i3 (.D(n93[3]), .CK(clk), .CD(n1061), .Q(cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/adelsoft/lattice/projects/bit_processor/clk.v(23[24:31])
    defparam cnt_50__i3.GSR = "ENABLED";
    FD1S3IX cnt_50__i2 (.D(n93[2]), .CK(clk), .CD(n1061), .Q(cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/adelsoft/lattice/projects/bit_processor/clk.v(23[24:31])
    defparam cnt_50__i2.GSR = "ENABLED";
    FD1S3IX cnt_50__i1 (.D(n93[1]), .CK(clk), .CD(n1061), .Q(cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/adelsoft/lattice/projects/bit_processor/clk.v(23[24:31])
    defparam cnt_50__i1.GSR = "ENABLED";
    LUT4 i560_3_lut_rep_7 (.A(n1035), .B(n1011), .C(n1009), .Z(n1061)) /* synthesis lut_function=(A (B (C))) */ ;   // d:/adelsoft/lattice/projects/bit_processor/clk.v(19[13:29])
    defparam i560_3_lut_rep_7.init = 16'h8080;
    LUT4 i535_4_lut (.A(cnt[4]), .B(cnt[13]), .C(cnt[0]), .D(cnt[18]), 
         .Z(n1011)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i535_4_lut.init = 16'h8000;
    LUT4 i533_4_lut (.A(cnt[20]), .B(cnt[11]), .C(cnt[15]), .D(cnt[12]), 
         .Z(n1009)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i533_4_lut.init = 16'h8000;
    LUT4 i5_4_lut (.A(cnt[14]), .B(cnt[7]), .C(cnt[21]), .D(cnt[16]), 
         .Z(n13)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/adelsoft/lattice/projects/bit_processor/clk.v(19[13:29])
    defparam i5_4_lut.init = 16'hfffe;
    FD1S3IX cnt_50__i0 (.D(n93[0]), .CK(clk), .CD(n1061), .Q(cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/adelsoft/lattice/projects/bit_processor/clk.v(23[24:31])
    defparam cnt_50__i0.GSR = "ENABLED";
    LUT4 i3_2_lut (.A(cnt[5]), .B(cnt[3]), .Z(n11)) /* synthesis lut_function=(A+(B)) */ ;   // d:/adelsoft/lattice/projects/bit_processor/clk.v(19[13:29])
    defparam i3_2_lut.init = 16'heeee;
    LUT4 i552_2_lut_rep_6_4_lut (.A(n1035), .B(n1011), .C(n1009), .D(clk_out), 
         .Z(clk_enable_16)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // d:/adelsoft/lattice/projects/bit_processor/clk.v(19[13:29])
    defparam i552_2_lut_rep_6_4_lut.init = 16'h0080;
    CCU2D cnt_50_add_4_23 (.A0(cnt[21]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n942), 
          .S0(n93[21]));   // d:/adelsoft/lattice/projects/bit_processor/clk.v(23[24:31])
    defparam cnt_50_add_4_23.INIT0 = 16'hfaaa;
    defparam cnt_50_add_4_23.INIT1 = 16'h0000;
    defparam cnt_50_add_4_23.INJECT1_0 = "NO";
    defparam cnt_50_add_4_23.INJECT1_1 = "NO";
    LUT4 i537_4_lut (.A(cnt[19]), .B(n1005), .C(cnt[17]), .D(cnt[10]), 
         .Z(n1013)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i537_4_lut.init = 16'h8000;
    FD1S3IX cnt_50__i21 (.D(n93[21]), .CK(clk), .CD(n1061), .Q(cnt[21])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/adelsoft/lattice/projects/bit_processor/clk.v(23[24:31])
    defparam cnt_50__i21.GSR = "ENABLED";
    FD1S3AX clk_out_12 (.D(clk_out_N_48), .CK(clk), .Q(clk_out)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=24, LSE_RLINE=27 */ ;   // d:/adelsoft/lattice/projects/bit_processor/clk.v(18[12] 25[8])
    defparam clk_out_12.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module mem
//

module mem (\mem_data[0] , clk, clk_enable_16, n586, n536, \mem_data[1] , 
            n579, n971, \mem_data[2] , n973, \mem_data[3] , n15, 
            \mem_data[4] , n946, \mem_data[5] , n15_adj_1, \mem_data[6] , 
            n552, \mem_data[7] , n15_adj_2, \mem_data[11] , n943, 
            \mem_data[12] , n743, \mem_data[13] , n745) /* synthesis syn_module_defined=1 */ ;
    output \mem_data[0] ;
    input clk;
    input clk_enable_16;
    input n586;
    input n536;
    output \mem_data[1] ;
    input n579;
    input n971;
    output \mem_data[2] ;
    input n973;
    output \mem_data[3] ;
    input n15;
    output \mem_data[4] ;
    input n946;
    output \mem_data[5] ;
    input n15_adj_1;
    output \mem_data[6] ;
    input n552;
    output \mem_data[7] ;
    input n15_adj_2;
    output \mem_data[11] ;
    input n943;
    output \mem_data[12] ;
    input n743;
    output \mem_data[13] ;
    input n745;
    
    wire clk /* synthesis SET_AS_NETWORK=clk, is_clock=1 */ ;   // d:/adelsoft/lattice/projects/bit_processor/top.v(11[24:27])
    
    FD1P3IX dato__i1 (.D(n536), .SP(clk_enable_16), .CD(n586), .CK(clk), 
            .Q(\mem_data[0] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=3, LSE_LLINE=37, LSE_RLINE=41 */ ;   // d:/adelsoft/lattice/projects/bit_processor/mem.v(11[12] 12[30])
    defparam dato__i1.GSR = "ENABLED";
    FD1P3IX dato__i2 (.D(n971), .SP(clk_enable_16), .CD(n579), .CK(clk), 
            .Q(\mem_data[1] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=3, LSE_LLINE=37, LSE_RLINE=41 */ ;   // d:/adelsoft/lattice/projects/bit_processor/mem.v(11[12] 12[30])
    defparam dato__i2.GSR = "ENABLED";
    FD1P3IX dato__i3 (.D(n973), .SP(clk_enable_16), .CD(n586), .CK(clk), 
            .Q(\mem_data[2] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=3, LSE_LLINE=37, LSE_RLINE=41 */ ;   // d:/adelsoft/lattice/projects/bit_processor/mem.v(11[12] 12[30])
    defparam dato__i3.GSR = "ENABLED";
    FD1P3IX dato__i4 (.D(n15), .SP(clk_enable_16), .CD(n579), .CK(clk), 
            .Q(\mem_data[3] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=3, LSE_LLINE=37, LSE_RLINE=41 */ ;   // d:/adelsoft/lattice/projects/bit_processor/mem.v(11[12] 12[30])
    defparam dato__i4.GSR = "ENABLED";
    FD1P3IX dato__i5 (.D(n946), .SP(clk_enable_16), .CD(n586), .CK(clk), 
            .Q(\mem_data[4] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=3, LSE_LLINE=37, LSE_RLINE=41 */ ;   // d:/adelsoft/lattice/projects/bit_processor/mem.v(11[12] 12[30])
    defparam dato__i5.GSR = "ENABLED";
    FD1P3IX dato__i6 (.D(n15_adj_1), .SP(clk_enable_16), .CD(n579), .CK(clk), 
            .Q(\mem_data[5] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=3, LSE_LLINE=37, LSE_RLINE=41 */ ;   // d:/adelsoft/lattice/projects/bit_processor/mem.v(11[12] 12[30])
    defparam dato__i6.GSR = "ENABLED";
    FD1P3IX dato__i7 (.D(n552), .SP(clk_enable_16), .CD(n586), .CK(clk), 
            .Q(\mem_data[6] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=3, LSE_LLINE=37, LSE_RLINE=41 */ ;   // d:/adelsoft/lattice/projects/bit_processor/mem.v(11[12] 12[30])
    defparam dato__i7.GSR = "ENABLED";
    FD1P3IX dato__i8 (.D(n15_adj_2), .SP(clk_enable_16), .CD(n579), .CK(clk), 
            .Q(\mem_data[7] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=3, LSE_LLINE=37, LSE_RLINE=41 */ ;   // d:/adelsoft/lattice/projects/bit_processor/mem.v(11[12] 12[30])
    defparam dato__i8.GSR = "ENABLED";
    FD1P3IX dato__i9 (.D(n943), .SP(clk_enable_16), .CD(n586), .CK(clk), 
            .Q(\mem_data[11] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=3, LSE_LLINE=37, LSE_RLINE=41 */ ;   // d:/adelsoft/lattice/projects/bit_processor/mem.v(11[12] 12[30])
    defparam dato__i9.GSR = "ENABLED";
    FD1P3IX dato__i10 (.D(n743), .SP(clk_enable_16), .CD(n579), .CK(clk), 
            .Q(\mem_data[12] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=3, LSE_LLINE=37, LSE_RLINE=41 */ ;   // d:/adelsoft/lattice/projects/bit_processor/mem.v(11[12] 12[30])
    defparam dato__i10.GSR = "ENABLED";
    FD1P3IX dato__i11 (.D(n745), .SP(clk_enable_16), .CD(n579), .CK(clk), 
            .Q(\mem_data[13] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=3, LSE_LLINE=37, LSE_RLINE=41 */ ;   // d:/adelsoft/lattice/projects/bit_processor/mem.v(11[12] 12[30])
    defparam dato__i11.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module decoder
//

module decoder (\mem_data[13] , \mem_data[12] , \mem_data[11] , n5) /* synthesis syn_module_defined=1 */ ;
    input \mem_data[13] ;
    input \mem_data[12] ;
    input \mem_data[11] ;
    output n5;
    
    
    LUT4 i2_3_lut (.A(\mem_data[13] ), .B(\mem_data[12] ), .C(\mem_data[11] ), 
         .Z(n5)) /* synthesis lut_function=((B+!(C))+!A) */ ;
    defparam i2_3_lut.init = 16'hdfdf;
    
endmodule
