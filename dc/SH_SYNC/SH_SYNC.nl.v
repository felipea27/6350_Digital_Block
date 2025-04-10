/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : V-2023.12-SP1
// Date      : Tue Apr  1 17:14:17 2025
/////////////////////////////////////////////////////////////


module SH_SYNC ( clk, rst, rfin, RX, tx_rdy, sh_en, fsm_rst );
  input clk, rst, rfin, RX, tx_rdy;
  output sh_en, fsm_rst;
  wire   N29, N30, N31, rfin_sync2, rfin_prev, tx_rdy_p, rfin_sync1, N82,
         rfin_edge, first_pulse_flag, tx_rdy_prev, N84, N401, n147, n148, n149,
         n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160,
         n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171,
         n172, n173, n174, n175, n177, n178, n179, n180, n181, n182, n183,
         n184, n185, n186, n187, n188, n189, n190, n191, n192, n193, n194,
         n195, n196, n197, n198, n199, n200, n201, n202, n203, n204, n205,
         n206, n207, n208, n209, n210, n211, n212, n213, n214, n215, n216,
         n217, n218, n219, n220, n221, n222, n223, n224, n225, n226, n227,
         n228, n229, n230, n231, n232, n233, n234, n235, n236, n237, n238,
         n239, n240, n241, n242, n243, \intadd_0/CI , \intadd_0/SUM[12] ,
         \intadd_0/SUM[11] , \intadd_0/SUM[10] , \intadd_0/SUM[9] ,
         \intadd_0/SUM[8] , \intadd_0/SUM[7] , \intadd_0/SUM[6] ,
         \intadd_0/SUM[5] , \intadd_0/SUM[4] , \intadd_0/SUM[3] ,
         \intadd_0/SUM[2] , \intadd_0/SUM[1] , \intadd_0/SUM[0] ,
         \intadd_0/n13 , \intadd_0/n12 , \intadd_0/n11 , \intadd_0/n10 ,
         \intadd_0/n9 , \intadd_0/n8 , \intadd_0/n7 , \intadd_0/n6 ,
         \intadd_0/n5 , \intadd_0/n4 , \intadd_0/n3 , \intadd_0/n2 ,
         \intadd_0/n1 , n245, n246, n247, n248, n249, n250, n251, n252, n253,
         n254, n255, n256, n257, n258, n259, n260, n261, n262, n263, n264,
         n265, n266, n267, n268, n269, n270, n271, n272, n273, n274, n275,
         n276, n277, n278, n279, n280, n281, n282, n283, n284, n285, n286,
         n287, n288, n289, n290, n291, n292, n293, n294, n295, n296, n297,
         n298, n299, n300, n301, n302, n303, n304, n305, n306, n307, n308,
         n309, n310, n311, n312, n313, n314, n315, n316, n317, n318, n319,
         n320, n321, n322, n323, n324, n325, n326, n327, n328, n329, n330,
         n331, n332, n333, n334, n335, n336, n337, n338, n339, n340, n341,
         n342, n343, n344, n345, n346, n347, n348, n349, n350, n351, n352,
         n353, n354, n355, n356, n357, n358, n359, n360, n361, n362, n363,
         n364, n365, n366, n367, n368, n369, n370, n371, n372, n373, n374,
         n375, n376, n377, n378, n379, n380, n381, n382, n383, n384, n385,
         n386, n387, n388, n389, n390, n391, n392, n393, n394, n395, n396,
         n397, n398, n399, n400, n401, n402, n403, n404, n405, n406, n407,
         n408, n409, n410, n411, n412, n413, n414, n415, n416, n417, n418,
         n419, n420, n421, n422, n423, n424, n425, n426, n427, n428, n429,
         n430, n431, n432, n433, n434, n435, n436, n437, n438, n439, n440,
         n441, n442, n443, n444, n445, n446, n447, n448, n449, n450, n451,
         n452, n453, n454, n455, n456, n457, n458, n459, n460, n461, n462,
         n463, n464, n465, n466, n467, n468, n469, n470, n471, n472, n473,
         n474, n475, n476, n477, n478, n479, n480, n481, n482, n483, n484,
         n485, n486, n487, n488, n489, n490, n491, n492, n493, n494, n495,
         n496, n497, n498, n499, n500, n501, n502, n503, n504, n505, n506,
         n507, n508, n509, n510, n511, n512, n513, n514, n515, n516, n517,
         n518, n519, n520, n521, n522, n523, n524, n525, n526, n527, n528,
         n529, n530, n531, n532, n533, n534, n535, n536, n537, n538, n539,
         n540, n541, n542, n543, n544, n545, n546, n547, n548, n549, n550,
         n551, n552, n553, n554, n555, n556, n557, n558, n559, n560, n561,
         n562, n563, n564, n565, n566, n567, n568, n569, n570, n571, n572,
         n573, n574, n575, n576, n577, n578, n579, n580, n581, n582, n583,
         n584, n585, n586, n587, n588, n589, n590, n591, n592, n593, n594,
         n595, n596, n597, n598, n599, n600, n601, n602, n603, n604, n605,
         n606, n607, n608, n609, n610, n611, n612, n613, n614, n615, n616,
         n617, n618, n619, n620, n621, n622, n623, n624, n625, n626, n627,
         n628, n629, n630, n631, n632, n633, n634, n635, n636, n637, n638,
         n639, n640, n641, n642, n643, n644, n645, n646, n647, n648, n649,
         n650, n651, n652, n653, n654, n655, n656, n657, n658, n659, n660,
         n661, n662, n663, n664, n665, n666, n667, n668, n669, n670, n671,
         n672, n673, n674, n675, n676, n677, n678, n679, n680, n681, n682,
         n683, n684, n685, n686, n687, n688, n689, n690, n691, n692, n693,
         n694, n695, n696, n697, n698, n699, n700, n701, n702, n703, n704,
         n705, n706, n707, n708, n709, n710, n711, n712, n713, n714, n715,
         n716, n717, n718, n719, n720, n721, n722, n723, n724, n725, n726,
         n727, n728, n729, n730, n731, n732, n733, n734, n735, n736, n737,
         n738, n739, n740, n741, n742, n743, n744, n745, n746, n747, n748,
         n749, n750, n751, n752, n753, n754, n755, n756, n757, n758, n759,
         n760, n761, n762, n763, n764, n765, n766, n767, n768, n769, n770,
         n771, n772, n773, n774, n775, n776, n777, n778, n779, n780, n781,
         n782, n783, n784, n785, n786, n787, n788, n789, n790, n791, n792,
         n793, n794, n795, n796, n797, n798, n799, n800, n801, n802, n803,
         n804, n805, n806, n807, n808, n809, n810, n811, n812, n813, n814,
         n815, n816, n817, n818, n819, n820, n821, n822, n823, n824, n825,
         n826, n827, n828, n829, n830, n831, n832, n833, n834, n835, n836,
         n837, n838, n839, n840, n841, n842, n843, n844, n845, n846, n847,
         n848, n849, n850, n851, n852, n853, n854, n855, n856, n857, n858,
         n859, n860, n861, n862, n863, n864, n865, n866, n867, n868, n869,
         n870, n871, n872, n873, n874, n875, n876, n877, n878, n879, n880,
         n881, n882, n883, n884, n885, n886, n887, n888, n889, n890, n891,
         n892, n893, n894, n895, n896, n897, n898, n899, n900, n901, n902,
         n903, n904, n905, n906;
  wire   [2:0] state;
  wire   [3:0] pulse_count;
  wire   [13:0] timeout_counter;
  wire   [6:0] pulse_gen_count;
  wire   [6:0] pulse_pack_count;
  wire   [14:0] counter;
  wire   [31:0] interval_sum;
  wire   [13:0] avg_interval;

  UDB116SVT24_FDPRBQ_V2_1 tx_rdy_prev_reg ( .D(tx_rdy), .CK(clk), .RD(n906), 
        .Q(tx_rdy_prev) );
  UDB116SVT24_FDPRBQ_V2_1 tx_rdy_p_reg ( .D(N84), .CK(clk), .RD(n905), .Q(
        tx_rdy_p) );
  UDB116SVT24_FDPRBQ_V2_1 \pulse_count_reg[0]  ( .D(n243), .CK(clk), .RD(n905), 
        .Q(pulse_count[0]) );
  UDB116SVT24_FDPRBQ_V2_1 \pulse_count_reg[2]  ( .D(n240), .CK(clk), .RD(n905), 
        .Q(pulse_count[2]) );
  UDB116SVT24_FDPRBQ_V2_1 \pulse_count_reg[3]  ( .D(n242), .CK(clk), .RD(n905), 
        .Q(pulse_count[3]) );
  UDB116SVT24_FDPRBQ_V2_1 \pulse_pack_count_reg[0]  ( .D(n182), .CK(clk), .RD(
        n904), .Q(pulse_pack_count[0]) );
  UDB116SVT24_FDPRBQ_V2_1 \pulse_pack_count_reg[1]  ( .D(n181), .CK(clk), .RD(
        n904), .Q(pulse_pack_count[1]) );
  UDB116SVT24_FDPRBQ_V2_1 \pulse_pack_count_reg[2]  ( .D(n180), .CK(clk), .RD(
        n904), .Q(pulse_pack_count[2]) );
  UDB116SVT24_FDPRBQ_V2_1 \pulse_pack_count_reg[3]  ( .D(n179), .CK(clk), .RD(
        n904), .Q(pulse_pack_count[3]) );
  UDB116SVT24_FDPRBQ_V2_1 \pulse_pack_count_reg[4]  ( .D(n178), .CK(clk), .RD(
        n903), .Q(pulse_pack_count[4]) );
  UDB116SVT24_FDPRBQ_V2_1 \pulse_pack_count_reg[5]  ( .D(n177), .CK(clk), .RD(
        n903), .Q(pulse_pack_count[5]) );
  UDB116SVT24_FDPRBQ_V2_1 \pulse_pack_count_reg[6]  ( .D(n175), .CK(clk), .RD(
        n903), .Q(pulse_pack_count[6]) );
  UDB116SVT24_FDPRBQ_V2_1 \pulse_gen_count_reg[6]  ( .D(n206), .CK(clk), .RD(
        n903), .Q(pulse_gen_count[6]) );
  UDB116SVT24_FDPRBQ_V2_1 \pulse_gen_count_reg[0]  ( .D(n205), .CK(clk), .RD(
        n902), .Q(pulse_gen_count[0]) );
  UDB116SVT24_FDPRBQ_V2_1 \pulse_gen_count_reg[5]  ( .D(n204), .CK(clk), .RD(
        n902), .Q(pulse_gen_count[5]) );
  UDB116SVT24_FDPRBQ_V2_1 \pulse_gen_count_reg[4]  ( .D(n203), .CK(clk), .RD(
        n902), .Q(pulse_gen_count[4]) );
  UDB116SVT24_FDPRBQ_V2_1 \pulse_gen_count_reg[3]  ( .D(n202), .CK(clk), .RD(
        n902), .Q(pulse_gen_count[3]) );
  UDB116SVT24_FDPRBQ_V2_1 \pulse_gen_count_reg[2]  ( .D(n201), .CK(clk), .RD(
        n901), .Q(pulse_gen_count[2]) );
  UDB116SVT24_FDPRBQ_V2_1 \pulse_gen_count_reg[1]  ( .D(n200), .CK(clk), .RD(
        n901), .Q(pulse_gen_count[1]) );
  UDB116SVT24_FDPRBQ_V2_1 rfin_sync1_reg ( .D(N401), .CK(clk), .RD(n901), .Q(
        rfin_sync1) );
  UDB116SVT24_FDPRBQ_V2_1 rfin_sync2_reg ( .D(rfin_sync1), .CK(clk), .RD(n901), 
        .Q(rfin_sync2) );
  UDB116SVT24_FDPRBQ_V2_1 rfin_prev_reg ( .D(rfin_sync2), .CK(clk), .RD(n906), 
        .Q(rfin_prev) );
  UDB116SVT24_FDPRBQ_V2_1 rfin_edge_reg ( .D(N82), .CK(clk), .RD(n906), .Q(
        rfin_edge) );
  UDB116SVT24_FDPRBQ_V2_1 \pulse_count_reg[1]  ( .D(n241), .CK(clk), .RD(rst), 
        .Q(pulse_count[1]) );
  UDB116SVT24_FDPRBQ_V2_1 fsm_rst_reg ( .D(n207), .CK(clk), .RD(rst), .Q(
        fsm_rst) );
  UDB116SVT24_FDPRBQ_V2_1 \counter_reg[14]  ( .D(n198), .CK(clk), .RD(n900), 
        .Q(counter[14]) );
  UDB116SVT24_FDPRBQ_V2_1 \counter_reg[0]  ( .D(n197), .CK(clk), .RD(n900), 
        .Q(counter[0]) );
  UDB116SVT24_FDPRBQ_V2_1 \counter_reg[1]  ( .D(n196), .CK(clk), .RD(n900), 
        .Q(counter[1]) );
  UDB116SVT24_FDPRBQ_V2_1 \counter_reg[2]  ( .D(n195), .CK(clk), .RD(n900), 
        .Q(counter[2]) );
  UDB116SVT24_FDPRBQ_V2_1 \counter_reg[3]  ( .D(n194), .CK(clk), .RD(n899), 
        .Q(counter[3]) );
  UDB116SVT24_FDPRBQ_V2_1 \counter_reg[4]  ( .D(n193), .CK(clk), .RD(n899), 
        .Q(counter[4]) );
  UDB116SVT24_FDPRBQ_V2_1 \counter_reg[5]  ( .D(n192), .CK(clk), .RD(n899), 
        .Q(counter[5]) );
  UDB116SVT24_FDPRBQ_V2_1 \counter_reg[6]  ( .D(n191), .CK(clk), .RD(n899), 
        .Q(counter[6]) );
  UDB116SVT24_FDPRBQ_V2_1 \counter_reg[7]  ( .D(n190), .CK(clk), .RD(n898), 
        .Q(counter[7]) );
  UDB116SVT24_FDPRBQ_V2_1 \counter_reg[8]  ( .D(n189), .CK(clk), .RD(n898), 
        .Q(counter[8]) );
  UDB116SVT24_FDPRBQ_V2_1 \counter_reg[9]  ( .D(n188), .CK(clk), .RD(n898), 
        .Q(counter[9]) );
  UDB116SVT24_FDPRBQ_V2_1 \counter_reg[10]  ( .D(n187), .CK(clk), .RD(n898), 
        .Q(counter[10]) );
  UDB116SVT24_FDPRBQ_V2_1 \counter_reg[11]  ( .D(n186), .CK(clk), .RD(n897), 
        .Q(counter[11]) );
  UDB116SVT24_FDPRBQ_V2_1 \counter_reg[12]  ( .D(n185), .CK(clk), .RD(n897), 
        .Q(counter[12]) );
  UDB116SVT24_FDPRBQ_V2_1 \counter_reg[13]  ( .D(n184), .CK(clk), .RD(n897), 
        .Q(counter[13]) );
  UDB116SVT24_FDPRBQ_V2_1 sh_en_reg ( .D(n183), .CK(clk), .RD(n897), .Q(sh_en)
         );
  UDB116SVT24_FDPRBQ_V2_1 \interval_sum_reg[0]  ( .D(n239), .CK(clk), .RD(n896), .Q(interval_sum[0]) );
  UDB116SVT24_FDPRBQ_V2_1 \interval_sum_reg[31]  ( .D(n238), .CK(clk), .RD(
        n896), .Q(interval_sum[31]) );
  UDB116SVT24_FDPRBQ_V2_1 \interval_sum_reg[30]  ( .D(n237), .CK(clk), .RD(
        n896), .Q(interval_sum[30]) );
  UDB116SVT24_FDPRBQ_V2_1 \interval_sum_reg[29]  ( .D(n236), .CK(clk), .RD(
        n896), .Q(interval_sum[29]) );
  UDB116SVT24_FDPRBQ_V2_1 \interval_sum_reg[27]  ( .D(n234), .CK(clk), .RD(
        n895), .Q(interval_sum[27]) );
  UDB116SVT24_FDPRBQ_V2_1 \interval_sum_reg[26]  ( .D(n233), .CK(clk), .RD(
        n895), .Q(interval_sum[26]) );
  UDB116SVT24_FDPRBQ_V2_1 \interval_sum_reg[25]  ( .D(n232), .CK(clk), .RD(
        n895), .Q(interval_sum[25]) );
  UDB116SVT24_FDPRBQ_V2_1 \interval_sum_reg[24]  ( .D(n231), .CK(clk), .RD(
        n894), .Q(interval_sum[24]) );
  UDB116SVT24_FDPRBQ_V2_1 \interval_sum_reg[23]  ( .D(n230), .CK(clk), .RD(
        n894), .Q(interval_sum[23]) );
  UDB116SVT24_FDPRBQ_V2_1 \interval_sum_reg[22]  ( .D(n229), .CK(clk), .RD(
        n894), .Q(interval_sum[22]) );
  UDB116SVT24_FDPRBQ_V2_1 \interval_sum_reg[21]  ( .D(n228), .CK(clk), .RD(
        n894), .Q(interval_sum[21]) );
  UDB116SVT24_FDPRBQ_V2_1 \interval_sum_reg[20]  ( .D(n227), .CK(clk), .RD(
        n893), .Q(interval_sum[20]) );
  UDB116SVT24_FDPRBQ_V2_1 \interval_sum_reg[19]  ( .D(n226), .CK(clk), .RD(
        n893), .Q(interval_sum[19]) );
  UDB116SVT24_FDPRBQ_V2_1 \interval_sum_reg[18]  ( .D(n225), .CK(clk), .RD(
        n893), .Q(interval_sum[18]) );
  UDB116SVT24_FDPRBQ_V2_1 \interval_sum_reg[17]  ( .D(n224), .CK(clk), .RD(
        n893), .Q(interval_sum[17]) );
  UDB116SVT24_FDPRBQ_V2_1 \interval_sum_reg[16]  ( .D(n223), .CK(clk), .RD(
        n892), .Q(interval_sum[16]) );
  UDB116SVT24_FDPRBQ_V2_1 \interval_sum_reg[15]  ( .D(n222), .CK(clk), .RD(
        n892), .Q(interval_sum[15]) );
  UDB116SVT24_FDPRBQ_V2_1 \interval_sum_reg[14]  ( .D(n221), .CK(clk), .RD(
        n892), .Q(interval_sum[14]) );
  UDB116SVT24_FDPRBQ_V2_1 \interval_sum_reg[13]  ( .D(n220), .CK(clk), .RD(
        n892), .Q(interval_sum[13]) );
  UDB116SVT24_FDPRBQ_V2_1 \interval_sum_reg[12]  ( .D(n219), .CK(clk), .RD(
        n891), .Q(interval_sum[12]) );
  UDB116SVT24_FDPRBQ_V2_1 \interval_sum_reg[11]  ( .D(n218), .CK(clk), .RD(
        n891), .Q(interval_sum[11]) );
  UDB116SVT24_FDPRBQ_V2_1 \interval_sum_reg[10]  ( .D(n217), .CK(clk), .RD(
        n891), .Q(interval_sum[10]) );
  UDB116SVT24_FDPRBQ_V2_1 \interval_sum_reg[9]  ( .D(n216), .CK(clk), .RD(n891), .Q(interval_sum[9]) );
  UDB116SVT24_FDPRBQ_V2_1 \interval_sum_reg[8]  ( .D(n215), .CK(clk), .RD(n890), .Q(interval_sum[8]) );
  UDB116SVT24_FDPRBQ_V2_1 \interval_sum_reg[7]  ( .D(n214), .CK(clk), .RD(n890), .Q(interval_sum[7]) );
  UDB116SVT24_FDPRBQ_V2_1 \interval_sum_reg[6]  ( .D(n213), .CK(clk), .RD(n890), .Q(interval_sum[6]) );
  UDB116SVT24_FDPRBQ_V2_1 \interval_sum_reg[5]  ( .D(n212), .CK(clk), .RD(n890), .Q(interval_sum[5]) );
  UDB116SVT24_FDPRBQ_V2_1 \interval_sum_reg[4]  ( .D(n211), .CK(clk), .RD(n889), .Q(interval_sum[4]) );
  UDB116SVT24_FDPRBQ_V2_1 \interval_sum_reg[3]  ( .D(n210), .CK(clk), .RD(n889), .Q(interval_sum[3]) );
  UDB116SVT24_FDPRBQ_V2_1 \interval_sum_reg[2]  ( .D(n209), .CK(clk), .RD(n889), .Q(interval_sum[2]) );
  UDB116SVT24_FDPRBQ_V2_1 \interval_sum_reg[1]  ( .D(n208), .CK(clk), .RD(n889), .Q(interval_sum[1]) );
  UDB116SVT24_FDPSBQ_1 first_pulse_flag_reg ( .D(n199), .CK(clk), .SD(n906), 
        .Q(first_pulse_flag) );
  UDB116SVT24_FDPRBQ_V2_1 \avg_interval_reg[0]  ( .D(n174), .CK(clk), .RD(n888), .Q(avg_interval[0]) );
  UDB116SVT24_FDPRBQ_V2_1 \avg_interval_reg[13]  ( .D(n173), .CK(clk), .RD(
        n888), .Q(avg_interval[13]) );
  UDB116SVT24_FDPRBQ_V2_1 \avg_interval_reg[12]  ( .D(n172), .CK(clk), .RD(
        n888), .Q(avg_interval[12]) );
  UDB116SVT24_FDPRBQ_V2_1 \avg_interval_reg[11]  ( .D(n171), .CK(clk), .RD(
        n888), .Q(avg_interval[11]) );
  UDB116SVT24_FDPRBQ_V2_1 \avg_interval_reg[10]  ( .D(n170), .CK(clk), .RD(
        n887), .Q(avg_interval[10]) );
  UDB116SVT24_FDPRBQ_V2_1 \avg_interval_reg[9]  ( .D(n169), .CK(clk), .RD(n887), .Q(avg_interval[9]) );
  UDB116SVT24_FDPRBQ_V2_1 \avg_interval_reg[8]  ( .D(n168), .CK(clk), .RD(n887), .Q(avg_interval[8]) );
  UDB116SVT24_FDPRBQ_V2_1 \avg_interval_reg[7]  ( .D(n167), .CK(clk), .RD(n887), .Q(avg_interval[7]) );
  UDB116SVT24_FDPRBQ_V2_1 \avg_interval_reg[6]  ( .D(n166), .CK(clk), .RD(n886), .Q(avg_interval[6]) );
  UDB116SVT24_FDPRBQ_V2_1 \avg_interval_reg[5]  ( .D(n165), .CK(clk), .RD(n886), .Q(avg_interval[5]) );
  UDB116SVT24_FDPRBQ_V2_1 \avg_interval_reg[4]  ( .D(n164), .CK(clk), .RD(n886), .Q(avg_interval[4]) );
  UDB116SVT24_FDPRBQ_V2_1 \avg_interval_reg[3]  ( .D(n163), .CK(clk), .RD(n886), .Q(avg_interval[3]) );
  UDB116SVT24_FDPRBQ_V2_1 \avg_interval_reg[2]  ( .D(n162), .CK(clk), .RD(n885), .Q(avg_interval[2]) );
  UDB116SVT24_FDPRBQ_V2_1 \avg_interval_reg[1]  ( .D(n161), .CK(clk), .RD(n885), .Q(avg_interval[1]) );
  UDB116SVT24_FDPRBQ_V2_1 \timeout_counter_reg[0]  ( .D(n160), .CK(clk), .RD(
        n885), .Q(timeout_counter[0]) );
  UDB116SVT24_FDPRBQ_V2_1 \timeout_counter_reg[1]  ( .D(n159), .CK(clk), .RD(
        n885), .Q(timeout_counter[1]) );
  UDB116SVT24_FDPRBQ_V2_1 \timeout_counter_reg[2]  ( .D(n158), .CK(clk), .RD(
        n884), .Q(timeout_counter[2]) );
  UDB116SVT24_FDPRBQ_V2_1 \timeout_counter_reg[3]  ( .D(n157), .CK(clk), .RD(
        n884), .Q(timeout_counter[3]) );
  UDB116SVT24_FDPRBQ_V2_1 \timeout_counter_reg[4]  ( .D(n156), .CK(clk), .RD(
        n884), .Q(timeout_counter[4]) );
  UDB116SVT24_FDPRBQ_V2_1 \timeout_counter_reg[5]  ( .D(n155), .CK(clk), .RD(
        n884), .Q(timeout_counter[5]) );
  UDB116SVT24_FDPRBQ_V2_1 \timeout_counter_reg[6]  ( .D(n154), .CK(clk), .RD(
        n883), .Q(timeout_counter[6]) );
  UDB116SVT24_FDPRBQ_V2_1 \timeout_counter_reg[7]  ( .D(n153), .CK(clk), .RD(
        n883), .Q(timeout_counter[7]) );
  UDB116SVT24_FDPRBQ_V2_1 \timeout_counter_reg[8]  ( .D(n152), .CK(clk), .RD(
        n883), .Q(timeout_counter[8]) );
  UDB116SVT24_FDPRBQ_V2_1 \timeout_counter_reg[9]  ( .D(n151), .CK(clk), .RD(
        n883), .Q(timeout_counter[9]) );
  UDB116SVT24_FDPRBQ_V2_1 \timeout_counter_reg[10]  ( .D(n150), .CK(clk), .RD(
        n882), .Q(timeout_counter[10]) );
  UDB116SVT24_FDPRBQ_V2_1 \timeout_counter_reg[11]  ( .D(n149), .CK(clk), .RD(
        n882), .Q(timeout_counter[11]) );
  UDB116SVT24_FDPRBQ_V2_1 \timeout_counter_reg[12]  ( .D(n148), .CK(clk), .RD(
        n882), .Q(timeout_counter[12]) );
  UDB116SVT24_FDPRBQ_V2_1 \timeout_counter_reg[13]  ( .D(n147), .CK(clk), .RD(
        n882), .Q(timeout_counter[13]) );
  UDB116SVT24_FDPRBQ_V2_1 \interval_sum_reg[28]  ( .D(n235), .CK(clk), .RD(
        n895), .Q(interval_sum[28]) );
  UDB116SVT24_ADDF_V1_1 \intadd_0/U2  ( .A(counter[14]), .B(interval_sum[14]), 
        .CI(\intadd_0/n2 ), .CO(\intadd_0/n1 ), .S(\intadd_0/SUM[12] ) );
  UDB116SVT24_ADDF_V1_1 \intadd_0/U3  ( .A(counter[13]), .B(n260), .CI(
        \intadd_0/n3 ), .CO(\intadd_0/n2 ), .S(\intadd_0/SUM[11] ) );
  UDB116SVT24_ADDF_V1_1 \intadd_0/U4  ( .A(counter[12]), .B(interval_sum[12]), 
        .CI(\intadd_0/n4 ), .CO(\intadd_0/n3 ), .S(\intadd_0/SUM[10] ) );
  UDB116SVT24_ADDF_V1_1 \intadd_0/U5  ( .A(counter[11]), .B(n258), .CI(
        \intadd_0/n5 ), .CO(\intadd_0/n4 ), .S(\intadd_0/SUM[9] ) );
  UDB116SVT24_ADDF_V1_1 \intadd_0/U6  ( .A(n322), .B(interval_sum[10]), .CI(
        \intadd_0/n6 ), .CO(\intadd_0/n5 ), .S(\intadd_0/SUM[8] ) );
  UDB116SVT24_ADDF_V1_1 \intadd_0/U7  ( .A(n385), .B(n256), .CI(\intadd_0/n7 ), 
        .CO(\intadd_0/n6 ), .S(\intadd_0/SUM[7] ) );
  UDB116SVT24_ADDF_V1_1 \intadd_0/U8  ( .A(counter[8]), .B(interval_sum[8]), 
        .CI(\intadd_0/n8 ), .CO(\intadd_0/n7 ), .S(\intadd_0/SUM[6] ) );
  UDB116SVT24_ADDF_V1_1 \intadd_0/U9  ( .A(n338), .B(n254), .CI(\intadd_0/n9 ), 
        .CO(\intadd_0/n8 ), .S(\intadd_0/SUM[5] ) );
  UDB116SVT24_ADDF_V1_1 \intadd_0/U11  ( .A(counter[5]), .B(interval_sum[5]), 
        .CI(\intadd_0/n11 ), .CO(\intadd_0/n10 ), .S(\intadd_0/SUM[3] ) );
  UDB116SVT24_ADDF_V1_1 \intadd_0/U13  ( .A(counter[3]), .B(interval_sum[3]), 
        .CI(\intadd_0/n13 ), .CO(\intadd_0/n12 ), .S(\intadd_0/SUM[1] ) );
  UDB116SVT24_ADDF_V1_1 \intadd_0/U14  ( .A(counter[2]), .B(interval_sum[2]), 
        .CI(\intadd_0/CI ), .CO(\intadd_0/n13 ), .S(\intadd_0/SUM[0] ) );
  UDB116SVT24_ADDF_V1_1 \intadd_0/U12  ( .A(counter[4]), .B(interval_sum[4]), 
        .CI(\intadd_0/n12 ), .CO(\intadd_0/n11 ), .S(\intadd_0/SUM[2] ) );
  UDB116SVT24_ADDF_V1_1 \intadd_0/U10  ( .A(n323), .B(interval_sum[6]), .CI(
        \intadd_0/n10 ), .CO(\intadd_0/n9 ), .S(\intadd_0/SUM[4] ) );
  UDB116SVT24_FDPQ_1 \state_reg[0]  ( .D(N29), .CK(clk), .Q(state[0]) );
  UDB116SVT24_FDPQ_1 \state_reg[1]  ( .D(N30), .CK(clk), .Q(state[1]) );
  UDB116SVT24_FDPQ_1 \state_reg[2]  ( .D(N31), .CK(clk), .Q(state[2]) );
  UDB116SVT24_INV_0P75 U253 ( .A(n512), .X(n245) );
  UDB116SVT24_BUF_1 U254 ( .A(n519), .X(n246) );
  UDB116SVT24_BUF_1 U255 ( .A(timeout_counter[9]), .X(n247) );
  UDB116SVT24_INV_0P75 U256 ( .A(n456), .X(n248) );
  UDB116SVT24_BUF_1 U257 ( .A(interval_sum[2]), .X(n249) );
  UDB116SVT24_BUF_1 U258 ( .A(interval_sum[3]), .X(n250) );
  UDB116SVT24_BUF_1 U259 ( .A(interval_sum[4]), .X(n251) );
  UDB116SVT24_BUF_1 U260 ( .A(interval_sum[5]), .X(n252) );
  UDB116SVT24_INV_0P75 U261 ( .A(n736), .X(n253) );
  UDB116SVT24_BUF_1 U262 ( .A(interval_sum[7]), .X(n254) );
  UDB116SVT24_INV_0P75 U263 ( .A(n721), .X(n255) );
  UDB116SVT24_BUF_1 U264 ( .A(interval_sum[9]), .X(n256) );
  UDB116SVT24_INV_0P75 U265 ( .A(n706), .X(n257) );
  UDB116SVT24_BUF_1 U266 ( .A(interval_sum[11]), .X(n258) );
  UDB116SVT24_INV_0P75 U267 ( .A(n691), .X(n259) );
  UDB116SVT24_BUF_1 U268 ( .A(interval_sum[13]), .X(n260) );
  UDB116SVT24_INV_0P75 U269 ( .A(n676), .X(n261) );
  UDB116SVT24_INV_0P75 U270 ( .A(n661), .X(n262) );
  UDB116SVT24_INV_0P75 U271 ( .A(interval_sum[18]), .X(n263) );
  UDB116SVT24_INV_0P75 U272 ( .A(n263), .X(n264) );
  UDB116SVT24_INV_0P75 U273 ( .A(interval_sum[20]), .X(n265) );
  UDB116SVT24_INV_0P75 U274 ( .A(n265), .X(n266) );
  UDB116SVT24_INV_0P75 U275 ( .A(interval_sum[22]), .X(n267) );
  UDB116SVT24_INV_0P75 U276 ( .A(n267), .X(n268) );
  UDB116SVT24_INV_0P75 U277 ( .A(n604), .X(n269) );
  UDB116SVT24_INV_0P75 U278 ( .A(interval_sum[26]), .X(n270) );
  UDB116SVT24_INV_0P75 U279 ( .A(n270), .X(n271) );
  UDB116SVT24_INV_0P75 U280 ( .A(counter[11]), .X(n272) );
  UDB116SVT24_INV_0P75 U281 ( .A(pulse_gen_count[1]), .X(n273) );
  UDB116SVT24_INV_0P75 U282 ( .A(n273), .X(n274) );
  UDB116SVT24_INV_0P75 U283 ( .A(pulse_gen_count[4]), .X(n275) );
  UDB116SVT24_INV_0P75 U284 ( .A(n275), .X(n276) );
  UDB116SVT24_INV_0P75 U285 ( .A(state[1]), .X(n277) );
  UDB116SVT24_INV_0P75 U286 ( .A(n392), .X(n278) );
  UDB116SVT24_INV_0P75 U287 ( .A(n816), .X(n279) );
  UDB116SVT24_INV_0P75 U288 ( .A(n400), .X(n280) );
  UDB116SVT24_INV_0P75 U289 ( .A(n280), .X(n281) );
  UDB116SVT24_INV_0P75 U290 ( .A(n277), .X(n282) );
  UDB116SVT24_INV_0P75 U291 ( .A(n282), .X(n283) );
  UDB116SVT24_INV_0P75 U292 ( .A(n837), .X(n284) );
  UDB116SVT24_INV_0P75 U293 ( .A(n284), .X(n285) );
  UDB116SVT24_INV_0P75 U294 ( .A(n327), .X(n286) );
  UDB116SVT24_INV_0P75 U295 ( .A(n381), .X(n287) );
  UDB116SVT24_INV_0P75 U296 ( .A(n272), .X(n288) );
  UDB116SVT24_INV_0P75 U297 ( .A(n288), .X(n289) );
  UDB116SVT24_INV_0P75 U298 ( .A(interval_sum[1]), .X(n290) );
  UDB116SVT24_INV_0P75 U299 ( .A(interval_sum[15]), .X(n291) );
  UDB116SVT24_INV_0P75 U300 ( .A(n291), .X(n292) );
  UDB116SVT24_INV_0P75 U301 ( .A(interval_sum[17]), .X(n293) );
  UDB116SVT24_INV_0P75 U302 ( .A(n293), .X(n294) );
  UDB116SVT24_INV_0P75 U303 ( .A(interval_sum[19]), .X(n295) );
  UDB116SVT24_INV_0P75 U304 ( .A(n295), .X(n296) );
  UDB116SVT24_INV_0P75 U305 ( .A(interval_sum[21]), .X(n297) );
  UDB116SVT24_INV_0P75 U306 ( .A(n297), .X(n298) );
  UDB116SVT24_INV_0P75 U307 ( .A(interval_sum[23]), .X(n299) );
  UDB116SVT24_INV_0P75 U308 ( .A(n299), .X(n300) );
  UDB116SVT24_INV_0P75 U309 ( .A(interval_sum[25]), .X(n301) );
  UDB116SVT24_INV_0P75 U310 ( .A(n301), .X(n302) );
  UDB116SVT24_INV_0P75 U311 ( .A(interval_sum[27]), .X(n303) );
  UDB116SVT24_INV_0P75 U312 ( .A(n303), .X(n304) );
  UDB116SVT24_INV_0P75 U313 ( .A(interval_sum[29]), .X(n305) );
  UDB116SVT24_INV_0P75 U314 ( .A(n305), .X(n306) );
  UDB116SVT24_INV_0P75 U315 ( .A(interval_sum[31]), .X(n307) );
  UDB116SVT24_INV_0P75 U316 ( .A(n307), .X(n308) );
  UDB116SVT24_INV_0P75 U317 ( .A(counter[8]), .X(n309) );
  UDB116SVT24_INV_0P75 U318 ( .A(n309), .X(n310) );
  UDB116SVT24_INV_0P75 U319 ( .A(counter[2]), .X(n311) );
  UDB116SVT24_INV_0P75 U320 ( .A(n311), .X(n312) );
  UDB116SVT24_INV_0P75 U321 ( .A(counter[14]), .X(n313) );
  UDB116SVT24_INV_0P75 U322 ( .A(n313), .X(n314) );
  UDB116SVT24_INV_0P75 U323 ( .A(rfin_edge), .X(n315) );
  UDB116SVT24_INV_0P75 U324 ( .A(n315), .X(n316) );
  UDB116SVT24_INV_0P75 U325 ( .A(pulse_pack_count[0]), .X(n317) );
  UDB116SVT24_INV_0P75 U326 ( .A(n317), .X(n318) );
  UDB116SVT24_INV_0P75 U327 ( .A(interval_sum[29]), .X(n319) );
  UDB116SVT24_INV_0P75 U328 ( .A(counter[13]), .X(n320) );
  UDB116SVT24_INV_0P75 U329 ( .A(n320), .X(n321) );
  UDB116SVT24_INV_0P75 U330 ( .A(n841), .X(n322) );
  UDB116SVT24_INV_0P75 U331 ( .A(n506), .X(n323) );
  UDB116SVT24_INV_0P75 U332 ( .A(counter[4]), .X(n324) );
  UDB116SVT24_INV_0P75 U333 ( .A(n324), .X(n325) );
  UDB116SVT24_INV_0P75 U334 ( .A(counter[1]), .X(n326) );
  UDB116SVT24_INV_0P75 U335 ( .A(n326), .X(n327) );
  UDB116SVT24_INV_0P75 U336 ( .A(n557), .X(n328) );
  UDB116SVT24_INV_0P75 U337 ( .A(pulse_gen_count[0]), .X(n329) );
  UDB116SVT24_INV_0P75 U338 ( .A(n329), .X(n330) );
  UDB116SVT24_INV_0P75 U339 ( .A(n557), .X(n331) );
  UDB116SVT24_INV_0P75 U340 ( .A(n331), .X(n332) );
  UDB116SVT24_INV_0P75 U341 ( .A(n331), .X(n333) );
  UDB116SVT24_INV_0P75 U342 ( .A(interval_sum[28]), .X(n334) );
  UDB116SVT24_INV_0P75 U343 ( .A(n334), .X(n335) );
  UDB116SVT24_INV_0P75 U344 ( .A(n334), .X(n336) );
  UDB116SVT24_INV_0P75 U345 ( .A(counter[7]), .X(n337) );
  UDB116SVT24_INV_0P75 U346 ( .A(n337), .X(n338) );
  UDB116SVT24_INV_0P75 U347 ( .A(n337), .X(n339) );
  UDB116SVT24_INV_0P75 U348 ( .A(counter[5]), .X(n340) );
  UDB116SVT24_INV_0P75 U349 ( .A(n340), .X(n341) );
  UDB116SVT24_INV_0P75 U350 ( .A(counter[3]), .X(n342) );
  UDB116SVT24_INV_0P75 U351 ( .A(n342), .X(n343) );
  UDB116SVT24_INV_0P75 U352 ( .A(state[2]), .X(n344) );
  UDB116SVT24_INV_0P75 U353 ( .A(n344), .X(n345) );
  UDB116SVT24_INV_0P75 U354 ( .A(n344), .X(n346) );
  UDB116SVT24_INV_0P75 U355 ( .A(state[0]), .X(n347) );
  UDB116SVT24_INV_0P75 U356 ( .A(state[0]), .X(n348) );
  UDB116SVT24_INV_0P75 U357 ( .A(n834), .X(n349) );
  UDB116SVT24_INV_0P75 U358 ( .A(n349), .X(n350) );
  UDB116SVT24_INV_0P75 U359 ( .A(n349), .X(n351) );
  UDB116SVT24_INV_0P75 U360 ( .A(n794), .X(n352) );
  UDB116SVT24_INV_0P75 U361 ( .A(n352), .X(n353) );
  UDB116SVT24_INV_0P75 U362 ( .A(n352), .X(n354) );
  UDB116SVT24_INV_0P75 U363 ( .A(n822), .X(n355) );
  UDB116SVT24_INV_0P75 U364 ( .A(n355), .X(n356) );
  UDB116SVT24_INV_0P75 U365 ( .A(n355), .X(n357) );
  UDB116SVT24_INV_0P75 U366 ( .A(n355), .X(n358) );
  UDB116SVT24_INV_0P75 U367 ( .A(n364), .X(n359) );
  UDB116SVT24_INV_0P75 U368 ( .A(n785), .X(n360) );
  UDB116SVT24_INV_0P75 U369 ( .A(n785), .X(n361) );
  UDB116SVT24_INV_0P75 U370 ( .A(n367), .X(n362) );
  UDB116SVT24_INV_0P75 U371 ( .A(n785), .X(n363) );
  UDB116SVT24_INV_0P75 U372 ( .A(n363), .X(n364) );
  UDB116SVT24_INV_0P75 U373 ( .A(n363), .X(n365) );
  UDB116SVT24_INV_0P75 U374 ( .A(n363), .X(n366) );
  UDB116SVT24_INV_0P75 U375 ( .A(n363), .X(n367) );
  UDB116SVT24_INV_0P75 U376 ( .A(n863), .X(n368) );
  UDB116SVT24_INV_0P75 U377 ( .A(n368), .X(n369) );
  UDB116SVT24_INV_0P75 U378 ( .A(n368), .X(n370) );
  UDB116SVT24_INV_0P75 U379 ( .A(n368), .X(n371) );
  UDB116SVT24_INV_0P75 U380 ( .A(n357), .X(n372) );
  UDB116SVT24_INV_0P75 U381 ( .A(n358), .X(n373) );
  UDB116SVT24_INV_0P75 U382 ( .A(n357), .X(n374) );
  UDB116SVT24_INV_0P75 U383 ( .A(n822), .X(n375) );
  UDB116SVT24_INV_0P75 U384 ( .A(n816), .X(n376) );
  UDB116SVT24_INV_0P75 U385 ( .A(n376), .X(n377) );
  UDB116SVT24_INV_0P75 U386 ( .A(n376), .X(n378) );
  UDB116SVT24_INV_0P75 U387 ( .A(n376), .X(n379) );
  UDB116SVT24_INV_0P75 U388 ( .A(n376), .X(n380) );
  UDB116SVT24_BUF_1 U389 ( .A(counter[12]), .X(n381) );
  UDB116SVT24_INV_0P75 U390 ( .A(n490), .X(n382) );
  UDB116SVT24_BUF_1 U391 ( .A(n522), .X(n383) );
  UDB116SVT24_BUF_1 U392 ( .A(n522), .X(n384) );
  UDB116SVT24_BUF_1 U393 ( .A(counter[9]), .X(n385) );
  UDB116SVT24_BUF_1 U394 ( .A(counter[9]), .X(n386) );
  UDB116SVT24_AN3_0P75 U395 ( .A1(n459), .A2(n348), .A3(state[1]), .X(n862) );
  UDB116SVT24_INV_0P75 U396 ( .A(n862), .X(n387) );
  UDB116SVT24_INV_0P75 U397 ( .A(n862), .X(n388) );
  UDB116SVT24_INV_0P75 U398 ( .A(n862), .X(n389) );
  UDB116SVT24_INV_0P75 U399 ( .A(n862), .X(n390) );
  UDB116SVT24_INV_0P75 U400 ( .A(n835), .X(n391) );
  UDB116SVT24_INV_0P75 U401 ( .A(n391), .X(n392) );
  UDB116SVT24_INV_0P75 U402 ( .A(n391), .X(n393) );
  UDB116SVT24_INV_0P75 U403 ( .A(n391), .X(n394) );
  UDB116SVT24_INV_0P75 U404 ( .A(n391), .X(n395) );
  UDB116SVT24_BUF_1 U405 ( .A(n377), .X(n815) );
  UDB116SVT24_INV_0P75 U406 ( .A(n815), .X(n396) );
  UDB116SVT24_INV_0P75 U407 ( .A(n815), .X(n397) );
  UDB116SVT24_INV_0P75 U408 ( .A(n815), .X(n398) );
  UDB116SVT24_INV_0P75 U409 ( .A(n815), .X(n399) );
  UDB116SVT24_AN2_1 U410 ( .A1(n366), .A2(n497), .X(n499) );
  UDB116SVT24_INV_0P75 U411 ( .A(n499), .X(n400) );
  UDB116SVT24_INV_0P75 U412 ( .A(n499), .X(n401) );
  UDB116SVT24_INV_0P75 U413 ( .A(n499), .X(n402) );
  UDB116SVT24_INV_0P75 U414 ( .A(n499), .X(n403) );
  UDB116SVT24_INV_0P75 U415 ( .A(rst), .X(n404) );
  UDB116SVT24_TIE1_V1_1 U416 ( .X(n577) );
  UDB116SVT24_BUF_1 U417 ( .A(n404), .X(n408) );
  UDB116SVT24_BUF_1 U418 ( .A(n408), .X(n410) );
  UDB116SVT24_BUF_1 U419 ( .A(n410), .X(n405) );
  UDB116SVT24_INV_0P75 U420 ( .A(n405), .X(n904) );
  UDB116SVT24_INV_0P75 U421 ( .A(n405), .X(n903) );
  UDB116SVT24_BUF_1 U422 ( .A(n404), .X(n425) );
  UDB116SVT24_BUF_1 U423 ( .A(n425), .X(n465) );
  UDB116SVT24_INV_0P75 U424 ( .A(n465), .X(n905) );
  UDB116SVT24_INV_0P75 U425 ( .A(n405), .X(n901) );
  UDB116SVT24_INV_0P75 U426 ( .A(n404), .X(n900) );
  UDB116SVT24_INV_0P75 U427 ( .A(n405), .X(n902) );
  UDB116SVT24_BUF_1 U428 ( .A(n408), .X(n409) );
  UDB116SVT24_BUF_1 U429 ( .A(n409), .X(n406) );
  UDB116SVT24_INV_0P75 U430 ( .A(n406), .X(n898) );
  UDB116SVT24_INV_0P75 U431 ( .A(n409), .X(n897) );
  UDB116SVT24_INV_0P75 U432 ( .A(n409), .X(n896) );
  UDB116SVT24_INV_0P75 U433 ( .A(n406), .X(n895) );
  UDB116SVT24_INV_0P75 U434 ( .A(n406), .X(n894) );
  UDB116SVT24_BUF_1 U435 ( .A(n408), .X(n407) );
  UDB116SVT24_INV_0P75 U436 ( .A(n407), .X(n893) );
  UDB116SVT24_INV_0P75 U437 ( .A(n407), .X(n892) );
  UDB116SVT24_INV_0P75 U438 ( .A(n406), .X(n899) );
  UDB116SVT24_INV_0P75 U439 ( .A(n407), .X(n891) );
  UDB116SVT24_INV_0P75 U440 ( .A(n407), .X(n890) );
  UDB116SVT24_INV_0P75 U441 ( .A(n465), .X(n906) );
  UDB116SVT24_INV_0P75 U442 ( .A(n408), .X(n889) );
  UDB116SVT24_INV_0P75 U443 ( .A(n410), .X(n883) );
  UDB116SVT24_INV_0P75 U444 ( .A(n409), .X(n888) );
  UDB116SVT24_INV_0P75 U445 ( .A(n425), .X(n886) );
  UDB116SVT24_INV_0P75 U446 ( .A(n404), .X(n882) );
  UDB116SVT24_INV_0P75 U447 ( .A(n410), .X(n885) );
  UDB116SVT24_INV_0P75 U448 ( .A(n425), .X(n887) );
  UDB116SVT24_INV_0P75 U449 ( .A(n410), .X(n884) );
  UDB116SVT24_NR3_0P75 U450 ( .A1(n347), .A2(state[1]), .A3(n346), .X(n785) );
  UDB116SVT24_AOI21B_0P75 U451 ( .A1(n316), .A2(n366), .B(rfin), .X(N401) );
  UDB116SVT24_INV_0P75 U452 ( .A(pulse_count[0]), .X(n412) );
  UDB116SVT24_INV_0P75 U453 ( .A(n345), .X(n459) );
  UDB116SVT24_OAI211_0P75 U454 ( .A1(n348), .A2(rfin_edge), .B1(n283), .B2(
        n459), .X(n553) );
  UDB116SVT24_AOI21_0P75 U455 ( .A1(n367), .A2(n412), .B(n553), .X(n413) );
  UDB116SVT24_ND3_0P75 U456 ( .A1(rfin_edge), .A2(n366), .A3(pulse_count[0]), 
        .X(n411) );
  UDB116SVT24_INV_0P75 U457 ( .A(pulse_count[1]), .X(n419) );
  UDB116SVT24_AOI22_1 U458 ( .A1(pulse_count[1]), .A2(n413), .B1(n411), .B2(
        n419), .X(n241) );
  UDB116SVT24_AOI21_0P75 U459 ( .A1(n412), .A2(n553), .B(n413), .X(n243) );
  UDB116SVT24_ND4_0P75 U460 ( .A1(n316), .A2(n364), .A3(pulse_count[1]), .A4(
        pulse_count[0]), .X(n788) );
  UDB116SVT24_INV_0P75 U461 ( .A(pulse_count[2]), .X(n789) );
  UDB116SVT24_OAI21_0P75 U462 ( .A1(pulse_count[1]), .A2(n360), .B(n413), .X(
        n784) );
  UDB116SVT24_OA2BB2_0P75 U463 ( .A1(n788), .A2(n789), .B1(n789), .B2(n784), 
        .X(n240) );
  UDB116SVT24_NR3_0P75 U464 ( .A1(n283), .A2(n348), .A3(n345), .X(n475) );
  UDB116SVT24_OR2_0P75 U465 ( .A1(pulse_gen_count[3]), .A2(pulse_gen_count[1]), 
        .X(n414) );
  UDB116SVT24_NR4_0P75 U466 ( .A1(pulse_gen_count[2]), .A2(pulse_gen_count[4]), 
        .A3(pulse_gen_count[5]), .A4(n414), .X(n457) );
  UDB116SVT24_ND3_0P75 U467 ( .A1(n457), .A2(pulse_gen_count[6]), .A3(n330), 
        .X(n421) );
  UDB116SVT24_ND2_MM_0P75 U468 ( .A1(n277), .A2(n347), .X(n468) );
  UDB116SVT24_INV_0P75 U469 ( .A(n468), .X(n453) );
  UDB116SVT24_INV_0P75 U470 ( .A(timeout_counter[12]), .X(n878) );
  UDB116SVT24_INV_0P75 U471 ( .A(timeout_counter[13]), .X(n500) );
  UDB116SVT24_AOI21_0P75 U472 ( .A1(timeout_counter[4]), .A2(
        timeout_counter[5]), .B(timeout_counter[6]), .X(n416) );
  UDB116SVT24_INV_0P75 U473 ( .A(timeout_counter[7]), .X(n415) );
  UDB116SVT24_INV_0P75 U474 ( .A(timeout_counter[8]), .X(n478) );
  UDB116SVT24_OAI21_0P75 U475 ( .A1(n416), .A2(n415), .B(n478), .X(n417) );
  UDB116SVT24_AOI31_0P75 U476 ( .A1(timeout_counter[10]), .A2(
        timeout_counter[9]), .A3(n417), .B(timeout_counter[11]), .X(n418) );
  UDB116SVT24_NR3_0P75 U477 ( .A1(n878), .A2(n500), .A3(n418), .X(n455) );
  UDB116SVT24_INV_0P75 U478 ( .A(pulse_count[3]), .X(n786) );
  UDB116SVT24_NR2_0P75 U479 ( .A1(pulse_count[0]), .A2(pulse_count[2]), .X(
        n420) );
  UDB116SVT24_ND2_MM_0P75 U480 ( .A1(n420), .A2(n419), .X(n552) );
  UDB116SVT24_NR2_0P75 U481 ( .A1(n786), .A2(n552), .X(n464) );
  UDB116SVT24_NR3_0P75 U482 ( .A1(n455), .A2(n464), .A3(n359), .X(n460) );
  UDB116SVT24_AOI211_0P75 U483 ( .A1(n475), .A2(n421), .B1(n453), .B2(n460), 
        .X(n426) );
  UDB116SVT24_ND3_0P75 U484 ( .A1(n283), .A2(n346), .A3(state[0]), .X(n494) );
  UDB116SVT24_INV_0P75 U485 ( .A(n494), .X(n512) );
  UDB116SVT24_NR2B_0P75 U486 ( .A(pulse_pack_count[3]), .B(pulse_pack_count[4]), .X(n423) );
  UDB116SVT24_NR4_0P75 U487 ( .A1(pulse_pack_count[5]), .A2(
        pulse_pack_count[1]), .A3(n318), .A4(pulse_pack_count[2]), .X(n422) );
  UDB116SVT24_AOI31_0P75 U488 ( .A1(pulse_pack_count[6]), .A2(n423), .A3(n422), 
        .B(RX), .X(n424) );
  UDB116SVT24_ND2_MM_0P75 U489 ( .A1(n346), .A2(n453), .X(n528) );
  UDB116SVT24_INV_0P75 U490 ( .A(n528), .X(n837) );
  UDB116SVT24_AOI22_1 U491 ( .A1(n512), .A2(n424), .B1(n837), .B2(tx_rdy_p), 
        .X(n463) );
  UDB116SVT24_OAOI211_0P75 U492 ( .A1(RX), .A2(n426), .B(n463), .C(n425), .X(
        N31) );
  UDB116SVT24_INV_0P75 U493 ( .A(pulse_gen_count[6]), .X(n525) );
  UDB116SVT24_NR2_0P75 U494 ( .A1(n457), .A2(n525), .X(n509) );
  UDB116SVT24_INV_0P75 U495 ( .A(n475), .X(n507) );
  UDB116SVT24_NR2_0P75 U496 ( .A1(n509), .A2(n507), .X(n515) );
  UDB116SVT24_INV_0P75 U497 ( .A(avg_interval[4]), .X(n750) );
  UDB116SVT24_INV_0P75 U498 ( .A(n325), .X(n505) );
  UDB116SVT24_INV_0P75 U499 ( .A(avg_interval[5]), .X(n443) );
  UDB116SVT24_AOI2222_V2_0P75 U500 ( .A1(n750), .A2(n343), .B1(avg_interval[5]), .B2(n505), .C1(n342), .C2(avg_interval[4]), .D1(n325), .D2(n443), .X(n430)
         );
  UDB116SVT24_INV_0P75 U501 ( .A(avg_interval[6]), .X(n735) );
  UDB116SVT24_INV_0P75 U502 ( .A(counter[6]), .X(n506) );
  UDB116SVT24_INV_0P75 U503 ( .A(avg_interval[7]), .X(n437) );
  UDB116SVT24_AOI2222_V2_0P75 U504 ( .A1(n735), .A2(n341), .B1(avg_interval[7]), .B2(n506), .C1(n340), .C2(avg_interval[6]), .D1(counter[6]), .D2(n437), .X(
        n429) );
  UDB116SVT24_INV_0P75 U505 ( .A(avg_interval[2]), .X(n764) );
  UDB116SVT24_INV_0P75 U506 ( .A(avg_interval[3]), .X(n436) );
  UDB116SVT24_INV_0P75 U507 ( .A(n312), .X(n470) );
  UDB116SVT24_AOI2222_V2_0P75 U508 ( .A1(n764), .A2(counter[1]), .B1(n312), 
        .B2(n436), .C1(n286), .C2(avg_interval[2]), .D1(avg_interval[3]), .D2(
        n470), .X(n428) );
  UDB116SVT24_INV_0P75 U509 ( .A(avg_interval[10]), .X(n705) );
  UDB116SVT24_INV_0P75 U510 ( .A(counter[10]), .X(n841) );
  UDB116SVT24_INV_0P75 U511 ( .A(n386), .X(n844) );
  UDB116SVT24_INV_0P75 U512 ( .A(avg_interval[11]), .X(n444) );
  UDB116SVT24_AOI2222_V2_0P75 U513 ( .A1(n705), .A2(n386), .B1(
        avg_interval[11]), .B2(n841), .C1(n844), .C2(avg_interval[10]), .D1(
        n322), .D2(n444), .X(n427) );
  UDB116SVT24_ND4_0P75 U514 ( .A1(n430), .A2(n429), .A3(n428), .A4(n427), .X(
        n452) );
  UDB116SVT24_INV_0P75 U515 ( .A(counter[0]), .X(n557) );
  UDB116SVT24_INV_0P75 U516 ( .A(avg_interval[1]), .X(n772) );
  UDB116SVT24_AOI22_1 U517 ( .A1(avg_interval[1]), .A2(n328), .B1(n332), .B2(
        n772), .X(n431) );
  UDB116SVT24_NR3_0P75 U518 ( .A1(n314), .A2(n321), .A3(n431), .X(n434) );
  UDB116SVT24_INV_0P75 U519 ( .A(avg_interval[8]), .X(n720) );
  UDB116SVT24_INV_0P75 U520 ( .A(n310), .X(n542) );
  UDB116SVT24_INV_0P75 U521 ( .A(avg_interval[9]), .X(n435) );
  UDB116SVT24_AOI2222_V2_0P75 U522 ( .A1(n720), .A2(n339), .B1(avg_interval[9]), .B2(n542), .C1(n337), .C2(avg_interval[8]), .D1(n310), .D2(n435), .X(n433)
         );
  UDB116SVT24_INV_0P75 U523 ( .A(avg_interval[12]), .X(n690) );
  UDB116SVT24_INV_0P75 U524 ( .A(counter[12]), .X(n549) );
  UDB116SVT24_INV_0P75 U525 ( .A(avg_interval[13]), .X(n442) );
  UDB116SVT24_AOI2222_V2_0P75 U526 ( .A1(n690), .A2(n288), .B1(
        avg_interval[13]), .B2(n287), .C1(n289), .C2(avg_interval[12]), .D1(
        n381), .D2(n442), .X(n432) );
  UDB116SVT24_ND4_0P75 U527 ( .A1(first_pulse_flag), .A2(n434), .A3(n433), 
        .A4(n432), .X(n451) );
  UDB116SVT24_INV_0P75 U528 ( .A(avg_interval[0]), .X(n780) );
  UDB116SVT24_AOI2222_V2_0P75 U529 ( .A1(n780), .A2(counter[0]), .B1(n385), 
        .B2(n435), .C1(n333), .C2(avg_interval[0]), .D1(avg_interval[9]), .D2(
        n844), .X(n441) );
  UDB116SVT24_AOI2222_V2_0P75 U530 ( .A1(n772), .A2(n327), .B1(avg_interval[3]), .B2(n342), .C1(n286), .C2(avg_interval[1]), .D1(n343), .D2(n436), .X(n440)
         );
  UDB116SVT24_AOI2222_V2_0P75 U531 ( .A1(n764), .A2(n312), .B1(avg_interval[6]), .B2(n506), .C1(n470), .C2(avg_interval[2]), .D1(n323), .D2(n735), .X(n439)
         );
  UDB116SVT24_AOI2222_V2_0P75 U532 ( .A1(n437), .A2(n338), .B1(avg_interval[8]), .B2(n542), .C1(n337), .C2(avg_interval[7]), .D1(n310), .D2(n720), .X(n438)
         );
  UDB116SVT24_ND4_0P75 U533 ( .A1(n441), .A2(n440), .A3(n439), .A4(n438), .X(
        n450) );
  UDB116SVT24_AOI2222_V2_0P75 U534 ( .A1(n750), .A2(n325), .B1(
        avg_interval[13]), .B2(n320), .C1(n505), .C2(avg_interval[4]), .D1(
        n321), .D2(n442), .X(n448) );
  UDB116SVT24_NR2_0P75 U535 ( .A1(n314), .A2(first_pulse_flag), .X(n447) );
  UDB116SVT24_AOI2222_V2_0P75 U536 ( .A1(n443), .A2(n341), .B1(counter[10]), 
        .B2(n705), .C1(n340), .C2(avg_interval[5]), .D1(avg_interval[10]), 
        .D2(n841), .X(n446) );
  UDB116SVT24_AOI2222_V2_0P75 U537 ( .A1(n444), .A2(n288), .B1(
        avg_interval[12]), .B2(n549), .C1(n272), .C2(avg_interval[11]), .D1(
        counter[12]), .D2(n690), .X(n445) );
  UDB116SVT24_ND4_0P75 U538 ( .A1(n448), .A2(n447), .A3(n446), .A4(n445), .X(
        n449) );
  UDB116SVT24_OAI22_0P75 U539 ( .A1(n452), .A2(n451), .B1(n450), .B2(n449), 
        .X(n508) );
  UDB116SVT24_INV_0P75 U540 ( .A(first_pulse_flag), .X(n454) );
  UDB116SVT24_ND2_MM_0P75 U541 ( .A1(n453), .A2(n459), .X(n555) );
  UDB116SVT24_AOAI211_0P75 U542 ( .A1(n515), .A2(n508), .B(n454), .C(n555), 
        .X(n199) );
  UDB116SVT24_NR2_0P75 U543 ( .A1(n316), .A2(n455), .X(n497) );
  UDB116SVT24_INV_0P75 U544 ( .A(timeout_counter[0]), .X(n456) );
  UDB116SVT24_AOI22_1 U545 ( .A1(timeout_counter[0]), .A2(n365), .B1(n281), 
        .B2(n456), .X(n160) );
  UDB116SVT24_NR2B_0P75 U546 ( .A(rfin_sync2), .B(rfin_prev), .X(N82) );
  UDB116SVT24_AOI31_0P75 U547 ( .A1(n457), .A2(pulse_gen_count[6]), .A3(
        pulse_gen_count[0]), .B(n345), .X(n458) );
  UDB116SVT24_INV_0P75 U548 ( .A(n387), .X(n863) );
  UDB116SVT24_AOI31_0P75 U549 ( .A1(n282), .A2(RX), .A3(n458), .B(n370), .X(
        n466) );
  UDB116SVT24_ND2_MM_0P75 U550 ( .A1(n459), .A2(n347), .X(n783) );
  UDB116SVT24_INV_0P75 U551 ( .A(n783), .X(n461) );
  UDB116SVT24_AOAI211_0P75 U552 ( .A1(n461), .A2(N82), .B(n460), .C(RX), .X(
        n462) );
  UDB116SVT24_AOI31_0P75 U553 ( .A1(n466), .A2(n463), .A3(n462), .B(n465), .X(
        N29) );
  UDB116SVT24_ND2_MM_0P75 U554 ( .A1(n464), .A2(n364), .X(n467) );
  UDB116SVT24_AOI21_0P75 U555 ( .A1(n467), .A2(n466), .B(n465), .X(N30) );
  UDB116SVT24_OAI31_1 U556 ( .A1(n509), .A2(n348), .A3(n277), .B(n468), .X(
        n469) );
  UDB116SVT24_NR2_0P75 U557 ( .A1(n346), .A2(n469), .X(n477) );
  UDB116SVT24_NR3_0P75 U558 ( .A1(n314), .A2(n341), .A3(n542), .X(n474) );
  UDB116SVT24_NR4_0P75 U559 ( .A1(counter[11]), .A2(n338), .A3(n323), .A4(
        counter[4]), .X(n473) );
  UDB116SVT24_NR3_0P75 U560 ( .A1(n332), .A2(n286), .A3(n470), .X(n829) );
  UDB116SVT24_ND2_MM_0P75 U561 ( .A1(n322), .A2(n385), .X(n471) );
  UDB116SVT24_AN4B_1 U562 ( .B1(n829), .B2(n549), .B3(n343), .A(n471), .X(n472) );
  UDB116SVT24_ND4_0P75 U563 ( .A1(n321), .A2(n474), .A3(n473), .A4(n472), .X(
        n511) );
  UDB116SVT24_NR2_0P75 U564 ( .A1(n245), .A2(n511), .X(n490) );
  UDB116SVT24_AOI21_0P75 U565 ( .A1(n475), .A2(n508), .B(n490), .X(n476) );
  UDB116SVT24_AO2BB2_0P75 U566 ( .A1(n477), .A2(n476), .B1(n477), .B2(sh_en), 
        .X(n183) );
  UDB116SVT24_ND2_MM_0P75 U567 ( .A1(timeout_counter[1]), .A2(n248), .X(n489)
         );
  UDB116SVT24_NR2B_0P75 U568 ( .A(timeout_counter[2]), .B(n489), .X(n866) );
  UDB116SVT24_ND2_MM_0P75 U569 ( .A1(timeout_counter[3]), .A2(n866), .X(n483)
         );
  UDB116SVT24_NR2B_0P75 U570 ( .A(timeout_counter[4]), .B(n483), .X(n869) );
  UDB116SVT24_ND2_MM_0P75 U571 ( .A1(timeout_counter[5]), .A2(n869), .X(n481)
         );
  UDB116SVT24_NR2B_0P75 U572 ( .A(timeout_counter[6]), .B(n481), .X(n872) );
  UDB116SVT24_ND2_MM_0P75 U573 ( .A1(timeout_counter[7]), .A2(n872), .X(n487)
         );
  UDB116SVT24_NR2_0P75 U574 ( .A1(n478), .A2(n487), .X(n875) );
  UDB116SVT24_ND3_0P75 U575 ( .A1(timeout_counter[10]), .A2(timeout_counter[9]), .A3(n875), .X(n498) );
  UDB116SVT24_AOI21_0P75 U576 ( .A1(n497), .A2(n498), .B(n362), .X(n881) );
  UDB116SVT24_INV_0P75 U577 ( .A(timeout_counter[11]), .X(n479) );
  UDB116SVT24_OR2_0P75 U578 ( .A1(n401), .A2(timeout_counter[11]), .X(n880) );
  UDB116SVT24_OAI22_0P75 U579 ( .A1(n881), .A2(n479), .B1(n880), .B2(n498), 
        .X(n149) );
  UDB116SVT24_NR2_0P75 U580 ( .A1(timeout_counter[5]), .A2(n403), .X(n870) );
  UDB116SVT24_OAI21_0P75 U581 ( .A1(n869), .A2(n403), .B(n365), .X(n871) );
  UDB116SVT24_OAI21_0P75 U582 ( .A1(n870), .A2(n871), .B(timeout_counter[6]), 
        .X(n480) );
  UDB116SVT24_OAI31_1 U583 ( .A1(timeout_counter[6]), .A2(n403), .A3(n481), 
        .B(n480), .X(n154) );
  UDB116SVT24_NR2_0P75 U584 ( .A1(timeout_counter[3]), .A2(n400), .X(n867) );
  UDB116SVT24_OAI21_0P75 U585 ( .A1(n866), .A2(n403), .B(n366), .X(n868) );
  UDB116SVT24_OAI21_0P75 U586 ( .A1(n867), .A2(n868), .B(timeout_counter[4]), 
        .X(n482) );
  UDB116SVT24_OAI31_1 U587 ( .A1(timeout_counter[4]), .A2(n402), .A3(n483), 
        .B(n482), .X(n156) );
  UDB116SVT24_ND2_MM_0P75 U588 ( .A1(n247), .A2(n875), .X(n485) );
  UDB116SVT24_NR2_0P75 U589 ( .A1(timeout_counter[9]), .A2(n401), .X(n876) );
  UDB116SVT24_OAI21_0P75 U590 ( .A1(n875), .A2(n402), .B(n365), .X(n877) );
  UDB116SVT24_OAI21_0P75 U591 ( .A1(n876), .A2(n877), .B(timeout_counter[10]), 
        .X(n484) );
  UDB116SVT24_OAI31_1 U592 ( .A1(timeout_counter[10]), .A2(n401), .A3(n485), 
        .B(n484), .X(n150) );
  UDB116SVT24_NR2_0P75 U593 ( .A1(timeout_counter[7]), .A2(n281), .X(n873) );
  UDB116SVT24_OAI21_0P75 U594 ( .A1(n872), .A2(n400), .B(n364), .X(n874) );
  UDB116SVT24_OAI21_0P75 U595 ( .A1(n873), .A2(n874), .B(timeout_counter[8]), 
        .X(n486) );
  UDB116SVT24_OAI31_1 U596 ( .A1(timeout_counter[8]), .A2(n400), .A3(n487), 
        .B(n486), .X(n152) );
  UDB116SVT24_NR2_0P75 U597 ( .A1(timeout_counter[1]), .A2(n402), .X(n864) );
  UDB116SVT24_OAI21_0P75 U598 ( .A1(timeout_counter[0]), .A2(n401), .B(n367), 
        .X(n865) );
  UDB116SVT24_OAI21_0P75 U599 ( .A1(n864), .A2(n865), .B(timeout_counter[2]), 
        .X(n488) );
  UDB116SVT24_OAI31_1 U600 ( .A1(timeout_counter[2]), .A2(n402), .A3(n489), 
        .B(n488), .X(n158) );
  UDB116SVT24_OAI21_0P75 U601 ( .A1(n511), .A2(n494), .B(n555), .X(n501) );
  UDB116SVT24_INV_0P75 U602 ( .A(n490), .X(n504) );
  UDB116SVT24_AOI22_1 U603 ( .A1(n318), .A2(n501), .B1(n382), .B2(n317), .X(
        n182) );
  UDB116SVT24_NR2_0P75 U604 ( .A1(n508), .A2(n509), .X(n491) );
  UDB116SVT24_OAI21_0P75 U605 ( .A1(n507), .A2(n491), .B(n555), .X(n519) );
  UDB116SVT24_ND2_MM_0P75 U606 ( .A1(n515), .A2(n519), .X(n522) );
  UDB116SVT24_AOI22_1 U607 ( .A1(pulse_gen_count[0]), .A2(n246), .B1(n384), 
        .B2(n329), .X(n205) );
  UDB116SVT24_ND2_MM_0P75 U608 ( .A1(pulse_pack_count[1]), .A2(
        pulse_pack_count[0]), .X(n503) );
  UDB116SVT24_NR2B_0P75 U609 ( .A(pulse_pack_count[2]), .B(n503), .X(n850) );
  UDB116SVT24_ND2_MM_0P75 U610 ( .A1(pulse_pack_count[3]), .A2(n850), .X(n496)
         );
  UDB116SVT24_NR2B_0P75 U611 ( .A(pulse_pack_count[4]), .B(n496), .X(n853) );
  UDB116SVT24_ND2_MM_0P75 U612 ( .A1(pulse_pack_count[5]), .A2(n853), .X(n493)
         );
  UDB116SVT24_NR2_0P75 U613 ( .A1(pulse_pack_count[5]), .A2(n504), .X(n854) );
  UDB116SVT24_OAI21_0P75 U614 ( .A1(n853), .A2(n494), .B(n501), .X(n855) );
  UDB116SVT24_OAI21_0P75 U615 ( .A1(n854), .A2(n855), .B(pulse_pack_count[6]), 
        .X(n492) );
  UDB116SVT24_OAI31_1 U616 ( .A1(pulse_pack_count[6]), .A2(n382), .A3(n493), 
        .B(n492), .X(n175) );
  UDB116SVT24_NR2_0P75 U617 ( .A1(pulse_pack_count[3]), .A2(n504), .X(n851) );
  UDB116SVT24_OAI21_0P75 U618 ( .A1(n850), .A2(n494), .B(n501), .X(n852) );
  UDB116SVT24_OAI21_0P75 U619 ( .A1(n851), .A2(n852), .B(pulse_pack_count[4]), 
        .X(n495) );
  UDB116SVT24_OAI31_1 U620 ( .A1(pulse_pack_count[4]), .A2(n382), .A3(n496), 
        .B(n495), .X(n178) );
  UDB116SVT24_NR2_0P75 U621 ( .A1(n497), .A2(n361), .X(n782) );
  UDB116SVT24_OR3B_0P75 U622 ( .B1(n281), .B2(n498), .A(timeout_counter[11]), 
        .X(n879) );
  UDB116SVT24_OAI22_0P75 U623 ( .A1(n782), .A2(n500), .B1(n878), .B2(n879), 
        .X(n147) );
  UDB116SVT24_NR2_0P75 U624 ( .A1(pulse_pack_count[1]), .A2(n504), .X(n848) );
  UDB116SVT24_OAI21_0P75 U625 ( .A1(n318), .A2(n504), .B(n501), .X(n849) );
  UDB116SVT24_OAI21_0P75 U626 ( .A1(n848), .A2(n849), .B(pulse_pack_count[2]), 
        .X(n502) );
  UDB116SVT24_OAI31_1 U627 ( .A1(pulse_pack_count[2]), .A2(n382), .A3(n503), 
        .B(n502), .X(n180) );
  UDB116SVT24_ND2_MM_0P75 U628 ( .A1(counter[3]), .A2(n829), .X(n530) );
  UDB116SVT24_NR2_0P75 U629 ( .A1(n505), .A2(n530), .X(n832) );
  UDB116SVT24_ND2_MM_0P75 U630 ( .A1(counter[5]), .A2(n832), .X(n532) );
  UDB116SVT24_NR2_0P75 U631 ( .A1(n506), .A2(n532), .X(n537) );
  UDB116SVT24_OAI22_0P75 U632 ( .A1(n316), .A2(n359), .B1(n508), .B2(n507), 
        .X(n510) );
  UDB116SVT24_OAI31_1 U633 ( .A1(n345), .A2(n509), .A3(n347), .B(state[1]), 
        .X(n834) );
  UDB116SVT24_AOAI211_0P75 U634 ( .A1(n512), .A2(n511), .B(n510), .C(n834), 
        .X(n835) );
  UDB116SVT24_OAI21_0P75 U635 ( .A1(n537), .A2(n392), .B(n350), .X(n538) );
  UDB116SVT24_NR2_0P75 U636 ( .A1(n338), .A2(n394), .X(n539) );
  UDB116SVT24_AOI22_1 U637 ( .A1(n339), .A2(n538), .B1(n537), .B2(n539), .X(
        n513) );
  UDB116SVT24_ND2_MM_0P75 U638 ( .A1(n513), .A2(n528), .X(n190) );
  UDB116SVT24_AN3B_0P75 U639 ( .B1(pulse_gen_count[2]), .B2(n274), .A(n329), 
        .X(n823) );
  UDB116SVT24_ND2_MM_0P75 U640 ( .A1(pulse_gen_count[3]), .A2(n823), .X(n521)
         );
  UDB116SVT24_ND2B_0P75 U641 ( .A(n521), .B(n276), .X(n514) );
  UDB116SVT24_AOI21B_0P75 U642 ( .A1(n515), .A2(n514), .B(n246), .X(n526) );
  UDB116SVT24_OR3B_0P75 U643 ( .B1(n383), .B2(n521), .A(n276), .X(n523) );
  UDB116SVT24_INV_0P75 U644 ( .A(pulse_gen_count[5]), .X(n524) );
  UDB116SVT24_AOI22_1 U645 ( .A1(pulse_gen_count[5]), .A2(n526), .B1(n523), 
        .B2(n524), .X(n204) );
  UDB116SVT24_NR2_0P75 U646 ( .A1(counter[1]), .A2(n395), .X(n534) );
  UDB116SVT24_OAI21_0P75 U647 ( .A1(n328), .A2(n393), .B(n351), .X(n533) );
  UDB116SVT24_AOI22_1 U648 ( .A1(n328), .A2(n534), .B1(counter[1]), .B2(n533), 
        .X(n516) );
  UDB116SVT24_ND2_MM_0P75 U649 ( .A1(n516), .A2(n528), .X(n196) );
  UDB116SVT24_ND2_MM_0P75 U650 ( .A1(n274), .A2(n330), .X(n518) );
  UDB116SVT24_NR2_0P75 U651 ( .A1(n274), .A2(n383), .X(n826) );
  UDB116SVT24_OAI21_0P75 U652 ( .A1(n330), .A2(n384), .B(n519), .X(n827) );
  UDB116SVT24_OAI21_0P75 U653 ( .A1(n826), .A2(n827), .B(pulse_gen_count[2]), 
        .X(n517) );
  UDB116SVT24_OAI31_1 U654 ( .A1(pulse_gen_count[2]), .A2(n384), .A3(n518), 
        .B(n517), .X(n201) );
  UDB116SVT24_NR2_0P75 U655 ( .A1(pulse_gen_count[3]), .A2(n384), .X(n824) );
  UDB116SVT24_OAI21_0P75 U656 ( .A1(n823), .A2(n383), .B(n519), .X(n825) );
  UDB116SVT24_OAI21_0P75 U657 ( .A1(n824), .A2(n825), .B(n276), .X(n520) );
  UDB116SVT24_OAI31_1 U658 ( .A1(n276), .A2(n383), .A3(n521), .B(n520), .X(
        n203) );
  UDB116SVT24_OAI22_0P75 U659 ( .A1(n526), .A2(n525), .B1(n524), .B2(n523), 
        .X(n206) );
  UDB116SVT24_INV_0P75 U660 ( .A(n835), .X(n840) );
  UDB116SVT24_ND2_MM_0P75 U661 ( .A1(n278), .A2(n332), .X(n527) );
  UDB116SVT24_OAI211_0P75 U662 ( .A1(n351), .A2(n332), .B1(n528), .B2(n527), 
        .X(n197) );
  UDB116SVT24_NR2_0P75 U663 ( .A1(counter[3]), .A2(n835), .X(n828) );
  UDB116SVT24_OAI21_0P75 U664 ( .A1(n829), .A2(n394), .B(n351), .X(n830) );
  UDB116SVT24_OAI21_0P75 U665 ( .A1(n828), .A2(n830), .B(n325), .X(n529) );
  UDB116SVT24_OAI31_1 U666 ( .A1(counter[4]), .A2(n393), .A3(n530), .B(n529), 
        .X(n193) );
  UDB116SVT24_NR2_0P75 U667 ( .A1(counter[5]), .A2(n393), .X(n831) );
  UDB116SVT24_OAI21_0P75 U668 ( .A1(n832), .A2(n395), .B(n350), .X(n833) );
  UDB116SVT24_OAI21_0P75 U669 ( .A1(n831), .A2(n833), .B(counter[6]), .X(n531)
         );
  UDB116SVT24_OAI31_1 U670 ( .A1(n323), .A2(n394), .A3(n532), .B(n531), .X(
        n191) );
  UDB116SVT24_ND2_MM_0P75 U671 ( .A1(counter[0]), .A2(n327), .X(n536) );
  UDB116SVT24_OAOI211_0P75 U672 ( .A1(n534), .A2(n533), .B(counter[2]), .C(
        n837), .X(n535) );
  UDB116SVT24_OAI31_1 U673 ( .A1(n312), .A2(n536), .A3(n392), .B(n535), .X(
        n195) );
  UDB116SVT24_ND2_MM_0P75 U674 ( .A1(n339), .A2(n537), .X(n541) );
  UDB116SVT24_OAOI211_0P75 U675 ( .A1(n539), .A2(n538), .B(counter[8]), .C(
        n285), .X(n540) );
  UDB116SVT24_OAI31_1 U676 ( .A1(n310), .A2(n395), .A3(n541), .B(n540), .X(
        n189) );
  UDB116SVT24_NR2_0P75 U677 ( .A1(n542), .A2(n541), .X(n836) );
  UDB116SVT24_ND3_0P75 U678 ( .A1(counter[10]), .A2(n386), .A3(n836), .X(n543)
         );
  UDB116SVT24_AOI21B_0P75 U679 ( .A1(n840), .A2(n543), .B(n350), .X(n551) );
  UDB116SVT24_ND2_MM_0P75 U680 ( .A1(n840), .A2(n289), .X(n550) );
  UDB116SVT24_OAI22_0P75 U681 ( .A1(n551), .A2(n272), .B1(n543), .B2(n550), 
        .X(n186) );
  UDB116SVT24_OR2_0P75 U682 ( .A1(n320), .A2(counter[14]), .X(n546) );
  UDB116SVT24_NR2_0P75 U683 ( .A1(n289), .A2(n543), .X(n547) );
  UDB116SVT24_ND2_MM_0P75 U684 ( .A1(n381), .A2(n547), .X(n545) );
  UDB116SVT24_NR2_0P75 U685 ( .A1(n321), .A2(n394), .X(n846) );
  UDB116SVT24_INV_0P75 U686 ( .A(n545), .X(n845) );
  UDB116SVT24_OAI21_0P75 U687 ( .A1(n845), .A2(n393), .B(n351), .X(n847) );
  UDB116SVT24_OAI21_0P75 U688 ( .A1(n846), .A2(n847), .B(n314), .X(n544) );
  UDB116SVT24_OAI31_1 U689 ( .A1(n835), .A2(n546), .A3(n545), .B(n544), .X(
        n198) );
  UDB116SVT24_AOI31_0P75 U690 ( .A1(n278), .A2(n547), .A3(n287), .B(n285), .X(
        n548) );
  UDB116SVT24_AOAI211_0P75 U691 ( .A1(n551), .A2(n550), .B(n549), .C(n548), 
        .X(n185) );
  UDB116SVT24_INV_0P75 U692 ( .A(n552), .X(n554) );
  UDB116SVT24_AOI31_0P75 U693 ( .A1(n555), .A2(n786), .A3(n554), .B(n553), .X(
        n822) );
  UDB116SVT24_ND2_MM_0P75 U694 ( .A1(n365), .A2(n356), .X(n816) );
  UDB116SVT24_AOAI211_0P75 U695 ( .A1(n333), .A2(n398), .B(n373), .C(
        interval_sum[0]), .X(n556) );
  UDB116SVT24_OAI31_1 U696 ( .A1(interval_sum[0]), .A2(n333), .A3(n816), .B(
        n556), .X(n239) );
  UDB116SVT24_ND2_MM_0P75 U697 ( .A1(interval_sum[15]), .A2(\intadd_0/n1 ), 
        .X(n559) );
  UDB116SVT24_NR2_0P75 U698 ( .A1(n292), .A2(n379), .X(n813) );
  UDB116SVT24_OAI21_0P75 U699 ( .A1(\intadd_0/n1 ), .A2(n361), .B(n356), .X(
        n814) );
  UDB116SVT24_OAI21_0P75 U700 ( .A1(n813), .A2(n814), .B(interval_sum[16]), 
        .X(n558) );
  UDB116SVT24_OAI31_1 U701 ( .A1(interval_sum[16]), .A2(n379), .A3(n559), .B(
        n558), .X(n223) );
  UDB116SVT24_INV_0P75 U702 ( .A(interval_sum[16]), .X(n661) );
  UDB116SVT24_NR2_0P75 U703 ( .A1(n661), .A2(n559), .X(n811) );
  UDB116SVT24_ND2_MM_0P75 U704 ( .A1(n294), .A2(n811), .X(n561) );
  UDB116SVT24_NR2_0P75 U705 ( .A1(interval_sum[17]), .A2(n379), .X(n810) );
  UDB116SVT24_OAI21_0P75 U706 ( .A1(n811), .A2(n362), .B(n357), .X(n812) );
  UDB116SVT24_OAI21_0P75 U707 ( .A1(n810), .A2(n812), .B(n264), .X(n560) );
  UDB116SVT24_OAI31_1 U708 ( .A1(n264), .A2(n377), .A3(n561), .B(n560), .X(
        n225) );
  UDB116SVT24_NR2_0P75 U709 ( .A1(n263), .A2(n561), .X(n808) );
  UDB116SVT24_ND2_MM_0P75 U710 ( .A1(n296), .A2(n808), .X(n563) );
  UDB116SVT24_NR2_0P75 U711 ( .A1(interval_sum[19]), .A2(n378), .X(n807) );
  UDB116SVT24_OAI21_0P75 U712 ( .A1(n808), .A2(n359), .B(n358), .X(n809) );
  UDB116SVT24_OAI21_0P75 U713 ( .A1(n807), .A2(n809), .B(n266), .X(n562) );
  UDB116SVT24_OAI31_1 U714 ( .A1(n266), .A2(n377), .A3(n563), .B(n562), .X(
        n227) );
  UDB116SVT24_NR2_0P75 U715 ( .A1(n265), .A2(n563), .X(n805) );
  UDB116SVT24_ND2_MM_0P75 U716 ( .A1(n298), .A2(n805), .X(n565) );
  UDB116SVT24_NR2_0P75 U717 ( .A1(interval_sum[21]), .A2(n379), .X(n804) );
  UDB116SVT24_OAI21_0P75 U718 ( .A1(n805), .A2(n360), .B(n356), .X(n806) );
  UDB116SVT24_OAI21_0P75 U719 ( .A1(n804), .A2(n806), .B(n268), .X(n564) );
  UDB116SVT24_OAI31_1 U720 ( .A1(n268), .A2(n816), .A3(n565), .B(n564), .X(
        n229) );
  UDB116SVT24_NR2_0P75 U721 ( .A1(n267), .A2(n565), .X(n802) );
  UDB116SVT24_ND2_MM_0P75 U722 ( .A1(n300), .A2(n802), .X(n567) );
  UDB116SVT24_NR2_0P75 U723 ( .A1(interval_sum[23]), .A2(n380), .X(n801) );
  UDB116SVT24_OAI21_0P75 U724 ( .A1(n802), .A2(n361), .B(n357), .X(n803) );
  UDB116SVT24_OAI21_0P75 U725 ( .A1(n801), .A2(n803), .B(interval_sum[24]), 
        .X(n566) );
  UDB116SVT24_OAI31_1 U726 ( .A1(n269), .A2(n380), .A3(n567), .B(n566), .X(
        n231) );
  UDB116SVT24_INV_0P75 U727 ( .A(interval_sum[24]), .X(n604) );
  UDB116SVT24_NR2_0P75 U728 ( .A1(n604), .A2(n567), .X(n799) );
  UDB116SVT24_ND2_MM_0P75 U729 ( .A1(n302), .A2(n799), .X(n569) );
  UDB116SVT24_NR2_0P75 U730 ( .A1(interval_sum[25]), .A2(n380), .X(n798) );
  UDB116SVT24_OAI21_0P75 U731 ( .A1(n799), .A2(n362), .B(n358), .X(n800) );
  UDB116SVT24_OAI21_0P75 U732 ( .A1(n798), .A2(n800), .B(n271), .X(n568) );
  UDB116SVT24_OAI31_1 U733 ( .A1(n271), .A2(n378), .A3(n569), .B(n568), .X(
        n233) );
  UDB116SVT24_NR2B_0P75 U734 ( .A(n271), .B(n569), .X(n796) );
  UDB116SVT24_ND2_MM_0P75 U735 ( .A1(n304), .A2(n796), .X(n571) );
  UDB116SVT24_NR2_0P75 U736 ( .A1(interval_sum[27]), .A2(n377), .X(n795) );
  UDB116SVT24_OAI21_0P75 U737 ( .A1(n796), .A2(n360), .B(n358), .X(n797) );
  UDB116SVT24_OAI21_0P75 U738 ( .A1(n795), .A2(n797), .B(n335), .X(n570) );
  UDB116SVT24_OAI31_1 U739 ( .A1(n336), .A2(n378), .A3(n571), .B(n570), .X(
        n235) );
  UDB116SVT24_ND2B_0P75 U740 ( .A(n571), .B(n336), .X(n573) );
  UDB116SVT24_AOI21_0P75 U741 ( .A1(n397), .A2(n573), .B(n372), .X(n574) );
  UDB116SVT24_ND2_MM_0P75 U742 ( .A1(n396), .A2(n305), .X(n572) );
  UDB116SVT24_OAI22_0P75 U743 ( .A1(n574), .A2(n319), .B1(n572), .B2(n573), 
        .X(n236) );
  UDB116SVT24_OR3B_0P75 U744 ( .B1(n319), .B2(n573), .A(n398), .X(n793) );
  UDB116SVT24_INV_0P75 U745 ( .A(interval_sum[30]), .X(n794) );
  UDB116SVT24_OAI21_0P75 U746 ( .A1(n306), .A2(n378), .B(n574), .X(n790) );
  UDB116SVT24_OA2BB2_0P75 U747 ( .A1(n793), .A2(n354), .B1(n794), .B2(n790), 
        .X(n237) );
  UDB116SVT24_INV_0P75 U748 ( .A(interval_sum[31]), .X(n791) );
  UDB116SVT24_AOI21_0P75 U749 ( .A1(interval_sum[29]), .A2(interval_sum[30]), 
        .B(n791), .X(n576) );
  UDB116SVT24_OAI21_0P75 U750 ( .A1(n319), .A2(n353), .B(n791), .X(n575) );
  UDB116SVT24_OAI311_1 U751 ( .A1(n791), .A2(n319), .A3(n353), .B1(n336), .B2(
        n575), .X(n581) );
  UDB116SVT24_OAI21_0P75 U752 ( .A1(n335), .A2(n576), .B(n581), .X(n586) );
  UDB116SVT24_OAI2111_1 U753 ( .A1(interval_sum[31]), .A2(n335), .B1(n306), 
        .B2(n577), .B3(n354), .X(n580) );
  UDB116SVT24_ND4_0P75 U754 ( .A1(n794), .A2(n308), .A3(n306), .A4(n335), .X(
        n578) );
  UDB116SVT24_OAOAI2111_1 U755 ( .A1(n308), .A2(n336), .B(interval_sum[29]), 
        .C(n794), .D(n578), .X(n579) );
  UDB116SVT24_OAI21B_1 U756 ( .A1(n303), .A2(n580), .B(n579), .X(n584) );
  UDB116SVT24_ND2_MM_0P75 U757 ( .A1(n304), .A2(n584), .X(n585) );
  UDB116SVT24_OR2_0P75 U758 ( .A1(n586), .A2(n585), .X(n590) );
  UDB116SVT24_AOI21_0P75 U759 ( .A1(interval_sum[30]), .A2(n308), .B(n305), 
        .X(n582) );
  UDB116SVT24_EO2_V2_1 U760 ( .A1(n582), .A2(n581), .X(n583) );
  UDB116SVT24_EO2_V2_1 U761 ( .A1(n590), .A2(n583), .X(n587) );
  UDB116SVT24_EO2_V2_1 U762 ( .A1(n304), .A2(n584), .X(n592) );
  UDB116SVT24_ND2_MM_0P75 U763 ( .A1(n586), .A2(n585), .X(n589) );
  UDB116SVT24_AOAI211_0P75 U764 ( .A1(n592), .A2(n589), .B(n587), .C(
        interval_sum[26]), .X(n591) );
  UDB116SVT24_OAI21_0P75 U765 ( .A1(n587), .A2(n271), .B(n591), .X(n598) );
  UDB116SVT24_INV_0P75 U766 ( .A(n592), .X(n588) );
  UDB116SVT24_NR2_0P75 U767 ( .A1(n588), .A2(n591), .X(n596) );
  UDB116SVT24_ND2_MM_0P75 U768 ( .A1(n590), .A2(n589), .X(n595) );
  UDB116SVT24_EO2_V2_1 U769 ( .A1(n592), .A2(n591), .X(n602) );
  UDB116SVT24_NR2_0P75 U770 ( .A1(n598), .A2(n602), .X(n593) );
  UDB116SVT24_AOI22_1 U771 ( .A1(n593), .A2(interval_sum[25]), .B1(n596), .B2(
        n595), .X(n594) );
  UDB116SVT24_OAI21_0P75 U772 ( .A1(n596), .A2(n595), .B(n594), .X(n599) );
  UDB116SVT24_ND2_MM_0P75 U773 ( .A1(n302), .A2(n599), .X(n597) );
  UDB116SVT24_NR2_0P75 U774 ( .A1(n598), .A2(n597), .X(n603) );
  UDB116SVT24_EO2_V2_1 U775 ( .A1(n598), .A2(n597), .X(n611) );
  UDB116SVT24_EO2_V2_1 U776 ( .A1(n302), .A2(n599), .X(n607) );
  UDB116SVT24_ND3_0P75 U777 ( .A1(n269), .A2(n611), .A3(n607), .X(n600) );
  UDB116SVT24_OAI21_0P75 U778 ( .A1(n603), .A2(n602), .B(n600), .X(n601) );
  UDB116SVT24_AOI21_0P75 U779 ( .A1(n603), .A2(n602), .B(n601), .X(n605) );
  UDB116SVT24_EO2_V2_1 U780 ( .A1(n269), .A2(n605), .X(n613) );
  UDB116SVT24_NR2_0P75 U781 ( .A1(n605), .A2(n604), .X(n606) );
  UDB116SVT24_ND2_MM_0P75 U782 ( .A1(n607), .A2(n606), .X(n610) );
  UDB116SVT24_EN2_V2_0P75 U783 ( .A1(n607), .A2(n606), .X(n617) );
  UDB116SVT24_NR2_0P75 U784 ( .A1(n613), .A2(n617), .X(n608) );
  UDB116SVT24_AOI22_1 U785 ( .A1(n608), .A2(interval_sum[23]), .B1(n611), .B2(
        n610), .X(n609) );
  UDB116SVT24_OAI21_0P75 U786 ( .A1(n611), .A2(n610), .B(n609), .X(n614) );
  UDB116SVT24_ND2_MM_0P75 U787 ( .A1(n300), .A2(n614), .X(n612) );
  UDB116SVT24_NR2_0P75 U788 ( .A1(n613), .A2(n612), .X(n618) );
  UDB116SVT24_EO2_V2_1 U789 ( .A1(n613), .A2(n612), .X(n625) );
  UDB116SVT24_EO2_V2_1 U790 ( .A1(n300), .A2(n614), .X(n621) );
  UDB116SVT24_ND3_0P75 U791 ( .A1(interval_sum[22]), .A2(n625), .A3(n621), .X(
        n615) );
  UDB116SVT24_OAI21_0P75 U792 ( .A1(n618), .A2(n617), .B(n615), .X(n616) );
  UDB116SVT24_AOI21_0P75 U793 ( .A1(n618), .A2(n617), .B(n616), .X(n619) );
  UDB116SVT24_EO2_V2_1 U794 ( .A1(n268), .A2(n619), .X(n627) );
  UDB116SVT24_NR2_0P75 U795 ( .A1(n619), .A2(n267), .X(n620) );
  UDB116SVT24_ND2_MM_0P75 U796 ( .A1(n621), .A2(n620), .X(n624) );
  UDB116SVT24_EN2_V2_0P75 U797 ( .A1(n621), .A2(n620), .X(n631) );
  UDB116SVT24_NR2_0P75 U798 ( .A1(n627), .A2(n631), .X(n622) );
  UDB116SVT24_AOI22_1 U799 ( .A1(n622), .A2(interval_sum[21]), .B1(n625), .B2(
        n624), .X(n623) );
  UDB116SVT24_OAI21_0P75 U800 ( .A1(n625), .A2(n624), .B(n623), .X(n628) );
  UDB116SVT24_ND2_MM_0P75 U801 ( .A1(n298), .A2(n628), .X(n626) );
  UDB116SVT24_NR2_0P75 U802 ( .A1(n627), .A2(n626), .X(n632) );
  UDB116SVT24_EO2_V2_1 U803 ( .A1(n627), .A2(n626), .X(n639) );
  UDB116SVT24_EO2_V2_1 U804 ( .A1(n298), .A2(n628), .X(n635) );
  UDB116SVT24_ND3_0P75 U805 ( .A1(interval_sum[20]), .A2(n639), .A3(n635), .X(
        n629) );
  UDB116SVT24_OAI21_0P75 U806 ( .A1(n632), .A2(n631), .B(n629), .X(n630) );
  UDB116SVT24_AOI21_0P75 U807 ( .A1(n632), .A2(n631), .B(n630), .X(n633) );
  UDB116SVT24_EO2_V2_1 U808 ( .A1(n266), .A2(n633), .X(n641) );
  UDB116SVT24_NR2_0P75 U809 ( .A1(n633), .A2(n265), .X(n634) );
  UDB116SVT24_ND2_MM_0P75 U810 ( .A1(n635), .A2(n634), .X(n638) );
  UDB116SVT24_EN2_V2_0P75 U811 ( .A1(n635), .A2(n634), .X(n645) );
  UDB116SVT24_NR2_0P75 U812 ( .A1(n641), .A2(n645), .X(n636) );
  UDB116SVT24_AOI22_1 U813 ( .A1(n636), .A2(interval_sum[19]), .B1(n639), .B2(
        n638), .X(n637) );
  UDB116SVT24_OAI21_0P75 U814 ( .A1(n639), .A2(n638), .B(n637), .X(n642) );
  UDB116SVT24_ND2_MM_0P75 U815 ( .A1(n296), .A2(n642), .X(n640) );
  UDB116SVT24_NR2_0P75 U816 ( .A1(n641), .A2(n640), .X(n646) );
  UDB116SVT24_EO2_V2_1 U817 ( .A1(n641), .A2(n640), .X(n653) );
  UDB116SVT24_EO2_V2_1 U818 ( .A1(n296), .A2(n642), .X(n649) );
  UDB116SVT24_ND3_0P75 U819 ( .A1(interval_sum[18]), .A2(n653), .A3(n649), .X(
        n643) );
  UDB116SVT24_OAI21_0P75 U820 ( .A1(n646), .A2(n645), .B(n643), .X(n644) );
  UDB116SVT24_AOI21_0P75 U821 ( .A1(n646), .A2(n645), .B(n644), .X(n647) );
  UDB116SVT24_EO2_V2_1 U822 ( .A1(n264), .A2(n647), .X(n655) );
  UDB116SVT24_NR2_0P75 U823 ( .A1(n647), .A2(n263), .X(n648) );
  UDB116SVT24_ND2_MM_0P75 U824 ( .A1(n649), .A2(n648), .X(n652) );
  UDB116SVT24_EN2_V2_0P75 U825 ( .A1(n649), .A2(n648), .X(n659) );
  UDB116SVT24_NR2_0P75 U826 ( .A1(n655), .A2(n659), .X(n650) );
  UDB116SVT24_AOI22_1 U827 ( .A1(n650), .A2(interval_sum[17]), .B1(n653), .B2(
        n652), .X(n651) );
  UDB116SVT24_OAI21_0P75 U828 ( .A1(n653), .A2(n652), .B(n651), .X(n656) );
  UDB116SVT24_ND2_MM_0P75 U829 ( .A1(n294), .A2(n656), .X(n654) );
  UDB116SVT24_NR2_0P75 U830 ( .A1(n655), .A2(n654), .X(n660) );
  UDB116SVT24_EO2_V2_1 U831 ( .A1(n655), .A2(n654), .X(n668) );
  UDB116SVT24_EO2_V2_1 U832 ( .A1(n294), .A2(n656), .X(n664) );
  UDB116SVT24_ND3_0P75 U833 ( .A1(n262), .A2(n668), .A3(n664), .X(n657) );
  UDB116SVT24_OAI21_0P75 U834 ( .A1(n660), .A2(n659), .B(n657), .X(n658) );
  UDB116SVT24_AOI21_0P75 U835 ( .A1(n660), .A2(n659), .B(n658), .X(n662) );
  UDB116SVT24_EO2_V2_1 U836 ( .A1(interval_sum[16]), .A2(n662), .X(n670) );
  UDB116SVT24_NR2_0P75 U837 ( .A1(n662), .A2(n661), .X(n663) );
  UDB116SVT24_ND2_MM_0P75 U838 ( .A1(n664), .A2(n663), .X(n667) );
  UDB116SVT24_EN2_V2_0P75 U839 ( .A1(n664), .A2(n663), .X(n674) );
  UDB116SVT24_NR2_0P75 U840 ( .A1(n670), .A2(n674), .X(n665) );
  UDB116SVT24_AOI22_1 U841 ( .A1(n665), .A2(n292), .B1(n668), .B2(n667), .X(
        n666) );
  UDB116SVT24_OAI21_0P75 U842 ( .A1(n668), .A2(n667), .B(n666), .X(n671) );
  UDB116SVT24_ND2_MM_0P75 U843 ( .A1(interval_sum[15]), .A2(n671), .X(n669) );
  UDB116SVT24_NR2_0P75 U844 ( .A1(n670), .A2(n669), .X(n675) );
  UDB116SVT24_EO2_V2_1 U845 ( .A1(n670), .A2(n669), .X(n683) );
  UDB116SVT24_EO2_V2_1 U846 ( .A1(n292), .A2(n671), .X(n679) );
  UDB116SVT24_ND3_0P75 U847 ( .A1(n261), .A2(n683), .A3(n679), .X(n672) );
  UDB116SVT24_OAI21_0P75 U848 ( .A1(n675), .A2(n674), .B(n672), .X(n673) );
  UDB116SVT24_AOI21_0P75 U849 ( .A1(n675), .A2(n674), .B(n673), .X(n677) );
  UDB116SVT24_EO2_V2_1 U850 ( .A1(interval_sum[14]), .A2(n677), .X(n685) );
  UDB116SVT24_INV_0P75 U851 ( .A(interval_sum[14]), .X(n676) );
  UDB116SVT24_NR2_0P75 U852 ( .A1(n677), .A2(n676), .X(n678) );
  UDB116SVT24_ND2_MM_0P75 U853 ( .A1(n679), .A2(n678), .X(n682) );
  UDB116SVT24_EN2_V2_0P75 U854 ( .A1(n679), .A2(n678), .X(n688) );
  UDB116SVT24_NR2_0P75 U855 ( .A1(n685), .A2(n688), .X(n680) );
  UDB116SVT24_AOI22_1 U856 ( .A1(n680), .A2(interval_sum[13]), .B1(n683), .B2(
        n682), .X(n681) );
  UDB116SVT24_OAI21_0P75 U857 ( .A1(n683), .A2(n682), .B(n681), .X(n856) );
  UDB116SVT24_ND2_MM_0P75 U858 ( .A1(interval_sum[13]), .A2(n856), .X(n684) );
  UDB116SVT24_NR2_0P75 U859 ( .A1(n685), .A2(n684), .X(n689) );
  UDB116SVT24_EO2_V2_1 U860 ( .A1(n685), .A2(n684), .X(n698) );
  UDB116SVT24_EO2_V2_1 U861 ( .A1(interval_sum[13]), .A2(n856), .X(n694) );
  UDB116SVT24_ND3_0P75 U862 ( .A1(n259), .A2(n698), .A3(n694), .X(n686) );
  UDB116SVT24_OAI21_0P75 U863 ( .A1(n689), .A2(n688), .B(n686), .X(n687) );
  UDB116SVT24_AOI21_0P75 U864 ( .A1(n689), .A2(n688), .B(n687), .X(n692) );
  UDB116SVT24_AOI22_1 U865 ( .A1(n371), .A2(n692), .B1(n690), .B2(n390), .X(
        n172) );
  UDB116SVT24_EO2_V2_1 U866 ( .A1(interval_sum[12]), .A2(n692), .X(n700) );
  UDB116SVT24_INV_0P75 U867 ( .A(interval_sum[12]), .X(n691) );
  UDB116SVT24_NR2_0P75 U868 ( .A1(n692), .A2(n691), .X(n693) );
  UDB116SVT24_ND2_MM_0P75 U869 ( .A1(n694), .A2(n693), .X(n697) );
  UDB116SVT24_EN2_V2_0P75 U870 ( .A1(n694), .A2(n693), .X(n703) );
  UDB116SVT24_NR2_0P75 U871 ( .A1(n700), .A2(n703), .X(n695) );
  UDB116SVT24_AOI22_1 U872 ( .A1(n695), .A2(interval_sum[11]), .B1(n698), .B2(
        n697), .X(n696) );
  UDB116SVT24_OAI21_0P75 U873 ( .A1(n698), .A2(n697), .B(n696), .X(n857) );
  UDB116SVT24_ND2_MM_0P75 U874 ( .A1(interval_sum[11]), .A2(n857), .X(n699) );
  UDB116SVT24_NR2_0P75 U875 ( .A1(n700), .A2(n699), .X(n704) );
  UDB116SVT24_EO2_V2_1 U876 ( .A1(n700), .A2(n699), .X(n713) );
  UDB116SVT24_EO2_V2_1 U877 ( .A1(interval_sum[11]), .A2(n857), .X(n709) );
  UDB116SVT24_ND3_0P75 U878 ( .A1(n257), .A2(n713), .A3(n709), .X(n701) );
  UDB116SVT24_OAI21_0P75 U879 ( .A1(n704), .A2(n703), .B(n701), .X(n702) );
  UDB116SVT24_AOI21_0P75 U880 ( .A1(n704), .A2(n703), .B(n702), .X(n707) );
  UDB116SVT24_AOI22_1 U881 ( .A1(n369), .A2(n707), .B1(n705), .B2(n387), .X(
        n170) );
  UDB116SVT24_EO2_V2_1 U882 ( .A1(interval_sum[10]), .A2(n707), .X(n715) );
  UDB116SVT24_INV_0P75 U883 ( .A(interval_sum[10]), .X(n706) );
  UDB116SVT24_NR2_0P75 U884 ( .A1(n707), .A2(n706), .X(n708) );
  UDB116SVT24_ND2_MM_0P75 U885 ( .A1(n709), .A2(n708), .X(n712) );
  UDB116SVT24_EN2_V2_0P75 U886 ( .A1(n709), .A2(n708), .X(n718) );
  UDB116SVT24_NR2_0P75 U887 ( .A1(n715), .A2(n718), .X(n710) );
  UDB116SVT24_AOI22_1 U888 ( .A1(n710), .A2(interval_sum[9]), .B1(n713), .B2(
        n712), .X(n711) );
  UDB116SVT24_OAI21_0P75 U889 ( .A1(n713), .A2(n712), .B(n711), .X(n858) );
  UDB116SVT24_ND2_MM_0P75 U890 ( .A1(interval_sum[9]), .A2(n858), .X(n714) );
  UDB116SVT24_NR2_0P75 U891 ( .A1(n715), .A2(n714), .X(n719) );
  UDB116SVT24_EO2_V2_1 U892 ( .A1(n715), .A2(n714), .X(n728) );
  UDB116SVT24_EO2_V2_1 U893 ( .A1(interval_sum[9]), .A2(n858), .X(n724) );
  UDB116SVT24_ND3_0P75 U894 ( .A1(n255), .A2(n728), .A3(n724), .X(n716) );
  UDB116SVT24_OAI21_0P75 U895 ( .A1(n719), .A2(n718), .B(n716), .X(n717) );
  UDB116SVT24_AOI21_0P75 U896 ( .A1(n719), .A2(n718), .B(n717), .X(n722) );
  UDB116SVT24_AOI22_1 U897 ( .A1(n863), .A2(n722), .B1(n720), .B2(n388), .X(
        n168) );
  UDB116SVT24_EO2_V2_1 U898 ( .A1(interval_sum[8]), .A2(n722), .X(n730) );
  UDB116SVT24_INV_0P75 U899 ( .A(interval_sum[8]), .X(n721) );
  UDB116SVT24_NR2_0P75 U900 ( .A1(n722), .A2(n721), .X(n723) );
  UDB116SVT24_ND2_MM_0P75 U901 ( .A1(n724), .A2(n723), .X(n727) );
  UDB116SVT24_EN2_V2_0P75 U902 ( .A1(n724), .A2(n723), .X(n733) );
  UDB116SVT24_NR2_0P75 U903 ( .A1(n730), .A2(n733), .X(n725) );
  UDB116SVT24_AOI22_1 U904 ( .A1(n725), .A2(interval_sum[7]), .B1(n728), .B2(
        n727), .X(n726) );
  UDB116SVT24_OAI21_0P75 U905 ( .A1(n728), .A2(n727), .B(n726), .X(n859) );
  UDB116SVT24_ND2_MM_0P75 U906 ( .A1(interval_sum[7]), .A2(n859), .X(n729) );
  UDB116SVT24_NR2_0P75 U907 ( .A1(n730), .A2(n729), .X(n734) );
  UDB116SVT24_EO2_V2_1 U908 ( .A1(n730), .A2(n729), .X(n743) );
  UDB116SVT24_EO2_V2_1 U909 ( .A1(interval_sum[7]), .A2(n859), .X(n739) );
  UDB116SVT24_ND3_0P75 U910 ( .A1(n253), .A2(n743), .A3(n739), .X(n731) );
  UDB116SVT24_OAI21_0P75 U911 ( .A1(n734), .A2(n733), .B(n731), .X(n732) );
  UDB116SVT24_AOI21_0P75 U912 ( .A1(n734), .A2(n733), .B(n732), .X(n737) );
  UDB116SVT24_AOI22_1 U913 ( .A1(n370), .A2(n737), .B1(n735), .B2(n389), .X(
        n166) );
  UDB116SVT24_EO2_V2_1 U914 ( .A1(interval_sum[6]), .A2(n737), .X(n745) );
  UDB116SVT24_INV_0P75 U915 ( .A(interval_sum[6]), .X(n736) );
  UDB116SVT24_NR2_0P75 U916 ( .A1(n737), .A2(n736), .X(n738) );
  UDB116SVT24_ND2_MM_0P75 U917 ( .A1(n739), .A2(n738), .X(n742) );
  UDB116SVT24_EN2_V2_0P75 U918 ( .A1(n739), .A2(n738), .X(n748) );
  UDB116SVT24_NR2_0P75 U919 ( .A1(n745), .A2(n748), .X(n740) );
  UDB116SVT24_AOI22_1 U920 ( .A1(n740), .A2(interval_sum[5]), .B1(n743), .B2(
        n742), .X(n741) );
  UDB116SVT24_OAI21_0P75 U921 ( .A1(n743), .A2(n742), .B(n741), .X(n860) );
  UDB116SVT24_ND2_MM_0P75 U922 ( .A1(interval_sum[5]), .A2(n860), .X(n744) );
  UDB116SVT24_NR2_0P75 U923 ( .A1(n745), .A2(n744), .X(n749) );
  UDB116SVT24_EO2_V2_1 U924 ( .A1(n745), .A2(n744), .X(n757) );
  UDB116SVT24_EO2_V2_1 U925 ( .A1(n252), .A2(n860), .X(n753) );
  UDB116SVT24_ND3_0P75 U926 ( .A1(interval_sum[4]), .A2(n757), .A3(n753), .X(
        n746) );
  UDB116SVT24_OAI21_0P75 U927 ( .A1(n749), .A2(n748), .B(n746), .X(n747) );
  UDB116SVT24_AOI21_0P75 U928 ( .A1(n749), .A2(n748), .B(n747), .X(n751) );
  UDB116SVT24_AOI22_1 U929 ( .A1(n371), .A2(n751), .B1(n750), .B2(n390), .X(
        n164) );
  UDB116SVT24_EO2_V2_1 U930 ( .A1(n251), .A2(n751), .X(n759) );
  UDB116SVT24_ND2B_0P75 U931 ( .A(n751), .B(interval_sum[4]), .X(n752) );
  UDB116SVT24_ND2B_0P75 U932 ( .A(n752), .B(n753), .X(n756) );
  UDB116SVT24_EO2_V2_1 U933 ( .A1(n753), .A2(n752), .X(n762) );
  UDB116SVT24_NR2_0P75 U934 ( .A1(n759), .A2(n762), .X(n754) );
  UDB116SVT24_AOI22_1 U935 ( .A1(n754), .A2(interval_sum[3]), .B1(n757), .B2(
        n756), .X(n755) );
  UDB116SVT24_OAI21_0P75 U936 ( .A1(n757), .A2(n756), .B(n755), .X(n861) );
  UDB116SVT24_ND2_MM_0P75 U937 ( .A1(interval_sum[3]), .A2(n861), .X(n758) );
  UDB116SVT24_NR2_0P75 U938 ( .A1(n759), .A2(n758), .X(n763) );
  UDB116SVT24_EN2_V2_0P75 U939 ( .A1(n250), .A2(n861), .X(n767) );
  UDB116SVT24_EN2_V2_0P75 U940 ( .A1(n759), .A2(n758), .X(n770) );
  UDB116SVT24_OR3B_0P75 U941 ( .B1(n767), .B2(n770), .A(interval_sum[2]), .X(
        n760) );
  UDB116SVT24_OAI21_0P75 U942 ( .A1(n763), .A2(n762), .B(n760), .X(n761) );
  UDB116SVT24_AOI21_0P75 U943 ( .A1(n763), .A2(n762), .B(n761), .X(n765) );
  UDB116SVT24_AOI22_1 U944 ( .A1(n369), .A2(n765), .B1(n764), .B2(n387), .X(
        n162) );
  UDB116SVT24_ND2B_0P75 U945 ( .A(n765), .B(interval_sum[2]), .X(n766) );
  UDB116SVT24_NR2_0P75 U946 ( .A1(n767), .A2(n766), .X(n771) );
  UDB116SVT24_EN2_V2_0P75 U947 ( .A1(n249), .A2(n765), .X(n773) );
  UDB116SVT24_ND2_MM_0P75 U948 ( .A1(n773), .A2(interval_sum[1]), .X(n778) );
  UDB116SVT24_EO2_V2_1 U949 ( .A1(n767), .A2(n766), .X(n779) );
  UDB116SVT24_INV_0P75 U950 ( .A(n779), .X(n768) );
  UDB116SVT24_OAI22_0P75 U951 ( .A1(n771), .A2(n770), .B1(n778), .B2(n768), 
        .X(n769) );
  UDB116SVT24_AOI21_0P75 U952 ( .A1(n771), .A2(n770), .B(n769), .X(n776) );
  UDB116SVT24_AOI22_1 U953 ( .A1(n863), .A2(n776), .B1(n772), .B2(n388), .X(
        n161) );
  UDB116SVT24_INV_0P75 U954 ( .A(interval_sum[1]), .X(n821) );
  UDB116SVT24_ND2_MM_0P75 U955 ( .A1(n290), .A2(n776), .X(n774) );
  UDB116SVT24_OAI2111_1 U956 ( .A1(n290), .A2(n776), .B1(interval_sum[0]), 
        .B2(n774), .B3(n773), .X(n775) );
  UDB116SVT24_OAI31_1 U957 ( .A1(n776), .A2(n779), .A3(n778), .B(n775), .X(
        n777) );
  UDB116SVT24_AOI21_0P75 U958 ( .A1(n779), .A2(n778), .B(n777), .X(n781) );
  UDB116SVT24_AOI22_1 U959 ( .A1(n370), .A2(n781), .B1(n780), .B2(n389), .X(
        n174) );
  UDB116SVT24_NR2B_0P75 U960 ( .A(tx_rdy), .B(tx_rdy_prev), .X(N84) );
  UDB116SVT24_AO31_0P75 U961 ( .A1(n783), .A2(n359), .A3(fsm_rst), .B(n782), 
        .X(n207) );
  UDB116SVT24_AOI21_0P75 U962 ( .A1(n367), .A2(n789), .B(n784), .X(n787) );
  UDB116SVT24_OAI32_1 U963 ( .A1(pulse_count[3]), .A2(n789), .A3(n788), .B1(
        n787), .B2(n786), .X(n242) );
  UDB116SVT24_ND2_MM_0P75 U964 ( .A1(interval_sum[0]), .A2(n328), .X(n819) );
  UDB116SVT24_MAJI3_1 U965 ( .A1(n821), .A2(n326), .A3(n819), .X(\intadd_0/CI ) );
  UDB116SVT24_AOI21_0P75 U966 ( .A1(n399), .A2(n354), .B(n790), .X(n792) );
  UDB116SVT24_OAI32_1 U967 ( .A1(interval_sum[31]), .A2(n353), .A3(n793), .B1(
        n792), .B2(n791), .X(n238) );
  UDB116SVT24_AO22_1 U968 ( .A1(n304), .A2(n797), .B1(n796), .B2(n795), .X(
        n234) );
  UDB116SVT24_AO22_1 U969 ( .A1(n302), .A2(n800), .B1(n799), .B2(n798), .X(
        n232) );
  UDB116SVT24_AO22_1 U970 ( .A1(n300), .A2(n803), .B1(n802), .B2(n801), .X(
        n230) );
  UDB116SVT24_AO22_1 U971 ( .A1(n298), .A2(n806), .B1(n805), .B2(n804), .X(
        n228) );
  UDB116SVT24_AO22_1 U972 ( .A1(n296), .A2(n809), .B1(n808), .B2(n807), .X(
        n226) );
  UDB116SVT24_AO22_1 U973 ( .A1(n294), .A2(n812), .B1(n811), .B2(n810), .X(
        n224) );
  UDB116SVT24_AO22_1 U974 ( .A1(interval_sum[15]), .A2(n814), .B1(
        \intadd_0/n1 ), .B2(n813), .X(n222) );
  UDB116SVT24_AO22_1 U975 ( .A1(interval_sum[14]), .A2(n374), .B1(n279), .B2(
        \intadd_0/SUM[12] ), .X(n221) );
  UDB116SVT24_AO22_1 U976 ( .A1(n260), .A2(n375), .B1(n397), .B2(
        \intadd_0/SUM[11] ), .X(n220) );
  UDB116SVT24_AO22_1 U977 ( .A1(interval_sum[12]), .A2(n372), .B1(n398), .B2(
        \intadd_0/SUM[10] ), .X(n219) );
  UDB116SVT24_AO22_1 U978 ( .A1(n258), .A2(n373), .B1(n399), .B2(
        \intadd_0/SUM[9] ), .X(n218) );
  UDB116SVT24_AO22_1 U979 ( .A1(interval_sum[10]), .A2(n374), .B1(n279), .B2(
        \intadd_0/SUM[8] ), .X(n217) );
  UDB116SVT24_AO22_1 U980 ( .A1(n256), .A2(n375), .B1(n396), .B2(
        \intadd_0/SUM[7] ), .X(n216) );
  UDB116SVT24_AO22_1 U981 ( .A1(interval_sum[8]), .A2(n372), .B1(n397), .B2(
        \intadd_0/SUM[6] ), .X(n215) );
  UDB116SVT24_AO22_1 U982 ( .A1(n254), .A2(n373), .B1(n398), .B2(
        \intadd_0/SUM[5] ), .X(n214) );
  UDB116SVT24_AO22_1 U983 ( .A1(interval_sum[6]), .A2(n374), .B1(n399), .B2(
        \intadd_0/SUM[4] ), .X(n213) );
  UDB116SVT24_AO22_1 U984 ( .A1(n252), .A2(n375), .B1(n399), .B2(
        \intadd_0/SUM[3] ), .X(n212) );
  UDB116SVT24_AO22_1 U985 ( .A1(n251), .A2(n372), .B1(n396), .B2(
        \intadd_0/SUM[2] ), .X(n211) );
  UDB116SVT24_AO22_1 U986 ( .A1(n250), .A2(n373), .B1(n397), .B2(
        \intadd_0/SUM[1] ), .X(n210) );
  UDB116SVT24_AO22_1 U987 ( .A1(n249), .A2(n374), .B1(n279), .B2(
        \intadd_0/SUM[0] ), .X(n209) );
  UDB116SVT24_AOI22_1 U988 ( .A1(interval_sum[1]), .A2(n286), .B1(n327), .B2(
        n290), .X(n818) );
  UDB116SVT24_AOI21_0P75 U989 ( .A1(n819), .A2(n818), .B(n380), .X(n817) );
  UDB116SVT24_OAI21_0P75 U990 ( .A1(n819), .A2(n818), .B(n817), .X(n820) );
  UDB116SVT24_OAI21_0P75 U991 ( .A1(n356), .A2(n290), .B(n820), .X(n208) );
  UDB116SVT24_AO22_1 U992 ( .A1(pulse_gen_count[3]), .A2(n825), .B1(n824), 
        .B2(n823), .X(n202) );
  UDB116SVT24_AO22_1 U993 ( .A1(n274), .A2(n827), .B1(n330), .B2(n826), .X(
        n200) );
  UDB116SVT24_AO22_1 U994 ( .A1(n343), .A2(n830), .B1(n829), .B2(n828), .X(
        n194) );
  UDB116SVT24_AO22_1 U995 ( .A1(n341), .A2(n833), .B1(n832), .B2(n831), .X(
        n192) );
  UDB116SVT24_ND2_MM_0P75 U996 ( .A1(n840), .A2(n836), .X(n843) );
  UDB116SVT24_OAI21_0P75 U997 ( .A1(n836), .A2(n395), .B(n350), .X(n839) );
  UDB116SVT24_AOI21_0P75 U998 ( .A1(n385), .A2(n839), .B(n837), .X(n838) );
  UDB116SVT24_OAI21_0P75 U999 ( .A1(n386), .A2(n843), .B(n838), .X(n188) );
  UDB116SVT24_AOI21_0P75 U1000 ( .A1(n840), .A2(n844), .B(n839), .X(n842) );
  UDB116SVT24_OAI32_1 U1001 ( .A1(n322), .A2(n844), .A3(n843), .B1(n842), .B2(
        n841), .X(n187) );
  UDB116SVT24_AO22_1 U1002 ( .A1(counter[13]), .A2(n847), .B1(n846), .B2(n845), 
        .X(n184) );
  UDB116SVT24_AO22_1 U1003 ( .A1(pulse_pack_count[1]), .A2(n849), .B1(n318), 
        .B2(n848), .X(n181) );
  UDB116SVT24_AO22_1 U1004 ( .A1(pulse_pack_count[3]), .A2(n852), .B1(n851), 
        .B2(n850), .X(n179) );
  UDB116SVT24_AO22_1 U1005 ( .A1(pulse_pack_count[5]), .A2(n855), .B1(n854), 
        .B2(n853), .X(n177) );
  UDB116SVT24_OA22_1 U1006 ( .A1(avg_interval[13]), .A2(n369), .B1(n388), .B2(
        n856), .X(n173) );
  UDB116SVT24_OA22_1 U1007 ( .A1(avg_interval[11]), .A2(n371), .B1(n389), .B2(
        n857), .X(n171) );
  UDB116SVT24_OA22_1 U1008 ( .A1(avg_interval[9]), .A2(n370), .B1(n390), .B2(
        n858), .X(n169) );
  UDB116SVT24_OA22_1 U1009 ( .A1(avg_interval[7]), .A2(n371), .B1(n387), .B2(
        n859), .X(n167) );
  UDB116SVT24_OA22_1 U1010 ( .A1(avg_interval[5]), .A2(n369), .B1(n388), .B2(
        n860), .X(n165) );
  UDB116SVT24_OA22_1 U1011 ( .A1(avg_interval[3]), .A2(n863), .B1(n389), .B2(
        n861), .X(n163) );
  UDB116SVT24_AO22_1 U1012 ( .A1(timeout_counter[1]), .A2(n865), .B1(n864), 
        .B2(timeout_counter[0]), .X(n159) );
  UDB116SVT24_AO22_1 U1013 ( .A1(timeout_counter[3]), .A2(n868), .B1(n867), 
        .B2(n866), .X(n157) );
  UDB116SVT24_AO22_1 U1014 ( .A1(timeout_counter[5]), .A2(n871), .B1(n870), 
        .B2(n869), .X(n155) );
  UDB116SVT24_AO22_1 U1015 ( .A1(timeout_counter[7]), .A2(n874), .B1(n873), 
        .B2(n872), .X(n153) );
  UDB116SVT24_AO22_1 U1016 ( .A1(n247), .A2(n877), .B1(n876), .B2(n875), .X(
        n151) );
  UDB116SVT24_AOI32_1 U1017 ( .A1(n881), .A2(timeout_counter[12]), .A3(n880), 
        .B1(n879), .B2(n878), .X(n148) );
endmodule

