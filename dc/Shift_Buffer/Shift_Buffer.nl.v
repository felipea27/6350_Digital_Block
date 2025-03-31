/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : V-2023.12-SP1
// Date      : Mon Mar 31 14:28:44 2025
/////////////////////////////////////////////////////////////


module Shift_Buffer ( din, clk, rst, dout, pkt_rec, en, pkt_rst );
  output [63:0] dout;
  input din, clk, rst, en, pkt_rst;
  output pkt_rec;
  wire   n69, n70, n121, n122, n123, n124, n125, n129, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179, n180, n181, n182, n183, n184, n185, n186, n187, n188, n189,
         n190, n191, n192, n193, n194, n195, n196, n197, n198, n199, n200,
         n201, n202, n203, n204, n205, n206, n207, n208, n209, n210, n211,
         n212, n213, n214, n215, n216, n217, n218, n219, n220, n221, n222,
         n223, n224, n225, n226, n227, n228, n229, n230, n231, n232, n233,
         n234, n235, n236, n237, n238, n239, n240, n241, n242, n243, n244,
         n245, n246, n247, n248, n249, n250, n251, n252, n253, n254;
  wire   [7:0] sync;

  UDB116SVT24_FDPQ_V2_3 \shift_reg_reg[1]  ( .D(n129), .CK(clk), .Q(dout[1])
         );
  UDB116SVT24_FDPQ_V2_3 \shift_reg_reg[5]  ( .D(n125), .CK(clk), .Q(dout[5])
         );
  UDB116SVT24_FDPQ_V2_3 \shift_reg_reg[6]  ( .D(n124), .CK(clk), .Q(dout[6])
         );
  UDB116SVT24_FDPQ_V2_3 \shift_reg_reg[7]  ( .D(n123), .CK(clk), .Q(dout[7])
         );
  UDB116SVT24_FDPQ_V2_3 \shift_reg_reg[8]  ( .D(n122), .CK(clk), .Q(dout[8])
         );
  UDB116SVT24_FDPQ_V2_3 \shift_reg_reg[9]  ( .D(n121), .CK(clk), .Q(dout[9])
         );
  UDB116SVT24_FDPQ_V2_3 \shift_reg_reg[60]  ( .D(n70), .CK(clk), .Q(dout[60])
         );
  UDB116SVT24_FDPQ_V2_3 \shift_reg_reg[61]  ( .D(n69), .CK(clk), .Q(dout[61])
         );
  UDB116SVT24_FDPQB_2 \sync_reg[7]  ( .D(n252), .CK(clk), .QN(sync[7]) );
  UDB116SVT24_FDPQB_2 \sync_reg[6]  ( .D(n251), .CK(clk), .QN(sync[6]) );
  UDB116SVT24_FDPQB_2 \sync_reg[5]  ( .D(n250), .CK(clk), .QN(sync[5]) );
  UDB116SVT24_FDPQB_2 \sync_reg[4]  ( .D(n249), .CK(clk), .QN(sync[4]) );
  UDB116SVT24_FDPQB_2 \sync_reg[1]  ( .D(n254), .CK(clk), .QN(sync[1]) );
  UDB116SVT24_FDPQB_2 \sync_reg[3]  ( .D(n253), .CK(clk), .QN(sync[3]) );
  UDB116SVT24_FDPQB_2 \sync_reg[0]  ( .D(n247), .CK(clk), .QN(sync[0]) );
  UDB116SVT24_FDPQB_2 pkt_rec_reg ( .D(n134), .CK(clk), .QN(pkt_rec) );
  UDB116SVT24_FDPQB_2 \shift_reg_reg[43]  ( .D(n158), .CK(clk), .QN(dout[43])
         );
  UDB116SVT24_FDPQB_2 \shift_reg_reg[45]  ( .D(n135), .CK(clk), .QN(dout[45])
         );
  UDB116SVT24_FDPQB_2 \shift_reg_reg[37]  ( .D(n185), .CK(clk), .QN(dout[37])
         );
  UDB116SVT24_FDPQB_2 \shift_reg_reg[34]  ( .D(n183), .CK(clk), .QN(dout[34])
         );
  UDB116SVT24_FDPQB_2 \shift_reg_reg[31]  ( .D(n180), .CK(clk), .QN(dout[31])
         );
  UDB116SVT24_FDPQB_2 \shift_reg_reg[27]  ( .D(n170), .CK(clk), .QN(dout[27])
         );
  UDB116SVT24_FDPQB_2 \shift_reg_reg[26]  ( .D(n154), .CK(clk), .QN(dout[26])
         );
  UDB116SVT24_FDPQB_2 \shift_reg_reg[23]  ( .D(n168), .CK(clk), .QN(dout[23])
         );
  UDB116SVT24_FDPQB_2 \shift_reg_reg[21]  ( .D(n172), .CK(clk), .QN(dout[21])
         );
  UDB116SVT24_FDPQB_2 \shift_reg_reg[20]  ( .D(n165), .CK(clk), .QN(dout[20])
         );
  UDB116SVT24_FDPQB_2 \shift_reg_reg[42]  ( .D(n167), .CK(clk), .QN(dout[42])
         );
  UDB116SVT24_FDPQB_2 \shift_reg_reg[41]  ( .D(n174), .CK(clk), .QN(dout[41])
         );
  UDB116SVT24_FDPQB_2 \shift_reg_reg[39]  ( .D(n177), .CK(clk), .QN(dout[39])
         );
  UDB116SVT24_FDPQB_2 \shift_reg_reg[32]  ( .D(n181), .CK(clk), .QN(dout[32])
         );
  UDB116SVT24_FDPQB_2 \shift_reg_reg[28]  ( .D(n171), .CK(clk), .QN(dout[28])
         );
  UDB116SVT24_FDPQB_2 \shift_reg_reg[25]  ( .D(n152), .CK(clk), .QN(dout[25])
         );
  UDB116SVT24_FDPQB_2 \shift_reg_reg[24]  ( .D(n169), .CK(clk), .QN(dout[24])
         );
  UDB116SVT24_FDPQB_2 \shift_reg_reg[22]  ( .D(n173), .CK(clk), .QN(dout[22])
         );
  UDB116SVT24_FDPQB_2 \shift_reg_reg[19]  ( .D(n156), .CK(clk), .QN(dout[19])
         );
  UDB116SVT24_FDPQB_2 \shift_reg_reg[18]  ( .D(n161), .CK(clk), .QN(dout[18])
         );
  UDB116SVT24_FDPQB_2 \shift_reg_reg[17]  ( .D(n163), .CK(clk), .QN(dout[17])
         );
  UDB116SVT24_FDPQB_2 \shift_reg_reg[16]  ( .D(n159), .CK(clk), .QN(dout[16])
         );
  UDB116SVT24_FDPQB_2 \shift_reg_reg[15]  ( .D(n164), .CK(clk), .QN(dout[15])
         );
  UDB116SVT24_FDPQB_2 \shift_reg_reg[14]  ( .D(n157), .CK(clk), .QN(dout[14])
         );
  UDB116SVT24_FDPQB_2 \shift_reg_reg[13]  ( .D(n166), .CK(clk), .QN(dout[13])
         );
  UDB116SVT24_FDPQB_2 \shift_reg_reg[63]  ( .D(n155), .CK(clk), .QN(dout[63])
         );
  UDB116SVT24_FDPQB_2 \shift_reg_reg[55]  ( .D(n153), .CK(clk), .QN(dout[55])
         );
  UDB116SVT24_FDPQB_2 \shift_reg_reg[53]  ( .D(n178), .CK(clk), .QN(dout[53])
         );
  UDB116SVT24_FDPQB_2 \shift_reg_reg[51]  ( .D(n187), .CK(clk), .QN(dout[51])
         );
  UDB116SVT24_FDPQB_2 \shift_reg_reg[50]  ( .D(n136), .CK(clk), .QN(dout[50])
         );
  UDB116SVT24_FDPQB_2 \shift_reg_reg[49]  ( .D(n138), .CK(clk), .QN(dout[49])
         );
  UDB116SVT24_FDPQB_2 \shift_reg_reg[48]  ( .D(n147), .CK(clk), .QN(dout[48])
         );
  UDB116SVT24_FDPQB_2 \shift_reg_reg[47]  ( .D(n148), .CK(clk), .QN(dout[47])
         );
  UDB116SVT24_FDPQB_2 \shift_reg_reg[59]  ( .D(n149), .CK(clk), .QN(dout[59])
         );
  UDB116SVT24_FDPQB_2 \shift_reg_reg[62]  ( .D(n162), .CK(clk), .QN(dout[62])
         );
  UDB116SVT24_FDPQB_2 \shift_reg_reg[0]  ( .D(n150), .CK(clk), .QN(dout[0]) );
  UDB116SVT24_FDPQB_2 \shift_reg_reg[38]  ( .D(n186), .CK(clk), .QN(dout[38])
         );
  UDB116SVT24_FDPQB_2 \shift_reg_reg[36]  ( .D(n145), .CK(clk), .QN(dout[36])
         );
  UDB116SVT24_FDPQB_2 \shift_reg_reg[46]  ( .D(n144), .CK(clk), .QN(dout[46])
         );
  UDB116SVT24_FDPQB_2 \shift_reg_reg[44]  ( .D(n143), .CK(clk), .QN(dout[44])
         );
  UDB116SVT24_FDPQB_2 \shift_reg_reg[33]  ( .D(n146), .CK(clk), .QN(dout[33])
         );
  UDB116SVT24_FDPQB_2 \shift_reg_reg[30]  ( .D(n142), .CK(clk), .QN(dout[30])
         );
  UDB116SVT24_FDPQB_2 \shift_reg_reg[29]  ( .D(n151), .CK(clk), .QN(dout[29])
         );
  UDB116SVT24_FDPQB_2 \shift_reg_reg[4]  ( .D(n141), .CK(clk), .QN(dout[4]) );
  UDB116SVT24_FDPQB_2 \shift_reg_reg[3]  ( .D(n140), .CK(clk), .QN(dout[3]) );
  UDB116SVT24_FDPQB_2 \shift_reg_reg[2]  ( .D(n132), .CK(clk), .QN(dout[2]) );
  UDB116SVT24_FDPQB_2 \shift_reg_reg[58]  ( .D(n139), .CK(clk), .QN(dout[58])
         );
  UDB116SVT24_FDPQB_2 \shift_reg_reg[57]  ( .D(n176), .CK(clk), .QN(dout[57])
         );
  UDB116SVT24_FDPQB_2 \shift_reg_reg[54]  ( .D(n179), .CK(clk), .QN(dout[54])
         );
  UDB116SVT24_FDPQB_2 \shift_reg_reg[52]  ( .D(n188), .CK(clk), .QN(dout[52])
         );
  UDB116SVT24_FDPQB_2 \shift_reg_reg[12]  ( .D(n160), .CK(clk), .QN(dout[12])
         );
  UDB116SVT24_FDPQB_2 \shift_reg_reg[11]  ( .D(n137), .CK(clk), .QN(dout[11])
         );
  UDB116SVT24_FDPQB_1P5 \sync_reg[2]  ( .D(n248), .CK(clk), .QN(sync[2]) );
  UDB116SVT24_FDPQB_1P5 \shift_reg_reg[40]  ( .D(n182), .CK(clk), .QN(dout[40]) );
  UDB116SVT24_FDPQB_1P5 \shift_reg_reg[56]  ( .D(n175), .CK(clk), .QN(dout[56]) );
  UDB116SVT24_FDPQB_1P5 \shift_reg_reg[35]  ( .D(n184), .CK(clk), .QN(dout[35]) );
  UDB116SVT24_FDPQB_1P5 \shift_reg_reg[10]  ( .D(n133), .CK(clk), .QN(dout[10]) );
  UDB116SVT24_NR2B_0P75 U141 ( .A(rst), .B(pkt_rst), .X(n131) );
  UDB116SVT24_AOI22_1 U142 ( .A1(n239), .A2(dout[2]), .B1(n237), .B2(dout[1]), 
        .X(n132) );
  UDB116SVT24_AOI22_1 U143 ( .A1(n243), .A2(dout[10]), .B1(n242), .B2(dout[9]), 
        .X(n133) );
  UDB116SVT24_OA31_1 U144 ( .A1(n230), .A2(n229), .A3(n228), .B(n227), .X(n134) );
  UDB116SVT24_AO22_1 U145 ( .A1(n225), .A2(n222), .B1(n254), .B2(n221), .X(
        n135) );
  UDB116SVT24_AOI22_1 U146 ( .A1(n198), .A2(dout[50]), .B1(n199), .B2(dout[49]), .X(n136) );
  UDB116SVT24_AOI22_1 U147 ( .A1(n241), .A2(dout[11]), .B1(n242), .B2(dout[10]), .X(n137) );
  UDB116SVT24_AOI22_1 U148 ( .A1(n198), .A2(dout[49]), .B1(n201), .B2(dout[48]), .X(n138) );
  UDB116SVT24_AOI22_1 U149 ( .A1(n244), .A2(dout[58]), .B1(n189), .B2(dout[57]), .X(n139) );
  UDB116SVT24_AOI22_1 U150 ( .A1(n239), .A2(dout[3]), .B1(n237), .B2(dout[2]), 
        .X(n140) );
  UDB116SVT24_AOI22_1 U151 ( .A1(n239), .A2(dout[4]), .B1(n237), .B2(dout[3]), 
        .X(n141) );
  UDB116SVT24_AOI22_1 U152 ( .A1(n192), .A2(dout[29]), .B1(n208), .B2(dout[30]), .X(n142) );
  UDB116SVT24_OAI22_0P75 U153 ( .A1(n211), .A2(dout[44]), .B1(n232), .B2(n195), 
        .X(n143) );
  UDB116SVT24_OAI22_0P75 U154 ( .A1(n211), .A2(dout[46]), .B1(n231), .B2(n195), 
        .X(n144) );
  UDB116SVT24_AOI22_1 U155 ( .A1(n245), .A2(dout[35]), .B1(n215), .B2(dout[36]), .X(n145) );
  UDB116SVT24_AOI22_1 U156 ( .A1(n192), .A2(dout[32]), .B1(n219), .B2(dout[33]), .X(n146) );
  UDB116SVT24_AOI22_1 U157 ( .A1(n202), .A2(dout[48]), .B1(n201), .B2(dout[47]), .X(n147) );
  UDB116SVT24_AOI22_1 U158 ( .A1(n202), .A2(dout[47]), .B1(n201), .B2(dout[46]), .X(n148) );
  UDB116SVT24_AOI22_1 U159 ( .A1(n244), .A2(dout[59]), .B1(n199), .B2(dout[58]), .X(n149) );
  UDB116SVT24_AOI22_1 U160 ( .A1(n195), .A2(dout[0]), .B1(n200), .B2(din), .X(
        n150) );
  UDB116SVT24_AOI22_1 U161 ( .A1(n192), .A2(dout[28]), .B1(n208), .B2(dout[29]), .X(n151) );
  UDB116SVT24_AOI22_1 U162 ( .A1(n206), .A2(dout[24]), .B1(n216), .B2(dout[25]), .X(n152) );
  UDB116SVT24_AOI22_1 U163 ( .A1(n246), .A2(dout[55]), .B1(n199), .B2(dout[54]), .X(n153) );
  UDB116SVT24_AOI22_1 U164 ( .A1(n220), .A2(dout[25]), .B1(n216), .B2(dout[26]), .X(n154) );
  UDB116SVT24_AOI22_1 U165 ( .A1(n202), .A2(dout[63]), .B1(n201), .B2(dout[62]), .X(n155) );
  UDB116SVT24_AOI22_1 U166 ( .A1(n206), .A2(dout[18]), .B1(n217), .B2(dout[19]), .X(n156) );
  UDB116SVT24_AOI22_1 U167 ( .A1(n206), .A2(dout[13]), .B1(n204), .B2(dout[14]), .X(n157) );
  UDB116SVT24_AO22_1 U168 ( .A1(n225), .A2(n224), .B1(n253), .B2(n223), .X(
        n158) );
  UDB116SVT24_AOI22_1 U169 ( .A1(n209), .A2(dout[15]), .B1(n204), .B2(dout[16]), .X(n159) );
  UDB116SVT24_AOI22_1 U170 ( .A1(n241), .A2(dout[12]), .B1(n242), .B2(dout[11]), .X(n160) );
  UDB116SVT24_AOI22_1 U171 ( .A1(n207), .A2(dout[17]), .B1(n217), .B2(dout[18]), .X(n161) );
  UDB116SVT24_AOI22_1 U172 ( .A1(n195), .A2(dout[62]), .B1(n200), .B2(dout[61]), .X(n162) );
  UDB116SVT24_AOI22_1 U173 ( .A1(n207), .A2(dout[16]), .B1(n215), .B2(dout[17]), .X(n163) );
  UDB116SVT24_AOI22_1 U174 ( .A1(n207), .A2(dout[14]), .B1(n204), .B2(dout[15]), .X(n164) );
  UDB116SVT24_AOI22_1 U175 ( .A1(n218), .A2(dout[19]), .B1(n225), .B2(dout[20]), .X(n165) );
  UDB116SVT24_AOI22_1 U176 ( .A1(n209), .A2(dout[12]), .B1(n215), .B2(dout[13]), .X(n166) );
  UDB116SVT24_OAI22_0P75 U177 ( .A1(n233), .A2(n212), .B1(n211), .B2(dout[42]), 
        .X(n167) );
  UDB116SVT24_AOI22_1 U178 ( .A1(n220), .A2(dout[22]), .B1(n215), .B2(dout[23]), .X(n168) );
  UDB116SVT24_AOI22_1 U179 ( .A1(n206), .A2(dout[23]), .B1(n216), .B2(dout[24]), .X(n169) );
  UDB116SVT24_AOI22_1 U180 ( .A1(n220), .A2(dout[26]), .B1(n217), .B2(dout[27]), .X(n170) );
  UDB116SVT24_AOI22_1 U181 ( .A1(n207), .A2(dout[27]), .B1(n208), .B2(dout[28]), .X(n171) );
  UDB116SVT24_AOI22_1 U182 ( .A1(n218), .A2(dout[20]), .B1(n225), .B2(dout[21]), .X(n172) );
  UDB116SVT24_AOI22_1 U183 ( .A1(n209), .A2(dout[21]), .B1(n216), .B2(dout[22]), .X(n173) );
  UDB116SVT24_OAI22_0P75 U184 ( .A1(n234), .A2(n212), .B1(n210), .B2(dout[41]), 
        .X(n174) );
  UDB116SVT24_AOI22_1 U185 ( .A1(n246), .A2(dout[56]), .B1(n200), .B2(dout[55]), .X(n175) );
  UDB116SVT24_AOI22_1 U186 ( .A1(n244), .A2(dout[57]), .B1(n189), .B2(dout[56]), .X(n176) );
  UDB116SVT24_OAI22_0P75 U187 ( .A1(n236), .A2(n212), .B1(n210), .B2(dout[39]), 
        .X(n177) );
  UDB116SVT24_AOI22_1 U188 ( .A1(n202), .A2(dout[53]), .B1(n199), .B2(dout[52]), .X(n178) );
  UDB116SVT24_AOI22_1 U189 ( .A1(n246), .A2(dout[54]), .B1(n189), .B2(dout[53]), .X(n179) );
  UDB116SVT24_AOI22_1 U190 ( .A1(n218), .A2(dout[30]), .B1(n217), .B2(dout[31]), .X(n180) );
  UDB116SVT24_AOI22_1 U191 ( .A1(n209), .A2(dout[31]), .B1(n208), .B2(dout[32]), .X(n181) );
  UDB116SVT24_OAI22_0P75 U192 ( .A1(n235), .A2(n212), .B1(n210), .B2(dout[40]), 
        .X(n182) );
  UDB116SVT24_AOI22_1 U193 ( .A1(n218), .A2(dout[33]), .B1(n219), .B2(dout[34]), .X(n183) );
  UDB116SVT24_AOI22_1 U194 ( .A1(n192), .A2(dout[34]), .B1(n204), .B2(dout[35]), .X(n184) );
  UDB116SVT24_AOI22_1 U195 ( .A1(n220), .A2(dout[36]), .B1(n219), .B2(dout[37]), .X(n185) );
  UDB116SVT24_AOI22_1 U196 ( .A1(n245), .A2(dout[37]), .B1(n219), .B2(dout[38]), .X(n186) );
  UDB116SVT24_AOI22_1 U197 ( .A1(n198), .A2(dout[51]), .B1(n200), .B2(dout[50]), .X(n187) );
  UDB116SVT24_AOI22_1 U198 ( .A1(n198), .A2(dout[52]), .B1(n189), .B2(dout[51]), .X(n188) );
  UDB116SVT24_NR2B_0P75 U199 ( .A(en), .B(n193), .X(n214) );
  UDB116SVT24_BUF_1 U200 ( .A(n221), .X(n223) );
  UDB116SVT24_NR2B_0P75 U201 ( .A(rst), .B(pkt_rst), .X(n226) );
  UDB116SVT24_INV_0P75 U202 ( .A(n226), .X(n193) );
  UDB116SVT24_NR2_0P75 U203 ( .A1(en), .A2(n193), .X(n190) );
  UDB116SVT24_INV_0P75 U204 ( .A(n190), .X(n221) );
  UDB116SVT24_BUF_1 U205 ( .A(n221), .X(n196) );
  UDB116SVT24_INV_0P75 U206 ( .A(n196), .X(n243) );
  UDB116SVT24_BUF_1 U207 ( .A(n214), .X(n197) );
  UDB116SVT24_BUF_1 U208 ( .A(n197), .X(n238) );
  UDB116SVT24_BUF_1 U209 ( .A(n238), .X(n242) );
  UDB116SVT24_INV_0P75 U210 ( .A(n196), .X(n241) );
  UDB116SVT24_INV_0P75 U211 ( .A(n223), .X(n198) );
  UDB116SVT24_BUF_1 U212 ( .A(n214), .X(n203) );
  UDB116SVT24_BUF_1 U213 ( .A(n203), .X(n194) );
  UDB116SVT24_BUF_1 U214 ( .A(n194), .X(n189) );
  UDB116SVT24_INV_0P75 U215 ( .A(n221), .X(n246) );
  UDB116SVT24_BUF_1 U216 ( .A(n223), .X(n211) );
  UDB116SVT24_INV_0P75 U217 ( .A(n211), .X(n244) );
  UDB116SVT24_INV_0P75 U218 ( .A(n196), .X(n239) );
  UDB116SVT24_BUF_1 U219 ( .A(n238), .X(n237) );
  UDB116SVT24_BUF_1 U220 ( .A(n194), .X(n192) );
  UDB116SVT24_INV_0P75 U221 ( .A(n190), .X(n191) );
  UDB116SVT24_BUF_1 U222 ( .A(n191), .X(n213) );
  UDB116SVT24_INV_0P75 U223 ( .A(n213), .X(n208) );
  UDB116SVT24_BUF_1 U224 ( .A(n191), .X(n205) );
  UDB116SVT24_INV_0P75 U225 ( .A(n205), .X(n219) );
  UDB116SVT24_INV_0P75 U226 ( .A(n205), .X(n204) );
  UDB116SVT24_INV_0P75 U227 ( .A(dout[43]), .X(n224) );
  UDB116SVT24_NR2_0P75 U228 ( .A1(n193), .A2(n224), .X(n232) );
  UDB116SVT24_BUF_1 U229 ( .A(n223), .X(n210) );
  UDB116SVT24_INV_0P75 U230 ( .A(n210), .X(n195) );
  UDB116SVT24_INV_0P75 U231 ( .A(dout[45]), .X(n222) );
  UDB116SVT24_NR2_0P75 U232 ( .A1(n193), .A2(n222), .X(n231) );
  UDB116SVT24_BUF_1 U233 ( .A(n194), .X(n245) );
  UDB116SVT24_INV_0P75 U234 ( .A(n205), .X(n215) );
  UDB116SVT24_BUF_1 U235 ( .A(n197), .X(n200) );
  UDB116SVT24_BUF_1 U236 ( .A(n197), .X(n199) );
  UDB116SVT24_INV_0P75 U237 ( .A(n196), .X(n202) );
  UDB116SVT24_BUF_1 U238 ( .A(n197), .X(n201) );
  UDB116SVT24_BUF_1 U239 ( .A(n203), .X(n209) );
  UDB116SVT24_BUF_1 U240 ( .A(n203), .X(n206) );
  UDB116SVT24_BUF_1 U241 ( .A(n203), .X(n207) );
  UDB116SVT24_INV_0P75 U242 ( .A(n205), .X(n217) );
  UDB116SVT24_INV_0P75 U243 ( .A(n213), .X(n216) );
  UDB116SVT24_AN2_1 U244 ( .A1(dout[38]), .A2(n226), .X(n236) );
  UDB116SVT24_INV_0P75 U245 ( .A(n213), .X(n212) );
  UDB116SVT24_AN2_1 U246 ( .A1(dout[39]), .A2(n131), .X(n235) );
  UDB116SVT24_AN2_1 U247 ( .A1(dout[40]), .A2(n226), .X(n234) );
  UDB116SVT24_AN2_1 U248 ( .A1(dout[41]), .A2(n131), .X(n233) );
  UDB116SVT24_BUF_1 U249 ( .A(n214), .X(n218) );
  UDB116SVT24_INV_0P75 U250 ( .A(n213), .X(n225) );
  UDB116SVT24_BUF_1 U251 ( .A(n214), .X(n220) );
  UDB116SVT24_ND2_MM_0P75 U252 ( .A1(n226), .A2(dout[44]), .X(n254) );
  UDB116SVT24_ND2_MM_0P75 U253 ( .A1(n131), .A2(dout[42]), .X(n253) );
  UDB116SVT24_ND3_0P75 U254 ( .A1(sync[4]), .A2(sync[2]), .A3(n131), .X(n230)
         );
  UDB116SVT24_ND2_MM_0P75 U255 ( .A1(sync[0]), .A2(sync[3]), .X(n229) );
  UDB116SVT24_ND4_0P75 U256 ( .A1(sync[1]), .A2(sync[6]), .A3(sync[5]), .A4(
        sync[7]), .X(n228) );
  UDB116SVT24_ND3_0P75 U257 ( .A1(pkt_rst), .A2(rst), .A3(pkt_rec), .X(n227)
         );
  UDB116SVT24_INV_0P75 U258 ( .A(n231), .X(n247) );
  UDB116SVT24_INV_0P75 U259 ( .A(n232), .X(n248) );
  UDB116SVT24_INV_0P75 U260 ( .A(n233), .X(n249) );
  UDB116SVT24_INV_0P75 U261 ( .A(n234), .X(n250) );
  UDB116SVT24_INV_0P75 U262 ( .A(n235), .X(n251) );
  UDB116SVT24_INV_0P75 U263 ( .A(n236), .X(n252) );
  UDB116SVT24_AO22_1 U264 ( .A1(n243), .A2(dout[1]), .B1(dout[0]), .B2(n237), 
        .X(n129) );
  UDB116SVT24_BUF_1 U265 ( .A(n238), .X(n240) );
  UDB116SVT24_AO22_1 U266 ( .A1(n243), .A2(dout[5]), .B1(n240), .B2(dout[4]), 
        .X(n125) );
  UDB116SVT24_AO22_1 U267 ( .A1(n239), .A2(dout[6]), .B1(n240), .B2(dout[5]), 
        .X(n124) );
  UDB116SVT24_AO22_1 U268 ( .A1(n241), .A2(dout[7]), .B1(n240), .B2(dout[6]), 
        .X(n123) );
  UDB116SVT24_AO22_1 U269 ( .A1(n241), .A2(dout[8]), .B1(n240), .B2(dout[7]), 
        .X(n122) );
  UDB116SVT24_AO22_1 U270 ( .A1(n243), .A2(dout[9]), .B1(n242), .B2(dout[8]), 
        .X(n121) );
  UDB116SVT24_AO22_1 U271 ( .A1(n244), .A2(dout[60]), .B1(n245), .B2(dout[59]), 
        .X(n70) );
  UDB116SVT24_AO22_1 U272 ( .A1(n246), .A2(dout[61]), .B1(n245), .B2(dout[60]), 
        .X(n69) );
endmodule

