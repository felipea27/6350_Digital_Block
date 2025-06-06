/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : V-2023.12-SP1
// Date      : Fri Jun  6 13:01:23 2025
/////////////////////////////////////////////////////////////


module CONFIG ( clk, rst, i_CONFIG, spi_rx_data, spi_rx_valid, 
        ext_counter_value_RX, ext_counter_flag_RX, ext_counter_value_TX, 
        ext_counter_flag_TX, osc_freq, arthur );
  input [7:0] spi_rx_data;
  output [15:0] ext_counter_value_RX;
  output [15:0] ext_counter_value_TX;
  output [3:0] osc_freq;
  output [7:0] arthur;
  input clk, rst, i_CONFIG, spi_rx_valid;
  output ext_counter_flag_RX, ext_counter_flag_TX;
  wire   spi_rx_valid_prev, i_CONFIG_sync2, i_CONFIG_sync1, n43, n44, n45, n46,
         n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60,
         n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74,
         n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179, n180, n181, n182, n183, n184, n185, n186, n187, n188, n189,
         n190, n191, n192, n193, n194, n195, n196, n197, n198, n199, n200,
         n201, n202, n203, n204, n205, n206, n207, n208, n209, n210, n211,
         n212, n213, n214;
  wire   [1:0] state;
  wire   [7:0] opcode_q;
  wire   [7:0] pay0;

  UDB116SVT24_FDPRBQ_V2_1 spi_rx_valid_prev_reg ( .D(spi_rx_valid), .CK(clk), 
        .RD(n159), .Q(spi_rx_valid_prev) );
  UDB116SVT24_FDPRBQ_V2_1 i_CONFIG_sync1_reg ( .D(i_CONFIG), .CK(clk), .RD(
        n163), .Q(i_CONFIG_sync1) );
  UDB116SVT24_FDPRBQ_V2_1 i_CONFIG_sync2_reg ( .D(i_CONFIG_sync1), .CK(clk), 
        .RD(n160), .Q(i_CONFIG_sync2) );
  UDB116SVT24_FDPRBQ_V2_1 \state_reg[0]  ( .D(n106), .CK(clk), .RD(n214), .Q(
        state[0]) );
  UDB116SVT24_FDPRBQ_V2_1 \state_reg[1]  ( .D(n105), .CK(clk), .RD(n199), .Q(
        state[1]) );
  UDB116SVT24_FDPRBQ_V2_1 \pay0_reg[0]  ( .D(n92), .CK(clk), .RD(n199), .Q(
        pay0[0]) );
  UDB116SVT24_FDPRBQ_V2_1 \pay0_reg[7]  ( .D(n91), .CK(clk), .RD(n199), .Q(
        pay0[7]) );
  UDB116SVT24_FDPRBQ_V2_1 \pay0_reg[6]  ( .D(n90), .CK(clk), .RD(n199), .Q(
        pay0[6]) );
  UDB116SVT24_FDPRBQ_V2_1 \pay0_reg[5]  ( .D(n89), .CK(clk), .RD(n200), .Q(
        pay0[5]) );
  UDB116SVT24_FDPRBQ_V2_1 \pay0_reg[4]  ( .D(n88), .CK(clk), .RD(n200), .Q(
        pay0[4]) );
  UDB116SVT24_FDPRBQ_V2_1 \pay0_reg[3]  ( .D(n87), .CK(clk), .RD(n200), .Q(
        pay0[3]) );
  UDB116SVT24_FDPRBQ_V2_1 \pay0_reg[2]  ( .D(n86), .CK(clk), .RD(n200), .Q(
        pay0[2]) );
  UDB116SVT24_FDPRBQ_V2_1 \pay0_reg[1]  ( .D(n85), .CK(clk), .RD(n201), .Q(
        pay0[1]) );
  UDB116SVT24_FDPRBQ_V2_1 \opcode_q_reg[0]  ( .D(n82), .CK(clk), .RD(n201), 
        .Q(opcode_q[0]) );
  UDB116SVT24_FDPRBQ_V2_1 \opcode_q_reg[7]  ( .D(n81), .CK(clk), .RD(n201), 
        .Q(opcode_q[7]) );
  UDB116SVT24_FDPRBQ_V2_1 \opcode_q_reg[6]  ( .D(n80), .CK(clk), .RD(n201), 
        .Q(opcode_q[6]) );
  UDB116SVT24_FDPRBQ_V2_1 \opcode_q_reg[5]  ( .D(n79), .CK(clk), .RD(n202), 
        .Q(opcode_q[5]) );
  UDB116SVT24_FDPRBQ_V2_1 \opcode_q_reg[4]  ( .D(n78), .CK(clk), .RD(n202), 
        .Q(opcode_q[4]) );
  UDB116SVT24_FDPRBQ_V2_1 \opcode_q_reg[3]  ( .D(n77), .CK(clk), .RD(n202), 
        .Q(opcode_q[3]) );
  UDB116SVT24_FDPRBQ_V2_1 \opcode_q_reg[2]  ( .D(n76), .CK(clk), .RD(n202), 
        .Q(opcode_q[2]) );
  UDB116SVT24_FDPRBQ_V2_1 \opcode_q_reg[1]  ( .D(n75), .CK(clk), .RD(n203), 
        .Q(opcode_q[1]) );
  UDB116SVT24_FDPRBQ_V2_1 \arthur_reg[0]  ( .D(n104), .CK(clk), .RD(n203), .Q(
        arthur[0]) );
  UDB116SVT24_FDPRBQ_V2_1 \arthur_reg[7]  ( .D(n103), .CK(clk), .RD(n203), .Q(
        arthur[7]) );
  UDB116SVT24_FDPRBQ_V2_1 \arthur_reg[6]  ( .D(n102), .CK(clk), .RD(n203), .Q(
        arthur[6]) );
  UDB116SVT24_FDPRBQ_V2_1 \arthur_reg[5]  ( .D(n101), .CK(clk), .RD(n204), .Q(
        arthur[5]) );
  UDB116SVT24_FDPRBQ_V2_1 \arthur_reg[4]  ( .D(n100), .CK(clk), .RD(n204), .Q(
        arthur[4]) );
  UDB116SVT24_FDPRBQ_V2_1 \arthur_reg[3]  ( .D(n99), .CK(clk), .RD(n204), .Q(
        arthur[3]) );
  UDB116SVT24_FDPRBQ_V2_1 \arthur_reg[2]  ( .D(n98), .CK(clk), .RD(n204), .Q(
        arthur[2]) );
  UDB116SVT24_FDPRBQ_V2_1 \arthur_reg[1]  ( .D(n97), .CK(clk), .RD(n205), .Q(
        arthur[1]) );
  UDB116SVT24_FDPRBQ_V2_1 \osc_freq_reg[0]  ( .D(n96), .CK(clk), .RD(n205), 
        .Q(osc_freq[0]) );
  UDB116SVT24_FDPRBQ_V2_1 \osc_freq_reg[3]  ( .D(n95), .CK(clk), .RD(n205), 
        .Q(osc_freq[3]) );
  UDB116SVT24_FDPRBQ_V2_1 \osc_freq_reg[2]  ( .D(n94), .CK(clk), .RD(n205), 
        .Q(osc_freq[2]) );
  UDB116SVT24_FDPRBQ_V2_1 \osc_freq_reg[1]  ( .D(n93), .CK(clk), .RD(n206), 
        .Q(osc_freq[1]) );
  UDB116SVT24_FDPRBQ_V2_1 ext_counter_flag_TX_reg ( .D(n83), .CK(clk), .RD(
        n206), .Q(ext_counter_flag_TX) );
  UDB116SVT24_FDPRBQ_V2_1 \ext_counter_value_TX_reg[0]  ( .D(n74), .CK(clk), 
        .RD(n206), .Q(ext_counter_value_TX[0]) );
  UDB116SVT24_FDPRBQ_V2_1 \ext_counter_value_TX_reg[15]  ( .D(n73), .CK(clk), 
        .RD(n206), .Q(ext_counter_value_TX[15]) );
  UDB116SVT24_FDPRBQ_V2_1 \ext_counter_value_TX_reg[14]  ( .D(n72), .CK(clk), 
        .RD(n207), .Q(ext_counter_value_TX[14]) );
  UDB116SVT24_FDPRBQ_V2_1 \ext_counter_value_TX_reg[13]  ( .D(n71), .CK(clk), 
        .RD(n207), .Q(ext_counter_value_TX[13]) );
  UDB116SVT24_FDPRBQ_V2_1 \ext_counter_value_TX_reg[12]  ( .D(n70), .CK(clk), 
        .RD(n207), .Q(ext_counter_value_TX[12]) );
  UDB116SVT24_FDPRBQ_V2_1 \ext_counter_value_TX_reg[11]  ( .D(n69), .CK(clk), 
        .RD(n207), .Q(ext_counter_value_TX[11]) );
  UDB116SVT24_FDPRBQ_V2_1 \ext_counter_value_TX_reg[10]  ( .D(n68), .CK(clk), 
        .RD(n208), .Q(ext_counter_value_TX[10]) );
  UDB116SVT24_FDPRBQ_V2_1 \ext_counter_value_TX_reg[9]  ( .D(n67), .CK(clk), 
        .RD(n208), .Q(ext_counter_value_TX[9]) );
  UDB116SVT24_FDPRBQ_V2_1 \ext_counter_value_TX_reg[8]  ( .D(n66), .CK(clk), 
        .RD(n208), .Q(ext_counter_value_TX[8]) );
  UDB116SVT24_FDPRBQ_V2_1 \ext_counter_value_TX_reg[7]  ( .D(n65), .CK(clk), 
        .RD(n208), .Q(ext_counter_value_TX[7]) );
  UDB116SVT24_FDPRBQ_V2_1 \ext_counter_value_TX_reg[6]  ( .D(n64), .CK(clk), 
        .RD(n209), .Q(ext_counter_value_TX[6]) );
  UDB116SVT24_FDPRBQ_V2_1 \ext_counter_value_TX_reg[5]  ( .D(n63), .CK(clk), 
        .RD(n209), .Q(ext_counter_value_TX[5]) );
  UDB116SVT24_FDPRBQ_V2_1 \ext_counter_value_TX_reg[4]  ( .D(n62), .CK(clk), 
        .RD(n209), .Q(ext_counter_value_TX[4]) );
  UDB116SVT24_FDPRBQ_V2_1 \ext_counter_value_TX_reg[3]  ( .D(n61), .CK(clk), 
        .RD(n209), .Q(ext_counter_value_TX[3]) );
  UDB116SVT24_FDPRBQ_V2_1 \ext_counter_value_TX_reg[2]  ( .D(n60), .CK(clk), 
        .RD(n210), .Q(ext_counter_value_TX[2]) );
  UDB116SVT24_FDPRBQ_V2_1 \ext_counter_value_TX_reg[1]  ( .D(n59), .CK(clk), 
        .RD(n210), .Q(ext_counter_value_TX[1]) );
  UDB116SVT24_FDPRBQ_V2_1 ext_counter_flag_RX_reg ( .D(n84), .CK(clk), .RD(
        n210), .Q(ext_counter_flag_RX) );
  UDB116SVT24_FDPRBQ_V2_1 \ext_counter_value_RX_reg[0]  ( .D(n58), .CK(clk), 
        .RD(n210), .Q(ext_counter_value_RX[0]) );
  UDB116SVT24_FDPRBQ_V2_1 \ext_counter_value_RX_reg[15]  ( .D(n57), .CK(clk), 
        .RD(n211), .Q(ext_counter_value_RX[15]) );
  UDB116SVT24_FDPRBQ_V2_1 \ext_counter_value_RX_reg[14]  ( .D(n56), .CK(clk), 
        .RD(n211), .Q(ext_counter_value_RX[14]) );
  UDB116SVT24_FDPRBQ_V2_1 \ext_counter_value_RX_reg[13]  ( .D(n55), .CK(clk), 
        .RD(n211), .Q(ext_counter_value_RX[13]) );
  UDB116SVT24_FDPRBQ_V2_1 \ext_counter_value_RX_reg[12]  ( .D(n54), .CK(clk), 
        .RD(n211), .Q(ext_counter_value_RX[12]) );
  UDB116SVT24_FDPRBQ_V2_1 \ext_counter_value_RX_reg[11]  ( .D(n53), .CK(clk), 
        .RD(n212), .Q(ext_counter_value_RX[11]) );
  UDB116SVT24_FDPRBQ_V2_1 \ext_counter_value_RX_reg[10]  ( .D(n52), .CK(clk), 
        .RD(n212), .Q(ext_counter_value_RX[10]) );
  UDB116SVT24_FDPRBQ_V2_1 \ext_counter_value_RX_reg[9]  ( .D(n51), .CK(clk), 
        .RD(n212), .Q(ext_counter_value_RX[9]) );
  UDB116SVT24_FDPRBQ_V2_1 \ext_counter_value_RX_reg[8]  ( .D(n50), .CK(clk), 
        .RD(n212), .Q(ext_counter_value_RX[8]) );
  UDB116SVT24_FDPRBQ_V2_1 \ext_counter_value_RX_reg[7]  ( .D(n49), .CK(clk), 
        .RD(n213), .Q(ext_counter_value_RX[7]) );
  UDB116SVT24_FDPRBQ_V2_1 \ext_counter_value_RX_reg[6]  ( .D(n48), .CK(clk), 
        .RD(n213), .Q(ext_counter_value_RX[6]) );
  UDB116SVT24_FDPRBQ_V2_1 \ext_counter_value_RX_reg[5]  ( .D(n47), .CK(clk), 
        .RD(n213), .Q(ext_counter_value_RX[5]) );
  UDB116SVT24_FDPRBQ_V2_1 \ext_counter_value_RX_reg[4]  ( .D(n46), .CK(clk), 
        .RD(n213), .Q(ext_counter_value_RX[4]) );
  UDB116SVT24_FDPRBQ_V2_1 \ext_counter_value_RX_reg[3]  ( .D(n45), .CK(clk), 
        .RD(n214), .Q(ext_counter_value_RX[3]) );
  UDB116SVT24_FDPRBQ_V2_1 \ext_counter_value_RX_reg[2]  ( .D(n44), .CK(clk), 
        .RD(n214), .Q(ext_counter_value_RX[2]) );
  UDB116SVT24_FDPRBQ_V2_1 \ext_counter_value_RX_reg[1]  ( .D(n43), .CK(clk), 
        .RD(n214), .Q(ext_counter_value_RX[1]) );
  UDB116SVT24_OR2_0P75 U109 ( .A1(n171), .A2(n172), .X(n107) );
  UDB116SVT24_INV_0P75 U110 ( .A(n156), .X(n108) );
  UDB116SVT24_INV_0P75 U111 ( .A(n108), .X(n109) );
  UDB116SVT24_INV_0P75 U112 ( .A(state[0]), .X(n110) );
  UDB116SVT24_INV_0P75 U113 ( .A(n142), .X(n111) );
  UDB116SVT24_INV_0P75 U114 ( .A(n141), .X(n112) );
  UDB116SVT24_INV_0P75 U115 ( .A(n109), .X(n113) );
  UDB116SVT24_INV_0P75 U116 ( .A(n113), .X(n114) );
  UDB116SVT24_INV_0P75 U117 ( .A(n113), .X(n115) );
  UDB116SVT24_INV_0P75 U118 ( .A(state[1]), .X(n116) );
  UDB116SVT24_INV_0P75 U119 ( .A(spi_rx_data[4]), .X(n117) );
  UDB116SVT24_INV_0P75 U120 ( .A(spi_rx_data[0]), .X(n118) );
  UDB116SVT24_INV_0P75 U121 ( .A(n135), .X(n119) );
  UDB116SVT24_INV_0P75 U122 ( .A(n195), .X(n120) );
  UDB116SVT24_INV_0P75 U123 ( .A(spi_rx_data[5]), .X(n121) );
  UDB116SVT24_INV_0P75 U124 ( .A(n121), .X(n122) );
  UDB116SVT24_INV_0P75 U125 ( .A(spi_rx_data[6]), .X(n123) );
  UDB116SVT24_INV_0P75 U126 ( .A(n123), .X(n124) );
  UDB116SVT24_INV_0P75 U127 ( .A(spi_rx_data[7]), .X(n125) );
  UDB116SVT24_INV_0P75 U128 ( .A(n125), .X(n126) );
  UDB116SVT24_INV_0P75 U129 ( .A(spi_rx_data[3]), .X(n127) );
  UDB116SVT24_INV_0P75 U130 ( .A(spi_rx_data[2]), .X(n128) );
  UDB116SVT24_INV_0P75 U131 ( .A(spi_rx_data[2]), .X(n129) );
  UDB116SVT24_INV_0P75 U132 ( .A(spi_rx_data[1]), .X(n130) );
  UDB116SVT24_INV_0P75 U133 ( .A(spi_rx_data[1]), .X(n131) );
  UDB116SVT24_INV_0P75 U134 ( .A(n197), .X(n132) );
  UDB116SVT24_INV_0P75 U135 ( .A(n132), .X(n133) );
  UDB116SVT24_INV_0P75 U136 ( .A(n195), .X(n134) );
  UDB116SVT24_INV_0P75 U137 ( .A(n134), .X(n135) );
  UDB116SVT24_INV_0P75 U138 ( .A(n134), .X(n136) );
  UDB116SVT24_INV_0P75 U139 ( .A(n134), .X(n137) );
  UDB116SVT24_INV_0P75 U140 ( .A(n198), .X(n138) );
  UDB116SVT24_INV_0P75 U141 ( .A(n138), .X(n139) );
  UDB116SVT24_INV_0P75 U142 ( .A(n138), .X(n140) );
  UDB116SVT24_INV_0P75 U143 ( .A(n138), .X(n141) );
  UDB116SVT24_INV_0P75 U144 ( .A(n138), .X(n142) );
  UDB116SVT24_INV_0P75 U145 ( .A(n107), .X(n143) );
  UDB116SVT24_INV_0P75 U146 ( .A(n107), .X(n144) );
  UDB116SVT24_INV_0P75 U147 ( .A(n107), .X(n145) );
  UDB116SVT24_INV_0P75 U148 ( .A(n107), .X(n146) );
  UDB116SVT24_INV_0P75 U149 ( .A(n188), .X(n147) );
  UDB116SVT24_OR3_1 U150 ( .A1(state[0]), .A2(n166), .A3(n116), .X(n189) );
  UDB116SVT24_INV_0P75 U151 ( .A(n189), .X(n148) );
  UDB116SVT24_INV_0P75 U152 ( .A(n189), .X(n149) );
  UDB116SVT24_INV_0P75 U153 ( .A(n189), .X(n150) );
  UDB116SVT24_INV_0P75 U154 ( .A(n189), .X(n151) );
  UDB116SVT24_INV_0P75 U155 ( .A(n198), .X(n152) );
  UDB116SVT24_INV_0P75 U156 ( .A(n140), .X(n153) );
  UDB116SVT24_INV_0P75 U157 ( .A(n139), .X(n154) );
  UDB116SVT24_INV_0P75 U158 ( .A(n198), .X(n155) );
  UDB116SVT24_OR2_0P75 U159 ( .A1(opcode_q[1]), .A2(n172), .X(n196) );
  UDB116SVT24_INV_0P75 U160 ( .A(n196), .X(n156) );
  UDB116SVT24_INV_0P75 U161 ( .A(n196), .X(n157) );
  UDB116SVT24_INV_0P75 U162 ( .A(n196), .X(n158) );
  UDB116SVT24_ND3_0P75 U163 ( .A1(n170), .A2(n171), .A3(n168), .X(n198) );
  UDB116SVT24_INV_0P75 U164 ( .A(opcode_q[1]), .X(n171) );
  UDB116SVT24_BUF_1 U165 ( .A(rst), .X(n159) );
  UDB116SVT24_BUF_1 U166 ( .A(n159), .X(n160) );
  UDB116SVT24_BUF_1 U167 ( .A(n160), .X(n199) );
  UDB116SVT24_BUF_1 U168 ( .A(n160), .X(n200) );
  UDB116SVT24_BUF_1 U169 ( .A(n159), .X(n201) );
  UDB116SVT24_BUF_1 U170 ( .A(rst), .X(n202) );
  UDB116SVT24_BUF_1 U171 ( .A(n159), .X(n203) );
  UDB116SVT24_BUF_1 U172 ( .A(n160), .X(n204) );
  UDB116SVT24_BUF_1 U173 ( .A(rst), .X(n205) );
  UDB116SVT24_BUF_1 U174 ( .A(rst), .X(n162) );
  UDB116SVT24_BUF_1 U175 ( .A(n162), .X(n161) );
  UDB116SVT24_BUF_1 U176 ( .A(n161), .X(n206) );
  UDB116SVT24_BUF_1 U177 ( .A(n161), .X(n207) );
  UDB116SVT24_BUF_1 U178 ( .A(n161), .X(n208) );
  UDB116SVT24_BUF_1 U179 ( .A(n162), .X(n163) );
  UDB116SVT24_BUF_1 U180 ( .A(n163), .X(n214) );
  UDB116SVT24_BUF_1 U181 ( .A(n161), .X(n210) );
  UDB116SVT24_BUF_1 U182 ( .A(n162), .X(n209) );
  UDB116SVT24_BUF_1 U183 ( .A(n163), .X(n212) );
  UDB116SVT24_BUF_1 U184 ( .A(n162), .X(n211) );
  UDB116SVT24_BUF_1 U185 ( .A(n163), .X(n213) );
  UDB116SVT24_INV_0P75 U186 ( .A(spi_rx_valid_prev), .X(n176) );
  UDB116SVT24_ND3_0P75 U187 ( .A1(spi_rx_valid), .A2(i_CONFIG_sync2), .A3(n176), .X(n166) );
  UDB116SVT24_INV_0P75 U188 ( .A(state[1]), .X(n182) );
  UDB116SVT24_OA2BB2_0P75 U189 ( .A1(n149), .A2(n128), .B1(pay0[2]), .B2(n149), 
        .X(n86) );
  UDB116SVT24_INV_0P75 U190 ( .A(spi_rx_data[4]), .X(n175) );
  UDB116SVT24_OA2BB2_0P75 U191 ( .A1(n150), .A2(n175), .B1(pay0[4]), .B2(n150), 
        .X(n88) );
  UDB116SVT24_OA2BB2_0P75 U192 ( .A1(n151), .A2(n131), .B1(pay0[1]), .B2(n151), 
        .X(n85) );
  UDB116SVT24_INV_0P75 U193 ( .A(spi_rx_data[3]), .X(n173) );
  UDB116SVT24_OA2BB2_0P75 U194 ( .A1(n148), .A2(n127), .B1(pay0[3]), .B2(n148), 
        .X(n87) );
  UDB116SVT24_INV_0P75 U195 ( .A(spi_rx_data[0]), .X(n174) );
  UDB116SVT24_OA2BB2_0P75 U196 ( .A1(n149), .A2(n174), .B1(pay0[0]), .B2(n149), 
        .X(n92) );
  UDB116SVT24_INV_0P75 U197 ( .A(state[0]), .X(n193) );
  UDB116SVT24_ND2_MM_0P75 U198 ( .A1(n193), .A2(n116), .X(n180) );
  UDB116SVT24_NR2_0P75 U199 ( .A1(n166), .A2(n180), .X(n195) );
  UDB116SVT24_OA2BB2_0P75 U200 ( .A1(n135), .A2(n117), .B1(opcode_q[4]), .B2(
        n136), .X(n78) );
  UDB116SVT24_OA2BB2_0P75 U201 ( .A1(n136), .A2(n129), .B1(opcode_q[2]), .B2(
        n137), .X(n76) );
  UDB116SVT24_OA2BB2_0P75 U202 ( .A1(n137), .A2(n127), .B1(opcode_q[3]), .B2(
        n135), .X(n77) );
  UDB116SVT24_AOI22_1 U203 ( .A1(n136), .A2(n130), .B1(n171), .B2(n120), .X(
        n75) );
  UDB116SVT24_INV_0P75 U204 ( .A(opcode_q[0]), .X(n168) );
  UDB116SVT24_AOI22_1 U205 ( .A1(n137), .A2(n118), .B1(n168), .B2(n119), .X(
        n82) );
  UDB116SVT24_ND3_0P75 U206 ( .A1(opcode_q[4]), .A2(opcode_q[3]), .A3(n182), 
        .X(n165) );
  UDB116SVT24_ND4_0P75 U207 ( .A1(state[0]), .A2(opcode_q[5]), .A3(opcode_q[7]), .A4(opcode_q[6]), .X(n164) );
  UDB116SVT24_NR4_0P75 U208 ( .A1(opcode_q[2]), .A2(n166), .A3(n165), .A4(n164), .X(n170) );
  UDB116SVT24_ND3_0P75 U209 ( .A1(opcode_q[1]), .A2(n170), .A3(n168), .X(n188)
         );
  UDB116SVT24_INV_0P75 U210 ( .A(n188), .X(n187) );
  UDB116SVT24_OA2BB2_0P75 U211 ( .A1(n147), .A2(n130), .B1(osc_freq[1]), .B2(
        n187), .X(n93) );
  UDB116SVT24_OA2BB2_0P75 U212 ( .A1(n147), .A2(n127), .B1(osc_freq[3]), .B2(
        n187), .X(n95) );
  UDB116SVT24_OA2BB2_0P75 U213 ( .A1(n147), .A2(n128), .B1(osc_freq[2]), .B2(
        n187), .X(n94) );
  UDB116SVT24_NR2_0P75 U214 ( .A1(n173), .A2(n175), .X(n167) );
  UDB116SVT24_ND4_0P75 U215 ( .A1(spi_rx_data[5]), .A2(spi_rx_data[6]), .A3(
        spi_rx_data[7]), .A4(n167), .X(n184) );
  UDB116SVT24_NR4_0P75 U216 ( .A1(spi_rx_data[1]), .A2(n128), .A3(n119), .A4(
        n184), .X(n191) );
  UDB116SVT24_INV_0P75 U217 ( .A(ext_counter_flag_RX), .X(n169) );
  UDB116SVT24_AOAI211_0P75 U218 ( .A1(n191), .A2(n174), .B(n169), .C(n139), 
        .X(n84) );
  UDB116SVT24_ND2_MM_0P75 U219 ( .A1(opcode_q[0]), .A2(n170), .X(n172) );
  UDB116SVT24_OA2BB2_0P75 U220 ( .A1(n144), .A2(n118), .B1(arthur[0]), .B2(
        n144), .X(n104) );
  UDB116SVT24_OA2BB2_0P75 U221 ( .A1(n145), .A2(n173), .B1(arthur[3]), .B2(
        n145), .X(n99) );
  UDB116SVT24_OA2BB2_0P75 U222 ( .A1(n115), .A2(n127), .B1(
        ext_counter_value_TX[3]), .B2(n115), .X(n61) );
  UDB116SVT24_OA2BB2_0P75 U223 ( .A1(n146), .A2(n131), .B1(arthur[1]), .B2(
        n146), .X(n97) );
  UDB116SVT24_OA2BB2_0P75 U224 ( .A1(n143), .A2(n117), .B1(arthur[4]), .B2(
        n143), .X(n100) );
  UDB116SVT24_OA2BB2_0P75 U225 ( .A1(n109), .A2(n130), .B1(
        ext_counter_value_TX[1]), .B2(n115), .X(n59) );
  UDB116SVT24_OA2BB2_0P75 U226 ( .A1(n158), .A2(n129), .B1(
        ext_counter_value_TX[2]), .B2(n158), .X(n60) );
  UDB116SVT24_OA2BB2_0P75 U227 ( .A1(n144), .A2(n128), .B1(arthur[2]), .B2(
        n144), .X(n98) );
  UDB116SVT24_OA2BB2_0P75 U228 ( .A1(n132), .A2(n117), .B1(
        ext_counter_value_TX[4]), .B2(n156), .X(n62) );
  UDB116SVT24_OA2BB2_0P75 U229 ( .A1(n114), .A2(n174), .B1(
        ext_counter_value_TX[0]), .B2(n114), .X(n74) );
  UDB116SVT24_OA2BB2_0P75 U230 ( .A1(n112), .A2(n173), .B1(
        ext_counter_value_RX[3]), .B2(n112), .X(n45) );
  UDB116SVT24_OA2BB2_0P75 U231 ( .A1(n152), .A2(n118), .B1(
        ext_counter_value_RX[0]), .B2(n152), .X(n58) );
  UDB116SVT24_OA2BB2_0P75 U232 ( .A1(n153), .A2(n117), .B1(
        ext_counter_value_RX[4]), .B2(n153), .X(n46) );
  UDB116SVT24_OA2BB2_0P75 U233 ( .A1(n154), .A2(n129), .B1(
        ext_counter_value_RX[2]), .B2(n154), .X(n44) );
  UDB116SVT24_OA2BB2_0P75 U234 ( .A1(n111), .A2(n131), .B1(
        ext_counter_value_RX[1]), .B2(n111), .X(n43) );
  UDB116SVT24_ND2_MM_0P75 U235 ( .A1(n176), .A2(spi_rx_valid), .X(n177) );
  UDB116SVT24_OAI211_0P75 U236 ( .A1(n110), .A2(n116), .B1(i_CONFIG_sync2), 
        .B2(n177), .X(n181) );
  UDB116SVT24_OAI31_1 U237 ( .A1(spi_rx_data[2]), .A2(n130), .A3(n184), .B(
        n182), .X(n178) );
  UDB116SVT24_ND4_0P75 U238 ( .A1(n110), .A2(n181), .A3(i_CONFIG_sync2), .A4(
        n178), .X(n179) );
  UDB116SVT24_OAI21_0P75 U239 ( .A1(n110), .A2(n181), .B(n179), .X(n106) );
  UDB116SVT24_INV_0P75 U240 ( .A(n181), .X(n185) );
  UDB116SVT24_ND4B_1 U241 ( .A(n180), .B1(i_CONFIG_sync2), .B2(n129), .B3(n131), .X(n183) );
  UDB116SVT24_OAI32_1 U242 ( .A1(n185), .A2(n184), .A3(n183), .B1(n116), .B2(
        n181), .X(n105) );
  UDB116SVT24_INV_0P75 U243 ( .A(n143), .X(n186) );
  UDB116SVT24_OA22_1 U244 ( .A1(n186), .A2(n126), .B1(arthur[7]), .B2(n145), 
        .X(n103) );
  UDB116SVT24_OA22_1 U245 ( .A1(n186), .A2(n124), .B1(arthur[6]), .B2(n146), 
        .X(n102) );
  UDB116SVT24_OA22_1 U246 ( .A1(n186), .A2(n122), .B1(arthur[5]), .B2(n143), 
        .X(n101) );
  UDB116SVT24_OA22_1 U247 ( .A1(spi_rx_data[0]), .A2(n188), .B1(n187), .B2(
        osc_freq[0]), .X(n96) );
  UDB116SVT24_INV_0P75 U248 ( .A(n148), .X(n190) );
  UDB116SVT24_OA22_1 U249 ( .A1(n190), .A2(spi_rx_data[7]), .B1(pay0[7]), .B2(
        n150), .X(n91) );
  UDB116SVT24_OA22_1 U250 ( .A1(n190), .A2(spi_rx_data[6]), .B1(pay0[6]), .B2(
        n151), .X(n90) );
  UDB116SVT24_OA22_1 U251 ( .A1(n190), .A2(spi_rx_data[5]), .B1(pay0[5]), .B2(
        n148), .X(n89) );
  UDB116SVT24_AOI21_0P75 U252 ( .A1(spi_rx_data[0]), .A2(n191), .B(n157), .X(
        n194) );
  UDB116SVT24_ND2_MM_0P75 U253 ( .A1(n194), .A2(ext_counter_flag_TX), .X(n192)
         );
  UDB116SVT24_OAI21_0P75 U254 ( .A1(n194), .A2(n110), .B(n192), .X(n83) );
  UDB116SVT24_OA22_1 U255 ( .A1(n120), .A2(n126), .B1(opcode_q[7]), .B2(n136), 
        .X(n81) );
  UDB116SVT24_OA22_1 U256 ( .A1(n119), .A2(n124), .B1(opcode_q[6]), .B2(n137), 
        .X(n80) );
  UDB116SVT24_OA22_1 U257 ( .A1(n120), .A2(n122), .B1(opcode_q[5]), .B2(n135), 
        .X(n79) );
  UDB116SVT24_INV_0P75 U258 ( .A(n114), .X(n197) );
  UDB116SVT24_OA22_1 U259 ( .A1(n197), .A2(pay0[7]), .B1(
        ext_counter_value_TX[15]), .B2(n157), .X(n73) );
  UDB116SVT24_OA22_1 U260 ( .A1(n113), .A2(pay0[6]), .B1(
        ext_counter_value_TX[14]), .B2(n109), .X(n72) );
  UDB116SVT24_OA22_1 U261 ( .A1(n133), .A2(pay0[5]), .B1(
        ext_counter_value_TX[13]), .B2(n158), .X(n71) );
  UDB116SVT24_OA22_1 U262 ( .A1(n133), .A2(pay0[4]), .B1(
        ext_counter_value_TX[12]), .B2(n115), .X(n70) );
  UDB116SVT24_OA22_1 U263 ( .A1(n108), .A2(pay0[3]), .B1(
        ext_counter_value_TX[11]), .B2(n109), .X(n69) );
  UDB116SVT24_OA22_1 U264 ( .A1(n133), .A2(pay0[2]), .B1(
        ext_counter_value_TX[10]), .B2(n158), .X(n68) );
  UDB116SVT24_OA22_1 U265 ( .A1(n108), .A2(pay0[1]), .B1(
        ext_counter_value_TX[9]), .B2(n157), .X(n67) );
  UDB116SVT24_OA22_1 U266 ( .A1(n108), .A2(pay0[0]), .B1(
        ext_counter_value_TX[8]), .B2(n114), .X(n66) );
  UDB116SVT24_OA22_1 U267 ( .A1(n133), .A2(n126), .B1(ext_counter_value_TX[7]), 
        .B2(n156), .X(n65) );
  UDB116SVT24_OA22_1 U268 ( .A1(n196), .A2(n124), .B1(ext_counter_value_TX[6]), 
        .B2(n157), .X(n64) );
  UDB116SVT24_OA22_1 U269 ( .A1(n197), .A2(n122), .B1(ext_counter_value_TX[5]), 
        .B2(n156), .X(n63) );
  UDB116SVT24_OA22_1 U270 ( .A1(n140), .A2(pay0[7]), .B1(
        ext_counter_value_RX[15]), .B2(n153), .X(n57) );
  UDB116SVT24_OA22_1 U271 ( .A1(n141), .A2(pay0[6]), .B1(
        ext_counter_value_RX[14]), .B2(n152), .X(n56) );
  UDB116SVT24_OA22_1 U272 ( .A1(n142), .A2(pay0[5]), .B1(
        ext_counter_value_RX[13]), .B2(n155), .X(n55) );
  UDB116SVT24_OA22_1 U273 ( .A1(n139), .A2(pay0[4]), .B1(
        ext_counter_value_RX[12]), .B2(n112), .X(n54) );
  UDB116SVT24_OA22_1 U274 ( .A1(n140), .A2(pay0[3]), .B1(
        ext_counter_value_RX[11]), .B2(n152), .X(n53) );
  UDB116SVT24_OA22_1 U275 ( .A1(n141), .A2(pay0[2]), .B1(
        ext_counter_value_RX[10]), .B2(n155), .X(n52) );
  UDB116SVT24_OA22_1 U276 ( .A1(n142), .A2(pay0[1]), .B1(
        ext_counter_value_RX[9]), .B2(n154), .X(n51) );
  UDB116SVT24_OA22_1 U277 ( .A1(n139), .A2(pay0[0]), .B1(
        ext_counter_value_RX[8]), .B2(n111), .X(n50) );
  UDB116SVT24_OA22_1 U278 ( .A1(n140), .A2(n126), .B1(ext_counter_value_RX[7]), 
        .B2(n155), .X(n49) );
  UDB116SVT24_OA22_1 U279 ( .A1(n141), .A2(n124), .B1(ext_counter_value_RX[6]), 
        .B2(n154), .X(n48) );
  UDB116SVT24_OA22_1 U280 ( .A1(n142), .A2(n122), .B1(ext_counter_value_RX[5]), 
        .B2(n153), .X(n47) );
endmodule

