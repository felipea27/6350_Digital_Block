/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : V-2023.12-SP1
// Date      : Mon Apr 14 00:02:39 2025
/////////////////////////////////////////////////////////////


module TX_Buffer ( clk, rst, din, dout, en, load );
  input [7:0] din;
  input clk, rst, en, load;
  output dout;
  wire   N5, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18,
         n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32,
         n33, n34, n35, n36, n37;
  wire   [7:0] buffer;

  UDB116SVT24_FDPRBQ_V2_1 \buffer_reg[0]  ( .D(n12), .CK(clk), .RD(rst), .Q(
        buffer[0]) );
  UDB116SVT24_FDPRBQ_V2_1 \buffer_reg[1]  ( .D(n11), .CK(clk), .RD(n18), .Q(
        buffer[1]) );
  UDB116SVT24_FDPRBQ_V2_1 \buffer_reg[2]  ( .D(n10), .CK(clk), .RD(rst), .Q(
        buffer[2]) );
  UDB116SVT24_FDPRBQ_V2_1 \buffer_reg[3]  ( .D(n9), .CK(clk), .RD(n17), .Q(
        buffer[3]) );
  UDB116SVT24_FDPRBQ_V2_1 \buffer_reg[4]  ( .D(n8), .CK(clk), .RD(n18), .Q(
        buffer[4]) );
  UDB116SVT24_FDPRBQ_V2_1 \buffer_reg[5]  ( .D(n7), .CK(clk), .RD(rst), .Q(
        buffer[5]) );
  UDB116SVT24_FDPRBQ_V2_1 \buffer_reg[6]  ( .D(n6), .CK(clk), .RD(n17), .Q(
        buffer[6]) );
  UDB116SVT24_FDPRBQ_V2_1 \buffer_reg[7]  ( .D(n5), .CK(clk), .RD(n18), .Q(
        buffer[7]) );
  UDB116SVT24_FDPRBQ_V2_1 dout_reg ( .D(N5), .CK(clk), .RD(n17), .Q(dout) );
  UDB116SVT24_INV_0P75 U16 ( .A(load), .X(n13) );
  UDB116SVT24_INV_0P75 U17 ( .A(n13), .X(n14) );
  UDB116SVT24_INV_0P75 U18 ( .A(n13), .X(n15) );
  UDB116SVT24_INV_0P75 U19 ( .A(rst), .X(n16) );
  UDB116SVT24_INV_0P75 U20 ( .A(n16), .X(n17) );
  UDB116SVT24_INV_0P75 U21 ( .A(n16), .X(n18) );
  UDB116SVT24_BUF_1 U22 ( .A(n37), .X(n19) );
  UDB116SVT24_OR2_0P75 U23 ( .A1(n15), .A2(en), .X(n34) );
  UDB116SVT24_INV_0P75 U24 ( .A(n34), .X(n20) );
  UDB116SVT24_INV_0P75 U25 ( .A(n34), .X(n21) );
  UDB116SVT24_AN2_1 U26 ( .A1(en), .A2(buffer[7]), .X(N5) );
  UDB116SVT24_AO22_1 U27 ( .A1(load), .A2(din[0]), .B1(buffer[0]), .B2(n21), 
        .X(n12) );
  UDB116SVT24_ND2B_0P75 U28 ( .A(n14), .B(en), .X(n37) );
  UDB116SVT24_INV_0P75 U29 ( .A(buffer[0]), .X(n23) );
  UDB116SVT24_AOI22_1 U30 ( .A1(n15), .A2(din[1]), .B1(n20), .B2(buffer[1]), 
        .X(n22) );
  UDB116SVT24_OAI21_0P75 U31 ( .A1(n37), .A2(n23), .B(n22), .X(n11) );
  UDB116SVT24_INV_0P75 U32 ( .A(buffer[1]), .X(n25) );
  UDB116SVT24_AOI22_1 U33 ( .A1(load), .A2(din[2]), .B1(n21), .B2(buffer[2]), 
        .X(n24) );
  UDB116SVT24_OAI21_0P75 U34 ( .A1(n37), .A2(n25), .B(n24), .X(n10) );
  UDB116SVT24_INV_0P75 U35 ( .A(buffer[2]), .X(n27) );
  UDB116SVT24_AOI22_1 U36 ( .A1(n14), .A2(din[3]), .B1(n20), .B2(buffer[3]), 
        .X(n26) );
  UDB116SVT24_OAI21_0P75 U37 ( .A1(n37), .A2(n27), .B(n26), .X(n9) );
  UDB116SVT24_INV_0P75 U38 ( .A(buffer[3]), .X(n29) );
  UDB116SVT24_AOI22_1 U39 ( .A1(n15), .A2(din[4]), .B1(n21), .B2(buffer[4]), 
        .X(n28) );
  UDB116SVT24_OAI21_0P75 U40 ( .A1(n19), .A2(n29), .B(n28), .X(n8) );
  UDB116SVT24_INV_0P75 U41 ( .A(buffer[4]), .X(n31) );
  UDB116SVT24_AOI22_1 U42 ( .A1(load), .A2(din[5]), .B1(n20), .B2(buffer[5]), 
        .X(n30) );
  UDB116SVT24_OAI21_0P75 U43 ( .A1(n19), .A2(n31), .B(n30), .X(n7) );
  UDB116SVT24_INV_0P75 U44 ( .A(buffer[5]), .X(n33) );
  UDB116SVT24_AOI22_1 U45 ( .A1(n14), .A2(din[6]), .B1(n21), .B2(buffer[6]), 
        .X(n32) );
  UDB116SVT24_OAI21_0P75 U46 ( .A1(n19), .A2(n33), .B(n32), .X(n6) );
  UDB116SVT24_INV_0P75 U47 ( .A(buffer[6]), .X(n36) );
  UDB116SVT24_AOI22_1 U48 ( .A1(n15), .A2(din[7]), .B1(n20), .B2(buffer[7]), 
        .X(n35) );
  UDB116SVT24_OAI21_0P75 U49 ( .A1(n19), .A2(n36), .B(n35), .X(n5) );
endmodule

