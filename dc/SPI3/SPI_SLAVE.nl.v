/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : V-2023.12-SP1
// Date      : Sun Mar 23 02:42:45 2025
/////////////////////////////////////////////////////////////


module SPI_SLAVE ( PRESETn, MOSI, SCK, SS, MODE, DATA, OUT, MISO );
  input [1:0] MODE;
  input [7:0] DATA;
  output [7:0] OUT;
  input PRESETn, MOSI, SCK, SS;
  output MISO;
  wire   SHIFT_IN, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25;
  wire   [7:0] SHIFT_REG;
  tri   MISO;

  \**TSGEN**  MISO_tri ( .\function (SHIFT_REG[7]), .three_state(n19), 
        .\output (MISO) );
  UDB116SVT24_FDPQ_V2_3 SHIFT_IN_reg ( .D(n12), .CK(n17), .Q(SHIFT_IN) );
  UDB116SVT24_FDNQ_V2_1 \SHIFT_REG_reg[7]  ( .D(n4), .CK(n16), .Q(SHIFT_REG[7]) );
  UDB116SVT24_FDNQ_V2_1 \SHIFT_REG_reg[0]  ( .D(n11), .CK(n17), .Q(
        SHIFT_REG[0]) );
  UDB116SVT24_FDNQ_V2_1 \SHIFT_REG_reg[1]  ( .D(n10), .CK(SCK), .Q(
        SHIFT_REG[1]) );
  UDB116SVT24_FDNQ_V2_1 \SHIFT_REG_reg[2]  ( .D(n9), .CK(n17), .Q(SHIFT_REG[2]) );
  UDB116SVT24_FDNQ_V2_1 \SHIFT_REG_reg[3]  ( .D(n8), .CK(n16), .Q(SHIFT_REG[3]) );
  UDB116SVT24_FDNQ_V2_1 \SHIFT_REG_reg[4]  ( .D(n7), .CK(SCK), .Q(SHIFT_REG[4]) );
  UDB116SVT24_FDNQ_V2_2 \SHIFT_REG_reg[5]  ( .D(n6), .CK(SCK), .Q(SHIFT_REG[5]) );
  UDB116SVT24_FDNQ_V2_2 \SHIFT_REG_reg[6]  ( .D(n5), .CK(n16), .Q(SHIFT_REG[6]) );
  UDB116SVT24_FDPQ_V2_3 \OUT_reg[0]  ( .D(SHIFT_REG[0]), .CK(SS), .Q(OUT[0])
         );
  UDB116SVT24_FDPQ_V2_3 \OUT_reg[1]  ( .D(SHIFT_REG[1]), .CK(n20), .Q(OUT[1])
         );
  UDB116SVT24_FDPQ_V2_3 \OUT_reg[2]  ( .D(SHIFT_REG[2]), .CK(n19), .Q(OUT[2])
         );
  UDB116SVT24_FDPQ_V2_3 \OUT_reg[3]  ( .D(SHIFT_REG[3]), .CK(n20), .Q(OUT[3])
         );
  UDB116SVT24_FDPQ_V2_3 \OUT_reg[4]  ( .D(SHIFT_REG[4]), .CK(n20), .Q(OUT[4])
         );
  UDB116SVT24_FDPQ_V2_3 \OUT_reg[6]  ( .D(SHIFT_REG[6]), .CK(SS), .Q(OUT[6])
         );
  UDB116SVT24_FDPQ_1 \OUT_reg[5]  ( .D(SHIFT_REG[5]), .CK(n19), .Q(OUT[5]) );
  UDB116SVT24_FDPQ_1 \OUT_reg[7]  ( .D(SHIFT_REG[7]), .CK(n20), .Q(OUT[7]) );
  UDB116SVT24_INV_0P75 U15 ( .A(n22), .X(n13) );
  UDB116SVT24_INV_0P75 U16 ( .A(n23), .X(n14) );
  UDB116SVT24_INV_0P75 U17 ( .A(SCK), .X(n15) );
  UDB116SVT24_INV_0P75 U18 ( .A(n15), .X(n16) );
  UDB116SVT24_INV_0P75 U19 ( .A(n15), .X(n17) );
  UDB116SVT24_INV_0P75 U20 ( .A(SS), .X(n18) );
  UDB116SVT24_INV_0P75 U21 ( .A(n18), .X(n19) );
  UDB116SVT24_INV_0P75 U22 ( .A(n18), .X(n20) );
  UDB116SVT24_OR3_1 U23 ( .A1(n19), .A2(MODE[1]), .A3(MODE[0]), .X(n24) );
  UDB116SVT24_INV_0P75 U24 ( .A(n24), .X(n21) );
  UDB116SVT24_INV_0P75 U25 ( .A(n24), .X(n22) );
  UDB116SVT24_INV_0P75 U26 ( .A(n24), .X(n23) );
  UDB116SVT24_INV_0P75 U27 ( .A(n21), .X(n25) );
  UDB116SVT24_OA22_1 U28 ( .A1(n25), .A2(SHIFT_REG[5]), .B1(SHIFT_REG[6]), 
        .B2(n21), .X(n5) );
  UDB116SVT24_OA22_1 U29 ( .A1(n13), .A2(SHIFT_REG[6]), .B1(SHIFT_REG[7]), 
        .B2(n22), .X(n4) );
  UDB116SVT24_OA22_1 U30 ( .A1(n14), .A2(SHIFT_IN), .B1(SHIFT_REG[0]), .B2(n23), .X(n11) );
  UDB116SVT24_OA22_1 U31 ( .A1(n24), .A2(SHIFT_REG[0]), .B1(SHIFT_REG[1]), 
        .B2(n21), .X(n10) );
  UDB116SVT24_OA22_1 U32 ( .A1(n13), .A2(SHIFT_REG[1]), .B1(SHIFT_REG[2]), 
        .B2(n22), .X(n9) );
  UDB116SVT24_AO22_1 U33 ( .A1(n23), .A2(MOSI), .B1(SHIFT_IN), .B2(n14), .X(
        n12) );
  UDB116SVT24_OA22_1 U34 ( .A1(n14), .A2(SHIFT_REG[2]), .B1(SHIFT_REG[3]), 
        .B2(n23), .X(n8) );
  UDB116SVT24_OA22_1 U35 ( .A1(n25), .A2(SHIFT_REG[3]), .B1(SHIFT_REG[4]), 
        .B2(n21), .X(n7) );
  UDB116SVT24_OA22_1 U36 ( .A1(n13), .A2(SHIFT_REG[4]), .B1(SHIFT_REG[5]), 
        .B2(n22), .X(n6) );
endmodule

