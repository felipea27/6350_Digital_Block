/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : V-2023.12-SP1
// Date      : Mon Mar 31 14:30:44 2025
/////////////////////////////////////////////////////////////


module TX_Buffer ( clk, rst, din, dout, en, load );
  input [7:0] din;
  input clk, rst, en, load;
  output dout;
  wire   n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33,
         n34, n35, n36, n37, n38, n39, n40, n41;
  wire   [7:0] buffer;

  UDB116SVT24_FDPQ_V2_3 \buffer_reg[0]  ( .D(n27), .CK(clk), .Q(buffer[0]) );
  UDB116SVT24_FDPQ_V2_3 \buffer_reg[1]  ( .D(n20), .CK(clk), .Q(buffer[1]) );
  UDB116SVT24_FDPQ_V2_3 \buffer_reg[2]  ( .D(n21), .CK(clk), .Q(buffer[2]) );
  UDB116SVT24_FDPQ_V2_3 \buffer_reg[3]  ( .D(n22), .CK(clk), .Q(buffer[3]) );
  UDB116SVT24_FDPQ_V2_3 \buffer_reg[4]  ( .D(n23), .CK(clk), .Q(buffer[4]) );
  UDB116SVT24_FDPQ_V2_3 \buffer_reg[5]  ( .D(n24), .CK(clk), .Q(buffer[5]) );
  UDB116SVT24_FDPQ_V2_3 \buffer_reg[6]  ( .D(n25), .CK(clk), .Q(buffer[6]) );
  UDB116SVT24_FDPQ_V2_3 \buffer_reg[7]  ( .D(n26), .CK(clk), .Q(buffer[7]) );
  UDB116SVT24_FDPQB_1P5 dout_reg ( .D(n41), .CK(clk), .QN(dout) );
  UDB116SVT24_ND2_MM_0P75 U31 ( .A1(load), .A2(rst), .X(n28) );
  UDB116SVT24_INV_0P75 U32 ( .A(n39), .X(n29) );
  UDB116SVT24_INV_0P75 U33 ( .A(n29), .X(n30) );
  UDB116SVT24_INV_0P75 U34 ( .A(n28), .X(n31) );
  UDB116SVT24_INV_0P75 U35 ( .A(n28), .X(n32) );
  UDB116SVT24_NR3_0P75 U36 ( .A1(en), .A2(load), .A3(n36), .X(n33) );
  UDB116SVT24_INV_0P75 U37 ( .A(rst), .X(n36) );
  UDB116SVT24_AN3B_0P75 U38 ( .B1(en), .B2(buffer[7]), .A(n36), .X(n34) );
  UDB116SVT24_INV_0P75 U39 ( .A(n34), .X(n41) );
  UDB116SVT24_NR2_0P75 U40 ( .A1(load), .A2(n36), .X(n35) );
  UDB116SVT24_AN2_1 U41 ( .A1(en), .A2(n35), .X(n39) );
  UDB116SVT24_NR3_0P75 U42 ( .A1(en), .A2(load), .A3(n36), .X(n40) );
  UDB116SVT24_AOI22_1 U43 ( .A1(n33), .A2(buffer[7]), .B1(n32), .B2(din[7]), 
        .X(n37) );
  UDB116SVT24_AO21B_0P75 U44 ( .A1(n30), .A2(buffer[6]), .B(n37), .X(n26) );
  UDB116SVT24_AOI22_1 U45 ( .A1(n30), .A2(buffer[5]), .B1(n31), .B2(din[6]), 
        .X(n38) );
  UDB116SVT24_AO21B_0P75 U46 ( .A1(n33), .A2(buffer[6]), .B(n38), .X(n25) );
  UDB116SVT24_AO22_1 U47 ( .A1(n40), .A2(buffer[0]), .B1(n32), .B2(din[0]), 
        .X(n27) );
  UDB116SVT24_AO222_1 U48 ( .A1(n40), .A2(buffer[5]), .B1(n31), .B2(din[5]), 
        .C1(buffer[4]), .C2(n39), .X(n24) );
  UDB116SVT24_AO222_1 U49 ( .A1(n33), .A2(buffer[4]), .B1(n32), .B2(din[4]), 
        .C1(buffer[3]), .C2(n30), .X(n23) );
  UDB116SVT24_AO222_1 U50 ( .A1(n40), .A2(buffer[3]), .B1(n31), .B2(din[3]), 
        .C1(buffer[2]), .C2(n39), .X(n22) );
  UDB116SVT24_AO222_1 U51 ( .A1(n33), .A2(buffer[2]), .B1(n32), .B2(din[2]), 
        .C1(buffer[1]), .C2(n30), .X(n21) );
  UDB116SVT24_AO222_1 U52 ( .A1(n40), .A2(buffer[1]), .B1(n31), .B2(din[1]), 
        .C1(buffer[0]), .C2(n39), .X(n20) );
endmodule

