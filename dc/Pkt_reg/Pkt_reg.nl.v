/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : V-2023.12-SP1
// Date      : Tue Mar 18 14:24:50 2025
/////////////////////////////////////////////////////////////


module Pkt_reg ( din, pkt_rec, en, clk, rst, dout, SPI_en );
  input [63:0] din;
  output [7:0] dout;
  input pkt_rec, en, clk, rst, SPI_en;
  wire   n32, n33, n34, n35, n36, n37, n39, n40, n41, n42, n43, n44, n45, n46,
         n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60,
         n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74,
         n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n101, n102,
         n103, n104, n105, n106, n107, n108, n109, n110, n111, n112, n113,
         n114, n115, n116, n117, n118, n119, n120, n121, n122, n123, n124,
         n125, n126, n127, n128, n129, n130, n131, n132, n133, n134, n135,
         n136, n137, n138, n139, n140, n141, n142, n143, n144, n145, n146,
         n147, n148, n149, n150, n151, n152, n153, n154, n155, n156, n157,
         n158, n159, n160, n161, n162, n163, n164, n165, n166, n167, n168,
         n169, n170, n171, n172, n173, n174, n175, n176, n177, n178, n179,
         n180, n181, n182, n183, n184, n185, n186, n187, n188, n189;
  wire   [63:0] pkt_reg;

  UDB116SVT24_FDPQ_V2_3 \pkt_reg_reg[7]  ( .D(n96), .CK(clk), .Q(pkt_reg[7])
         );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_reg[15]  ( .D(n88), .CK(clk), .Q(pkt_reg[15])
         );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_reg[23]  ( .D(n80), .CK(clk), .Q(pkt_reg[23])
         );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_reg[31]  ( .D(n72), .CK(clk), .Q(pkt_reg[31])
         );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_reg[39]  ( .D(n64), .CK(clk), .Q(pkt_reg[39])
         );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_reg[47]  ( .D(n56), .CK(clk), .Q(pkt_reg[47])
         );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_reg[55]  ( .D(n48), .CK(clk), .Q(pkt_reg[55])
         );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_reg[63]  ( .D(n40), .CK(clk), .Q(pkt_reg[63])
         );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_reg[6]  ( .D(n97), .CK(clk), .Q(pkt_reg[6])
         );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_reg[14]  ( .D(n89), .CK(clk), .Q(pkt_reg[14])
         );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_reg[22]  ( .D(n81), .CK(clk), .Q(pkt_reg[22])
         );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_reg[30]  ( .D(n73), .CK(clk), .Q(pkt_reg[30])
         );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_reg[38]  ( .D(n65), .CK(clk), .Q(pkt_reg[38])
         );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_reg[46]  ( .D(n57), .CK(clk), .Q(pkt_reg[46])
         );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_reg[62]  ( .D(n41), .CK(clk), .Q(pkt_reg[62])
         );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_reg[5]  ( .D(n98), .CK(clk), .Q(pkt_reg[5])
         );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_reg[13]  ( .D(n90), .CK(clk), .Q(pkt_reg[13])
         );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_reg[21]  ( .D(n82), .CK(clk), .Q(pkt_reg[21])
         );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_reg[29]  ( .D(n74), .CK(clk), .Q(pkt_reg[29])
         );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_reg[37]  ( .D(n66), .CK(clk), .Q(pkt_reg[37])
         );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_reg[45]  ( .D(n58), .CK(clk), .Q(pkt_reg[45])
         );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_reg[53]  ( .D(n50), .CK(clk), .Q(pkt_reg[53])
         );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_reg[61]  ( .D(n42), .CK(clk), .Q(pkt_reg[61])
         );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_reg[4]  ( .D(n99), .CK(clk), .Q(pkt_reg[4])
         );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_reg[12]  ( .D(n91), .CK(clk), .Q(pkt_reg[12])
         );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_reg[20]  ( .D(n83), .CK(clk), .Q(pkt_reg[20])
         );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_reg[28]  ( .D(n75), .CK(clk), .Q(pkt_reg[28])
         );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_reg[36]  ( .D(n67), .CK(clk), .Q(pkt_reg[36])
         );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_reg[52]  ( .D(n51), .CK(clk), .Q(pkt_reg[52])
         );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_reg[60]  ( .D(n43), .CK(clk), .Q(pkt_reg[60])
         );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_reg[11]  ( .D(n92), .CK(clk), .Q(pkt_reg[11])
         );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_reg[19]  ( .D(n84), .CK(clk), .Q(pkt_reg[19])
         );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_reg[27]  ( .D(n76), .CK(clk), .Q(pkt_reg[27])
         );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_reg[35]  ( .D(n68), .CK(clk), .Q(pkt_reg[35])
         );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_reg[43]  ( .D(n60), .CK(clk), .Q(pkt_reg[43])
         );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_reg[51]  ( .D(n52), .CK(clk), .Q(pkt_reg[51])
         );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_reg[59]  ( .D(n44), .CK(clk), .Q(pkt_reg[59])
         );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_reg[2]  ( .D(n101), .CK(clk), .Q(pkt_reg[2])
         );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_reg[10]  ( .D(n93), .CK(clk), .Q(pkt_reg[10])
         );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_reg[18]  ( .D(n85), .CK(clk), .Q(pkt_reg[18])
         );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_reg[26]  ( .D(n77), .CK(clk), .Q(pkt_reg[26])
         );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_reg[34]  ( .D(n69), .CK(clk), .Q(pkt_reg[34])
         );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_reg[50]  ( .D(n53), .CK(clk), .Q(pkt_reg[50])
         );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_reg[58]  ( .D(n45), .CK(clk), .Q(pkt_reg[58])
         );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_reg[1]  ( .D(n102), .CK(clk), .Q(pkt_reg[1])
         );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_reg[9]  ( .D(n94), .CK(clk), .Q(pkt_reg[9])
         );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_reg[17]  ( .D(n86), .CK(clk), .Q(pkt_reg[17])
         );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_reg[25]  ( .D(n78), .CK(clk), .Q(pkt_reg[25])
         );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_reg[33]  ( .D(n70), .CK(clk), .Q(pkt_reg[33])
         );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_reg[41]  ( .D(n62), .CK(clk), .Q(pkt_reg[41])
         );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_reg[49]  ( .D(n54), .CK(clk), .Q(pkt_reg[49])
         );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_reg[57]  ( .D(n46), .CK(clk), .Q(pkt_reg[57])
         );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_reg[0]  ( .D(n103), .CK(clk), .Q(pkt_reg[0])
         );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_reg[8]  ( .D(n95), .CK(clk), .Q(pkt_reg[8])
         );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_reg[16]  ( .D(n87), .CK(clk), .Q(pkt_reg[16])
         );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_reg[24]  ( .D(n79), .CK(clk), .Q(pkt_reg[24])
         );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_reg[40]  ( .D(n63), .CK(clk), .Q(pkt_reg[40])
         );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_reg[48]  ( .D(n55), .CK(clk), .Q(pkt_reg[48])
         );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_reg[56]  ( .D(n47), .CK(clk), .Q(pkt_reg[56])
         );
  UDB116SVT24_FDPQ_V2_3 \dout_reg[7]  ( .D(n39), .CK(clk), .Q(dout[7]) );
  UDB116SVT24_FDPQ_V2_3 \dout_reg[5]  ( .D(n37), .CK(clk), .Q(dout[5]) );
  UDB116SVT24_FDPQ_V2_3 \dout_reg[4]  ( .D(n36), .CK(clk), .Q(dout[4]) );
  UDB116SVT24_FDPQ_V2_3 \dout_reg[3]  ( .D(n35), .CK(clk), .Q(dout[3]) );
  UDB116SVT24_FDPQ_V2_3 \dout_reg[2]  ( .D(n34), .CK(clk), .Q(dout[2]) );
  UDB116SVT24_FDPQ_V2_3 \dout_reg[1]  ( .D(n33), .CK(clk), .Q(dout[1]) );
  UDB116SVT24_FDPQ_V2_3 \dout_reg[0]  ( .D(n32), .CK(clk), .Q(dout[0]) );
  UDB116SVT24_FDPQB_2 \pkt_reg_reg[3]  ( .D(n109), .CK(clk), .QN(pkt_reg[3])
         );
  UDB116SVT24_FDPQ_1 \pkt_reg_reg[54]  ( .D(n49), .CK(clk), .Q(pkt_reg[54]) );
  UDB116SVT24_FDPQ_1 \pkt_reg_reg[44]  ( .D(n59), .CK(clk), .Q(pkt_reg[44]) );
  UDB116SVT24_FDPQ_1 \pkt_reg_reg[42]  ( .D(n61), .CK(clk), .Q(pkt_reg[42]) );
  UDB116SVT24_FDPQ_1 \pkt_reg_reg[32]  ( .D(n71), .CK(clk), .Q(pkt_reg[32]) );
  UDB116SVT24_FDPQB_1P5 \dout_reg[6]  ( .D(n108), .CK(clk), .QN(dout[6]) );
  UDB116SVT24_OA21B_1 U106 ( .A1(pkt_rec), .A2(en), .B(rst), .X(n104) );
  UDB116SVT24_INV_0P75 U107 ( .A(n104), .X(n105) );
  UDB116SVT24_INV_0P75 U108 ( .A(n104), .X(n106) );
  UDB116SVT24_ND2_MM_0P75 U109 ( .A1(n165), .A2(SPI_en), .X(n107) );
  UDB116SVT24_OA22_1 U110 ( .A1(n111), .A2(n125), .B1(n105), .B2(n110), .X(
        n108) );
  UDB116SVT24_AOI22_1 U111 ( .A1(n140), .A2(pkt_reg[3]), .B1(n127), .B2(din[3]), .X(n109) );
  UDB116SVT24_INV_0P75 U112 ( .A(pkt_rec), .X(n131) );
  UDB116SVT24_BUF_1 U113 ( .A(n167), .X(n140) );
  UDB116SVT24_BUF_1 U114 ( .A(n154), .X(n183) );
  UDB116SVT24_INV_0P75 U115 ( .A(pkt_reg[62]), .X(n111) );
  UDB116SVT24_NR3_0P75 U116 ( .A1(rst), .A2(pkt_rec), .A3(en), .X(n167) );
  UDB116SVT24_BUF_1 U117 ( .A(n140), .X(n128) );
  UDB116SVT24_BUF_1 U118 ( .A(n128), .X(n165) );
  UDB116SVT24_ND2_MM_0P75 U119 ( .A1(n165), .A2(SPI_en), .X(n125) );
  UDB116SVT24_INV_0P75 U120 ( .A(dout[6]), .X(n110) );
  UDB116SVT24_NR2_0P75 U121 ( .A1(rst), .A2(n131), .X(n154) );
  UDB116SVT24_BUF_1 U122 ( .A(n154), .X(n150) );
  UDB116SVT24_BUF_1 U123 ( .A(n150), .X(n144) );
  UDB116SVT24_BUF_1 U124 ( .A(n144), .X(n127) );
  UDB116SVT24_INV_0P75 U125 ( .A(pkt_reg[60]), .X(n113) );
  UDB116SVT24_INV_0P75 U126 ( .A(dout[4]), .X(n112) );
  UDB116SVT24_OAI22_0P75 U127 ( .A1(n113), .A2(n107), .B1(n106), .B2(n112), 
        .X(n36) );
  UDB116SVT24_INV_0P75 U128 ( .A(pkt_reg[63]), .X(n115) );
  UDB116SVT24_INV_0P75 U129 ( .A(dout[7]), .X(n114) );
  UDB116SVT24_OAI22_0P75 U130 ( .A1(n115), .A2(n125), .B1(n105), .B2(n114), 
        .X(n39) );
  UDB116SVT24_INV_0P75 U131 ( .A(pkt_reg[59]), .X(n117) );
  UDB116SVT24_INV_0P75 U132 ( .A(dout[3]), .X(n116) );
  UDB116SVT24_OAI22_0P75 U133 ( .A1(n117), .A2(n107), .B1(n106), .B2(n116), 
        .X(n35) );
  UDB116SVT24_INV_0P75 U134 ( .A(pkt_reg[61]), .X(n119) );
  UDB116SVT24_INV_0P75 U135 ( .A(dout[5]), .X(n118) );
  UDB116SVT24_OAI22_0P75 U136 ( .A1(n119), .A2(n125), .B1(n105), .B2(n118), 
        .X(n37) );
  UDB116SVT24_INV_0P75 U137 ( .A(pkt_reg[58]), .X(n121) );
  UDB116SVT24_INV_0P75 U138 ( .A(dout[2]), .X(n120) );
  UDB116SVT24_OAI22_0P75 U139 ( .A1(n121), .A2(n107), .B1(n106), .B2(n120), 
        .X(n34) );
  UDB116SVT24_INV_0P75 U140 ( .A(pkt_reg[57]), .X(n123) );
  UDB116SVT24_INV_0P75 U141 ( .A(dout[1]), .X(n122) );
  UDB116SVT24_OAI22_0P75 U142 ( .A1(n123), .A2(n125), .B1(n105), .B2(n122), 
        .X(n33) );
  UDB116SVT24_INV_0P75 U143 ( .A(pkt_reg[56]), .X(n126) );
  UDB116SVT24_INV_0P75 U144 ( .A(dout[0]), .X(n124) );
  UDB116SVT24_OAI22_0P75 U145 ( .A1(n126), .A2(n107), .B1(n106), .B2(n124), 
        .X(n32) );
  UDB116SVT24_AO22_1 U146 ( .A1(n128), .A2(pkt_reg[0]), .B1(n127), .B2(din[0]), 
        .X(n103) );
  UDB116SVT24_AO22_1 U147 ( .A1(n165), .A2(pkt_reg[1]), .B1(n127), .B2(din[1]), 
        .X(n102) );
  UDB116SVT24_AO22_1 U148 ( .A1(n128), .A2(pkt_reg[2]), .B1(n127), .B2(din[2]), 
        .X(n101) );
  UDB116SVT24_BUF_1 U149 ( .A(n128), .X(n130) );
  UDB116SVT24_BUF_1 U150 ( .A(n144), .X(n129) );
  UDB116SVT24_AO22_1 U151 ( .A1(n130), .A2(pkt_reg[4]), .B1(n129), .B2(din[4]), 
        .X(n99) );
  UDB116SVT24_AO22_1 U152 ( .A1(n130), .A2(pkt_reg[5]), .B1(n129), .B2(din[5]), 
        .X(n98) );
  UDB116SVT24_AO22_1 U153 ( .A1(n130), .A2(pkt_reg[6]), .B1(n129), .B2(din[6]), 
        .X(n97) );
  UDB116SVT24_AO22_1 U154 ( .A1(n130), .A2(pkt_reg[7]), .B1(n129), .B2(din[7]), 
        .X(n96) );
  UDB116SVT24_BUF_1 U155 ( .A(n140), .X(n162) );
  UDB116SVT24_BUF_1 U156 ( .A(n162), .X(n132) );
  UDB116SVT24_AN3B_0P75 U157 ( .B1(en), .B2(n131), .A(rst), .X(n159) );
  UDB116SVT24_BUF_1 U158 ( .A(n159), .X(n134) );
  UDB116SVT24_BUF_1 U159 ( .A(n144), .X(n137) );
  UDB116SVT24_AO222_1 U160 ( .A1(n132), .A2(pkt_reg[8]), .B1(n134), .B2(
        pkt_reg[0]), .C1(n137), .C2(din[8]), .X(n95) );
  UDB116SVT24_BUF_1 U161 ( .A(n159), .X(n171) );
  UDB116SVT24_BUF_1 U162 ( .A(n171), .X(n133) );
  UDB116SVT24_AO222_1 U163 ( .A1(n132), .A2(pkt_reg[9]), .B1(n137), .B2(din[9]), .C1(pkt_reg[1]), .C2(n133), .X(n94) );
  UDB116SVT24_BUF_1 U164 ( .A(n154), .X(n135) );
  UDB116SVT24_AO222_1 U165 ( .A1(n132), .A2(pkt_reg[10]), .B1(n135), .B2(
        din[10]), .C1(pkt_reg[2]), .C2(n133), .X(n93) );
  UDB116SVT24_AO222_1 U166 ( .A1(n132), .A2(pkt_reg[11]), .B1(n137), .B2(
        din[11]), .C1(pkt_reg[3]), .C2(n133), .X(n92) );
  UDB116SVT24_BUF_1 U167 ( .A(n162), .X(n136) );
  UDB116SVT24_AO222_1 U168 ( .A1(n136), .A2(pkt_reg[12]), .B1(n135), .B2(
        din[12]), .C1(pkt_reg[4]), .C2(n133), .X(n91) );
  UDB116SVT24_AO222_1 U169 ( .A1(n136), .A2(pkt_reg[13]), .B1(n135), .B2(
        din[13]), .C1(pkt_reg[5]), .C2(n134), .X(n90) );
  UDB116SVT24_BUF_1 U170 ( .A(n150), .X(n138) );
  UDB116SVT24_AO222_1 U171 ( .A1(n136), .A2(pkt_reg[14]), .B1(n138), .B2(
        din[14]), .C1(pkt_reg[6]), .C2(n134), .X(n89) );
  UDB116SVT24_AO222_1 U172 ( .A1(n136), .A2(pkt_reg[15]), .B1(n135), .B2(
        din[15]), .C1(pkt_reg[7]), .C2(n134), .X(n88) );
  UDB116SVT24_BUF_1 U173 ( .A(n162), .X(n139) );
  UDB116SVT24_BUF_1 U174 ( .A(n171), .X(n178) );
  UDB116SVT24_BUF_1 U175 ( .A(n178), .X(n185) );
  UDB116SVT24_AO222_1 U176 ( .A1(n139), .A2(pkt_reg[16]), .B1(n185), .B2(
        pkt_reg[8]), .C1(n137), .C2(din[16]), .X(n87) );
  UDB116SVT24_AO222_1 U177 ( .A1(n139), .A2(pkt_reg[17]), .B1(n138), .B2(
        din[17]), .C1(n185), .C2(pkt_reg[9]), .X(n86) );
  UDB116SVT24_BUF_1 U178 ( .A(n159), .X(n149) );
  UDB116SVT24_BUF_1 U179 ( .A(n149), .X(n141) );
  UDB116SVT24_AO222_1 U180 ( .A1(n139), .A2(pkt_reg[18]), .B1(n138), .B2(
        din[18]), .C1(n141), .C2(pkt_reg[10]), .X(n85) );
  UDB116SVT24_AO222_1 U181 ( .A1(n139), .A2(pkt_reg[19]), .B1(n138), .B2(
        din[19]), .C1(n141), .C2(pkt_reg[11]), .X(n84) );
  UDB116SVT24_BUF_1 U182 ( .A(n140), .X(n164) );
  UDB116SVT24_BUF_1 U183 ( .A(n164), .X(n143) );
  UDB116SVT24_BUF_1 U184 ( .A(n150), .X(n142) );
  UDB116SVT24_AO222_1 U185 ( .A1(n143), .A2(pkt_reg[20]), .B1(n142), .B2(
        din[20]), .C1(n141), .C2(pkt_reg[12]), .X(n83) );
  UDB116SVT24_AO222_1 U186 ( .A1(n143), .A2(pkt_reg[21]), .B1(n142), .B2(
        din[21]), .C1(n141), .C2(pkt_reg[13]), .X(n82) );
  UDB116SVT24_BUF_1 U187 ( .A(n149), .X(n145) );
  UDB116SVT24_AO222_1 U188 ( .A1(n143), .A2(pkt_reg[22]), .B1(n142), .B2(
        din[22]), .C1(n145), .C2(pkt_reg[14]), .X(n81) );
  UDB116SVT24_AO222_1 U189 ( .A1(n143), .A2(pkt_reg[23]), .B1(n142), .B2(
        din[23]), .C1(n145), .C2(pkt_reg[15]), .X(n80) );
  UDB116SVT24_BUF_1 U190 ( .A(n164), .X(n147) );
  UDB116SVT24_BUF_1 U191 ( .A(n144), .X(n146) );
  UDB116SVT24_AO222_1 U192 ( .A1(n147), .A2(pkt_reg[24]), .B1(n146), .B2(
        din[24]), .C1(n145), .C2(pkt_reg[16]), .X(n79) );
  UDB116SVT24_AO222_1 U193 ( .A1(n147), .A2(pkt_reg[25]), .B1(n146), .B2(
        din[25]), .C1(n145), .C2(pkt_reg[17]), .X(n78) );
  UDB116SVT24_BUF_1 U194 ( .A(n149), .X(n148) );
  UDB116SVT24_AO222_1 U195 ( .A1(n147), .A2(pkt_reg[26]), .B1(n146), .B2(
        din[26]), .C1(n148), .C2(pkt_reg[18]), .X(n77) );
  UDB116SVT24_AO222_1 U196 ( .A1(n147), .A2(pkt_reg[27]), .B1(n146), .B2(
        din[27]), .C1(n148), .C2(pkt_reg[19]), .X(n76) );
  UDB116SVT24_BUF_1 U197 ( .A(n164), .X(n151) );
  UDB116SVT24_BUF_1 U198 ( .A(n154), .X(n188) );
  UDB116SVT24_AO222_1 U199 ( .A1(n151), .A2(pkt_reg[28]), .B1(n188), .B2(
        din[28]), .C1(n148), .C2(pkt_reg[20]), .X(n75) );
  UDB116SVT24_AO222_1 U200 ( .A1(n151), .A2(pkt_reg[29]), .B1(n188), .B2(
        din[29]), .C1(n148), .C2(pkt_reg[21]), .X(n74) );
  UDB116SVT24_BUF_1 U201 ( .A(n149), .X(n156) );
  UDB116SVT24_BUF_1 U202 ( .A(n156), .X(n152) );
  UDB116SVT24_AO222_1 U203 ( .A1(n151), .A2(pkt_reg[30]), .B1(n188), .B2(
        din[30]), .C1(n152), .C2(pkt_reg[22]), .X(n73) );
  UDB116SVT24_BUF_1 U204 ( .A(n150), .X(n153) );
  UDB116SVT24_AO222_1 U205 ( .A1(n151), .A2(pkt_reg[31]), .B1(n153), .B2(
        din[31]), .C1(n152), .C2(pkt_reg[23]), .X(n72) );
  UDB116SVT24_BUF_1 U206 ( .A(n167), .X(n181) );
  UDB116SVT24_BUF_1 U207 ( .A(n181), .X(n168) );
  UDB116SVT24_BUF_1 U208 ( .A(n168), .X(n170) );
  UDB116SVT24_AO222_1 U209 ( .A1(n170), .A2(pkt_reg[32]), .B1(n153), .B2(
        din[32]), .C1(n152), .C2(pkt_reg[24]), .X(n71) );
  UDB116SVT24_AO222_1 U210 ( .A1(n170), .A2(pkt_reg[33]), .B1(n153), .B2(
        din[33]), .C1(n152), .C2(pkt_reg[25]), .X(n70) );
  UDB116SVT24_BUF_1 U211 ( .A(n156), .X(n155) );
  UDB116SVT24_AO222_1 U212 ( .A1(n170), .A2(pkt_reg[34]), .B1(n153), .B2(
        din[34]), .C1(n155), .C2(pkt_reg[26]), .X(n69) );
  UDB116SVT24_BUF_1 U213 ( .A(n168), .X(n158) );
  UDB116SVT24_BUF_1 U214 ( .A(n183), .X(n184) );
  UDB116SVT24_BUF_1 U215 ( .A(n184), .X(n157) );
  UDB116SVT24_AO222_1 U216 ( .A1(n158), .A2(pkt_reg[35]), .B1(n157), .B2(
        din[35]), .C1(n155), .C2(pkt_reg[27]), .X(n68) );
  UDB116SVT24_AO222_1 U217 ( .A1(n158), .A2(pkt_reg[36]), .B1(n157), .B2(
        din[36]), .C1(n155), .C2(pkt_reg[28]), .X(n67) );
  UDB116SVT24_AO222_1 U218 ( .A1(n158), .A2(pkt_reg[37]), .B1(n157), .B2(
        din[37]), .C1(n155), .C2(pkt_reg[29]), .X(n66) );
  UDB116SVT24_BUF_1 U219 ( .A(n156), .X(n187) );
  UDB116SVT24_AO222_1 U220 ( .A1(n158), .A2(pkt_reg[38]), .B1(n157), .B2(
        din[38]), .C1(n187), .C2(pkt_reg[30]), .X(n65) );
  UDB116SVT24_BUF_1 U221 ( .A(n168), .X(n161) );
  UDB116SVT24_BUF_1 U222 ( .A(n184), .X(n160) );
  UDB116SVT24_AO222_1 U223 ( .A1(n161), .A2(pkt_reg[39]), .B1(n160), .B2(
        din[39]), .C1(n187), .C2(pkt_reg[31]), .X(n64) );
  UDB116SVT24_AO222_1 U224 ( .A1(n161), .A2(pkt_reg[40]), .B1(n160), .B2(
        din[40]), .C1(n187), .C2(pkt_reg[32]), .X(n63) );
  UDB116SVT24_BUF_1 U225 ( .A(n159), .X(n163) );
  UDB116SVT24_AO222_1 U226 ( .A1(n161), .A2(pkt_reg[41]), .B1(n160), .B2(
        din[41]), .C1(n163), .C2(pkt_reg[33]), .X(n62) );
  UDB116SVT24_AO222_1 U227 ( .A1(n161), .A2(pkt_reg[42]), .B1(n160), .B2(
        din[42]), .C1(n163), .C2(pkt_reg[34]), .X(n61) );
  UDB116SVT24_BUF_1 U228 ( .A(n184), .X(n166) );
  UDB116SVT24_AO222_1 U229 ( .A1(n162), .A2(pkt_reg[43]), .B1(n166), .B2(
        din[43]), .C1(n163), .C2(pkt_reg[35]), .X(n60) );
  UDB116SVT24_AO222_1 U230 ( .A1(n164), .A2(pkt_reg[44]), .B1(n166), .B2(
        din[44]), .C1(n163), .C2(pkt_reg[36]), .X(n59) );
  UDB116SVT24_BUF_1 U231 ( .A(n171), .X(n169) );
  UDB116SVT24_AO222_1 U232 ( .A1(n165), .A2(pkt_reg[45]), .B1(n166), .B2(
        din[45]), .C1(n169), .C2(pkt_reg[37]), .X(n58) );
  UDB116SVT24_AO222_1 U233 ( .A1(n167), .A2(pkt_reg[46]), .B1(n166), .B2(
        din[46]), .C1(n169), .C2(pkt_reg[38]), .X(n57) );
  UDB116SVT24_BUF_1 U234 ( .A(n168), .X(n173) );
  UDB116SVT24_BUF_1 U235 ( .A(n183), .X(n186) );
  UDB116SVT24_BUF_1 U236 ( .A(n186), .X(n172) );
  UDB116SVT24_AO222_1 U237 ( .A1(n173), .A2(pkt_reg[47]), .B1(n172), .B2(
        din[47]), .C1(n169), .C2(pkt_reg[39]), .X(n56) );
  UDB116SVT24_AO222_1 U238 ( .A1(n170), .A2(pkt_reg[48]), .B1(n172), .B2(
        din[48]), .C1(n169), .C2(pkt_reg[40]), .X(n55) );
  UDB116SVT24_BUF_1 U239 ( .A(n171), .X(n174) );
  UDB116SVT24_AO222_1 U240 ( .A1(n173), .A2(pkt_reg[49]), .B1(n172), .B2(
        din[49]), .C1(n174), .C2(pkt_reg[41]), .X(n54) );
  UDB116SVT24_AO222_1 U241 ( .A1(n173), .A2(pkt_reg[50]), .B1(n172), .B2(
        din[50]), .C1(n174), .C2(pkt_reg[42]), .X(n53) );
  UDB116SVT24_BUF_1 U242 ( .A(n186), .X(n175) );
  UDB116SVT24_AO222_1 U243 ( .A1(n173), .A2(pkt_reg[51]), .B1(n175), .B2(
        din[51]), .C1(n174), .C2(pkt_reg[43]), .X(n52) );
  UDB116SVT24_BUF_1 U244 ( .A(n181), .X(n176) );
  UDB116SVT24_AO222_1 U245 ( .A1(n176), .A2(pkt_reg[52]), .B1(n175), .B2(
        din[52]), .C1(n174), .C2(pkt_reg[44]), .X(n51) );
  UDB116SVT24_BUF_1 U246 ( .A(n178), .X(n177) );
  UDB116SVT24_AO222_1 U247 ( .A1(n176), .A2(pkt_reg[53]), .B1(n175), .B2(
        din[53]), .C1(n177), .C2(pkt_reg[45]), .X(n50) );
  UDB116SVT24_AO222_1 U248 ( .A1(n176), .A2(pkt_reg[54]), .B1(n175), .B2(
        din[54]), .C1(n177), .C2(pkt_reg[46]), .X(n49) );
  UDB116SVT24_BUF_1 U249 ( .A(n186), .X(n179) );
  UDB116SVT24_AO222_1 U250 ( .A1(n176), .A2(pkt_reg[55]), .B1(n179), .B2(
        din[55]), .C1(n177), .C2(pkt_reg[47]), .X(n48) );
  UDB116SVT24_BUF_1 U251 ( .A(n181), .X(n180) );
  UDB116SVT24_AO222_1 U252 ( .A1(n180), .A2(pkt_reg[56]), .B1(n179), .B2(
        din[56]), .C1(n177), .C2(pkt_reg[48]), .X(n47) );
  UDB116SVT24_BUF_1 U253 ( .A(n178), .X(n182) );
  UDB116SVT24_AO222_1 U254 ( .A1(n180), .A2(pkt_reg[57]), .B1(n179), .B2(
        din[57]), .C1(n182), .C2(pkt_reg[49]), .X(n46) );
  UDB116SVT24_AO222_1 U255 ( .A1(n180), .A2(pkt_reg[58]), .B1(n179), .B2(
        din[58]), .C1(n182), .C2(pkt_reg[50]), .X(n45) );
  UDB116SVT24_AO222_1 U256 ( .A1(n180), .A2(pkt_reg[59]), .B1(n183), .B2(
        din[59]), .C1(n182), .C2(pkt_reg[51]), .X(n44) );
  UDB116SVT24_BUF_1 U257 ( .A(n181), .X(n189) );
  UDB116SVT24_AO222_1 U258 ( .A1(n189), .A2(pkt_reg[60]), .B1(n183), .B2(
        din[60]), .C1(n182), .C2(pkt_reg[52]), .X(n43) );
  UDB116SVT24_AO222_1 U259 ( .A1(n189), .A2(pkt_reg[61]), .B1(n184), .B2(
        din[61]), .C1(n185), .C2(pkt_reg[53]), .X(n42) );
  UDB116SVT24_AO222_1 U260 ( .A1(n189), .A2(pkt_reg[62]), .B1(n186), .B2(
        din[62]), .C1(n185), .C2(pkt_reg[54]), .X(n41) );
  UDB116SVT24_AO222_1 U261 ( .A1(n189), .A2(pkt_reg[63]), .B1(n188), .B2(
        din[63]), .C1(n187), .C2(pkt_reg[55]), .X(n40) );
endmodule

