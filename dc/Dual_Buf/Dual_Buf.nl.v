/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : V-2023.12-SP1
// Date      : Tue Mar 18 14:16:40 2025
/////////////////////////////////////////////////////////////


module Dual_Buf ( clk, rst, rfin, dout, pkt_rec, sh_en1, sh_en2 );
  output [63:0] dout;
  input clk, rst, rfin, sh_en1, sh_en2;
  output pkt_rec;
  wire   n67;

  UDB116SVT24_TIE1_V1_1 U5 ( .X(n67) );
  UDB116SVT24_INV_1 U6 ( .A(n67), .X(pkt_rec) );
  UDB116SVT24_INV_1 U7 ( .A(n67), .X(dout[0]) );
  UDB116SVT24_INV_1 U8 ( .A(n67), .X(dout[1]) );
  UDB116SVT24_INV_1 U9 ( .A(n67), .X(dout[2]) );
  UDB116SVT24_INV_1 U10 ( .A(n67), .X(dout[3]) );
  UDB116SVT24_INV_1 U11 ( .A(n67), .X(dout[4]) );
  UDB116SVT24_INV_1 U12 ( .A(n67), .X(dout[5]) );
  UDB116SVT24_INV_1 U13 ( .A(n67), .X(dout[6]) );
  UDB116SVT24_INV_1 U14 ( .A(n67), .X(dout[7]) );
  UDB116SVT24_INV_1 U15 ( .A(n67), .X(dout[8]) );
  UDB116SVT24_INV_1 U16 ( .A(n67), .X(dout[9]) );
  UDB116SVT24_INV_1 U17 ( .A(n67), .X(dout[10]) );
  UDB116SVT24_INV_1 U18 ( .A(n67), .X(dout[11]) );
  UDB116SVT24_INV_1 U19 ( .A(n67), .X(dout[12]) );
  UDB116SVT24_INV_1 U20 ( .A(n67), .X(dout[13]) );
  UDB116SVT24_INV_1 U21 ( .A(n67), .X(dout[14]) );
  UDB116SVT24_INV_1 U22 ( .A(n67), .X(dout[15]) );
  UDB116SVT24_INV_1 U23 ( .A(n67), .X(dout[16]) );
  UDB116SVT24_INV_1 U24 ( .A(n67), .X(dout[17]) );
  UDB116SVT24_INV_1 U25 ( .A(n67), .X(dout[18]) );
  UDB116SVT24_INV_1 U26 ( .A(n67), .X(dout[19]) );
  UDB116SVT24_INV_1 U27 ( .A(n67), .X(dout[20]) );
  UDB116SVT24_INV_1 U28 ( .A(n67), .X(dout[21]) );
  UDB116SVT24_INV_1 U29 ( .A(n67), .X(dout[22]) );
  UDB116SVT24_INV_1 U30 ( .A(n67), .X(dout[23]) );
  UDB116SVT24_INV_1 U31 ( .A(n67), .X(dout[24]) );
  UDB116SVT24_INV_1 U32 ( .A(n67), .X(dout[25]) );
  UDB116SVT24_INV_1 U33 ( .A(n67), .X(dout[26]) );
  UDB116SVT24_INV_1 U34 ( .A(n67), .X(dout[27]) );
  UDB116SVT24_INV_1 U35 ( .A(n67), .X(dout[28]) );
  UDB116SVT24_INV_1 U36 ( .A(n67), .X(dout[29]) );
  UDB116SVT24_INV_1 U37 ( .A(n67), .X(dout[30]) );
  UDB116SVT24_INV_1 U38 ( .A(n67), .X(dout[31]) );
  UDB116SVT24_INV_1 U39 ( .A(n67), .X(dout[32]) );
  UDB116SVT24_INV_1 U40 ( .A(n67), .X(dout[33]) );
  UDB116SVT24_INV_1 U41 ( .A(n67), .X(dout[34]) );
  UDB116SVT24_INV_1 U42 ( .A(n67), .X(dout[35]) );
  UDB116SVT24_INV_1 U43 ( .A(n67), .X(dout[36]) );
  UDB116SVT24_INV_1 U44 ( .A(n67), .X(dout[37]) );
  UDB116SVT24_INV_1 U45 ( .A(n67), .X(dout[38]) );
  UDB116SVT24_INV_1 U46 ( .A(n67), .X(dout[39]) );
  UDB116SVT24_INV_1 U47 ( .A(n67), .X(dout[40]) );
  UDB116SVT24_INV_1 U48 ( .A(n67), .X(dout[41]) );
  UDB116SVT24_INV_1 U49 ( .A(n67), .X(dout[42]) );
  UDB116SVT24_INV_1 U50 ( .A(n67), .X(dout[43]) );
  UDB116SVT24_INV_1 U51 ( .A(n67), .X(dout[44]) );
  UDB116SVT24_INV_1 U52 ( .A(n67), .X(dout[45]) );
  UDB116SVT24_INV_1 U53 ( .A(n67), .X(dout[46]) );
  UDB116SVT24_INV_1 U54 ( .A(n67), .X(dout[47]) );
  UDB116SVT24_INV_1 U55 ( .A(n67), .X(dout[48]) );
  UDB116SVT24_INV_1 U56 ( .A(n67), .X(dout[49]) );
  UDB116SVT24_INV_1 U57 ( .A(n67), .X(dout[50]) );
  UDB116SVT24_INV_1 U58 ( .A(n67), .X(dout[51]) );
  UDB116SVT24_INV_1 U59 ( .A(n67), .X(dout[52]) );
  UDB116SVT24_INV_1 U60 ( .A(n67), .X(dout[53]) );
  UDB116SVT24_INV_1 U61 ( .A(n67), .X(dout[54]) );
  UDB116SVT24_INV_1 U62 ( .A(n67), .X(dout[55]) );
  UDB116SVT24_INV_1 U63 ( .A(n67), .X(dout[56]) );
  UDB116SVT24_INV_1 U64 ( .A(n67), .X(dout[57]) );
  UDB116SVT24_INV_1 U65 ( .A(n67), .X(dout[58]) );
  UDB116SVT24_INV_1 U66 ( .A(n67), .X(dout[59]) );
  UDB116SVT24_INV_1 U67 ( .A(n67), .X(dout[60]) );
  UDB116SVT24_INV_1 U68 ( .A(n67), .X(dout[61]) );
  UDB116SVT24_INV_1 U69 ( .A(n67), .X(dout[62]) );
  UDB116SVT24_INV_1 U70 ( .A(n67), .X(dout[63]) );
endmodule

