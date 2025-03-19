/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : V-2023.12-SP1
// Date      : Tue Mar 18 14:41:53 2025
/////////////////////////////////////////////////////////////


module TX_Buffer ( clk, rst, din, dout, en, load );
  input [7:0] din;
  input clk, rst, en, load;
  output dout;
  wire   n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19,
         n20, n21, n22, n23, n24, n25, n26, n27;
  wire   [7:0] buffer;

  UDB116SVT24_FDPQ_V2_3 \buffer_reg[0]  ( .D(n12), .CK(clk), .Q(buffer[0]) );
  UDB116SVT24_FDPQ_V2_3 \buffer_reg[1]  ( .D(n5), .CK(clk), .Q(buffer[1]) );
  UDB116SVT24_FDPQ_V2_3 \buffer_reg[2]  ( .D(n6), .CK(clk), .Q(buffer[2]) );
  UDB116SVT24_FDPQ_V2_3 \buffer_reg[3]  ( .D(n7), .CK(clk), .Q(buffer[3]) );
  UDB116SVT24_FDPQ_V2_3 \buffer_reg[4]  ( .D(n8), .CK(clk), .Q(buffer[4]) );
  UDB116SVT24_FDPQ_V2_3 \buffer_reg[5]  ( .D(n9), .CK(clk), .Q(buffer[5]) );
  UDB116SVT24_FDPQ_V2_3 \buffer_reg[6]  ( .D(n10), .CK(clk), .Q(buffer[6]) );
  UDB116SVT24_FDPQ_V2_3 \buffer_reg[7]  ( .D(n11), .CK(clk), .Q(buffer[7]) );
  UDB116SVT24_FDPQB_1P5 dout_reg ( .D(n27), .CK(clk), .QN(dout) );
  UDB116SVT24_INV_0P75 U16 ( .A(n24), .X(n13) );
  UDB116SVT24_INV_0P75 U17 ( .A(n13), .X(n14) );
  UDB116SVT24_INV_0P75 U18 ( .A(n25), .X(n15) );
  UDB116SVT24_INV_0P75 U19 ( .A(n15), .X(n16) );
  UDB116SVT24_INV_0P75 U20 ( .A(n15), .X(n17) );
  UDB116SVT24_BUF_1 U21 ( .A(n26), .X(n18) );
  UDB116SVT24_BUF_1 U22 ( .A(n26), .X(n19) );
  UDB116SVT24_AN3B_0P75 U23 ( .B1(en), .B2(buffer[7]), .A(rst), .X(n20) );
  UDB116SVT24_INV_0P75 U24 ( .A(n20), .X(n27) );
  UDB116SVT24_NR2_0P75 U25 ( .A1(load), .A2(rst), .X(n21) );
  UDB116SVT24_AN2_1 U26 ( .A1(en), .A2(n21), .X(n24) );
  UDB116SVT24_NR3_0P75 U27 ( .A1(en), .A2(load), .A3(rst), .X(n26) );
  UDB116SVT24_NR2B_0P75 U28 ( .A(load), .B(rst), .X(n25) );
  UDB116SVT24_AOI22_1 U29 ( .A1(n19), .A2(buffer[7]), .B1(n17), .B2(din[7]), 
        .X(n22) );
  UDB116SVT24_AO21B_0P75 U30 ( .A1(n14), .A2(buffer[6]), .B(n22), .X(n11) );
  UDB116SVT24_AOI22_1 U31 ( .A1(n14), .A2(buffer[5]), .B1(n16), .B2(din[6]), 
        .X(n23) );
  UDB116SVT24_AO21B_0P75 U32 ( .A1(n19), .A2(buffer[6]), .B(n23), .X(n10) );
  UDB116SVT24_AO22_1 U33 ( .A1(n18), .A2(buffer[0]), .B1(n17), .B2(din[0]), 
        .X(n12) );
  UDB116SVT24_AO222_1 U34 ( .A1(n18), .A2(buffer[5]), .B1(n16), .B2(din[5]), 
        .C1(buffer[4]), .C2(n24), .X(n9) );
  UDB116SVT24_AO222_1 U35 ( .A1(n19), .A2(buffer[4]), .B1(n17), .B2(din[4]), 
        .C1(buffer[3]), .C2(n14), .X(n8) );
  UDB116SVT24_AO222_1 U36 ( .A1(n18), .A2(buffer[3]), .B1(n16), .B2(din[3]), 
        .C1(buffer[2]), .C2(n24), .X(n7) );
  UDB116SVT24_AO222_1 U37 ( .A1(n19), .A2(buffer[2]), .B1(n17), .B2(din[2]), 
        .C1(buffer[1]), .C2(n14), .X(n6) );
  UDB116SVT24_AO222_1 U38 ( .A1(n18), .A2(buffer[1]), .B1(n16), .B2(din[1]), 
        .C1(buffer[0]), .C2(n24), .X(n5) );
endmodule

