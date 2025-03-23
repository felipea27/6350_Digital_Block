/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : V-2023.12-SP1
// Date      : Sun Mar 23 16:41:13 2025
/////////////////////////////////////////////////////////////


module SPI_SLAVE ( PRESETn, MOSI, SCK, SS, MODE, DATA, OUT, MISO );
  input [1:0] MODE;
  input [7:0] DATA;
  output [7:0] OUT;
  input PRESETn, MOSI, SCK, SS;
  output MISO;
  wire   SHIFT_IN, SS_neg_flag, N38, N39, N40, N41, N42, N43, N44, N45, N47,
         N49, N50, N51, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27,
         n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45;
  wire   [7:0] SHIFT_REG;
  wire   [3:0] counter;
  tri   MISO;

  UDB116SVT24_LDPQ_6 \counter_reg[0]  ( .G(n18), .D(N49), .Q(counter[0]) );
  UDB116SVT24_LDPQ_6 SS_neg_flag_reg ( .G(n19), .D(N47), .Q(SS_neg_flag) );
  UDB116SVT24_LDPQ_6 \counter_reg[1]  ( .G(n18), .D(N50), .Q(counter[1]) );
  UDB116SVT24_LDPQ_6 \counter_reg[2]  ( .G(n18), .D(N51), .Q(counter[2]) );
  \**TSGEN**  MISO_tri ( .\function (SHIFT_REG[7]), .three_state(n32), 
        .\output (MISO) );
  UDB116SVT24_LDPQ_1 \SHIFT_REG_reg[7]  ( .G(n36), .D(N45), .Q(SHIFT_REG[7])
         );
  UDB116SVT24_LDPQ_1 \SHIFT_REG_reg[0]  ( .G(n35), .D(N38), .Q(SHIFT_REG[0])
         );
  UDB116SVT24_LDPQ_1 \SHIFT_REG_reg[1]  ( .G(n35), .D(N39), .Q(SHIFT_REG[1])
         );
  UDB116SVT24_LDPQ_1 \SHIFT_REG_reg[2]  ( .G(n36), .D(N40), .Q(SHIFT_REG[2])
         );
  UDB116SVT24_LDPQ_1 \SHIFT_REG_reg[3]  ( .G(n35), .D(N41), .Q(SHIFT_REG[3])
         );
  UDB116SVT24_LDPQ_1 \SHIFT_REG_reg[4]  ( .G(n36), .D(N42), .Q(SHIFT_REG[4])
         );
  UDB116SVT24_LDPQ_1 \SHIFT_REG_reg[5]  ( .G(n35), .D(N43), .Q(SHIFT_REG[5])
         );
  UDB116SVT24_LDPQ_1 \SHIFT_REG_reg[6]  ( .G(n36), .D(N44), .Q(SHIFT_REG[6])
         );
  UDB116SVT24_FDPRBQ_V2_1 SHIFT_IN_reg ( .D(n17), .CK(SCK), .RD(PRESETn), .Q(
        SHIFT_IN) );
  UDB116SVT24_FDPQ_V2_3 \OUT_reg[0]  ( .D(SHIFT_REG[0]), .CK(n33), .Q(OUT[0])
         );
  UDB116SVT24_FDPQ_V2_3 \OUT_reg[2]  ( .D(SHIFT_REG[2]), .CK(n33), .Q(OUT[2])
         );
  UDB116SVT24_FDPQ_V2_3 \OUT_reg[3]  ( .D(SHIFT_REG[3]), .CK(n32), .Q(OUT[3])
         );
  UDB116SVT24_FDPQ_V2_3 \OUT_reg[4]  ( .D(SHIFT_REG[4]), .CK(n34), .Q(OUT[4])
         );
  UDB116SVT24_FDPQ_V2_3 \OUT_reg[5]  ( .D(SHIFT_REG[5]), .CK(n33), .Q(OUT[5])
         );
  UDB116SVT24_FDPQ_V2_3 \OUT_reg[6]  ( .D(SHIFT_REG[6]), .CK(n32), .Q(OUT[6])
         );
  UDB116SVT24_FDPQ_1 \OUT_reg[1]  ( .D(SHIFT_REG[1]), .CK(n34), .Q(OUT[1]) );
  UDB116SVT24_FDPQ_1 \OUT_reg[7]  ( .D(SHIFT_REG[7]), .CK(n34), .Q(OUT[7]) );
  UDB116SVT24_OR2_0P75 U36 ( .A1(n42), .A2(n43), .X(n21) );
  UDB116SVT24_OR2_0P75 U37 ( .A1(SS_neg_flag), .A2(n24), .X(n22) );
  UDB116SVT24_INV_0P75 U38 ( .A(n43), .X(n23) );
  UDB116SVT24_INV_0P75 U39 ( .A(n23), .X(n24) );
  UDB116SVT24_INV_0P75 U40 ( .A(PRESETn), .X(n25) );
  UDB116SVT24_INV_0P75 U41 ( .A(n25), .X(n26) );
  UDB116SVT24_INV_0P75 U42 ( .A(n21), .X(n27) );
  UDB116SVT24_INV_0P75 U43 ( .A(n21), .X(n28) );
  UDB116SVT24_INV_0P75 U44 ( .A(n22), .X(n29) );
  UDB116SVT24_INV_0P75 U45 ( .A(n22), .X(n30) );
  UDB116SVT24_INV_0P75 U46 ( .A(SS), .X(n31) );
  UDB116SVT24_INV_0P75 U47 ( .A(n31), .X(n32) );
  UDB116SVT24_INV_0P75 U48 ( .A(n31), .X(n33) );
  UDB116SVT24_INV_0P75 U49 ( .A(n31), .X(n34) );
  UDB116SVT24_BUF_1 U50 ( .A(n20), .X(n35) );
  UDB116SVT24_BUF_1 U51 ( .A(n20), .X(n36) );
  UDB116SVT24_ND3_0P75 U52 ( .A1(counter[0]), .A2(counter[1]), .A3(counter[2]), 
        .X(n39) );
  UDB116SVT24_INV_0P75 U53 ( .A(SS_neg_flag), .X(n42) );
  UDB116SVT24_NR3_0P75 U54 ( .A1(MODE[0]), .A2(MODE[1]), .A3(n34), .X(n45) );
  UDB116SVT24_INV_0P75 U55 ( .A(n45), .X(n44) );
  UDB116SVT24_AOAI211_0P75 U56 ( .A1(n39), .A2(n42), .B(n44), .C(n26), .X(n19)
         );
  UDB116SVT24_AOAI211_0P75 U57 ( .A1(SS_neg_flag), .A2(n39), .B(n44), .C(n26), 
        .X(n18) );
  UDB116SVT24_ND2_MM_0P75 U58 ( .A1(n26), .A2(n44), .X(n20) );
  UDB116SVT24_INV_0P75 U59 ( .A(counter[0]), .X(n38) );
  UDB116SVT24_INV_0P75 U60 ( .A(counter[1]), .X(n37) );
  UDB116SVT24_NR2_0P75 U61 ( .A1(n38), .A2(n37), .X(n40) );
  UDB116SVT24_ND2B_0P75 U62 ( .A(n32), .B(PRESETn), .X(n43) );
  UDB116SVT24_AOI211_0P75 U63 ( .A1(n38), .A2(n37), .B1(n40), .B2(n24), .X(N50) );
  UDB116SVT24_OAI21_0P75 U64 ( .A1(n33), .A2(n39), .B(n26), .X(N47) );
  UDB116SVT24_OAI21_0P75 U65 ( .A1(n40), .A2(counter[2]), .B(n39), .X(n41) );
  UDB116SVT24_NR2_0P75 U66 ( .A1(n43), .A2(n41), .X(N51) );
  UDB116SVT24_NR2_0P75 U67 ( .A1(counter[0]), .A2(n24), .X(N49) );
  UDB116SVT24_AO22_1 U68 ( .A1(n27), .A2(DATA[6]), .B1(n29), .B2(SHIFT_REG[5]), 
        .X(N44) );
  UDB116SVT24_AO22_1 U69 ( .A1(n45), .A2(MOSI), .B1(SHIFT_IN), .B2(n44), .X(
        n17) );
  UDB116SVT24_AO22_1 U70 ( .A1(n28), .A2(DATA[7]), .B1(n30), .B2(SHIFT_REG[6]), 
        .X(N45) );
  UDB116SVT24_AO22_1 U71 ( .A1(n27), .A2(DATA[0]), .B1(SHIFT_IN), .B2(n30), 
        .X(N38) );
  UDB116SVT24_AO22_1 U72 ( .A1(n28), .A2(DATA[1]), .B1(n29), .B2(SHIFT_REG[0]), 
        .X(N39) );
  UDB116SVT24_AO22_1 U73 ( .A1(n27), .A2(DATA[2]), .B1(n30), .B2(SHIFT_REG[1]), 
        .X(N40) );
  UDB116SVT24_AO22_1 U74 ( .A1(n28), .A2(DATA[3]), .B1(n29), .B2(SHIFT_REG[2]), 
        .X(N41) );
  UDB116SVT24_AO22_1 U75 ( .A1(n27), .A2(DATA[4]), .B1(n30), .B2(SHIFT_REG[3]), 
        .X(N42) );
  UDB116SVT24_AO22_1 U76 ( .A1(n28), .A2(DATA[5]), .B1(n29), .B2(SHIFT_REG[4]), 
        .X(N43) );
endmodule

