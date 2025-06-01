/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : V-2023.12-SP1
// Date      : Sat May 31 13:31:18 2025
/////////////////////////////////////////////////////////////


module adder ( clk, a, b, sum, carry );
  input [8:0] a;
  input [8:0] b;
  output [8:0] sum;
  input clk;
  output carry;
  wire   \intadd_0/n8 , \intadd_0/n7 , \intadd_0/n6 , \intadd_0/n5 ,
         \intadd_0/n4 , \intadd_0/n3 , \intadd_0/n2 , \intadd_0/n1 , n2;
  assign carry = \intadd_0/n1 ;

  UDB116SVT24_ADDF_V1_1 \intadd_0/U9  ( .A(b[1]), .B(a[1]), .CI(n2), .CO(
        \intadd_0/n8 ), .S(sum[1]) );
  UDB116SVT24_ADDF_V1_1 \intadd_0/U8  ( .A(b[2]), .B(a[2]), .CI(\intadd_0/n8 ), 
        .CO(\intadd_0/n7 ), .S(sum[2]) );
  UDB116SVT24_ADDF_V1_1 \intadd_0/U7  ( .A(b[3]), .B(a[3]), .CI(\intadd_0/n7 ), 
        .CO(\intadd_0/n6 ), .S(sum[3]) );
  UDB116SVT24_ADDF_V1_1 \intadd_0/U6  ( .A(b[4]), .B(a[4]), .CI(\intadd_0/n6 ), 
        .CO(\intadd_0/n5 ), .S(sum[4]) );
  UDB116SVT24_ADDF_V1_1 \intadd_0/U5  ( .A(b[5]), .B(a[5]), .CI(\intadd_0/n5 ), 
        .CO(\intadd_0/n4 ), .S(sum[5]) );
  UDB116SVT24_ADDF_V1_1 \intadd_0/U4  ( .A(b[6]), .B(a[6]), .CI(\intadd_0/n4 ), 
        .CO(\intadd_0/n3 ), .S(sum[6]) );
  UDB116SVT24_ADDF_V1_1 \intadd_0/U3  ( .A(b[7]), .B(a[7]), .CI(\intadd_0/n3 ), 
        .CO(\intadd_0/n2 ), .S(sum[7]) );
  UDB116SVT24_ADDF_V1_1 \intadd_0/U2  ( .A(b[8]), .B(a[8]), .CI(\intadd_0/n2 ), 
        .CO(\intadd_0/n1 ), .S(sum[8]) );
  UDB116SVT24_AN2_1 U2 ( .A1(b[0]), .A2(a[0]), .X(n2) );
  UDB116SVT24_OA21B_0P75 U3 ( .A1(b[0]), .A2(a[0]), .B(n2), .X(sum[0]) );
endmodule

