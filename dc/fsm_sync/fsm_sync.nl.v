/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : V-2023.12-SP1
// Date      : Fri Mar  7 17:34:20 2025
/////////////////////////////////////////////////////////////


module fsm_sync ( clk, rst, rfin, sh_en, state, sh_en_sync2 );
  input clk, rst, rfin, sh_en;
  output state, sh_en_sync2;
  wire   sh_en_prev, sh_en_sync1, N5, N6, n3, n4, n5, n6;

  UDB116SVT24_FDPQ_V2_3 sh_en_sync2_reg ( .D(N5), .CK(clk), .Q(sh_en_sync2) );
  UDB116SVT24_FDPQ_V2_3 sh_en_prev_reg ( .D(N6), .CK(clk), .Q(sh_en_prev) );
  UDB116SVT24_FDPQ_V2_3 state_reg ( .D(n3), .CK(clk), .Q(state) );
  UDB116SVT24_FDPQB_1P5 sh_en_sync1_reg ( .D(n4), .CK(clk), .QN(sh_en_sync1)
         );
  UDB116SVT24_OR2_0P75 U9 ( .A1(rst), .A2(n6), .X(n4) );
  UDB116SVT24_INV_0P75 U10 ( .A(sh_en), .X(n6) );
  UDB116SVT24_OAI21B_1 U11 ( .A1(state), .A2(rfin), .B(rst), .X(n5) );
  UDB116SVT24_AOI31_0P75 U12 ( .A1(sh_en_prev), .A2(state), .A3(n6), .B(n5), 
        .X(n3) );
  UDB116SVT24_NR2B_0P75 U13 ( .A(sh_en_sync1), .B(rst), .X(N5) );
  UDB116SVT24_NR2B_0P75 U14 ( .A(sh_en_sync2), .B(rst), .X(N6) );
endmodule

