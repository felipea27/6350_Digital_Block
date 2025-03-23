/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : V-2023.12-SP1
// Date      : Tue Mar 18 14:04:23 2025
/////////////////////////////////////////////////////////////


module fsm_sync ( clk, rst, rfin, sh_en, fsm_rst, rfin_sync, state );
  input clk, rst, rfin, sh_en, fsm_rst;
  output rfin_sync, state;
  wire   state_pos, state_neg, sh_en_prev, n6, n7, n8, n10, n11, n12, n13, n14,
         n15;

  UDB116SVT24_FDPRBQ_V2_1 sh_en_prev_reg ( .D(sh_en), .CK(clk), .RD(n6), .Q(
        sh_en_prev) );
  UDB116SVT24_FDPRBQ_V2_1 state_pos_reg ( .D(n8), .CK(clk), .RD(n6), .Q(
        state_pos) );
  UDB116SVT24_FDNRBQ_V2_1 state_neg_reg ( .D(n7), .CK(clk), .RD(n6), .Q(
        state_neg) );
  UDB116SVT24_TIE1_V1_1 U14 ( .X(n10) );
  UDB116SVT24_INV_1 U15 ( .A(n10), .X(rfin_sync) );
  UDB116SVT24_INV_0P75 U16 ( .A(rst), .X(n6) );
  UDB116SVT24_INV_0P75 U17 ( .A(sh_en_prev), .X(n11) );
  UDB116SVT24_OAI21B_1 U18 ( .A1(sh_en), .A2(n11), .B(fsm_rst), .X(n13) );
  UDB116SVT24_INV_0P75 U19 ( .A(rfin), .X(n12) );
  UDB116SVT24_INV_0P75 U20 ( .A(state_pos), .X(n15) );
  UDB116SVT24_AOI22_1 U21 ( .A1(state_pos), .A2(n13), .B1(n12), .B2(n15), .X(
        n8) );
  UDB116SVT24_INV_0P75 U22 ( .A(state_neg), .X(n14) );
  UDB116SVT24_AOI22_1 U23 ( .A1(state_neg), .A2(n13), .B1(n12), .B2(n14), .X(
        n7) );
  UDB116SVT24_ND2_MM_0P75 U24 ( .A1(n15), .A2(n14), .X(state) );
endmodule

