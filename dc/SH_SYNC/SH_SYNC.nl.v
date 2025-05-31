/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : V-2023.12-SP1
// Date      : Fri May 30 22:43:50 2025
/////////////////////////////////////////////////////////////


module SH_SYNC ( clk, rst, rfin, RX, tx_rdy, ext_counter_flag_RX, 
        ext_counter_RX, ext_counter_flag_TX, ext_counter_TX, sh_en, fsm_rst, 
        sh_en_done );
  input [13:0] ext_counter_RX;
  input [13:0] ext_counter_TX;
  input clk, rst, rfin, RX, tx_rdy, ext_counter_flag_RX, ext_counter_flag_TX;
  output sh_en, fsm_rst, sh_en_done;
  wire   rfin_sync2, rfin_prev, tx_rdy_p, rfin_sync1, N79, rfin_edge,
         first_pulse_flag, tx_rdy_prev, N81, N400, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179, n180, n181, n182, n183, n184, n185, n186, n187, n188, n189,
         n190, n191, n192, n194, n195, n196, n197, n198, n199, n200, n201,
         n202, n203, n204, n205, n206, n207, n208, n209, n210, n211, n212,
         n213, n214, n215, n216, n217, n218, n219, n220, n221, n222, n223,
         n224, n225, n226, n227, n228, n229, n230, n231, n232, n233, n234,
         n235, n236, n237, n238, n239, n241, n243, n244, n245, n246, n247,
         n248, n249, \intadd_0/CI , \intadd_0/SUM[11] , \intadd_0/SUM[10] ,
         \intadd_0/SUM[9] , \intadd_0/SUM[8] , \intadd_0/SUM[7] ,
         \intadd_0/SUM[6] , \intadd_0/SUM[5] , \intadd_0/SUM[4] ,
         \intadd_0/SUM[3] , \intadd_0/SUM[2] , \intadd_0/SUM[1] ,
         \intadd_0/SUM[0] , \intadd_0/n12 , \intadd_0/n11 , \intadd_0/n10 ,
         \intadd_0/n9 , \intadd_0/n8 , \intadd_0/n7 , \intadd_0/n6 ,
         \intadd_0/n5 , \intadd_0/n4 , \intadd_0/n3 , \intadd_0/n2 ,
         \intadd_0/n1 , n250, n251, n252, n253, n254, n255, n256, n257, n258,
         n259, n260, n261, n262, n263, n264, n265, n266, n267, n268, n269,
         n270, n271, n272, n273, n274, n275, n276, n277, n278, n279, n280,
         n281, n282, n283, n284, n285, n286, n287, n288, n289, n290, n291,
         n292, n293, n294, n295, n296, n297, n298, n299, n300, n301, n302,
         n303, n304, n305, n306, n307, n308, n309, n310, n311, n312, n313,
         n314, n315, n316, n317, n318, n319, n320, n321, n322, n323, n324,
         n325, n326, n327, n328, n329, n330, n331, n332, n333, n334, n335,
         n336, n337, n338, n339, n340, n341, n342, n343, n344, n345, n346,
         n347, n348, n349, n350, n351, n352, n353, n354, n355, n356, n357,
         n358, n359, n360, n361, n362, n363, n364, n365, n366, n367, n368,
         n369, n370, n371, n372, n373, n374, n375, n376, n377, n378, n379,
         n380, n381, n382, n383, n384, n385, n386, n387, n388, n389, n390,
         n391, n392, n393, n394, n395, n396, n397, n398, n399, n400, n401,
         n402, n403, n404, n405, n406, n407, n408, n409, n410, n411, n412,
         n413, n414, n415, n416, n417, n418, n419, n420, n421, n422, n423,
         n424, n425, n426, n427, n428, n429, n430, n431, n432, n433, n434,
         n435, n436, n437, n438, n439, n440, n441, n442, n443, n444, n445,
         n446, n447, n448, n449, n450, n451, n452, n453, n454, n455, n456,
         n457, n458, n459, n460, n461, n462, n463, n464, n465, n466, n467,
         n468, n469, n470, n471, n472, n473, n474, n475, n476, n477, n478,
         n479, n480, n481, n482, n483, n484, n485, n486, n487, n488, n489,
         n490, n491, n492, n493, n494, n495, n496, n497, n498, n499, n500,
         n501, n502, n503, n504, n505, n506, n507, n508, n509, n510, n511,
         n512, n513, n514, n515, n516, n517, n518, n519, n520, n521, n522,
         n523, n524, n525, n526, n527, n528, n529, n530, n531, n532, n533,
         n534, n535, n536, n537, n538, n539, n540, n541, n542, n543, n544,
         n545, n546, n547, n548, n549, n550, n551, n552, n553, n554, n555,
         n556, n557, n558, n559, n560, n561, n562, n563, n564, n565, n566,
         n567, n568, n569, n570, n571, n572, n573, n574, n575, n576, n577,
         n578, n579, n580, n581, n582, n583, n584, n585, n586, n587, n588,
         n589, n590, n591, n592, n593, n594, n595, n596, n597, n598, n599,
         n600, n601, n602, n603, n604, n605, n606, n607, n608, n609, n610,
         n611, n612, n613, n614, n615, n616, n617, n618, n619, n620, n621,
         n622, n623, n624, n625, n626, n627, n628, n629, n630, n631, n632,
         n633, n634, n635, n636, n637, n638, n639, n640, n641, n642, n643,
         n644, n645, n646, n647, n648, n649, n650, n651, n652, n653, n654,
         n655, n656, n657, n658, n659, n660, n661, n662, n663, n664, n665,
         n666, n667, n668, n669, n670, n671, n672, n673, n674, n675, n676,
         n677, n678, n679, n680, n681, n682, n683, n684, n685, n686, n687,
         n688, n689, n690, n691, n692, n693, n694, n695, n696, n697, n698,
         n699, n700, n701, n702, n703, n704, n705, n706, n707, n708, n709,
         n710, n711, n712, n713, n714, n715, n716, n717, n718, n719, n720,
         n721, n722, n723, n724, n725, n726, n727, n728, n729, n730, n731,
         n732, n733, n734, n735, n736, n737, n738, n739, n740, n741, n742,
         n743, n744, n745, n746, n747, n748, n749, n750, n751, n752, n753,
         n754, n755, n756, n757, n758, n759, n760, n761, n762, n763, n764,
         n765, n766, n767, n768, n769, n770, n771, n772, n773, n774, n775,
         n776, n777, n778, n779;
  wire   [2:0] state;
  wire   [3:0] pulse_count;
  wire   [13:0] timeout_counter;
  wire   [6:0] pulse_gen_count;
  wire   [6:0] pulse_pack_count;
  wire   [13:0] counter;
  wire   [17:0] interval_sum;
  wire   [13:0] avg_interval;

  UDB116SVT24_FDPRBQ_V2_1 tx_rdy_prev_reg ( .D(tx_rdy), .CK(clk), .RD(n777), 
        .Q(tx_rdy_prev) );
  UDB116SVT24_FDPRBQ_V2_1 tx_rdy_p_reg ( .D(N81), .CK(clk), .RD(n777), .Q(
        tx_rdy_p) );
  UDB116SVT24_FDPRBQ_V2_1 \state_reg[0]  ( .D(n247), .CK(clk), .RD(n778), .Q(
        state[0]) );
  UDB116SVT24_FDPRBQ_V2_1 \counter_reg[12]  ( .D(n202), .CK(clk), .RD(n778), 
        .Q(counter[12]) );
  UDB116SVT24_FDPRBQ_V2_1 \pulse_gen_count_reg[0]  ( .D(n241), .CK(clk), .RD(
        n779), .Q(pulse_gen_count[0]) );
  UDB116SVT24_FDPRBQ_V2_1 \pulse_gen_count_reg[4]  ( .D(n239), .CK(clk), .RD(
        n779), .Q(pulse_gen_count[4]) );
  UDB116SVT24_FDPRBQ_V2_1 \pulse_gen_count_reg[3]  ( .D(n238), .CK(clk), .RD(
        n778), .Q(pulse_gen_count[3]) );
  UDB116SVT24_FDPRBQ_V2_1 \pulse_gen_count_reg[2]  ( .D(n237), .CK(clk), .RD(
        n776), .Q(pulse_gen_count[2]) );
  UDB116SVT24_FDPRBQ_V2_1 \pulse_gen_count_reg[1]  ( .D(n236), .CK(clk), .RD(
        n776), .Q(pulse_gen_count[1]) );
  UDB116SVT24_FDPRBQ_V2_1 \state_reg[1]  ( .D(n249), .CK(clk), .RD(n776), .Q(
        state[1]) );
  UDB116SVT24_FDPRBQ_V2_1 \state_reg[2]  ( .D(n248), .CK(clk), .RD(n776), .Q(
        state[2]) );
  UDB116SVT24_FDPRBQ_V2_1 \counter_reg[13]  ( .D(n215), .CK(clk), .RD(n775), 
        .Q(counter[13]) );
  UDB116SVT24_FDPRBQ_V2_1 \counter_reg[3]  ( .D(n211), .CK(clk), .RD(n775), 
        .Q(counter[3]) );
  UDB116SVT24_FDPRBQ_V2_1 \counter_reg[4]  ( .D(n210), .CK(clk), .RD(n775), 
        .Q(counter[4]) );
  UDB116SVT24_FDPRBQ_V2_1 \counter_reg[5]  ( .D(n209), .CK(clk), .RD(n775), 
        .Q(counter[5]) );
  UDB116SVT24_FDPRBQ_V2_1 \counter_reg[6]  ( .D(n208), .CK(clk), .RD(n774), 
        .Q(counter[6]) );
  UDB116SVT24_FDPRBQ_V2_1 \counter_reg[10]  ( .D(n204), .CK(clk), .RD(n774), 
        .Q(counter[10]) );
  UDB116SVT24_FDPRBQ_V2_1 \counter_reg[11]  ( .D(n203), .CK(clk), .RD(n774), 
        .Q(counter[11]) );
  UDB116SVT24_FDPRBQ_V2_1 rfin_sync1_reg ( .D(N400), .CK(clk), .RD(n774), .Q(
        rfin_sync1) );
  UDB116SVT24_FDPRBQ_V2_1 rfin_sync2_reg ( .D(rfin_sync1), .CK(clk), .RD(n773), 
        .Q(rfin_sync2) );
  UDB116SVT24_FDPRBQ_V2_1 rfin_prev_reg ( .D(rfin_sync2), .CK(clk), .RD(n773), 
        .Q(rfin_prev) );
  UDB116SVT24_FDPRBQ_V2_1 rfin_edge_reg ( .D(N79), .CK(clk), .RD(n773), .Q(
        rfin_edge) );
  UDB116SVT24_FDPRBQ_V2_1 \pulse_count_reg[0]  ( .D(n245), .CK(clk), .RD(n773), 
        .Q(pulse_count[0]) );
  UDB116SVT24_FDPRBQ_V2_1 \pulse_count_reg[1]  ( .D(n244), .CK(clk), .RD(n772), 
        .Q(pulse_count[1]) );
  UDB116SVT24_FDPRBQ_V2_1 \pulse_count_reg[2]  ( .D(n243), .CK(clk), .RD(n772), 
        .Q(pulse_count[2]) );
  UDB116SVT24_FDPRBQ_V2_1 \pulse_count_reg[3]  ( .D(n246), .CK(clk), .RD(n772), 
        .Q(pulse_count[3]) );
  UDB116SVT24_FDPRBQ_V2_1 \interval_sum_reg[0]  ( .D(n234), .CK(clk), .RD(n772), .Q(interval_sum[0]) );
  UDB116SVT24_FDPRBQ_V2_1 \interval_sum_reg[17]  ( .D(n233), .CK(clk), .RD(
        n771), .Q(interval_sum[17]) );
  UDB116SVT24_FDPRBQ_V2_1 \interval_sum_reg[16]  ( .D(n232), .CK(clk), .RD(
        n771), .Q(interval_sum[16]) );
  UDB116SVT24_FDPRBQ_V2_1 \interval_sum_reg[14]  ( .D(n230), .CK(clk), .RD(
        n771), .Q(interval_sum[14]) );
  UDB116SVT24_FDPRBQ_V2_1 \interval_sum_reg[13]  ( .D(n229), .CK(clk), .RD(
        n770), .Q(interval_sum[13]) );
  UDB116SVT24_FDPRBQ_V2_1 \interval_sum_reg[12]  ( .D(n228), .CK(clk), .RD(
        n770), .Q(interval_sum[12]) );
  UDB116SVT24_FDPRBQ_V2_1 \interval_sum_reg[11]  ( .D(n227), .CK(clk), .RD(
        n770), .Q(interval_sum[11]) );
  UDB116SVT24_FDPRBQ_V2_1 \interval_sum_reg[10]  ( .D(n226), .CK(clk), .RD(
        n770), .Q(interval_sum[10]) );
  UDB116SVT24_FDPRBQ_V2_1 \interval_sum_reg[9]  ( .D(n225), .CK(clk), .RD(n769), .Q(interval_sum[9]) );
  UDB116SVT24_FDPRBQ_V2_1 \interval_sum_reg[8]  ( .D(n224), .CK(clk), .RD(n769), .Q(interval_sum[8]) );
  UDB116SVT24_FDPRBQ_V2_1 \interval_sum_reg[7]  ( .D(n223), .CK(clk), .RD(n769), .Q(interval_sum[7]) );
  UDB116SVT24_FDPRBQ_V2_1 \interval_sum_reg[6]  ( .D(n222), .CK(clk), .RD(n769), .Q(interval_sum[6]) );
  UDB116SVT24_FDPRBQ_V2_1 \interval_sum_reg[5]  ( .D(n221), .CK(clk), .RD(n768), .Q(interval_sum[5]) );
  UDB116SVT24_FDPRBQ_V2_1 \interval_sum_reg[4]  ( .D(n220), .CK(clk), .RD(n768), .Q(interval_sum[4]) );
  UDB116SVT24_FDPRBQ_V2_1 \interval_sum_reg[3]  ( .D(n219), .CK(clk), .RD(n768), .Q(interval_sum[3]) );
  UDB116SVT24_FDPRBQ_V2_1 \interval_sum_reg[2]  ( .D(n218), .CK(clk), .RD(n768), .Q(interval_sum[2]) );
  UDB116SVT24_FDPRBQ_V2_1 \interval_sum_reg[1]  ( .D(n217), .CK(clk), .RD(n767), .Q(interval_sum[1]) );
  UDB116SVT24_FDPRBQ_V2_1 \counter_reg[0]  ( .D(n214), .CK(clk), .RD(n767), 
        .Q(counter[0]) );
  UDB116SVT24_FDPRBQ_V2_1 \counter_reg[1]  ( .D(n213), .CK(clk), .RD(n767), 
        .Q(counter[1]) );
  UDB116SVT24_FDPRBQ_V2_1 \counter_reg[2]  ( .D(n212), .CK(clk), .RD(n766), 
        .Q(counter[2]) );
  UDB116SVT24_FDPRBQ_V2_1 \counter_reg[7]  ( .D(n207), .CK(clk), .RD(n766), 
        .Q(counter[7]) );
  UDB116SVT24_FDPRBQ_V2_1 \counter_reg[8]  ( .D(n206), .CK(clk), .RD(n766), 
        .Q(counter[8]) );
  UDB116SVT24_FDPRBQ_V2_1 \counter_reg[9]  ( .D(n205), .CK(clk), .RD(n766), 
        .Q(counter[9]) );
  UDB116SVT24_FDPRBQ_V2_1 \pulse_pack_count_reg[0]  ( .D(n201), .CK(clk), .RD(
        n765), .Q(pulse_pack_count[0]) );
  UDB116SVT24_FDPRBQ_V2_1 \pulse_pack_count_reg[1]  ( .D(n200), .CK(clk), .RD(
        n765), .Q(pulse_pack_count[1]) );
  UDB116SVT24_FDPRBQ_V2_1 \pulse_pack_count_reg[2]  ( .D(n199), .CK(clk), .RD(
        n765), .Q(pulse_pack_count[2]) );
  UDB116SVT24_FDPRBQ_V2_1 \pulse_pack_count_reg[3]  ( .D(n198), .CK(clk), .RD(
        n765), .Q(pulse_pack_count[3]) );
  UDB116SVT24_FDPRBQ_V2_1 \pulse_pack_count_reg[4]  ( .D(n197), .CK(clk), .RD(
        n764), .Q(pulse_pack_count[4]) );
  UDB116SVT24_FDPRBQ_V2_1 \pulse_pack_count_reg[5]  ( .D(n196), .CK(clk), .RD(
        n764), .Q(pulse_pack_count[5]) );
  UDB116SVT24_FDPRBQ_V2_1 \pulse_pack_count_reg[6]  ( .D(n195), .CK(clk), .RD(
        n764), .Q(pulse_pack_count[6]) );
  UDB116SVT24_FDPRBQ_V2_1 fsm_rst_reg ( .D(n194), .CK(clk), .RD(n764), .Q(
        fsm_rst) );
  UDB116SVT24_FDPRBQ_V2_1 sh_en_reg ( .D(n192), .CK(clk), .RD(n763), .Q(sh_en)
         );
  UDB116SVT24_FDPSBQ_1 first_pulse_flag_reg ( .D(n216), .CK(clk), .SD(n777), 
        .Q(first_pulse_flag) );
  UDB116SVT24_FDPSBQ_1 sh_en_done_reg ( .D(n235), .CK(clk), .SD(n777), .Q(
        sh_en_done) );
  UDB116SVT24_FDPRBQ_V2_1 \timeout_counter_reg[0]  ( .D(n191), .CK(clk), .RD(
        n763), .Q(timeout_counter[0]) );
  UDB116SVT24_FDPRBQ_V2_1 \timeout_counter_reg[1]  ( .D(n190), .CK(clk), .RD(
        n763), .Q(timeout_counter[1]) );
  UDB116SVT24_FDPRBQ_V2_1 \timeout_counter_reg[2]  ( .D(n189), .CK(clk), .RD(
        n763), .Q(timeout_counter[2]) );
  UDB116SVT24_FDPRBQ_V2_1 \timeout_counter_reg[3]  ( .D(n188), .CK(clk), .RD(
        n762), .Q(timeout_counter[3]) );
  UDB116SVT24_FDPRBQ_V2_1 \timeout_counter_reg[4]  ( .D(n187), .CK(clk), .RD(
        n762), .Q(timeout_counter[4]) );
  UDB116SVT24_FDPRBQ_V2_1 \timeout_counter_reg[5]  ( .D(n186), .CK(clk), .RD(
        n762), .Q(timeout_counter[5]) );
  UDB116SVT24_FDPRBQ_V2_1 \timeout_counter_reg[6]  ( .D(n185), .CK(clk), .RD(
        n762), .Q(timeout_counter[6]) );
  UDB116SVT24_FDPRBQ_V2_1 \timeout_counter_reg[7]  ( .D(n184), .CK(clk), .RD(
        n761), .Q(timeout_counter[7]) );
  UDB116SVT24_FDPRBQ_V2_1 \timeout_counter_reg[8]  ( .D(n183), .CK(clk), .RD(
        n761), .Q(timeout_counter[8]) );
  UDB116SVT24_FDPRBQ_V2_1 \timeout_counter_reg[9]  ( .D(n182), .CK(clk), .RD(
        n761), .Q(timeout_counter[9]) );
  UDB116SVT24_FDPRBQ_V2_1 \timeout_counter_reg[10]  ( .D(n181), .CK(clk), .RD(
        n761), .Q(timeout_counter[10]) );
  UDB116SVT24_FDPRBQ_V2_1 \timeout_counter_reg[11]  ( .D(n180), .CK(clk), .RD(
        n760), .Q(timeout_counter[11]) );
  UDB116SVT24_FDPRBQ_V2_1 \timeout_counter_reg[12]  ( .D(n179), .CK(clk), .RD(
        n760), .Q(timeout_counter[12]) );
  UDB116SVT24_FDPRBQ_V2_1 \timeout_counter_reg[13]  ( .D(n178), .CK(clk), .RD(
        n760), .Q(timeout_counter[13]) );
  UDB116SVT24_FDPRBQ_V2_1 \avg_interval_reg[0]  ( .D(n177), .CK(clk), .RD(n760), .Q(avg_interval[0]) );
  UDB116SVT24_FDPRBQ_V2_1 \avg_interval_reg[13]  ( .D(n176), .CK(clk), .RD(
        n759), .Q(avg_interval[13]) );
  UDB116SVT24_FDPRBQ_V2_1 \avg_interval_reg[12]  ( .D(n175), .CK(clk), .RD(
        n759), .Q(avg_interval[12]) );
  UDB116SVT24_FDPRBQ_V2_1 \avg_interval_reg[11]  ( .D(n174), .CK(clk), .RD(
        n759), .Q(avg_interval[11]) );
  UDB116SVT24_FDPRBQ_V2_1 \avg_interval_reg[10]  ( .D(n173), .CK(clk), .RD(
        n759), .Q(avg_interval[10]) );
  UDB116SVT24_FDPRBQ_V2_1 \avg_interval_reg[9]  ( .D(n172), .CK(clk), .RD(n758), .Q(avg_interval[9]) );
  UDB116SVT24_FDPRBQ_V2_1 \avg_interval_reg[8]  ( .D(n171), .CK(clk), .RD(n758), .Q(avg_interval[8]) );
  UDB116SVT24_FDPRBQ_V2_1 \avg_interval_reg[7]  ( .D(n170), .CK(clk), .RD(n758), .Q(avg_interval[7]) );
  UDB116SVT24_FDPRBQ_V2_1 \avg_interval_reg[6]  ( .D(n169), .CK(clk), .RD(n758), .Q(avg_interval[6]) );
  UDB116SVT24_FDPRBQ_V2_1 \avg_interval_reg[5]  ( .D(n168), .CK(clk), .RD(n757), .Q(avg_interval[5]) );
  UDB116SVT24_FDPRBQ_V2_1 \avg_interval_reg[4]  ( .D(n167), .CK(clk), .RD(n757), .Q(avg_interval[4]) );
  UDB116SVT24_FDPRBQ_V2_1 \avg_interval_reg[3]  ( .D(n166), .CK(clk), .RD(n757), .Q(avg_interval[3]) );
  UDB116SVT24_FDPRBQ_V2_1 \avg_interval_reg[2]  ( .D(n165), .CK(clk), .RD(n757), .Q(avg_interval[2]) );
  UDB116SVT24_FDPRBQ_V2_1 \avg_interval_reg[1]  ( .D(n164), .CK(clk), .RD(n767), .Q(avg_interval[1]) );
  UDB116SVT24_FDPRBQ_V2_1 \interval_sum_reg[15]  ( .D(n231), .CK(clk), .RD(
        n771), .Q(interval_sum[15]) );
  UDB116SVT24_ADDF_V1_1 \intadd_0/U2  ( .A(counter[13]), .B(n274), .CI(
        \intadd_0/n2 ), .CO(\intadd_0/n1 ), .S(\intadd_0/SUM[11] ) );
  UDB116SVT24_ADDF_V1_1 \intadd_0/U3  ( .A(counter[12]), .B(n272), .CI(
        \intadd_0/n3 ), .CO(\intadd_0/n2 ), .S(\intadd_0/SUM[10] ) );
  UDB116SVT24_ADDF_V1_1 \intadd_0/U4  ( .A(counter[11]), .B(n270), .CI(
        \intadd_0/n4 ), .CO(\intadd_0/n3 ), .S(\intadd_0/SUM[9] ) );
  UDB116SVT24_ADDF_V1_1 \intadd_0/U5  ( .A(counter[10]), .B(interval_sum[10]), 
        .CI(\intadd_0/n5 ), .CO(\intadd_0/n4 ), .S(\intadd_0/SUM[8] ) );
  UDB116SVT24_ADDF_V1_1 \intadd_0/U6  ( .A(n370), .B(n268), .CI(\intadd_0/n6 ), 
        .CO(\intadd_0/n5 ), .S(\intadd_0/SUM[7] ) );
  UDB116SVT24_ADDF_V1_1 \intadd_0/U7  ( .A(n324), .B(interval_sum[8]), .CI(
        \intadd_0/n7 ), .CO(\intadd_0/n6 ), .S(\intadd_0/SUM[6] ) );
  UDB116SVT24_ADDF_V1_1 \intadd_0/U8  ( .A(n340), .B(n266), .CI(\intadd_0/n8 ), 
        .CO(\intadd_0/n7 ), .S(\intadd_0/SUM[5] ) );
  UDB116SVT24_ADDF_V1_1 \intadd_0/U9  ( .A(counter[6]), .B(interval_sum[6]), 
        .CI(\intadd_0/n9 ), .CO(\intadd_0/n8 ), .S(\intadd_0/SUM[4] ) );
  UDB116SVT24_ADDF_V1_1 \intadd_0/U10  ( .A(n346), .B(n264), .CI(
        \intadd_0/n10 ), .CO(\intadd_0/n9 ), .S(\intadd_0/SUM[3] ) );
  UDB116SVT24_ADDF_V1_1 \intadd_0/U13  ( .A(counter[2]), .B(interval_sum[2]), 
        .CI(\intadd_0/CI ), .CO(\intadd_0/n12 ), .S(\intadd_0/SUM[0] ) );
  UDB116SVT24_ADDF_V1_1 \intadd_0/U12  ( .A(n349), .B(interval_sum[3]), .CI(
        \intadd_0/n12 ), .CO(\intadd_0/n11 ), .S(\intadd_0/SUM[1] ) );
  UDB116SVT24_ADDF_V1_1 \intadd_0/U11  ( .A(n305), .B(interval_sum[4]), .CI(
        \intadd_0/n11 ), .CO(\intadd_0/n10 ), .S(\intadd_0/SUM[2] ) );
  UDB116SVT24_INV_0P75 U256 ( .A(n361), .X(n250) );
  UDB116SVT24_INV_0P75 U257 ( .A(n640), .X(n251) );
  UDB116SVT24_INV_0P75 U258 ( .A(n251), .X(n252) );
  UDB116SVT24_INV_0P75 U259 ( .A(timeout_counter[9]), .X(n253) );
  UDB116SVT24_INV_0P75 U260 ( .A(n253), .X(n254) );
  UDB116SVT24_INV_0P75 U261 ( .A(timeout_counter[0]), .X(n255) );
  UDB116SVT24_INV_0P75 U262 ( .A(n255), .X(n256) );
  UDB116SVT24_INV_0P75 U263 ( .A(interval_sum[2]), .X(n257) );
  UDB116SVT24_INV_0P75 U264 ( .A(n257), .X(n258) );
  UDB116SVT24_INV_0P75 U265 ( .A(interval_sum[3]), .X(n259) );
  UDB116SVT24_INV_0P75 U266 ( .A(n259), .X(n260) );
  UDB116SVT24_INV_0P75 U267 ( .A(interval_sum[4]), .X(n261) );
  UDB116SVT24_INV_0P75 U268 ( .A(n261), .X(n262) );
  UDB116SVT24_INV_0P75 U269 ( .A(interval_sum[5]), .X(n263) );
  UDB116SVT24_INV_0P75 U270 ( .A(n263), .X(n264) );
  UDB116SVT24_INV_0P75 U271 ( .A(interval_sum[7]), .X(n265) );
  UDB116SVT24_INV_0P75 U272 ( .A(n265), .X(n266) );
  UDB116SVT24_INV_0P75 U273 ( .A(interval_sum[9]), .X(n267) );
  UDB116SVT24_INV_0P75 U274 ( .A(n267), .X(n268) );
  UDB116SVT24_INV_0P75 U275 ( .A(interval_sum[11]), .X(n269) );
  UDB116SVT24_INV_0P75 U276 ( .A(n269), .X(n270) );
  UDB116SVT24_INV_0P75 U277 ( .A(interval_sum[12]), .X(n271) );
  UDB116SVT24_INV_0P75 U278 ( .A(n271), .X(n272) );
  UDB116SVT24_INV_0P75 U279 ( .A(interval_sum[13]), .X(n273) );
  UDB116SVT24_INV_0P75 U280 ( .A(n273), .X(n274) );
  UDB116SVT24_INV_0P75 U281 ( .A(interval_sum[17]), .X(n275) );
  UDB116SVT24_INV_0P75 U282 ( .A(n275), .X(n276) );
  UDB116SVT24_INV_0P75 U283 ( .A(rfin_edge), .X(n277) );
  UDB116SVT24_INV_0P75 U284 ( .A(n277), .X(n278) );
  UDB116SVT24_INV_0P75 U285 ( .A(pulse_gen_count[0]), .X(n279) );
  UDB116SVT24_INV_0P75 U286 ( .A(n279), .X(n280) );
  UDB116SVT24_INV_0P75 U287 ( .A(n536), .X(n281) );
  UDB116SVT24_INV_0P75 U288 ( .A(n281), .X(n282) );
  UDB116SVT24_INV_0P75 U289 ( .A(n385), .X(n283) );
  UDB116SVT24_INV_0P75 U290 ( .A(n283), .X(n284) );
  UDB116SVT24_INV_0P75 U291 ( .A(n283), .X(n285) );
  UDB116SVT24_INV_0P75 U292 ( .A(n387), .X(n286) );
  UDB116SVT24_INV_0P75 U293 ( .A(n286), .X(n287) );
  UDB116SVT24_INV_0P75 U294 ( .A(n286), .X(n288) );
  UDB116SVT24_INV_0P75 U295 ( .A(n309), .X(n289) );
  UDB116SVT24_INV_0P75 U296 ( .A(counter[8]), .X(n290) );
  UDB116SVT24_INV_0P75 U297 ( .A(n330), .X(n291) );
  UDB116SVT24_INV_0P75 U298 ( .A(n299), .X(n292) );
  UDB116SVT24_INV_0P75 U299 ( .A(n292), .X(n293) );
  UDB116SVT24_INV_0P75 U300 ( .A(n380), .X(n294) );
  UDB116SVT24_INV_0P75 U301 ( .A(n380), .X(n295) );
  UDB116SVT24_INV_0P75 U302 ( .A(interval_sum[1]), .X(n296) );
  UDB116SVT24_INV_0P75 U303 ( .A(pulse_pack_count[0]), .X(n297) );
  UDB116SVT24_INV_0P75 U304 ( .A(n297), .X(n298) );
  UDB116SVT24_INV_0P75 U305 ( .A(counter[2]), .X(n299) );
  UDB116SVT24_INV_0P75 U306 ( .A(interval_sum[14]), .X(n300) );
  UDB116SVT24_INV_0P75 U307 ( .A(n300), .X(n301) );
  UDB116SVT24_INV_0P75 U308 ( .A(counter[10]), .X(n302) );
  UDB116SVT24_INV_0P75 U309 ( .A(n302), .X(n303) );
  UDB116SVT24_INV_0P75 U310 ( .A(counter[4]), .X(n304) );
  UDB116SVT24_INV_0P75 U311 ( .A(n304), .X(n305) );
  UDB116SVT24_INV_0P75 U312 ( .A(counter[13]), .X(n306) );
  UDB116SVT24_INV_0P75 U313 ( .A(n306), .X(n307) );
  UDB116SVT24_INV_0P75 U314 ( .A(state[2]), .X(n308) );
  UDB116SVT24_INV_0P75 U315 ( .A(n308), .X(n309) );
  UDB116SVT24_INV_0P75 U316 ( .A(state[0]), .X(n310) );
  UDB116SVT24_INV_0P75 U317 ( .A(n310), .X(n311) );
  UDB116SVT24_INV_0P75 U318 ( .A(n678), .X(n312) );
  UDB116SVT24_INV_0P75 U319 ( .A(n312), .X(n313) );
  UDB116SVT24_INV_0P75 U320 ( .A(n692), .X(n314) );
  UDB116SVT24_INV_0P75 U321 ( .A(n314), .X(n315) );
  UDB116SVT24_INV_0P75 U322 ( .A(pulse_count[2]), .X(n316) );
  UDB116SVT24_INV_0P75 U323 ( .A(counter[9]), .X(n317) );
  UDB116SVT24_INV_0P75 U324 ( .A(counter[4]), .X(n318) );
  UDB116SVT24_INV_0P75 U325 ( .A(counter[10]), .X(n319) );
  UDB116SVT24_INV_0P75 U326 ( .A(n528), .X(n320) );
  UDB116SVT24_INV_0P75 U327 ( .A(n320), .X(n321) );
  UDB116SVT24_INV_0P75 U328 ( .A(counter[11]), .X(n322) );
  UDB116SVT24_INV_0P75 U329 ( .A(counter[8]), .X(n323) );
  UDB116SVT24_INV_0P75 U330 ( .A(n323), .X(n324) );
  UDB116SVT24_INV_0P75 U331 ( .A(counter[1]), .X(n325) );
  UDB116SVT24_INV_0P75 U332 ( .A(n325), .X(n326) );
  UDB116SVT24_INV_0P75 U333 ( .A(counter[11]), .X(n327) );
  UDB116SVT24_INV_0P75 U334 ( .A(n327), .X(n328) );
  UDB116SVT24_INV_0P75 U335 ( .A(counter[6]), .X(n329) );
  UDB116SVT24_INV_0P75 U336 ( .A(n329), .X(n330) );
  UDB116SVT24_INV_0P75 U337 ( .A(n352), .X(n331) );
  UDB116SVT24_INV_0P75 U338 ( .A(n739), .X(n332) );
  UDB116SVT24_INV_0P75 U339 ( .A(n539), .X(n333) );
  UDB116SVT24_INV_0P75 U340 ( .A(n333), .X(n334) );
  UDB116SVT24_INV_0P75 U341 ( .A(n333), .X(n335) );
  UDB116SVT24_INV_0P75 U342 ( .A(n641), .X(n336) );
  UDB116SVT24_INV_0P75 U343 ( .A(n336), .X(n337) );
  UDB116SVT24_INV_0P75 U344 ( .A(n336), .X(n338) );
  UDB116SVT24_INV_0P75 U345 ( .A(counter[7]), .X(n339) );
  UDB116SVT24_INV_0P75 U346 ( .A(n339), .X(n340) );
  UDB116SVT24_INV_0P75 U347 ( .A(n339), .X(n341) );
  UDB116SVT24_INV_0P75 U348 ( .A(counter[0]), .X(n342) );
  UDB116SVT24_INV_0P75 U349 ( .A(n342), .X(n343) );
  UDB116SVT24_INV_0P75 U350 ( .A(n342), .X(n344) );
  UDB116SVT24_INV_0P75 U351 ( .A(counter[5]), .X(n345) );
  UDB116SVT24_INV_0P75 U352 ( .A(n345), .X(n346) );
  UDB116SVT24_INV_0P75 U353 ( .A(n345), .X(n347) );
  UDB116SVT24_INV_0P75 U354 ( .A(counter[3]), .X(n348) );
  UDB116SVT24_INV_0P75 U355 ( .A(n348), .X(n349) );
  UDB116SVT24_INV_0P75 U356 ( .A(n348), .X(n350) );
  UDB116SVT24_INV_0P75 U357 ( .A(n739), .X(n351) );
  UDB116SVT24_INV_0P75 U358 ( .A(n351), .X(n352) );
  UDB116SVT24_INV_0P75 U359 ( .A(n351), .X(n353) );
  UDB116SVT24_INV_0P75 U360 ( .A(counter[0]), .X(n354) );
  UDB116SVT24_INV_0P75 U361 ( .A(n675), .X(n355) );
  UDB116SVT24_INV_0P75 U362 ( .A(n355), .X(n356) );
  UDB116SVT24_INV_0P75 U363 ( .A(n355), .X(n357) );
  UDB116SVT24_INV_0P75 U364 ( .A(n655), .X(n358) );
  UDB116SVT24_INV_0P75 U365 ( .A(n358), .X(n359) );
  UDB116SVT24_INV_0P75 U366 ( .A(n358), .X(n360) );
  UDB116SVT24_INV_0P75 U367 ( .A(n358), .X(n361) );
  UDB116SVT24_INV_0P75 U368 ( .A(n754), .X(n362) );
  UDB116SVT24_INV_0P75 U369 ( .A(n362), .X(n363) );
  UDB116SVT24_INV_0P75 U370 ( .A(n362), .X(n364) );
  UDB116SVT24_INV_0P75 U371 ( .A(n362), .X(n365) );
  UDB116SVT24_INV_0P75 U372 ( .A(n539), .X(n366) );
  UDB116SVT24_INV_0P75 U373 ( .A(n539), .X(n367) );
  UDB116SVT24_INV_0P75 U374 ( .A(n539), .X(n368) );
  UDB116SVT24_BUF_1 U375 ( .A(n656), .X(n369) );
  UDB116SVT24_BUF_1 U376 ( .A(counter[9]), .X(n370) );
  UDB116SVT24_BUF_1 U377 ( .A(counter[9]), .X(n371) );
  UDB116SVT24_INV_0P75 U378 ( .A(n650), .X(n372) );
  UDB116SVT24_ND2_MM_0P75 U379 ( .A1(n431), .A2(n491), .X(n373) );
  UDB116SVT24_ND2_MM_0P75 U380 ( .A1(n431), .A2(n491), .X(n374) );
  UDB116SVT24_AN2_1 U381 ( .A1(n537), .A2(state[1]), .X(n753) );
  UDB116SVT24_INV_0P75 U382 ( .A(n753), .X(n375) );
  UDB116SVT24_INV_0P75 U383 ( .A(n753), .X(n376) );
  UDB116SVT24_INV_0P75 U384 ( .A(n753), .X(n377) );
  UDB116SVT24_INV_0P75 U385 ( .A(n753), .X(n378) );
  UDB116SVT24_INV_0P75 U386 ( .A(n676), .X(n379) );
  UDB116SVT24_INV_0P75 U387 ( .A(n379), .X(n380) );
  UDB116SVT24_INV_0P75 U388 ( .A(n379), .X(n381) );
  UDB116SVT24_INV_0P75 U389 ( .A(n379), .X(n382) );
  UDB116SVT24_INV_0P75 U390 ( .A(n379), .X(n383) );
  UDB116SVT24_OR2_0P75 U391 ( .A1(n334), .A2(n655), .X(n654) );
  UDB116SVT24_INV_0P75 U392 ( .A(n654), .X(n384) );
  UDB116SVT24_INV_0P75 U393 ( .A(n654), .X(n385) );
  UDB116SVT24_INV_0P75 U394 ( .A(n654), .X(n386) );
  UDB116SVT24_AN2_1 U395 ( .A1(n333), .A2(n494), .X(n511) );
  UDB116SVT24_INV_0P75 U396 ( .A(n511), .X(n387) );
  UDB116SVT24_INV_0P75 U397 ( .A(n511), .X(n388) );
  UDB116SVT24_INV_0P75 U398 ( .A(n511), .X(n389) );
  UDB116SVT24_BUF_1 U399 ( .A(rst), .X(n779) );
  UDB116SVT24_BUF_1 U400 ( .A(n779), .X(n390) );
  UDB116SVT24_BUF_1 U401 ( .A(n390), .X(n775) );
  UDB116SVT24_BUF_1 U402 ( .A(n390), .X(n774) );
  UDB116SVT24_BUF_1 U403 ( .A(rst), .X(n393) );
  UDB116SVT24_BUF_1 U404 ( .A(n393), .X(n391) );
  UDB116SVT24_BUF_1 U405 ( .A(n391), .X(n773) );
  UDB116SVT24_BUF_1 U406 ( .A(n391), .X(n772) );
  UDB116SVT24_BUF_1 U407 ( .A(n391), .X(n771) );
  UDB116SVT24_BUF_1 U408 ( .A(n390), .X(n776) );
  UDB116SVT24_BUF_1 U409 ( .A(n393), .X(n392) );
  UDB116SVT24_BUF_1 U410 ( .A(n392), .X(n769) );
  UDB116SVT24_BUF_1 U411 ( .A(n392), .X(n768) );
  UDB116SVT24_BUF_1 U412 ( .A(n391), .X(n766) );
  UDB116SVT24_BUF_1 U413 ( .A(n393), .X(n765) );
  UDB116SVT24_BUF_1 U414 ( .A(rst), .X(n394) );
  UDB116SVT24_BUF_1 U415 ( .A(n394), .X(n764) );
  UDB116SVT24_BUF_1 U416 ( .A(n392), .X(n770) );
  UDB116SVT24_BUF_1 U417 ( .A(n779), .X(n778) );
  UDB116SVT24_BUF_1 U418 ( .A(n778), .X(n777) );
  UDB116SVT24_BUF_1 U419 ( .A(n393), .X(n767) );
  UDB116SVT24_BUF_1 U420 ( .A(rst), .X(n763) );
  UDB116SVT24_BUF_1 U421 ( .A(n394), .X(n395) );
  UDB116SVT24_BUF_1 U422 ( .A(n395), .X(n761) );
  UDB116SVT24_BUF_1 U423 ( .A(n394), .X(n762) );
  UDB116SVT24_BUF_1 U424 ( .A(n395), .X(n758) );
  UDB116SVT24_BUF_1 U425 ( .A(n394), .X(n760) );
  UDB116SVT24_BUF_1 U426 ( .A(n395), .X(n757) );
  UDB116SVT24_BUF_1 U427 ( .A(n395), .X(n759) );
  UDB116SVT24_INV_0P75 U428 ( .A(state[1]), .X(n692) );
  UDB116SVT24_ND3_0P75 U429 ( .A1(n311), .A2(n308), .A3(n315), .X(n539) );
  UDB116SVT24_INV_0P75 U430 ( .A(pulse_count[0]), .X(n399) );
  UDB116SVT24_INV_0P75 U431 ( .A(pulse_count[2]), .X(n636) );
  UDB116SVT24_INV_0P75 U432 ( .A(pulse_count[1]), .X(n485) );
  UDB116SVT24_ND4_0P75 U433 ( .A1(n399), .A2(n316), .A3(n485), .A4(
        pulse_count[3]), .X(n406) );
  UDB116SVT24_NR2_0P75 U434 ( .A1(n309), .A2(n315), .X(n397) );
  UDB116SVT24_OR2_0P75 U435 ( .A1(pulse_gen_count[1]), .A2(pulse_gen_count[2]), 
        .X(n433) );
  UDB116SVT24_NR2_0P75 U436 ( .A1(n433), .A2(n279), .X(n396) );
  UDB116SVT24_ND3_0P75 U437 ( .A1(pulse_gen_count[4]), .A2(pulse_gen_count[3]), 
        .A3(n396), .X(n628) );
  UDB116SVT24_NR2_0P75 U438 ( .A1(state[0]), .A2(state[2]), .X(n537) );
  UDB116SVT24_INV_0P75 U439 ( .A(n375), .X(n742) );
  UDB116SVT24_AOI31_0P75 U440 ( .A1(n397), .A2(RX), .A3(n628), .B(n742), .X(
        n408) );
  UDB116SVT24_OAI21_0P75 U441 ( .A1(n335), .A2(n406), .B(n408), .X(n249) );
  UDB116SVT24_AOI21B_0P75 U442 ( .A1(rfin_edge), .A2(n366), .B(rfin), .X(N400)
         );
  UDB116SVT24_ND2_MM_0P75 U443 ( .A1(n308), .A2(n692), .X(n398) );
  UDB116SVT24_OAI21B_1 U444 ( .A1(n310), .A2(rfin_edge), .B(n398), .X(n487) );
  UDB116SVT24_AOI21_0P75 U445 ( .A1(n367), .A2(n399), .B(n487), .X(n410) );
  UDB116SVT24_ND3_0P75 U446 ( .A1(n278), .A2(n366), .A3(pulse_count[0]), .X(
        n409) );
  UDB116SVT24_AOI22_1 U447 ( .A1(pulse_count[1]), .A2(n410), .B1(n409), .B2(
        n485), .X(n244) );
  UDB116SVT24_AOI21_0P75 U448 ( .A1(n399), .A2(n487), .B(n410), .X(n245) );
  UDB116SVT24_NR2B_0P75 U449 ( .A(rfin_sync2), .B(rfin_prev), .X(N79) );
  UDB116SVT24_ND3_0P75 U450 ( .A1(state[2]), .A2(n311), .A3(n315), .X(n490) );
  UDB116SVT24_INV_0P75 U451 ( .A(n490), .X(n431) );
  UDB116SVT24_ND2B_0P75 U452 ( .A(pulse_pack_count[6]), .B(pulse_pack_count[5]), .X(n480) );
  UDB116SVT24_NR4_0P75 U453 ( .A1(pulse_pack_count[1]), .A2(n298), .A3(
        pulse_pack_count[3]), .A4(n480), .X(n400) );
  UDB116SVT24_INV_0P75 U454 ( .A(pulse_pack_count[2]), .X(n474) );
  UDB116SVT24_INV_0P75 U455 ( .A(pulse_pack_count[4]), .X(n477) );
  UDB116SVT24_AOI31_0P75 U456 ( .A1(n400), .A2(n474), .A3(n477), .B(RX), .X(
        n401) );
  UDB116SVT24_NR2_0P75 U457 ( .A1(n311), .A2(state[1]), .X(n626) );
  UDB116SVT24_INV_0P75 U458 ( .A(n626), .X(n690) );
  UDB116SVT24_NR2_0P75 U459 ( .A1(n289), .A2(n690), .X(n678) );
  UDB116SVT24_AOI22_1 U460 ( .A1(n431), .A2(n401), .B1(n678), .B2(tx_rdy_p), 
        .X(n630) );
  UDB116SVT24_INV_0P75 U461 ( .A(timeout_counter[12]), .X(n712) );
  UDB116SVT24_INV_0P75 U462 ( .A(timeout_counter[13]), .X(n496) );
  UDB116SVT24_AOI21_0P75 U463 ( .A1(timeout_counter[4]), .A2(
        timeout_counter[5]), .B(timeout_counter[6]), .X(n403) );
  UDB116SVT24_INV_0P75 U464 ( .A(timeout_counter[7]), .X(n402) );
  UDB116SVT24_INV_0P75 U465 ( .A(timeout_counter[8]), .X(n483) );
  UDB116SVT24_OAI21_0P75 U466 ( .A1(n403), .A2(n402), .B(n483), .X(n404) );
  UDB116SVT24_AOI31_0P75 U467 ( .A1(timeout_counter[10]), .A2(
        timeout_counter[9]), .A3(n404), .B(timeout_counter[11]), .X(n405) );
  UDB116SVT24_NR3_0P75 U468 ( .A1(n712), .A2(n496), .A3(n405), .X(n432) );
  UDB116SVT24_AN3B_0P75 U469 ( .B1(n368), .B2(n406), .A(n432), .X(n627) );
  UDB116SVT24_AOAI211_0P75 U470 ( .A1(n537), .A2(N79), .B(n627), .C(RX), .X(
        n407) );
  UDB116SVT24_ND3_0P75 U471 ( .A1(n630), .A2(n408), .A3(n407), .X(n247) );
  UDB116SVT24_OR2_0P75 U472 ( .A1(n485), .A2(n409), .X(n635) );
  UDB116SVT24_OAI21_0P75 U473 ( .A1(pulse_count[1]), .A2(n335), .B(n410), .X(
        n632) );
  UDB116SVT24_OA2BB2_0P75 U474 ( .A1(n635), .A2(n316), .B1(n316), .B2(n632), 
        .X(n243) );
  UDB116SVT24_ND2_MM_0P75 U475 ( .A1(n626), .A2(n289), .X(n536) );
  UDB116SVT24_INV_0P75 U476 ( .A(n341), .X(n457) );
  UDB116SVT24_OAI22_0P75 U477 ( .A1(n290), .A2(ext_counter_TX[8]), .B1(n457), 
        .B2(ext_counter_TX[7]), .X(n411) );
  UDB116SVT24_AOI221_1 U478 ( .A1(n290), .A2(ext_counter_TX[8]), .B1(
        ext_counter_TX[7]), .B2(n457), .C(n411), .X(n418) );
  UDB116SVT24_INV_0P75 U479 ( .A(n370), .X(n673) );
  UDB116SVT24_INV_0P75 U480 ( .A(n347), .X(n442) );
  UDB116SVT24_OAI22_0P75 U481 ( .A1(n673), .A2(ext_counter_TX[9]), .B1(n442), 
        .B2(ext_counter_TX[5]), .X(n412) );
  UDB116SVT24_AOI221_1 U482 ( .A1(n317), .A2(ext_counter_TX[9]), .B1(
        ext_counter_TX[5]), .B2(n442), .C(n412), .X(n417) );
  UDB116SVT24_INV_0P75 U483 ( .A(counter[1]), .X(n656) );
  UDB116SVT24_INV_0P75 U484 ( .A(n350), .X(n451) );
  UDB116SVT24_OAI22_0P75 U485 ( .A1(n369), .A2(ext_counter_TX[1]), .B1(n451), 
        .B2(ext_counter_TX[3]), .X(n413) );
  UDB116SVT24_AOI221_1 U486 ( .A1(n369), .A2(ext_counter_TX[1]), .B1(
        ext_counter_TX[3]), .B2(n451), .C(n413), .X(n416) );
  UDB116SVT24_OAI22_0P75 U487 ( .A1(n291), .A2(ext_counter_TX[6]), .B1(n318), 
        .B2(ext_counter_TX[4]), .X(n414) );
  UDB116SVT24_AOI221_1 U488 ( .A1(n291), .A2(ext_counter_TX[6]), .B1(
        ext_counter_TX[4]), .B2(n304), .C(n414), .X(n415) );
  UDB116SVT24_ND4_0P75 U489 ( .A1(n418), .A2(n417), .A3(n416), .A4(n415), .X(
        n430) );
  UDB116SVT24_INV_0P75 U490 ( .A(n344), .X(n502) );
  UDB116SVT24_OAI22_0P75 U491 ( .A1(n319), .A2(ext_counter_TX[10]), .B1(n502), 
        .B2(ext_counter_TX[0]), .X(n419) );
  UDB116SVT24_AOI221_1 U492 ( .A1(n319), .A2(ext_counter_TX[10]), .B1(
        ext_counter_TX[0]), .B2(n354), .C(n419), .X(n424) );
  UDB116SVT24_INV_0P75 U493 ( .A(counter[12]), .X(n528) );
  UDB116SVT24_OAI22_0P75 U494 ( .A1(n293), .A2(ext_counter_TX[2]), .B1(n528), 
        .B2(ext_counter_TX[12]), .X(n420) );
  UDB116SVT24_AOI221_1 U495 ( .A1(n293), .A2(ext_counter_TX[2]), .B1(
        ext_counter_TX[12]), .B2(n321), .C(n420), .X(n423) );
  UDB116SVT24_INV_0P75 U496 ( .A(n307), .X(n448) );
  UDB116SVT24_OAI22_0P75 U497 ( .A1(n448), .A2(ext_counter_TX[13]), .B1(n327), 
        .B2(ext_counter_TX[11]), .X(n421) );
  UDB116SVT24_AOI221_1 U498 ( .A1(n448), .A2(ext_counter_TX[13]), .B1(
        ext_counter_TX[11]), .B2(n322), .C(n421), .X(n422) );
  UDB116SVT24_ND4_0P75 U499 ( .A1(ext_counter_flag_TX), .A2(n424), .A3(n423), 
        .A4(n422), .X(n429) );
  UDB116SVT24_ND4_0P75 U500 ( .A1(n324), .A2(n370), .A3(n350), .A4(n318), .X(
        n428) );
  UDB116SVT24_NR3_0P75 U501 ( .A1(n354), .A2(n293), .A3(n369), .X(n663) );
  UDB116SVT24_NR3_0P75 U502 ( .A1(n328), .A2(n320), .A3(n302), .X(n426) );
  UDB116SVT24_NR4_0P75 U503 ( .A1(ext_counter_flag_TX), .A2(n346), .A3(n340), 
        .A4(counter[6]), .X(n425) );
  UDB116SVT24_ND4_0P75 U504 ( .A1(n307), .A2(n663), .A3(n426), .A4(n425), .X(
        n427) );
  UDB116SVT24_OAI22_0P75 U505 ( .A1(n430), .A2(n429), .B1(n428), .B2(n427), 
        .X(n491) );
  UDB116SVT24_ND2_MM_0P75 U506 ( .A1(n431), .A2(n491), .X(n481) );
  UDB116SVT24_ND2_MM_0P75 U507 ( .A1(n282), .A2(n481), .X(n478) );
  UDB116SVT24_INV_0P75 U508 ( .A(n373), .X(n694) );
  UDB116SVT24_OA2BB2_0P75 U509 ( .A1(n298), .A2(n478), .B1(n694), .B2(n298), 
        .X(n201) );
  UDB116SVT24_NR2_0P75 U510 ( .A1(rfin_edge), .A2(n432), .X(n494) );
  UDB116SVT24_AOI22_1 U511 ( .A1(n256), .A2(n333), .B1(n287), .B2(n255), .X(
        n191) );
  UDB116SVT24_ND3_0P75 U512 ( .A1(pulse_gen_count[3]), .A2(n433), .A3(
        pulse_gen_count[4]), .X(n531) );
  UDB116SVT24_INV_0P75 U513 ( .A(avg_interval[7]), .X(n454) );
  UDB116SVT24_INV_0P75 U514 ( .A(avg_interval[9]), .X(n456) );
  UDB116SVT24_AOI2222_V2_0P75 U515 ( .A1(n454), .A2(n341), .B1(avg_interval[9]), .B2(n317), .C1(n457), .C2(avg_interval[7]), .D1(n371), .D2(n456), .X(n470)
         );
  UDB116SVT24_INV_0P75 U516 ( .A(avg_interval[10]), .X(n450) );
  UDB116SVT24_INV_0P75 U517 ( .A(avg_interval[11]), .X(n445) );
  UDB116SVT24_AOI2222_V2_0P75 U518 ( .A1(n450), .A2(n303), .B1(
        avg_interval[11]), .B2(n322), .C1(n319), .C2(avg_interval[10]), .D1(
        counter[11]), .D2(n445), .X(n469) );
  UDB116SVT24_INV_0P75 U519 ( .A(avg_interval[12]), .X(n741) );
  UDB116SVT24_AOI22_1 U520 ( .A1(avg_interval[12]), .A2(counter[12]), .B1(n321), .B2(n741), .X(n440) );
  UDB116SVT24_OA2BB2_0P75 U521 ( .A1(avg_interval[0]), .A2(n343), .B1(n344), 
        .B2(avg_interval[0]), .X(n439) );
  UDB116SVT24_INV_0P75 U522 ( .A(avg_interval[4]), .X(n452) );
  UDB116SVT24_INV_0P75 U523 ( .A(avg_interval[5]), .X(n453) );
  UDB116SVT24_AOI2222_V2_0P75 U524 ( .A1(n452), .A2(n305), .B1(avg_interval[5]), .B2(n442), .C1(n318), .C2(avg_interval[4]), .D1(n346), .D2(n453), .X(n437)
         );
  UDB116SVT24_INV_0P75 U525 ( .A(avg_interval[6]), .X(n441) );
  UDB116SVT24_INV_0P75 U526 ( .A(avg_interval[8]), .X(n458) );
  UDB116SVT24_AOI2222_V2_0P75 U527 ( .A1(n441), .A2(n330), .B1(avg_interval[8]), .B2(n290), .C1(n291), .C2(avg_interval[6]), .D1(n324), .D2(n458), .X(n436)
         );
  UDB116SVT24_INV_0P75 U528 ( .A(avg_interval[1]), .X(n446) );
  UDB116SVT24_INV_0P75 U529 ( .A(avg_interval[13]), .X(n444) );
  UDB116SVT24_AOI2222_V2_0P75 U530 ( .A1(n446), .A2(n326), .B1(
        avg_interval[13]), .B2(n448), .C1(n656), .C2(avg_interval[1]), .D1(
        counter[13]), .D2(n444), .X(n435) );
  UDB116SVT24_INV_0P75 U531 ( .A(avg_interval[2]), .X(n455) );
  UDB116SVT24_INV_0P75 U532 ( .A(avg_interval[3]), .X(n443) );
  UDB116SVT24_AOI2222_V2_0P75 U533 ( .A1(n455), .A2(counter[2]), .B1(n349), 
        .B2(n443), .C1(n299), .C2(avg_interval[2]), .D1(avg_interval[3]), .D2(
        n451), .X(n434) );
  UDB116SVT24_ND4_0P75 U534 ( .A1(n437), .A2(n436), .A3(n435), .A4(n434), .X(
        n438) );
  UDB116SVT24_NR4_0P75 U535 ( .A1(first_pulse_flag), .A2(n440), .A3(n439), 
        .A4(n438), .X(n468) );
  UDB116SVT24_AOI22_1 U536 ( .A1(avg_interval[6]), .A2(n347), .B1(n442), .B2(
        n441), .X(n466) );
  UDB116SVT24_AOI22_1 U537 ( .A1(avg_interval[3]), .A2(n292), .B1(n299), .B2(
        n443), .X(n465) );
  UDB116SVT24_AOI2222_V2_0P75 U538 ( .A1(n445), .A2(n303), .B1(
        avg_interval[13]), .B2(n528), .C1(n302), .C2(avg_interval[11]), .D1(
        counter[12]), .D2(n444), .X(n449) );
  UDB116SVT24_AOI22_1 U539 ( .A1(avg_interval[1]), .A2(n502), .B1(n343), .B2(
        n446), .X(n447) );
  UDB116SVT24_ND4_0P75 U540 ( .A1(first_pulse_flag), .A2(n449), .A3(n448), 
        .A4(n447), .X(n464) );
  UDB116SVT24_AOI2222_V2_0P75 U541 ( .A1(n452), .A2(n350), .B1(
        avg_interval[10]), .B2(n673), .C1(n451), .C2(avg_interval[4]), .D1(
        n371), .D2(n450), .X(n462) );
  UDB116SVT24_AOI2222_V2_0P75 U542 ( .A1(n453), .A2(counter[4]), .B1(
        avg_interval[12]), .B2(n327), .C1(n318), .C2(avg_interval[5]), .D1(
        n328), .D2(n741), .X(n461) );
  UDB116SVT24_AOI2222_V2_0P75 U543 ( .A1(n455), .A2(n326), .B1(avg_interval[7]), .B2(n291), .C1(n656), .C2(avg_interval[2]), .D1(n330), .D2(n454), .X(n460)
         );
  UDB116SVT24_AOI2222_V2_0P75 U544 ( .A1(n458), .A2(n340), .B1(avg_interval[9]), .B2(n290), .C1(n457), .C2(avg_interval[8]), .D1(counter[8]), .D2(n456), .X(
        n459) );
  UDB116SVT24_ND4_0P75 U545 ( .A1(n462), .A2(n461), .A3(n460), .A4(n459), .X(
        n463) );
  UDB116SVT24_NR4_0P75 U546 ( .A1(n466), .A2(n465), .A3(n464), .A4(n463), .X(
        n467) );
  UDB116SVT24_AOI31_0P75 U547 ( .A1(n470), .A2(n469), .A3(n468), .B(n467), .X(
        n530) );
  UDB116SVT24_NR3_0P75 U548 ( .A1(n309), .A2(n310), .A3(n692), .X(n629) );
  UDB116SVT24_INV_0P75 U549 ( .A(n629), .X(n529) );
  UDB116SVT24_NR2_0P75 U550 ( .A1(n530), .A2(n529), .X(n693) );
  UDB116SVT24_INV_0P75 U551 ( .A(first_pulse_flag), .X(n471) );
  UDB116SVT24_AOAI211_0P75 U552 ( .A1(n531), .A2(n693), .B(n471), .C(n282), 
        .X(n216) );
  UDB116SVT24_ND2_MM_0P75 U553 ( .A1(pulse_pack_count[1]), .A2(
        pulse_pack_count[0]), .X(n473) );
  UDB116SVT24_NR2_0P75 U554 ( .A1(pulse_pack_count[1]), .A2(n374), .X(n682) );
  UDB116SVT24_OAI21_0P75 U555 ( .A1(n298), .A2(n373), .B(n478), .X(n683) );
  UDB116SVT24_OAI21_0P75 U556 ( .A1(n682), .A2(n683), .B(pulse_pack_count[2]), 
        .X(n472) );
  UDB116SVT24_OAI31_1 U557 ( .A1(pulse_pack_count[2]), .A2(n374), .A3(n473), 
        .B(n472), .X(n199) );
  UDB116SVT24_NR2_0P75 U558 ( .A1(n474), .A2(n473), .X(n684) );
  UDB116SVT24_ND2_MM_0P75 U559 ( .A1(pulse_pack_count[3]), .A2(n684), .X(n476)
         );
  UDB116SVT24_NR2_0P75 U560 ( .A1(pulse_pack_count[3]), .A2(n481), .X(n685) );
  UDB116SVT24_OAI21_0P75 U561 ( .A1(n684), .A2(n374), .B(n478), .X(n686) );
  UDB116SVT24_OAI21_0P75 U562 ( .A1(n685), .A2(n686), .B(pulse_pack_count[4]), 
        .X(n475) );
  UDB116SVT24_OAI31_1 U563 ( .A1(pulse_pack_count[4]), .A2(n481), .A3(n476), 
        .B(n475), .X(n197) );
  UDB116SVT24_NR2_0P75 U564 ( .A1(n477), .A2(n476), .X(n689) );
  UDB116SVT24_INV_0P75 U565 ( .A(n689), .X(n482) );
  UDB116SVT24_NR2_0P75 U566 ( .A1(pulse_pack_count[5]), .A2(n373), .X(n688) );
  UDB116SVT24_OAI21_0P75 U567 ( .A1(n689), .A2(n481), .B(n478), .X(n687) );
  UDB116SVT24_OAI21_0P75 U568 ( .A1(n688), .A2(n687), .B(pulse_pack_count[6]), 
        .X(n479) );
  UDB116SVT24_OAI31_1 U569 ( .A1(n482), .A2(n373), .A3(n480), .B(n479), .X(
        n195) );
  UDB116SVT24_ND2_MM_0P75 U570 ( .A1(timeout_counter[1]), .A2(
        timeout_counter[0]), .X(n506) );
  UDB116SVT24_NR2B_0P75 U571 ( .A(timeout_counter[2]), .B(n506), .X(n700) );
  UDB116SVT24_ND2_MM_0P75 U572 ( .A1(timeout_counter[3]), .A2(n700), .X(n504)
         );
  UDB116SVT24_NR2B_0P75 U573 ( .A(timeout_counter[4]), .B(n504), .X(n703) );
  UDB116SVT24_ND2_MM_0P75 U574 ( .A1(timeout_counter[5]), .A2(n703), .X(n510)
         );
  UDB116SVT24_NR2B_0P75 U575 ( .A(timeout_counter[6]), .B(n510), .X(n706) );
  UDB116SVT24_ND2_MM_0P75 U576 ( .A1(timeout_counter[7]), .A2(n706), .X(n508)
         );
  UDB116SVT24_NR2_0P75 U577 ( .A1(n483), .A2(n508), .X(n709) );
  UDB116SVT24_ND3_0P75 U578 ( .A1(timeout_counter[10]), .A2(n254), .A3(n709), 
        .X(n495) );
  UDB116SVT24_AOI21_0P75 U579 ( .A1(n494), .A2(n495), .B(n335), .X(n715) );
  UDB116SVT24_INV_0P75 U580 ( .A(timeout_counter[11]), .X(n484) );
  UDB116SVT24_OR2_0P75 U581 ( .A1(n388), .A2(timeout_counter[11]), .X(n714) );
  UDB116SVT24_OAI22_0P75 U582 ( .A1(n715), .A2(n484), .B1(n714), .B2(n495), 
        .X(n180) );
  UDB116SVT24_INV_0P75 U583 ( .A(pulse_count[3]), .X(n633) );
  UDB116SVT24_ND2_MM_0P75 U584 ( .A1(n636), .A2(n485), .X(n486) );
  UDB116SVT24_NR2_0P75 U585 ( .A1(n486), .A2(pulse_count[0]), .X(n488) );
  UDB116SVT24_AOI31_0P75 U586 ( .A1(n536), .A2(n633), .A3(n488), .B(n487), .X(
        n661) );
  UDB116SVT24_INV_0P75 U587 ( .A(n661), .X(n655) );
  UDB116SVT24_AOAI211_0P75 U588 ( .A1(n502), .A2(n386), .B(n359), .C(
        interval_sum[0]), .X(n489) );
  UDB116SVT24_OAI31_1 U589 ( .A1(interval_sum[0]), .A2(n342), .A3(n654), .B(
        n489), .X(n234) );
  UDB116SVT24_ND2_MM_0P75 U590 ( .A1(n349), .A2(n663), .X(n513) );
  UDB116SVT24_NR2_0P75 U591 ( .A1(n304), .A2(n513), .X(n666) );
  UDB116SVT24_ND2_MM_0P75 U592 ( .A1(n347), .A2(n666), .X(n515) );
  UDB116SVT24_NR2_0P75 U593 ( .A1(n329), .A2(n515), .X(n516) );
  UDB116SVT24_OAI22_0P75 U594 ( .A1(n278), .A2(n335), .B1(n491), .B2(n490), 
        .X(n492) );
  UDB116SVT24_ND2_MM_0P75 U595 ( .A1(state[0]), .A2(n531), .X(n691) );
  UDB116SVT24_OAI21_0P75 U596 ( .A1(n309), .A2(n691), .B(state[1]), .X(n675)
         );
  UDB116SVT24_AOAI211_0P75 U597 ( .A1(n530), .A2(n629), .B(n492), .C(n356), 
        .X(n676) );
  UDB116SVT24_OAI21_0P75 U598 ( .A1(n516), .A2(n380), .B(n356), .X(n517) );
  UDB116SVT24_NR2_0P75 U599 ( .A1(n340), .A2(n382), .X(n518) );
  UDB116SVT24_AOI22_1 U600 ( .A1(n341), .A2(n517), .B1(n516), .B2(n518), .X(
        n493) );
  UDB116SVT24_INV_0P75 U601 ( .A(n313), .X(n501) );
  UDB116SVT24_ND2_MM_0P75 U602 ( .A1(n493), .A2(n501), .X(n207) );
  UDB116SVT24_NR2_0P75 U603 ( .A1(n494), .A2(n334), .X(n538) );
  UDB116SVT24_OR3B_0P75 U604 ( .B1(n287), .B2(n495), .A(timeout_counter[11]), 
        .X(n713) );
  UDB116SVT24_OAI22_0P75 U605 ( .A1(n538), .A2(n496), .B1(n712), .B2(n713), 
        .X(n178) );
  UDB116SVT24_NR2_0P75 U606 ( .A1(counter[1]), .A2(n383), .X(n521) );
  UDB116SVT24_OAI21_0P75 U607 ( .A1(n344), .A2(n381), .B(n357), .X(n520) );
  UDB116SVT24_AOI22_1 U608 ( .A1(n344), .A2(n521), .B1(counter[1]), .B2(n520), 
        .X(n497) );
  UDB116SVT24_ND2_MM_0P75 U609 ( .A1(n497), .A2(n501), .X(n213) );
  UDB116SVT24_ND2_MM_0P75 U610 ( .A1(n254), .A2(n709), .X(n499) );
  UDB116SVT24_NR2_0P75 U611 ( .A1(n254), .A2(n389), .X(n710) );
  UDB116SVT24_OAI21_0P75 U612 ( .A1(n709), .A2(n387), .B(n367), .X(n711) );
  UDB116SVT24_OAI21_0P75 U613 ( .A1(n710), .A2(n711), .B(timeout_counter[10]), 
        .X(n498) );
  UDB116SVT24_OAI31_1 U614 ( .A1(timeout_counter[10]), .A2(n288), .A3(n499), 
        .B(n498), .X(n181) );
  UDB116SVT24_ND2_MM_0P75 U615 ( .A1(n294), .A2(n354), .X(n500) );
  UDB116SVT24_OAI211_0P75 U616 ( .A1(n354), .A2(n675), .B1(n501), .B2(n500), 
        .X(n214) );
  UDB116SVT24_NR2_0P75 U617 ( .A1(timeout_counter[3]), .A2(n387), .X(n701) );
  UDB116SVT24_OAI21_0P75 U618 ( .A1(n700), .A2(n288), .B(n368), .X(n702) );
  UDB116SVT24_OAI21_0P75 U619 ( .A1(n701), .A2(n702), .B(timeout_counter[4]), 
        .X(n503) );
  UDB116SVT24_OAI31_1 U620 ( .A1(timeout_counter[4]), .A2(n288), .A3(n504), 
        .B(n503), .X(n187) );
  UDB116SVT24_NR2_0P75 U621 ( .A1(timeout_counter[1]), .A2(n388), .X(n698) );
  UDB116SVT24_OAI21_0P75 U622 ( .A1(n256), .A2(n388), .B(n368), .X(n699) );
  UDB116SVT24_OAI21_0P75 U623 ( .A1(n698), .A2(n699), .B(timeout_counter[2]), 
        .X(n505) );
  UDB116SVT24_OAI31_1 U624 ( .A1(timeout_counter[2]), .A2(n387), .A3(n506), 
        .B(n505), .X(n189) );
  UDB116SVT24_NR2_0P75 U625 ( .A1(timeout_counter[7]), .A2(n287), .X(n707) );
  UDB116SVT24_OAI21_0P75 U626 ( .A1(n706), .A2(n389), .B(n367), .X(n708) );
  UDB116SVT24_OAI21_0P75 U627 ( .A1(n707), .A2(n708), .B(timeout_counter[8]), 
        .X(n507) );
  UDB116SVT24_OAI31_1 U628 ( .A1(timeout_counter[8]), .A2(n388), .A3(n508), 
        .B(n507), .X(n183) );
  UDB116SVT24_NR2_0P75 U629 ( .A1(timeout_counter[5]), .A2(n288), .X(n704) );
  UDB116SVT24_OAI21_0P75 U630 ( .A1(n703), .A2(n389), .B(n366), .X(n705) );
  UDB116SVT24_OAI21_0P75 U631 ( .A1(n704), .A2(n705), .B(timeout_counter[6]), 
        .X(n509) );
  UDB116SVT24_OAI31_1 U632 ( .A1(timeout_counter[6]), .A2(n389), .A3(n510), 
        .B(n509), .X(n185) );
  UDB116SVT24_NR2_0P75 U633 ( .A1(n349), .A2(n381), .X(n662) );
  UDB116SVT24_OAI21_0P75 U634 ( .A1(n663), .A2(n383), .B(n356), .X(n664) );
  UDB116SVT24_OAI21_0P75 U635 ( .A1(n662), .A2(n664), .B(n305), .X(n512) );
  UDB116SVT24_OAI31_1 U636 ( .A1(counter[4]), .A2(n381), .A3(n513), .B(n512), 
        .X(n210) );
  UDB116SVT24_NR2_0P75 U637 ( .A1(n346), .A2(n380), .X(n665) );
  UDB116SVT24_OAI21_0P75 U638 ( .A1(n666), .A2(n382), .B(n357), .X(n667) );
  UDB116SVT24_OAI21_0P75 U639 ( .A1(n665), .A2(n667), .B(n330), .X(n514) );
  UDB116SVT24_OAI31_1 U640 ( .A1(counter[6]), .A2(n382), .A3(n515), .B(n514), 
        .X(n208) );
  UDB116SVT24_ND2_MM_0P75 U641 ( .A1(n341), .A2(n516), .X(n524) );
  UDB116SVT24_OAOI211_0P75 U642 ( .A1(n518), .A2(n517), .B(counter[8]), .C(
        n678), .X(n519) );
  UDB116SVT24_OAI31_1 U643 ( .A1(n324), .A2(n383), .A3(n524), .B(n519), .X(
        n206) );
  UDB116SVT24_ND2_MM_0P75 U644 ( .A1(n343), .A2(n326), .X(n523) );
  UDB116SVT24_OAOI211_0P75 U645 ( .A1(n521), .A2(n520), .B(counter[2]), .C(
        n313), .X(n522) );
  UDB116SVT24_OAI31_1 U646 ( .A1(n292), .A2(n523), .A3(n676), .B(n522), .X(
        n212) );
  UDB116SVT24_INV_0P75 U647 ( .A(interval_sum[6]), .X(n603) );
  UDB116SVT24_AO2BB2_0P75 U648 ( .A1(n603), .A2(n661), .B1(n386), .B2(
        \intadd_0/SUM[4] ), .X(n222) );
  UDB116SVT24_NR2_0P75 U649 ( .A1(n323), .A2(n524), .X(n668) );
  UDB116SVT24_ND3_0P75 U650 ( .A1(counter[10]), .A2(n371), .A3(n668), .X(n526)
         );
  UDB116SVT24_NR2_0P75 U651 ( .A1(n383), .A2(n526), .X(n525) );
  UDB116SVT24_ND2_MM_0P75 U652 ( .A1(n328), .A2(n525), .X(n681) );
  UDB116SVT24_INV_0P75 U653 ( .A(n526), .X(n677) );
  UDB116SVT24_AOAI211_0P75 U654 ( .A1(n328), .A2(n677), .B(n381), .C(n357), 
        .X(n679) );
  UDB116SVT24_AOAI211_0P75 U655 ( .A1(n295), .A2(n528), .B(n679), .C(n307), 
        .X(n527) );
  UDB116SVT24_OAI31_1 U656 ( .A1(counter[13]), .A2(n321), .A3(n681), .B(n527), 
        .X(n215) );
  UDB116SVT24_AOAI211_0P75 U657 ( .A1(n530), .A2(n531), .B(n529), .C(n282), 
        .X(n640) );
  UDB116SVT24_ND3_0P75 U658 ( .A1(n629), .A2(n531), .A3(n640), .X(n641) );
  UDB116SVT24_AOI22_1 U659 ( .A1(n280), .A2(n252), .B1(n337), .B2(n279), .X(
        n241) );
  UDB116SVT24_INV_0P75 U660 ( .A(pulse_gen_count[3]), .X(n639) );
  UDB116SVT24_ND2_MM_0P75 U661 ( .A1(pulse_gen_count[1]), .A2(
        pulse_gen_count[0]), .X(n534) );
  UDB116SVT24_NR2B_0P75 U662 ( .A(pulse_gen_count[2]), .B(n534), .X(n642) );
  UDB116SVT24_INV_0P75 U663 ( .A(n642), .X(n637) );
  UDB116SVT24_AO21B_0P75 U664 ( .A1(n252), .A2(n338), .B(pulse_gen_count[4]), 
        .X(n532) );
  UDB116SVT24_OAI31_1 U665 ( .A1(n338), .A2(n639), .A3(n637), .B(n532), .X(
        n239) );
  UDB116SVT24_NR2_0P75 U666 ( .A1(pulse_gen_count[1]), .A2(n338), .X(n643) );
  UDB116SVT24_OAI21_0P75 U667 ( .A1(n280), .A2(n337), .B(n252), .X(n644) );
  UDB116SVT24_OAI21_0P75 U668 ( .A1(n643), .A2(n644), .B(pulse_gen_count[2]), 
        .X(n533) );
  UDB116SVT24_OAI31_1 U669 ( .A1(pulse_gen_count[2]), .A2(n338), .A3(n534), 
        .B(n533), .X(n237) );
  UDB116SVT24_INV_0P75 U670 ( .A(interval_sum[8]), .X(n588) );
  UDB116SVT24_AO2BB2_0P75 U671 ( .A1(n588), .A2(n661), .B1(n285), .B2(
        \intadd_0/SUM[6] ), .X(n224) );
  UDB116SVT24_INV_0P75 U672 ( .A(interval_sum[10]), .X(n573) );
  UDB116SVT24_AO2BB2_0P75 U673 ( .A1(n573), .A2(n661), .B1(n385), .B2(
        \intadd_0/SUM[8] ), .X(n226) );
  UDB116SVT24_INV_0P75 U674 ( .A(\intadd_0/n1 ), .X(n535) );
  UDB116SVT24_AOI21_0P75 U675 ( .A1(n367), .A2(n535), .B(n361), .X(n653) );
  UDB116SVT24_ND2_MM_0P75 U676 ( .A1(n386), .A2(n300), .X(n652) );
  UDB116SVT24_OAI22_0P75 U677 ( .A1(n653), .A2(n300), .B1(n535), .B2(n652), 
        .X(n230) );
  UDB116SVT24_ND3_0P75 U678 ( .A1(n301), .A2(n372), .A3(\intadd_0/n1 ), .X(
        n645) );
  UDB116SVT24_AOI21_0P75 U679 ( .A1(n366), .A2(n645), .B(n360), .X(n649) );
  UDB116SVT24_INV_0P75 U680 ( .A(interval_sum[16]), .X(n646) );
  UDB116SVT24_ND2_MM_0P75 U681 ( .A1(n284), .A2(n646), .X(n648) );
  UDB116SVT24_OAI22_0P75 U682 ( .A1(n649), .A2(n646), .B1(n648), .B2(n645), 
        .X(n232) );
  UDB116SVT24_NR2B_0P75 U683 ( .A(tx_rdy), .B(tx_rdy_prev), .X(N81) );
  UDB116SVT24_AO21B_0P75 U684 ( .A1(n690), .A2(sh_en_done), .B(n536), .X(n235)
         );
  UDB116SVT24_INV_0P75 U685 ( .A(n537), .X(n540) );
  UDB116SVT24_AO31_0P75 U686 ( .A1(n540), .A2(n334), .A3(fsm_rst), .B(n538), 
        .X(n194) );
  UDB116SVT24_AOI21_0P75 U687 ( .A1(interval_sum[15]), .A2(interval_sum[17]), 
        .B(n646), .X(n542) );
  UDB116SVT24_AOI21_0P75 U688 ( .A1(interval_sum[15]), .A2(interval_sum[16]), 
        .B(n275), .X(n548) );
  UDB116SVT24_AOAI211_0P75 U689 ( .A1(n542), .A2(interval_sum[15]), .B(n548), 
        .C(interval_sum[14]), .X(n552) );
  UDB116SVT24_ND2_MM_0P75 U690 ( .A1(n276), .A2(interval_sum[16]), .X(n541) );
  UDB116SVT24_ND2_MM_0P75 U691 ( .A1(n372), .A2(n541), .X(n551) );
  UDB116SVT24_NR2_0P75 U692 ( .A1(n552), .A2(n551), .X(n550) );
  UDB116SVT24_INV_0P75 U693 ( .A(n542), .X(n546) );
  UDB116SVT24_OAI21_0P75 U694 ( .A1(n301), .A2(n276), .B(n372), .X(n543) );
  UDB116SVT24_NR2_0P75 U695 ( .A1(interval_sum[16]), .A2(n543), .X(n544) );
  UDB116SVT24_AOI22_1 U696 ( .A1(n544), .A2(interval_sum[13]), .B1(n550), .B2(
        n546), .X(n545) );
  UDB116SVT24_OAI21_0P75 U697 ( .A1(n550), .A2(n546), .B(n545), .X(n549) );
  UDB116SVT24_NR2_0P75 U698 ( .A1(ext_counter_flag_RX), .A2(n376), .X(n739) );
  UDB116SVT24_AN2_1 U699 ( .A1(ext_counter_flag_RX), .A2(n742), .X(n754) );
  UDB116SVT24_AOI22_1 U700 ( .A1(ext_counter_RX[13]), .A2(n754), .B1(
        avg_interval[13]), .B2(n376), .X(n547) );
  UDB116SVT24_AO21B_0P75 U701 ( .A1(n549), .A2(n353), .B(n547), .X(n176) );
  UDB116SVT24_OAI21_0P75 U702 ( .A1(n301), .A2(n548), .B(n552), .X(n554) );
  UDB116SVT24_ND2_MM_0P75 U703 ( .A1(n274), .A2(n549), .X(n553) );
  UDB116SVT24_EO2_V2_1 U704 ( .A1(n554), .A2(n553), .X(n564) );
  UDB116SVT24_EN2_V2_0P75 U705 ( .A1(n274), .A2(n549), .X(n560) );
  UDB116SVT24_INV_0P75 U706 ( .A(n560), .X(n557) );
  UDB116SVT24_AOI21_0P75 U707 ( .A1(n552), .A2(n551), .B(n550), .X(n556) );
  UDB116SVT24_NR2_0P75 U708 ( .A1(n554), .A2(n553), .X(n555) );
  UDB116SVT24_EO2_V2_1 U709 ( .A1(n556), .A2(n555), .X(n558) );
  UDB116SVT24_AO31_0P75 U710 ( .A1(interval_sum[12]), .A2(n564), .A3(n557), 
        .B(n558), .X(n738) );
  UDB116SVT24_ND2_MM_0P75 U711 ( .A1(n272), .A2(n738), .X(n559) );
  UDB116SVT24_OR2_0P75 U712 ( .A1(n560), .A2(n559), .X(n563) );
  UDB116SVT24_OAI21_0P75 U713 ( .A1(n272), .A2(n558), .B(n559), .X(n568) );
  UDB116SVT24_EN2_V2_0P75 U714 ( .A1(n560), .A2(n559), .X(n571) );
  UDB116SVT24_NR2_0P75 U715 ( .A1(n568), .A2(n571), .X(n561) );
  UDB116SVT24_AOI22_1 U716 ( .A1(n561), .A2(interval_sum[11]), .B1(n564), .B2(
        n563), .X(n562) );
  UDB116SVT24_OAI21_0P75 U717 ( .A1(n564), .A2(n563), .B(n562), .X(n566) );
  UDB116SVT24_AOI22_1 U718 ( .A1(ext_counter_RX[11]), .A2(n363), .B1(
        avg_interval[11]), .B2(n377), .X(n565) );
  UDB116SVT24_AO21B_0P75 U719 ( .A1(n566), .A2(n352), .B(n565), .X(n174) );
  UDB116SVT24_ND2_MM_0P75 U720 ( .A1(n270), .A2(n566), .X(n567) );
  UDB116SVT24_EO2_V2_1 U721 ( .A1(n568), .A2(n567), .X(n579) );
  UDB116SVT24_EO2_V2_1 U722 ( .A1(n270), .A2(n566), .X(n575) );
  UDB116SVT24_NR2_0P75 U723 ( .A1(n568), .A2(n567), .X(n572) );
  UDB116SVT24_ND3_0P75 U724 ( .A1(interval_sum[10]), .A2(n579), .A3(n575), .X(
        n569) );
  UDB116SVT24_OAI21_0P75 U725 ( .A1(n572), .A2(n571), .B(n569), .X(n570) );
  UDB116SVT24_AOI21_0P75 U726 ( .A1(n572), .A2(n571), .B(n570), .X(n744) );
  UDB116SVT24_NR2_0P75 U727 ( .A1(n744), .A2(n573), .X(n574) );
  UDB116SVT24_ND2_MM_0P75 U728 ( .A1(n575), .A2(n574), .X(n578) );
  UDB116SVT24_EN2_V2_0P75 U729 ( .A1(n573), .A2(n744), .X(n583) );
  UDB116SVT24_EN2_V2_0P75 U730 ( .A1(n575), .A2(n574), .X(n586) );
  UDB116SVT24_NR2_0P75 U731 ( .A1(n583), .A2(n586), .X(n576) );
  UDB116SVT24_AOI22_1 U732 ( .A1(n576), .A2(interval_sum[9]), .B1(n579), .B2(
        n578), .X(n577) );
  UDB116SVT24_OAI21_0P75 U733 ( .A1(n579), .A2(n578), .B(n577), .X(n581) );
  UDB116SVT24_AOI22_1 U734 ( .A1(ext_counter_RX[9]), .A2(n364), .B1(
        avg_interval[9]), .B2(n378), .X(n580) );
  UDB116SVT24_AO21B_0P75 U735 ( .A1(n581), .A2(n352), .B(n580), .X(n172) );
  UDB116SVT24_ND2_MM_0P75 U736 ( .A1(n268), .A2(n581), .X(n582) );
  UDB116SVT24_EO2_V2_1 U737 ( .A1(n583), .A2(n582), .X(n594) );
  UDB116SVT24_EO2_V2_1 U738 ( .A1(n268), .A2(n581), .X(n590) );
  UDB116SVT24_NR2_0P75 U739 ( .A1(n583), .A2(n582), .X(n587) );
  UDB116SVT24_ND3_0P75 U740 ( .A1(interval_sum[8]), .A2(n594), .A3(n590), .X(
        n584) );
  UDB116SVT24_OAI21_0P75 U741 ( .A1(n587), .A2(n586), .B(n584), .X(n585) );
  UDB116SVT24_AOI21_0P75 U742 ( .A1(n587), .A2(n586), .B(n585), .X(n746) );
  UDB116SVT24_NR2_0P75 U743 ( .A1(n746), .A2(n588), .X(n589) );
  UDB116SVT24_ND2_MM_0P75 U744 ( .A1(n590), .A2(n589), .X(n593) );
  UDB116SVT24_EN2_V2_0P75 U745 ( .A1(n588), .A2(n746), .X(n598) );
  UDB116SVT24_EN2_V2_0P75 U746 ( .A1(n590), .A2(n589), .X(n601) );
  UDB116SVT24_NR2_0P75 U747 ( .A1(n598), .A2(n601), .X(n591) );
  UDB116SVT24_AOI22_1 U748 ( .A1(n591), .A2(interval_sum[7]), .B1(n594), .B2(
        n593), .X(n592) );
  UDB116SVT24_OAI21_0P75 U749 ( .A1(n594), .A2(n593), .B(n592), .X(n596) );
  UDB116SVT24_AOI22_1 U750 ( .A1(ext_counter_RX[7]), .A2(n365), .B1(
        avg_interval[7]), .B2(n375), .X(n595) );
  UDB116SVT24_AO21B_0P75 U751 ( .A1(n596), .A2(n353), .B(n595), .X(n170) );
  UDB116SVT24_ND2_MM_0P75 U752 ( .A1(n266), .A2(n596), .X(n597) );
  UDB116SVT24_EO2_V2_1 U753 ( .A1(n598), .A2(n597), .X(n609) );
  UDB116SVT24_EO2_V2_1 U754 ( .A1(n266), .A2(n596), .X(n605) );
  UDB116SVT24_NR2_0P75 U755 ( .A1(n598), .A2(n597), .X(n602) );
  UDB116SVT24_ND3_0P75 U756 ( .A1(interval_sum[6]), .A2(n609), .A3(n605), .X(
        n599) );
  UDB116SVT24_OAI21_0P75 U757 ( .A1(n602), .A2(n601), .B(n599), .X(n600) );
  UDB116SVT24_AOI21_0P75 U758 ( .A1(n602), .A2(n601), .B(n600), .X(n748) );
  UDB116SVT24_NR2_0P75 U759 ( .A1(n748), .A2(n603), .X(n604) );
  UDB116SVT24_ND2_MM_0P75 U760 ( .A1(n605), .A2(n604), .X(n608) );
  UDB116SVT24_EN2_V2_0P75 U761 ( .A1(n603), .A2(n748), .X(n613) );
  UDB116SVT24_EN2_V2_0P75 U762 ( .A1(n605), .A2(n604), .X(n617) );
  UDB116SVT24_NR2_0P75 U763 ( .A1(n613), .A2(n617), .X(n606) );
  UDB116SVT24_AOI22_1 U764 ( .A1(n606), .A2(interval_sum[5]), .B1(n609), .B2(
        n608), .X(n607) );
  UDB116SVT24_OAI21_0P75 U765 ( .A1(n609), .A2(n608), .B(n607), .X(n611) );
  UDB116SVT24_AOI22_1 U766 ( .A1(ext_counter_RX[5]), .A2(n364), .B1(
        avg_interval[5]), .B2(n376), .X(n610) );
  UDB116SVT24_AO21B_0P75 U767 ( .A1(n611), .A2(n352), .B(n610), .X(n168) );
  UDB116SVT24_ND2_MM_0P75 U768 ( .A1(n264), .A2(n611), .X(n612) );
  UDB116SVT24_EO2_V2_1 U769 ( .A1(n613), .A2(n612), .X(n624) );
  UDB116SVT24_EN2_V2_0P75 U770 ( .A1(n264), .A2(n611), .X(n620) );
  UDB116SVT24_NR2_0P75 U771 ( .A1(n613), .A2(n612), .X(n618) );
  UDB116SVT24_INV_0P75 U772 ( .A(n620), .X(n614) );
  UDB116SVT24_ND3_0P75 U773 ( .A1(n262), .A2(n624), .A3(n614), .X(n615) );
  UDB116SVT24_OAI21_0P75 U774 ( .A1(n618), .A2(n617), .B(n615), .X(n616) );
  UDB116SVT24_AOI21_0P75 U775 ( .A1(n618), .A2(n617), .B(n616), .X(n750) );
  UDB116SVT24_ND2B_0P75 U776 ( .A(n750), .B(n262), .X(n619) );
  UDB116SVT24_OR2_0P75 U777 ( .A1(n620), .A2(n619), .X(n623) );
  UDB116SVT24_EO2_V2_1 U778 ( .A1(interval_sum[4]), .A2(n750), .X(n718) );
  UDB116SVT24_EN2_V2_0P75 U779 ( .A1(n620), .A2(n619), .X(n721) );
  UDB116SVT24_NR2_0P75 U780 ( .A1(n718), .A2(n721), .X(n621) );
  UDB116SVT24_AOI22_1 U781 ( .A1(n621), .A2(n260), .B1(n624), .B2(n623), .X(
        n622) );
  UDB116SVT24_OAI21_0P75 U782 ( .A1(n624), .A2(n623), .B(n622), .X(n716) );
  UDB116SVT24_AOI22_1 U783 ( .A1(ext_counter_RX[3]), .A2(n363), .B1(
        avg_interval[3]), .B2(n377), .X(n625) );
  UDB116SVT24_AO21B_0P75 U784 ( .A1(n716), .A2(n353), .B(n625), .X(n166) );
  UDB116SVT24_AOI211_0P75 U785 ( .A1(n629), .A2(n628), .B1(n627), .B2(n626), 
        .X(n631) );
  UDB116SVT24_OAI21_0P75 U786 ( .A1(RX), .A2(n631), .B(n630), .X(n248) );
  UDB116SVT24_AOI21_0P75 U787 ( .A1(n368), .A2(n316), .B(n632), .X(n634) );
  UDB116SVT24_OAI32_1 U788 ( .A1(pulse_count[3]), .A2(n636), .A3(n635), .B1(
        n634), .B2(n633), .X(n246) );
  UDB116SVT24_OR3B_0P75 U789 ( .B1(n637), .B2(n337), .A(n639), .X(n638) );
  UDB116SVT24_OAOAI2111_1 U790 ( .A1(n642), .A2(n337), .B(n252), .C(n639), .D(
        n638), .X(n238) );
  UDB116SVT24_AO22_1 U791 ( .A1(pulse_gen_count[1]), .A2(n644), .B1(n643), 
        .B2(n280), .X(n236) );
  UDB116SVT24_INV_0P75 U792 ( .A(interval_sum[1]), .X(n731) );
  UDB116SVT24_ND2_MM_0P75 U793 ( .A1(interval_sum[0]), .A2(n343), .X(n659) );
  UDB116SVT24_MAJI3_1 U794 ( .A1(n731), .A2(n656), .A3(n659), .X(\intadd_0/CI ) );
  UDB116SVT24_OR3B_0P75 U795 ( .B1(n646), .B2(n645), .A(n285), .X(n647) );
  UDB116SVT24_AOI32_1 U796 ( .A1(n649), .A2(n276), .A3(n648), .B1(n647), .B2(
        n275), .X(n233) );
  UDB116SVT24_ND3_0P75 U797 ( .A1(n301), .A2(n384), .A3(\intadd_0/n1 ), .X(
        n651) );
  UDB116SVT24_INV_0P75 U798 ( .A(interval_sum[15]), .X(n650) );
  UDB116SVT24_AOI32_1 U799 ( .A1(n653), .A2(n372), .A3(n652), .B1(n651), .B2(
        n650), .X(n231) );
  UDB116SVT24_AO22_1 U800 ( .A1(n274), .A2(n359), .B1(n284), .B2(
        \intadd_0/SUM[11] ), .X(n229) );
  UDB116SVT24_AO22_1 U801 ( .A1(n272), .A2(n359), .B1(n385), .B2(
        \intadd_0/SUM[10] ), .X(n228) );
  UDB116SVT24_AO22_1 U802 ( .A1(n270), .A2(n360), .B1(n386), .B2(
        \intadd_0/SUM[9] ), .X(n227) );
  UDB116SVT24_AO22_1 U803 ( .A1(n268), .A2(n361), .B1(n385), .B2(
        \intadd_0/SUM[7] ), .X(n225) );
  UDB116SVT24_AO22_1 U804 ( .A1(n266), .A2(n360), .B1(n285), .B2(
        \intadd_0/SUM[5] ), .X(n223) );
  UDB116SVT24_AO22_1 U805 ( .A1(n264), .A2(n359), .B1(n384), .B2(
        \intadd_0/SUM[3] ), .X(n221) );
  UDB116SVT24_AO22_1 U806 ( .A1(n262), .A2(n360), .B1(n285), .B2(
        \intadd_0/SUM[2] ), .X(n220) );
  UDB116SVT24_AO22_1 U807 ( .A1(n260), .A2(n361), .B1(n384), .B2(
        \intadd_0/SUM[1] ), .X(n219) );
  UDB116SVT24_AO22_1 U808 ( .A1(n258), .A2(n655), .B1(n284), .B2(
        \intadd_0/SUM[0] ), .X(n218) );
  UDB116SVT24_AOI22_1 U809 ( .A1(interval_sum[1]), .A2(n369), .B1(n326), .B2(
        n296), .X(n658) );
  UDB116SVT24_AOI21_0P75 U810 ( .A1(n659), .A2(n658), .B(n283), .X(n657) );
  UDB116SVT24_OAI21_0P75 U811 ( .A1(n659), .A2(n658), .B(n657), .X(n660) );
  UDB116SVT24_OAI21_0P75 U812 ( .A1(n250), .A2(n296), .B(n660), .X(n217) );
  UDB116SVT24_AO22_1 U813 ( .A1(n350), .A2(n664), .B1(n663), .B2(n662), .X(
        n211) );
  UDB116SVT24_AO22_1 U814 ( .A1(n347), .A2(n667), .B1(n666), .B2(n665), .X(
        n209) );
  UDB116SVT24_ND2_MM_0P75 U815 ( .A1(n294), .A2(n668), .X(n672) );
  UDB116SVT24_OAI21_0P75 U816 ( .A1(n668), .A2(n382), .B(n356), .X(n670) );
  UDB116SVT24_AOI21_0P75 U817 ( .A1(n370), .A2(n670), .B(n313), .X(n669) );
  UDB116SVT24_OAI21_0P75 U818 ( .A1(n371), .A2(n672), .B(n669), .X(n205) );
  UDB116SVT24_AOI21_0P75 U819 ( .A1(n294), .A2(n673), .B(n670), .X(n671) );
  UDB116SVT24_OAI32_1 U820 ( .A1(n303), .A2(n317), .A3(n672), .B1(n671), .B2(
        n319), .X(n204) );
  UDB116SVT24_ND3_0P75 U821 ( .A1(n322), .A2(n677), .A3(n295), .X(n674) );
  UDB116SVT24_OAOAI2111_1 U822 ( .A1(n677), .A2(n676), .B(n357), .C(n322), .D(
        n674), .X(n203) );
  UDB116SVT24_AOI21_0P75 U823 ( .A1(n320), .A2(n679), .B(n678), .X(n680) );
  UDB116SVT24_OAI21_0P75 U824 ( .A1(n320), .A2(n681), .B(n680), .X(n202) );
  UDB116SVT24_AO22_1 U825 ( .A1(pulse_pack_count[1]), .A2(n683), .B1(n682), 
        .B2(pulse_pack_count[0]), .X(n200) );
  UDB116SVT24_AO22_1 U826 ( .A1(pulse_pack_count[3]), .A2(n686), .B1(n685), 
        .B2(n684), .X(n198) );
  UDB116SVT24_AO22_1 U827 ( .A1(n689), .A2(n688), .B1(pulse_pack_count[5]), 
        .B2(n687), .X(n196) );
  UDB116SVT24_OAI211_0P75 U828 ( .A1(n692), .A2(n691), .B1(n289), .B2(n690), 
        .X(n697) );
  UDB116SVT24_INV_0P75 U829 ( .A(sh_en), .X(n696) );
  UDB116SVT24_OAI21_0P75 U830 ( .A1(n694), .A2(n693), .B(n697), .X(n695) );
  UDB116SVT24_OAI21_0P75 U831 ( .A1(n697), .A2(n696), .B(n695), .X(n192) );
  UDB116SVT24_AO22_1 U832 ( .A1(timeout_counter[1]), .A2(n699), .B1(n698), 
        .B2(n256), .X(n190) );
  UDB116SVT24_AO22_1 U833 ( .A1(timeout_counter[3]), .A2(n702), .B1(n701), 
        .B2(n700), .X(n188) );
  UDB116SVT24_AO22_1 U834 ( .A1(timeout_counter[5]), .A2(n705), .B1(n704), 
        .B2(n703), .X(n186) );
  UDB116SVT24_AO22_1 U835 ( .A1(timeout_counter[7]), .A2(n708), .B1(n707), 
        .B2(n706), .X(n184) );
  UDB116SVT24_AO22_1 U836 ( .A1(n254), .A2(n711), .B1(n710), .B2(n709), .X(
        n182) );
  UDB116SVT24_AOI32_1 U837 ( .A1(n715), .A2(timeout_counter[12]), .A3(n714), 
        .B1(n713), .B2(n712), .X(n179) );
  UDB116SVT24_EN2_V2_0P75 U838 ( .A1(n260), .A2(n716), .X(n724) );
  UDB116SVT24_ND2_MM_0P75 U839 ( .A1(n260), .A2(n716), .X(n717) );
  UDB116SVT24_NR2_0P75 U840 ( .A1(n718), .A2(n717), .X(n722) );
  UDB116SVT24_EN2_V2_0P75 U841 ( .A1(n718), .A2(n717), .X(n727) );
  UDB116SVT24_OR3B_0P75 U842 ( .B1(n724), .B2(n727), .A(n258), .X(n719) );
  UDB116SVT24_OAI21_0P75 U843 ( .A1(n722), .A2(n721), .B(n719), .X(n720) );
  UDB116SVT24_AOI21_0P75 U844 ( .A1(n722), .A2(n721), .B(n720), .X(n752) );
  UDB116SVT24_ND2B_0P75 U845 ( .A(n752), .B(n258), .X(n723) );
  UDB116SVT24_EN2_V2_0P75 U846 ( .A1(n724), .A2(n723), .X(n725) );
  UDB116SVT24_INV_0P75 U847 ( .A(n725), .X(n735) );
  UDB116SVT24_EN2_V2_0P75 U848 ( .A1(n258), .A2(n752), .X(n729) );
  UDB116SVT24_ND2_MM_0P75 U849 ( .A1(n729), .A2(interval_sum[1]), .X(n734) );
  UDB116SVT24_NR2_0P75 U850 ( .A1(n724), .A2(n723), .X(n728) );
  UDB116SVT24_OAI22_0P75 U851 ( .A1(n728), .A2(n727), .B1(n734), .B2(n725), 
        .X(n726) );
  UDB116SVT24_AOI21_0P75 U852 ( .A1(n728), .A2(n727), .B(n726), .X(n756) );
  UDB116SVT24_ND2_MM_0P75 U853 ( .A1(n296), .A2(n756), .X(n730) );
  UDB116SVT24_OAI2111_1 U854 ( .A1(n296), .A2(n756), .B1(interval_sum[0]), 
        .B2(n730), .B3(n729), .X(n732) );
  UDB116SVT24_OAI31_1 U855 ( .A1(n756), .A2(n735), .A3(n734), .B(n732), .X(
        n733) );
  UDB116SVT24_AOI21_0P75 U856 ( .A1(n735), .A2(n734), .B(n733), .X(n737) );
  UDB116SVT24_AOI22_1 U857 ( .A1(ext_counter_RX[0]), .A2(n365), .B1(
        avg_interval[0]), .B2(n375), .X(n736) );
  UDB116SVT24_OAI21_0P75 U858 ( .A1(n737), .A2(n331), .B(n736), .X(n177) );
  UDB116SVT24_AOI22_1 U859 ( .A1(n353), .A2(n738), .B1(n754), .B2(
        ext_counter_RX[12]), .X(n740) );
  UDB116SVT24_OAI21_0P75 U860 ( .A1(n742), .A2(n741), .B(n740), .X(n175) );
  UDB116SVT24_AOI22_1 U861 ( .A1(ext_counter_RX[10]), .A2(n365), .B1(
        avg_interval[10]), .B2(n375), .X(n743) );
  UDB116SVT24_OAI21_0P75 U862 ( .A1(n744), .A2(n331), .B(n743), .X(n173) );
  UDB116SVT24_AOI22_1 U863 ( .A1(ext_counter_RX[8]), .A2(n365), .B1(
        avg_interval[8]), .B2(n376), .X(n745) );
  UDB116SVT24_OAI21_0P75 U864 ( .A1(n746), .A2(n332), .B(n745), .X(n171) );
  UDB116SVT24_AOI22_1 U865 ( .A1(ext_counter_RX[6]), .A2(n363), .B1(
        avg_interval[6]), .B2(n377), .X(n747) );
  UDB116SVT24_OAI21_0P75 U866 ( .A1(n748), .A2(n331), .B(n747), .X(n169) );
  UDB116SVT24_AOI22_1 U867 ( .A1(ext_counter_RX[4]), .A2(n363), .B1(
        avg_interval[4]), .B2(n377), .X(n749) );
  UDB116SVT24_OAI21_0P75 U868 ( .A1(n750), .A2(n331), .B(n749), .X(n167) );
  UDB116SVT24_AOI22_1 U869 ( .A1(ext_counter_RX[2]), .A2(n364), .B1(
        avg_interval[2]), .B2(n378), .X(n751) );
  UDB116SVT24_OAI21_0P75 U870 ( .A1(n752), .A2(n332), .B(n751), .X(n165) );
  UDB116SVT24_AOI22_1 U871 ( .A1(ext_counter_RX[1]), .A2(n364), .B1(
        avg_interval[1]), .B2(n378), .X(n755) );
  UDB116SVT24_OAI21_0P75 U872 ( .A1(n756), .A2(n332), .B(n755), .X(n164) );
endmodule

