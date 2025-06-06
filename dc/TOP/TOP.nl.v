/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : V-2023.12-SP1
// Date      : Fri Jun  6 13:10:07 2025
/////////////////////////////////////////////////////////////


module TOP ( clk, rfin, rst, MOSI, CS, SCK, TX_BY, RX, i_CONFIG, osc_freq, 
        arthur, pkt_rec, MISO, TX_OUT, sh_en );
  output [3:0] osc_freq;
  output [7:0] arthur;
  input clk, rfin, rst, MOSI, CS, SCK, TX_BY, RX, i_CONFIG;
  output pkt_rec, MISO, TX_OUT, sh_en;
  wire   n1578, n1579, n1580, TX_OUT_I, FSM_RST, TX_SH, SH_EN_DONE,
         ext_counter_flag_RX, ext_counter_flag_TX, PKT_RST, PKT_LD, PKT_EN,
         SPI_LD, CS_sync, SPI_OUT_RDY, TX_EN, TX_LD, pkt_rec_prev,
         \fsm_sync_inst/state_pos , \fsm_sync_inst/N10 ,
         \fsm_sync_inst/sh_en_prev , \fsm_sync_inst/state_neg ,
         \fsm_sync_inst/N12 , \sh_sync_inst/n231 , \sh_sync_inst/n164 ,
         \sh_sync_inst/n165 , \sh_sync_inst/n166 , \sh_sync_inst/n167 ,
         \sh_sync_inst/n168 , \sh_sync_inst/n169 , \sh_sync_inst/n170 ,
         \sh_sync_inst/n171 , \sh_sync_inst/n172 , \sh_sync_inst/n173 ,
         \sh_sync_inst/n174 , \sh_sync_inst/n175 , \sh_sync_inst/n176 ,
         \sh_sync_inst/n177 , \sh_sync_inst/n178 , \sh_sync_inst/n179 ,
         \sh_sync_inst/n180 , \sh_sync_inst/n181 , \sh_sync_inst/n182 ,
         \sh_sync_inst/n183 , \sh_sync_inst/n184 , \sh_sync_inst/n185 ,
         \sh_sync_inst/n186 , \sh_sync_inst/n187 , \sh_sync_inst/n188 ,
         \sh_sync_inst/n189 , \sh_sync_inst/n190 , \sh_sync_inst/n191 ,
         \sh_sync_inst/n235 , \sh_sync_inst/first_pulse_flag ,
         \sh_sync_inst/n216 , \sh_sync_inst/n192 , \sh_sync_inst/n194 ,
         \sh_sync_inst/n195 , \sh_sync_inst/n196 , \sh_sync_inst/n197 ,
         \sh_sync_inst/n198 , \sh_sync_inst/n199 , \sh_sync_inst/n200 ,
         \sh_sync_inst/n201 , \sh_sync_inst/n205 , \sh_sync_inst/n206 ,
         \sh_sync_inst/n207 , \sh_sync_inst/n212 , \sh_sync_inst/n213 ,
         \sh_sync_inst/n214 , \sh_sync_inst/n217 , \sh_sync_inst/n218 ,
         \sh_sync_inst/n219 , \sh_sync_inst/n220 , \sh_sync_inst/n221 ,
         \sh_sync_inst/n222 , \sh_sync_inst/n223 , \sh_sync_inst/n224 ,
         \sh_sync_inst/n225 , \sh_sync_inst/n226 , \sh_sync_inst/n227 ,
         \sh_sync_inst/n228 , \sh_sync_inst/n229 , \sh_sync_inst/n230 ,
         \sh_sync_inst/n232 , \sh_sync_inst/n233 , \sh_sync_inst/n234 ,
         \sh_sync_inst/n246 , \sh_sync_inst/n243 , \sh_sync_inst/n244 ,
         \sh_sync_inst/n245 , \sh_sync_inst/rfin_edge , \sh_sync_inst/N79 ,
         \sh_sync_inst/rfin_prev , \sh_sync_inst/rfin_sync2 ,
         \sh_sync_inst/rfin_sync1 , \sh_sync_inst/N400 , \sh_sync_inst/n203 ,
         \sh_sync_inst/n204 , \sh_sync_inst/n208 , \sh_sync_inst/n209 ,
         \sh_sync_inst/n210 , \sh_sync_inst/n211 , \sh_sync_inst/n215 ,
         \sh_sync_inst/n248 , \sh_sync_inst/n249 , \sh_sync_inst/n236 ,
         \sh_sync_inst/n237 , \sh_sync_inst/n238 , \sh_sync_inst/n239 ,
         \sh_sync_inst/n241 , \sh_sync_inst/n202 , \sh_sync_inst/n247 ,
         \sh_sync_inst/tx_rdy_p , \sh_sync_inst/N81 ,
         \sh_sync_inst/tx_rdy_prev , \shift_buf_inst/n29 ,
         \shift_buf_inst/n30 , \shift_buf_inst/n31 , \shift_buf_inst/n32 ,
         \shift_buf_inst/n33 , \shift_buf_inst/n34 , \shift_buf_inst/n35 ,
         \shift_buf_inst/n36 , \shift_buf_inst/n37 , \shift_buf_inst/n38 ,
         \shift_buf_inst/n39 , \shift_buf_inst/N28 , \shift_buf_inst/n40 ,
         \shift_buf_inst/n41 , \shift_buf_inst/N30 , \shift_buf_inst/n42 ,
         \shift_buf_inst/n43 , \shift_buf_inst/n44 , \shift_buf_inst/n45 ,
         \shift_buf_inst/n46 , \shift_buf_inst/n47 , \shift_buf_inst/n48 ,
         \shift_buf_inst/n49 , \shift_buf_inst/n50 , \shift_buf_inst/n51 ,
         \shift_buf_inst/n52 , \shift_buf_inst/n53 , \pkt_reg_inst/n28 ,
         \pkt_reg_inst/n36 , \pkt_reg_inst/n44 , \pkt_reg_inst/n52 ,
         \pkt_reg_inst/n27 , \pkt_reg_inst/n35 , \pkt_reg_inst/n43 ,
         \pkt_reg_inst/n51 , \pkt_reg_inst/n26 , \pkt_reg_inst/n34 ,
         \pkt_reg_inst/n42 , \pkt_reg_inst/n50 , \pkt_reg_inst/n25 ,
         \pkt_reg_inst/n33 , \pkt_reg_inst/n41 , \pkt_reg_inst/n49 ,
         \pkt_reg_inst/n24 , \pkt_reg_inst/n32 , \pkt_reg_inst/n40 ,
         \pkt_reg_inst/n48 , \pkt_reg_inst/n23 , \pkt_reg_inst/n31 ,
         \pkt_reg_inst/n39 , \pkt_reg_inst/n47 , \pkt_reg_inst/n22 ,
         \pkt_reg_inst/n30 , \pkt_reg_inst/n38 , \pkt_reg_inst/n46 ,
         \pkt_reg_inst/n21 , \pkt_reg_inst/n29 , \pkt_reg_inst/n37 ,
         \pkt_reg_inst/n45 , \SPI_slave_inst/n22 , \SPI_slave_inst/n24 ,
         \SPI_slave_inst/n26 , \SPI_slave_inst/n28 , \SPI_slave_inst/n30 ,
         \SPI_slave_inst/n32 , \SPI_slave_inst/n34 , \SPI_slave_inst/n35 ,
         \SPI_slave_inst/n33 , \SPI_slave_inst/n31 , \SPI_slave_inst/n29 ,
         \SPI_slave_inst/n27 , \SPI_slave_inst/n25 , \SPI_slave_inst/n23 ,
         \SPI_slave_inst/n36 , \SPI_slave_inst/n37 , \SPI_slave_inst/SHIFT_IN ,
         \SPI_slave_inst/n38 , \SPI_slave_inst/n39 , \SPI_slave_inst/SS_prev ,
         \SPI_slave_inst/SCK_prev , \SPI_slave_inst/SS_sync_0 ,
         \SPI_slave_inst/SCK_sync_1 , \SPI_slave_inst/SCK_sync_0 ,
         \SPI_slave_inst/MOSI_sync_1 , \SPI_slave_inst/MOSI_sync_0 ,
         \tx_buf_inst/N5 , \tx_buf_inst/n5 , \tx_buf_inst/n6 ,
         \tx_buf_inst/n7 , \tx_buf_inst/n8 , \tx_buf_inst/n9 ,
         \tx_buf_inst/n10 , \tx_buf_inst/n11 , \tx_buf_inst/n12 ,
         \CONFIG_inst/n43 , \CONFIG_inst/n44 , \CONFIG_inst/n45 ,
         \CONFIG_inst/n46 , \CONFIG_inst/n47 , \CONFIG_inst/n48 ,
         \CONFIG_inst/n49 , \CONFIG_inst/n50 , \CONFIG_inst/n51 ,
         \CONFIG_inst/n52 , \CONFIG_inst/n53 , \CONFIG_inst/n54 ,
         \CONFIG_inst/n55 , \CONFIG_inst/n58 , \CONFIG_inst/n84 ,
         \CONFIG_inst/n59 , \CONFIG_inst/n60 , \CONFIG_inst/n61 ,
         \CONFIG_inst/n62 , \CONFIG_inst/n63 , \CONFIG_inst/n64 ,
         \CONFIG_inst/n65 , \CONFIG_inst/n66 , \CONFIG_inst/n67 ,
         \CONFIG_inst/n68 , \CONFIG_inst/n69 , \CONFIG_inst/n70 ,
         \CONFIG_inst/n71 , \CONFIG_inst/n74 , \CONFIG_inst/n83 ,
         \CONFIG_inst/n93 , \CONFIG_inst/n94 , \CONFIG_inst/n95 ,
         \CONFIG_inst/n96 , \CONFIG_inst/n97 , \CONFIG_inst/n98 ,
         \CONFIG_inst/n99 , \CONFIG_inst/n100 , \CONFIG_inst/n101 ,
         \CONFIG_inst/n102 , \CONFIG_inst/n103 , \CONFIG_inst/n104 ,
         \CONFIG_inst/n75 , \CONFIG_inst/n76 , \CONFIG_inst/n77 ,
         \CONFIG_inst/n78 , \CONFIG_inst/n79 , \CONFIG_inst/n80 ,
         \CONFIG_inst/n81 , \CONFIG_inst/n82 , \CONFIG_inst/n85 ,
         \CONFIG_inst/n86 , \CONFIG_inst/n87 , \CONFIG_inst/n88 ,
         \CONFIG_inst/n89 , \CONFIG_inst/n92 , \CONFIG_inst/n105 ,
         \CONFIG_inst/n106 , \CONFIG_inst/i_CONFIG_sync2 ,
         \CONFIG_inst/i_CONFIG_sync1 , \CONFIG_inst/spi_rx_valid_prev , n635,
         n636, n637, n638, n639, n640, n641, n642, n643, n644, n645, n646,
         n647, n648, n649, n650, n651, n652, n653, n654, n655, n656, n657,
         \intadd_0/CI , \intadd_0/SUM[11] , \intadd_0/SUM[10] ,
         \intadd_0/SUM[9] , \intadd_0/SUM[8] , \intadd_0/SUM[7] ,
         \intadd_0/SUM[6] , \intadd_0/SUM[5] , \intadd_0/SUM[4] ,
         \intadd_0/SUM[3] , \intadd_0/SUM[2] , \intadd_0/SUM[1] ,
         \intadd_0/SUM[0] , \intadd_0/n12 , \intadd_0/n11 , \intadd_0/n10 ,
         \intadd_0/n9 , \intadd_0/n8 , \intadd_0/n7 , \intadd_0/n6 ,
         \intadd_0/n5 , \intadd_0/n4 , \intadd_0/n3 , \intadd_0/n2 ,
         \intadd_0/n1 , n659, n660, n661, n662, n663, n664, n665, n666, n667,
         n668, n669, n670, n671, n672, n673, n674, n675, n676, n677, n678,
         n679, n680, n681, n682, n683, n684, n685, n686, n687, n688, n689,
         n690, n691, n692, n693, n694, n695, n696, n697, n698, n699, n700,
         n701, n702, n703, n704, n705, n706, n707, n708, n709, n710, n711,
         n712, n713, n714, n715, n716, n717, n718, n719, n720, n721, n722,
         n723, n724, n725, n726, n727, n728, n729, n730, n731, n732, n733,
         n734, n735, n736, n737, n738, n739, n740, n741, n742, n743, n744,
         n745, n746, n747, n748, n749, n750, n751, n752, n753, n754, n755,
         n756, n757, n758, n759, n760, n761, n762, n763, n764, n765, n766,
         n767, n768, n769, n770, n771, n772, n773, n774, n775, n776, n777,
         n778, n779, n780, n781, n782, n783, n784, n785, n786, n787, n788,
         n789, n790, n791, n792, n793, n794, n795, n796, n797, n798, n799,
         n800, n801, n802, n803, n804, n805, n806, n807, n808, n809, n810,
         n811, n812, n813, n814, n815, n816, n817, n818, n819, n820, n821,
         n822, n823, n824, n827, n828, n829, n830, n831, n832, n833, n834,
         n835, n836, n837, n838, n839, n840, n841, n842, n843, n844, n845,
         n846, n847, n848, n849, n850, n851, n852, n853, n854, n855, n856,
         n857, n858, n859, n860, n861, n862, n863, n864, n865, n866, n867,
         n868, n869, n870, n871, n872, n873, n874, n875, n876, n877, n878,
         n879, n880, n881, n882, n883, n884, n885, n886, n887, n888, n889,
         n890, n891, n892, n893, n894, n895, n896, n897, n898, n899, n900,
         n901, n902, n903, n904, n905, n906, n907, n908, n909, n910, n911,
         n912, n913, n914, n915, n916, n917, n918, n919, n920, n921, n922,
         n923, n924, n925, n926, n927, n928, n929, n930, n931, n932, n933,
         n934, n935, n936, n937, n938, n939, n940, n941, n942, n943, n944,
         n945, n946, n947, n948, n949, n950, n951, n952, n953, n954, n955,
         n956, n957, n958, n959, n960, n961, n962, n963, n964, n965, n966,
         n967, n968, n969, n970, n971, n972, n973, n974, n975, n976, n977,
         n978, n979, n980, n981, n982, n983, n984, n985, n986, n987, n988,
         n989, n990, n991, n992, n993, n994, n995, n996, n997, n998, n999,
         n1000, n1001, n1002, n1003, n1004, n1005, n1006, n1007, n1008, n1009,
         n1010, n1011, n1012, n1013, n1014, n1015, n1016, n1017, n1018, n1019,
         n1020, n1021, n1022, n1023, n1024, n1025, n1026, n1027, n1028, n1029,
         n1030, n1031, n1032, n1033, n1034, n1035, n1036, n1037, n1038, n1039,
         n1040, n1041, n1042, n1043, n1044, n1045, n1046, n1047, n1048, n1049,
         n1050, n1051, n1052, n1053, n1054, n1055, n1056, n1057, n1058, n1059,
         n1060, n1061, n1062, n1063, n1064, n1065, n1066, n1067, n1068, n1069,
         n1070, n1071, n1072, n1073, n1074, n1075, n1076, n1077, n1078, n1079,
         n1080, n1081, n1082, n1083, n1084, n1085, n1086, n1087, n1088, n1089,
         n1090, n1091, n1092, n1093, n1094, n1095, n1096, n1097, n1098, n1099,
         n1100, n1101, n1102, n1103, n1104, n1105, n1106, n1107, n1108, n1109,
         n1110, n1111, n1112, n1113, n1114, n1115, n1116, n1117, n1118, n1119,
         n1120, n1121, n1122, n1123, n1124, n1125, n1126, n1127, n1128, n1129,
         n1130, n1131, n1132, n1133, n1134, n1135, n1136, n1137, n1138, n1139,
         n1140, n1141, n1142, n1143, n1144, n1145, n1146, n1147, n1148, n1149,
         n1150, n1151, n1152, n1153, n1154, n1155, n1156, n1157, n1158, n1159,
         n1160, n1161, n1162, n1163, n1164, n1165, n1166, n1167, n1168, n1169,
         n1170, n1171, n1172, n1173, n1174, n1175, n1176, n1177, n1178, n1179,
         n1180, n1181, n1182, n1183, n1184, n1185, n1186, n1187, n1188, n1189,
         n1190, n1191, n1192, n1193, n1194, n1195, n1196, n1197, n1198, n1199,
         n1200, n1201, n1202, n1203, n1204, n1205, n1206, n1207, n1208, n1209,
         n1210, n1211, n1212, n1213, n1214, n1215, n1216, n1217, n1218, n1219,
         n1220, n1221, n1222, n1223, n1224, n1225, n1226, n1227, n1228, n1229,
         n1230, n1231, n1232, n1233, n1234, n1235, n1236, n1237, n1238, n1239,
         n1240, n1241, n1242, n1243, n1244, n1245, n1246, n1247, n1248, n1249,
         n1250, n1251, n1252, n1253, n1254, n1255, n1256, n1257, n1258, n1259,
         n1260, n1261, n1262, n1263, n1264, n1265, n1266, n1267, n1268, n1269,
         n1270, n1271, n1272, n1273, n1274, n1275, n1276, n1277, n1278, n1279,
         n1280, n1281, n1282, n1283, n1284, n1285, n1286, n1287, n1288, n1289,
         n1290, n1291, n1292, n1293, n1294, n1295, n1296, n1297, n1298, n1299,
         n1300, n1301, n1302, n1303, n1304, n1305, n1306, n1307, n1308, n1309,
         n1310, n1311, n1312, n1313, n1314, n1315, n1316, n1317, n1318, n1319,
         n1320, n1321, n1322, n1323, n1324, n1325, n1326, n1327, n1328, n1329,
         n1330, n1331, n1332, n1333, n1334, n1335, n1336, n1337, n1338, n1339,
         n1340, n1341, n1342, n1343, n1344, n1345, n1346, n1347, n1348, n1349,
         n1350, n1351, n1352, n1353, n1354, n1355, n1356, n1357, n1358, n1359,
         n1360, n1361, n1362, n1363, n1364, n1365, n1366, n1367, n1368, n1369,
         n1370, n1371, n1372, n1373, n1374, n1375, n1376, n1377, n1378, n1379,
         n1380, n1381, n1382, n1383, n1384, n1385, n1386, n1387, n1388, n1389,
         n1390, n1391, n1392, n1393, n1394, n1395, n1396, n1397, n1398, n1399,
         n1400, n1401, n1402, n1403, n1404, n1405, n1406, n1407, n1408, n1409,
         n1410, n1411, n1412, n1413, n1414, n1415, n1416, n1417, n1418, n1419,
         n1420, n1421, n1422, n1423, n1424, n1425, n1426, n1427, n1428, n1429,
         n1430, n1431, n1432, n1433, n1434, n1435, n1436, n1437, n1438, n1439,
         n1440, n1441, n1442, n1443, n1444, n1445, n1446, n1447, n1448, n1449,
         n1450, n1451, n1452, n1453, n1454, n1455, n1456, n1457, n1458, n1459,
         n1460, n1461, n1462, n1463, n1464, n1465, n1466, n1467, n1468, n1469,
         n1470, n1471, n1472, n1473, n1474, n1475, n1476, n1477, n1478, n1479,
         n1480, n1481, n1482, n1483, n1484, n1485, n1486, n1487, n1488, n1489,
         n1490, n1491, n1492, n1493, n1494, n1495, n1496, n1497, n1498, n1499,
         n1500, n1501, n1502, n1503, n1504, n1505, n1506, n1507, n1508, n1509,
         n1510, n1511, n1512, n1513, n1514, n1515, n1516, n1517, n1518, n1519,
         n1520, n1521, n1522, n1523, n1524, n1525, n1526, n1527, n1528, n1529,
         n1530, n1531, n1532, n1533, n1534, n1535, n1536, n1537, n1538, n1539,
         n1540, n1541, n1542, n1543, n1544, n1545, n1546, n1547, n1548, n1549,
         n1550, n1551, n1552, n1553, n1554, n1555, n1556, n1557, n1558, n1559,
         n1560, n1561, n1562, n1563, n1564, n1565, n1566, n1567, n1568, n1569,
         n1570, n1571, n1572, n1573, n1574, n1575, n1576, n1577;
  wire   [13:0] ext_count_val_RX;
  wire   [13:0] ext_count_val_TX;
  wire   [23:0] SHIFT_OUT;
  wire   [7:0] SPI_IN;
  wire   [7:0] SPI_OUT;
  wire   [2:0] rx_state;
  wire   [3:0] counter;
  wire   [1:0] tx_state;
  wire   [3:0] counter3;
  wire   [13:0] \sh_sync_inst/avg_interval ;
  wire   [13:0] \sh_sync_inst/timeout_counter ;
  wire   [6:0] \sh_sync_inst/pulse_pack_count ;
  wire   [17:0] \sh_sync_inst/interval_sum ;
  wire   [3:0] \sh_sync_inst/pulse_count ;
  wire   [4:0] \sh_sync_inst/pulse_gen_count ;
  wire   [13:0] \sh_sync_inst/counter ;
  wire   [2:0] \sh_sync_inst/state ;
  wire   [3:0] \shift_buf_inst/sync ;
  wire   [23:0] \pkt_reg_inst/pkt_reg ;
  wire   [7:0] \SPI_slave_inst/SHIFT_REG ;
  wire   [7:0] \tx_buf_inst/buffer ;
  wire   [7:0] \CONFIG_inst/opcode_q ;
  wire   [7:0] \CONFIG_inst/pay0 ;
  wire   [1:0] \CONFIG_inst/state ;

  UDB116SVT24_FDPQ_V2_3 \fsm_sync_inst/state_pos_reg  ( .D(\fsm_sync_inst/N10 ), .CK(clk), .Q(\fsm_sync_inst/state_pos ) );
  UDB116SVT24_FDPCBQ_2 \fsm_sync_inst/sh_en_prev_reg  ( .D(n828), .RS(n1574), 
        .CK(clk), .Q(\fsm_sync_inst/sh_en_prev ) );
  UDB116SVT24_FDNQ_V2_1 \fsm_sync_inst/state_neg_reg  ( .D(\fsm_sync_inst/N12 ), .CK(clk), .Q(\fsm_sync_inst/state_neg ) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/interval_sum_reg[15]  ( .D(
        \sh_sync_inst/n231 ), .CK(clk), .RD(n1533), .Q(
        \sh_sync_inst/interval_sum [15]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/avg_interval_reg[1]  ( .D(
        \sh_sync_inst/n164 ), .CK(clk), .RD(n1527), .Q(
        \sh_sync_inst/avg_interval [1]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/avg_interval_reg[2]  ( .D(
        \sh_sync_inst/n165 ), .CK(clk), .RD(n1539), .Q(
        \sh_sync_inst/avg_interval [2]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/avg_interval_reg[3]  ( .D(
        \sh_sync_inst/n166 ), .CK(clk), .RD(n1539), .Q(
        \sh_sync_inst/avg_interval [3]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/avg_interval_reg[4]  ( .D(
        \sh_sync_inst/n167 ), .CK(clk), .RD(n1539), .Q(
        \sh_sync_inst/avg_interval [4]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/avg_interval_reg[5]  ( .D(
        \sh_sync_inst/n168 ), .CK(clk), .RD(n1539), .Q(
        \sh_sync_inst/avg_interval [5]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/avg_interval_reg[6]  ( .D(
        \sh_sync_inst/n169 ), .CK(clk), .RD(n1540), .Q(
        \sh_sync_inst/avg_interval [6]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/avg_interval_reg[7]  ( .D(
        \sh_sync_inst/n170 ), .CK(clk), .RD(n1540), .Q(
        \sh_sync_inst/avg_interval [7]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/avg_interval_reg[8]  ( .D(
        \sh_sync_inst/n171 ), .CK(clk), .RD(n1540), .Q(
        \sh_sync_inst/avg_interval [8]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/avg_interval_reg[9]  ( .D(
        \sh_sync_inst/n172 ), .CK(clk), .RD(n1540), .Q(
        \sh_sync_inst/avg_interval [9]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/avg_interval_reg[10]  ( .D(
        \sh_sync_inst/n173 ), .CK(clk), .RD(n1538), .Q(
        \sh_sync_inst/avg_interval [10]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/avg_interval_reg[11]  ( .D(
        \sh_sync_inst/n174 ), .CK(clk), .RD(n1538), .Q(
        \sh_sync_inst/avg_interval [11]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/avg_interval_reg[12]  ( .D(
        \sh_sync_inst/n175 ), .CK(clk), .RD(n1538), .Q(
        \sh_sync_inst/avg_interval [12]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/avg_interval_reg[13]  ( .D(
        \sh_sync_inst/n176 ), .CK(clk), .RD(n1538), .Q(
        \sh_sync_inst/avg_interval [13]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/avg_interval_reg[0]  ( .D(
        \sh_sync_inst/n177 ), .CK(clk), .RD(n1536), .Q(
        \sh_sync_inst/avg_interval [0]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/timeout_counter_reg[13]  ( .D(
        \sh_sync_inst/n178 ), .CK(clk), .RD(n1536), .Q(
        \sh_sync_inst/timeout_counter [13]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/timeout_counter_reg[12]  ( .D(
        \sh_sync_inst/n179 ), .CK(clk), .RD(n1536), .Q(
        \sh_sync_inst/timeout_counter [12]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/timeout_counter_reg[11]  ( .D(
        \sh_sync_inst/n180 ), .CK(clk), .RD(n1536), .Q(
        \sh_sync_inst/timeout_counter [11]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/timeout_counter_reg[10]  ( .D(
        \sh_sync_inst/n181 ), .CK(clk), .RD(n1541), .Q(
        \sh_sync_inst/timeout_counter [10]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/timeout_counter_reg[9]  ( .D(
        \sh_sync_inst/n182 ), .CK(clk), .RD(n1541), .Q(
        \sh_sync_inst/timeout_counter [9]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/timeout_counter_reg[8]  ( .D(
        \sh_sync_inst/n183 ), .CK(clk), .RD(n1541), .Q(
        \sh_sync_inst/timeout_counter [8]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/timeout_counter_reg[7]  ( .D(
        \sh_sync_inst/n184 ), .CK(clk), .RD(n1541), .Q(
        \sh_sync_inst/timeout_counter [7]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/timeout_counter_reg[6]  ( .D(
        \sh_sync_inst/n185 ), .CK(clk), .RD(n1537), .Q(
        \sh_sync_inst/timeout_counter [6]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/timeout_counter_reg[5]  ( .D(
        \sh_sync_inst/n186 ), .CK(clk), .RD(n1537), .Q(
        \sh_sync_inst/timeout_counter [5]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/timeout_counter_reg[4]  ( .D(
        \sh_sync_inst/n187 ), .CK(clk), .RD(n1537), .Q(
        \sh_sync_inst/timeout_counter [4]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/timeout_counter_reg[3]  ( .D(
        \sh_sync_inst/n188 ), .CK(clk), .RD(n1537), .Q(
        \sh_sync_inst/timeout_counter [3]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/timeout_counter_reg[2]  ( .D(
        \sh_sync_inst/n189 ), .CK(clk), .RD(n1543), .Q(
        \sh_sync_inst/timeout_counter [2]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/timeout_counter_reg[1]  ( .D(
        \sh_sync_inst/n190 ), .CK(clk), .RD(n1543), .Q(
        \sh_sync_inst/timeout_counter [1]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/timeout_counter_reg[0]  ( .D(
        \sh_sync_inst/n191 ), .CK(clk), .RD(n1543), .Q(
        \sh_sync_inst/timeout_counter [0]) );
  UDB116SVT24_FDPSBQ_1 \sh_sync_inst/sh_en_done_reg  ( .D(\sh_sync_inst/n235 ), 
        .CK(clk), .SD(n1513), .Q(SH_EN_DONE) );
  UDB116SVT24_FDPSBQ_1 \sh_sync_inst/first_pulse_flag_reg  ( .D(
        \sh_sync_inst/n216 ), .CK(clk), .SD(n1513), .Q(
        \sh_sync_inst/first_pulse_flag ) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/fsm_rst_reg  ( .D(\sh_sync_inst/n194 ), 
        .CK(clk), .RD(n1542), .Q(FSM_RST) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/pulse_pack_count_reg[6]  ( .D(
        \sh_sync_inst/n195 ), .CK(clk), .RD(n1542), .Q(
        \sh_sync_inst/pulse_pack_count [6]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/pulse_pack_count_reg[5]  ( .D(
        \sh_sync_inst/n196 ), .CK(clk), .RD(n1542), .Q(
        \sh_sync_inst/pulse_pack_count [5]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/pulse_pack_count_reg[4]  ( .D(
        \sh_sync_inst/n197 ), .CK(clk), .RD(n1542), .Q(
        \sh_sync_inst/pulse_pack_count [4]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/pulse_pack_count_reg[3]  ( .D(
        \sh_sync_inst/n198 ), .CK(clk), .RD(n1528), .Q(
        \sh_sync_inst/pulse_pack_count [3]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/pulse_pack_count_reg[2]  ( .D(
        \sh_sync_inst/n199 ), .CK(clk), .RD(n1528), .Q(
        \sh_sync_inst/pulse_pack_count [2]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/pulse_pack_count_reg[1]  ( .D(
        \sh_sync_inst/n200 ), .CK(clk), .RD(n1528), .Q(
        \sh_sync_inst/pulse_pack_count [1]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/pulse_pack_count_reg[0]  ( .D(
        \sh_sync_inst/n201 ), .CK(clk), .RD(n1527), .Q(
        \sh_sync_inst/pulse_pack_count [0]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/counter_reg[9]  ( .D(
        \sh_sync_inst/n205 ), .CK(clk), .RD(n1532), .Q(
        \sh_sync_inst/counter [9]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/counter_reg[8]  ( .D(
        \sh_sync_inst/n206 ), .CK(clk), .RD(n1532), .Q(
        \sh_sync_inst/counter [8]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/counter_reg[2]  ( .D(
        \sh_sync_inst/n212 ), .CK(clk), .RD(n1532), .Q(
        \sh_sync_inst/counter [2]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/counter_reg[0]  ( .D(
        \sh_sync_inst/n214 ), .CK(clk), .RD(n1527), .Q(
        \sh_sync_inst/counter [0]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/interval_sum_reg[1]  ( .D(
        \sh_sync_inst/n217 ), .CK(clk), .RD(n1526), .Q(
        \sh_sync_inst/interval_sum [1]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/interval_sum_reg[2]  ( .D(
        \sh_sync_inst/n218 ), .CK(clk), .RD(n1530), .Q(
        \sh_sync_inst/interval_sum [2]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/interval_sum_reg[3]  ( .D(
        \sh_sync_inst/n219 ), .CK(clk), .RD(n1530), .Q(
        \sh_sync_inst/interval_sum [3]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/interval_sum_reg[4]  ( .D(
        \sh_sync_inst/n220 ), .CK(clk), .RD(n1530), .Q(
        \sh_sync_inst/interval_sum [4]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/interval_sum_reg[5]  ( .D(
        \sh_sync_inst/n221 ), .CK(clk), .RD(n1530), .Q(
        \sh_sync_inst/interval_sum [5]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/interval_sum_reg[6]  ( .D(
        \sh_sync_inst/n222 ), .CK(clk), .RD(n1531), .Q(
        \sh_sync_inst/interval_sum [6]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/interval_sum_reg[7]  ( .D(
        \sh_sync_inst/n223 ), .CK(clk), .RD(n1531), .Q(
        \sh_sync_inst/interval_sum [7]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/interval_sum_reg[8]  ( .D(
        \sh_sync_inst/n224 ), .CK(clk), .RD(n1531), .Q(
        \sh_sync_inst/interval_sum [8]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/interval_sum_reg[9]  ( .D(
        \sh_sync_inst/n225 ), .CK(clk), .RD(n1531), .Q(
        \sh_sync_inst/interval_sum [9]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/interval_sum_reg[10]  ( .D(
        \sh_sync_inst/n226 ), .CK(clk), .RD(n1529), .Q(
        \sh_sync_inst/interval_sum [10]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/interval_sum_reg[11]  ( .D(
        \sh_sync_inst/n227 ), .CK(clk), .RD(n1529), .Q(
        \sh_sync_inst/interval_sum [11]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/interval_sum_reg[12]  ( .D(
        \sh_sync_inst/n228 ), .CK(clk), .RD(n1529), .Q(
        \sh_sync_inst/interval_sum [12]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/interval_sum_reg[13]  ( .D(
        \sh_sync_inst/n229 ), .CK(clk), .RD(n1528), .Q(
        \sh_sync_inst/interval_sum [13]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/interval_sum_reg[14]  ( .D(
        \sh_sync_inst/n230 ), .CK(clk), .RD(n1533), .Q(
        \sh_sync_inst/interval_sum [14]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/interval_sum_reg[16]  ( .D(
        \sh_sync_inst/n232 ), .CK(clk), .RD(n1533), .Q(
        \sh_sync_inst/interval_sum [16]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/interval_sum_reg[17]  ( .D(
        \sh_sync_inst/n233 ), .CK(clk), .RD(n1533), .Q(
        \sh_sync_inst/interval_sum [17]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/interval_sum_reg[0]  ( .D(
        \sh_sync_inst/n234 ), .CK(clk), .RD(n1534), .Q(
        \sh_sync_inst/interval_sum [0]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/pulse_count_reg[3]  ( .D(
        \sh_sync_inst/n246 ), .CK(clk), .RD(n1534), .Q(
        \sh_sync_inst/pulse_count [3]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/pulse_count_reg[2]  ( .D(
        \sh_sync_inst/n243 ), .CK(clk), .RD(n1534), .Q(
        \sh_sync_inst/pulse_count [2]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/pulse_count_reg[1]  ( .D(
        \sh_sync_inst/n244 ), .CK(clk), .RD(n1534), .Q(
        \sh_sync_inst/pulse_count [1]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/pulse_count_reg[0]  ( .D(
        \sh_sync_inst/n245 ), .CK(clk), .RD(n1535), .Q(
        \sh_sync_inst/pulse_count [0]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/rfin_edge_reg  ( .D(\sh_sync_inst/N79 ), .CK(clk), .RD(n1535), .Q(\sh_sync_inst/rfin_edge ) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/rfin_prev_reg  ( .D(
        \sh_sync_inst/rfin_sync2 ), .CK(clk), .RD(n1535), .Q(
        \sh_sync_inst/rfin_prev ) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/rfin_sync2_reg  ( .D(
        \sh_sync_inst/rfin_sync1 ), .CK(clk), .RD(n1535), .Q(
        \sh_sync_inst/rfin_sync2 ) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/rfin_sync1_reg  ( .D(
        \sh_sync_inst/N400 ), .CK(clk), .RD(n1525), .Q(
        \sh_sync_inst/rfin_sync1 ) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/counter_reg[11]  ( .D(
        \sh_sync_inst/n203 ), .CK(clk), .RD(n1524), .Q(
        \sh_sync_inst/counter [11]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/counter_reg[10]  ( .D(
        \sh_sync_inst/n204 ), .CK(clk), .RD(n1524), .Q(
        \sh_sync_inst/counter [10]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/counter_reg[6]  ( .D(
        \sh_sync_inst/n208 ), .CK(clk), .RD(n1524), .Q(
        \sh_sync_inst/counter [6]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/counter_reg[4]  ( .D(
        \sh_sync_inst/n210 ), .CK(clk), .RD(n1525), .Q(
        \sh_sync_inst/counter [4]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/counter_reg[3]  ( .D(
        \sh_sync_inst/n211 ), .CK(clk), .RD(n1525), .Q(
        \sh_sync_inst/counter [3]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/counter_reg[13]  ( .D(
        \sh_sync_inst/n215 ), .CK(clk), .RD(n1525), .Q(
        \sh_sync_inst/counter [13]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/state_reg[2]  ( .D(\sh_sync_inst/n248 ), .CK(clk), .RD(n1524), .Q(\sh_sync_inst/state [2]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/state_reg[1]  ( .D(\sh_sync_inst/n249 ), .CK(clk), .RD(n1523), .Q(\sh_sync_inst/state [1]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/pulse_gen_count_reg[1]  ( .D(
        \sh_sync_inst/n236 ), .CK(clk), .RD(n1523), .Q(
        \sh_sync_inst/pulse_gen_count [1]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/pulse_gen_count_reg[2]  ( .D(
        \sh_sync_inst/n237 ), .CK(clk), .RD(n1523), .Q(
        \sh_sync_inst/pulse_gen_count [2]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/pulse_gen_count_reg[3]  ( .D(
        \sh_sync_inst/n238 ), .CK(clk), .RD(n1523), .Q(
        \sh_sync_inst/pulse_gen_count [3]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/pulse_gen_count_reg[4]  ( .D(
        \sh_sync_inst/n239 ), .CK(clk), .RD(n1526), .Q(
        \sh_sync_inst/pulse_gen_count [4]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/pulse_gen_count_reg[0]  ( .D(
        \sh_sync_inst/n241 ), .CK(clk), .RD(n1526), .Q(
        \sh_sync_inst/pulse_gen_count [0]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/counter_reg[12]  ( .D(
        \sh_sync_inst/n202 ), .CK(clk), .RD(n1522), .Q(
        \sh_sync_inst/counter [12]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/state_reg[0]  ( .D(\sh_sync_inst/n247 ), .CK(clk), .RD(n1522), .Q(\sh_sync_inst/state [0]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/tx_rdy_p_reg  ( .D(\sh_sync_inst/N81 ), 
        .CK(clk), .RD(n1522), .Q(\sh_sync_inst/tx_rdy_p ) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/tx_rdy_prev_reg  ( .D(TX_SH), .CK(clk), 
        .RD(n1522), .Q(\sh_sync_inst/tx_rdy_prev ) );
  UDB116SVT24_FDPRBQ_V2_1 \shift_buf_inst/shift_reg_reg[23]  ( .D(
        \shift_buf_inst/n30 ), .CK(clk), .RD(n1519), .Q(SHIFT_OUT[23]) );
  UDB116SVT24_FDPRBQ_V2_1 \shift_buf_inst/shift_reg_reg[22]  ( .D(
        \shift_buf_inst/n31 ), .CK(clk), .RD(n1519), .Q(SHIFT_OUT[22]) );
  UDB116SVT24_FDPRBQ_V2_1 \shift_buf_inst/shift_reg_reg[21]  ( .D(
        \shift_buf_inst/n32 ), .CK(clk), .RD(n1519), .Q(SHIFT_OUT[21]) );
  UDB116SVT24_FDPRBQ_V2_1 \shift_buf_inst/shift_reg_reg[20]  ( .D(
        \shift_buf_inst/n33 ), .CK(clk), .RD(n1518), .Q(SHIFT_OUT[20]) );
  UDB116SVT24_FDPRBQ_V2_1 \shift_buf_inst/shift_reg_reg[19]  ( .D(
        \shift_buf_inst/n34 ), .CK(clk), .RD(n1520), .Q(SHIFT_OUT[19]) );
  UDB116SVT24_FDPRBQ_V2_1 \shift_buf_inst/shift_reg_reg[18]  ( .D(
        \shift_buf_inst/n35 ), .CK(clk), .RD(n1520), .Q(SHIFT_OUT[18]) );
  UDB116SVT24_FDPRBQ_V2_1 \shift_buf_inst/shift_reg_reg[17]  ( .D(
        \shift_buf_inst/n36 ), .CK(clk), .RD(n1520), .Q(SHIFT_OUT[17]) );
  UDB116SVT24_FDPRBQ_V2_1 \shift_buf_inst/shift_reg_reg[16]  ( .D(
        \shift_buf_inst/n37 ), .CK(clk), .RD(n1520), .Q(SHIFT_OUT[16]) );
  UDB116SVT24_FDPRBQ_V2_1 \shift_buf_inst/shift_reg_reg[15]  ( .D(
        \shift_buf_inst/n38 ), .CK(clk), .RD(n1515), .Q(SHIFT_OUT[15]) );
  UDB116SVT24_FDPRBQ_V2_1 \shift_buf_inst/shift_reg_reg[14]  ( .D(
        \shift_buf_inst/n39 ), .CK(clk), .RD(n1515), .Q(SHIFT_OUT[14]) );
  UDB116SVT24_FDPRBQ_V2_1 \shift_buf_inst/sync_reg[0]  ( .D(
        \shift_buf_inst/N28 ), .CK(clk), .RD(n1515), .Q(
        \shift_buf_inst/sync [0]) );
  UDB116SVT24_FDPRBQ_V2_1 \shift_buf_inst/shift_reg_reg[13]  ( .D(
        \shift_buf_inst/n40 ), .CK(clk), .RD(n1514), .Q(SHIFT_OUT[13]) );
  UDB116SVT24_FDPRBQ_V2_1 \shift_buf_inst/sync_reg[1]  ( .D(n657), .CK(clk), 
        .RD(n1516), .Q(\shift_buf_inst/sync [1]) );
  UDB116SVT24_FDPRBQ_V2_1 \shift_buf_inst/shift_reg_reg[12]  ( .D(
        \shift_buf_inst/n41 ), .CK(clk), .RD(n1516), .Q(SHIFT_OUT[12]) );
  UDB116SVT24_FDPRBQ_V2_1 \shift_buf_inst/sync_reg[2]  ( .D(
        \shift_buf_inst/N30 ), .CK(clk), .RD(n1516), .Q(
        \shift_buf_inst/sync [2]) );
  UDB116SVT24_FDPRBQ_V2_1 \shift_buf_inst/shift_reg_reg[11]  ( .D(
        \shift_buf_inst/n42 ), .CK(clk), .RD(n1515), .Q(SHIFT_OUT[11]) );
  UDB116SVT24_FDPRBQ_V2_1 \shift_buf_inst/sync_reg[3]  ( .D(n656), .CK(clk), 
        .RD(n1521), .Q(\shift_buf_inst/sync [3]) );
  UDB116SVT24_FDPRBQ_V2_1 \shift_buf_inst/shift_reg_reg[10]  ( .D(
        \shift_buf_inst/n43 ), .CK(clk), .RD(n1521), .Q(SHIFT_OUT[10]) );
  UDB116SVT24_FDPRBQ_V2_1 \shift_buf_inst/shift_reg_reg[9]  ( .D(
        \shift_buf_inst/n44 ), .CK(clk), .RD(n1521), .Q(SHIFT_OUT[9]) );
  UDB116SVT24_FDPRBQ_V2_1 \shift_buf_inst/shift_reg_reg[8]  ( .D(
        \shift_buf_inst/n45 ), .CK(clk), .RD(n1521), .Q(SHIFT_OUT[8]) );
  UDB116SVT24_FDPRBQ_V2_1 \shift_buf_inst/shift_reg_reg[7]  ( .D(
        \shift_buf_inst/n46 ), .CK(clk), .RD(n1517), .Q(SHIFT_OUT[7]) );
  UDB116SVT24_FDPRBQ_V2_1 \shift_buf_inst/shift_reg_reg[6]  ( .D(
        \shift_buf_inst/n47 ), .CK(clk), .RD(n1517), .Q(SHIFT_OUT[6]) );
  UDB116SVT24_FDPRBQ_V2_1 \shift_buf_inst/shift_reg_reg[5]  ( .D(
        \shift_buf_inst/n48 ), .CK(clk), .RD(n1517), .Q(SHIFT_OUT[5]) );
  UDB116SVT24_FDPRBQ_V2_1 \shift_buf_inst/shift_reg_reg[4]  ( .D(
        \shift_buf_inst/n49 ), .CK(clk), .RD(n1516), .Q(SHIFT_OUT[4]) );
  UDB116SVT24_FDPRBQ_V2_1 \shift_buf_inst/shift_reg_reg[3]  ( .D(
        \shift_buf_inst/n50 ), .CK(clk), .RD(n1518), .Q(SHIFT_OUT[3]) );
  UDB116SVT24_FDPRBQ_V2_1 \shift_buf_inst/shift_reg_reg[2]  ( .D(
        \shift_buf_inst/n51 ), .CK(clk), .RD(n1518), .Q(SHIFT_OUT[2]) );
  UDB116SVT24_FDPRBQ_V2_1 \shift_buf_inst/shift_reg_reg[1]  ( .D(
        \shift_buf_inst/n52 ), .CK(clk), .RD(n1518), .Q(SHIFT_OUT[1]) );
  UDB116SVT24_FDPRBQ_V2_1 \shift_buf_inst/shift_reg_reg[0]  ( .D(
        \shift_buf_inst/n53 ), .CK(clk), .RD(n1517), .Q(SHIFT_OUT[0]) );
  UDB116SVT24_FDPRBQ_V2_1 \pkt_reg_inst/dout_reg[0]  ( .D(\pkt_reg_inst/n28 ), 
        .CK(clk), .RD(n1571), .Q(SPI_IN[0]) );
  UDB116SVT24_FDPRBQ_V2_1 \pkt_reg_inst/pkt_reg_reg[16]  ( .D(
        \pkt_reg_inst/n36 ), .CK(clk), .RD(n1572), .Q(
        \pkt_reg_inst/pkt_reg [16]) );
  UDB116SVT24_FDPRBQ_V2_1 \pkt_reg_inst/pkt_reg_reg[8]  ( .D(
        \pkt_reg_inst/n44 ), .CK(clk), .RD(n1572), .Q(
        \pkt_reg_inst/pkt_reg [8]) );
  UDB116SVT24_FDPRBQ_V2_1 \pkt_reg_inst/pkt_reg_reg[0]  ( .D(
        \pkt_reg_inst/n52 ), .CK(clk), .RD(n1573), .Q(
        \pkt_reg_inst/pkt_reg [0]) );
  UDB116SVT24_FDPRBQ_V2_1 \pkt_reg_inst/dout_reg[1]  ( .D(\pkt_reg_inst/n27 ), 
        .CK(clk), .RD(n1572), .Q(SPI_IN[1]) );
  UDB116SVT24_FDPRBQ_V2_1 \pkt_reg_inst/pkt_reg_reg[17]  ( .D(
        \pkt_reg_inst/n35 ), .CK(clk), .RD(n1569), .Q(
        \pkt_reg_inst/pkt_reg [17]) );
  UDB116SVT24_FDPRBQ_V2_1 \pkt_reg_inst/pkt_reg_reg[9]  ( .D(
        \pkt_reg_inst/n43 ), .CK(clk), .RD(n1569), .Q(
        \pkt_reg_inst/pkt_reg [9]) );
  UDB116SVT24_FDPRBQ_V2_1 \pkt_reg_inst/pkt_reg_reg[1]  ( .D(
        \pkt_reg_inst/n51 ), .CK(clk), .RD(n1569), .Q(
        \pkt_reg_inst/pkt_reg [1]) );
  UDB116SVT24_FDPRBQ_V2_1 \pkt_reg_inst/dout_reg[2]  ( .D(\pkt_reg_inst/n26 ), 
        .CK(clk), .RD(n1567), .Q(SPI_IN[2]) );
  UDB116SVT24_FDPRBQ_V2_1 \pkt_reg_inst/pkt_reg_reg[18]  ( .D(
        \pkt_reg_inst/n34 ), .CK(clk), .RD(n1574), .Q(
        \pkt_reg_inst/pkt_reg [18]) );
  UDB116SVT24_FDPRBQ_V2_1 \pkt_reg_inst/pkt_reg_reg[10]  ( .D(
        \pkt_reg_inst/n42 ), .CK(clk), .RD(n1574), .Q(
        \pkt_reg_inst/pkt_reg [10]) );
  UDB116SVT24_FDPRBQ_V2_1 \pkt_reg_inst/pkt_reg_reg[2]  ( .D(
        \pkt_reg_inst/n50 ), .CK(clk), .RD(n1574), .Q(
        \pkt_reg_inst/pkt_reg [2]) );
  UDB116SVT24_FDPRBQ_V2_1 \pkt_reg_inst/dout_reg[3]  ( .D(\pkt_reg_inst/n25 ), 
        .CK(clk), .RD(n1572), .Q(SPI_IN[3]) );
  UDB116SVT24_FDPRBQ_V2_1 \pkt_reg_inst/pkt_reg_reg[19]  ( .D(
        \pkt_reg_inst/n33 ), .CK(clk), .RD(n1568), .Q(
        \pkt_reg_inst/pkt_reg [19]) );
  UDB116SVT24_FDPRBQ_V2_1 \pkt_reg_inst/pkt_reg_reg[11]  ( .D(
        \pkt_reg_inst/n41 ), .CK(clk), .RD(n1568), .Q(
        \pkt_reg_inst/pkt_reg [11]) );
  UDB116SVT24_FDPRBQ_V2_1 \pkt_reg_inst/pkt_reg_reg[3]  ( .D(
        \pkt_reg_inst/n49 ), .CK(clk), .RD(n1568), .Q(
        \pkt_reg_inst/pkt_reg [3]) );
  UDB116SVT24_FDPRBQ_V2_1 \pkt_reg_inst/dout_reg[4]  ( .D(\pkt_reg_inst/n24 ), 
        .CK(clk), .RD(n1568), .Q(SPI_IN[4]) );
  UDB116SVT24_FDPRBQ_V2_1 \pkt_reg_inst/pkt_reg_reg[20]  ( .D(
        \pkt_reg_inst/n32 ), .CK(clk), .RD(n1570), .Q(
        \pkt_reg_inst/pkt_reg [20]) );
  UDB116SVT24_FDPRBQ_V2_1 \pkt_reg_inst/pkt_reg_reg[12]  ( .D(
        \pkt_reg_inst/n40 ), .CK(clk), .RD(n1570), .Q(
        \pkt_reg_inst/pkt_reg [12]) );
  UDB116SVT24_FDPRBQ_V2_1 \pkt_reg_inst/pkt_reg_reg[4]  ( .D(
        \pkt_reg_inst/n48 ), .CK(clk), .RD(n1569), .Q(
        \pkt_reg_inst/pkt_reg [4]) );
  UDB116SVT24_FDPRBQ_V2_1 \pkt_reg_inst/dout_reg[5]  ( .D(\pkt_reg_inst/n23 ), 
        .CK(clk), .RD(n1570), .Q(SPI_IN[5]) );
  UDB116SVT24_FDPRBQ_V2_1 \pkt_reg_inst/pkt_reg_reg[21]  ( .D(
        \pkt_reg_inst/n31 ), .CK(clk), .RD(n1514), .Q(
        \pkt_reg_inst/pkt_reg [21]) );
  UDB116SVT24_FDPRBQ_V2_1 \pkt_reg_inst/pkt_reg_reg[13]  ( .D(
        \pkt_reg_inst/n39 ), .CK(clk), .RD(n1514), .Q(
        \pkt_reg_inst/pkt_reg [13]) );
  UDB116SVT24_FDPRBQ_V2_1 \pkt_reg_inst/pkt_reg_reg[5]  ( .D(
        \pkt_reg_inst/n47 ), .CK(clk), .RD(n1514), .Q(
        \pkt_reg_inst/pkt_reg [5]) );
  UDB116SVT24_FDPRBQ_V2_1 \pkt_reg_inst/dout_reg[6]  ( .D(\pkt_reg_inst/n22 ), 
        .CK(clk), .RD(n1529), .Q(SPI_IN[6]) );
  UDB116SVT24_FDPRBQ_V2_1 \pkt_reg_inst/pkt_reg_reg[22]  ( .D(
        \pkt_reg_inst/n30 ), .CK(clk), .RD(n1571), .Q(
        \pkt_reg_inst/pkt_reg [22]) );
  UDB116SVT24_FDPRBQ_V2_1 \pkt_reg_inst/pkt_reg_reg[14]  ( .D(
        \pkt_reg_inst/n38 ), .CK(clk), .RD(n1570), .Q(
        \pkt_reg_inst/pkt_reg [14]) );
  UDB116SVT24_FDPRBQ_V2_1 \pkt_reg_inst/pkt_reg_reg[6]  ( .D(
        \pkt_reg_inst/n46 ), .CK(clk), .RD(n1571), .Q(
        \pkt_reg_inst/pkt_reg [6]) );
  UDB116SVT24_FDPRBQ_V2_1 \pkt_reg_inst/dout_reg[7]  ( .D(\pkt_reg_inst/n21 ), 
        .CK(clk), .RD(n1571), .Q(SPI_IN[7]) );
  UDB116SVT24_FDPRBQ_V2_1 \pkt_reg_inst/pkt_reg_reg[23]  ( .D(
        \pkt_reg_inst/n29 ), .CK(clk), .RD(n1573), .Q(
        \pkt_reg_inst/pkt_reg [23]) );
  UDB116SVT24_FDPRBQ_V2_1 \pkt_reg_inst/pkt_reg_reg[15]  ( .D(
        \pkt_reg_inst/n37 ), .CK(clk), .RD(n1573), .Q(
        \pkt_reg_inst/pkt_reg [15]) );
  UDB116SVT24_FDPRBQ_V2_1 \pkt_reg_inst/pkt_reg_reg[7]  ( .D(
        \pkt_reg_inst/n45 ), .CK(clk), .RD(n1573), .Q(
        \pkt_reg_inst/pkt_reg [7]) );
  UDB116SVT24_FDPRBQ_V2_1 \SPI_slave_inst/OUT_reg[1]  ( .D(
        \SPI_slave_inst/n22 ), .CK(clk), .RD(n1566), .Q(SPI_OUT[1]) );
  UDB116SVT24_FDPRBQ_V2_1 \SPI_slave_inst/OUT_reg[2]  ( .D(
        \SPI_slave_inst/n24 ), .CK(clk), .RD(n1565), .Q(SPI_OUT[2]) );
  UDB116SVT24_FDPRBQ_V2_1 \SPI_slave_inst/OUT_reg[3]  ( .D(
        \SPI_slave_inst/n26 ), .CK(clk), .RD(n1567), .Q(SPI_OUT[3]) );
  UDB116SVT24_FDPRBQ_V2_1 \SPI_slave_inst/OUT_reg[4]  ( .D(
        \SPI_slave_inst/n28 ), .CK(clk), .RD(n1566), .Q(SPI_OUT[4]) );
  UDB116SVT24_FDPRBQ_V2_1 \SPI_slave_inst/OUT_reg[5]  ( .D(
        \SPI_slave_inst/n30 ), .CK(clk), .RD(n1566), .Q(SPI_OUT[5]) );
  UDB116SVT24_FDPRBQ_V2_1 \SPI_slave_inst/OUT_reg[6]  ( .D(
        \SPI_slave_inst/n32 ), .CK(clk), .RD(n1566), .Q(SPI_OUT[6]) );
  UDB116SVT24_FDPRBQ_V2_1 \SPI_slave_inst/OUT_reg[7]  ( .D(
        \SPI_slave_inst/n34 ), .CK(clk), .RD(n1544), .Q(SPI_OUT[7]) );
  UDB116SVT24_FDPRBQ_V2_1 \SPI_slave_inst/SHIFT_REG_reg[7]  ( .D(
        \SPI_slave_inst/n35 ), .CK(clk), .RD(n1567), .Q(
        \SPI_slave_inst/SHIFT_REG [7]) );
  UDB116SVT24_FDPRBQ_V2_1 \SPI_slave_inst/SHIFT_REG_reg[6]  ( .D(
        \SPI_slave_inst/n33 ), .CK(clk), .RD(n1567), .Q(
        \SPI_slave_inst/SHIFT_REG [6]) );
  UDB116SVT24_FDPRBQ_V2_1 \SPI_slave_inst/SHIFT_REG_reg[5]  ( .D(
        \SPI_slave_inst/n31 ), .CK(clk), .RD(n1565), .Q(
        \SPI_slave_inst/SHIFT_REG [5]) );
  UDB116SVT24_FDPRBQ_V2_1 \SPI_slave_inst/SHIFT_REG_reg[4]  ( .D(
        \SPI_slave_inst/n29 ), .CK(clk), .RD(n1564), .Q(
        \SPI_slave_inst/SHIFT_REG [4]) );
  UDB116SVT24_FDPRBQ_V2_1 \SPI_slave_inst/SHIFT_REG_reg[3]  ( .D(
        \SPI_slave_inst/n27 ), .CK(clk), .RD(n1564), .Q(
        \SPI_slave_inst/SHIFT_REG [3]) );
  UDB116SVT24_FDPRBQ_V2_1 \SPI_slave_inst/SHIFT_REG_reg[2]  ( .D(
        \SPI_slave_inst/n25 ), .CK(clk), .RD(n1563), .Q(
        \SPI_slave_inst/SHIFT_REG [2]) );
  UDB116SVT24_FDPRBQ_V2_1 \SPI_slave_inst/SHIFT_REG_reg[1]  ( .D(
        \SPI_slave_inst/n23 ), .CK(clk), .RD(n1563), .Q(
        \SPI_slave_inst/SHIFT_REG [1]) );
  UDB116SVT24_FDPRBQ_V2_1 \SPI_slave_inst/OUT_reg[0]  ( .D(
        \SPI_slave_inst/n36 ), .CK(clk), .RD(n1563), .Q(SPI_OUT[0]) );
  UDB116SVT24_FDPRBQ_V2_1 \SPI_slave_inst/SHIFT_REG_reg[0]  ( .D(
        \SPI_slave_inst/n37 ), .CK(clk), .RD(n1563), .Q(
        \SPI_slave_inst/SHIFT_REG [0]) );
  UDB116SVT24_FDPRBQ_V2_1 \SPI_slave_inst/SHIFT_IN_reg  ( .D(
        \SPI_slave_inst/n38 ), .CK(clk), .RD(n1562), .Q(
        \SPI_slave_inst/SHIFT_IN ) );
  UDB116SVT24_FDPRBQ_V2_1 \SPI_slave_inst/SPI_OUT_RDY_reg  ( .D(
        \SPI_slave_inst/n39 ), .CK(clk), .RD(n1562), .Q(SPI_OUT_RDY) );
  UDB116SVT24_FDPRBQ_V2_1 \SPI_slave_inst/SS_prev_reg  ( .D(n772), .CK(clk), 
        .RD(n1565), .Q(\SPI_slave_inst/SS_prev ) );
  UDB116SVT24_FDPRBQ_V2_1 \SPI_slave_inst/SCK_prev_reg  ( .D(
        \SPI_slave_inst/SCK_sync_1 ), .CK(clk), .RD(n1565), .Q(
        \SPI_slave_inst/SCK_prev ) );
  UDB116SVT24_FDPRBQ_V2_1 \SPI_slave_inst/SS_sync_0_reg  ( .D(CS), .CK(clk), 
        .RD(n1562), .Q(\SPI_slave_inst/SS_sync_0 ) );
  UDB116SVT24_FDPRBQ_V2_1 \SPI_slave_inst/SCK_sync_1_reg  ( .D(
        \SPI_slave_inst/SCK_sync_0 ), .CK(clk), .RD(n1564), .Q(
        \SPI_slave_inst/SCK_sync_1 ) );
  UDB116SVT24_FDPRBQ_V2_1 \SPI_slave_inst/SCK_sync_0_reg  ( .D(SCK), .CK(clk), 
        .RD(n1562), .Q(\SPI_slave_inst/SCK_sync_0 ) );
  UDB116SVT24_FDPRBQ_V2_1 \SPI_slave_inst/MOSI_sync_1_reg  ( .D(
        \SPI_slave_inst/MOSI_sync_0 ), .CK(clk), .RD(n1561), .Q(
        \SPI_slave_inst/MOSI_sync_1 ) );
  UDB116SVT24_FDPRBQ_V2_1 \SPI_slave_inst/MOSI_sync_0_reg  ( .D(MOSI), .CK(clk), .RD(n1561), .Q(\SPI_slave_inst/MOSI_sync_0 ) );
  UDB116SVT24_FDPRBQ_V2_1 \tx_buf_inst/dout_reg  ( .D(\tx_buf_inst/N5 ), .CK(
        clk), .RD(n1561), .Q(TX_OUT_I) );
  UDB116SVT24_FDPRBQ_V2_1 \tx_buf_inst/buffer_reg[7]  ( .D(\tx_buf_inst/n5 ), 
        .CK(clk), .RD(n1560), .Q(\tx_buf_inst/buffer [7]) );
  UDB116SVT24_FDPRBQ_V2_1 \tx_buf_inst/buffer_reg[6]  ( .D(\tx_buf_inst/n6 ), 
        .CK(clk), .RD(n1561), .Q(\tx_buf_inst/buffer [6]) );
  UDB116SVT24_FDPRBQ_V2_1 \tx_buf_inst/buffer_reg[5]  ( .D(\tx_buf_inst/n7 ), 
        .CK(clk), .RD(n1513), .Q(\tx_buf_inst/buffer [5]) );
  UDB116SVT24_FDPRBQ_V2_1 \tx_buf_inst/buffer_reg[4]  ( .D(\tx_buf_inst/n8 ), 
        .CK(clk), .RD(n1560), .Q(\tx_buf_inst/buffer [4]) );
  UDB116SVT24_FDPRBQ_V2_1 \tx_buf_inst/buffer_reg[3]  ( .D(\tx_buf_inst/n9 ), 
        .CK(clk), .RD(n1560), .Q(\tx_buf_inst/buffer [3]) );
  UDB116SVT24_FDPRBQ_V2_1 \tx_buf_inst/buffer_reg[2]  ( .D(\tx_buf_inst/n10 ), 
        .CK(clk), .RD(n1544), .Q(\tx_buf_inst/buffer [2]) );
  UDB116SVT24_FDPRBQ_V2_1 \tx_buf_inst/buffer_reg[1]  ( .D(\tx_buf_inst/n11 ), 
        .CK(clk), .RD(n1560), .Q(\tx_buf_inst/buffer [1]) );
  UDB116SVT24_FDPRBQ_V2_1 \tx_buf_inst/buffer_reg[0]  ( .D(\tx_buf_inst/n12 ), 
        .CK(clk), .RD(n1544), .Q(\tx_buf_inst/buffer [0]) );
  UDB116SVT24_FDPRBQ_V2_1 \CONFIG_inst/ext_counter_value_RX_reg[1]  ( .D(
        \CONFIG_inst/n43 ), .CK(clk), .RD(n1556), .Q(ext_count_val_RX[1]) );
  UDB116SVT24_FDPRBQ_V2_1 \CONFIG_inst/ext_counter_value_RX_reg[2]  ( .D(
        \CONFIG_inst/n44 ), .CK(clk), .RD(n1555), .Q(ext_count_val_RX[2]) );
  UDB116SVT24_FDPRBQ_V2_1 \CONFIG_inst/ext_counter_value_RX_reg[3]  ( .D(
        \CONFIG_inst/n45 ), .CK(clk), .RD(n1555), .Q(ext_count_val_RX[3]) );
  UDB116SVT24_FDPRBQ_V2_1 \CONFIG_inst/ext_counter_value_RX_reg[4]  ( .D(
        \CONFIG_inst/n46 ), .CK(clk), .RD(n1554), .Q(ext_count_val_RX[4]) );
  UDB116SVT24_FDPRBQ_V2_1 \CONFIG_inst/ext_counter_value_RX_reg[5]  ( .D(
        \CONFIG_inst/n47 ), .CK(clk), .RD(n1553), .Q(ext_count_val_RX[5]) );
  UDB116SVT24_FDPRBQ_V2_1 \CONFIG_inst/ext_counter_value_RX_reg[6]  ( .D(
        \CONFIG_inst/n48 ), .CK(clk), .RD(n1553), .Q(ext_count_val_RX[6]) );
  UDB116SVT24_FDPRBQ_V2_1 \CONFIG_inst/ext_counter_value_RX_reg[7]  ( .D(
        \CONFIG_inst/n49 ), .CK(clk), .RD(n1553), .Q(ext_count_val_RX[7]) );
  UDB116SVT24_FDPRBQ_V2_1 \CONFIG_inst/ext_counter_value_RX_reg[8]  ( .D(
        \CONFIG_inst/n50 ), .CK(clk), .RD(n1555), .Q(ext_count_val_RX[8]) );
  UDB116SVT24_FDPRBQ_V2_1 \CONFIG_inst/ext_counter_value_RX_reg[9]  ( .D(
        \CONFIG_inst/n51 ), .CK(clk), .RD(n1554), .Q(ext_count_val_RX[9]) );
  UDB116SVT24_FDPRBQ_V2_1 \CONFIG_inst/ext_counter_value_RX_reg[10]  ( .D(
        \CONFIG_inst/n52 ), .CK(clk), .RD(n1554), .Q(ext_count_val_RX[10]) );
  UDB116SVT24_FDPRBQ_V2_1 \CONFIG_inst/ext_counter_value_RX_reg[11]  ( .D(
        \CONFIG_inst/n53 ), .CK(clk), .RD(n1554), .Q(ext_count_val_RX[11]) );
  UDB116SVT24_FDPRBQ_V2_1 \CONFIG_inst/ext_counter_value_RX_reg[12]  ( .D(
        \CONFIG_inst/n54 ), .CK(clk), .RD(n1552), .Q(ext_count_val_RX[12]) );
  UDB116SVT24_FDPRBQ_V2_1 \CONFIG_inst/ext_counter_value_RX_reg[13]  ( .D(
        \CONFIG_inst/n55 ), .CK(clk), .RD(n1551), .Q(ext_count_val_RX[13]) );
  UDB116SVT24_FDPRBQ_V2_1 \CONFIG_inst/ext_counter_value_RX_reg[0]  ( .D(
        \CONFIG_inst/n58 ), .CK(clk), .RD(n1557), .Q(ext_count_val_RX[0]) );
  UDB116SVT24_FDPRBQ_V2_1 \CONFIG_inst/ext_counter_flag_RX_reg  ( .D(
        \CONFIG_inst/n84 ), .CK(clk), .RD(n1556), .Q(ext_counter_flag_RX) );
  UDB116SVT24_FDPRBQ_V2_1 \CONFIG_inst/ext_counter_value_TX_reg[1]  ( .D(
        \CONFIG_inst/n59 ), .CK(clk), .RD(n1556), .Q(ext_count_val_TX[1]) );
  UDB116SVT24_FDPRBQ_V2_1 \CONFIG_inst/ext_counter_value_TX_reg[2]  ( .D(
        \CONFIG_inst/n60 ), .CK(clk), .RD(n1556), .Q(ext_count_val_TX[2]) );
  UDB116SVT24_FDPRBQ_V2_1 \CONFIG_inst/ext_counter_value_TX_reg[3]  ( .D(
        \CONFIG_inst/n61 ), .CK(clk), .RD(n1553), .Q(ext_count_val_TX[3]) );
  UDB116SVT24_FDPRBQ_V2_1 \CONFIG_inst/ext_counter_value_TX_reg[4]  ( .D(
        \CONFIG_inst/n62 ), .CK(clk), .RD(n1552), .Q(ext_count_val_TX[4]) );
  UDB116SVT24_FDPRBQ_V2_1 \CONFIG_inst/ext_counter_value_TX_reg[5]  ( .D(
        \CONFIG_inst/n63 ), .CK(clk), .RD(n1552), .Q(ext_count_val_TX[5]) );
  UDB116SVT24_FDPRBQ_V2_1 \CONFIG_inst/ext_counter_value_TX_reg[6]  ( .D(
        \CONFIG_inst/n64 ), .CK(clk), .RD(n1552), .Q(ext_count_val_TX[6]) );
  UDB116SVT24_FDPRBQ_V2_1 \CONFIG_inst/ext_counter_value_TX_reg[7]  ( .D(
        \CONFIG_inst/n65 ), .CK(clk), .RD(n1558), .Q(ext_count_val_TX[7]) );
  UDB116SVT24_FDPRBQ_V2_1 \CONFIG_inst/ext_counter_value_TX_reg[8]  ( .D(
        \CONFIG_inst/n66 ), .CK(clk), .RD(n1557), .Q(ext_count_val_TX[8]) );
  UDB116SVT24_FDPRBQ_V2_1 \CONFIG_inst/ext_counter_value_TX_reg[9]  ( .D(
        \CONFIG_inst/n67 ), .CK(clk), .RD(n1557), .Q(ext_count_val_TX[9]) );
  UDB116SVT24_FDPRBQ_V2_1 \CONFIG_inst/ext_counter_value_TX_reg[10]  ( .D(
        \CONFIG_inst/n68 ), .CK(clk), .RD(n1557), .Q(ext_count_val_TX[10]) );
  UDB116SVT24_FDPRBQ_V2_1 \CONFIG_inst/ext_counter_value_TX_reg[11]  ( .D(
        \CONFIG_inst/n69 ), .CK(clk), .RD(n1558), .Q(ext_count_val_TX[11]) );
  UDB116SVT24_FDPRBQ_V2_1 \CONFIG_inst/ext_counter_value_TX_reg[12]  ( .D(
        \CONFIG_inst/n70 ), .CK(clk), .RD(n1558), .Q(ext_count_val_TX[12]) );
  UDB116SVT24_FDPRBQ_V2_1 \CONFIG_inst/ext_counter_value_TX_reg[13]  ( .D(
        \CONFIG_inst/n71 ), .CK(clk), .RD(n1558), .Q(ext_count_val_TX[13]) );
  UDB116SVT24_FDPRBQ_V2_1 \CONFIG_inst/ext_counter_value_TX_reg[0]  ( .D(
        \CONFIG_inst/n74 ), .CK(clk), .RD(n1559), .Q(ext_count_val_TX[0]) );
  UDB116SVT24_FDPRBQ_V2_1 \CONFIG_inst/ext_counter_flag_TX_reg  ( .D(
        \CONFIG_inst/n83 ), .CK(clk), .RD(n1559), .Q(ext_counter_flag_TX) );
  UDB116SVT24_FDPRBQ_V2_1 \CONFIG_inst/osc_freq_reg[1]  ( .D(\CONFIG_inst/n93 ), .CK(clk), .RD(n1559), .Q(osc_freq[1]) );
  UDB116SVT24_FDPRBQ_V2_1 \CONFIG_inst/osc_freq_reg[2]  ( .D(\CONFIG_inst/n94 ), .CK(clk), .RD(n1551), .Q(osc_freq[2]) );
  UDB116SVT24_FDPRBQ_V2_1 \CONFIG_inst/osc_freq_reg[3]  ( .D(\CONFIG_inst/n95 ), .CK(clk), .RD(n1559), .Q(osc_freq[3]) );
  UDB116SVT24_FDPRBQ_V2_1 \CONFIG_inst/osc_freq_reg[0]  ( .D(\CONFIG_inst/n96 ), .CK(clk), .RD(n1551), .Q(osc_freq[0]) );
  UDB116SVT24_FDPRBQ_V2_1 \CONFIG_inst/arthur_reg[1]  ( .D(\CONFIG_inst/n97 ), 
        .CK(clk), .RD(n1551), .Q(arthur[1]) );
  UDB116SVT24_FDPRBQ_V2_1 \CONFIG_inst/arthur_reg[2]  ( .D(\CONFIG_inst/n98 ), 
        .CK(clk), .RD(n1547), .Q(arthur[2]) );
  UDB116SVT24_FDPRBQ_V2_1 \CONFIG_inst/arthur_reg[3]  ( .D(\CONFIG_inst/n99 ), 
        .CK(clk), .RD(n1547), .Q(arthur[3]) );
  UDB116SVT24_FDPRBQ_V2_1 \CONFIG_inst/arthur_reg[4]  ( .D(\CONFIG_inst/n100 ), 
        .CK(clk), .RD(n1547), .Q(arthur[4]) );
  UDB116SVT24_FDPRBQ_V2_1 \CONFIG_inst/arthur_reg[5]  ( .D(\CONFIG_inst/n101 ), 
        .CK(clk), .RD(n1547), .Q(arthur[5]) );
  UDB116SVT24_FDPRBQ_V2_1 \CONFIG_inst/arthur_reg[6]  ( .D(\CONFIG_inst/n102 ), 
        .CK(clk), .RD(n1545), .Q(arthur[6]) );
  UDB116SVT24_FDPRBQ_V2_1 \CONFIG_inst/arthur_reg[7]  ( .D(\CONFIG_inst/n103 ), 
        .CK(clk), .RD(n1545), .Q(arthur[7]) );
  UDB116SVT24_FDPRBQ_V2_1 \CONFIG_inst/arthur_reg[0]  ( .D(\CONFIG_inst/n104 ), 
        .CK(clk), .RD(n1545), .Q(arthur[0]) );
  UDB116SVT24_FDPRBQ_V2_1 \CONFIG_inst/opcode_q_reg[1]  ( .D(\CONFIG_inst/n75 ), .CK(clk), .RD(n1545), .Q(\CONFIG_inst/opcode_q [1]) );
  UDB116SVT24_FDPRBQ_V2_1 \CONFIG_inst/opcode_q_reg[2]  ( .D(\CONFIG_inst/n76 ), .CK(clk), .RD(n1550), .Q(\CONFIG_inst/opcode_q [2]) );
  UDB116SVT24_FDPRBQ_V2_1 \CONFIG_inst/opcode_q_reg[3]  ( .D(\CONFIG_inst/n77 ), .CK(clk), .RD(n1550), .Q(\CONFIG_inst/opcode_q [3]) );
  UDB116SVT24_FDPRBQ_V2_1 \CONFIG_inst/opcode_q_reg[4]  ( .D(\CONFIG_inst/n78 ), .CK(clk), .RD(n1550), .Q(\CONFIG_inst/opcode_q [4]) );
  UDB116SVT24_FDPRBQ_V2_1 \CONFIG_inst/opcode_q_reg[5]  ( .D(\CONFIG_inst/n79 ), .CK(clk), .RD(n1550), .Q(\CONFIG_inst/opcode_q [5]) );
  UDB116SVT24_FDPRBQ_V2_1 \CONFIG_inst/opcode_q_reg[6]  ( .D(\CONFIG_inst/n80 ), .CK(clk), .RD(n1546), .Q(\CONFIG_inst/opcode_q [6]) );
  UDB116SVT24_FDPRBQ_V2_1 \CONFIG_inst/opcode_q_reg[7]  ( .D(\CONFIG_inst/n81 ), .CK(clk), .RD(n1546), .Q(\CONFIG_inst/opcode_q [7]) );
  UDB116SVT24_FDPRBQ_V2_1 \CONFIG_inst/opcode_q_reg[0]  ( .D(\CONFIG_inst/n82 ), .CK(clk), .RD(n1546), .Q(\CONFIG_inst/opcode_q [0]) );
  UDB116SVT24_FDPRBQ_V2_1 \CONFIG_inst/pay0_reg[1]  ( .D(\CONFIG_inst/n85 ), 
        .CK(clk), .RD(n1546), .Q(\CONFIG_inst/pay0 [1]) );
  UDB116SVT24_FDPRBQ_V2_1 \CONFIG_inst/pay0_reg[2]  ( .D(\CONFIG_inst/n86 ), 
        .CK(clk), .RD(n1548), .Q(\CONFIG_inst/pay0 [2]) );
  UDB116SVT24_FDPRBQ_V2_1 \CONFIG_inst/pay0_reg[3]  ( .D(\CONFIG_inst/n87 ), 
        .CK(clk), .RD(n1548), .Q(\CONFIG_inst/pay0 [3]) );
  UDB116SVT24_FDPRBQ_V2_1 \CONFIG_inst/pay0_reg[4]  ( .D(\CONFIG_inst/n88 ), 
        .CK(clk), .RD(n1548), .Q(\CONFIG_inst/pay0 [4]) );
  UDB116SVT24_FDPRBQ_V2_1 \CONFIG_inst/pay0_reg[5]  ( .D(\CONFIG_inst/n89 ), 
        .CK(clk), .RD(n1548), .Q(\CONFIG_inst/pay0 [5]) );
  UDB116SVT24_FDPRBQ_V2_1 \CONFIG_inst/pay0_reg[0]  ( .D(\CONFIG_inst/n92 ), 
        .CK(clk), .RD(n1549), .Q(\CONFIG_inst/pay0 [0]) );
  UDB116SVT24_FDPRBQ_V2_1 \CONFIG_inst/state_reg[1]  ( .D(\CONFIG_inst/n105 ), 
        .CK(clk), .RD(n1549), .Q(\CONFIG_inst/state [1]) );
  UDB116SVT24_FDPRBQ_V2_1 \CONFIG_inst/state_reg[0]  ( .D(\CONFIG_inst/n106 ), 
        .CK(clk), .RD(n1555), .Q(\CONFIG_inst/state [0]) );
  UDB116SVT24_FDPRBQ_V2_1 \CONFIG_inst/i_CONFIG_sync2_reg  ( .D(
        \CONFIG_inst/i_CONFIG_sync1 ), .CK(clk), .RD(n1549), .Q(
        \CONFIG_inst/i_CONFIG_sync2 ) );
  UDB116SVT24_FDPRBQ_V2_1 \CONFIG_inst/i_CONFIG_sync1_reg  ( .D(i_CONFIG), 
        .CK(clk), .RD(n1544), .Q(\CONFIG_inst/i_CONFIG_sync1 ) );
  UDB116SVT24_FDPRBQ_V2_1 \CONFIG_inst/spi_rx_valid_prev_reg  ( .D(SPI_OUT_RDY), .CK(clk), .RD(n1549), .Q(\CONFIG_inst/spi_rx_valid_prev ) );
  UDB116SVT24_FDPRBQ_V2_1 pkt_rec_prev_reg ( .D(n655), .CK(clk), .RD(n1509), 
        .Q(pkt_rec_prev) );
  UDB116SVT24_FDPRBQ_V2_1 \rx_state_reg[0]  ( .D(n649), .CK(clk), .RD(n1510), 
        .Q(rx_state[0]) );
  UDB116SVT24_FDPRBQ_V2_1 \rx_state_reg[2]  ( .D(n647), .CK(clk), .RD(n1509), 
        .Q(rx_state[2]) );
  UDB116SVT24_FDPRBQ_V2_1 \rx_state_reg[1]  ( .D(n648), .CK(clk), .RD(n1510), 
        .Q(rx_state[1]) );
  UDB116SVT24_FDPRBQ_V2_1 SPI_LD_reg ( .D(n654), .CK(clk), .RD(n1511), .Q(
        SPI_LD) );
  UDB116SVT24_FDPRBQ_V2_1 PKT_EN_reg ( .D(n645), .CK(clk), .RD(n1509), .Q(
        PKT_EN) );
  UDB116SVT24_FDPRBQ_V2_1 \counter_reg[0]  ( .D(n643), .CK(clk), .RD(n1511), 
        .Q(counter[0]) );
  UDB116SVT24_FDPRBQ_V2_1 \counter_reg[1]  ( .D(n642), .CK(clk), .RD(n1510), 
        .Q(counter[1]) );
  UDB116SVT24_FDPRBQ_V2_1 \counter_reg[2]  ( .D(n641), .CK(clk), .RD(n1510), 
        .Q(counter[2]) );
  UDB116SVT24_FDPRBQ_V2_1 \counter_reg[3]  ( .D(n644), .CK(clk), .RD(n1512), 
        .Q(counter[3]) );
  UDB116SVT24_FDPRBQ_V2_1 PKT_RST_reg ( .D(n640), .CK(clk), .RD(n1512), .Q(
        PKT_RST) );
  UDB116SVT24_FDPRBQ_V2_1 \counter3_reg[0]  ( .D(n652), .CK(clk), .RD(rst), 
        .Q(counter3[0]) );
  UDB116SVT24_FDPRBQ_V2_1 \tx_state_reg[1]  ( .D(n638), .CK(clk), .RD(n1509), 
        .Q(tx_state[1]) );
  UDB116SVT24_FDPRBQ_V2_1 \tx_state_reg[0]  ( .D(n639), .CK(clk), .RD(n1511), 
        .Q(tx_state[0]) );
  UDB116SVT24_FDPRBQ_V2_1 TX_LD_reg ( .D(n637), .CK(clk), .RD(n1577), .Q(TX_LD) );
  UDB116SVT24_FDPRBQ_V2_1 TX_SH_reg ( .D(n636), .CK(clk), .RD(n1576), .Q(TX_SH) );
  UDB116SVT24_FDPRBQ_V2_1 \counter3_reg[1]  ( .D(n651), .CK(clk), .RD(n1512), 
        .Q(counter3[1]) );
  UDB116SVT24_FDPRBQ_V2_1 \counter3_reg[2]  ( .D(n650), .CK(clk), .RD(n1575), 
        .Q(counter3[2]) );
  UDB116SVT24_FDPRBQ_V2_1 \counter3_reg[3]  ( .D(n653), .CK(clk), .RD(n1513), 
        .Q(counter3[3]) );
  UDB116SVT24_FDPRBQ_V2_1 TX_EN_reg ( .D(n635), .CK(clk), .RD(n1512), .Q(TX_EN) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/counter_reg[7]  ( .D(
        \sh_sync_inst/n207 ), .CK(clk), .RD(n1532), .Q(
        \sh_sync_inst/counter [7]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/counter_reg[1]  ( .D(
        \sh_sync_inst/n213 ), .CK(clk), .RD(n1527), .Q(
        \sh_sync_inst/counter [1]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/counter_reg[5]  ( .D(
        \sh_sync_inst/n209 ), .CK(clk), .RD(n1526), .Q(
        \sh_sync_inst/counter [5]) );
  UDB116SVT24_FDPRBQ_V2_1 \SPI_slave_inst/SS_sync_1_reg  ( .D(
        \SPI_slave_inst/SS_sync_0 ), .CK(clk), .RD(n1564), .Q(CS_sync) );
  UDB116SVT24_FDPRBQ_V2_1 PKT_LD_reg ( .D(n646), .CK(clk), .RD(n1511), .Q(
        PKT_LD) );
  UDB116SVT24_ADDF_V1_1 \intadd_0/U2  ( .A(n668), .B(
        \sh_sync_inst/counter [13]), .CI(\intadd_0/n2 ), .CO(\intadd_0/n1 ), 
        .S(\intadd_0/SUM[11] ) );
  UDB116SVT24_ADDF_V1_1 \intadd_0/U3  ( .A(n736), .B(
        \sh_sync_inst/interval_sum [12]), .CI(\intadd_0/n3 ), .CO(
        \intadd_0/n2 ), .S(\intadd_0/SUM[10] ) );
  UDB116SVT24_ADDF_V1_1 \intadd_0/U4  ( .A(n740), .B(n669), .CI(\intadd_0/n4 ), 
        .CO(\intadd_0/n3 ), .S(\intadd_0/SUM[9] ) );
  UDB116SVT24_ADDF_V1_1 \intadd_0/U5  ( .A(n841), .B(
        \sh_sync_inst/interval_sum [10]), .CI(\intadd_0/n5 ), .CO(
        \intadd_0/n4 ), .S(\intadd_0/SUM[8] ) );
  UDB116SVT24_ADDF_V1_1 \intadd_0/U6  ( .A(n751), .B(
        \sh_sync_inst/interval_sum [9]), .CI(\intadd_0/n6 ), .CO(\intadd_0/n5 ), .S(\intadd_0/SUM[7] ) );
  UDB116SVT24_ADDF_V1_1 \intadd_0/U7  ( .A(\sh_sync_inst/interval_sum [8]), 
        .B(n748), .CI(\intadd_0/n7 ), .CO(\intadd_0/n6 ), .S(\intadd_0/SUM[6] ) );
  UDB116SVT24_ADDF_V1_1 \intadd_0/U8  ( .A(\sh_sync_inst/interval_sum [7]), 
        .B(\sh_sync_inst/counter [7]), .CI(\intadd_0/n8 ), .CO(\intadd_0/n7 ), 
        .S(\intadd_0/SUM[5] ) );
  UDB116SVT24_ADDF_V1_1 \intadd_0/U9  ( .A(\sh_sync_inst/interval_sum [6]), 
        .B(\sh_sync_inst/counter [6]), .CI(\intadd_0/n9 ), .CO(\intadd_0/n8 ), 
        .S(\intadd_0/SUM[4] ) );
  UDB116SVT24_ADDF_V1_1 \intadd_0/U10  ( .A(\sh_sync_inst/interval_sum [5]), 
        .B(\sh_sync_inst/counter [5]), .CI(\intadd_0/n10 ), .CO(\intadd_0/n9 ), 
        .S(\intadd_0/SUM[3] ) );
  UDB116SVT24_ADDF_V1_1 \intadd_0/U13  ( .A(\sh_sync_inst/interval_sum [2]), 
        .B(n744), .CI(\intadd_0/CI ), .CO(\intadd_0/n12 ), .S(
        \intadd_0/SUM[0] ) );
  UDB116SVT24_ADDF_V1_1 \intadd_0/U11  ( .A(\sh_sync_inst/interval_sum [4]), 
        .B(n707), .CI(\intadd_0/n11 ), .CO(\intadd_0/n10 ), .S(
        \intadd_0/SUM[2] ) );
  UDB116SVT24_ADDF_V1_1 \intadd_0/U12  ( .A(\sh_sync_inst/interval_sum [3]), 
        .B(n726), .CI(\intadd_0/n12 ), .CO(\intadd_0/n11 ), .S(
        \intadd_0/SUM[1] ) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/sh_en_reg  ( .D(\sh_sync_inst/n192 ), 
        .CK(clk), .RD(n1543), .Q(n1580) );
  UDB116SVT24_FDPRBQ_V2_4 \shift_buf_inst/pkt_rec_reg  ( .D(
        \shift_buf_inst/n29 ), .CK(clk), .RD(n1519), .Q(n1578) );
  UDB116SVT24_BUF_D_4 U881 ( .A(n1578), .X(n824) );
  UDB116SVT24_BUF_32 U882 ( .A(n824), .X(pkt_rec) );
  UDB116SVT24_INV_8 U883 ( .A(n827), .X(n828) );
  UDB116SVT24_NR2_8 U884 ( .A1(CS_sync), .A2(n1309), .X(n1579) );
  UDB116SVT24_OR2_0P75 U885 ( .A1(n1145), .A2(n1144), .X(n659) );
  UDB116SVT24_OAI21_0P75 U886 ( .A1(n828), .A2(n1276), .B(n1277), .X(n660) );
  UDB116SVT24_BUF_1 U887 ( .A(n1364), .X(n661) );
  UDB116SVT24_BUF_1 U888 ( .A(n1500), .X(n662) );
  UDB116SVT24_INV_0P75 U889 ( .A(n1273), .X(n663) );
  UDB116SVT24_INV_0P75 U890 ( .A(n943), .X(n664) );
  UDB116SVT24_INV_0P75 U891 ( .A(n1134), .X(n665) );
  UDB116SVT24_BUF_1 U892 ( .A(\sh_sync_inst/rfin_edge ), .X(n666) );
  UDB116SVT24_INV_0P75 U893 ( .A(n1180), .X(n667) );
  UDB116SVT24_BUF_1 U894 ( .A(\sh_sync_inst/interval_sum [13]), .X(n668) );
  UDB116SVT24_BUF_1 U895 ( .A(\sh_sync_inst/interval_sum [11]), .X(n669) );
  UDB116SVT24_BUF_1 U896 ( .A(\sh_sync_inst/interval_sum [5]), .X(n670) );
  UDB116SVT24_BUF_1 U897 ( .A(\sh_sync_inst/interval_sum [4]), .X(n671) );
  UDB116SVT24_BUF_1 U898 ( .A(\sh_sync_inst/interval_sum [2]), .X(n672) );
  UDB116SVT24_INV_0P75 U899 ( .A(n1103), .X(n673) );
  UDB116SVT24_BUF_1 U900 ( .A(\sh_sync_inst/pulse_pack_count [1]), .X(n674) );
  UDB116SVT24_INV_0P75 U901 ( .A(n973), .X(n675) );
  UDB116SVT24_BUF_1 U902 ( .A(n1504), .X(n676) );
  UDB116SVT24_BUF_1 U903 ( .A(n1375), .X(n677) );
  UDB116SVT24_BUF_1 U904 ( .A(n1127), .X(n678) );
  UDB116SVT24_BUF_1 U905 ( .A(n1373), .X(n679) );
  UDB116SVT24_INV_0P75 U906 ( .A(n1477), .X(n680) );
  UDB116SVT24_NR2_0P75 U907 ( .A1(n1286), .A2(n830), .X(n1288) );
  UDB116SVT24_INV_0P75 U908 ( .A(n1288), .X(n681) );
  UDB116SVT24_INV_0P75 U909 ( .A(\CONFIG_inst/state [1]), .X(n682) );
  UDB116SVT24_BUF_1 U910 ( .A(n1072), .X(n683) );
  UDB116SVT24_INV_0P75 U911 ( .A(n799), .X(n684) );
  UDB116SVT24_BUF_1 U912 ( .A(n985), .X(n685) );
  UDB116SVT24_INV_0P75 U913 ( .A(n1381), .X(n686) );
  UDB116SVT24_INV_0P75 U914 ( .A(n686), .X(n687) );
  UDB116SVT24_INV_0P75 U915 ( .A(\sh_sync_inst/counter [12]), .X(n688) );
  UDB116SVT24_INV_0P75 U916 ( .A(n754), .X(n689) );
  UDB116SVT24_INV_0P75 U917 ( .A(n689), .X(n690) );
  UDB116SVT24_INV_0P75 U918 ( .A(i_CONFIG), .X(n691) );
  UDB116SVT24_INV_0P75 U919 ( .A(n691), .X(n692) );
  UDB116SVT24_INV_0P75 U920 ( .A(n1489), .X(n693) );
  UDB116SVT24_INV_0P75 U921 ( .A(n693), .X(n694) );
  UDB116SVT24_INV_0P75 U922 ( .A(tx_state[0]), .X(n695) );
  UDB116SVT24_INV_0P75 U923 ( .A(n695), .X(n696) );
  UDB116SVT24_INV_0P75 U924 ( .A(\sh_sync_inst/state [1]), .X(n697) );
  UDB116SVT24_INV_0P75 U925 ( .A(n697), .X(n698) );
  UDB116SVT24_INV_0P75 U926 ( .A(\sh_sync_inst/state [2]), .X(n699) );
  UDB116SVT24_INV_0P75 U927 ( .A(n699), .X(n700) );
  UDB116SVT24_INV_0P75 U928 ( .A(\sh_sync_inst/interval_sum [3]), .X(n701) );
  UDB116SVT24_INV_0P75 U929 ( .A(n701), .X(n702) );
  UDB116SVT24_INV_0P75 U930 ( .A(n1355), .X(n703) );
  UDB116SVT24_INV_0P75 U931 ( .A(SPI_OUT[6]), .X(n704) );
  UDB116SVT24_INV_0P75 U932 ( .A(SPI_OUT[7]), .X(n705) );
  UDB116SVT24_INV_0P75 U933 ( .A(n923), .X(n706) );
  UDB116SVT24_INV_0P75 U934 ( .A(n1131), .X(n707) );
  UDB116SVT24_INV_0P75 U935 ( .A(n707), .X(n708) );
  UDB116SVT24_INV_0P75 U936 ( .A(n739), .X(n709) );
  UDB116SVT24_INV_0P75 U937 ( .A(\sh_sync_inst/counter [9]), .X(n710) );
  UDB116SVT24_INV_0P75 U938 ( .A(n1287), .X(n711) );
  UDB116SVT24_INV_0P75 U939 ( .A(n1458), .X(n712) );
  UDB116SVT24_INV_0P75 U940 ( .A(\sh_sync_inst/counter [6]), .X(n713) );
  UDB116SVT24_INV_0P75 U941 ( .A(n713), .X(n714) );
  UDB116SVT24_INV_0P75 U942 ( .A(\sh_sync_inst/interval_sum [14]), .X(n715) );
  UDB116SVT24_INV_0P75 U943 ( .A(n715), .X(n716) );
  UDB116SVT24_INV_0P75 U944 ( .A(n1507), .X(n717) );
  UDB116SVT24_INV_0P75 U945 ( .A(n717), .X(n718) );
  UDB116SVT24_INV_0P75 U946 ( .A(n1471), .X(n719) );
  UDB116SVT24_INV_0P75 U947 ( .A(n719), .X(n720) );
  UDB116SVT24_INV_0P75 U948 ( .A(SPI_OUT[4]), .X(n721) );
  UDB116SVT24_INV_0P75 U949 ( .A(SPI_OUT[5]), .X(n722) );
  UDB116SVT24_INV_0P75 U950 ( .A(n863), .X(n723) );
  UDB116SVT24_INV_0P75 U951 ( .A(n1376), .X(n724) );
  UDB116SVT24_INV_0P75 U952 ( .A(n724), .X(n725) );
  UDB116SVT24_INV_0P75 U953 ( .A(n1129), .X(n726) );
  UDB116SVT24_INV_0P75 U954 ( .A(n726), .X(n727) );
  UDB116SVT24_INV_0P75 U955 ( .A(n1135), .X(n728) );
  UDB116SVT24_INV_0P75 U956 ( .A(n728), .X(n729) );
  UDB116SVT24_INV_0P75 U957 ( .A(n806), .X(n730) );
  UDB116SVT24_INV_0P75 U958 ( .A(n807), .X(n731) );
  UDB116SVT24_INV_0P75 U959 ( .A(n1146), .X(n732) );
  UDB116SVT24_INV_0P75 U960 ( .A(n732), .X(n733) );
  UDB116SVT24_INV_0P75 U961 ( .A(n732), .X(n734) );
  UDB116SVT24_INV_0P75 U962 ( .A(\sh_sync_inst/counter [12]), .X(n735) );
  UDB116SVT24_INV_0P75 U963 ( .A(n735), .X(n736) );
  UDB116SVT24_INV_0P75 U964 ( .A(n735), .X(n737) );
  UDB116SVT24_INV_0P75 U965 ( .A(\sh_sync_inst/counter [11]), .X(n738) );
  UDB116SVT24_INV_0P75 U966 ( .A(n738), .X(n739) );
  UDB116SVT24_INV_0P75 U967 ( .A(n738), .X(n740) );
  UDB116SVT24_INV_0P75 U968 ( .A(\sh_sync_inst/counter [0]), .X(n741) );
  UDB116SVT24_INV_0P75 U969 ( .A(n741), .X(n742) );
  UDB116SVT24_INV_0P75 U970 ( .A(\sh_sync_inst/counter [2]), .X(n743) );
  UDB116SVT24_INV_0P75 U971 ( .A(n743), .X(n744) );
  UDB116SVT24_INV_0P75 U972 ( .A(n743), .X(n745) );
  UDB116SVT24_INV_0P75 U973 ( .A(\sh_sync_inst/counter [8]), .X(n746) );
  UDB116SVT24_INV_0P75 U974 ( .A(n746), .X(n747) );
  UDB116SVT24_INV_0P75 U975 ( .A(n746), .X(n748) );
  UDB116SVT24_INV_0P75 U976 ( .A(\sh_sync_inst/counter [9]), .X(n749) );
  UDB116SVT24_INV_0P75 U977 ( .A(n749), .X(n750) );
  UDB116SVT24_INV_0P75 U978 ( .A(n749), .X(n751) );
  UDB116SVT24_INV_0P75 U979 ( .A(n924), .X(n752) );
  UDB116SVT24_INV_0P75 U980 ( .A(n752), .X(n753) );
  UDB116SVT24_INV_0P75 U981 ( .A(n1041), .X(n754) );
  UDB116SVT24_INV_0P75 U982 ( .A(n754), .X(n755) );
  UDB116SVT24_INV_0P75 U983 ( .A(n1473), .X(n756) );
  UDB116SVT24_INV_0P75 U984 ( .A(n756), .X(n757) );
  UDB116SVT24_INV_0P75 U985 ( .A(n756), .X(n758) );
  UDB116SVT24_INV_0P75 U986 ( .A(SPI_OUT[0]), .X(n759) );
  UDB116SVT24_INV_0P75 U987 ( .A(SPI_OUT[0]), .X(n760) );
  UDB116SVT24_INV_0P75 U988 ( .A(SPI_OUT[3]), .X(n761) );
  UDB116SVT24_INV_0P75 U989 ( .A(SPI_OUT[3]), .X(n762) );
  UDB116SVT24_INV_0P75 U990 ( .A(SPI_OUT[1]), .X(n763) );
  UDB116SVT24_INV_0P75 U991 ( .A(SPI_OUT[1]), .X(n764) );
  UDB116SVT24_INV_0P75 U992 ( .A(n1447), .X(n765) );
  UDB116SVT24_INV_0P75 U993 ( .A(n765), .X(n766) );
  UDB116SVT24_INV_0P75 U994 ( .A(n741), .X(n767) );
  UDB116SVT24_INV_0P75 U995 ( .A(n767), .X(n768) );
  UDB116SVT24_INV_0P75 U996 ( .A(n767), .X(n769) );
  UDB116SVT24_INV_0P75 U997 ( .A(CS_sync), .X(n770) );
  UDB116SVT24_INV_0P75 U998 ( .A(n770), .X(n771) );
  UDB116SVT24_INV_0P75 U999 ( .A(n770), .X(n772) );
  UDB116SVT24_INV_0P75 U1000 ( .A(\sh_sync_inst/counter [5]), .X(n773) );
  UDB116SVT24_INV_0P75 U1001 ( .A(n773), .X(n774) );
  UDB116SVT24_INV_0P75 U1002 ( .A(n773), .X(n775) );
  UDB116SVT24_INV_0P75 U1003 ( .A(\sh_sync_inst/counter [1]), .X(n776) );
  UDB116SVT24_INV_0P75 U1004 ( .A(n776), .X(n777) );
  UDB116SVT24_INV_0P75 U1005 ( .A(n776), .X(n778) );
  UDB116SVT24_INV_0P75 U1006 ( .A(\sh_sync_inst/counter [7]), .X(n779) );
  UDB116SVT24_INV_0P75 U1007 ( .A(n779), .X(n780) );
  UDB116SVT24_INV_0P75 U1008 ( .A(n779), .X(n781) );
  UDB116SVT24_INV_0P75 U1009 ( .A(n1288), .X(n782) );
  UDB116SVT24_INV_0P75 U1010 ( .A(n782), .X(n783) );
  UDB116SVT24_INV_0P75 U1011 ( .A(n782), .X(n784) );
  UDB116SVT24_INV_0P75 U1012 ( .A(n782), .X(n785) );
  UDB116SVT24_INV_0P75 U1013 ( .A(n1448), .X(n786) );
  UDB116SVT24_INV_0P75 U1014 ( .A(n786), .X(n787) );
  UDB116SVT24_INV_0P75 U1015 ( .A(SPI_OUT[2]), .X(n788) );
  UDB116SVT24_INV_0P75 U1016 ( .A(SPI_OUT[2]), .X(n789) );
  UDB116SVT24_INV_0P75 U1017 ( .A(RX), .X(n790) );
  UDB116SVT24_INV_0P75 U1018 ( .A(n790), .X(n791) );
  UDB116SVT24_INV_0P75 U1019 ( .A(n790), .X(n792) );
  UDB116SVT24_INV_0P75 U1020 ( .A(PKT_LD), .X(n793) );
  UDB116SVT24_INV_0P75 U1021 ( .A(n793), .X(n794) );
  UDB116SVT24_INV_0P75 U1022 ( .A(n793), .X(n795) );
  UDB116SVT24_INV_0P75 U1023 ( .A(n793), .X(n796) );
  UDB116SVT24_INV_0P75 U1024 ( .A(n1249), .X(n797) );
  UDB116SVT24_INV_0P75 U1025 ( .A(n797), .X(n798) );
  UDB116SVT24_INV_0P75 U1026 ( .A(n797), .X(n799) );
  UDB116SVT24_INV_0P75 U1027 ( .A(n797), .X(n800) );
  UDB116SVT24_INV_0P75 U1028 ( .A(n680), .X(n801) );
  UDB116SVT24_INV_0P75 U1029 ( .A(n680), .X(n802) );
  UDB116SVT24_INV_0P75 U1030 ( .A(n680), .X(n803) );
  UDB116SVT24_INV_0P75 U1031 ( .A(n1338), .X(n804) );
  UDB116SVT24_INV_0P75 U1032 ( .A(n804), .X(n805) );
  UDB116SVT24_INV_0P75 U1033 ( .A(n804), .X(n806) );
  UDB116SVT24_INV_0P75 U1034 ( .A(n804), .X(n807) );
  UDB116SVT24_INV_0P75 U1035 ( .A(n1385), .X(n808) );
  UDB116SVT24_INV_0P75 U1036 ( .A(n808), .X(n809) );
  UDB116SVT24_INV_0P75 U1037 ( .A(n808), .X(n810) );
  UDB116SVT24_INV_0P75 U1038 ( .A(n808), .X(n811) );
  UDB116SVT24_INV_0P75 U1039 ( .A(n1384), .X(n812) );
  UDB116SVT24_INV_0P75 U1040 ( .A(n812), .X(n813) );
  UDB116SVT24_INV_0P75 U1041 ( .A(n812), .X(n814) );
  UDB116SVT24_INV_0P75 U1042 ( .A(n812), .X(n815) );
  UDB116SVT24_INV_0P75 U1043 ( .A(n659), .X(n816) );
  UDB116SVT24_INV_0P75 U1044 ( .A(n659), .X(n817) );
  UDB116SVT24_INV_0P75 U1045 ( .A(n659), .X(n818) );
  UDB116SVT24_INV_0P75 U1046 ( .A(n659), .X(n819) );
  UDB116SVT24_INV_0P75 U1047 ( .A(PKT_LD), .X(n820) );
  UDB116SVT24_INV_0P75 U1048 ( .A(PKT_LD), .X(n821) );
  UDB116SVT24_INV_0P75 U1049 ( .A(PKT_LD), .X(n822) );
  UDB116SVT24_INV_0P75 U1050 ( .A(n796), .X(n823) );
  UDB116SVT24_BUF_32 U1051 ( .A(n828), .X(sh_en) );
  UDB116SVT24_BUF_32 U1052 ( .A(n1579), .X(MISO) );
  UDB116SVT24_INV_0P75 U1053 ( .A(n830), .X(n827) );
  UDB116SVT24_INV_0P75 U1054 ( .A(n829), .X(n830) );
  UDB116SVT24_INV_0P75 U1055 ( .A(n1580), .X(n829) );
  UDB116SVT24_BUF_1 U1056 ( .A(n1494), .X(n831) );
  UDB116SVT24_INV_0P75 U1057 ( .A(tx_state[1]), .X(n832) );
  UDB116SVT24_BUF_1 U1058 ( .A(n1365), .X(n833) );
  UDB116SVT24_BUF_1 U1059 ( .A(n1365), .X(n834) );
  UDB116SVT24_BUF_1 U1060 ( .A(n1445), .X(n835) );
  UDB116SVT24_BUF_1 U1061 ( .A(n1445), .X(n836) );
  UDB116SVT24_OR2_0P75 U1062 ( .A1(TX_EN), .A2(TX_LD), .X(n1474) );
  UDB116SVT24_INV_0P75 U1063 ( .A(n1474), .X(n837) );
  UDB116SVT24_INV_0P75 U1064 ( .A(n1474), .X(n838) );
  UDB116SVT24_BUF_1 U1065 ( .A(\sh_sync_inst/interval_sum [16]), .X(n839) );
  UDB116SVT24_BUF_1 U1066 ( .A(\sh_sync_inst/interval_sum [16]), .X(n840) );
  UDB116SVT24_BUF_1 U1067 ( .A(\sh_sync_inst/counter [10]), .X(n841) );
  UDB116SVT24_BUF_1 U1068 ( .A(n1369), .X(n1251) );
  UDB116SVT24_INV_0P75 U1069 ( .A(n1251), .X(n842) );
  UDB116SVT24_INV_0P75 U1070 ( .A(n1251), .X(n843) );
  UDB116SVT24_INV_0P75 U1071 ( .A(n1251), .X(n844) );
  UDB116SVT24_INV_0P75 U1072 ( .A(n1455), .X(n845) );
  UDB116SVT24_INV_0P75 U1073 ( .A(n845), .X(n846) );
  UDB116SVT24_INV_0P75 U1074 ( .A(n845), .X(n847) );
  UDB116SVT24_INV_0P75 U1075 ( .A(n1257), .X(n848) );
  UDB116SVT24_INV_0P75 U1076 ( .A(n848), .X(n849) );
  UDB116SVT24_INV_0P75 U1077 ( .A(n848), .X(n850) );
  UDB116SVT24_INV_0P75 U1078 ( .A(n848), .X(n851) );
  UDB116SVT24_BUF_1 U1079 ( .A(n908), .X(n950) );
  UDB116SVT24_INV_0P75 U1080 ( .A(n950), .X(n852) );
  UDB116SVT24_INV_0P75 U1081 ( .A(n950), .X(n853) );
  UDB116SVT24_INV_0P75 U1082 ( .A(n950), .X(n854) );
  UDB116SVT24_INV_0P75 U1083 ( .A(n950), .X(n855) );
  UDB116SVT24_OR2_0P75 U1084 ( .A1(n965), .A2(n798), .X(n1367) );
  UDB116SVT24_INV_0P75 U1085 ( .A(n1367), .X(n856) );
  UDB116SVT24_INV_0P75 U1086 ( .A(n1367), .X(n857) );
  UDB116SVT24_INV_0P75 U1087 ( .A(n1367), .X(n858) );
  UDB116SVT24_INV_0P75 U1088 ( .A(n1367), .X(n859) );
  UDB116SVT24_OR2_0P75 U1089 ( .A1(n919), .A2(\sh_sync_inst/state [1]), .X(
        n1305) );
  UDB116SVT24_INV_0P75 U1090 ( .A(n1305), .X(n860) );
  UDB116SVT24_INV_0P75 U1091 ( .A(n1305), .X(n861) );
  UDB116SVT24_INV_0P75 U1092 ( .A(n1305), .X(n862) );
  UDB116SVT24_INV_0P75 U1093 ( .A(n1305), .X(n863) );
  UDB116SVT24_INV_0P75 U1094 ( .A(n1436), .X(n864) );
  UDB116SVT24_INV_0P75 U1095 ( .A(n864), .X(n865) );
  UDB116SVT24_INV_0P75 U1096 ( .A(n864), .X(n866) );
  UDB116SVT24_INV_0P75 U1097 ( .A(n864), .X(n867) );
  UDB116SVT24_INV_0P75 U1098 ( .A(n864), .X(n868) );
  UDB116SVT24_OR2_0P75 U1099 ( .A1(\CONFIG_inst/opcode_q [1]), .A2(n1144), .X(
        n1478) );
  UDB116SVT24_INV_0P75 U1100 ( .A(n1478), .X(n869) );
  UDB116SVT24_INV_0P75 U1101 ( .A(n1478), .X(n870) );
  UDB116SVT24_INV_0P75 U1102 ( .A(n1478), .X(n871) );
  UDB116SVT24_INV_0P75 U1103 ( .A(n1478), .X(n872) );
  UDB116SVT24_OR2_1 U1104 ( .A1(TX_BY), .A2(TX_OUT_I), .X(TX_OUT) );
  UDB116SVT24_INV_0P75 U1105 ( .A(n1578), .X(n873) );
  UDB116SVT24_INV_0P75 U1106 ( .A(n784), .X(n874) );
  UDB116SVT24_INV_0P75 U1107 ( .A(n783), .X(n875) );
  UDB116SVT24_INV_0P75 U1108 ( .A(n1288), .X(n876) );
  UDB116SVT24_INV_0P75 U1109 ( .A(n1288), .X(n877) );
  UDB116SVT24_OR2_0P75 U1110 ( .A1(n794), .A2(PKT_EN), .X(n1429) );
  UDB116SVT24_BUF_1 U1111 ( .A(rst), .X(n882) );
  UDB116SVT24_BUF_1 U1112 ( .A(rst), .X(n886) );
  UDB116SVT24_BUF_1 U1113 ( .A(n886), .X(n878) );
  UDB116SVT24_BUF_1 U1114 ( .A(n878), .X(n1561) );
  UDB116SVT24_BUF_1 U1115 ( .A(n878), .X(n1563) );
  UDB116SVT24_BUF_1 U1116 ( .A(n878), .X(n889) );
  UDB116SVT24_BUF_1 U1117 ( .A(n889), .X(n1565) );
  UDB116SVT24_BUF_1 U1118 ( .A(n878), .X(n879) );
  UDB116SVT24_BUF_1 U1119 ( .A(n879), .X(n1562) );
  UDB116SVT24_BUF_1 U1120 ( .A(n889), .X(n1566) );
  UDB116SVT24_BUF_1 U1121 ( .A(n886), .X(n1310) );
  UDB116SVT24_BUF_1 U1122 ( .A(n1310), .X(n1570) );
  UDB116SVT24_BUF_1 U1123 ( .A(n879), .X(n1568) );
  UDB116SVT24_BUF_1 U1124 ( .A(n879), .X(n1567) );
  UDB116SVT24_BUF_1 U1125 ( .A(n879), .X(n1569) );
  UDB116SVT24_BUF_1 U1126 ( .A(n886), .X(n1573) );
  UDB116SVT24_BUF_1 U1127 ( .A(n1310), .X(n1572) );
  UDB116SVT24_BUF_1 U1128 ( .A(n889), .X(n1571) );
  UDB116SVT24_BUF_1 U1129 ( .A(rst), .X(n1577) );
  UDB116SVT24_BUF_1 U1130 ( .A(n1577), .X(n880) );
  UDB116SVT24_BUF_1 U1131 ( .A(n880), .X(n881) );
  UDB116SVT24_BUF_1 U1132 ( .A(n881), .X(n1517) );
  UDB116SVT24_BUF_1 U1133 ( .A(n880), .X(n1575) );
  UDB116SVT24_BUF_1 U1134 ( .A(n1575), .X(n1521) );
  UDB116SVT24_BUF_1 U1135 ( .A(n880), .X(n1516) );
  UDB116SVT24_BUF_1 U1136 ( .A(n1577), .X(n1576) );
  UDB116SVT24_BUF_1 U1137 ( .A(n1576), .X(n892) );
  UDB116SVT24_BUF_1 U1138 ( .A(n892), .X(n1514) );
  UDB116SVT24_BUF_1 U1139 ( .A(n1577), .X(n1515) );
  UDB116SVT24_BUF_1 U1140 ( .A(n1575), .X(n1520) );
  UDB116SVT24_BUF_1 U1141 ( .A(n880), .X(n1518) );
  UDB116SVT24_BUF_1 U1142 ( .A(n881), .X(n1522) );
  UDB116SVT24_BUF_1 U1143 ( .A(n881), .X(n1523) );
  UDB116SVT24_BUF_1 U1144 ( .A(n881), .X(n1524) );
  UDB116SVT24_BUF_1 U1145 ( .A(n882), .X(n890) );
  UDB116SVT24_BUF_1 U1146 ( .A(n890), .X(n1525) );
  UDB116SVT24_BUF_1 U1147 ( .A(n882), .X(n885) );
  UDB116SVT24_BUF_1 U1148 ( .A(n885), .X(n1535) );
  UDB116SVT24_BUF_1 U1149 ( .A(n882), .X(n887) );
  UDB116SVT24_BUF_1 U1150 ( .A(n887), .X(n888) );
  UDB116SVT24_BUF_1 U1151 ( .A(n888), .X(n1534) );
  UDB116SVT24_BUF_1 U1152 ( .A(n890), .X(n883) );
  UDB116SVT24_BUF_1 U1153 ( .A(n883), .X(n1529) );
  UDB116SVT24_BUF_1 U1154 ( .A(n890), .X(n891) );
  UDB116SVT24_BUF_1 U1155 ( .A(n891), .X(n1531) );
  UDB116SVT24_BUF_1 U1156 ( .A(n883), .X(n1530) );
  UDB116SVT24_BUF_1 U1157 ( .A(n883), .X(n1528) );
  UDB116SVT24_BUF_1 U1158 ( .A(n882), .X(n884) );
  UDB116SVT24_BUF_1 U1159 ( .A(n884), .X(n1542) );
  UDB116SVT24_BUF_1 U1160 ( .A(n887), .X(n893) );
  UDB116SVT24_BUF_1 U1161 ( .A(n893), .X(n1543) );
  UDB116SVT24_BUF_1 U1162 ( .A(n885), .X(n1537) );
  UDB116SVT24_BUF_1 U1163 ( .A(n884), .X(n1541) );
  UDB116SVT24_BUF_1 U1164 ( .A(n883), .X(n1536) );
  UDB116SVT24_BUF_1 U1165 ( .A(n885), .X(n1538) );
  UDB116SVT24_BUF_1 U1166 ( .A(n884), .X(n1540) );
  UDB116SVT24_BUF_1 U1167 ( .A(n885), .X(n1539) );
  UDB116SVT24_BUF_1 U1168 ( .A(n891), .X(n1533) );
  UDB116SVT24_BUF_1 U1169 ( .A(n893), .X(n1545) );
  UDB116SVT24_BUF_1 U1170 ( .A(n888), .X(n1550) );
  UDB116SVT24_BUF_1 U1171 ( .A(n886), .X(n894) );
  UDB116SVT24_BUF_1 U1172 ( .A(n894), .X(n895) );
  UDB116SVT24_BUF_1 U1173 ( .A(n895), .X(n1559) );
  UDB116SVT24_BUF_1 U1174 ( .A(n887), .X(n1546) );
  UDB116SVT24_BUF_1 U1175 ( .A(n887), .X(n1548) );
  UDB116SVT24_BUF_1 U1176 ( .A(n895), .X(n1558) );
  UDB116SVT24_BUF_1 U1177 ( .A(n888), .X(n1549) );
  UDB116SVT24_BUF_1 U1178 ( .A(n892), .X(n1510) );
  UDB116SVT24_BUF_1 U1179 ( .A(n894), .X(n896) );
  UDB116SVT24_BUF_1 U1180 ( .A(n896), .X(n1557) );
  UDB116SVT24_BUF_1 U1181 ( .A(n888), .X(n1551) );
  UDB116SVT24_BUF_1 U1182 ( .A(n893), .X(n1547) );
  UDB116SVT24_BUF_1 U1183 ( .A(n1576), .X(n1513) );
  UDB116SVT24_BUF_1 U1184 ( .A(n889), .X(n1564) );
  UDB116SVT24_BUF_1 U1185 ( .A(n896), .X(n1555) );
  UDB116SVT24_BUF_1 U1186 ( .A(n894), .X(n1552) );
  UDB116SVT24_BUF_1 U1187 ( .A(n891), .X(n1532) );
  UDB116SVT24_BUF_1 U1188 ( .A(n892), .X(n1509) );
  UDB116SVT24_BUF_1 U1189 ( .A(n895), .X(n1560) );
  UDB116SVT24_BUF_1 U1190 ( .A(n890), .X(n1527) );
  UDB116SVT24_BUF_1 U1191 ( .A(n891), .X(n1526) );
  UDB116SVT24_BUF_1 U1192 ( .A(n1576), .X(n1512) );
  UDB116SVT24_BUF_1 U1193 ( .A(n892), .X(n1511) );
  UDB116SVT24_BUF_1 U1194 ( .A(n896), .X(n1556) );
  UDB116SVT24_BUF_1 U1195 ( .A(n893), .X(n1544) );
  UDB116SVT24_BUF_1 U1196 ( .A(n1575), .X(n1519) );
  UDB116SVT24_BUF_1 U1197 ( .A(n894), .X(n1554) );
  UDB116SVT24_BUF_1 U1198 ( .A(n895), .X(n1553) );
  UDB116SVT24_INV_0P75 U1199 ( .A(TX_SH), .X(n898) );
  UDB116SVT24_NR2_0P75 U1200 ( .A1(\sh_sync_inst/tx_rdy_prev ), .A2(n898), .X(
        \sh_sync_inst/N81 ) );
  UDB116SVT24_INV_0P75 U1201 ( .A(SPI_OUT_RDY), .X(n907) );
  UDB116SVT24_INV_0P75 U1202 ( .A(n772), .X(n1270) );
  UDB116SVT24_AOI21_0P75 U1203 ( .A1(\SPI_slave_inst/SS_prev ), .A2(n907), .B(
        n1270), .X(\SPI_slave_inst/n39 ) );
  UDB116SVT24_BUF_1 U1204 ( .A(n896), .X(n1574) );
  UDB116SVT24_INV_0P75 U1205 ( .A(RX), .X(n1269) );
  UDB116SVT24_ND2_MM_0P75 U1206 ( .A1(n1269), .A2(n691), .X(n897) );
  UDB116SVT24_AOI21_0P75 U1207 ( .A1(tx_state[1]), .A2(n696), .B(n897), .X(
        n1264) );
  UDB116SVT24_INV_0P75 U1208 ( .A(TX_LD), .X(n1473) );
  UDB116SVT24_INV_0P75 U1209 ( .A(tx_state[1]), .X(n925) );
  UDB116SVT24_ND3_0P75 U1210 ( .A1(n925), .A2(n696), .A3(SPI_OUT_RDY), .X(n902) );
  UDB116SVT24_OAI22_0P75 U1211 ( .A1(n1264), .A2(n757), .B1(n897), .B2(n902), 
        .X(n637) );
  UDB116SVT24_INV_0P75 U1212 ( .A(n1264), .X(n1263) );
  UDB116SVT24_AOI22_1 U1213 ( .A1(n1264), .A2(n832), .B1(n898), .B2(n1263), 
        .X(n636) );
  UDB116SVT24_NR2_0P75 U1214 ( .A1(n663), .A2(rx_state[1]), .X(n1504) );
  UDB116SVT24_NR2_0P75 U1215 ( .A1(n1269), .A2(i_CONFIG), .X(n1507) );
  UDB116SVT24_ND3_0P75 U1216 ( .A1(rx_state[0]), .A2(n1504), .A3(n718), .X(
        n1491) );
  UDB116SVT24_INV_0P75 U1217 ( .A(rx_state[1]), .X(n1488) );
  UDB116SVT24_AOI31_0P75 U1218 ( .A1(rx_state[0]), .A2(n772), .A3(n1488), .B(
        n1504), .X(n899) );
  UDB116SVT24_INV_0P75 U1219 ( .A(n1507), .X(n1493) );
  UDB116SVT24_NR2_0P75 U1220 ( .A1(n899), .A2(n1493), .X(n1497) );
  UDB116SVT24_INV_0P75 U1221 ( .A(n1497), .X(n910) );
  UDB116SVT24_INV_0P75 U1222 ( .A(rx_state[2]), .X(n1273) );
  UDB116SVT24_INV_0P75 U1223 ( .A(rx_state[0]), .X(n1494) );
  UDB116SVT24_NR3_0P75 U1224 ( .A1(rx_state[1]), .A2(n1273), .A3(n1494), .X(
        n1500) );
  UDB116SVT24_ND2_MM_0P75 U1225 ( .A1(n1500), .A2(n1497), .X(n1495) );
  UDB116SVT24_NR2_0P75 U1226 ( .A1(counter[0]), .A2(n1495), .X(n911) );
  UDB116SVT24_AOI21_0P75 U1227 ( .A1(counter[0]), .A2(n910), .B(n911), .X(n900) );
  UDB116SVT24_ND2_MM_0P75 U1228 ( .A1(n1491), .A2(n900), .X(n643) );
  UDB116SVT24_AOI21_0P75 U1229 ( .A1(n771), .A2(n925), .B(n696), .X(n904) );
  UDB116SVT24_NR4B_1 U1230 ( .A(counter3[3]), .B1(counter3[2]), .B2(
        counter3[0]), .B3(counter3[1]), .X(n901) );
  UDB116SVT24_NR3_0P75 U1231 ( .A1(n901), .A2(SH_EN_DONE), .A3(n925), .X(n1262) );
  UDB116SVT24_INV_0P75 U1232 ( .A(n1262), .X(n1276) );
  UDB116SVT24_INV_0P75 U1233 ( .A(n902), .X(n903) );
  UDB116SVT24_AOAI211_0P75 U1234 ( .A1(n904), .A2(n1276), .B(n903), .C(n691), 
        .X(n906) );
  UDB116SVT24_ND2_MM_0P75 U1235 ( .A1(n1493), .A2(n906), .X(n927) );
  UDB116SVT24_ND2_MM_0P75 U1236 ( .A1(n696), .A2(n1269), .X(n905) );
  UDB116SVT24_OAI22_0P75 U1237 ( .A1(n832), .A2(n927), .B1(n906), .B2(n905), 
        .X(n638) );
  UDB116SVT24_INV_0P75 U1238 ( .A(\CONFIG_inst/state [1]), .X(n960) );
  UDB116SVT24_NR2_0P75 U1239 ( .A1(\CONFIG_inst/spi_rx_valid_prev ), .A2(n907), 
        .X(n961) );
  UDB116SVT24_INV_0P75 U1240 ( .A(\CONFIG_inst/state [0]), .X(n1481) );
  UDB116SVT24_ND3_0P75 U1241 ( .A1(n961), .A2(\CONFIG_inst/i_CONFIG_sync2 ), 
        .A3(n1481), .X(n909) );
  UDB116SVT24_INV_0P75 U1242 ( .A(n909), .X(n915) );
  UDB116SVT24_ND2_MM_0P75 U1243 ( .A1(n960), .A2(n915), .X(n908) );
  UDB116SVT24_INV_0P75 U1244 ( .A(\CONFIG_inst/opcode_q [0]), .X(n1143) );
  UDB116SVT24_AOI22_1 U1245 ( .A1(n854), .A2(n760), .B1(n1143), .B2(n908), .X(
        \CONFIG_inst/n82 ) );
  UDB116SVT24_INV_0P75 U1246 ( .A(\CONFIG_inst/opcode_q [3]), .X(n964) );
  UDB116SVT24_AOI22_1 U1247 ( .A1(n855), .A2(n762), .B1(n964), .B2(n908), .X(
        \CONFIG_inst/n77 ) );
  UDB116SVT24_INV_0P75 U1248 ( .A(\CONFIG_inst/opcode_q [1]), .X(n1145) );
  UDB116SVT24_AOI22_1 U1249 ( .A1(n852), .A2(n764), .B1(n1145), .B2(n908), .X(
        \CONFIG_inst/n75 ) );
  UDB116SVT24_NR2_0P75 U1250 ( .A1(n960), .A2(n909), .X(n924) );
  UDB116SVT24_INV_0P75 U1251 ( .A(SPI_OUT[4]), .X(n1467) );
  UDB116SVT24_OA2BB2_0P75 U1252 ( .A1(n924), .A2(n1467), .B1(
        \CONFIG_inst/pay0 [4]), .B2(n706), .X(\CONFIG_inst/n88 ) );
  UDB116SVT24_NR2_0P75 U1253 ( .A1(\SPI_slave_inst/SS_prev ), .A2(n1270), .X(
        n1448) );
  UDB116SVT24_INV_0P75 U1254 ( .A(\SPI_slave_inst/SHIFT_REG [3]), .X(n980) );
  UDB116SVT24_INV_0P75 U1255 ( .A(n787), .X(n1447) );
  UDB116SVT24_AOI22_1 U1256 ( .A1(n1448), .A2(n980), .B1(n761), .B2(n766), .X(
        \SPI_slave_inst/n26 ) );
  UDB116SVT24_INV_0P75 U1257 ( .A(\SPI_slave_inst/SHIFT_REG [0]), .X(n1451) );
  UDB116SVT24_AOI22_1 U1258 ( .A1(n787), .A2(n1451), .B1(n760), .B2(n1447), 
        .X(\SPI_slave_inst/n36 ) );
  UDB116SVT24_INV_0P75 U1259 ( .A(\SPI_slave_inst/SHIFT_REG [2]), .X(n1457) );
  UDB116SVT24_INV_0P75 U1260 ( .A(SPI_OUT[2]), .X(n1470) );
  UDB116SVT24_AOI22_1 U1261 ( .A1(n787), .A2(n1457), .B1(n789), .B2(n766), .X(
        \SPI_slave_inst/n24 ) );
  UDB116SVT24_INV_0P75 U1262 ( .A(\SPI_slave_inst/SHIFT_REG [6]), .X(n1453) );
  UDB116SVT24_INV_0P75 U1263 ( .A(SPI_OUT[6]), .X(n1463) );
  UDB116SVT24_AOI22_1 U1264 ( .A1(n765), .A2(n1453), .B1(n1463), .B2(n786), 
        .X(\SPI_slave_inst/n32 ) );
  UDB116SVT24_INV_0P75 U1265 ( .A(\SPI_slave_inst/SHIFT_REG [4]), .X(n978) );
  UDB116SVT24_AOI22_1 U1266 ( .A1(n1448), .A2(n978), .B1(n1467), .B2(n766), 
        .X(\SPI_slave_inst/n28 ) );
  UDB116SVT24_INV_0P75 U1267 ( .A(\SPI_slave_inst/SHIFT_REG [7]), .X(n1309) );
  UDB116SVT24_INV_0P75 U1268 ( .A(SPI_OUT[7]), .X(n1461) );
  UDB116SVT24_AOI22_1 U1269 ( .A1(n787), .A2(n1309), .B1(n1461), .B2(n786), 
        .X(\SPI_slave_inst/n34 ) );
  UDB116SVT24_AOI21_0P75 U1270 ( .A1(counter[0]), .A2(n1500), .B(n910), .X(
        n917) );
  UDB116SVT24_INV_0P75 U1271 ( .A(counter[1]), .X(n912) );
  UDB116SVT24_ND2_MM_0P75 U1272 ( .A1(n911), .A2(n912), .X(n1503) );
  UDB116SVT24_OAI211_0P75 U1273 ( .A1(n917), .A2(n912), .B1(n1503), .B2(n1491), 
        .X(n642) );
  UDB116SVT24_INV_0P75 U1274 ( .A(n961), .X(n913) );
  UDB116SVT24_OAI211_0P75 U1275 ( .A1(n1481), .A2(n960), .B1(
        \CONFIG_inst/i_CONFIG_sync2 ), .B2(n913), .X(n951) );
  UDB116SVT24_INV_0P75 U1276 ( .A(n753), .X(n923) );
  UDB116SVT24_INV_0P75 U1277 ( .A(SPI_OUT[5]), .X(n1465) );
  UDB116SVT24_ND4_0P75 U1278 ( .A1(SPI_OUT[7]), .A2(SPI_OUT[6]), .A3(
        SPI_OUT[4]), .A4(SPI_OUT[3]), .X(n914) );
  UDB116SVT24_NR2_0P75 U1279 ( .A1(n1465), .A2(n914), .X(n949) );
  UDB116SVT24_ND4_0P75 U1280 ( .A1(SPI_OUT[1]), .A2(n915), .A3(n949), .A4(n789), .X(n916) );
  UDB116SVT24_OAI211_0P75 U1281 ( .A1(n951), .A2(n1481), .B1(n752), .B2(n916), 
        .X(\CONFIG_inst/n106 ) );
  UDB116SVT24_AOI21B_0P75 U1282 ( .A1(counter[1]), .A2(n662), .B(n917), .X(
        n1498) );
  UDB116SVT24_INV_0P75 U1283 ( .A(counter[2]), .X(n918) );
  UDB116SVT24_AOI22_1 U1284 ( .A1(counter[2]), .A2(n1498), .B1(n1503), .B2(
        n918), .X(n641) );
  UDB116SVT24_NR2_0P75 U1285 ( .A1(n700), .A2(\sh_sync_inst/state [0]), .X(
        n956) );
  UDB116SVT24_INV_0P75 U1286 ( .A(\sh_sync_inst/state [0]), .X(n943) );
  UDB116SVT24_NR2_0P75 U1287 ( .A1(n943), .A2(n700), .X(n1099) );
  UDB116SVT24_INV_0P75 U1288 ( .A(n1099), .X(n919) );
  UDB116SVT24_INV_0P75 U1289 ( .A(FSM_RST), .X(n922) );
  UDB116SVT24_INV_0P75 U1290 ( .A(\sh_sync_inst/timeout_counter [8]), .X(n1392) );
  UDB116SVT24_AOAI211_0P75 U1291 ( .A1(\sh_sync_inst/timeout_counter [5]), 
        .A2(\sh_sync_inst/timeout_counter [4]), .B(
        \sh_sync_inst/timeout_counter [6]), .C(
        \sh_sync_inst/timeout_counter [7]), .X(n920) );
  UDB116SVT24_ND2_MM_0P75 U1292 ( .A1(\sh_sync_inst/timeout_counter [10]), 
        .A2(\sh_sync_inst/timeout_counter [9]), .X(n1074) );
  UDB116SVT24_AOI21_0P75 U1293 ( .A1(n1392), .A2(n920), .B(n1074), .X(n921) );
  UDB116SVT24_OAI211_0P75 U1294 ( .A1(\sh_sync_inst/timeout_counter [11]), 
        .A2(n921), .B1(\sh_sync_inst/timeout_counter [12]), .B2(
        \sh_sync_inst/timeout_counter [13]), .X(n928) );
  UDB116SVT24_ND2B_0P75 U1295 ( .A(\sh_sync_inst/rfin_edge ), .B(n928), .X(
        n988) );
  UDB116SVT24_ND2_MM_0P75 U1296 ( .A1(n988), .A2(n861), .X(n1076) );
  UDB116SVT24_OAI31_1 U1297 ( .A1(n956), .A2(n860), .A3(n922), .B(n1076), .X(
        \sh_sync_inst/n194 ) );
  UDB116SVT24_INV_0P75 U1298 ( .A(\CONFIG_inst/pay0 [2]), .X(n1070) );
  UDB116SVT24_AOI22_1 U1299 ( .A1(n753), .A2(n789), .B1(n1070), .B2(n752), .X(
        \CONFIG_inst/n86 ) );
  UDB116SVT24_INV_0P75 U1300 ( .A(\CONFIG_inst/pay0 [5]), .X(n1055) );
  UDB116SVT24_AOI22_1 U1301 ( .A1(n924), .A2(n722), .B1(n1055), .B2(n923), .X(
        \CONFIG_inst/n89 ) );
  UDB116SVT24_INV_0P75 U1302 ( .A(\CONFIG_inst/pay0 [1]), .X(n1067) );
  UDB116SVT24_AOI22_1 U1303 ( .A1(n753), .A2(n763), .B1(n1067), .B2(n923), .X(
        \CONFIG_inst/n85 ) );
  UDB116SVT24_INV_0P75 U1304 ( .A(\CONFIG_inst/pay0 [3]), .X(n1059) );
  UDB116SVT24_AOI22_1 U1305 ( .A1(n924), .A2(n761), .B1(n1059), .B2(n752), .X(
        \CONFIG_inst/n87 ) );
  UDB116SVT24_INV_0P75 U1306 ( .A(\CONFIG_inst/pay0 [0]), .X(n1064) );
  UDB116SVT24_AOI22_1 U1307 ( .A1(n753), .A2(n759), .B1(n1064), .B2(n923), .X(
        \CONFIG_inst/n92 ) );
  UDB116SVT24_ND3_0P75 U1308 ( .A1(n927), .A2(n925), .A3(n695), .X(n926) );
  UDB116SVT24_OAI22_0P75 U1309 ( .A1(n927), .A2(n695), .B1(n792), .B2(n926), 
        .X(n639) );
  UDB116SVT24_INV_0P75 U1310 ( .A(\sh_sync_inst/pulse_count [0]), .X(n933) );
  UDB116SVT24_INV_0P75 U1311 ( .A(n698), .X(n1098) );
  UDB116SVT24_INV_0P75 U1312 ( .A(n700), .X(n1255) );
  UDB116SVT24_OAI211_0P75 U1313 ( .A1(n943), .A2(\sh_sync_inst/rfin_edge ), 
        .B1(n1098), .B2(n1255), .X(n945) );
  UDB116SVT24_AOI21_0P75 U1314 ( .A1(n860), .A2(n933), .B(n945), .X(n968) );
  UDB116SVT24_ND3_0P75 U1315 ( .A1(n863), .A2(n666), .A3(
        \sh_sync_inst/pulse_count [0]), .X(n966) );
  UDB116SVT24_INV_0P75 U1316 ( .A(\sh_sync_inst/pulse_count [1]), .X(n967) );
  UDB116SVT24_AOI22_1 U1317 ( .A1(\sh_sync_inst/pulse_count [1]), .A2(n968), 
        .B1(n966), .B2(n967), .X(\sh_sync_inst/n244 ) );
  UDB116SVT24_ND2_MM_0P75 U1318 ( .A1(\sh_sync_inst/state [1]), .A2(n1099), 
        .X(n1258) );
  UDB116SVT24_INV_0P75 U1319 ( .A(n1258), .X(n1133) );
  UDB116SVT24_ND2_MM_0P75 U1320 ( .A1(\sh_sync_inst/pulse_gen_count [4]), .A2(
        \sh_sync_inst/pulse_gen_count [3]), .X(n991) );
  UDB116SVT24_INV_0P75 U1321 ( .A(\sh_sync_inst/pulse_gen_count [0]), .X(n1134) );
  UDB116SVT24_NR2_0P75 U1322 ( .A1(\sh_sync_inst/pulse_gen_count [2]), .A2(
        \sh_sync_inst/pulse_gen_count [1]), .X(n992) );
  UDB116SVT24_OR3B_0P75 U1323 ( .B1(n991), .B2(n1134), .A(n992), .X(n952) );
  UDB116SVT24_NR2_0P75 U1324 ( .A1(n698), .A2(\sh_sync_inst/state [0]), .X(
        n1375) );
  UDB116SVT24_AOI21_0P75 U1325 ( .A1(n1133), .A2(n952), .B(n677), .X(n932) );
  UDB116SVT24_NR3_0P75 U1326 ( .A1(\sh_sync_inst/pulse_count [2]), .A2(
        \sh_sync_inst/pulse_count [1]), .A3(\sh_sync_inst/pulse_count [0]), 
        .X(n946) );
  UDB116SVT24_ND2_MM_0P75 U1327 ( .A1(n946), .A2(\sh_sync_inst/pulse_count [3]), .X(n1400) );
  UDB116SVT24_ND3_0P75 U1328 ( .A1(n862), .A2(n928), .A3(n1400), .X(n954) );
  UDB116SVT24_ND2_MM_0P75 U1329 ( .A1(\sh_sync_inst/state [2]), .A2(n1375), 
        .X(n1127) );
  UDB116SVT24_INV_0P75 U1330 ( .A(n1127), .X(n1339) );
  UDB116SVT24_ND3_0P75 U1331 ( .A1(\sh_sync_inst/state [2]), .A2(n664), .A3(
        n1098), .X(n1096) );
  UDB116SVT24_NR2_0P75 U1332 ( .A1(n791), .A2(n1096), .X(n931) );
  UDB116SVT24_NR4_0P75 U1333 ( .A1(\sh_sync_inst/pulse_pack_count [6]), .A2(
        \sh_sync_inst/pulse_pack_count [4]), .A3(
        \sh_sync_inst/pulse_pack_count [2]), .A4(
        \sh_sync_inst/pulse_pack_count [1]), .X(n929) );
  UDB116SVT24_INV_0P75 U1334 ( .A(\sh_sync_inst/pulse_pack_count [0]), .X(
        n1103) );
  UDB116SVT24_ND4B_1 U1335 ( .A(\sh_sync_inst/pulse_pack_count [3]), .B1(
        \sh_sync_inst/pulse_pack_count [5]), .B2(n929), .B3(n1103), .X(n930)
         );
  UDB116SVT24_AOI22_1 U1336 ( .A1(n1339), .A2(\sh_sync_inst/tx_rdy_p ), .B1(
        n931), .B2(n930), .X(n958) );
  UDB116SVT24_AOAI211_0P75 U1337 ( .A1(n932), .A2(n954), .B(RX), .C(n958), .X(
        \sh_sync_inst/n248 ) );
  UDB116SVT24_AOI21_0P75 U1338 ( .A1(n933), .A2(n945), .B(n968), .X(
        \sh_sync_inst/n245 ) );
  UDB116SVT24_OAI21_0P75 U1339 ( .A1(\sh_sync_inst/interval_sum [14]), .A2(
        n667), .B(n703), .X(n936) );
  UDB116SVT24_AOI21_0P75 U1340 ( .A1(n716), .A2(
        \sh_sync_inst/interval_sum [17]), .B(\sh_sync_inst/interval_sum [13]), 
        .X(n935) );
  UDB116SVT24_ND2_MM_0P75 U1341 ( .A1(n839), .A2(n936), .X(n934) );
  UDB116SVT24_OAI31_1 U1342 ( .A1(n840), .A2(n936), .A3(n935), .B(n934), .X(
        n1368) );
  UDB116SVT24_ND2_MM_0P75 U1343 ( .A1(\sh_sync_inst/interval_sum [13]), .A2(
        n1368), .X(n1081) );
  UDB116SVT24_OAI21_0P75 U1344 ( .A1(\sh_sync_inst/interval_sum [13]), .A2(
        n1368), .B(n1081), .X(n1082) );
  UDB116SVT24_INV_0P75 U1345 ( .A(\sh_sync_inst/interval_sum [17]), .X(n1180)
         );
  UDB116SVT24_AOI21_0P75 U1346 ( .A1(n839), .A2(n703), .B(n1180), .X(n938) );
  UDB116SVT24_NR2_0P75 U1347 ( .A1(\sh_sync_inst/interval_sum [14]), .A2(n938), 
        .X(n940) );
  UDB116SVT24_ND2_MM_0P75 U1348 ( .A1(n840), .A2(
        \sh_sync_inst/interval_sum [15]), .X(n937) );
  UDB116SVT24_NR2_0P75 U1349 ( .A1(\sh_sync_inst/interval_sum [17]), .A2(n937), 
        .X(n1178) );
  UDB116SVT24_OAI21_0P75 U1350 ( .A1(n938), .A2(n1178), .B(n716), .X(n939) );
  UDB116SVT24_ND2B_0P75 U1351 ( .A(n940), .B(n939), .X(n1087) );
  UDB116SVT24_INV_0P75 U1352 ( .A(\sh_sync_inst/interval_sum [12]), .X(n1083)
         );
  UDB116SVT24_NR3_0P75 U1353 ( .A1(n1082), .A2(n1087), .A3(n1083), .X(n1085)
         );
  UDB116SVT24_INV_0P75 U1354 ( .A(\sh_sync_inst/interval_sum [15]), .X(n1355)
         );
  UDB116SVT24_AOI21_0P75 U1355 ( .A1(\sh_sync_inst/interval_sum [17]), .A2(
        n839), .B(n1355), .X(n942) );
  UDB116SVT24_OAI21_0P75 U1356 ( .A1(n940), .A2(n1081), .B(n939), .X(n941) );
  UDB116SVT24_EO2_V2_1 U1357 ( .A1(n942), .A2(n941), .X(n1091) );
  UDB116SVT24_NR2_0P75 U1358 ( .A1(n1085), .A2(n1091), .X(n1084) );
  UDB116SVT24_ND3_0P75 U1359 ( .A1(n1255), .A2(n943), .A3(
        \sh_sync_inst/state [1]), .X(n1249) );
  UDB116SVT24_NR2_0P75 U1360 ( .A1(n1249), .A2(ext_counter_flag_RX), .X(n1369)
         );
  UDB116SVT24_INV_0P75 U1361 ( .A(ext_counter_flag_RX), .X(n965) );
  UDB116SVT24_AOI22_1 U1362 ( .A1(ext_count_val_RX[12]), .A2(n857), .B1(
        \sh_sync_inst/avg_interval [12]), .B2(n799), .X(n944) );
  UDB116SVT24_OAI21_0P75 U1363 ( .A1(n1084), .A2(n842), .B(n944), .X(
        \sh_sync_inst/n175 ) );
  UDB116SVT24_OA2BB2_0P75 U1364 ( .A1(n853), .A2(n1463), .B1(
        \CONFIG_inst/opcode_q [6]), .B2(n853), .X(\CONFIG_inst/n80 ) );
  UDB116SVT24_OA2BB2_0P75 U1365 ( .A1(n854), .A2(n722), .B1(
        \CONFIG_inst/opcode_q [5]), .B2(n854), .X(\CONFIG_inst/n79 ) );
  UDB116SVT24_OA2BB2_0P75 U1366 ( .A1(n855), .A2(n721), .B1(
        \CONFIG_inst/opcode_q [4]), .B2(n855), .X(\CONFIG_inst/n78 ) );
  UDB116SVT24_OA2BB2_0P75 U1367 ( .A1(n852), .A2(n1461), .B1(
        \CONFIG_inst/opcode_q [7]), .B2(n852), .X(\CONFIG_inst/n81 ) );
  UDB116SVT24_OA2BB2_0P75 U1368 ( .A1(n853), .A2(n1470), .B1(
        \CONFIG_inst/opcode_q [2]), .B2(n853), .X(\CONFIG_inst/n76 ) );
  UDB116SVT24_ND2_MM_0P75 U1369 ( .A1(n1375), .A2(n1255), .X(n1373) );
  UDB116SVT24_INV_0P75 U1370 ( .A(\sh_sync_inst/pulse_count [3]), .X(n947) );
  UDB116SVT24_AOI31_0P75 U1371 ( .A1(n1373), .A2(n947), .A3(n946), .B(n945), 
        .X(n1351) );
  UDB116SVT24_ND2_MM_0P75 U1372 ( .A1(n862), .A2(n1351), .X(n1347) );
  UDB116SVT24_INV_0P75 U1373 ( .A(n1351), .X(n1385) );
  UDB116SVT24_AOAI211_0P75 U1374 ( .A1(n862), .A2(n768), .B(n809), .C(
        \sh_sync_inst/interval_sum [0]), .X(n948) );
  UDB116SVT24_OAI31_1 U1375 ( .A1(\sh_sync_inst/interval_sum [0]), .A2(n768), 
        .A3(n1347), .B(n948), .X(\sh_sync_inst/n234 ) );
  UDB116SVT24_INV_0P75 U1376 ( .A(n988), .X(n1072) );
  UDB116SVT24_ND2_MM_0P75 U1377 ( .A1(n861), .A2(n1072), .X(n1041) );
  UDB116SVT24_INV_0P75 U1378 ( .A(\sh_sync_inst/timeout_counter [0]), .X(n973)
         );
  UDB116SVT24_AOI22_1 U1379 ( .A1(\sh_sync_inst/timeout_counter [0]), .A2(n862), .B1(n1041), .B2(n973), .X(\sh_sync_inst/n191 ) );
  UDB116SVT24_ND3_0P75 U1380 ( .A1(n852), .A2(n949), .A3(n763), .X(n959) );
  UDB116SVT24_OAI22_0P75 U1381 ( .A1(SPI_OUT[2]), .A2(n959), .B1(n960), .B2(
        n951), .X(\CONFIG_inst/n105 ) );
  UDB116SVT24_NR2B_0P75 U1382 ( .A(\sh_sync_inst/rfin_sync2 ), .B(
        \sh_sync_inst/rfin_prev ), .X(\sh_sync_inst/N79 ) );
  UDB116SVT24_NR2_0P75 U1383 ( .A1(\sh_sync_inst/state [2]), .A2(n1098), .X(
        n953) );
  UDB116SVT24_INV_0P75 U1384 ( .A(n799), .X(n1372) );
  UDB116SVT24_AOI31_0P75 U1385 ( .A1(n792), .A2(n953), .A3(n952), .B(n684), 
        .X(n1399) );
  UDB116SVT24_INV_0P75 U1386 ( .A(n954), .X(n955) );
  UDB116SVT24_AOAI211_0P75 U1387 ( .A1(n956), .A2(\sh_sync_inst/N79 ), .B(n955), .C(n792), .X(n957) );
  UDB116SVT24_ND3_0P75 U1388 ( .A1(n1399), .A2(n958), .A3(n957), .X(
        \sh_sync_inst/n247 ) );
  UDB116SVT24_NR2_0P75 U1389 ( .A1(n788), .A2(n959), .X(n1479) );
  UDB116SVT24_ND4_0P75 U1390 ( .A1(\CONFIG_inst/i_CONFIG_sync2 ), .A2(
        \CONFIG_inst/state [0]), .A3(\CONFIG_inst/opcode_q [4]), .A4(n682), 
        .X(n963) );
  UDB116SVT24_ND4_0P75 U1391 ( .A1(\CONFIG_inst/opcode_q [7]), .A2(
        \CONFIG_inst/opcode_q [5]), .A3(n961), .A4(\CONFIG_inst/opcode_q [6]), 
        .X(n962) );
  UDB116SVT24_NR4_0P75 U1392 ( .A1(\CONFIG_inst/opcode_q [2]), .A2(n964), .A3(
        n963), .A4(n962), .X(n1142) );
  UDB116SVT24_ND3_0P75 U1393 ( .A1(n1145), .A2(n1142), .A3(n1143), .X(n1476)
         );
  UDB116SVT24_AOAI211_0P75 U1394 ( .A1(n1479), .A2(n759), .B(n965), .C(n1476), 
        .X(\CONFIG_inst/n84 ) );
  UDB116SVT24_OR2_0P75 U1395 ( .A1(n967), .A2(n966), .X(n971) );
  UDB116SVT24_INV_0P75 U1396 ( .A(\sh_sync_inst/pulse_count [2]), .X(n972) );
  UDB116SVT24_INV_0P75 U1397 ( .A(n860), .X(n1401) );
  UDB116SVT24_OAI21_0P75 U1398 ( .A1(\sh_sync_inst/pulse_count [1]), .A2(n723), 
        .B(n968), .X(n969) );
  UDB116SVT24_OA2BB2_0P75 U1399 ( .A1(n971), .A2(n972), .B1(n972), .B2(n969), 
        .X(\sh_sync_inst/n243 ) );
  UDB116SVT24_ND2_MM_0P75 U1400 ( .A1(\CONFIG_inst/opcode_q [0]), .A2(n1142), 
        .X(n1144) );
  UDB116SVT24_OA2BB2_0P75 U1401 ( .A1(n869), .A2(n759), .B1(
        ext_count_val_TX[0]), .B2(n871), .X(\CONFIG_inst/n74 ) );
  UDB116SVT24_AOAI211_0P75 U1402 ( .A1(n863), .A2(n972), .B(n969), .C(
        \sh_sync_inst/pulse_count [3]), .X(n970) );
  UDB116SVT24_OAI31_1 U1403 ( .A1(\sh_sync_inst/pulse_count [3]), .A2(n972), 
        .A3(n971), .B(n970), .X(\sh_sync_inst/n246 ) );
  UDB116SVT24_INV_0P75 U1404 ( .A(\sh_sync_inst/timeout_counter [7]), .X(n1043) );
  UDB116SVT24_INV_0P75 U1405 ( .A(\sh_sync_inst/timeout_counter [5]), .X(n1046) );
  UDB116SVT24_AN3B_0P75 U1406 ( .B1(\sh_sync_inst/timeout_counter [2]), .B2(
        \sh_sync_inst/timeout_counter [1]), .A(n973), .X(n1326) );
  UDB116SVT24_ND2_MM_0P75 U1407 ( .A1(n1326), .A2(
        \sh_sync_inst/timeout_counter [3]), .X(n990) );
  UDB116SVT24_ND2B_0P75 U1408 ( .A(n990), .B(\sh_sync_inst/timeout_counter [4]), .X(n1045) );
  UDB116SVT24_NR2_0P75 U1409 ( .A1(n1046), .A2(n1045), .X(n1386) );
  UDB116SVT24_ND2_MM_0P75 U1410 ( .A1(\sh_sync_inst/timeout_counter [6]), .A2(
        n1386), .X(n1042) );
  UDB116SVT24_NR2_0P75 U1411 ( .A1(n1043), .A2(n1042), .X(n1391) );
  UDB116SVT24_ND2_MM_0P75 U1412 ( .A1(\sh_sync_inst/timeout_counter [8]), .A2(
        n1391), .X(n974) );
  UDB116SVT24_OR2_0P75 U1413 ( .A1(n974), .A2(n755), .X(n1073) );
  UDB116SVT24_INV_0P75 U1414 ( .A(\sh_sync_inst/timeout_counter [9]), .X(n981)
         );
  UDB116SVT24_AOI21_0P75 U1415 ( .A1(n1072), .A2(n974), .B(n723), .X(n1071) );
  UDB116SVT24_OAI21_0P75 U1416 ( .A1(\sh_sync_inst/timeout_counter [9]), .A2(
        n755), .B(n1071), .X(n975) );
  UDB116SVT24_ND2_MM_0P75 U1417 ( .A1(\sh_sync_inst/timeout_counter [10]), 
        .A2(n975), .X(n976) );
  UDB116SVT24_OAI31_1 U1418 ( .A1(n1073), .A2(n981), .A3(
        \sh_sync_inst/timeout_counter [10]), .B(n976), .X(\sh_sync_inst/n181 )
         );
  UDB116SVT24_INV_0P75 U1419 ( .A(\SPI_slave_inst/SCK_sync_1 ), .X(n1313) );
  UDB116SVT24_NR2B_0P75 U1420 ( .A(\SPI_slave_inst/SS_prev ), .B(n771), .X(
        n1455) );
  UDB116SVT24_AOAI211_0P75 U1421 ( .A1(n1313), .A2(\SPI_slave_inst/SCK_prev ), 
        .B(n1455), .C(n1270), .X(n1449) );
  UDB116SVT24_NR2_0P75 U1422 ( .A1(n1449), .A2(n846), .X(n1454) );
  UDB116SVT24_INV_0P75 U1423 ( .A(n1454), .X(n985) );
  UDB116SVT24_AOI22_1 U1424 ( .A1(n847), .A2(SPI_IN[5]), .B1(
        \SPI_slave_inst/SHIFT_REG [5]), .B2(n712), .X(n977) );
  UDB116SVT24_OAI21_0P75 U1425 ( .A1(n985), .A2(n978), .B(n977), .X(
        \SPI_slave_inst/n31 ) );
  UDB116SVT24_AOI22_1 U1426 ( .A1(n846), .A2(SPI_IN[4]), .B1(
        \SPI_slave_inst/SHIFT_REG [4]), .B2(n712), .X(n979) );
  UDB116SVT24_OAI21_0P75 U1427 ( .A1(n985), .A2(n980), .B(n979), .X(
        \SPI_slave_inst/n29 ) );
  UDB116SVT24_AOI22_1 U1428 ( .A1(\sh_sync_inst/timeout_counter [9]), .A2(
        n1071), .B1(n1073), .B2(n981), .X(\sh_sync_inst/n182 ) );
  UDB116SVT24_AOI22_1 U1429 ( .A1(n846), .A2(SPI_IN[3]), .B1(
        \SPI_slave_inst/SHIFT_REG [3]), .B2(n712), .X(n982) );
  UDB116SVT24_OAI21_0P75 U1430 ( .A1(n985), .A2(n1457), .B(n982), .X(
        \SPI_slave_inst/n27 ) );
  UDB116SVT24_AOI22_1 U1431 ( .A1(n847), .A2(SPI_IN[1]), .B1(
        \SPI_slave_inst/SHIFT_REG [1]), .B2(n1449), .X(n983) );
  UDB116SVT24_OAI21_0P75 U1432 ( .A1(n685), .A2(n1451), .B(n983), .X(
        \SPI_slave_inst/n23 ) );
  UDB116SVT24_AOI22_1 U1433 ( .A1(n1455), .A2(SPI_IN[7]), .B1(
        \SPI_slave_inst/SHIFT_REG [7]), .B2(n712), .X(n984) );
  UDB116SVT24_OAI21_0P75 U1434 ( .A1(n685), .A2(n1453), .B(n984), .X(
        \SPI_slave_inst/n35 ) );
  UDB116SVT24_ND2_MM_0P75 U1435 ( .A1(\sh_sync_inst/timeout_counter [0]), .A2(
        \sh_sync_inst/timeout_counter [1]), .X(n987) );
  UDB116SVT24_NR2_0P75 U1436 ( .A1(\sh_sync_inst/timeout_counter [1]), .A2(
        n689), .X(n1328) );
  UDB116SVT24_OAI21_0P75 U1437 ( .A1(n675), .A2(n988), .B(n863), .X(n1327) );
  UDB116SVT24_OAI21_0P75 U1438 ( .A1(n1328), .A2(n1327), .B(
        \sh_sync_inst/timeout_counter [2]), .X(n986) );
  UDB116SVT24_OAI31_1 U1439 ( .A1(\sh_sync_inst/timeout_counter [2]), .A2(n987), .A3(n689), .B(n986), .X(\sh_sync_inst/n189 ) );
  UDB116SVT24_NR2_0P75 U1440 ( .A1(\sh_sync_inst/timeout_counter [3]), .A2(
        n755), .X(n1325) );
  UDB116SVT24_OAI21_0P75 U1441 ( .A1(n1326), .A2(n988), .B(n860), .X(n1324) );
  UDB116SVT24_OAI21_0P75 U1442 ( .A1(n1325), .A2(n1324), .B(
        \sh_sync_inst/timeout_counter [4]), .X(n989) );
  UDB116SVT24_OAI31_1 U1443 ( .A1(\sh_sync_inst/timeout_counter [4]), .A2(n990), .A3(n755), .B(n989), .X(\sh_sync_inst/n187 ) );
  UDB116SVT24_NR2_0P75 U1444 ( .A1(n992), .A2(n991), .X(n1097) );
  UDB116SVT24_INV_0P75 U1445 ( .A(\sh_sync_inst/avg_interval [0]), .X(n993) );
  UDB116SVT24_INV_0P75 U1446 ( .A(\sh_sync_inst/avg_interval [6]), .X(n1320)
         );
  UDB116SVT24_INV_0P75 U1447 ( .A(n714), .X(n1094) );
  UDB116SVT24_AOI2222_V2_0P75 U1448 ( .A1(n993), .A2(n742), .B1(
        \sh_sync_inst/counter [6]), .B2(n1320), .C1(n769), .C2(
        \sh_sync_inst/avg_interval [0]), .D1(\sh_sync_inst/avg_interval [6]), 
        .D2(n1094), .X(n1023) );
  UDB116SVT24_INV_0P75 U1449 ( .A(\sh_sync_inst/avg_interval [2]), .X(n1004)
         );
  UDB116SVT24_INV_0P75 U1450 ( .A(\sh_sync_inst/avg_interval [4]), .X(n1317)
         );
  UDB116SVT24_INV_0P75 U1451 ( .A(n745), .X(n1032) );
  UDB116SVT24_INV_0P75 U1452 ( .A(\sh_sync_inst/counter [4]), .X(n1131) );
  UDB116SVT24_AOI2222_V2_0P75 U1453 ( .A1(n1004), .A2(n745), .B1(
        \sh_sync_inst/counter [4]), .B2(n1317), .C1(n1032), .C2(
        \sh_sync_inst/avg_interval [2]), .D1(\sh_sync_inst/avg_interval [4]), 
        .D2(n1131), .X(n1022) );
  UDB116SVT24_INV_0P75 U1454 ( .A(n777), .X(n1353) );
  UDB116SVT24_INV_0P75 U1455 ( .A(\sh_sync_inst/avg_interval [1]), .X(n1005)
         );
  UDB116SVT24_AOI22_1 U1456 ( .A1(\sh_sync_inst/avg_interval [1]), .A2(n777), 
        .B1(n1353), .B2(n1005), .X(n1000) );
  UDB116SVT24_INV_0P75 U1457 ( .A(\sh_sync_inst/avg_interval [13]), .X(n1371)
         );
  UDB116SVT24_INV_0P75 U1458 ( .A(\sh_sync_inst/counter [13]), .X(n1381) );
  UDB116SVT24_AOI22_1 U1459 ( .A1(\sh_sync_inst/counter [13]), .A2(
        \sh_sync_inst/avg_interval [13]), .B1(n1371), .B2(n687), .X(n999) );
  UDB116SVT24_INV_0P75 U1460 ( .A(\sh_sync_inst/avg_interval [9]), .X(n1002)
         );
  UDB116SVT24_INV_0P75 U1461 ( .A(\sh_sync_inst/avg_interval [11]), .X(n1008)
         );
  UDB116SVT24_AOI2222_V2_0P75 U1462 ( .A1(n1002), .A2(n751), .B1(
        \sh_sync_inst/avg_interval [11]), .B2(n738), .C1(n710), .C2(
        \sh_sync_inst/avg_interval [9]), .D1(n740), .D2(n1008), .X(n997) );
  UDB116SVT24_INV_0P75 U1463 ( .A(\sh_sync_inst/avg_interval [10]), .X(n1323)
         );
  UDB116SVT24_INV_0P75 U1464 ( .A(n841), .X(n1376) );
  UDB116SVT24_INV_0P75 U1465 ( .A(\sh_sync_inst/avg_interval [12]), .X(n1011)
         );
  UDB116SVT24_AOI2222_V2_0P75 U1466 ( .A1(n1323), .A2(n841), .B1(
        \sh_sync_inst/avg_interval [12]), .B2(n688), .C1(n1376), .C2(
        \sh_sync_inst/avg_interval [10]), .D1(n737), .D2(n1011), .X(n996) );
  UDB116SVT24_INV_0P75 U1467 ( .A(\sh_sync_inst/avg_interval [7]), .X(n1009)
         );
  UDB116SVT24_INV_0P75 U1468 ( .A(n747), .X(n1124) );
  UDB116SVT24_INV_0P75 U1469 ( .A(n780), .X(n1026) );
  UDB116SVT24_INV_0P75 U1470 ( .A(\sh_sync_inst/avg_interval [8]), .X(n1001)
         );
  UDB116SVT24_AOI2222_V2_0P75 U1471 ( .A1(n1009), .A2(n781), .B1(
        \sh_sync_inst/avg_interval [8]), .B2(n1124), .C1(n1026), .C2(
        \sh_sync_inst/avg_interval [7]), .D1(n747), .D2(n1001), .X(n995) );
  UDB116SVT24_INV_0P75 U1472 ( .A(\sh_sync_inst/avg_interval [3]), .X(n1003)
         );
  UDB116SVT24_INV_0P75 U1473 ( .A(n774), .X(n1027) );
  UDB116SVT24_INV_0P75 U1474 ( .A(\sh_sync_inst/counter [3]), .X(n1129) );
  UDB116SVT24_INV_0P75 U1475 ( .A(\sh_sync_inst/avg_interval [5]), .X(n1010)
         );
  UDB116SVT24_AOI2222_V2_0P75 U1476 ( .A1(n1003), .A2(
        \sh_sync_inst/counter [3]), .B1(\sh_sync_inst/avg_interval [5]), .B2(
        n1027), .C1(n727), .C2(\sh_sync_inst/avg_interval [3]), .D1(n775), 
        .D2(n1010), .X(n994) );
  UDB116SVT24_ND4_0P75 U1477 ( .A1(n997), .A2(n996), .A3(n995), .A4(n994), .X(
        n998) );
  UDB116SVT24_NR4_0P75 U1478 ( .A1(\sh_sync_inst/first_pulse_flag ), .A2(n1000), .A3(n999), .A4(n998), .X(n1021) );
  UDB116SVT24_AOI22_1 U1479 ( .A1(\sh_sync_inst/avg_interval [8]), .A2(n781), 
        .B1(n1026), .B2(n1001), .X(n1019) );
  UDB116SVT24_AOI22_1 U1480 ( .A1(\sh_sync_inst/avg_interval [9]), .A2(n747), 
        .B1(n1124), .B2(n1002), .X(n1018) );
  UDB116SVT24_AOI2222_V2_0P75 U1481 ( .A1(n1004), .A2(n778), .B1(n744), .B2(
        n1003), .C1(n1353), .C2(\sh_sync_inst/avg_interval [2]), .D1(
        \sh_sync_inst/avg_interval [3]), .D2(n1032), .X(n1007) );
  UDB116SVT24_AOI22_1 U1482 ( .A1(\sh_sync_inst/avg_interval [1]), .A2(n769), 
        .B1(n767), .B2(n1005), .X(n1006) );
  UDB116SVT24_ND4_0P75 U1483 ( .A1(\sh_sync_inst/first_pulse_flag ), .A2(n1007), .A3(n687), .A4(n1006), .X(n1017) );
  UDB116SVT24_AOI2222_V2_0P75 U1484 ( .A1(n1320), .A2(n775), .B1(
        \sh_sync_inst/avg_interval [11]), .B2(n1376), .C1(n1027), .C2(
        \sh_sync_inst/avg_interval [6]), .D1(\sh_sync_inst/counter [10]), .D2(
        n1008), .X(n1015) );
  UDB116SVT24_AOI2222_V2_0P75 U1485 ( .A1(n1317), .A2(
        \sh_sync_inst/counter [3]), .B1(\sh_sync_inst/avg_interval [13]), .B2(
        n688), .C1(n727), .C2(\sh_sync_inst/avg_interval [4]), .D1(n736), .D2(
        n1371), .X(n1014) );
  UDB116SVT24_AOI2222_V2_0P75 U1486 ( .A1(n1010), .A2(
        \sh_sync_inst/counter [4]), .B1(n714), .B2(n1009), .C1(n708), .C2(
        \sh_sync_inst/avg_interval [5]), .D1(\sh_sync_inst/avg_interval [7]), 
        .D2(n713), .X(n1013) );
  UDB116SVT24_AOI2222_V2_0P75 U1487 ( .A1(n1323), .A2(n750), .B1(
        \sh_sync_inst/avg_interval [12]), .B2(n709), .C1(n710), .C2(
        \sh_sync_inst/avg_interval [10]), .D1(n739), .D2(n1011), .X(n1012) );
  UDB116SVT24_ND4_0P75 U1488 ( .A1(n1015), .A2(n1014), .A3(n1013), .A4(n1012), 
        .X(n1016) );
  UDB116SVT24_NR4_0P75 U1489 ( .A1(n1019), .A2(n1018), .A3(n1017), .A4(n1016), 
        .X(n1020) );
  UDB116SVT24_AOI31_0P75 U1490 ( .A1(n1023), .A2(n1022), .A3(n1021), .B(n1020), 
        .X(n1259) );
  UDB116SVT24_OAI31_1 U1491 ( .A1(n1097), .A2(n1259), .A3(n1258), .B(
        \sh_sync_inst/first_pulse_flag ), .X(n1024) );
  UDB116SVT24_ND2_MM_0P75 U1492 ( .A1(n679), .A2(n1024), .X(
        \sh_sync_inst/n216 ) );
  UDB116SVT24_OAI22_0P75 U1493 ( .A1(n688), .A2(ext_count_val_TX[12]), .B1(
        n768), .B2(ext_count_val_TX[0]), .X(n1025) );
  UDB116SVT24_AOI221_1 U1494 ( .A1(n735), .A2(ext_count_val_TX[12]), .B1(
        ext_count_val_TX[0]), .B2(n768), .C(n1025), .X(n1031) );
  UDB116SVT24_INV_0P75 U1495 ( .A(ext_count_val_TX[5]), .X(n1065) );
  UDB116SVT24_INV_0P75 U1496 ( .A(ext_count_val_TX[7]), .X(n1068) );
  UDB116SVT24_AOI2222_V2_0P75 U1497 ( .A1(n1065), .A2(n774), .B1(n781), .B2(
        n1068), .C1(n1027), .C2(ext_count_val_TX[5]), .D1(ext_count_val_TX[7]), 
        .D2(n1026), .X(n1030) );
  UDB116SVT24_INV_0P75 U1498 ( .A(ext_count_val_TX[6]), .X(n1056) );
  UDB116SVT24_INV_0P75 U1499 ( .A(ext_count_val_TX[3]), .X(n1057) );
  UDB116SVT24_AOI2222_V2_0P75 U1500 ( .A1(n1056), .A2(n714), .B1(
        \sh_sync_inst/counter [3]), .B2(n1057), .C1(n1094), .C2(
        ext_count_val_TX[6]), .D1(ext_count_val_TX[3]), .D2(n1129), .X(n1029)
         );
  UDB116SVT24_INV_0P75 U1501 ( .A(ext_count_val_TX[11]), .X(n1058) );
  UDB116SVT24_INV_0P75 U1502 ( .A(ext_count_val_TX[10]), .X(n1069) );
  UDB116SVT24_AOI2222_V2_0P75 U1503 ( .A1(n1058), .A2(n740), .B1(n724), .B2(
        n1069), .C1(n738), .C2(ext_count_val_TX[11]), .D1(ext_count_val_TX[10]), .D2(n725), .X(n1028) );
  UDB116SVT24_ND4_0P75 U1504 ( .A1(n1031), .A2(n1030), .A3(n1029), .A4(n1028), 
        .X(n1040) );
  UDB116SVT24_INV_0P75 U1505 ( .A(ext_count_val_TX[9]), .X(n1066) );
  UDB116SVT24_INV_0P75 U1506 ( .A(ext_count_val_TX[8]), .X(n1063) );
  UDB116SVT24_AOI2222_V2_0P75 U1507 ( .A1(n1066), .A2(n750), .B1(n748), .B2(
        n1063), .C1(n710), .C2(ext_count_val_TX[9]), .D1(ext_count_val_TX[8]), 
        .D2(n1124), .X(n1035) );
  UDB116SVT24_INV_0P75 U1508 ( .A(ext_count_val_TX[4]), .X(n1062) );
  UDB116SVT24_INV_0P75 U1509 ( .A(ext_count_val_TX[13]), .X(n1054) );
  UDB116SVT24_AOI2222_V2_0P75 U1510 ( .A1(n1062), .A2(
        \sh_sync_inst/counter [4]), .B1(\sh_sync_inst/counter [13]), .B2(n1054), .C1(n708), .C2(ext_count_val_TX[4]), .D1(ext_count_val_TX[13]), .D2(n1381), 
        .X(n1034) );
  UDB116SVT24_INV_0P75 U1511 ( .A(ext_count_val_TX[1]), .X(n1060) );
  UDB116SVT24_INV_0P75 U1512 ( .A(ext_count_val_TX[2]), .X(n1061) );
  UDB116SVT24_AOI2222_V2_0P75 U1513 ( .A1(n1060), .A2(n778), .B1(n744), .B2(
        n1061), .C1(n1353), .C2(ext_count_val_TX[1]), .D1(ext_count_val_TX[2]), 
        .D2(n1032), .X(n1033) );
  UDB116SVT24_ND4_0P75 U1514 ( .A1(ext_counter_flag_TX), .A2(n1035), .A3(n1034), .A4(n1033), .X(n1039) );
  UDB116SVT24_ND3_0P75 U1515 ( .A1(n777), .A2(n745), .A3(n742), .X(n1128) );
  UDB116SVT24_NR2_0P75 U1516 ( .A1(n727), .A2(n1128), .X(n1093) );
  UDB116SVT24_ND2_MM_0P75 U1517 ( .A1(n1093), .A2(n708), .X(n1130) );
  UDB116SVT24_NR4_0P75 U1518 ( .A1(ext_counter_flag_TX), .A2(n775), .A3(n749), 
        .A4(n687), .X(n1037) );
  UDB116SVT24_NR4_0P75 U1519 ( .A1(n737), .A2(n780), .A3(n739), .A4(n725), .X(
        n1036) );
  UDB116SVT24_ND4_0P75 U1520 ( .A1(n748), .A2(n1037), .A3(n1036), .A4(n1094), 
        .X(n1038) );
  UDB116SVT24_OAI22_0P75 U1521 ( .A1(n1040), .A2(n1039), .B1(n1130), .B2(n1038), .X(n1095) );
  UDB116SVT24_ND2B_0P75 U1522 ( .A(n1096), .B(n1095), .X(n1257) );
  UDB116SVT24_ND2_MM_0P75 U1523 ( .A1(n1373), .A2(n850), .X(n1107) );
  UDB116SVT24_AOI22_1 U1524 ( .A1(\sh_sync_inst/pulse_pack_count [0]), .A2(
        n1107), .B1(n851), .B2(n1103), .X(\sh_sync_inst/n201 ) );
  UDB116SVT24_INV_0P75 U1525 ( .A(n1476), .X(n1047) );
  UDB116SVT24_BUF_1 U1526 ( .A(n1047), .X(n1048) );
  UDB116SVT24_BUF_1 U1527 ( .A(n1048), .X(n1053) );
  UDB116SVT24_OA2BB2_0P75 U1528 ( .A1(n1048), .A2(n1059), .B1(
        ext_count_val_RX[11]), .B2(n1053), .X(\CONFIG_inst/n53 ) );
  UDB116SVT24_BUF_1 U1529 ( .A(n1047), .X(n1044) );
  UDB116SVT24_BUF_1 U1530 ( .A(n1044), .X(n1475) );
  UDB116SVT24_BUF_1 U1531 ( .A(n1044), .X(n1050) );
  UDB116SVT24_OA2BB2_0P75 U1532 ( .A1(n1475), .A2(n721), .B1(
        ext_count_val_RX[4]), .B2(n1050), .X(\CONFIG_inst/n46 ) );
  UDB116SVT24_AOI21_0P75 U1533 ( .A1(n683), .A2(n1042), .B(n1401), .X(n1395)
         );
  UDB116SVT24_ND2_MM_0P75 U1534 ( .A1(n690), .A2(n1043), .X(n1394) );
  UDB116SVT24_OAI22_0P75 U1535 ( .A1(n1395), .A2(n1043), .B1(n1042), .B2(n1394), .X(\sh_sync_inst/n184 ) );
  UDB116SVT24_BUF_1 U1536 ( .A(n1048), .X(n1049) );
  UDB116SVT24_BUF_1 U1537 ( .A(n1044), .X(n1052) );
  UDB116SVT24_OA2BB2_0P75 U1538 ( .A1(n1049), .A2(n762), .B1(
        ext_count_val_RX[3]), .B2(n1052), .X(\CONFIG_inst/n45 ) );
  UDB116SVT24_BUF_1 U1539 ( .A(n1044), .X(n1051) );
  UDB116SVT24_OA2BB2_0P75 U1540 ( .A1(n1049), .A2(n1055), .B1(
        ext_count_val_RX[13]), .B2(n1051), .X(\CONFIG_inst/n55 ) );
  UDB116SVT24_OA2BB2_0P75 U1541 ( .A1(n1053), .A2(n705), .B1(
        ext_count_val_RX[7]), .B2(n1051), .X(\CONFIG_inst/n49 ) );
  UDB116SVT24_OA2BB2_0P75 U1542 ( .A1(n1049), .A2(n1070), .B1(
        ext_count_val_RX[10]), .B2(n1053), .X(\CONFIG_inst/n52 ) );
  UDB116SVT24_AOI21_0P75 U1543 ( .A1(n683), .A2(n1045), .B(n723), .X(n1390) );
  UDB116SVT24_ND2_MM_0P75 U1544 ( .A1(n690), .A2(n1046), .X(n1389) );
  UDB116SVT24_OAI22_0P75 U1545 ( .A1(n1390), .A2(n1046), .B1(n1045), .B2(n1389), .X(\sh_sync_inst/n186 ) );
  UDB116SVT24_OA2BB2_0P75 U1546 ( .A1(n1047), .A2(n1067), .B1(
        ext_count_val_RX[9]), .B2(n1051), .X(\CONFIG_inst/n51 ) );
  UDB116SVT24_OA2BB2_0P75 U1547 ( .A1(n1475), .A2(n760), .B1(
        ext_count_val_RX[0]), .B2(n1052), .X(\CONFIG_inst/n58 ) );
  UDB116SVT24_OA2BB2_0P75 U1548 ( .A1(n1048), .A2(n704), .B1(
        ext_count_val_RX[6]), .B2(n1050), .X(\CONFIG_inst/n48 ) );
  UDB116SVT24_OA2BB2_0P75 U1549 ( .A1(n1049), .A2(n788), .B1(
        ext_count_val_RX[2]), .B2(n1050), .X(\CONFIG_inst/n44 ) );
  UDB116SVT24_OA2BB2_0P75 U1550 ( .A1(n1475), .A2(n764), .B1(
        ext_count_val_RX[1]), .B2(n1050), .X(\CONFIG_inst/n43 ) );
  UDB116SVT24_OA2BB2_0P75 U1551 ( .A1(n1052), .A2(n1064), .B1(
        ext_count_val_RX[8]), .B2(n1051), .X(\CONFIG_inst/n50 ) );
  UDB116SVT24_OA2BB2_0P75 U1552 ( .A1(n1053), .A2(n1465), .B1(
        ext_count_val_RX[5]), .B2(n1052), .X(\CONFIG_inst/n47 ) );
  UDB116SVT24_INV_0P75 U1553 ( .A(n869), .X(n1477) );
  UDB116SVT24_AOI22_1 U1554 ( .A1(n869), .A2(n1055), .B1(n1054), .B2(n802), 
        .X(\CONFIG_inst/n71 ) );
  UDB116SVT24_AOI22_1 U1555 ( .A1(n870), .A2(n1463), .B1(n1056), .B2(n803), 
        .X(\CONFIG_inst/n64 ) );
  UDB116SVT24_AOI22_1 U1556 ( .A1(n871), .A2(n761), .B1(n1057), .B2(n1477), 
        .X(\CONFIG_inst/n61 ) );
  UDB116SVT24_AOI22_1 U1557 ( .A1(n872), .A2(n1059), .B1(n1058), .B2(n801), 
        .X(\CONFIG_inst/n69 ) );
  UDB116SVT24_AOI22_1 U1558 ( .A1(n680), .A2(n763), .B1(n1060), .B2(n802), .X(
        \CONFIG_inst/n59 ) );
  UDB116SVT24_AOI22_1 U1559 ( .A1(n870), .A2(n1470), .B1(n1061), .B2(n801), 
        .X(\CONFIG_inst/n60 ) );
  UDB116SVT24_AOI22_1 U1560 ( .A1(n871), .A2(n1467), .B1(n1062), .B2(n803), 
        .X(\CONFIG_inst/n62 ) );
  UDB116SVT24_AOI22_1 U1561 ( .A1(n872), .A2(n1064), .B1(n1063), .B2(n803), 
        .X(\CONFIG_inst/n66 ) );
  UDB116SVT24_AOI22_1 U1562 ( .A1(n869), .A2(n722), .B1(n1065), .B2(n801), .X(
        \CONFIG_inst/n63 ) );
  UDB116SVT24_AOI22_1 U1563 ( .A1(n870), .A2(n1067), .B1(n1066), .B2(n802), 
        .X(\CONFIG_inst/n67 ) );
  UDB116SVT24_AOI22_1 U1564 ( .A1(n871), .A2(n1461), .B1(n1068), .B2(n803), 
        .X(\CONFIG_inst/n65 ) );
  UDB116SVT24_AOI22_1 U1565 ( .A1(n872), .A2(n1070), .B1(n1069), .B2(n802), 
        .X(\CONFIG_inst/n68 ) );
  UDB116SVT24_INV_0P75 U1566 ( .A(\sh_sync_inst/timeout_counter [11]), .X(
        n1396) );
  UDB116SVT24_AO21B_0P75 U1567 ( .A1(n1074), .A2(n1072), .B(n1071), .X(n1398)
         );
  UDB116SVT24_AOI21_0P75 U1568 ( .A1(n690), .A2(n1396), .B(n1398), .X(n1075)
         );
  UDB116SVT24_NR2_0P75 U1569 ( .A1(n1074), .A2(n1073), .X(n1397) );
  UDB116SVT24_ND2_MM_0P75 U1570 ( .A1(\sh_sync_inst/timeout_counter [11]), 
        .A2(n1397), .X(n1077) );
  UDB116SVT24_INV_0P75 U1571 ( .A(\sh_sync_inst/timeout_counter [12]), .X(
        n1078) );
  UDB116SVT24_AOI22_1 U1572 ( .A1(\sh_sync_inst/timeout_counter [12]), .A2(
        n1075), .B1(n1077), .B2(n1078), .X(\sh_sync_inst/n179 ) );
  UDB116SVT24_AO2BB2_0P75 U1573 ( .A1(n1078), .A2(n1077), .B1(n1076), .B2(
        \sh_sync_inst/timeout_counter [13]), .X(\sh_sync_inst/n178 ) );
  UDB116SVT24_ND2_MM_0P75 U1574 ( .A1(n674), .A2(
        \sh_sync_inst/pulse_pack_count [0]), .X(n1080) );
  UDB116SVT24_NR2_0P75 U1575 ( .A1(\sh_sync_inst/pulse_pack_count [1]), .A2(
        n849), .X(n1335) );
  UDB116SVT24_OAI21_0P75 U1576 ( .A1(n673), .A2(n849), .B(n1107), .X(n1336) );
  UDB116SVT24_OAI21_0P75 U1577 ( .A1(n1335), .A2(n1336), .B(
        \sh_sync_inst/pulse_pack_count [2]), .X(n1079) );
  UDB116SVT24_OAI31_1 U1578 ( .A1(\sh_sync_inst/pulse_pack_count [2]), .A2(
        n849), .A3(n1080), .B(n1079), .X(\sh_sync_inst/n199 ) );
  UDB116SVT24_INV_0P75 U1579 ( .A(n1081), .X(n1088) );
  UDB116SVT24_INV_0P75 U1580 ( .A(n1082), .X(n1089) );
  UDB116SVT24_NR2_0P75 U1581 ( .A1(n1084), .A2(n1083), .X(n1090) );
  UDB116SVT24_ND2_MM_0P75 U1582 ( .A1(n1089), .A2(n1090), .X(n1155) );
  UDB116SVT24_AOI21B_0P75 U1583 ( .A1(n1088), .A2(n1087), .B(n1155), .X(n1086)
         );
  UDB116SVT24_OAOI211_0P75 U1584 ( .A1(n1088), .A2(n1087), .B(n1086), .C(n1085), .X(n1150) );
  UDB116SVT24_OR2_0P75 U1585 ( .A1(n1089), .A2(n1090), .X(n1154) );
  UDB116SVT24_OAI21B_1 U1586 ( .A1(n1091), .A2(\sh_sync_inst/interval_sum [12]), .B(n1090), .X(n1148) );
  UDB116SVT24_AN3B_0P75 U1587 ( .B1(n1154), .B2(
        \sh_sync_inst/interval_sum [11]), .A(n1148), .X(n1151) );
  UDB116SVT24_NR2_0P75 U1588 ( .A1(n1150), .A2(n1151), .X(n1147) );
  UDB116SVT24_AOI22_1 U1589 ( .A1(ext_count_val_RX[11]), .A2(n858), .B1(
        \sh_sync_inst/avg_interval [11]), .B2(n800), .X(n1092) );
  UDB116SVT24_OAI21_0P75 U1590 ( .A1(n1147), .A2(n843), .B(n1092), .X(
        \sh_sync_inst/n174 ) );
  UDB116SVT24_NR2B_0P75 U1591 ( .A(n1093), .B(n1131), .X(n1345) );
  UDB116SVT24_ND2_MM_0P75 U1592 ( .A1(n774), .A2(n1345), .X(n1112) );
  UDB116SVT24_NR2_0P75 U1593 ( .A1(n1094), .A2(n1112), .X(n1119) );
  UDB116SVT24_OAI22_0P75 U1594 ( .A1(\sh_sync_inst/rfin_edge ), .A2(n1401), 
        .B1(n1096), .B2(n1095), .X(n1100) );
  UDB116SVT24_INV_0P75 U1595 ( .A(n1097), .X(n1254) );
  UDB116SVT24_AOI21_0P75 U1596 ( .A1(n1254), .A2(n1099), .B(n1098), .X(n1379)
         );
  UDB116SVT24_INV_0P75 U1597 ( .A(n1379), .X(n1135) );
  UDB116SVT24_AOAI211_0P75 U1598 ( .A1(n1259), .A2(n1133), .B(n1100), .C(n1135), .X(n1338) );
  UDB116SVT24_OAI21_0P75 U1599 ( .A1(n1119), .A2(n807), .B(n729), .X(n1120) );
  UDB116SVT24_NR2_0P75 U1600 ( .A1(n780), .A2(n807), .X(n1121) );
  UDB116SVT24_AOI22_1 U1601 ( .A1(n781), .A2(n1120), .B1(n1119), .B2(n1121), 
        .X(n1101) );
  UDB116SVT24_ND2_MM_0P75 U1602 ( .A1(n1101), .A2(n678), .X(
        \sh_sync_inst/n207 ) );
  UDB116SVT24_OAI21_0P75 U1603 ( .A1(n767), .A2(n1338), .B(n729), .X(n1113) );
  UDB116SVT24_NR2_0P75 U1604 ( .A1(\sh_sync_inst/counter [1]), .A2(n1338), .X(
        n1114) );
  UDB116SVT24_AOI22_1 U1605 ( .A1(n778), .A2(n1113), .B1(
        \sh_sync_inst/counter [0]), .B2(n1114), .X(n1102) );
  UDB116SVT24_ND2_MM_0P75 U1606 ( .A1(n1102), .A2(n678), .X(
        \sh_sync_inst/n213 ) );
  UDB116SVT24_AN3B_0P75 U1607 ( .B1(\sh_sync_inst/pulse_pack_count [2]), .B2(
        \sh_sync_inst/pulse_pack_count [1]), .A(n1103), .X(n1333) );
  UDB116SVT24_ND2_MM_0P75 U1608 ( .A1(\sh_sync_inst/pulse_pack_count [3]), 
        .A2(n1333), .X(n1109) );
  UDB116SVT24_ND2B_0P75 U1609 ( .A(n1109), .B(
        \sh_sync_inst/pulse_pack_count [4]), .X(n1106) );
  UDB116SVT24_ND2B_0P75 U1610 ( .A(n851), .B(
        \sh_sync_inst/pulse_pack_count [5]), .X(n1105) );
  UDB116SVT24_NR2_0P75 U1611 ( .A1(\sh_sync_inst/pulse_pack_count [5]), .A2(
        n851), .X(n1330) );
  UDB116SVT24_INV_0P75 U1612 ( .A(n1106), .X(n1329) );
  UDB116SVT24_OAI21_0P75 U1613 ( .A1(n1329), .A2(n851), .B(n1107), .X(n1331)
         );
  UDB116SVT24_OAI21_0P75 U1614 ( .A1(n1330), .A2(n1331), .B(
        \sh_sync_inst/pulse_pack_count [6]), .X(n1104) );
  UDB116SVT24_OAI31_1 U1615 ( .A1(\sh_sync_inst/pulse_pack_count [6]), .A2(
        n1106), .A3(n1105), .B(n1104), .X(\sh_sync_inst/n195 ) );
  UDB116SVT24_NR2_0P75 U1616 ( .A1(\sh_sync_inst/pulse_pack_count [3]), .A2(
        n850), .X(n1332) );
  UDB116SVT24_OAI21_0P75 U1617 ( .A1(n1333), .A2(n850), .B(n1107), .X(n1334)
         );
  UDB116SVT24_OAI21_0P75 U1618 ( .A1(n1332), .A2(n1334), .B(
        \sh_sync_inst/pulse_pack_count [4]), .X(n1108) );
  UDB116SVT24_OAI31_1 U1619 ( .A1(\sh_sync_inst/pulse_pack_count [4]), .A2(
        n850), .A3(n1109), .B(n1108), .X(\sh_sync_inst/n197 ) );
  UDB116SVT24_ND2_MM_0P75 U1620 ( .A1(n730), .A2(n769), .X(n1110) );
  UDB116SVT24_OAI211_0P75 U1621 ( .A1(n1135), .A2(n769), .B1(n1127), .B2(n1110), .X(\sh_sync_inst/n214 ) );
  UDB116SVT24_OAI21_0P75 U1622 ( .A1(n1345), .A2(n806), .B(n1135), .X(n1346)
         );
  UDB116SVT24_NR2_0P75 U1623 ( .A1(n774), .A2(n805), .X(n1344) );
  UDB116SVT24_OAI21_0P75 U1624 ( .A1(n1346), .A2(n1344), .B(n714), .X(n1111)
         );
  UDB116SVT24_OAI31_1 U1625 ( .A1(\sh_sync_inst/counter [6]), .A2(n807), .A3(
        n1112), .B(n1111), .X(\sh_sync_inst/n208 ) );
  UDB116SVT24_ND2_MM_0P75 U1626 ( .A1(n777), .A2(n742), .X(n1116) );
  UDB116SVT24_OAOI211_0P75 U1627 ( .A1(n1114), .A2(n1113), .B(n744), .C(n1339), 
        .X(n1115) );
  UDB116SVT24_OAI31_1 U1628 ( .A1(n745), .A2(n1116), .A3(n805), .B(n1115), .X(
        \sh_sync_inst/n212 ) );
  UDB116SVT24_AOI21_0P75 U1629 ( .A1(n731), .A2(n1128), .B(n1379), .X(n1118)
         );
  UDB116SVT24_ND2_MM_0P75 U1630 ( .A1(n730), .A2(n727), .X(n1117) );
  UDB116SVT24_OAI22_0P75 U1631 ( .A1(n1118), .A2(n1129), .B1(n1128), .B2(n1117), .X(\sh_sync_inst/n211 ) );
  UDB116SVT24_ND2_MM_0P75 U1632 ( .A1(\sh_sync_inst/counter [7]), .A2(n1119), 
        .X(n1123) );
  UDB116SVT24_OAOI211_0P75 U1633 ( .A1(n1121), .A2(n1120), .B(n747), .C(n1339), 
        .X(n1122) );
  UDB116SVT24_OAI31_1 U1634 ( .A1(n748), .A2(n1338), .A3(n1123), .B(n1122), 
        .X(\sh_sync_inst/n206 ) );
  UDB116SVT24_NR2_0P75 U1635 ( .A1(n1124), .A2(n1123), .X(n1378) );
  UDB116SVT24_ND2_MM_0P75 U1636 ( .A1(n730), .A2(n1378), .X(n1136) );
  UDB116SVT24_OAOI211_0P75 U1637 ( .A1(n806), .A2(n1378), .B(n729), .C(n749), 
        .X(n1125) );
  UDB116SVT24_INV_0P75 U1638 ( .A(n1125), .X(n1126) );
  UDB116SVT24_OAI211_0P75 U1639 ( .A1(n751), .A2(n1136), .B1(n1127), .B2(n1126), .X(\sh_sync_inst/n205 ) );
  UDB116SVT24_OAOI211_0P75 U1640 ( .A1(n1129), .A2(n1128), .B(n730), .C(n1379), 
        .X(n1132) );
  UDB116SVT24_OAI22_0P75 U1641 ( .A1(n1132), .A2(n708), .B1(n1130), .B2(n806), 
        .X(\sh_sync_inst/n210 ) );
  UDB116SVT24_AOAI211_0P75 U1642 ( .A1(n1259), .A2(n1254), .B(n1258), .C(n1373), .X(n1364) );
  UDB116SVT24_ND3_0P75 U1643 ( .A1(n1133), .A2(n1254), .A3(n1364), .X(n1365)
         );
  UDB116SVT24_AOI22_1 U1644 ( .A1(\sh_sync_inst/pulse_gen_count [0]), .A2(n661), .B1(n833), .B2(n1134), .X(\sh_sync_inst/n241 ) );
  UDB116SVT24_AOAI211_0P75 U1645 ( .A1(n751), .A2(n1378), .B(n805), .C(n729), 
        .X(n1342) );
  UDB116SVT24_AOI21_0P75 U1646 ( .A1(n731), .A2(n1376), .B(n1342), .X(n1337)
         );
  UDB116SVT24_ND2_MM_0P75 U1647 ( .A1(n841), .A2(n709), .X(n1138) );
  UDB116SVT24_NR2_0P75 U1648 ( .A1(n710), .A2(n1136), .X(n1343) );
  UDB116SVT24_INV_0P75 U1649 ( .A(n1343), .X(n1137) );
  UDB116SVT24_OAI22_0P75 U1650 ( .A1(n1337), .A2(n709), .B1(n1138), .B2(n1137), 
        .X(\sh_sync_inst/n203 ) );
  UDB116SVT24_INV_0P75 U1651 ( .A(\sh_sync_inst/pulse_gen_count [3]), .X(n1363) );
  UDB116SVT24_ND2_MM_0P75 U1652 ( .A1(\sh_sync_inst/pulse_gen_count [1]), .A2(
        n665), .X(n1141) );
  UDB116SVT24_ND2B_0P75 U1653 ( .A(n1141), .B(
        \sh_sync_inst/pulse_gen_count [2]), .X(n1361) );
  UDB116SVT24_AO21B_0P75 U1654 ( .A1(n1364), .A2(n834), .B(
        \sh_sync_inst/pulse_gen_count [4]), .X(n1139) );
  UDB116SVT24_OAI31_1 U1655 ( .A1(n834), .A2(n1363), .A3(n1361), .B(n1139), 
        .X(\sh_sync_inst/n239 ) );
  UDB116SVT24_NR2_0P75 U1656 ( .A1(\sh_sync_inst/pulse_gen_count [1]), .A2(
        n834), .X(n1359) );
  UDB116SVT24_OAI21_0P75 U1657 ( .A1(\sh_sync_inst/pulse_gen_count [0]), .A2(
        n833), .B(n1364), .X(n1360) );
  UDB116SVT24_OAI21_0P75 U1658 ( .A1(n1359), .A2(n1360), .B(
        \sh_sync_inst/pulse_gen_count [2]), .X(n1140) );
  UDB116SVT24_OAI31_1 U1659 ( .A1(\sh_sync_inst/pulse_gen_count [2]), .A2(n834), .A3(n1141), .B(n1140), .X(\sh_sync_inst/n237 ) );
  UDB116SVT24_AN3B_0P75 U1660 ( .B1(n1143), .B2(n1142), .A(n1145), .X(n1146)
         );
  UDB116SVT24_OA2BB2_0P75 U1661 ( .A1(n733), .A2(n762), .B1(osc_freq[3]), .B2(
        n733), .X(\CONFIG_inst/n95 ) );
  UDB116SVT24_OA2BB2_0P75 U1662 ( .A1(n816), .A2(n704), .B1(arthur[6]), .B2(
        n816), .X(\CONFIG_inst/n102 ) );
  UDB116SVT24_OA2BB2_0P75 U1663 ( .A1(n734), .A2(n764), .B1(osc_freq[1]), .B2(
        n734), .X(\CONFIG_inst/n93 ) );
  UDB116SVT24_OA2BB2_0P75 U1664 ( .A1(n817), .A2(n759), .B1(arthur[0]), .B2(
        n817), .X(\CONFIG_inst/n104 ) );
  UDB116SVT24_OA2BB2_0P75 U1665 ( .A1(n818), .A2(n705), .B1(arthur[7]), .B2(
        n818), .X(\CONFIG_inst/n103 ) );
  UDB116SVT24_OA2BB2_0P75 U1666 ( .A1(n819), .A2(n761), .B1(arthur[3]), .B2(
        n819), .X(\CONFIG_inst/n99 ) );
  UDB116SVT24_OA2BB2_0P75 U1667 ( .A1(n816), .A2(n1465), .B1(arthur[5]), .B2(
        n816), .X(\CONFIG_inst/n101 ) );
  UDB116SVT24_OA2BB2_0P75 U1668 ( .A1(n733), .A2(n788), .B1(osc_freq[2]), .B2(
        n733), .X(\CONFIG_inst/n94 ) );
  UDB116SVT24_OA2BB2_0P75 U1669 ( .A1(n817), .A2(n721), .B1(arthur[4]), .B2(
        n817), .X(\CONFIG_inst/n100 ) );
  UDB116SVT24_OA2BB2_0P75 U1670 ( .A1(n818), .A2(n789), .B1(arthur[2]), .B2(
        n818), .X(\CONFIG_inst/n98 ) );
  UDB116SVT24_OA2BB2_0P75 U1671 ( .A1(n819), .A2(n763), .B1(arthur[1]), .B2(
        n819), .X(\CONFIG_inst/n97 ) );
  UDB116SVT24_OA2BB2_0P75 U1672 ( .A1(n734), .A2(n760), .B1(osc_freq[0]), .B2(
        n734), .X(\CONFIG_inst/n96 ) );
  UDB116SVT24_ND2B_0P75 U1673 ( .A(n1147), .B(\sh_sync_inst/interval_sum [11]), 
        .X(n1149) );
  UDB116SVT24_NR2_0P75 U1674 ( .A1(n1148), .A2(n1149), .X(n1153) );
  UDB116SVT24_INV_0P75 U1675 ( .A(n1153), .X(n1158) );
  UDB116SVT24_ND2_MM_0P75 U1676 ( .A1(n1148), .A2(n1149), .X(n1157) );
  UDB116SVT24_OAI21_0P75 U1677 ( .A1(\sh_sync_inst/interval_sum [11]), .A2(
        n1150), .B(n1149), .X(n1162) );
  UDB116SVT24_INV_0P75 U1678 ( .A(n1151), .X(n1152) );
  UDB116SVT24_AOAI211_0P75 U1679 ( .A1(n1155), .A2(n1154), .B(n1153), .C(n1152), .X(n1159) );
  UDB116SVT24_INV_0P75 U1680 ( .A(\sh_sync_inst/interval_sum [10]), .X(n1160)
         );
  UDB116SVT24_OR3B_0P75 U1681 ( .B1(n1160), .B2(n1162), .A(n1157), .X(n1156)
         );
  UDB116SVT24_ND2_MM_0P75 U1682 ( .A1(n1159), .A2(n1156), .X(n1321) );
  UDB116SVT24_ND2_MM_0P75 U1683 ( .A1(\sh_sync_inst/interval_sum [10]), .A2(
        n1321), .X(n1161) );
  UDB116SVT24_NR2_0P75 U1684 ( .A1(n1162), .A2(n1161), .X(n1168) );
  UDB116SVT24_AOAI211_0P75 U1685 ( .A1(n1158), .A2(n1157), .B(n1168), .C(n1156), .X(n1166) );
  UDB116SVT24_INV_0P75 U1686 ( .A(\sh_sync_inst/interval_sum [9]), .X(n1167)
         );
  UDB116SVT24_AOI21B_0P75 U1687 ( .A1(n1160), .A2(n1159), .B(n1161), .X(n1170)
         );
  UDB116SVT24_ND2_MM_0P75 U1688 ( .A1(n1162), .A2(n1161), .X(n1173) );
  UDB116SVT24_ND2_MM_0P75 U1689 ( .A1(n1170), .A2(n1173), .X(n1165) );
  UDB116SVT24_OR2_0P75 U1690 ( .A1(n1167), .A2(n1165), .X(n1171) );
  UDB116SVT24_AOI22_1 U1691 ( .A1(ext_count_val_RX[9]), .A2(n857), .B1(
        \sh_sync_inst/avg_interval [9]), .B2(n800), .X(n1163) );
  UDB116SVT24_AOAI211_0P75 U1692 ( .A1(n1166), .A2(n1171), .B(n844), .C(n1163), 
        .X(\sh_sync_inst/n172 ) );
  UDB116SVT24_INV_0P75 U1693 ( .A(\intadd_0/n1 ), .X(n1164) );
  UDB116SVT24_AOI21_0P75 U1694 ( .A1(n861), .A2(n1164), .B(n1385), .X(n1358)
         );
  UDB116SVT24_INV_0P75 U1695 ( .A(n1347), .X(n1384) );
  UDB116SVT24_ND2_MM_0P75 U1696 ( .A1(n813), .A2(n715), .X(n1357) );
  UDB116SVT24_OAI22_0P75 U1697 ( .A1(n1358), .A2(n715), .B1(n1357), .B2(n1164), 
        .X(\sh_sync_inst/n230 ) );
  UDB116SVT24_INV_0P75 U1698 ( .A(\sh_sync_inst/interval_sum [8]), .X(n1187)
         );
  UDB116SVT24_AOI21_0P75 U1699 ( .A1(n1165), .A2(n1166), .B(n1167), .X(n1169)
         );
  UDB116SVT24_AOI21_0P75 U1700 ( .A1(n1167), .A2(n1166), .B(n1169), .X(n1189)
         );
  UDB116SVT24_INV_0P75 U1701 ( .A(n1189), .X(n1174) );
  UDB116SVT24_NR2_0P75 U1702 ( .A1(n1170), .A2(n1169), .X(n1185) );
  UDB116SVT24_INV_0P75 U1703 ( .A(n1168), .X(n1172) );
  UDB116SVT24_AN2_1 U1704 ( .A1(n1170), .A2(n1169), .X(n1183) );
  UDB116SVT24_AOAI211_0P75 U1705 ( .A1(n1173), .A2(n1172), .B(n1183), .C(n1171), .X(n1186) );
  UDB116SVT24_OA31_1 U1706 ( .A1(n1187), .A2(n1174), .A3(n1185), .B(n1186), 
        .X(n1182) );
  UDB116SVT24_AOI22_1 U1707 ( .A1(ext_count_val_RX[8]), .A2(n859), .B1(
        \sh_sync_inst/avg_interval [8]), .B2(n1249), .X(n1175) );
  UDB116SVT24_OAI21_0P75 U1708 ( .A1(n1182), .A2(n844), .B(n1175), .X(
        \sh_sync_inst/n171 ) );
  UDB116SVT24_ND3_0P75 U1709 ( .A1(\sh_sync_inst/interval_sum [14]), .A2(n1384), .A3(\intadd_0/n1 ), .X(n1356) );
  UDB116SVT24_AOAI211_0P75 U1710 ( .A1(n716), .A2(n703), .B(n723), .C(n1358), 
        .X(n1177) );
  UDB116SVT24_ND2_MM_0P75 U1711 ( .A1(n839), .A2(n1177), .X(n1176) );
  UDB116SVT24_OAI31_1 U1712 ( .A1(n1356), .A2(n1355), .A3(n840), .B(n1176), 
        .X(\sh_sync_inst/n232 ) );
  UDB116SVT24_OA21B_0P75 U1713 ( .A1(n1347), .A2(n840), .B(n1177), .X(n1181)
         );
  UDB116SVT24_INV_0P75 U1714 ( .A(n1178), .X(n1179) );
  UDB116SVT24_OAI22_0P75 U1715 ( .A1(n1181), .A2(n1180), .B1(n1179), .B2(n1356), .X(\sh_sync_inst/n233 ) );
  UDB116SVT24_AOI22_1 U1716 ( .A1(ext_count_val_RX[7]), .A2(n857), .B1(
        \sh_sync_inst/avg_interval [7]), .B2(n1249), .X(n1191) );
  UDB116SVT24_NR2_0P75 U1717 ( .A1(n1182), .A2(n1187), .X(n1188) );
  UDB116SVT24_ND2_MM_0P75 U1718 ( .A1(n1189), .A2(n1188), .X(n1198) );
  UDB116SVT24_OAI21_0P75 U1719 ( .A1(n1185), .A2(n1183), .B(n1198), .X(n1184)
         );
  UDB116SVT24_OAI21_0P75 U1720 ( .A1(n1185), .A2(n1198), .B(n1184), .X(n1193)
         );
  UDB116SVT24_INV_0P75 U1721 ( .A(\sh_sync_inst/interval_sum [7]), .X(n1194)
         );
  UDB116SVT24_AOI21_0P75 U1722 ( .A1(n1187), .A2(n1186), .B(n1188), .X(n1196)
         );
  UDB116SVT24_OR2_0P75 U1723 ( .A1(n1189), .A2(n1188), .X(n1199) );
  UDB116SVT24_ND2_MM_0P75 U1724 ( .A1(n1196), .A2(n1199), .X(n1192) );
  UDB116SVT24_OR2_0P75 U1725 ( .A1(n1194), .A2(n1192), .X(n1197) );
  UDB116SVT24_AO21_0P75 U1726 ( .A1(n1193), .A2(n1197), .B(n842), .X(n1190) );
  UDB116SVT24_ND2_MM_0P75 U1727 ( .A1(n1191), .A2(n1190), .X(
        \sh_sync_inst/n170 ) );
  UDB116SVT24_AOI21_0P75 U1728 ( .A1(n1192), .A2(n1193), .B(n1194), .X(n1195)
         );
  UDB116SVT24_AN2_1 U1729 ( .A1(n1196), .A2(n1195), .X(n1202) );
  UDB116SVT24_AO21_0P75 U1730 ( .A1(n1194), .A2(n1193), .B(n1195), .X(n1203)
         );
  UDB116SVT24_NR2_0P75 U1731 ( .A1(n1196), .A2(n1195), .X(n1201) );
  UDB116SVT24_INV_0P75 U1732 ( .A(\sh_sync_inst/interval_sum [6]), .X(n1206)
         );
  UDB116SVT24_AOAI211_0P75 U1733 ( .A1(n1199), .A2(n1198), .B(n1202), .C(n1197), .X(n1205) );
  UDB116SVT24_OAI31_1 U1734 ( .A1(n1201), .A2(n1206), .A3(n1203), .B(n1205), 
        .X(n1318) );
  UDB116SVT24_ND2_MM_0P75 U1735 ( .A1(\sh_sync_inst/interval_sum [6]), .A2(
        n1318), .X(n1204) );
  UDB116SVT24_NR2_0P75 U1736 ( .A1(n1203), .A2(n1204), .X(n1215) );
  UDB116SVT24_ND2_MM_0P75 U1737 ( .A1(n1215), .A2(n1201), .X(n1200) );
  UDB116SVT24_OAI31_1 U1738 ( .A1(n1202), .A2(n1215), .A3(n1201), .B(n1200), 
        .X(n1212) );
  UDB116SVT24_INV_0P75 U1739 ( .A(n1212), .X(n1208) );
  UDB116SVT24_AN2_1 U1740 ( .A1(n1203), .A2(n1204), .X(n1216) );
  UDB116SVT24_AO21B_0P75 U1741 ( .A1(n1206), .A2(n1205), .B(n1204), .X(n1210)
         );
  UDB116SVT24_NR2_0P75 U1742 ( .A1(n1216), .A2(n1210), .X(n1209) );
  UDB116SVT24_ND2_MM_0P75 U1743 ( .A1(n670), .A2(n1209), .X(n1213) );
  UDB116SVT24_AOI22_1 U1744 ( .A1(ext_count_val_RX[5]), .A2(n858), .B1(
        \sh_sync_inst/avg_interval [5]), .B2(n798), .X(n1207) );
  UDB116SVT24_AOAI211_0P75 U1745 ( .A1(n1208), .A2(n1213), .B(n842), .C(n1207), 
        .X(\sh_sync_inst/n168 ) );
  UDB116SVT24_OAI21_0P75 U1746 ( .A1(n1209), .A2(n1212), .B(
        \sh_sync_inst/interval_sum [5]), .X(n1211) );
  UDB116SVT24_ND2_MM_0P75 U1747 ( .A1(n1210), .A2(n1211), .X(n1220) );
  UDB116SVT24_OR2_0P75 U1748 ( .A1(n1210), .A2(n1211), .X(n1219) );
  UDB116SVT24_OAI21_0P75 U1749 ( .A1(\sh_sync_inst/interval_sum [5]), .A2(
        n1212), .B(n1211), .X(n1222) );
  UDB116SVT24_INV_0P75 U1750 ( .A(n1213), .X(n1214) );
  UDB116SVT24_OAOI211_0P75 U1751 ( .A1(n1216), .A2(n1215), .B(n1219), .C(n1214), .X(n1224) );
  UDB116SVT24_ND3B_0P75 U1752 ( .A(n1222), .B1(\sh_sync_inst/interval_sum [4]), 
        .B2(n1220), .X(n1217) );
  UDB116SVT24_ND2B_0P75 U1753 ( .A(n1224), .B(n1217), .X(n1315) );
  UDB116SVT24_ND2_MM_0P75 U1754 ( .A1(\sh_sync_inst/interval_sum [4]), .A2(
        n1315), .X(n1223) );
  UDB116SVT24_NR2_0P75 U1755 ( .A1(n1222), .A2(n1223), .X(n1218) );
  UDB116SVT24_AOAI211_0P75 U1756 ( .A1(n1220), .A2(n1219), .B(n1218), .C(n1217), .X(n1221) );
  UDB116SVT24_INV_0P75 U1757 ( .A(n1221), .X(n1229) );
  UDB116SVT24_EN2_V2_0P75 U1758 ( .A1(n1222), .A2(n1223), .X(n1232) );
  UDB116SVT24_OA21_V2_1 U1759 ( .A1(n671), .A2(n1224), .B(n1223), .X(n1228) );
  UDB116SVT24_ND2_MM_0P75 U1760 ( .A1(n702), .A2(n1228), .X(n1227) );
  UDB116SVT24_NR2_0P75 U1761 ( .A1(n1232), .A2(n1227), .X(n1230) );
  UDB116SVT24_NR2_0P75 U1762 ( .A1(n1229), .A2(n1230), .X(n1226) );
  UDB116SVT24_AOI22_1 U1763 ( .A1(ext_count_val_RX[3]), .A2(n856), .B1(
        \sh_sync_inst/avg_interval [3]), .B2(n798), .X(n1225) );
  UDB116SVT24_OAI21_0P75 U1764 ( .A1(n1226), .A2(n842), .B(n1225), .X(
        \sh_sync_inst/n166 ) );
  UDB116SVT24_OAI22_0P75 U1765 ( .A1(n701), .A2(n1226), .B1(n1229), .B2(n702), 
        .X(n1242) );
  UDB116SVT24_OR2_0P75 U1766 ( .A1(n1227), .A2(n1226), .X(n1231) );
  UDB116SVT24_AOAI211_0P75 U1767 ( .A1(n1229), .A2(n702), .B(n1228), .C(n1231), 
        .X(n1238) );
  UDB116SVT24_NR2_0P75 U1768 ( .A1(n1242), .A2(n1238), .X(n1235) );
  UDB116SVT24_AN2_1 U1769 ( .A1(\sh_sync_inst/interval_sum [2]), .A2(n1235), 
        .X(n1236) );
  UDB116SVT24_AOI21_0P75 U1770 ( .A1(n1232), .A2(n1231), .B(n1230), .X(n1239)
         );
  UDB116SVT24_NR2_0P75 U1771 ( .A1(n1236), .A2(n1239), .X(n1234) );
  UDB116SVT24_AOI22_1 U1772 ( .A1(ext_count_val_RX[2]), .A2(n859), .B1(
        \sh_sync_inst/avg_interval [2]), .B2(n799), .X(n1233) );
  UDB116SVT24_OAI21_0P75 U1773 ( .A1(n843), .A2(n1234), .B(n1233), .X(
        \sh_sync_inst/n165 ) );
  UDB116SVT24_OAI21_0P75 U1774 ( .A1(n1235), .A2(n1239), .B(
        \sh_sync_inst/interval_sum [2]), .X(n1247) );
  UDB116SVT24_OR2_0P75 U1775 ( .A1(n1247), .A2(n1242), .X(n1237) );
  UDB116SVT24_AOI21_0P75 U1776 ( .A1(n1238), .A2(n1237), .B(n1236), .X(n1243)
         );
  UDB116SVT24_INV_0P75 U1777 ( .A(\sh_sync_inst/interval_sum [1]), .X(n1354)
         );
  UDB116SVT24_OAI21_0P75 U1778 ( .A1(n672), .A2(n1239), .B(n1247), .X(n1245)
         );
  UDB116SVT24_NR3_0P75 U1779 ( .A1(n1242), .A2(n1354), .A3(n1245), .X(n1252)
         );
  UDB116SVT24_NR2_0P75 U1780 ( .A1(n1243), .A2(n1252), .X(n1241) );
  UDB116SVT24_AOI22_1 U1781 ( .A1(ext_count_val_RX[1]), .A2(n856), .B1(
        \sh_sync_inst/avg_interval [1]), .B2(n800), .X(n1240) );
  UDB116SVT24_OAI21_0P75 U1782 ( .A1(n844), .A2(n1241), .B(n1240), .X(
        \sh_sync_inst/n164 ) );
  UDB116SVT24_INV_0P75 U1783 ( .A(n1242), .X(n1248) );
  UDB116SVT24_MAJI3_1 U1784 ( .A1(\sh_sync_inst/interval_sum [0]), .A2(
        \sh_sync_inst/interval_sum [1]), .A3(n1243), .X(n1244) );
  UDB116SVT24_OAI22_0P75 U1785 ( .A1(n1248), .A2(n1247), .B1(n1245), .B2(n1244), .X(n1246) );
  UDB116SVT24_AOI21_0P75 U1786 ( .A1(n1248), .A2(n1247), .B(n1246), .X(n1253)
         );
  UDB116SVT24_AOI22_1 U1787 ( .A1(n856), .A2(ext_count_val_RX[0]), .B1(
        \sh_sync_inst/avg_interval [0]), .B2(n800), .X(n1250) );
  UDB116SVT24_OAI31_1 U1788 ( .A1(n1253), .A2(n1252), .A3(n843), .B(n1250), 
        .X(\sh_sync_inst/n177 ) );
  UDB116SVT24_AOI31_0P75 U1789 ( .A1(\sh_sync_inst/state [0]), .A2(n698), .A3(
        n1254), .B(n1375), .X(n1256) );
  UDB116SVT24_ND2_MM_0P75 U1790 ( .A1(n1256), .A2(n1255), .X(n1261) );
  UDB116SVT24_OAI21_0P75 U1791 ( .A1(n1259), .A2(n1258), .B(n849), .X(n1260)
         );
  UDB116SVT24_AO2BB2_0P75 U1792 ( .A1(n1261), .A2(n827), .B1(n1261), .B2(n1260), .X(\sh_sync_inst/n192 ) );
  UDB116SVT24_ND2_MM_0P75 U1793 ( .A1(n1262), .A2(n830), .X(n1275) );
  UDB116SVT24_INV_0P75 U1794 ( .A(TX_EN), .X(n1459) );
  UDB116SVT24_AOI22_1 U1795 ( .A1(n1264), .A2(n1275), .B1(n1459), .B2(n1263), 
        .X(n635) );
  UDB116SVT24_AOI21_0P75 U1796 ( .A1(\fsm_sync_inst/sh_en_prev ), .A2(n829), 
        .B(FSM_RST), .X(n1304) );
  UDB116SVT24_INV_0P75 U1797 ( .A(n1304), .X(n1312) );
  UDB116SVT24_OAI21_0P75 U1798 ( .A1(rfin), .A2(\fsm_sync_inst/state_pos ), 
        .B(n1310), .X(n1265) );
  UDB116SVT24_AOI21_0P75 U1799 ( .A1(\fsm_sync_inst/state_pos ), .A2(n1312), 
        .B(n1265), .X(\fsm_sync_inst/N10 ) );
  UDB116SVT24_OA2BB2_0P75 U1800 ( .A1(n1507), .A2(n873), .B1(pkt_rec_prev), 
        .B2(n1507), .X(n655) );
  UDB116SVT24_NR2_0P75 U1801 ( .A1(PKT_RST), .A2(n717), .X(n1287) );
  UDB116SVT24_ND4_0P75 U1802 ( .A1(\shift_buf_inst/sync [2]), .A2(
        \shift_buf_inst/sync [3]), .A3(\shift_buf_inst/sync [1]), .A4(
        \shift_buf_inst/sync [0]), .X(n1266) );
  UDB116SVT24_INV_0P75 U1803 ( .A(n1287), .X(n1286) );
  UDB116SVT24_AOI22_1 U1804 ( .A1(n1287), .A2(n1266), .B1(n873), .B2(n711), 
        .X(\shift_buf_inst/n29 ) );
  UDB116SVT24_NR2_0P75 U1805 ( .A1(pkt_rec_prev), .A2(n873), .X(n1483) );
  UDB116SVT24_NR2_0P75 U1806 ( .A1(n1494), .A2(n1488), .X(n1505) );
  UDB116SVT24_INV_0P75 U1807 ( .A(n1505), .X(n1272) );
  UDB116SVT24_NR2_0P75 U1808 ( .A1(rx_state[2]), .A2(n1272), .X(n1508) );
  UDB116SVT24_OAOI211_0P75 U1809 ( .A1(n1483), .A2(n1494), .B(n1504), .C(n1508), .X(n1492) );
  UDB116SVT24_OR2_0P75 U1810 ( .A1(counter[2]), .A2(counter[3]), .X(n1502) );
  UDB116SVT24_OAI31_1 U1811 ( .A1(counter[1]), .A2(counter[0]), .A3(n1502), 
        .B(n771), .X(n1267) );
  UDB116SVT24_AOI22_1 U1812 ( .A1(n1505), .A2(n1267), .B1(n772), .B2(n1500), 
        .X(n1268) );
  UDB116SVT24_AOI31_0P75 U1813 ( .A1(n792), .A2(n1492), .A3(n1268), .B(n692), 
        .X(n1489) );
  UDB116SVT24_OA2BB2_0P75 U1814 ( .A1(n694), .A2(n1269), .B1(rx_state[0]), 
        .B2(n1489), .X(n649) );
  UDB116SVT24_OAI211_0P75 U1815 ( .A1(n1270), .A2(n1273), .B1(n791), .B2(n1489), .X(n1271) );
  UDB116SVT24_OAI22_0P75 U1816 ( .A1(n694), .A2(n1273), .B1(n1272), .B2(n1271), 
        .X(n647) );
  UDB116SVT24_NR3_0P75 U1817 ( .A1(n791), .A2(tx_state[0]), .A3(n692), .X(
        n1277) );
  UDB116SVT24_INV_0P75 U1818 ( .A(counter3[0]), .X(n1274) );
  UDB116SVT24_NR2_0P75 U1819 ( .A1(n1274), .A2(n660), .X(n1278) );
  UDB116SVT24_OAOI211_0P75 U1820 ( .A1(n660), .A2(n1275), .B(n1274), .C(n1278), 
        .X(n652) );
  UDB116SVT24_ND2_MM_0P75 U1821 ( .A1(n1277), .A2(n1276), .X(n1283) );
  UDB116SVT24_INV_0P75 U1822 ( .A(n1283), .X(n1280) );
  UDB116SVT24_ND2_MM_0P75 U1823 ( .A1(counter3[1]), .A2(n1278), .X(n1281) );
  UDB116SVT24_OAI21_0P75 U1824 ( .A1(counter3[1]), .A2(n1278), .B(n1281), .X(
        n1279) );
  UDB116SVT24_NR2_0P75 U1825 ( .A1(n1280), .A2(n1279), .X(n651) );
  UDB116SVT24_INV_0P75 U1826 ( .A(counter3[2]), .X(n1282) );
  UDB116SVT24_NR2_0P75 U1827 ( .A1(n1282), .A2(n1281), .X(n1285) );
  UDB116SVT24_AOI211_0P75 U1828 ( .A1(n1282), .A2(n1281), .B1(n1285), .B2(
        n1280), .X(n650) );
  UDB116SVT24_OAI21_0P75 U1829 ( .A1(counter3[3]), .A2(n1285), .B(n1283), .X(
        n1284) );
  UDB116SVT24_AOI21_0P75 U1830 ( .A1(counter3[3]), .A2(n1285), .B(n1284), .X(
        n653) );
  UDB116SVT24_INV_0P75 U1831 ( .A(SHIFT_OUT[10]), .X(n1433) );
  UDB116SVT24_NR2_0P75 U1832 ( .A1(n711), .A2(n1433), .X(n656) );
  UDB116SVT24_INV_0P75 U1833 ( .A(SHIFT_OUT[11]), .X(n1431) );
  UDB116SVT24_OA2BB2_0P75 U1834 ( .A1(n785), .A2(n1431), .B1(n656), .B2(n784), 
        .X(\shift_buf_inst/n42 ) );
  UDB116SVT24_INV_0P75 U1835 ( .A(SHIFT_OUT[13]), .X(n1425) );
  UDB116SVT24_NR2_0P75 U1836 ( .A1(n711), .A2(n1425), .X(\shift_buf_inst/N28 )
         );
  UDB116SVT24_INV_0P75 U1837 ( .A(SHIFT_OUT[14]), .X(n1423) );
  UDB116SVT24_OA2BB2_0P75 U1838 ( .A1(n783), .A2(n1423), .B1(
        \shift_buf_inst/N28 ), .B2(n785), .X(\shift_buf_inst/n39 ) );
  UDB116SVT24_INV_0P75 U1839 ( .A(SHIFT_OUT[12]), .X(n1428) );
  UDB116SVT24_NR2_0P75 U1840 ( .A1(n711), .A2(n1428), .X(n657) );
  UDB116SVT24_OA2BB2_0P75 U1841 ( .A1(n784), .A2(n1425), .B1(n657), .B2(n783), 
        .X(\shift_buf_inst/n40 ) );
  UDB116SVT24_NR2_0P75 U1842 ( .A1(n1286), .A2(n1431), .X(\shift_buf_inst/N30 ) );
  UDB116SVT24_OA2BB2_0P75 U1843 ( .A1(n785), .A2(n1428), .B1(
        \shift_buf_inst/N30 ), .B2(n784), .X(\shift_buf_inst/n41 ) );
  UDB116SVT24_ND2_MM_0P75 U1844 ( .A1(n830), .A2(n1287), .X(n1289) );
  UDB116SVT24_INV_0P75 U1845 ( .A(n1289), .X(n1291) );
  UDB116SVT24_INV_0P75 U1846 ( .A(n1291), .X(n1295) );
  UDB116SVT24_INV_0P75 U1847 ( .A(SHIFT_OUT[1]), .X(n1298) );
  UDB116SVT24_INV_0P75 U1848 ( .A(SHIFT_OUT[2]), .X(n1290) );
  UDB116SVT24_OAI22_0P75 U1849 ( .A1(n1295), .A2(n1298), .B1(n681), .B2(n1290), 
        .X(\shift_buf_inst/n51 ) );
  UDB116SVT24_INV_0P75 U1850 ( .A(n1289), .X(n1296) );
  UDB116SVT24_INV_0P75 U1851 ( .A(n1296), .X(n1297) );
  UDB116SVT24_INV_0P75 U1852 ( .A(SHIFT_OUT[18]), .X(n1414) );
  UDB116SVT24_INV_0P75 U1853 ( .A(SHIFT_OUT[19]), .X(n1412) );
  UDB116SVT24_OAI22_0P75 U1854 ( .A1(n1297), .A2(n1414), .B1(n681), .B2(n1412), 
        .X(\shift_buf_inst/n34 ) );
  UDB116SVT24_INV_0P75 U1855 ( .A(SHIFT_OUT[21]), .X(n1407) );
  UDB116SVT24_INV_0P75 U1856 ( .A(SHIFT_OUT[22]), .X(n1405) );
  UDB116SVT24_OAI22_0P75 U1857 ( .A1(n1295), .A2(n1407), .B1(n681), .B2(n1405), 
        .X(\shift_buf_inst/n31 ) );
  UDB116SVT24_INV_0P75 U1858 ( .A(n1291), .X(n1308) );
  UDB116SVT24_INV_0P75 U1859 ( .A(SHIFT_OUT[23]), .X(n1403) );
  UDB116SVT24_OAI22_0P75 U1860 ( .A1(n1308), .A2(n1405), .B1(n681), .B2(n1403), 
        .X(\shift_buf_inst/n30 ) );
  UDB116SVT24_INV_0P75 U1861 ( .A(SHIFT_OUT[3]), .X(n1292) );
  UDB116SVT24_OAI22_0P75 U1862 ( .A1(n1308), .A2(n1290), .B1(n874), .B2(n1292), 
        .X(\shift_buf_inst/n50 ) );
  UDB116SVT24_INV_0P75 U1863 ( .A(n1291), .X(n1299) );
  UDB116SVT24_INV_0P75 U1864 ( .A(SHIFT_OUT[20]), .X(n1410) );
  UDB116SVT24_OAI22_0P75 U1865 ( .A1(n1299), .A2(n1410), .B1(n874), .B2(n1407), 
        .X(\shift_buf_inst/n32 ) );
  UDB116SVT24_INV_0P75 U1866 ( .A(SHIFT_OUT[9]), .X(n1435) );
  UDB116SVT24_OAI22_0P75 U1867 ( .A1(n1297), .A2(n1435), .B1(n874), .B2(n1433), 
        .X(\shift_buf_inst/n43 ) );
  UDB116SVT24_INV_0P75 U1868 ( .A(SHIFT_OUT[4]), .X(n1293) );
  UDB116SVT24_OAI22_0P75 U1869 ( .A1(n1299), .A2(n1292), .B1(n874), .B2(n1293), 
        .X(\shift_buf_inst/n49 ) );
  UDB116SVT24_INV_0P75 U1870 ( .A(SHIFT_OUT[5]), .X(n1294) );
  UDB116SVT24_OAI22_0P75 U1871 ( .A1(n1299), .A2(n1293), .B1(n875), .B2(n1294), 
        .X(\shift_buf_inst/n48 ) );
  UDB116SVT24_OAI22_0P75 U1872 ( .A1(n1295), .A2(n1412), .B1(n875), .B2(n1410), 
        .X(\shift_buf_inst/n33 ) );
  UDB116SVT24_INV_0P75 U1873 ( .A(SHIFT_OUT[17]), .X(n1416) );
  UDB116SVT24_OAI22_0P75 U1874 ( .A1(n1297), .A2(n1416), .B1(n875), .B2(n1414), 
        .X(\shift_buf_inst/n35 ) );
  UDB116SVT24_INV_0P75 U1875 ( .A(SHIFT_OUT[6]), .X(n1300) );
  UDB116SVT24_OAI22_0P75 U1876 ( .A1(n1295), .A2(n1294), .B1(n875), .B2(n1300), 
        .X(\shift_buf_inst/n47 ) );
  UDB116SVT24_INV_0P75 U1877 ( .A(n1296), .X(n1302) );
  UDB116SVT24_INV_0P75 U1878 ( .A(SHIFT_OUT[8]), .X(n1439) );
  UDB116SVT24_OAI22_0P75 U1879 ( .A1(n1302), .A2(n1439), .B1(n876), .B2(n1435), 
        .X(\shift_buf_inst/n44 ) );
  UDB116SVT24_INV_0P75 U1880 ( .A(SHIFT_OUT[15]), .X(n1421) );
  UDB116SVT24_INV_0P75 U1881 ( .A(SHIFT_OUT[16]), .X(n1419) );
  UDB116SVT24_OAI22_0P75 U1882 ( .A1(n1297), .A2(n1421), .B1(n876), .B2(n1419), 
        .X(\shift_buf_inst/n37 ) );
  UDB116SVT24_OAI22_0P75 U1883 ( .A1(n1302), .A2(n1423), .B1(n876), .B2(n1421), 
        .X(\shift_buf_inst/n38 ) );
  UDB116SVT24_INV_0P75 U1884 ( .A(SHIFT_OUT[0]), .X(n1306) );
  UDB116SVT24_OAI22_0P75 U1885 ( .A1(n1299), .A2(n1306), .B1(n876), .B2(n1298), 
        .X(\shift_buf_inst/n52 ) );
  UDB116SVT24_INV_0P75 U1886 ( .A(SHIFT_OUT[7]), .X(n1301) );
  UDB116SVT24_OAI22_0P75 U1887 ( .A1(n1308), .A2(n1300), .B1(n877), .B2(n1301), 
        .X(\shift_buf_inst/n46 ) );
  UDB116SVT24_OAI22_0P75 U1888 ( .A1(n1302), .A2(n1419), .B1(n877), .B2(n1416), 
        .X(\shift_buf_inst/n36 ) );
  UDB116SVT24_OAI22_0P75 U1889 ( .A1(n1302), .A2(n1301), .B1(n877), .B2(n1439), 
        .X(\shift_buf_inst/n45 ) );
  UDB116SVT24_AOI21B_0P75 U1890 ( .A1(\fsm_sync_inst/state_pos ), .A2(
        \fsm_sync_inst/state_neg ), .B(rfin), .X(n1303) );
  UDB116SVT24_OAOI211_0P75 U1891 ( .A1(\fsm_sync_inst/state_pos ), .A2(
        \fsm_sync_inst/state_neg ), .B(n1304), .C(n1303), .X(n1307) );
  UDB116SVT24_AOI21_0P75 U1892 ( .A1(n861), .A2(n666), .B(n1307), .X(
        \sh_sync_inst/N400 ) );
  UDB116SVT24_OAI22_0P75 U1893 ( .A1(n1308), .A2(n1307), .B1(n1306), .B2(n877), 
        .X(\shift_buf_inst/n53 ) );
  UDB116SVT24_OAI21_0P75 U1894 ( .A1(rfin), .A2(\fsm_sync_inst/state_neg ), 
        .B(n1310), .X(n1311) );
  UDB116SVT24_AOI21_0P75 U1895 ( .A1(\fsm_sync_inst/state_neg ), .A2(n1312), 
        .B(n1311), .X(\fsm_sync_inst/N12 ) );
  UDB116SVT24_NR2B_0P75 U1896 ( .A(\tx_buf_inst/buffer [7]), .B(n1459), .X(
        \tx_buf_inst/N5 ) );
  UDB116SVT24_NR4_0P75 U1897 ( .A1(n771), .A2(\SPI_slave_inst/SS_prev ), .A3(
        \SPI_slave_inst/SCK_prev ), .A4(n1313), .X(n1314) );
  UDB116SVT24_MUX2_0P75 U1898 ( .D0(\SPI_slave_inst/SHIFT_IN ), .D1(
        \SPI_slave_inst/MOSI_sync_1 ), .S(n1314), .X(\SPI_slave_inst/n38 ) );
  UDB116SVT24_AOI22_1 U1899 ( .A1(n1369), .A2(n1315), .B1(n856), .B2(
        ext_count_val_RX[4]), .X(n1316) );
  UDB116SVT24_OAI21_0P75 U1900 ( .A1(n1372), .A2(n1317), .B(n1316), .X(
        \sh_sync_inst/n167 ) );
  UDB116SVT24_AOI22_1 U1901 ( .A1(n1369), .A2(n1318), .B1(n857), .B2(
        ext_count_val_RX[6]), .X(n1319) );
  UDB116SVT24_OAI21_0P75 U1902 ( .A1(n1372), .A2(n1320), .B(n1319), .X(
        \sh_sync_inst/n169 ) );
  UDB116SVT24_AOI22_1 U1903 ( .A1(n1369), .A2(n1321), .B1(n858), .B2(
        ext_count_val_RX[10]), .X(n1322) );
  UDB116SVT24_OAI21_0P75 U1904 ( .A1(n1372), .A2(n1323), .B(n1322), .X(
        \sh_sync_inst/n173 ) );
  UDB116SVT24_AO22_1 U1905 ( .A1(n1326), .A2(n1325), .B1(
        \sh_sync_inst/timeout_counter [3]), .B2(n1324), .X(\sh_sync_inst/n188 ) );
  UDB116SVT24_AO22_1 U1906 ( .A1(\sh_sync_inst/timeout_counter [0]), .A2(n1328), .B1(\sh_sync_inst/timeout_counter [1]), .B2(n1327), .X(\sh_sync_inst/n190 )
         );
  UDB116SVT24_AO22_1 U1907 ( .A1(\sh_sync_inst/pulse_pack_count [5]), .A2(
        n1331), .B1(n1330), .B2(n1329), .X(\sh_sync_inst/n196 ) );
  UDB116SVT24_AO22_1 U1908 ( .A1(\sh_sync_inst/pulse_pack_count [3]), .A2(
        n1334), .B1(n1333), .B2(n1332), .X(\sh_sync_inst/n198 ) );
  UDB116SVT24_AO22_1 U1909 ( .A1(n674), .A2(n1336), .B1(
        \sh_sync_inst/pulse_pack_count [0]), .B2(n1335), .X(
        \sh_sync_inst/n200 ) );
  UDB116SVT24_ND3_0P75 U1910 ( .A1(n739), .A2(\sh_sync_inst/counter [10]), 
        .A3(n1343), .X(n1383) );
  UDB116SVT24_OAI21_0P75 U1911 ( .A1(n740), .A2(n805), .B(n1337), .X(n1340) );
  UDB116SVT24_AOI21_0P75 U1912 ( .A1(n736), .A2(n1340), .B(n1339), .X(n1341)
         );
  UDB116SVT24_OAI21_0P75 U1913 ( .A1(n737), .A2(n1383), .B(n1341), .X(
        \sh_sync_inst/n202 ) );
  UDB116SVT24_OA22_1 U1914 ( .A1(n1343), .A2(\sh_sync_inst/counter [10]), .B1(
        n725), .B2(n1342), .X(\sh_sync_inst/n204 ) );
  UDB116SVT24_AO22_1 U1915 ( .A1(n775), .A2(n1346), .B1(n1345), .B2(n1344), 
        .X(\sh_sync_inst/n209 ) );
  UDB116SVT24_ND2_MM_0P75 U1916 ( .A1(\sh_sync_inst/interval_sum [0]), .A2(
        n742), .X(n1352) );
  UDB116SVT24_AOI22_1 U1917 ( .A1(\sh_sync_inst/interval_sum [1]), .A2(n1353), 
        .B1(n778), .B2(n1354), .X(n1349) );
  UDB116SVT24_AOI21_0P75 U1918 ( .A1(n1352), .A2(n1349), .B(n1347), .X(n1348)
         );
  UDB116SVT24_OAI21_0P75 U1919 ( .A1(n1352), .A2(n1349), .B(n1348), .X(n1350)
         );
  UDB116SVT24_OAI21_0P75 U1920 ( .A1(n1351), .A2(n1354), .B(n1350), .X(
        \sh_sync_inst/n217 ) );
  UDB116SVT24_MAJI3_1 U1921 ( .A1(n1354), .A2(n776), .A3(n1352), .X(
        \intadd_0/CI ) );
  UDB116SVT24_AO22_1 U1922 ( .A1(n672), .A2(n810), .B1(n814), .B2(
        \intadd_0/SUM[0] ), .X(\sh_sync_inst/n218 ) );
  UDB116SVT24_AO22_1 U1923 ( .A1(n702), .A2(n811), .B1(n815), .B2(
        \intadd_0/SUM[1] ), .X(\sh_sync_inst/n219 ) );
  UDB116SVT24_AO22_1 U1924 ( .A1(n671), .A2(n1385), .B1(n1384), .B2(
        \intadd_0/SUM[2] ), .X(\sh_sync_inst/n220 ) );
  UDB116SVT24_AO22_1 U1925 ( .A1(n670), .A2(n809), .B1(n813), .B2(
        \intadd_0/SUM[3] ), .X(\sh_sync_inst/n221 ) );
  UDB116SVT24_AO22_1 U1926 ( .A1(\sh_sync_inst/interval_sum [7]), .A2(n810), 
        .B1(n814), .B2(\intadd_0/SUM[5] ), .X(\sh_sync_inst/n223 ) );
  UDB116SVT24_AO22_1 U1927 ( .A1(\sh_sync_inst/interval_sum [9]), .A2(n811), 
        .B1(n815), .B2(\intadd_0/SUM[7] ), .X(\sh_sync_inst/n225 ) );
  UDB116SVT24_AO22_1 U1928 ( .A1(n669), .A2(n810), .B1(n814), .B2(
        \intadd_0/SUM[9] ), .X(\sh_sync_inst/n227 ) );
  UDB116SVT24_AO22_1 U1929 ( .A1(\sh_sync_inst/interval_sum [12]), .A2(n809), 
        .B1(n813), .B2(\intadd_0/SUM[10] ), .X(\sh_sync_inst/n228 ) );
  UDB116SVT24_AO22_1 U1930 ( .A1(n668), .A2(n810), .B1(n814), .B2(
        \intadd_0/SUM[11] ), .X(\sh_sync_inst/n229 ) );
  UDB116SVT24_AOI32_1 U1931 ( .A1(n1358), .A2(\sh_sync_inst/interval_sum [15]), 
        .A3(n1357), .B1(n1356), .B2(n1355), .X(\sh_sync_inst/n231 ) );
  UDB116SVT24_AO22_1 U1932 ( .A1(\sh_sync_inst/pulse_gen_count [1]), .A2(n1360), .B1(n1359), .B2(\sh_sync_inst/pulse_gen_count [0]), .X(\sh_sync_inst/n236 )
         );
  UDB116SVT24_INV_0P75 U1933 ( .A(n1361), .X(n1366) );
  UDB116SVT24_OR3B_0P75 U1934 ( .B1(n1361), .B2(n833), .A(n1363), .X(n1362) );
  UDB116SVT24_OAOAI2111_1 U1935 ( .A1(n1366), .A2(n833), .B(n661), .C(n1363), 
        .D(n1362), .X(\sh_sync_inst/n238 ) );
  UDB116SVT24_AOI22_1 U1936 ( .A1(n1251), .A2(n1368), .B1(n859), .B2(
        ext_count_val_RX[13]), .X(n1370) );
  UDB116SVT24_OAI21_0P75 U1937 ( .A1(n1372), .A2(n1371), .B(n1370), .X(
        \sh_sync_inst/n176 ) );
  UDB116SVT24_INV_0P75 U1938 ( .A(SH_EN_DONE), .X(n1374) );
  UDB116SVT24_OAI21_0P75 U1939 ( .A1(n677), .A2(n1374), .B(n679), .X(
        \sh_sync_inst/n235 ) );
  UDB116SVT24_AO22_1 U1940 ( .A1(\sh_sync_inst/interval_sum [10]), .A2(n811), 
        .B1(n815), .B2(\intadd_0/SUM[8] ), .X(\sh_sync_inst/n226 ) );
  UDB116SVT24_AO22_1 U1941 ( .A1(\sh_sync_inst/interval_sum [8]), .A2(n811), 
        .B1(n815), .B2(\intadd_0/SUM[6] ), .X(\sh_sync_inst/n224 ) );
  UDB116SVT24_NR2_0P75 U1942 ( .A1(n709), .A2(n725), .X(n1377) );
  UDB116SVT24_ND4_0P75 U1943 ( .A1(n737), .A2(n750), .A3(n1378), .A4(n1377), 
        .X(n1380) );
  UDB116SVT24_AOI21_0P75 U1944 ( .A1(n731), .A2(n1380), .B(n1379), .X(n1382)
         );
  UDB116SVT24_OAI32_1 U1945 ( .A1(n686), .A2(n688), .A3(n1383), .B1(n1382), 
        .B2(n1381), .X(\sh_sync_inst/n215 ) );
  UDB116SVT24_AO22_1 U1946 ( .A1(\sh_sync_inst/interval_sum [6]), .A2(n809), 
        .B1(n813), .B2(\intadd_0/SUM[4] ), .X(\sh_sync_inst/n222 ) );
  UDB116SVT24_ND2_MM_0P75 U1947 ( .A1(n1386), .A2(n690), .X(n1388) );
  UDB116SVT24_INV_0P75 U1948 ( .A(\sh_sync_inst/timeout_counter [6]), .X(n1387) );
  UDB116SVT24_AOI32_1 U1949 ( .A1(n1390), .A2(
        \sh_sync_inst/timeout_counter [6]), .A3(n1389), .B1(n1388), .B2(n1387), 
        .X(\sh_sync_inst/n185 ) );
  UDB116SVT24_ND2_MM_0P75 U1950 ( .A1(n1391), .A2(n754), .X(n1393) );
  UDB116SVT24_AOI32_1 U1951 ( .A1(n1395), .A2(
        \sh_sync_inst/timeout_counter [8]), .A3(n1394), .B1(n1393), .B2(n1392), 
        .X(\sh_sync_inst/n183 ) );
  UDB116SVT24_AO22_1 U1952 ( .A1(\sh_sync_inst/timeout_counter [11]), .A2(
        n1398), .B1(n1397), .B2(n1396), .X(\sh_sync_inst/n180 ) );
  UDB116SVT24_OAI21_0P75 U1953 ( .A1(n1401), .A2(n1400), .B(n1399), .X(
        \sh_sync_inst/n249 ) );
  UDB116SVT24_BUF_1 U1954 ( .A(n1429), .X(n1441) );
  UDB116SVT24_INV_0P75 U1955 ( .A(n1441), .X(n1408) );
  UDB116SVT24_NR2B_0P75 U1956 ( .A(PKT_EN), .B(n795), .X(n1436) );
  UDB116SVT24_AOI22_1 U1957 ( .A1(n1408), .A2(\pkt_reg_inst/pkt_reg [23]), 
        .B1(n865), .B2(\pkt_reg_inst/pkt_reg [15]), .X(n1402) );
  UDB116SVT24_OAI21_0P75 U1958 ( .A1(n820), .A2(n1403), .B(n1402), .X(
        \pkt_reg_inst/n29 ) );
  UDB116SVT24_AOI22_1 U1959 ( .A1(n1408), .A2(\pkt_reg_inst/pkt_reg [22]), 
        .B1(n866), .B2(\pkt_reg_inst/pkt_reg [14]), .X(n1404) );
  UDB116SVT24_OAI21_0P75 U1960 ( .A1(n821), .A2(n1405), .B(n1404), .X(
        \pkt_reg_inst/n30 ) );
  UDB116SVT24_AOI22_1 U1961 ( .A1(n1408), .A2(\pkt_reg_inst/pkt_reg [21]), 
        .B1(n867), .B2(\pkt_reg_inst/pkt_reg [13]), .X(n1406) );
  UDB116SVT24_OAI21_0P75 U1962 ( .A1(n822), .A2(n1407), .B(n1406), .X(
        \pkt_reg_inst/n31 ) );
  UDB116SVT24_AOI22_1 U1963 ( .A1(n1408), .A2(\pkt_reg_inst/pkt_reg [20]), 
        .B1(n868), .B2(\pkt_reg_inst/pkt_reg [12]), .X(n1409) );
  UDB116SVT24_OAI21_0P75 U1964 ( .A1(n823), .A2(n1410), .B(n1409), .X(
        \pkt_reg_inst/n32 ) );
  UDB116SVT24_INV_0P75 U1965 ( .A(n1429), .X(n1417) );
  UDB116SVT24_AOI22_1 U1966 ( .A1(n1417), .A2(\pkt_reg_inst/pkt_reg [19]), 
        .B1(n865), .B2(\pkt_reg_inst/pkt_reg [11]), .X(n1411) );
  UDB116SVT24_OAI21_0P75 U1967 ( .A1(n820), .A2(n1412), .B(n1411), .X(
        \pkt_reg_inst/n33 ) );
  UDB116SVT24_AOI22_1 U1968 ( .A1(n1417), .A2(\pkt_reg_inst/pkt_reg [18]), 
        .B1(n866), .B2(\pkt_reg_inst/pkt_reg [10]), .X(n1413) );
  UDB116SVT24_OAI21_0P75 U1969 ( .A1(n821), .A2(n1414), .B(n1413), .X(
        \pkt_reg_inst/n34 ) );
  UDB116SVT24_AOI22_1 U1970 ( .A1(n1417), .A2(\pkt_reg_inst/pkt_reg [17]), 
        .B1(n867), .B2(\pkt_reg_inst/pkt_reg [9]), .X(n1415) );
  UDB116SVT24_OAI21_0P75 U1971 ( .A1(n822), .A2(n1416), .B(n1415), .X(
        \pkt_reg_inst/n35 ) );
  UDB116SVT24_AOI22_1 U1972 ( .A1(n1417), .A2(\pkt_reg_inst/pkt_reg [16]), 
        .B1(n868), .B2(\pkt_reg_inst/pkt_reg [8]), .X(n1418) );
  UDB116SVT24_OAI21_0P75 U1973 ( .A1(n823), .A2(n1419), .B(n1418), .X(
        \pkt_reg_inst/n36 ) );
  UDB116SVT24_INV_0P75 U1974 ( .A(n1441), .X(n1426) );
  UDB116SVT24_AOI22_1 U1975 ( .A1(n1426), .A2(\pkt_reg_inst/pkt_reg [15]), 
        .B1(n865), .B2(\pkt_reg_inst/pkt_reg [7]), .X(n1420) );
  UDB116SVT24_OAI21_0P75 U1976 ( .A1(n820), .A2(n1421), .B(n1420), .X(
        \pkt_reg_inst/n37 ) );
  UDB116SVT24_AOI22_1 U1977 ( .A1(n1426), .A2(\pkt_reg_inst/pkt_reg [14]), 
        .B1(n866), .B2(\pkt_reg_inst/pkt_reg [6]), .X(n1422) );
  UDB116SVT24_OAI21_0P75 U1978 ( .A1(n821), .A2(n1423), .B(n1422), .X(
        \pkt_reg_inst/n38 ) );
  UDB116SVT24_AOI22_1 U1979 ( .A1(n1426), .A2(\pkt_reg_inst/pkt_reg [13]), 
        .B1(n867), .B2(\pkt_reg_inst/pkt_reg [5]), .X(n1424) );
  UDB116SVT24_OAI21_0P75 U1980 ( .A1(n822), .A2(n1425), .B(n1424), .X(
        \pkt_reg_inst/n39 ) );
  UDB116SVT24_AOI22_1 U1981 ( .A1(n1426), .A2(\pkt_reg_inst/pkt_reg [12]), 
        .B1(n868), .B2(\pkt_reg_inst/pkt_reg [4]), .X(n1427) );
  UDB116SVT24_OAI21_0P75 U1982 ( .A1(n823), .A2(n1428), .B(n1427), .X(
        \pkt_reg_inst/n40 ) );
  UDB116SVT24_BUF_1 U1983 ( .A(n1429), .X(n1443) );
  UDB116SVT24_INV_0P75 U1984 ( .A(n1443), .X(n1437) );
  UDB116SVT24_AOI22_1 U1985 ( .A1(n1437), .A2(\pkt_reg_inst/pkt_reg [11]), 
        .B1(n865), .B2(\pkt_reg_inst/pkt_reg [3]), .X(n1430) );
  UDB116SVT24_OAI21_0P75 U1986 ( .A1(n820), .A2(n1431), .B(n1430), .X(
        \pkt_reg_inst/n41 ) );
  UDB116SVT24_AOI22_1 U1987 ( .A1(n1437), .A2(\pkt_reg_inst/pkt_reg [10]), 
        .B1(n866), .B2(\pkt_reg_inst/pkt_reg [2]), .X(n1432) );
  UDB116SVT24_OAI21_0P75 U1988 ( .A1(n821), .A2(n1433), .B(n1432), .X(
        \pkt_reg_inst/n42 ) );
  UDB116SVT24_AOI22_1 U1989 ( .A1(n1437), .A2(\pkt_reg_inst/pkt_reg [9]), .B1(
        n867), .B2(\pkt_reg_inst/pkt_reg [1]), .X(n1434) );
  UDB116SVT24_OAI21_0P75 U1990 ( .A1(n822), .A2(n1435), .B(n1434), .X(
        \pkt_reg_inst/n43 ) );
  UDB116SVT24_AOI22_1 U1991 ( .A1(n1437), .A2(\pkt_reg_inst/pkt_reg [8]), .B1(
        n868), .B2(\pkt_reg_inst/pkt_reg [0]), .X(n1438) );
  UDB116SVT24_OAI21_0P75 U1992 ( .A1(n823), .A2(n1439), .B(n1438), .X(
        \pkt_reg_inst/n44 ) );
  UDB116SVT24_BUF_1 U1993 ( .A(n1441), .X(n1446) );
  UDB116SVT24_INV_0P75 U1994 ( .A(n1446), .X(n1440) );
  UDB116SVT24_AO22_1 U1995 ( .A1(n795), .A2(SHIFT_OUT[7]), .B1(n1440), .B2(
        \pkt_reg_inst/pkt_reg [7]), .X(\pkt_reg_inst/n45 ) );
  UDB116SVT24_AO22_1 U1996 ( .A1(n796), .A2(SHIFT_OUT[6]), .B1(n1440), .B2(
        \pkt_reg_inst/pkt_reg [6]), .X(\pkt_reg_inst/n46 ) );
  UDB116SVT24_AO22_1 U1997 ( .A1(n794), .A2(SHIFT_OUT[5]), .B1(n1440), .B2(
        \pkt_reg_inst/pkt_reg [5]), .X(\pkt_reg_inst/n47 ) );
  UDB116SVT24_AO22_1 U1998 ( .A1(n795), .A2(SHIFT_OUT[4]), .B1(n1440), .B2(
        \pkt_reg_inst/pkt_reg [4]), .X(\pkt_reg_inst/n48 ) );
  UDB116SVT24_BUF_1 U1999 ( .A(n1441), .X(n1444) );
  UDB116SVT24_INV_0P75 U2000 ( .A(n1444), .X(n1442) );
  UDB116SVT24_AO22_1 U2001 ( .A1(n796), .A2(SHIFT_OUT[3]), .B1(n1442), .B2(
        \pkt_reg_inst/pkt_reg [3]), .X(\pkt_reg_inst/n49 ) );
  UDB116SVT24_AO22_1 U2002 ( .A1(n794), .A2(SHIFT_OUT[2]), .B1(n1442), .B2(
        \pkt_reg_inst/pkt_reg [2]), .X(\pkt_reg_inst/n50 ) );
  UDB116SVT24_AO22_1 U2003 ( .A1(n795), .A2(SHIFT_OUT[1]), .B1(n1442), .B2(
        \pkt_reg_inst/pkt_reg [1]), .X(\pkt_reg_inst/n51 ) );
  UDB116SVT24_AO22_1 U2004 ( .A1(SHIFT_OUT[0]), .A2(n796), .B1(n1442), .B2(
        \pkt_reg_inst/pkt_reg [0]), .X(\pkt_reg_inst/n52 ) );
  UDB116SVT24_NR2B_0P75 U2005 ( .A(SPI_LD), .B(n1443), .X(n1445) );
  UDB116SVT24_AO22_1 U2006 ( .A1(n1443), .A2(SPI_IN[0]), .B1(
        \pkt_reg_inst/pkt_reg [16]), .B2(n835), .X(\pkt_reg_inst/n28 ) );
  UDB116SVT24_AO22_1 U2007 ( .A1(n1443), .A2(SPI_IN[2]), .B1(
        \pkt_reg_inst/pkt_reg [18]), .B2(n836), .X(\pkt_reg_inst/n26 ) );
  UDB116SVT24_AO22_1 U2008 ( .A1(n1446), .A2(SPI_IN[6]), .B1(
        \pkt_reg_inst/pkt_reg [22]), .B2(n835), .X(\pkt_reg_inst/n22 ) );
  UDB116SVT24_AO22_1 U2009 ( .A1(n1446), .A2(SPI_IN[4]), .B1(
        \pkt_reg_inst/pkt_reg [20]), .B2(n836), .X(\pkt_reg_inst/n24 ) );
  UDB116SVT24_AO22_1 U2010 ( .A1(n1444), .A2(SPI_IN[3]), .B1(
        \pkt_reg_inst/pkt_reg [19]), .B2(n835), .X(\pkt_reg_inst/n25 ) );
  UDB116SVT24_AO22_1 U2011 ( .A1(n1444), .A2(SPI_IN[5]), .B1(
        \pkt_reg_inst/pkt_reg [21]), .B2(n836), .X(\pkt_reg_inst/n23 ) );
  UDB116SVT24_AO22_1 U2012 ( .A1(n1444), .A2(SPI_IN[7]), .B1(
        \pkt_reg_inst/pkt_reg [23]), .B2(n835), .X(\pkt_reg_inst/n21 ) );
  UDB116SVT24_AO22_1 U2013 ( .A1(n1446), .A2(SPI_IN[1]), .B1(
        \pkt_reg_inst/pkt_reg [17]), .B2(n836), .X(\pkt_reg_inst/n27 ) );
  UDB116SVT24_OA22_1 U2014 ( .A1(SPI_OUT[1]), .A2(n765), .B1(n786), .B2(
        \SPI_slave_inst/SHIFT_REG [1]), .X(\SPI_slave_inst/n22 ) );
  UDB116SVT24_OA22_1 U2015 ( .A1(SPI_OUT[5]), .A2(n1448), .B1(n766), .B2(
        \SPI_slave_inst/SHIFT_REG [5]), .X(\SPI_slave_inst/n30 ) );
  UDB116SVT24_INV_0P75 U2016 ( .A(n1449), .X(n1458) );
  UDB116SVT24_AOI22_1 U2017 ( .A1(n846), .A2(SPI_IN[0]), .B1(n1454), .B2(
        \SPI_slave_inst/SHIFT_IN ), .X(n1450) );
  UDB116SVT24_OAI21_0P75 U2018 ( .A1(n1458), .A2(n1451), .B(n1450), .X(
        \SPI_slave_inst/n37 ) );
  UDB116SVT24_AOI22_1 U2019 ( .A1(n847), .A2(SPI_IN[6]), .B1(n1454), .B2(
        \SPI_slave_inst/SHIFT_REG [5]), .X(n1452) );
  UDB116SVT24_OAI21_0P75 U2020 ( .A1(n1458), .A2(n1453), .B(n1452), .X(
        \SPI_slave_inst/n33 ) );
  UDB116SVT24_AOI22_1 U2021 ( .A1(n847), .A2(SPI_IN[2]), .B1(n1454), .B2(
        \SPI_slave_inst/SHIFT_REG [1]), .X(n1456) );
  UDB116SVT24_OAI21_0P75 U2022 ( .A1(n1458), .A2(n1457), .B(n1456), .X(
        \SPI_slave_inst/n25 ) );
  UDB116SVT24_NR2_0P75 U2023 ( .A1(TX_LD), .A2(n1459), .X(n1471) );
  UDB116SVT24_AOI22_1 U2024 ( .A1(n720), .A2(\tx_buf_inst/buffer [6]), .B1(
        \tx_buf_inst/buffer [7]), .B2(n838), .X(n1460) );
  UDB116SVT24_OAI21_0P75 U2025 ( .A1(n705), .A2(n758), .B(n1460), .X(
        \tx_buf_inst/n5 ) );
  UDB116SVT24_AOI22_1 U2026 ( .A1(n720), .A2(\tx_buf_inst/buffer [5]), .B1(
        \tx_buf_inst/buffer [6]), .B2(n837), .X(n1462) );
  UDB116SVT24_OAI21_0P75 U2027 ( .A1(n704), .A2(n757), .B(n1462), .X(
        \tx_buf_inst/n6 ) );
  UDB116SVT24_AOI22_1 U2028 ( .A1(n720), .A2(\tx_buf_inst/buffer [4]), .B1(
        n838), .B2(\tx_buf_inst/buffer [5]), .X(n1464) );
  UDB116SVT24_OAI21_0P75 U2029 ( .A1(n722), .A2(n758), .B(n1464), .X(
        \tx_buf_inst/n7 ) );
  UDB116SVT24_AOI22_1 U2030 ( .A1(n1471), .A2(\tx_buf_inst/buffer [3]), .B1(
        n837), .B2(\tx_buf_inst/buffer [4]), .X(n1466) );
  UDB116SVT24_OAI21_0P75 U2031 ( .A1(n721), .A2(n757), .B(n1466), .X(
        \tx_buf_inst/n8 ) );
  UDB116SVT24_AOI22_1 U2032 ( .A1(n720), .A2(\tx_buf_inst/buffer [2]), .B1(
        n838), .B2(\tx_buf_inst/buffer [3]), .X(n1468) );
  UDB116SVT24_OAI21_0P75 U2033 ( .A1(n762), .A2(n758), .B(n1468), .X(
        \tx_buf_inst/n9 ) );
  UDB116SVT24_AOI22_1 U2034 ( .A1(n1471), .A2(\tx_buf_inst/buffer [1]), .B1(
        n837), .B2(\tx_buf_inst/buffer [2]), .X(n1469) );
  UDB116SVT24_OAI21_0P75 U2035 ( .A1(n788), .A2(n757), .B(n1469), .X(
        \tx_buf_inst/n10 ) );
  UDB116SVT24_AOI22_1 U2036 ( .A1(n1471), .A2(\tx_buf_inst/buffer [0]), .B1(
        n837), .B2(\tx_buf_inst/buffer [1]), .X(n1472) );
  UDB116SVT24_OAI21_0P75 U2037 ( .A1(n764), .A2(n758), .B(n1472), .X(
        \tx_buf_inst/n11 ) );
  UDB116SVT24_AO22_1 U2038 ( .A1(SPI_OUT[0]), .A2(TX_LD), .B1(n838), .B2(
        \tx_buf_inst/buffer [0]), .X(\tx_buf_inst/n12 ) );
  UDB116SVT24_OA22_1 U2039 ( .A1(n1476), .A2(\CONFIG_inst/pay0 [4]), .B1(
        ext_count_val_RX[12]), .B2(n1475), .X(\CONFIG_inst/n54 ) );
  UDB116SVT24_OA22_1 U2040 ( .A1(n1477), .A2(\CONFIG_inst/pay0 [4]), .B1(
        ext_count_val_TX[12]), .B2(n872), .X(\CONFIG_inst/n70 ) );
  UDB116SVT24_AOI21_0P75 U2041 ( .A1(SPI_OUT[0]), .A2(n1479), .B(n870), .X(
        n1482) );
  UDB116SVT24_ND2_MM_0P75 U2042 ( .A1(n1482), .A2(ext_counter_flag_TX), .X(
        n1480) );
  UDB116SVT24_OAI21_0P75 U2043 ( .A1(n1482), .A2(n1481), .B(n1480), .X(
        \CONFIG_inst/n83 ) );
  UDB116SVT24_INV_0P75 U2044 ( .A(n1483), .X(n1485) );
  UDB116SVT24_AO21B_0P75 U2045 ( .A1(n676), .A2(n718), .B(SPI_LD), .X(n1484)
         );
  UDB116SVT24_OAI21_0P75 U2046 ( .A1(n1491), .A2(n1485), .B(n1484), .X(n654)
         );
  UDB116SVT24_AOI21_0P75 U2047 ( .A1(rx_state[2]), .A2(rx_state[1]), .B(n831), 
        .X(n1486) );
  UDB116SVT24_ND3_0P75 U2048 ( .A1(n694), .A2(n1486), .A3(n791), .X(n1487) );
  UDB116SVT24_OAI21_0P75 U2049 ( .A1(n1489), .A2(n1488), .B(n1487), .X(n648)
         );
  UDB116SVT24_OAI21_0P75 U2050 ( .A1(n1492), .A2(n1493), .B(n794), .X(n1490)
         );
  UDB116SVT24_OAI21_0P75 U2051 ( .A1(n1492), .A2(n1491), .B(n1490), .X(n646)
         );
  UDB116SVT24_OAI31_1 U2052 ( .A1(rx_state[2]), .A2(n831), .A3(n1493), .B(
        PKT_EN), .X(n1496) );
  UDB116SVT24_OAI21_0P75 U2053 ( .A1(n1497), .A2(n1496), .B(n1495), .X(n645)
         );
  UDB116SVT24_INV_0P75 U2054 ( .A(n1498), .X(n1499) );
  UDB116SVT24_AOAI211_0P75 U2055 ( .A1(counter[2]), .A2(n662), .B(n1499), .C(
        counter[3]), .X(n1501) );
  UDB116SVT24_OAI21_0P75 U2056 ( .A1(n1503), .A2(n1502), .B(n1501), .X(n644)
         );
  UDB116SVT24_OAI21_0P75 U2057 ( .A1(n1505), .A2(n676), .B(n718), .X(n1506) );
  UDB116SVT24_AO22_1 U2058 ( .A1(n1508), .A2(n718), .B1(PKT_RST), .B2(n1506), 
        .X(n640) );
endmodule

