/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : V-2023.12-SP1
// Date      : Thu Mar 27 12:19:13 2025
/////////////////////////////////////////////////////////////


module fsm_sync ( clk, rst, rfin, sh_en, fsm_rst, rfin_sync, state );
  input clk, rst, rfin, sh_en, fsm_rst;
  output rfin_sync, state;
  wire   state_pos, N11, state_neg, N13, sh_en_prev, n7, n8, n9, n10, n11, n12,
         n13;

  UDB116SVT24_FDPQ_V2_3 state_pos_reg ( .D(N11), .CK(clk), .Q(state_pos) );
  UDB116SVT24_FDNQ_V2_1 state_neg_reg ( .D(N13), .CK(clk), .Q(state_neg) );
  UDB116SVT24_FDPQB_1P5 sh_en_prev_reg ( .D(n7), .CK(clk), .QN(sh_en_prev) );
  UDB116SVT24_OR2_0P75 U13 ( .A1(rst), .A2(n8), .X(n7) );
  UDB116SVT24_INV_0P75 U14 ( .A(sh_en), .X(n8) );
  UDB116SVT24_AOI21_0P75 U15 ( .A1(sh_en_prev), .A2(n8), .B(fsm_rst), .X(n11)
         );
  UDB116SVT24_INV_0P75 U16 ( .A(state_pos), .X(n9) );
  UDB116SVT24_AOI22_1 U17 ( .A1(state_pos), .A2(n11), .B1(rfin), .B2(n9), .X(
        n13) );
  UDB116SVT24_NR2_0P75 U18 ( .A1(n13), .A2(rst), .X(N11) );
  UDB116SVT24_INV_0P75 U19 ( .A(state_neg), .X(n10) );
  UDB116SVT24_AOI22_1 U20 ( .A1(state_neg), .A2(n11), .B1(rfin), .B2(n10), .X(
        n12) );
  UDB116SVT24_NR2_0P75 U21 ( .A1(n12), .A2(rst), .X(N13) );
  UDB116SVT24_ND2_MM_0P75 U22 ( .A1(n13), .A2(n12), .X(state) );
endmodule

