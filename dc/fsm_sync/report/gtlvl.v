/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12-SP1
// Date      : Wed Feb 26 14:25:09 2025
/////////////////////////////////////////////////////////////


module fsm_sync ( clk, rst, rfin, sh_en, state, sh_en_sync2 );
  input clk, rst, rfin, sh_en;
  output state, sh_en_sync2;
  wire   n21, n22, sh_en_prev, sh_en_sync1, N4, N5, N6, n10, n16, n17, n18,
         n19, n20;

  VIRL_SDN_MSRRB_1 sh_en_sync1_reg ( .D(N4), .CK(clk), .RD(1'b1), .Q(
        sh_en_sync1) );
  VIRL_SDN_MSRRB_1 sh_en_sync2_reg ( .D(N5), .CK(clk), .RD(1'b1), .Q(n22) );
  VIRL_SDN_MSRRB_1 sh_en_prev_reg ( .D(N6), .CK(clk), .RD(1'b1), .Q(sh_en_prev) );
  VIRL_SDN_MSRRB_1 state_reg ( .D(n10), .CK(clk), .RD(1'b1), .Q(n21) );
  VIRL_SDN_BUF_1 U19 ( .A(n22), .X(sh_en_sync2) );
  VIRL_SDN_BUF_1 U20 ( .A(n21), .X(state) );
  VIRL_SDN_MUX2_1 U21 ( .D0(n16), .D1(n17), .S(n21), .X(n10) );
  VIRL_SDN_OR2_1 U22 ( .A1(n18), .A2(N4), .X(n17) );
  VIRL_SDN_AN2_1 U23 ( .A1(n19), .A2(n20), .X(n18) );
  VIRL_SDN_INV_0P5 U24 ( .A(sh_en_prev), .X(n19) );
  VIRL_SDN_AN2_1 U25 ( .A1(rfin), .A2(n20), .X(n16) );
  VIRL_SDN_AN2_1 U26 ( .A1(n22), .A2(n20), .X(N6) );
  VIRL_SDN_AN2_1 U27 ( .A1(sh_en_sync1), .A2(n20), .X(N5) );
  VIRL_SDN_AN2_1 U28 ( .A1(n20), .A2(sh_en), .X(N4) );
  VIRL_SDN_INV_0P5 U29 ( .A(rst), .X(n20) );
endmodule

