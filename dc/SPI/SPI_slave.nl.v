/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : V-2023.12-SP1
// Date      : Fri Apr 18 13:10:47 2025
/////////////////////////////////////////////////////////////


module SPI_slave ( rst, clk, MOSI, SCK, SS, DATA, OUT, MISO, SPI_OUT_RDY, 
        CS_sync );
  input [7:0] DATA;
  output [7:0] OUT;
  input rst, clk, MOSI, SCK, SS;
  output MISO, SPI_OUT_RDY, CS_sync;
  wire   SCK_sync_1, MOSI_sync_1, MOSI_sync_0, SCK_sync_0, SS_sync_0, SCK_prev,
         SS_prev, SHIFT_IN, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31,
         n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45,
         n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59,
         n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73,
         n74, n75, n76, n77, n78;
  wire   [7:0] SHIFT_REG;

  UDB116SVT24_FDPRBQ_V2_1 MOSI_sync_0_reg ( .D(MOSI), .CK(clk), .RD(n72), .Q(
        MOSI_sync_0) );
  UDB116SVT24_FDPRBQ_V2_1 MOSI_sync_1_reg ( .D(MOSI_sync_0), .CK(clk), .RD(n72), .Q(MOSI_sync_1) );
  UDB116SVT24_FDPRBQ_V2_1 SCK_sync_0_reg ( .D(SCK), .CK(clk), .RD(n72), .Q(
        SCK_sync_0) );
  UDB116SVT24_FDPRBQ_V2_1 SCK_sync_1_reg ( .D(SCK_sync_0), .CK(clk), .RD(n73), 
        .Q(SCK_sync_1) );
  UDB116SVT24_FDPRBQ_V2_1 SS_sync_0_reg ( .D(SS), .CK(clk), .RD(n72), .Q(
        SS_sync_0) );
  UDB116SVT24_FDPRBQ_V2_1 SS_sync_1_reg ( .D(SS_sync_0), .CK(clk), .RD(n73), 
        .Q(CS_sync) );
  UDB116SVT24_FDPRBQ_V2_1 SCK_prev_reg ( .D(SCK_sync_1), .CK(clk), .RD(n73), 
        .Q(SCK_prev) );
  UDB116SVT24_FDPRBQ_V2_1 SS_prev_reg ( .D(n42), .CK(clk), .RD(n73), .Q(
        SS_prev) );
  UDB116SVT24_FDPRBQ_V2_1 SPI_OUT_RDY_reg ( .D(n39), .CK(clk), .RD(n74), .Q(
        SPI_OUT_RDY) );
  UDB116SVT24_FDPRBQ_V2_1 SHIFT_IN_reg ( .D(n38), .CK(clk), .RD(n74), .Q(
        SHIFT_IN) );
  UDB116SVT24_FDPRBQ_V2_1 \SHIFT_REG_reg[0]  ( .D(n37), .CK(clk), .RD(n74), 
        .Q(SHIFT_REG[0]) );
  UDB116SVT24_FDPRBQ_V2_1 \OUT_reg[0]  ( .D(n36), .CK(clk), .RD(n74), .Q(
        OUT[0]) );
  UDB116SVT24_FDPRBQ_V2_1 \SHIFT_REG_reg[1]  ( .D(n23), .CK(clk), .RD(n75), 
        .Q(SHIFT_REG[1]) );
  UDB116SVT24_FDPRBQ_V2_1 \SHIFT_REG_reg[2]  ( .D(n25), .CK(clk), .RD(n75), 
        .Q(SHIFT_REG[2]) );
  UDB116SVT24_FDPRBQ_V2_1 \SHIFT_REG_reg[3]  ( .D(n27), .CK(clk), .RD(n75), 
        .Q(SHIFT_REG[3]) );
  UDB116SVT24_FDPRBQ_V2_1 \SHIFT_REG_reg[4]  ( .D(n29), .CK(clk), .RD(n75), 
        .Q(SHIFT_REG[4]) );
  UDB116SVT24_FDPRBQ_V2_1 \SHIFT_REG_reg[5]  ( .D(n31), .CK(clk), .RD(n77), 
        .Q(SHIFT_REG[5]) );
  UDB116SVT24_FDPRBQ_V2_1 \SHIFT_REG_reg[6]  ( .D(n33), .CK(clk), .RD(n78), 
        .Q(SHIFT_REG[6]) );
  UDB116SVT24_FDPRBQ_V2_1 \SHIFT_REG_reg[7]  ( .D(n35), .CK(clk), .RD(n78), 
        .Q(SHIFT_REG[7]) );
  UDB116SVT24_FDPRBQ_V2_1 \OUT_reg[7]  ( .D(n34), .CK(clk), .RD(rst), .Q(
        OUT[7]) );
  UDB116SVT24_FDPRBQ_V2_1 \OUT_reg[6]  ( .D(n32), .CK(clk), .RD(n76), .Q(
        OUT[6]) );
  UDB116SVT24_FDPRBQ_V2_1 \OUT_reg[5]  ( .D(n30), .CK(clk), .RD(n76), .Q(
        OUT[5]) );
  UDB116SVT24_FDPRBQ_V2_1 \OUT_reg[4]  ( .D(n28), .CK(clk), .RD(n76), .Q(
        OUT[4]) );
  UDB116SVT24_FDPRBQ_V2_1 \OUT_reg[3]  ( .D(n26), .CK(clk), .RD(n76), .Q(
        OUT[3]) );
  UDB116SVT24_FDPRBQ_V2_1 \OUT_reg[2]  ( .D(n24), .CK(clk), .RD(n77), .Q(
        OUT[2]) );
  UDB116SVT24_FDPRBQ_V2_1 \OUT_reg[1]  ( .D(n22), .CK(clk), .RD(n77), .Q(
        OUT[1]) );
  UDB116SVT24_OR2_0P75 U42 ( .A1(n54), .A2(n69), .X(n40) );
  UDB116SVT24_INV_1 U43 ( .A(CS_sync), .X(n41) );
  UDB116SVT24_INV_0P75 U44 ( .A(n41), .X(n42) );
  UDB116SVT24_INV_0P75 U45 ( .A(n40), .X(n43) );
  UDB116SVT24_INV_0P75 U46 ( .A(n40), .X(n44) );
  UDB116SVT24_INV_0P75 U47 ( .A(n69), .X(n45) );
  UDB116SVT24_INV_0P75 U48 ( .A(n45), .X(n46) );
  UDB116SVT24_INV_0P75 U49 ( .A(n45), .X(n47) );
  UDB116SVT24_INV_0P75 U50 ( .A(n71), .X(n48) );
  UDB116SVT24_INV_0P75 U51 ( .A(n48), .X(n49) );
  UDB116SVT24_INV_0P75 U52 ( .A(n48), .X(n50) );
  UDB116SVT24_INV_0P75 U53 ( .A(n71), .X(n51) );
  UDB116SVT24_INV_0P75 U54 ( .A(n71), .X(n52) );
  UDB116SVT24_INV_0P75 U55 ( .A(n67), .X(n53) );
  UDB116SVT24_INV_0P75 U56 ( .A(n53), .X(n54) );
  UDB116SVT24_INV_0P75 U57 ( .A(n53), .X(n55) );
  UDB116SVT24_BUF_1 U58 ( .A(rst), .X(n72) );
  UDB116SVT24_BUF_1 U59 ( .A(rst), .X(n56) );
  UDB116SVT24_BUF_1 U60 ( .A(n56), .X(n73) );
  UDB116SVT24_BUF_1 U61 ( .A(n56), .X(n75) );
  UDB116SVT24_BUF_1 U62 ( .A(n56), .X(n74) );
  UDB116SVT24_BUF_1 U63 ( .A(rst), .X(n78) );
  UDB116SVT24_BUF_1 U64 ( .A(n78), .X(n76) );
  UDB116SVT24_BUF_1 U65 ( .A(n78), .X(n77) );
  UDB116SVT24_INV_0P75 U66 ( .A(SPI_OUT_RDY), .X(n57) );
  UDB116SVT24_INV_0P75 U67 ( .A(n42), .X(n70) );
  UDB116SVT24_AOI21_0P75 U68 ( .A1(SS_prev), .A2(n57), .B(n70), .X(n39) );
  UDB116SVT24_NR2B_0P75 U69 ( .A(SHIFT_REG[7]), .B(n42), .X(MISO) );
  UDB116SVT24_INV_0P75 U70 ( .A(SCK_sync_1), .X(n59) );
  UDB116SVT24_NR4_0P75 U71 ( .A1(SS_prev), .A2(CS_sync), .A3(SCK_prev), .A4(
        n59), .X(n58) );
  UDB116SVT24_MUX2_0P75 U72 ( .D0(SHIFT_IN), .D1(MOSI_sync_1), .S(n58), .X(n38) );
  UDB116SVT24_NR2B_0P75 U73 ( .A(SS_prev), .B(CS_sync), .X(n67) );
  UDB116SVT24_AOAI211_0P75 U74 ( .A1(n59), .A2(SCK_prev), .B(n67), .C(n70), 
        .X(n69) );
  UDB116SVT24_AOI22_1 U75 ( .A1(n67), .A2(DATA[1]), .B1(SHIFT_REG[1]), .B2(n46), .X(n60) );
  UDB116SVT24_AO21B_0P75 U76 ( .A1(n44), .A2(SHIFT_REG[0]), .B(n60), .X(n23)
         );
  UDB116SVT24_AOI22_1 U77 ( .A1(n55), .A2(DATA[2]), .B1(n43), .B2(SHIFT_REG[1]), .X(n61) );
  UDB116SVT24_AO21B_0P75 U78 ( .A1(n47), .A2(SHIFT_REG[2]), .B(n61), .X(n25)
         );
  UDB116SVT24_AOI22_1 U79 ( .A1(n54), .A2(DATA[6]), .B1(n44), .B2(SHIFT_REG[5]), .X(n62) );
  UDB116SVT24_AO21B_0P75 U80 ( .A1(n46), .A2(SHIFT_REG[6]), .B(n62), .X(n33)
         );
  UDB116SVT24_AOI22_1 U81 ( .A1(n54), .A2(DATA[7]), .B1(n43), .B2(SHIFT_REG[6]), .X(n63) );
  UDB116SVT24_AO21B_0P75 U82 ( .A1(n46), .A2(SHIFT_REG[7]), .B(n63), .X(n35)
         );
  UDB116SVT24_AOI22_1 U83 ( .A1(n55), .A2(DATA[5]), .B1(n44), .B2(SHIFT_REG[4]), .X(n64) );
  UDB116SVT24_AO21B_0P75 U84 ( .A1(n47), .A2(SHIFT_REG[5]), .B(n64), .X(n31)
         );
  UDB116SVT24_AOI22_1 U85 ( .A1(n55), .A2(DATA[0]), .B1(n43), .B2(SHIFT_IN), 
        .X(n65) );
  UDB116SVT24_AO21B_0P75 U86 ( .A1(n47), .A2(SHIFT_REG[0]), .B(n65), .X(n37)
         );
  UDB116SVT24_AOI22_1 U87 ( .A1(n54), .A2(DATA[4]), .B1(n44), .B2(SHIFT_REG[3]), .X(n66) );
  UDB116SVT24_AO21B_0P75 U88 ( .A1(n46), .A2(SHIFT_REG[4]), .B(n66), .X(n29)
         );
  UDB116SVT24_AOI22_1 U89 ( .A1(n55), .A2(DATA[3]), .B1(n43), .B2(SHIFT_REG[2]), .X(n68) );
  UDB116SVT24_AO21B_0P75 U90 ( .A1(n47), .A2(SHIFT_REG[3]), .B(n68), .X(n27)
         );
  UDB116SVT24_NR2_0P75 U91 ( .A1(SS_prev), .A2(n70), .X(n71) );
  UDB116SVT24_OA22_1 U92 ( .A1(n51), .A2(SHIFT_REG[0]), .B1(OUT[0]), .B2(n50), 
        .X(n36) );
  UDB116SVT24_OA22_1 U93 ( .A1(n52), .A2(SHIFT_REG[7]), .B1(OUT[7]), .B2(n50), 
        .X(n34) );
  UDB116SVT24_OA22_1 U94 ( .A1(n51), .A2(SHIFT_REG[6]), .B1(OUT[6]), .B2(n49), 
        .X(n32) );
  UDB116SVT24_OA22_1 U95 ( .A1(n52), .A2(SHIFT_REG[5]), .B1(OUT[5]), .B2(n50), 
        .X(n30) );
  UDB116SVT24_OA22_1 U96 ( .A1(n51), .A2(SHIFT_REG[4]), .B1(OUT[4]), .B2(n71), 
        .X(n28) );
  UDB116SVT24_OA22_1 U97 ( .A1(n52), .A2(SHIFT_REG[3]), .B1(OUT[3]), .B2(n49), 
        .X(n26) );
  UDB116SVT24_OA22_1 U98 ( .A1(n51), .A2(SHIFT_REG[2]), .B1(OUT[2]), .B2(n50), 
        .X(n24) );
  UDB116SVT24_OA22_1 U99 ( .A1(n52), .A2(SHIFT_REG[1]), .B1(OUT[1]), .B2(n49), 
        .X(n22) );
endmodule

