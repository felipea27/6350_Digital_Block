/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : V-2023.12-SP1
// Date      : Sun Mar 23 20:30:37 2025
/////////////////////////////////////////////////////////////


module SPI_slave ( MOSI, SCK, SS, MODE, DATA, OUT, MISO, PRESETn_BAR );
  input [1:0] MODE;
  input [7:0] DATA;
  output [7:0] OUT;
  input MOSI, SCK, SS, PRESETn_BAR;
  output MISO;
  wire   PRESETn, n18, N49, n19, N47, SS_neg_flag, N50, N51, N45, N38, N39,
         N40, N41, N42, N43, N44, n17, SHIFT_IN, n20, n8, n12, n1, n2, n3, n4,
         n5, n6, n7, n9, n10, n11, n13, n14, n15, n16, n21, n22, n23, n24, n25,
         n26, n27, n28, n29;
  wire   [2:0] counter;
  wire   [7:0] SHIFT_REG;
  tri   MISO;
  tri   n32;
  assign PRESETn = PRESETn_BAR;

  UDB116SVT24_LDPQ_6 \counter_reg[0]  ( .G(n18), .D(N49), .Q(counter[0]) );
  UDB116SVT24_LDPQ_6 SS_neg_flag_reg ( .G(n19), .D(N47), .Q(SS_neg_flag) );
  UDB116SVT24_LDPQ_6 \counter_reg[1]  ( .G(n18), .D(N50), .Q(counter[1]) );
  UDB116SVT24_LDPQ_6 \counter_reg[2]  ( .G(n18), .D(N51), .Q(counter[2]) );
  \**TSGEN**  MISO_tri ( .\function (SHIFT_REG[7]), .three_state(n32), 
        .\output (MISO) );
  UDB116SVT24_LDPQ_1 \SHIFT_REG_reg[7]  ( .G(n10), .D(N45), .Q(SHIFT_REG[7])
         );
  UDB116SVT24_LDPQ_1 \SHIFT_REG_reg[0]  ( .G(n10), .D(N38), .Q(SHIFT_REG[0])
         );
  UDB116SVT24_LDPQ_1 \SHIFT_REG_reg[1]  ( .G(n9), .D(N39), .Q(SHIFT_REG[1]) );
  UDB116SVT24_LDPQ_1 \SHIFT_REG_reg[2]  ( .G(n9), .D(N40), .Q(SHIFT_REG[2]) );
  UDB116SVT24_LDPQ_1 \SHIFT_REG_reg[3]  ( .G(n10), .D(N41), .Q(SHIFT_REG[3])
         );
  UDB116SVT24_LDPQ_1 \SHIFT_REG_reg[4]  ( .G(n10), .D(N42), .Q(SHIFT_REG[4])
         );
  UDB116SVT24_LDPQ_1 \SHIFT_REG_reg[5]  ( .G(n9), .D(N43), .Q(SHIFT_REG[5]) );
  UDB116SVT24_LDPQ_1 \SHIFT_REG_reg[6]  ( .G(n9), .D(N44), .Q(SHIFT_REG[6]) );
  UDB116SVT24_FDPRBQ_V2_1 SHIFT_IN_reg ( .D(n17), .CK(SCK), .RD(n29), .Q(
        SHIFT_IN) );
  UDB116SVT24_FDPQ_V2_3 \OUT_reg[0]  ( .D(SHIFT_REG[0]), .CK(n4), .Q(OUT[0])
         );
  UDB116SVT24_FDPQ_V2_3 \OUT_reg[2]  ( .D(SHIFT_REG[2]), .CK(n3), .Q(OUT[2])
         );
  UDB116SVT24_FDPQ_V2_3 \OUT_reg[3]  ( .D(SHIFT_REG[3]), .CK(n32), .Q(OUT[3])
         );
  UDB116SVT24_FDPQ_V2_3 \OUT_reg[4]  ( .D(SHIFT_REG[4]), .CK(n2), .Q(OUT[4])
         );
  UDB116SVT24_FDPQ_V2_3 \OUT_reg[5]  ( .D(SHIFT_REG[5]), .CK(n4), .Q(OUT[5])
         );
  UDB116SVT24_FDPQ_V2_3 \OUT_reg[6]  ( .D(SHIFT_REG[6]), .CK(n32), .Q(OUT[6])
         );
  UDB116SVT24_INV_0P75 U47 ( .A(n12), .X(n32) );
  UDB116SVT24_ND2B_0P75 U2 ( .A(n32), .B(n29), .X(n8) );
  UDB116SVT24_FDPQ_V2_3 \OUT_reg[1]  ( .D(SHIFT_REG[1]), .CK(n3), .Q(OUT[1])
         );
  UDB116SVT24_FDPQ_1 \OUT_reg[7]  ( .D(SHIFT_REG[7]), .CK(n2), .Q(OUT[7]) );
  UDB116SVT24_OR2_0P75 U1 ( .A1(SS_neg_flag), .A2(n6), .X(n27) );
  UDB116SVT24_INV_0P75 U3 ( .A(n3), .X(n12) );
  UDB116SVT24_INV_0P75 U4 ( .A(SS), .X(n1) );
  UDB116SVT24_INV_0P75 U5 ( .A(n1), .X(n2) );
  UDB116SVT24_INV_0P75 U6 ( .A(n1), .X(n3) );
  UDB116SVT24_INV_0P75 U7 ( .A(n1), .X(n4) );
  UDB116SVT24_INV_0P75 U8 ( .A(n8), .X(n5) );
  UDB116SVT24_INV_0P75 U9 ( .A(n5), .X(n6) );
  UDB116SVT24_INV_0P75 U10 ( .A(n20), .X(n7) );
  UDB116SVT24_INV_0P75 U11 ( .A(n7), .X(n9) );
  UDB116SVT24_INV_0P75 U12 ( .A(n7), .X(n10) );
  UDB116SVT24_INV_0P75 U13 ( .A(n27), .X(n11) );
  UDB116SVT24_INV_0P75 U14 ( .A(n27), .X(n13) );
  UDB116SVT24_OR2_0P75 U15 ( .A1(n6), .A2(n26), .X(n28) );
  UDB116SVT24_INV_0P75 U16 ( .A(n28), .X(n14) );
  UDB116SVT24_INV_0P75 U17 ( .A(n28), .X(n15) );
  UDB116SVT24_INV_0P75 U18 ( .A(PRESETn), .X(n29) );
  UDB116SVT24_ND3_0P75 U19 ( .A1(counter[0]), .A2(counter[1]), .A3(counter[2]), 
        .X(n21) );
  UDB116SVT24_OAI21_0P75 U20 ( .A1(n4), .A2(n21), .B(n29), .X(N47) );
  UDB116SVT24_INV_0P75 U21 ( .A(N47), .X(n16) );
  UDB116SVT24_OAI21_0P75 U22 ( .A1(n2), .A2(SS_neg_flag), .B(n16), .X(n18) );
  UDB116SVT24_INV_0P75 U23 ( .A(SS_neg_flag), .X(n26) );
  UDB116SVT24_OAI21_0P75 U24 ( .A1(n3), .A2(n26), .B(n16), .X(n19) );
  UDB116SVT24_ND2_MM_0P75 U25 ( .A1(n4), .A2(n29), .X(n20) );
  UDB116SVT24_INV_0P75 U26 ( .A(counter[0]), .X(n25) );
  UDB116SVT24_INV_0P75 U27 ( .A(counter[1]), .X(n24) );
  UDB116SVT24_NR2_0P75 U28 ( .A1(n25), .A2(n24), .X(n23) );
  UDB116SVT24_OAI21_0P75 U29 ( .A1(n23), .A2(counter[2]), .B(n21), .X(n22) );
  UDB116SVT24_NR2_0P75 U30 ( .A1(n6), .A2(n22), .X(N51) );
  UDB116SVT24_NR2_0P75 U31 ( .A1(counter[0]), .A2(n8), .X(N49) );
  UDB116SVT24_AOI211_0P75 U32 ( .A1(n25), .A2(n24), .B1(n8), .B2(n23), .X(N50)
         );
  UDB116SVT24_AO22_1 U33 ( .A1(n2), .A2(SHIFT_IN), .B1(MOSI), .B2(n12), .X(n17) );
  UDB116SVT24_AO22_1 U34 ( .A1(n14), .A2(DATA[7]), .B1(n11), .B2(SHIFT_REG[6]), 
        .X(N45) );
  UDB116SVT24_AO22_1 U35 ( .A1(n15), .A2(DATA[0]), .B1(n13), .B2(SHIFT_IN), 
        .X(N38) );
  UDB116SVT24_AO22_1 U36 ( .A1(n14), .A2(DATA[4]), .B1(n11), .B2(SHIFT_REG[3]), 
        .X(N42) );
  UDB116SVT24_AO22_1 U37 ( .A1(n15), .A2(DATA[5]), .B1(n13), .B2(SHIFT_REG[4]), 
        .X(N43) );
  UDB116SVT24_AO22_1 U38 ( .A1(n14), .A2(DATA[6]), .B1(n11), .B2(SHIFT_REG[5]), 
        .X(N44) );
  UDB116SVT24_AO22_1 U39 ( .A1(n15), .A2(DATA[1]), .B1(n13), .B2(SHIFT_REG[0]), 
        .X(N39) );
  UDB116SVT24_AO22_1 U40 ( .A1(n14), .A2(DATA[2]), .B1(n11), .B2(SHIFT_REG[1]), 
        .X(N40) );
  UDB116SVT24_AO22_1 U41 ( .A1(n15), .A2(DATA[3]), .B1(n13), .B2(SHIFT_REG[2]), 
        .X(N41) );
endmodule


module TOP ( clk, rfin, rst, MOSI, CS, SCK, RX, pkt_rec, MISO, TX_OUT, sh_en
 );
  input clk, rfin, rst, MOSI, CS, SCK, RX;
  output pkt_rec, MISO, TX_OUT, sh_en;
  wire   TX_SH, PKT_RST, PKT_LD, PKT_EN, SPI_LD, TX_EN, TX_LD, pkt_rec_prev,
         \fsm_sync_inst/sh_en_prev , \fsm_sync_inst/state_neg ,
         \fsm_sync_inst/next_state_neg , \fsm_sync_inst/state_pos ,
         \fsm_sync_inst/next_state_pos , \sh_sync_inst/n146 ,
         \sh_sync_inst/n272 , \sh_sync_inst/n149 , \sh_sync_inst/n275 ,
         \sh_sync_inst/n180 , \sh_sync_inst/n310 , \sh_sync_inst/n195 ,
         \sh_sync_inst/n355 , \sh_sync_inst/n218 , \sh_sync_inst/n348 ,
         \sh_sync_inst/n234 , \sh_sync_inst/n329 , \sh_sync_inst/n297 ,
         \sh_sync_inst/n301 , \sh_sync_inst/n207 , \sh_sync_inst/n305 ,
         \sh_sync_inst/n265 , \sh_sync_inst/intadd_0/A[5] ,
         \sh_sync_inst/n296 , \sh_sync_inst/n201 , \sh_sync_inst/n270 ,
         \sh_sync_inst/n202 , \sh_sync_inst/n271 , \sh_sync_inst/n157 ,
         \sh_sync_inst/n283 , \sh_sync_inst/n294 , \sh_sync_inst/n291 ,
         \sh_sync_inst/n251 , \sh_sync_inst/n337 , \sh_sync_inst/n288 ,
         \sh_sync_inst/n161 , \sh_sync_inst/n287 , \sh_sync_inst/n159 ,
         \sh_sync_inst/n285 , \sh_sync_inst/n151 , \sh_sync_inst/n277 ,
         \sh_sync_inst/n155 , \sh_sync_inst/n281 , \sh_sync_inst/n153 ,
         \sh_sync_inst/n279 , \sh_sync_inst/intadd_0/A[8] ,
         \sh_sync_inst/n293 , \sh_sync_inst/n258 , \sh_sync_inst/n235 ,
         \sh_sync_inst/n330 , \sh_sync_inst/n269 , \sh_sync_inst/n299 ,
         \sh_sync_inst/intadd_0/A[1] , \sh_sync_inst/n300 ,
         \sh_sync_inst/n259 , \sh_sync_inst/n261 , \sh_sync_inst/n147 ,
         \sh_sync_inst/n273 , \sh_sync_inst/n208 , \sh_sync_inst/n304 ,
         \sh_sync_inst/intadd_0/A[11] , \sh_sync_inst/n290 ,
         \sh_sync_inst/n228 , \sh_sync_inst/N31 , \sh_sync_inst/n257 ,
         \sh_sync_inst/intadd_0/A[0] , \sh_sync_inst/intadd_0/B[0] ,
         \sh_sync_inst/intadd_0/A[2] , \sh_sync_inst/intadd_0/A[4] ,
         \sh_sync_inst/intadd_0/B[4] , \sh_sync_inst/intadd_0/A[7] ,
         \sh_sync_inst/intadd_0/B[8] , \sh_sync_inst/intadd_0/A[10] ,
         \sh_sync_inst/intadd_0/B[10] , \sh_sync_inst/intadd_0/B[11] ,
         \sh_sync_inst/intadd_0/B[12] , \sh_sync_inst/intadd_0/A[13] ,
         \sh_sync_inst/rfin_edge , \sh_sync_inst/n148 , \sh_sync_inst/n274 ,
         \sh_sync_inst/n150 , \sh_sync_inst/n276 , \sh_sync_inst/n152 ,
         \sh_sync_inst/n278 , \sh_sync_inst/n154 , \sh_sync_inst/n280 ,
         \sh_sync_inst/n156 , \sh_sync_inst/n282 , \sh_sync_inst/n158 ,
         \sh_sync_inst/n284 , \sh_sync_inst/n160 , \sh_sync_inst/n286 ,
         \sh_sync_inst/intadd_0/A[12] , \sh_sync_inst/n289 ,
         \sh_sync_inst/intadd_0/A[9] , \sh_sync_inst/n292 ,
         \sh_sync_inst/intadd_0/A[6] , \sh_sync_inst/n295 ,
         \sh_sync_inst/intadd_0/A[3] , \sh_sync_inst/n298 ,
         \sh_sync_inst/n176 , \sh_sync_inst/n302 , \sh_sync_inst/n177 ,
         \sh_sync_inst/n303 , \sh_sync_inst/n178 , \sh_sync_inst/n308 ,
         \sh_sync_inst/n179 , \sh_sync_inst/n309 , \sh_sync_inst/n181 ,
         \sh_sync_inst/n311 , \sh_sync_inst/n182 , \sh_sync_inst/n312 ,
         \sh_sync_inst/n183 , \sh_sync_inst/n313 , \sh_sync_inst/n184 ,
         \sh_sync_inst/n314 , \sh_sync_inst/n185 , \sh_sync_inst/n315 ,
         \sh_sync_inst/n186 , \sh_sync_inst/n316 , \sh_sync_inst/n187 ,
         \sh_sync_inst/n317 , \sh_sync_inst/n188 , \sh_sync_inst/n318 ,
         \sh_sync_inst/n189 , \sh_sync_inst/n319 , \sh_sync_inst/n190 ,
         \sh_sync_inst/n320 , \sh_sync_inst/n191 , \sh_sync_inst/n321 ,
         \sh_sync_inst/n192 , \sh_sync_inst/n322 , \sh_sync_inst/n193 ,
         \sh_sync_inst/n323 , \sh_sync_inst/n194 , \sh_sync_inst/n338 ,
         \sh_sync_inst/intadd_0/B[7] , \sh_sync_inst/n262 ,
         \sh_sync_inst/intadd_0/B[6] , \sh_sync_inst/n263 ,
         \sh_sync_inst/intadd_0/B[5] , \sh_sync_inst/n264 ,
         \sh_sync_inst/n203 , \sh_sync_inst/n307 , \sh_sync_inst/n205 ,
         \sh_sync_inst/N30 , \sh_sync_inst/n206 , \sh_sync_inst/n306 ,
         \sh_sync_inst/n211 , \sh_sync_inst/n341 , \sh_sync_inst/n212 ,
         \sh_sync_inst/n342 , \sh_sync_inst/n213 , \sh_sync_inst/n343 ,
         \sh_sync_inst/n214 , \sh_sync_inst/n344 , \sh_sync_inst/n215 ,
         \sh_sync_inst/n345 , \sh_sync_inst/n216 , \sh_sync_inst/n346 ,
         \sh_sync_inst/n217 , \sh_sync_inst/n347 , \sh_sync_inst/n219 ,
         \sh_sync_inst/n349 , \sh_sync_inst/n220 , \sh_sync_inst/n350 ,
         \sh_sync_inst/n221 , \sh_sync_inst/n351 , \sh_sync_inst/n222 ,
         \sh_sync_inst/n352 , \sh_sync_inst/n223 , \sh_sync_inst/n353 ,
         \sh_sync_inst/n224 , \sh_sync_inst/n354 , \sh_sync_inst/n225 ,
         \sh_sync_inst/N530 , \sh_sync_inst/n226 , \sh_sync_inst/N529 ,
         \sh_sync_inst/n227 , \sh_sync_inst/N528 , \sh_sync_inst/n229 ,
         \sh_sync_inst/n324 , \sh_sync_inst/n230 , \sh_sync_inst/n325 ,
         \sh_sync_inst/n231 , \sh_sync_inst/n326 , \sh_sync_inst/n232 ,
         \sh_sync_inst/n327 , \sh_sync_inst/n233 , \sh_sync_inst/n328 ,
         \sh_sync_inst/intadd_0/B[9] , \sh_sync_inst/n260 ,
         \sh_sync_inst/intadd_0/B[3] , \sh_sync_inst/n266 ,
         \sh_sync_inst/intadd_0/B[2] , \sh_sync_inst/n267 ,
         \sh_sync_inst/intadd_0/B[1] , \sh_sync_inst/n268 ,
         \sh_sync_inst/n244 , \sh_sync_inst/N32 , \sh_sync_inst/n245 ,
         \sh_sync_inst/n331 , \sh_sync_inst/n246 , \sh_sync_inst/n332 ,
         \sh_sync_inst/n247 , \sh_sync_inst/n333 , \sh_sync_inst/n248 ,
         \sh_sync_inst/n334 , \sh_sync_inst/n249 , \sh_sync_inst/n335 ,
         \sh_sync_inst/n250 , \sh_sync_inst/n336 ,
         \sh_sync_inst/intadd_0/B[13] , \sh_sync_inst/n255 ,
         \sh_sync_inst/n253 , \sh_sync_inst/N536 , \sh_sync_inst/n254 ,
         \sh_sync_inst/N535 , \shift_buf_inst/n138 , \shift_buf_inst/n91 ,
         \shift_buf_inst/n106 , \shift_buf_inst/n121 , \shift_buf_inst/n73 ,
         \shift_buf_inst/n74 , \shift_buf_inst/n75 , \shift_buf_inst/n76 ,
         \shift_buf_inst/n77 , \shift_buf_inst/n78 , \shift_buf_inst/n79 ,
         \shift_buf_inst/n80 , \shift_buf_inst/n81 , \shift_buf_inst/n82 ,
         \shift_buf_inst/n83 , \shift_buf_inst/n84 , \shift_buf_inst/n85 ,
         \shift_buf_inst/n86 , \shift_buf_inst/n87 , \shift_buf_inst/n88 ,
         \shift_buf_inst/n89 , \shift_buf_inst/n90 , \shift_buf_inst/n92 ,
         \shift_buf_inst/n93 , \shift_buf_inst/n94 , \shift_buf_inst/n95 ,
         \shift_buf_inst/n96 , \shift_buf_inst/n97 , \shift_buf_inst/n98 ,
         \shift_buf_inst/n99 , \shift_buf_inst/n100 , \shift_buf_inst/n101 ,
         \shift_buf_inst/n102 , \shift_buf_inst/n103 , \shift_buf_inst/n104 ,
         \shift_buf_inst/n105 , \shift_buf_inst/n107 , \shift_buf_inst/n108 ,
         \shift_buf_inst/n109 , \shift_buf_inst/n110 , \shift_buf_inst/n111 ,
         \shift_buf_inst/n112 , \shift_buf_inst/n113 , \shift_buf_inst/n114 ,
         \shift_buf_inst/n115 , \shift_buf_inst/n116 , \shift_buf_inst/n117 ,
         \shift_buf_inst/n118 , \shift_buf_inst/n119 , \shift_buf_inst/n120 ,
         \shift_buf_inst/n122 , \shift_buf_inst/n123 , \shift_buf_inst/n124 ,
         \shift_buf_inst/n129 , \shift_buf_inst/n130 , \shift_buf_inst/n133 ,
         \shift_buf_inst/n134 , \shift_buf_inst/n135 , \shift_buf_inst/n136 ,
         \pkt_reg_inst/n108 , \pkt_reg_inst/n49 , \pkt_reg_inst/n109 ,
         \pkt_reg_inst/n32 , \pkt_reg_inst/n33 , \pkt_reg_inst/n34 ,
         \pkt_reg_inst/n35 , \pkt_reg_inst/n36 , \pkt_reg_inst/n37 ,
         \pkt_reg_inst/n39 , \pkt_reg_inst/n47 , \pkt_reg_inst/n55 ,
         \pkt_reg_inst/n63 , \pkt_reg_inst/n95 , \pkt_reg_inst/n103 ,
         \pkt_reg_inst/n46 , \pkt_reg_inst/n54 , \pkt_reg_inst/n94 ,
         \pkt_reg_inst/n45 , \pkt_reg_inst/n53 , \pkt_reg_inst/n44 ,
         \pkt_reg_inst/n52 , \pkt_reg_inst/n43 , \pkt_reg_inst/n51 ,
         \pkt_reg_inst/n50 , \pkt_reg_inst/n58 , \pkt_reg_inst/n66 ,
         \pkt_reg_inst/n98 , \pkt_reg_inst/n41 , \pkt_reg_inst/n57 ,
         \pkt_reg_inst/n65 , \pkt_reg_inst/n89 , \pkt_reg_inst/n40 ,
         \pkt_reg_inst/n56 , \pkt_reg_inst/n64 , \pkt_reg_inst/n88 , n818,
         n819, n820, n821, n822, n824, n825, n826, n827, n828, n829, n830,
         n831, n832, n833, n834, n835, n836, n837, n838, n839, n840, n841,
         n842, n843, n844, n845, n847, n848, n849, n850, n851, n852, n853,
         n854, n855, n856, n857, n858, n859, n860, n861, n862, n863, n864,
         n865, n866, n867, n868, n869, n870, n871, n872, n873, n874, n875,
         n876, n877, n878, n879, n880, n881, n882, n883, n884, n885, n886,
         n887, n888, n889, n890, n891, n892, n893, n894, n895, n896, n897,
         n898, n899, n900, n901, n902, n903, n904, n905, n906, n907, n908,
         n909, n910, n911, n912, n913, n914, n915, n916, n917, n918, n919,
         n920, n921, n922, n923, n924, n925, n926, n927, n928, n929, n930,
         n931, n932, n933, n934, n935, n936, n937, n938, n939, n940, n941,
         n942, n943, n944, n945, n946, n947, n948, n949, n950, n951, n952,
         n953, n954, n955, n956, n957, n958, n959, n960, n961, n962, n963,
         n964, n965, n966, n967, n968, n969, n970, n971, n972, n973, n974,
         n975, n976, n977, n978, n979, n980, n981, n982, n983, n984, n985,
         n986, n987, n988, n989, n990, n991, n992, n993, n994, n995, n996,
         n997, n998, n999, n1000, n1001, n1002, n1003, n1004, n1005, n1006,
         n1007, n1008, n1009, n1010, n1011, n1012, n1013, n1014, n1015, n1016,
         n1017, n1018, n1019, n1020, n1021, n1022, n1023, n1024, n1025, n1026,
         n1027, n1028, n1029, n1030, n1031, n1032, n1033, n1034, n1035, n1036,
         n1037, n1038, n1039, n1040, n1041, n1042, n1043, n1044, n1045, n1046,
         n1047, n1048, n1049, n1050, n1051, n1052, n1053, n1054, n1055, n1056,
         n1057, n1058, n1059, n1060, n1061, n1062, n1063, n1064, n1065, n1066,
         n1067, n1068, n1069, n1070, n1071, n1072, n1073, n1074, n1075, n1076,
         n1077, n1078, n1079, n1080, n1081, n1082, n1083, n1084, n1085, n1086,
         n1087, n1088, n1089, n1090, n1091, n1092, n1093, n1094, n1095, n1096,
         n1097, n1098, n1099, n1100, n1101, n1102, n1103, n1104, n1105, n1106,
         n1107, n1108, n1109, n1110, n1111, n1112, n1113, n1114, n1115, n1116,
         n1117, n1118, n1119, n1120, n1121, n1122, n1123, n1124, n1125, n1126,
         n1127, n1128, n1129, n1130, n1131, n1132, n1133, n1134, n1135, n1136,
         n1137, n1138, n1139, n1140, n1141, n1142, n1143, n1144, n1145, n1146,
         n1147, n1148, n1149, n1150, n1151, n1152, n1153, n1154, n1155, n1156,
         n1157, n1158, n1159, n1160, n1161, n1162, n1163, n1164, n1165, n1166,
         n1167, n1168, n1169, n1170, n1171, n1172, n1173, n1174, n1175, n1176,
         n1177, n1178, n1179, n1180, n1181, n1182, n1183, n1184, n1185, n1186,
         n1187, n1188, n1189, n1190, n1191, n1192, n1193, n1194, n1195, n1196,
         n1197, n1198, n1199, n1200, n1201, n1202, n1203, n1204, n1205, n1206,
         n1207, n1208, n1209, n1210, n1211, n1212, n1213, n1214, n1215, n1216,
         n1217, n1218, n1219, n1220, n1221, n1222, n1223, n1224, n1225, n1226,
         n1227, n1228, n1229, n1230, n1231, n1232, n1233, n1234, n1235, n1236,
         n1237, n1238, n1239, n1240, n1241, n1242, n1243, n1244, n1245, n1246,
         n1247, n1248, n1249, n1250, n1251, n1252, n1253, n1254, n1255, n1256,
         n1257, n1258, n1259, n1260, n1261, n1262, n1263, n1264, n1265, n1266,
         n1267, n1268, n1269, n1270, n1271, n1272, n1273, n1274, n1275, n1276,
         n1277, n1278, n1279, n1280, n1281, n1282, n1283, n1284, n1285, n1286,
         n1287, n1288, n1289, n1290, n1291, n1292, n1293, n1294, n1295, n1296,
         n1297, n1298, n1299, n1300, n1301, n1302, n1303, n1304, n1305, n1306,
         n1307, n1308, n1309, n1310, n1311, n1312, n1313, n1314, n1315, n1316,
         n1317, n1318, n1319, n1320, n1321, n1322, n1323, n1324, n1325, n1326,
         n1327, n1328, n1329, n1330, n1331, n1332, n1333, n1334, n1335, n1336,
         n1337, n1338, n1339, n1340, n1341, n1342, n1343, n1344, n1345, n1346,
         n1347, n1348, n1349, n1350, n1351, n1352, n1353, n1354, n1355, n1356,
         n1357, n1358, n1359, n1360, n1361, n1362, n1363, n1364, n1365, n1366,
         n1367, n1368, n1369, n1370, n1371, n1372, n1373, n1374, n1375, n1376,
         n1377, n1378, n1379, n1380, n1381, n1382, n1383, n1384, n1385, n1386,
         n1387, n1388, n1389, n1390, n1391, n1392, n1393, n1394, n1395, n1396,
         n1397, n1398, n1399, n1400, n1401, n1402, n1403, n1404, n1405, n1406,
         n1407, n1408, n1409, n1410, n1411, n1412, n1413, n1414, n1415, n1416,
         n1417, n1418, n1419, n1420, n1421, n1422, n1423, n1424, n1425, n1426,
         n1427, n1428, n1429, n1430, n1431, n1432, n1433, n1434, n1435, n1436,
         n1437, n1438, n1439, n1440, n1441, n1442, n1443, n1444, n1445, n1446,
         n1447, n1448, n1449, n1450, n1451, n1452, n1453, n1454, n1455, n1456,
         n1457, n1458, n1459, n1460, n1461, n1462, n1463, n1464, n1465, n1466,
         n1467, n1468, n1469, n1470, n1471, n1472, n1473, n1474, n1475, n1476,
         n1477, n1478, n1479, n1480, n1481, n1482, n1483, n1484, n1485, n1486,
         n1487, n1488, n1489, n1490, n1491, n1492, n1493, n1494, n1495, n1496,
         n1497, n1498, n1499, n1500, n1501, n1502, n1503, n1504, n1505, n1506,
         n1507, n1508, n1509, n1510, n1511, n1512, n1513, n1514, n1515, n1516,
         n1517, n1518, n1519, n1520, n1521, n1522, n1523, n1524, n1525, n1526,
         n1527, n1528, n1529, n1530, n1531, n1532, n1533, n1534, n1535, n1536,
         n1537, n1538, n1539, n1540, n1541, n1542, n1543, n1544, n1545, n1546,
         n1547, n1548, n1549, n1550, n1551, n1552, n1553, n1554, n1555, n1556,
         n1557, n1558, n1559, n1560, n1561, n1562, n1563, n1564, n1565, n1566,
         n1567, n1568, n1569, n1570, n1571, n1572, n1573, n1574, n1575, n1576,
         n1577, n1578, n1579, n1580, n1581, n1582, n1583, n1584, n1585, n1586,
         n1587, n1588, n1589, n1590, n1591, n1592, n1593, n1594, n1595, n1596,
         n1597, n1598, n1599, n1600, n1601, n1602, n1603, n1604, n1605, n1606,
         n1607, n1608, n1609, n1610, n1611, n1612, n1613, n1614, n1615, n1616,
         n1617, n1618, n1619, n1620, n1621, n1622, n1623, n1624, n1625, n1626,
         n1627, n1628, n1629, n1630, n1631, n1632, n1633, n1634, n1635, n1636,
         n1637, n1638, n1639, n1640, n1641, n1642, n1643, n1644, n1645, n1646,
         n1647, n1648, n1649, n1650, n1651, n1652, n1653, n1654, n1655, n1656,
         n1657, n1658, n1659, n1660, n1661, n1662, n1663, n1664, n1665, n1666,
         n1667, n1668, n1669, n1670, n1671, n1672, n1673, n1674, n1675, n1676,
         n1677, n1678, n1679, n1680, n1681, n1682, n1683, n1684, n1685, n1686,
         n1687, n1688, n1689, n1690, n1691, n1692, n1693, n1694, n1695, n1696,
         n1697, n1698, n1699, n1700, n1701, n1702, n1703, n1704, n1705, n1706,
         n1707, n1708, n1709, n1710, n1711, n1712, n1713, n1714, n1715, n1716,
         n1717, n1718, n1719, n1720, n1721, n1722, n1723, n1724, n1725, n1726,
         n1727, n1728, n1729, n1730, n1731, n1732, n1733, n1734, n1735, n1736,
         n1737, n1738, n1739, n1740, n1741, n1742, n1743, n1744, n1745, n1746,
         n1747, n1748, n1749, n1750, n1751, n1752, n1753, n1754, n1755, n1756,
         n1757, n1758, n1759, n1760, n1761, n1762, n1763, n1764, n1765, n1766,
         n1767, n1768, n1769, n1770, n1771, n1772, n1773, n1774, n1775, n1776,
         n1777, n1778, n1779, n1780, n1781, n1782, n1783, n1784, n1785, n1786,
         n1787, n1788, n1789, n1790, n1791, n1792, n1793, n1794, n1795, n1796,
         n1797, n1798, n1799, n1800, n1801, n1802, n1803, n1804, n1805, n1806,
         n1807, n1808, n1809, n1810, n1811, n1812, n1813, n1814, n1815, n1816,
         n1817, n1818, n1819, n1820, n1821, n1822, n1823, n1824, n1825, n1826,
         n1827, n1828, n1829, n1830, n1831, n1832, n1833, n1834, n1835, n1836,
         n1837, n1838, n1839, n1840, n1841, n1842, n1843, n1844, n1845, n1846,
         n1847, n1848, n1849, n1850, n1851, n1852, n1853, n1854, n1855, n1856,
         n1857, n1858, n1859, n1860, n1861, n1862, n1863, n1864, n1865, n1866,
         n1867, n1868, n1869, n1870, n1871, n1872, n1873, n1874, n1875, n1876,
         n1877, n1878, n1879, n1880, n1881, n1882, n1883, n1884, n1885, n1886,
         n1887, n1888, n1889, n1890, n1891, n1892, n1893, n1894, n1895, n1896,
         n1897, n1898, n1899, n1900, n1901, n1902, n1903, n1904, n1905, n1906,
         n1907, n1908, n1909, n1910, n1911, n1912, n1913, n1914, n1915, n1916,
         n1917, n1918, n1919, n1920, n1921, n1922, n1923, n1924, n1925, n1926,
         n1927, n1928, n1929, n1930, n1931, n1932, n1933, n1934, n1935, n1936,
         n1937, n1938, n1939, n1940, n1941, n1942, n1943, n1944, n1945, n1946,
         n1947, n1948, n1949, n1950, n1951, n1952, n1953, n1954, n1955, n1956,
         n1957, n1958, n1959, n1960, n1961, n1962, n1963, n1964, n1965, n1966,
         n1967, n1968, n1969, n1970, n1971, n1972, n1973, n1974, n1975, n1976,
         n1977, n1978, n1979, n1980, n1981, n1982, n1983, n1984, n1985, n1986,
         n1987, n1988, n1989, n1990, n1991, n1992, n1993, n1994, n1995, n1996,
         n1997, n1998, n1999, n2000, n2001, n2002, n2003, n2004, n2005, n2006,
         n2007, n2008, n2009, n2010, n2011, n2013, n2014, n2015, n2016, n2017,
         n2018, n2019, n2020, n2021, n2022, n2023, n2024, n2025, n2026, n2027,
         n2028, n2029, n2030, n2031, n2032, n2033, n2034, n2035, n2036, n2037,
         n2038, n2039, n2040, n2041, n2042, n2043, net5110, net5111;
  wire   [63:0] SHIFT_OUT;
  wire   [7:0] SPI_IN;
  wire   [7:0] SPI_OUT;
  wire   [2:0] rx_state;
  wire   [3:0] counter;
  wire   [1:0] tx_state;
  wire   [3:0] counter3;
  wire   [4:0] \shift_buf_inst/sync2 ;
  wire   [4:0] \shift_buf_inst/sync1 ;
  wire   [4:0] \shift_buf_inst/sync3 ;
  wire   [63:0] \pkt_reg_inst/pkt_reg ;
  wire   [7:0] \tx_buf_inst/buffer ;
  tri   MISO;

  SPI_slave SPI_slave_inst ( .MOSI(MOSI), .SCK(SCK), .SS(n989), .MODE({net5110, 
        net5111}), .DATA(SPI_IN), .OUT(SPI_OUT), .MISO(MISO), .PRESETn_BAR(
        n987) );
  UDB116SVT24_FDPRBQ_V2_1 \fsm_sync_inst/sh_en_prev_reg  ( .D(n2013), .CK(clk), 
        .RD(n2011), .Q(\fsm_sync_inst/sh_en_prev ) );
  UDB116SVT24_FDNRBQ_V2_1 \fsm_sync_inst/state_neg_reg  ( .D(
        \fsm_sync_inst/next_state_neg ), .CK(clk), .RD(n2011), .Q(
        \fsm_sync_inst/state_neg ) );
  UDB116SVT24_FDPRBQ_V2_1 \fsm_sync_inst/state_pos_reg  ( .D(
        \fsm_sync_inst/next_state_pos ), .CK(clk), .RD(n2011), .Q(
        \fsm_sync_inst/state_pos ) );
  UDB116SVT24_FDPQB_1P5 \sh_sync_inst/interval_sum_reg[31]  ( .D(
        \sh_sync_inst/n272 ), .CK(clk), .QN(\sh_sync_inst/n146 ) );
  UDB116SVT24_FDPQB_1P5 \sh_sync_inst/interval_sum_reg[28]  ( .D(
        \sh_sync_inst/n275 ), .CK(clk), .QN(\sh_sync_inst/n149 ) );
  UDB116SVT24_FDPQB_1P5 \sh_sync_inst/avg_interval_reg[3]  ( .D(
        \sh_sync_inst/n310 ), .CK(clk), .QN(\sh_sync_inst/n180 ) );
  UDB116SVT24_FDPQB_1P5 \sh_sync_inst/first_pulse_flag_reg  ( .D(
        \sh_sync_inst/n355 ), .CK(clk), .QN(\sh_sync_inst/n195 ) );
  UDB116SVT24_FDPQB_1P5 \sh_sync_inst/timeout_counter_reg[6]  ( .D(
        \sh_sync_inst/n348 ), .CK(clk), .QN(\sh_sync_inst/n218 ) );
  UDB116SVT24_FDPQB_1P5 \sh_sync_inst/pulse_gen_count_reg[1]  ( .D(
        \sh_sync_inst/n329 ), .CK(clk), .QN(\sh_sync_inst/n234 ) );
  UDB116SVT24_FDPQB_1P5 \sh_sync_inst/interval_sum_reg[6]  ( .D(
        \sh_sync_inst/n297 ), .CK(clk), .QN(\sh_sync_inst/intadd_0/A[4] ) );
  UDB116SVT24_FDPQB_1P5 \sh_sync_inst/interval_sum_reg[2]  ( .D(
        \sh_sync_inst/n301 ), .CK(clk), .QN(\sh_sync_inst/intadd_0/A[0] ) );
  UDB116SVT24_FDPQB_1P5 \sh_sync_inst/pulse_count_reg[2]  ( .D(
        \sh_sync_inst/n305 ), .CK(clk), .QN(\sh_sync_inst/n207 ) );
  UDB116SVT24_FDPQB_1P5 \sh_sync_inst/counter_reg[6]  ( .D(\sh_sync_inst/n265 ), .CK(clk), .QN(\sh_sync_inst/intadd_0/B[4] ) );
  UDB116SVT24_FDPQB_1P5 \sh_sync_inst/interval_sum_reg[7]  ( .D(
        \sh_sync_inst/n296 ), .CK(clk), .QN(\sh_sync_inst/intadd_0/A[5] ) );
  UDB116SVT24_FDPQB_1P5 \sh_sync_inst/counter_reg[0]  ( .D(\sh_sync_inst/n271 ), .CK(clk), .QN(\sh_sync_inst/n202 ) );
  UDB116SVT24_FDPQB_1P5 \sh_sync_inst/interval_sum_reg[20]  ( .D(
        \sh_sync_inst/n283 ), .CK(clk), .QN(\sh_sync_inst/n157 ) );
  UDB116SVT24_FDPQB_1P5 \sh_sync_inst/interval_sum_reg[9]  ( .D(
        \sh_sync_inst/n294 ), .CK(clk), .QN(\sh_sync_inst/intadd_0/A[7] ) );
  UDB116SVT24_FDPQB_1P5 \sh_sync_inst/interval_sum_reg[12]  ( .D(
        \sh_sync_inst/n291 ), .CK(clk), .QN(\sh_sync_inst/intadd_0/A[10] ) );
  UDB116SVT24_FDPQB_1P5 \sh_sync_inst/pulse_pack_count_reg[0]  ( .D(
        \sh_sync_inst/n337 ), .CK(clk), .QN(\sh_sync_inst/n251 ) );
  UDB116SVT24_FDPQB_1P5 \sh_sync_inst/interval_sum_reg[15]  ( .D(
        \sh_sync_inst/n288 ), .CK(clk), .QN(\sh_sync_inst/intadd_0/A[13] ) );
  UDB116SVT24_FDPQB_1P5 \sh_sync_inst/interval_sum_reg[16]  ( .D(
        \sh_sync_inst/n287 ), .CK(clk), .QN(\sh_sync_inst/n161 ) );
  UDB116SVT24_FDPQB_1P5 \sh_sync_inst/interval_sum_reg[18]  ( .D(
        \sh_sync_inst/n285 ), .CK(clk), .QN(\sh_sync_inst/n159 ) );
  UDB116SVT24_FDPQB_1P5 \sh_sync_inst/interval_sum_reg[26]  ( .D(
        \sh_sync_inst/n277 ), .CK(clk), .QN(\sh_sync_inst/n151 ) );
  UDB116SVT24_FDPQB_1P5 \sh_sync_inst/interval_sum_reg[22]  ( .D(
        \sh_sync_inst/n281 ), .CK(clk), .QN(\sh_sync_inst/n155 ) );
  UDB116SVT24_FDPQB_1P5 \sh_sync_inst/interval_sum_reg[24]  ( .D(
        \sh_sync_inst/n279 ), .CK(clk), .QN(\sh_sync_inst/n153 ) );
  UDB116SVT24_FDPQB_1P5 \sh_sync_inst/interval_sum_reg[10]  ( .D(
        \sh_sync_inst/n293 ), .CK(clk), .QN(\sh_sync_inst/intadd_0/A[8] ) );
  UDB116SVT24_FDPQB_1P5 \sh_sync_inst/counter_reg[13]  ( .D(
        \sh_sync_inst/n258 ), .CK(clk), .QN(\sh_sync_inst/intadd_0/B[11] ) );
  UDB116SVT24_FDPQB_1P5 \sh_sync_inst/pulse_gen_count_reg[0]  ( .D(
        \sh_sync_inst/n330 ), .CK(clk), .QN(\sh_sync_inst/n235 ) );
  UDB116SVT24_FDPQB_1P5 \sh_sync_inst/interval_sum_reg[4]  ( .D(
        \sh_sync_inst/n299 ), .CK(clk), .QN(\sh_sync_inst/intadd_0/A[2] ) );
  UDB116SVT24_FDPQB_1P5 \sh_sync_inst/interval_sum_reg[3]  ( .D(
        \sh_sync_inst/n300 ), .CK(clk), .QN(\sh_sync_inst/intadd_0/A[1] ) );
  UDB116SVT24_FDPQB_1P5 \sh_sync_inst/counter_reg[12]  ( .D(
        \sh_sync_inst/n259 ), .CK(clk), .QN(\sh_sync_inst/intadd_0/B[10] ) );
  UDB116SVT24_FDPQB_1P5 \sh_sync_inst/counter_reg[10]  ( .D(
        \sh_sync_inst/n261 ), .CK(clk), .QN(\sh_sync_inst/intadd_0/B[8] ) );
  UDB116SVT24_FDPQB_1P5 \sh_sync_inst/pulse_count_reg[1]  ( .D(
        \sh_sync_inst/n304 ), .CK(clk), .QN(\sh_sync_inst/n208 ) );
  UDB116SVT24_FDPQB_1P5 \sh_sync_inst/interval_sum_reg[13]  ( .D(
        \sh_sync_inst/n290 ), .CK(clk), .QN(\sh_sync_inst/intadd_0/A[11] ) );
  UDB116SVT24_FDPQB_1P5 \sh_sync_inst/state_reg[1]  ( .D(\sh_sync_inst/N31 ), 
        .CK(clk), .QN(\sh_sync_inst/n228 ) );
  UDB116SVT24_FDPQB_2 \sh_sync_inst/interval_sum_reg[27]  ( .D(
        \sh_sync_inst/n276 ), .CK(clk), .QN(\sh_sync_inst/n150 ) );
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
  UDB116SVT24_FDPQB_2 \sh_sync_inst/interval_sum_reg[1]  ( .D(
        \sh_sync_inst/n302 ), .CK(clk), .QN(\sh_sync_inst/n176 ) );
  UDB116SVT24_FDPQB_2 \sh_sync_inst/avg_interval_reg[1]  ( .D(
        \sh_sync_inst/n308 ), .CK(clk), .QN(\sh_sync_inst/n178 ) );
  UDB116SVT24_FDPQB_2 \sh_sync_inst/avg_interval_reg[2]  ( .D(
        \sh_sync_inst/n309 ), .CK(clk), .QN(\sh_sync_inst/n179 ) );
  UDB116SVT24_FDPQB_2 \sh_sync_inst/avg_interval_reg[4]  ( .D(
        \sh_sync_inst/n311 ), .CK(clk), .QN(\sh_sync_inst/n181 ) );
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
  UDB116SVT24_FDPQB_2 \sh_sync_inst/avg_interval_reg[15]  ( .D(
        \sh_sync_inst/n322 ), .CK(clk), .QN(\sh_sync_inst/n192 ) );
  UDB116SVT24_FDPQB_2 \sh_sync_inst/sh_en_reg  ( .D(\sh_sync_inst/n338 ), .CK(
        clk), .QN(\sh_sync_inst/n194 ) );
  UDB116SVT24_FDPQB_2 \sh_sync_inst/counter_reg[9]  ( .D(\sh_sync_inst/n262 ), 
        .CK(clk), .QN(\sh_sync_inst/intadd_0/B[7] ) );
  UDB116SVT24_FDPQB_2 \sh_sync_inst/pulse_count_reg[0]  ( .D(
        \sh_sync_inst/n307 ), .CK(clk), .QN(\sh_sync_inst/n203 ) );
  UDB116SVT24_FDPQB_2 \sh_sync_inst/state_reg[0]  ( .D(\sh_sync_inst/N30 ), 
        .CK(clk), .QN(\sh_sync_inst/n205 ) );
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
  UDB116SVT24_FDPQB_2 \sh_sync_inst/timeout_counter_reg[5]  ( .D(
        \sh_sync_inst/n349 ), .CK(clk), .QN(\sh_sync_inst/n219 ) );
  UDB116SVT24_FDPQB_2 \sh_sync_inst/timeout_counter_reg[4]  ( .D(
        \sh_sync_inst/n350 ), .CK(clk), .QN(\sh_sync_inst/n220 ) );
  UDB116SVT24_FDPQB_2 \sh_sync_inst/timeout_counter_reg[2]  ( .D(
        \sh_sync_inst/n352 ), .CK(clk), .QN(\sh_sync_inst/n222 ) );
  UDB116SVT24_FDPQB_2 \sh_sync_inst/timeout_counter_reg[1]  ( .D(
        \sh_sync_inst/n353 ), .CK(clk), .QN(\sh_sync_inst/n223 ) );
  UDB116SVT24_FDPQB_2 \sh_sync_inst/rfin_prev_reg  ( .D(\sh_sync_inst/N530 ), 
        .CK(clk), .QN(\sh_sync_inst/n225 ) );
  UDB116SVT24_FDPQB_2 \sh_sync_inst/rfin_sync2_reg  ( .D(\sh_sync_inst/N529 ), 
        .CK(clk), .QN(\sh_sync_inst/n226 ) );
  UDB116SVT24_FDPQB_2 \sh_sync_inst/rfin_sync1_reg  ( .D(\sh_sync_inst/N528 ), 
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
  UDB116SVT24_FDPQB_2 \sh_sync_inst/counter_reg[4]  ( .D(\sh_sync_inst/n267 ), 
        .CK(clk), .QN(\sh_sync_inst/intadd_0/B[2] ) );
  UDB116SVT24_FDPQB_2 \sh_sync_inst/pulse_pack_count_reg[1]  ( .D(
        \sh_sync_inst/n331 ), .CK(clk), .QN(\sh_sync_inst/n245 ) );
  UDB116SVT24_FDPQB_2 \sh_sync_inst/pulse_pack_count_reg[2]  ( .D(
        \sh_sync_inst/n332 ), .CK(clk), .QN(\sh_sync_inst/n246 ) );
  UDB116SVT24_FDPQB_2 \sh_sync_inst/pulse_pack_count_reg[3]  ( .D(
        \sh_sync_inst/n333 ), .CK(clk), .QN(\sh_sync_inst/n247 ) );
  UDB116SVT24_FDPQB_2 \sh_sync_inst/pulse_pack_count_reg[5]  ( .D(
        \sh_sync_inst/n335 ), .CK(clk), .QN(\sh_sync_inst/n249 ) );
  UDB116SVT24_FDPQB_2 \sh_sync_inst/pulse_pack_count_reg[6]  ( .D(
        \sh_sync_inst/n336 ), .CK(clk), .QN(\sh_sync_inst/n250 ) );
  UDB116SVT24_FDPQB_2 \sh_sync_inst/counter_reg[15]  ( .D(\sh_sync_inst/n255 ), 
        .CK(clk), .QN(\sh_sync_inst/intadd_0/B[13] ) );
  UDB116SVT24_FDPQB_2 \sh_sync_inst/tx_rdy_p_reg  ( .D(\sh_sync_inst/N536 ), 
        .CK(clk), .QN(\sh_sync_inst/n253 ) );
  UDB116SVT24_FDPQB_2 \sh_sync_inst/tx_rdy_prev_reg  ( .D(\sh_sync_inst/N535 ), 
        .CK(clk), .QN(\sh_sync_inst/n254 ) );
  UDB116SVT24_FDPQB_1P5 \shift_buf_inst/shift_reg_reg[5]  ( .D(
        \shift_buf_inst/n138 ), .CK(clk), .QN(SHIFT_OUT[5]) );
  UDB116SVT24_FDPQ_V2_3 \shift_buf_inst/shift_reg_reg[45]  ( .D(
        \shift_buf_inst/n91 ), .CK(clk), .Q(SHIFT_OUT[45]) );
  UDB116SVT24_FDPQB_2 \shift_buf_inst/sync3_reg[4]  ( .D(n847), .CK(clk), .QN(
        \shift_buf_inst/sync3 [4]) );
  UDB116SVT24_FDPQ_V2_3 \shift_buf_inst/shift_reg_reg[63]  ( .D(
        \shift_buf_inst/n73 ), .CK(clk), .Q(SHIFT_OUT[63]) );
  UDB116SVT24_FDPQ_V2_3 \shift_buf_inst/shift_reg_reg[62]  ( .D(
        \shift_buf_inst/n74 ), .CK(clk), .Q(SHIFT_OUT[62]) );
  UDB116SVT24_FDPQ_V2_3 \shift_buf_inst/shift_reg_reg[61]  ( .D(
        \shift_buf_inst/n75 ), .CK(clk), .Q(SHIFT_OUT[61]) );
  UDB116SVT24_FDPQ_V2_3 \shift_buf_inst/shift_reg_reg[60]  ( .D(
        \shift_buf_inst/n76 ), .CK(clk), .Q(SHIFT_OUT[60]) );
  UDB116SVT24_FDPQ_V2_3 \shift_buf_inst/shift_reg_reg[59]  ( .D(
        \shift_buf_inst/n77 ), .CK(clk), .Q(SHIFT_OUT[59]) );
  UDB116SVT24_FDPQ_V2_3 \shift_buf_inst/shift_reg_reg[58]  ( .D(
        \shift_buf_inst/n78 ), .CK(clk), .Q(SHIFT_OUT[58]) );
  UDB116SVT24_FDPQ_V2_3 \shift_buf_inst/shift_reg_reg[56]  ( .D(
        \shift_buf_inst/n80 ), .CK(clk), .Q(SHIFT_OUT[56]) );
  UDB116SVT24_FDPQ_V2_3 \shift_buf_inst/shift_reg_reg[55]  ( .D(
        \shift_buf_inst/n81 ), .CK(clk), .Q(SHIFT_OUT[55]) );
  UDB116SVT24_FDPQ_V2_3 \shift_buf_inst/shift_reg_reg[54]  ( .D(
        \shift_buf_inst/n82 ), .CK(clk), .Q(SHIFT_OUT[54]) );
  UDB116SVT24_FDPQ_V2_3 \shift_buf_inst/shift_reg_reg[53]  ( .D(
        \shift_buf_inst/n83 ), .CK(clk), .Q(SHIFT_OUT[53]) );
  UDB116SVT24_FDPQ_V2_3 \shift_buf_inst/shift_reg_reg[52]  ( .D(
        \shift_buf_inst/n84 ), .CK(clk), .Q(SHIFT_OUT[52]) );
  UDB116SVT24_FDPQ_V2_3 \shift_buf_inst/shift_reg_reg[51]  ( .D(
        \shift_buf_inst/n85 ), .CK(clk), .Q(SHIFT_OUT[51]) );
  UDB116SVT24_FDPQ_V2_3 \shift_buf_inst/shift_reg_reg[50]  ( .D(
        \shift_buf_inst/n86 ), .CK(clk), .Q(SHIFT_OUT[50]) );
  UDB116SVT24_FDPQ_V2_3 \shift_buf_inst/shift_reg_reg[49]  ( .D(
        \shift_buf_inst/n87 ), .CK(clk), .Q(SHIFT_OUT[49]) );
  UDB116SVT24_FDPQ_V2_3 \shift_buf_inst/shift_reg_reg[48]  ( .D(
        \shift_buf_inst/n88 ), .CK(clk), .Q(SHIFT_OUT[48]) );
  UDB116SVT24_FDPQ_V2_3 \shift_buf_inst/shift_reg_reg[47]  ( .D(
        \shift_buf_inst/n89 ), .CK(clk), .Q(SHIFT_OUT[47]) );
  UDB116SVT24_FDPQ_V2_3 \shift_buf_inst/shift_reg_reg[46]  ( .D(
        \shift_buf_inst/n90 ), .CK(clk), .Q(SHIFT_OUT[46]) );
  UDB116SVT24_FDPQ_V2_3 \shift_buf_inst/shift_reg_reg[44]  ( .D(
        \shift_buf_inst/n92 ), .CK(clk), .Q(SHIFT_OUT[44]) );
  UDB116SVT24_FDPQ_V2_3 \shift_buf_inst/shift_reg_reg[43]  ( .D(
        \shift_buf_inst/n93 ), .CK(clk), .Q(SHIFT_OUT[43]) );
  UDB116SVT24_FDPQ_V2_3 \shift_buf_inst/shift_reg_reg[42]  ( .D(
        \shift_buf_inst/n94 ), .CK(clk), .Q(SHIFT_OUT[42]) );
  UDB116SVT24_FDPQ_V2_3 \shift_buf_inst/shift_reg_reg[40]  ( .D(
        \shift_buf_inst/n96 ), .CK(clk), .Q(SHIFT_OUT[40]) );
  UDB116SVT24_FDPQ_V2_3 \shift_buf_inst/shift_reg_reg[39]  ( .D(
        \shift_buf_inst/n97 ), .CK(clk), .Q(SHIFT_OUT[39]) );
  UDB116SVT24_FDPQ_V2_3 \shift_buf_inst/shift_reg_reg[38]  ( .D(
        \shift_buf_inst/n98 ), .CK(clk), .Q(SHIFT_OUT[38]) );
  UDB116SVT24_FDPQ_V2_3 \shift_buf_inst/shift_reg_reg[37]  ( .D(
        \shift_buf_inst/n99 ), .CK(clk), .Q(SHIFT_OUT[37]) );
  UDB116SVT24_FDPQ_V2_3 \shift_buf_inst/shift_reg_reg[36]  ( .D(
        \shift_buf_inst/n100 ), .CK(clk), .Q(SHIFT_OUT[36]) );
  UDB116SVT24_FDPQ_V2_3 \shift_buf_inst/shift_reg_reg[35]  ( .D(
        \shift_buf_inst/n101 ), .CK(clk), .Q(SHIFT_OUT[35]) );
  UDB116SVT24_FDPQ_V2_3 \shift_buf_inst/shift_reg_reg[34]  ( .D(
        \shift_buf_inst/n102 ), .CK(clk), .Q(SHIFT_OUT[34]) );
  UDB116SVT24_FDPQ_V2_3 \shift_buf_inst/shift_reg_reg[33]  ( .D(
        \shift_buf_inst/n103 ), .CK(clk), .Q(SHIFT_OUT[33]) );
  UDB116SVT24_FDPQ_V2_3 \shift_buf_inst/shift_reg_reg[32]  ( .D(
        \shift_buf_inst/n104 ), .CK(clk), .Q(SHIFT_OUT[32]) );
  UDB116SVT24_FDPQ_V2_3 \shift_buf_inst/shift_reg_reg[7]  ( .D(
        \shift_buf_inst/n129 ), .CK(clk), .Q(SHIFT_OUT[7]) );
  UDB116SVT24_FDPQ_V2_3 \shift_buf_inst/shift_reg_reg[6]  ( .D(
        \shift_buf_inst/n130 ), .CK(clk), .Q(SHIFT_OUT[6]) );
  UDB116SVT24_FDPQ_V2_3 \shift_buf_inst/shift_reg_reg[3]  ( .D(
        \shift_buf_inst/n133 ), .CK(clk), .Q(SHIFT_OUT[3]) );
  UDB116SVT24_FDPQ_V2_3 \shift_buf_inst/shift_reg_reg[2]  ( .D(
        \shift_buf_inst/n134 ), .CK(clk), .Q(SHIFT_OUT[2]) );
  UDB116SVT24_FDPQB_1P5 \pkt_reg_inst/dout_reg[6]  ( .D(\pkt_reg_inst/n108 ), 
        .CK(clk), .QN(SPI_IN[6]) );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_inst/pkt_reg_reg[54]  ( .D(\pkt_reg_inst/n49 ), .CK(clk), .Q(\pkt_reg_inst/pkt_reg [54]) );
  UDB116SVT24_FDPQB_2 \pkt_reg_inst/pkt_reg_reg[3]  ( .D(\pkt_reg_inst/n109 ), 
        .CK(clk), .QN(\pkt_reg_inst/pkt_reg [3]) );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_inst/pkt_reg_reg[56]  ( .D(\pkt_reg_inst/n47 ), .CK(clk), .Q(\pkt_reg_inst/pkt_reg [56]) );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_inst/pkt_reg_reg[48]  ( .D(\pkt_reg_inst/n55 ), .CK(clk), .Q(\pkt_reg_inst/pkt_reg [48]) );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_inst/pkt_reg_reg[40]  ( .D(\pkt_reg_inst/n63 ), .CK(clk), .Q(\pkt_reg_inst/pkt_reg [40]) );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_inst/pkt_reg_reg[8]  ( .D(\pkt_reg_inst/n95 ), 
        .CK(clk), .Q(\pkt_reg_inst/pkt_reg [8]) );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_inst/pkt_reg_reg[0]  ( .D(\pkt_reg_inst/n103 ), .CK(clk), .Q(\pkt_reg_inst/pkt_reg [0]) );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_inst/pkt_reg_reg[57]  ( .D(\pkt_reg_inst/n46 ), .CK(clk), .Q(\pkt_reg_inst/pkt_reg [57]) );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_inst/pkt_reg_reg[49]  ( .D(\pkt_reg_inst/n54 ), .CK(clk), .Q(\pkt_reg_inst/pkt_reg [49]) );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_inst/pkt_reg_reg[9]  ( .D(\pkt_reg_inst/n94 ), 
        .CK(clk), .Q(\pkt_reg_inst/pkt_reg [9]) );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_inst/pkt_reg_reg[58]  ( .D(\pkt_reg_inst/n45 ), .CK(clk), .Q(\pkt_reg_inst/pkt_reg [58]) );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_inst/pkt_reg_reg[50]  ( .D(\pkt_reg_inst/n53 ), .CK(clk), .Q(\pkt_reg_inst/pkt_reg [50]) );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_inst/pkt_reg_reg[59]  ( .D(\pkt_reg_inst/n44 ), .CK(clk), .Q(\pkt_reg_inst/pkt_reg [59]) );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_inst/pkt_reg_reg[51]  ( .D(\pkt_reg_inst/n52 ), .CK(clk), .Q(\pkt_reg_inst/pkt_reg [51]) );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_inst/pkt_reg_reg[52]  ( .D(\pkt_reg_inst/n51 ), .CK(clk), .Q(\pkt_reg_inst/pkt_reg [52]) );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_inst/pkt_reg_reg[53]  ( .D(\pkt_reg_inst/n50 ), .CK(clk), .Q(\pkt_reg_inst/pkt_reg [53]) );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_inst/pkt_reg_reg[45]  ( .D(\pkt_reg_inst/n58 ), .CK(clk), .Q(\pkt_reg_inst/pkt_reg [45]) );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_inst/pkt_reg_reg[37]  ( .D(\pkt_reg_inst/n66 ), .CK(clk), .Q(\pkt_reg_inst/pkt_reg [37]) );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_inst/pkt_reg_reg[5]  ( .D(\pkt_reg_inst/n98 ), 
        .CK(clk), .Q(\pkt_reg_inst/pkt_reg [5]) );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_inst/pkt_reg_reg[62]  ( .D(\pkt_reg_inst/n41 ), .CK(clk), .Q(\pkt_reg_inst/pkt_reg [62]) );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_inst/pkt_reg_reg[46]  ( .D(\pkt_reg_inst/n57 ), .CK(clk), .Q(\pkt_reg_inst/pkt_reg [46]) );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_inst/pkt_reg_reg[38]  ( .D(\pkt_reg_inst/n65 ), .CK(clk), .Q(\pkt_reg_inst/pkt_reg [38]) );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_inst/pkt_reg_reg[14]  ( .D(\pkt_reg_inst/n89 ), .CK(clk), .Q(\pkt_reg_inst/pkt_reg [14]) );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_inst/pkt_reg_reg[63]  ( .D(\pkt_reg_inst/n40 ), .CK(clk), .Q(\pkt_reg_inst/pkt_reg [63]) );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_inst/pkt_reg_reg[47]  ( .D(\pkt_reg_inst/n56 ), .CK(clk), .Q(\pkt_reg_inst/pkt_reg [47]) );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_inst/pkt_reg_reg[39]  ( .D(\pkt_reg_inst/n64 ), .CK(clk), .Q(\pkt_reg_inst/pkt_reg [39]) );
  UDB116SVT24_FDPQ_V2_3 \pkt_reg_inst/pkt_reg_reg[15]  ( .D(\pkt_reg_inst/n88 ), .CK(clk), .Q(\pkt_reg_inst/pkt_reg [15]) );
  UDB116SVT24_FDPQB_1P5 \tx_buf_inst/dout_reg  ( .D(n845), .CK(clk), .QN(
        TX_OUT) );
  UDB116SVT24_FDPQ_V2_3 \counter3_reg[1]  ( .D(n829), .CK(clk), .Q(counter3[1]) );
  UDB116SVT24_FDPRBQ_V2_1 \tx_state_reg[1]  ( .D(n833), .CK(clk), .RD(n2007), 
        .Q(tx_state[1]) );
  UDB116SVT24_FDPRBQ_V2_1 \tx_state_reg[0]  ( .D(n834), .CK(clk), .RD(n2011), 
        .Q(tx_state[0]) );
  UDB116SVT24_FDPRBQ_V2_1 TX_SH_reg ( .D(n831), .CK(clk), .RD(n2010), .Q(TX_SH) );
  UDB116SVT24_FDPRBQ_V2_1 TX_LD_reg ( .D(n832), .CK(clk), .RD(n2010), .Q(TX_LD) );
  UDB116SVT24_FDPRBQ_V2_1 TX_EN_reg ( .D(n826), .CK(clk), .RD(n2010), .Q(TX_EN) );
  UDB116SVT24_FDPRBQ_V2_1 \counter_reg[0]  ( .D(n844), .CK(clk), .RD(n2009), 
        .Q(counter[0]) );
  UDB116SVT24_FDPRBQ_V2_1 \counter_reg[1]  ( .D(n836), .CK(clk), .RD(n2009), 
        .Q(counter[1]) );
  UDB116SVT24_FDPRBQ_V2_1 \counter_reg[2]  ( .D(n837), .CK(clk), .RD(n2009), 
        .Q(counter[2]) );
  UDB116SVT24_FDPRBQ_V2_1 \rx_state_reg[0]  ( .D(n840), .CK(clk), .RD(n2009), 
        .Q(rx_state[0]) );
  UDB116SVT24_FDPRBQ_V2_1 \rx_state_reg[1]  ( .D(n841), .CK(clk), .RD(n2008), 
        .Q(rx_state[1]) );
  UDB116SVT24_FDPRBQ_V2_1 \rx_state_reg[2]  ( .D(n842), .CK(clk), .RD(n2008), 
        .Q(rx_state[2]) );
  UDB116SVT24_FDPRBQ_V2_1 PKT_RST_reg ( .D(n835), .CK(clk), .RD(n2008), .Q(
        PKT_RST) );
  UDB116SVT24_FDPRBQ_V2_1 PKT_LD_reg ( .D(n839), .CK(clk), .RD(n2008), .Q(
        PKT_LD) );
  UDB116SVT24_FDPRBQ_V2_1 PKT_EN_reg ( .D(n838), .CK(clk), .RD(n2007), .Q(
        PKT_EN) );
  UDB116SVT24_FDPRBQ_V2_1 \counter_reg[3]  ( .D(n843), .CK(clk), .RD(n2007), 
        .Q(counter[3]) );
  UDB116SVT24_FDPRBQ_V2_1 SPI_LD_reg ( .D(n825), .CK(clk), .RD(n2007), .Q(
        SPI_LD) );
  UDB116SVT24_FDPRBQ_V2_1 pkt_rec_prev_reg ( .D(n824), .CK(clk), .RD(n2010), 
        .Q(pkt_rec_prev) );
  UDB116SVT24_ND2_MM_0P75 U1104 ( .A1(\fsm_sync_inst/next_state_pos ), .A2(
        n820), .X(n819) );
  UDB116SVT24_OAI21B_1 U1105 ( .A1(rfin), .A2(\fsm_sync_inst/next_state_pos ), 
        .B(\fsm_sync_inst/state_pos ), .X(n818) );
  UDB116SVT24_ND2_MM_0P75 U1107 ( .A1(\fsm_sync_inst/next_state_neg ), .A2(
        n820), .X(n822) );
  UDB116SVT24_OAI21B_1 U1108 ( .A1(rfin), .A2(\fsm_sync_inst/next_state_neg ), 
        .B(\fsm_sync_inst/state_neg ), .X(n821) );
  UDB116SVT24_FDPQB_2 \shift_buf_inst/sync3_reg[3]  ( .D(n2017), .CK(clk), 
        .QN(\shift_buf_inst/sync3 [3]) );
  UDB116SVT24_FDPQB_2 \shift_buf_inst/sync3_reg[2]  ( .D(n2016), .CK(clk), 
        .QN(\shift_buf_inst/sync3 [2]) );
  UDB116SVT24_FDPQB_2 \shift_buf_inst/sync3_reg[1]  ( .D(n2015), .CK(clk), 
        .QN(\shift_buf_inst/sync3 [1]) );
  UDB116SVT24_FDPQB_2 \shift_buf_inst/sync3_reg[0]  ( .D(n2014), .CK(clk), 
        .QN(\shift_buf_inst/sync3 [0]) );
  UDB116SVT24_FDPQB_2 \shift_buf_inst/sync2_reg[4]  ( .D(n2022), .CK(clk), 
        .QN(\shift_buf_inst/sync2 [4]) );
  UDB116SVT24_FDPQB_2 \shift_buf_inst/sync2_reg[3]  ( .D(n2021), .CK(clk), 
        .QN(\shift_buf_inst/sync2 [3]) );
  UDB116SVT24_FDPQB_2 \shift_buf_inst/sync2_reg[2]  ( .D(n2020), .CK(clk), 
        .QN(\shift_buf_inst/sync2 [2]) );
  UDB116SVT24_FDPQB_2 \shift_buf_inst/sync2_reg[1]  ( .D(n2019), .CK(clk), 
        .QN(\shift_buf_inst/sync2 [1]) );
  UDB116SVT24_FDPQB_2 \shift_buf_inst/sync2_reg[0]  ( .D(n2018), .CK(clk), 
        .QN(\shift_buf_inst/sync2 [0]) );
  UDB116SVT24_FDPQB_2 \sh_sync_inst/rfin_edge_reg  ( .D(n1065), .CK(clk), .QN(
        \sh_sync_inst/rfin_edge ) );
  UDB116SVT24_FDPQB_2 \shift_buf_inst/sync1_reg[4]  ( .D(n1037), .CK(clk), 
        .QN(\shift_buf_inst/sync1 [4]) );
  UDB116SVT24_FDPQB_2 \shift_buf_inst/sync1_reg[3]  ( .D(n1063), .CK(clk), 
        .QN(\shift_buf_inst/sync1 [3]) );
  UDB116SVT24_FDPQB_2 \shift_buf_inst/sync1_reg[2]  ( .D(n1050), .CK(clk), 
        .QN(\shift_buf_inst/sync1 [2]) );
  UDB116SVT24_FDPQB_2 \shift_buf_inst/sync1_reg[1]  ( .D(n1038), .CK(clk), 
        .QN(\shift_buf_inst/sync1 [1]) );
  UDB116SVT24_FDPQB_2 \shift_buf_inst/sync1_reg[0]  ( .D(n1064), .CK(clk), 
        .QN(\shift_buf_inst/sync1 [0]) );
  UDB116SVT24_FDPQB_2 \pkt_reg_inst/pkt_reg_reg[2]  ( .D(n2006), .CK(clk), 
        .QN(\pkt_reg_inst/pkt_reg [2]) );
  UDB116SVT24_FDPQB_2 \tx_buf_inst/buffer_reg[0]  ( .D(n1056), .CK(clk), .QN(
        \tx_buf_inst/buffer [0]) );
  UDB116SVT24_FDPQB_2 \pkt_reg_inst/pkt_reg_reg[4]  ( .D(n2005), .CK(clk), 
        .QN(\pkt_reg_inst/pkt_reg [4]) );
  UDB116SVT24_FDPQB_2 \tx_buf_inst/buffer_reg[7]  ( .D(n1062), .CK(clk), .QN(
        \tx_buf_inst/buffer [7]) );
  UDB116SVT24_FDPQB_2 \tx_buf_inst/buffer_reg[6]  ( .D(n1055), .CK(clk), .QN(
        \tx_buf_inst/buffer [6]) );
  UDB116SVT24_FDPQB_2 \tx_buf_inst/buffer_reg[5]  ( .D(n1061), .CK(clk), .QN(
        \tx_buf_inst/buffer [5]) );
  UDB116SVT24_FDPQB_2 \tx_buf_inst/buffer_reg[4]  ( .D(n1060), .CK(clk), .QN(
        \tx_buf_inst/buffer [4]) );
  UDB116SVT24_FDPQB_2 \tx_buf_inst/buffer_reg[3]  ( .D(n1059), .CK(clk), .QN(
        \tx_buf_inst/buffer [3]) );
  UDB116SVT24_FDPQB_2 \tx_buf_inst/buffer_reg[2]  ( .D(n1058), .CK(clk), .QN(
        \tx_buf_inst/buffer [2]) );
  UDB116SVT24_FDPQB_2 \pkt_reg_inst/pkt_reg_reg[1]  ( .D(n2004), .CK(clk), 
        .QN(\pkt_reg_inst/pkt_reg [1]) );
  UDB116SVT24_FDPQB_2 \shift_buf_inst/shift_reg_reg[10]  ( .D(n2003), .CK(clk), 
        .QN(SHIFT_OUT[10]) );
  UDB116SVT24_FDPQB_2 \shift_buf_inst/shift_reg_reg[9]  ( .D(n2002), .CK(clk), 
        .QN(SHIFT_OUT[9]) );
  UDB116SVT24_FDPQB_2 \pkt_reg_inst/pkt_reg_reg[7]  ( .D(n2001), .CK(clk), 
        .QN(\pkt_reg_inst/pkt_reg [7]) );
  UDB116SVT24_FDPQB_2 \pkt_reg_inst/pkt_reg_reg[6]  ( .D(n2000), .CK(clk), 
        .QN(\pkt_reg_inst/pkt_reg [6]) );
  UDB116SVT24_FDPQB_2 \pkt_reg_inst/pkt_reg_reg[55]  ( .D(n1048), .CK(clk), 
        .QN(\pkt_reg_inst/pkt_reg [55]) );
  UDB116SVT24_FDPQB_2 \pkt_reg_inst/pkt_reg_reg[44]  ( .D(n1047), .CK(clk), 
        .QN(\pkt_reg_inst/pkt_reg [44]) );
  UDB116SVT24_FDPQB_2 \pkt_reg_inst/pkt_reg_reg[43]  ( .D(n1046), .CK(clk), 
        .QN(\pkt_reg_inst/pkt_reg [43]) );
  UDB116SVT24_FDPQB_2 \pkt_reg_inst/pkt_reg_reg[42]  ( .D(n1045), .CK(clk), 
        .QN(\pkt_reg_inst/pkt_reg [42]) );
  UDB116SVT24_FDPQB_2 \pkt_reg_inst/pkt_reg_reg[41]  ( .D(n1044), .CK(clk), 
        .QN(\pkt_reg_inst/pkt_reg [41]) );
  UDB116SVT24_FDPQB_2 \pkt_reg_inst/pkt_reg_reg[11]  ( .D(n1054), .CK(clk), 
        .QN(\pkt_reg_inst/pkt_reg [11]) );
  UDB116SVT24_FDPQB_2 \pkt_reg_inst/pkt_reg_reg[10]  ( .D(n1999), .CK(clk), 
        .QN(\pkt_reg_inst/pkt_reg [10]) );
  UDB116SVT24_FDPQB_2 \shift_buf_inst/shift_reg_reg[4]  ( .D(n1998), .CK(clk), 
        .QN(SHIFT_OUT[4]) );
  UDB116SVT24_FDPQB_2 \pkt_reg_inst/pkt_reg_reg[61]  ( .D(n1049), .CK(clk), 
        .QN(\pkt_reg_inst/pkt_reg [61]) );
  UDB116SVT24_FDPQB_2 \pkt_reg_inst/pkt_reg_reg[12]  ( .D(n1996), .CK(clk), 
        .QN(\pkt_reg_inst/pkt_reg [12]) );
  UDB116SVT24_FDPQB_2 \shift_buf_inst/shift_reg_reg[11]  ( .D(n1995), .CK(clk), 
        .QN(SHIFT_OUT[11]) );
  UDB116SVT24_FDPQB_2 \shift_buf_inst/shift_reg_reg[8]  ( .D(n1053), .CK(clk), 
        .QN(SHIFT_OUT[8]) );
  UDB116SVT24_FDPQB_2 \pkt_reg_inst/pkt_reg_reg[36]  ( .D(n1043), .CK(clk), 
        .QN(\pkt_reg_inst/pkt_reg [36]) );
  UDB116SVT24_FDPQB_2 \pkt_reg_inst/pkt_reg_reg[35]  ( .D(n1042), .CK(clk), 
        .QN(\pkt_reg_inst/pkt_reg [35]) );
  UDB116SVT24_FDPQB_2 \pkt_reg_inst/pkt_reg_reg[34]  ( .D(n1041), .CK(clk), 
        .QN(\pkt_reg_inst/pkt_reg [34]) );
  UDB116SVT24_FDPQB_2 \pkt_reg_inst/pkt_reg_reg[33]  ( .D(n1040), .CK(clk), 
        .QN(\pkt_reg_inst/pkt_reg [33]) );
  UDB116SVT24_FDPQB_2 \pkt_reg_inst/pkt_reg_reg[32]  ( .D(n1039), .CK(clk), 
        .QN(\pkt_reg_inst/pkt_reg [32]) );
  UDB116SVT24_FDPQB_2 \pkt_reg_inst/pkt_reg_reg[31]  ( .D(n1994), .CK(clk), 
        .QN(\pkt_reg_inst/pkt_reg [31]) );
  UDB116SVT24_FDPQB_2 \pkt_reg_inst/pkt_reg_reg[30]  ( .D(n1052), .CK(clk), 
        .QN(\pkt_reg_inst/pkt_reg [30]) );
  UDB116SVT24_FDPQB_2 \pkt_reg_inst/pkt_reg_reg[29]  ( .D(n1993), .CK(clk), 
        .QN(\pkt_reg_inst/pkt_reg [29]) );
  UDB116SVT24_FDPQB_2 \pkt_reg_inst/pkt_reg_reg[28]  ( .D(n1032), .CK(clk), 
        .QN(\pkt_reg_inst/pkt_reg [28]) );
  UDB116SVT24_FDPQB_2 \pkt_reg_inst/pkt_reg_reg[27]  ( .D(n1033), .CK(clk), 
        .QN(\pkt_reg_inst/pkt_reg [27]) );
  UDB116SVT24_FDPQB_2 \pkt_reg_inst/pkt_reg_reg[26]  ( .D(n1034), .CK(clk), 
        .QN(\pkt_reg_inst/pkt_reg [26]) );
  UDB116SVT24_FDPQB_2 \pkt_reg_inst/pkt_reg_reg[24]  ( .D(n1051), .CK(clk), 
        .QN(\pkt_reg_inst/pkt_reg [24]) );
  UDB116SVT24_FDPQB_2 \pkt_reg_inst/pkt_reg_reg[23]  ( .D(n1992), .CK(clk), 
        .QN(\pkt_reg_inst/pkt_reg [23]) );
  UDB116SVT24_FDPQB_2 \pkt_reg_inst/pkt_reg_reg[22]  ( .D(n1991), .CK(clk), 
        .QN(\pkt_reg_inst/pkt_reg [22]) );
  UDB116SVT24_FDPQB_2 \pkt_reg_inst/pkt_reg_reg[21]  ( .D(n1036), .CK(clk), 
        .QN(\pkt_reg_inst/pkt_reg [21]) );
  UDB116SVT24_FDPQB_2 \pkt_reg_inst/pkt_reg_reg[20]  ( .D(n1990), .CK(clk), 
        .QN(\pkt_reg_inst/pkt_reg [20]) );
  UDB116SVT24_FDPQB_2 \pkt_reg_inst/pkt_reg_reg[19]  ( .D(n1989), .CK(clk), 
        .QN(\pkt_reg_inst/pkt_reg [19]) );
  UDB116SVT24_FDPQB_2 \pkt_reg_inst/pkt_reg_reg[18]  ( .D(n1988), .CK(clk), 
        .QN(\pkt_reg_inst/pkt_reg [18]) );
  UDB116SVT24_FDPQB_2 \pkt_reg_inst/pkt_reg_reg[17]  ( .D(n1987), .CK(clk), 
        .QN(\pkt_reg_inst/pkt_reg [17]) );
  UDB116SVT24_FDPQB_2 \pkt_reg_inst/pkt_reg_reg[16]  ( .D(n1066), .CK(clk), 
        .QN(\pkt_reg_inst/pkt_reg [16]) );
  UDB116SVT24_FDPQB_2 \shift_buf_inst/shift_reg_reg[31]  ( .D(
        \shift_buf_inst/n105 ), .CK(clk), .QN(n2023) );
  UDB116SVT24_FDPQB_2 \shift_buf_inst/shift_reg_reg[30]  ( .D(
        \shift_buf_inst/n106 ), .CK(clk), .QN(n2024) );
  UDB116SVT24_FDPQB_2 \shift_buf_inst/shift_reg_reg[29]  ( .D(
        \shift_buf_inst/n107 ), .CK(clk), .QN(n2025) );
  UDB116SVT24_FDPQB_2 \shift_buf_inst/shift_reg_reg[28]  ( .D(
        \shift_buf_inst/n108 ), .CK(clk), .QN(n2026) );
  UDB116SVT24_FDPQB_2 \shift_buf_inst/shift_reg_reg[27]  ( .D(
        \shift_buf_inst/n109 ), .CK(clk), .QN(n2027) );
  UDB116SVT24_FDPQB_2 \shift_buf_inst/shift_reg_reg[25]  ( .D(
        \shift_buf_inst/n111 ), .CK(clk), .QN(n2029) );
  UDB116SVT24_FDPQB_2 \shift_buf_inst/shift_reg_reg[24]  ( .D(
        \shift_buf_inst/n112 ), .CK(clk), .QN(n2030) );
  UDB116SVT24_FDPQB_2 \shift_buf_inst/shift_reg_reg[23]  ( .D(
        \shift_buf_inst/n113 ), .CK(clk), .QN(n2031) );
  UDB116SVT24_FDPQB_2 \shift_buf_inst/shift_reg_reg[22]  ( .D(
        \shift_buf_inst/n114 ), .CK(clk), .QN(n2032) );
  UDB116SVT24_FDPQB_2 \shift_buf_inst/shift_reg_reg[21]  ( .D(
        \shift_buf_inst/n115 ), .CK(clk), .QN(n2033) );
  UDB116SVT24_FDPQB_2 \shift_buf_inst/shift_reg_reg[20]  ( .D(
        \shift_buf_inst/n116 ), .CK(clk), .QN(n2034) );
  UDB116SVT24_FDPQB_2 \shift_buf_inst/shift_reg_reg[19]  ( .D(
        \shift_buf_inst/n117 ), .CK(clk), .QN(n2035) );
  UDB116SVT24_FDPQB_2 \shift_buf_inst/shift_reg_reg[18]  ( .D(
        \shift_buf_inst/n118 ), .CK(clk), .QN(n2036) );
  UDB116SVT24_FDPQB_2 \shift_buf_inst/shift_reg_reg[17]  ( .D(
        \shift_buf_inst/n119 ), .CK(clk), .QN(n2037) );
  UDB116SVT24_FDPQB_2 \shift_buf_inst/shift_reg_reg[16]  ( .D(
        \shift_buf_inst/n120 ), .CK(clk), .QN(n2038) );
  UDB116SVT24_FDPQB_2 \shift_buf_inst/shift_reg_reg[15]  ( .D(
        \shift_buf_inst/n121 ), .CK(clk), .QN(n2039) );
  UDB116SVT24_FDPQB_2 \shift_buf_inst/shift_reg_reg[14]  ( .D(
        \shift_buf_inst/n122 ), .CK(clk), .QN(n2040) );
  UDB116SVT24_FDPQB_2 \shift_buf_inst/shift_reg_reg[13]  ( .D(
        \shift_buf_inst/n123 ), .CK(clk), .QN(n2041) );
  UDB116SVT24_FDPQB_2 \shift_buf_inst/shift_reg_reg[12]  ( .D(
        \shift_buf_inst/n124 ), .CK(clk), .QN(n2042) );
  UDB116SVT24_FDPQB_2 \pkt_reg_inst/dout_reg[5]  ( .D(\pkt_reg_inst/n37 ), 
        .CK(clk), .QN(n1985) );
  UDB116SVT24_FDPQB_2 \pkt_reg_inst/dout_reg[4]  ( .D(\pkt_reg_inst/n36 ), 
        .CK(clk), .QN(n1984) );
  UDB116SVT24_FDPQB_2 \pkt_reg_inst/dout_reg[3]  ( .D(\pkt_reg_inst/n35 ), 
        .CK(clk), .QN(n1983) );
  UDB116SVT24_FDPQB_2 \pkt_reg_inst/dout_reg[2]  ( .D(\pkt_reg_inst/n34 ), 
        .CK(clk), .QN(n1982) );
  UDB116SVT24_FDPQB_2 \pkt_reg_inst/dout_reg[1]  ( .D(\pkt_reg_inst/n33 ), 
        .CK(clk), .QN(n1981) );
  UDB116SVT24_FDPQB_2 \pkt_reg_inst/dout_reg[0]  ( .D(\pkt_reg_inst/n32 ), 
        .CK(clk), .QN(n1980) );
  UDB116SVT24_FDPQB_1P5 \sh_sync_inst/interval_sum_reg[25]  ( .D(
        \sh_sync_inst/n278 ), .CK(clk), .QN(\sh_sync_inst/n152 ) );
  UDB116SVT24_FDPQB_1P5 \sh_sync_inst/interval_sum_reg[17]  ( .D(
        \sh_sync_inst/n286 ), .CK(clk), .QN(\sh_sync_inst/n160 ) );
  UDB116SVT24_FDPQB_1P5 \sh_sync_inst/state_reg[2]  ( .D(\sh_sync_inst/N32 ), 
        .CK(clk), .QN(\sh_sync_inst/n244 ) );
  UDB116SVT24_FDPQB_1P5 \sh_sync_inst/counter_reg[8]  ( .D(\sh_sync_inst/n263 ), .CK(clk), .QN(\sh_sync_inst/intadd_0/B[6] ) );
  UDB116SVT24_FDPQB_1P5 \sh_sync_inst/counter_reg[11]  ( .D(
        \sh_sync_inst/n260 ), .CK(clk), .QN(\sh_sync_inst/intadd_0/B[9] ) );
  UDB116SVT24_FDPQB_1P5 \sh_sync_inst/interval_sum_reg[30]  ( .D(
        \sh_sync_inst/n273 ), .CK(clk), .QN(\sh_sync_inst/n147 ) );
  UDB116SVT24_FDPQB_1P5 \sh_sync_inst/interval_sum_reg[29]  ( .D(
        \sh_sync_inst/n274 ), .CK(clk), .QN(\sh_sync_inst/n148 ) );
  UDB116SVT24_FDPQ_1 \counter3_reg[2]  ( .D(n828), .CK(clk), .Q(counter3[2])
         );
  UDB116SVT24_FDPQB_1P5 \sh_sync_inst/timeout_counter_reg[0]  ( .D(
        \sh_sync_inst/n354 ), .CK(clk), .QN(\sh_sync_inst/n224 ) );
  UDB116SVT24_FDPQB_1P5 \sh_sync_inst/counter_reg[1]  ( .D(\sh_sync_inst/n270 ), .CK(clk), .QN(\sh_sync_inst/n201 ) );
  UDB116SVT24_FDPQB_1P5 \sh_sync_inst/counter_reg[14]  ( .D(
        \sh_sync_inst/n257 ), .CK(clk), .QN(\sh_sync_inst/intadd_0/B[12] ) );
  UDB116SVT24_FDPQB_1P5 \sh_sync_inst/counter_reg[5]  ( .D(\sh_sync_inst/n266 ), .CK(clk), .QN(\sh_sync_inst/intadd_0/B[3] ) );
  UDB116SVT24_FDPQB_1P5 \sh_sync_inst/counter_reg[2]  ( .D(\sh_sync_inst/n269 ), .CK(clk), .QN(\sh_sync_inst/intadd_0/B[0] ) );
  UDB116SVT24_FDPQB_1P5 \sh_sync_inst/counter_reg[3]  ( .D(\sh_sync_inst/n268 ), .CK(clk), .QN(\sh_sync_inst/intadd_0/B[1] ) );
  UDB116SVT24_FDPQB_1P5 \sh_sync_inst/counter_reg[7]  ( .D(\sh_sync_inst/n264 ), .CK(clk), .QN(\sh_sync_inst/intadd_0/B[5] ) );
  UDB116SVT24_FDPQB_1P5 \sh_sync_inst/interval_sum_reg[0]  ( .D(
        \sh_sync_inst/n303 ), .CK(clk), .QN(\sh_sync_inst/n177 ) );
  UDB116SVT24_FDPQB_1P5 \sh_sync_inst/avg_interval_reg[0]  ( .D(
        \sh_sync_inst/n323 ), .CK(clk), .QN(\sh_sync_inst/n193 ) );
  UDB116SVT24_FDPQB_1P5 \sh_sync_inst/timeout_counter_reg[3]  ( .D(
        \sh_sync_inst/n351 ), .CK(clk), .QN(\sh_sync_inst/n221 ) );
  UDB116SVT24_FDPQB_1P5 \sh_sync_inst/pulse_pack_count_reg[4]  ( .D(
        \sh_sync_inst/n334 ), .CK(clk), .QN(\sh_sync_inst/n248 ) );
  UDB116SVT24_FDPQ_1 \shift_buf_inst/shift_reg_reg[57]  ( .D(
        \shift_buf_inst/n79 ), .CK(clk), .Q(SHIFT_OUT[57]) );
  UDB116SVT24_FDPQ_1 \shift_buf_inst/shift_reg_reg[41]  ( .D(
        \shift_buf_inst/n95 ), .CK(clk), .Q(SHIFT_OUT[41]) );
  UDB116SVT24_FDPQ_1 \shift_buf_inst/shift_reg_reg[1]  ( .D(
        \shift_buf_inst/n135 ), .CK(clk), .Q(SHIFT_OUT[1]) );
  UDB116SVT24_FDPQ_1 \pkt_reg_inst/pkt_reg_reg[60]  ( .D(\pkt_reg_inst/n43 ), 
        .CK(clk), .Q(\pkt_reg_inst/pkt_reg [60]) );
  UDB116SVT24_FDPQ_1 \counter3_reg[0]  ( .D(n830), .CK(clk), .Q(counter3[0])
         );
  UDB116SVT24_FDPQ_1 \counter3_reg[3]  ( .D(n827), .CK(clk), .Q(counter3[3])
         );
  UDB116SVT24_FDPQB_1P5 \shift_buf_inst/pkt_rec_reg  ( .D(n1173), .CK(clk), 
        .QN(pkt_rec) );
  UDB116SVT24_FDPQB_1P5 \tx_buf_inst/buffer_reg[1]  ( .D(n1057), .CK(clk), 
        .QN(\tx_buf_inst/buffer [1]) );
  UDB116SVT24_FDPQB_1P5 \pkt_reg_inst/pkt_reg_reg[13]  ( .D(n1997), .CK(clk), 
        .QN(\pkt_reg_inst/pkt_reg [13]) );
  UDB116SVT24_FDPQB_1P5 \pkt_reg_inst/pkt_reg_reg[25]  ( .D(n1035), .CK(clk), 
        .QN(\pkt_reg_inst/pkt_reg [25]) );
  UDB116SVT24_FDPQB_1P5 \shift_buf_inst/shift_reg_reg[26]  ( .D(
        \shift_buf_inst/n110 ), .CK(clk), .QN(n2028) );
  UDB116SVT24_FDPQB_1P5 \pkt_reg_inst/dout_reg[7]  ( .D(\pkt_reg_inst/n39 ), 
        .CK(clk), .QN(n1986) );
  UDB116SVT24_FDPQB_1P5 \shift_buf_inst/shift_reg_reg[0]  ( .D(
        \shift_buf_inst/n136 ), .CK(clk), .QN(n2043) );
  UDB116SVT24_OA2BB2_0P75 U1110 ( .A1(n1020), .A2(n1433), .B1(n1433), .B2(
        n1020), .X(n1432) );
  UDB116SVT24_OA2BB2_0P75 U1111 ( .A1(n958), .A2(n1429), .B1(n1429), .B2(n957), 
        .X(n1428) );
  UDB116SVT24_OA2BB2_0P75 U1112 ( .A1(n935), .A2(n1425), .B1(n1425), .B2(n936), 
        .X(n1424) );
  UDB116SVT24_OR2_0P75 U1113 ( .A1(n1830), .A2(n880), .X(n1826) );
  UDB116SVT24_OA2BB2_0P75 U1114 ( .A1(n1014), .A2(n1421), .B1(n1421), .B2(
        n1014), .X(n1417) );
  UDB116SVT24_OA2BB2_0P75 U1115 ( .A1(n1007), .A2(n1414), .B1(n1414), .B2(
        n1008), .X(n1386) );
  UDB116SVT24_BUF_1 U1116 ( .A(n1692), .X(n1830) );
  UDB116SVT24_BUF_1 U1117 ( .A(n974), .X(n1843) );
  UDB116SVT24_OR3_1 U1118 ( .A1(\sh_sync_inst/rfin_edge ), .A2(n1275), .A3(
        n860), .X(n1861) );
  UDB116SVT24_BUF_1 U1119 ( .A(n980), .X(n1729) );
  UDB116SVT24_OA2BB2_0P75 U1120 ( .A1(n1016), .A2(n1723), .B1(n1723), .B2(
        n1017), .X(n1727) );
  UDB116SVT24_AOI21_0P75 U1121 ( .A1(n822), .A2(n821), .B(n984), .X(
        \fsm_sync_inst/next_state_neg ) );
  UDB116SVT24_AOI21_0P75 U1122 ( .A1(n819), .A2(n818), .B(n984), .X(
        \fsm_sync_inst/next_state_pos ) );
  UDB116SVT24_BUF_1 U1123 ( .A(n1828), .X(n1817) );
  UDB116SVT24_BUF_1 U1124 ( .A(n1311), .X(n1685) );
  UDB116SVT24_INV_0P75 U1125 ( .A(n1349), .X(n1683) );
  UDB116SVT24_OR3_1 U1126 ( .A1(n985), .A2(n904), .A3(n1869), .X(n1832) );
  UDB116SVT24_OAI21B_1 U1127 ( .A1(PKT_EN), .A2(n852), .B(n985), .X(n1956) );
  UDB116SVT24_BUF_1 U1128 ( .A(n1329), .X(n1336) );
  UDB116SVT24_OR4_1 U1129 ( .A1(n1172), .A2(n1171), .A3(n1170), .A4(n1169), 
        .X(n1173) );
  UDB116SVT24_OR2_0P75 U1130 ( .A1(n984), .A2(n1146), .X(n1163) );
  UDB116SVT24_OR3_1 U1131 ( .A1(n987), .A2(TX_EN), .A3(TX_LD), .X(n1164) );
  UDB116SVT24_NR2_0P75 U1132 ( .A1(n987), .A2(PKT_RST), .X(n1168) );
  UDB116SVT24_BUF_1 U1133 ( .A(rx_state[1]), .X(n1977) );
  UDB116SVT24_INV_0P75 U1134 ( .A(\sh_sync_inst/n194 ), .X(n1329) );
  UDB116SVT24_BUF_1 U1135 ( .A(rx_state[0]), .X(n1315) );
  UDB116SVT24_BUF_1 U1136 ( .A(\sh_sync_inst/intadd_0/B[7] ), .X(n1422) );
  UDB116SVT24_BUF_1 U1137 ( .A(\sh_sync_inst/intadd_0/B[13] ), .X(n1789) );
  UDB116SVT24_BUF_1 U1138 ( .A(n1409), .X(n848) );
  UDB116SVT24_BUF_1 U1139 ( .A(n1300), .X(n849) );
  UDB116SVT24_BUF_1 U1140 ( .A(n1566), .X(n850) );
  UDB116SVT24_BUF_1 U1141 ( .A(n1672), .X(n851) );
  UDB116SVT24_BUF_1 U1142 ( .A(PKT_LD), .X(n852) );
  UDB116SVT24_BUF_1 U1143 ( .A(\sh_sync_inst/n249 ), .X(n853) );
  UDB116SVT24_INV_0P75 U1144 ( .A(n1313), .X(n854) );
  UDB116SVT24_INV_0P75 U1145 ( .A(n1229), .X(n855) );
  UDB116SVT24_BUF_1 U1146 ( .A(\sh_sync_inst/n176 ), .X(n856) );
  UDB116SVT24_BUF_1 U1147 ( .A(\sh_sync_inst/n228 ), .X(n857) );
  UDB116SVT24_INV_0P75 U1148 ( .A(n1501), .X(n858) );
  UDB116SVT24_INV_0P75 U1149 ( .A(n1624), .X(n859) );
  UDB116SVT24_INV_0P75 U1150 ( .A(n979), .X(n860) );
  UDB116SVT24_BUF_1 U1151 ( .A(n1024), .X(n861) );
  UDB116SVT24_INV_0P75 U1152 ( .A(n1847), .X(n862) );
  UDB116SVT24_INV_0P75 U1153 ( .A(tx_state[1]), .X(n863) );
  UDB116SVT24_INV_0P75 U1154 ( .A(n1977), .X(n864) );
  UDB116SVT24_INV_0P75 U1155 ( .A(n1977), .X(n865) );
  UDB116SVT24_INV_0P75 U1156 ( .A(n1315), .X(n866) );
  UDB116SVT24_INV_0P75 U1157 ( .A(n1315), .X(n867) );
  UDB116SVT24_INV_0P75 U1158 ( .A(counter3[2]), .X(n868) );
  UDB116SVT24_INV_0P75 U1159 ( .A(counter3[2]), .X(n869) );
  UDB116SVT24_INV_0P75 U1160 ( .A(n1789), .X(n870) );
  UDB116SVT24_INV_0P75 U1161 ( .A(n1789), .X(n871) );
  UDB116SVT24_INV_0P75 U1162 ( .A(n936), .X(n872) );
  UDB116SVT24_INV_0P75 U1163 ( .A(n906), .X(n873) );
  UDB116SVT24_INV_0P75 U1164 ( .A(\sh_sync_inst/n208 ), .X(n874) );
  UDB116SVT24_INV_0P75 U1165 ( .A(\sh_sync_inst/n208 ), .X(n875) );
  UDB116SVT24_INV_0P75 U1166 ( .A(n1685), .X(n876) );
  UDB116SVT24_INV_0P75 U1167 ( .A(n1685), .X(n877) );
  UDB116SVT24_INV_0P75 U1168 ( .A(\sh_sync_inst/intadd_0/A[2] ), .X(n878) );
  UDB116SVT24_INV_0P75 U1169 ( .A(\sh_sync_inst/intadd_0/A[2] ), .X(n879) );
  UDB116SVT24_INV_0P75 U1170 ( .A(n1817), .X(n880) );
  UDB116SVT24_INV_0P75 U1171 ( .A(n1817), .X(n881) );
  UDB116SVT24_INV_0P75 U1172 ( .A(n1830), .X(n882) );
  UDB116SVT24_INV_0P75 U1173 ( .A(n1830), .X(n883) );
  UDB116SVT24_INV_0P75 U1174 ( .A(\sh_sync_inst/intadd_0/A[8] ), .X(n884) );
  UDB116SVT24_INV_0P75 U1175 ( .A(\sh_sync_inst/intadd_0/A[8] ), .X(n885) );
  UDB116SVT24_INV_0P75 U1176 ( .A(\sh_sync_inst/n160 ), .X(n886) );
  UDB116SVT24_INV_0P75 U1177 ( .A(\sh_sync_inst/n160 ), .X(n887) );
  UDB116SVT24_INV_0P75 U1178 ( .A(\sh_sync_inst/n161 ), .X(n888) );
  UDB116SVT24_INV_0P75 U1179 ( .A(\sh_sync_inst/n161 ), .X(n889) );
  UDB116SVT24_INV_0P75 U1180 ( .A(\sh_sync_inst/n159 ), .X(n890) );
  UDB116SVT24_INV_0P75 U1181 ( .A(\sh_sync_inst/n159 ), .X(n891) );
  UDB116SVT24_INV_0P75 U1182 ( .A(\sh_sync_inst/n153 ), .X(n892) );
  UDB116SVT24_INV_0P75 U1183 ( .A(\sh_sync_inst/n153 ), .X(n893) );
  UDB116SVT24_INV_0P75 U1184 ( .A(\sh_sync_inst/n148 ), .X(n894) );
  UDB116SVT24_INV_0P75 U1185 ( .A(\sh_sync_inst/n148 ), .X(n895) );
  UDB116SVT24_INV_0P75 U1186 ( .A(rx_state[2]), .X(n896) );
  UDB116SVT24_INV_0P75 U1187 ( .A(n896), .X(n897) );
  UDB116SVT24_INV_0P75 U1188 ( .A(n1168), .X(n898) );
  UDB116SVT24_INV_0P75 U1189 ( .A(n1168), .X(n899) );
  UDB116SVT24_INV_0P75 U1190 ( .A(n1655), .X(n900) );
  UDB116SVT24_INV_0P75 U1191 ( .A(n900), .X(n901) );
  UDB116SVT24_INV_0P75 U1192 ( .A(n900), .X(n902) );
  UDB116SVT24_INV_0P75 U1193 ( .A(\sh_sync_inst/n244 ), .X(n903) );
  UDB116SVT24_INV_0P75 U1194 ( .A(n903), .X(n904) );
  UDB116SVT24_INV_0P75 U1195 ( .A(\sh_sync_inst/intadd_0/B[1] ), .X(n905) );
  UDB116SVT24_INV_0P75 U1196 ( .A(n905), .X(n906) );
  UDB116SVT24_INV_0P75 U1197 ( .A(\sh_sync_inst/intadd_0/B[9] ), .X(n907) );
  UDB116SVT24_INV_0P75 U1198 ( .A(n907), .X(n908) );
  UDB116SVT24_INV_0P75 U1199 ( .A(\sh_sync_inst/n224 ), .X(n909) );
  UDB116SVT24_INV_0P75 U1200 ( .A(n909), .X(n910) );
  UDB116SVT24_INV_0P75 U1201 ( .A(\sh_sync_inst/n152 ), .X(n911) );
  UDB116SVT24_INV_0P75 U1202 ( .A(n911), .X(n912) );
  UDB116SVT24_INV_0P75 U1203 ( .A(\sh_sync_inst/n235 ), .X(n913) );
  UDB116SVT24_INV_0P75 U1204 ( .A(n913), .X(n914) );
  UDB116SVT24_INV_0P75 U1205 ( .A(\sh_sync_inst/intadd_0/B[11] ), .X(n915) );
  UDB116SVT24_INV_0P75 U1206 ( .A(n915), .X(n916) );
  UDB116SVT24_INV_0P75 U1207 ( .A(\sh_sync_inst/n251 ), .X(n917) );
  UDB116SVT24_INV_0P75 U1208 ( .A(n917), .X(n918) );
  UDB116SVT24_INV_0P75 U1209 ( .A(\sh_sync_inst/n146 ), .X(n919) );
  UDB116SVT24_INV_0P75 U1210 ( .A(n919), .X(n920) );
  UDB116SVT24_INV_0P75 U1211 ( .A(\sh_sync_inst/intadd_0/B[9] ), .X(n921) );
  UDB116SVT24_INV_0P75 U1212 ( .A(\sh_sync_inst/intadd_0/B[11] ), .X(n922) );
  UDB116SVT24_INV_0P75 U1213 ( .A(\sh_sync_inst/n202 ), .X(n923) );
  UDB116SVT24_INV_0P75 U1214 ( .A(n954), .X(n924) );
  UDB116SVT24_INV_0P75 U1215 ( .A(n1729), .X(n925) );
  UDB116SVT24_INV_0P75 U1216 ( .A(n1729), .X(n926) );
  UDB116SVT24_INV_0P75 U1217 ( .A(\sh_sync_inst/n157 ), .X(n927) );
  UDB116SVT24_INV_0P75 U1218 ( .A(\sh_sync_inst/n157 ), .X(n928) );
  UDB116SVT24_INV_0P75 U1219 ( .A(RX), .X(n929) );
  UDB116SVT24_INV_0P75 U1220 ( .A(n929), .X(n930) );
  UDB116SVT24_INV_0P75 U1221 ( .A(n929), .X(n931) );
  UDB116SVT24_INV_0P75 U1222 ( .A(n1832), .X(n932) );
  UDB116SVT24_INV_0P75 U1223 ( .A(n1832), .X(n933) );
  UDB116SVT24_INV_0P75 U1224 ( .A(\sh_sync_inst/intadd_0/B[8] ), .X(n934) );
  UDB116SVT24_INV_0P75 U1225 ( .A(n934), .X(n935) );
  UDB116SVT24_INV_0P75 U1226 ( .A(n934), .X(n936) );
  UDB116SVT24_INV_0P75 U1227 ( .A(\sh_sync_inst/n202 ), .X(n937) );
  UDB116SVT24_INV_0P75 U1228 ( .A(n937), .X(n938) );
  UDB116SVT24_INV_0P75 U1229 ( .A(n1422), .X(n939) );
  UDB116SVT24_INV_0P75 U1230 ( .A(n1422), .X(n940) );
  UDB116SVT24_INV_0P75 U1231 ( .A(n1164), .X(n941) );
  UDB116SVT24_INV_0P75 U1232 ( .A(n1164), .X(n942) );
  UDB116SVT24_INV_0P75 U1233 ( .A(n1956), .X(n943) );
  UDB116SVT24_INV_0P75 U1234 ( .A(n1956), .X(n944) );
  UDB116SVT24_INV_0P75 U1235 ( .A(n1163), .X(n945) );
  UDB116SVT24_INV_0P75 U1236 ( .A(n1163), .X(n946) );
  UDB116SVT24_INV_0P75 U1237 ( .A(n1724), .X(n947) );
  UDB116SVT24_INV_0P75 U1238 ( .A(n947), .X(n948) );
  UDB116SVT24_INV_0P75 U1239 ( .A(n947), .X(n949) );
  UDB116SVT24_INV_0P75 U1240 ( .A(\sh_sync_inst/intadd_0/B[2] ), .X(n950) );
  UDB116SVT24_INV_0P75 U1241 ( .A(n950), .X(n951) );
  UDB116SVT24_INV_0P75 U1242 ( .A(n950), .X(n952) );
  UDB116SVT24_INV_0P75 U1243 ( .A(\sh_sync_inst/intadd_0/B[5] ), .X(n953) );
  UDB116SVT24_INV_0P75 U1244 ( .A(n953), .X(n954) );
  UDB116SVT24_INV_0P75 U1245 ( .A(n953), .X(n955) );
  UDB116SVT24_INV_0P75 U1246 ( .A(\sh_sync_inst/intadd_0/B[10] ), .X(n956) );
  UDB116SVT24_INV_0P75 U1247 ( .A(n956), .X(n957) );
  UDB116SVT24_INV_0P75 U1248 ( .A(n956), .X(n958) );
  UDB116SVT24_INV_0P75 U1249 ( .A(n961), .X(n959) );
  UDB116SVT24_INV_0P75 U1250 ( .A(n963), .X(n960) );
  UDB116SVT24_INV_0P75 U1251 ( .A(n1826), .X(n961) );
  UDB116SVT24_INV_0P75 U1252 ( .A(n1826), .X(n962) );
  UDB116SVT24_INV_0P75 U1253 ( .A(n1826), .X(n963) );
  UDB116SVT24_INV_0P75 U1254 ( .A(\sh_sync_inst/intadd_0/B[3] ), .X(n964) );
  UDB116SVT24_INV_0P75 U1255 ( .A(n964), .X(n965) );
  UDB116SVT24_INV_0P75 U1256 ( .A(n964), .X(n966) );
  UDB116SVT24_INV_0P75 U1257 ( .A(\sh_sync_inst/intadd_0/B[0] ), .X(n967) );
  UDB116SVT24_INV_0P75 U1258 ( .A(n967), .X(n968) );
  UDB116SVT24_INV_0P75 U1259 ( .A(n967), .X(n969) );
  UDB116SVT24_INV_0P75 U1260 ( .A(rx_state[2]), .X(n970) );
  UDB116SVT24_INV_0P75 U1261 ( .A(n897), .X(n971) );
  UDB116SVT24_INV_0P75 U1262 ( .A(n1843), .X(n972) );
  UDB116SVT24_INV_0P75 U1263 ( .A(n1843), .X(n973) );
  UDB116SVT24_INV_0P75 U1264 ( .A(n1861), .X(n974) );
  UDB116SVT24_INV_0P75 U1265 ( .A(n1861), .X(n975) );
  UDB116SVT24_INV_0P75 U1266 ( .A(n901), .X(n976) );
  UDB116SVT24_INV_0P75 U1267 ( .A(n902), .X(n977) );
  UDB116SVT24_INV_0P75 U1268 ( .A(n901), .X(n978) );
  UDB116SVT24_INV_0P75 U1269 ( .A(n1879), .X(n979) );
  UDB116SVT24_INV_0P75 U1270 ( .A(n979), .X(n980) );
  UDB116SVT24_INV_0P75 U1271 ( .A(n979), .X(n981) );
  UDB116SVT24_INV_0P75 U1272 ( .A(n979), .X(n982) );
  UDB116SVT24_INV_0P75 U1273 ( .A(rst), .X(n983) );
  UDB116SVT24_INV_0P75 U1274 ( .A(n983), .X(n984) );
  UDB116SVT24_INV_0P75 U1275 ( .A(n983), .X(n985) );
  UDB116SVT24_INV_0P75 U1276 ( .A(n983), .X(n986) );
  UDB116SVT24_INV_0P75 U1277 ( .A(n983), .X(n987) );
  UDB116SVT24_INV_0P75 U1278 ( .A(CS), .X(n988) );
  UDB116SVT24_INV_0P75 U1279 ( .A(n988), .X(n989) );
  UDB116SVT24_BUF_1 U1280 ( .A(n1651), .X(n990) );
  UDB116SVT24_BUF_1 U1281 ( .A(n1602), .X(n991) );
  UDB116SVT24_INV_0P75 U1282 ( .A(n1537), .X(n992) );
  UDB116SVT24_INV_0P75 U1283 ( .A(n1508), .X(n993) );
  UDB116SVT24_BUF_1 U1284 ( .A(\sh_sync_inst/n207 ), .X(n994) );
  UDB116SVT24_BUF_1 U1285 ( .A(counter3[1]), .X(n995) );
  UDB116SVT24_INV_0P75 U1286 ( .A(n1466), .X(n996) );
  UDB116SVT24_INV_0P75 U1287 ( .A(n1606), .X(n997) );
  UDB116SVT24_INV_0P75 U1288 ( .A(n1788), .X(n998) );
  UDB116SVT24_INV_0P75 U1289 ( .A(n1846), .X(n999) );
  UDB116SVT24_INV_0P75 U1290 ( .A(n1577), .X(n1000) );
  UDB116SVT24_BUF_1 U1291 ( .A(\sh_sync_inst/n215 ), .X(n1001) );
  UDB116SVT24_BUF_1 U1292 ( .A(n1161), .X(n1002) );
  UDB116SVT24_INV_0P75 U1293 ( .A(n1412), .X(n1003) );
  UDB116SVT24_ND2_MM_0P75 U1294 ( .A1(n1950), .A2(SPI_LD), .X(n1955) );
  UDB116SVT24_INV_0P75 U1295 ( .A(n1955), .X(n1004) );
  UDB116SVT24_INV_0P75 U1296 ( .A(n1955), .X(n1005) );
  UDB116SVT24_INV_0P75 U1297 ( .A(n1741), .X(n1006) );
  UDB116SVT24_BUF_1 U1298 ( .A(\sh_sync_inst/intadd_0/B[4] ), .X(n1007) );
  UDB116SVT24_BUF_1 U1299 ( .A(\sh_sync_inst/intadd_0/B[4] ), .X(n1008) );
  UDB116SVT24_INV_0P75 U1300 ( .A(\sh_sync_inst/n147 ), .X(n1009) );
  UDB116SVT24_INV_0P75 U1301 ( .A(n1009), .X(n1010) );
  UDB116SVT24_INV_0P75 U1302 ( .A(n1009), .X(n1011) );
  UDB116SVT24_INV_0P75 U1303 ( .A(\sh_sync_inst/intadd_0/B[6] ), .X(n1012) );
  UDB116SVT24_INV_0P75 U1304 ( .A(n1012), .X(n1013) );
  UDB116SVT24_INV_0P75 U1305 ( .A(n1012), .X(n1014) );
  UDB116SVT24_INV_0P75 U1306 ( .A(\sh_sync_inst/n201 ), .X(n1015) );
  UDB116SVT24_INV_0P75 U1307 ( .A(n1015), .X(n1016) );
  UDB116SVT24_INV_0P75 U1308 ( .A(n1015), .X(n1017) );
  UDB116SVT24_INV_0P75 U1309 ( .A(\sh_sync_inst/intadd_0/B[12] ), .X(n1018) );
  UDB116SVT24_INV_0P75 U1310 ( .A(n1018), .X(n1019) );
  UDB116SVT24_INV_0P75 U1311 ( .A(n1018), .X(n1020) );
  UDB116SVT24_INV_0P75 U1312 ( .A(n930), .X(n1021) );
  UDB116SVT24_INV_0P75 U1313 ( .A(n930), .X(n1022) );
  UDB116SVT24_INV_0P75 U1314 ( .A(n931), .X(n1023) );
  UDB116SVT24_OA31_1 U1315 ( .A1(n1878), .A2(n1451), .A3(n857), .B(n1874), .X(
        n1773) );
  UDB116SVT24_INV_0P75 U1316 ( .A(n1773), .X(n1024) );
  UDB116SVT24_INV_0P75 U1317 ( .A(n1773), .X(n1025) );
  UDB116SVT24_INV_0P75 U1318 ( .A(n1773), .X(n1026) );
  UDB116SVT24_INV_0P75 U1319 ( .A(n1773), .X(n1027) );
  UDB116SVT24_BUF_1 U1320 ( .A(n948), .X(n1847) );
  UDB116SVT24_INV_0P75 U1321 ( .A(n1724), .X(n1028) );
  UDB116SVT24_INV_0P75 U1322 ( .A(n1847), .X(n1029) );
  UDB116SVT24_INV_0P75 U1323 ( .A(n1847), .X(n1030) );
  UDB116SVT24_INV_0P75 U1324 ( .A(n1847), .X(n1031) );
  UDB116SVT24_OA21_V2_1 U1325 ( .A1(n1102), .A2(n2026), .B(n1095), .X(n1032)
         );
  UDB116SVT24_OA21_V2_1 U1326 ( .A1(n1094), .A2(n2027), .B(n1093), .X(n1033)
         );
  UDB116SVT24_OA21_V2_1 U1327 ( .A1(n1094), .A2(n2028), .B(n1091), .X(n1034)
         );
  UDB116SVT24_OA21_V2_1 U1328 ( .A1(n1094), .A2(n2029), .B(n1090), .X(n1035)
         );
  UDB116SVT24_OA21_V2_1 U1329 ( .A1(n1086), .A2(n2033), .B(n1080), .X(n1036)
         );
  UDB116SVT24_OR2_0P75 U1330 ( .A1(n898), .A2(n1317), .X(n1037) );
  UDB116SVT24_OR2_0P75 U1331 ( .A1(n899), .A2(n1371), .X(n1038) );
  UDB116SVT24_OA21_V2_1 U1332 ( .A1(n1112), .A2(n2022), .B(n1105), .X(n1039)
         );
  UDB116SVT24_OA21_V2_1 U1333 ( .A1(n1112), .A2(n2021), .B(n1107), .X(n1040)
         );
  UDB116SVT24_OA21_V2_1 U1334 ( .A1(n1112), .A2(n2020), .B(n1109), .X(n1041)
         );
  UDB116SVT24_OA21_V2_1 U1335 ( .A1(n1112), .A2(n2019), .B(n1111), .X(n1042)
         );
  UDB116SVT24_OA21_V2_1 U1336 ( .A1(n1942), .A2(n2018), .B(n1113), .X(n1043)
         );
  UDB116SVT24_OA21_V2_1 U1337 ( .A1(n1933), .A2(n1356), .B(n1130), .X(n1044)
         );
  UDB116SVT24_OA21_V2_1 U1338 ( .A1(n1933), .A2(n1328), .B(n1131), .X(n1045)
         );
  UDB116SVT24_OA21_V2_1 U1339 ( .A1(n1933), .A2(n1327), .B(n1132), .X(n1046)
         );
  UDB116SVT24_OA21_V2_1 U1340 ( .A1(n1928), .A2(n1333), .B(n1135), .X(n1047)
         );
  UDB116SVT24_OA21_V2_1 U1341 ( .A1(n1906), .A2(n1324), .B(n1136), .X(n1048)
         );
  UDB116SVT24_OA21_V2_1 U1342 ( .A1(n1886), .A2(n2015), .B(n1122), .X(n1049)
         );
  UDB116SVT24_OR2_0P75 U1343 ( .A1(n898), .A2(n1372), .X(n1050) );
  UDB116SVT24_OA21_V2_1 U1344 ( .A1(n1094), .A2(n2030), .B(n1088), .X(n1051)
         );
  UDB116SVT24_OA21_V2_1 U1345 ( .A1(n1102), .A2(n2024), .B(n1099), .X(n1052)
         );
  UDB116SVT24_OA22_1 U1346 ( .A1(n1680), .A2(n1370), .B1(n1331), .B2(n1953), 
        .X(n1053) );
  UDB116SVT24_OA21_V2_1 U1347 ( .A1(n1954), .A2(n1363), .B(n1128), .X(n1054)
         );
  UDB116SVT24_OA21_V2_1 U1348 ( .A1(n1002), .A2(n1158), .B(n1157), .X(n1055)
         );
  UDB116SVT24_AOI22_1 U1349 ( .A1(\tx_buf_inst/buffer [0]), .A2(n942), .B1(
        n946), .B2(SPI_OUT[0]), .X(n1056) );
  UDB116SVT24_OA21_V2_1 U1350 ( .A1(n1161), .A2(n1148), .B(n1147), .X(n1057)
         );
  UDB116SVT24_OA21_V2_1 U1351 ( .A1(n1161), .A2(n1150), .B(n1149), .X(n1058)
         );
  UDB116SVT24_OA21_V2_1 U1352 ( .A1(n1161), .A2(n1152), .B(n1151), .X(n1059)
         );
  UDB116SVT24_OA21_V2_1 U1353 ( .A1(n1002), .A2(n1154), .B(n1153), .X(n1060)
         );
  UDB116SVT24_OA21_V2_1 U1354 ( .A1(n1002), .A2(n1156), .B(n1155), .X(n1061)
         );
  UDB116SVT24_OA21_V2_1 U1355 ( .A1(n1002), .A2(n1160), .B(n1159), .X(n1062)
         );
  UDB116SVT24_OR2_0P75 U1356 ( .A1(n899), .A2(n1167), .X(n1063) );
  UDB116SVT24_OR2_0P75 U1357 ( .A1(n1953), .A2(n899), .X(n1064) );
  UDB116SVT24_OA21_V2_1 U1358 ( .A1(n1378), .A2(n1281), .B(n1174), .X(n1065)
         );
  UDB116SVT24_OA21_V2_1 U1359 ( .A1(n1075), .A2(n2038), .B(n1068), .X(n1066)
         );
  UDB116SVT24_BUF_1 U1360 ( .A(n1142), .X(n1323) );
  UDB116SVT24_BUF_1 U1361 ( .A(n1255), .X(n1208) );
  UDB116SVT24_INV_0P75 U1363 ( .A(n1980), .X(SPI_IN[0]) );
  UDB116SVT24_INV_0P75 U1364 ( .A(n1981), .X(SPI_IN[1]) );
  UDB116SVT24_INV_0P75 U1365 ( .A(n1982), .X(SPI_IN[2]) );
  UDB116SVT24_INV_0P75 U1366 ( .A(n1983), .X(SPI_IN[3]) );
  UDB116SVT24_INV_0P75 U1367 ( .A(n1984), .X(SPI_IN[4]) );
  UDB116SVT24_INV_0P75 U1368 ( .A(n1985), .X(SPI_IN[5]) );
  UDB116SVT24_INV_0P75 U1369 ( .A(n1986), .X(SPI_IN[7]) );
  UDB116SVT24_INV_0P75 U1370 ( .A(n985), .X(n1255) );
  UDB116SVT24_BUF_1 U1371 ( .A(n1255), .X(n1281) );
  UDB116SVT24_BUF_1 U1372 ( .A(n1281), .X(n1175) );
  UDB116SVT24_ND2_MM_0P75 U1373 ( .A1(PKT_LD), .A2(n1175), .X(n1104) );
  UDB116SVT24_INV_0P75 U1374 ( .A(n1104), .X(n1182) );
  UDB116SVT24_INV_0P75 U1375 ( .A(n1121), .X(n1075) );
  UDB116SVT24_ND2_MM_0P75 U1376 ( .A1(PKT_EN), .A2(n1175), .X(n1067) );
  UDB116SVT24_NR2_0P75 U1377 ( .A1(PKT_LD), .A2(n1067), .X(n1125) );
  UDB116SVT24_BUF_1 U1378 ( .A(n1125), .X(n1129) );
  UDB116SVT24_BUF_1 U1379 ( .A(n1129), .X(n1073) );
  UDB116SVT24_NR3_0P75 U1380 ( .A1(n986), .A2(PKT_EN), .A3(PKT_LD), .X(n1165)
         );
  UDB116SVT24_BUF_1 U1381 ( .A(n1165), .X(n1118) );
  UDB116SVT24_BUF_1 U1382 ( .A(n1118), .X(n1081) );
  UDB116SVT24_BUF_1 U1383 ( .A(n1081), .X(n1944) );
  UDB116SVT24_AOI22_1 U1384 ( .A1(n1073), .A2(\pkt_reg_inst/pkt_reg [8]), .B1(
        n1944), .B2(\pkt_reg_inst/pkt_reg [16]), .X(n1068) );
  UDB116SVT24_AOI22_1 U1385 ( .A1(n1073), .A2(\pkt_reg_inst/pkt_reg [9]), .B1(
        n1944), .B2(\pkt_reg_inst/pkt_reg [17]), .X(n1069) );
  UDB116SVT24_OAI21_0P75 U1386 ( .A1(n1075), .A2(n2037), .B(n1069), .X(n1070)
         );
  UDB116SVT24_INV_0P75 U1387 ( .A(n1070), .X(n1987) );
  UDB116SVT24_BUF_1 U1388 ( .A(n1081), .X(n1079) );
  UDB116SVT24_AOI22_1 U1389 ( .A1(n1073), .A2(\pkt_reg_inst/pkt_reg [10]), 
        .B1(n1079), .B2(\pkt_reg_inst/pkt_reg [18]), .X(n1071) );
  UDB116SVT24_OAI21_0P75 U1390 ( .A1(n1075), .A2(n2036), .B(n1071), .X(n1072)
         );
  UDB116SVT24_INV_0P75 U1391 ( .A(n1072), .X(n1988) );
  UDB116SVT24_AOI22_1 U1392 ( .A1(n1073), .A2(\pkt_reg_inst/pkt_reg [11]), 
        .B1(n1079), .B2(\pkt_reg_inst/pkt_reg [19]), .X(n1074) );
  UDB116SVT24_OAI21_0P75 U1393 ( .A1(n1075), .A2(n2035), .B(n1074), .X(n1076)
         );
  UDB116SVT24_INV_0P75 U1394 ( .A(n1076), .X(n1989) );
  UDB116SVT24_INV_0P75 U1395 ( .A(n1182), .X(n1086) );
  UDB116SVT24_BUF_1 U1396 ( .A(n1125), .X(n1115) );
  UDB116SVT24_BUF_1 U1397 ( .A(n1115), .X(n1084) );
  UDB116SVT24_AOI22_1 U1398 ( .A1(n1084), .A2(\pkt_reg_inst/pkt_reg [12]), 
        .B1(n1079), .B2(\pkt_reg_inst/pkt_reg [20]), .X(n1077) );
  UDB116SVT24_OAI21_0P75 U1399 ( .A1(n1086), .A2(n2034), .B(n1077), .X(n1078)
         );
  UDB116SVT24_INV_0P75 U1400 ( .A(n1078), .X(n1990) );
  UDB116SVT24_AOI22_1 U1401 ( .A1(n1084), .A2(\pkt_reg_inst/pkt_reg [13]), 
        .B1(n1079), .B2(\pkt_reg_inst/pkt_reg [21]), .X(n1080) );
  UDB116SVT24_BUF_1 U1402 ( .A(n1081), .X(n1089) );
  UDB116SVT24_AOI22_1 U1403 ( .A1(n1084), .A2(\pkt_reg_inst/pkt_reg [14]), 
        .B1(n1089), .B2(\pkt_reg_inst/pkt_reg [22]), .X(n1082) );
  UDB116SVT24_OAI21_0P75 U1404 ( .A1(n1086), .A2(n2032), .B(n1082), .X(n1083)
         );
  UDB116SVT24_INV_0P75 U1405 ( .A(n1083), .X(n1991) );
  UDB116SVT24_AOI22_1 U1406 ( .A1(n1084), .A2(\pkt_reg_inst/pkt_reg [15]), 
        .B1(n1089), .B2(\pkt_reg_inst/pkt_reg [23]), .X(n1085) );
  UDB116SVT24_OAI21_0P75 U1407 ( .A1(n1086), .A2(n2031), .B(n1085), .X(n1087)
         );
  UDB116SVT24_INV_0P75 U1408 ( .A(n1087), .X(n1992) );
  UDB116SVT24_INV_0P75 U1409 ( .A(n1121), .X(n1094) );
  UDB116SVT24_BUF_1 U1410 ( .A(n1115), .X(n1092) );
  UDB116SVT24_AOI22_1 U1411 ( .A1(n1092), .A2(\pkt_reg_inst/pkt_reg [16]), 
        .B1(n1089), .B2(\pkt_reg_inst/pkt_reg [24]), .X(n1088) );
  UDB116SVT24_AOI22_1 U1412 ( .A1(n1092), .A2(\pkt_reg_inst/pkt_reg [17]), 
        .B1(n1089), .B2(\pkt_reg_inst/pkt_reg [25]), .X(n1090) );
  UDB116SVT24_BUF_1 U1413 ( .A(n1118), .X(n1108) );
  UDB116SVT24_BUF_1 U1414 ( .A(n1108), .X(n1096) );
  UDB116SVT24_AOI22_1 U1415 ( .A1(n1092), .A2(\pkt_reg_inst/pkt_reg [18]), 
        .B1(n1096), .B2(\pkt_reg_inst/pkt_reg [26]), .X(n1091) );
  UDB116SVT24_AOI22_1 U1416 ( .A1(n1092), .A2(\pkt_reg_inst/pkt_reg [19]), 
        .B1(n1096), .B2(\pkt_reg_inst/pkt_reg [27]), .X(n1093) );
  UDB116SVT24_INV_0P75 U1417 ( .A(n1182), .X(n1102) );
  UDB116SVT24_BUF_1 U1418 ( .A(n1115), .X(n1100) );
  UDB116SVT24_AOI22_1 U1419 ( .A1(n1100), .A2(\pkt_reg_inst/pkt_reg [20]), 
        .B1(n1096), .B2(\pkt_reg_inst/pkt_reg [28]), .X(n1095) );
  UDB116SVT24_AOI22_1 U1420 ( .A1(n1100), .A2(\pkt_reg_inst/pkt_reg [21]), 
        .B1(n1096), .B2(\pkt_reg_inst/pkt_reg [29]), .X(n1097) );
  UDB116SVT24_OAI21_0P75 U1421 ( .A1(n1102), .A2(n2025), .B(n1097), .X(n1098)
         );
  UDB116SVT24_INV_0P75 U1422 ( .A(n1098), .X(n1993) );
  UDB116SVT24_BUF_1 U1423 ( .A(n1108), .X(n1106) );
  UDB116SVT24_AOI22_1 U1424 ( .A1(n1100), .A2(\pkt_reg_inst/pkt_reg [22]), 
        .B1(n1106), .B2(\pkt_reg_inst/pkt_reg [30]), .X(n1099) );
  UDB116SVT24_AOI22_1 U1425 ( .A1(n1100), .A2(\pkt_reg_inst/pkt_reg [23]), 
        .B1(n1106), .B2(\pkt_reg_inst/pkt_reg [31]), .X(n1101) );
  UDB116SVT24_OAI21_0P75 U1426 ( .A1(n1102), .A2(n2023), .B(n1101), .X(n1103)
         );
  UDB116SVT24_INV_0P75 U1427 ( .A(n1103), .X(n1994) );
  UDB116SVT24_INV_0P75 U1428 ( .A(SHIFT_OUT[32]), .X(n2022) );
  UDB116SVT24_INV_0P75 U1429 ( .A(n1104), .X(n1121) );
  UDB116SVT24_BUF_1 U1430 ( .A(n1121), .X(n1133) );
  UDB116SVT24_INV_0P75 U1431 ( .A(n1133), .X(n1112) );
  UDB116SVT24_BUF_1 U1432 ( .A(n1129), .X(n1110) );
  UDB116SVT24_AOI22_1 U1433 ( .A1(n1110), .A2(\pkt_reg_inst/pkt_reg [24]), 
        .B1(n1106), .B2(\pkt_reg_inst/pkt_reg [32]), .X(n1105) );
  UDB116SVT24_INV_0P75 U1434 ( .A(SHIFT_OUT[33]), .X(n2021) );
  UDB116SVT24_AOI22_1 U1435 ( .A1(n1110), .A2(\pkt_reg_inst/pkt_reg [25]), 
        .B1(n1106), .B2(\pkt_reg_inst/pkt_reg [33]), .X(n1107) );
  UDB116SVT24_INV_0P75 U1436 ( .A(SHIFT_OUT[34]), .X(n2020) );
  UDB116SVT24_BUF_1 U1437 ( .A(n1108), .X(n1181) );
  UDB116SVT24_AOI22_1 U1438 ( .A1(n1110), .A2(\pkt_reg_inst/pkt_reg [26]), 
        .B1(n1181), .B2(\pkt_reg_inst/pkt_reg [34]), .X(n1109) );
  UDB116SVT24_INV_0P75 U1439 ( .A(SHIFT_OUT[35]), .X(n2019) );
  UDB116SVT24_AOI22_1 U1440 ( .A1(n1110), .A2(\pkt_reg_inst/pkt_reg [27]), 
        .B1(n1181), .B2(\pkt_reg_inst/pkt_reg [35]), .X(n1111) );
  UDB116SVT24_INV_0P75 U1441 ( .A(SHIFT_OUT[36]), .X(n2018) );
  UDB116SVT24_INV_0P75 U1442 ( .A(n1133), .X(n1942) );
  UDB116SVT24_BUF_1 U1443 ( .A(n1129), .X(n1939) );
  UDB116SVT24_AOI22_1 U1444 ( .A1(n1939), .A2(\pkt_reg_inst/pkt_reg [28]), 
        .B1(n1181), .B2(\pkt_reg_inst/pkt_reg [36]), .X(n1113) );
  UDB116SVT24_BUF_1 U1445 ( .A(n1336), .X(n1349) );
  UDB116SVT24_BUF_1 U1446 ( .A(n1349), .X(n2013) );
  UDB116SVT24_BUF_1 U1447 ( .A(n1329), .X(n1123) );
  UDB116SVT24_INV_0P75 U1448 ( .A(n1123), .X(n1680) );
  UDB116SVT24_INV_0P75 U1449 ( .A(SHIFT_OUT[7]), .X(n1370) );
  UDB116SVT24_NR2_0P75 U1450 ( .A1(n2013), .A2(n898), .X(n1186) );
  UDB116SVT24_INV_0P75 U1451 ( .A(n1186), .X(n1142) );
  UDB116SVT24_BUF_1 U1452 ( .A(n1142), .X(n1331) );
  UDB116SVT24_INV_0P75 U1453 ( .A(SHIFT_OUT[8]), .X(n1953) );
  UDB116SVT24_INV_0P75 U1454 ( .A(n1123), .X(n1364) );
  UDB116SVT24_INV_0P75 U1455 ( .A(SHIFT_OUT[10]), .X(n1141) );
  UDB116SVT24_INV_0P75 U1456 ( .A(SHIFT_OUT[11]), .X(n1363) );
  UDB116SVT24_OAI22_0P75 U1457 ( .A1(n1364), .A2(n1141), .B1(n1331), .B2(n1363), .X(n1114) );
  UDB116SVT24_INV_0P75 U1458 ( .A(n1114), .X(n1995) );
  UDB116SVT24_BUF_1 U1459 ( .A(n1182), .X(n1144) );
  UDB116SVT24_INV_0P75 U1460 ( .A(n1144), .X(n1947) );
  UDB116SVT24_BUF_1 U1461 ( .A(n1115), .X(n1887) );
  UDB116SVT24_BUF_1 U1462 ( .A(n1887), .X(n1945) );
  UDB116SVT24_AOI22_1 U1463 ( .A1(n1945), .A2(\pkt_reg_inst/pkt_reg [4]), .B1(
        n1118), .B2(\pkt_reg_inst/pkt_reg [12]), .X(n1116) );
  UDB116SVT24_OAI21_0P75 U1464 ( .A1(n1947), .A2(n2042), .B(n1116), .X(n1117)
         );
  UDB116SVT24_INV_0P75 U1465 ( .A(n1117), .X(n1996) );
  UDB116SVT24_BUF_1 U1466 ( .A(n1118), .X(n1202) );
  UDB116SVT24_AOI22_1 U1467 ( .A1(n1945), .A2(\pkt_reg_inst/pkt_reg [5]), .B1(
        n1202), .B2(\pkt_reg_inst/pkt_reg [13]), .X(n1119) );
  UDB116SVT24_OAI21_0P75 U1468 ( .A1(n1947), .A2(n2041), .B(n1119), .X(n1120)
         );
  UDB116SVT24_INV_0P75 U1469 ( .A(n1120), .X(n1997) );
  UDB116SVT24_INV_0P75 U1470 ( .A(SHIFT_OUT[61]), .X(n2015) );
  UDB116SVT24_BUF_1 U1471 ( .A(n1121), .X(n1907) );
  UDB116SVT24_INV_0P75 U1472 ( .A(n1907), .X(n1886) );
  UDB116SVT24_BUF_1 U1473 ( .A(n1887), .X(n1884) );
  UDB116SVT24_BUF_1 U1474 ( .A(n1165), .X(n1195) );
  UDB116SVT24_BUF_1 U1475 ( .A(n1195), .X(n1138) );
  UDB116SVT24_AOI22_1 U1476 ( .A1(n1884), .A2(\pkt_reg_inst/pkt_reg [53]), 
        .B1(n1138), .B2(\pkt_reg_inst/pkt_reg [61]), .X(n1122) );
  UDB116SVT24_INV_0P75 U1477 ( .A(n1123), .X(n1373) );
  UDB116SVT24_INV_0P75 U1478 ( .A(SHIFT_OUT[3]), .X(n1314) );
  UDB116SVT24_INV_0P75 U1479 ( .A(SHIFT_OUT[4]), .X(n1167) );
  UDB116SVT24_OAI22_0P75 U1480 ( .A1(n1373), .A2(n1314), .B1(n1167), .B2(n1323), .X(n1124) );
  UDB116SVT24_INV_0P75 U1481 ( .A(n1124), .X(n1998) );
  UDB116SVT24_INV_0P75 U1482 ( .A(n1144), .X(n1954) );
  UDB116SVT24_BUF_1 U1483 ( .A(n1125), .X(n1908) );
  UDB116SVT24_BUF_1 U1484 ( .A(n1908), .X(n1951) );
  UDB116SVT24_AOI22_1 U1485 ( .A1(n1951), .A2(\pkt_reg_inst/pkt_reg [2]), .B1(
        n1202), .B2(\pkt_reg_inst/pkt_reg [10]), .X(n1126) );
  UDB116SVT24_OAI21_0P75 U1486 ( .A1(n1954), .A2(n1141), .B(n1126), .X(n1127)
         );
  UDB116SVT24_INV_0P75 U1487 ( .A(n1127), .X(n1999) );
  UDB116SVT24_AOI22_1 U1488 ( .A1(n1951), .A2(\pkt_reg_inst/pkt_reg [3]), .B1(
        n1202), .B2(\pkt_reg_inst/pkt_reg [11]), .X(n1128) );
  UDB116SVT24_INV_0P75 U1489 ( .A(n1133), .X(n1933) );
  UDB116SVT24_INV_0P75 U1490 ( .A(SHIFT_OUT[41]), .X(n1356) );
  UDB116SVT24_BUF_1 U1491 ( .A(n1129), .X(n1930) );
  UDB116SVT24_BUF_1 U1492 ( .A(n1195), .X(n1134) );
  UDB116SVT24_AOI22_1 U1493 ( .A1(n1930), .A2(\pkt_reg_inst/pkt_reg [33]), 
        .B1(n1134), .B2(\pkt_reg_inst/pkt_reg [41]), .X(n1130) );
  UDB116SVT24_INV_0P75 U1494 ( .A(SHIFT_OUT[42]), .X(n1328) );
  UDB116SVT24_AOI22_1 U1495 ( .A1(n1930), .A2(\pkt_reg_inst/pkt_reg [34]), 
        .B1(n1134), .B2(\pkt_reg_inst/pkt_reg [42]), .X(n1131) );
  UDB116SVT24_INV_0P75 U1496 ( .A(SHIFT_OUT[43]), .X(n1327) );
  UDB116SVT24_AOI22_1 U1497 ( .A1(n1930), .A2(\pkt_reg_inst/pkt_reg [35]), 
        .B1(n1134), .B2(\pkt_reg_inst/pkt_reg [43]), .X(n1132) );
  UDB116SVT24_INV_0P75 U1498 ( .A(n1133), .X(n1928) );
  UDB116SVT24_INV_0P75 U1499 ( .A(SHIFT_OUT[44]), .X(n1333) );
  UDB116SVT24_BUF_1 U1500 ( .A(n1908), .X(n1925) );
  UDB116SVT24_AOI22_1 U1501 ( .A1(n1925), .A2(\pkt_reg_inst/pkt_reg [36]), 
        .B1(n1134), .B2(\pkt_reg_inst/pkt_reg [44]), .X(n1135) );
  UDB116SVT24_INV_0P75 U1502 ( .A(n1907), .X(n1906) );
  UDB116SVT24_INV_0P75 U1503 ( .A(SHIFT_OUT[55]), .X(n1324) );
  UDB116SVT24_BUF_1 U1504 ( .A(n1908), .X(n1903) );
  UDB116SVT24_AOI22_1 U1505 ( .A1(n1903), .A2(\pkt_reg_inst/pkt_reg [47]), 
        .B1(\pkt_reg_inst/pkt_reg [55]), .B2(n1138), .X(n1136) );
  UDB116SVT24_INV_0P75 U1506 ( .A(n1144), .X(n1196) );
  UDB116SVT24_INV_0P75 U1507 ( .A(SHIFT_OUT[6]), .X(n1371) );
  UDB116SVT24_AO2BB2_0P75 U1508 ( .A1(n1196), .A2(n1371), .B1(n1138), .B2(
        \pkt_reg_inst/pkt_reg [6]), .X(n1137) );
  UDB116SVT24_INV_0P75 U1509 ( .A(n1137), .X(n2000) );
  UDB116SVT24_AO2BB2_0P75 U1510 ( .A1(n1196), .A2(n1370), .B1(n1138), .B2(
        \pkt_reg_inst/pkt_reg [7]), .X(n1139) );
  UDB116SVT24_INV_0P75 U1511 ( .A(n1139), .X(n2001) );
  UDB116SVT24_INV_0P75 U1512 ( .A(SHIFT_OUT[9]), .X(n1949) );
  UDB116SVT24_OAI22_0P75 U1513 ( .A1(n1364), .A2(n1953), .B1(n1142), .B2(n1949), .X(n1140) );
  UDB116SVT24_INV_0P75 U1514 ( .A(n1140), .X(n2002) );
  UDB116SVT24_OAI22_0P75 U1515 ( .A1(n1364), .A2(n1949), .B1(n1142), .B2(n1141), .X(n1143) );
  UDB116SVT24_INV_0P75 U1516 ( .A(n1143), .X(n2003) );
  UDB116SVT24_INV_0P75 U1517 ( .A(n1144), .X(n1201) );
  UDB116SVT24_INV_0P75 U1518 ( .A(SHIFT_OUT[1]), .X(n1374) );
  UDB116SVT24_AO2BB2_0P75 U1519 ( .A1(n1201), .A2(n1374), .B1(n1195), .B2(
        \pkt_reg_inst/pkt_reg [1]), .X(n1145) );
  UDB116SVT24_INV_0P75 U1520 ( .A(n1145), .X(n2004) );
  UDB116SVT24_INV_0P75 U1521 ( .A(TX_LD), .X(n1146) );
  UDB116SVT24_ND3_0P75 U1522 ( .A1(TX_EN), .A2(n1175), .A3(n1146), .X(n1161)
         );
  UDB116SVT24_INV_0P75 U1523 ( .A(\tx_buf_inst/buffer [0]), .X(n1148) );
  UDB116SVT24_AOI22_1 U1524 ( .A1(n941), .A2(\tx_buf_inst/buffer [1]), .B1(
        n945), .B2(SPI_OUT[1]), .X(n1147) );
  UDB116SVT24_INV_0P75 U1525 ( .A(\tx_buf_inst/buffer [1]), .X(n1150) );
  UDB116SVT24_AOI22_1 U1526 ( .A1(n942), .A2(\tx_buf_inst/buffer [2]), .B1(
        n946), .B2(SPI_OUT[2]), .X(n1149) );
  UDB116SVT24_INV_0P75 U1527 ( .A(\tx_buf_inst/buffer [2]), .X(n1152) );
  UDB116SVT24_AOI22_1 U1528 ( .A1(n941), .A2(\tx_buf_inst/buffer [3]), .B1(
        n945), .B2(SPI_OUT[3]), .X(n1151) );
  UDB116SVT24_INV_0P75 U1529 ( .A(\tx_buf_inst/buffer [3]), .X(n1154) );
  UDB116SVT24_AOI22_1 U1530 ( .A1(n942), .A2(\tx_buf_inst/buffer [4]), .B1(
        n946), .B2(SPI_OUT[4]), .X(n1153) );
  UDB116SVT24_INV_0P75 U1531 ( .A(\tx_buf_inst/buffer [4]), .X(n1156) );
  UDB116SVT24_AOI22_1 U1532 ( .A1(n941), .A2(\tx_buf_inst/buffer [5]), .B1(
        n945), .B2(SPI_OUT[5]), .X(n1155) );
  UDB116SVT24_INV_0P75 U1533 ( .A(\tx_buf_inst/buffer [5]), .X(n1158) );
  UDB116SVT24_AOI22_1 U1534 ( .A1(n942), .A2(\tx_buf_inst/buffer [6]), .B1(
        n946), .B2(SPI_OUT[6]), .X(n1157) );
  UDB116SVT24_INV_0P75 U1535 ( .A(\tx_buf_inst/buffer [6]), .X(n1160) );
  UDB116SVT24_AOI22_1 U1536 ( .A1(n941), .A2(\tx_buf_inst/buffer [7]), .B1(
        n945), .B2(SPI_OUT[7]), .X(n1159) );
  UDB116SVT24_AO2BB2_0P75 U1537 ( .A1(n1196), .A2(n1167), .B1(n1165), .B2(
        \pkt_reg_inst/pkt_reg [4]), .X(n1162) );
  UDB116SVT24_INV_0P75 U1538 ( .A(n1162), .X(n2005) );
  UDB116SVT24_INV_0P75 U1539 ( .A(SHIFT_OUT[2]), .X(n1317) );
  UDB116SVT24_AO2BB2_0P75 U1540 ( .A1(n1201), .A2(n1317), .B1(n1165), .B2(
        \pkt_reg_inst/pkt_reg [2]), .X(n1166) );
  UDB116SVT24_INV_0P75 U1541 ( .A(n1166), .X(n2006) );
  UDB116SVT24_INV_0P75 U1542 ( .A(SHIFT_OUT[5]), .X(n1372) );
  UDB116SVT24_ND3_0P75 U1543 ( .A1(\shift_buf_inst/sync3 [2]), .A2(
        \shift_buf_inst/sync1 [0]), .A3(\shift_buf_inst/sync1 [3]), .X(n1172)
         );
  UDB116SVT24_ND4_0P75 U1544 ( .A1(\shift_buf_inst/sync2 [2]), .A2(
        \shift_buf_inst/sync2 [3]), .A3(\shift_buf_inst/sync3 [4]), .A4(
        \shift_buf_inst/sync3 [1]), .X(n1171) );
  UDB116SVT24_ND4_0P75 U1545 ( .A1(\shift_buf_inst/sync1 [2]), .A2(
        \shift_buf_inst/sync3 [3]), .A3(\shift_buf_inst/sync1 [4]), .A4(
        \shift_buf_inst/sync1 [1]), .X(n1170) );
  UDB116SVT24_ND4_0P75 U1546 ( .A1(\shift_buf_inst/sync2 [4]), .A2(
        \shift_buf_inst/sync2 [1]), .A3(\shift_buf_inst/sync2 [0]), .A4(
        \shift_buf_inst/sync3 [0]), .X(n1169) );
  UDB116SVT24_NR2_0P75 U1547 ( .A1(n986), .A2(\sh_sync_inst/n226 ), .X(
        \sh_sync_inst/N530 ) );
  UDB116SVT24_INV_0P75 U1548 ( .A(\sh_sync_inst/rfin_edge ), .X(n1378) );
  UDB116SVT24_ND2_MM_0P75 U1549 ( .A1(\sh_sync_inst/N530 ), .A2(
        \sh_sync_inst/n225 ), .X(n1174) );
  UDB116SVT24_BUF_1 U1550 ( .A(n1208), .X(n2008) );
  UDB116SVT24_BUF_1 U1551 ( .A(n1208), .X(n2009) );
  UDB116SVT24_BUF_1 U1552 ( .A(n1281), .X(n2010) );
  UDB116SVT24_BUF_1 U1553 ( .A(n1255), .X(n2011) );
  UDB116SVT24_BUF_1 U1554 ( .A(n1208), .X(n2007) );
  UDB116SVT24_NR2_0P75 U1555 ( .A1(n986), .A2(\sh_sync_inst/n227 ), .X(
        \sh_sync_inst/N529 ) );
  UDB116SVT24_ND3_0P75 U1556 ( .A1(TX_EN), .A2(\tx_buf_inst/buffer [7]), .A3(
        n1175), .X(n845) );
  UDB116SVT24_INV_0P75 U1557 ( .A(pkt_rec), .X(n1178) );
  UDB116SVT24_INV_0P75 U1558 ( .A(pkt_rec_prev), .X(n1261) );
  UDB116SVT24_AOI22_1 U1559 ( .A1(n930), .A2(n1178), .B1(n1261), .B2(n1023), 
        .X(n824) );
  UDB116SVT24_INV_0P75 U1560 ( .A(TX_SH), .X(n1176) );
  UDB116SVT24_NR2_0P75 U1561 ( .A1(n987), .A2(n1176), .X(\sh_sync_inst/N535 )
         );
  UDB116SVT24_INV_0P75 U1562 ( .A(tx_state[1]), .X(n1191) );
  UDB116SVT24_INV_0P75 U1563 ( .A(tx_state[0]), .X(n1192) );
  UDB116SVT24_ND2_MM_0P75 U1564 ( .A1(n1021), .A2(n1192), .X(n1198) );
  UDB116SVT24_AOI22_1 U1565 ( .A1(n1022), .A2(n1191), .B1(n1198), .B2(n1176), 
        .X(n831) );
  UDB116SVT24_NR2_0P75 U1566 ( .A1(rx_state[2]), .A2(n1021), .X(n1976) );
  UDB116SVT24_AOI21_0P75 U1567 ( .A1(rx_state[1]), .A2(n1976), .B(PKT_RST), 
        .X(n1177) );
  UDB116SVT24_AOI21_0P75 U1568 ( .A1(n1976), .A2(rx_state[0]), .B(n1177), .X(
        n835) );
  UDB116SVT24_ND3_0P75 U1569 ( .A1(n989), .A2(tx_state[0]), .A3(n1191), .X(
        n1187) );
  UDB116SVT24_OAI21_0P75 U1570 ( .A1(n1191), .A2(n1192), .B(n1023), .X(n1975)
         );
  UDB116SVT24_AO2BB2_0P75 U1571 ( .A1(n931), .A2(n1187), .B1(TX_LD), .B2(n1975), .X(n832) );
  UDB116SVT24_NR2_0P75 U1572 ( .A1(pkt_rec_prev), .A2(n1178), .X(n1179) );
  UDB116SVT24_AOAI211_0P75 U1573 ( .A1(n1179), .A2(n865), .B(n866), .C(n1976), 
        .X(n1180) );
  UDB116SVT24_ND3_0P75 U1574 ( .A1(rx_state[0]), .A2(n970), .A3(n864), .X(
        n1260) );
  UDB116SVT24_AO2BB2_0P75 U1575 ( .A1(n1180), .A2(n1260), .B1(n1180), .B2(n852), .X(n839) );
  UDB116SVT24_AOI22_1 U1576 ( .A1(n1182), .A2(SHIFT_OUT[3]), .B1(n1181), .B2(
        \pkt_reg_inst/pkt_reg [3]), .X(\pkt_reg_inst/n109 ) );
  UDB116SVT24_AOAI211_0P75 U1577 ( .A1(n865), .A2(CS), .B(n971), .C(n866), .X(
        n1263) );
  UDB116SVT24_AO21_0P75 U1578 ( .A1(n1260), .A2(n1263), .B(n1021), .X(n1183)
         );
  UDB116SVT24_AO2BB2_0P75 U1579 ( .A1(n1183), .A2(n896), .B1(n1183), .B2(
        PKT_EN), .X(n838) );
  UDB116SVT24_OAI21_0P75 U1580 ( .A1(rx_state[0]), .A2(n988), .B(n897), .X(
        n1184) );
  UDB116SVT24_ND3_0P75 U1581 ( .A1(n931), .A2(n864), .A3(n1184), .X(n1961) );
  UDB116SVT24_NR3_0P75 U1582 ( .A1(counter[0]), .A2(n970), .A3(n1961), .X(
        n1684) );
  UDB116SVT24_INV_0P75 U1583 ( .A(counter[1]), .X(n1968) );
  UDB116SVT24_ND2_MM_0P75 U1584 ( .A1(n1684), .A2(n1968), .X(n1967) );
  UDB116SVT24_INV_0P75 U1585 ( .A(counter[2]), .X(n1185) );
  UDB116SVT24_AOI21_0P75 U1586 ( .A1(n897), .A2(counter[0]), .B(n1961), .X(
        n1969) );
  UDB116SVT24_OAI21_0P75 U1587 ( .A1(n971), .A2(n1968), .B(n1969), .X(n1959)
         );
  UDB116SVT24_OA2BB2_0P75 U1588 ( .A1(n1967), .A2(n1185), .B1(n1185), .B2(
        n1959), .X(n837) );
  UDB116SVT24_AOI22_1 U1589 ( .A1(SHIFT_OUT[5]), .A2(n1186), .B1(SHIFT_OUT[4]), 
        .B2(n2013), .X(\shift_buf_inst/n138 ) );
  UDB116SVT24_INV_0P75 U1590 ( .A(counter3[0]), .X(n1200) );
  UDB116SVT24_ND4B_1 U1591 ( .A(counter3[1]), .B1(n868), .B2(n1200), .B3(
        counter3[3]), .X(n1197) );
  UDB116SVT24_OA31_1 U1592 ( .A1(n1197), .A2(n863), .A3(tx_state[0]), .B(n1022), .X(n1188) );
  UDB116SVT24_OAI211_0P75 U1593 ( .A1(n989), .A2(tx_state[0]), .B1(n1188), 
        .B2(n1187), .X(n1193) );
  UDB116SVT24_INV_0P75 U1594 ( .A(n1193), .X(n1190) );
  UDB116SVT24_ND2_MM_0P75 U1595 ( .A1(tx_state[1]), .A2(n1188), .X(n1189) );
  UDB116SVT24_OAI31_1 U1596 ( .A1(n930), .A2(n1190), .A3(n1192), .B(n1189), 
        .X(n833) );
  UDB116SVT24_ND2_MM_0P75 U1597 ( .A1(n1193), .A2(n1191), .X(n1194) );
  UDB116SVT24_OAI22_0P75 U1598 ( .A1(n1194), .A2(n1198), .B1(n1193), .B2(n1192), .X(n834) );
  UDB116SVT24_BUF_1 U1599 ( .A(n1195), .X(n1902) );
  UDB116SVT24_BUF_1 U1600 ( .A(n1902), .X(n1929) );
  UDB116SVT24_AO2BB2_0P75 U1601 ( .A1(n1196), .A2(n1372), .B1(n1929), .B2(
        \pkt_reg_inst/pkt_reg [5]), .X(\pkt_reg_inst/n98 ) );
  UDB116SVT24_BUF_1 U1602 ( .A(n1329), .X(sh_en) );
  UDB116SVT24_ND2_MM_0P75 U1603 ( .A1(n1197), .A2(tx_state[1]), .X(n1199) );
  UDB116SVT24_INV_0P75 U1604 ( .A(sh_en), .X(n1326) );
  UDB116SVT24_NR2_0P75 U1605 ( .A1(n1199), .A2(n1326), .X(n1257) );
  UDB116SVT24_INV_0P75 U1606 ( .A(n1257), .X(n1974) );
  UDB116SVT24_NR2_0P75 U1607 ( .A1(counter3[0]), .A2(n1974), .X(n1970) );
  UDB116SVT24_NR2_0P75 U1608 ( .A1(n986), .A2(n1198), .X(n1971) );
  UDB116SVT24_OAI21_0P75 U1609 ( .A1(sh_en), .A2(n1199), .B(n1971), .X(n1972)
         );
  UDB116SVT24_NR2_0P75 U1610 ( .A1(n1970), .A2(n1972), .X(n1204) );
  UDB116SVT24_NR3_0P75 U1611 ( .A1(n1200), .A2(n1974), .A3(n1972), .X(n1203)
         );
  UDB116SVT24_OA2BB2_0P75 U1612 ( .A1(n995), .A2(n1204), .B1(n1203), .B2(n995), 
        .X(n829) );
  UDB116SVT24_AO2BB2_0P75 U1613 ( .A1(n1201), .A2(n2043), .B1(n1929), .B2(
        \pkt_reg_inst/pkt_reg [0]), .X(\pkt_reg_inst/n103 ) );
  UDB116SVT24_BUF_1 U1614 ( .A(n1202), .X(n1950) );
  UDB116SVT24_AOI22_1 U1615 ( .A1(\pkt_reg_inst/pkt_reg [62]), .A2(n1005), 
        .B1(SPI_IN[6]), .B2(n944), .X(\pkt_reg_inst/n108 ) );
  UDB116SVT24_ND2_MM_0P75 U1616 ( .A1(counter3[1]), .A2(n1203), .X(n1259) );
  UDB116SVT24_OAI21_0P75 U1617 ( .A1(counter3[1]), .A2(n1974), .B(n1204), .X(
        n1256) );
  UDB116SVT24_OA2BB2_0P75 U1618 ( .A1(n1259), .A2(n868), .B1(n868), .B2(n1256), 
        .X(n828) );
  UDB116SVT24_NR2_0P75 U1619 ( .A1(\sh_sync_inst/n214 ), .A2(
        \sh_sync_inst/n215 ), .X(n1339) );
  UDB116SVT24_INV_0P75 U1620 ( .A(\sh_sync_inst/n220 ), .X(n1309) );
  UDB116SVT24_INV_0P75 U1621 ( .A(\sh_sync_inst/n219 ), .X(n1313) );
  UDB116SVT24_ND2_MM_0P75 U1622 ( .A1(n1309), .A2(n1313), .X(n1205) );
  UDB116SVT24_AOAI211_0P75 U1623 ( .A1(\sh_sync_inst/n218 ), .A2(n1205), .B(
        \sh_sync_inst/n217 ), .C(\sh_sync_inst/n216 ), .X(n1206) );
  UDB116SVT24_INV_0P75 U1624 ( .A(\sh_sync_inst/n213 ), .X(n1855) );
  UDB116SVT24_AOI21_0P75 U1625 ( .A1(n1339), .A2(n1206), .B(n1855), .X(n1207)
         );
  UDB116SVT24_NR3_0P75 U1626 ( .A1(\sh_sync_inst/n212 ), .A2(n1207), .A3(
        \sh_sync_inst/n211 ), .X(n1275) );
  UDB116SVT24_INV_0P75 U1627 ( .A(\sh_sync_inst/n228 ), .X(n1280) );
  UDB116SVT24_INV_0P75 U1628 ( .A(\sh_sync_inst/n205 ), .X(n1282) );
  UDB116SVT24_ND2_MM_0P75 U1629 ( .A1(\sh_sync_inst/n244 ), .A2(n1282), .X(
        n1380) );
  UDB116SVT24_NR2_0P75 U1630 ( .A1(n1280), .A2(n1380), .X(n1682) );
  UDB116SVT24_BUF_1 U1631 ( .A(n1208), .X(n1556) );
  UDB116SVT24_ND2_MM_0P75 U1632 ( .A1(n1682), .A2(n1556), .X(n1879) );
  UDB116SVT24_NR2_0P75 U1633 ( .A1(n984), .A2(n1682), .X(n1311) );
  UDB116SVT24_AOI21_0P75 U1634 ( .A1(n910), .A2(n975), .B(n1311), .X(n1212) );
  UDB116SVT24_ND2_MM_0P75 U1635 ( .A1(n974), .A2(\sh_sync_inst/n223 ), .X(
        n1211) );
  UDB116SVT24_NR2_0P75 U1636 ( .A1(n910), .A2(\sh_sync_inst/n223 ), .X(n1209)
         );
  UDB116SVT24_ND3_0P75 U1637 ( .A1(n974), .A2(\sh_sync_inst/n222 ), .A3(n1209), 
        .X(n1210) );
  UDB116SVT24_AOAI211_0P75 U1638 ( .A1(n1212), .A2(n1211), .B(
        \sh_sync_inst/n222 ), .C(n1210), .X(\sh_sync_inst/n352 ) );
  UDB116SVT24_OAI22_0P75 U1639 ( .A1(\sh_sync_inst/n223 ), .A2(n1212), .B1(
        \sh_sync_inst/n224 ), .B2(n1211), .X(\sh_sync_inst/n353 ) );
  UDB116SVT24_INV_0P75 U1640 ( .A(\sh_sync_inst/n179 ), .X(n1243) );
  UDB116SVT24_INV_0P75 U1641 ( .A(n952), .X(n1820) );
  UDB116SVT24_INV_0P75 U1642 ( .A(n969), .X(n1242) );
  UDB116SVT24_INV_0P75 U1643 ( .A(\sh_sync_inst/n181 ), .X(n1245) );
  UDB116SVT24_AOI2222_V2_0P75 U1644 ( .A1(n1243), .A2(n968), .B1(
        \sh_sync_inst/n181 ), .B2(n1820), .C1(n1242), .C2(\sh_sync_inst/n179 ), 
        .D1(n952), .D2(n1245), .X(n1218) );
  UDB116SVT24_INV_0P75 U1645 ( .A(\sh_sync_inst/n186 ), .X(n1231) );
  UDB116SVT24_INV_0P75 U1646 ( .A(\sh_sync_inst/n188 ), .X(n1230) );
  UDB116SVT24_AOI2222_V2_0P75 U1647 ( .A1(n1231), .A2(
        \sh_sync_inst/intadd_0/B[7] ), .B1(\sh_sync_inst/n188 ), .B2(n921), 
        .C1(n940), .C2(\sh_sync_inst/n186 ), .D1(\sh_sync_inst/intadd_0/B[9] ), 
        .D2(n1230), .X(n1217) );
  UDB116SVT24_INV_0P75 U1648 ( .A(\sh_sync_inst/n192 ), .X(n1238) );
  UDB116SVT24_AOI22_1 U1649 ( .A1(\sh_sync_inst/n192 ), .A2(
        \sh_sync_inst/intadd_0/B[13] ), .B1(n871), .B2(n1238), .X(n1214) );
  UDB116SVT24_OAI21_0P75 U1650 ( .A1(n922), .A2(\sh_sync_inst/n190 ), .B(
        \sh_sync_inst/n195 ), .X(n1213) );
  UDB116SVT24_AOI211_0P75 U1651 ( .A1(n915), .A2(\sh_sync_inst/n190 ), .B1(
        n1214), .B2(n1213), .X(n1216) );
  UDB116SVT24_INV_0P75 U1652 ( .A(\sh_sync_inst/n183 ), .X(n1244) );
  UDB116SVT24_INV_0P75 U1653 ( .A(n1008), .X(n1824) );
  UDB116SVT24_INV_0P75 U1654 ( .A(\sh_sync_inst/n187 ), .X(n1236) );
  UDB116SVT24_AOI2222_V2_0P75 U1655 ( .A1(n1244), .A2(n1007), .B1(
        \sh_sync_inst/n187 ), .B2(n872), .C1(n1824), .C2(\sh_sync_inst/n183 ), 
        .D1(n936), .D2(n1236), .X(n1215) );
  UDB116SVT24_ND4_0P75 U1656 ( .A1(n1218), .A2(n1217), .A3(n1216), .A4(n1215), 
        .X(n1253) );
  UDB116SVT24_INV_0P75 U1657 ( .A(\sh_sync_inst/n193 ), .X(n1219) );
  UDB116SVT24_INV_0P75 U1658 ( .A(n965), .X(n1384) );
  UDB116SVT24_INV_0P75 U1659 ( .A(\sh_sync_inst/n182 ), .X(n1226) );
  UDB116SVT24_AOI2222_V2_0P75 U1660 ( .A1(n1219), .A2(n938), .B1(
        \sh_sync_inst/n182 ), .B2(n1384), .C1(n937), .C2(\sh_sync_inst/n193 ), 
        .D1(n965), .D2(n1226), .X(n1223) );
  UDB116SVT24_INV_0P75 U1661 ( .A(\sh_sync_inst/n178 ), .X(n1227) );
  UDB116SVT24_INV_0P75 U1662 ( .A(n1017), .X(n1706) );
  UDB116SVT24_INV_0P75 U1663 ( .A(\sh_sync_inst/n180 ), .X(n1241) );
  UDB116SVT24_AOI2222_V2_0P75 U1664 ( .A1(n1227), .A2(n1017), .B1(
        \sh_sync_inst/n180 ), .B2(n873), .C1(n1706), .C2(\sh_sync_inst/n178 ), 
        .D1(n906), .D2(n1241), .X(n1222) );
  UDB116SVT24_INV_0P75 U1665 ( .A(\sh_sync_inst/n189 ), .X(n1240) );
  UDB116SVT24_INV_0P75 U1666 ( .A(n1019), .X(n1239) );
  UDB116SVT24_INV_0P75 U1667 ( .A(n958), .X(n1408) );
  UDB116SVT24_INV_0P75 U1668 ( .A(\sh_sync_inst/n191 ), .X(n1228) );
  UDB116SVT24_AOI2222_V2_0P75 U1669 ( .A1(n1240), .A2(n958), .B1(
        \sh_sync_inst/n191 ), .B2(n1239), .C1(n1408), .C2(\sh_sync_inst/n189 ), 
        .D1(n1020), .D2(n1228), .X(n1221) );
  UDB116SVT24_INV_0P75 U1670 ( .A(\sh_sync_inst/n184 ), .X(n1225) );
  UDB116SVT24_INV_0P75 U1671 ( .A(n1013), .X(n1265) );
  UDB116SVT24_INV_0P75 U1672 ( .A(\sh_sync_inst/n185 ), .X(n1224) );
  UDB116SVT24_AOI2222_V2_0P75 U1673 ( .A1(n1225), .A2(n955), .B1(
        \sh_sync_inst/n185 ), .B2(n1265), .C1(n953), .C2(\sh_sync_inst/n184 ), 
        .D1(n1014), .D2(n1224), .X(n1220) );
  UDB116SVT24_ND4_0P75 U1674 ( .A1(n1223), .A2(n1222), .A3(n1221), .A4(n1220), 
        .X(n1252) );
  UDB116SVT24_AOI2222_V2_0P75 U1675 ( .A1(n1225), .A2(n1008), .B1(
        \sh_sync_inst/n185 ), .B2(n924), .C1(n1824), .C2(\sh_sync_inst/n184 ), 
        .D1(n954), .D2(n1224), .X(n1235) );
  UDB116SVT24_AOI2222_V2_0P75 U1676 ( .A1(n1227), .A2(n938), .B1(
        \sh_sync_inst/n182 ), .B2(n1820), .C1(n923), .C2(\sh_sync_inst/n178 ), 
        .D1(n951), .D2(n1226), .X(n1234) );
  UDB116SVT24_INV_0P75 U1677 ( .A(\sh_sync_inst/n190 ), .X(n1229) );
  UDB116SVT24_AOI2222_V2_0P75 U1678 ( .A1(n1229), .A2(n957), .B1(
        \sh_sync_inst/n191 ), .B2(n922), .C1(n1408), .C2(n855), .D1(
        \sh_sync_inst/intadd_0/B[11] ), .D2(n1228), .X(n1233) );
  UDB116SVT24_AOI2222_V2_0P75 U1679 ( .A1(n1231), .A2(n1014), .B1(
        \sh_sync_inst/n188 ), .B2(n872), .C1(n1265), .C2(\sh_sync_inst/n186 ), 
        .D1(n935), .D2(n1230), .X(n1232) );
  UDB116SVT24_ND4_0P75 U1680 ( .A1(n1235), .A2(n1234), .A3(n1233), .A4(n1232), 
        .X(n1251) );
  UDB116SVT24_AOI22_1 U1681 ( .A1(\sh_sync_inst/n187 ), .A2(
        \sh_sync_inst/intadd_0/B[7] ), .B1(n939), .B2(n1236), .X(n1237) );
  UDB116SVT24_NR3_0P75 U1682 ( .A1(\sh_sync_inst/n195 ), .A2(n1237), .A3(n870), 
        .X(n1249) );
  UDB116SVT24_AOI2222_V2_0P75 U1683 ( .A1(n1240), .A2(n908), .B1(
        \sh_sync_inst/n192 ), .B2(n1239), .C1(n921), .C2(\sh_sync_inst/n189 ), 
        .D1(n1020), .D2(n1238), .X(n1248) );
  UDB116SVT24_AOI2222_V2_0P75 U1684 ( .A1(n1243), .A2(n1016), .B1(
        \sh_sync_inst/n180 ), .B2(n1242), .C1(n1706), .C2(\sh_sync_inst/n179 ), 
        .D1(n968), .D2(n1241), .X(n1247) );
  UDB116SVT24_AOI2222_V2_0P75 U1685 ( .A1(n1245), .A2(n906), .B1(
        \sh_sync_inst/n183 ), .B2(n1384), .C1(n873), .C2(\sh_sync_inst/n181 ), 
        .D1(\sh_sync_inst/intadd_0/B[3] ), .D2(n1244), .X(n1246) );
  UDB116SVT24_ND4_0P75 U1686 ( .A1(n1249), .A2(n1248), .A3(n1247), .A4(n1246), 
        .X(n1250) );
  UDB116SVT24_OAI22_0P75 U1687 ( .A1(n1253), .A2(n1252), .B1(n1251), .B2(n1250), .X(n1390) );
  UDB116SVT24_NR2_0P75 U1688 ( .A1(n857), .A2(n1380), .X(n1389) );
  UDB116SVT24_INV_0P75 U1689 ( .A(n1389), .X(n1870) );
  UDB116SVT24_NR2B_0P75 U1690 ( .A(n1390), .B(n1870), .X(n1269) );
  UDB116SVT24_INV_0P75 U1691 ( .A(\sh_sync_inst/n232 ), .X(n1689) );
  UDB116SVT24_INV_0P75 U1692 ( .A(\sh_sync_inst/n230 ), .X(n1403) );
  UDB116SVT24_NR2_0P75 U1693 ( .A1(n1689), .A2(n1403), .X(n1254) );
  UDB116SVT24_ND4_0P75 U1694 ( .A1(\sh_sync_inst/n231 ), .A2(
        \sh_sync_inst/n233 ), .A3(\sh_sync_inst/n234 ), .A4(n1254), .X(n1279)
         );
  UDB116SVT24_NR2B_0P75 U1695 ( .A(n1279), .B(\sh_sync_inst/n229 ), .X(n1392)
         );
  UDB116SVT24_INV_0P75 U1696 ( .A(n1392), .X(n1270) );
  UDB116SVT24_ND2_MM_0P75 U1697 ( .A1(\sh_sync_inst/n228 ), .A2(
        \sh_sync_inst/n205 ), .X(n1869) );
  UDB116SVT24_BUF_1 U1698 ( .A(n1255), .X(n1874) );
  UDB116SVT24_OAI21_0P75 U1699 ( .A1(n903), .A2(n1869), .B(n1874), .X(n1388)
         );
  UDB116SVT24_INV_0P75 U1700 ( .A(n1388), .X(n1286) );
  UDB116SVT24_AOAI211_0P75 U1701 ( .A1(n1269), .A2(n1270), .B(
        \sh_sync_inst/n195 ), .C(n1286), .X(\sh_sync_inst/n355 ) );
  UDB116SVT24_OA2BB2_0P75 U1702 ( .A1(n910), .A2(n1861), .B1(n1311), .B2(n910), 
        .X(\sh_sync_inst/n354 ) );
  UDB116SVT24_AOI31_0P75 U1703 ( .A1(\sh_sync_inst/n228 ), .A2(n904), .A3(
        \sh_sync_inst/rfin_edge ), .B(n1388), .X(n1285) );
  UDB116SVT24_AOI21_0P75 U1704 ( .A1(\sh_sync_inst/n203 ), .A2(n926), .B(n1285), .X(n1294) );
  UDB116SVT24_NR3_0P75 U1705 ( .A1(\sh_sync_inst/n203 ), .A2(n1285), .A3(n982), 
        .X(n1293) );
  UDB116SVT24_OA2BB2_0P75 U1706 ( .A1(n1294), .A2(n874), .B1(n875), .B2(n1293), 
        .X(\sh_sync_inst/n304 ) );
  UDB116SVT24_AOAI211_0P75 U1707 ( .A1(n1257), .A2(n869), .B(n1256), .C(
        counter3[3]), .X(n1258) );
  UDB116SVT24_OAI31_1 U1708 ( .A1(counter3[3]), .A2(n869), .A3(n1259), .B(
        n1258), .X(n827) );
  UDB116SVT24_AOI21_0P75 U1709 ( .A1(n1285), .A2(\sh_sync_inst/n203 ), .B(
        n1294), .X(\sh_sync_inst/n307 ) );
  UDB116SVT24_INV_0P75 U1710 ( .A(n1260), .X(n1957) );
  UDB116SVT24_ND3_0P75 U1711 ( .A1(n1261), .A2(pkt_rec), .A3(n1957), .X(n1979)
         );
  UDB116SVT24_NR4_0P75 U1712 ( .A1(counter[1]), .A2(counter[0]), .A3(
        counter[2]), .A4(counter[3]), .X(n1958) );
  UDB116SVT24_OAI211_0P75 U1713 ( .A1(n988), .A2(n1958), .B1(n971), .B2(
        rx_state[1]), .X(n1262) );
  UDB116SVT24_AOI31_0P75 U1714 ( .A1(n1263), .A2(n1979), .A3(n1262), .B(n1023), 
        .X(n1316) );
  UDB116SVT24_AOAI211_0P75 U1715 ( .A1(rx_state[1]), .A2(n1958), .B(n867), .C(
        n896), .X(n1264) );
  UDB116SVT24_INV_0P75 U1716 ( .A(n1316), .X(n1966) );
  UDB116SVT24_AOI22_1 U1717 ( .A1(n1316), .A2(n1264), .B1(n866), .B2(n1966), 
        .X(n840) );
  UDB116SVT24_NR2_0P75 U1718 ( .A1(n968), .A2(n1017), .X(n1694) );
  UDB116SVT24_ND3_0P75 U1719 ( .A1(n1694), .A2(n873), .A3(n937), .X(n1819) );
  UDB116SVT24_ND4_0P75 U1720 ( .A1(\sh_sync_inst/intadd_0/B[13] ), .A2(n954), 
        .A3(n966), .A4(n1265), .X(n1268) );
  UDB116SVT24_ND4_0P75 U1721 ( .A1(n957), .A2(n1019), .A3(
        \sh_sync_inst/intadd_0/B[9] ), .A4(n940), .X(n1267) );
  UDB116SVT24_ND4_0P75 U1722 ( .A1(n1007), .A2(n952), .A3(n922), .A4(n872), 
        .X(n1266) );
  UDB116SVT24_NR4_0P75 U1723 ( .A1(n1819), .A2(n1268), .A3(n1267), .A4(n1266), 
        .X(n1376) );
  UDB116SVT24_NR3_0P75 U1724 ( .A1(\sh_sync_inst/n205 ), .A2(n904), .A3(n1280), 
        .X(n1290) );
  UDB116SVT24_AOI21_0P75 U1725 ( .A1(n1376), .A2(n1290), .B(n1269), .X(n1274)
         );
  UDB116SVT24_AOI31_0P75 U1726 ( .A1(n1280), .A2(n1282), .A3(n1270), .B(n903), 
        .X(n1271) );
  UDB116SVT24_ND2_MM_0P75 U1727 ( .A1(n1271), .A2(n1869), .X(n1273) );
  UDB116SVT24_OAI21_0P75 U1728 ( .A1(sh_en), .A2(n1273), .B(n1874), .X(n1272)
         );
  UDB116SVT24_AOI21_0P75 U1729 ( .A1(n1274), .A2(n1273), .B(n1272), .X(
        \sh_sync_inst/n338 ) );
  UDB116SVT24_NR2_0P75 U1730 ( .A1(n1282), .A2(n903), .X(n1450) );
  UDB116SVT24_INV_0P75 U1731 ( .A(\sh_sync_inst/n206 ), .X(n1732) );
  UDB116SVT24_AN3B_0P75 U1732 ( .B1(\sh_sync_inst/n207 ), .B2(
        \sh_sync_inst/n203 ), .A(n874), .X(n1287) );
  UDB116SVT24_ND2_MM_0P75 U1733 ( .A1(n1732), .A2(n1287), .X(n1878) );
  UDB116SVT24_AN3B_0P75 U1734 ( .B1(n1878), .B2(n925), .A(n1275), .X(n1872) );
  UDB116SVT24_AOI31_0P75 U1735 ( .A1(n1450), .A2(\sh_sync_inst/N530 ), .A3(
        \sh_sync_inst/n225 ), .B(n1872), .X(n1284) );
  UDB116SVT24_ND2_MM_0P75 U1736 ( .A1(n1290), .A2(n1556), .X(n1375) );
  UDB116SVT24_INV_0P75 U1737 ( .A(n1375), .X(n1301) );
  UDB116SVT24_INV_0P75 U1738 ( .A(\sh_sync_inst/n248 ), .X(n1742) );
  UDB116SVT24_INV_0P75 U1739 ( .A(\sh_sync_inst/n246 ), .X(n1735) );
  UDB116SVT24_NR4_0P75 U1740 ( .A1(\sh_sync_inst/n247 ), .A2(
        \sh_sync_inst/n250 ), .A3(n1742), .A4(n1735), .X(n1276) );
  UDB116SVT24_ND4_0P75 U1741 ( .A1(n918), .A2(\sh_sync_inst/n245 ), .A3(
        \sh_sync_inst/n249 ), .A4(n1276), .X(n1278) );
  UDB116SVT24_NR2_0P75 U1742 ( .A1(\sh_sync_inst/n253 ), .A2(n1832), .X(n1277)
         );
  UDB116SVT24_AOI31_0P75 U1743 ( .A1(n1301), .A2(n1022), .A3(n1278), .B(n1277), 
        .X(n1875) );
  UDB116SVT24_NR3_0P75 U1744 ( .A1(\sh_sync_inst/n229 ), .A2(n914), .A3(n1279), 
        .X(n1871) );
  UDB116SVT24_ND2_MM_0P75 U1745 ( .A1(n1281), .A2(n1280), .X(n1379) );
  UDB116SVT24_OAOI211_0P75 U1746 ( .A1(n1871), .A2(n1022), .B(n1282), .C(n1379), .X(n1283) );
  UDB116SVT24_ND2_MM_0P75 U1747 ( .A1(\sh_sync_inst/n244 ), .A2(n1283), .X(
        n1877) );
  UDB116SVT24_OAI211_0P75 U1748 ( .A1(n1284), .A2(n1023), .B1(n1875), .B2(
        n1877), .X(\sh_sync_inst/N30 ) );
  UDB116SVT24_INV_0P75 U1749 ( .A(\sh_sync_inst/intadd_0/A[0] ), .X(n1666) );
  UDB116SVT24_INV_0P75 U1750 ( .A(\sh_sync_inst/n177 ), .X(n1307) );
  UDB116SVT24_ND2_MM_0P75 U1751 ( .A1(n1307), .A2(n923), .X(n1723) );
  UDB116SVT24_MAJ3_0P75 U1752 ( .A1(\sh_sync_inst/n176 ), .A2(n1016), .A3(
        n1723), .X(n1319) );
  UDB116SVT24_OA2BB2_0P75 U1753 ( .A1(n968), .A2(n1319), .B1(n1319), .B2(n969), 
        .X(n1289) );
  UDB116SVT24_AOI31_0P75 U1754 ( .A1(n1287), .A2(\sh_sync_inst/n206 ), .A3(
        n1286), .B(n1285), .X(n1726) );
  UDB116SVT24_INV_0P75 U1755 ( .A(n1726), .X(n1305) );
  UDB116SVT24_BUF_1 U1756 ( .A(n1305), .X(n1800) );
  UDB116SVT24_INV_0P75 U1757 ( .A(n1800), .X(n1416) );
  UDB116SVT24_INV_0P75 U1758 ( .A(n1305), .X(n1426) );
  UDB116SVT24_AOI21_0P75 U1759 ( .A1(n1426), .A2(n1289), .B(n1666), .X(n1288)
         );
  UDB116SVT24_AOAOI2111_0P75 U1760 ( .A1(n1666), .A2(n1289), .B(n980), .C(
        n1416), .D(n1288), .X(\sh_sync_inst/n301 ) );
  UDB116SVT24_AOI21_0P75 U1761 ( .A1(n1290), .A2(n1376), .B(n1388), .X(n1300)
         );
  UDB116SVT24_NR2_0P75 U1762 ( .A1(n1300), .A2(n1375), .X(n1738) );
  UDB116SVT24_INV_0P75 U1763 ( .A(n1738), .X(n1741) );
  UDB116SVT24_OA2BB2_0P75 U1764 ( .A1(n918), .A2(n1741), .B1(n849), .B2(n918), 
        .X(\sh_sync_inst/n337 ) );
  UDB116SVT24_NR2_0P75 U1765 ( .A1(\sh_sync_inst/n251 ), .A2(
        \sh_sync_inst/n245 ), .X(n1299) );
  UDB116SVT24_INV_0P75 U1766 ( .A(\sh_sync_inst/n247 ), .X(n1304) );
  UDB116SVT24_ND3_0P75 U1767 ( .A1(n1299), .A2(n1735), .A3(n1304), .X(n1740)
         );
  UDB116SVT24_NR2_0P75 U1768 ( .A1(\sh_sync_inst/n248 ), .A2(n1740), .X(n1295)
         );
  UDB116SVT24_INV_0P75 U1769 ( .A(n1295), .X(n1291) );
  UDB116SVT24_AOI21_0P75 U1770 ( .A1(n1291), .A2(n1301), .B(n1300), .X(n1296)
         );
  UDB116SVT24_ND2_MM_0P75 U1771 ( .A1(n1006), .A2(\sh_sync_inst/n249 ), .X(
        n1292) );
  UDB116SVT24_OAI22_0P75 U1772 ( .A1(n853), .A2(n1296), .B1(n1292), .B2(n1291), 
        .X(\sh_sync_inst/n335 ) );
  UDB116SVT24_ND2_MM_0P75 U1773 ( .A1(n1293), .A2(n874), .X(n1731) );
  UDB116SVT24_OAI21_0P75 U1774 ( .A1(n875), .A2(n982), .B(n1294), .X(n1728) );
  UDB116SVT24_OA2BB2_0P75 U1775 ( .A1(n994), .A2(n1731), .B1(n1728), .B2(
        \sh_sync_inst/n207 ), .X(\sh_sync_inst/n305 ) );
  UDB116SVT24_AOI21_0P75 U1776 ( .A1(n918), .A2(n1738), .B(n849), .X(n1736) );
  UDB116SVT24_ND2_MM_0P75 U1777 ( .A1(\sh_sync_inst/n245 ), .A2(n1738), .X(
        n1734) );
  UDB116SVT24_OAI22_0P75 U1778 ( .A1(\sh_sync_inst/n245 ), .A2(n1736), .B1(
        \sh_sync_inst/n251 ), .B2(n1734), .X(\sh_sync_inst/n331 ) );
  UDB116SVT24_NR3_0P75 U1779 ( .A1(\sh_sync_inst/n222 ), .A2(
        \sh_sync_inst/n224 ), .A3(\sh_sync_inst/n223 ), .X(n1867) );
  UDB116SVT24_INV_0P75 U1780 ( .A(\sh_sync_inst/n221 ), .X(n1865) );
  UDB116SVT24_ND2_MM_0P75 U1781 ( .A1(n1867), .A2(n1865), .X(n1312) );
  UDB116SVT24_NR4_0P75 U1782 ( .A1(\sh_sync_inst/n220 ), .A2(n854), .A3(
        \sh_sync_inst/n218 ), .A4(n1312), .X(n1687) );
  UDB116SVT24_INV_0P75 U1783 ( .A(\sh_sync_inst/n217 ), .X(n1686) );
  UDB116SVT24_ND2_MM_0P75 U1784 ( .A1(n1687), .A2(n1686), .X(n1844) );
  UDB116SVT24_NR2_0P75 U1785 ( .A1(\sh_sync_inst/n216 ), .A2(n1844), .X(n1340)
         );
  UDB116SVT24_ND2_MM_0P75 U1786 ( .A1(n975), .A2(n1340), .X(n1858) );
  UDB116SVT24_OAI21_0P75 U1787 ( .A1(n1340), .A2(n972), .B(n876), .X(n1856) );
  UDB116SVT24_OA2BB2_0P75 U1788 ( .A1(n1001), .A2(n1858), .B1(n1856), .B2(
        n1001), .X(\sh_sync_inst/n345 ) );
  UDB116SVT24_ND3_0P75 U1789 ( .A1(n1006), .A2(\sh_sync_inst/n250 ), .A3(n1295), .X(n1298) );
  UDB116SVT24_AOI21B_0P75 U1790 ( .A1(n1006), .A2(\sh_sync_inst/n249 ), .B(
        n1296), .X(n1297) );
  UDB116SVT24_OAI22_0P75 U1791 ( .A1(n853), .A2(n1298), .B1(
        \sh_sync_inst/n250 ), .B2(n1297), .X(\sh_sync_inst/n336 ) );
  UDB116SVT24_ND2_MM_0P75 U1792 ( .A1(n1738), .A2(n1299), .X(n1733) );
  UDB116SVT24_ND2_MM_0P75 U1793 ( .A1(n1735), .A2(n1299), .X(n1302) );
  UDB116SVT24_AO21_0P75 U1794 ( .A1(n1302), .A2(n1301), .B(n1300), .X(n1737)
         );
  UDB116SVT24_ND2_MM_0P75 U1795 ( .A1(n1304), .A2(n1737), .X(n1303) );
  UDB116SVT24_OAI31_1 U1796 ( .A1(n1304), .A2(n1733), .A3(\sh_sync_inst/n246 ), 
        .B(n1303), .X(\sh_sync_inst/n333 ) );
  UDB116SVT24_INV_0P75 U1797 ( .A(n1305), .X(n1446) );
  UDB116SVT24_BUF_1 U1798 ( .A(n1305), .X(n1444) );
  UDB116SVT24_INV_0P75 U1799 ( .A(n1444), .X(n1430) );
  UDB116SVT24_AOI21_0P75 U1800 ( .A1(n1430), .A2(n923), .B(n1307), .X(n1306)
         );
  UDB116SVT24_AOAOI2111_0P75 U1801 ( .A1(n1307), .A2(n923), .B(n981), .C(n1446), .D(n1306), .X(\sh_sync_inst/n303 ) );
  UDB116SVT24_OAI21_0P75 U1802 ( .A1(n1867), .A2(n973), .B(n876), .X(n1866) );
  UDB116SVT24_NR2_0P75 U1803 ( .A1(n972), .A2(n1865), .X(n1868) );
  UDB116SVT24_OAI21_0P75 U1804 ( .A1(n1866), .A2(n1868), .B(n1309), .X(n1308)
         );
  UDB116SVT24_OAI31_1 U1805 ( .A1(n973), .A2(n1309), .A3(n1312), .B(n1308), 
        .X(\sh_sync_inst/n350 ) );
  UDB116SVT24_NR2_0P75 U1806 ( .A1(n973), .A2(n1312), .X(n1310) );
  UDB116SVT24_ND2_MM_0P75 U1807 ( .A1(n1310), .A2(n1309), .X(n1863) );
  UDB116SVT24_ND2_MM_0P75 U1808 ( .A1(n972), .A2(n876), .X(n1318) );
  UDB116SVT24_OAI31_1 U1809 ( .A1(n1312), .A2(\sh_sync_inst/n220 ), .A3(n1311), 
        .B(n1318), .X(n1860) );
  UDB116SVT24_AOI22_1 U1810 ( .A1(\sh_sync_inst/n219 ), .A2(n1863), .B1(n1860), 
        .B2(n1313), .X(\sh_sync_inst/n349 ) );
  UDB116SVT24_BUF_1 U1811 ( .A(n1323), .X(n1369) );
  UDB116SVT24_OAI22_0P75 U1812 ( .A1(n1373), .A2(n1317), .B1(n1314), .B2(n1369), .X(\shift_buf_inst/n133 ) );
  UDB116SVT24_NR2_0P75 U1813 ( .A1(n867), .A2(n1966), .X(n1964) );
  UDB116SVT24_ND2_MM_0P75 U1814 ( .A1(n1977), .A2(n1964), .X(n1963) );
  UDB116SVT24_OAI22_0P75 U1815 ( .A1(n1958), .A2(n1963), .B1(n1316), .B2(n970), 
        .X(n842) );
  UDB116SVT24_OAI22_0P75 U1816 ( .A1(n1373), .A2(n1374), .B1(n1317), .B2(n1369), .X(\shift_buf_inst/n134 ) );
  UDB116SVT24_INV_0P75 U1817 ( .A(n1318), .X(n1338) );
  UDB116SVT24_NR3_0P75 U1818 ( .A1(\sh_sync_inst/n214 ), .A2(
        \sh_sync_inst/n215 ), .A3(n1858), .X(n1854) );
  UDB116SVT24_ND2_MM_0P75 U1819 ( .A1(n1854), .A2(n1855), .X(n1343) );
  UDB116SVT24_OAI22_0P75 U1820 ( .A1(\sh_sync_inst/n211 ), .A2(n1338), .B1(
        \sh_sync_inst/n212 ), .B2(n1343), .X(\sh_sync_inst/n341 ) );
  UDB116SVT24_MAJ3_0P75 U1821 ( .A1(\sh_sync_inst/intadd_0/B[0] ), .A2(
        \sh_sync_inst/intadd_0/A[0] ), .A3(n1319), .X(n1850) );
  UDB116SVT24_MAJ3_0P75 U1822 ( .A1(\sh_sync_inst/intadd_0/A[1] ), .A2(
        \sh_sync_inst/intadd_0/B[1] ), .A3(n1850), .X(n1383) );
  UDB116SVT24_INV_0P75 U1823 ( .A(n1383), .X(n1320) );
  UDB116SVT24_AOI22_1 U1824 ( .A1(n951), .A2(n1383), .B1(n1320), .B2(n1820), 
        .X(n1322) );
  UDB116SVT24_AOI21_0P75 U1825 ( .A1(n1426), .A2(n1322), .B(n879), .X(n1321)
         );
  UDB116SVT24_AOAOI2111_0P75 U1826 ( .A1(n878), .A2(n1322), .B(n860), .C(n1416), .D(n1321), .X(\sh_sync_inst/n299 ) );
  UDB116SVT24_INV_0P75 U1827 ( .A(n2013), .X(n1344) );
  UDB116SVT24_INV_0P75 U1828 ( .A(SHIFT_OUT[46]), .X(n1923) );
  UDB116SVT24_BUF_1 U1829 ( .A(n1323), .X(n1330) );
  UDB116SVT24_BUF_1 U1830 ( .A(n1330), .X(n1345) );
  UDB116SVT24_INV_0P75 U1831 ( .A(SHIFT_OUT[47]), .X(n1921) );
  UDB116SVT24_OAI22_0P75 U1832 ( .A1(n1344), .A2(n1923), .B1(n1345), .B2(n1921), .X(\shift_buf_inst/n89 ) );
  UDB116SVT24_INV_0P75 U1833 ( .A(SHIFT_OUT[45]), .X(n1927) );
  UDB116SVT24_BUF_1 U1834 ( .A(n1330), .X(n1332) );
  UDB116SVT24_OAI22_0P75 U1835 ( .A1(n1344), .A2(n1927), .B1(n1332), .B2(n1923), .X(\shift_buf_inst/n90 ) );
  UDB116SVT24_INV_0P75 U1836 ( .A(SHIFT_OUT[54]), .X(n1898) );
  UDB116SVT24_BUF_1 U1837 ( .A(n1330), .X(n1325) );
  UDB116SVT24_OAI22_0P75 U1838 ( .A1(n1683), .A2(n1898), .B1(n1325), .B2(n1324), .X(\shift_buf_inst/n81 ) );
  UDB116SVT24_INV_0P75 U1839 ( .A(SHIFT_OUT[56]), .X(n1895) );
  UDB116SVT24_OAI22_0P75 U1840 ( .A1(n1683), .A2(n1324), .B1(n1325), .B2(n1895), .X(\shift_buf_inst/n80 ) );
  UDB116SVT24_INV_0P75 U1841 ( .A(sh_en), .X(n1335) );
  UDB116SVT24_INV_0P75 U1842 ( .A(SHIFT_OUT[57]), .X(n1892) );
  UDB116SVT24_OAI22_0P75 U1843 ( .A1(n1335), .A2(n1895), .B1(n1325), .B2(n1892), .X(\shift_buf_inst/n79 ) );
  UDB116SVT24_INV_0P75 U1844 ( .A(SHIFT_OUT[58]), .X(n847) );
  UDB116SVT24_OAI22_0P75 U1845 ( .A1(n1335), .A2(n1892), .B1(n1325), .B2(n847), 
        .X(\shift_buf_inst/n78 ) );
  UDB116SVT24_INV_0P75 U1846 ( .A(SHIFT_OUT[59]), .X(n2017) );
  UDB116SVT24_BUF_1 U1847 ( .A(n1369), .X(n1334) );
  UDB116SVT24_OAI22_0P75 U1848 ( .A1(n1335), .A2(n847), .B1(n1334), .B2(n2017), 
        .X(\shift_buf_inst/n77 ) );
  UDB116SVT24_INV_0P75 U1849 ( .A(SHIFT_OUT[60]), .X(n2016) );
  UDB116SVT24_OAI22_0P75 U1850 ( .A1(n1326), .A2(n2016), .B1(n1334), .B2(n2015), .X(\shift_buf_inst/n75 ) );
  UDB116SVT24_INV_0P75 U1851 ( .A(SHIFT_OUT[62]), .X(n2014) );
  UDB116SVT24_OAI22_0P75 U1852 ( .A1(n1326), .A2(n2015), .B1(n1334), .B2(n2014), .X(\shift_buf_inst/n74 ) );
  UDB116SVT24_BUF_1 U1853 ( .A(n1323), .X(n1352) );
  UDB116SVT24_INV_0P75 U1854 ( .A(SHIFT_OUT[63]), .X(n1882) );
  UDB116SVT24_OAI22_0P75 U1855 ( .A1(n1326), .A2(n2014), .B1(n1352), .B2(n1882), .X(\shift_buf_inst/n73 ) );
  UDB116SVT24_BUF_1 U1856 ( .A(n1336), .X(n1350) );
  UDB116SVT24_INV_0P75 U1857 ( .A(n1350), .X(n1358) );
  UDB116SVT24_OAI22_0P75 U1858 ( .A1(n1358), .A2(n1327), .B1(n1332), .B2(n1333), .X(\shift_buf_inst/n92 ) );
  UDB116SVT24_OAI22_0P75 U1859 ( .A1(n1358), .A2(n1328), .B1(n1332), .B2(n1327), .X(\shift_buf_inst/n93 ) );
  UDB116SVT24_BUF_1 U1860 ( .A(n1351), .X(n1357) );
  UDB116SVT24_OAI22_0P75 U1861 ( .A1(n1358), .A2(n1356), .B1(n1357), .B2(n1328), .X(\shift_buf_inst/n94 ) );
  UDB116SVT24_INV_0P75 U1862 ( .A(n1329), .X(n1346) );
  UDB116SVT24_INV_0P75 U1863 ( .A(SHIFT_OUT[51]), .X(n1910) );
  UDB116SVT24_BUF_1 U1864 ( .A(n1330), .X(n1880) );
  UDB116SVT24_INV_0P75 U1865 ( .A(SHIFT_OUT[52]), .X(n1905) );
  UDB116SVT24_OAI22_0P75 U1866 ( .A1(n1346), .A2(n1910), .B1(n1880), .B2(n1905), .X(\shift_buf_inst/n84 ) );
  UDB116SVT24_INV_0P75 U1867 ( .A(SHIFT_OUT[53]), .X(n1901) );
  UDB116SVT24_OAI22_0P75 U1868 ( .A1(n1683), .A2(n1905), .B1(n1880), .B2(n1901), .X(\shift_buf_inst/n83 ) );
  UDB116SVT24_INV_0P75 U1869 ( .A(n1336), .X(n1348) );
  UDB116SVT24_INV_0P75 U1870 ( .A(SHIFT_OUT[38]), .X(n1937) );
  UDB116SVT24_INV_0P75 U1871 ( .A(SHIFT_OUT[39]), .X(n1935) );
  UDB116SVT24_OAI22_0P75 U1872 ( .A1(n1348), .A2(n1937), .B1(n1357), .B2(n1935), .X(\shift_buf_inst/n97 ) );
  UDB116SVT24_INV_0P75 U1873 ( .A(SHIFT_OUT[37]), .X(n1941) );
  UDB116SVT24_OAI22_0P75 U1874 ( .A1(n1348), .A2(n1941), .B1(n1352), .B2(n1937), .X(\shift_buf_inst/n98 ) );
  UDB116SVT24_INV_0P75 U1875 ( .A(n1350), .X(n1361) );
  UDB116SVT24_BUF_1 U1876 ( .A(n1331), .X(n1351) );
  UDB116SVT24_BUF_1 U1877 ( .A(n1351), .X(n1362) );
  UDB116SVT24_OAI22_0P75 U1878 ( .A1(n1361), .A2(n2040), .B1(n1362), .B2(n2039), .X(\shift_buf_inst/n121 ) );
  UDB116SVT24_INV_0P75 U1879 ( .A(n1349), .X(n1365) );
  UDB116SVT24_BUF_1 U1880 ( .A(n1331), .X(n1347) );
  UDB116SVT24_BUF_1 U1881 ( .A(n1347), .X(n1367) );
  UDB116SVT24_OAI22_0P75 U1882 ( .A1(n1365), .A2(n2025), .B1(n1367), .B2(n2024), .X(\shift_buf_inst/n106 ) );
  UDB116SVT24_OAI22_0P75 U1883 ( .A1(n1344), .A2(n1333), .B1(n1332), .B2(n1927), .X(\shift_buf_inst/n91 ) );
  UDB116SVT24_OAI22_0P75 U1884 ( .A1(n1348), .A2(n2018), .B1(n1352), .B2(n1941), .X(\shift_buf_inst/n99 ) );
  UDB116SVT24_OAI22_0P75 U1885 ( .A1(n1335), .A2(n2017), .B1(n1334), .B2(n2016), .X(\shift_buf_inst/n76 ) );
  UDB116SVT24_INV_0P75 U1886 ( .A(n1336), .X(n1353) );
  UDB116SVT24_BUF_1 U1887 ( .A(n1347), .X(n1337) );
  UDB116SVT24_OAI22_0P75 U1888 ( .A1(n1353), .A2(n2020), .B1(n1337), .B2(n2019), .X(\shift_buf_inst/n101 ) );
  UDB116SVT24_OAI22_0P75 U1889 ( .A1(n1353), .A2(n2022), .B1(n1337), .B2(n2021), .X(\shift_buf_inst/n103 ) );
  UDB116SVT24_OAI22_0P75 U1890 ( .A1(n1353), .A2(n2021), .B1(n1337), .B2(n2020), .X(\shift_buf_inst/n102 ) );
  UDB116SVT24_OAI22_0P75 U1891 ( .A1(n1365), .A2(n2023), .B1(n1337), .B2(n2022), .X(\shift_buf_inst/n104 ) );
  UDB116SVT24_AOI31_0P75 U1892 ( .A1(n1340), .A2(n1339), .A3(n877), .B(n1338), 
        .X(n1853) );
  UDB116SVT24_AOI21_0P75 U1893 ( .A1(n1843), .A2(\sh_sync_inst/n213 ), .B(
        n1853), .X(n1342) );
  UDB116SVT24_INV_0P75 U1894 ( .A(\sh_sync_inst/n212 ), .X(n1341) );
  UDB116SVT24_AOI22_1 U1895 ( .A1(\sh_sync_inst/n212 ), .A2(n1343), .B1(n1342), 
        .B2(n1341), .X(\sh_sync_inst/n342 ) );
  UDB116SVT24_INV_0P75 U1896 ( .A(SHIFT_OUT[48]), .X(n1918) );
  UDB116SVT24_OAI22_0P75 U1897 ( .A1(n1344), .A2(n1921), .B1(n1345), .B2(n1918), .X(\shift_buf_inst/n88 ) );
  UDB116SVT24_INV_0P75 U1898 ( .A(SHIFT_OUT[49]), .X(n1915) );
  UDB116SVT24_OAI22_0P75 U1899 ( .A1(n1346), .A2(n1918), .B1(n1345), .B2(n1915), .X(\shift_buf_inst/n87 ) );
  UDB116SVT24_INV_0P75 U1900 ( .A(SHIFT_OUT[50]), .X(n1912) );
  UDB116SVT24_OAI22_0P75 U1901 ( .A1(n1346), .A2(n1915), .B1(n1345), .B2(n1912), .X(\shift_buf_inst/n86 ) );
  UDB116SVT24_OAI22_0P75 U1902 ( .A1(n1346), .A2(n1912), .B1(n1880), .B2(n1910), .X(\shift_buf_inst/n85 ) );
  UDB116SVT24_INV_0P75 U1903 ( .A(n1350), .X(n1354) );
  UDB116SVT24_BUF_1 U1904 ( .A(n1347), .X(n1366) );
  UDB116SVT24_OAI22_0P75 U1905 ( .A1(n1354), .A2(n2031), .B1(n1366), .B2(n2030), .X(\shift_buf_inst/n112 ) );
  UDB116SVT24_INV_0P75 U1906 ( .A(SHIFT_OUT[40]), .X(n1932) );
  UDB116SVT24_OAI22_0P75 U1907 ( .A1(n1348), .A2(n1935), .B1(n1357), .B2(n1932), .X(\shift_buf_inst/n96 ) );
  UDB116SVT24_INV_0P75 U1908 ( .A(n1349), .X(n1368) );
  UDB116SVT24_OAI22_0P75 U1909 ( .A1(n1368), .A2(n2029), .B1(n1366), .B2(n2028), .X(\shift_buf_inst/n110 ) );
  UDB116SVT24_OAI22_0P75 U1910 ( .A1(n1354), .A2(n2030), .B1(n1366), .B2(n2029), .X(\shift_buf_inst/n111 ) );
  UDB116SVT24_OAI22_0P75 U1911 ( .A1(n1361), .A2(n2041), .B1(n1362), .B2(n2040), .X(\shift_buf_inst/n122 ) );
  UDB116SVT24_OAI22_0P75 U1912 ( .A1(n1361), .A2(n2042), .B1(n1362), .B2(n2041), .X(\shift_buf_inst/n123 ) );
  UDB116SVT24_INV_0P75 U1913 ( .A(n1350), .X(n1359) );
  UDB116SVT24_BUF_1 U1914 ( .A(n1351), .X(n1355) );
  UDB116SVT24_OAI22_0P75 U1915 ( .A1(n1359), .A2(n2035), .B1(n1355), .B2(n2034), .X(\shift_buf_inst/n116 ) );
  UDB116SVT24_BUF_1 U1916 ( .A(n1351), .X(n1360) );
  UDB116SVT24_OAI22_0P75 U1917 ( .A1(n1359), .A2(n2036), .B1(n1360), .B2(n2035), .X(\shift_buf_inst/n117 ) );
  UDB116SVT24_OAI22_0P75 U1918 ( .A1(n1353), .A2(n2019), .B1(n1352), .B2(n2018), .X(\shift_buf_inst/n100 ) );
  UDB116SVT24_OAI22_0P75 U1919 ( .A1(n1354), .A2(n2032), .B1(n1355), .B2(n2031), .X(\shift_buf_inst/n113 ) );
  UDB116SVT24_OAI22_0P75 U1920 ( .A1(n1354), .A2(n2033), .B1(n1355), .B2(n2032), .X(\shift_buf_inst/n114 ) );
  UDB116SVT24_OAI22_0P75 U1921 ( .A1(n1359), .A2(n2034), .B1(n1355), .B2(n2033), .X(\shift_buf_inst/n115 ) );
  UDB116SVT24_OAI22_0P75 U1922 ( .A1(n1365), .A2(n2039), .B1(n1360), .B2(n2038), .X(\shift_buf_inst/n120 ) );
  UDB116SVT24_OAI22_0P75 U1923 ( .A1(n1358), .A2(n1932), .B1(n1357), .B2(n1356), .X(\shift_buf_inst/n95 ) );
  UDB116SVT24_OAI22_0P75 U1924 ( .A1(n1359), .A2(n2037), .B1(n1360), .B2(n2036), .X(\shift_buf_inst/n118 ) );
  UDB116SVT24_OAI22_0P75 U1925 ( .A1(n1361), .A2(n2038), .B1(n1360), .B2(n2037), .X(\shift_buf_inst/n119 ) );
  UDB116SVT24_OAI22_0P75 U1926 ( .A1(n1368), .A2(n2027), .B1(n1367), .B2(n2026), .X(\shift_buf_inst/n108 ) );
  UDB116SVT24_OAI22_0P75 U1927 ( .A1(n1364), .A2(n1363), .B1(n1362), .B2(n2042), .X(\shift_buf_inst/n124 ) );
  UDB116SVT24_OAI22_0P75 U1928 ( .A1(n1365), .A2(n2024), .B1(n1367), .B2(n2023), .X(\shift_buf_inst/n105 ) );
  UDB116SVT24_OAI22_0P75 U1929 ( .A1(n1368), .A2(n2028), .B1(n1366), .B2(n2027), .X(\shift_buf_inst/n109 ) );
  UDB116SVT24_OAI22_0P75 U1930 ( .A1(n1368), .A2(n2026), .B1(n1367), .B2(n2025), .X(\shift_buf_inst/n107 ) );
  UDB116SVT24_BUF_1 U1931 ( .A(n1369), .X(n1679) );
  UDB116SVT24_OAI22_0P75 U1932 ( .A1(n1680), .A2(n1371), .B1(n1370), .B2(n1679), .X(\shift_buf_inst/n129 ) );
  UDB116SVT24_OAI22_0P75 U1933 ( .A1(n1373), .A2(n1372), .B1(n1371), .B2(n1679), .X(\shift_buf_inst/n130 ) );
  UDB116SVT24_OAI22_0P75 U1934 ( .A1(n1680), .A2(n2043), .B1(n1374), .B2(n1679), .X(\shift_buf_inst/n135 ) );
  UDB116SVT24_ND2_MM_0P75 U1935 ( .A1(n1389), .A2(n1556), .X(n1391) );
  UDB116SVT24_OAI22_0P75 U1936 ( .A1(n1376), .A2(n1375), .B1(n1390), .B2(n1391), .X(n1377) );
  UDB116SVT24_AOI21_0P75 U1937 ( .A1(n925), .A2(n1378), .B(n1377), .X(n1692)
         );
  UDB116SVT24_OAI21B_1 U1938 ( .A1(n1380), .A2(n1392), .B(n1379), .X(n1828) );
  UDB116SVT24_OR2_0P75 U1939 ( .A1(n1819), .A2(n951), .X(n1387) );
  UDB116SVT24_NR2_0P75 U1940 ( .A1(\sh_sync_inst/intadd_0/B[3] ), .A2(n1387), 
        .X(n1821) );
  UDB116SVT24_ND2_MM_0P75 U1941 ( .A1(n1821), .A2(n1824), .X(n1831) );
  UDB116SVT24_AO21B_0P75 U1942 ( .A1(n883), .A2(n1831), .B(n1828), .X(n1829)
         );
  UDB116SVT24_AOI21_0P75 U1943 ( .A1(n924), .A2(n1829), .B(n932), .X(n1381) );
  UDB116SVT24_OAI31_1 U1944 ( .A1(n924), .A2(n960), .A3(n1831), .B(n1381), .X(
        \sh_sync_inst/n264 ) );
  UDB116SVT24_NR3_0P75 U1945 ( .A1(n1013), .A2(n955), .A3(n1831), .X(n1393) );
  UDB116SVT24_ND2_MM_0P75 U1946 ( .A1(n1393), .A2(n939), .X(n1402) );
  UDB116SVT24_NR2_0P75 U1947 ( .A1(n935), .A2(n1402), .X(n1704) );
  UDB116SVT24_ND2_MM_0P75 U1948 ( .A1(n1704), .A2(n907), .X(n1407) );
  UDB116SVT24_NR2_0P75 U1949 ( .A1(n958), .A2(n1407), .X(n1418) );
  UDB116SVT24_INV_0P75 U1950 ( .A(n1418), .X(n1382) );
  UDB116SVT24_AOI21_0P75 U1951 ( .A1(n962), .A2(n1382), .B(n880), .X(n1420) );
  UDB116SVT24_ND2_MM_0P75 U1952 ( .A1(n916), .A2(n963), .X(n1419) );
  UDB116SVT24_OAI22_0P75 U1953 ( .A1(n916), .A2(n1420), .B1(n1419), .B2(n1382), 
        .X(\sh_sync_inst/n258 ) );
  UDB116SVT24_INV_0P75 U1954 ( .A(\sh_sync_inst/intadd_0/A[4] ), .X(n1636) );
  UDB116SVT24_NR2_0P75 U1955 ( .A1(\sh_sync_inst/intadd_0/A[3] ), .A2(n966), 
        .X(n1836) );
  UDB116SVT24_MAJI3_1 U1956 ( .A1(n951), .A2(\sh_sync_inst/intadd_0/A[2] ), 
        .A3(n1383), .X(n1838) );
  UDB116SVT24_INV_0P75 U1957 ( .A(\sh_sync_inst/intadd_0/A[3] ), .X(n1643) );
  UDB116SVT24_OAI22_0P75 U1958 ( .A1(n1836), .A2(n1838), .B1(n1643), .B2(n1384), .X(n1414) );
  UDB116SVT24_AOI21_0P75 U1959 ( .A1(n1430), .A2(n1386), .B(n1636), .X(n1385)
         );
  UDB116SVT24_AOAOI2111_0P75 U1960 ( .A1(n1636), .A2(n1386), .B(n981), .C(
        n1416), .D(n1385), .X(\sh_sync_inst/n297 ) );
  UDB116SVT24_AOI21_0P75 U1961 ( .A1(n883), .A2(n1387), .B(n881), .X(n1823) );
  UDB116SVT24_ND2_MM_0P75 U1962 ( .A1(n966), .A2(n963), .X(n1825) );
  UDB116SVT24_OAI22_0P75 U1963 ( .A1(\sh_sync_inst/intadd_0/B[3] ), .A2(n1823), 
        .B1(n1825), .B2(n1387), .X(\sh_sync_inst/n266 ) );
  UDB116SVT24_OAOI211_0P75 U1964 ( .A1(n1392), .A2(n1390), .B(n1389), .C(n1388), .X(n1409) );
  UDB116SVT24_NR3_0P75 U1965 ( .A1(n1392), .A2(n1409), .A3(n1391), .X(n1690)
         );
  UDB116SVT24_INV_0P75 U1966 ( .A(n1690), .X(n1412) );
  UDB116SVT24_OA2BB2_0P75 U1967 ( .A1(n914), .A2(n1412), .B1(n848), .B2(n914), 
        .X(\sh_sync_inst/n330 ) );
  UDB116SVT24_NR2_0P75 U1968 ( .A1(n940), .A2(n959), .X(n1399) );
  UDB116SVT24_OAI21_0P75 U1969 ( .A1(n1692), .A2(n1393), .B(n1828), .X(n1400)
         );
  UDB116SVT24_AOI22_1 U1970 ( .A1(n1399), .A2(n1393), .B1(n1400), .B2(n939), 
        .X(n1394) );
  UDB116SVT24_ND2_MM_0P75 U1971 ( .A1(n1394), .A2(n1832), .X(
        \sh_sync_inst/n262 ) );
  UDB116SVT24_AOI21_0P75 U1972 ( .A1(n1690), .A2(n914), .B(n1409), .X(n1396)
         );
  UDB116SVT24_ND2_MM_0P75 U1973 ( .A1(\sh_sync_inst/n234 ), .A2(n1003), .X(
        n1397) );
  UDB116SVT24_NR2_0P75 U1974 ( .A1(\sh_sync_inst/n234 ), .A2(
        \sh_sync_inst/n235 ), .X(n1398) );
  UDB116SVT24_ND3_0P75 U1975 ( .A1(\sh_sync_inst/n233 ), .A2(n1003), .A3(n1398), .X(n1395) );
  UDB116SVT24_AOAI211_0P75 U1976 ( .A1(n1396), .A2(n1397), .B(
        \sh_sync_inst/n233 ), .C(n1395), .X(\sh_sync_inst/n328 ) );
  UDB116SVT24_OAI22_0P75 U1977 ( .A1(\sh_sync_inst/n235 ), .A2(n1397), .B1(
        \sh_sync_inst/n234 ), .B2(n1396), .X(\sh_sync_inst/n329 ) );
  UDB116SVT24_NR2B_0P75 U1978 ( .A(n1398), .B(\sh_sync_inst/n233 ), .X(n1691)
         );
  UDB116SVT24_ND2_MM_0P75 U1979 ( .A1(n1691), .A2(n1689), .X(n1411) );
  UDB116SVT24_OAOI211_0P75 U1980 ( .A1(\sh_sync_inst/n231 ), .A2(n1411), .B(
        n1690), .C(n848), .X(n1404) );
  UDB116SVT24_OR3B_0P75 U1981 ( .B1(\sh_sync_inst/n231 ), .B2(n1411), .A(n1690), .X(n1405) );
  UDB116SVT24_OAI22_0P75 U1982 ( .A1(\sh_sync_inst/n229 ), .A2(n1404), .B1(
        \sh_sync_inst/n230 ), .B2(n1405), .X(\sh_sync_inst/n324 ) );
  UDB116SVT24_OAI21_0P75 U1983 ( .A1(n1400), .A2(n1399), .B(n934), .X(n1401)
         );
  UDB116SVT24_OAI31_1 U1984 ( .A1(n959), .A2(n872), .A3(n1402), .B(n1401), .X(
        \sh_sync_inst/n261 ) );
  UDB116SVT24_AOI22_1 U1985 ( .A1(\sh_sync_inst/n230 ), .A2(n1405), .B1(n1404), 
        .B2(n1403), .X(\sh_sync_inst/n325 ) );
  UDB116SVT24_NR2_0P75 U1986 ( .A1(n921), .A2(n960), .X(n1705) );
  UDB116SVT24_OAI21_0P75 U1987 ( .A1(n1692), .A2(n1704), .B(n1828), .X(n1703)
         );
  UDB116SVT24_OAOI211_0P75 U1988 ( .A1(n1705), .A2(n1703), .B(n1408), .C(n932), 
        .X(n1406) );
  UDB116SVT24_OAI31_1 U1989 ( .A1(n1408), .A2(n960), .A3(n1407), .B(n1406), 
        .X(\sh_sync_inst/n259 ) );
  UDB116SVT24_INV_0P75 U1990 ( .A(\sh_sync_inst/n231 ), .X(n1413) );
  UDB116SVT24_OAI21B_1 U1991 ( .A1(n1691), .A2(n1412), .B(n1409), .X(n1688) );
  UDB116SVT24_AOAI211_0P75 U1992 ( .A1(n1003), .A2(\sh_sync_inst/n232 ), .B(
        n1688), .C(n1413), .X(n1410) );
  UDB116SVT24_OAI31_1 U1993 ( .A1(n1413), .A2(n1412), .A3(n1411), .B(n1410), 
        .X(\sh_sync_inst/n326 ) );
  UDB116SVT24_INV_0P75 U1994 ( .A(\sh_sync_inst/intadd_0/A[6] ), .X(n1609) );
  UDB116SVT24_NR2_0P75 U1995 ( .A1(n859), .A2(n955), .X(n1812) );
  UDB116SVT24_MAJI3_1 U1996 ( .A1(n1007), .A2(\sh_sync_inst/intadd_0/A[4] ), 
        .A3(n1414), .X(n1814) );
  UDB116SVT24_INV_0P75 U1997 ( .A(\sh_sync_inst/intadd_0/A[5] ), .X(n1624) );
  UDB116SVT24_OAI22_0P75 U1998 ( .A1(n1812), .A2(n1814), .B1(n1624), .B2(n924), 
        .X(n1421) );
  UDB116SVT24_AOI21_0P75 U1999 ( .A1(n1430), .A2(n1417), .B(n1609), .X(n1415)
         );
  UDB116SVT24_AOAOI2111_0P75 U2000 ( .A1(n1609), .A2(n1417), .B(n980), .C(
        n1416), .D(n1415), .X(\sh_sync_inst/n295 ) );
  UDB116SVT24_ND3_0P75 U2001 ( .A1(n962), .A2(n1418), .A3(n915), .X(n1702) );
  UDB116SVT24_ND2_MM_0P75 U2002 ( .A1(n1420), .A2(n1419), .X(n1700) );
  UDB116SVT24_OA2BB2_0P75 U2003 ( .A1(n1019), .A2(n1702), .B1(n1700), .B2(
        \sh_sync_inst/intadd_0/B[12] ), .X(\sh_sync_inst/n257 ) );
  UDB116SVT24_NR2_0P75 U2004 ( .A1(\sh_sync_inst/intadd_0/A[7] ), .A2(
        \sh_sync_inst/intadd_0/B[7] ), .X(n1806) );
  UDB116SVT24_MAJI3_1 U2005 ( .A1(\sh_sync_inst/intadd_0/B[6] ), .A2(
        \sh_sync_inst/intadd_0/A[6] ), .A3(n1421), .X(n1808) );
  UDB116SVT24_INV_0P75 U2006 ( .A(\sh_sync_inst/intadd_0/A[7] ), .X(n1606) );
  UDB116SVT24_OAI22_0P75 U2007 ( .A1(n1806), .A2(n1808), .B1(n1606), .B2(n939), 
        .X(n1425) );
  UDB116SVT24_INV_0P75 U2008 ( .A(n1800), .X(n1811) );
  UDB116SVT24_AOI21_0P75 U2009 ( .A1(n1426), .A2(n1424), .B(n885), .X(n1423)
         );
  UDB116SVT24_AOAOI2111_0P75 U2010 ( .A1(n884), .A2(n1424), .B(n982), .C(n1811), .D(n1423), .X(\sh_sync_inst/n293 ) );
  UDB116SVT24_INV_0P75 U2011 ( .A(\sh_sync_inst/intadd_0/A[10] ), .X(n1587) );
  UDB116SVT24_NR2_0P75 U2012 ( .A1(\sh_sync_inst/intadd_0/A[9] ), .A2(n908), 
        .X(n1801) );
  UDB116SVT24_MAJI3_1 U2013 ( .A1(n935), .A2(\sh_sync_inst/intadd_0/A[8] ), 
        .A3(n1425), .X(n1803) );
  UDB116SVT24_INV_0P75 U2014 ( .A(\sh_sync_inst/intadd_0/A[9] ), .X(n1594) );
  UDB116SVT24_OAI22_0P75 U2015 ( .A1(n1801), .A2(n1803), .B1(n1594), .B2(n921), 
        .X(n1429) );
  UDB116SVT24_AOI21_0P75 U2016 ( .A1(n1426), .A2(n1428), .B(n1587), .X(n1427)
         );
  UDB116SVT24_AOAOI2111_0P75 U2017 ( .A1(n1587), .A2(n1428), .B(n1879), .C(
        n1811), .D(n1427), .X(\sh_sync_inst/n291 ) );
  UDB116SVT24_INV_0P75 U2018 ( .A(\sh_sync_inst/intadd_0/A[12] ), .X(n1573) );
  UDB116SVT24_NR2_0P75 U2019 ( .A1(\sh_sync_inst/intadd_0/A[11] ), .A2(n916), 
        .X(n1794) );
  UDB116SVT24_MAJI3_1 U2020 ( .A1(n957), .A2(\sh_sync_inst/intadd_0/A[10] ), 
        .A3(n1429), .X(n1796) );
  UDB116SVT24_INV_0P75 U2021 ( .A(\sh_sync_inst/intadd_0/A[11] ), .X(n1577) );
  UDB116SVT24_OAI22_0P75 U2022 ( .A1(n1794), .A2(n1796), .B1(n1577), .B2(n922), 
        .X(n1433) );
  UDB116SVT24_AOI21_0P75 U2023 ( .A1(n1430), .A2(n1432), .B(n1573), .X(n1431)
         );
  UDB116SVT24_AOAOI2111_0P75 U2024 ( .A1(n1573), .A2(n1432), .B(n1879), .C(
        n1811), .D(n1431), .X(\sh_sync_inst/n289 ) );
  UDB116SVT24_NR2_0P75 U2025 ( .A1(n1444), .A2(n981), .X(n1724) );
  UDB116SVT24_MAJ3_0P75 U2026 ( .A1(\sh_sync_inst/intadd_0/B[12] ), .A2(
        \sh_sync_inst/intadd_0/A[12] ), .A3(n1433), .X(n1792) );
  UDB116SVT24_INV_0P75 U2027 ( .A(\sh_sync_inst/intadd_0/A[13] ), .X(n1788) );
  UDB116SVT24_ND2_MM_0P75 U2028 ( .A1(n1788), .A2(n870), .X(n1787) );
  UDB116SVT24_AOI22_1 U2029 ( .A1(n998), .A2(\sh_sync_inst/intadd_0/B[13] ), 
        .B1(n1792), .B2(n1787), .X(n1785) );
  UDB116SVT24_ND2_MM_0P75 U2030 ( .A1(n1785), .A2(n888), .X(n1435) );
  UDB116SVT24_NR2_0P75 U2031 ( .A1(n889), .A2(n1028), .X(n1786) );
  UDB116SVT24_INV_0P75 U2032 ( .A(n1800), .X(n1799) );
  UDB116SVT24_OAI21_0P75 U2033 ( .A1(n1785), .A2(n860), .B(n1799), .X(n1784)
         );
  UDB116SVT24_OAI21_0P75 U2034 ( .A1(n1786), .A2(n1784), .B(n887), .X(n1434)
         );
  UDB116SVT24_OAI31_1 U2035 ( .A1(n1029), .A2(n886), .A3(n1435), .B(n1434), 
        .X(\sh_sync_inst/n286 ) );
  UDB116SVT24_INV_0P75 U2036 ( .A(\sh_sync_inst/n158 ), .X(n1525) );
  UDB116SVT24_NR2_0P75 U2037 ( .A1(\sh_sync_inst/n160 ), .A2(n1435), .X(n1782)
         );
  UDB116SVT24_ND2_MM_0P75 U2038 ( .A1(n1782), .A2(n890), .X(n1437) );
  UDB116SVT24_OAI21_0P75 U2039 ( .A1(n1782), .A2(n1879), .B(n1446), .X(n1781)
         );
  UDB116SVT24_NR2_0P75 U2040 ( .A1(n891), .A2(n1031), .X(n1783) );
  UDB116SVT24_OAI21_0P75 U2041 ( .A1(n1781), .A2(n1783), .B(n1525), .X(n1436)
         );
  UDB116SVT24_OAI31_1 U2042 ( .A1(n1030), .A2(n1525), .A3(n1437), .B(n1436), 
        .X(\sh_sync_inst/n284 ) );
  UDB116SVT24_INV_0P75 U2043 ( .A(\sh_sync_inst/n156 ), .X(n1513) );
  UDB116SVT24_NR2_0P75 U2044 ( .A1(\sh_sync_inst/n158 ), .A2(n1437), .X(n1779)
         );
  UDB116SVT24_ND2_MM_0P75 U2045 ( .A1(n1779), .A2(n928), .X(n1439) );
  UDB116SVT24_OAI21_0P75 U2046 ( .A1(n1779), .A2(n980), .B(n1446), .X(n1778)
         );
  UDB116SVT24_NR2_0P75 U2047 ( .A1(n927), .A2(n862), .X(n1780) );
  UDB116SVT24_OAI21_0P75 U2048 ( .A1(n1778), .A2(n1780), .B(n1513), .X(n1438)
         );
  UDB116SVT24_OAI31_1 U2049 ( .A1(n1031), .A2(n1513), .A3(n1439), .B(n1438), 
        .X(\sh_sync_inst/n282 ) );
  UDB116SVT24_NR2_0P75 U2050 ( .A1(\sh_sync_inst/n156 ), .A2(n1439), .X(n1441)
         );
  UDB116SVT24_INV_0P75 U2051 ( .A(n1441), .X(n1440) );
  UDB116SVT24_AOI21_0P75 U2052 ( .A1(n926), .A2(n1440), .B(n1444), .X(n1722)
         );
  UDB116SVT24_ND2_MM_0P75 U2053 ( .A1(\sh_sync_inst/n155 ), .A2(n949), .X(
        n1720) );
  UDB116SVT24_OAI22_0P75 U2054 ( .A1(\sh_sync_inst/n155 ), .A2(n1722), .B1(
        n1720), .B2(n1440), .X(\sh_sync_inst/n281 ) );
  UDB116SVT24_INV_0P75 U2055 ( .A(\sh_sync_inst/n150 ), .X(n1460) );
  UDB116SVT24_INV_0P75 U2056 ( .A(\sh_sync_inst/n155 ), .X(n1501) );
  UDB116SVT24_ND2_MM_0P75 U2057 ( .A1(n1441), .A2(n1501), .X(n1695) );
  UDB116SVT24_NR2_0P75 U2058 ( .A1(\sh_sync_inst/n154 ), .A2(n1695), .X(n1696)
         );
  UDB116SVT24_ND2_MM_0P75 U2059 ( .A1(n1696), .A2(n893), .X(n1717) );
  UDB116SVT24_NR2_0P75 U2060 ( .A1(n912), .A2(n1717), .X(n1776) );
  UDB116SVT24_INV_0P75 U2061 ( .A(\sh_sync_inst/n151 ), .X(n1774) );
  UDB116SVT24_ND2_MM_0P75 U2062 ( .A1(n1776), .A2(n1774), .X(n1443) );
  UDB116SVT24_OAI21_0P75 U2063 ( .A1(n1776), .A2(n981), .B(n1799), .X(n1775)
         );
  UDB116SVT24_NR2_0P75 U2064 ( .A1(n1774), .A2(n1029), .X(n1777) );
  UDB116SVT24_OAI21_0P75 U2065 ( .A1(n1775), .A2(n1777), .B(n1460), .X(n1442)
         );
  UDB116SVT24_OAI31_1 U2066 ( .A1(n1028), .A2(n1460), .A3(n1443), .B(n1442), 
        .X(\sh_sync_inst/n276 ) );
  UDB116SVT24_OR2_0P75 U2067 ( .A1(\sh_sync_inst/n150 ), .A2(n1443), .X(n1445)
         );
  UDB116SVT24_AOI21_0P75 U2068 ( .A1(n925), .A2(n1445), .B(n1444), .X(n1714)
         );
  UDB116SVT24_ND2_MM_0P75 U2069 ( .A1(n996), .A2(n948), .X(n1713) );
  UDB116SVT24_OAI22_0P75 U2070 ( .A1(n996), .A2(n1714), .B1(n1713), .B2(n1445), 
        .X(\sh_sync_inst/n275 ) );
  UDB116SVT24_NR2_0P75 U2071 ( .A1(n1445), .A2(\sh_sync_inst/n149 ), .X(n1447)
         );
  UDB116SVT24_AN2_1 U2072 ( .A1(n1447), .A2(n895), .X(n1699) );
  UDB116SVT24_OAI21_0P75 U2073 ( .A1(n1699), .A2(n1028), .B(n1446), .X(n1697)
         );
  UDB116SVT24_AOI21_0P75 U2074 ( .A1(n1011), .A2(n949), .B(n1697), .X(n1449)
         );
  UDB116SVT24_ND2_MM_0P75 U2075 ( .A1(n948), .A2(n1447), .X(n1712) );
  UDB116SVT24_NR2_0P75 U2076 ( .A1(n1010), .A2(\sh_sync_inst/n148 ), .X(n1448)
         );
  UDB116SVT24_ND2_MM_0P75 U2077 ( .A1(n920), .A2(n1448), .X(n1453) );
  UDB116SVT24_OAI22_0P75 U2078 ( .A1(n920), .A2(n1449), .B1(n1712), .B2(n1453), 
        .X(\sh_sync_inst/n272 ) );
  UDB116SVT24_INV_0P75 U2079 ( .A(n1450), .X(n1451) );
  UDB116SVT24_ND2_MM_0P75 U2080 ( .A1(\sh_sync_inst/n149 ), .A2(
        \sh_sync_inst/n146 ), .X(n1455) );
  UDB116SVT24_ND2_MM_0P75 U2081 ( .A1(n1455), .A2(n894), .X(n1459) );
  UDB116SVT24_AOI21_0P75 U2082 ( .A1(n1011), .A2(n1459), .B(
        \sh_sync_inst/n150 ), .X(n1452) );
  UDB116SVT24_OAI21_0P75 U2083 ( .A1(\sh_sync_inst/n147 ), .A2(n1459), .B(
        n1452), .X(n1471) );
  UDB116SVT24_INV_0P75 U2084 ( .A(n1471), .X(n1456) );
  UDB116SVT24_INV_0P75 U2085 ( .A(n1453), .X(n1454) );
  UDB116SVT24_INV_0P75 U2086 ( .A(n1011), .X(n1698) );
  UDB116SVT24_AOI21_0P75 U2087 ( .A1(n1698), .A2(n895), .B(n920), .X(n1467) );
  UDB116SVT24_INV_0P75 U2088 ( .A(\sh_sync_inst/n149 ), .X(n1466) );
  UDB116SVT24_OAI21_0P75 U2089 ( .A1(n1454), .A2(n1467), .B(n1466), .X(n1465)
         );
  UDB116SVT24_AOI21B_0P75 U2090 ( .A1(n1456), .A2(n1455), .B(n1465), .X(n1458)
         );
  UDB116SVT24_OAI21_0P75 U2091 ( .A1(\sh_sync_inst/n146 ), .A2(
        \sh_sync_inst/n147 ), .B(n894), .X(n1457) );
  UDB116SVT24_EN2_V2_0P75 U2092 ( .A1(n1458), .A2(n1457), .X(n1468) );
  UDB116SVT24_INV_0P75 U2093 ( .A(n1459), .X(n1463) );
  UDB116SVT24_NR2_0P75 U2094 ( .A1(\sh_sync_inst/n149 ), .A2(n920), .X(n1461)
         );
  UDB116SVT24_AOI31_0P75 U2095 ( .A1(n1010), .A2(n1463), .A3(n1461), .B(n1460), 
        .X(n1462) );
  UDB116SVT24_OAI21_0P75 U2096 ( .A1(n1011), .A2(n1463), .B(n1462), .X(n1464)
         );
  UDB116SVT24_AN2_1 U2097 ( .A1(n1471), .A2(n1464), .X(n1476) );
  UDB116SVT24_OA21_V2_1 U2098 ( .A1(n1467), .A2(n1466), .B(n1465), .X(n1472)
         );
  UDB116SVT24_ND2_MM_0P75 U2099 ( .A1(n1476), .A2(n1472), .X(n1474) );
  UDB116SVT24_AOI21_0P75 U2100 ( .A1(n1474), .A2(n1468), .B(
        \sh_sync_inst/n151 ), .X(n1475) );
  UDB116SVT24_AOI21_0P75 U2101 ( .A1(n1468), .A2(\sh_sync_inst/n151 ), .B(
        n1475), .X(n1480) );
  UDB116SVT24_ND2_MM_0P75 U2102 ( .A1(n1476), .A2(n1475), .X(n1469) );
  UDB116SVT24_AOI21B_0P75 U2103 ( .A1(n1472), .A2(n1471), .B(n1469), .X(n1470)
         );
  UDB116SVT24_OAI21_0P75 U2104 ( .A1(n1472), .A2(n1471), .B(n1470), .X(n1473)
         );
  UDB116SVT24_OAI21_0P75 U2105 ( .A1(\sh_sync_inst/n151 ), .A2(n1474), .B(
        n1473), .X(n1481) );
  UDB116SVT24_ND2_MM_0P75 U2106 ( .A1(n1476), .A2(n1480), .X(n1477) );
  UDB116SVT24_AOI21_0P75 U2107 ( .A1(n1481), .A2(n1477), .B(
        \sh_sync_inst/n152 ), .X(n1484) );
  UDB116SVT24_ND2_MM_0P75 U2108 ( .A1(n1480), .A2(n1484), .X(n1479) );
  UDB116SVT24_EN2_V2_0P75 U2109 ( .A1(n1476), .A2(n1475), .X(n1478) );
  UDB116SVT24_OA2BB2_0P75 U2110 ( .A1(n1479), .A2(n1478), .B1(n1477), .B2(
        \sh_sync_inst/n152 ), .X(n1482) );
  UDB116SVT24_INV_0P75 U2111 ( .A(n1480), .X(n1485) );
  UDB116SVT24_AOI21_0P75 U2112 ( .A1(n1481), .A2(n912), .B(n1484), .X(n1488)
         );
  UDB116SVT24_INV_0P75 U2113 ( .A(n1488), .X(n1493) );
  UDB116SVT24_NR2_0P75 U2114 ( .A1(n1485), .A2(n1493), .X(n1487) );
  UDB116SVT24_OAI21_0P75 U2115 ( .A1(n1487), .A2(n1482), .B(n892), .X(n1490)
         );
  UDB116SVT24_OAI21_0P75 U2116 ( .A1(n1482), .A2(n893), .B(n1490), .X(n1498)
         );
  UDB116SVT24_OAI22_0P75 U2117 ( .A1(n1493), .A2(n1490), .B1(n1485), .B2(n1484), .X(n1483) );
  UDB116SVT24_AOI21_0P75 U2118 ( .A1(n1485), .A2(n1484), .B(n1483), .X(n1486)
         );
  UDB116SVT24_AOI21_0P75 U2119 ( .A1(n1487), .A2(n892), .B(n1486), .X(n1489)
         );
  UDB116SVT24_INV_0P75 U2120 ( .A(\sh_sync_inst/n154 ), .X(n1721) );
  UDB116SVT24_INV_0P75 U2121 ( .A(n1498), .X(n1508) );
  UDB116SVT24_AOAI211_0P75 U2122 ( .A1(n1508), .A2(n1488), .B(n1489), .C(n1721), .X(n1502) );
  UDB116SVT24_OAI21_0P75 U2123 ( .A1(n1489), .A2(n1721), .B(n1502), .X(n1509)
         );
  UDB116SVT24_INV_0P75 U2124 ( .A(n1509), .X(n1497) );
  UDB116SVT24_INV_0P75 U2125 ( .A(n1490), .X(n1495) );
  UDB116SVT24_NR2_0P75 U2126 ( .A1(\sh_sync_inst/n154 ), .A2(n1498), .X(n1494)
         );
  UDB116SVT24_NR2_0P75 U2127 ( .A1(n993), .A2(n1502), .X(n1491) );
  UDB116SVT24_OAI21_0P75 U2128 ( .A1(n1495), .A2(n1491), .B(n1493), .X(n1492)
         );
  UDB116SVT24_OAI31_1 U2129 ( .A1(n1495), .A2(n1494), .A3(n1493), .B(n1492), 
        .X(n1500) );
  UDB116SVT24_AN2_1 U2130 ( .A1(n1500), .A2(n1501), .X(n1499) );
  UDB116SVT24_ND2_MM_0P75 U2131 ( .A1(n1497), .A2(n1499), .X(n1496) );
  UDB116SVT24_OAOAI2111_1 U2132 ( .A1(n1498), .A2(\sh_sync_inst/n155 ), .B(
        n1497), .C(n1499), .D(n1496), .X(n1511) );
  UDB116SVT24_NR3_0P75 U2133 ( .A1(n858), .A2(n1498), .A3(n1509), .X(n1504) );
  UDB116SVT24_NR2_0P75 U2134 ( .A1(n1504), .A2(n1499), .X(n1503) );
  UDB116SVT24_OAI21_0P75 U2135 ( .A1(n1501), .A2(n1500), .B(n1503), .X(n1516)
         );
  UDB116SVT24_INV_0P75 U2136 ( .A(n1502), .X(n1507) );
  UDB116SVT24_NR2_0P75 U2137 ( .A1(n1507), .A2(n1508), .X(n1506) );
  UDB116SVT24_OR2_0P75 U2138 ( .A1(n1509), .A2(n1503), .X(n1505) );
  UDB116SVT24_AOAOI2111_0P75 U2139 ( .A1(n1508), .A2(n1507), .B(n1506), .C(
        n1505), .D(n1504), .X(n1514) );
  UDB116SVT24_AN2_1 U2140 ( .A1(n1514), .A2(n1513), .X(n1518) );
  UDB116SVT24_NR3_0P75 U2141 ( .A1(\sh_sync_inst/n156 ), .A2(n1516), .A3(n1509), .X(n1510) );
  UDB116SVT24_NR2_0P75 U2142 ( .A1(n1518), .A2(n1510), .X(n1512) );
  UDB116SVT24_OR2_0P75 U2143 ( .A1(n1516), .A2(n1512), .X(n1517) );
  UDB116SVT24_AOI21_0P75 U2144 ( .A1(n1511), .A2(n1517), .B(n1510), .X(n1515)
         );
  UDB116SVT24_OAI21_0P75 U2145 ( .A1(n1514), .A2(n1513), .B(n1512), .X(n1530)
         );
  UDB116SVT24_NR2_0P75 U2146 ( .A1(n1516), .A2(n1530), .X(n1523) );
  UDB116SVT24_OAI21_0P75 U2147 ( .A1(n1523), .A2(n1515), .B(n927), .X(n1520)
         );
  UDB116SVT24_OAI21_0P75 U2148 ( .A1(n1515), .A2(n928), .B(n1520), .X(n1545)
         );
  UDB116SVT24_INV_0P75 U2149 ( .A(n1545), .X(n1537) );
  UDB116SVT24_INV_0P75 U2150 ( .A(n1530), .X(n1524) );
  UDB116SVT24_INV_0P75 U2151 ( .A(n1516), .X(n1519) );
  UDB116SVT24_OAI21_0P75 U2152 ( .A1(n1519), .A2(n1518), .B(n1517), .X(n1522)
         );
  UDB116SVT24_INV_0P75 U2153 ( .A(n1520), .X(n1532) );
  UDB116SVT24_ND2_MM_0P75 U2154 ( .A1(n1524), .A2(n1532), .X(n1521) );
  UDB116SVT24_AOI22_1 U2155 ( .A1(n1523), .A2(n927), .B1(n1522), .B2(n1521), 
        .X(n1526) );
  UDB116SVT24_AOAI211_0P75 U2156 ( .A1(n1537), .A2(n1524), .B(n1526), .C(n1525), .X(n1527) );
  UDB116SVT24_INV_0P75 U2157 ( .A(n1527), .X(n1536) );
  UDB116SVT24_NR2_0P75 U2158 ( .A1(n1536), .A2(n1537), .X(n1535) );
  UDB116SVT24_OAI21_0P75 U2159 ( .A1(n1526), .A2(n1525), .B(n1527), .X(n1541)
         );
  UDB116SVT24_NR3_0P75 U2160 ( .A1(\sh_sync_inst/n159 ), .A2(n1545), .A3(n1541), .X(n1533) );
  UDB116SVT24_NR2_0P75 U2161 ( .A1(\sh_sync_inst/n158 ), .A2(n1545), .X(n1531)
         );
  UDB116SVT24_NR2_0P75 U2162 ( .A1(n992), .A2(n1527), .X(n1528) );
  UDB116SVT24_OAI21_0P75 U2163 ( .A1(n1532), .A2(n1528), .B(n1530), .X(n1529)
         );
  UDB116SVT24_OAI31_1 U2164 ( .A1(n1532), .A2(n1531), .A3(n1530), .B(n1529), 
        .X(n1539) );
  UDB116SVT24_AN2_1 U2165 ( .A1(n1539), .A2(n890), .X(n1543) );
  UDB116SVT24_NR2_0P75 U2166 ( .A1(n1533), .A2(n1543), .X(n1538) );
  UDB116SVT24_OR2_0P75 U2167 ( .A1(n1541), .A2(n1538), .X(n1534) );
  UDB116SVT24_AOAOI2111_0P75 U2168 ( .A1(n1537), .A2(n1536), .B(n1535), .C(
        n1534), .D(n1533), .X(n1540) );
  UDB116SVT24_OAI21_0P75 U2169 ( .A1(n891), .A2(n1539), .B(n1538), .X(n1550)
         );
  UDB116SVT24_NR2_0P75 U2170 ( .A1(n1541), .A2(n1550), .X(n1548) );
  UDB116SVT24_OAI21_0P75 U2171 ( .A1(n1540), .A2(n1548), .B(n886), .X(n1549)
         );
  UDB116SVT24_OAI21_0P75 U2172 ( .A1(n1540), .A2(n887), .B(n1549), .X(n1566)
         );
  UDB116SVT24_NR2_0P75 U2173 ( .A1(n1550), .A2(n1566), .X(n1554) );
  UDB116SVT24_OR2_0P75 U2174 ( .A1(n1550), .A2(n1549), .X(n1547) );
  UDB116SVT24_INV_0P75 U2175 ( .A(n1541), .X(n1544) );
  UDB116SVT24_ND2_MM_0P75 U2176 ( .A1(n1544), .A2(n1543), .X(n1542) );
  UDB116SVT24_OAOAI2111_1 U2177 ( .A1(n1545), .A2(\sh_sync_inst/n159 ), .B(
        n1544), .C(n1543), .D(n1542), .X(n1546) );
  UDB116SVT24_AOI22_1 U2178 ( .A1(n1548), .A2(n886), .B1(n1547), .B2(n1546), 
        .X(n1555) );
  UDB116SVT24_OAI21_0P75 U2179 ( .A1(n1554), .A2(n1555), .B(n888), .X(n1560)
         );
  UDB116SVT24_NR2_0P75 U2180 ( .A1(n1566), .A2(n1560), .X(n1552) );
  UDB116SVT24_EO2_V2_1 U2181 ( .A1(n1550), .A2(n1549), .X(n1551) );
  UDB116SVT24_AO2BB2_0P75 U2182 ( .A1(n1552), .A2(n1551), .B1(n889), .B2(n1554), .X(n1558) );
  UDB116SVT24_ND2_MM_0P75 U2183 ( .A1(n1555), .A2(\sh_sync_inst/n161 ), .X(
        n1553) );
  UDB116SVT24_OAI31_1 U2184 ( .A1(n1555), .A2(\sh_sync_inst/n161 ), .A3(n1554), 
        .B(n1553), .X(n1562) );
  UDB116SVT24_OR3B_0P75 U2185 ( .B1(n1566), .B2(\sh_sync_inst/intadd_0/A[13] ), 
        .A(n1562), .X(n1563) );
  UDB116SVT24_ND2_MM_0P75 U2186 ( .A1(n1556), .A2(n1024), .X(n1655) );
  UDB116SVT24_AOI21_0P75 U2187 ( .A1(n1558), .A2(n1563), .B(n902), .X(n1557)
         );
  UDB116SVT24_OAI21B_1 U2188 ( .A1(\sh_sync_inst/n192 ), .A2(n861), .B(n1557), 
        .X(\sh_sync_inst/n322 ) );
  UDB116SVT24_NR2_0P75 U2189 ( .A1(\sh_sync_inst/intadd_0/A[13] ), .A2(n1558), 
        .X(n1559) );
  UDB116SVT24_ND2B_0P75 U2190 ( .A(n1559), .B(n1563), .X(n1561) );
  UDB116SVT24_AOI21_0P75 U2191 ( .A1(\sh_sync_inst/intadd_0/A[13] ), .A2(n1558), .B(n1561), .X(n1575) );
  UDB116SVT24_NR2_0P75 U2192 ( .A1(n1562), .A2(n1559), .X(n1567) );
  UDB116SVT24_ND2_MM_0P75 U2193 ( .A1(n1575), .A2(n1573), .X(n1570) );
  UDB116SVT24_NR2_0P75 U2194 ( .A1(n1567), .A2(n1570), .X(n1771) );
  UDB116SVT24_INV_0P75 U2195 ( .A(n1560), .X(n1565) );
  UDB116SVT24_ND2_MM_0P75 U2196 ( .A1(n1562), .A2(n1561), .X(n1568) );
  UDB116SVT24_OAI21_0P75 U2197 ( .A1(n1565), .A2(n850), .B(n1568), .X(n1564)
         );
  UDB116SVT24_AOAI211_0P75 U2198 ( .A1(n850), .A2(n1565), .B(n1564), .C(n1563), 
        .X(n1571) );
  UDB116SVT24_NR2_0P75 U2199 ( .A1(\sh_sync_inst/intadd_0/A[12] ), .A2(n1571), 
        .X(n1574) );
  UDB116SVT24_NR2_0P75 U2200 ( .A1(n1771), .A2(n1574), .X(n1572) );
  UDB116SVT24_NR2B_0P75 U2201 ( .A(n1575), .B(n1572), .X(n1581) );
  UDB116SVT24_NR2B_0P75 U2202 ( .A(n1568), .B(n1567), .X(n1569) );
  UDB116SVT24_MUXI2_1 U2203 ( .D0(n1581), .D1(n1570), .S(n1569), .X(n1576) );
  UDB116SVT24_INV_0P75 U2204 ( .A(n1576), .X(n1767) );
  UDB116SVT24_INV_0P75 U2205 ( .A(n1571), .X(n1770) );
  UDB116SVT24_OAI21_0P75 U2206 ( .A1(n1573), .A2(n1770), .B(n1572), .X(n1583)
         );
  UDB116SVT24_NR2_0P75 U2207 ( .A1(n1575), .A2(n1574), .X(n1580) );
  UDB116SVT24_NR3_0P75 U2208 ( .A1(n1583), .A2(\sh_sync_inst/intadd_0/A[11] ), 
        .A3(n1580), .X(n1768) );
  UDB116SVT24_NR2_0P75 U2209 ( .A1(\sh_sync_inst/intadd_0/A[11] ), .A2(n1576), 
        .X(n1582) );
  UDB116SVT24_NR2_0P75 U2210 ( .A1(n1768), .A2(n1582), .X(n1578) );
  UDB116SVT24_OAI21_0P75 U2211 ( .A1(n1577), .A2(n1767), .B(n1578), .X(n1585)
         );
  UDB116SVT24_NR2_0P75 U2212 ( .A1(n1583), .A2(n1578), .X(n1589) );
  UDB116SVT24_INV_0P75 U2213 ( .A(n1589), .X(n1579) );
  UDB116SVT24_OAOI211_0P75 U2214 ( .A1(n1581), .A2(n1580), .B(n1579), .C(n1768), .X(n1765) );
  UDB116SVT24_ND2_MM_0P75 U2215 ( .A1(n1587), .A2(n1765), .X(n1584) );
  UDB116SVT24_ND2_MM_0P75 U2216 ( .A1(n1585), .A2(n1584), .X(n1593) );
  UDB116SVT24_NR2B_0P75 U2217 ( .A(n1583), .B(n1582), .X(n1588) );
  UDB116SVT24_NR3_0P75 U2218 ( .A1(\sh_sync_inst/intadd_0/A[10] ), .A2(n1588), 
        .A3(n1585), .X(n1764) );
  UDB116SVT24_ND2B_0P75 U2219 ( .A(n1764), .B(n1584), .X(n1586) );
  UDB116SVT24_ND2B_0P75 U2220 ( .A(n1585), .B(n1586), .X(n1592) );
  UDB116SVT24_OAI21B_1 U2221 ( .A1(n1765), .A2(n1587), .B(n1586), .X(n1602) );
  UDB116SVT24_NR2B_0P75 U2222 ( .A(n1593), .B(n1602), .X(n1590) );
  UDB116SVT24_OAOI211_0P75 U2223 ( .A1(n1589), .A2(n1588), .B(n1592), .C(n1764), .X(n1761) );
  UDB116SVT24_OAI21_0P75 U2224 ( .A1(n1590), .A2(n1761), .B(n1594), .X(n1596)
         );
  UDB116SVT24_NR2_0P75 U2225 ( .A1(n1602), .A2(n1596), .X(n1591) );
  UDB116SVT24_ND2_MM_0P75 U2226 ( .A1(n1590), .A2(n1594), .X(n1760) );
  UDB116SVT24_AOAI211_0P75 U2227 ( .A1(n1593), .A2(n1592), .B(n1591), .C(n1760), .X(n1597) );
  UDB116SVT24_OAI21_0P75 U2228 ( .A1(n1761), .A2(n1594), .B(n1596), .X(n1605)
         );
  UDB116SVT24_NR2_0P75 U2229 ( .A1(n1602), .A2(n1605), .X(n1598) );
  UDB116SVT24_ND2_MM_0P75 U2230 ( .A1(n1598), .A2(n884), .X(n1599) );
  UDB116SVT24_AOI21_0P75 U2231 ( .A1(n1597), .A2(n1599), .B(n902), .X(n1595)
         );
  UDB116SVT24_OAI21B_1 U2232 ( .A1(\sh_sync_inst/n187 ), .A2(n1025), .B(n1595), 
        .X(\sh_sync_inst/n317 ) );
  UDB116SVT24_INV_0P75 U2233 ( .A(n1596), .X(n1601) );
  UDB116SVT24_INV_0P75 U2234 ( .A(n1597), .X(n1603) );
  UDB116SVT24_OAI21_0P75 U2235 ( .A1(n1603), .A2(n1598), .B(n884), .X(n1604)
         );
  UDB116SVT24_OR2_0P75 U2236 ( .A1(n1605), .A2(n1604), .X(n1614) );
  UDB116SVT24_OAI21_0P75 U2237 ( .A1(n1601), .A2(n991), .B(n1614), .X(n1600)
         );
  UDB116SVT24_AOAI211_0P75 U2238 ( .A1(n991), .A2(n1601), .B(n1600), .C(n1599), 
        .X(n1608) );
  UDB116SVT24_OAI21_0P75 U2239 ( .A1(n885), .A2(n1603), .B(n1604), .X(n1610)
         );
  UDB116SVT24_INV_0P75 U2240 ( .A(n1610), .X(n1618) );
  UDB116SVT24_ND2_MM_0P75 U2241 ( .A1(n1605), .A2(n1604), .X(n1613) );
  UDB116SVT24_ND3_0P75 U2242 ( .A1(n1618), .A2(n1606), .A3(n1613), .X(n1612)
         );
  UDB116SVT24_AOI21_0P75 U2243 ( .A1(n1608), .A2(n1612), .B(n901), .X(n1607)
         );
  UDB116SVT24_OAI21B_1 U2244 ( .A1(\sh_sync_inst/n186 ), .A2(n1026), .B(n1607), 
        .X(\sh_sync_inst/n316 ) );
  UDB116SVT24_NR2_0P75 U2245 ( .A1(n1608), .A2(\sh_sync_inst/intadd_0/A[7] ), 
        .X(n1617) );
  UDB116SVT24_NR2B_0P75 U2246 ( .A(n1612), .B(n1617), .X(n1611) );
  UDB116SVT24_AOI21B_0P75 U2247 ( .A1(\sh_sync_inst/intadd_0/A[7] ), .A2(n1608), .B(n1611), .X(n1627) );
  UDB116SVT24_ND3_0P75 U2248 ( .A1(n1618), .A2(n1627), .A3(n1609), .X(n1619)
         );
  UDB116SVT24_NR2_0P75 U2249 ( .A1(n1611), .A2(n1610), .X(n1616) );
  UDB116SVT24_AOAI211_0P75 U2250 ( .A1(n1614), .A2(n1613), .B(n1616), .C(n1612), .X(n1623) );
  UDB116SVT24_AOI21_0P75 U2251 ( .A1(n1619), .A2(n1623), .B(n902), .X(n1615)
         );
  UDB116SVT24_OAI21B_1 U2252 ( .A1(\sh_sync_inst/n185 ), .A2(n1027), .B(n1615), 
        .X(\sh_sync_inst/n315 ) );
  UDB116SVT24_OAI21B_1 U2253 ( .A1(n1618), .A2(n1617), .B(n1616), .X(n1621) );
  UDB116SVT24_INV_0P75 U2254 ( .A(n1619), .X(n1620) );
  UDB116SVT24_NR2_0P75 U2255 ( .A1(\sh_sync_inst/intadd_0/A[6] ), .A2(n1623), 
        .X(n1626) );
  UDB116SVT24_OR2_0P75 U2256 ( .A1(n1620), .A2(n1626), .X(n1622) );
  UDB116SVT24_ND2_MM_0P75 U2257 ( .A1(n1627), .A2(n1622), .X(n1625) );
  UDB116SVT24_AOI21_0P75 U2258 ( .A1(n1621), .A2(n1625), .B(n1620), .X(n1758)
         );
  UDB116SVT24_AOI21_0P75 U2259 ( .A1(\sh_sync_inst/intadd_0/A[6] ), .A2(n1623), 
        .B(n1622), .X(n1632) );
  UDB116SVT24_AN3B_0P75 U2260 ( .B1(n1627), .B2(n1632), .A(
        \sh_sync_inst/intadd_0/A[5] ), .X(n1757) );
  UDB116SVT24_AN2_1 U2261 ( .A1(n1758), .A2(n1624), .X(n1631) );
  UDB116SVT24_NR2_0P75 U2262 ( .A1(n1757), .A2(n1631), .X(n1628) );
  UDB116SVT24_OAI21_0P75 U2263 ( .A1(n1758), .A2(n1624), .B(n1628), .X(n1634)
         );
  UDB116SVT24_OAI21_0P75 U2264 ( .A1(n1627), .A2(n1626), .B(n1625), .X(n1630)
         );
  UDB116SVT24_NR2B_0P75 U2265 ( .A(n1632), .B(n1628), .X(n1638) );
  UDB116SVT24_INV_0P75 U2266 ( .A(n1638), .X(n1629) );
  UDB116SVT24_AOI21_0P75 U2267 ( .A1(n1630), .A2(n1629), .B(n1757), .X(n1755)
         );
  UDB116SVT24_ND2_MM_0P75 U2268 ( .A1(n1636), .A2(n1755), .X(n1633) );
  UDB116SVT24_ND2_MM_0P75 U2269 ( .A1(n1634), .A2(n1633), .X(n1642) );
  UDB116SVT24_NR2_0P75 U2270 ( .A1(n1632), .A2(n1631), .X(n1637) );
  UDB116SVT24_NR3_0P75 U2271 ( .A1(\sh_sync_inst/intadd_0/A[4] ), .A2(n1637), 
        .A3(n1634), .X(n1754) );
  UDB116SVT24_NR2B_0P75 U2272 ( .A(n1633), .B(n1754), .X(n1635) );
  UDB116SVT24_OR2_0P75 U2273 ( .A1(n1634), .A2(n1635), .X(n1641) );
  UDB116SVT24_OAI21_0P75 U2274 ( .A1(n1755), .A2(n1636), .B(n1635), .X(n1651)
         );
  UDB116SVT24_NR2B_0P75 U2275 ( .A(n1642), .B(n1651), .X(n1639) );
  UDB116SVT24_OAOI211_0P75 U2276 ( .A1(n1638), .A2(n1637), .B(n1641), .C(n1754), .X(n1751) );
  UDB116SVT24_OAI21_0P75 U2277 ( .A1(n1639), .A2(n1751), .B(n1643), .X(n1645)
         );
  UDB116SVT24_NR2_0P75 U2278 ( .A1(n1651), .A2(n1645), .X(n1640) );
  UDB116SVT24_ND2_MM_0P75 U2279 ( .A1(n1639), .A2(n1643), .X(n1750) );
  UDB116SVT24_AOAI211_0P75 U2280 ( .A1(n1642), .A2(n1641), .B(n1640), .C(n1750), .X(n1646) );
  UDB116SVT24_OAI21_0P75 U2281 ( .A1(n1751), .A2(n1643), .B(n1645), .X(n1654)
         );
  UDB116SVT24_NR2_0P75 U2282 ( .A1(n1651), .A2(n1654), .X(n1647) );
  UDB116SVT24_ND2_MM_0P75 U2283 ( .A1(n1647), .A2(n878), .X(n1648) );
  UDB116SVT24_AOI21_0P75 U2284 ( .A1(n1646), .A2(n1648), .B(n901), .X(n1644)
         );
  UDB116SVT24_OAI21B_1 U2285 ( .A1(\sh_sync_inst/n181 ), .A2(n861), .B(n1644), 
        .X(\sh_sync_inst/n311 ) );
  UDB116SVT24_INV_0P75 U2286 ( .A(n1645), .X(n1650) );
  UDB116SVT24_INV_0P75 U2287 ( .A(n1646), .X(n1652) );
  UDB116SVT24_OAI21_0P75 U2288 ( .A1(n1652), .A2(n1647), .B(n878), .X(n1653)
         );
  UDB116SVT24_OR2_0P75 U2289 ( .A1(n1654), .A2(n1653), .X(n1662) );
  UDB116SVT24_OAI21_0P75 U2290 ( .A1(n1650), .A2(n990), .B(n1662), .X(n1649)
         );
  UDB116SVT24_AOAI211_0P75 U2291 ( .A1(n990), .A2(n1650), .B(n1649), .C(n1648), 
        .X(n1657) );
  UDB116SVT24_OAI21_0P75 U2292 ( .A1(n1652), .A2(n879), .B(n1653), .X(n1672)
         );
  UDB116SVT24_ND2_MM_0P75 U2293 ( .A1(n1654), .A2(n1653), .X(n1661) );
  UDB116SVT24_OR3B_0P75 U2294 ( .B1(\sh_sync_inst/intadd_0/A[1] ), .B2(n1672), 
        .A(n1661), .X(n1659) );
  UDB116SVT24_ND2_MM_0P75 U2295 ( .A1(n1657), .A2(n1659), .X(n1656) );
  UDB116SVT24_AO2BB2_0P75 U2296 ( .A1(\sh_sync_inst/n180 ), .A2(n1026), .B1(
        n1656), .B2(n976), .X(\sh_sync_inst/n310 ) );
  UDB116SVT24_INV_0P75 U2297 ( .A(\sh_sync_inst/intadd_0/A[1] ), .X(n1846) );
  UDB116SVT24_ND2_MM_0P75 U2298 ( .A1(n1846), .A2(n1656), .X(n1658) );
  UDB116SVT24_INV_0P75 U2299 ( .A(n1658), .X(n1671) );
  UDB116SVT24_AOI21_0P75 U2300 ( .A1(\sh_sync_inst/intadd_0/A[1] ), .A2(n1657), 
        .B(n1671), .X(n1664) );
  UDB116SVT24_NR2_0P75 U2301 ( .A1(n1672), .A2(n1658), .X(n1660) );
  UDB116SVT24_AOAI211_0P75 U2302 ( .A1(n1662), .A2(n1661), .B(n1660), .C(n1659), .X(n1663) );
  UDB116SVT24_NR2_0P75 U2303 ( .A1(\sh_sync_inst/intadd_0/A[0] ), .A2(n1663), 
        .X(n1665) );
  UDB116SVT24_NR2_0P75 U2304 ( .A1(n1664), .A2(n1665), .X(n1676) );
  UDB116SVT24_INV_0P75 U2305 ( .A(n1663), .X(n1747) );
  UDB116SVT24_INV_0P75 U2306 ( .A(n1664), .X(n1667) );
  UDB116SVT24_NR3_0P75 U2307 ( .A1(\sh_sync_inst/intadd_0/A[0] ), .A2(n1672), 
        .A3(n1667), .X(n1748) );
  UDB116SVT24_NR2_0P75 U2308 ( .A1(n1748), .A2(n1665), .X(n1668) );
  UDB116SVT24_OAI21_0P75 U2309 ( .A1(n1747), .A2(n1666), .B(n1668), .X(n1673)
         );
  UDB116SVT24_NR3_0P75 U2310 ( .A1(\sh_sync_inst/n176 ), .A2(n1676), .A3(n1673), .X(n1745) );
  UDB116SVT24_NR2_0P75 U2311 ( .A1(n1668), .A2(n1667), .X(n1675) );
  UDB116SVT24_OAI21B_1 U2312 ( .A1(n1671), .A2(n851), .B(n1675), .X(n1670) );
  UDB116SVT24_INV_0P75 U2313 ( .A(n1748), .X(n1669) );
  UDB116SVT24_AOAI211_0P75 U2314 ( .A1(n851), .A2(n1671), .B(n1670), .C(n1669), 
        .X(n1743) );
  UDB116SVT24_MAJ3_0P75 U2315 ( .A1(\sh_sync_inst/n177 ), .A2(
        \sh_sync_inst/n176 ), .A3(n1743), .X(n1674) );
  UDB116SVT24_OAI22_0P75 U2316 ( .A1(n1676), .A2(n1675), .B1(n1674), .B2(n1673), .X(n1677) );
  UDB116SVT24_ND2_MM_0P75 U2317 ( .A1(n977), .A2(n1677), .X(n1678) );
  UDB116SVT24_OAI22_0P75 U2318 ( .A1(n1745), .A2(n1678), .B1(
        \sh_sync_inst/n193 ), .B2(n1025), .X(\sh_sync_inst/n323 ) );
  UDB116SVT24_NR2_0P75 U2319 ( .A1(\fsm_sync_inst/state_pos ), .A2(
        \fsm_sync_inst/state_neg ), .X(n1681) );
  UDB116SVT24_OAI22_0P75 U2320 ( .A1(n1680), .A2(n1681), .B1(n2043), .B2(n1679), .X(\shift_buf_inst/n136 ) );
  UDB116SVT24_AOI211_0P75 U2321 ( .A1(\sh_sync_inst/rfin_edge ), .A2(n1682), 
        .B1(n985), .B2(n1681), .X(\sh_sync_inst/N528 ) );
  UDB116SVT24_ND2_MM_0P75 U2322 ( .A1(n1683), .A2(\fsm_sync_inst/sh_en_prev ), 
        .X(n820) );
  UDB116SVT24_AO21_0P75 U2323 ( .A1(counter[0]), .A2(n1961), .B(n1684), .X(
        n844) );
  UDB116SVT24_OAI21_0P75 U2324 ( .A1(n1687), .A2(n973), .B(n877), .X(n1841) );
  UDB116SVT24_AO32_0P75 U2325 ( .A1(n1687), .A2(\sh_sync_inst/n217 ), .A3(n975), .B1(n1686), .B2(n1841), .X(\sh_sync_inst/n347 ) );
  UDB116SVT24_AO32_0P75 U2326 ( .A1(n1691), .A2(\sh_sync_inst/n232 ), .A3(
        n1003), .B1(n1689), .B2(n1688), .X(\sh_sync_inst/n327 ) );
  UDB116SVT24_NR2_0P75 U2327 ( .A1(\sh_sync_inst/n202 ), .A2(n959), .X(n1709)
         );
  UDB116SVT24_AOI21_0P75 U2328 ( .A1(n938), .A2(n882), .B(n881), .X(n1711) );
  UDB116SVT24_OAI21_0P75 U2329 ( .A1(n1694), .A2(n1692), .B(n1711), .X(n1693)
         );
  UDB116SVT24_AO32_0P75 U2330 ( .A1(n1709), .A2(n906), .A3(n1694), .B1(n873), 
        .B2(n1693), .X(\sh_sync_inst/n268 ) );
  UDB116SVT24_NR2_0P75 U2331 ( .A1(n1030), .A2(n1695), .X(n1718) );
  UDB116SVT24_OAI21_0P75 U2332 ( .A1(n1696), .A2(n860), .B(n1726), .X(n1715)
         );
  UDB116SVT24_AO32_0P75 U2333 ( .A1(n1718), .A2(\sh_sync_inst/n153 ), .A3(
        n1721), .B1(n892), .B2(n1715), .X(\sh_sync_inst/n279 ) );
  UDB116SVT24_AO32_0P75 U2334 ( .A1(n1699), .A2(n1010), .A3(n949), .B1(n1698), 
        .B2(n1697), .X(\sh_sync_inst/n273 ) );
  UDB116SVT24_AOI21_0P75 U2335 ( .A1(\sh_sync_inst/intadd_0/B[12] ), .A2(n962), 
        .B(n1700), .X(n1701) );
  UDB116SVT24_OAI32_1 U2336 ( .A1(n870), .A2(n1019), .A3(n1702), .B1(n1789), 
        .B2(n1701), .X(\sh_sync_inst/n255 ) );
  UDB116SVT24_AO22_1 U2337 ( .A1(n1705), .A2(n1704), .B1(n1703), .B2(n907), 
        .X(\sh_sync_inst/n260 ) );
  UDB116SVT24_AOI21B_0P75 U2338 ( .A1(n1016), .A2(n961), .B(n1711), .X(n1708)
         );
  UDB116SVT24_AOI31_0P75 U2339 ( .A1(n969), .A2(n1709), .A3(n1706), .B(n932), 
        .X(n1707) );
  UDB116SVT24_OAI21_0P75 U2340 ( .A1(n969), .A2(n1708), .B(n1707), .X(
        \sh_sync_inst/n269 ) );
  UDB116SVT24_AOI21_0P75 U2341 ( .A1(\sh_sync_inst/n201 ), .A2(n1709), .B(n932), .X(n1710) );
  UDB116SVT24_OAI21_0P75 U2342 ( .A1(\sh_sync_inst/n201 ), .A2(n1711), .B(
        n1710), .X(\sh_sync_inst/n270 ) );
  UDB116SVT24_AOI32_1 U2343 ( .A1(n1714), .A2(n894), .A3(n1713), .B1(
        \sh_sync_inst/n148 ), .B2(n1712), .X(\sh_sync_inst/n274 ) );
  UDB116SVT24_AOI21_0P75 U2344 ( .A1(n948), .A2(\sh_sync_inst/n153 ), .B(n1715), .X(n1716) );
  UDB116SVT24_OAI32_1 U2345 ( .A1(n911), .A2(n1717), .A3(n862), .B1(n912), 
        .B2(n1716), .X(\sh_sync_inst/n278 ) );
  UDB116SVT24_INV_0P75 U2346 ( .A(n1718), .X(n1719) );
  UDB116SVT24_AOI32_1 U2347 ( .A1(n1722), .A2(n1721), .A3(n1720), .B1(
        \sh_sync_inst/n154 ), .B2(n1719), .X(\sh_sync_inst/n280 ) );
  UDB116SVT24_ND3_0P75 U2348 ( .A1(n1727), .A2(n949), .A3(n856), .X(n1725) );
  UDB116SVT24_OAOAI2111_1 U2349 ( .A1(n1029), .A2(n1727), .B(n1726), .C(n856), 
        .D(n1725), .X(\sh_sync_inst/n302 ) );
  UDB116SVT24_AOI21_0P75 U2350 ( .A1(\sh_sync_inst/n207 ), .A2(n926), .B(n1728), .X(n1730) );
  UDB116SVT24_OAI32_1 U2351 ( .A1(n1732), .A2(n994), .A3(n1731), .B1(
        \sh_sync_inst/n206 ), .B2(n1730), .X(\sh_sync_inst/n306 ) );
  UDB116SVT24_AOI32_1 U2352 ( .A1(n1736), .A2(n1735), .A3(n1734), .B1(
        \sh_sync_inst/n246 ), .B2(n1733), .X(\sh_sync_inst/n332 ) );
  UDB116SVT24_AOI21_0P75 U2353 ( .A1(n1006), .A2(\sh_sync_inst/n247 ), .B(
        n1737), .X(n1739) );
  UDB116SVT24_OAI32_1 U2354 ( .A1(n1742), .A2(n1741), .A3(n1740), .B1(
        \sh_sync_inst/n248 ), .B2(n1739), .X(\sh_sync_inst/n334 ) );
  UDB116SVT24_AN2_1 U2355 ( .A1(\sh_sync_inst/N535 ), .A2(\sh_sync_inst/n254 ), 
        .X(\sh_sync_inst/N536 ) );
  UDB116SVT24_INV_0P75 U2356 ( .A(n1743), .X(n1744) );
  UDB116SVT24_OAI21_0P75 U2357 ( .A1(n1745), .A2(n1744), .B(n977), .X(n1746)
         );
  UDB116SVT24_OAI21_0P75 U2358 ( .A1(\sh_sync_inst/n178 ), .A2(n1027), .B(
        n1746), .X(\sh_sync_inst/n308 ) );
  UDB116SVT24_OAI21_0P75 U2359 ( .A1(n1748), .A2(n1747), .B(n977), .X(n1749)
         );
  UDB116SVT24_OAI21_0P75 U2360 ( .A1(\sh_sync_inst/n179 ), .A2(n1024), .B(
        n1749), .X(\sh_sync_inst/n309 ) );
  UDB116SVT24_INV_0P75 U2361 ( .A(n1750), .X(n1752) );
  UDB116SVT24_OAI21_0P75 U2362 ( .A1(n1752), .A2(n1751), .B(n978), .X(n1753)
         );
  UDB116SVT24_OAI21_0P75 U2363 ( .A1(\sh_sync_inst/n182 ), .A2(n1025), .B(
        n1753), .X(\sh_sync_inst/n312 ) );
  UDB116SVT24_OAI21_0P75 U2364 ( .A1(n1755), .A2(n1754), .B(n976), .X(n1756)
         );
  UDB116SVT24_OAI21_0P75 U2365 ( .A1(\sh_sync_inst/n183 ), .A2(n1026), .B(
        n1756), .X(\sh_sync_inst/n313 ) );
  UDB116SVT24_OAI21_0P75 U2366 ( .A1(n1758), .A2(n1757), .B(n977), .X(n1759)
         );
  UDB116SVT24_OAI21_0P75 U2367 ( .A1(\sh_sync_inst/n184 ), .A2(n1027), .B(
        n1759), .X(\sh_sync_inst/n314 ) );
  UDB116SVT24_INV_0P75 U2368 ( .A(n1760), .X(n1762) );
  UDB116SVT24_OAI21_0P75 U2369 ( .A1(n1762), .A2(n1761), .B(n978), .X(n1763)
         );
  UDB116SVT24_OAI21_0P75 U2370 ( .A1(\sh_sync_inst/n188 ), .A2(n1024), .B(
        n1763), .X(\sh_sync_inst/n318 ) );
  UDB116SVT24_OAI21_0P75 U2371 ( .A1(n1765), .A2(n1764), .B(n978), .X(n1766)
         );
  UDB116SVT24_OAI21_0P75 U2372 ( .A1(\sh_sync_inst/n189 ), .A2(n1025), .B(
        n1766), .X(\sh_sync_inst/n319 ) );
  UDB116SVT24_OAI21_0P75 U2373 ( .A1(n1768), .A2(n1767), .B(n976), .X(n1769)
         );
  UDB116SVT24_OAI21_0P75 U2374 ( .A1(\sh_sync_inst/n190 ), .A2(n1026), .B(
        n1769), .X(\sh_sync_inst/n320 ) );
  UDB116SVT24_OAI21_0P75 U2375 ( .A1(n1771), .A2(n1770), .B(n976), .X(n1772)
         );
  UDB116SVT24_OAI21_0P75 U2376 ( .A1(\sh_sync_inst/n191 ), .A2(n1027), .B(
        n1772), .X(\sh_sync_inst/n321 ) );
  UDB116SVT24_AO22_1 U2377 ( .A1(n1777), .A2(n1776), .B1(n1775), .B2(n1774), 
        .X(\sh_sync_inst/n277 ) );
  UDB116SVT24_AO22_1 U2378 ( .A1(n1780), .A2(n1779), .B1(n1778), .B2(n928), 
        .X(\sh_sync_inst/n283 ) );
  UDB116SVT24_AO22_1 U2379 ( .A1(n1783), .A2(n1782), .B1(n1781), .B2(n890), 
        .X(\sh_sync_inst/n285 ) );
  UDB116SVT24_AO22_1 U2380 ( .A1(n1786), .A2(n1785), .B1(n888), .B2(n1784), 
        .X(\sh_sync_inst/n287 ) );
  UDB116SVT24_OAI21_0P75 U2381 ( .A1(n871), .A2(n1788), .B(n1787), .X(n1791)
         );
  UDB116SVT24_AOI21_0P75 U2382 ( .A1(n1792), .A2(n1791), .B(n1028), .X(n1790)
         );
  UDB116SVT24_OAI21_0P75 U2383 ( .A1(n1792), .A2(n1791), .B(n1790), .X(n1793)
         );
  UDB116SVT24_OAI21_0P75 U2384 ( .A1(n998), .A2(n1799), .B(n1793), .X(
        \sh_sync_inst/n288 ) );
  UDB116SVT24_AOI21_0P75 U2385 ( .A1(\sh_sync_inst/intadd_0/B[11] ), .A2(n1000), .B(n1794), .X(n1797) );
  UDB116SVT24_AOI21_0P75 U2386 ( .A1(n1797), .A2(n1796), .B(n862), .X(n1795)
         );
  UDB116SVT24_OAI21_0P75 U2387 ( .A1(n1797), .A2(n1796), .B(n1795), .X(n1798)
         );
  UDB116SVT24_OAI21_0P75 U2388 ( .A1(n1000), .A2(n1799), .B(n1798), .X(
        \sh_sync_inst/n290 ) );
  UDB116SVT24_INV_0P75 U2389 ( .A(n1800), .X(n1852) );
  UDB116SVT24_AOI21_0P75 U2390 ( .A1(n908), .A2(\sh_sync_inst/intadd_0/A[9] ), 
        .B(n1801), .X(n1804) );
  UDB116SVT24_AOI21_0P75 U2391 ( .A1(n1804), .A2(n1803), .B(n1031), .X(n1802)
         );
  UDB116SVT24_OAI21_0P75 U2392 ( .A1(n1804), .A2(n1803), .B(n1802), .X(n1805)
         );
  UDB116SVT24_OAI21_0P75 U2393 ( .A1(\sh_sync_inst/intadd_0/A[9] ), .A2(n1852), 
        .B(n1805), .X(\sh_sync_inst/n292 ) );
  UDB116SVT24_AOI21_0P75 U2394 ( .A1(n1422), .A2(n997), .B(n1806), .X(n1809)
         );
  UDB116SVT24_AOI21_0P75 U2395 ( .A1(n1809), .A2(n1808), .B(n1031), .X(n1807)
         );
  UDB116SVT24_OAI21_0P75 U2396 ( .A1(n1809), .A2(n1808), .B(n1807), .X(n1810)
         );
  UDB116SVT24_OAI21_0P75 U2397 ( .A1(n997), .A2(n1811), .B(n1810), .X(
        \sh_sync_inst/n294 ) );
  UDB116SVT24_AOI21_0P75 U2398 ( .A1(n954), .A2(\sh_sync_inst/intadd_0/A[5] ), 
        .B(n1812), .X(n1815) );
  UDB116SVT24_AOI21_0P75 U2399 ( .A1(n1815), .A2(n1814), .B(n1029), .X(n1813)
         );
  UDB116SVT24_OAI21_0P75 U2400 ( .A1(n1815), .A2(n1814), .B(n1813), .X(n1816)
         );
  UDB116SVT24_OAI21_0P75 U2401 ( .A1(\sh_sync_inst/intadd_0/A[5] ), .A2(n1852), 
        .B(n1816), .X(\sh_sync_inst/n296 ) );
  UDB116SVT24_AOI21_0P75 U2402 ( .A1(n1819), .A2(n882), .B(n880), .X(n1818) );
  UDB116SVT24_OAI32_1 U2403 ( .A1(n1820), .A2(n959), .A3(n1819), .B1(n952), 
        .B2(n1818), .X(\sh_sync_inst/n267 ) );
  UDB116SVT24_ND2_MM_0P75 U2404 ( .A1(n961), .A2(n1821), .X(n1822) );
  UDB116SVT24_AOI32_1 U2405 ( .A1(n1825), .A2(n1824), .A3(n1823), .B1(n1008), 
        .B2(n1822), .X(\sh_sync_inst/n265 ) );
  UDB116SVT24_AOI21_0P75 U2406 ( .A1(n938), .A2(n963), .B(n933), .X(n1827) );
  UDB116SVT24_OAI21_0P75 U2407 ( .A1(\sh_sync_inst/n202 ), .A2(n1817), .B(
        n1827), .X(\sh_sync_inst/n271 ) );
  UDB116SVT24_AOI21_0P75 U2408 ( .A1(n955), .A2(n882), .B(n1829), .X(n1835) );
  UDB116SVT24_NR2_0P75 U2409 ( .A1(n960), .A2(n1831), .X(n1833) );
  UDB116SVT24_AOI31_0P75 U2410 ( .A1(n1013), .A2(n1833), .A3(n953), .B(n933), 
        .X(n1834) );
  UDB116SVT24_OAI21_0P75 U2411 ( .A1(n1013), .A2(n1835), .B(n1834), .X(
        \sh_sync_inst/n263 ) );
  UDB116SVT24_AOI21_0P75 U2412 ( .A1(n965), .A2(\sh_sync_inst/intadd_0/A[3] ), 
        .B(n1836), .X(n1839) );
  UDB116SVT24_AOI21_0P75 U2413 ( .A1(n1839), .A2(n1838), .B(n1030), .X(n1837)
         );
  UDB116SVT24_OAI21_0P75 U2414 ( .A1(n1839), .A2(n1838), .B(n1837), .X(n1840)
         );
  UDB116SVT24_OAI21_0P75 U2415 ( .A1(\sh_sync_inst/intadd_0/A[3] ), .A2(n1852), 
        .B(n1840), .X(\sh_sync_inst/n298 ) );
  UDB116SVT24_INV_0P75 U2416 ( .A(\sh_sync_inst/n216 ), .X(n1845) );
  UDB116SVT24_AOI21_0P75 U2417 ( .A1(\sh_sync_inst/n217 ), .A2(n974), .B(n1841), .X(n1842) );
  UDB116SVT24_OAI32_1 U2418 ( .A1(n1845), .A2(n1844), .A3(n972), .B1(
        \sh_sync_inst/n216 ), .B2(n1842), .X(\sh_sync_inst/n346 ) );
  UDB116SVT24_AOI22_1 U2419 ( .A1(n999), .A2(n905), .B1(
        \sh_sync_inst/intadd_0/B[1] ), .B2(n1846), .X(n1849) );
  UDB116SVT24_AOI21_0P75 U2420 ( .A1(n1850), .A2(n1849), .B(n1030), .X(n1848)
         );
  UDB116SVT24_OAI21_0P75 U2421 ( .A1(n1850), .A2(n1849), .B(n1848), .X(n1851)
         );
  UDB116SVT24_OAI21_0P75 U2422 ( .A1(n999), .A2(n1852), .B(n1851), .X(
        \sh_sync_inst/n300 ) );
  UDB116SVT24_OA22_1 U2423 ( .A1(n1855), .A2(n1854), .B1(n1853), .B2(
        \sh_sync_inst/n213 ), .X(\sh_sync_inst/n343 ) );
  UDB116SVT24_INV_0P75 U2424 ( .A(\sh_sync_inst/n214 ), .X(n1859) );
  UDB116SVT24_AOI21_0P75 U2425 ( .A1(\sh_sync_inst/n215 ), .A2(n1843), .B(
        n1856), .X(n1857) );
  UDB116SVT24_OAI32_1 U2426 ( .A1(n1859), .A2(n1001), .A3(n1858), .B1(
        \sh_sync_inst/n214 ), .B2(n1857), .X(\sh_sync_inst/n344 ) );
  UDB116SVT24_INV_0P75 U2427 ( .A(\sh_sync_inst/n218 ), .X(n1864) );
  UDB116SVT24_AOI21B_0P75 U2428 ( .A1(n975), .A2(\sh_sync_inst/n219 ), .B(
        n1860), .X(n1862) );
  UDB116SVT24_OAI32_1 U2429 ( .A1(n1864), .A2(\sh_sync_inst/n219 ), .A3(n1863), 
        .B1(\sh_sync_inst/n218 ), .B2(n1862), .X(\sh_sync_inst/n348 ) );
  UDB116SVT24_AO22_1 U2430 ( .A1(n1868), .A2(n1867), .B1(n1866), .B2(n1865), 
        .X(\sh_sync_inst/n351 ) );
  UDB116SVT24_OAI21_0P75 U2431 ( .A1(n1871), .A2(n1870), .B(n1869), .X(n1873)
         );
  UDB116SVT24_AOI21_0P75 U2432 ( .A1(n1874), .A2(n1873), .B(n1872), .X(n1876)
         );
  UDB116SVT24_OAI21_0P75 U2433 ( .A1(n931), .A2(n1876), .B(n1875), .X(
        \sh_sync_inst/N32 ) );
  UDB116SVT24_OAI21_0P75 U2434 ( .A1(n982), .A2(n1878), .B(n1877), .X(
        \sh_sync_inst/N31 ) );
  UDB116SVT24_OAI22_0P75 U2435 ( .A1(\sh_sync_inst/n194 ), .A2(n1901), .B1(
        n1880), .B2(n1898), .X(\shift_buf_inst/n82 ) );
  UDB116SVT24_AOI22_1 U2436 ( .A1(n1884), .A2(\pkt_reg_inst/pkt_reg [55]), 
        .B1(n1950), .B2(\pkt_reg_inst/pkt_reg [63]), .X(n1881) );
  UDB116SVT24_OAI21_0P75 U2437 ( .A1(n1886), .A2(n1882), .B(n1881), .X(
        \pkt_reg_inst/n40 ) );
  UDB116SVT24_BUF_1 U2438 ( .A(n1902), .X(n1889) );
  UDB116SVT24_AOI22_1 U2439 ( .A1(n1884), .A2(\pkt_reg_inst/pkt_reg [54]), 
        .B1(n1889), .B2(\pkt_reg_inst/pkt_reg [62]), .X(n1883) );
  UDB116SVT24_OAI21_0P75 U2440 ( .A1(n1886), .A2(n2014), .B(n1883), .X(
        \pkt_reg_inst/n41 ) );
  UDB116SVT24_AOI22_1 U2441 ( .A1(n1884), .A2(\pkt_reg_inst/pkt_reg [52]), 
        .B1(n1889), .B2(\pkt_reg_inst/pkt_reg [60]), .X(n1885) );
  UDB116SVT24_OAI21_0P75 U2442 ( .A1(n1886), .A2(n2016), .B(n1885), .X(
        \pkt_reg_inst/n43 ) );
  UDB116SVT24_INV_0P75 U2443 ( .A(n1907), .X(n1896) );
  UDB116SVT24_BUF_1 U2444 ( .A(n1887), .X(n1893) );
  UDB116SVT24_AOI22_1 U2445 ( .A1(n1893), .A2(\pkt_reg_inst/pkt_reg [51]), 
        .B1(n1889), .B2(\pkt_reg_inst/pkt_reg [59]), .X(n1888) );
  UDB116SVT24_OAI21_0P75 U2446 ( .A1(n1896), .A2(n2017), .B(n1888), .X(
        \pkt_reg_inst/n44 ) );
  UDB116SVT24_AOI22_1 U2447 ( .A1(n1893), .A2(\pkt_reg_inst/pkt_reg [50]), 
        .B1(n1889), .B2(\pkt_reg_inst/pkt_reg [58]), .X(n1890) );
  UDB116SVT24_OAI21_0P75 U2448 ( .A1(n1896), .A2(n847), .B(n1890), .X(
        \pkt_reg_inst/n45 ) );
  UDB116SVT24_BUF_1 U2449 ( .A(n1902), .X(n1899) );
  UDB116SVT24_AOI22_1 U2450 ( .A1(n1893), .A2(\pkt_reg_inst/pkt_reg [49]), 
        .B1(n1899), .B2(\pkt_reg_inst/pkt_reg [57]), .X(n1891) );
  UDB116SVT24_OAI21_0P75 U2451 ( .A1(n1896), .A2(n1892), .B(n1891), .X(
        \pkt_reg_inst/n46 ) );
  UDB116SVT24_AOI22_1 U2452 ( .A1(n1893), .A2(\pkt_reg_inst/pkt_reg [48]), 
        .B1(n1899), .B2(\pkt_reg_inst/pkt_reg [56]), .X(n1894) );
  UDB116SVT24_OAI21_0P75 U2453 ( .A1(n1896), .A2(n1895), .B(n1894), .X(
        \pkt_reg_inst/n47 ) );
  UDB116SVT24_AOI22_1 U2454 ( .A1(n1903), .A2(\pkt_reg_inst/pkt_reg [46]), 
        .B1(n1899), .B2(\pkt_reg_inst/pkt_reg [54]), .X(n1897) );
  UDB116SVT24_OAI21_0P75 U2455 ( .A1(n1906), .A2(n1898), .B(n1897), .X(
        \pkt_reg_inst/n49 ) );
  UDB116SVT24_AOI22_1 U2456 ( .A1(n1903), .A2(\pkt_reg_inst/pkt_reg [45]), 
        .B1(n1899), .B2(\pkt_reg_inst/pkt_reg [53]), .X(n1900) );
  UDB116SVT24_OAI21_0P75 U2457 ( .A1(n1906), .A2(n1901), .B(n1900), .X(
        \pkt_reg_inst/n50 ) );
  UDB116SVT24_BUF_1 U2458 ( .A(n1902), .X(n1913) );
  UDB116SVT24_AOI22_1 U2459 ( .A1(n1903), .A2(\pkt_reg_inst/pkt_reg [44]), 
        .B1(n1913), .B2(\pkt_reg_inst/pkt_reg [52]), .X(n1904) );
  UDB116SVT24_OAI21_0P75 U2460 ( .A1(n1906), .A2(n1905), .B(n1904), .X(
        \pkt_reg_inst/n51 ) );
  UDB116SVT24_INV_0P75 U2461 ( .A(n1907), .X(n1919) );
  UDB116SVT24_BUF_1 U2462 ( .A(n1908), .X(n1916) );
  UDB116SVT24_AOI22_1 U2463 ( .A1(n1916), .A2(\pkt_reg_inst/pkt_reg [43]), 
        .B1(n1913), .B2(\pkt_reg_inst/pkt_reg [51]), .X(n1909) );
  UDB116SVT24_OAI21_0P75 U2464 ( .A1(n1919), .A2(n1910), .B(n1909), .X(
        \pkt_reg_inst/n52 ) );
  UDB116SVT24_AOI22_1 U2465 ( .A1(n1916), .A2(\pkt_reg_inst/pkt_reg [42]), 
        .B1(n1913), .B2(\pkt_reg_inst/pkt_reg [50]), .X(n1911) );
  UDB116SVT24_OAI21_0P75 U2466 ( .A1(n1919), .A2(n1912), .B(n1911), .X(
        \pkt_reg_inst/n53 ) );
  UDB116SVT24_AOI22_1 U2467 ( .A1(n1916), .A2(\pkt_reg_inst/pkt_reg [41]), 
        .B1(n1913), .B2(\pkt_reg_inst/pkt_reg [49]), .X(n1914) );
  UDB116SVT24_OAI21_0P75 U2468 ( .A1(n1919), .A2(n1915), .B(n1914), .X(
        \pkt_reg_inst/n54 ) );
  UDB116SVT24_BUF_1 U2469 ( .A(n1929), .X(n1924) );
  UDB116SVT24_AOI22_1 U2470 ( .A1(n1916), .A2(\pkt_reg_inst/pkt_reg [40]), 
        .B1(n1924), .B2(\pkt_reg_inst/pkt_reg [48]), .X(n1917) );
  UDB116SVT24_OAI21_0P75 U2471 ( .A1(n1919), .A2(n1918), .B(n1917), .X(
        \pkt_reg_inst/n55 ) );
  UDB116SVT24_AOI22_1 U2472 ( .A1(n1925), .A2(\pkt_reg_inst/pkt_reg [39]), 
        .B1(n1924), .B2(\pkt_reg_inst/pkt_reg [47]), .X(n1920) );
  UDB116SVT24_OAI21_0P75 U2473 ( .A1(n1928), .A2(n1921), .B(n1920), .X(
        \pkt_reg_inst/n56 ) );
  UDB116SVT24_AOI22_1 U2474 ( .A1(n1925), .A2(\pkt_reg_inst/pkt_reg [38]), 
        .B1(n1924), .B2(\pkt_reg_inst/pkt_reg [46]), .X(n1922) );
  UDB116SVT24_OAI21_0P75 U2475 ( .A1(n1928), .A2(n1923), .B(n1922), .X(
        \pkt_reg_inst/n57 ) );
  UDB116SVT24_AOI22_1 U2476 ( .A1(n1925), .A2(\pkt_reg_inst/pkt_reg [37]), 
        .B1(n1924), .B2(\pkt_reg_inst/pkt_reg [45]), .X(n1926) );
  UDB116SVT24_OAI21_0P75 U2477 ( .A1(n1928), .A2(n1927), .B(n1926), .X(
        \pkt_reg_inst/n58 ) );
  UDB116SVT24_BUF_1 U2478 ( .A(n1929), .X(n1938) );
  UDB116SVT24_AOI22_1 U2479 ( .A1(n1930), .A2(\pkt_reg_inst/pkt_reg [32]), 
        .B1(n1938), .B2(\pkt_reg_inst/pkt_reg [40]), .X(n1931) );
  UDB116SVT24_OAI21_0P75 U2480 ( .A1(n1933), .A2(n1932), .B(n1931), .X(
        \pkt_reg_inst/n63 ) );
  UDB116SVT24_AOI22_1 U2481 ( .A1(n1939), .A2(\pkt_reg_inst/pkt_reg [31]), 
        .B1(n1938), .B2(\pkt_reg_inst/pkt_reg [39]), .X(n1934) );
  UDB116SVT24_OAI21_0P75 U2482 ( .A1(n1942), .A2(n1935), .B(n1934), .X(
        \pkt_reg_inst/n64 ) );
  UDB116SVT24_AOI22_1 U2483 ( .A1(n1939), .A2(\pkt_reg_inst/pkt_reg [30]), 
        .B1(n1938), .B2(\pkt_reg_inst/pkt_reg [38]), .X(n1936) );
  UDB116SVT24_OAI21_0P75 U2484 ( .A1(n1942), .A2(n1937), .B(n1936), .X(
        \pkt_reg_inst/n65 ) );
  UDB116SVT24_AOI22_1 U2485 ( .A1(n1939), .A2(\pkt_reg_inst/pkt_reg [29]), 
        .B1(n1938), .B2(\pkt_reg_inst/pkt_reg [37]), .X(n1940) );
  UDB116SVT24_OAI21_0P75 U2486 ( .A1(n1942), .A2(n1941), .B(n1940), .X(
        \pkt_reg_inst/n66 ) );
  UDB116SVT24_AOI22_1 U2487 ( .A1(n1945), .A2(\pkt_reg_inst/pkt_reg [7]), .B1(
        n1944), .B2(\pkt_reg_inst/pkt_reg [15]), .X(n1943) );
  UDB116SVT24_OAI21_0P75 U2488 ( .A1(n1947), .A2(n2039), .B(n1943), .X(
        \pkt_reg_inst/n88 ) );
  UDB116SVT24_AOI22_1 U2489 ( .A1(n1945), .A2(\pkt_reg_inst/pkt_reg [6]), .B1(
        n1944), .B2(\pkt_reg_inst/pkt_reg [14]), .X(n1946) );
  UDB116SVT24_OAI21_0P75 U2490 ( .A1(n1947), .A2(n2040), .B(n1946), .X(
        \pkt_reg_inst/n89 ) );
  UDB116SVT24_AOI22_1 U2491 ( .A1(n1951), .A2(\pkt_reg_inst/pkt_reg [1]), .B1(
        n1950), .B2(\pkt_reg_inst/pkt_reg [9]), .X(n1948) );
  UDB116SVT24_OAI21_0P75 U2492 ( .A1(n1954), .A2(n1949), .B(n1948), .X(
        \pkt_reg_inst/n94 ) );
  UDB116SVT24_AOI22_1 U2493 ( .A1(n1951), .A2(\pkt_reg_inst/pkt_reg [0]), .B1(
        n1950), .B2(\pkt_reg_inst/pkt_reg [8]), .X(n1952) );
  UDB116SVT24_OAI21_0P75 U2494 ( .A1(n1954), .A2(n1953), .B(n1952), .X(
        \pkt_reg_inst/n95 ) );
  UDB116SVT24_AO22_1 U2495 ( .A1(n943), .A2(SPI_IN[0]), .B1(
        \pkt_reg_inst/pkt_reg [56]), .B2(n1004), .X(\pkt_reg_inst/n32 ) );
  UDB116SVT24_AO22_1 U2496 ( .A1(n944), .A2(SPI_IN[1]), .B1(
        \pkt_reg_inst/pkt_reg [57]), .B2(n1005), .X(\pkt_reg_inst/n33 ) );
  UDB116SVT24_AO22_1 U2497 ( .A1(n943), .A2(SPI_IN[2]), .B1(
        \pkt_reg_inst/pkt_reg [58]), .B2(n1004), .X(\pkt_reg_inst/n34 ) );
  UDB116SVT24_AO22_1 U2498 ( .A1(n944), .A2(SPI_IN[5]), .B1(
        \pkt_reg_inst/pkt_reg [61]), .B2(n1005), .X(\pkt_reg_inst/n37 ) );
  UDB116SVT24_AO22_1 U2499 ( .A1(n943), .A2(SPI_IN[3]), .B1(
        \pkt_reg_inst/pkt_reg [59]), .B2(n1004), .X(\pkt_reg_inst/n35 ) );
  UDB116SVT24_AO22_1 U2500 ( .A1(n944), .A2(SPI_IN[7]), .B1(
        \pkt_reg_inst/pkt_reg [63]), .B2(n1005), .X(\pkt_reg_inst/n39 ) );
  UDB116SVT24_AO22_1 U2501 ( .A1(n943), .A2(SPI_IN[4]), .B1(
        \pkt_reg_inst/pkt_reg [60]), .B2(n1004), .X(\pkt_reg_inst/n36 ) );
  UDB116SVT24_AOI21_0P75 U2502 ( .A1(n897), .A2(n1958), .B(n1957), .X(n1962)
         );
  UDB116SVT24_AOAI211_0P75 U2503 ( .A1(counter[2]), .A2(rx_state[2]), .B(n1959), .C(counter[3]), .X(n1960) );
  UDB116SVT24_OAI21_0P75 U2504 ( .A1(n1962), .A2(n1961), .B(n1960), .X(n843)
         );
  UDB116SVT24_OAI21_0P75 U2505 ( .A1(n1977), .A2(n1964), .B(n1963), .X(n1965)
         );
  UDB116SVT24_OAI21_0P75 U2506 ( .A1(n1966), .A2(n971), .B(n1965), .X(n841) );
  UDB116SVT24_OAI21_0P75 U2507 ( .A1(n1969), .A2(n1968), .B(n1967), .X(n836)
         );
  UDB116SVT24_AO22_1 U2508 ( .A1(counter3[0]), .A2(n1972), .B1(n1971), .B2(
        n1970), .X(n830) );
  UDB116SVT24_ND2_MM_0P75 U2509 ( .A1(n1975), .A2(TX_EN), .X(n1973) );
  UDB116SVT24_OAI21_0P75 U2510 ( .A1(n1975), .A2(n1974), .B(n1973), .X(n826)
         );
  UDB116SVT24_AO21B_0P75 U2511 ( .A1(n864), .A2(n1976), .B(SPI_LD), .X(n1978)
         );
  UDB116SVT24_OAI21_0P75 U2512 ( .A1(n1979), .A2(n1021), .B(n1978), .X(n825)
         );
endmodule

