/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : V-2023.12-SP1
// Date      : Mon Apr 14 00:02:25 2025
/////////////////////////////////////////////////////////////


module Shift_Buffer ( din, clk, rst, dout, pkt_rec, en, pkt_rst );
  output [23:0] dout;
  input din, clk, rst, en, pkt_rst;
  output pkt_rec;
  wire   N28, N29, N30, N31, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37,
         n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51,
         n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65,
         n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79,
         n80, n81, n82, n83, n84, n85;
  wire   [3:0] sync;

  UDB116SVT24_FDPRBQ_V2_1 \shift_reg_reg[0]  ( .D(n52), .CK(clk), .RD(n78), 
        .Q(dout[0]) );
  UDB116SVT24_FDPRBQ_V2_1 \shift_reg_reg[1]  ( .D(n51), .CK(clk), .RD(n78), 
        .Q(dout[1]) );
  UDB116SVT24_FDPRBQ_V2_1 \shift_reg_reg[2]  ( .D(n50), .CK(clk), .RD(n78), 
        .Q(dout[2]) );
  UDB116SVT24_FDPRBQ_V2_1 \shift_reg_reg[3]  ( .D(n49), .CK(clk), .RD(n78), 
        .Q(dout[3]) );
  UDB116SVT24_FDPRBQ_V2_1 \shift_reg_reg[4]  ( .D(n48), .CK(clk), .RD(n79), 
        .Q(dout[4]) );
  UDB116SVT24_FDPRBQ_V2_1 \shift_reg_reg[5]  ( .D(n47), .CK(clk), .RD(n79), 
        .Q(dout[5]) );
  UDB116SVT24_FDPRBQ_V2_1 \shift_reg_reg[6]  ( .D(n46), .CK(clk), .RD(n79), 
        .Q(dout[6]) );
  UDB116SVT24_FDPRBQ_V2_1 \shift_reg_reg[7]  ( .D(n45), .CK(clk), .RD(n79), 
        .Q(dout[7]) );
  UDB116SVT24_FDPRBQ_V2_1 \shift_reg_reg[8]  ( .D(n44), .CK(clk), .RD(n80), 
        .Q(dout[8]) );
  UDB116SVT24_FDPRBQ_V2_1 \shift_reg_reg[9]  ( .D(n43), .CK(clk), .RD(n80), 
        .Q(dout[9]) );
  UDB116SVT24_FDPRBQ_V2_1 \shift_reg_reg[10]  ( .D(n42), .CK(clk), .RD(n80), 
        .Q(dout[10]) );
  UDB116SVT24_FDPRBQ_V2_1 \shift_reg_reg[11]  ( .D(n41), .CK(clk), .RD(n80), 
        .Q(dout[11]) );
  UDB116SVT24_FDPRBQ_V2_1 \shift_reg_reg[12]  ( .D(n40), .CK(clk), .RD(n81), 
        .Q(dout[12]) );
  UDB116SVT24_FDPRBQ_V2_1 \shift_reg_reg[13]  ( .D(n39), .CK(clk), .RD(n81), 
        .Q(dout[13]) );
  UDB116SVT24_FDPRBQ_V2_1 \shift_reg_reg[14]  ( .D(n38), .CK(clk), .RD(n81), 
        .Q(dout[14]) );
  UDB116SVT24_FDPRBQ_V2_1 \shift_reg_reg[15]  ( .D(n37), .CK(clk), .RD(n81), 
        .Q(dout[15]) );
  UDB116SVT24_FDPRBQ_V2_1 \shift_reg_reg[16]  ( .D(n36), .CK(clk), .RD(n82), 
        .Q(dout[16]) );
  UDB116SVT24_FDPRBQ_V2_1 \shift_reg_reg[17]  ( .D(n35), .CK(clk), .RD(n82), 
        .Q(dout[17]) );
  UDB116SVT24_FDPRBQ_V2_1 \shift_reg_reg[18]  ( .D(n34), .CK(clk), .RD(n82), 
        .Q(dout[18]) );
  UDB116SVT24_FDPRBQ_V2_1 \shift_reg_reg[19]  ( .D(n33), .CK(clk), .RD(n82), 
        .Q(dout[19]) );
  UDB116SVT24_FDPRBQ_V2_1 \shift_reg_reg[20]  ( .D(n32), .CK(clk), .RD(n83), 
        .Q(dout[20]) );
  UDB116SVT24_FDPRBQ_V2_1 \shift_reg_reg[21]  ( .D(n31), .CK(clk), .RD(n83), 
        .Q(dout[21]) );
  UDB116SVT24_FDPRBQ_V2_1 \shift_reg_reg[22]  ( .D(n30), .CK(clk), .RD(n83), 
        .Q(dout[22]) );
  UDB116SVT24_FDPRBQ_V2_1 \shift_reg_reg[23]  ( .D(n29), .CK(clk), .RD(n83), 
        .Q(dout[23]) );
  UDB116SVT24_FDPRBQ_V2_1 \sync_reg[3]  ( .D(N31), .CK(clk), .RD(n84), .Q(
        sync[3]) );
  UDB116SVT24_FDPRBQ_V2_1 \sync_reg[2]  ( .D(N30), .CK(clk), .RD(n84), .Q(
        sync[2]) );
  UDB116SVT24_FDPRBQ_V2_1 \sync_reg[1]  ( .D(N29), .CK(clk), .RD(n84), .Q(
        sync[1]) );
  UDB116SVT24_FDPRBQ_V2_1 \sync_reg[0]  ( .D(N28), .CK(clk), .RD(n84), .Q(
        sync[0]) );
  UDB116SVT24_FDPRBQ_V2_1 pkt_rec_reg ( .D(n28), .CK(clk), .RD(n85), .Q(
        pkt_rec) );
  UDB116SVT24_INV_0P75 U59 ( .A(n61), .X(n53) );
  UDB116SVT24_INV_0P75 U60 ( .A(n53), .X(n54) );
  UDB116SVT24_INV_0P75 U61 ( .A(n53), .X(n55) );
  UDB116SVT24_INV_0P75 U62 ( .A(pkt_rst), .X(n56) );
  UDB116SVT24_INV_0P75 U63 ( .A(n56), .X(n57) );
  UDB116SVT24_INV_0P75 U64 ( .A(n75), .X(n58) );
  UDB116SVT24_INV_0P75 U65 ( .A(n58), .X(n59) );
  UDB116SVT24_INV_0P75 U66 ( .A(n58), .X(n60) );
  UDB116SVT24_INV_0P75 U67 ( .A(n58), .X(n61) );
  UDB116SVT24_BUF_1 U68 ( .A(rst), .X(n85) );
  UDB116SVT24_BUF_1 U69 ( .A(n85), .X(n62) );
  UDB116SVT24_BUF_1 U70 ( .A(n62), .X(n78) );
  UDB116SVT24_BUF_1 U71 ( .A(n85), .X(n84) );
  UDB116SVT24_BUF_1 U72 ( .A(n62), .X(n79) );
  UDB116SVT24_BUF_1 U73 ( .A(rst), .X(n83) );
  UDB116SVT24_BUF_1 U74 ( .A(rst), .X(n80) );
  UDB116SVT24_BUF_1 U75 ( .A(n85), .X(n82) );
  UDB116SVT24_BUF_1 U76 ( .A(n62), .X(n81) );
  UDB116SVT24_ND2_MM_0P75 U77 ( .A1(n56), .A2(dout[10]), .X(n64) );
  UDB116SVT24_INV_0P75 U78 ( .A(n64), .X(N31) );
  UDB116SVT24_ND2_MM_0P75 U79 ( .A1(n56), .A2(dout[12]), .X(n63) );
  UDB116SVT24_INV_0P75 U80 ( .A(n63), .X(N29) );
  UDB116SVT24_OR2_0P75 U81 ( .A1(pkt_rst), .A2(en), .X(n70) );
  UDB116SVT24_BUF_1 U82 ( .A(n70), .X(n71) );
  UDB116SVT24_INV_0P75 U83 ( .A(n71), .X(n69) );
  UDB116SVT24_INV_0P75 U84 ( .A(dout[13]), .X(n65) );
  UDB116SVT24_BUF_1 U85 ( .A(n70), .X(n72) );
  UDB116SVT24_AOI22_1 U86 ( .A1(n69), .A2(n65), .B1(n63), .B2(n72), .X(n39) );
  UDB116SVT24_INV_0P75 U87 ( .A(n71), .X(n67) );
  UDB116SVT24_INV_0P75 U88 ( .A(dout[11]), .X(n66) );
  UDB116SVT24_AOI22_1 U89 ( .A1(n67), .A2(n66), .B1(n64), .B2(n70), .X(n41) );
  UDB116SVT24_NR2_0P75 U90 ( .A1(n57), .A2(n65), .X(N28) );
  UDB116SVT24_NR2_0P75 U91 ( .A1(pkt_rst), .A2(n66), .X(N30) );
  UDB116SVT24_INV_0P75 U92 ( .A(n72), .X(n74) );
  UDB116SVT24_NR2B_0P75 U93 ( .A(en), .B(n57), .X(n75) );
  UDB116SVT24_AO22_1 U94 ( .A1(n74), .A2(dout[0]), .B1(n59), .B2(din), .X(n52)
         );
  UDB116SVT24_AO22_1 U95 ( .A1(n67), .A2(dout[1]), .B1(dout[0]), .B2(n61), .X(
        n51) );
  UDB116SVT24_AO22_1 U96 ( .A1(n67), .A2(dout[2]), .B1(n59), .B2(dout[1]), .X(
        n50) );
  UDB116SVT24_AO22_1 U97 ( .A1(n67), .A2(dout[3]), .B1(n61), .B2(dout[2]), .X(
        n49) );
  UDB116SVT24_INV_0P75 U98 ( .A(n71), .X(n68) );
  UDB116SVT24_AO22_1 U99 ( .A1(n61), .A2(dout[3]), .B1(n68), .B2(dout[4]), .X(
        n48) );
  UDB116SVT24_AO22_1 U100 ( .A1(n60), .A2(dout[4]), .B1(n68), .B2(dout[5]), 
        .X(n47) );
  UDB116SVT24_AO22_1 U101 ( .A1(n55), .A2(dout[5]), .B1(n68), .B2(dout[6]), 
        .X(n46) );
  UDB116SVT24_AO22_1 U102 ( .A1(n75), .A2(dout[6]), .B1(n68), .B2(dout[7]), 
        .X(n45) );
  UDB116SVT24_AO22_1 U103 ( .A1(n60), .A2(dout[7]), .B1(n69), .B2(dout[8]), 
        .X(n44) );
  UDB116SVT24_AO22_1 U104 ( .A1(n59), .A2(dout[8]), .B1(n69), .B2(dout[9]), 
        .X(n43) );
  UDB116SVT24_AO22_1 U105 ( .A1(n54), .A2(dout[9]), .B1(n69), .B2(dout[10]), 
        .X(n42) );
  UDB116SVT24_OA22_1 U106 ( .A1(n70), .A2(dout[12]), .B1(N30), .B2(n74), .X(
        n40) );
  UDB116SVT24_OA22_1 U107 ( .A1(n72), .A2(dout[14]), .B1(N28), .B2(n74), .X(
        n38) );
  UDB116SVT24_INV_0P75 U108 ( .A(n71), .X(n76) );
  UDB116SVT24_AO22_1 U109 ( .A1(n76), .A2(dout[15]), .B1(n54), .B2(dout[14]), 
        .X(n37) );
  UDB116SVT24_AO22_1 U110 ( .A1(n76), .A2(dout[16]), .B1(n55), .B2(dout[15]), 
        .X(n36) );
  UDB116SVT24_AO22_1 U111 ( .A1(n76), .A2(dout[17]), .B1(n75), .B2(dout[16]), 
        .X(n35) );
  UDB116SVT24_INV_0P75 U112 ( .A(n72), .X(n73) );
  UDB116SVT24_AO22_1 U113 ( .A1(n73), .A2(dout[18]), .B1(n59), .B2(dout[17]), 
        .X(n34) );
  UDB116SVT24_AO22_1 U114 ( .A1(n73), .A2(dout[19]), .B1(n55), .B2(dout[18]), 
        .X(n33) );
  UDB116SVT24_AO22_1 U115 ( .A1(n73), .A2(dout[20]), .B1(n60), .B2(dout[19]), 
        .X(n32) );
  UDB116SVT24_AO22_1 U116 ( .A1(n73), .A2(dout[21]), .B1(n60), .B2(dout[20]), 
        .X(n31) );
  UDB116SVT24_AO22_1 U117 ( .A1(n74), .A2(dout[22]), .B1(n75), .B2(dout[21]), 
        .X(n30) );
  UDB116SVT24_AO22_1 U118 ( .A1(n76), .A2(dout[23]), .B1(n54), .B2(dout[22]), 
        .X(n29) );
  UDB116SVT24_AN4B_1 U119 ( .B1(sync[1]), .B2(sync[3]), .B3(sync[0]), .A(n57), 
        .X(n77) );
  UDB116SVT24_AO22_1 U120 ( .A1(sync[2]), .A2(n77), .B1(pkt_rec), .B2(pkt_rst), 
        .X(n28) );
endmodule

