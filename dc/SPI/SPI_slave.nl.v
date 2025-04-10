/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : V-2023.12-SP1
// Date      : Wed Apr  9 11:14:36 2025
/////////////////////////////////////////////////////////////


module SPI_slave ( rst, MOSI, SCK, SS, DATA, OUT, MISO );
  input [7:0] DATA;
  output [7:0] OUT;
  input rst, MOSI, SCK, SS;
  output MISO;
  wire   SHIFT_IN, SS_neg_flag, N28, N29, N30, N31, N32, N33, N34, N35, N37,
         N39, N40, N41, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n40, n41, n42, n43;
  wire   [7:0] SHIFT_REG;
  wire   [2:0] counter;

  UDB116SVT24_FDPRBQ_V2_1 SHIFT_IN_reg ( .D(n12), .CK(SCK), .RD(n32), .Q(
        SHIFT_IN) );
  UDB116SVT24_LDPQ_6 \counter_reg[0]  ( .G(n14), .D(N39), .Q(counter[0]) );
  UDB116SVT24_LDPQ_6 SS_neg_flag_reg ( .G(n13), .D(N37), .Q(SS_neg_flag) );
  UDB116SVT24_LDPQ_6 \counter_reg[1]  ( .G(n14), .D(N40), .Q(counter[1]) );
  UDB116SVT24_LDPQ_6 \counter_reg[2]  ( .G(n14), .D(N41), .Q(counter[2]) );
  UDB116SVT24_LDPQ_1 \SHIFT_REG_reg[7]  ( .G(n22), .D(N35), .Q(SHIFT_REG[7])
         );
  UDB116SVT24_LDPQ_1 \SHIFT_REG_reg[0]  ( .G(n21), .D(N28), .Q(SHIFT_REG[0])
         );
  UDB116SVT24_LDPQ_1 \SHIFT_REG_reg[1]  ( .G(n21), .D(N29), .Q(SHIFT_REG[1])
         );
  UDB116SVT24_LDPQ_1 \SHIFT_REG_reg[2]  ( .G(n22), .D(N30), .Q(SHIFT_REG[2])
         );
  UDB116SVT24_LDPQ_1 \SHIFT_REG_reg[3]  ( .G(n21), .D(N31), .Q(SHIFT_REG[3])
         );
  UDB116SVT24_LDPQ_1 \SHIFT_REG_reg[4]  ( .G(n22), .D(N32), .Q(SHIFT_REG[4])
         );
  UDB116SVT24_LDPQ_1 \SHIFT_REG_reg[5]  ( .G(n21), .D(N33), .Q(SHIFT_REG[5])
         );
  UDB116SVT24_LDPQ_1 \SHIFT_REG_reg[6]  ( .G(n22), .D(N34), .Q(SHIFT_REG[6])
         );
  UDB116SVT24_FDPRBQ_V2_1 \OUT_reg[0]  ( .D(SHIFT_REG[0]), .CK(n29), .RD(n34), 
        .Q(OUT[0]) );
  UDB116SVT24_FDPRBQ_V2_1 \OUT_reg[1]  ( .D(SHIFT_REG[1]), .CK(n28), .RD(n33), 
        .Q(OUT[1]) );
  UDB116SVT24_FDPRBQ_V2_1 \OUT_reg[2]  ( .D(SHIFT_REG[2]), .CK(SS), .RD(n32), 
        .Q(OUT[2]) );
  UDB116SVT24_FDPRBQ_V2_1 \OUT_reg[3]  ( .D(SHIFT_REG[3]), .CK(n30), .RD(n34), 
        .Q(OUT[3]) );
  UDB116SVT24_FDPRBQ_V2_1 \OUT_reg[4]  ( .D(SHIFT_REG[4]), .CK(n29), .RD(n33), 
        .Q(OUT[4]) );
  UDB116SVT24_FDPRBQ_V2_1 \OUT_reg[5]  ( .D(SHIFT_REG[5]), .CK(n28), .RD(n32), 
        .Q(OUT[5]) );
  UDB116SVT24_FDPRBQ_V2_1 \OUT_reg[6]  ( .D(SHIFT_REG[6]), .CK(n30), .RD(n34), 
        .Q(OUT[6]) );
  UDB116SVT24_FDPRBQ_V2_1 \OUT_reg[7]  ( .D(SHIFT_REG[7]), .CK(n30), .RD(n33), 
        .Q(OUT[7]) );
  UDB116SVT24_OR2_0P75 U31 ( .A1(n41), .A2(n42), .X(n16) );
  UDB116SVT24_OR2_0P75 U32 ( .A1(SS_neg_flag), .A2(n19), .X(n17) );
  UDB116SVT24_INV_0P75 U33 ( .A(n42), .X(n18) );
  UDB116SVT24_INV_0P75 U34 ( .A(n18), .X(n19) );
  UDB116SVT24_INV_0P75 U35 ( .A(n15), .X(n20) );
  UDB116SVT24_INV_0P75 U36 ( .A(n20), .X(n21) );
  UDB116SVT24_INV_0P75 U37 ( .A(n20), .X(n22) );
  UDB116SVT24_INV_0P75 U38 ( .A(n16), .X(n23) );
  UDB116SVT24_INV_0P75 U39 ( .A(n16), .X(n24) );
  UDB116SVT24_INV_0P75 U40 ( .A(n17), .X(n25) );
  UDB116SVT24_INV_0P75 U41 ( .A(n17), .X(n26) );
  UDB116SVT24_INV_0P75 U42 ( .A(SS), .X(n27) );
  UDB116SVT24_INV_0P75 U43 ( .A(n27), .X(n28) );
  UDB116SVT24_INV_0P75 U44 ( .A(n27), .X(n29) );
  UDB116SVT24_INV_0P75 U45 ( .A(n27), .X(n30) );
  UDB116SVT24_INV_0P75 U46 ( .A(rst), .X(n31) );
  UDB116SVT24_INV_0P75 U47 ( .A(n31), .X(n32) );
  UDB116SVT24_INV_0P75 U48 ( .A(n31), .X(n33) );
  UDB116SVT24_INV_0P75 U49 ( .A(n31), .X(n34) );
  UDB116SVT24_ND3_0P75 U50 ( .A1(counter[0]), .A2(counter[1]), .A3(counter[2]), 
        .X(n38) );
  UDB116SVT24_OAI21_0P75 U51 ( .A1(n30), .A2(n38), .B(n32), .X(N37) );
  UDB116SVT24_INV_0P75 U52 ( .A(SS_neg_flag), .X(n41) );
  UDB116SVT24_INV_0P75 U53 ( .A(N37), .X(n35) );
  UDB116SVT24_OAI21_0P75 U54 ( .A1(SS), .A2(n41), .B(n35), .X(n13) );
  UDB116SVT24_OAI21_0P75 U55 ( .A1(n28), .A2(SS_neg_flag), .B(n35), .X(n14) );
  UDB116SVT24_ND2_MM_0P75 U56 ( .A1(n29), .A2(n33), .X(n15) );
  UDB116SVT24_INV_0P75 U57 ( .A(counter[0]), .X(n37) );
  UDB116SVT24_INV_0P75 U58 ( .A(counter[1]), .X(n36) );
  UDB116SVT24_NR2_0P75 U59 ( .A1(n37), .A2(n36), .X(n39) );
  UDB116SVT24_INV_0P75 U60 ( .A(n28), .X(n43) );
  UDB116SVT24_ND2_MM_0P75 U61 ( .A1(n34), .A2(n43), .X(n42) );
  UDB116SVT24_AOI211_0P75 U62 ( .A1(n37), .A2(n36), .B1(n39), .B2(n19), .X(N40) );
  UDB116SVT24_OAI21_0P75 U63 ( .A1(n39), .A2(counter[2]), .B(n38), .X(n40) );
  UDB116SVT24_NR2_0P75 U64 ( .A1(n42), .A2(n40), .X(N41) );
  UDB116SVT24_NR2_0P75 U65 ( .A1(counter[0]), .A2(n19), .X(N39) );
  UDB116SVT24_NR2B_0P75 U66 ( .A(SHIFT_REG[7]), .B(SS), .X(MISO) );
  UDB116SVT24_AO22_1 U67 ( .A1(n23), .A2(DATA[6]), .B1(n25), .B2(SHIFT_REG[5]), 
        .X(N34) );
  UDB116SVT24_AO22_1 U68 ( .A1(n24), .A2(DATA[7]), .B1(n26), .B2(SHIFT_REG[6]), 
        .X(N35) );
  UDB116SVT24_AO22_1 U69 ( .A1(n23), .A2(DATA[0]), .B1(SHIFT_IN), .B2(n26), 
        .X(N28) );
  UDB116SVT24_AO22_1 U70 ( .A1(n24), .A2(DATA[1]), .B1(n25), .B2(SHIFT_REG[0]), 
        .X(N29) );
  UDB116SVT24_AO22_1 U71 ( .A1(n23), .A2(DATA[2]), .B1(n26), .B2(SHIFT_REG[1]), 
        .X(N30) );
  UDB116SVT24_AO22_1 U72 ( .A1(n24), .A2(DATA[3]), .B1(n25), .B2(SHIFT_REG[2]), 
        .X(N31) );
  UDB116SVT24_AO22_1 U73 ( .A1(n23), .A2(DATA[4]), .B1(n26), .B2(SHIFT_REG[3]), 
        .X(N32) );
  UDB116SVT24_AO22_1 U74 ( .A1(n24), .A2(DATA[5]), .B1(n25), .B2(SHIFT_REG[4]), 
        .X(N33) );
  UDB116SVT24_AO22_1 U75 ( .A1(n29), .A2(SHIFT_IN), .B1(MOSI), .B2(n43), .X(
        n12) );
endmodule

