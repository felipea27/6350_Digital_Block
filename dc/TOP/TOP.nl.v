/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : V-2023.12-SP1
// Date      : Fri Mar 28 11:27:45 2025
/////////////////////////////////////////////////////////////


module SPI_slave ( rst, MOSI, SCK, SS, MODE, DATA, OUT, MISO );
  input [1:0] MODE;
  input [7:0] DATA;
  output [7:0] OUT;
  input rst, MOSI, SCK, SS;
  output MISO;
  wire   n18, N49, n19, N47, SS_neg_flag, N50, N51, N45, N38, N39, N40, N41,
         N42, N43, N44, n17, SHIFT_IN, n20, n8, n11, n2, n3, n4, n5, n6, n7,
         n9, n10, n12, n13, n14, n15, n16, n21, n22, n23, n24, n25, n26, n27,
         n28, n29;
  wire   [2:0] counter;
  wire   [7:0] SHIFT_REG;
  tri   MISO;
  tri   n32;

  UDB116SVT24_LDPQ_6 \counter_reg[0]  ( .G(n18), .D(N49), .Q(counter[0]) );
  UDB116SVT24_LDPQ_6 SS_neg_flag_reg ( .G(n19), .D(N47), .Q(SS_neg_flag) );
  UDB116SVT24_LDPQ_6 \counter_reg[1]  ( .G(n18), .D(N50), .Q(counter[1]) );
  UDB116SVT24_LDPQ_6 \counter_reg[2]  ( .G(n18), .D(N51), .Q(counter[2]) );
  \**TSGEN**  MISO_tri ( .\function (SHIFT_REG[7]), .three_state(n32), 
        .\output (MISO) );
  UDB116SVT24_LDPQ_1 \SHIFT_REG_reg[7]  ( .G(n10), .D(N45), .Q(SHIFT_REG[7])
         );
  UDB116SVT24_LDPQ_1 \SHIFT_REG_reg[0]  ( .G(n12), .D(N38), .Q(SHIFT_REG[0])
         );
  UDB116SVT24_LDPQ_1 \SHIFT_REG_reg[1]  ( .G(n10), .D(N39), .Q(SHIFT_REG[1])
         );
  UDB116SVT24_LDPQ_1 \SHIFT_REG_reg[2]  ( .G(n12), .D(N40), .Q(SHIFT_REG[2])
         );
  UDB116SVT24_LDPQ_1 \SHIFT_REG_reg[3]  ( .G(n12), .D(N41), .Q(SHIFT_REG[3])
         );
  UDB116SVT24_LDPQ_1 \SHIFT_REG_reg[4]  ( .G(n10), .D(N42), .Q(SHIFT_REG[4])
         );
  UDB116SVT24_LDPQ_1 \SHIFT_REG_reg[5]  ( .G(n10), .D(N43), .Q(SHIFT_REG[5])
         );
  UDB116SVT24_LDPQ_1 \SHIFT_REG_reg[6]  ( .G(n12), .D(N44), .Q(SHIFT_REG[6])
         );
  UDB116SVT24_FDPRBQ_V2_1 SHIFT_IN_reg ( .D(n17), .CK(SCK), .RD(rst), .Q(
        SHIFT_IN) );
  UDB116SVT24_FDPQ_V2_3 \OUT_reg[5]  ( .D(SHIFT_REG[5]), .CK(n5), .Q(OUT[5])
         );
  UDB116SVT24_FDPQ_V2_3 \OUT_reg[6]  ( .D(SHIFT_REG[6]), .CK(n32), .Q(OUT[6])
         );
  UDB116SVT24_INV_0P75 U47 ( .A(n11), .X(n32) );
  UDB116SVT24_FDPQ_V2_3 \OUT_reg[7]  ( .D(SHIFT_REG[7]), .CK(n4), .Q(OUT[7])
         );
  UDB116SVT24_FDPQ_V2_3 \OUT_reg[0]  ( .D(SHIFT_REG[0]), .CK(n5), .Q(OUT[0])
         );
  UDB116SVT24_FDPQ_V2_3 \OUT_reg[1]  ( .D(SHIFT_REG[1]), .CK(n4), .Q(OUT[1])
         );
  UDB116SVT24_ND2B_0P75 U5 ( .A(n32), .B(rst), .X(n8) );
  UDB116SVT24_FDPQ_V2_3 \OUT_reg[4]  ( .D(SHIFT_REG[4]), .CK(n3), .Q(OUT[4])
         );
  UDB116SVT24_FDPQ_1 \OUT_reg[2]  ( .D(SHIFT_REG[2]), .CK(n3), .Q(OUT[2]) );
  UDB116SVT24_FDPQ_1 \OUT_reg[3]  ( .D(SHIFT_REG[3]), .CK(n32), .Q(OUT[3]) );
  UDB116SVT24_OR2_0P75 U1 ( .A1(n8), .A2(n27), .X(n29) );
  UDB116SVT24_OR2_0P75 U2 ( .A1(SS_neg_flag), .A2(n7), .X(n28) );
  UDB116SVT24_INV_0P75 U3 ( .A(n4), .X(n11) );
  UDB116SVT24_INV_0P75 U4 ( .A(SS), .X(n2) );
  UDB116SVT24_INV_0P75 U6 ( .A(n2), .X(n3) );
  UDB116SVT24_INV_0P75 U7 ( .A(n2), .X(n4) );
  UDB116SVT24_INV_0P75 U8 ( .A(n2), .X(n5) );
  UDB116SVT24_INV_0P75 U9 ( .A(n8), .X(n6) );
  UDB116SVT24_INV_0P75 U10 ( .A(n6), .X(n7) );
  UDB116SVT24_INV_0P75 U11 ( .A(n20), .X(n9) );
  UDB116SVT24_INV_0P75 U12 ( .A(n9), .X(n10) );
  UDB116SVT24_INV_0P75 U13 ( .A(n9), .X(n12) );
  UDB116SVT24_INV_0P75 U14 ( .A(n29), .X(n13) );
  UDB116SVT24_INV_0P75 U15 ( .A(n29), .X(n14) );
  UDB116SVT24_INV_0P75 U16 ( .A(n28), .X(n15) );
  UDB116SVT24_INV_0P75 U17 ( .A(n28), .X(n16) );
  UDB116SVT24_ND3_0P75 U18 ( .A1(counter[0]), .A2(counter[1]), .A3(counter[2]), 
        .X(n22) );
  UDB116SVT24_OAI21_0P75 U19 ( .A1(n5), .A2(n22), .B(rst), .X(N47) );
  UDB116SVT24_INV_0P75 U20 ( .A(N47), .X(n21) );
  UDB116SVT24_OAI21_0P75 U21 ( .A1(n3), .A2(SS_neg_flag), .B(n21), .X(n18) );
  UDB116SVT24_INV_0P75 U22 ( .A(SS_neg_flag), .X(n27) );
  UDB116SVT24_OAI21_0P75 U23 ( .A1(n4), .A2(n27), .B(n21), .X(n19) );
  UDB116SVT24_ND2_MM_0P75 U24 ( .A1(rst), .A2(n5), .X(n20) );
  UDB116SVT24_NR2_0P75 U25 ( .A1(counter[0]), .A2(n7), .X(N49) );
  UDB116SVT24_INV_0P75 U26 ( .A(counter[0]), .X(n26) );
  UDB116SVT24_INV_0P75 U27 ( .A(counter[1]), .X(n25) );
  UDB116SVT24_NR2_0P75 U28 ( .A1(n26), .A2(n25), .X(n24) );
  UDB116SVT24_OAI21_0P75 U29 ( .A1(n24), .A2(counter[2]), .B(n22), .X(n23) );
  UDB116SVT24_NR2_0P75 U30 ( .A1(n7), .A2(n23), .X(N51) );
  UDB116SVT24_AOI211_0P75 U31 ( .A1(n26), .A2(n25), .B1(n8), .B2(n24), .X(N50)
         );
  UDB116SVT24_AO22_1 U32 ( .A1(n13), .A2(DATA[1]), .B1(n15), .B2(SHIFT_REG[0]), 
        .X(N39) );
  UDB116SVT24_AO22_1 U33 ( .A1(n14), .A2(DATA[2]), .B1(n16), .B2(SHIFT_REG[1]), 
        .X(N40) );
  UDB116SVT24_AO22_1 U34 ( .A1(n13), .A2(DATA[0]), .B1(n15), .B2(SHIFT_IN), 
        .X(N38) );
  UDB116SVT24_AO22_1 U35 ( .A1(n3), .A2(SHIFT_IN), .B1(MOSI), .B2(n11), .X(n17) );
  UDB116SVT24_AO22_1 U36 ( .A1(n14), .A2(DATA[7]), .B1(n16), .B2(SHIFT_REG[6]), 
        .X(N45) );
  UDB116SVT24_AO22_1 U37 ( .A1(n13), .A2(DATA[6]), .B1(n15), .B2(SHIFT_REG[5]), 
        .X(N44) );
  UDB116SVT24_AO22_1 U38 ( .A1(n14), .A2(DATA[5]), .B1(n16), .B2(SHIFT_REG[4]), 
        .X(N43) );
  UDB116SVT24_AO22_1 U39 ( .A1(n13), .A2(DATA[4]), .B1(n15), .B2(SHIFT_REG[3]), 
        .X(N42) );
  UDB116SVT24_AO22_1 U40 ( .A1(n14), .A2(DATA[3]), .B1(n16), .B2(SHIFT_REG[2]), 
        .X(N41) );
endmodule


module TOP ( clk, rfin, rst, MOSI, CS, SCK, TX_BY, RX, pkt_rec, MISO, TX_OUT, 
        sh_en );
  input clk, rfin, rst, MOSI, CS, SCK, TX_BY, RX;
  output pkt_rec, MISO, TX_OUT, sh_en;
  wire   TX_SH, PKT_RST, PKT_LD, PKT_EN, SPI_LD, TX_EN, TX_LD, pkt_rec_prev,
         \fsm_sync_inst/state_pos , \fsm_sync_inst/N10 ,
         \fsm_sync_inst/sh_en_prev , \fsm_sync_inst/state_neg ,
         \fsm_sync_inst/N12 , \sh_sync_inst/n146 , \sh_sync_inst/n272 ,
         \sh_sync_inst/n150 , \sh_sync_inst/n276 , \sh_sync_inst/n181 ,
         \sh_sync_inst/n311 , \sh_sync_inst/intadd_0/B[7] ,
         \sh_sync_inst/n262 , \sh_sync_inst/n219 , \sh_sync_inst/n349 ,
         \sh_sync_inst/n235 , \sh_sync_inst/n330 , \sh_sync_inst/n265 ,
         \sh_sync_inst/intadd_0/A[5] , \sh_sync_inst/n296 ,
         \sh_sync_inst/n259 , \sh_sync_inst/n257 , \sh_sync_inst/n208 ,
         \sh_sync_inst/n304 , \sh_sync_inst/n228 , \sh_sync_inst/N30 ,
         \sh_sync_inst/n258 , \sh_sync_inst/n147 , \sh_sync_inst/n273 ,
         \sh_sync_inst/n201 , \sh_sync_inst/n270 , \sh_sync_inst/n294 ,
         \sh_sync_inst/n301 , \sh_sync_inst/n157 , \sh_sync_inst/n283 ,
         \sh_sync_inst/n297 , \sh_sync_inst/n291 , \sh_sync_inst/n288 ,
         \sh_sync_inst/n161 , \sh_sync_inst/n287 , \sh_sync_inst/n159 ,
         \sh_sync_inst/n285 , \sh_sync_inst/n153 , \sh_sync_inst/n279 ,
         \sh_sync_inst/n155 , \sh_sync_inst/n281 , \sh_sync_inst/n151 ,
         \sh_sync_inst/n277 , \sh_sync_inst/n207 , \sh_sync_inst/n305 ,
         \sh_sync_inst/intadd_0/A[8] , \sh_sync_inst/n293 ,
         \sh_sync_inst/n255 , \sh_sync_inst/n299 , \sh_sync_inst/n300 ,
         \sh_sync_inst/intadd_0/B[0] , \sh_sync_inst/n269 ,
         \sh_sync_inst/n261 , \sh_sync_inst/intadd_0/A[11] ,
         \sh_sync_inst/n290 , \sh_sync_inst/n202 , \sh_sync_inst/n271 ,
         \sh_sync_inst/intadd_0/A[0] , \sh_sync_inst/intadd_0/A[2] ,
         \sh_sync_inst/intadd_0/A[1] , \sh_sync_inst/intadd_0/A[4] ,
         \sh_sync_inst/intadd_0/B[4] , \sh_sync_inst/intadd_0/A[7] ,
         \sh_sync_inst/intadd_0/B[8] , \sh_sync_inst/intadd_0/A[10] ,
         \sh_sync_inst/intadd_0/B[10] , \sh_sync_inst/intadd_0/B[11] ,
         \sh_sync_inst/intadd_0/B[12] , \sh_sync_inst/intadd_0/A[13] ,
         \sh_sync_inst/intadd_0/B[13] , \sh_sync_inst/rfin_edge ,
         \sh_sync_inst/n145 , \sh_sync_inst/n148 , \sh_sync_inst/n274 ,
         \sh_sync_inst/n149 , \sh_sync_inst/n275 , \sh_sync_inst/n152 ,
         \sh_sync_inst/n278 , \sh_sync_inst/n154 , \sh_sync_inst/n280 ,
         \sh_sync_inst/n156 , \sh_sync_inst/n282 , \sh_sync_inst/n158 ,
         \sh_sync_inst/n284 , \sh_sync_inst/n160 , \sh_sync_inst/n286 ,
         \sh_sync_inst/intadd_0/A[12] , \sh_sync_inst/n289 ,
         \sh_sync_inst/intadd_0/A[9] , \sh_sync_inst/n292 ,
         \sh_sync_inst/intadd_0/A[6] , \sh_sync_inst/n295 ,
         \sh_sync_inst/intadd_0/A[3] , \sh_sync_inst/n298 ,
         \sh_sync_inst/n176 , \sh_sync_inst/n302 , \sh_sync_inst/n177 ,
         \sh_sync_inst/n303 , \sh_sync_inst/n178 , \sh_sync_inst/n308 ,
         \sh_sync_inst/n179 , \sh_sync_inst/n309 , \sh_sync_inst/n180 ,
         \sh_sync_inst/n310 , \sh_sync_inst/n182 , \sh_sync_inst/n312 ,
         \sh_sync_inst/n183 , \sh_sync_inst/n313 , \sh_sync_inst/n184 ,
         \sh_sync_inst/n314 , \sh_sync_inst/n185 , \sh_sync_inst/n315 ,
         \sh_sync_inst/n186 , \sh_sync_inst/n316 , \sh_sync_inst/n187 ,
         \sh_sync_inst/n317 , \sh_sync_inst/n188 , \sh_sync_inst/n318 ,
         \sh_sync_inst/n189 , \sh_sync_inst/n319 , \sh_sync_inst/n190 ,
         \sh_sync_inst/n320 , \sh_sync_inst/n191 , \sh_sync_inst/n321 ,
         \sh_sync_inst/n192 , \sh_sync_inst/n322 , \sh_sync_inst/n193 ,
         \sh_sync_inst/n323 , \sh_sync_inst/n194 , \sh_sync_inst/n338 ,
         \sh_sync_inst/n195 , \sh_sync_inst/n355 ,
         \sh_sync_inst/intadd_0/B[6] , \sh_sync_inst/n263 ,
         \sh_sync_inst/intadd_0/B[5] , \sh_sync_inst/n264 ,
         \sh_sync_inst/n203 , \sh_sync_inst/n307 , \sh_sync_inst/n204 ,
         \sh_sync_inst/n356 , \sh_sync_inst/n205 , \sh_sync_inst/N29 ,
         \sh_sync_inst/n206 , \sh_sync_inst/n306 , \sh_sync_inst/n211 ,
         \sh_sync_inst/n341 , \sh_sync_inst/n212 , \sh_sync_inst/n342 ,
         \sh_sync_inst/n213 , \sh_sync_inst/n343 , \sh_sync_inst/n214 ,
         \sh_sync_inst/n344 , \sh_sync_inst/n215 , \sh_sync_inst/n345 ,
         \sh_sync_inst/n216 , \sh_sync_inst/n346 , \sh_sync_inst/n217 ,
         \sh_sync_inst/n347 , \sh_sync_inst/n218 , \sh_sync_inst/n348 ,
         \sh_sync_inst/n220 , \sh_sync_inst/n350 , \sh_sync_inst/n221 ,
         \sh_sync_inst/n351 , \sh_sync_inst/n222 , \sh_sync_inst/n352 ,
         \sh_sync_inst/n223 , \sh_sync_inst/n353 , \sh_sync_inst/n224 ,
         \sh_sync_inst/n354 , \sh_sync_inst/n225 , \sh_sync_inst/N529 ,
         \sh_sync_inst/n226 , \sh_sync_inst/N528 , \sh_sync_inst/n227 ,
         \sh_sync_inst/N527 , \sh_sync_inst/n229 , \sh_sync_inst/n324 ,
         \sh_sync_inst/n230 , \sh_sync_inst/n325 , \sh_sync_inst/n231 ,
         \sh_sync_inst/n326 , \sh_sync_inst/n232 , \sh_sync_inst/n327 ,
         \sh_sync_inst/n233 , \sh_sync_inst/n328 , \sh_sync_inst/n234 ,
         \sh_sync_inst/n329 , \sh_sync_inst/intadd_0/B[9] ,
         \sh_sync_inst/n260 , \sh_sync_inst/intadd_0/B[3] ,
         \sh_sync_inst/n266 , \sh_sync_inst/intadd_0/B[2] ,
         \sh_sync_inst/n267 , \sh_sync_inst/intadd_0/B[1] ,
         \sh_sync_inst/n268 , \sh_sync_inst/n244 , \sh_sync_inst/N31 ,
         \sh_sync_inst/n245 , \sh_sync_inst/n331 , \sh_sync_inst/n246 ,
         \sh_sync_inst/n332 , \sh_sync_inst/n247 , \sh_sync_inst/n333 ,
         \sh_sync_inst/n248 , \sh_sync_inst/n334 , \sh_sync_inst/n249 ,
         \sh_sync_inst/n335 , \sh_sync_inst/n250 , \sh_sync_inst/n336 ,
         \sh_sync_inst/n251 , \sh_sync_inst/n337 , \sh_sync_inst/n253 ,
         \sh_sync_inst/N535 , \sh_sync_inst/n254 , \sh_sync_inst/N534 ,
         \shift_buf_inst/n138 , \shift_buf_inst/n73 , \shift_buf_inst/n88 ,
         \shift_buf_inst/n103 , \shift_buf_inst/n119 , \shift_buf_inst/n137 ,
         \shift_buf_inst/N87 , \shift_buf_inst/N7 , \shift_buf_inst/N8 ,
         \shift_buf_inst/N9 , \shift_buf_inst/N10 , \shift_buf_inst/N11 ,
         \shift_buf_inst/N12 , \shift_buf_inst/N13 , \shift_buf_inst/n70 ,
         \shift_buf_inst/n71 , \shift_buf_inst/n72 , \shift_buf_inst/n74 ,
         \shift_buf_inst/n75 , \shift_buf_inst/n76 , \shift_buf_inst/n77 ,
         \shift_buf_inst/n78 , \shift_buf_inst/n79 , \shift_buf_inst/n80 ,
         \shift_buf_inst/n81 , \shift_buf_inst/n82 , \shift_buf_inst/n83 ,
         \shift_buf_inst/n84 , \shift_buf_inst/n85 , \shift_buf_inst/n86 ,
         \shift_buf_inst/n87 , \shift_buf_inst/n89 , \shift_buf_inst/n90 ,
         \shift_buf_inst/n91 , \shift_buf_inst/n92 , \shift_buf_inst/n93 ,
         \shift_buf_inst/n94 , \shift_buf_inst/n95 , \shift_buf_inst/n96 ,
         \shift_buf_inst/n97 , \shift_buf_inst/n98 , \shift_buf_inst/n99 ,
         \shift_buf_inst/n100 , \shift_buf_inst/n101 , \shift_buf_inst/n102 ,
         \shift_buf_inst/n104 , \shift_buf_inst/n105 , \shift_buf_inst/n106 ,
         \shift_buf_inst/n107 , \shift_buf_inst/n108 , \shift_buf_inst/n110 ,
         \shift_buf_inst/n111 , \shift_buf_inst/n112 , \shift_buf_inst/n113 ,
         \shift_buf_inst/n114 , \shift_buf_inst/n115 , \shift_buf_inst/n116 ,
         \shift_buf_inst/n117 , \shift_buf_inst/n118 , \shift_buf_inst/n120 ,
         \shift_buf_inst/n121 , \shift_buf_inst/n122 , \shift_buf_inst/n123 ,
         \shift_buf_inst/n124 , \shift_buf_inst/n125 , \shift_buf_inst/n126 ,
         \shift_buf_inst/n127 , \shift_buf_inst/n128 , \shift_buf_inst/n129 ,
         \shift_buf_inst/n130 , \shift_buf_inst/n131 , \shift_buf_inst/n132 ,
         \shift_buf_inst/n133 , \pkt_reg_inst/n107 , \pkt_reg_inst/n70 ,
         \pkt_reg_inst/n60 , \pkt_reg_inst/n58 , \pkt_reg_inst/n48 ,
         \pkt_reg_inst/n31 , \pkt_reg_inst/n32 , \pkt_reg_inst/n33 ,
         \pkt_reg_inst/n34 , \pkt_reg_inst/n35 , \pkt_reg_inst/n36 ,
         \pkt_reg_inst/n38 , \pkt_reg_inst/n46 , \pkt_reg_inst/n54 ,
         \pkt_reg_inst/n62 , \pkt_reg_inst/n78 , \pkt_reg_inst/n86 ,
         \pkt_reg_inst/n94 , \pkt_reg_inst/n102 , \pkt_reg_inst/n45 ,
         \pkt_reg_inst/n53 , \pkt_reg_inst/n61 , \pkt_reg_inst/n69 ,
         \pkt_reg_inst/n77 , \pkt_reg_inst/n85 , \pkt_reg_inst/n93 ,
         \pkt_reg_inst/n101 , \pkt_reg_inst/n44 , \pkt_reg_inst/n52 ,
         \pkt_reg_inst/n68 , \pkt_reg_inst/n76 , \pkt_reg_inst/n84 ,
         \pkt_reg_inst/n92 , \pkt_reg_inst/n100 , \pkt_reg_inst/n43 ,
         \pkt_reg_inst/n51 , \pkt_reg_inst/n59 , \pkt_reg_inst/n75 ,
         \pkt_reg_inst/n83 , \pkt_reg_inst/n91 , \pkt_reg_inst/n99 ,
         \pkt_reg_inst/n42 , \pkt_reg_inst/n50 , \pkt_reg_inst/n66 ,
         \pkt_reg_inst/n74 , \pkt_reg_inst/n82 , \pkt_reg_inst/n90 ,
         \pkt_reg_inst/n98 , \pkt_reg_inst/n41 , \pkt_reg_inst/n49 ,
         \pkt_reg_inst/n57 , \pkt_reg_inst/n65 , \pkt_reg_inst/n73 ,
         \pkt_reg_inst/n81 , \pkt_reg_inst/n89 , \pkt_reg_inst/n97 ,
         \pkt_reg_inst/n40 , \pkt_reg_inst/n56 , \pkt_reg_inst/n64 ,
         \pkt_reg_inst/n72 , \pkt_reg_inst/n80 , \pkt_reg_inst/n88 ,
         \pkt_reg_inst/n96 , \pkt_reg_inst/n39 , \pkt_reg_inst/n47 ,
         \pkt_reg_inst/n55 , \pkt_reg_inst/n63 , \pkt_reg_inst/n71 ,
         \pkt_reg_inst/n79 , \pkt_reg_inst/n87 , \pkt_reg_inst/n95 ,
         \tx_buf_inst/n26 , \tx_buf_inst/n25 , \tx_buf_inst/n24 ,
         \tx_buf_inst/n23 , \tx_buf_inst/n22 , \tx_buf_inst/n21 ,
         \tx_buf_inst/n20 , \tx_buf_inst/n27 , n832, n833, n834, n835, n836,
         n837, n838, n839, n840, n841, n842, n843, n844, n845, n846, n847,
         n848, n849, n850, n851, n852, n853, n854, n856, n857, n858, n859,
         n860, n861, n862, n863, n864, n865, n866, n867, n868, n869, n870,
         n871, n872, n873, n874, n875, n876, n877, n878, n879, n880, n881,
         n882, n883, n884, n885, n886, n887, n888, n889, n890, n891, n892,
         n893, n894, n895, n896, n897, n898, n899, n900, n901, n902, n903,
         n904, n905, n906, n907, n908, n909, n910, n911, n912, n913, n914,
         n915, n916, n917, n918, n919, n920, n921, n922, n923, n924, n925,
         n926, n927, n928, n929, n930, n931, n932, n933, n934, n935, n936,
         n937, n938, n939, n940, n941, n942, n943, n944, n945, n946, n947,
         n948, n949, n950, n951, n952, n953, n954, n955, n956, n957, n958,
         n959, n960, n961, n962, n963, n964, n965, n966, n967, n968, n969,
         n970, n971, n972, n973, n974, n975, n976, n977, n978, n979, n980,
         n981, n982, n983, n984, n985, n986, n987, n988, n989, n990, n991,
         n992, n993, n994, n995, n996, n997, n998, n999, n1000, n1001, n1002,
         n1003, n1004, n1005, n1006, n1007, n1008, n1009, n1010, n1011, n1012,
         n1013, n1014, n1015, n1016, n1017, n1018, n1019, n1020, n1021, n1022,
         n1023, n1024, n1025, n1026, n1027, n1028, n1029, n1030, n1031, n1032,
         n1033, n1034, n1035, n1036, n1037, n1038, n1039, n1040, n1041, n1042,
         n1043, n1044, n1045, n1046, n1047, n1048, n1049, n1050, n1051, n1052,
         n1053, n1054, n1055, n1056, n1057, n1058, n1059, n1060, n1061, n1062,
         n1063, n1064, n1065, n1066, n1067, n1068, n1069, n1070, n1071, n1072,
         n1073, n1074, n1075, n1076, n1077, n1078, n1079, n1080, n1081, n1082,
         n1083, n1084, n1085, n1086, n1087, n1088, n1089, n1090, n1091, n1092,
         n1093, n1094, n1095, n1096, n1097, n1098, n1099, n1100, n1101, n1102,
         n1103, n1104, n1105, n1106, n1107, n1108, n1109, n1110, n1111, n1112,
         n1113, n1114, n1115, n1116, n1117, n1118, n1119, n1120, n1121, n1122,
         n1123, n1124, n1125, n1126, n1127, n1128, n1129, n1130, n1131, n1132,
         n1133, n1134, n1135, n1136, n1137, n1138, n1139, n1140, n1141, n1142,
         n1143, n1144, n1145, n1146, n1147, n1148, n1149, n1150, n1151, n1152,
         n1153, n1154, n1155, n1156, n1157, n1158, n1159, n1160, n1161, n1162,
         n1163, n1164, n1165, n1166, n1167, n1168, n1169, n1170, n1171, n1172,
         n1173, n1174, n1175, n1176, n1177, n1178, n1179, n1180, n1181, n1182,
         n1183, n1184, n1185, n1186, n1187, n1188, n1189, n1190, n1191, n1192,
         n1193, n1194, n1195, n1196, n1197, n1198, n1199, n1200, n1201, n1202,
         n1203, n1204, n1205, n1206, n1207, n1208, n1209, n1210, n1211, n1212,
         n1213, n1214, n1215, n1216, n1217, n1218, n1219, n1220, n1221, n1222,
         n1223, n1224, n1225, n1226, n1227, n1228, n1229, n1230, n1231, n1232,
         n1233, n1234, n1235, n1236, n1237, n1238, n1239, n1240, n1241, n1242,
         n1243, n1244, n1245, n1246, n1247, n1248, n1249, n1250, n1251, n1252,
         n1253, n1254, n1255, n1256, n1257, n1258, n1259, n1260, n1261, n1262,
         n1263, n1264, n1265, n1266, n1267, n1268, n1269, n1270, n1271, n1272,
         n1273, n1274, n1275, n1276, n1277, n1278, n1279, n1280, n1281, n1282,
         n1283, n1284, n1285, n1286, n1287, n1288, n1289, n1290, n1291, n1292,
         n1293, n1294, n1295, n1296, n1297, n1298, n1299, n1300, n1301, n1302,
         n1303, n1304, n1305, n1306, n1307, n1308, n1309, n1310, n1311, n1312,
         n1313, n1314, n1315, n1316, n1317, n1318, n1319, n1320, n1321, n1322,
         n1323, n1324, n1325, n1326, n1327, n1328, n1329, n1330, n1331, n1332,
         n1333, n1334, n1335, n1336, n1337, n1338, n1339, n1340, n1341, n1342,
         n1343, n1344, n1345, n1346, n1347, n1348, n1349, n1350, n1351, n1352,
         n1353, n1354, n1355, n1356, n1357, n1358, n1359, n1360, n1361, n1362,
         n1363, n1364, n1365, n1366, n1367, n1368, n1369, n1370, n1371, n1372,
         n1373, n1374, n1375, n1376, n1377, n1378, n1379, n1380, n1381, n1382,
         n1383, n1384, n1385, n1386, n1387, n1388, n1389, n1390, n1391, n1392,
         n1393, n1394, n1395, n1396, n1397, n1398, n1399, n1400, n1401, n1402,
         n1403, n1404, n1405, n1406, n1407, n1408, n1409, n1410, n1411, n1412,
         n1413, n1414, n1415, n1416, n1417, n1418, n1419, n1420, n1421, n1422,
         n1423, n1424, n1425, n1426, n1427, n1428, n1429, n1430, n1431, n1432,
         n1433, n1434, n1435, n1436, n1437, n1438, n1439, n1440, n1441, n1442,
         n1443, n1444, n1445, n1446, n1447, n1448, n1449, n1450, n1451, n1452,
         n1453, n1454, n1455, n1456, n1457, n1458, n1459, n1460, n1461, n1462,
         n1463, n1464, n1465, n1466, n1467, n1468, n1469, n1470, n1471, n1472,
         n1473, n1474, n1475, n1476, n1477, n1478, n1479, n1480, n1481, n1482,
         n1483, n1484, n1485, n1486, n1487, n1488, n1489, n1490, n1491, n1492,
         n1493, n1494, n1495, n1496, n1497, n1498, n1499, n1500, n1501, n1502,
         n1503, n1504, n1505, n1506, n1507, n1508, n1509, n1510, n1511, n1512,
         n1513, n1514, n1515, n1516, n1517, n1518, n1519, n1520, n1521, n1522,
         n1523, n1524, n1525, n1526, n1527, n1528, n1529, n1530, n1531, n1532,
         n1533, n1534, n1535, n1536, n1537, n1538, n1539, n1540, n1541, n1542,
         n1543, n1544, n1545, n1546, n1547, n1548, n1549, n1550, n1551, n1552,
         n1553, n1554, n1555, n1556, n1557, n1558, n1559, n1560, n1561, n1562,
         n1563, n1564, n1565, n1566, n1567, n1568, n1569, n1570, n1571, n1572,
         n1573, n1574, n1575, n1576, n1577, n1578, n1579, n1580, n1581, n1582,
         n1583, n1584, n1585, n1586, n1587, n1588, n1589, n1590, n1591, n1592,
         n1593, n1594, n1595, n1596, n1597, n1598, n1599, n1600, n1601, n1602,
         n1603, n1604, n1605, n1606, n1607, n1608, n1609, n1610, n1611, n1612,
         n1613, n1614, n1615, n1616, n1617, n1618, n1619, n1620, n1621, n1622,
         n1623, n1624, n1625, n1626, n1627, n1628, n1629, n1630, n1631, n1632,
         n1633, n1634, n1635, n1636, n1637, n1638, n1639, n1640, n1641, n1642,
         n1643, n1644, n1645, n1646, n1647, n1648, n1649, n1650, n1651, n1652,
         n1653, n1654, n1655, n1656, n1657, n1658, n1659, n1660, n1661, n1662,
         n1663, n1664, n1665, n1666, n1667, n1668, n1669, n1670, n1671, n1672,
         n1673, n1674, n1675, n1676, n1677, n1678, n1679, n1680, n1681, n1682,
         n1683, n1684, n1685, n1686, n1687, n1688, n1689, n1690, n1691, n1692,
         n1693, n1694, n1695, n1696, n1697, n1698, n1699, n1700, n1701, n1702,
         n1703, n1704, n1705, n1706, n1707, n1708, n1709, n1710, n1711, n1712,
         n1713, n1714, n1715, n1716, n1717, n1718, n1719, n1720, n1721, n1722,
         n1723, n1724, n1725, n1726, n1727, n1728, n1729, n1730, n1731, n1732,
         n1733, n1734, n1735, n1736, n1737, n1738, n1739, n1740, n1741, n1742,
         n1743, n1744, n1745, n1746, n1747, n1748, n1749, n1750, n1751, n1752,
         n1753, n1754, n1755, n1756, n1757, n1758, n1759, n1760, n1761, n1762,
         n1763, n1764, n1765, n1766, n1767, n1768, n1769, n1770, n1771, n1772,
         n1773, n1774, n1775, n1776, n1777, n1778, n1779, n1780, n1781, n1782,
         n1783, n1784, n1785, n1786, n1787, n1788, n1789, n1790, n1791, n1792,
         n1793, n1794, n1795, n1796, n1797, n1798, n1799, n1800, n1801, n1802,
         n1803, n1804, n1805, n1806, n1807, n1808, n1809, n1810, n1811, n1812,
         n1813, n1814, n1815, n1816, n1817, n1818, n1819, n1820, n1821, n1822,
         n1823, n1824, n1825, n1826, n1827, n1828, n1829, n1830, n1831, n1832,
         n1833, n1834, n1835, n1836, n1837, n1838, n1839, n1840, n1841, n1842,
         n1843, n1844, n1845, n1846, n1847, n1848, n1849, n1850, n1851, n1852,
         n1853, n1854, n1855, n1856, n1857, n1858, n1859, n1860, n1861, n1862,
         n1863, n1864, n1865, n1866, n1867, n1868, n1869, n1870, n1871, n1872,
         n1873, n1874, n1875, n1876, n1877, n1878, n1879, n1880, n1881, n1882,
         n1883, n1884, n1885, n1886, n1887, n1888, n1889, n1890, n1891, n1892,
         n1893, n1894, n1895, n1896, n1897, n1898, n1899, n1900, n1901, n1902,
         n1903, n1904, n1905, n1906, n1907, n1908, n1909, n1910, n1911, n1912,
         n1913, n1914, n1915, n1916, n1917, n1918, n1919, n1920, n1921, n1922,
         n1923, n1924, n1925, n1926, n1927, n1928, n1929, n1930, n1931, n1932,
         n1933, n1934, n1935, n1936, n1937, n1938, n1939, n1940, n1941, n1942,
         n1943, n1944, n1945, n1946, n1947, n1948, n1949, n1950, net4586,
         net4587;
  wire   [63:0] SHIFT_OUT;
  wire   [7:0] SPI_IN;
  wire   [7:0] SPI_OUT;
  wire   [2:0] rx_state;
  wire   [3:0] counter;
  wire   [1:0] tx_state;
  wire   [3:0] counter3;
  wire   [7:0] \shift_buf_inst/sync ;
  wire   [63:0] \pkt_reg_inst/pkt_reg ;
  wire   [7:0] \tx_buf_inst/buffer ;
  tri   MISO;

  SPI_slave SPI_slave_inst ( .rst(n993), .MOSI(MOSI), .SCK(SCK), .SS(n856), 
        .MODE({net4586, net4587}), .DATA(SPI_IN), .OUT(SPI_OUT), .MISO(MISO)
         );
  UDB116SVT24_FDPCBQ_1 \fsm_sync_inst/sh_en_prev_reg  ( .D(sh_en), .RS(n994), 
        .CK(clk), .Q(\fsm_sync_inst/sh_en_prev ) );
  UDB116SVT24_FDNQ_V2_1 \fsm_sync_inst/state_neg_reg  ( .D(\fsm_sync_inst/N12 ), .CK(clk), .Q(\fsm_sync_inst/state_neg ) );
  UDB116SVT24_FDPQB_1P5 \sh_sync_inst/interval_sum_reg[31]  ( .D(
        \sh_sync_inst/n272 ), .CK(clk), .QN(\sh_sync_inst/n146 ) );
  UDB116SVT24_FDPQB_1P5 \sh_sync_inst/interval_sum_reg[27]  ( .D(
        \sh_sync_inst/n276 ), .CK(clk), .QN(\sh_sync_inst/n150 ) );
  UDB116SVT24_FDPQB_1P5 \sh_sync_inst/avg_interval_reg[4]  ( .D(
        \sh_sync_inst/n311 ), .CK(clk), .QN(\sh_sync_inst/n181 ) );
  UDB116SVT24_FDPQB_1P5 \sh_sync_inst/counter_reg[9]  ( .D(\sh_sync_inst/n262 ), .CK(clk), .QN(\sh_sync_inst/intadd_0/B[7] ) );
  UDB116SVT24_FDPQB_1P5 \sh_sync_inst/timeout_counter_reg[5]  ( .D(
        \sh_sync_inst/n349 ), .CK(clk), .QN(\sh_sync_inst/n219 ) );
  UDB116SVT24_FDPQB_1P5 \sh_sync_inst/pulse_gen_count_reg[0]  ( .D(
        \sh_sync_inst/n330 ), .CK(clk), .QN(\sh_sync_inst/n235 ) );
  UDB116SVT24_FDPQB_1P5 \sh_sync_inst/counter_reg[6]  ( .D(\sh_sync_inst/n265 ), .CK(clk), .QN(\sh_sync_inst/intadd_0/B[4] ) );
  UDB116SVT24_FDPQB_1P5 \sh_sync_inst/interval_sum_reg[7]  ( .D(
        \sh_sync_inst/n296 ), .CK(clk), .QN(\sh_sync_inst/intadd_0/A[5] ) );
  UDB116SVT24_FDPQB_1P5 \sh_sync_inst/counter_reg[12]  ( .D(
        \sh_sync_inst/n259 ), .CK(clk), .QN(\sh_sync_inst/intadd_0/B[10] ) );
  UDB116SVT24_FDPQB_1P5 \sh_sync_inst/pulse_count_reg[1]  ( .D(
        \sh_sync_inst/n304 ), .CK(clk), .QN(\sh_sync_inst/n208 ) );
  UDB116SVT24_FDPQB_1P5 \sh_sync_inst/state_reg[1]  ( .D(\sh_sync_inst/N30 ), 
        .CK(clk), .QN(\sh_sync_inst/n228 ) );
  UDB116SVT24_FDPQB_1P5 \sh_sync_inst/counter_reg[13]  ( .D(
        \sh_sync_inst/n258 ), .CK(clk), .QN(\sh_sync_inst/intadd_0/B[11] ) );
  UDB116SVT24_FDPQB_1P5 \sh_sync_inst/counter_reg[1]  ( .D(\sh_sync_inst/n270 ), .CK(clk), .QN(\sh_sync_inst/n201 ) );
  UDB116SVT24_FDPQB_1P5 \sh_sync_inst/interval_sum_reg[9]  ( .D(
        \sh_sync_inst/n294 ), .CK(clk), .QN(\sh_sync_inst/intadd_0/A[7] ) );
  UDB116SVT24_FDPQB_1P5 \sh_sync_inst/interval_sum_reg[2]  ( .D(
        \sh_sync_inst/n301 ), .CK(clk), .QN(\sh_sync_inst/intadd_0/A[0] ) );
  UDB116SVT24_FDPQB_1P5 \sh_sync_inst/interval_sum_reg[20]  ( .D(
        \sh_sync_inst/n283 ), .CK(clk), .QN(\sh_sync_inst/n157 ) );
  UDB116SVT24_FDPQB_1P5 \sh_sync_inst/interval_sum_reg[6]  ( .D(
        \sh_sync_inst/n297 ), .CK(clk), .QN(\sh_sync_inst/intadd_0/A[4] ) );
  UDB116SVT24_FDPQB_1P5 \sh_sync_inst/interval_sum_reg[12]  ( .D(
        \sh_sync_inst/n291 ), .CK(clk), .QN(\sh_sync_inst/intadd_0/A[10] ) );
  UDB116SVT24_FDPQB_1P5 \sh_sync_inst/interval_sum_reg[15]  ( .D(
        \sh_sync_inst/n288 ), .CK(clk), .QN(\sh_sync_inst/intadd_0/A[13] ) );
  UDB116SVT24_FDPQB_1P5 \sh_sync_inst/interval_sum_reg[16]  ( .D(
        \sh_sync_inst/n287 ), .CK(clk), .QN(\sh_sync_inst/n161 ) );
  UDB116SVT24_FDPQB_1P5 \sh_sync_inst/interval_sum_reg[18]  ( .D(
        \sh_sync_inst/n285 ), .CK(clk), .QN(\sh_sync_inst/n159 ) );
  UDB116SVT24_FDPQB_1P5 \sh_sync_inst/interval_sum_reg[24]  ( .D(
        \sh_sync_inst/n279 ), .CK(clk), .QN(\sh_sync_inst/n153 ) );
  UDB116SVT24_FDPQB_1P5 \sh_sync_inst/interval_sum_reg[22]  ( .D(
        \sh_sync_inst/n281 ), .CK(clk), .QN(\sh_sync_inst/n155 ) );
  UDB116SVT24_FDPQB_1P5 \sh_sync_inst/interval_sum_reg[26]  ( .D(
        \sh_sync_inst/n277 ), .CK(clk), .QN(\sh_sync_inst/n151 ) );
  UDB116SVT24_FDPQB_1P5 \sh_sync_inst/pulse_count_reg[2]  ( .D(
        \sh_sync_inst/n305 ), .CK(clk), .QN(\sh_sync_inst/n207 ) );
  UDB116SVT24_FDPQB_1P5 \sh_sync_inst/interval_sum_reg[10]  ( .D(
        \sh_sync_inst/n293 ), .CK(clk), .QN(\sh_sync_inst/intadd_0/A[8] ) );
  UDB116SVT24_FDPQB_1P5 \sh_sync_inst/counter_reg[15]  ( .D(
        \sh_sync_inst/n255 ), .CK(clk), .QN(\sh_sync_inst/intadd_0/B[13] ) );
  UDB116SVT24_FDPQB_1P5 \sh_sync_inst/interval_sum_reg[4]  ( .D(
        \sh_sync_inst/n299 ), .CK(clk), .QN(\sh_sync_inst/intadd_0/A[2] ) );
  UDB116SVT24_FDPQB_1P5 \sh_sync_inst/interval_sum_reg[3]  ( .D(
        \sh_sync_inst/n300 ), .CK(clk), .QN(\sh_sync_inst/intadd_0/A[1] ) );
  UDB116SVT24_FDPQB_1P5 \sh_sync_inst/counter_reg[2]  ( .D(\sh_sync_inst/n269 ), .CK(clk), .QN(\sh_sync_inst/intadd_0/B[0] ) );
  UDB116SVT24_FDPQB_1P5 \sh_sync_inst/counter_reg[10]  ( .D(
        \sh_sync_inst/n261 ), .CK(clk), .QN(\sh_sync_inst/intadd_0/B[8] ) );
  UDB116SVT24_FDPQB_1P5 \sh_sync_inst/interval_sum_reg[13]  ( .D(
        \sh_sync_inst/n290 ), .CK(clk), .QN(\sh_sync_inst/intadd_0/A[11] ) );
  UDB116SVT24_FDPQB_1P5 \sh_sync_inst/counter_reg[0]  ( .D(\sh_sync_inst/n271 ), .CK(clk), .QN(\sh_sync_inst/n202 ) );
  UDB116SVT24_FDPQB_2 \sh_sync_inst/interval_sum_reg[29]  ( .D(
        \sh_sync_inst/n274 ), .CK(clk), .QN(\sh_sync_inst/n148 ) );
  UDB116SVT24_FDPQB_2 \sh_sync_inst/interval_sum_reg[23]  ( .D(
        \sh_sync_inst/n280 ), .CK(clk), .QN(\sh_sync_inst/n154 ) );
  UDB116SVT24_FDPQB_2 \sh_sync_inst/interval_sum_reg[21]  ( .D(
        \sh_sync_inst/n282 ), .CK(clk), .QN(\sh_sync_inst/n156 ) );
  UDB116SVT24_FDPQB_2 \sh_sync_inst/interval_sum_reg[19]  ( .D(
        \sh_sync_inst/n284 ), .CK(clk), .QN(\sh_sync_inst/n158 ) );
  UDB116SVT24_FDPQB_2 \sh_sync_inst/interval_sum_reg[14]  ( .D(
        \sh_sync_inst/n289 ), .CK(clk), .QN(\sh_sync_inst/intadd_0/A[12] ) );
  UDB116SVT24_FDPQB_2 \sh_sync_inst/interval_sum_reg[11]  ( .D(
        \sh_sync_inst/n292 ), .CK(clk), .QN(\sh_sync_inst/intadd_0/A[9] ) );
  UDB116SVT24_FDPQB_2 \sh_sync_inst/interval_sum_reg[8]  ( .D(
        \sh_sync_inst/n295 ), .CK(clk), .QN(\sh_sync_inst/intadd_0/A[6] ) );
  UDB116SVT24_FDPQB_2 \sh_sync_inst/interval_sum_reg[5]  ( .D(
        \sh_sync_inst/n298 ), .CK(clk), .QN(\sh_sync_inst/intadd_0/A[3] ) );
  UDB116SVT24_FDPQB_2 \sh_sync_inst/interval_sum_reg[0]  ( .D(
        \sh_sync_inst/n303 ), .CK(clk), .QN(\sh_sync_inst/n177 ) );
  UDB116SVT24_FDPQB_2 \sh_sync_inst/avg_interval_reg[1]  ( .D(
        \sh_sync_inst/n308 ), .CK(clk), .QN(\sh_sync_inst/n178 ) );
  UDB116SVT24_FDPQB_2 \sh_sync_inst/avg_interval_reg[2]  ( .D(
        \sh_sync_inst/n309 ), .CK(clk), .QN(\sh_sync_inst/n179 ) );
  UDB116SVT24_FDPQB_2 \sh_sync_inst/avg_interval_reg[3]  ( .D(
        \sh_sync_inst/n310 ), .CK(clk), .QN(\sh_sync_inst/n180 ) );
  UDB116SVT24_FDPQB_2 \sh_sync_inst/avg_interval_reg[5]  ( .D(
        \sh_sync_inst/n312 ), .CK(clk), .QN(\sh_sync_inst/n182 ) );
  UDB116SVT24_FDPQB_2 \sh_sync_inst/avg_interval_reg[6]  ( .D(
        \sh_sync_inst/n313 ), .CK(clk), .QN(\sh_sync_inst/n183 ) );
  UDB116SVT24_FDPQB_2 \sh_sync_inst/avg_interval_reg[7]  ( .D(
        \sh_sync_inst/n314 ), .CK(clk), .QN(\sh_sync_inst/n184 ) );
  UDB116SVT24_FDPQB_2 \sh_sync_inst/avg_interval_reg[8]  ( .D(
        \sh_sync_inst/n315 ), .CK(clk), .QN(\sh_sync_inst/n185 ) );
  UDB116SVT24_FDPQB_2 \sh_sync_inst/avg_interval_reg[9]  ( .D(
        \sh_sync_inst/n316 ), .CK(clk), .QN(\sh_sync_inst/n186 ) );
  UDB116SVT24_FDPQB_2 \sh_sync_inst/avg_interval_reg[10]  ( .D(
        \sh_sync_inst/n317 ), .CK(clk), .QN(\sh_sync_inst/n187 ) );
  UDB116SVT24_FDPQB_2 \sh_sync_inst/avg_interval_reg[11]  ( .D(
        \sh_sync_inst/n318 ), .CK(clk), .QN(\sh_sync_inst/n188 ) );
  UDB116SVT24_FDPQB_2 \sh_sync_inst/avg_interval_reg[12]  ( .D(
        \sh_sync_inst/n319 ), .CK(clk), .QN(\sh_sync_inst/n189 ) );
  UDB116SVT24_FDPQB_2 \sh_sync_inst/avg_interval_reg[13]  ( .D(
        \sh_sync_inst/n320 ), .CK(clk), .QN(\sh_sync_inst/n190 ) );
  UDB116SVT24_FDPQB_2 \sh_sync_inst/avg_interval_reg[14]  ( .D(
        \sh_sync_inst/n321 ), .CK(clk), .QN(\sh_sync_inst/n191 ) );
  UDB116SVT24_FDPQB_2 \sh_sync_inst/avg_interval_reg[0]  ( .D(
        \sh_sync_inst/n323 ), .CK(clk), .QN(\sh_sync_inst/n193 ) );
  UDB116SVT24_FDPQB_2 \sh_sync_inst/sh_en_reg  ( .D(\sh_sync_inst/n338 ), .CK(
        clk), .QN(\sh_sync_inst/n194 ) );
  UDB116SVT24_FDPQB_2 \sh_sync_inst/first_pulse_flag_reg  ( .D(
        \sh_sync_inst/n355 ), .CK(clk), .QN(\sh_sync_inst/n195 ) );
  UDB116SVT24_FDPQB_2 \sh_sync_inst/pulse_count_reg[0]  ( .D(
        \sh_sync_inst/n307 ), .CK(clk), .QN(\sh_sync_inst/n203 ) );
  UDB116SVT24_FDPQB_2 \sh_sync_inst/fsm_rst_reg  ( .D(\sh_sync_inst/n356 ), 
        .CK(clk), .QN(\sh_sync_inst/n204 ) );
  UDB116SVT24_FDPQB_2 \sh_sync_inst/pulse_count_reg[3]  ( .D(
        \sh_sync_inst/n306 ), .CK(clk), .QN(\sh_sync_inst/n206 ) );
  UDB116SVT24_FDPQB_2 \sh_sync_inst/timeout_counter_reg[13]  ( .D(
        \sh_sync_inst/n341 ), .CK(clk), .QN(\sh_sync_inst/n211 ) );
  UDB116SVT24_FDPQB_2 \sh_sync_inst/timeout_counter_reg[12]  ( .D(
        \sh_sync_inst/n342 ), .CK(clk), .QN(\sh_sync_inst/n212 ) );
  UDB116SVT24_FDPQB_2 \sh_sync_inst/timeout_counter_reg[11]  ( .D(
        \sh_sync_inst/n343 ), .CK(clk), .QN(\sh_sync_inst/n213 ) );
  UDB116SVT24_FDPQB_2 \sh_sync_inst/timeout_counter_reg[10]  ( .D(
        \sh_sync_inst/n344 ), .CK(clk), .QN(\sh_sync_inst/n214 ) );
  UDB116SVT24_FDPQB_2 \sh_sync_inst/timeout_counter_reg[9]  ( .D(
        \sh_sync_inst/n345 ), .CK(clk), .QN(\sh_sync_inst/n215 ) );
  UDB116SVT24_FDPQB_2 \sh_sync_inst/timeout_counter_reg[8]  ( .D(
        \sh_sync_inst/n346 ), .CK(clk), .QN(\sh_sync_inst/n216 ) );
  UDB116SVT24_FDPQB_2 \sh_sync_inst/timeout_counter_reg[7]  ( .D(
        \sh_sync_inst/n347 ), .CK(clk), .QN(\sh_sync_inst/n217 ) );
  UDB116SVT24_FDPQB_2 \sh_sync_inst/timeout_counter_reg[6]  ( .D(
        \sh_sync_inst/n348 ), .CK(clk), .QN(\sh_sync_inst/n218 ) );
  UDB116SVT24_FDPQB_2 \sh_sync_inst/timeout_counter_reg[3]  ( .D(
        \sh_sync_inst/n351 ), .CK(clk), .QN(\sh_sync_inst/n221 ) );
  UDB116SVT24_FDPQB_2 \sh_sync_inst/timeout_counter_reg[2]  ( .D(
        \sh_sync_inst/n352 ), .CK(clk), .QN(\sh_sync_inst/n222 ) );
  UDB116SVT24_FDPQB_2 \sh_sync_inst/timeout_counter_reg[1]  ( .D(
        \sh_sync_inst/n353 ), .CK(clk), .QN(\sh_sync_inst/n223 ) );
  UDB116SVT24_FDPQB_2 \sh_sync_inst/timeout_counter_reg[0]  ( .D(
        \sh_sync_inst/n354 ), .CK(clk), .QN(\sh_sync_inst/n224 ) );
  UDB116SVT24_FDPQB_2 \sh_sync_inst/rfin_prev_reg  ( .D(\sh_sync_inst/N529 ), 
        .CK(clk), .QN(\sh_sync_inst/n225 ) );
  UDB116SVT24_FDPQB_2 \sh_sync_inst/rfin_sync2_reg  ( .D(\sh_sync_inst/N528 ), 
        .CK(clk), .QN(\sh_sync_inst/n226 ) );
  UDB116SVT24_FDPQB_2 \sh_sync_inst/rfin_sync1_reg  ( .D(\sh_sync_inst/N527 ), 
        .CK(clk), .QN(\sh_sync_inst/n227 ) );
  UDB116SVT24_FDPQB_2 \sh_sync_inst/pulse_gen_count_reg[6]  ( .D(
        \sh_sync_inst/n324 ), .CK(clk), .QN(\sh_sync_inst/n229 ) );
  UDB116SVT24_FDPQB_2 \sh_sync_inst/pulse_gen_count_reg[5]  ( .D(
        \sh_sync_inst/n325 ), .CK(clk), .QN(\sh_sync_inst/n230 ) );
  UDB116SVT24_FDPQB_2 \sh_sync_inst/pulse_gen_count_reg[4]  ( .D(
        \sh_sync_inst/n326 ), .CK(clk), .QN(\sh_sync_inst/n231 ) );
  UDB116SVT24_FDPQB_2 \sh_sync_inst/pulse_gen_count_reg[3]  ( .D(
        \sh_sync_inst/n327 ), .CK(clk), .QN(\sh_sync_inst/n232 ) );
  UDB116SVT24_FDPQB_2 \sh_sync_inst/pulse_gen_count_reg[2]  ( .D(
        \sh_sync_inst/n328 ), .CK(clk), .QN(\sh_sync_inst/n233 ) );
  UDB116SVT24_FDPQB_2 \sh_sync_inst/pulse_gen_count_reg[1]  ( .D(
        \sh_sync_inst/n329 ), .CK(clk), .QN(\sh_sync_inst/n234 ) );
  UDB116SVT24_FDPQB_2 \sh_sync_inst/counter_reg[3]  ( .D(\sh_sync_inst/n268 ), 
        .CK(clk), .QN(\sh_sync_inst/intadd_0/B[1] ) );
  UDB116SVT24_FDPQB_2 \sh_sync_inst/pulse_pack_count_reg[2]  ( .D(
        \sh_sync_inst/n332 ), .CK(clk), .QN(\sh_sync_inst/n246 ) );
  UDB116SVT24_FDPQB_2 \sh_sync_inst/pulse_pack_count_reg[3]  ( .D(
        \sh_sync_inst/n333 ), .CK(clk), .QN(\sh_sync_inst/n247 ) );
  UDB116SVT24_FDPQB_2 \sh_sync_inst/pulse_pack_count_reg[4]  ( .D(
        \sh_sync_inst/n334 ), .CK(clk), .QN(\sh_sync_inst/n248 ) );
  UDB116SVT24_FDPQB_2 \sh_sync_inst/pulse_pack_count_reg[5]  ( .D(
        \sh_sync_inst/n335 ), .CK(clk), .QN(\sh_sync_inst/n249 ) );
  UDB116SVT24_FDPQB_2 \sh_sync_inst/pulse_pack_count_reg[6]  ( .D(
        \sh_sync_inst/n336 ), .CK(clk), .QN(\sh_sync_inst/n250 ) );
  UDB116SVT24_FDPQB_2 \sh_sync_inst/pulse_pack_count_reg[0]  ( .D(
        \sh_sync_inst/n337 ), .CK(clk), .QN(\sh_sync_inst/n251 ) );
  UDB116SVT24_FDPQB_2 \sh_sync_inst/tx_rdy_p_reg  ( .D(\sh_sync_inst/N535 ), 
        .CK(clk), .QN(\sh_sync_inst/n253 ) );
  UDB116SVT24_FDPQB_2 \sh_sync_inst/tx_rdy_prev_reg  ( .D(\sh_sync_inst/N534 ), 
        .CK(clk), .QN(\sh_sync_inst/n254 ) );
  UDB116SVT24_FDPQB_1P5 \shift_buf_inst/shift_reg_reg[24]  ( .D(
        \shift_buf_inst/n138 ), .CK(clk), .QN(SHIFT_OUT[24]) );
  UDB116SVT24_FDPQ_V2_3 \shift_buf_inst/shift_reg_reg[60]  ( .D(
        \shift_buf_inst/n73 ), .CK(clk), .Q(SHIFT_OUT[60]) );
  UDB116SVT24_FDPQ_V2_3 \shift_buf_inst/shift_reg_reg[45]  ( .D(
        \shift_buf_inst/n88 ), .CK(clk), .Q(SHIFT_OUT[45]) );
  UDB116SVT24_FDPQ_V2_3 \shift_buf_inst/shift_reg_reg[30]  ( .D(
        \shift_buf_inst/n103 ), .CK(clk), .Q(SHIFT_OUT[30]) );
  UDB116SVT24_FDPQ_V2_3 \shift_buf_inst/shift_reg_reg[14]  ( .D(
        \shift_buf_inst/n119 ), .CK(clk), .Q(SHIFT_OUT[14]) );
  UDB116SVT24_FDPQB_2 \shift_buf_inst/sync_reg[0]  ( .D(\shift_buf_inst/n137 ), 
        .CK(clk), .QN(\shift_buf_inst/sync [0]) );
  UDB116SVT24_FDPQ_V2_3 \shift_buf_inst/sync_reg[1]  ( .D(\shift_buf_inst/N7 ), 
        .CK(clk), .Q(\shift_buf_inst/sync [1]) );
  UDB116SVT24_FDPQ_V2_3 \shift_buf_inst/sync_reg[2]  ( .D(\shift_buf_inst/N8 ), 
        .CK(clk), .Q(\shift_buf_inst/sync [2]) );
  UDB116SVT24_FDPQ_V2_3 \shift_buf_inst/sync_reg[3]  ( .D(\shift_buf_inst/N9 ), 
        .CK(clk), .Q(\shift_buf_inst/sync [3]) );
  UDB116SVT24_FDPQ_V2_3 \shift_buf_inst/sync_reg[4]  ( .D(\shift_buf_inst/N10 ), .CK(clk), .Q(\shift_buf_inst/sync [4]) );
  UDB116SVT24_FDPQ_V2_3 \shift_buf_inst/sync_reg[5]  ( .D(\shift_buf_inst/N11 ), .CK(clk), .Q(\shift_buf_inst/sync [5]) );
  UDB116SVT24_FDPQ_V2_3 \shift_buf_inst/sync_reg[6]  ( .D(\shift_buf_inst/N12 ), .CK(clk), .Q(\shift_buf_inst/sync [6]) );
  UDB116SVT24_FDPQ_V2_3 \shift_buf_inst/sync_reg[7]  ( .D(\shift_buf_inst/N13 ), .CK(clk), .Q(\shift_buf_inst/sync [7]) );
  UDB116SVT24_FDPQ_V2_3 \shift_buf_inst/shift_reg_reg[63]  ( .D(
        \shift_buf_inst/n70 ), .CK(clk), .Q(SHIFT_OUT[63]) );
  UDB116SVT24_FDPQ_V2_3 \shift_buf_inst/shift_reg_reg[62]  ( .D(
        \shift_buf_inst/n71 ), .CK(clk), .Q(SHIFT_OUT[62]) );
  UDB116SVT24_FDPQ_V2_3 \shift_buf_inst/shift_reg_reg[61]  ( .D(
        \shift_buf_inst/n72 ), .CK(clk), .Q(SHIFT_OUT[61]) );
  UDB116SVT24_FDPQ_V2_3 \shift_buf_inst/shift_reg_reg[59]  ( .D(
        \shift_buf_inst/n74 ), .CK(clk), .Q(SHIFT_OUT[59]) );
  UDB116SVT24_FDPQ_V2_3 \shift_buf_inst/shift_reg_reg[58]  ( .D(
        \shift_buf_inst/n75 ), .CK(clk), .Q(SHIFT_OUT[58]) );
  UDB116SVT24_FDPQ_V2_3 \shift_buf_inst/shift_reg_reg[57]  ( .D(
        \shift_buf_inst/n76 ), .CK(clk), .Q(SHIFT_OUT[57]) );
  UDB116SVT24_FDPQ_V2_3 \shift_buf_inst/shift_reg_reg[56]  ( .D(
        \shift_buf_inst/n77 ), .CK(clk), .Q(SHIFT_OUT[56]) );
  UDB116SVT24_FDPQ_V2_3 \shift_buf_inst/shift_reg_reg[54]  ( .D(
        \shift_buf_inst/n79 ), .CK(clk), .Q(SHIFT_OUT[54]) );
  UDB116SVT24_FDPQ_V2_3 \shift_buf_inst/shift_reg_reg[53]  ( .D(
        \shift_buf_inst/n80 ), .CK(clk), .Q(SHIFT_OUT[53]) );
  UDB116SVT24_FDPQ_V2_3 \shift_buf_inst/shift_reg_reg[52]  ( .D(
        \shift_buf_inst/n81 ), .CK(clk), .Q(SHIFT_OUT[52]) );
  UDB116SVT24_FDPQ_V2_3 \shift_buf_inst/shift_reg_reg[51]  ( .D(
        \shift_buf_inst/n82 ), .CK(clk), .Q(SHIFT_OUT[51]) );
  UDB116SVT24_FDPQ_V2_3 \shift_buf_inst/shift_reg_reg[50]  ( .D(
        \shift_buf_inst/n83 ), .CK(clk), .Q(SHIFT_OUT[50]) );
  UDB116SVT24_FDPQ_V2_3 \shift_buf_inst/shift_reg_reg[49]  ( .D(
        \shift_buf_inst/n84 ), .CK(clk), .Q(SHIFT_OUT[49]) );
  UDB116SVT24_FDPQ_V2_3 \shift_buf_inst/shift_reg_reg[48]  ( .D(
        \shift_buf_inst/n85 ), .CK(clk), .Q(SHIFT_OUT[48]) );
  UDB116SVT24_FDPQ_V2_3 \shift_buf_inst/shift_reg_reg[47]  ( .D(
        \shift_buf_inst/n86 ), .CK(clk), .Q(SHIFT_OUT[47]) );
  UDB116SVT24_FDPQ_V2_3 \shift_buf_inst/shift_reg_reg[46]  ( .D(
        \shift_buf_inst/n87 ), .CK(clk), .Q(SHIFT_OUT[46]) );
  UDB116SVT24_FDPQ_V2_3 \shift_buf_inst/shift_reg_reg[44]  ( .D(
        \shift_buf_inst/n89 ), .CK(clk), .Q(SHIFT_OUT[44]) );
  UDB116SVT24_FDPQ_V2_3 \shift_buf_inst/shift_reg_reg[43]  ( .D(
        \shift_buf_inst/n90 ), .CK(clk), .Q(SHIFT_OUT[43]) );
  UDB116SVT24_FDPQ_V2_3 \shift_buf_inst/shift_reg_reg[42]  ( .D(
        \shift_buf_inst/n91 ), .CK(clk), .Q(SHIFT_OUT[42]) );
  UDB116SVT24_FDPQ_V2_3 \shift_buf_inst/shift_reg_reg[41]  ( .D(
        \shift_buf_inst/n92 ), .CK(clk), .Q(SHIFT_OUT[41]) );
  UDB116SVT24_FDPQ_V2_3 \shift_buf_inst/shift_reg_reg[40]  ( .D(
        \shift_buf_inst/n93 ), .CK(clk), .Q(SHIFT_OUT[40]) );
  UDB116SVT24_FDPQ_V2_3 \shift_buf_inst/shift_reg_reg[38]  ( .D(
        \shift_buf_inst/n95 ), .CK(clk), .Q(SHIFT_OUT[38]) );
  UDB116SVT24_FDPQ_V2_3 \shift_buf_inst/shift_reg_reg[37]  ( .D(
        \shift_buf_inst/n96 ), .CK(clk), .Q(SHIFT_OUT[37]) );
  UDB116SVT24_FDPQ_V2_3 \shift_buf_inst/shift_reg_reg[36]  ( .D(
        \shift_buf_inst/n97 ), .CK(clk), .Q(SHIFT_OUT[36]) );
  UDB116SVT24_FDPQ_V2_3 \shift_buf_inst/shift_reg_reg[35]  ( .D(
        \shift_buf_inst/n98 ), .CK(clk), .Q(SHIFT_OUT[35]) );
  UDB116SVT24_FDPQ_V2_3 \shift_buf_inst/shift_reg_reg[34]  ( .D(
        \shift_buf_inst/n99 ), .CK(clk), .Q(SHIFT_OUT[34]) );
  UDB116SVT24_FDPQ_V2_3 \shift_buf_inst/shift_reg_reg[33]  ( .D(
        \shift_buf_inst/n100 ), .CK(clk), .Q(SHIFT_OUT[33]) );
  UDB116SVT24_FDPQ_V2_3 \shift_buf_inst/shift_reg_reg[32]  ( .D(
        \shift_buf_inst/n101 ), .CK(clk), .Q(SHIFT_OUT[32]) );
  UDB116SVT24_FDPQ_V2_3 \shift_buf_inst/shift_reg_reg[31]  ( .D(
        \shift_buf_inst/n102 ), .CK(clk), .Q(SHIFT_OUT[31]) );
  UDB116SVT24_FDPQ_V2_3 \shift_buf_inst/shift_reg_reg[29]  ( .D(
        \shift_buf_inst/n104 ), .CK(clk), .Q(SHIFT_OUT[29]) );
  UDB116SVT24_FDPQ_V2_3 \shift_buf_inst/shift_reg_reg[28]  ( .D(
        \shift_buf_inst/n105 ), .CK(clk), .Q(SHIFT_OUT[28]) );
  UDB116SVT24_FDPQ_V2_3 \shift_buf_inst/shift_reg_reg[27]  ( .D(
        \shift_buf_inst/n106 ), .CK(clk), .Q(SHIFT_OUT[27]) );
  UDB116SVT24_FDPQ_V2_3 \shift_buf_inst/shift_reg_reg[26]  ( .D(
        \shift_buf_inst/n107 ), .CK(clk), .Q(SHIFT_OUT[26]) );
  UDB116SVT24_FDPQ_V2_3 \shift_buf_inst/shift_reg_reg[25]  ( .D(
        \shift_buf_inst/n108 ), .CK(clk), .Q(SHIFT_OUT[25]) );
  UDB116SVT24_FDPQ_V2_3 \shift_buf_inst/shift_reg_reg[23]  ( .D(
        \shift_buf_inst/n110 ), .CK(clk), .Q(SHIFT_OUT[23]) );
  UDB116SVT24_FDPQ_V2_3 \shift_buf_inst/shift_reg_reg[21]  ( .D(
        \shift_buf_inst/n112 ), .CK(clk), .Q(SHIFT_OUT[21]) );
  UDB116SVT24_FDPQ_V2_3 \shift_buf_inst/shift_reg_reg[20]  ( .D(
        \shift_buf_inst/n113 ), .CK(clk), .Q(SHIFT_OUT[20]) );
  UDB116SVT24_FDPQ_V2_3 \shift_buf_inst/shift_reg_reg[19]  ( .D(
        \shift_buf_inst/n114 ), .CK(clk), .Q(SHIFT_OUT[19]) );
  UDB116SVT24_FDPQ_V2_3 \shift_buf_inst/shift_reg_reg[18]  ( .D(
        \shift_buf_inst/n115 ), .CK(clk), .Q(SHIFT_OUT[18]) );
  UDB116SVT24_FDPQ_V2_3 \shift_buf_inst/shift_reg_reg[17]  ( .D(
        \shift_buf_inst/n116 ), .CK(clk), .Q(SHIFT_OUT[17]) );
  UDB116SVT24_FDPQ_V2_3 \shift_buf_inst/shift_reg_reg[16]  ( .D(
        \shift_buf_inst/n117 ), .CK(clk), .Q(SHIFT_OUT[16]) );
  UDB116SVT24_FDPQ_V2_3 \shift_buf_inst/shift_reg_reg[15]  ( .D(
        \shift_buf_inst/n118 ), .CK(clk), .Q(SHIFT_OUT[15]) );
  UDB116SVT24_FDPQ_V2_3 \shift_buf_inst/shift_reg_reg[13]  ( .D(
        \shift_buf_inst/n120 ), .CK(clk), .Q(SHIFT_OUT[13]) );
  UDB116SVT24_FDPQ_V2_3 \shift_buf_inst/shift_reg_reg[12]  ( .D(
        \shift_buf_inst/n121 ), .CK(clk), .Q(SHIFT_OUT[12]) );
  UDB116SVT24_FDPQ_V2_3 \shift_buf_inst/shift_reg_reg[11]  ( .D(
        \shift_buf_inst/n122 ), .CK(clk), .Q(SHIFT_OUT[11]) );
  UDB116SVT24_FDPQ_V2_3 \shift_buf_inst/shift_reg_reg[10]  ( .D(
        \shift_buf_inst/n123 ), .CK(clk), .Q(SHIFT_OUT[10]) );
  UDB116SVT24_FDPQ_V2_3 \shift_buf_inst/shift_reg_reg[9]  ( .D(
        \shift_buf_inst/n124 ), .CK(clk), .Q(SHIFT_OUT[9]) );
  UDB116SVT24_FDPQ_V2_3 \shift_buf_inst/shift_reg_reg[8]  ( .D(
        \shift_buf_inst/n125 ), .CK(clk), .Q(SHIFT_OUT[8]) );
  UDB116SVT24_FDPQ_V2_3 \shift_buf_inst/shift_reg_reg[7]  ( .D(
        \shift_buf_inst/n126 ), .CK(clk), .Q(SHIFT_OUT[7]) );
  UDB116SVT24_FDPQ_V2_3 \shift_buf_inst/shift_reg_reg[5]  ( .D(
        \shift_buf_inst/n128 ), .CK(clk), .Q(SHIFT_OUT[5]) );
  UDB116SVT24_FDPQ_V2_3 \shift_buf_inst/shift_reg_reg[4]  ( .D(
        \shift_buf_inst/n129 ), .CK(clk), .Q(SHIFT_OUT[4]) );
  UDB116SVT24_FDPQ_V2_3 \shift_buf_inst/shift_reg_reg[3]  ( .D(
        \shift_buf_inst/n130 ), .CK(clk), .Q(SHIFT_OUT[3]) );
  UDB116SVT24_FDPQ_V2_3 \shift_buf_inst/shift_reg_reg[2]  ( .D(
        \shift_buf_inst/n131 ), .CK(clk), .Q(SHIFT_OUT[2]) );
  UDB116SVT24_FDPQ_V2_3 \shift_buf_inst/shift_reg_reg[1]  ( .D(
        \shift_buf_inst/n132 ), .CK(clk), .Q(SHIFT_OUT[1]) );
  UDB116SVT24_FDPQ_V2_3 \shift_buf_inst/shift_reg_reg[0]  ( .D(
        \shift_buf_inst/n133 ), .CK(clk), .Q(SHIFT_OUT[0]) );
  UDB116SVT24_FDPQB_1P5 \pkt_reg_inst/dout_reg[6]  ( .D(\pkt_reg_inst/n107 ), 
        .CK(clk), .QN(SPI_IN[6]) );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_inst/pkt_reg_reg[32]  ( .D(\pkt_reg_inst/n70 ), .CK(clk), .Q(\pkt_reg_inst/pkt_reg [32]) );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_inst/pkt_reg_reg[42]  ( .D(\pkt_reg_inst/n60 ), .CK(clk), .Q(\pkt_reg_inst/pkt_reg [42]) );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_inst/pkt_reg_reg[44]  ( .D(\pkt_reg_inst/n58 ), .CK(clk), .Q(\pkt_reg_inst/pkt_reg [44]) );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_inst/pkt_reg_reg[54]  ( .D(\pkt_reg_inst/n48 ), .CK(clk), .Q(\pkt_reg_inst/pkt_reg [54]) );
  UDB116SVT24_FDPQB_2 \pkt_reg_inst/pkt_reg_reg[35]  ( .D(n853), .CK(clk), 
        .QN(\pkt_reg_inst/pkt_reg [35]) );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_inst/dout_reg[0]  ( .D(\pkt_reg_inst/n31 ), 
        .CK(clk), .Q(SPI_IN[0]) );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_inst/dout_reg[1]  ( .D(\pkt_reg_inst/n32 ), 
        .CK(clk), .Q(SPI_IN[1]) );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_inst/dout_reg[3]  ( .D(\pkt_reg_inst/n34 ), 
        .CK(clk), .Q(SPI_IN[3]) );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_inst/dout_reg[4]  ( .D(\pkt_reg_inst/n35 ), 
        .CK(clk), .Q(SPI_IN[4]) );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_inst/dout_reg[5]  ( .D(\pkt_reg_inst/n36 ), 
        .CK(clk), .Q(SPI_IN[5]) );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_inst/dout_reg[7]  ( .D(\pkt_reg_inst/n38 ), 
        .CK(clk), .Q(SPI_IN[7]) );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_inst/pkt_reg_reg[56]  ( .D(\pkt_reg_inst/n46 ), .CK(clk), .Q(\pkt_reg_inst/pkt_reg [56]) );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_inst/pkt_reg_reg[48]  ( .D(\pkt_reg_inst/n54 ), .CK(clk), .Q(\pkt_reg_inst/pkt_reg [48]) );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_inst/pkt_reg_reg[40]  ( .D(\pkt_reg_inst/n62 ), .CK(clk), .Q(\pkt_reg_inst/pkt_reg [40]) );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_inst/pkt_reg_reg[24]  ( .D(\pkt_reg_inst/n78 ), .CK(clk), .Q(\pkt_reg_inst/pkt_reg [24]) );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_inst/pkt_reg_reg[16]  ( .D(\pkt_reg_inst/n86 ), .CK(clk), .Q(\pkt_reg_inst/pkt_reg [16]) );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_inst/pkt_reg_reg[8]  ( .D(\pkt_reg_inst/n94 ), 
        .CK(clk), .Q(\pkt_reg_inst/pkt_reg [8]) );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_inst/pkt_reg_reg[0]  ( .D(\pkt_reg_inst/n102 ), .CK(clk), .Q(\pkt_reg_inst/pkt_reg [0]) );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_inst/pkt_reg_reg[57]  ( .D(\pkt_reg_inst/n45 ), .CK(clk), .Q(\pkt_reg_inst/pkt_reg [57]) );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_inst/pkt_reg_reg[49]  ( .D(\pkt_reg_inst/n53 ), .CK(clk), .Q(\pkt_reg_inst/pkt_reg [49]) );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_inst/pkt_reg_reg[41]  ( .D(\pkt_reg_inst/n61 ), .CK(clk), .Q(\pkt_reg_inst/pkt_reg [41]) );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_inst/pkt_reg_reg[25]  ( .D(\pkt_reg_inst/n77 ), .CK(clk), .Q(\pkt_reg_inst/pkt_reg [25]) );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_inst/pkt_reg_reg[17]  ( .D(\pkt_reg_inst/n85 ), .CK(clk), .Q(\pkt_reg_inst/pkt_reg [17]) );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_inst/pkt_reg_reg[9]  ( .D(\pkt_reg_inst/n93 ), 
        .CK(clk), .Q(\pkt_reg_inst/pkt_reg [9]) );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_inst/pkt_reg_reg[1]  ( .D(\pkt_reg_inst/n101 ), .CK(clk), .Q(\pkt_reg_inst/pkt_reg [1]) );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_inst/pkt_reg_reg[58]  ( .D(\pkt_reg_inst/n44 ), .CK(clk), .Q(\pkt_reg_inst/pkt_reg [58]) );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_inst/pkt_reg_reg[50]  ( .D(\pkt_reg_inst/n52 ), .CK(clk), .Q(\pkt_reg_inst/pkt_reg [50]) );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_inst/pkt_reg_reg[34]  ( .D(\pkt_reg_inst/n68 ), .CK(clk), .Q(\pkt_reg_inst/pkt_reg [34]) );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_inst/pkt_reg_reg[26]  ( .D(\pkt_reg_inst/n76 ), .CK(clk), .Q(\pkt_reg_inst/pkt_reg [26]) );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_inst/pkt_reg_reg[18]  ( .D(\pkt_reg_inst/n84 ), .CK(clk), .Q(\pkt_reg_inst/pkt_reg [18]) );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_inst/pkt_reg_reg[10]  ( .D(\pkt_reg_inst/n92 ), .CK(clk), .Q(\pkt_reg_inst/pkt_reg [10]) );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_inst/pkt_reg_reg[2]  ( .D(\pkt_reg_inst/n100 ), .CK(clk), .Q(\pkt_reg_inst/pkt_reg [2]) );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_inst/pkt_reg_reg[59]  ( .D(\pkt_reg_inst/n43 ), .CK(clk), .Q(\pkt_reg_inst/pkt_reg [59]) );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_inst/pkt_reg_reg[51]  ( .D(\pkt_reg_inst/n51 ), .CK(clk), .Q(\pkt_reg_inst/pkt_reg [51]) );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_inst/pkt_reg_reg[43]  ( .D(\pkt_reg_inst/n59 ), .CK(clk), .Q(\pkt_reg_inst/pkt_reg [43]) );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_inst/pkt_reg_reg[19]  ( .D(\pkt_reg_inst/n83 ), .CK(clk), .Q(\pkt_reg_inst/pkt_reg [19]) );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_inst/pkt_reg_reg[11]  ( .D(\pkt_reg_inst/n91 ), .CK(clk), .Q(\pkt_reg_inst/pkt_reg [11]) );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_inst/pkt_reg_reg[3]  ( .D(\pkt_reg_inst/n99 ), 
        .CK(clk), .Q(\pkt_reg_inst/pkt_reg [3]) );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_inst/pkt_reg_reg[60]  ( .D(\pkt_reg_inst/n42 ), .CK(clk), .Q(\pkt_reg_inst/pkt_reg [60]) );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_inst/pkt_reg_reg[52]  ( .D(\pkt_reg_inst/n50 ), .CK(clk), .Q(\pkt_reg_inst/pkt_reg [52]) );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_inst/pkt_reg_reg[36]  ( .D(\pkt_reg_inst/n66 ), .CK(clk), .Q(\pkt_reg_inst/pkt_reg [36]) );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_inst/pkt_reg_reg[28]  ( .D(\pkt_reg_inst/n74 ), .CK(clk), .Q(\pkt_reg_inst/pkt_reg [28]) );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_inst/pkt_reg_reg[20]  ( .D(\pkt_reg_inst/n82 ), .CK(clk), .Q(\pkt_reg_inst/pkt_reg [20]) );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_inst/pkt_reg_reg[12]  ( .D(\pkt_reg_inst/n90 ), .CK(clk), .Q(\pkt_reg_inst/pkt_reg [12]) );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_inst/pkt_reg_reg[4]  ( .D(\pkt_reg_inst/n98 ), 
        .CK(clk), .Q(\pkt_reg_inst/pkt_reg [4]) );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_inst/pkt_reg_reg[61]  ( .D(\pkt_reg_inst/n41 ), .CK(clk), .Q(\pkt_reg_inst/pkt_reg [61]) );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_inst/pkt_reg_reg[53]  ( .D(\pkt_reg_inst/n49 ), .CK(clk), .Q(\pkt_reg_inst/pkt_reg [53]) );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_inst/pkt_reg_reg[45]  ( .D(\pkt_reg_inst/n57 ), .CK(clk), .Q(\pkt_reg_inst/pkt_reg [45]) );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_inst/pkt_reg_reg[37]  ( .D(\pkt_reg_inst/n65 ), .CK(clk), .Q(\pkt_reg_inst/pkt_reg [37]) );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_inst/pkt_reg_reg[21]  ( .D(\pkt_reg_inst/n81 ), .CK(clk), .Q(\pkt_reg_inst/pkt_reg [21]) );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_inst/pkt_reg_reg[13]  ( .D(\pkt_reg_inst/n89 ), .CK(clk), .Q(\pkt_reg_inst/pkt_reg [13]) );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_inst/pkt_reg_reg[5]  ( .D(\pkt_reg_inst/n97 ), 
        .CK(clk), .Q(\pkt_reg_inst/pkt_reg [5]) );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_inst/pkt_reg_reg[62]  ( .D(\pkt_reg_inst/n40 ), .CK(clk), .Q(\pkt_reg_inst/pkt_reg [62]) );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_inst/pkt_reg_reg[46]  ( .D(\pkt_reg_inst/n56 ), .CK(clk), .Q(\pkt_reg_inst/pkt_reg [46]) );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_inst/pkt_reg_reg[38]  ( .D(\pkt_reg_inst/n64 ), .CK(clk), .Q(\pkt_reg_inst/pkt_reg [38]) );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_inst/pkt_reg_reg[30]  ( .D(\pkt_reg_inst/n72 ), .CK(clk), .Q(\pkt_reg_inst/pkt_reg [30]) );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_inst/pkt_reg_reg[22]  ( .D(\pkt_reg_inst/n80 ), .CK(clk), .Q(\pkt_reg_inst/pkt_reg [22]) );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_inst/pkt_reg_reg[14]  ( .D(\pkt_reg_inst/n88 ), .CK(clk), .Q(\pkt_reg_inst/pkt_reg [14]) );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_inst/pkt_reg_reg[6]  ( .D(\pkt_reg_inst/n96 ), 
        .CK(clk), .Q(\pkt_reg_inst/pkt_reg [6]) );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_inst/pkt_reg_reg[63]  ( .D(\pkt_reg_inst/n39 ), .CK(clk), .Q(\pkt_reg_inst/pkt_reg [63]) );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_inst/pkt_reg_reg[55]  ( .D(\pkt_reg_inst/n47 ), .CK(clk), .Q(\pkt_reg_inst/pkt_reg [55]) );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_inst/pkt_reg_reg[47]  ( .D(\pkt_reg_inst/n55 ), .CK(clk), .Q(\pkt_reg_inst/pkt_reg [47]) );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_inst/pkt_reg_reg[39]  ( .D(\pkt_reg_inst/n63 ), .CK(clk), .Q(\pkt_reg_inst/pkt_reg [39]) );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_inst/pkt_reg_reg[23]  ( .D(\pkt_reg_inst/n79 ), .CK(clk), .Q(\pkt_reg_inst/pkt_reg [23]) );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_inst/pkt_reg_reg[15]  ( .D(\pkt_reg_inst/n87 ), .CK(clk), .Q(\pkt_reg_inst/pkt_reg [15]) );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_inst/pkt_reg_reg[7]  ( .D(\pkt_reg_inst/n95 ), 
        .CK(clk), .Q(\pkt_reg_inst/pkt_reg [7]) );
  UDB116SVT24_FDPQB_1P5 \tx_buf_inst/dout_reg  ( .D(n854), .CK(clk), .QN(
        TX_OUT) );
  UDB116SVT24_FDPQ_V2_3 \tx_buf_inst/buffer_reg[7]  ( .D(\tx_buf_inst/n26 ), 
        .CK(clk), .Q(\tx_buf_inst/buffer [7]) );
  UDB116SVT24_FDPQ_V2_3 \tx_buf_inst/buffer_reg[6]  ( .D(\tx_buf_inst/n25 ), 
        .CK(clk), .Q(\tx_buf_inst/buffer [6]) );
  UDB116SVT24_FDPQ_V2_3 \tx_buf_inst/buffer_reg[5]  ( .D(\tx_buf_inst/n24 ), 
        .CK(clk), .Q(\tx_buf_inst/buffer [5]) );
  UDB116SVT24_FDPQ_V2_3 \tx_buf_inst/buffer_reg[4]  ( .D(\tx_buf_inst/n23 ), 
        .CK(clk), .Q(\tx_buf_inst/buffer [4]) );
  UDB116SVT24_FDPQ_V2_3 \tx_buf_inst/buffer_reg[3]  ( .D(\tx_buf_inst/n22 ), 
        .CK(clk), .Q(\tx_buf_inst/buffer [3]) );
  UDB116SVT24_FDPQ_V2_3 \tx_buf_inst/buffer_reg[2]  ( .D(\tx_buf_inst/n21 ), 
        .CK(clk), .Q(\tx_buf_inst/buffer [2]) );
  UDB116SVT24_FDPQ_V2_3 \tx_buf_inst/buffer_reg[1]  ( .D(\tx_buf_inst/n20 ), 
        .CK(clk), .Q(\tx_buf_inst/buffer [1]) );
  UDB116SVT24_FDPQ_V2_3 \tx_buf_inst/buffer_reg[0]  ( .D(\tx_buf_inst/n27 ), 
        .CK(clk), .Q(\tx_buf_inst/buffer [0]) );
  UDB116SVT24_FDPQ_V2_3 \counter3_reg[0]  ( .D(n852), .CK(clk), .Q(counter3[0]) );
  UDB116SVT24_FDPQ_V2_3 \tx_state_reg[0]  ( .D(n849), .CK(clk), .Q(tx_state[0]) );
  UDB116SVT24_FDPQ_V2_3 TX_SH_reg ( .D(n848), .CK(clk), .Q(TX_SH) );
  UDB116SVT24_FDPQ_V2_3 TX_EN_reg ( .D(n846), .CK(clk), .Q(TX_EN) );
  UDB116SVT24_FDPQ_V2_3 \counter3_reg[1]  ( .D(n844), .CK(clk), .Q(counter3[1]) );
  UDB116SVT24_FDPQ_V2_3 \counter3_reg[2]  ( .D(n845), .CK(clk), .Q(counter3[2]) );
  UDB116SVT24_FDPQ_V2_3 \counter3_reg[3]  ( .D(n851), .CK(clk), .Q(counter3[3]) );
  UDB116SVT24_FDPQ_V2_3 \counter_reg[0]  ( .D(n843), .CK(clk), .Q(counter[0])
         );
  UDB116SVT24_FDPQ_V2_3 \counter_reg[1]  ( .D(n835), .CK(clk), .Q(counter[1])
         );
  UDB116SVT24_FDPQ_V2_3 \counter_reg[2]  ( .D(n836), .CK(clk), .Q(counter[2])
         );
  UDB116SVT24_FDPQ_V2_3 \rx_state_reg[0]  ( .D(n840), .CK(clk), .Q(rx_state[0]) );
  UDB116SVT24_FDPQ_V2_3 \rx_state_reg[2]  ( .D(n841), .CK(clk), .Q(rx_state[2]) );
  UDB116SVT24_FDPQ_V2_3 PKT_RST_reg ( .D(n833), .CK(clk), .Q(PKT_RST) );
  UDB116SVT24_FDPQ_V2_3 pkt_rec_prev_reg ( .D(n842), .CK(clk), .Q(pkt_rec_prev) );
  UDB116SVT24_FDPQ_V2_3 \rx_state_reg[1]  ( .D(n839), .CK(clk), .Q(rx_state[1]) );
  UDB116SVT24_FDPQ_V2_3 PKT_EN_reg ( .D(n834), .CK(clk), .Q(PKT_EN) );
  UDB116SVT24_FDPQ_V2_3 PKT_LD_reg ( .D(n832), .CK(clk), .Q(PKT_LD) );
  UDB116SVT24_FDPQB_1P5 \sh_sync_inst/interval_sum_reg[25]  ( .D(
        \sh_sync_inst/n278 ), .CK(clk), .QN(\sh_sync_inst/n152 ) );
  UDB116SVT24_FDPQB_1P5 \sh_sync_inst/counter_reg[4]  ( .D(\sh_sync_inst/n267 ), .CK(clk), .QN(\sh_sync_inst/intadd_0/B[2] ) );
  UDB116SVT24_FDPQB_1P5 \sh_sync_inst/counter_reg[7]  ( .D(\sh_sync_inst/n264 ), .CK(clk), .QN(\sh_sync_inst/intadd_0/B[5] ) );
  UDB116SVT24_FDPQB_1P5 \sh_sync_inst/counter_reg[11]  ( .D(
        \sh_sync_inst/n260 ), .CK(clk), .QN(\sh_sync_inst/intadd_0/B[9] ) );
  UDB116SVT24_FDPQ_1 \sh_sync_inst/rfin_edge_reg  ( .D(\sh_sync_inst/n145 ), 
        .CK(clk), .Q(\sh_sync_inst/rfin_edge ) );
  UDB116SVT24_FDPQB_1P5 \sh_sync_inst/state_reg[0]  ( .D(\sh_sync_inst/N29 ), 
        .CK(clk), .QN(\sh_sync_inst/n205 ) );
  UDB116SVT24_FDPQB_1P5 \sh_sync_inst/interval_sum_reg[28]  ( .D(
        \sh_sync_inst/n275 ), .CK(clk), .QN(\sh_sync_inst/n149 ) );
  UDB116SVT24_FDPQB_1P5 \sh_sync_inst/interval_sum_reg[30]  ( .D(
        \sh_sync_inst/n273 ), .CK(clk), .QN(\sh_sync_inst/n147 ) );
  UDB116SVT24_FDPQB_1P5 \sh_sync_inst/state_reg[2]  ( .D(\sh_sync_inst/N31 ), 
        .CK(clk), .QN(\sh_sync_inst/n244 ) );
  UDB116SVT24_FDPQB_1P5 \sh_sync_inst/interval_sum_reg[17]  ( .D(
        \sh_sync_inst/n286 ), .CK(clk), .QN(\sh_sync_inst/n160 ) );
  UDB116SVT24_FDPQB_1P5 \sh_sync_inst/counter_reg[14]  ( .D(
        \sh_sync_inst/n257 ), .CK(clk), .QN(\sh_sync_inst/intadd_0/B[12] ) );
  UDB116SVT24_FDPQB_1P5 \sh_sync_inst/counter_reg[8]  ( .D(\sh_sync_inst/n263 ), .CK(clk), .QN(\sh_sync_inst/intadd_0/B[6] ) );
  UDB116SVT24_FDPQB_1P5 \sh_sync_inst/counter_reg[5]  ( .D(\sh_sync_inst/n266 ), .CK(clk), .QN(\sh_sync_inst/intadd_0/B[3] ) );
  UDB116SVT24_FDPQ_1 \tx_state_reg[1]  ( .D(n850), .CK(clk), .Q(tx_state[1])
         );
  UDB116SVT24_FDPQ_1 \fsm_sync_inst/state_pos_reg  ( .D(\fsm_sync_inst/N10 ), 
        .CK(clk), .Q(\fsm_sync_inst/state_pos ) );
  UDB116SVT24_FDPQB_1P5 \sh_sync_inst/interval_sum_reg[1]  ( .D(
        \sh_sync_inst/n302 ), .CK(clk), .QN(\sh_sync_inst/n176 ) );
  UDB116SVT24_FDPQB_1P5 \sh_sync_inst/avg_interval_reg[15]  ( .D(
        \sh_sync_inst/n322 ), .CK(clk), .QN(\sh_sync_inst/n192 ) );
  UDB116SVT24_FDPQB_1P5 \sh_sync_inst/timeout_counter_reg[4]  ( .D(
        \sh_sync_inst/n350 ), .CK(clk), .QN(\sh_sync_inst/n220 ) );
  UDB116SVT24_FDPQB_1P5 \sh_sync_inst/pulse_pack_count_reg[1]  ( .D(
        \sh_sync_inst/n331 ), .CK(clk), .QN(\sh_sync_inst/n245 ) );
  UDB116SVT24_FDPQ_1 \shift_buf_inst/pkt_rec_reg  ( .D(\shift_buf_inst/N87 ), 
        .CK(clk), .Q(pkt_rec) );
  UDB116SVT24_FDPQ_1 \shift_buf_inst/shift_reg_reg[55]  ( .D(
        \shift_buf_inst/n78 ), .CK(clk), .Q(SHIFT_OUT[55]) );
  UDB116SVT24_FDPQ_1 \shift_buf_inst/shift_reg_reg[39]  ( .D(
        \shift_buf_inst/n94 ), .CK(clk), .Q(SHIFT_OUT[39]) );
  UDB116SVT24_FDPQ_1 \shift_buf_inst/shift_reg_reg[22]  ( .D(
        \shift_buf_inst/n111 ), .CK(clk), .Q(SHIFT_OUT[22]) );
  UDB116SVT24_FDPQ_1 \shift_buf_inst/shift_reg_reg[6]  ( .D(
        \shift_buf_inst/n127 ), .CK(clk), .Q(SHIFT_OUT[6]) );
  UDB116SVT24_FDPQ_1 \pkt_reg_inst/dout_reg[2]  ( .D(\pkt_reg_inst/n33 ), .CK(
        clk), .Q(SPI_IN[2]) );
  UDB116SVT24_FDPQ_1 \pkt_reg_inst/pkt_reg_reg[33]  ( .D(\pkt_reg_inst/n69 ), 
        .CK(clk), .Q(\pkt_reg_inst/pkt_reg [33]) );
  UDB116SVT24_FDPQ_1 \pkt_reg_inst/pkt_reg_reg[27]  ( .D(\pkt_reg_inst/n75 ), 
        .CK(clk), .Q(\pkt_reg_inst/pkt_reg [27]) );
  UDB116SVT24_FDPQ_1 \pkt_reg_inst/pkt_reg_reg[29]  ( .D(\pkt_reg_inst/n73 ), 
        .CK(clk), .Q(\pkt_reg_inst/pkt_reg [29]) );
  UDB116SVT24_FDPQ_1 \pkt_reg_inst/pkt_reg_reg[31]  ( .D(\pkt_reg_inst/n71 ), 
        .CK(clk), .Q(\pkt_reg_inst/pkt_reg [31]) );
  UDB116SVT24_FDPQ_1 TX_LD_reg ( .D(n847), .CK(clk), .Q(TX_LD) );
  UDB116SVT24_FDPQ_1 SPI_LD_reg ( .D(n838), .CK(clk), .Q(SPI_LD) );
  UDB116SVT24_FDPQ_1 \counter_reg[3]  ( .D(n837), .CK(clk), .Q(counter[3]) );
  UDB116SVT24_BUF_1 U1121 ( .A(n973), .X(n1708) );
  UDB116SVT24_OA2BB2_0P75 U1122 ( .A1(n1027), .A2(n1303), .B1(n1303), .B2(
        n1027), .X(n1302) );
  UDB116SVT24_OA2BB2_0P75 U1123 ( .A1(n1018), .A2(n1300), .B1(n1300), .B2(
        n1017), .X(n1299) );
  UDB116SVT24_OR2_0P75 U1124 ( .A1(n895), .A2(n1567), .X(n1703) );
  UDB116SVT24_OA2BB2_0P75 U1125 ( .A1(\sh_sync_inst/intadd_0/B[8] ), .A2(n1296), .B1(n1296), .B2(n943), .X(n1292) );
  UDB116SVT24_BUF_1 U1126 ( .A(n1531), .X(n1646) );
  UDB116SVT24_OR2_0P75 U1127 ( .A1(n1314), .A2(n983), .X(n1594) );
  UDB116SVT24_BUF_1 U1128 ( .A(n1262), .X(n1265) );
  UDB116SVT24_OA2BB2_0P75 U1129 ( .A1(n1024), .A2(n1289), .B1(n1289), .B2(
        n1024), .X(n1273) );
  UDB116SVT24_BUF_1 U1130 ( .A(n1609), .X(n1606) );
  UDB116SVT24_OA2BB2_0P75 U1131 ( .A1(n1015), .A2(n1270), .B1(n1270), .B2(
        n1016), .X(n1207) );
  UDB116SVT24_OR3_1 U1132 ( .A1(TX_LD), .A2(n1914), .A3(n920), .X(n1918) );
  UDB116SVT24_OR2_0P75 U1133 ( .A1(RX), .A2(n920), .X(n1929) );
  UDB116SVT24_AO21_0P75 U1134 ( .A1(n1242), .A2(n1241), .B(n1240), .X(n1695)
         );
  UDB116SVT24_OR2_0P75 U1135 ( .A1(n1549), .A2(n989), .X(n1215) );
  UDB116SVT24_OR3_1 U1136 ( .A1(TX_EN), .A2(TX_LD), .A3(n987), .X(n1917) );
  UDB116SVT24_OR2_0P75 U1137 ( .A1(n988), .A2(n1924), .X(n1916) );
  UDB116SVT24_OR4_1 U1138 ( .A1(n902), .A2(n965), .A3(n988), .A4(n948), .X(
        n1710) );
  UDB116SVT24_OAI21B_1 U1139 ( .A1(PKT_EN), .A2(PKT_LD), .B(n989), .X(n1913)
         );
  UDB116SVT24_BUF_1 U1140 ( .A(n992), .X(n1915) );
  UDB116SVT24_INV_0P75 U1141 ( .A(\sh_sync_inst/n194 ), .X(n1071) );
  UDB116SVT24_BUF_1 U1142 ( .A(\sh_sync_inst/n228 ), .X(n1186) );
  UDB116SVT24_BUF_1 U1143 ( .A(\sh_sync_inst/intadd_0/B[13] ), .X(n1667) );
  UDB116SVT24_BUF_1 U1144 ( .A(\sh_sync_inst/intadd_0/B[7] ), .X(n1290) );
  UDB116SVT24_BUF_1 U1145 ( .A(rx_state[1]), .X(n1941) );
  UDB116SVT24_INV_0P75 U1146 ( .A(n990), .X(n856) );
  UDB116SVT24_BUF_1 U1147 ( .A(n1246), .X(n857) );
  UDB116SVT24_BUF_1 U1148 ( .A(n1221), .X(n858) );
  UDB116SVT24_INV_0P75 U1149 ( .A(n1376), .X(n859) );
  UDB116SVT24_BUF_1 U1150 ( .A(n1433), .X(n860) );
  UDB116SVT24_BUF_1 U1151 ( .A(n1537), .X(n861) );
  UDB116SVT24_INV_0P75 U1152 ( .A(n1932), .X(n862) );
  UDB116SVT24_INV_0P75 U1153 ( .A(n1052), .X(n863) );
  UDB116SVT24_BUF_1 U1154 ( .A(n1927), .X(n864) );
  UDB116SVT24_BUF_1 U1155 ( .A(n1241), .X(n865) );
  UDB116SVT24_BUF_1 U1156 ( .A(\sh_sync_inst/n249 ), .X(n866) );
  UDB116SVT24_BUF_1 U1157 ( .A(\sh_sync_inst/intadd_0/B[1] ), .X(n867) );
  UDB116SVT24_INV_0P75 U1158 ( .A(n1199), .X(n868) );
  UDB116SVT24_BUF_1 U1159 ( .A(\sh_sync_inst/n215 ), .X(n869) );
  UDB116SVT24_INV_0P75 U1160 ( .A(n1097), .X(n870) );
  UDB116SVT24_BUF_1 U1161 ( .A(\sh_sync_inst/n176 ), .X(n871) );
  UDB116SVT24_BUF_1 U1162 ( .A(\sh_sync_inst/intadd_0/A[1] ), .X(n872) );
  UDB116SVT24_INV_0P75 U1163 ( .A(n920), .X(n873) );
  UDB116SVT24_BUF_1 U1164 ( .A(n1032), .X(n874) );
  UDB116SVT24_INV_0P75 U1165 ( .A(RX), .X(n875) );
  UDB116SVT24_INV_0P75 U1166 ( .A(counter[0]), .X(n876) );
  UDB116SVT24_INV_0P75 U1167 ( .A(n941), .X(n877) );
  UDB116SVT24_INV_0P75 U1168 ( .A(n1667), .X(n878) );
  UDB116SVT24_INV_0P75 U1169 ( .A(n1667), .X(n879) );
  UDB116SVT24_INV_0P75 U1170 ( .A(n943), .X(n880) );
  UDB116SVT24_INV_0P75 U1171 ( .A(\sh_sync_inst/n208 ), .X(n881) );
  UDB116SVT24_INV_0P75 U1172 ( .A(\sh_sync_inst/n208 ), .X(n882) );
  UDB116SVT24_INV_0P75 U1173 ( .A(\sh_sync_inst/intadd_0/A[2] ), .X(n883) );
  UDB116SVT24_INV_0P75 U1174 ( .A(\sh_sync_inst/intadd_0/A[2] ), .X(n884) );
  UDB116SVT24_INV_0P75 U1175 ( .A(\sh_sync_inst/intadd_0/A[8] ), .X(n885) );
  UDB116SVT24_INV_0P75 U1176 ( .A(\sh_sync_inst/intadd_0/A[8] ), .X(n886) );
  UDB116SVT24_INV_0P75 U1177 ( .A(\sh_sync_inst/n160 ), .X(n887) );
  UDB116SVT24_INV_0P75 U1178 ( .A(\sh_sync_inst/n160 ), .X(n888) );
  UDB116SVT24_INV_0P75 U1179 ( .A(\sh_sync_inst/n161 ), .X(n889) );
  UDB116SVT24_INV_0P75 U1180 ( .A(\sh_sync_inst/n161 ), .X(n890) );
  UDB116SVT24_INV_0P75 U1181 ( .A(n1710), .X(n891) );
  UDB116SVT24_INV_0P75 U1182 ( .A(n1710), .X(n892) );
  UDB116SVT24_INV_0P75 U1183 ( .A(n1707), .X(n893) );
  UDB116SVT24_INV_0P75 U1184 ( .A(n893), .X(n894) );
  UDB116SVT24_INV_0P75 U1185 ( .A(n1695), .X(n895) );
  UDB116SVT24_INV_0P75 U1186 ( .A(n1695), .X(n896) );
  UDB116SVT24_INV_0P75 U1187 ( .A(n1215), .X(n897) );
  UDB116SVT24_INV_0P75 U1188 ( .A(n1215), .X(n898) );
  UDB116SVT24_INV_0P75 U1189 ( .A(tx_state[1]), .X(n899) );
  UDB116SVT24_INV_0P75 U1190 ( .A(n899), .X(n900) );
  UDB116SVT24_INV_0P75 U1191 ( .A(\sh_sync_inst/n244 ), .X(n901) );
  UDB116SVT24_INV_0P75 U1192 ( .A(n901), .X(n902) );
  UDB116SVT24_INV_0P75 U1193 ( .A(\sh_sync_inst/intadd_0/B[9] ), .X(n903) );
  UDB116SVT24_INV_0P75 U1194 ( .A(n903), .X(n904) );
  UDB116SVT24_INV_0P75 U1195 ( .A(\sh_sync_inst/n152 ), .X(n905) );
  UDB116SVT24_INV_0P75 U1196 ( .A(n905), .X(n906) );
  UDB116SVT24_INV_0P75 U1197 ( .A(\sh_sync_inst/n149 ), .X(n907) );
  UDB116SVT24_INV_0P75 U1198 ( .A(n907), .X(n908) );
  UDB116SVT24_INV_0P75 U1199 ( .A(\sh_sync_inst/rfin_edge ), .X(n909) );
  UDB116SVT24_INV_0P75 U1200 ( .A(n909), .X(n910) );
  UDB116SVT24_INV_0P75 U1201 ( .A(n953), .X(n911) );
  UDB116SVT24_INV_0P75 U1202 ( .A(\sh_sync_inst/intadd_0/B[0] ), .X(n912) );
  UDB116SVT24_INV_0P75 U1203 ( .A(n912), .X(n913) );
  UDB116SVT24_INV_0P75 U1204 ( .A(\sh_sync_inst/intadd_0/B[11] ), .X(n914) );
  UDB116SVT24_INV_0P75 U1205 ( .A(n914), .X(n915) );
  UDB116SVT24_INV_0P75 U1206 ( .A(\sh_sync_inst/n146 ), .X(n916) );
  UDB116SVT24_INV_0P75 U1207 ( .A(n916), .X(n917) );
  UDB116SVT24_INV_0P75 U1208 ( .A(n986), .X(n918) );
  UDB116SVT24_INV_0P75 U1209 ( .A(n918), .X(n919) );
  UDB116SVT24_INV_0P75 U1210 ( .A(n918), .X(n920) );
  UDB116SVT24_INV_0P75 U1211 ( .A(n976), .X(n921) );
  UDB116SVT24_INV_0P75 U1212 ( .A(n977), .X(n922) );
  UDB116SVT24_INV_0P75 U1213 ( .A(n1941), .X(n923) );
  UDB116SVT24_INV_0P75 U1214 ( .A(n1941), .X(n924) );
  UDB116SVT24_INV_0P75 U1215 ( .A(n984), .X(n925) );
  UDB116SVT24_INV_0P75 U1216 ( .A(n1737), .X(n926) );
  UDB116SVT24_INV_0P75 U1217 ( .A(n915), .X(n927) );
  UDB116SVT24_INV_0P75 U1218 ( .A(n963), .X(n928) );
  UDB116SVT24_INV_0P75 U1219 ( .A(n913), .X(n929) );
  UDB116SVT24_INV_0P75 U1220 ( .A(\sh_sync_inst/intadd_0/B[9] ), .X(n930) );
  UDB116SVT24_INV_0P75 U1221 ( .A(n1265), .X(n931) );
  UDB116SVT24_INV_0P75 U1222 ( .A(n1265), .X(n932) );
  UDB116SVT24_INV_0P75 U1223 ( .A(\sh_sync_inst/n157 ), .X(n933) );
  UDB116SVT24_INV_0P75 U1224 ( .A(\sh_sync_inst/n157 ), .X(n934) );
  UDB116SVT24_INV_0P75 U1225 ( .A(n1918), .X(n935) );
  UDB116SVT24_INV_0P75 U1226 ( .A(n1918), .X(n936) );
  UDB116SVT24_INV_0P75 U1227 ( .A(n1929), .X(n937) );
  UDB116SVT24_INV_0P75 U1228 ( .A(n1929), .X(n938) );
  UDB116SVT24_INV_0P75 U1229 ( .A(n980), .X(n939) );
  UDB116SVT24_INV_0P75 U1230 ( .A(\sh_sync_inst/intadd_0/B[2] ), .X(n940) );
  UDB116SVT24_INV_0P75 U1231 ( .A(n940), .X(n941) );
  UDB116SVT24_INV_0P75 U1232 ( .A(\sh_sync_inst/intadd_0/B[8] ), .X(n942) );
  UDB116SVT24_INV_0P75 U1233 ( .A(n942), .X(n943) );
  UDB116SVT24_INV_0P75 U1234 ( .A(\sh_sync_inst/n201 ), .X(n944) );
  UDB116SVT24_INV_0P75 U1235 ( .A(n944), .X(n945) );
  UDB116SVT24_INV_0P75 U1236 ( .A(n1048), .X(n946) );
  UDB116SVT24_INV_0P75 U1237 ( .A(n1048), .X(n947) );
  UDB116SVT24_INV_0P75 U1238 ( .A(\sh_sync_inst/n205 ), .X(n948) );
  UDB116SVT24_INV_0P75 U1239 ( .A(\sh_sync_inst/n205 ), .X(n949) );
  UDB116SVT24_INV_0P75 U1240 ( .A(n1290), .X(n950) );
  UDB116SVT24_INV_0P75 U1241 ( .A(n1290), .X(n951) );
  UDB116SVT24_INV_0P75 U1242 ( .A(\sh_sync_inst/n202 ), .X(n952) );
  UDB116SVT24_INV_0P75 U1243 ( .A(\sh_sync_inst/n202 ), .X(n953) );
  UDB116SVT24_INV_0P75 U1244 ( .A(n1708), .X(n954) );
  UDB116SVT24_INV_0P75 U1245 ( .A(n1708), .X(n955) );
  UDB116SVT24_INV_0P75 U1246 ( .A(n1913), .X(n956) );
  UDB116SVT24_INV_0P75 U1247 ( .A(n1913), .X(n957) );
  UDB116SVT24_INV_0P75 U1248 ( .A(n1917), .X(n958) );
  UDB116SVT24_INV_0P75 U1249 ( .A(n1917), .X(n959) );
  UDB116SVT24_INV_0P75 U1250 ( .A(n1916), .X(n960) );
  UDB116SVT24_INV_0P75 U1251 ( .A(n1916), .X(n961) );
  UDB116SVT24_INV_0P75 U1252 ( .A(\sh_sync_inst/intadd_0/B[5] ), .X(n962) );
  UDB116SVT24_INV_0P75 U1253 ( .A(n962), .X(n963) );
  UDB116SVT24_INV_0P75 U1254 ( .A(n962), .X(n964) );
  UDB116SVT24_INV_0P75 U1255 ( .A(n1186), .X(n965) );
  UDB116SVT24_INV_0P75 U1256 ( .A(n1186), .X(n966) );
  UDB116SVT24_INV_0P75 U1257 ( .A(\sh_sync_inst/intadd_0/B[3] ), .X(n967) );
  UDB116SVT24_INV_0P75 U1258 ( .A(n967), .X(n968) );
  UDB116SVT24_INV_0P75 U1259 ( .A(n967), .X(n969) );
  UDB116SVT24_INV_0P75 U1260 ( .A(n1606), .X(n970) );
  UDB116SVT24_INV_0P75 U1261 ( .A(n1606), .X(n971) );
  UDB116SVT24_INV_0P75 U1262 ( .A(n1606), .X(n972) );
  UDB116SVT24_INV_0P75 U1263 ( .A(n1703), .X(n973) );
  UDB116SVT24_INV_0P75 U1264 ( .A(n1703), .X(n974) );
  UDB116SVT24_INV_0P75 U1265 ( .A(n1594), .X(n975) );
  UDB116SVT24_INV_0P75 U1266 ( .A(n1594), .X(n976) );
  UDB116SVT24_INV_0P75 U1267 ( .A(n1594), .X(n977) );
  UDB116SVT24_INV_0P75 U1268 ( .A(n1646), .X(n978) );
  UDB116SVT24_INV_0P75 U1269 ( .A(n1646), .X(n979) );
  UDB116SVT24_INV_0P75 U1270 ( .A(n1646), .X(n980) );
  UDB116SVT24_INV_0P75 U1271 ( .A(n1737), .X(n981) );
  UDB116SVT24_INV_0P75 U1272 ( .A(n981), .X(n982) );
  UDB116SVT24_INV_0P75 U1273 ( .A(n981), .X(n983) );
  UDB116SVT24_INV_0P75 U1274 ( .A(n981), .X(n984) );
  UDB116SVT24_INV_0P75 U1275 ( .A(n981), .X(n985) );
  UDB116SVT24_INV_0P75 U1276 ( .A(n1915), .X(n986) );
  UDB116SVT24_INV_0P75 U1277 ( .A(n1915), .X(n987) );
  UDB116SVT24_INV_0P75 U1278 ( .A(n1915), .X(n988) );
  UDB116SVT24_INV_0P75 U1279 ( .A(n1915), .X(n989) );
  UDB116SVT24_INV_0P75 U1280 ( .A(CS), .X(n990) );
  UDB116SVT24_INV_0P75 U1281 ( .A(rst), .X(n991) );
  UDB116SVT24_INV_0P75 U1282 ( .A(n991), .X(n992) );
  UDB116SVT24_INV_0P75 U1283 ( .A(n991), .X(n993) );
  UDB116SVT24_INV_0P75 U1284 ( .A(n991), .X(n994) );
  UDB116SVT24_INV_0P75 U1285 ( .A(\sh_sync_inst/n153 ), .X(n995) );
  UDB116SVT24_INV_0P75 U1286 ( .A(counter3[2]), .X(n996) );
  UDB116SVT24_BUF_1 U1287 ( .A(n1943), .X(n997) );
  UDB116SVT24_BUF_1 U1288 ( .A(n1518), .X(n998) );
  UDB116SVT24_BUF_1 U1289 ( .A(n1469), .X(n999) );
  UDB116SVT24_INV_0P75 U1290 ( .A(n1405), .X(n1000) );
  UDB116SVT24_BUF_1 U1291 ( .A(\sh_sync_inst/n207 ), .X(n1001) );
  UDB116SVT24_BUF_1 U1292 ( .A(counter3[1]), .X(n1002) );
  UDB116SVT24_BUF_1 U1293 ( .A(\sh_sync_inst/n235 ), .X(n1003) );
  UDB116SVT24_INV_0P75 U1294 ( .A(n1491), .X(n1004) );
  UDB116SVT24_INV_0P75 U1295 ( .A(n1473), .X(n1005) );
  UDB116SVT24_INV_0P75 U1296 ( .A(n1719), .X(n1006) );
  UDB116SVT24_INV_0P75 U1297 ( .A(n1666), .X(n1007) );
  UDB116SVT24_INV_0P75 U1298 ( .A(n1369), .X(n1008) );
  UDB116SVT24_INV_0P75 U1299 ( .A(n1444), .X(n1009) );
  UDB116SVT24_BUF_1 U1300 ( .A(\sh_sync_inst/n251 ), .X(n1010) );
  UDB116SVT24_BUF_1 U1301 ( .A(n1589), .X(n1011) );
  UDB116SVT24_BUF_1 U1302 ( .A(rx_state[0]), .X(n1012) );
  UDB116SVT24_ND2_MM_0P75 U1303 ( .A1(n1910), .A2(SPI_LD), .X(n1912) );
  UDB116SVT24_INV_0P75 U1304 ( .A(n1912), .X(n1013) );
  UDB116SVT24_INV_0P75 U1305 ( .A(n1912), .X(n1014) );
  UDB116SVT24_BUF_1 U1306 ( .A(\sh_sync_inst/intadd_0/B[4] ), .X(n1015) );
  UDB116SVT24_BUF_1 U1307 ( .A(\sh_sync_inst/intadd_0/B[4] ), .X(n1016) );
  UDB116SVT24_BUF_1 U1308 ( .A(\sh_sync_inst/intadd_0/B[10] ), .X(n1017) );
  UDB116SVT24_BUF_1 U1309 ( .A(\sh_sync_inst/intadd_0/B[10] ), .X(n1018) );
  UDB116SVT24_INV_0P75 U1310 ( .A(\sh_sync_inst/n147 ), .X(n1019) );
  UDB116SVT24_INV_0P75 U1311 ( .A(n1019), .X(n1020) );
  UDB116SVT24_INV_0P75 U1312 ( .A(n1019), .X(n1021) );
  UDB116SVT24_INV_0P75 U1313 ( .A(\sh_sync_inst/intadd_0/B[6] ), .X(n1022) );
  UDB116SVT24_INV_0P75 U1314 ( .A(n1022), .X(n1023) );
  UDB116SVT24_INV_0P75 U1315 ( .A(n1022), .X(n1024) );
  UDB116SVT24_INV_0P75 U1316 ( .A(\sh_sync_inst/intadd_0/B[12] ), .X(n1025) );
  UDB116SVT24_INV_0P75 U1317 ( .A(n1025), .X(n1026) );
  UDB116SVT24_INV_0P75 U1318 ( .A(n1025), .X(n1027) );
  UDB116SVT24_OR2_0P75 U1319 ( .A1(n910), .A2(n1197), .X(n1730) );
  UDB116SVT24_INV_0P75 U1320 ( .A(n1730), .X(n1028) );
  UDB116SVT24_INV_0P75 U1321 ( .A(n1730), .X(n1029) );
  UDB116SVT24_INV_0P75 U1322 ( .A(n1730), .X(n1030) );
  UDB116SVT24_INV_0P75 U1323 ( .A(n1730), .X(n1031) );
  UDB116SVT24_OA31_1 U1324 ( .A1(n1736), .A2(n1320), .A3(\sh_sync_inst/n228 ), 
        .B(n873), .X(n1650) );
  UDB116SVT24_INV_0P75 U1325 ( .A(n1650), .X(n1032) );
  UDB116SVT24_INV_0P75 U1326 ( .A(n1650), .X(n1033) );
  UDB116SVT24_INV_0P75 U1327 ( .A(n1650), .X(n1034) );
  UDB116SVT24_INV_0P75 U1328 ( .A(n1650), .X(n1035) );
  UDB116SVT24_BUF_1 U1329 ( .A(n975), .X(n1720) );
  UDB116SVT24_INV_0P75 U1330 ( .A(n1720), .X(n1036) );
  UDB116SVT24_INV_0P75 U1331 ( .A(n1720), .X(n1037) );
  UDB116SVT24_INV_0P75 U1332 ( .A(n1720), .X(n1038) );
  UDB116SVT24_INV_0P75 U1333 ( .A(n1720), .X(n1039) );
  UDB116SVT24_BUF_1 U1334 ( .A(n1071), .X(n1146) );
  UDB116SVT24_BUF_1 U1335 ( .A(n1071), .X(n1174) );
  UDB116SVT24_NR2_0P75 U1337 ( .A1(\sh_sync_inst/n227 ), .A2(n989), .X(
        \sh_sync_inst/N528 ) );
  UDB116SVT24_ND3_0P75 U1338 ( .A1(n918), .A2(TX_EN), .A3(
        \tx_buf_inst/buffer [7]), .X(n854) );
  UDB116SVT24_ND4_0P75 U1339 ( .A1(\shift_buf_inst/sync [0]), .A2(
        \shift_buf_inst/sync [1]), .A3(\shift_buf_inst/sync [2]), .A4(
        \shift_buf_inst/sync [3]), .X(n1041) );
  UDB116SVT24_ND4_0P75 U1340 ( .A1(\shift_buf_inst/sync [4]), .A2(
        \shift_buf_inst/sync [5]), .A3(\shift_buf_inst/sync [6]), .A4(
        \shift_buf_inst/sync [7]), .X(n1040) );
  UDB116SVT24_NR2_0P75 U1341 ( .A1(n1041), .A2(n1040), .X(\shift_buf_inst/N87 ) );
  UDB116SVT24_NR2_0P75 U1342 ( .A1(PKT_RST), .A2(n989), .X(n1048) );
  UDB116SVT24_ND2_MM_0P75 U1343 ( .A1(n1048), .A2(SHIFT_OUT[45]), .X(
        \shift_buf_inst/n137 ) );
  UDB116SVT24_NR2_0P75 U1344 ( .A1(\sh_sync_inst/n226 ), .A2(n986), .X(
        \sh_sync_inst/N529 ) );
  UDB116SVT24_INV_0P75 U1345 ( .A(TX_SH), .X(n1045) );
  UDB116SVT24_NR2_0P75 U1346 ( .A1(n919), .A2(n1045), .X(\sh_sync_inst/N534 )
         );
  UDB116SVT24_INV_0P75 U1347 ( .A(SHIFT_OUT[38]), .X(n1812) );
  UDB116SVT24_NR2_0P75 U1348 ( .A1(n946), .A2(n1812), .X(\shift_buf_inst/N13 )
         );
  UDB116SVT24_INV_0P75 U1349 ( .A(SHIFT_OUT[40]), .X(n1807) );
  UDB116SVT24_NR2_0P75 U1350 ( .A1(n947), .A2(n1807), .X(\shift_buf_inst/N11 )
         );
  UDB116SVT24_INV_0P75 U1351 ( .A(SHIFT_OUT[44]), .X(n1795) );
  UDB116SVT24_NR2_0P75 U1352 ( .A1(n946), .A2(n1795), .X(\shift_buf_inst/N7 )
         );
  UDB116SVT24_INV_0P75 U1353 ( .A(SHIFT_OUT[39]), .X(n1810) );
  UDB116SVT24_NR2_0P75 U1354 ( .A1(n947), .A2(n1810), .X(\shift_buf_inst/N12 )
         );
  UDB116SVT24_INV_0P75 U1355 ( .A(SHIFT_OUT[42]), .X(n1800) );
  UDB116SVT24_NR2_0P75 U1356 ( .A1(n946), .A2(n1800), .X(\shift_buf_inst/N9 )
         );
  UDB116SVT24_INV_0P75 U1357 ( .A(SHIFT_OUT[43]), .X(n1798) );
  UDB116SVT24_NR2_0P75 U1358 ( .A1(n947), .A2(n1798), .X(\shift_buf_inst/N8 )
         );
  UDB116SVT24_INV_0P75 U1359 ( .A(SHIFT_OUT[41]), .X(n1803) );
  UDB116SVT24_NR2_0P75 U1360 ( .A1(n946), .A2(n1803), .X(\shift_buf_inst/N10 )
         );
  UDB116SVT24_INV_0P75 U1361 ( .A(tx_state[0]), .X(n1919) );
  UDB116SVT24_ND2_MM_0P75 U1362 ( .A1(n900), .A2(n1919), .X(n1044) );
  UDB116SVT24_NR2_0P75 U1363 ( .A1(n900), .A2(n990), .X(n1042) );
  UDB116SVT24_AN3B_0P75 U1364 ( .B1(n937), .B2(n1044), .A(n1042), .X(n849) );
  UDB116SVT24_INV_0P75 U1365 ( .A(rx_state[2]), .X(n1046) );
  UDB116SVT24_INV_0P75 U1366 ( .A(RX), .X(n1188) );
  UDB116SVT24_NR2_0P75 U1367 ( .A1(n987), .A2(n1188), .X(n1931) );
  UDB116SVT24_ND2_MM_0P75 U1368 ( .A1(n1046), .A2(n862), .X(n1056) );
  UDB116SVT24_NR2_0P75 U1369 ( .A1(rx_state[2]), .A2(n875), .X(n1945) );
  UDB116SVT24_INV_0P75 U1370 ( .A(n1945), .X(n1052) );
  UDB116SVT24_INV_0P75 U1371 ( .A(rx_state[0]), .X(n1946) );
  UDB116SVT24_OAI211_0P75 U1372 ( .A1(n1052), .A2(n1946), .B1(n918), .B2(
        PKT_RST), .X(n1043) );
  UDB116SVT24_OAI31_1 U1373 ( .A1(n1012), .A2(n924), .A3(n1056), .B(n1043), 
        .X(n833) );
  UDB116SVT24_AOI31_0P75 U1374 ( .A1(n900), .A2(rst), .A3(tx_state[0]), .B(
        n1931), .X(n1925) );
  UDB116SVT24_INV_0P75 U1375 ( .A(n938), .X(n1922) );
  UDB116SVT24_OAI22_0P75 U1376 ( .A1(n1925), .A2(n1045), .B1(n1922), .B2(n1044), .X(n848) );
  UDB116SVT24_INV_0P75 U1377 ( .A(counter[0]), .X(n1926) );
  UDB116SVT24_INV_0P75 U1378 ( .A(n1931), .X(n1932) );
  UDB116SVT24_NR2_0P75 U1379 ( .A1(n1046), .A2(n1932), .X(n1930) );
  UDB116SVT24_INV_0P75 U1380 ( .A(n1930), .X(n1943) );
  UDB116SVT24_NR4_0P75 U1381 ( .A1(rx_state[1]), .A2(rx_state[0]), .A3(n1188), 
        .A4(n990), .X(n1051) );
  UDB116SVT24_AOI21_0P75 U1382 ( .A1(n863), .A2(n923), .B(n919), .X(n1938) );
  UDB116SVT24_ND2B_0P75 U1383 ( .A(n1051), .B(n1938), .X(n1927) );
  UDB116SVT24_AOI21_0P75 U1384 ( .A1(n1927), .A2(n1926), .B(counter[1]), .X(
        n1047) );
  UDB116SVT24_AOAOI2111_0P75 U1385 ( .A1(counter[1]), .A2(n1926), .B(n1943), 
        .C(n864), .D(n1047), .X(n835) );
  UDB116SVT24_BUF_1 U1386 ( .A(n1071), .X(sh_en) );
  UDB116SVT24_INV_0P75 U1387 ( .A(sh_en), .X(n1739) );
  UDB116SVT24_INV_0P75 U1388 ( .A(SHIFT_OUT[62]), .X(n1743) );
  UDB116SVT24_INV_0P75 U1389 ( .A(SHIFT_OUT[63]), .X(n1741) );
  UDB116SVT24_INV_0P75 U1390 ( .A(n1174), .X(n1544) );
  UDB116SVT24_ND2_MM_0P75 U1391 ( .A1(n1544), .A2(n1048), .X(n1547) );
  UDB116SVT24_OAI22_0P75 U1392 ( .A1(n1739), .A2(n1743), .B1(n1741), .B2(n1547), .X(\shift_buf_inst/n70 ) );
  UDB116SVT24_INV_0P75 U1393 ( .A(TX_EN), .X(n1914) );
  UDB116SVT24_INV_0P75 U1394 ( .A(counter3[2]), .X(n1129) );
  UDB116SVT24_ND2_MM_0P75 U1395 ( .A1(counter3[3]), .A2(n996), .X(n1049) );
  UDB116SVT24_OAI31_1 U1396 ( .A1(counter3[1]), .A2(counter3[0]), .A3(n1049), 
        .B(tx_state[1]), .X(n1920) );
  UDB116SVT24_NR3_0P75 U1397 ( .A1(n1920), .A2(n1544), .A3(tx_state[0]), .X(
        n1126) );
  UDB116SVT24_INV_0P75 U1398 ( .A(n1126), .X(n1070) );
  UDB116SVT24_OAI22_0P75 U1399 ( .A1(n1925), .A2(n1914), .B1(n1922), .B2(n1070), .X(n846) );
  UDB116SVT24_OR3B_0P75 U1400 ( .B1(counter[1]), .B2(counter[2]), .A(n876), 
        .X(n1064) );
  UDB116SVT24_NR2_0P75 U1401 ( .A1(counter[3]), .A2(n1064), .X(n1050) );
  UDB116SVT24_AOI21_0P75 U1402 ( .A1(n1941), .A2(n1050), .B(n1946), .X(n1054)
         );
  UDB116SVT24_NR2_0P75 U1403 ( .A1(n1050), .A2(n924), .X(n1055) );
  UDB116SVT24_ND2B_0P75 U1404 ( .A(pkt_rec_prev), .B(pkt_rec), .X(n1937) );
  UDB116SVT24_AOI22_1 U1405 ( .A1(n1055), .A2(n856), .B1(n923), .B2(n1937), 
        .X(n1053) );
  UDB116SVT24_NR2_0P75 U1406 ( .A1(n1051), .A2(n986), .X(n1057) );
  UDB116SVT24_OAI21_0P75 U1407 ( .A1(rx_state[0]), .A2(n1052), .B(n1057), .X(
        n1940) );
  UDB116SVT24_AOI21_0P75 U1408 ( .A1(n1945), .A2(n1053), .B(n1940), .X(n1936)
         );
  UDB116SVT24_AO2BB2_0P75 U1409 ( .A1(n1054), .A2(n1056), .B1(n1012), .B2(
        n1936), .X(n840) );
  UDB116SVT24_INV_0P75 U1410 ( .A(counter3[0]), .X(n1067) );
  UDB116SVT24_OAI211_0P75 U1411 ( .A1(n1146), .A2(n1920), .B1(n937), .B2(n1919), .X(n1066) );
  UDB116SVT24_AOI21_0P75 U1412 ( .A1(n1126), .A2(n1067), .B(n1066), .X(n1069)
         );
  UDB116SVT24_AOI21_0P75 U1413 ( .A1(n1067), .A2(n1066), .B(n1069), .X(n852)
         );
  UDB116SVT24_INV_0P75 U1414 ( .A(n1055), .X(n1059) );
  UDB116SVT24_NR2_0P75 U1415 ( .A1(n1946), .A2(n1056), .X(n1939) );
  UDB116SVT24_INV_0P75 U1416 ( .A(n1939), .X(n1950) );
  UDB116SVT24_ND2_MM_0P75 U1417 ( .A1(rx_state[2]), .A2(n1057), .X(n1058) );
  UDB116SVT24_OAI31_1 U1418 ( .A1(n1936), .A2(n1059), .A3(n1950), .B(n1058), 
        .X(n841) );
  UDB116SVT24_INV_0P75 U1419 ( .A(n1146), .X(n1152) );
  UDB116SVT24_INV_0P75 U1420 ( .A(SHIFT_OUT[6]), .X(n1148) );
  UDB116SVT24_INV_0P75 U1421 ( .A(SHIFT_OUT[7]), .X(n1151) );
  UDB116SVT24_BUF_1 U1422 ( .A(n1547), .X(n1738) );
  UDB116SVT24_OAI22_0P75 U1423 ( .A1(n1152), .A2(n1148), .B1(n1151), .B2(n1738), .X(\shift_buf_inst/n126 ) );
  UDB116SVT24_INV_0P75 U1424 ( .A(n1927), .X(n1928) );
  UDB116SVT24_OAI21_0P75 U1425 ( .A1(n1943), .A2(n1926), .B(n1927), .X(n1060)
         );
  UDB116SVT24_AOAI211_0P75 U1426 ( .A1(counter[1]), .A2(n1930), .B(n1060), .C(
        counter[2]), .X(n1061) );
  UDB116SVT24_OAI31_1 U1427 ( .A1(n1928), .A2(n997), .A3(n1064), .B(n1061), 
        .X(n836) );
  UDB116SVT24_INV_0P75 U1428 ( .A(counter[3]), .X(n1063) );
  UDB116SVT24_OAI21_0P75 U1429 ( .A1(n1928), .A2(n1064), .B(n1063), .X(n1062)
         );
  UDB116SVT24_OAOAI2111_1 U1430 ( .A1(n1064), .A2(n1063), .B(n1930), .C(n1928), 
        .D(n1062), .X(n1065) );
  UDB116SVT24_OAI21_0P75 U1431 ( .A1(n1938), .A2(n1950), .B(n1065), .X(n837)
         );
  UDB116SVT24_NR3_0P75 U1432 ( .A1(n1067), .A2(n1066), .A3(n1070), .X(n1068)
         );
  UDB116SVT24_OA2BB2_0P75 U1433 ( .A1(n1002), .A2(n1069), .B1(n1068), .B2(
        n1002), .X(n844) );
  UDB116SVT24_NR3_0P75 U1434 ( .A1(PKT_EN), .A2(PKT_LD), .A3(n988), .X(n1804)
         );
  UDB116SVT24_BUF_1 U1435 ( .A(n1804), .X(n1906) );
  UDB116SVT24_BUF_1 U1436 ( .A(n1906), .X(n1908) );
  UDB116SVT24_BUF_1 U1437 ( .A(n1908), .X(n1910) );
  UDB116SVT24_AOI22_1 U1438 ( .A1(\pkt_reg_inst/pkt_reg [62]), .A2(n1014), 
        .B1(SPI_IN[6]), .B2(n956), .X(\pkt_reg_inst/n107 ) );
  UDB116SVT24_ND2_MM_0P75 U1439 ( .A1(counter3[1]), .A2(n1068), .X(n1128) );
  UDB116SVT24_OAI21_0P75 U1440 ( .A1(counter3[1]), .A2(n1070), .B(n1069), .X(
        n1125) );
  UDB116SVT24_OA2BB2_0P75 U1441 ( .A1(n1128), .A2(n1129), .B1(n1129), .B2(
        n1125), .X(n845) );
  UDB116SVT24_BUF_1 U1442 ( .A(n1071), .X(n1144) );
  UDB116SVT24_INV_0P75 U1443 ( .A(n1144), .X(n1177) );
  UDB116SVT24_INV_0P75 U1444 ( .A(SHIFT_OUT[2]), .X(n1079) );
  UDB116SVT24_INV_0P75 U1445 ( .A(SHIFT_OUT[3]), .X(n1077) );
  UDB116SVT24_BUF_1 U1446 ( .A(n1547), .X(n1164) );
  UDB116SVT24_BUF_1 U1447 ( .A(n1164), .X(n1078) );
  UDB116SVT24_OAI22_0P75 U1448 ( .A1(n1177), .A2(n1079), .B1(n1077), .B2(n1078), .X(\shift_buf_inst/n130 ) );
  UDB116SVT24_INV_0P75 U1449 ( .A(n1174), .X(n1182) );
  UDB116SVT24_INV_0P75 U1450 ( .A(SHIFT_OUT[32]), .X(n1829) );
  UDB116SVT24_INV_0P75 U1451 ( .A(SHIFT_OUT[33]), .X(n1826) );
  UDB116SVT24_BUF_1 U1452 ( .A(n1164), .X(n1123) );
  UDB116SVT24_OAI22_0P75 U1453 ( .A1(n1182), .A2(n1829), .B1(n1826), .B2(n1123), .X(\shift_buf_inst/n100 ) );
  UDB116SVT24_NR2_0P75 U1454 ( .A1(n948), .A2(n901), .X(n1122) );
  UDB116SVT24_ND2_MM_0P75 U1455 ( .A1(n902), .A2(n949), .X(n1239) );
  UDB116SVT24_NR2_0P75 U1456 ( .A1(n966), .A2(n1239), .X(n1549) );
  UDB116SVT24_INV_0P75 U1457 ( .A(n897), .X(n1253) );
  UDB116SVT24_NR2_0P75 U1458 ( .A1(\sh_sync_inst/n214 ), .A2(
        \sh_sync_inst/n215 ), .X(n1198) );
  UDB116SVT24_INV_0P75 U1459 ( .A(\sh_sync_inst/n220 ), .X(n1727) );
  UDB116SVT24_INV_0P75 U1460 ( .A(\sh_sync_inst/n219 ), .X(n1232) );
  UDB116SVT24_ND2_MM_0P75 U1461 ( .A1(n1727), .A2(n1232), .X(n1733) );
  UDB116SVT24_AOAI211_0P75 U1462 ( .A1(\sh_sync_inst/n218 ), .A2(n1733), .B(
        \sh_sync_inst/n217 ), .C(\sh_sync_inst/n216 ), .X(n1074) );
  UDB116SVT24_INV_0P75 U1463 ( .A(\sh_sync_inst/n213 ), .X(n1073) );
  UDB116SVT24_NR2_0P75 U1464 ( .A1(\sh_sync_inst/n212 ), .A2(
        \sh_sync_inst/n211 ), .X(n1072) );
  UDB116SVT24_AOAI211_0P75 U1465 ( .A1(n1198), .A2(n1074), .B(n1073), .C(n1072), .X(n1168) );
  UDB116SVT24_INV_0P75 U1466 ( .A(n1168), .X(n1075) );
  UDB116SVT24_ND2_MM_0P75 U1467 ( .A1(n992), .A2(n1549), .X(n1737) );
  UDB116SVT24_OAI21_0P75 U1468 ( .A1(n910), .A2(n1075), .B(n926), .X(n1076) );
  UDB116SVT24_OAI31_1 U1469 ( .A1(n1122), .A2(\sh_sync_inst/n204 ), .A3(n1253), 
        .B(n1076), .X(\sh_sync_inst/n356 ) );
  UDB116SVT24_INV_0P75 U1470 ( .A(SHIFT_OUT[4]), .X(n1147) );
  UDB116SVT24_OAI22_0P75 U1471 ( .A1(n1177), .A2(n1077), .B1(n1147), .B2(n1078), .X(\shift_buf_inst/n129 ) );
  UDB116SVT24_INV_0P75 U1472 ( .A(SHIFT_OUT[0]), .X(n1546) );
  UDB116SVT24_INV_0P75 U1473 ( .A(SHIFT_OUT[1]), .X(n1080) );
  UDB116SVT24_OAI22_0P75 U1474 ( .A1(\sh_sync_inst/n194 ), .A2(n1546), .B1(
        n1080), .B2(n1078), .X(\shift_buf_inst/n132 ) );
  UDB116SVT24_INV_0P75 U1475 ( .A(SHIFT_OUT[45]), .X(n1791) );
  UDB116SVT24_OAI22_0P75 U1476 ( .A1(\sh_sync_inst/n194 ), .A2(n1795), .B1(
        n1791), .B2(n1123), .X(\shift_buf_inst/n88 ) );
  UDB116SVT24_OAI22_0P75 U1477 ( .A1(n1544), .A2(n1080), .B1(n1079), .B2(n1078), .X(\shift_buf_inst/n131 ) );
  UDB116SVT24_INV_0P75 U1478 ( .A(SHIFT_OUT[35]), .X(n1124) );
  UDB116SVT24_INV_0P75 U1479 ( .A(SHIFT_OUT[36]), .X(n1819) );
  UDB116SVT24_OAI22_0P75 U1480 ( .A1(n1182), .A2(n1124), .B1(n1819), .B2(n1123), .X(\shift_buf_inst/n97 ) );
  UDB116SVT24_INV_0P75 U1481 ( .A(\sh_sync_inst/n178 ), .X(n1095) );
  UDB116SVT24_INV_0P75 U1482 ( .A(\sh_sync_inst/intadd_0/B[1] ), .X(n1570) );
  UDB116SVT24_INV_0P75 U1483 ( .A(n945), .X(n1589) );
  UDB116SVT24_INV_0P75 U1484 ( .A(\sh_sync_inst/n180 ), .X(n1108) );
  UDB116SVT24_AOI2222_V2_0P75 U1485 ( .A1(n1095), .A2(n945), .B1(
        \sh_sync_inst/n180 ), .B2(n1570), .C1(n1589), .C2(\sh_sync_inst/n178 ), 
        .D1(\sh_sync_inst/intadd_0/B[1] ), .D2(n1108), .X(n1086) );
  UDB116SVT24_INV_0P75 U1486 ( .A(\sh_sync_inst/n182 ), .X(n1094) );
  UDB116SVT24_INV_0P75 U1487 ( .A(\sh_sync_inst/intadd_0/B[3] ), .X(n1202) );
  UDB116SVT24_INV_0P75 U1488 ( .A(\sh_sync_inst/n186 ), .X(n1099) );
  UDB116SVT24_AOI2222_V2_0P75 U1489 ( .A1(n1094), .A2(n969), .B1(
        \sh_sync_inst/n186 ), .B2(n951), .C1(n1202), .C2(\sh_sync_inst/n182 ), 
        .D1(\sh_sync_inst/intadd_0/B[7] ), .D2(n1099), .X(n1085) );
  UDB116SVT24_INV_0P75 U1490 ( .A(\sh_sync_inst/n191 ), .X(n1096) );
  UDB116SVT24_AOI22_1 U1491 ( .A1(\sh_sync_inst/n191 ), .A2(n1027), .B1(n1025), 
        .B2(n1096), .X(n1082) );
  UDB116SVT24_OAI21_0P75 U1492 ( .A1(n914), .A2(\sh_sync_inst/n190 ), .B(
        \sh_sync_inst/n195 ), .X(n1081) );
  UDB116SVT24_AOI211_0P75 U1493 ( .A1(n914), .A2(\sh_sync_inst/n190 ), .B1(
        n1082), .B2(n1081), .X(n1084) );
  UDB116SVT24_INV_0P75 U1494 ( .A(\sh_sync_inst/n183 ), .X(n1110) );
  UDB116SVT24_INV_0P75 U1495 ( .A(n1016), .X(n1701) );
  UDB116SVT24_INV_0P75 U1496 ( .A(\sh_sync_inst/n184 ), .X(n1093) );
  UDB116SVT24_AOI2222_V2_0P75 U1497 ( .A1(n1110), .A2(n1015), .B1(
        \sh_sync_inst/n184 ), .B2(n962), .C1(n1701), .C2(\sh_sync_inst/n183 ), 
        .D1(n963), .D2(n1093), .X(n1083) );
  UDB116SVT24_ND4_0P75 U1498 ( .A1(n1086), .A2(n1085), .A3(n1084), .A4(n1083), 
        .X(n1120) );
  UDB116SVT24_INV_0P75 U1499 ( .A(\sh_sync_inst/n179 ), .X(n1109) );
  UDB116SVT24_INV_0P75 U1500 ( .A(\sh_sync_inst/n181 ), .X(n1111) );
  UDB116SVT24_AOI2222_V2_0P75 U1501 ( .A1(n1109), .A2(n913), .B1(
        \sh_sync_inst/n181 ), .B2(n877), .C1(n929), .C2(\sh_sync_inst/n179 ), 
        .D1(n941), .D2(n1111), .X(n1091) );
  UDB116SVT24_INV_0P75 U1502 ( .A(\sh_sync_inst/n193 ), .X(n1087) );
  UDB116SVT24_INV_0P75 U1503 ( .A(\sh_sync_inst/n192 ), .X(n1112) );
  UDB116SVT24_AOI2222_V2_0P75 U1504 ( .A1(n1087), .A2(n911), .B1(
        \sh_sync_inst/n192 ), .B2(n879), .C1(n952), .C2(\sh_sync_inst/n193 ), 
        .D1(\sh_sync_inst/intadd_0/B[13] ), .D2(n1112), .X(n1090) );
  UDB116SVT24_INV_0P75 U1505 ( .A(\sh_sync_inst/n188 ), .X(n1098) );
  UDB116SVT24_INV_0P75 U1506 ( .A(n1018), .X(n1283) );
  UDB116SVT24_INV_0P75 U1507 ( .A(\sh_sync_inst/n189 ), .X(n1104) );
  UDB116SVT24_AOI2222_V2_0P75 U1508 ( .A1(n1098), .A2(
        \sh_sync_inst/intadd_0/B[9] ), .B1(\sh_sync_inst/n189 ), .B2(n1283), 
        .C1(n930), .C2(\sh_sync_inst/n188 ), .D1(n1017), .D2(n1104), .X(n1089)
         );
  UDB116SVT24_INV_0P75 U1509 ( .A(\sh_sync_inst/n185 ), .X(n1092) );
  UDB116SVT24_INV_0P75 U1510 ( .A(n1024), .X(n1130) );
  UDB116SVT24_INV_0P75 U1511 ( .A(\sh_sync_inst/n187 ), .X(n1105) );
  UDB116SVT24_AOI2222_V2_0P75 U1512 ( .A1(n1092), .A2(n1024), .B1(
        \sh_sync_inst/n187 ), .B2(n880), .C1(n1130), .C2(\sh_sync_inst/n185 ), 
        .D1(n943), .D2(n1105), .X(n1088) );
  UDB116SVT24_ND4_0P75 U1513 ( .A1(n1091), .A2(n1090), .A3(n1089), .A4(n1088), 
        .X(n1119) );
  UDB116SVT24_AOI2222_V2_0P75 U1514 ( .A1(n1093), .A2(n1016), .B1(
        \sh_sync_inst/n185 ), .B2(n928), .C1(n1701), .C2(\sh_sync_inst/n184 ), 
        .D1(n964), .D2(n1092), .X(n1103) );
  UDB116SVT24_AOI2222_V2_0P75 U1515 ( .A1(n1095), .A2(\sh_sync_inst/n202 ), 
        .B1(\sh_sync_inst/n182 ), .B2(n877), .C1(n953), .C2(
        \sh_sync_inst/n178 ), .D1(n941), .D2(n1094), .X(n1102) );
  UDB116SVT24_INV_0P75 U1516 ( .A(\sh_sync_inst/n190 ), .X(n1097) );
  UDB116SVT24_AOI2222_V2_0P75 U1517 ( .A1(n1097), .A2(n1018), .B1(
        \sh_sync_inst/n191 ), .B2(n927), .C1(n1283), .C2(n870), .D1(n915), 
        .D2(n1096), .X(n1101) );
  UDB116SVT24_AOI2222_V2_0P75 U1518 ( .A1(n1099), .A2(n1023), .B1(
        \sh_sync_inst/n188 ), .B2(n880), .C1(n1130), .C2(\sh_sync_inst/n186 ), 
        .D1(n943), .D2(n1098), .X(n1100) );
  UDB116SVT24_ND4_0P75 U1519 ( .A1(n1103), .A2(n1102), .A3(n1101), .A4(n1100), 
        .X(n1118) );
  UDB116SVT24_AOI22_1 U1520 ( .A1(\sh_sync_inst/n189 ), .A2(n904), .B1(n930), 
        .B2(n1104), .X(n1107) );
  UDB116SVT24_AOI22_1 U1521 ( .A1(\sh_sync_inst/n187 ), .A2(
        \sh_sync_inst/intadd_0/B[7] ), .B1(n950), .B2(n1105), .X(n1106) );
  UDB116SVT24_NR4_0P75 U1522 ( .A1(n1107), .A2(\sh_sync_inst/n195 ), .A3(n1106), .A4(n878), .X(n1116) );
  UDB116SVT24_AOI2222_V2_0P75 U1523 ( .A1(n1109), .A2(n945), .B1(
        \sh_sync_inst/n180 ), .B2(n929), .C1(n1589), .C2(\sh_sync_inst/n179 ), 
        .D1(n913), .D2(n1108), .X(n1115) );
  UDB116SVT24_AOI2222_V2_0P75 U1524 ( .A1(n1111), .A2(n867), .B1(
        \sh_sync_inst/n183 ), .B2(n1202), .C1(n1570), .C2(\sh_sync_inst/n181 ), 
        .D1(n969), .D2(n1110), .X(n1114) );
  UDB116SVT24_AOI22_1 U1525 ( .A1(\sh_sync_inst/n192 ), .A2(n1025), .B1(n1026), 
        .B2(n1112), .X(n1113) );
  UDB116SVT24_ND4_0P75 U1526 ( .A1(n1116), .A2(n1115), .A3(n1114), .A4(n1113), 
        .X(n1117) );
  UDB116SVT24_OA22_1 U1527 ( .A1(n1120), .A2(n1119), .B1(n1118), .B2(n1117), 
        .X(n1244) );
  UDB116SVT24_NR2_0P75 U1528 ( .A1(n1239), .A2(\sh_sync_inst/n228 ), .X(n1245)
         );
  UDB116SVT24_INV_0P75 U1529 ( .A(n1245), .X(n1196) );
  UDB116SVT24_NR2_0P75 U1530 ( .A1(n1244), .A2(n1196), .X(n1134) );
  UDB116SVT24_INV_0P75 U1531 ( .A(\sh_sync_inst/n232 ), .X(n1259) );
  UDB116SVT24_INV_0P75 U1532 ( .A(\sh_sync_inst/n231 ), .X(n1263) );
  UDB116SVT24_NR2_0P75 U1533 ( .A1(n1259), .A2(n1263), .X(n1121) );
  UDB116SVT24_ND4_0P75 U1534 ( .A1(\sh_sync_inst/n233 ), .A2(
        \sh_sync_inst/n230 ), .A3(\sh_sync_inst/n234 ), .A4(n1121), .X(n1170)
         );
  UDB116SVT24_ND2B_0P75 U1535 ( .A(\sh_sync_inst/n229 ), .B(n1170), .X(n1241)
         );
  UDB116SVT24_INV_0P75 U1536 ( .A(n1122), .X(n1320) );
  UDB116SVT24_OAI21_0P75 U1537 ( .A1(n965), .A2(n1320), .B(n992), .X(n1195) );
  UDB116SVT24_INV_0P75 U1538 ( .A(n1195), .X(n1204) );
  UDB116SVT24_AOAI211_0P75 U1539 ( .A1(n1134), .A2(n865), .B(
        \sh_sync_inst/n195 ), .C(n1204), .X(\sh_sync_inst/n355 ) );
  UDB116SVT24_INV_0P75 U1540 ( .A(SHIFT_OUT[34]), .X(n1824) );
  UDB116SVT24_OAI22_0P75 U1541 ( .A1(n1182), .A2(n1824), .B1(n1124), .B2(n1123), .X(\shift_buf_inst/n98 ) );
  UDB116SVT24_AOI31_0P75 U1542 ( .A1(\sh_sync_inst/n228 ), .A2(
        \sh_sync_inst/n244 ), .A3(\sh_sync_inst/rfin_edge ), .B(n1195), .X(
        n1203) );
  UDB116SVT24_AOI21_0P75 U1543 ( .A1(\sh_sync_inst/n203 ), .A2(n926), .B(n1203), .X(n1194) );
  UDB116SVT24_AOI21_0P75 U1544 ( .A1(n1203), .A2(\sh_sync_inst/n203 ), .B(
        n1194), .X(\sh_sync_inst/n307 ) );
  UDB116SVT24_AOAI211_0P75 U1545 ( .A1(n1126), .A2(n1129), .B(n1125), .C(
        counter3[3]), .X(n1127) );
  UDB116SVT24_OAI31_1 U1546 ( .A1(counter3[3]), .A2(n1129), .A3(n1128), .B(
        n1127), .X(n851) );
  UDB116SVT24_NR3_0P75 U1547 ( .A1(\sh_sync_inst/n203 ), .A2(n1203), .A3(n985), 
        .X(n1193) );
  UDB116SVT24_OA2BB2_0P75 U1548 ( .A1(n1194), .A2(n881), .B1(n882), .B2(n1193), 
        .X(\sh_sync_inst/n304 ) );
  UDB116SVT24_ND4_0P75 U1549 ( .A1(n952), .A2(n1570), .A3(n929), .A4(n1589), 
        .X(n1697) );
  UDB116SVT24_ND4_0P75 U1550 ( .A1(\sh_sync_inst/intadd_0/B[12] ), .A2(
        \sh_sync_inst/intadd_0/B[13] ), .A3(\sh_sync_inst/intadd_0/B[2] ), 
        .A4(n1130), .X(n1133) );
  UDB116SVT24_ND4_0P75 U1551 ( .A1(\sh_sync_inst/intadd_0/B[9] ), .A2(n1017), 
        .A3(n880), .A4(n951), .X(n1132) );
  UDB116SVT24_ND4_0P75 U1552 ( .A1(n963), .A2(n1015), .A3(n968), .A4(n927), 
        .X(n1131) );
  UDB116SVT24_NR4_0P75 U1553 ( .A1(n1697), .A2(n1133), .A3(n1132), .A4(n1131), 
        .X(n1243) );
  UDB116SVT24_NR3_0P75 U1554 ( .A1(n965), .A2(\sh_sync_inst/n205 ), .A3(
        \sh_sync_inst/n244 ), .X(n1246) );
  UDB116SVT24_AOI21_0P75 U1555 ( .A1(n1243), .A2(n857), .B(n1134), .X(n1138)
         );
  UDB116SVT24_AOI31_0P75 U1556 ( .A1(n949), .A2(n865), .A3(n966), .B(n901), 
        .X(n1135) );
  UDB116SVT24_OAI21_0P75 U1557 ( .A1(n948), .A2(n965), .B(n1135), .X(n1137) );
  UDB116SVT24_OAI21_0P75 U1558 ( .A1(sh_en), .A2(n1137), .B(n994), .X(n1136)
         );
  UDB116SVT24_AOI21_0P75 U1559 ( .A1(n1138), .A2(n1137), .B(n1136), .X(
        \sh_sync_inst/n338 ) );
  UDB116SVT24_INV_0P75 U1560 ( .A(n1144), .X(n1161) );
  UDB116SVT24_INV_0P75 U1561 ( .A(SHIFT_OUT[13]), .X(n1888) );
  UDB116SVT24_INV_0P75 U1562 ( .A(SHIFT_OUT[14]), .X(n1885) );
  UDB116SVT24_BUF_1 U1563 ( .A(n1738), .X(n1150) );
  UDB116SVT24_BUF_1 U1564 ( .A(n1150), .X(n1160) );
  UDB116SVT24_OAI22_0P75 U1565 ( .A1(n1161), .A2(n1888), .B1(n1885), .B2(n1160), .X(\shift_buf_inst/n119 ) );
  UDB116SVT24_INV_0P75 U1566 ( .A(sh_en), .X(n1140) );
  UDB116SVT24_INV_0P75 U1567 ( .A(SHIFT_OUT[59]), .X(n1751) );
  UDB116SVT24_INV_0P75 U1568 ( .A(SHIFT_OUT[60]), .X(n1748) );
  UDB116SVT24_BUF_1 U1569 ( .A(n1164), .X(n1142) );
  UDB116SVT24_BUF_1 U1570 ( .A(n1142), .X(n1139) );
  UDB116SVT24_OAI22_0P75 U1571 ( .A1(n1140), .A2(n1751), .B1(n1748), .B2(n1139), .X(\shift_buf_inst/n73 ) );
  UDB116SVT24_INV_0P75 U1572 ( .A(SHIFT_OUT[61]), .X(n1745) );
  UDB116SVT24_OAI22_0P75 U1573 ( .A1(n1739), .A2(n1748), .B1(n1745), .B2(n1139), .X(\shift_buf_inst/n72 ) );
  UDB116SVT24_OAI22_0P75 U1574 ( .A1(n1739), .A2(n1745), .B1(n1743), .B2(n1139), .X(\shift_buf_inst/n71 ) );
  UDB116SVT24_INV_0P75 U1575 ( .A(SHIFT_OUT[58]), .X(n1753) );
  UDB116SVT24_OAI22_0P75 U1576 ( .A1(n1140), .A2(n1753), .B1(n1751), .B2(n1139), .X(\shift_buf_inst/n74 ) );
  UDB116SVT24_INV_0P75 U1577 ( .A(SHIFT_OUT[57]), .X(n1756) );
  UDB116SVT24_BUF_1 U1578 ( .A(n1142), .X(n1141) );
  UDB116SVT24_OAI22_0P75 U1579 ( .A1(n1140), .A2(n1756), .B1(n1753), .B2(n1141), .X(\shift_buf_inst/n75 ) );
  UDB116SVT24_INV_0P75 U1580 ( .A(SHIFT_OUT[56]), .X(n1759) );
  UDB116SVT24_OAI22_0P75 U1581 ( .A1(n1140), .A2(n1759), .B1(n1756), .B2(n1141), .X(\shift_buf_inst/n76 ) );
  UDB116SVT24_INV_0P75 U1582 ( .A(n1144), .X(n1143) );
  UDB116SVT24_INV_0P75 U1583 ( .A(SHIFT_OUT[55]), .X(n1762) );
  UDB116SVT24_OAI22_0P75 U1584 ( .A1(n1143), .A2(n1762), .B1(n1759), .B2(n1141), .X(\shift_buf_inst/n77 ) );
  UDB116SVT24_INV_0P75 U1585 ( .A(SHIFT_OUT[54]), .X(n1764) );
  UDB116SVT24_OAI22_0P75 U1586 ( .A1(n1143), .A2(n1764), .B1(n1762), .B2(n1141), .X(\shift_buf_inst/n78 ) );
  UDB116SVT24_INV_0P75 U1587 ( .A(SHIFT_OUT[53]), .X(n1767) );
  UDB116SVT24_BUF_1 U1588 ( .A(n1142), .X(n1145) );
  UDB116SVT24_OAI22_0P75 U1589 ( .A1(n1143), .A2(n1767), .B1(n1764), .B2(n1145), .X(\shift_buf_inst/n79 ) );
  UDB116SVT24_INV_0P75 U1590 ( .A(SHIFT_OUT[52]), .X(n1770) );
  UDB116SVT24_OAI22_0P75 U1591 ( .A1(n1143), .A2(n1770), .B1(n1767), .B2(n1145), .X(\shift_buf_inst/n80 ) );
  UDB116SVT24_INV_0P75 U1592 ( .A(n1144), .X(n1179) );
  UDB116SVT24_INV_0P75 U1593 ( .A(SHIFT_OUT[51]), .X(n1773) );
  UDB116SVT24_OAI22_0P75 U1594 ( .A1(n1179), .A2(n1773), .B1(n1770), .B2(n1145), .X(\shift_buf_inst/n81 ) );
  UDB116SVT24_INV_0P75 U1595 ( .A(SHIFT_OUT[50]), .X(n1775) );
  UDB116SVT24_OAI22_0P75 U1596 ( .A1(n1179), .A2(n1775), .B1(n1773), .B2(n1145), .X(\shift_buf_inst/n82 ) );
  UDB116SVT24_INV_0P75 U1597 ( .A(n1146), .X(n1180) );
  UDB116SVT24_BUF_1 U1598 ( .A(n1738), .X(n1158) );
  UDB116SVT24_BUF_1 U1599 ( .A(n1158), .X(n1153) );
  UDB116SVT24_OAI22_0P75 U1600 ( .A1(n1180), .A2(n1800), .B1(n1798), .B2(n1153), .X(\shift_buf_inst/n90 ) );
  UDB116SVT24_BUF_1 U1601 ( .A(n1146), .X(n1156) );
  UDB116SVT24_INV_0P75 U1602 ( .A(n1156), .X(n1157) );
  UDB116SVT24_INV_0P75 U1603 ( .A(SHIFT_OUT[9]), .X(n1901) );
  UDB116SVT24_INV_0P75 U1604 ( .A(SHIFT_OUT[10]), .X(n1898) );
  UDB116SVT24_BUF_1 U1605 ( .A(n1150), .X(n1159) );
  UDB116SVT24_OAI22_0P75 U1606 ( .A1(n1157), .A2(n1901), .B1(n1898), .B2(n1159), .X(\shift_buf_inst/n123 ) );
  UDB116SVT24_INV_0P75 U1607 ( .A(n1156), .X(n1183) );
  UDB116SVT24_INV_0P75 U1608 ( .A(SHIFT_OUT[5]), .X(n1149) );
  UDB116SVT24_OAI22_0P75 U1609 ( .A1(n1183), .A2(n1147), .B1(n1149), .B2(n1153), .X(\shift_buf_inst/n128 ) );
  UDB116SVT24_INV_0P75 U1610 ( .A(n1156), .X(n1154) );
  UDB116SVT24_OAI22_0P75 U1611 ( .A1(n1154), .A2(n1149), .B1(n1148), .B2(n1158), .X(\shift_buf_inst/n127 ) );
  UDB116SVT24_INV_0P75 U1612 ( .A(SHIFT_OUT[8]), .X(n1904) );
  UDB116SVT24_BUF_1 U1613 ( .A(n1150), .X(n1155) );
  UDB116SVT24_OAI22_0P75 U1614 ( .A1(n1152), .A2(n1151), .B1(n1904), .B2(n1155), .X(\shift_buf_inst/n125 ) );
  UDB116SVT24_INV_0P75 U1615 ( .A(SHIFT_OUT[46]), .X(n1788) );
  UDB116SVT24_OAI22_0P75 U1616 ( .A1(n1154), .A2(n1791), .B1(n1788), .B2(n1142), .X(\shift_buf_inst/n87 ) );
  UDB116SVT24_OAI22_0P75 U1617 ( .A1(n1183), .A2(n1798), .B1(n1795), .B2(n1160), .X(\shift_buf_inst/n89 ) );
  UDB116SVT24_OAI22_0P75 U1618 ( .A1(n1152), .A2(n1904), .B1(n1901), .B2(n1155), .X(\shift_buf_inst/n124 ) );
  UDB116SVT24_OAI22_0P75 U1619 ( .A1(n1161), .A2(n1803), .B1(n1800), .B2(n1160), .X(\shift_buf_inst/n91 ) );
  UDB116SVT24_OAI22_0P75 U1620 ( .A1(n1183), .A2(n1807), .B1(n1803), .B2(n1153), .X(\shift_buf_inst/n92 ) );
  UDB116SVT24_OAI22_0P75 U1621 ( .A1(n1152), .A2(n1810), .B1(n1807), .B2(n1155), .X(\shift_buf_inst/n93 ) );
  UDB116SVT24_OAI22_0P75 U1622 ( .A1(n1154), .A2(n1812), .B1(n1810), .B2(n1153), .X(\shift_buf_inst/n94 ) );
  UDB116SVT24_INV_0P75 U1623 ( .A(SHIFT_OUT[12]), .X(n1891) );
  UDB116SVT24_OAI22_0P75 U1624 ( .A1(n1157), .A2(n1891), .B1(n1888), .B2(n1159), .X(\shift_buf_inst/n120 ) );
  UDB116SVT24_INV_0P75 U1625 ( .A(SHIFT_OUT[37]), .X(n1815) );
  UDB116SVT24_OAI22_0P75 U1626 ( .A1(n1154), .A2(n1819), .B1(n1815), .B2(n1158), .X(\shift_buf_inst/n96 ) );
  UDB116SVT24_INV_0P75 U1627 ( .A(SHIFT_OUT[11]), .X(n1894) );
  UDB116SVT24_OAI22_0P75 U1628 ( .A1(n1157), .A2(n1898), .B1(n1894), .B2(n1155), .X(\shift_buf_inst/n122 ) );
  UDB116SVT24_INV_0P75 U1629 ( .A(n1156), .X(n1162) );
  UDB116SVT24_INV_0P75 U1630 ( .A(SHIFT_OUT[16]), .X(n1877) );
  UDB116SVT24_INV_0P75 U1631 ( .A(SHIFT_OUT[17]), .X(n1875) );
  UDB116SVT24_OAI22_0P75 U1632 ( .A1(n1162), .A2(n1877), .B1(n1875), .B2(n1150), .X(\shift_buf_inst/n116 ) );
  UDB116SVT24_OAI22_0P75 U1633 ( .A1(n1157), .A2(n1894), .B1(n1891), .B2(n1159), .X(\shift_buf_inst/n121 ) );
  UDB116SVT24_INV_0P75 U1634 ( .A(SHIFT_OUT[18]), .X(n1872) );
  UDB116SVT24_INV_0P75 U1635 ( .A(SHIFT_OUT[19]), .X(n1869) );
  UDB116SVT24_BUF_1 U1636 ( .A(n1158), .X(n1163) );
  UDB116SVT24_OAI22_0P75 U1637 ( .A1(n1162), .A2(n1872), .B1(n1869), .B2(n1163), .X(\shift_buf_inst/n114 ) );
  UDB116SVT24_INV_0P75 U1638 ( .A(SHIFT_OUT[15]), .X(n1880) );
  UDB116SVT24_OAI22_0P75 U1639 ( .A1(n1161), .A2(n1885), .B1(n1880), .B2(n1159), .X(\shift_buf_inst/n118 ) );
  UDB116SVT24_OAI22_0P75 U1640 ( .A1(n1161), .A2(n1880), .B1(n1877), .B2(n1160), .X(\shift_buf_inst/n117 ) );
  UDB116SVT24_INV_0P75 U1641 ( .A(SHIFT_OUT[20]), .X(n1866) );
  UDB116SVT24_OAI22_0P75 U1642 ( .A1(n1162), .A2(n1869), .B1(n1866), .B2(n1163), .X(\shift_buf_inst/n113 ) );
  UDB116SVT24_OAI22_0P75 U1643 ( .A1(n1162), .A2(n1875), .B1(n1872), .B2(n1163), .X(\shift_buf_inst/n115 ) );
  UDB116SVT24_INV_0P75 U1644 ( .A(n1174), .X(n1173) );
  UDB116SVT24_INV_0P75 U1645 ( .A(SHIFT_OUT[21]), .X(n1863) );
  UDB116SVT24_OAI22_0P75 U1646 ( .A1(n1173), .A2(n1866), .B1(n1863), .B2(n1163), .X(\shift_buf_inst/n112 ) );
  UDB116SVT24_INV_0P75 U1647 ( .A(SHIFT_OUT[29]), .X(n1838) );
  UDB116SVT24_INV_0P75 U1648 ( .A(SHIFT_OUT[30]), .X(n1835) );
  UDB116SVT24_BUF_1 U1649 ( .A(n1164), .X(n1176) );
  UDB116SVT24_BUF_1 U1650 ( .A(n1176), .X(n1175) );
  UDB116SVT24_OAI22_0P75 U1651 ( .A1(n1173), .A2(n1838), .B1(n1835), .B2(n1175), .X(\shift_buf_inst/n103 ) );
  UDB116SVT24_INV_0P75 U1652 ( .A(SHIFT_OUT[47]), .X(n1786) );
  UDB116SVT24_INV_0P75 U1653 ( .A(SHIFT_OUT[48]), .X(n1781) );
  UDB116SVT24_BUF_1 U1654 ( .A(n1176), .X(n1178) );
  UDB116SVT24_OAI22_0P75 U1655 ( .A1(n1177), .A2(n1786), .B1(n1781), .B2(n1178), .X(\shift_buf_inst/n85 ) );
  UDB116SVT24_INV_0P75 U1656 ( .A(\sh_sync_inst/n248 ), .X(n1610) );
  UDB116SVT24_INV_0P75 U1657 ( .A(\sh_sync_inst/n246 ), .X(n1603) );
  UDB116SVT24_NR4_0P75 U1658 ( .A1(\sh_sync_inst/n247 ), .A2(
        \sh_sync_inst/n250 ), .A3(n1610), .A4(n1603), .X(n1165) );
  UDB116SVT24_ND4_0P75 U1659 ( .A1(\sh_sync_inst/n251 ), .A2(
        \sh_sync_inst/n245 ), .A3(\sh_sync_inst/n249 ), .A4(n1165), .X(n1167)
         );
  UDB116SVT24_INV_0P75 U1660 ( .A(n892), .X(n1571) );
  UDB116SVT24_NR2_0P75 U1661 ( .A1(\sh_sync_inst/n253 ), .A2(n1571), .X(n1166)
         );
  UDB116SVT24_AOI31_0P75 U1662 ( .A1(n937), .A2(n857), .A3(n1167), .B(n1166), 
        .X(n1192) );
  UDB116SVT24_INV_0P75 U1663 ( .A(\sh_sync_inst/n206 ), .X(n1600) );
  UDB116SVT24_AN3B_0P75 U1664 ( .B1(\sh_sync_inst/n207 ), .B2(
        \sh_sync_inst/n203 ), .A(n881), .X(n1205) );
  UDB116SVT24_ND2_MM_0P75 U1665 ( .A1(n1600), .A2(n1205), .X(n1736) );
  UDB116SVT24_ND2_MM_0P75 U1666 ( .A1(n925), .A2(n1168), .X(n1197) );
  UDB116SVT24_NR2B_0P75 U1667 ( .A(n1736), .B(n1197), .X(n1189) );
  UDB116SVT24_NR3_0P75 U1668 ( .A1(\sh_sync_inst/n226 ), .A2(n1932), .A3(n1320), .X(n1169) );
  UDB116SVT24_AOI22_1 U1669 ( .A1(RX), .A2(n1189), .B1(\sh_sync_inst/n225 ), 
        .B2(n1169), .X(n1172) );
  UDB116SVT24_NR3_0P75 U1670 ( .A1(\sh_sync_inst/n229 ), .A2(
        \sh_sync_inst/n235 ), .A3(n1170), .X(n1187) );
  UDB116SVT24_ND2_MM_0P75 U1671 ( .A1(n992), .A2(n966), .X(n1240) );
  UDB116SVT24_OAOI211_0P75 U1672 ( .A1(n1187), .A2(n1188), .B(n949), .C(n1240), 
        .X(n1171) );
  UDB116SVT24_ND2_MM_0P75 U1673 ( .A1(\sh_sync_inst/n244 ), .A2(n1171), .X(
        n1735) );
  UDB116SVT24_ND3_0P75 U1674 ( .A1(n1192), .A2(n1172), .A3(n1735), .X(
        \sh_sync_inst/N29 ) );
  UDB116SVT24_INV_0P75 U1675 ( .A(SHIFT_OUT[28]), .X(n1840) );
  UDB116SVT24_BUF_1 U1676 ( .A(n1176), .X(n1181) );
  UDB116SVT24_OAI22_0P75 U1677 ( .A1(n1180), .A2(n1840), .B1(n1838), .B2(n1181), .X(\shift_buf_inst/n104 ) );
  UDB116SVT24_INV_0P75 U1678 ( .A(SHIFT_OUT[22]), .X(n1860) );
  UDB116SVT24_OAI22_0P75 U1679 ( .A1(n1173), .A2(n1863), .B1(n1860), .B2(n1175), .X(\shift_buf_inst/n111 ) );
  UDB116SVT24_INV_0P75 U1680 ( .A(SHIFT_OUT[23]), .X(n1855) );
  UDB116SVT24_OAI22_0P75 U1681 ( .A1(n1173), .A2(n1860), .B1(n1855), .B2(n1175), .X(\shift_buf_inst/n110 ) );
  UDB116SVT24_INV_0P75 U1682 ( .A(n1174), .X(n1185) );
  UDB116SVT24_INV_0P75 U1683 ( .A(SHIFT_OUT[24]), .X(n1852) );
  UDB116SVT24_INV_0P75 U1684 ( .A(SHIFT_OUT[25]), .X(n1850) );
  UDB116SVT24_OAI22_0P75 U1685 ( .A1(n1185), .A2(n1852), .B1(n1850), .B2(n1175), .X(\shift_buf_inst/n108 ) );
  UDB116SVT24_INV_0P75 U1686 ( .A(SHIFT_OUT[26]), .X(n1847) );
  UDB116SVT24_BUF_1 U1687 ( .A(n1176), .X(n1184) );
  UDB116SVT24_OAI22_0P75 U1688 ( .A1(n1185), .A2(n1850), .B1(n1847), .B2(n1184), .X(\shift_buf_inst/n107 ) );
  UDB116SVT24_INV_0P75 U1689 ( .A(SHIFT_OUT[27]), .X(n1843) );
  UDB116SVT24_OAI22_0P75 U1690 ( .A1(n1185), .A2(n1847), .B1(n1843), .B2(n1184), .X(\shift_buf_inst/n106 ) );
  UDB116SVT24_INV_0P75 U1691 ( .A(SHIFT_OUT[31]), .X(n1832) );
  UDB116SVT24_OAI22_0P75 U1692 ( .A1(n1180), .A2(n1835), .B1(n1832), .B2(n1181), .X(\shift_buf_inst/n102 ) );
  UDB116SVT24_OAI22_0P75 U1693 ( .A1(n1177), .A2(n1788), .B1(n1786), .B2(n1178), .X(\shift_buf_inst/n86 ) );
  UDB116SVT24_INV_0P75 U1694 ( .A(SHIFT_OUT[49]), .X(n1778) );
  UDB116SVT24_OAI22_0P75 U1695 ( .A1(n1179), .A2(n1778), .B1(n1775), .B2(n1178), .X(\shift_buf_inst/n83 ) );
  UDB116SVT24_OAI22_0P75 U1696 ( .A1(n1179), .A2(n1781), .B1(n1778), .B2(n1178), .X(\shift_buf_inst/n84 ) );
  UDB116SVT24_OAI22_0P75 U1697 ( .A1(n1180), .A2(n1826), .B1(n1824), .B2(n1181), .X(\shift_buf_inst/n99 ) );
  UDB116SVT24_OAI22_0P75 U1698 ( .A1(n1182), .A2(n1832), .B1(n1829), .B2(n1181), .X(\shift_buf_inst/n101 ) );
  UDB116SVT24_OAI22_0P75 U1699 ( .A1(n1183), .A2(n1815), .B1(n1812), .B2(n1184), .X(\shift_buf_inst/n95 ) );
  UDB116SVT24_OAI22_0P75 U1700 ( .A1(n1185), .A2(n1843), .B1(n1840), .B2(n1184), .X(\shift_buf_inst/n105 ) );
  UDB116SVT24_OAI22_0P75 U1701 ( .A1(n1187), .A2(n1196), .B1(n966), .B2(n948), 
        .X(n1190) );
  UDB116SVT24_AOI22_1 U1702 ( .A1(n938), .A2(n1190), .B1(n1189), .B2(n1188), 
        .X(n1191) );
  UDB116SVT24_ND2_MM_0P75 U1703 ( .A1(n1192), .A2(n1191), .X(
        \sh_sync_inst/N31 ) );
  UDB116SVT24_ND2_MM_0P75 U1704 ( .A1(n1193), .A2(n881), .X(n1599) );
  UDB116SVT24_OAI21_0P75 U1705 ( .A1(n882), .A2(n982), .B(n1194), .X(n1597) );
  UDB116SVT24_OA2BB2_0P75 U1706 ( .A1(n1001), .A2(n1599), .B1(n1597), .B2(
        \sh_sync_inst/n207 ), .X(\sh_sync_inst/n305 ) );
  UDB116SVT24_AOI21_0P75 U1707 ( .A1(n1246), .A2(n1243), .B(n1195), .X(n1221)
         );
  UDB116SVT24_OR3B_0P75 U1708 ( .B1(n986), .B2(n1221), .A(n1246), .X(n1609) );
  UDB116SVT24_OA2BB2_0P75 U1709 ( .A1(n1010), .A2(n1609), .B1(n858), .B2(n1010), .X(\sh_sync_inst/n337 ) );
  UDB116SVT24_AOAI211_0P75 U1710 ( .A1(n1241), .A2(n1244), .B(n1196), .C(n1204), .X(n1217) );
  UDB116SVT24_ND4_0P75 U1711 ( .A1(n1245), .A2(n1241), .A3(n1217), .A4(n994), 
        .X(n1262) );
  UDB116SVT24_INV_0P75 U1712 ( .A(n1217), .X(n1264) );
  UDB116SVT24_OA2BB2_0P75 U1713 ( .A1(n1003), .A2(n1265), .B1(n1264), .B2(
        n1003), .X(\sh_sync_inst/n330 ) );
  UDB116SVT24_INV_0P75 U1714 ( .A(\sh_sync_inst/n224 ), .X(n1199) );
  UDB116SVT24_OR3B_0P75 U1715 ( .B1(\sh_sync_inst/n222 ), .B2(
        \sh_sync_inst/n223 ), .A(n1199), .X(n1208) );
  UDB116SVT24_NR2_0P75 U1716 ( .A1(n1208), .A2(\sh_sync_inst/n221 ), .X(n1230)
         );
  UDB116SVT24_AN4B_1 U1717 ( .B1(n1727), .B2(n1232), .B3(n1230), .A(
        \sh_sync_inst/n218 ), .X(n1617) );
  UDB116SVT24_INV_0P75 U1718 ( .A(\sh_sync_inst/n217 ), .X(n1616) );
  UDB116SVT24_ND2_MM_0P75 U1719 ( .A1(n1617), .A2(n1616), .X(n1255) );
  UDB116SVT24_NR2_0P75 U1720 ( .A1(\sh_sync_inst/n216 ), .A2(n1255), .X(n1225)
         );
  UDB116SVT24_ND2_MM_0P75 U1721 ( .A1(n1198), .A2(n1225), .X(n1216) );
  UDB116SVT24_AOI21_0P75 U1722 ( .A1(n1029), .A2(n1216), .B(n898), .X(n1614)
         );
  UDB116SVT24_ND2_MM_0P75 U1723 ( .A1(\sh_sync_inst/n213 ), .A2(n1030), .X(
        n1612) );
  UDB116SVT24_OAI22_0P75 U1724 ( .A1(\sh_sync_inst/n213 ), .A2(n1614), .B1(
        n1612), .B2(n1216), .X(\sh_sync_inst/n343 ) );
  UDB116SVT24_INV_0P75 U1725 ( .A(n1028), .X(n1257) );
  UDB116SVT24_AOI22_1 U1726 ( .A1(\sh_sync_inst/n224 ), .A2(n1257), .B1(n1253), 
        .B2(n1199), .X(\sh_sync_inst/n354 ) );
  UDB116SVT24_INV_0P75 U1727 ( .A(n1225), .X(n1200) );
  UDB116SVT24_AOI21_0P75 U1728 ( .A1(n1200), .A2(n1030), .B(n897), .X(n1226)
         );
  UDB116SVT24_ND2_MM_0P75 U1729 ( .A1(\sh_sync_inst/n215 ), .A2(n1031), .X(
        n1201) );
  UDB116SVT24_OAI22_0P75 U1730 ( .A1(n869), .A2(n1226), .B1(n1201), .B2(n1200), 
        .X(\sh_sync_inst/n345 ) );
  UDB116SVT24_AOI21_0P75 U1731 ( .A1(\sh_sync_inst/n224 ), .A2(n1031), .B(n898), .X(n1212) );
  UDB116SVT24_ND2_MM_0P75 U1732 ( .A1(n1029), .A2(\sh_sync_inst/n223 ), .X(
        n1211) );
  UDB116SVT24_OAI22_0P75 U1733 ( .A1(\sh_sync_inst/n223 ), .A2(n1212), .B1(
        \sh_sync_inst/n224 ), .B2(n1211), .X(\sh_sync_inst/n353 ) );
  UDB116SVT24_INV_0P75 U1734 ( .A(\sh_sync_inst/intadd_0/A[4] ), .X(n1503) );
  UDB116SVT24_NR2_0P75 U1735 ( .A1(\sh_sync_inst/intadd_0/A[3] ), .A2(n968), 
        .X(n1714) );
  UDB116SVT24_NR2_0P75 U1736 ( .A1(\sh_sync_inst/n177 ), .A2(n911), .X(n1590)
         );
  UDB116SVT24_INV_0P75 U1737 ( .A(n1590), .X(n1591) );
  UDB116SVT24_MAJ3_0P75 U1738 ( .A1(\sh_sync_inst/n176 ), .A2(
        \sh_sync_inst/n201 ), .A3(n1591), .X(n1723) );
  UDB116SVT24_MAJ3_0P75 U1739 ( .A1(\sh_sync_inst/intadd_0/B[0] ), .A2(
        \sh_sync_inst/intadd_0/A[0] ), .A3(n1723), .X(n1284) );
  UDB116SVT24_MAJI3_1 U1740 ( .A1(\sh_sync_inst/intadd_0/A[2] ), .A2(
        \sh_sync_inst/intadd_0/B[2] ), .A3(n1286), .X(n1716) );
  UDB116SVT24_INV_0P75 U1741 ( .A(\sh_sync_inst/intadd_0/A[3] ), .X(n1510) );
  UDB116SVT24_OAI22_0P75 U1742 ( .A1(n1714), .A2(n1716), .B1(n1510), .B2(n1202), .X(n1270) );
  UDB116SVT24_AOI31_0P75 U1743 ( .A1(n1205), .A2(\sh_sync_inst/n206 ), .A3(
        n1204), .B(n1203), .X(n1271) );
  UDB116SVT24_INV_0P75 U1744 ( .A(n1271), .X(n1297) );
  UDB116SVT24_INV_0P75 U1745 ( .A(n1297), .X(n1672) );
  UDB116SVT24_AOI21_0P75 U1746 ( .A1(n1271), .A2(n1207), .B(n1503), .X(n1206)
         );
  UDB116SVT24_AOAOI2111_0P75 U1747 ( .A1(n1503), .A2(n1207), .B(n984), .C(
        n1672), .D(n1206), .X(\sh_sync_inst/n297 ) );
  UDB116SVT24_AOI21_0P75 U1748 ( .A1(n1030), .A2(n1208), .B(n897), .X(n1728)
         );
  UDB116SVT24_ND2_MM_0P75 U1749 ( .A1(n1028), .A2(\sh_sync_inst/n221 ), .X(
        n1726) );
  UDB116SVT24_OAI22_0P75 U1750 ( .A1(\sh_sync_inst/n221 ), .A2(n1728), .B1(
        n1726), .B2(n1208), .X(\sh_sync_inst/n351 ) );
  UDB116SVT24_AOI21_0P75 U1751 ( .A1(\sh_sync_inst/n251 ), .A2(n972), .B(n858), 
        .X(n1604) );
  UDB116SVT24_ND2_MM_0P75 U1752 ( .A1(\sh_sync_inst/n245 ), .A2(n971), .X(
        n1602) );
  UDB116SVT24_OAI22_0P75 U1753 ( .A1(\sh_sync_inst/n245 ), .A2(n1604), .B1(
        n1010), .B2(n1602), .X(\sh_sync_inst/n331 ) );
  UDB116SVT24_NR2_0P75 U1754 ( .A1(n868), .A2(\sh_sync_inst/n223 ), .X(n1209)
         );
  UDB116SVT24_ND3_0P75 U1755 ( .A1(n1029), .A2(\sh_sync_inst/n222 ), .A3(n1209), .X(n1210) );
  UDB116SVT24_AOAI211_0P75 U1756 ( .A1(n1212), .A2(n1211), .B(
        \sh_sync_inst/n222 ), .C(n1210), .X(\sh_sync_inst/n352 ) );
  UDB116SVT24_NR2_0P75 U1757 ( .A1(\sh_sync_inst/n251 ), .A2(
        \sh_sync_inst/n245 ), .X(n1220) );
  UDB116SVT24_INV_0P75 U1758 ( .A(\sh_sync_inst/n247 ), .X(n1224) );
  UDB116SVT24_ND3_0P75 U1759 ( .A1(n1220), .A2(n1603), .A3(n1224), .X(n1608)
         );
  UDB116SVT24_NR2_0P75 U1760 ( .A1(\sh_sync_inst/n248 ), .A2(n1608), .X(n1233)
         );
  UDB116SVT24_INV_0P75 U1761 ( .A(n1233), .X(n1213) );
  UDB116SVT24_AOI21_0P75 U1762 ( .A1(n1213), .A2(n970), .B(n1221), .X(n1234)
         );
  UDB116SVT24_ND2_MM_0P75 U1763 ( .A1(n972), .A2(\sh_sync_inst/n249 ), .X(
        n1214) );
  UDB116SVT24_OAI22_0P75 U1764 ( .A1(n866), .A2(n1234), .B1(n1214), .B2(n1213), 
        .X(\sh_sync_inst/n335 ) );
  UDB116SVT24_NR2_0P75 U1765 ( .A1(n1029), .A2(n898), .X(n1229) );
  UDB116SVT24_OR3B_0P75 U1766 ( .B1(\sh_sync_inst/n213 ), .B2(n1216), .A(n1028), .X(n1611) );
  UDB116SVT24_OAI22_0P75 U1767 ( .A1(\sh_sync_inst/n211 ), .A2(n1229), .B1(
        \sh_sync_inst/n212 ), .B2(n1611), .X(\sh_sync_inst/n341 ) );
  UDB116SVT24_NR2_0P75 U1768 ( .A1(\sh_sync_inst/n234 ), .A2(
        \sh_sync_inst/n235 ), .X(n1237) );
  UDB116SVT24_ND2B_0P75 U1769 ( .A(\sh_sync_inst/n233 ), .B(n1237), .X(n1219)
         );
  UDB116SVT24_INV_0P75 U1770 ( .A(n1219), .X(n1258) );
  UDB116SVT24_OAI21_0P75 U1771 ( .A1(n1258), .A2(n1262), .B(n1217), .X(n1260)
         );
  UDB116SVT24_ND2_MM_0P75 U1772 ( .A1(n1259), .A2(n1260), .X(n1218) );
  UDB116SVT24_OAI31_1 U1773 ( .A1(n1259), .A2(n1262), .A3(n1219), .B(n1218), 
        .X(\sh_sync_inst/n327 ) );
  UDB116SVT24_ND2_MM_0P75 U1774 ( .A1(n970), .A2(n1220), .X(n1601) );
  UDB116SVT24_ND2_MM_0P75 U1775 ( .A1(n1603), .A2(n1220), .X(n1222) );
  UDB116SVT24_AO21_0P75 U1776 ( .A1(n1222), .A2(n971), .B(n1221), .X(n1605) );
  UDB116SVT24_ND2_MM_0P75 U1777 ( .A1(n1224), .A2(n1605), .X(n1223) );
  UDB116SVT24_OAI31_1 U1778 ( .A1(n1224), .A2(n1601), .A3(\sh_sync_inst/n246 ), 
        .B(n1223), .X(\sh_sync_inst/n333 ) );
  UDB116SVT24_ND3_0P75 U1779 ( .A1(\sh_sync_inst/n214 ), .A2(n1031), .A3(n1225), .X(n1228) );
  UDB116SVT24_AOI21B_0P75 U1780 ( .A1(\sh_sync_inst/n215 ), .A2(n1030), .B(
        n1226), .X(n1227) );
  UDB116SVT24_OAI22_0P75 U1781 ( .A1(n869), .A2(n1228), .B1(
        \sh_sync_inst/n214 ), .B2(n1227), .X(\sh_sync_inst/n344 ) );
  UDB116SVT24_ND2_MM_0P75 U1782 ( .A1(n1031), .A2(n1230), .X(n1732) );
  UDB116SVT24_AOI31_0P75 U1783 ( .A1(n1230), .A2(n1727), .A3(n1253), .B(n1229), 
        .X(n1729) );
  UDB116SVT24_ND2_MM_0P75 U1784 ( .A1(n1232), .A2(n1729), .X(n1231) );
  UDB116SVT24_OAI31_1 U1785 ( .A1(n1232), .A2(n1732), .A3(\sh_sync_inst/n220 ), 
        .B(n1231), .X(\sh_sync_inst/n349 ) );
  UDB116SVT24_ND3_0P75 U1786 ( .A1(n972), .A2(\sh_sync_inst/n250 ), .A3(n1233), 
        .X(n1236) );
  UDB116SVT24_AOI21B_0P75 U1787 ( .A1(n971), .A2(\sh_sync_inst/n249 ), .B(
        n1234), .X(n1235) );
  UDB116SVT24_OAI22_0P75 U1788 ( .A1(n866), .A2(n1236), .B1(
        \sh_sync_inst/n250 ), .B2(n1235), .X(\sh_sync_inst/n336 ) );
  UDB116SVT24_AOI21_0P75 U1789 ( .A1(n931), .A2(\sh_sync_inst/n235 ), .B(n1264), .X(n1250) );
  UDB116SVT24_ND2_MM_0P75 U1790 ( .A1(\sh_sync_inst/n234 ), .A2(n931), .X(
        n1251) );
  UDB116SVT24_ND3_0P75 U1791 ( .A1(\sh_sync_inst/n233 ), .A2(n932), .A3(n1237), 
        .X(n1238) );
  UDB116SVT24_AOAI211_0P75 U1792 ( .A1(n1250), .A2(n1251), .B(
        \sh_sync_inst/n233 ), .C(n1238), .X(\sh_sync_inst/n328 ) );
  UDB116SVT24_INV_0P75 U1793 ( .A(n1239), .X(n1242) );
  UDB116SVT24_INV_0P75 U1794 ( .A(n1243), .X(n1247) );
  UDB116SVT24_AOI22_1 U1795 ( .A1(n1247), .A2(n1246), .B1(n1245), .B2(n1244), 
        .X(n1248) );
  UDB116SVT24_OAI22_0P75 U1796 ( .A1(n987), .A2(n1248), .B1(n982), .B2(n910), 
        .X(n1707) );
  UDB116SVT24_INV_0P75 U1797 ( .A(n894), .X(n1567) );
  UDB116SVT24_OR2_0P75 U1798 ( .A1(n1697), .A2(n941), .X(n1274) );
  UDB116SVT24_NR2_0P75 U1799 ( .A1(n969), .A2(n1274), .X(n1698) );
  UDB116SVT24_ND2_MM_0P75 U1800 ( .A1(n1698), .A2(n1701), .X(n1709) );
  UDB116SVT24_NR3_0P75 U1801 ( .A1(\sh_sync_inst/intadd_0/B[6] ), .A2(n964), 
        .A3(n1709), .X(n1275) );
  UDB116SVT24_ND2_MM_0P75 U1802 ( .A1(n1275), .A2(n950), .X(n1280) );
  UDB116SVT24_NR2_0P75 U1803 ( .A1(\sh_sync_inst/intadd_0/B[8] ), .A2(n1280), 
        .X(n1565) );
  UDB116SVT24_ND2_MM_0P75 U1804 ( .A1(n1565), .A2(n903), .X(n1282) );
  UDB116SVT24_NR2_0P75 U1805 ( .A1(n1018), .A2(n1282), .X(n1293) );
  UDB116SVT24_INV_0P75 U1806 ( .A(n1293), .X(n1249) );
  UDB116SVT24_AOI21_0P75 U1807 ( .A1(n974), .A2(n1249), .B(n896), .X(n1295) );
  UDB116SVT24_ND2_MM_0P75 U1808 ( .A1(\sh_sync_inst/intadd_0/B[11] ), .A2(n974), .X(n1294) );
  UDB116SVT24_OAI22_0P75 U1809 ( .A1(\sh_sync_inst/intadd_0/B[11] ), .A2(n1295), .B1(n1294), .B2(n1249), .X(\sh_sync_inst/n258 ) );
  UDB116SVT24_OAI22_0P75 U1810 ( .A1(n1003), .A2(n1251), .B1(
        \sh_sync_inst/n234 ), .B2(n1250), .X(\sh_sync_inst/n329 ) );
  UDB116SVT24_AO21_0P75 U1811 ( .A1(n1709), .A2(n1707), .B(n895), .X(n1706) );
  UDB116SVT24_AOI21_0P75 U1812 ( .A1(n928), .A2(n1706), .B(n892), .X(n1252) );
  UDB116SVT24_OAI31_1 U1813 ( .A1(n928), .A2(n1709), .A3(n954), .B(n1252), .X(
        \sh_sync_inst/n264 ) );
  UDB116SVT24_INV_0P75 U1814 ( .A(\sh_sync_inst/n216 ), .X(n1256) );
  UDB116SVT24_NR2_0P75 U1815 ( .A1(n1616), .A2(n1257), .X(n1618) );
  UDB116SVT24_OAI21_0P75 U1816 ( .A1(n1617), .A2(n1257), .B(n1253), .X(n1615)
         );
  UDB116SVT24_OAI21_0P75 U1817 ( .A1(n1618), .A2(n1615), .B(n1256), .X(n1254)
         );
  UDB116SVT24_OAI31_1 U1818 ( .A1(n1257), .A2(n1256), .A3(n1255), .B(n1254), 
        .X(\sh_sync_inst/n346 ) );
  UDB116SVT24_ND2_MM_0P75 U1819 ( .A1(n1259), .A2(n1258), .X(n1266) );
  UDB116SVT24_AOAI211_0P75 U1820 ( .A1(\sh_sync_inst/n232 ), .A2(n932), .B(
        n1260), .C(n1263), .X(n1261) );
  UDB116SVT24_OAI31_1 U1821 ( .A1(n1263), .A2(n1262), .A3(n1266), .B(n1261), 
        .X(\sh_sync_inst/n326 ) );
  UDB116SVT24_OAOI211_0P75 U1822 ( .A1(\sh_sync_inst/n231 ), .A2(n1266), .B(
        n932), .C(n1264), .X(n1268) );
  UDB116SVT24_OR3B_0P75 U1823 ( .B1(\sh_sync_inst/n231 ), .B2(n1266), .A(n931), 
        .X(n1269) );
  UDB116SVT24_OAI22_0P75 U1824 ( .A1(\sh_sync_inst/n229 ), .A2(n1268), .B1(
        \sh_sync_inst/n230 ), .B2(n1269), .X(\sh_sync_inst/n324 ) );
  UDB116SVT24_INV_0P75 U1825 ( .A(\sh_sync_inst/n230 ), .X(n1267) );
  UDB116SVT24_AOI22_1 U1826 ( .A1(\sh_sync_inst/n230 ), .A2(n1269), .B1(n1268), 
        .B2(n1267), .X(\sh_sync_inst/n325 ) );
  UDB116SVT24_INV_0P75 U1827 ( .A(\sh_sync_inst/intadd_0/A[6] ), .X(n1476) );
  UDB116SVT24_NR2_0P75 U1828 ( .A1(\sh_sync_inst/intadd_0/A[5] ), .A2(n964), 
        .X(n1689) );
  UDB116SVT24_MAJI3_1 U1829 ( .A1(n1015), .A2(\sh_sync_inst/intadd_0/A[4] ), 
        .A3(n1270), .X(n1691) );
  UDB116SVT24_INV_0P75 U1830 ( .A(\sh_sync_inst/intadd_0/A[5] ), .X(n1491) );
  UDB116SVT24_OAI22_0P75 U1831 ( .A1(n1689), .A2(n1691), .B1(n1491), .B2(n928), 
        .X(n1289) );
  UDB116SVT24_AOI21_0P75 U1832 ( .A1(n1271), .A2(n1273), .B(n1476), .X(n1272)
         );
  UDB116SVT24_AOAOI2111_0P75 U1833 ( .A1(n1476), .A2(n1273), .B(n983), .C(
        n1672), .D(n1272), .X(\sh_sync_inst/n295 ) );
  UDB116SVT24_AOI21_0P75 U1834 ( .A1(n1274), .A2(n1707), .B(n896), .X(n1700)
         );
  UDB116SVT24_ND2_MM_0P75 U1835 ( .A1(n968), .A2(n1708), .X(n1702) );
  UDB116SVT24_OAI22_0P75 U1836 ( .A1(n969), .A2(n1700), .B1(n1702), .B2(n1274), 
        .X(\sh_sync_inst/n266 ) );
  UDB116SVT24_NR2_0P75 U1837 ( .A1(n951), .A2(n955), .X(n1277) );
  UDB116SVT24_INV_0P75 U1838 ( .A(n895), .X(n1705) );
  UDB116SVT24_OAI21_0P75 U1839 ( .A1(n1275), .A2(n1567), .B(n1705), .X(n1278)
         );
  UDB116SVT24_AOI22_1 U1840 ( .A1(n1277), .A2(n1275), .B1(n1278), .B2(n950), 
        .X(n1276) );
  UDB116SVT24_ND2_MM_0P75 U1841 ( .A1(n1276), .A2(n1571), .X(
        \sh_sync_inst/n262 ) );
  UDB116SVT24_OAI21_0P75 U1842 ( .A1(n1278), .A2(n1277), .B(n942), .X(n1279)
         );
  UDB116SVT24_OAI31_1 U1843 ( .A1(n1280), .A2(n880), .A3(n954), .B(n1279), .X(
        \sh_sync_inst/n261 ) );
  UDB116SVT24_NR2_0P75 U1844 ( .A1(n930), .A2(n954), .X(n1566) );
  UDB116SVT24_OAI21_0P75 U1845 ( .A1(n1565), .A2(n1567), .B(n1705), .X(n1564)
         );
  UDB116SVT24_OAOI211_0P75 U1846 ( .A1(n1566), .A2(n1564), .B(n1283), .C(n891), 
        .X(n1281) );
  UDB116SVT24_OAI31_1 U1847 ( .A1(n1283), .A2(n1282), .A3(n955), .B(n1281), 
        .X(\sh_sync_inst/n259 ) );
  UDB116SVT24_BUF_1 U1848 ( .A(n1297), .X(n1673) );
  UDB116SVT24_BUF_1 U1849 ( .A(n1673), .X(n1314) );
  UDB116SVT24_INV_0P75 U1850 ( .A(n1314), .X(n1596) );
  UDB116SVT24_ADDF_V1_1 U1851 ( .A(\sh_sync_inst/intadd_0/A[1] ), .B(
        \sh_sync_inst/intadd_0/B[1] ), .CI(n1284), .CO(n1286), .S(n1285) );
  UDB116SVT24_OAI22_0P75 U1852 ( .A1(n872), .A2(n1596), .B1(n1285), .B2(n1039), 
        .X(\sh_sync_inst/n300 ) );
  UDB116SVT24_OA2BB2_0P75 U1853 ( .A1(n1286), .A2(n940), .B1(n877), .B2(n1286), 
        .X(n1288) );
  UDB116SVT24_AOAI211_0P75 U1854 ( .A1(n1288), .A2(n977), .B(n1297), .C(n884), 
        .X(n1287) );
  UDB116SVT24_OAI31_1 U1855 ( .A1(n1288), .A2(n883), .A3(n1036), .B(n1287), 
        .X(\sh_sync_inst/n299 ) );
  UDB116SVT24_NR2_0P75 U1856 ( .A1(\sh_sync_inst/intadd_0/A[7] ), .A2(
        \sh_sync_inst/intadd_0/B[7] ), .X(n1684) );
  UDB116SVT24_MAJI3_1 U1857 ( .A1(n1023), .A2(\sh_sync_inst/intadd_0/A[6] ), 
        .A3(n1289), .X(n1686) );
  UDB116SVT24_INV_0P75 U1858 ( .A(\sh_sync_inst/intadd_0/A[7] ), .X(n1473) );
  UDB116SVT24_OAI22_0P75 U1859 ( .A1(n1684), .A2(n1686), .B1(n1473), .B2(n950), 
        .X(n1296) );
  UDB116SVT24_INV_0P75 U1860 ( .A(n1314), .X(n1725) );
  UDB116SVT24_AOI21_0P75 U1861 ( .A1(n1725), .A2(n1292), .B(n886), .X(n1291)
         );
  UDB116SVT24_AOAOI2111_0P75 U1862 ( .A1(n885), .A2(n1292), .B(n985), .C(n1672), .D(n1291), .X(\sh_sync_inst/n293 ) );
  UDB116SVT24_ND3_0P75 U1863 ( .A1(n1293), .A2(n973), .A3(n914), .X(n1563) );
  UDB116SVT24_ND2_MM_0P75 U1864 ( .A1(n1295), .A2(n1294), .X(n1561) );
  UDB116SVT24_OA2BB2_0P75 U1865 ( .A1(\sh_sync_inst/intadd_0/B[12] ), .A2(
        n1563), .B1(n1561), .B2(n1026), .X(\sh_sync_inst/n257 ) );
  UDB116SVT24_INV_0P75 U1866 ( .A(\sh_sync_inst/intadd_0/A[10] ), .X(n1454) );
  UDB116SVT24_NR2_0P75 U1867 ( .A1(\sh_sync_inst/intadd_0/A[9] ), .A2(n904), 
        .X(n1679) );
  UDB116SVT24_MAJI3_1 U1868 ( .A1(\sh_sync_inst/intadd_0/B[8] ), .A2(
        \sh_sync_inst/intadd_0/A[8] ), .A3(n1296), .X(n1681) );
  UDB116SVT24_INV_0P75 U1869 ( .A(\sh_sync_inst/intadd_0/A[9] ), .X(n1461) );
  UDB116SVT24_OAI22_0P75 U1870 ( .A1(n1679), .A2(n1681), .B1(n1461), .B2(n930), 
        .X(n1300) );
  UDB116SVT24_INV_0P75 U1871 ( .A(n1297), .X(n1554) );
  UDB116SVT24_AOI21_0P75 U1872 ( .A1(n1725), .A2(n1299), .B(n1454), .X(n1298)
         );
  UDB116SVT24_AOAOI2111_0P75 U1873 ( .A1(n1454), .A2(n1299), .B(n982), .C(
        n1554), .D(n1298), .X(\sh_sync_inst/n291 ) );
  UDB116SVT24_INV_0P75 U1874 ( .A(\sh_sync_inst/intadd_0/A[12] ), .X(n1440) );
  UDB116SVT24_NR2_0P75 U1875 ( .A1(\sh_sync_inst/intadd_0/A[11] ), .A2(
        \sh_sync_inst/intadd_0/B[11] ), .X(n1674) );
  UDB116SVT24_MAJI3_1 U1876 ( .A1(n1017), .A2(\sh_sync_inst/intadd_0/A[10] ), 
        .A3(n1300), .X(n1676) );
  UDB116SVT24_INV_0P75 U1877 ( .A(\sh_sync_inst/intadd_0/A[11] ), .X(n1444) );
  UDB116SVT24_OAI22_0P75 U1878 ( .A1(n1674), .A2(n1676), .B1(n1444), .B2(n927), 
        .X(n1303) );
  UDB116SVT24_AOI21_0P75 U1879 ( .A1(n1596), .A2(n1302), .B(n1440), .X(n1301)
         );
  UDB116SVT24_AOAOI2111_0P75 U1880 ( .A1(n1440), .A2(n1302), .B(n984), .C(
        n1554), .D(n1301), .X(\sh_sync_inst/n289 ) );
  UDB116SVT24_MAJ3_0P75 U1881 ( .A1(n1026), .A2(\sh_sync_inst/intadd_0/A[12] ), 
        .A3(n1303), .X(n1670) );
  UDB116SVT24_INV_0P75 U1882 ( .A(\sh_sync_inst/intadd_0/A[13] ), .X(n1666) );
  UDB116SVT24_ND2_MM_0P75 U1883 ( .A1(n1666), .A2(n878), .X(n1665) );
  UDB116SVT24_AOI22_1 U1884 ( .A1(n1007), .A2(\sh_sync_inst/intadd_0/B[13] ), 
        .B1(n1670), .B2(n1665), .X(n1663) );
  UDB116SVT24_ND2_MM_0P75 U1885 ( .A1(n1663), .A2(n889), .X(n1305) );
  UDB116SVT24_NR2_0P75 U1886 ( .A1(n890), .A2(n922), .X(n1664) );
  UDB116SVT24_INV_0P75 U1887 ( .A(n1673), .X(n1316) );
  UDB116SVT24_OAI21_0P75 U1888 ( .A1(n1663), .A2(n983), .B(n1316), .X(n1662)
         );
  UDB116SVT24_OAI21_0P75 U1889 ( .A1(n1664), .A2(n1662), .B(n888), .X(n1304)
         );
  UDB116SVT24_OAI31_1 U1890 ( .A1(n1036), .A2(n887), .A3(n1305), .B(n1304), 
        .X(\sh_sync_inst/n286 ) );
  UDB116SVT24_INV_0P75 U1891 ( .A(\sh_sync_inst/n158 ), .X(n1393) );
  UDB116SVT24_NR2_0P75 U1892 ( .A1(\sh_sync_inst/n160 ), .A2(n1305), .X(n1660)
         );
  UDB116SVT24_INV_0P75 U1893 ( .A(\sh_sync_inst/n159 ), .X(n1658) );
  UDB116SVT24_ND2_MM_0P75 U1894 ( .A1(n1660), .A2(n1658), .X(n1307) );
  UDB116SVT24_OAI21_0P75 U1895 ( .A1(n1660), .A2(n984), .B(n1316), .X(n1659)
         );
  UDB116SVT24_NR2_0P75 U1896 ( .A1(n1658), .A2(n1036), .X(n1661) );
  UDB116SVT24_OAI21_0P75 U1897 ( .A1(n1659), .A2(n1661), .B(n1393), .X(n1306)
         );
  UDB116SVT24_OAI31_1 U1898 ( .A1(n1038), .A2(n1393), .A3(n1307), .B(n1306), 
        .X(\sh_sync_inst/n284 ) );
  UDB116SVT24_INV_0P75 U1899 ( .A(\sh_sync_inst/n156 ), .X(n1381) );
  UDB116SVT24_NR2_0P75 U1900 ( .A1(\sh_sync_inst/n158 ), .A2(n1307), .X(n1656)
         );
  UDB116SVT24_ND2_MM_0P75 U1901 ( .A1(n1656), .A2(n934), .X(n1309) );
  UDB116SVT24_OAI21_0P75 U1902 ( .A1(n1656), .A2(n985), .B(n1554), .X(n1655)
         );
  UDB116SVT24_NR2_0P75 U1903 ( .A1(n933), .A2(n1038), .X(n1657) );
  UDB116SVT24_OAI21_0P75 U1904 ( .A1(n1655), .A2(n1657), .B(n1381), .X(n1308)
         );
  UDB116SVT24_OAI31_1 U1905 ( .A1(n922), .A2(n1381), .A3(n1309), .B(n1308), 
        .X(\sh_sync_inst/n282 ) );
  UDB116SVT24_NR2_0P75 U1906 ( .A1(\sh_sync_inst/n156 ), .A2(n1309), .X(n1311)
         );
  UDB116SVT24_INV_0P75 U1907 ( .A(n1311), .X(n1310) );
  UDB116SVT24_AOI21_0P75 U1908 ( .A1(n925), .A2(n1310), .B(n1673), .X(n1588)
         );
  UDB116SVT24_ND2_MM_0P75 U1909 ( .A1(n1008), .A2(n976), .X(n1586) );
  UDB116SVT24_OAI22_0P75 U1910 ( .A1(n1008), .A2(n1588), .B1(n1586), .B2(n1310), .X(\sh_sync_inst/n281 ) );
  UDB116SVT24_INV_0P75 U1911 ( .A(\sh_sync_inst/n150 ), .X(n1328) );
  UDB116SVT24_INV_0P75 U1912 ( .A(\sh_sync_inst/n155 ), .X(n1369) );
  UDB116SVT24_ND2_MM_0P75 U1913 ( .A1(n1311), .A2(n1369), .X(n1553) );
  UDB116SVT24_NR2_0P75 U1914 ( .A1(\sh_sync_inst/n154 ), .A2(n1553), .X(n1555)
         );
  UDB116SVT24_INV_0P75 U1915 ( .A(\sh_sync_inst/n153 ), .X(n1556) );
  UDB116SVT24_ND2_MM_0P75 U1916 ( .A1(n1555), .A2(n1556), .X(n1583) );
  UDB116SVT24_NR2_0P75 U1917 ( .A1(n906), .A2(n1583), .X(n1653) );
  UDB116SVT24_INV_0P75 U1918 ( .A(\sh_sync_inst/n151 ), .X(n1651) );
  UDB116SVT24_ND2_MM_0P75 U1919 ( .A1(n1653), .A2(n1651), .X(n1313) );
  UDB116SVT24_OAI21_0P75 U1920 ( .A1(n1653), .A2(n982), .B(n1316), .X(n1652)
         );
  UDB116SVT24_NR2_0P75 U1921 ( .A1(n1651), .A2(n921), .X(n1654) );
  UDB116SVT24_OAI21_0P75 U1922 ( .A1(n1652), .A2(n1654), .B(n1328), .X(n1312)
         );
  UDB116SVT24_OAI31_1 U1923 ( .A1(n921), .A2(n1328), .A3(n1313), .B(n1312), 
        .X(\sh_sync_inst/n276 ) );
  UDB116SVT24_OR2_0P75 U1924 ( .A1(\sh_sync_inst/n150 ), .A2(n1313), .X(n1315)
         );
  UDB116SVT24_AOI21_0P75 U1925 ( .A1(n926), .A2(n1315), .B(n1314), .X(n1580)
         );
  UDB116SVT24_ND2_MM_0P75 U1926 ( .A1(n908), .A2(n975), .X(n1578) );
  UDB116SVT24_OAI22_0P75 U1927 ( .A1(n908), .A2(n1580), .B1(n1578), .B2(n1315), 
        .X(\sh_sync_inst/n275 ) );
  UDB116SVT24_NR2_0P75 U1928 ( .A1(n1315), .A2(n908), .X(n1317) );
  UDB116SVT24_NR2B_0P75 U1929 ( .A(n1317), .B(\sh_sync_inst/n148 ), .X(n1559)
         );
  UDB116SVT24_OAI21_0P75 U1930 ( .A1(n1559), .A2(n922), .B(n1316), .X(n1557)
         );
  UDB116SVT24_AOI21_0P75 U1931 ( .A1(n1021), .A2(n977), .B(n1557), .X(n1319)
         );
  UDB116SVT24_ND2_MM_0P75 U1932 ( .A1(n975), .A2(n1317), .X(n1577) );
  UDB116SVT24_NR2_0P75 U1933 ( .A1(n1020), .A2(\sh_sync_inst/n148 ), .X(n1318)
         );
  UDB116SVT24_ND2_MM_0P75 U1934 ( .A1(n917), .A2(n1318), .X(n1322) );
  UDB116SVT24_OAI22_0P75 U1935 ( .A1(n917), .A2(n1319), .B1(n1577), .B2(n1322), 
        .X(\sh_sync_inst/n272 ) );
  UDB116SVT24_ND2_MM_0P75 U1936 ( .A1(\sh_sync_inst/n149 ), .A2(
        \sh_sync_inst/n146 ), .X(n1324) );
  UDB116SVT24_INV_0P75 U1937 ( .A(\sh_sync_inst/n148 ), .X(n1579) );
  UDB116SVT24_ND2_MM_0P75 U1938 ( .A1(n1324), .A2(n1579), .X(n1327) );
  UDB116SVT24_AOI21_0P75 U1939 ( .A1(n1021), .A2(n1327), .B(
        \sh_sync_inst/n150 ), .X(n1321) );
  UDB116SVT24_OAI21_0P75 U1940 ( .A1(\sh_sync_inst/n147 ), .A2(n1327), .B(
        n1321), .X(n1339) );
  UDB116SVT24_INV_0P75 U1941 ( .A(n1339), .X(n1332) );
  UDB116SVT24_INV_0P75 U1942 ( .A(n1322), .X(n1323) );
  UDB116SVT24_INV_0P75 U1943 ( .A(n1021), .X(n1558) );
  UDB116SVT24_AOI21_0P75 U1944 ( .A1(n1558), .A2(n1579), .B(n917), .X(n1335)
         );
  UDB116SVT24_OAI21_0P75 U1945 ( .A1(n1323), .A2(n1335), .B(n907), .X(n1334)
         );
  UDB116SVT24_AOI21B_0P75 U1946 ( .A1(n1332), .A2(n1324), .B(n1334), .X(n1326)
         );
  UDB116SVT24_OAI21_0P75 U1947 ( .A1(\sh_sync_inst/n146 ), .A2(
        \sh_sync_inst/n147 ), .B(n1579), .X(n1325) );
  UDB116SVT24_EN2_V2_0P75 U1948 ( .A1(n1326), .A2(n1325), .X(n1336) );
  UDB116SVT24_INV_0P75 U1949 ( .A(n1327), .X(n1331) );
  UDB116SVT24_NR2_0P75 U1950 ( .A1(n908), .A2(n917), .X(n1329) );
  UDB116SVT24_AOI31_0P75 U1951 ( .A1(n1020), .A2(n1331), .A3(n1329), .B(n1328), 
        .X(n1330) );
  UDB116SVT24_OAI21_0P75 U1952 ( .A1(n1021), .A2(n1331), .B(n1330), .X(n1333)
         );
  UDB116SVT24_NR2B_0P75 U1953 ( .A(n1333), .B(n1332), .X(n1344) );
  UDB116SVT24_OA21_V2_1 U1954 ( .A1(n1335), .A2(n907), .B(n1334), .X(n1340) );
  UDB116SVT24_ND2_MM_0P75 U1955 ( .A1(n1344), .A2(n1340), .X(n1342) );
  UDB116SVT24_AOI21_0P75 U1956 ( .A1(n1342), .A2(n1336), .B(
        \sh_sync_inst/n151 ), .X(n1343) );
  UDB116SVT24_AOI21_0P75 U1957 ( .A1(n1336), .A2(\sh_sync_inst/n151 ), .B(
        n1343), .X(n1348) );
  UDB116SVT24_ND2_MM_0P75 U1958 ( .A1(n1344), .A2(n1343), .X(n1337) );
  UDB116SVT24_AOI21B_0P75 U1959 ( .A1(n1340), .A2(n1339), .B(n1337), .X(n1338)
         );
  UDB116SVT24_OAI21_0P75 U1960 ( .A1(n1340), .A2(n1339), .B(n1338), .X(n1341)
         );
  UDB116SVT24_OAI21_0P75 U1961 ( .A1(\sh_sync_inst/n151 ), .A2(n1342), .B(
        n1341), .X(n1349) );
  UDB116SVT24_ND2_MM_0P75 U1962 ( .A1(n1344), .A2(n1348), .X(n1345) );
  UDB116SVT24_AOI21_0P75 U1963 ( .A1(n1349), .A2(n1345), .B(
        \sh_sync_inst/n152 ), .X(n1352) );
  UDB116SVT24_ND2_MM_0P75 U1964 ( .A1(n1348), .A2(n1352), .X(n1347) );
  UDB116SVT24_EN2_V2_0P75 U1965 ( .A1(n1344), .A2(n1343), .X(n1346) );
  UDB116SVT24_OA2BB2_0P75 U1966 ( .A1(n1347), .A2(n1346), .B1(n1345), .B2(
        \sh_sync_inst/n152 ), .X(n1350) );
  UDB116SVT24_INV_0P75 U1967 ( .A(n1348), .X(n1353) );
  UDB116SVT24_AOI21_0P75 U1968 ( .A1(n1349), .A2(n906), .B(n1352), .X(n1356)
         );
  UDB116SVT24_INV_0P75 U1969 ( .A(n1356), .X(n1361) );
  UDB116SVT24_NR2_0P75 U1970 ( .A1(n1353), .A2(n1361), .X(n1355) );
  UDB116SVT24_OAI21_0P75 U1971 ( .A1(n1355), .A2(n1350), .B(n995), .X(n1358)
         );
  UDB116SVT24_OAI21_0P75 U1972 ( .A1(n1350), .A2(n1556), .B(n1358), .X(n1366)
         );
  UDB116SVT24_OAI22_0P75 U1973 ( .A1(n1361), .A2(n1358), .B1(n1353), .B2(n1352), .X(n1351) );
  UDB116SVT24_AOI21_0P75 U1974 ( .A1(n1353), .A2(n1352), .B(n1351), .X(n1354)
         );
  UDB116SVT24_AOI21_0P75 U1975 ( .A1(n1355), .A2(n1556), .B(n1354), .X(n1357)
         );
  UDB116SVT24_INV_0P75 U1976 ( .A(\sh_sync_inst/n154 ), .X(n1587) );
  UDB116SVT24_INV_0P75 U1977 ( .A(n1366), .X(n1376) );
  UDB116SVT24_AOAI211_0P75 U1978 ( .A1(n1376), .A2(n1356), .B(n1357), .C(n1587), .X(n1370) );
  UDB116SVT24_OAI21_0P75 U1979 ( .A1(n1357), .A2(n1587), .B(n1370), .X(n1377)
         );
  UDB116SVT24_INV_0P75 U1980 ( .A(n1377), .X(n1365) );
  UDB116SVT24_INV_0P75 U1981 ( .A(n1358), .X(n1363) );
  UDB116SVT24_NR2_0P75 U1982 ( .A1(\sh_sync_inst/n154 ), .A2(n1366), .X(n1362)
         );
  UDB116SVT24_NR2_0P75 U1983 ( .A1(n859), .A2(n1370), .X(n1359) );
  UDB116SVT24_OAI21_0P75 U1984 ( .A1(n1363), .A2(n1359), .B(n1361), .X(n1360)
         );
  UDB116SVT24_OAI31_1 U1985 ( .A1(n1363), .A2(n1362), .A3(n1361), .B(n1360), 
        .X(n1368) );
  UDB116SVT24_NR2B_0P75 U1986 ( .A(n1368), .B(\sh_sync_inst/n155 ), .X(n1367)
         );
  UDB116SVT24_ND2_MM_0P75 U1987 ( .A1(n1365), .A2(n1367), .X(n1364) );
  UDB116SVT24_OAOAI2111_1 U1988 ( .A1(n1366), .A2(\sh_sync_inst/n155 ), .B(
        n1365), .C(n1367), .D(n1364), .X(n1379) );
  UDB116SVT24_NR3_0P75 U1989 ( .A1(\sh_sync_inst/n155 ), .A2(n1366), .A3(n1377), .X(n1372) );
  UDB116SVT24_NR2_0P75 U1990 ( .A1(n1372), .A2(n1367), .X(n1371) );
  UDB116SVT24_OAI21_0P75 U1991 ( .A1(n1369), .A2(n1368), .B(n1371), .X(n1384)
         );
  UDB116SVT24_INV_0P75 U1992 ( .A(n1370), .X(n1375) );
  UDB116SVT24_NR2_0P75 U1993 ( .A1(n1375), .A2(n1376), .X(n1374) );
  UDB116SVT24_OR2_0P75 U1994 ( .A1(n1377), .A2(n1371), .X(n1373) );
  UDB116SVT24_AOAOI2111_0P75 U1995 ( .A1(n1376), .A2(n1375), .B(n1374), .C(
        n1373), .D(n1372), .X(n1382) );
  UDB116SVT24_NR2B_0P75 U1996 ( .A(n1382), .B(\sh_sync_inst/n156 ), .X(n1386)
         );
  UDB116SVT24_NR3_0P75 U1997 ( .A1(\sh_sync_inst/n156 ), .A2(n1384), .A3(n1377), .X(n1378) );
  UDB116SVT24_NR2_0P75 U1998 ( .A1(n1386), .A2(n1378), .X(n1380) );
  UDB116SVT24_OR2_0P75 U1999 ( .A1(n1384), .A2(n1380), .X(n1385) );
  UDB116SVT24_AOI21_0P75 U2000 ( .A1(n1379), .A2(n1385), .B(n1378), .X(n1383)
         );
  UDB116SVT24_OAI21_0P75 U2001 ( .A1(n1382), .A2(n1381), .B(n1380), .X(n1398)
         );
  UDB116SVT24_NR2_0P75 U2002 ( .A1(n1384), .A2(n1398), .X(n1391) );
  UDB116SVT24_OAI21_0P75 U2003 ( .A1(n1391), .A2(n1383), .B(n933), .X(n1388)
         );
  UDB116SVT24_OAI21_0P75 U2004 ( .A1(n1383), .A2(n934), .B(n1388), .X(n1413)
         );
  UDB116SVT24_INV_0P75 U2005 ( .A(n1413), .X(n1405) );
  UDB116SVT24_INV_0P75 U2006 ( .A(n1398), .X(n1392) );
  UDB116SVT24_INV_0P75 U2007 ( .A(n1384), .X(n1387) );
  UDB116SVT24_OAI21_0P75 U2008 ( .A1(n1387), .A2(n1386), .B(n1385), .X(n1390)
         );
  UDB116SVT24_INV_0P75 U2009 ( .A(n1388), .X(n1400) );
  UDB116SVT24_ND2_MM_0P75 U2010 ( .A1(n1392), .A2(n1400), .X(n1389) );
  UDB116SVT24_AOI22_1 U2011 ( .A1(n1391), .A2(n933), .B1(n1390), .B2(n1389), 
        .X(n1394) );
  UDB116SVT24_AOAI211_0P75 U2012 ( .A1(n1405), .A2(n1392), .B(n1394), .C(n1393), .X(n1395) );
  UDB116SVT24_INV_0P75 U2013 ( .A(n1395), .X(n1404) );
  UDB116SVT24_NR2_0P75 U2014 ( .A1(n1404), .A2(n1405), .X(n1403) );
  UDB116SVT24_OAI21_0P75 U2015 ( .A1(n1394), .A2(n1393), .B(n1395), .X(n1409)
         );
  UDB116SVT24_NR3_0P75 U2016 ( .A1(\sh_sync_inst/n159 ), .A2(n1413), .A3(n1409), .X(n1401) );
  UDB116SVT24_NR2_0P75 U2017 ( .A1(\sh_sync_inst/n158 ), .A2(n1413), .X(n1399)
         );
  UDB116SVT24_NR2_0P75 U2018 ( .A1(n1000), .A2(n1395), .X(n1396) );
  UDB116SVT24_OAI21_0P75 U2019 ( .A1(n1400), .A2(n1396), .B(n1398), .X(n1397)
         );
  UDB116SVT24_OAI31_1 U2020 ( .A1(n1400), .A2(n1399), .A3(n1398), .B(n1397), 
        .X(n1407) );
  UDB116SVT24_NR2B_0P75 U2021 ( .A(n1407), .B(\sh_sync_inst/n159 ), .X(n1411)
         );
  UDB116SVT24_NR2_0P75 U2022 ( .A1(n1401), .A2(n1411), .X(n1406) );
  UDB116SVT24_OR2_0P75 U2023 ( .A1(n1409), .A2(n1406), .X(n1402) );
  UDB116SVT24_AOAOI2111_0P75 U2024 ( .A1(n1405), .A2(n1404), .B(n1403), .C(
        n1402), .D(n1401), .X(n1408) );
  UDB116SVT24_OAI21_0P75 U2025 ( .A1(n1658), .A2(n1407), .B(n1406), .X(n1418)
         );
  UDB116SVT24_NR2_0P75 U2026 ( .A1(n1409), .A2(n1418), .X(n1416) );
  UDB116SVT24_OAI21_0P75 U2027 ( .A1(n1408), .A2(n1416), .B(n887), .X(n1417)
         );
  UDB116SVT24_OAI21_0P75 U2028 ( .A1(n1408), .A2(n888), .B(n1417), .X(n1433)
         );
  UDB116SVT24_NR2_0P75 U2029 ( .A1(n1418), .A2(n1433), .X(n1422) );
  UDB116SVT24_OR2_0P75 U2030 ( .A1(n1418), .A2(n1417), .X(n1415) );
  UDB116SVT24_INV_0P75 U2031 ( .A(n1409), .X(n1412) );
  UDB116SVT24_ND2_MM_0P75 U2032 ( .A1(n1412), .A2(n1411), .X(n1410) );
  UDB116SVT24_OAOAI2111_1 U2033 ( .A1(n1413), .A2(\sh_sync_inst/n159 ), .B(
        n1412), .C(n1411), .D(n1410), .X(n1414) );
  UDB116SVT24_AOI22_1 U2034 ( .A1(n1416), .A2(n887), .B1(n1415), .B2(n1414), 
        .X(n1423) );
  UDB116SVT24_OAI21_0P75 U2035 ( .A1(n1422), .A2(n1423), .B(n889), .X(n1427)
         );
  UDB116SVT24_NR2_0P75 U2036 ( .A1(n1433), .A2(n1427), .X(n1420) );
  UDB116SVT24_EO2_V2_1 U2037 ( .A1(n1418), .A2(n1417), .X(n1419) );
  UDB116SVT24_AO2BB2_0P75 U2038 ( .A1(n1420), .A2(n1419), .B1(n890), .B2(n1422), .X(n1425) );
  UDB116SVT24_ND2_MM_0P75 U2039 ( .A1(n1423), .A2(\sh_sync_inst/n161 ), .X(
        n1421) );
  UDB116SVT24_OAI31_1 U2040 ( .A1(n1423), .A2(\sh_sync_inst/n161 ), .A3(n1422), 
        .B(n1421), .X(n1429) );
  UDB116SVT24_OR3B_0P75 U2041 ( .B1(n1433), .B2(\sh_sync_inst/intadd_0/A[13] ), 
        .A(n1429), .X(n1430) );
  UDB116SVT24_ND2_MM_0P75 U2042 ( .A1(n1032), .A2(rst), .X(n1531) );
  UDB116SVT24_AOI21_0P75 U2043 ( .A1(n1425), .A2(n1430), .B(n939), .X(n1424)
         );
  UDB116SVT24_OAI21B_1 U2044 ( .A1(\sh_sync_inst/n192 ), .A2(n1033), .B(n1424), 
        .X(\sh_sync_inst/n322 ) );
  UDB116SVT24_NR2_0P75 U2045 ( .A1(\sh_sync_inst/intadd_0/A[13] ), .A2(n1425), 
        .X(n1426) );
  UDB116SVT24_ND2B_0P75 U2046 ( .A(n1426), .B(n1430), .X(n1428) );
  UDB116SVT24_AOI21_0P75 U2047 ( .A1(\sh_sync_inst/intadd_0/A[13] ), .A2(n1425), .B(n1428), .X(n1442) );
  UDB116SVT24_NR2_0P75 U2048 ( .A1(n1429), .A2(n1426), .X(n1434) );
  UDB116SVT24_ND2_MM_0P75 U2049 ( .A1(n1442), .A2(n1440), .X(n1437) );
  UDB116SVT24_NR2_0P75 U2050 ( .A1(n1434), .A2(n1437), .X(n1648) );
  UDB116SVT24_INV_0P75 U2051 ( .A(n1427), .X(n1432) );
  UDB116SVT24_ND2_MM_0P75 U2052 ( .A1(n1429), .A2(n1428), .X(n1435) );
  UDB116SVT24_OAI21_0P75 U2053 ( .A1(n1432), .A2(n860), .B(n1435), .X(n1431)
         );
  UDB116SVT24_AOAI211_0P75 U2054 ( .A1(n860), .A2(n1432), .B(n1431), .C(n1430), 
        .X(n1438) );
  UDB116SVT24_NR2_0P75 U2055 ( .A1(\sh_sync_inst/intadd_0/A[12] ), .A2(n1438), 
        .X(n1441) );
  UDB116SVT24_NR2_0P75 U2056 ( .A1(n1648), .A2(n1441), .X(n1439) );
  UDB116SVT24_NR2B_0P75 U2057 ( .A(n1442), .B(n1439), .X(n1448) );
  UDB116SVT24_NR2B_0P75 U2058 ( .A(n1435), .B(n1434), .X(n1436) );
  UDB116SVT24_MUXI2_1 U2059 ( .D0(n1448), .D1(n1437), .S(n1436), .X(n1443) );
  UDB116SVT24_INV_0P75 U2060 ( .A(n1443), .X(n1643) );
  UDB116SVT24_INV_0P75 U2061 ( .A(n1438), .X(n1647) );
  UDB116SVT24_OAI21_0P75 U2062 ( .A1(n1440), .A2(n1647), .B(n1439), .X(n1450)
         );
  UDB116SVT24_NR2_0P75 U2063 ( .A1(n1442), .A2(n1441), .X(n1447) );
  UDB116SVT24_NR3_0P75 U2064 ( .A1(n1450), .A2(\sh_sync_inst/intadd_0/A[11] ), 
        .A3(n1447), .X(n1644) );
  UDB116SVT24_NR2_0P75 U2065 ( .A1(\sh_sync_inst/intadd_0/A[11] ), .A2(n1443), 
        .X(n1449) );
  UDB116SVT24_NR2_0P75 U2066 ( .A1(n1644), .A2(n1449), .X(n1445) );
  UDB116SVT24_OAI21_0P75 U2067 ( .A1(n1444), .A2(n1643), .B(n1445), .X(n1452)
         );
  UDB116SVT24_NR2_0P75 U2068 ( .A1(n1450), .A2(n1445), .X(n1456) );
  UDB116SVT24_INV_0P75 U2069 ( .A(n1456), .X(n1446) );
  UDB116SVT24_OAOI211_0P75 U2070 ( .A1(n1448), .A2(n1447), .B(n1446), .C(n1644), .X(n1641) );
  UDB116SVT24_ND2_MM_0P75 U2071 ( .A1(n1454), .A2(n1641), .X(n1451) );
  UDB116SVT24_ND2_MM_0P75 U2072 ( .A1(n1452), .A2(n1451), .X(n1460) );
  UDB116SVT24_NR2B_0P75 U2073 ( .A(n1450), .B(n1449), .X(n1455) );
  UDB116SVT24_NR3_0P75 U2074 ( .A1(\sh_sync_inst/intadd_0/A[10] ), .A2(n1455), 
        .A3(n1452), .X(n1640) );
  UDB116SVT24_ND2B_0P75 U2075 ( .A(n1640), .B(n1451), .X(n1453) );
  UDB116SVT24_ND2B_0P75 U2076 ( .A(n1452), .B(n1453), .X(n1459) );
  UDB116SVT24_OAI21B_1 U2077 ( .A1(n1641), .A2(n1454), .B(n1453), .X(n1469) );
  UDB116SVT24_NR2B_0P75 U2078 ( .A(n1460), .B(n1469), .X(n1457) );
  UDB116SVT24_OAOI211_0P75 U2079 ( .A1(n1456), .A2(n1455), .B(n1459), .C(n1640), .X(n1637) );
  UDB116SVT24_OAI21_0P75 U2080 ( .A1(n1457), .A2(n1637), .B(n1461), .X(n1463)
         );
  UDB116SVT24_NR2_0P75 U2081 ( .A1(n1469), .A2(n1463), .X(n1458) );
  UDB116SVT24_ND2_MM_0P75 U2082 ( .A1(n1457), .A2(n1461), .X(n1636) );
  UDB116SVT24_AOAI211_0P75 U2083 ( .A1(n1460), .A2(n1459), .B(n1458), .C(n1636), .X(n1464) );
  UDB116SVT24_OAI21_0P75 U2084 ( .A1(n1637), .A2(n1461), .B(n1463), .X(n1472)
         );
  UDB116SVT24_NR2_0P75 U2085 ( .A1(n1469), .A2(n1472), .X(n1465) );
  UDB116SVT24_ND2_MM_0P75 U2086 ( .A1(n1465), .A2(n885), .X(n1466) );
  UDB116SVT24_AOI21_0P75 U2087 ( .A1(n1464), .A2(n1466), .B(n1531), .X(n1462)
         );
  UDB116SVT24_OAI21B_1 U2088 ( .A1(\sh_sync_inst/n187 ), .A2(n1034), .B(n1462), 
        .X(\sh_sync_inst/n317 ) );
  UDB116SVT24_INV_0P75 U2089 ( .A(n1463), .X(n1468) );
  UDB116SVT24_INV_0P75 U2090 ( .A(n1464), .X(n1470) );
  UDB116SVT24_OAI21_0P75 U2091 ( .A1(n1470), .A2(n1465), .B(n885), .X(n1471)
         );
  UDB116SVT24_OR2_0P75 U2092 ( .A1(n1472), .A2(n1471), .X(n1481) );
  UDB116SVT24_OAI21_0P75 U2093 ( .A1(n1468), .A2(n999), .B(n1481), .X(n1467)
         );
  UDB116SVT24_AOAI211_0P75 U2094 ( .A1(n999), .A2(n1468), .B(n1467), .C(n1466), 
        .X(n1475) );
  UDB116SVT24_OAI21_0P75 U2095 ( .A1(n886), .A2(n1470), .B(n1471), .X(n1477)
         );
  UDB116SVT24_INV_0P75 U2096 ( .A(n1477), .X(n1485) );
  UDB116SVT24_ND2_MM_0P75 U2097 ( .A1(n1472), .A2(n1471), .X(n1480) );
  UDB116SVT24_ND3_0P75 U2098 ( .A1(n1485), .A2(n1473), .A3(n1480), .X(n1479)
         );
  UDB116SVT24_AOI21_0P75 U2099 ( .A1(n1475), .A2(n1479), .B(n939), .X(n1474)
         );
  UDB116SVT24_OAI21B_1 U2100 ( .A1(\sh_sync_inst/n186 ), .A2(n1035), .B(n1474), 
        .X(\sh_sync_inst/n316 ) );
  UDB116SVT24_NR2_0P75 U2101 ( .A1(n1475), .A2(\sh_sync_inst/intadd_0/A[7] ), 
        .X(n1484) );
  UDB116SVT24_NR2B_0P75 U2102 ( .A(n1479), .B(n1484), .X(n1478) );
  UDB116SVT24_AOI21B_0P75 U2103 ( .A1(\sh_sync_inst/intadd_0/A[7] ), .A2(n1475), .B(n1478), .X(n1494) );
  UDB116SVT24_ND3_0P75 U2104 ( .A1(n1485), .A2(n1494), .A3(n1476), .X(n1486)
         );
  UDB116SVT24_NR2_0P75 U2105 ( .A1(n1478), .A2(n1477), .X(n1483) );
  UDB116SVT24_AOAI211_0P75 U2106 ( .A1(n1481), .A2(n1480), .B(n1483), .C(n1479), .X(n1490) );
  UDB116SVT24_AOI21_0P75 U2107 ( .A1(n1486), .A2(n1490), .B(n939), .X(n1482)
         );
  UDB116SVT24_OAI21B_1 U2108 ( .A1(\sh_sync_inst/n185 ), .A2(n874), .B(n1482), 
        .X(\sh_sync_inst/n315 ) );
  UDB116SVT24_OAI21B_1 U2109 ( .A1(n1485), .A2(n1484), .B(n1483), .X(n1488) );
  UDB116SVT24_INV_0P75 U2110 ( .A(n1486), .X(n1487) );
  UDB116SVT24_NR2_0P75 U2111 ( .A1(\sh_sync_inst/intadd_0/A[6] ), .A2(n1490), 
        .X(n1493) );
  UDB116SVT24_OR2_0P75 U2112 ( .A1(n1487), .A2(n1493), .X(n1489) );
  UDB116SVT24_ND2_MM_0P75 U2113 ( .A1(n1494), .A2(n1489), .X(n1492) );
  UDB116SVT24_AOI21_0P75 U2114 ( .A1(n1488), .A2(n1492), .B(n1487), .X(n1634)
         );
  UDB116SVT24_AOI21_0P75 U2115 ( .A1(\sh_sync_inst/intadd_0/A[6] ), .A2(n1490), 
        .B(n1489), .X(n1499) );
  UDB116SVT24_AN3B_0P75 U2116 ( .B1(n1494), .B2(n1499), .A(
        \sh_sync_inst/intadd_0/A[5] ), .X(n1633) );
  UDB116SVT24_NR2B_0P75 U2117 ( .A(n1634), .B(\sh_sync_inst/intadd_0/A[5] ), 
        .X(n1498) );
  UDB116SVT24_NR2_0P75 U2118 ( .A1(n1633), .A2(n1498), .X(n1495) );
  UDB116SVT24_OAI21_0P75 U2119 ( .A1(n1634), .A2(n1491), .B(n1495), .X(n1501)
         );
  UDB116SVT24_OAI21_0P75 U2120 ( .A1(n1494), .A2(n1493), .B(n1492), .X(n1497)
         );
  UDB116SVT24_NR2B_0P75 U2121 ( .A(n1499), .B(n1495), .X(n1505) );
  UDB116SVT24_INV_0P75 U2122 ( .A(n1505), .X(n1496) );
  UDB116SVT24_AOI21_0P75 U2123 ( .A1(n1497), .A2(n1496), .B(n1633), .X(n1631)
         );
  UDB116SVT24_ND2_MM_0P75 U2124 ( .A1(n1503), .A2(n1631), .X(n1500) );
  UDB116SVT24_ND2_MM_0P75 U2125 ( .A1(n1501), .A2(n1500), .X(n1509) );
  UDB116SVT24_NR2_0P75 U2126 ( .A1(n1499), .A2(n1498), .X(n1504) );
  UDB116SVT24_NR3_0P75 U2127 ( .A1(\sh_sync_inst/intadd_0/A[4] ), .A2(n1504), 
        .A3(n1501), .X(n1630) );
  UDB116SVT24_NR2B_0P75 U2128 ( .A(n1500), .B(n1630), .X(n1502) );
  UDB116SVT24_OR2_0P75 U2129 ( .A1(n1501), .A2(n1502), .X(n1508) );
  UDB116SVT24_OAI21_0P75 U2130 ( .A1(n1631), .A2(n1503), .B(n1502), .X(n1518)
         );
  UDB116SVT24_NR2B_0P75 U2131 ( .A(n1509), .B(n1518), .X(n1506) );
  UDB116SVT24_OAOI211_0P75 U2132 ( .A1(n1505), .A2(n1504), .B(n1508), .C(n1630), .X(n1627) );
  UDB116SVT24_OAI21_0P75 U2133 ( .A1(n1506), .A2(n1627), .B(n1510), .X(n1512)
         );
  UDB116SVT24_NR2_0P75 U2134 ( .A1(n1518), .A2(n1512), .X(n1507) );
  UDB116SVT24_ND2_MM_0P75 U2135 ( .A1(n1506), .A2(n1510), .X(n1626) );
  UDB116SVT24_AOAI211_0P75 U2136 ( .A1(n1509), .A2(n1508), .B(n1507), .C(n1626), .X(n1513) );
  UDB116SVT24_OAI21_0P75 U2137 ( .A1(n1627), .A2(n1510), .B(n1512), .X(n1521)
         );
  UDB116SVT24_NR2_0P75 U2138 ( .A1(n1518), .A2(n1521), .X(n1514) );
  UDB116SVT24_ND2_MM_0P75 U2139 ( .A1(n1514), .A2(n883), .X(n1515) );
  UDB116SVT24_AOI21_0P75 U2140 ( .A1(n1513), .A2(n1515), .B(n939), .X(n1511)
         );
  UDB116SVT24_OAI21B_1 U2141 ( .A1(\sh_sync_inst/n181 ), .A2(n1035), .B(n1511), 
        .X(\sh_sync_inst/n311 ) );
  UDB116SVT24_INV_0P75 U2142 ( .A(n1512), .X(n1517) );
  UDB116SVT24_INV_0P75 U2143 ( .A(n1513), .X(n1519) );
  UDB116SVT24_OAI21_0P75 U2144 ( .A1(n1519), .A2(n1514), .B(n883), .X(n1520)
         );
  UDB116SVT24_OR2_0P75 U2145 ( .A1(n1521), .A2(n1520), .X(n1527) );
  UDB116SVT24_OAI21_0P75 U2146 ( .A1(n1517), .A2(n998), .B(n1527), .X(n1516)
         );
  UDB116SVT24_AOAI211_0P75 U2147 ( .A1(n998), .A2(n1517), .B(n1516), .C(n1515), 
        .X(n1523) );
  UDB116SVT24_OAI21_0P75 U2148 ( .A1(n1519), .A2(n884), .B(n1520), .X(n1537)
         );
  UDB116SVT24_ND2_MM_0P75 U2149 ( .A1(n1521), .A2(n1520), .X(n1526) );
  UDB116SVT24_OR3B_0P75 U2150 ( .B1(\sh_sync_inst/intadd_0/A[1] ), .B2(n1537), 
        .A(n1526), .X(n1524) );
  UDB116SVT24_AN2_1 U2151 ( .A1(n1523), .A2(n1524), .X(n1522) );
  UDB116SVT24_OAI22_0P75 U2152 ( .A1(n1522), .A2(n1531), .B1(
        \sh_sync_inst/n180 ), .B2(n1033), .X(\sh_sync_inst/n310 ) );
  UDB116SVT24_NR2_0P75 U2153 ( .A1(\sh_sync_inst/intadd_0/A[1] ), .A2(n1522), 
        .X(n1536) );
  UDB116SVT24_AOI21_0P75 U2154 ( .A1(n872), .A2(n1523), .B(n1536), .X(n1529)
         );
  UDB116SVT24_NR2B_0P75 U2155 ( .A(n1536), .B(n1537), .X(n1525) );
  UDB116SVT24_AOAI211_0P75 U2156 ( .A1(n1527), .A2(n1526), .B(n1525), .C(n1524), .X(n1528) );
  UDB116SVT24_NR2_0P75 U2157 ( .A1(\sh_sync_inst/intadd_0/A[0] ), .A2(n1528), 
        .X(n1530) );
  UDB116SVT24_NR2_0P75 U2158 ( .A1(n1529), .A2(n1530), .X(n1541) );
  UDB116SVT24_INV_0P75 U2159 ( .A(n1528), .X(n1623) );
  UDB116SVT24_INV_0P75 U2160 ( .A(\sh_sync_inst/intadd_0/A[0] ), .X(n1719) );
  UDB116SVT24_INV_0P75 U2161 ( .A(n1529), .X(n1532) );
  UDB116SVT24_NR3_0P75 U2162 ( .A1(\sh_sync_inst/intadd_0/A[0] ), .A2(n1537), 
        .A3(n1532), .X(n1624) );
  UDB116SVT24_NR2_0P75 U2163 ( .A1(n1624), .A2(n1530), .X(n1533) );
  UDB116SVT24_OAI21_0P75 U2164 ( .A1(n1623), .A2(n1719), .B(n1533), .X(n1538)
         );
  UDB116SVT24_NR3_0P75 U2165 ( .A1(\sh_sync_inst/n176 ), .A2(n1541), .A3(n1538), .X(n1621) );
  UDB116SVT24_NR2_0P75 U2166 ( .A1(n1533), .A2(n1532), .X(n1540) );
  UDB116SVT24_OAI21B_1 U2167 ( .A1(n1536), .A2(n861), .B(n1540), .X(n1535) );
  UDB116SVT24_INV_0P75 U2168 ( .A(n1624), .X(n1534) );
  UDB116SVT24_AOAI211_0P75 U2169 ( .A1(n861), .A2(n1536), .B(n1535), .C(n1534), 
        .X(n1619) );
  UDB116SVT24_MAJ3_0P75 U2170 ( .A1(\sh_sync_inst/n177 ), .A2(
        \sh_sync_inst/n176 ), .A3(n1619), .X(n1539) );
  UDB116SVT24_OAI22_0P75 U2171 ( .A1(n1541), .A2(n1540), .B1(n1539), .B2(n1538), .X(n1542) );
  UDB116SVT24_ND2_MM_0P75 U2172 ( .A1(n978), .A2(n1542), .X(n1543) );
  UDB116SVT24_OAI22_0P75 U2173 ( .A1(n1621), .A2(n1543), .B1(
        \sh_sync_inst/n193 ), .B2(n1034), .X(\sh_sync_inst/n323 ) );
  UDB116SVT24_AO21B_0P75 U2174 ( .A1(n1544), .A2(\fsm_sync_inst/sh_en_prev ), 
        .B(\sh_sync_inst/n204 ), .X(n1545) );
  UDB116SVT24_OA2BB2_0P75 U2175 ( .A1(\fsm_sync_inst/state_neg ), .A2(n1545), 
        .B1(rfin), .B2(\fsm_sync_inst/state_neg ), .X(n1560) );
  UDB116SVT24_OA2BB2_0P75 U2176 ( .A1(\fsm_sync_inst/state_pos ), .A2(n1545), 
        .B1(rfin), .B2(\fsm_sync_inst/state_pos ), .X(n1550) );
  UDB116SVT24_NR2_0P75 U2177 ( .A1(n1560), .A2(n1550), .X(n1548) );
  UDB116SVT24_OAI22_0P75 U2178 ( .A1(\sh_sync_inst/n194 ), .A2(n1548), .B1(
        n1547), .B2(n1546), .X(\shift_buf_inst/n133 ) );
  UDB116SVT24_AOI211_0P75 U2179 ( .A1(n910), .A2(n1549), .B1(n1548), .B2(n988), 
        .X(\sh_sync_inst/N527 ) );
  UDB116SVT24_NR2B_0P75 U2180 ( .A(n1550), .B(n920), .X(\fsm_sync_inst/N10 )
         );
  UDB116SVT24_ND2_MM_0P75 U2181 ( .A1(n994), .A2(PKT_LD), .X(n1551) );
  UDB116SVT24_INV_0P75 U2182 ( .A(n1551), .X(n1882) );
  UDB116SVT24_BUF_1 U2183 ( .A(n1882), .X(n1857) );
  UDB116SVT24_BUF_1 U2184 ( .A(n1857), .X(n1909) );
  UDB116SVT24_ND2_MM_0P75 U2185 ( .A1(rst), .A2(PKT_EN), .X(n1552) );
  UDB116SVT24_NR2_0P75 U2186 ( .A1(PKT_LD), .A2(n1552), .X(n1845) );
  UDB116SVT24_BUF_1 U2187 ( .A(n1845), .X(n1858) );
  UDB116SVT24_BUF_1 U2188 ( .A(n1858), .X(n1883) );
  UDB116SVT24_BUF_1 U2189 ( .A(n1883), .X(n1902) );
  UDB116SVT24_AOI222_0P75 U2190 ( .A1(n1909), .A2(SHIFT_OUT[35]), .B1(n1902), 
        .B2(\pkt_reg_inst/pkt_reg [27]), .C1(n1910), .C2(
        \pkt_reg_inst/pkt_reg [35]), .X(n853) );
  UDB116SVT24_NR2_0P75 U2191 ( .A1(n1039), .A2(n1553), .X(n1584) );
  UDB116SVT24_OAI21_0P75 U2192 ( .A1(n1555), .A2(n983), .B(n1554), .X(n1581)
         );
  UDB116SVT24_AO32_0P75 U2193 ( .A1(n1584), .A2(\sh_sync_inst/n153 ), .A3(
        n1587), .B1(n1556), .B2(n1581), .X(\sh_sync_inst/n279 ) );
  UDB116SVT24_AO32_0P75 U2194 ( .A1(n1559), .A2(n1020), .A3(n976), .B1(n1558), 
        .B2(n1557), .X(\sh_sync_inst/n273 ) );
  UDB116SVT24_NR2B_0P75 U2195 ( .A(n1560), .B(n919), .X(\fsm_sync_inst/N12 )
         );
  UDB116SVT24_AO22_1 U2196 ( .A1(\sh_sync_inst/N529 ), .A2(\sh_sync_inst/n225 ), .B1(\sh_sync_inst/rfin_edge ), .B2(n987), .X(\sh_sync_inst/n145 ) );
  UDB116SVT24_AOI21_0P75 U2197 ( .A1(n1026), .A2(n973), .B(n1561), .X(n1562)
         );
  UDB116SVT24_OAI32_1 U2198 ( .A1(n878), .A2(\sh_sync_inst/intadd_0/B[12] ), 
        .A3(n1563), .B1(n1667), .B2(n1562), .X(\sh_sync_inst/n255 ) );
  UDB116SVT24_AO22_1 U2199 ( .A1(n1566), .A2(n1565), .B1(n1564), .B2(n903), 
        .X(\sh_sync_inst/n260 ) );
  UDB116SVT24_ND2_MM_0P75 U2200 ( .A1(n974), .A2(n953), .X(n1576) );
  UDB116SVT24_ND2_MM_0P75 U2201 ( .A1(n929), .A2(n1011), .X(n1569) );
  UDB116SVT24_OAI21_0P75 U2202 ( .A1(n1567), .A2(n952), .B(n1705), .X(n1574)
         );
  UDB116SVT24_AOI21_0P75 U2203 ( .A1(n1569), .A2(n1707), .B(n1574), .X(n1568)
         );
  UDB116SVT24_OAI32_1 U2204 ( .A1(n1570), .A2(n1576), .A3(n1569), .B1(n867), 
        .B2(n1568), .X(\sh_sync_inst/n268 ) );
  UDB116SVT24_AOI21_0P75 U2205 ( .A1(\sh_sync_inst/n201 ), .A2(n974), .B(n1574), .X(n1573) );
  UDB116SVT24_OAI31_1 U2206 ( .A1(n912), .A2(n1576), .A3(n945), .B(n1571), .X(
        n1572) );
  UDB116SVT24_OAI21B_1 U2207 ( .A1(n913), .A2(n1573), .B(n1572), .X(
        \sh_sync_inst/n269 ) );
  UDB116SVT24_AOI21_0P75 U2208 ( .A1(n1011), .A2(n1574), .B(n892), .X(n1575)
         );
  UDB116SVT24_OAI21_0P75 U2209 ( .A1(n1011), .A2(n1576), .B(n1575), .X(
        \sh_sync_inst/n270 ) );
  UDB116SVT24_AOI32_1 U2210 ( .A1(n1580), .A2(n1579), .A3(n1578), .B1(
        \sh_sync_inst/n148 ), .B2(n1577), .X(\sh_sync_inst/n274 ) );
  UDB116SVT24_AOI21_0P75 U2211 ( .A1(n976), .A2(\sh_sync_inst/n153 ), .B(n1581), .X(n1582) );
  UDB116SVT24_OAI32_1 U2212 ( .A1(n905), .A2(n1583), .A3(n1038), .B1(n906), 
        .B2(n1582), .X(\sh_sync_inst/n278 ) );
  UDB116SVT24_INV_0P75 U2213 ( .A(n1584), .X(n1585) );
  UDB116SVT24_AOI32_1 U2214 ( .A1(n1588), .A2(n1587), .A3(n1586), .B1(
        \sh_sync_inst/n154 ), .B2(n1585), .X(\sh_sync_inst/n280 ) );
  UDB116SVT24_AOI22_1 U2215 ( .A1(\sh_sync_inst/n201 ), .A2(n1591), .B1(n1590), 
        .B2(n1011), .X(n1593) );
  UDB116SVT24_ND3_0P75 U2216 ( .A1(n1593), .A2(n977), .A3(n871), .X(n1592) );
  UDB116SVT24_OAOAI2111_1 U2217 ( .A1(n922), .A2(n1593), .B(n1596), .C(n871), 
        .D(n1592), .X(\sh_sync_inst/n302 ) );
  UDB116SVT24_ND3_0P75 U2218 ( .A1(n953), .A2(n975), .A3(\sh_sync_inst/n177 ), 
        .X(n1595) );
  UDB116SVT24_OAOAI2111_1 U2219 ( .A1(n1037), .A2(n952), .B(n1596), .C(
        \sh_sync_inst/n177 ), .D(n1595), .X(\sh_sync_inst/n303 ) );
  UDB116SVT24_AOI21_0P75 U2220 ( .A1(\sh_sync_inst/n207 ), .A2(n925), .B(n1597), .X(n1598) );
  UDB116SVT24_OAI32_1 U2221 ( .A1(n1600), .A2(n1001), .A3(n1599), .B1(
        \sh_sync_inst/n206 ), .B2(n1598), .X(\sh_sync_inst/n306 ) );
  UDB116SVT24_AOI32_1 U2222 ( .A1(n1604), .A2(n1603), .A3(n1602), .B1(
        \sh_sync_inst/n246 ), .B2(n1601), .X(\sh_sync_inst/n332 ) );
  UDB116SVT24_AOI21_0P75 U2223 ( .A1(n970), .A2(\sh_sync_inst/n247 ), .B(n1605), .X(n1607) );
  UDB116SVT24_OAI32_1 U2224 ( .A1(n1610), .A2(n1609), .A3(n1608), .B1(
        \sh_sync_inst/n248 ), .B2(n1607), .X(\sh_sync_inst/n334 ) );
  UDB116SVT24_INV_0P75 U2225 ( .A(\sh_sync_inst/n212 ), .X(n1613) );
  UDB116SVT24_AOI32_1 U2226 ( .A1(n1614), .A2(n1613), .A3(n1612), .B1(
        \sh_sync_inst/n212 ), .B2(n1611), .X(\sh_sync_inst/n342 ) );
  UDB116SVT24_AO22_1 U2227 ( .A1(n1618), .A2(n1617), .B1(n1616), .B2(n1615), 
        .X(\sh_sync_inst/n347 ) );
  UDB116SVT24_AN2_1 U2228 ( .A1(\sh_sync_inst/N534 ), .A2(\sh_sync_inst/n254 ), 
        .X(\sh_sync_inst/N535 ) );
  UDB116SVT24_INV_0P75 U2229 ( .A(n1619), .X(n1620) );
  UDB116SVT24_OAI21_0P75 U2230 ( .A1(n1621), .A2(n1620), .B(n978), .X(n1622)
         );
  UDB116SVT24_OAI21_0P75 U2231 ( .A1(\sh_sync_inst/n178 ), .A2(n874), .B(n1622), .X(\sh_sync_inst/n308 ) );
  UDB116SVT24_OAI21_0P75 U2232 ( .A1(n1624), .A2(n1623), .B(n979), .X(n1625)
         );
  UDB116SVT24_OAI21_0P75 U2233 ( .A1(\sh_sync_inst/n179 ), .A2(n1033), .B(
        n1625), .X(\sh_sync_inst/n309 ) );
  UDB116SVT24_INV_0P75 U2234 ( .A(n1626), .X(n1628) );
  UDB116SVT24_OAI21_0P75 U2235 ( .A1(n1628), .A2(n1627), .B(n980), .X(n1629)
         );
  UDB116SVT24_OAI21_0P75 U2236 ( .A1(\sh_sync_inst/n182 ), .A2(n1034), .B(
        n1629), .X(\sh_sync_inst/n312 ) );
  UDB116SVT24_OAI21_0P75 U2237 ( .A1(n1631), .A2(n1630), .B(n978), .X(n1632)
         );
  UDB116SVT24_OAI21_0P75 U2238 ( .A1(\sh_sync_inst/n183 ), .A2(n1035), .B(
        n1632), .X(\sh_sync_inst/n313 ) );
  UDB116SVT24_OAI21_0P75 U2239 ( .A1(n1634), .A2(n1633), .B(n979), .X(n1635)
         );
  UDB116SVT24_OAI21_0P75 U2240 ( .A1(\sh_sync_inst/n184 ), .A2(n1032), .B(
        n1635), .X(\sh_sync_inst/n314 ) );
  UDB116SVT24_INV_0P75 U2241 ( .A(n1636), .X(n1638) );
  UDB116SVT24_OAI21_0P75 U2242 ( .A1(n1638), .A2(n1637), .B(n979), .X(n1639)
         );
  UDB116SVT24_OAI21_0P75 U2243 ( .A1(\sh_sync_inst/n188 ), .A2(n1033), .B(
        n1639), .X(\sh_sync_inst/n318 ) );
  UDB116SVT24_OAI21_0P75 U2244 ( .A1(n1641), .A2(n1640), .B(n980), .X(n1642)
         );
  UDB116SVT24_OAI21_0P75 U2245 ( .A1(\sh_sync_inst/n189 ), .A2(n1034), .B(
        n1642), .X(\sh_sync_inst/n319 ) );
  UDB116SVT24_OAI21_0P75 U2246 ( .A1(n1644), .A2(n1643), .B(n978), .X(n1645)
         );
  UDB116SVT24_OAI21_0P75 U2247 ( .A1(\sh_sync_inst/n190 ), .A2(n1035), .B(
        n1645), .X(\sh_sync_inst/n320 ) );
  UDB116SVT24_OAI21_0P75 U2248 ( .A1(n1648), .A2(n1647), .B(n980), .X(n1649)
         );
  UDB116SVT24_OAI21_0P75 U2249 ( .A1(\sh_sync_inst/n191 ), .A2(n1032), .B(
        n1649), .X(\sh_sync_inst/n321 ) );
  UDB116SVT24_AO22_1 U2250 ( .A1(n1654), .A2(n1653), .B1(n1652), .B2(n1651), 
        .X(\sh_sync_inst/n277 ) );
  UDB116SVT24_AO22_1 U2251 ( .A1(n1657), .A2(n1656), .B1(n1655), .B2(n934), 
        .X(\sh_sync_inst/n283 ) );
  UDB116SVT24_AO22_1 U2252 ( .A1(n1661), .A2(n1660), .B1(n1659), .B2(n1658), 
        .X(\sh_sync_inst/n285 ) );
  UDB116SVT24_AO22_1 U2253 ( .A1(n1664), .A2(n1663), .B1(n889), .B2(n1662), 
        .X(\sh_sync_inst/n287 ) );
  UDB116SVT24_OAI21_0P75 U2254 ( .A1(n879), .A2(n1666), .B(n1665), .X(n1669)
         );
  UDB116SVT24_AOI21_0P75 U2255 ( .A1(n1670), .A2(n1669), .B(n1039), .X(n1668)
         );
  UDB116SVT24_OAI21_0P75 U2256 ( .A1(n1670), .A2(n1669), .B(n1668), .X(n1671)
         );
  UDB116SVT24_OAI21_0P75 U2257 ( .A1(n1007), .A2(n1672), .B(n1671), .X(
        \sh_sync_inst/n288 ) );
  UDB116SVT24_INV_0P75 U2258 ( .A(n1673), .X(n1694) );
  UDB116SVT24_AOI21_0P75 U2259 ( .A1(n915), .A2(n1009), .B(n1674), .X(n1677)
         );
  UDB116SVT24_AOI21_0P75 U2260 ( .A1(n1677), .A2(n1676), .B(n921), .X(n1675)
         );
  UDB116SVT24_OAI21_0P75 U2261 ( .A1(n1677), .A2(n1676), .B(n1675), .X(n1678)
         );
  UDB116SVT24_OAI21_0P75 U2262 ( .A1(n1009), .A2(n1694), .B(n1678), .X(
        \sh_sync_inst/n290 ) );
  UDB116SVT24_AOI21_0P75 U2263 ( .A1(n904), .A2(\sh_sync_inst/intadd_0/A[9] ), 
        .B(n1679), .X(n1682) );
  UDB116SVT24_AOI21_0P75 U2264 ( .A1(n1682), .A2(n1681), .B(n1039), .X(n1680)
         );
  UDB116SVT24_OAI21_0P75 U2265 ( .A1(n1682), .A2(n1681), .B(n1680), .X(n1683)
         );
  UDB116SVT24_OAI21_0P75 U2266 ( .A1(\sh_sync_inst/intadd_0/A[9] ), .A2(n1694), 
        .B(n1683), .X(\sh_sync_inst/n292 ) );
  UDB116SVT24_AOI21_0P75 U2267 ( .A1(n1290), .A2(n1005), .B(n1684), .X(n1687)
         );
  UDB116SVT24_AOI21_0P75 U2268 ( .A1(n1687), .A2(n1686), .B(n1037), .X(n1685)
         );
  UDB116SVT24_OAI21_0P75 U2269 ( .A1(n1687), .A2(n1686), .B(n1685), .X(n1688)
         );
  UDB116SVT24_OAI21_0P75 U2270 ( .A1(n1005), .A2(n1694), .B(n1688), .X(
        \sh_sync_inst/n294 ) );
  UDB116SVT24_AOI21_0P75 U2271 ( .A1(n963), .A2(n1004), .B(n1689), .X(n1692)
         );
  UDB116SVT24_AOI21_0P75 U2272 ( .A1(n1692), .A2(n1691), .B(n1038), .X(n1690)
         );
  UDB116SVT24_OAI21_0P75 U2273 ( .A1(n1692), .A2(n1691), .B(n1690), .X(n1693)
         );
  UDB116SVT24_OAI21_0P75 U2274 ( .A1(n1004), .A2(n1694), .B(n1693), .X(
        \sh_sync_inst/n296 ) );
  UDB116SVT24_AOI21_0P75 U2275 ( .A1(n1697), .A2(n894), .B(n896), .X(n1696) );
  UDB116SVT24_OAI32_1 U2276 ( .A1(n877), .A2(n955), .A3(n1697), .B1(
        \sh_sync_inst/intadd_0/B[2] ), .B2(n1696), .X(\sh_sync_inst/n267 ) );
  UDB116SVT24_ND2_MM_0P75 U2277 ( .A1(n1698), .A2(n1708), .X(n1699) );
  UDB116SVT24_AOI32_1 U2278 ( .A1(n1702), .A2(n1701), .A3(n1700), .B1(n1016), 
        .B2(n1699), .X(\sh_sync_inst/n265 ) );
  UDB116SVT24_AOI21_0P75 U2279 ( .A1(n911), .A2(n973), .B(n891), .X(n1704) );
  UDB116SVT24_OAI21_0P75 U2280 ( .A1(n911), .A2(n1705), .B(n1704), .X(
        \sh_sync_inst/n271 ) );
  UDB116SVT24_AOI21_0P75 U2281 ( .A1(n964), .A2(n894), .B(n1706), .X(n1713) );
  UDB116SVT24_NR2_0P75 U2282 ( .A1(n1709), .A2(n954), .X(n1711) );
  UDB116SVT24_AOI31_0P75 U2283 ( .A1(n1023), .A2(n1711), .A3(n962), .B(n891), 
        .X(n1712) );
  UDB116SVT24_OAI21_0P75 U2284 ( .A1(\sh_sync_inst/intadd_0/B[6] ), .A2(n1713), 
        .B(n1712), .X(\sh_sync_inst/n263 ) );
  UDB116SVT24_AOI21_0P75 U2285 ( .A1(\sh_sync_inst/intadd_0/B[3] ), .A2(
        \sh_sync_inst/intadd_0/A[3] ), .B(n1714), .X(n1717) );
  UDB116SVT24_AOI21_0P75 U2286 ( .A1(n1717), .A2(n1716), .B(n1037), .X(n1715)
         );
  UDB116SVT24_OAI21_0P75 U2287 ( .A1(n1717), .A2(n1716), .B(n1715), .X(n1718)
         );
  UDB116SVT24_OAI21_0P75 U2288 ( .A1(\sh_sync_inst/intadd_0/A[3] ), .A2(n1725), 
        .B(n1718), .X(\sh_sync_inst/n298 ) );
  UDB116SVT24_AOI22_1 U2289 ( .A1(n1006), .A2(n912), .B1(
        \sh_sync_inst/intadd_0/B[0] ), .B2(n1719), .X(n1722) );
  UDB116SVT24_AOI21_0P75 U2290 ( .A1(n1723), .A2(n1722), .B(n1036), .X(n1721)
         );
  UDB116SVT24_OAI21_0P75 U2291 ( .A1(n1723), .A2(n1722), .B(n1721), .X(n1724)
         );
  UDB116SVT24_OAI21_0P75 U2292 ( .A1(n1006), .A2(n1725), .B(n1724), .X(
        \sh_sync_inst/n301 ) );
  UDB116SVT24_AOI32_1 U2293 ( .A1(n1728), .A2(n1727), .A3(n1726), .B1(
        \sh_sync_inst/n220 ), .B2(n1732), .X(\sh_sync_inst/n350 ) );
  UDB116SVT24_INV_0P75 U2294 ( .A(\sh_sync_inst/n218 ), .X(n1734) );
  UDB116SVT24_AOI21_0P75 U2295 ( .A1(n1028), .A2(\sh_sync_inst/n219 ), .B(
        n1729), .X(n1731) );
  UDB116SVT24_OAI32_1 U2296 ( .A1(n1734), .A2(n1733), .A3(n1732), .B1(
        \sh_sync_inst/n218 ), .B2(n1731), .X(\sh_sync_inst/n348 ) );
  UDB116SVT24_OAI21_0P75 U2297 ( .A1(n985), .A2(n1736), .B(n1735), .X(
        \sh_sync_inst/N30 ) );
  UDB116SVT24_OA22_1 U2298 ( .A1(n1855), .A2(n1739), .B1(n1852), .B2(n1738), 
        .X(\shift_buf_inst/n138 ) );
  UDB116SVT24_BUF_1 U2299 ( .A(n1882), .X(n1821) );
  UDB116SVT24_INV_0P75 U2300 ( .A(n1821), .X(n1749) );
  UDB116SVT24_BUF_1 U2301 ( .A(n1845), .X(n1784) );
  UDB116SVT24_BUF_1 U2302 ( .A(n1784), .X(n1746) );
  UDB116SVT24_BUF_1 U2303 ( .A(n1804), .X(n1836) );
  UDB116SVT24_AOI22_1 U2304 ( .A1(n1746), .A2(\pkt_reg_inst/pkt_reg [55]), 
        .B1(n1836), .B2(\pkt_reg_inst/pkt_reg [63]), .X(n1740) );
  UDB116SVT24_OAI21_0P75 U2305 ( .A1(n1749), .A2(n1741), .B(n1740), .X(
        \pkt_reg_inst/n39 ) );
  UDB116SVT24_BUF_1 U2306 ( .A(n1906), .X(n1889) );
  UDB116SVT24_BUF_1 U2307 ( .A(n1889), .X(n1905) );
  UDB116SVT24_AOI22_1 U2308 ( .A1(n1746), .A2(\pkt_reg_inst/pkt_reg [54]), 
        .B1(n1905), .B2(\pkt_reg_inst/pkt_reg [62]), .X(n1742) );
  UDB116SVT24_OAI21_0P75 U2309 ( .A1(n1749), .A2(n1743), .B(n1742), .X(
        \pkt_reg_inst/n40 ) );
  UDB116SVT24_BUF_1 U2310 ( .A(n1804), .X(n1816) );
  UDB116SVT24_BUF_1 U2311 ( .A(n1816), .X(n1765) );
  UDB116SVT24_AOI22_1 U2312 ( .A1(n1746), .A2(\pkt_reg_inst/pkt_reg [53]), 
        .B1(n1765), .B2(\pkt_reg_inst/pkt_reg [61]), .X(n1744) );
  UDB116SVT24_OAI21_0P75 U2313 ( .A1(n1749), .A2(n1745), .B(n1744), .X(
        \pkt_reg_inst/n41 ) );
  UDB116SVT24_BUF_1 U2314 ( .A(n1816), .X(n1754) );
  UDB116SVT24_AOI22_1 U2315 ( .A1(n1746), .A2(\pkt_reg_inst/pkt_reg [52]), 
        .B1(n1754), .B2(\pkt_reg_inst/pkt_reg [60]), .X(n1747) );
  UDB116SVT24_OAI21_0P75 U2316 ( .A1(n1749), .A2(n1748), .B(n1747), .X(
        \pkt_reg_inst/n42 ) );
  UDB116SVT24_BUF_1 U2317 ( .A(n1882), .X(n1783) );
  UDB116SVT24_INV_0P75 U2318 ( .A(n1783), .X(n1760) );
  UDB116SVT24_BUF_1 U2319 ( .A(n1784), .X(n1757) );
  UDB116SVT24_AOI22_1 U2320 ( .A1(n1757), .A2(\pkt_reg_inst/pkt_reg [51]), 
        .B1(n1754), .B2(\pkt_reg_inst/pkt_reg [59]), .X(n1750) );
  UDB116SVT24_OAI21_0P75 U2321 ( .A1(n1760), .A2(n1751), .B(n1750), .X(
        \pkt_reg_inst/n43 ) );
  UDB116SVT24_AOI22_1 U2322 ( .A1(n1757), .A2(\pkt_reg_inst/pkt_reg [50]), 
        .B1(n1754), .B2(\pkt_reg_inst/pkt_reg [58]), .X(n1752) );
  UDB116SVT24_OAI21_0P75 U2323 ( .A1(n1760), .A2(n1753), .B(n1752), .X(
        \pkt_reg_inst/n44 ) );
  UDB116SVT24_AOI22_1 U2324 ( .A1(n1757), .A2(\pkt_reg_inst/pkt_reg [49]), 
        .B1(n1754), .B2(\pkt_reg_inst/pkt_reg [57]), .X(n1755) );
  UDB116SVT24_OAI21_0P75 U2325 ( .A1(n1760), .A2(n1756), .B(n1755), .X(
        \pkt_reg_inst/n45 ) );
  UDB116SVT24_AOI22_1 U2326 ( .A1(n1757), .A2(\pkt_reg_inst/pkt_reg [48]), 
        .B1(n1765), .B2(\pkt_reg_inst/pkt_reg [56]), .X(n1758) );
  UDB116SVT24_OAI21_0P75 U2327 ( .A1(n1760), .A2(n1759), .B(n1758), .X(
        \pkt_reg_inst/n46 ) );
  UDB116SVT24_INV_0P75 U2328 ( .A(n1783), .X(n1771) );
  UDB116SVT24_BUF_1 U2329 ( .A(n1784), .X(n1768) );
  UDB116SVT24_BUF_1 U2330 ( .A(n1816), .X(n1792) );
  UDB116SVT24_AOI22_1 U2331 ( .A1(n1768), .A2(\pkt_reg_inst/pkt_reg [47]), 
        .B1(\pkt_reg_inst/pkt_reg [55]), .B2(n1792), .X(n1761) );
  UDB116SVT24_OAI21_0P75 U2332 ( .A1(n1771), .A2(n1762), .B(n1761), .X(
        \pkt_reg_inst/n47 ) );
  UDB116SVT24_AOI22_1 U2333 ( .A1(n1768), .A2(\pkt_reg_inst/pkt_reg [46]), 
        .B1(n1765), .B2(\pkt_reg_inst/pkt_reg [54]), .X(n1763) );
  UDB116SVT24_OAI21_0P75 U2334 ( .A1(n1771), .A2(n1764), .B(n1763), .X(
        \pkt_reg_inst/n48 ) );
  UDB116SVT24_AOI22_1 U2335 ( .A1(n1768), .A2(\pkt_reg_inst/pkt_reg [45]), 
        .B1(n1765), .B2(\pkt_reg_inst/pkt_reg [53]), .X(n1766) );
  UDB116SVT24_OAI21_0P75 U2336 ( .A1(n1771), .A2(n1767), .B(n1766), .X(
        \pkt_reg_inst/n49 ) );
  UDB116SVT24_BUF_1 U2337 ( .A(n1792), .X(n1776) );
  UDB116SVT24_AOI22_1 U2338 ( .A1(n1768), .A2(\pkt_reg_inst/pkt_reg [44]), 
        .B1(n1776), .B2(\pkt_reg_inst/pkt_reg [52]), .X(n1769) );
  UDB116SVT24_OAI21_0P75 U2339 ( .A1(n1771), .A2(n1770), .B(n1769), .X(
        \pkt_reg_inst/n50 ) );
  UDB116SVT24_INV_0P75 U2340 ( .A(n1783), .X(n1782) );
  UDB116SVT24_BUF_1 U2341 ( .A(n1845), .X(n1779) );
  UDB116SVT24_AOI22_1 U2342 ( .A1(n1779), .A2(\pkt_reg_inst/pkt_reg [43]), 
        .B1(n1776), .B2(\pkt_reg_inst/pkt_reg [51]), .X(n1772) );
  UDB116SVT24_OAI21_0P75 U2343 ( .A1(n1782), .A2(n1773), .B(n1772), .X(
        \pkt_reg_inst/n51 ) );
  UDB116SVT24_AOI22_1 U2344 ( .A1(n1779), .A2(\pkt_reg_inst/pkt_reg [42]), 
        .B1(n1776), .B2(\pkt_reg_inst/pkt_reg [50]), .X(n1774) );
  UDB116SVT24_OAI21_0P75 U2345 ( .A1(n1782), .A2(n1775), .B(n1774), .X(
        \pkt_reg_inst/n52 ) );
  UDB116SVT24_AOI22_1 U2346 ( .A1(n1779), .A2(\pkt_reg_inst/pkt_reg [41]), 
        .B1(n1776), .B2(\pkt_reg_inst/pkt_reg [49]), .X(n1777) );
  UDB116SVT24_OAI21_0P75 U2347 ( .A1(n1782), .A2(n1778), .B(n1777), .X(
        \pkt_reg_inst/n53 ) );
  UDB116SVT24_BUF_1 U2348 ( .A(n1792), .X(n1789) );
  UDB116SVT24_AOI22_1 U2349 ( .A1(n1779), .A2(\pkt_reg_inst/pkt_reg [40]), 
        .B1(n1789), .B2(\pkt_reg_inst/pkt_reg [48]), .X(n1780) );
  UDB116SVT24_OAI21_0P75 U2350 ( .A1(n1782), .A2(n1781), .B(n1780), .X(
        \pkt_reg_inst/n54 ) );
  UDB116SVT24_INV_0P75 U2351 ( .A(n1783), .X(n1796) );
  UDB116SVT24_BUF_1 U2352 ( .A(n1784), .X(n1822) );
  UDB116SVT24_BUF_1 U2353 ( .A(n1822), .X(n1793) );
  UDB116SVT24_AOI22_1 U2354 ( .A1(n1793), .A2(\pkt_reg_inst/pkt_reg [39]), 
        .B1(n1789), .B2(\pkt_reg_inst/pkt_reg [47]), .X(n1785) );
  UDB116SVT24_OAI21_0P75 U2355 ( .A1(n1796), .A2(n1786), .B(n1785), .X(
        \pkt_reg_inst/n55 ) );
  UDB116SVT24_AOI22_1 U2356 ( .A1(n1793), .A2(\pkt_reg_inst/pkt_reg [38]), 
        .B1(n1789), .B2(\pkt_reg_inst/pkt_reg [46]), .X(n1787) );
  UDB116SVT24_OAI21_0P75 U2357 ( .A1(n1796), .A2(n1788), .B(n1787), .X(
        \pkt_reg_inst/n56 ) );
  UDB116SVT24_AOI22_1 U2358 ( .A1(n1793), .A2(\pkt_reg_inst/pkt_reg [37]), 
        .B1(n1789), .B2(\pkt_reg_inst/pkt_reg [45]), .X(n1790) );
  UDB116SVT24_OAI21_0P75 U2359 ( .A1(n1796), .A2(n1791), .B(n1790), .X(
        \pkt_reg_inst/n57 ) );
  UDB116SVT24_BUF_1 U2360 ( .A(n1792), .X(n1801) );
  UDB116SVT24_AOI22_1 U2361 ( .A1(n1793), .A2(\pkt_reg_inst/pkt_reg [36]), 
        .B1(n1801), .B2(\pkt_reg_inst/pkt_reg [44]), .X(n1794) );
  UDB116SVT24_OAI21_0P75 U2362 ( .A1(n1796), .A2(n1795), .B(n1794), .X(
        \pkt_reg_inst/n58 ) );
  UDB116SVT24_INV_0P75 U2363 ( .A(n1821), .X(n1808) );
  UDB116SVT24_BUF_1 U2364 ( .A(n1822), .X(n1805) );
  UDB116SVT24_AOI22_1 U2365 ( .A1(n1805), .A2(\pkt_reg_inst/pkt_reg [35]), 
        .B1(n1801), .B2(\pkt_reg_inst/pkt_reg [43]), .X(n1797) );
  UDB116SVT24_OAI21_0P75 U2366 ( .A1(n1808), .A2(n1798), .B(n1797), .X(
        \pkt_reg_inst/n59 ) );
  UDB116SVT24_AOI22_1 U2367 ( .A1(n1805), .A2(\pkt_reg_inst/pkt_reg [34]), 
        .B1(n1801), .B2(\pkt_reg_inst/pkt_reg [42]), .X(n1799) );
  UDB116SVT24_OAI21_0P75 U2368 ( .A1(n1808), .A2(n1800), .B(n1799), .X(
        \pkt_reg_inst/n60 ) );
  UDB116SVT24_AOI22_1 U2369 ( .A1(n1805), .A2(\pkt_reg_inst/pkt_reg [33]), 
        .B1(n1801), .B2(\pkt_reg_inst/pkt_reg [41]), .X(n1802) );
  UDB116SVT24_OAI21_0P75 U2370 ( .A1(n1808), .A2(n1803), .B(n1802), .X(
        \pkt_reg_inst/n61 ) );
  UDB116SVT24_BUF_1 U2371 ( .A(n1804), .X(n1813) );
  UDB116SVT24_AOI22_1 U2372 ( .A1(n1805), .A2(\pkt_reg_inst/pkt_reg [32]), 
        .B1(n1813), .B2(\pkt_reg_inst/pkt_reg [40]), .X(n1806) );
  UDB116SVT24_OAI21_0P75 U2373 ( .A1(n1808), .A2(n1807), .B(n1806), .X(
        \pkt_reg_inst/n62 ) );
  UDB116SVT24_INV_0P75 U2374 ( .A(n1821), .X(n1820) );
  UDB116SVT24_BUF_1 U2375 ( .A(n1822), .X(n1817) );
  UDB116SVT24_AOI22_1 U2376 ( .A1(n1817), .A2(\pkt_reg_inst/pkt_reg [31]), 
        .B1(n1813), .B2(\pkt_reg_inst/pkt_reg [39]), .X(n1809) );
  UDB116SVT24_OAI21_0P75 U2377 ( .A1(n1820), .A2(n1810), .B(n1809), .X(
        \pkt_reg_inst/n63 ) );
  UDB116SVT24_AOI22_1 U2378 ( .A1(n1817), .A2(\pkt_reg_inst/pkt_reg [30]), 
        .B1(n1813), .B2(\pkt_reg_inst/pkt_reg [38]), .X(n1811) );
  UDB116SVT24_OAI21_0P75 U2379 ( .A1(n1820), .A2(n1812), .B(n1811), .X(
        \pkt_reg_inst/n64 ) );
  UDB116SVT24_AOI22_1 U2380 ( .A1(n1817), .A2(\pkt_reg_inst/pkt_reg [29]), 
        .B1(n1813), .B2(\pkt_reg_inst/pkt_reg [37]), .X(n1814) );
  UDB116SVT24_OAI21_0P75 U2381 ( .A1(n1820), .A2(n1815), .B(n1814), .X(
        \pkt_reg_inst/n65 ) );
  UDB116SVT24_BUF_1 U2382 ( .A(n1816), .X(n1827) );
  UDB116SVT24_AOI22_1 U2383 ( .A1(n1817), .A2(\pkt_reg_inst/pkt_reg [28]), 
        .B1(n1827), .B2(\pkt_reg_inst/pkt_reg [36]), .X(n1818) );
  UDB116SVT24_OAI21_0P75 U2384 ( .A1(n1820), .A2(n1819), .B(n1818), .X(
        \pkt_reg_inst/n66 ) );
  UDB116SVT24_INV_0P75 U2385 ( .A(n1821), .X(n1833) );
  UDB116SVT24_BUF_1 U2386 ( .A(n1822), .X(n1830) );
  UDB116SVT24_AOI22_1 U2387 ( .A1(n1830), .A2(\pkt_reg_inst/pkt_reg [26]), 
        .B1(n1827), .B2(\pkt_reg_inst/pkt_reg [34]), .X(n1823) );
  UDB116SVT24_OAI21_0P75 U2388 ( .A1(n1833), .A2(n1824), .B(n1823), .X(
        \pkt_reg_inst/n68 ) );
  UDB116SVT24_AOI22_1 U2389 ( .A1(n1830), .A2(\pkt_reg_inst/pkt_reg [25]), 
        .B1(n1827), .B2(\pkt_reg_inst/pkt_reg [33]), .X(n1825) );
  UDB116SVT24_OAI21_0P75 U2390 ( .A1(n1833), .A2(n1826), .B(n1825), .X(
        \pkt_reg_inst/n69 ) );
  UDB116SVT24_AOI22_1 U2391 ( .A1(n1830), .A2(\pkt_reg_inst/pkt_reg [24]), 
        .B1(n1827), .B2(\pkt_reg_inst/pkt_reg [32]), .X(n1828) );
  UDB116SVT24_OAI21_0P75 U2392 ( .A1(n1833), .A2(n1829), .B(n1828), .X(
        \pkt_reg_inst/n70 ) );
  UDB116SVT24_AOI22_1 U2393 ( .A1(n1830), .A2(\pkt_reg_inst/pkt_reg [23]), 
        .B1(n1836), .B2(\pkt_reg_inst/pkt_reg [31]), .X(n1831) );
  UDB116SVT24_OAI21_0P75 U2394 ( .A1(n1833), .A2(n1832), .B(n1831), .X(
        \pkt_reg_inst/n71 ) );
  UDB116SVT24_INV_0P75 U2395 ( .A(n1857), .X(n1844) );
  UDB116SVT24_BUF_1 U2396 ( .A(n1858), .X(n1841) );
  UDB116SVT24_AOI22_1 U2397 ( .A1(n1841), .A2(\pkt_reg_inst/pkt_reg [22]), 
        .B1(n1836), .B2(\pkt_reg_inst/pkt_reg [30]), .X(n1834) );
  UDB116SVT24_OAI21_0P75 U2398 ( .A1(n1844), .A2(n1835), .B(n1834), .X(
        \pkt_reg_inst/n72 ) );
  UDB116SVT24_AOI22_1 U2399 ( .A1(n1841), .A2(\pkt_reg_inst/pkt_reg [21]), 
        .B1(n1836), .B2(\pkt_reg_inst/pkt_reg [29]), .X(n1837) );
  UDB116SVT24_OAI21_0P75 U2400 ( .A1(n1844), .A2(n1838), .B(n1837), .X(
        \pkt_reg_inst/n73 ) );
  UDB116SVT24_BUF_1 U2401 ( .A(n1906), .X(n1864) );
  UDB116SVT24_BUF_1 U2402 ( .A(n1864), .X(n1848) );
  UDB116SVT24_AOI22_1 U2403 ( .A1(n1841), .A2(\pkt_reg_inst/pkt_reg [20]), 
        .B1(n1848), .B2(\pkt_reg_inst/pkt_reg [28]), .X(n1839) );
  UDB116SVT24_OAI21_0P75 U2404 ( .A1(n1844), .A2(n1840), .B(n1839), .X(
        \pkt_reg_inst/n74 ) );
  UDB116SVT24_AOI22_1 U2405 ( .A1(n1841), .A2(\pkt_reg_inst/pkt_reg [19]), 
        .B1(n1848), .B2(\pkt_reg_inst/pkt_reg [27]), .X(n1842) );
  UDB116SVT24_OAI21_0P75 U2406 ( .A1(n1844), .A2(n1843), .B(n1842), .X(
        \pkt_reg_inst/n75 ) );
  UDB116SVT24_INV_0P75 U2407 ( .A(n1857), .X(n1856) );
  UDB116SVT24_BUF_1 U2408 ( .A(n1845), .X(n1853) );
  UDB116SVT24_AOI22_1 U2409 ( .A1(n1853), .A2(\pkt_reg_inst/pkt_reg [18]), 
        .B1(n1848), .B2(\pkt_reg_inst/pkt_reg [26]), .X(n1846) );
  UDB116SVT24_OAI21_0P75 U2410 ( .A1(n1856), .A2(n1847), .B(n1846), .X(
        \pkt_reg_inst/n76 ) );
  UDB116SVT24_AOI22_1 U2411 ( .A1(n1853), .A2(\pkt_reg_inst/pkt_reg [17]), 
        .B1(n1848), .B2(\pkt_reg_inst/pkt_reg [25]), .X(n1849) );
  UDB116SVT24_OAI21_0P75 U2412 ( .A1(n1856), .A2(n1850), .B(n1849), .X(
        \pkt_reg_inst/n77 ) );
  UDB116SVT24_BUF_1 U2413 ( .A(n1864), .X(n1861) );
  UDB116SVT24_AOI22_1 U2414 ( .A1(n1853), .A2(\pkt_reg_inst/pkt_reg [16]), 
        .B1(n1861), .B2(\pkt_reg_inst/pkt_reg [24]), .X(n1851) );
  UDB116SVT24_OAI21_0P75 U2415 ( .A1(n1856), .A2(n1852), .B(n1851), .X(
        \pkt_reg_inst/n78 ) );
  UDB116SVT24_AOI22_1 U2416 ( .A1(n1853), .A2(\pkt_reg_inst/pkt_reg [15]), 
        .B1(n1861), .B2(\pkt_reg_inst/pkt_reg [23]), .X(n1854) );
  UDB116SVT24_OAI21_0P75 U2417 ( .A1(n1856), .A2(n1855), .B(n1854), .X(
        \pkt_reg_inst/n79 ) );
  UDB116SVT24_INV_0P75 U2418 ( .A(n1857), .X(n1870) );
  UDB116SVT24_BUF_1 U2419 ( .A(n1858), .X(n1867) );
  UDB116SVT24_AOI22_1 U2420 ( .A1(n1867), .A2(\pkt_reg_inst/pkt_reg [14]), 
        .B1(n1861), .B2(\pkt_reg_inst/pkt_reg [22]), .X(n1859) );
  UDB116SVT24_OAI21_0P75 U2421 ( .A1(n1870), .A2(n1860), .B(n1859), .X(
        \pkt_reg_inst/n80 ) );
  UDB116SVT24_AOI22_1 U2422 ( .A1(n1867), .A2(\pkt_reg_inst/pkt_reg [13]), 
        .B1(n1861), .B2(\pkt_reg_inst/pkt_reg [21]), .X(n1862) );
  UDB116SVT24_OAI21_0P75 U2423 ( .A1(n1870), .A2(n1863), .B(n1862), .X(
        \pkt_reg_inst/n81 ) );
  UDB116SVT24_BUF_1 U2424 ( .A(n1864), .X(n1873) );
  UDB116SVT24_AOI22_1 U2425 ( .A1(n1867), .A2(\pkt_reg_inst/pkt_reg [12]), 
        .B1(n1873), .B2(\pkt_reg_inst/pkt_reg [20]), .X(n1865) );
  UDB116SVT24_OAI21_0P75 U2426 ( .A1(n1870), .A2(n1866), .B(n1865), .X(
        \pkt_reg_inst/n82 ) );
  UDB116SVT24_AOI22_1 U2427 ( .A1(n1867), .A2(\pkt_reg_inst/pkt_reg [11]), 
        .B1(n1873), .B2(\pkt_reg_inst/pkt_reg [19]), .X(n1868) );
  UDB116SVT24_OAI21_0P75 U2428 ( .A1(n1870), .A2(n1869), .B(n1868), .X(
        \pkt_reg_inst/n83 ) );
  UDB116SVT24_INV_0P75 U2429 ( .A(n1909), .X(n1881) );
  UDB116SVT24_BUF_1 U2430 ( .A(n1883), .X(n1878) );
  UDB116SVT24_AOI22_1 U2431 ( .A1(n1878), .A2(\pkt_reg_inst/pkt_reg [10]), 
        .B1(n1873), .B2(\pkt_reg_inst/pkt_reg [18]), .X(n1871) );
  UDB116SVT24_OAI21_0P75 U2432 ( .A1(n1881), .A2(n1872), .B(n1871), .X(
        \pkt_reg_inst/n84 ) );
  UDB116SVT24_AOI22_1 U2433 ( .A1(n1878), .A2(\pkt_reg_inst/pkt_reg [9]), .B1(
        n1873), .B2(\pkt_reg_inst/pkt_reg [17]), .X(n1874) );
  UDB116SVT24_OAI21_0P75 U2434 ( .A1(n1881), .A2(n1875), .B(n1874), .X(
        \pkt_reg_inst/n85 ) );
  UDB116SVT24_BUF_1 U2435 ( .A(n1889), .X(n1886) );
  UDB116SVT24_AOI22_1 U2436 ( .A1(n1878), .A2(\pkt_reg_inst/pkt_reg [8]), .B1(
        n1886), .B2(\pkt_reg_inst/pkt_reg [16]), .X(n1876) );
  UDB116SVT24_OAI21_0P75 U2437 ( .A1(n1881), .A2(n1877), .B(n1876), .X(
        \pkt_reg_inst/n86 ) );
  UDB116SVT24_AOI22_1 U2438 ( .A1(n1878), .A2(\pkt_reg_inst/pkt_reg [7]), .B1(
        n1886), .B2(\pkt_reg_inst/pkt_reg [15]), .X(n1879) );
  UDB116SVT24_OAI21_0P75 U2439 ( .A1(n1881), .A2(n1880), .B(n1879), .X(
        \pkt_reg_inst/n87 ) );
  UDB116SVT24_BUF_1 U2440 ( .A(n1882), .X(n1896) );
  UDB116SVT24_BUF_1 U2441 ( .A(n1896), .X(n1907) );
  UDB116SVT24_INV_0P75 U2442 ( .A(n1907), .X(n1895) );
  UDB116SVT24_BUF_1 U2443 ( .A(n1883), .X(n1892) );
  UDB116SVT24_AOI22_1 U2444 ( .A1(n1892), .A2(\pkt_reg_inst/pkt_reg [6]), .B1(
        n1886), .B2(\pkt_reg_inst/pkt_reg [14]), .X(n1884) );
  UDB116SVT24_OAI21_0P75 U2445 ( .A1(n1895), .A2(n1885), .B(n1884), .X(
        \pkt_reg_inst/n88 ) );
  UDB116SVT24_AOI22_1 U2446 ( .A1(n1892), .A2(\pkt_reg_inst/pkt_reg [5]), .B1(
        n1886), .B2(\pkt_reg_inst/pkt_reg [13]), .X(n1887) );
  UDB116SVT24_OAI21_0P75 U2447 ( .A1(n1895), .A2(n1888), .B(n1887), .X(
        \pkt_reg_inst/n89 ) );
  UDB116SVT24_BUF_1 U2448 ( .A(n1889), .X(n1899) );
  UDB116SVT24_AOI22_1 U2449 ( .A1(n1892), .A2(\pkt_reg_inst/pkt_reg [4]), .B1(
        n1899), .B2(\pkt_reg_inst/pkt_reg [12]), .X(n1890) );
  UDB116SVT24_OAI21_0P75 U2450 ( .A1(n1895), .A2(n1891), .B(n1890), .X(
        \pkt_reg_inst/n90 ) );
  UDB116SVT24_AOI22_1 U2451 ( .A1(n1892), .A2(\pkt_reg_inst/pkt_reg [3]), .B1(
        n1899), .B2(\pkt_reg_inst/pkt_reg [11]), .X(n1893) );
  UDB116SVT24_OAI21_0P75 U2452 ( .A1(n1895), .A2(n1894), .B(n1893), .X(
        \pkt_reg_inst/n91 ) );
  UDB116SVT24_BUF_1 U2453 ( .A(n1896), .X(n1911) );
  UDB116SVT24_INV_0P75 U2454 ( .A(n1911), .X(n1949) );
  UDB116SVT24_AOI22_1 U2455 ( .A1(n1902), .A2(\pkt_reg_inst/pkt_reg [2]), .B1(
        n1899), .B2(\pkt_reg_inst/pkt_reg [10]), .X(n1897) );
  UDB116SVT24_OAI21_0P75 U2456 ( .A1(n1949), .A2(n1898), .B(n1897), .X(
        \pkt_reg_inst/n92 ) );
  UDB116SVT24_AOI22_1 U2457 ( .A1(n1902), .A2(\pkt_reg_inst/pkt_reg [1]), .B1(
        n1899), .B2(\pkt_reg_inst/pkt_reg [9]), .X(n1900) );
  UDB116SVT24_OAI21_0P75 U2458 ( .A1(n1949), .A2(n1901), .B(n1900), .X(
        \pkt_reg_inst/n93 ) );
  UDB116SVT24_AOI22_1 U2459 ( .A1(n1902), .A2(\pkt_reg_inst/pkt_reg [0]), .B1(
        n1905), .B2(\pkt_reg_inst/pkt_reg [8]), .X(n1903) );
  UDB116SVT24_OAI21_0P75 U2460 ( .A1(n1949), .A2(n1904), .B(n1903), .X(
        \pkt_reg_inst/n94 ) );
  UDB116SVT24_AO22_1 U2461 ( .A1(n1911), .A2(SHIFT_OUT[7]), .B1(n1905), .B2(
        \pkt_reg_inst/pkt_reg [7]), .X(\pkt_reg_inst/n95 ) );
  UDB116SVT24_AO22_1 U2462 ( .A1(n1911), .A2(SHIFT_OUT[6]), .B1(n1905), .B2(
        \pkt_reg_inst/pkt_reg [6]), .X(\pkt_reg_inst/n96 ) );
  UDB116SVT24_AO22_1 U2463 ( .A1(n1907), .A2(SHIFT_OUT[5]), .B1(n1908), .B2(
        \pkt_reg_inst/pkt_reg [5]), .X(\pkt_reg_inst/n97 ) );
  UDB116SVT24_AO22_1 U2464 ( .A1(n1907), .A2(SHIFT_OUT[4]), .B1(n1906), .B2(
        \pkt_reg_inst/pkt_reg [4]), .X(\pkt_reg_inst/n98 ) );
  UDB116SVT24_AO22_1 U2465 ( .A1(n1907), .A2(SHIFT_OUT[3]), .B1(n1908), .B2(
        \pkt_reg_inst/pkt_reg [3]), .X(\pkt_reg_inst/n99 ) );
  UDB116SVT24_AO22_1 U2466 ( .A1(n1909), .A2(SHIFT_OUT[2]), .B1(n1908), .B2(
        \pkt_reg_inst/pkt_reg [2]), .X(\pkt_reg_inst/n100 ) );
  UDB116SVT24_AO22_1 U2467 ( .A1(n1909), .A2(SHIFT_OUT[1]), .B1(n1910), .B2(
        \pkt_reg_inst/pkt_reg [1]), .X(\pkt_reg_inst/n101 ) );
  UDB116SVT24_AO22_1 U2468 ( .A1(SHIFT_OUT[0]), .A2(n1911), .B1(n1910), .B2(
        \pkt_reg_inst/pkt_reg [0]), .X(\pkt_reg_inst/n102 ) );
  UDB116SVT24_AO22_1 U2469 ( .A1(n957), .A2(SPI_IN[0]), .B1(
        \pkt_reg_inst/pkt_reg [56]), .B2(n1013), .X(\pkt_reg_inst/n31 ) );
  UDB116SVT24_AO22_1 U2470 ( .A1(n956), .A2(SPI_IN[3]), .B1(
        \pkt_reg_inst/pkt_reg [59]), .B2(n1014), .X(\pkt_reg_inst/n34 ) );
  UDB116SVT24_AO22_1 U2471 ( .A1(n957), .A2(SPI_IN[2]), .B1(
        \pkt_reg_inst/pkt_reg [58]), .B2(n1013), .X(\pkt_reg_inst/n33 ) );
  UDB116SVT24_AO22_1 U2472 ( .A1(n956), .A2(SPI_IN[7]), .B1(
        \pkt_reg_inst/pkt_reg [63]), .B2(n1014), .X(\pkt_reg_inst/n38 ) );
  UDB116SVT24_AO22_1 U2473 ( .A1(n957), .A2(SPI_IN[1]), .B1(
        \pkt_reg_inst/pkt_reg [57]), .B2(n1013), .X(\pkt_reg_inst/n32 ) );
  UDB116SVT24_AO22_1 U2474 ( .A1(n956), .A2(SPI_IN[4]), .B1(
        \pkt_reg_inst/pkt_reg [60]), .B2(n1014), .X(\pkt_reg_inst/n35 ) );
  UDB116SVT24_AO22_1 U2475 ( .A1(n957), .A2(SPI_IN[5]), .B1(
        \pkt_reg_inst/pkt_reg [61]), .B2(n1013), .X(\pkt_reg_inst/n36 ) );
  UDB116SVT24_INV_0P75 U2476 ( .A(TX_LD), .X(n1924) );
  UDB116SVT24_AO222_1 U2477 ( .A1(n935), .A2(\tx_buf_inst/buffer [0]), .B1(
        n960), .B2(SPI_OUT[1]), .C1(n958), .C2(\tx_buf_inst/buffer [1]), .X(
        \tx_buf_inst/n20 ) );
  UDB116SVT24_AO222_1 U2478 ( .A1(n936), .A2(\tx_buf_inst/buffer [1]), .B1(
        n959), .B2(\tx_buf_inst/buffer [2]), .C1(SPI_OUT[2]), .C2(n960), .X(
        \tx_buf_inst/n21 ) );
  UDB116SVT24_AO222_1 U2479 ( .A1(n935), .A2(\tx_buf_inst/buffer [2]), .B1(
        n958), .B2(\tx_buf_inst/buffer [3]), .C1(SPI_OUT[3]), .C2(n961), .X(
        \tx_buf_inst/n22 ) );
  UDB116SVT24_AO222_1 U2480 ( .A1(n936), .A2(\tx_buf_inst/buffer [3]), .B1(
        n959), .B2(\tx_buf_inst/buffer [4]), .C1(SPI_OUT[4]), .C2(n960), .X(
        \tx_buf_inst/n23 ) );
  UDB116SVT24_AO222_1 U2481 ( .A1(n935), .A2(\tx_buf_inst/buffer [4]), .B1(
        n958), .B2(\tx_buf_inst/buffer [5]), .C1(SPI_OUT[5]), .C2(n961), .X(
        \tx_buf_inst/n24 ) );
  UDB116SVT24_AO22_1 U2482 ( .A1(\tx_buf_inst/buffer [0]), .A2(n959), .B1(n961), .B2(SPI_OUT[0]), .X(\tx_buf_inst/n27 ) );
  UDB116SVT24_AO222_1 U2483 ( .A1(n936), .A2(\tx_buf_inst/buffer [5]), .B1(
        n959), .B2(\tx_buf_inst/buffer [6]), .C1(SPI_OUT[6]), .C2(n960), .X(
        \tx_buf_inst/n25 ) );
  UDB116SVT24_AO222_1 U2484 ( .A1(n935), .A2(\tx_buf_inst/buffer [6]), .B1(
        n958), .B2(\tx_buf_inst/buffer [7]), .C1(SPI_OUT[7]), .C2(n961), .X(
        \tx_buf_inst/n26 ) );
  UDB116SVT24_AO21B_0P75 U2485 ( .A1(n1920), .A2(n1919), .B(tx_state[1]), .X(
        n1921) );
  UDB116SVT24_ND4B_1 U2486 ( .A(n900), .B1(n938), .B2(tx_state[0]), .B3(n856), 
        .X(n1923) );
  UDB116SVT24_OAI21_0P75 U2487 ( .A1(n1922), .A2(n1921), .B(n1923), .X(n850)
         );
  UDB116SVT24_OAI21_0P75 U2488 ( .A1(n1925), .A2(n1924), .B(n1923), .X(n847)
         );
  UDB116SVT24_OAI32_1 U2489 ( .A1(counter[0]), .A2(n1928), .A3(n1943), .B1(
        n864), .B2(n1926), .X(n843) );
  UDB116SVT24_AO22_1 U2490 ( .A1(n937), .A2(pkt_rec_prev), .B1(pkt_rec), .B2(
        n1931), .X(n842) );
  UDB116SVT24_AOI31_0P75 U2491 ( .A1(n1012), .A2(n1931), .A3(n923), .B(n1930), 
        .X(n1935) );
  UDB116SVT24_NR2_0P75 U2492 ( .A1(n1012), .A2(n1932), .X(n1933) );
  UDB116SVT24_OAI21_0P75 U2493 ( .A1(n1936), .A2(n1933), .B(rx_state[1]), .X(
        n1934) );
  UDB116SVT24_OAI21_0P75 U2494 ( .A1(n1936), .A2(n1935), .B(n1934), .X(n839)
         );
  UDB116SVT24_NR2_0P75 U2495 ( .A1(rx_state[1]), .A2(n1937), .X(n1947) );
  UDB116SVT24_AO22_1 U2496 ( .A1(n1939), .A2(n1947), .B1(n1938), .B2(SPI_LD), 
        .X(n838) );
  UDB116SVT24_AOI21_0P75 U2497 ( .A1(n1945), .A2(n924), .B(n1940), .X(n1944)
         );
  UDB116SVT24_ND2_MM_0P75 U2498 ( .A1(n1944), .A2(PKT_EN), .X(n1942) );
  UDB116SVT24_OAI21_0P75 U2499 ( .A1(n1944), .A2(n997), .B(n1942), .X(n834) );
  UDB116SVT24_OAI21_0P75 U2500 ( .A1(n1947), .A2(n1946), .B(n1945), .X(n1948)
         );
  UDB116SVT24_MUXI2_1 U2501 ( .D0(n1950), .D1(n1949), .S(n1948), .X(n832) );
endmodule

