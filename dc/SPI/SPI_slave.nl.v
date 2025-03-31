/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : V-2023.12-SP1
// Date      : Sun Mar 30 22:12:47 2025
/////////////////////////////////////////////////////////////


module SPI_slave ( rst, MOSI, SCK, SS, DATA, OUT, MISO );
  input [7:0] DATA;
  output [7:0] OUT;
  input rst, MOSI, SCK, SS;
  output MISO;
  wire   SHIFT_IN, SS_neg_flag, N28, N29, N30, N31, N32, N33, N34, N35, N37,
         N39, N40, N41, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38;
  wire   [7:0] SHIFT_REG;
  wire   [2:0] counter;
  tri   MISO;

  UDB116SVT24_LDPQ_6 \counter_reg[0]  ( .G(n14), .D(N39), .Q(counter[0]) );
  UDB116SVT24_LDPQ_6 SS_neg_flag_reg ( .G(n13), .D(N37), .Q(SS_neg_flag) );
  UDB116SVT24_LDPQ_6 \counter_reg[1]  ( .G(n14), .D(N40), .Q(counter[1]) );
  UDB116SVT24_LDPQ_6 \counter_reg[2]  ( .G(n14), .D(N41), .Q(counter[2]) );
  \**TSGEN**  MISO_tri ( .\function (SHIFT_REG[7]), .three_state(n22), 
        .\output (MISO) );
  UDB116SVT24_LDPQ_1 \SHIFT_REG_reg[7]  ( .G(n26), .D(N35), .Q(SHIFT_REG[7])
         );
  UDB116SVT24_LDPQ_1 \SHIFT_REG_reg[0]  ( .G(n25), .D(N28), .Q(SHIFT_REG[0])
         );
  UDB116SVT24_LDPQ_1 \SHIFT_REG_reg[1]  ( .G(n25), .D(N29), .Q(SHIFT_REG[1])
         );
  UDB116SVT24_LDPQ_1 \SHIFT_REG_reg[2]  ( .G(n26), .D(N30), .Q(SHIFT_REG[2])
         );
  UDB116SVT24_LDPQ_1 \SHIFT_REG_reg[3]  ( .G(n25), .D(N31), .Q(SHIFT_REG[3])
         );
  UDB116SVT24_LDPQ_1 \SHIFT_REG_reg[4]  ( .G(n26), .D(N32), .Q(SHIFT_REG[4])
         );
  UDB116SVT24_LDPQ_1 \SHIFT_REG_reg[5]  ( .G(n25), .D(N33), .Q(SHIFT_REG[5])
         );
  UDB116SVT24_LDPQ_1 \SHIFT_REG_reg[6]  ( .G(n26), .D(N34), .Q(SHIFT_REG[6])
         );
  UDB116SVT24_FDPRBQ_V2_1 SHIFT_IN_reg ( .D(n12), .CK(SCK), .RD(rst), .Q(
        SHIFT_IN) );
  UDB116SVT24_FDPQ_V2_3 \OUT_reg[1]  ( .D(SHIFT_REG[1]), .CK(SS), .Q(OUT[1])
         );
  UDB116SVT24_FDPQ_V2_3 \OUT_reg[3]  ( .D(SHIFT_REG[3]), .CK(n24), .Q(OUT[3])
         );
  UDB116SVT24_FDPQ_V2_3 \OUT_reg[4]  ( .D(SHIFT_REG[4]), .CK(n24), .Q(OUT[4])
         );
  UDB116SVT24_FDPQ_V2_3 \OUT_reg[5]  ( .D(SHIFT_REG[5]), .CK(n23), .Q(OUT[5])
         );
  UDB116SVT24_FDPQ_V2_3 \OUT_reg[6]  ( .D(SHIFT_REG[6]), .CK(n22), .Q(OUT[6])
         );
  UDB116SVT24_FDPQ_V2_3 \OUT_reg[7]  ( .D(SHIFT_REG[7]), .CK(n24), .Q(OUT[7])
         );
  UDB116SVT24_FDPQ_1 \OUT_reg[2]  ( .D(SHIFT_REG[2]), .CK(n22), .Q(OUT[2]) );
  UDB116SVT24_FDPQ_1 \OUT_reg[0]  ( .D(SHIFT_REG[0]), .CK(n23), .Q(OUT[0]) );
  UDB116SVT24_OR2_0P75 U30 ( .A1(SS_neg_flag), .A2(n18), .X(n16) );
  UDB116SVT24_INV_0P75 U31 ( .A(n36), .X(n17) );
  UDB116SVT24_INV_0P75 U32 ( .A(n17), .X(n18) );
  UDB116SVT24_INV_0P75 U33 ( .A(n16), .X(n19) );
  UDB116SVT24_INV_0P75 U34 ( .A(n16), .X(n20) );
  UDB116SVT24_INV_0P75 U35 ( .A(SS), .X(n21) );
  UDB116SVT24_INV_0P75 U36 ( .A(n21), .X(n22) );
  UDB116SVT24_INV_0P75 U37 ( .A(n21), .X(n23) );
  UDB116SVT24_INV_0P75 U38 ( .A(n21), .X(n24) );
  UDB116SVT24_BUF_1 U39 ( .A(n15), .X(n25) );
  UDB116SVT24_BUF_1 U40 ( .A(n15), .X(n26) );
  UDB116SVT24_OR2_0P75 U41 ( .A1(n35), .A2(n36), .X(n38) );
  UDB116SVT24_INV_0P75 U42 ( .A(n38), .X(n27) );
  UDB116SVT24_INV_0P75 U43 ( .A(n38), .X(n28) );
  UDB116SVT24_ND3_0P75 U44 ( .A1(counter[0]), .A2(counter[1]), .A3(counter[2]), 
        .X(n32) );
  UDB116SVT24_OAI21_0P75 U45 ( .A1(n24), .A2(n32), .B(rst), .X(N37) );
  UDB116SVT24_INV_0P75 U46 ( .A(SS_neg_flag), .X(n35) );
  UDB116SVT24_INV_0P75 U47 ( .A(N37), .X(n29) );
  UDB116SVT24_OAI21_0P75 U48 ( .A1(n22), .A2(n35), .B(n29), .X(n13) );
  UDB116SVT24_OAI21_0P75 U49 ( .A1(n23), .A2(SS_neg_flag), .B(n29), .X(n14) );
  UDB116SVT24_ND2_MM_0P75 U50 ( .A1(SS), .A2(rst), .X(n15) );
  UDB116SVT24_INV_0P75 U51 ( .A(counter[0]), .X(n31) );
  UDB116SVT24_INV_0P75 U52 ( .A(counter[1]), .X(n30) );
  UDB116SVT24_NR2_0P75 U53 ( .A1(n31), .A2(n30), .X(n33) );
  UDB116SVT24_INV_0P75 U54 ( .A(SS), .X(n37) );
  UDB116SVT24_ND2_MM_0P75 U55 ( .A1(rst), .A2(n37), .X(n36) );
  UDB116SVT24_AOI211_0P75 U56 ( .A1(n31), .A2(n30), .B1(n33), .B2(n18), .X(N40) );
  UDB116SVT24_OAI21_0P75 U57 ( .A1(n33), .A2(counter[2]), .B(n32), .X(n34) );
  UDB116SVT24_NR2_0P75 U58 ( .A1(n18), .A2(n34), .X(N41) );
  UDB116SVT24_NR2_0P75 U59 ( .A1(counter[0]), .A2(n36), .X(N39) );
  UDB116SVT24_AO22_1 U60 ( .A1(n27), .A2(DATA[6]), .B1(n19), .B2(SHIFT_REG[5]), 
        .X(N34) );
  UDB116SVT24_AO22_1 U61 ( .A1(n23), .A2(SHIFT_IN), .B1(MOSI), .B2(n37), .X(
        n12) );
  UDB116SVT24_AO22_1 U62 ( .A1(n28), .A2(DATA[7]), .B1(n20), .B2(SHIFT_REG[6]), 
        .X(N35) );
  UDB116SVT24_AO22_1 U63 ( .A1(n27), .A2(DATA[0]), .B1(SHIFT_IN), .B2(n20), 
        .X(N28) );
  UDB116SVT24_AO22_1 U64 ( .A1(n28), .A2(DATA[1]), .B1(n19), .B2(SHIFT_REG[0]), 
        .X(N29) );
  UDB116SVT24_AO22_1 U65 ( .A1(n27), .A2(DATA[2]), .B1(n20), .B2(SHIFT_REG[1]), 
        .X(N30) );
  UDB116SVT24_AO22_1 U66 ( .A1(n28), .A2(DATA[3]), .B1(n19), .B2(SHIFT_REG[2]), 
        .X(N31) );
  UDB116SVT24_AO22_1 U67 ( .A1(n27), .A2(DATA[4]), .B1(n20), .B2(SHIFT_REG[3]), 
        .X(N32) );
  UDB116SVT24_AO22_1 U68 ( .A1(n28), .A2(DATA[5]), .B1(n19), .B2(SHIFT_REG[4]), 
        .X(N33) );
endmodule

