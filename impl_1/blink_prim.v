// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.14.0.75.2
// Netlist written on Fri Oct 02 19:18:46 2026
//
// Verilog Description of module blink
//

module blink (led) /* synthesis syn_module_defined=1 */ ;   // d:/adelsoft/lattice/projects/bit_processor/blink.v(4[8:13])
    output led;   // d:/adelsoft/lattice/projects/bit_processor/blink.v(5[16:19])
    
    wire clk /* synthesis SET_AS_NETWORK=clk, is_clock=1 */ ;   // d:/adelsoft/lattice/projects/bit_processor/blink.v(9[10:13])
    
    wire GND_net, VCC_net, led_c;
    wire [23:0]cnt;   // d:/adelsoft/lattice/projects/bit_processor/blink.v(19[16:19])
    
    wire led_N_50, n102, n103, n104, n105, n106, n107, n108, 
        n109, n110, n111, n112, n113, n114, n115, n116, n117, 
        n118, n119, n120, n121, n122, n123, n124, n125, n205, 
        n201, n199, n195, n20, n19, n18, n133, n22, n169, 
        n168, n167, n166, n165, n164, n163, n162, n161, n160, 
        n159, n158;
    
    VHI i2 (.Z(VCC_net));
    OSCH u_osc (.STDBY(GND_net), .OSC(clk)) /* synthesis syn_instantiated=1 */ ;
    defparam u_osc.NOM_FREQ = "12.09";
    OB led_pad (.I(led_c), .O(led));   // d:/adelsoft/lattice/projects/bit_processor/blink.v(5[16:19])
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    FD1S3IX cnt_19__i23 (.D(n102), .CK(clk), .CD(n133), .Q(cnt[23])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/adelsoft/lattice/projects/bit_processor/blink.v(27[20:30])
    defparam cnt_19__i23.GSR = "ENABLED";
    LUT4 i1_2_lut (.A(led_c), .B(n133), .Z(led_N_50)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_2_lut.init = 16'h6666;
    LUT4 i95_4_lut (.A(cnt[0]), .B(cnt[19]), .C(cnt[10]), .D(cnt[13]), 
         .Z(n201)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i95_4_lut.init = 16'h8000;
    CCU2D cnt_19_add_4_25 (.A0(cnt[23]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n169), 
          .S0(n102));   // d:/adelsoft/lattice/projects/bit_processor/blink.v(27[20:30])
    defparam cnt_19_add_4_25.INIT0 = 16'hfaaa;
    defparam cnt_19_add_4_25.INIT1 = 16'h0000;
    defparam cnt_19_add_4_25.INJECT1_0 = "NO";
    defparam cnt_19_add_4_25.INJECT1_1 = "NO";
    FD1S3IX cnt_19__i0 (.D(n125), .CK(clk), .CD(n133), .Q(cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/adelsoft/lattice/projects/bit_processor/blink.v(27[20:30])
    defparam cnt_19__i0.GSR = "ENABLED";
    CCU2D cnt_19_add_4_23 (.A0(cnt[21]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[22]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n168), 
          .COUT(n169), .S0(n104), .S1(n103));   // d:/adelsoft/lattice/projects/bit_processor/blink.v(27[20:30])
    defparam cnt_19_add_4_23.INIT0 = 16'hfaaa;
    defparam cnt_19_add_4_23.INIT1 = 16'hfaaa;
    defparam cnt_19_add_4_23.INJECT1_0 = "NO";
    defparam cnt_19_add_4_23.INJECT1_1 = "NO";
    FD1S3AX led_12 (.D(led_N_50), .CK(clk), .Q(led_c)) /* synthesis lse_init_val=0 */ ;   // d:/adelsoft/lattice/projects/bit_processor/blink.v(22[12] 29[8])
    defparam led_12.GSR = "ENABLED";
    FD1S3IX cnt_19__i22 (.D(n103), .CK(clk), .CD(n133), .Q(cnt[22])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/adelsoft/lattice/projects/bit_processor/blink.v(27[20:30])
    defparam cnt_19__i22.GSR = "ENABLED";
    CCU2D cnt_19_add_4_21 (.A0(cnt[19]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[20]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n167), 
          .COUT(n168), .S0(n106), .S1(n105));   // d:/adelsoft/lattice/projects/bit_processor/blink.v(27[20:30])
    defparam cnt_19_add_4_21.INIT0 = 16'hfaaa;
    defparam cnt_19_add_4_21.INIT1 = 16'hfaaa;
    defparam cnt_19_add_4_21.INJECT1_0 = "NO";
    defparam cnt_19_add_4_21.INJECT1_1 = "NO";
    CCU2D cnt_19_add_4_19 (.A0(cnt[17]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[18]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n166), 
          .COUT(n167), .S0(n108), .S1(n107));   // d:/adelsoft/lattice/projects/bit_processor/blink.v(27[20:30])
    defparam cnt_19_add_4_19.INIT0 = 16'hfaaa;
    defparam cnt_19_add_4_19.INIT1 = 16'hfaaa;
    defparam cnt_19_add_4_19.INJECT1_0 = "NO";
    defparam cnt_19_add_4_19.INJECT1_1 = "NO";
    CCU2D cnt_19_add_4_17 (.A0(cnt[15]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n165), 
          .COUT(n166), .S0(n110), .S1(n109));   // d:/adelsoft/lattice/projects/bit_processor/blink.v(27[20:30])
    defparam cnt_19_add_4_17.INIT0 = 16'hfaaa;
    defparam cnt_19_add_4_17.INIT1 = 16'hfaaa;
    defparam cnt_19_add_4_17.INJECT1_0 = "NO";
    defparam cnt_19_add_4_17.INJECT1_1 = "NO";
    CCU2D cnt_19_add_4_15 (.A0(cnt[13]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n164), 
          .COUT(n165), .S0(n112), .S1(n111));   // d:/adelsoft/lattice/projects/bit_processor/blink.v(27[20:30])
    defparam cnt_19_add_4_15.INIT0 = 16'hfaaa;
    defparam cnt_19_add_4_15.INIT1 = 16'hfaaa;
    defparam cnt_19_add_4_15.INJECT1_0 = "NO";
    defparam cnt_19_add_4_15.INJECT1_1 = "NO";
    CCU2D cnt_19_add_4_13 (.A0(cnt[11]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n163), 
          .COUT(n164), .S0(n114), .S1(n113));   // d:/adelsoft/lattice/projects/bit_processor/blink.v(27[20:30])
    defparam cnt_19_add_4_13.INIT0 = 16'hfaaa;
    defparam cnt_19_add_4_13.INIT1 = 16'hfaaa;
    defparam cnt_19_add_4_13.INJECT1_0 = "NO";
    defparam cnt_19_add_4_13.INJECT1_1 = "NO";
    CCU2D cnt_19_add_4_11 (.A0(cnt[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n162), 
          .COUT(n163), .S0(n116), .S1(n115));   // d:/adelsoft/lattice/projects/bit_processor/blink.v(27[20:30])
    defparam cnt_19_add_4_11.INIT0 = 16'hfaaa;
    defparam cnt_19_add_4_11.INIT1 = 16'hfaaa;
    defparam cnt_19_add_4_11.INJECT1_0 = "NO";
    defparam cnt_19_add_4_11.INJECT1_1 = "NO";
    CCU2D cnt_19_add_4_9 (.A0(cnt[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n161), 
          .COUT(n162), .S0(n118), .S1(n117));   // d:/adelsoft/lattice/projects/bit_processor/blink.v(27[20:30])
    defparam cnt_19_add_4_9.INIT0 = 16'hfaaa;
    defparam cnt_19_add_4_9.INIT1 = 16'hfaaa;
    defparam cnt_19_add_4_9.INJECT1_0 = "NO";
    defparam cnt_19_add_4_9.INJECT1_1 = "NO";
    CCU2D cnt_19_add_4_7 (.A0(cnt[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n160), 
          .COUT(n161), .S0(n120), .S1(n119));   // d:/adelsoft/lattice/projects/bit_processor/blink.v(27[20:30])
    defparam cnt_19_add_4_7.INIT0 = 16'hfaaa;
    defparam cnt_19_add_4_7.INIT1 = 16'hfaaa;
    defparam cnt_19_add_4_7.INJECT1_0 = "NO";
    defparam cnt_19_add_4_7.INJECT1_1 = "NO";
    CCU2D cnt_19_add_4_5 (.A0(cnt[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n159), 
          .COUT(n160), .S0(n122), .S1(n121));   // d:/adelsoft/lattice/projects/bit_processor/blink.v(27[20:30])
    defparam cnt_19_add_4_5.INIT0 = 16'hfaaa;
    defparam cnt_19_add_4_5.INIT1 = 16'hfaaa;
    defparam cnt_19_add_4_5.INJECT1_0 = "NO";
    defparam cnt_19_add_4_5.INJECT1_1 = "NO";
    CCU2D cnt_19_add_4_3 (.A0(cnt[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n158), 
          .COUT(n159), .S0(n124), .S1(n123));   // d:/adelsoft/lattice/projects/bit_processor/blink.v(27[20:30])
    defparam cnt_19_add_4_3.INIT0 = 16'hfaaa;
    defparam cnt_19_add_4_3.INIT1 = 16'hfaaa;
    defparam cnt_19_add_4_3.INJECT1_0 = "NO";
    defparam cnt_19_add_4_3.INJECT1_1 = "NO";
    CCU2D cnt_19_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n158), 
          .S1(n125));   // d:/adelsoft/lattice/projects/bit_processor/blink.v(27[20:30])
    defparam cnt_19_add_4_1.INIT0 = 16'hF000;
    defparam cnt_19_add_4_1.INIT1 = 16'h0555;
    defparam cnt_19_add_4_1.INJECT1_0 = "NO";
    defparam cnt_19_add_4_1.INJECT1_1 = "NO";
    VLO i1 (.Z(GND_net));
    GSR GSR_INST (.GSR(VCC_net));
    FD1S3IX cnt_19__i21 (.D(n104), .CK(clk), .CD(n133), .Q(cnt[21])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/adelsoft/lattice/projects/bit_processor/blink.v(27[20:30])
    defparam cnt_19__i21.GSR = "ENABLED";
    FD1S3IX cnt_19__i20 (.D(n105), .CK(clk), .CD(n133), .Q(cnt[20])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/adelsoft/lattice/projects/bit_processor/blink.v(27[20:30])
    defparam cnt_19__i20.GSR = "ENABLED";
    FD1S3IX cnt_19__i19 (.D(n106), .CK(clk), .CD(n133), .Q(cnt[19])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/adelsoft/lattice/projects/bit_processor/blink.v(27[20:30])
    defparam cnt_19__i19.GSR = "ENABLED";
    FD1S3IX cnt_19__i18 (.D(n107), .CK(clk), .CD(n133), .Q(cnt[18])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/adelsoft/lattice/projects/bit_processor/blink.v(27[20:30])
    defparam cnt_19__i18.GSR = "ENABLED";
    FD1S3IX cnt_19__i17 (.D(n108), .CK(clk), .CD(n133), .Q(cnt[17])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/adelsoft/lattice/projects/bit_processor/blink.v(27[20:30])
    defparam cnt_19__i17.GSR = "ENABLED";
    FD1S3IX cnt_19__i16 (.D(n109), .CK(clk), .CD(n133), .Q(cnt[16])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/adelsoft/lattice/projects/bit_processor/blink.v(27[20:30])
    defparam cnt_19__i16.GSR = "ENABLED";
    FD1S3IX cnt_19__i15 (.D(n110), .CK(clk), .CD(n133), .Q(cnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/adelsoft/lattice/projects/bit_processor/blink.v(27[20:30])
    defparam cnt_19__i15.GSR = "ENABLED";
    FD1S3IX cnt_19__i14 (.D(n111), .CK(clk), .CD(n133), .Q(cnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/adelsoft/lattice/projects/bit_processor/blink.v(27[20:30])
    defparam cnt_19__i14.GSR = "ENABLED";
    FD1S3IX cnt_19__i13 (.D(n112), .CK(clk), .CD(n133), .Q(cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/adelsoft/lattice/projects/bit_processor/blink.v(27[20:30])
    defparam cnt_19__i13.GSR = "ENABLED";
    FD1S3IX cnt_19__i12 (.D(n113), .CK(clk), .CD(n133), .Q(cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/adelsoft/lattice/projects/bit_processor/blink.v(27[20:30])
    defparam cnt_19__i12.GSR = "ENABLED";
    FD1S3IX cnt_19__i11 (.D(n114), .CK(clk), .CD(n133), .Q(cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/adelsoft/lattice/projects/bit_processor/blink.v(27[20:30])
    defparam cnt_19__i11.GSR = "ENABLED";
    FD1S3IX cnt_19__i10 (.D(n115), .CK(clk), .CD(n133), .Q(cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/adelsoft/lattice/projects/bit_processor/blink.v(27[20:30])
    defparam cnt_19__i10.GSR = "ENABLED";
    FD1S3IX cnt_19__i9 (.D(n116), .CK(clk), .CD(n133), .Q(cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/adelsoft/lattice/projects/bit_processor/blink.v(27[20:30])
    defparam cnt_19__i9.GSR = "ENABLED";
    FD1S3IX cnt_19__i8 (.D(n117), .CK(clk), .CD(n133), .Q(cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/adelsoft/lattice/projects/bit_processor/blink.v(27[20:30])
    defparam cnt_19__i8.GSR = "ENABLED";
    FD1S3IX cnt_19__i7 (.D(n118), .CK(clk), .CD(n133), .Q(cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/adelsoft/lattice/projects/bit_processor/blink.v(27[20:30])
    defparam cnt_19__i7.GSR = "ENABLED";
    FD1S3IX cnt_19__i6 (.D(n119), .CK(clk), .CD(n133), .Q(cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/adelsoft/lattice/projects/bit_processor/blink.v(27[20:30])
    defparam cnt_19__i6.GSR = "ENABLED";
    FD1S3IX cnt_19__i5 (.D(n120), .CK(clk), .CD(n133), .Q(cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/adelsoft/lattice/projects/bit_processor/blink.v(27[20:30])
    defparam cnt_19__i5.GSR = "ENABLED";
    FD1S3IX cnt_19__i4 (.D(n121), .CK(clk), .CD(n133), .Q(cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/adelsoft/lattice/projects/bit_processor/blink.v(27[20:30])
    defparam cnt_19__i4.GSR = "ENABLED";
    FD1S3IX cnt_19__i3 (.D(n122), .CK(clk), .CD(n133), .Q(cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/adelsoft/lattice/projects/bit_processor/blink.v(27[20:30])
    defparam cnt_19__i3.GSR = "ENABLED";
    FD1S3IX cnt_19__i2 (.D(n123), .CK(clk), .CD(n133), .Q(cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/adelsoft/lattice/projects/bit_processor/blink.v(27[20:30])
    defparam cnt_19__i2.GSR = "ENABLED";
    FD1S3IX cnt_19__i1 (.D(n124), .CK(clk), .CD(n133), .Q(cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/adelsoft/lattice/projects/bit_processor/blink.v(27[20:30])
    defparam cnt_19__i1.GSR = "ENABLED";
    LUT4 i103_4_lut (.A(cnt[12]), .B(n205), .C(n22), .D(cnt[8]), .Z(n133)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // d:/adelsoft/lattice/projects/bit_processor/blink.v(23[13:35])
    defparam i103_4_lut.init = 16'h0800;
    TSALL TSALL_INST (.TSALL(GND_net));
    LUT4 i99_4_lut (.A(cnt[20]), .B(n201), .C(n195), .D(cnt[2]), .Z(n205)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i99_4_lut.init = 16'h8000;
    LUT4 i89_2_lut (.A(cnt[18]), .B(cnt[1]), .Z(n195)) /* synthesis lut_function=(A (B)) */ ;
    defparam i89_2_lut.init = 16'h8888;
    LUT4 i8_4_lut (.A(cnt[15]), .B(cnt[21]), .C(cnt[16]), .D(cnt[7]), 
         .Z(n19)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/adelsoft/lattice/projects/bit_processor/blink.v(23[13:35])
    defparam i8_4_lut.init = 16'hfffe;
    LUT4 i7_4_lut (.A(cnt[23]), .B(cnt[4]), .C(cnt[17]), .D(cnt[9]), 
         .Z(n18)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/adelsoft/lattice/projects/bit_processor/blink.v(23[13:35])
    defparam i7_4_lut.init = 16'hfffe;
    LUT4 i93_2_lut (.A(cnt[6]), .B(cnt[11]), .Z(n199)) /* synthesis lut_function=(A (B)) */ ;
    defparam i93_2_lut.init = 16'h8888;
    LUT4 i9_4_lut (.A(cnt[14]), .B(n18), .C(cnt[5]), .D(cnt[3]), .Z(n20)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/adelsoft/lattice/projects/bit_processor/blink.v(23[13:35])
    defparam i9_4_lut.init = 16'hfffe;
    LUT4 i8_4_lut_adj_1 (.A(n19), .B(n199), .C(cnt[22]), .D(n20), .Z(n22)) /* synthesis lut_function=(A+(((D)+!C)+!B)) */ ;
    defparam i8_4_lut_adj_1.init = 16'hffbf;
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

