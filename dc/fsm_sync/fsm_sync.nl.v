/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : V-2023.12-SP1
// Date      : Sun Mar 23 20:06:14 2025
/////////////////////////////////////////////////////////////


module fsm_sync ( clk, rst, rfin, sh_en, state );
  input clk, rst, rfin, sh_en;
  output state;
  wire   state_pos, next_state_pos, state_neg, next_state_neg, sh_en_prev, n1,
         n2, n3, n4, n5, n6;

  UDB116SVT24_FDPRBQ_V2_1 state_pos_reg ( .D(next_state_pos), .CK(clk), .RD(n6), .Q(state_pos) );
  UDB116SVT24_FDNRBQ_V2_1 state_neg_reg ( .D(next_state_neg), .CK(clk), .RD(n6), .Q(state_neg) );
  UDB116SVT24_ND2_MM_0P75 U6 ( .A1(next_state_pos), .A2(n3), .X(n2) );
  UDB116SVT24_OAI21B_1 U7 ( .A1(next_state_pos), .A2(rfin), .B(state_pos), .X(
        n1) );
  UDB116SVT24_ND2_MM_0P75 U9 ( .A1(next_state_neg), .A2(n3), .X(n5) );
  UDB116SVT24_OAI21B_1 U10 ( .A1(rfin), .A2(next_state_neg), .B(state_neg), 
        .X(n4) );
  UDB116SVT24_FDPRBQ_V2_1 sh_en_prev_reg ( .D(sh_en), .CK(clk), .RD(n6), .Q(
        sh_en_prev) );
  UDB116SVT24_INV_0P75 U12 ( .A(rst), .X(n6) );
  UDB116SVT24_AOI21_1 U13 ( .A1(n2), .A2(n1), .B(rst), .X(next_state_pos) );
  UDB116SVT24_AOI21_1 U14 ( .A1(n5), .A2(n4), .B(rst), .X(next_state_neg) );
  UDB116SVT24_ND2B_1 U15 ( .A(sh_en), .B(sh_en_prev), .X(n3) );
  UDB116SVT24_OR2_0P75 U16 ( .A1(state_neg), .A2(state_pos), .X(state) );
endmodule

