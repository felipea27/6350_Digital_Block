/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : V-2023.12-SP1
// Date      : Thu Mar 20 09:16:25 2025
/////////////////////////////////////////////////////////////


module SPI_slave ( PRESETn, MOSI, SCK, SS, DATA, SPI_RDY, OUT, MISO );
  input [7:0] DATA;
  output [7:0] OUT;
  input PRESETn, MOSI, SCK, SS, SPI_RDY;
  output MISO;
  wire   MOSI_RDY, N8, N9, N10, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50,
         n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64,
         n65, n66, n67, n68, n69, n70, n71;
  wire   [7:0] SHIFT_MISO;
  wire   [7:0] SHIFT_MOSI;
  wire   [2:0] count;
  tri   MISO;

  UDB116SVT24_FDPRBSBQ_2 \SHIFT_MISO_reg[0]  ( .D(n37), .CK(n49), .RD(n28), 
        .SD(n36), .Q(SHIFT_MISO[0]) );
  UDB116SVT24_FDPRBSBQ_2 \SHIFT_MISO_reg[1]  ( .D(n27), .CK(SCK), .RD(n26), 
        .SD(n35), .Q(SHIFT_MISO[1]) );
  UDB116SVT24_FDPRBSBQ_2 \SHIFT_MISO_reg[2]  ( .D(n25), .CK(n51), .RD(n24), 
        .SD(n34), .Q(SHIFT_MISO[2]) );
  UDB116SVT24_FDPRBSBQ_2 \SHIFT_MISO_reg[3]  ( .D(n23), .CK(n50), .RD(n22), 
        .SD(n33), .Q(SHIFT_MISO[3]) );
  UDB116SVT24_FDPRBSBQ_2 \SHIFT_MISO_reg[4]  ( .D(n21), .CK(n48), .RD(n20), 
        .SD(n32), .Q(SHIFT_MISO[4]) );
  UDB116SVT24_FDPRBSBQ_2 \SHIFT_MISO_reg[5]  ( .D(n19), .CK(n40), .RD(n18), 
        .SD(n31), .Q(SHIFT_MISO[5]) );
  UDB116SVT24_FDPRBSBQ_2 \SHIFT_MISO_reg[6]  ( .D(n17), .CK(n50), .RD(n16), 
        .SD(n30), .Q(SHIFT_MISO[6]) );
  UDB116SVT24_FDPRBSBQ_2 \SHIFT_MISO_reg[7]  ( .D(n15), .CK(n51), .RD(n14), 
        .SD(n29), .Q(SHIFT_MISO[7]) );
  \**TSGEN**  MISO_tri ( .\function (SHIFT_MISO[7]), .three_state(SS), 
        .\output (MISO) );
  UDB116SVT24_FDPRBQ_V2_1 \SHIFT_MOSI_reg[7]  ( .D(SHIFT_MOSI[6]), .CK(SCK), 
        .RD(n68), .Q(SHIFT_MOSI[7]) );
  UDB116SVT24_FDPRBQ_V2_1 \count_reg[0]  ( .D(n38), .CK(n50), .RD(n67), .Q(
        count[0]) );
  UDB116SVT24_FDPRBQ_V2_1 \count_reg[2]  ( .D(N9), .CK(n50), .RD(n68), .Q(
        count[2]) );
  UDB116SVT24_FDPRBQ_V2_1 \count_reg[1]  ( .D(N8), .CK(n48), .RD(n68), .Q(
        count[1]) );
  UDB116SVT24_FDPRBQ_V2_1 \SHIFT_MOSI_reg[0]  ( .D(MOSI), .CK(n51), .RD(n70), 
        .Q(SHIFT_MOSI[0]) );
  UDB116SVT24_FDPRBQ_V2_1 \SHIFT_MOSI_reg[1]  ( .D(SHIFT_MOSI[0]), .CK(n40), 
        .RD(n70), .Q(SHIFT_MOSI[1]) );
  UDB116SVT24_FDPRBQ_V2_1 \SHIFT_MOSI_reg[2]  ( .D(SHIFT_MOSI[1]), .CK(n48), 
        .RD(n70), .Q(SHIFT_MOSI[2]) );
  UDB116SVT24_FDPRBQ_V2_1 \SHIFT_MOSI_reg[3]  ( .D(SHIFT_MOSI[2]), .CK(n51), 
        .RD(n70), .Q(SHIFT_MOSI[3]) );
  UDB116SVT24_FDPRBQ_V2_1 \SHIFT_MOSI_reg[4]  ( .D(SHIFT_MOSI[3]), .CK(n49), 
        .RD(n69), .Q(SHIFT_MOSI[4]) );
  UDB116SVT24_FDPRBQ_V2_1 \SHIFT_MOSI_reg[5]  ( .D(SHIFT_MOSI[4]), .CK(n40), 
        .RD(n69), .Q(SHIFT_MOSI[5]) );
  UDB116SVT24_FDPRBQ_V2_1 \SHIFT_MOSI_reg[6]  ( .D(SHIFT_MOSI[5]), .CK(n49), 
        .RD(n69), .Q(SHIFT_MOSI[6]) );
  UDB116SVT24_FDPRBQ_V2_1 \OUT_reg[7]  ( .D(SHIFT_MOSI[7]), .CK(n46), .RD(n71), 
        .Q(OUT[7]) );
  UDB116SVT24_FDPRBQ_V2_1 \OUT_reg[6]  ( .D(SHIFT_MOSI[6]), .CK(n45), .RD(
        PRESETn), .Q(OUT[6]) );
  UDB116SVT24_FDPRBQ_V2_1 \OUT_reg[5]  ( .D(SHIFT_MOSI[5]), .CK(n46), .RD(n71), 
        .Q(OUT[5]) );
  UDB116SVT24_FDPRBQ_V2_1 \OUT_reg[4]  ( .D(SHIFT_MOSI[4]), .CK(n45), .RD(n71), 
        .Q(OUT[4]) );
  UDB116SVT24_FDPRBQ_V2_1 \OUT_reg[3]  ( .D(SHIFT_MOSI[3]), .CK(n46), .RD(n67), 
        .Q(OUT[3]) );
  UDB116SVT24_FDPRBQ_V2_1 \OUT_reg[2]  ( .D(SHIFT_MOSI[2]), .CK(n45), .RD(n67), 
        .Q(OUT[2]) );
  UDB116SVT24_FDPRBQ_V2_1 \OUT_reg[1]  ( .D(SHIFT_MOSI[1]), .CK(n46), .RD(n67), 
        .Q(OUT[1]) );
  UDB116SVT24_FDPRBQ_V2_1 \OUT_reg[0]  ( .D(SHIFT_MOSI[0]), .CK(n45), .RD(n69), 
        .Q(OUT[0]) );
  UDB116SVT24_FDPRBQ_V2_1 MOSI_RDY_reg ( .D(N10), .CK(n49), .RD(n68), .Q(
        MOSI_RDY) );
  UDB116SVT24_INV_0P75 U44 ( .A(n48), .X(n39) );
  UDB116SVT24_INV_0P75 U45 ( .A(n39), .X(n40) );
  UDB116SVT24_INV_0P75 U46 ( .A(n65), .X(n41) );
  UDB116SVT24_INV_0P75 U47 ( .A(n41), .X(n42) );
  UDB116SVT24_INV_0P75 U48 ( .A(n41), .X(n43) );
  UDB116SVT24_INV_0P75 U49 ( .A(MOSI_RDY), .X(n44) );
  UDB116SVT24_INV_0P75 U50 ( .A(n44), .X(n45) );
  UDB116SVT24_INV_0P75 U51 ( .A(n44), .X(n46) );
  UDB116SVT24_INV_0P75 U52 ( .A(SCK), .X(n47) );
  UDB116SVT24_INV_0P75 U53 ( .A(n47), .X(n48) );
  UDB116SVT24_INV_0P75 U54 ( .A(n47), .X(n49) );
  UDB116SVT24_INV_0P75 U55 ( .A(n47), .X(n50) );
  UDB116SVT24_INV_0P75 U56 ( .A(n47), .X(n51) );
  UDB116SVT24_INV_0P75 U57 ( .A(SPI_RDY), .X(n52) );
  UDB116SVT24_ND2_MM_0P75 U58 ( .A1(n62), .A2(SPI_RDY), .X(n57) );
  UDB116SVT24_INV_0P75 U59 ( .A(n57), .X(n53) );
  UDB116SVT24_INV_0P75 U60 ( .A(n57), .X(n54) );
  UDB116SVT24_OR2_0P75 U61 ( .A1(SS), .A2(SPI_RDY), .X(n65) );
  UDB116SVT24_INV_0P75 U62 ( .A(n65), .X(n55) );
  UDB116SVT24_INV_0P75 U63 ( .A(n65), .X(n56) );
  UDB116SVT24_BUF_1 U64 ( .A(PRESETn), .X(n60) );
  UDB116SVT24_BUF_1 U65 ( .A(n60), .X(n62) );
  UDB116SVT24_ND2_MM_0P75 U66 ( .A1(n54), .A2(DATA[3]), .X(n33) );
  UDB116SVT24_ND2_MM_0P75 U67 ( .A1(n53), .A2(DATA[7]), .X(n29) );
  UDB116SVT24_ND2_MM_0P75 U68 ( .A1(DATA[0]), .A2(n53), .X(n36) );
  UDB116SVT24_ND2_MM_0P75 U69 ( .A1(n54), .A2(DATA[2]), .X(n34) );
  UDB116SVT24_ND2_MM_0P75 U70 ( .A1(n53), .A2(DATA[1]), .X(n35) );
  UDB116SVT24_ND2_MM_0P75 U71 ( .A1(n54), .A2(DATA[5]), .X(n31) );
  UDB116SVT24_ND2_MM_0P75 U72 ( .A1(n53), .A2(DATA[4]), .X(n32) );
  UDB116SVT24_ND2_MM_0P75 U73 ( .A1(n54), .A2(DATA[6]), .X(n30) );
  UDB116SVT24_BUF_1 U74 ( .A(PRESETn), .X(n58) );
  UDB116SVT24_BUF_1 U75 ( .A(n58), .X(n68) );
  UDB116SVT24_BUF_1 U76 ( .A(n58), .X(n70) );
  UDB116SVT24_BUF_1 U77 ( .A(n58), .X(n69) );
  UDB116SVT24_BUF_1 U78 ( .A(PRESETn), .X(n71) );
  UDB116SVT24_BUF_1 U79 ( .A(n71), .X(n67) );
  UDB116SVT24_INV_0P75 U80 ( .A(count[0]), .X(n38) );
  UDB116SVT24_INV_0P75 U81 ( .A(count[1]), .X(n59) );
  UDB116SVT24_NR2_0P75 U82 ( .A1(n38), .A2(n59), .X(n64) );
  UDB116SVT24_AOI21_0P75 U83 ( .A1(n38), .A2(n59), .B(n64), .X(N8) );
  UDB116SVT24_INV_0P75 U84 ( .A(SPI_RDY), .X(n63) );
  UDB116SVT24_OA21_V2_1 U85 ( .A1(n63), .A2(DATA[2]), .B(n60), .X(n24) );
  UDB116SVT24_OA21_V2_1 U86 ( .A1(n63), .A2(DATA[1]), .B(n62), .X(n26) );
  UDB116SVT24_OA21_V2_1 U87 ( .A1(n63), .A2(DATA[0]), .B(n62), .X(n28) );
  UDB116SVT24_BUF_1 U88 ( .A(n60), .X(n61) );
  UDB116SVT24_OA21_V2_1 U89 ( .A1(n63), .A2(DATA[6]), .B(n61), .X(n16) );
  UDB116SVT24_OA21_V2_1 U90 ( .A1(n52), .A2(DATA[5]), .B(n61), .X(n18) );
  UDB116SVT24_OA21_V2_1 U91 ( .A1(n52), .A2(DATA[7]), .B(n61), .X(n14) );
  UDB116SVT24_OA21_V2_1 U92 ( .A1(n52), .A2(DATA[4]), .B(n61), .X(n20) );
  UDB116SVT24_OA21_V2_1 U93 ( .A1(n52), .A2(DATA[3]), .B(n62), .X(n22) );
  UDB116SVT24_AO22_1 U94 ( .A1(n55), .A2(SHIFT_MISO[6]), .B1(SHIFT_MISO[7]), 
        .B2(n42), .X(n15) );
  UDB116SVT24_AO22_1 U95 ( .A1(n56), .A2(SHIFT_MISO[4]), .B1(SHIFT_MISO[5]), 
        .B2(n43), .X(n19) );
  UDB116SVT24_AO22_1 U96 ( .A1(n56), .A2(SHIFT_MISO[5]), .B1(SHIFT_MISO[6]), 
        .B2(n42), .X(n17) );
  UDB116SVT24_ND3_0P75 U97 ( .A1(count[0]), .A2(count[1]), .A3(count[2]), .X(
        n66) );
  UDB116SVT24_OA21_V2_1 U98 ( .A1(n64), .A2(count[2]), .B(n66), .X(N9) );
  UDB116SVT24_AO22_1 U99 ( .A1(n55), .A2(SHIFT_MISO[1]), .B1(SHIFT_MISO[2]), 
        .B2(n43), .X(n25) );
  UDB116SVT24_NR2B_0P75 U100 ( .A(SHIFT_MISO[0]), .B(n56), .X(n37) );
  UDB116SVT24_AO22_1 U101 ( .A1(n41), .A2(SHIFT_MISO[2]), .B1(SHIFT_MISO[3]), 
        .B2(n42), .X(n23) );
  UDB116SVT24_AO22_1 U102 ( .A1(n56), .A2(SHIFT_MISO[0]), .B1(SHIFT_MISO[1]), 
        .B2(n43), .X(n27) );
  UDB116SVT24_AO22_1 U103 ( .A1(n55), .A2(SHIFT_MISO[3]), .B1(SHIFT_MISO[4]), 
        .B2(n42), .X(n21) );
  UDB116SVT24_NR2B_0P75 U104 ( .A(SS), .B(n66), .X(N10) );
endmodule

