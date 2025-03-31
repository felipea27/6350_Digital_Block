/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : V-2023.12-SP1
// Date      : Mon Mar 31 14:29:59 2025
/////////////////////////////////////////////////////////////


module Pkt_reg ( din, pkt_rec, en, clk, rst, dout, SPI_en );
  input [63:0] din;
  output [7:0] dout;
  input pkt_rec, en, clk, rst, SPI_en;
  wire   n31, n32, n33, n34, n35, n36, n38, n39, n40, n41, n42, n43, n44, n45,
         n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59,
         n60, n61, n62, n63, n64, n65, n66, n68, n69, n70, n71, n72, n73, n74,
         n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179, n180, n181, n182, n183, n184, n185, n186, n187, n188, n189,
         n190, n191, n192, n193, n194, n195, n196, n197, n198, n199, n200,
         n201, n202, n203, n204, n205, n206, n207, n208, n209, n210, n211,
         n212, n213, n214, n215, n216, n217, n218, n219, n220, n221, n222,
         n223, n224, n225, n226, n227, n228, n229, n230, n231, n232, n233,
         n234, n235, n236, n237, n238, n239, n240, n241, n242, n243, n244,
         n245, n246, n247, n248, n249, n250, n251, n252, n253, n254, n255,
         n256, n257, n258, n259, n260, n261, n262, n263, n264, n265, n266,
         n267, n268, n269, n270, n271, n272, n273, n274, n275, n276, n277,
         n278, n279, n280, n281, n282, n283, n284, n285, n286, n287, n288,
         n289, n290, n291, n292, n293, n294, n295, n296, n297, n298, n299,
         n300, n301, n302, n303;
  wire   [63:0] pkt_reg;

  UDB116SVT24_FDPQ_V2_3 \pkt_reg_reg[7]  ( .D(n95), .CK(clk), .Q(pkt_reg[7])
         );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_reg[15]  ( .D(n87), .CK(clk), .Q(pkt_reg[15])
         );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_reg[23]  ( .D(n79), .CK(clk), .Q(pkt_reg[23])
         );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_reg[31]  ( .D(n71), .CK(clk), .Q(pkt_reg[31])
         );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_reg[39]  ( .D(n63), .CK(clk), .Q(pkt_reg[39])
         );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_reg[47]  ( .D(n55), .CK(clk), .Q(pkt_reg[47])
         );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_reg[55]  ( .D(n47), .CK(clk), .Q(pkt_reg[55])
         );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_reg[63]  ( .D(n39), .CK(clk), .Q(pkt_reg[63])
         );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_reg[6]  ( .D(n96), .CK(clk), .Q(pkt_reg[6])
         );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_reg[14]  ( .D(n88), .CK(clk), .Q(pkt_reg[14])
         );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_reg[22]  ( .D(n80), .CK(clk), .Q(pkt_reg[22])
         );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_reg[30]  ( .D(n72), .CK(clk), .Q(pkt_reg[30])
         );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_reg[38]  ( .D(n64), .CK(clk), .Q(pkt_reg[38])
         );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_reg[46]  ( .D(n56), .CK(clk), .Q(pkt_reg[46])
         );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_reg[62]  ( .D(n40), .CK(clk), .Q(pkt_reg[62])
         );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_reg[5]  ( .D(n97), .CK(clk), .Q(pkt_reg[5])
         );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_reg[13]  ( .D(n89), .CK(clk), .Q(pkt_reg[13])
         );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_reg[21]  ( .D(n81), .CK(clk), .Q(pkt_reg[21])
         );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_reg[29]  ( .D(n73), .CK(clk), .Q(pkt_reg[29])
         );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_reg[37]  ( .D(n65), .CK(clk), .Q(pkt_reg[37])
         );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_reg[45]  ( .D(n57), .CK(clk), .Q(pkt_reg[45])
         );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_reg[53]  ( .D(n49), .CK(clk), .Q(pkt_reg[53])
         );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_reg[61]  ( .D(n41), .CK(clk), .Q(pkt_reg[61])
         );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_reg[4]  ( .D(n98), .CK(clk), .Q(pkt_reg[4])
         );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_reg[12]  ( .D(n90), .CK(clk), .Q(pkt_reg[12])
         );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_reg[20]  ( .D(n82), .CK(clk), .Q(pkt_reg[20])
         );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_reg[28]  ( .D(n74), .CK(clk), .Q(pkt_reg[28])
         );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_reg[36]  ( .D(n66), .CK(clk), .Q(pkt_reg[36])
         );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_reg[52]  ( .D(n50), .CK(clk), .Q(pkt_reg[52])
         );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_reg[60]  ( .D(n42), .CK(clk), .Q(pkt_reg[60])
         );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_reg[3]  ( .D(n99), .CK(clk), .Q(pkt_reg[3])
         );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_reg[11]  ( .D(n91), .CK(clk), .Q(pkt_reg[11])
         );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_reg[19]  ( .D(n83), .CK(clk), .Q(pkt_reg[19])
         );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_reg[27]  ( .D(n75), .CK(clk), .Q(pkt_reg[27])
         );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_reg[43]  ( .D(n59), .CK(clk), .Q(pkt_reg[43])
         );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_reg[51]  ( .D(n51), .CK(clk), .Q(pkt_reg[51])
         );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_reg[59]  ( .D(n43), .CK(clk), .Q(pkt_reg[59])
         );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_reg[2]  ( .D(n100), .CK(clk), .Q(pkt_reg[2])
         );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_reg[10]  ( .D(n92), .CK(clk), .Q(pkt_reg[10])
         );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_reg[18]  ( .D(n84), .CK(clk), .Q(pkt_reg[18])
         );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_reg[26]  ( .D(n76), .CK(clk), .Q(pkt_reg[26])
         );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_reg[34]  ( .D(n68), .CK(clk), .Q(pkt_reg[34])
         );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_reg[50]  ( .D(n52), .CK(clk), .Q(pkt_reg[50])
         );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_reg[58]  ( .D(n44), .CK(clk), .Q(pkt_reg[58])
         );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_reg[1]  ( .D(n101), .CK(clk), .Q(pkt_reg[1])
         );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_reg[9]  ( .D(n93), .CK(clk), .Q(pkt_reg[9])
         );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_reg[17]  ( .D(n85), .CK(clk), .Q(pkt_reg[17])
         );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_reg[25]  ( .D(n77), .CK(clk), .Q(pkt_reg[25])
         );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_reg[33]  ( .D(n69), .CK(clk), .Q(pkt_reg[33])
         );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_reg[41]  ( .D(n61), .CK(clk), .Q(pkt_reg[41])
         );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_reg[49]  ( .D(n53), .CK(clk), .Q(pkt_reg[49])
         );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_reg[57]  ( .D(n45), .CK(clk), .Q(pkt_reg[57])
         );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_reg[0]  ( .D(n102), .CK(clk), .Q(pkt_reg[0])
         );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_reg[8]  ( .D(n94), .CK(clk), .Q(pkt_reg[8])
         );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_reg[16]  ( .D(n86), .CK(clk), .Q(pkt_reg[16])
         );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_reg[24]  ( .D(n78), .CK(clk), .Q(pkt_reg[24])
         );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_reg[40]  ( .D(n62), .CK(clk), .Q(pkt_reg[40])
         );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_reg[48]  ( .D(n54), .CK(clk), .Q(pkt_reg[48])
         );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_reg[56]  ( .D(n46), .CK(clk), .Q(pkt_reg[56])
         );
  UDB116SVT24_FDPQ_V2_3 \dout_reg[7]  ( .D(n38), .CK(clk), .Q(dout[7]) );
  UDB116SVT24_FDPQ_V2_3 \dout_reg[5]  ( .D(n36), .CK(clk), .Q(dout[5]) );
  UDB116SVT24_FDPQ_V2_3 \dout_reg[4]  ( .D(n35), .CK(clk), .Q(dout[4]) );
  UDB116SVT24_FDPQ_V2_3 \dout_reg[3]  ( .D(n34), .CK(clk), .Q(dout[3]) );
  UDB116SVT24_FDPQ_V2_3 \dout_reg[2]  ( .D(n33), .CK(clk), .Q(dout[2]) );
  UDB116SVT24_FDPQ_V2_3 \dout_reg[1]  ( .D(n32), .CK(clk), .Q(dout[1]) );
  UDB116SVT24_FDPQ_V2_3 \dout_reg[0]  ( .D(n31), .CK(clk), .Q(dout[0]) );
  UDB116SVT24_FDPQB_2 \pkt_reg_reg[35]  ( .D(n303), .CK(clk), .QN(pkt_reg[35])
         );
  UDB116SVT24_FDPQ_1 \pkt_reg_reg[54]  ( .D(n48), .CK(clk), .Q(pkt_reg[54]) );
  UDB116SVT24_FDPQ_1 \pkt_reg_reg[44]  ( .D(n58), .CK(clk), .Q(pkt_reg[44]) );
  UDB116SVT24_FDPQ_1 \pkt_reg_reg[42]  ( .D(n60), .CK(clk), .Q(pkt_reg[42]) );
  UDB116SVT24_FDPQ_1 \pkt_reg_reg[32]  ( .D(n70), .CK(clk), .Q(pkt_reg[32]) );
  UDB116SVT24_FDPQB_1P5 \dout_reg[6]  ( .D(n107), .CK(clk), .QN(dout[6]) );
  UDB116SVT24_INV_0P75 U105 ( .A(n128), .X(n103) );
  UDB116SVT24_INV_0P75 U106 ( .A(n103), .X(n104) );
  UDB116SVT24_INV_0P75 U107 ( .A(n103), .X(n105) );
  UDB116SVT24_ND2_MM_0P75 U108 ( .A1(n242), .A2(SPI_en), .X(n106) );
  UDB116SVT24_OA22_1 U109 ( .A1(n109), .A2(n129), .B1(n104), .B2(n108), .X(
        n107) );
  UDB116SVT24_INV_0P75 U110 ( .A(pkt_rec), .X(n111) );
  UDB116SVT24_ND3_0P75 U111 ( .A1(en), .A2(rst), .A3(n111), .X(n229) );
  UDB116SVT24_INV_0P75 U112 ( .A(pkt_reg[62]), .X(n109) );
  UDB116SVT24_INV_0P75 U113 ( .A(rst), .X(n110) );
  UDB116SVT24_NR3_0P75 U114 ( .A1(en), .A2(pkt_rec), .A3(n110), .X(n159) );
  UDB116SVT24_BUF_1 U115 ( .A(n159), .X(n267) );
  UDB116SVT24_BUF_1 U116 ( .A(n267), .X(n291) );
  UDB116SVT24_BUF_1 U117 ( .A(n291), .X(n242) );
  UDB116SVT24_ND2_MM_0P75 U118 ( .A1(n242), .A2(SPI_en), .X(n129) );
  UDB116SVT24_OAI21_0P75 U119 ( .A1(en), .A2(pkt_rec), .B(rst), .X(n128) );
  UDB116SVT24_INV_0P75 U120 ( .A(dout[6]), .X(n108) );
  UDB116SVT24_BUF_1 U121 ( .A(n229), .X(n172) );
  UDB116SVT24_BUF_1 U122 ( .A(n172), .X(n217) );
  UDB116SVT24_BUF_1 U123 ( .A(n217), .X(n216) );
  UDB116SVT24_INV_0P75 U124 ( .A(pkt_reg[27]), .X(n113) );
  UDB116SVT24_BUF_1 U125 ( .A(n159), .X(n213) );
  UDB116SVT24_NR2_0P75 U126 ( .A1(n111), .A2(n110), .X(n131) );
  UDB116SVT24_BUF_1 U127 ( .A(n131), .X(n230) );
  UDB116SVT24_BUF_1 U128 ( .A(n230), .X(n212) );
  UDB116SVT24_AOI22_1 U129 ( .A1(n213), .A2(pkt_reg[35]), .B1(n212), .B2(
        din[35]), .X(n112) );
  UDB116SVT24_OAI21_0P75 U130 ( .A1(n216), .A2(n113), .B(n112), .X(n114) );
  UDB116SVT24_INV_0P75 U131 ( .A(n114), .X(n303) );
  UDB116SVT24_INV_0P75 U132 ( .A(pkt_reg[61]), .X(n116) );
  UDB116SVT24_INV_0P75 U133 ( .A(dout[5]), .X(n115) );
  UDB116SVT24_OAI22_0P75 U134 ( .A1(n116), .A2(n106), .B1(n105), .B2(n115), 
        .X(n36) );
  UDB116SVT24_INV_0P75 U135 ( .A(pkt_reg[60]), .X(n118) );
  UDB116SVT24_INV_0P75 U136 ( .A(dout[4]), .X(n117) );
  UDB116SVT24_OAI22_0P75 U137 ( .A1(n118), .A2(n129), .B1(n104), .B2(n117), 
        .X(n35) );
  UDB116SVT24_INV_0P75 U138 ( .A(pkt_reg[57]), .X(n120) );
  UDB116SVT24_INV_0P75 U139 ( .A(dout[1]), .X(n119) );
  UDB116SVT24_OAI22_0P75 U140 ( .A1(n120), .A2(n106), .B1(n105), .B2(n119), 
        .X(n32) );
  UDB116SVT24_INV_0P75 U141 ( .A(pkt_reg[63]), .X(n122) );
  UDB116SVT24_INV_0P75 U142 ( .A(dout[7]), .X(n121) );
  UDB116SVT24_OAI22_0P75 U143 ( .A1(n122), .A2(n129), .B1(n104), .B2(n121), 
        .X(n38) );
  UDB116SVT24_INV_0P75 U144 ( .A(pkt_reg[58]), .X(n124) );
  UDB116SVT24_INV_0P75 U145 ( .A(dout[2]), .X(n123) );
  UDB116SVT24_OAI22_0P75 U146 ( .A1(n124), .A2(n106), .B1(n105), .B2(n123), 
        .X(n33) );
  UDB116SVT24_INV_0P75 U147 ( .A(pkt_reg[59]), .X(n126) );
  UDB116SVT24_INV_0P75 U148 ( .A(dout[3]), .X(n125) );
  UDB116SVT24_OAI22_0P75 U149 ( .A1(n126), .A2(n129), .B1(n104), .B2(n125), 
        .X(n34) );
  UDB116SVT24_INV_0P75 U150 ( .A(pkt_reg[56]), .X(n130) );
  UDB116SVT24_INV_0P75 U151 ( .A(dout[0]), .X(n127) );
  UDB116SVT24_OAI22_0P75 U152 ( .A1(n130), .A2(n106), .B1(n105), .B2(n127), 
        .X(n31) );
  UDB116SVT24_BUF_1 U153 ( .A(n159), .X(n146) );
  UDB116SVT24_BUF_1 U154 ( .A(n146), .X(n132) );
  UDB116SVT24_AO22_1 U155 ( .A1(pkt_reg[0]), .A2(n132), .B1(n131), .B2(din[0]), 
        .X(n102) );
  UDB116SVT24_AO22_1 U156 ( .A1(n132), .A2(pkt_reg[1]), .B1(n131), .B2(din[1]), 
        .X(n101) );
  UDB116SVT24_BUF_1 U157 ( .A(n131), .X(n160) );
  UDB116SVT24_AO22_1 U158 ( .A1(n132), .A2(pkt_reg[2]), .B1(n160), .B2(din[2]), 
        .X(n100) );
  UDB116SVT24_AO22_1 U159 ( .A1(n132), .A2(pkt_reg[3]), .B1(n160), .B2(din[3]), 
        .X(n99) );
  UDB116SVT24_BUF_1 U160 ( .A(n146), .X(n134) );
  UDB116SVT24_BUF_1 U161 ( .A(n160), .X(n147) );
  UDB116SVT24_BUF_1 U162 ( .A(n147), .X(n133) );
  UDB116SVT24_AO22_1 U163 ( .A1(n134), .A2(pkt_reg[4]), .B1(n133), .B2(din[4]), 
        .X(n98) );
  UDB116SVT24_AO22_1 U164 ( .A1(n134), .A2(pkt_reg[5]), .B1(n133), .B2(din[5]), 
        .X(n97) );
  UDB116SVT24_AO22_1 U165 ( .A1(n134), .A2(pkt_reg[6]), .B1(n133), .B2(din[6]), 
        .X(n96) );
  UDB116SVT24_AO22_1 U166 ( .A1(n134), .A2(pkt_reg[7]), .B1(n133), .B2(din[7]), 
        .X(n95) );
  UDB116SVT24_BUF_1 U167 ( .A(n172), .X(n145) );
  UDB116SVT24_INV_0P75 U168 ( .A(pkt_reg[0]), .X(n136) );
  UDB116SVT24_BUF_1 U169 ( .A(n146), .X(n142) );
  UDB116SVT24_BUF_1 U170 ( .A(n147), .X(n141) );
  UDB116SVT24_AOI22_1 U171 ( .A1(n142), .A2(pkt_reg[8]), .B1(n141), .B2(din[8]), .X(n135) );
  UDB116SVT24_OAI21_0P75 U172 ( .A1(n145), .A2(n136), .B(n135), .X(n94) );
  UDB116SVT24_INV_0P75 U173 ( .A(pkt_reg[1]), .X(n138) );
  UDB116SVT24_AOI22_1 U174 ( .A1(n142), .A2(pkt_reg[9]), .B1(n141), .B2(din[9]), .X(n137) );
  UDB116SVT24_OAI21_0P75 U175 ( .A1(n145), .A2(n138), .B(n137), .X(n93) );
  UDB116SVT24_INV_0P75 U176 ( .A(pkt_reg[2]), .X(n140) );
  UDB116SVT24_AOI22_1 U177 ( .A1(n142), .A2(pkt_reg[10]), .B1(n141), .B2(
        din[10]), .X(n139) );
  UDB116SVT24_OAI21_0P75 U178 ( .A1(n145), .A2(n140), .B(n139), .X(n92) );
  UDB116SVT24_INV_0P75 U179 ( .A(pkt_reg[3]), .X(n144) );
  UDB116SVT24_AOI22_1 U180 ( .A1(n142), .A2(pkt_reg[11]), .B1(n141), .B2(
        din[11]), .X(n143) );
  UDB116SVT24_OAI21_0P75 U181 ( .A1(n145), .A2(n144), .B(n143), .X(n91) );
  UDB116SVT24_BUF_1 U182 ( .A(n229), .X(n158) );
  UDB116SVT24_INV_0P75 U183 ( .A(pkt_reg[4]), .X(n149) );
  UDB116SVT24_BUF_1 U184 ( .A(n146), .X(n196) );
  UDB116SVT24_BUF_1 U185 ( .A(n196), .X(n155) );
  UDB116SVT24_BUF_1 U186 ( .A(n147), .X(n154) );
  UDB116SVT24_AOI22_1 U187 ( .A1(n155), .A2(pkt_reg[12]), .B1(n154), .B2(
        din[12]), .X(n148) );
  UDB116SVT24_OAI21_0P75 U188 ( .A1(n158), .A2(n149), .B(n148), .X(n90) );
  UDB116SVT24_INV_0P75 U189 ( .A(pkt_reg[5]), .X(n151) );
  UDB116SVT24_AOI22_1 U190 ( .A1(n155), .A2(pkt_reg[13]), .B1(n154), .B2(
        din[13]), .X(n150) );
  UDB116SVT24_OAI21_0P75 U191 ( .A1(n158), .A2(n151), .B(n150), .X(n89) );
  UDB116SVT24_INV_0P75 U192 ( .A(pkt_reg[6]), .X(n153) );
  UDB116SVT24_AOI22_1 U193 ( .A1(n155), .A2(pkt_reg[14]), .B1(n154), .B2(
        din[14]), .X(n152) );
  UDB116SVT24_OAI21_0P75 U194 ( .A1(n158), .A2(n153), .B(n152), .X(n88) );
  UDB116SVT24_INV_0P75 U195 ( .A(pkt_reg[7]), .X(n157) );
  UDB116SVT24_AOI22_1 U196 ( .A1(n155), .A2(pkt_reg[15]), .B1(n154), .B2(
        din[15]), .X(n156) );
  UDB116SVT24_OAI21_0P75 U197 ( .A1(n158), .A2(n157), .B(n156), .X(n87) );
  UDB116SVT24_BUF_1 U198 ( .A(n172), .X(n171) );
  UDB116SVT24_INV_0P75 U199 ( .A(pkt_reg[8]), .X(n162) );
  UDB116SVT24_BUF_1 U200 ( .A(n159), .X(n168) );
  UDB116SVT24_BUF_1 U201 ( .A(n160), .X(n184) );
  UDB116SVT24_BUF_1 U202 ( .A(n184), .X(n167) );
  UDB116SVT24_AOI22_1 U203 ( .A1(n168), .A2(pkt_reg[16]), .B1(n167), .B2(
        din[16]), .X(n161) );
  UDB116SVT24_OAI21_0P75 U204 ( .A1(n171), .A2(n162), .B(n161), .X(n86) );
  UDB116SVT24_INV_0P75 U205 ( .A(pkt_reg[9]), .X(n164) );
  UDB116SVT24_AOI22_1 U206 ( .A1(n168), .A2(pkt_reg[17]), .B1(n167), .B2(
        din[17]), .X(n163) );
  UDB116SVT24_OAI21_0P75 U207 ( .A1(n171), .A2(n164), .B(n163), .X(n85) );
  UDB116SVT24_INV_0P75 U208 ( .A(pkt_reg[10]), .X(n166) );
  UDB116SVT24_AOI22_1 U209 ( .A1(n168), .A2(pkt_reg[18]), .B1(n167), .B2(
        din[18]), .X(n165) );
  UDB116SVT24_OAI21_0P75 U210 ( .A1(n171), .A2(n166), .B(n165), .X(n84) );
  UDB116SVT24_INV_0P75 U211 ( .A(pkt_reg[11]), .X(n170) );
  UDB116SVT24_AOI22_1 U212 ( .A1(n168), .A2(pkt_reg[19]), .B1(n167), .B2(
        din[19]), .X(n169) );
  UDB116SVT24_OAI21_0P75 U213 ( .A1(n171), .A2(n170), .B(n169), .X(n83) );
  UDB116SVT24_BUF_1 U214 ( .A(n172), .X(n183) );
  UDB116SVT24_INV_0P75 U215 ( .A(pkt_reg[12]), .X(n174) );
  UDB116SVT24_BUF_1 U216 ( .A(n196), .X(n180) );
  UDB116SVT24_BUF_1 U217 ( .A(n184), .X(n179) );
  UDB116SVT24_AOI22_1 U218 ( .A1(n180), .A2(pkt_reg[20]), .B1(n179), .B2(
        din[20]), .X(n173) );
  UDB116SVT24_OAI21_0P75 U219 ( .A1(n183), .A2(n174), .B(n173), .X(n82) );
  UDB116SVT24_INV_0P75 U220 ( .A(pkt_reg[13]), .X(n176) );
  UDB116SVT24_AOI22_1 U221 ( .A1(n180), .A2(pkt_reg[21]), .B1(n179), .B2(
        din[21]), .X(n175) );
  UDB116SVT24_OAI21_0P75 U222 ( .A1(n183), .A2(n176), .B(n175), .X(n81) );
  UDB116SVT24_INV_0P75 U223 ( .A(pkt_reg[14]), .X(n178) );
  UDB116SVT24_AOI22_1 U224 ( .A1(n180), .A2(pkt_reg[22]), .B1(n179), .B2(
        din[22]), .X(n177) );
  UDB116SVT24_OAI21_0P75 U225 ( .A1(n183), .A2(n178), .B(n177), .X(n80) );
  UDB116SVT24_INV_0P75 U226 ( .A(pkt_reg[15]), .X(n182) );
  UDB116SVT24_AOI22_1 U227 ( .A1(n180), .A2(pkt_reg[23]), .B1(n179), .B2(
        din[23]), .X(n181) );
  UDB116SVT24_OAI21_0P75 U228 ( .A1(n183), .A2(n182), .B(n181), .X(n79) );
  UDB116SVT24_BUF_1 U229 ( .A(n229), .X(n195) );
  UDB116SVT24_INV_0P75 U230 ( .A(pkt_reg[16]), .X(n186) );
  UDB116SVT24_BUF_1 U231 ( .A(n196), .X(n192) );
  UDB116SVT24_BUF_1 U232 ( .A(n184), .X(n191) );
  UDB116SVT24_AOI22_1 U233 ( .A1(n192), .A2(pkt_reg[24]), .B1(n191), .B2(
        din[24]), .X(n185) );
  UDB116SVT24_OAI21_0P75 U234 ( .A1(n195), .A2(n186), .B(n185), .X(n78) );
  UDB116SVT24_INV_0P75 U235 ( .A(pkt_reg[17]), .X(n188) );
  UDB116SVT24_AOI22_1 U236 ( .A1(n192), .A2(pkt_reg[25]), .B1(n191), .B2(
        din[25]), .X(n187) );
  UDB116SVT24_OAI21_0P75 U237 ( .A1(n195), .A2(n188), .B(n187), .X(n77) );
  UDB116SVT24_INV_0P75 U238 ( .A(pkt_reg[18]), .X(n190) );
  UDB116SVT24_AOI22_1 U239 ( .A1(n192), .A2(pkt_reg[26]), .B1(n191), .B2(
        din[26]), .X(n189) );
  UDB116SVT24_OAI21_0P75 U240 ( .A1(n195), .A2(n190), .B(n189), .X(n76) );
  UDB116SVT24_INV_0P75 U241 ( .A(pkt_reg[19]), .X(n194) );
  UDB116SVT24_AOI22_1 U242 ( .A1(n192), .A2(pkt_reg[27]), .B1(n191), .B2(
        din[27]), .X(n193) );
  UDB116SVT24_OAI21_0P75 U243 ( .A1(n195), .A2(n194), .B(n193), .X(n75) );
  UDB116SVT24_BUF_1 U244 ( .A(n217), .X(n207) );
  UDB116SVT24_INV_0P75 U245 ( .A(pkt_reg[20]), .X(n198) );
  UDB116SVT24_BUF_1 U246 ( .A(n196), .X(n204) );
  UDB116SVT24_BUF_1 U247 ( .A(n230), .X(n203) );
  UDB116SVT24_AOI22_1 U248 ( .A1(n204), .A2(pkt_reg[28]), .B1(n203), .B2(
        din[28]), .X(n197) );
  UDB116SVT24_OAI21_0P75 U249 ( .A1(n207), .A2(n198), .B(n197), .X(n74) );
  UDB116SVT24_INV_0P75 U250 ( .A(pkt_reg[21]), .X(n200) );
  UDB116SVT24_AOI22_1 U251 ( .A1(n204), .A2(pkt_reg[29]), .B1(n203), .B2(
        din[29]), .X(n199) );
  UDB116SVT24_OAI21_0P75 U252 ( .A1(n207), .A2(n200), .B(n199), .X(n73) );
  UDB116SVT24_INV_0P75 U253 ( .A(pkt_reg[22]), .X(n202) );
  UDB116SVT24_AOI22_1 U254 ( .A1(n204), .A2(pkt_reg[30]), .B1(n203), .B2(
        din[30]), .X(n201) );
  UDB116SVT24_OAI21_0P75 U255 ( .A1(n207), .A2(n202), .B(n201), .X(n72) );
  UDB116SVT24_INV_0P75 U256 ( .A(pkt_reg[23]), .X(n206) );
  UDB116SVT24_AOI22_1 U257 ( .A1(n204), .A2(pkt_reg[31]), .B1(n203), .B2(
        din[31]), .X(n205) );
  UDB116SVT24_OAI21_0P75 U258 ( .A1(n207), .A2(n206), .B(n205), .X(n71) );
  UDB116SVT24_INV_0P75 U259 ( .A(pkt_reg[24]), .X(n209) );
  UDB116SVT24_AOI22_1 U260 ( .A1(n213), .A2(pkt_reg[32]), .B1(n212), .B2(
        din[32]), .X(n208) );
  UDB116SVT24_OAI21_0P75 U261 ( .A1(n216), .A2(n209), .B(n208), .X(n70) );
  UDB116SVT24_INV_0P75 U262 ( .A(pkt_reg[25]), .X(n211) );
  UDB116SVT24_AOI22_1 U263 ( .A1(n213), .A2(pkt_reg[33]), .B1(n212), .B2(
        din[33]), .X(n210) );
  UDB116SVT24_OAI21_0P75 U264 ( .A1(n216), .A2(n211), .B(n210), .X(n69) );
  UDB116SVT24_INV_0P75 U265 ( .A(pkt_reg[26]), .X(n215) );
  UDB116SVT24_AOI22_1 U266 ( .A1(n213), .A2(pkt_reg[34]), .B1(n212), .B2(
        din[34]), .X(n214) );
  UDB116SVT24_OAI21_0P75 U267 ( .A1(n216), .A2(n215), .B(n214), .X(n68) );
  UDB116SVT24_BUF_1 U268 ( .A(n217), .X(n228) );
  UDB116SVT24_INV_0P75 U269 ( .A(pkt_reg[28]), .X(n219) );
  UDB116SVT24_BUF_1 U270 ( .A(n242), .X(n225) );
  UDB116SVT24_BUF_1 U271 ( .A(n230), .X(n292) );
  UDB116SVT24_BUF_1 U272 ( .A(n292), .X(n224) );
  UDB116SVT24_AOI22_1 U273 ( .A1(n225), .A2(pkt_reg[36]), .B1(n224), .B2(
        din[36]), .X(n218) );
  UDB116SVT24_OAI21_0P75 U274 ( .A1(n228), .A2(n219), .B(n218), .X(n66) );
  UDB116SVT24_INV_0P75 U275 ( .A(pkt_reg[29]), .X(n221) );
  UDB116SVT24_AOI22_1 U276 ( .A1(n225), .A2(pkt_reg[37]), .B1(n224), .B2(
        din[37]), .X(n220) );
  UDB116SVT24_OAI21_0P75 U277 ( .A1(n228), .A2(n221), .B(n220), .X(n65) );
  UDB116SVT24_INV_0P75 U278 ( .A(pkt_reg[30]), .X(n223) );
  UDB116SVT24_AOI22_1 U279 ( .A1(n225), .A2(pkt_reg[38]), .B1(n224), .B2(
        din[38]), .X(n222) );
  UDB116SVT24_OAI21_0P75 U280 ( .A1(n228), .A2(n223), .B(n222), .X(n64) );
  UDB116SVT24_INV_0P75 U281 ( .A(pkt_reg[31]), .X(n227) );
  UDB116SVT24_AOI22_1 U282 ( .A1(n225), .A2(pkt_reg[39]), .B1(n224), .B2(
        din[39]), .X(n226) );
  UDB116SVT24_OAI21_0P75 U283 ( .A1(n228), .A2(n227), .B(n226), .X(n63) );
  UDB116SVT24_BUF_1 U284 ( .A(n229), .X(n266) );
  UDB116SVT24_BUF_1 U285 ( .A(n266), .X(n241) );
  UDB116SVT24_INV_0P75 U286 ( .A(pkt_reg[32]), .X(n232) );
  UDB116SVT24_BUF_1 U287 ( .A(n267), .X(n238) );
  UDB116SVT24_BUF_1 U288 ( .A(n230), .X(n254) );
  UDB116SVT24_BUF_1 U289 ( .A(n254), .X(n237) );
  UDB116SVT24_AOI22_1 U290 ( .A1(n238), .A2(pkt_reg[40]), .B1(n237), .B2(
        din[40]), .X(n231) );
  UDB116SVT24_OAI21_0P75 U291 ( .A1(n241), .A2(n232), .B(n231), .X(n62) );
  UDB116SVT24_INV_0P75 U292 ( .A(pkt_reg[33]), .X(n234) );
  UDB116SVT24_AOI22_1 U293 ( .A1(n238), .A2(pkt_reg[41]), .B1(n237), .B2(
        din[41]), .X(n233) );
  UDB116SVT24_OAI21_0P75 U294 ( .A1(n241), .A2(n234), .B(n233), .X(n61) );
  UDB116SVT24_INV_0P75 U295 ( .A(pkt_reg[34]), .X(n236) );
  UDB116SVT24_AOI22_1 U296 ( .A1(n238), .A2(pkt_reg[42]), .B1(n237), .B2(
        din[42]), .X(n235) );
  UDB116SVT24_OAI21_0P75 U297 ( .A1(n241), .A2(n236), .B(n235), .X(n60) );
  UDB116SVT24_INV_0P75 U298 ( .A(pkt_reg[35]), .X(n240) );
  UDB116SVT24_AOI22_1 U299 ( .A1(n238), .A2(pkt_reg[43]), .B1(n237), .B2(
        din[43]), .X(n239) );
  UDB116SVT24_OAI21_0P75 U300 ( .A1(n241), .A2(n240), .B(n239), .X(n59) );
  UDB116SVT24_BUF_1 U301 ( .A(n266), .X(n253) );
  UDB116SVT24_INV_0P75 U302 ( .A(pkt_reg[36]), .X(n244) );
  UDB116SVT24_BUF_1 U303 ( .A(n242), .X(n250) );
  UDB116SVT24_BUF_1 U304 ( .A(n254), .X(n249) );
  UDB116SVT24_AOI22_1 U305 ( .A1(n250), .A2(pkt_reg[44]), .B1(n249), .B2(
        din[44]), .X(n243) );
  UDB116SVT24_OAI21_0P75 U306 ( .A1(n253), .A2(n244), .B(n243), .X(n58) );
  UDB116SVT24_INV_0P75 U307 ( .A(pkt_reg[37]), .X(n246) );
  UDB116SVT24_AOI22_1 U308 ( .A1(n250), .A2(pkt_reg[45]), .B1(n249), .B2(
        din[45]), .X(n245) );
  UDB116SVT24_OAI21_0P75 U309 ( .A1(n253), .A2(n246), .B(n245), .X(n57) );
  UDB116SVT24_INV_0P75 U310 ( .A(pkt_reg[38]), .X(n248) );
  UDB116SVT24_AOI22_1 U311 ( .A1(n250), .A2(pkt_reg[46]), .B1(n249), .B2(
        din[46]), .X(n247) );
  UDB116SVT24_OAI21_0P75 U312 ( .A1(n253), .A2(n248), .B(n247), .X(n56) );
  UDB116SVT24_INV_0P75 U313 ( .A(pkt_reg[39]), .X(n252) );
  UDB116SVT24_AOI22_1 U314 ( .A1(n250), .A2(pkt_reg[47]), .B1(n249), .B2(
        din[47]), .X(n251) );
  UDB116SVT24_OAI21_0P75 U315 ( .A1(n253), .A2(n252), .B(n251), .X(n55) );
  UDB116SVT24_BUF_1 U316 ( .A(n266), .X(n265) );
  UDB116SVT24_INV_0P75 U317 ( .A(pkt_reg[40]), .X(n256) );
  UDB116SVT24_BUF_1 U318 ( .A(n267), .X(n262) );
  UDB116SVT24_BUF_1 U319 ( .A(n254), .X(n261) );
  UDB116SVT24_AOI22_1 U320 ( .A1(n262), .A2(pkt_reg[48]), .B1(n261), .B2(
        din[48]), .X(n255) );
  UDB116SVT24_OAI21_0P75 U321 ( .A1(n265), .A2(n256), .B(n255), .X(n54) );
  UDB116SVT24_INV_0P75 U322 ( .A(pkt_reg[41]), .X(n258) );
  UDB116SVT24_AOI22_1 U323 ( .A1(n262), .A2(pkt_reg[49]), .B1(n261), .B2(
        din[49]), .X(n257) );
  UDB116SVT24_OAI21_0P75 U324 ( .A1(n265), .A2(n258), .B(n257), .X(n53) );
  UDB116SVT24_INV_0P75 U325 ( .A(pkt_reg[42]), .X(n260) );
  UDB116SVT24_AOI22_1 U326 ( .A1(n262), .A2(pkt_reg[50]), .B1(n261), .B2(
        din[50]), .X(n259) );
  UDB116SVT24_OAI21_0P75 U327 ( .A1(n265), .A2(n260), .B(n259), .X(n52) );
  UDB116SVT24_INV_0P75 U328 ( .A(pkt_reg[43]), .X(n264) );
  UDB116SVT24_AOI22_1 U329 ( .A1(n262), .A2(pkt_reg[51]), .B1(n261), .B2(
        din[51]), .X(n263) );
  UDB116SVT24_OAI21_0P75 U330 ( .A1(n265), .A2(n264), .B(n263), .X(n51) );
  UDB116SVT24_BUF_1 U331 ( .A(n266), .X(n290) );
  UDB116SVT24_BUF_1 U332 ( .A(n290), .X(n278) );
  UDB116SVT24_INV_0P75 U333 ( .A(pkt_reg[44]), .X(n269) );
  UDB116SVT24_BUF_1 U334 ( .A(n267), .X(n275) );
  UDB116SVT24_BUF_1 U335 ( .A(n292), .X(n274) );
  UDB116SVT24_AOI22_1 U336 ( .A1(n275), .A2(pkt_reg[52]), .B1(n274), .B2(
        din[52]), .X(n268) );
  UDB116SVT24_OAI21_0P75 U337 ( .A1(n278), .A2(n269), .B(n268), .X(n50) );
  UDB116SVT24_INV_0P75 U338 ( .A(pkt_reg[45]), .X(n271) );
  UDB116SVT24_AOI22_1 U339 ( .A1(n275), .A2(pkt_reg[53]), .B1(n274), .B2(
        din[53]), .X(n270) );
  UDB116SVT24_OAI21_0P75 U340 ( .A1(n278), .A2(n271), .B(n270), .X(n49) );
  UDB116SVT24_INV_0P75 U341 ( .A(pkt_reg[46]), .X(n273) );
  UDB116SVT24_AOI22_1 U342 ( .A1(n275), .A2(pkt_reg[54]), .B1(n274), .B2(
        din[54]), .X(n272) );
  UDB116SVT24_OAI21_0P75 U343 ( .A1(n278), .A2(n273), .B(n272), .X(n48) );
  UDB116SVT24_INV_0P75 U344 ( .A(pkt_reg[47]), .X(n277) );
  UDB116SVT24_AOI22_1 U345 ( .A1(n275), .A2(pkt_reg[55]), .B1(n274), .B2(
        din[55]), .X(n276) );
  UDB116SVT24_OAI21_0P75 U346 ( .A1(n278), .A2(n277), .B(n276), .X(n47) );
  UDB116SVT24_BUF_1 U347 ( .A(n290), .X(n289) );
  UDB116SVT24_INV_0P75 U348 ( .A(pkt_reg[48]), .X(n280) );
  UDB116SVT24_BUF_1 U349 ( .A(n291), .X(n286) );
  UDB116SVT24_BUF_1 U350 ( .A(n292), .X(n285) );
  UDB116SVT24_AOI22_1 U351 ( .A1(n286), .A2(pkt_reg[56]), .B1(n285), .B2(
        din[56]), .X(n279) );
  UDB116SVT24_OAI21_0P75 U352 ( .A1(n289), .A2(n280), .B(n279), .X(n46) );
  UDB116SVT24_INV_0P75 U353 ( .A(pkt_reg[49]), .X(n282) );
  UDB116SVT24_AOI22_1 U354 ( .A1(n286), .A2(pkt_reg[57]), .B1(n285), .B2(
        din[57]), .X(n281) );
  UDB116SVT24_OAI21_0P75 U355 ( .A1(n289), .A2(n282), .B(n281), .X(n45) );
  UDB116SVT24_INV_0P75 U356 ( .A(pkt_reg[50]), .X(n284) );
  UDB116SVT24_AOI22_1 U357 ( .A1(n286), .A2(pkt_reg[58]), .B1(n285), .B2(
        din[58]), .X(n283) );
  UDB116SVT24_OAI21_0P75 U358 ( .A1(n289), .A2(n284), .B(n283), .X(n44) );
  UDB116SVT24_INV_0P75 U359 ( .A(pkt_reg[51]), .X(n288) );
  UDB116SVT24_AOI22_1 U360 ( .A1(n286), .A2(pkt_reg[59]), .B1(n285), .B2(
        din[59]), .X(n287) );
  UDB116SVT24_OAI21_0P75 U361 ( .A1(n289), .A2(n288), .B(n287), .X(n43) );
  UDB116SVT24_BUF_1 U362 ( .A(n290), .X(n302) );
  UDB116SVT24_INV_0P75 U363 ( .A(pkt_reg[52]), .X(n294) );
  UDB116SVT24_BUF_1 U364 ( .A(n291), .X(n299) );
  UDB116SVT24_AOI22_1 U365 ( .A1(n299), .A2(pkt_reg[60]), .B1(n147), .B2(
        din[60]), .X(n293) );
  UDB116SVT24_OAI21_0P75 U366 ( .A1(n302), .A2(n294), .B(n293), .X(n42) );
  UDB116SVT24_INV_0P75 U367 ( .A(pkt_reg[53]), .X(n296) );
  UDB116SVT24_AOI22_1 U368 ( .A1(n299), .A2(pkt_reg[61]), .B1(n184), .B2(
        din[61]), .X(n295) );
  UDB116SVT24_OAI21_0P75 U369 ( .A1(n302), .A2(n296), .B(n295), .X(n41) );
  UDB116SVT24_INV_0P75 U370 ( .A(pkt_reg[54]), .X(n298) );
  UDB116SVT24_AOI22_1 U371 ( .A1(n299), .A2(pkt_reg[62]), .B1(n292), .B2(
        din[62]), .X(n297) );
  UDB116SVT24_OAI21_0P75 U372 ( .A1(n302), .A2(n298), .B(n297), .X(n40) );
  UDB116SVT24_INV_0P75 U373 ( .A(pkt_reg[55]), .X(n301) );
  UDB116SVT24_AOI22_1 U374 ( .A1(n299), .A2(pkt_reg[63]), .B1(n254), .B2(
        din[63]), .X(n300) );
  UDB116SVT24_OAI21_0P75 U375 ( .A1(n302), .A2(n301), .B(n300), .X(n39) );
endmodule

