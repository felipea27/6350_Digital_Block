/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : V-2023.12-SP1
// Date      : Fri Apr 18 13:02:41 2025
/////////////////////////////////////////////////////////////


module Pkt_reg ( din, pkt_rec, en, clk, rst, dout, SPI_en );
  input [23:0] din;
  output [7:0] dout;
  input pkt_rec, en, clk, rst, SPI_en;
  wire   n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62,
         n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76,
         n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90,
         n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103,
         n104, n105, n106, n107, n108, n109, n110, n111, n112, n113, n114,
         n115, n116, n117, n118, n119, n120, n121, n122, n123, n124, n125,
         n126, n127, n128, n129, n130, n131, n132, n133, n134, n135, n136,
         n137;
  wire   [23:0] pkt_reg;

  UDB116SVT24_FDPRBQ_V2_1 \pkt_reg_reg[7]  ( .D(n45), .CK(clk), .RD(n130), .Q(
        pkt_reg[7]) );
  UDB116SVT24_FDPRBQ_V2_1 \pkt_reg_reg[15]  ( .D(n37), .CK(clk), .RD(n130), 
        .Q(pkt_reg[15]) );
  UDB116SVT24_FDPRBQ_V2_1 \pkt_reg_reg[23]  ( .D(n29), .CK(clk), .RD(n130), 
        .Q(pkt_reg[23]) );
  UDB116SVT24_FDPRBQ_V2_1 \dout_reg[7]  ( .D(n21), .CK(clk), .RD(n131), .Q(
        dout[7]) );
  UDB116SVT24_FDPRBQ_V2_1 \pkt_reg_reg[6]  ( .D(n46), .CK(clk), .RD(n131), .Q(
        pkt_reg[6]) );
  UDB116SVT24_FDPRBQ_V2_1 \pkt_reg_reg[14]  ( .D(n38), .CK(clk), .RD(n131), 
        .Q(pkt_reg[14]) );
  UDB116SVT24_FDPRBQ_V2_1 \pkt_reg_reg[22]  ( .D(n30), .CK(clk), .RD(n131), 
        .Q(pkt_reg[22]) );
  UDB116SVT24_FDPRBQ_V2_1 \dout_reg[6]  ( .D(n22), .CK(clk), .RD(n132), .Q(
        dout[6]) );
  UDB116SVT24_FDPRBQ_V2_1 \pkt_reg_reg[5]  ( .D(n47), .CK(clk), .RD(n132), .Q(
        pkt_reg[5]) );
  UDB116SVT24_FDPRBQ_V2_1 \pkt_reg_reg[13]  ( .D(n39), .CK(clk), .RD(n132), 
        .Q(pkt_reg[13]) );
  UDB116SVT24_FDPRBQ_V2_1 \pkt_reg_reg[21]  ( .D(n31), .CK(clk), .RD(n132), 
        .Q(pkt_reg[21]) );
  UDB116SVT24_FDPRBQ_V2_1 \dout_reg[5]  ( .D(n23), .CK(clk), .RD(n133), .Q(
        dout[5]) );
  UDB116SVT24_FDPRBQ_V2_1 \pkt_reg_reg[4]  ( .D(n48), .CK(clk), .RD(n133), .Q(
        pkt_reg[4]) );
  UDB116SVT24_FDPRBQ_V2_1 \pkt_reg_reg[12]  ( .D(n40), .CK(clk), .RD(n133), 
        .Q(pkt_reg[12]) );
  UDB116SVT24_FDPRBQ_V2_1 \pkt_reg_reg[20]  ( .D(n32), .CK(clk), .RD(n133), 
        .Q(pkt_reg[20]) );
  UDB116SVT24_FDPRBQ_V2_1 \dout_reg[4]  ( .D(n24), .CK(clk), .RD(n134), .Q(
        dout[4]) );
  UDB116SVT24_FDPRBQ_V2_1 \pkt_reg_reg[3]  ( .D(n49), .CK(clk), .RD(n134), .Q(
        pkt_reg[3]) );
  UDB116SVT24_FDPRBQ_V2_1 \pkt_reg_reg[11]  ( .D(n41), .CK(clk), .RD(n134), 
        .Q(pkt_reg[11]) );
  UDB116SVT24_FDPRBQ_V2_1 \pkt_reg_reg[19]  ( .D(n33), .CK(clk), .RD(n134), 
        .Q(pkt_reg[19]) );
  UDB116SVT24_FDPRBQ_V2_1 \dout_reg[3]  ( .D(n25), .CK(clk), .RD(n135), .Q(
        dout[3]) );
  UDB116SVT24_FDPRBQ_V2_1 \pkt_reg_reg[2]  ( .D(n50), .CK(clk), .RD(n135), .Q(
        pkt_reg[2]) );
  UDB116SVT24_FDPRBQ_V2_1 \pkt_reg_reg[10]  ( .D(n42), .CK(clk), .RD(n135), 
        .Q(pkt_reg[10]) );
  UDB116SVT24_FDPRBQ_V2_1 \pkt_reg_reg[18]  ( .D(n34), .CK(clk), .RD(n135), 
        .Q(pkt_reg[18]) );
  UDB116SVT24_FDPRBQ_V2_1 \dout_reg[2]  ( .D(n26), .CK(clk), .RD(n136), .Q(
        dout[2]) );
  UDB116SVT24_FDPRBQ_V2_1 \pkt_reg_reg[1]  ( .D(n51), .CK(clk), .RD(n136), .Q(
        pkt_reg[1]) );
  UDB116SVT24_FDPRBQ_V2_1 \pkt_reg_reg[9]  ( .D(n43), .CK(clk), .RD(n136), .Q(
        pkt_reg[9]) );
  UDB116SVT24_FDPRBQ_V2_1 \pkt_reg_reg[17]  ( .D(n35), .CK(clk), .RD(n136), 
        .Q(pkt_reg[17]) );
  UDB116SVT24_FDPRBQ_V2_1 \dout_reg[1]  ( .D(n27), .CK(clk), .RD(n137), .Q(
        dout[1]) );
  UDB116SVT24_FDPRBQ_V2_1 \pkt_reg_reg[0]  ( .D(n52), .CK(clk), .RD(n130), .Q(
        pkt_reg[0]) );
  UDB116SVT24_FDPRBQ_V2_1 \pkt_reg_reg[8]  ( .D(n44), .CK(clk), .RD(n137), .Q(
        pkt_reg[8]) );
  UDB116SVT24_FDPRBQ_V2_1 \pkt_reg_reg[16]  ( .D(n36), .CK(clk), .RD(n137), 
        .Q(pkt_reg[16]) );
  UDB116SVT24_FDPRBQ_V2_1 \dout_reg[0]  ( .D(n28), .CK(clk), .RD(n137), .Q(
        dout[0]) );
  UDB116SVT24_ND2_MM_0P75 U55 ( .A1(n87), .A2(SPI_en), .X(n53) );
  UDB116SVT24_INV_0P75 U56 ( .A(n129), .X(n54) );
  UDB116SVT24_INV_0P75 U57 ( .A(n54), .X(n55) );
  UDB116SVT24_INV_0P75 U58 ( .A(n54), .X(n56) );
  UDB116SVT24_INV_0P75 U59 ( .A(n54), .X(n57) );
  UDB116SVT24_INV_0P75 U60 ( .A(n54), .X(n58) );
  UDB116SVT24_BUF_1 U61 ( .A(pkt_rec), .X(n113) );
  UDB116SVT24_BUF_1 U62 ( .A(rst), .X(n59) );
  UDB116SVT24_BUF_1 U63 ( .A(n59), .X(n60) );
  UDB116SVT24_BUF_1 U64 ( .A(n60), .X(n130) );
  UDB116SVT24_BUF_1 U65 ( .A(n60), .X(n137) );
  UDB116SVT24_BUF_1 U66 ( .A(n60), .X(n131) );
  UDB116SVT24_BUF_1 U67 ( .A(n59), .X(n136) );
  UDB116SVT24_BUF_1 U68 ( .A(rst), .X(n135) );
  UDB116SVT24_BUF_1 U69 ( .A(rst), .X(n132) );
  UDB116SVT24_BUF_1 U70 ( .A(n59), .X(n134) );
  UDB116SVT24_BUF_1 U71 ( .A(n60), .X(n133) );
  UDB116SVT24_BUF_1 U72 ( .A(n113), .X(n93) );
  UDB116SVT24_BUF_1 U73 ( .A(n93), .X(n102) );
  UDB116SVT24_NR2_0P75 U74 ( .A1(n102), .A2(en), .X(n103) );
  UDB116SVT24_BUF_1 U75 ( .A(n103), .X(n94) );
  UDB116SVT24_BUF_1 U76 ( .A(n94), .X(n79) );
  UDB116SVT24_INV_0P75 U77 ( .A(dout[1]), .X(n62) );
  UDB116SVT24_BUF_1 U78 ( .A(n94), .X(n87) );
  UDB116SVT24_ND2_MM_0P75 U79 ( .A1(n87), .A2(SPI_en), .X(n77) );
  UDB116SVT24_INV_0P75 U80 ( .A(pkt_reg[17]), .X(n61) );
  UDB116SVT24_OAI22_0P75 U81 ( .A1(n79), .A2(n62), .B1(n77), .B2(n61), .X(n27)
         );
  UDB116SVT24_BUF_1 U82 ( .A(n87), .X(n73) );
  UDB116SVT24_INV_0P75 U83 ( .A(dout[7]), .X(n64) );
  UDB116SVT24_INV_0P75 U84 ( .A(pkt_reg[23]), .X(n63) );
  UDB116SVT24_OAI22_0P75 U85 ( .A1(n73), .A2(n64), .B1(n53), .B2(n63), .X(n21)
         );
  UDB116SVT24_INV_0P75 U86 ( .A(dout[5]), .X(n66) );
  UDB116SVT24_INV_0P75 U87 ( .A(pkt_reg[21]), .X(n65) );
  UDB116SVT24_OAI22_0P75 U88 ( .A1(n73), .A2(n66), .B1(n77), .B2(n65), .X(n23)
         );
  UDB116SVT24_INV_0P75 U89 ( .A(dout[3]), .X(n68) );
  UDB116SVT24_INV_0P75 U90 ( .A(pkt_reg[19]), .X(n67) );
  UDB116SVT24_OAI22_0P75 U91 ( .A1(n79), .A2(n68), .B1(n53), .B2(n67), .X(n25)
         );
  UDB116SVT24_INV_0P75 U92 ( .A(dout[4]), .X(n70) );
  UDB116SVT24_INV_0P75 U93 ( .A(pkt_reg[20]), .X(n69) );
  UDB116SVT24_OAI22_0P75 U94 ( .A1(n73), .A2(n70), .B1(n77), .B2(n69), .X(n24)
         );
  UDB116SVT24_INV_0P75 U95 ( .A(dout[6]), .X(n72) );
  UDB116SVT24_INV_0P75 U96 ( .A(pkt_reg[22]), .X(n71) );
  UDB116SVT24_OAI22_0P75 U97 ( .A1(n73), .A2(n72), .B1(n53), .B2(n71), .X(n22)
         );
  UDB116SVT24_INV_0P75 U98 ( .A(dout[2]), .X(n75) );
  UDB116SVT24_INV_0P75 U99 ( .A(pkt_reg[18]), .X(n74) );
  UDB116SVT24_OAI22_0P75 U100 ( .A1(n79), .A2(n75), .B1(n77), .B2(n74), .X(n26) );
  UDB116SVT24_INV_0P75 U101 ( .A(dout[0]), .X(n78) );
  UDB116SVT24_INV_0P75 U102 ( .A(pkt_reg[16]), .X(n76) );
  UDB116SVT24_OAI22_0P75 U103 ( .A1(n79), .A2(n78), .B1(n53), .B2(n76), .X(n28) );
  UDB116SVT24_BUF_1 U104 ( .A(n103), .X(n80) );
  UDB116SVT24_AO22_1 U105 ( .A1(pkt_rec), .A2(din[0]), .B1(n80), .B2(
        pkt_reg[0]), .X(n52) );
  UDB116SVT24_AO22_1 U106 ( .A1(pkt_rec), .A2(din[1]), .B1(n80), .B2(
        pkt_reg[1]), .X(n51) );
  UDB116SVT24_BUF_1 U107 ( .A(n103), .X(n81) );
  UDB116SVT24_AO22_1 U108 ( .A1(pkt_rec), .A2(din[2]), .B1(n81), .B2(
        pkt_reg[2]), .X(n50) );
  UDB116SVT24_AO22_1 U109 ( .A1(n113), .A2(din[3]), .B1(n81), .B2(pkt_reg[3]), 
        .X(n49) );
  UDB116SVT24_BUF_1 U110 ( .A(n113), .X(n82) );
  UDB116SVT24_AO22_1 U111 ( .A1(n82), .A2(din[4]), .B1(n80), .B2(pkt_reg[4]), 
        .X(n48) );
  UDB116SVT24_AO22_1 U112 ( .A1(n82), .A2(din[5]), .B1(n81), .B2(pkt_reg[5]), 
        .X(n47) );
  UDB116SVT24_AO22_1 U113 ( .A1(n82), .A2(din[6]), .B1(n80), .B2(pkt_reg[6]), 
        .X(n46) );
  UDB116SVT24_AO22_1 U114 ( .A1(n82), .A2(din[7]), .B1(n81), .B2(pkt_reg[7]), 
        .X(n45) );
  UDB116SVT24_ND2B_0P75 U115 ( .A(n102), .B(en), .X(n129) );
  UDB116SVT24_INV_0P75 U116 ( .A(pkt_reg[0]), .X(n84) );
  UDB116SVT24_BUF_1 U117 ( .A(n93), .X(n90) );
  UDB116SVT24_BUF_1 U118 ( .A(n94), .X(n121) );
  UDB116SVT24_AOI22_1 U119 ( .A1(n90), .A2(din[8]), .B1(n121), .B2(pkt_reg[8]), 
        .X(n83) );
  UDB116SVT24_OAI21_0P75 U120 ( .A1(n55), .A2(n84), .B(n83), .X(n44) );
  UDB116SVT24_INV_0P75 U121 ( .A(pkt_reg[1]), .X(n86) );
  UDB116SVT24_AOI22_1 U122 ( .A1(n90), .A2(din[9]), .B1(n121), .B2(pkt_reg[9]), 
        .X(n85) );
  UDB116SVT24_OAI21_0P75 U123 ( .A1(n56), .A2(n86), .B(n85), .X(n43) );
  UDB116SVT24_INV_0P75 U124 ( .A(pkt_reg[2]), .X(n89) );
  UDB116SVT24_BUF_1 U125 ( .A(n87), .X(n99) );
  UDB116SVT24_AOI22_1 U126 ( .A1(n90), .A2(din[10]), .B1(n99), .B2(pkt_reg[10]), .X(n88) );
  UDB116SVT24_OAI21_0P75 U127 ( .A1(n57), .A2(n89), .B(n88), .X(n42) );
  UDB116SVT24_INV_0P75 U128 ( .A(pkt_reg[3]), .X(n92) );
  UDB116SVT24_AOI22_1 U129 ( .A1(n90), .A2(din[11]), .B1(n99), .B2(pkt_reg[11]), .X(n91) );
  UDB116SVT24_OAI21_0P75 U130 ( .A1(n58), .A2(n92), .B(n91), .X(n41) );
  UDB116SVT24_INV_0P75 U131 ( .A(pkt_reg[4]), .X(n96) );
  UDB116SVT24_BUF_1 U132 ( .A(n93), .X(n126) );
  UDB116SVT24_BUF_1 U133 ( .A(n94), .X(n125) );
  UDB116SVT24_AOI22_1 U134 ( .A1(n126), .A2(din[12]), .B1(n125), .B2(
        pkt_reg[12]), .X(n95) );
  UDB116SVT24_OAI21_0P75 U135 ( .A1(n55), .A2(n96), .B(n95), .X(n40) );
  UDB116SVT24_INV_0P75 U136 ( .A(pkt_reg[5]), .X(n98) );
  UDB116SVT24_AOI22_1 U137 ( .A1(n126), .A2(din[13]), .B1(n99), .B2(
        pkt_reg[13]), .X(n97) );
  UDB116SVT24_OAI21_0P75 U138 ( .A1(n56), .A2(n98), .B(n97), .X(n39) );
  UDB116SVT24_INV_0P75 U139 ( .A(pkt_reg[6]), .X(n101) );
  UDB116SVT24_AOI22_1 U140 ( .A1(n126), .A2(din[14]), .B1(n99), .B2(
        pkt_reg[14]), .X(n100) );
  UDB116SVT24_OAI21_0P75 U141 ( .A1(n57), .A2(n101), .B(n100), .X(n38) );
  UDB116SVT24_INV_0P75 U142 ( .A(pkt_reg[7]), .X(n105) );
  UDB116SVT24_BUF_1 U143 ( .A(n102), .X(n110) );
  UDB116SVT24_BUF_1 U144 ( .A(n103), .X(n114) );
  UDB116SVT24_AOI22_1 U145 ( .A1(n110), .A2(din[15]), .B1(n114), .B2(
        pkt_reg[15]), .X(n104) );
  UDB116SVT24_OAI21_0P75 U146 ( .A1(n58), .A2(n105), .B(n104), .X(n37) );
  UDB116SVT24_INV_0P75 U147 ( .A(pkt_reg[8]), .X(n107) );
  UDB116SVT24_AOI22_1 U148 ( .A1(n110), .A2(din[16]), .B1(n125), .B2(
        pkt_reg[16]), .X(n106) );
  UDB116SVT24_OAI21_0P75 U149 ( .A1(n55), .A2(n107), .B(n106), .X(n36) );
  UDB116SVT24_INV_0P75 U150 ( .A(pkt_reg[9]), .X(n109) );
  UDB116SVT24_AOI22_1 U151 ( .A1(n110), .A2(din[17]), .B1(n114), .B2(
        pkt_reg[17]), .X(n108) );
  UDB116SVT24_OAI21_0P75 U152 ( .A1(n56), .A2(n109), .B(n108), .X(n35) );
  UDB116SVT24_INV_0P75 U153 ( .A(pkt_reg[10]), .X(n112) );
  UDB116SVT24_AOI22_1 U154 ( .A1(n110), .A2(din[18]), .B1(n114), .B2(
        pkt_reg[18]), .X(n111) );
  UDB116SVT24_OAI21_0P75 U155 ( .A1(n57), .A2(n112), .B(n111), .X(n34) );
  UDB116SVT24_INV_0P75 U156 ( .A(pkt_reg[11]), .X(n116) );
  UDB116SVT24_BUF_1 U157 ( .A(n113), .X(n122) );
  UDB116SVT24_AOI22_1 U158 ( .A1(n122), .A2(din[19]), .B1(n114), .B2(
        pkt_reg[19]), .X(n115) );
  UDB116SVT24_OAI21_0P75 U159 ( .A1(n58), .A2(n116), .B(n115), .X(n33) );
  UDB116SVT24_INV_0P75 U160 ( .A(pkt_reg[12]), .X(n118) );
  UDB116SVT24_AOI22_1 U161 ( .A1(n122), .A2(din[20]), .B1(n121), .B2(
        pkt_reg[20]), .X(n117) );
  UDB116SVT24_OAI21_0P75 U162 ( .A1(n55), .A2(n118), .B(n117), .X(n32) );
  UDB116SVT24_INV_0P75 U163 ( .A(pkt_reg[13]), .X(n120) );
  UDB116SVT24_AOI22_1 U164 ( .A1(n122), .A2(din[21]), .B1(n125), .B2(
        pkt_reg[21]), .X(n119) );
  UDB116SVT24_OAI21_0P75 U165 ( .A1(n56), .A2(n120), .B(n119), .X(n31) );
  UDB116SVT24_INV_0P75 U166 ( .A(pkt_reg[14]), .X(n124) );
  UDB116SVT24_AOI22_1 U167 ( .A1(n122), .A2(din[22]), .B1(n121), .B2(
        pkt_reg[22]), .X(n123) );
  UDB116SVT24_OAI21_0P75 U168 ( .A1(n57), .A2(n124), .B(n123), .X(n30) );
  UDB116SVT24_INV_0P75 U169 ( .A(pkt_reg[15]), .X(n128) );
  UDB116SVT24_AOI22_1 U170 ( .A1(n126), .A2(din[23]), .B1(n125), .B2(
        pkt_reg[23]), .X(n127) );
  UDB116SVT24_OAI21_0P75 U171 ( .A1(n58), .A2(n128), .B(n127), .X(n29) );
endmodule

