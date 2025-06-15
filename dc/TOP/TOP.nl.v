/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : V-2023.12-SP1
// Date      : Sun Jun 15 18:42:37 2025
/////////////////////////////////////////////////////////////


module TOP ( clk, rfin, rst, MOSI, CS, SCK, TX_BY, RX, i_CONFIG, osc_freq, 
        arthur, pkt_rec, MISO, TX_OUT, sh_en );
  output [3:0] osc_freq;
  output [15:0] arthur;
  input clk, rfin, rst, MOSI, CS, SCK, TX_BY, RX, i_CONFIG;
  output pkt_rec, MISO, TX_OUT, sh_en;
  wire   n1592, n1593, n1594, TX_OUT_I, FSM_RST, TX_SH, SH_EN_DONE,
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
         \CONFIG_inst/n42 , \CONFIG_inst/n43 , \CONFIG_inst/n44 ,
         \CONFIG_inst/n45 , \CONFIG_inst/n46 , \CONFIG_inst/n47 ,
         \CONFIG_inst/n48 , \CONFIG_inst/n49 , \CONFIG_inst/n50 ,
         \CONFIG_inst/n51 , \CONFIG_inst/n52 , \CONFIG_inst/n53 ,
         \CONFIG_inst/n54 , \CONFIG_inst/n57 , \CONFIG_inst/n83 ,
         \CONFIG_inst/n58 , \CONFIG_inst/n59 , \CONFIG_inst/n60 ,
         \CONFIG_inst/n61 , \CONFIG_inst/n62 , \CONFIG_inst/n63 ,
         \CONFIG_inst/n64 , \CONFIG_inst/n65 , \CONFIG_inst/n66 ,
         \CONFIG_inst/n67 , \CONFIG_inst/n68 , \CONFIG_inst/n69 ,
         \CONFIG_inst/n70 , \CONFIG_inst/n73 , \CONFIG_inst/n82 ,
         \CONFIG_inst/n84 , \CONFIG_inst/n86 , \CONFIG_inst/n88 ,
         \CONFIG_inst/n90 , \CONFIG_inst/n92 , \CONFIG_inst/n94 ,
         \CONFIG_inst/n96 , \CONFIG_inst/n98 , \CONFIG_inst/n104 ,
         \CONFIG_inst/n105 , \CONFIG_inst/n106 , \CONFIG_inst/n107 ,
         \CONFIG_inst/n108 , \CONFIG_inst/n109 , \CONFIG_inst/n110 ,
         \CONFIG_inst/n111 , \CONFIG_inst/n100 , \CONFIG_inst/n101 ,
         \CONFIG_inst/n102 , \CONFIG_inst/n103 , \CONFIG_inst/n74 ,
         \CONFIG_inst/n75 , \CONFIG_inst/n76 , \CONFIG_inst/n77 ,
         \CONFIG_inst/n78 , \CONFIG_inst/n79 , \CONFIG_inst/n80 ,
         \CONFIG_inst/n81 , \CONFIG_inst/n85 , \CONFIG_inst/n87 ,
         \CONFIG_inst/n89 , \CONFIG_inst/n91 , \CONFIG_inst/n93 ,
         \CONFIG_inst/n95 , \CONFIG_inst/n97 , \CONFIG_inst/n99 ,
         \CONFIG_inst/n112 , \CONFIG_inst/n113 ,
         \CONFIG_inst/spi_rx_valid_prev , \CONFIG_inst/i_CONFIG_sync2 ,
         \CONFIG_inst/i_CONFIG_sync1 , n635, n636, n637, n638, n639, n640,
         n641, n642, n643, n644, n645, n646, n647, n648, n649, n650, n651,
         n652, n653, n654, n655, n656, n657, \intadd_0/CI , \intadd_0/SUM[11] ,
         \intadd_0/SUM[10] , \intadd_0/SUM[9] , \intadd_0/SUM[8] ,
         \intadd_0/SUM[7] , \intadd_0/SUM[6] , \intadd_0/SUM[5] ,
         \intadd_0/SUM[4] , \intadd_0/SUM[3] , \intadd_0/SUM[2] ,
         \intadd_0/SUM[1] , \intadd_0/SUM[0] , \intadd_0/n12 , \intadd_0/n11 ,
         \intadd_0/n10 , \intadd_0/n9 , \intadd_0/n8 , \intadd_0/n7 ,
         \intadd_0/n6 , \intadd_0/n5 , \intadd_0/n4 , \intadd_0/n3 ,
         \intadd_0/n2 , \intadd_0/n1 , n658, n659, n660, n661, n662, n663,
         n664, n665, n666, n667, n668, n669, n670, n671, n672, n673, n674,
         n675, n676, n677, n678, n679, n680, n681, n682, n683, n684, n685,
         n686, n687, n688, n689, n690, n691, n692, n693, n694, n695, n696,
         n697, n698, n699, n700, n701, n702, n703, n704, n705, n706, n707,
         n708, n709, n710, n711, n712, n713, n714, n715, n716, n717, n718,
         n719, n720, n721, n722, n723, n724, n725, n726, n727, n728, n729,
         n730, n731, n732, n733, n734, n735, n736, n737, n738, n739, n740,
         n741, n742, n743, n744, n745, n746, n747, n748, n749, n750, n751,
         n752, n753, n754, n755, n756, n757, n758, n759, n760, n761, n762,
         n763, n764, n765, n766, n767, n768, n769, n770, n771, n772, n773,
         n774, n775, n776, n777, n778, n779, n780, n781, n782, n783, n784,
         n785, n786, n787, n788, n789, n790, n791, n792, n793, n794, n795,
         n796, n797, n798, n799, n800, n801, n802, n803, n804, n805, n806,
         n807, n808, n809, n810, n811, n812, n813, n814, n815, n816, n817,
         n818, n819, n820, n821, n822, n826, n827, n828, n829, n830, n831,
         n832, n833, n834, n835, n836, n837, n838, n839, n840, n841, n842,
         n843, n844, n845, n846, n847, n848, n849, n850, n851, n852, n853,
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
         n1587, n1588, n1589, n1590, n1591;
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
  UDB116SVT24_FDNQ_V2_1 \fsm_sync_inst/state_neg_reg  ( .D(\fsm_sync_inst/N12 ), .CK(clk), .Q(\fsm_sync_inst/state_neg ) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/interval_sum_reg[15]  ( .D(
        \sh_sync_inst/n231 ), .CK(clk), .RD(n1550), .Q(
        \sh_sync_inst/interval_sum [15]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/avg_interval_reg[1]  ( .D(
        \sh_sync_inst/n164 ), .CK(clk), .RD(n1543), .Q(
        \sh_sync_inst/avg_interval [1]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/avg_interval_reg[2]  ( .D(
        \sh_sync_inst/n165 ), .CK(clk), .RD(n1556), .Q(
        \sh_sync_inst/avg_interval [2]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/avg_interval_reg[3]  ( .D(
        \sh_sync_inst/n166 ), .CK(clk), .RD(n1555), .Q(
        \sh_sync_inst/avg_interval [3]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/avg_interval_reg[4]  ( .D(
        \sh_sync_inst/n167 ), .CK(clk), .RD(n1555), .Q(
        \sh_sync_inst/avg_interval [4]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/avg_interval_reg[5]  ( .D(
        \sh_sync_inst/n168 ), .CK(clk), .RD(n1555), .Q(
        \sh_sync_inst/avg_interval [5]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/avg_interval_reg[6]  ( .D(
        \sh_sync_inst/n169 ), .CK(clk), .RD(n895), .Q(
        \sh_sync_inst/avg_interval [6]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/avg_interval_reg[7]  ( .D(
        \sh_sync_inst/n170 ), .CK(clk), .RD(n1556), .Q(
        \sh_sync_inst/avg_interval [7]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/avg_interval_reg[8]  ( .D(
        \sh_sync_inst/n171 ), .CK(clk), .RD(n1556), .Q(
        \sh_sync_inst/avg_interval [8]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/avg_interval_reg[9]  ( .D(
        \sh_sync_inst/n172 ), .CK(clk), .RD(n1556), .Q(
        \sh_sync_inst/avg_interval [9]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/avg_interval_reg[10]  ( .D(
        \sh_sync_inst/n173 ), .CK(clk), .RD(n1555), .Q(
        \sh_sync_inst/avg_interval [10]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/avg_interval_reg[11]  ( .D(
        \sh_sync_inst/n174 ), .CK(clk), .RD(n1554), .Q(
        \sh_sync_inst/avg_interval [11]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/avg_interval_reg[12]  ( .D(
        \sh_sync_inst/n175 ), .CK(clk), .RD(n1554), .Q(
        \sh_sync_inst/avg_interval [12]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/avg_interval_reg[13]  ( .D(
        \sh_sync_inst/n176 ), .CK(clk), .RD(n1554), .Q(
        \sh_sync_inst/avg_interval [13]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/avg_interval_reg[0]  ( .D(
        \sh_sync_inst/n177 ), .CK(clk), .RD(n1553), .Q(
        \sh_sync_inst/avg_interval [0]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/timeout_counter_reg[13]  ( .D(
        \sh_sync_inst/n178 ), .CK(clk), .RD(n1552), .Q(
        \sh_sync_inst/timeout_counter [13]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/timeout_counter_reg[12]  ( .D(
        \sh_sync_inst/n179 ), .CK(clk), .RD(n1552), .Q(
        \sh_sync_inst/timeout_counter [12]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/timeout_counter_reg[11]  ( .D(
        \sh_sync_inst/n180 ), .CK(clk), .RD(n1552), .Q(
        \sh_sync_inst/timeout_counter [11]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/timeout_counter_reg[10]  ( .D(
        \sh_sync_inst/n181 ), .CK(clk), .RD(n1557), .Q(
        \sh_sync_inst/timeout_counter [10]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/timeout_counter_reg[9]  ( .D(
        \sh_sync_inst/n182 ), .CK(clk), .RD(n880), .Q(
        \sh_sync_inst/timeout_counter [9]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/timeout_counter_reg[8]  ( .D(
        \sh_sync_inst/n183 ), .CK(clk), .RD(n881), .Q(
        \sh_sync_inst/timeout_counter [8]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/timeout_counter_reg[7]  ( .D(
        \sh_sync_inst/n184 ), .CK(clk), .RD(n879), .Q(
        \sh_sync_inst/timeout_counter [7]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/timeout_counter_reg[6]  ( .D(
        \sh_sync_inst/n185 ), .CK(clk), .RD(n1554), .Q(
        \sh_sync_inst/timeout_counter [6]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/timeout_counter_reg[5]  ( .D(
        \sh_sync_inst/n186 ), .CK(clk), .RD(n1553), .Q(
        \sh_sync_inst/timeout_counter [5]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/timeout_counter_reg[4]  ( .D(
        \sh_sync_inst/n187 ), .CK(clk), .RD(n1553), .Q(
        \sh_sync_inst/timeout_counter [4]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/timeout_counter_reg[3]  ( .D(
        \sh_sync_inst/n188 ), .CK(clk), .RD(n1553), .Q(
        \sh_sync_inst/timeout_counter [3]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/timeout_counter_reg[2]  ( .D(
        \sh_sync_inst/n189 ), .CK(clk), .RD(n1559), .Q(
        \sh_sync_inst/timeout_counter [2]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/timeout_counter_reg[1]  ( .D(
        \sh_sync_inst/n190 ), .CK(clk), .RD(n1558), .Q(
        \sh_sync_inst/timeout_counter [1]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/timeout_counter_reg[0]  ( .D(
        \sh_sync_inst/n191 ), .CK(clk), .RD(n1558), .Q(
        \sh_sync_inst/timeout_counter [0]) );
  UDB116SVT24_FDPSBQ_1 \sh_sync_inst/sh_en_done_reg  ( .D(\sh_sync_inst/n235 ), 
        .CK(clk), .SD(n1528), .Q(SH_EN_DONE) );
  UDB116SVT24_FDPSBQ_1 \sh_sync_inst/first_pulse_flag_reg  ( .D(
        \sh_sync_inst/n216 ), .CK(clk), .SD(n1528), .Q(
        \sh_sync_inst/first_pulse_flag ) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/fsm_rst_reg  ( .D(\sh_sync_inst/n194 ), 
        .CK(clk), .RD(n1558), .Q(FSM_RST) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/pulse_pack_count_reg[6]  ( .D(
        \sh_sync_inst/n195 ), .CK(clk), .RD(n1557), .Q(
        \sh_sync_inst/pulse_pack_count [6]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/pulse_pack_count_reg[5]  ( .D(
        \sh_sync_inst/n196 ), .CK(clk), .RD(n1557), .Q(
        \sh_sync_inst/pulse_pack_count [5]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/pulse_pack_count_reg[4]  ( .D(
        \sh_sync_inst/n197 ), .CK(clk), .RD(n1557), .Q(
        \sh_sync_inst/pulse_pack_count [4]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/pulse_pack_count_reg[3]  ( .D(
        \sh_sync_inst/n198 ), .CK(clk), .RD(n1545), .Q(
        \sh_sync_inst/pulse_pack_count [3]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/pulse_pack_count_reg[2]  ( .D(
        \sh_sync_inst/n199 ), .CK(clk), .RD(n1544), .Q(
        \sh_sync_inst/pulse_pack_count [2]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/pulse_pack_count_reg[1]  ( .D(
        \sh_sync_inst/n200 ), .CK(clk), .RD(n1544), .Q(
        \sh_sync_inst/pulse_pack_count [1]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/pulse_pack_count_reg[0]  ( .D(
        \sh_sync_inst/n201 ), .CK(clk), .RD(n1544), .Q(
        \sh_sync_inst/pulse_pack_count [0]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/counter_reg[9]  ( .D(
        \sh_sync_inst/n205 ), .CK(clk), .RD(n1549), .Q(
        \sh_sync_inst/counter [9]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/counter_reg[8]  ( .D(
        \sh_sync_inst/n206 ), .CK(clk), .RD(n1548), .Q(
        \sh_sync_inst/counter [8]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/counter_reg[2]  ( .D(
        \sh_sync_inst/n212 ), .CK(clk), .RD(n1548), .Q(
        \sh_sync_inst/counter [2]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/counter_reg[0]  ( .D(
        \sh_sync_inst/n214 ), .CK(clk), .RD(n1543), .Q(
        \sh_sync_inst/counter [0]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/interval_sum_reg[1]  ( .D(
        \sh_sync_inst/n217 ), .CK(clk), .RD(n1543), .Q(
        \sh_sync_inst/interval_sum [1]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/interval_sum_reg[2]  ( .D(
        \sh_sync_inst/n218 ), .CK(clk), .RD(n1547), .Q(
        \sh_sync_inst/interval_sum [2]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/interval_sum_reg[3]  ( .D(
        \sh_sync_inst/n219 ), .CK(clk), .RD(n1546), .Q(
        \sh_sync_inst/interval_sum [3]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/interval_sum_reg[4]  ( .D(
        \sh_sync_inst/n220 ), .CK(clk), .RD(n1546), .Q(
        \sh_sync_inst/interval_sum [4]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/interval_sum_reg[5]  ( .D(
        \sh_sync_inst/n221 ), .CK(clk), .RD(n1546), .Q(
        \sh_sync_inst/interval_sum [5]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/interval_sum_reg[6]  ( .D(
        \sh_sync_inst/n222 ), .CK(clk), .RD(n1548), .Q(
        \sh_sync_inst/interval_sum [6]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/interval_sum_reg[7]  ( .D(
        \sh_sync_inst/n223 ), .CK(clk), .RD(n1547), .Q(
        \sh_sync_inst/interval_sum [7]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/interval_sum_reg[8]  ( .D(
        \sh_sync_inst/n224 ), .CK(clk), .RD(n1547), .Q(
        \sh_sync_inst/interval_sum [8]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/interval_sum_reg[9]  ( .D(
        \sh_sync_inst/n225 ), .CK(clk), .RD(n1547), .Q(
        \sh_sync_inst/interval_sum [9]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/interval_sum_reg[10]  ( .D(
        \sh_sync_inst/n226 ), .CK(clk), .RD(n1546), .Q(
        \sh_sync_inst/interval_sum [10]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/interval_sum_reg[11]  ( .D(
        \sh_sync_inst/n227 ), .CK(clk), .RD(n1545), .Q(
        \sh_sync_inst/interval_sum [11]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/interval_sum_reg[12]  ( .D(
        \sh_sync_inst/n228 ), .CK(clk), .RD(n1545), .Q(
        \sh_sync_inst/interval_sum [12]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/interval_sum_reg[13]  ( .D(
        \sh_sync_inst/n229 ), .CK(clk), .RD(n1545), .Q(
        \sh_sync_inst/interval_sum [13]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/interval_sum_reg[14]  ( .D(
        \sh_sync_inst/n230 ), .CK(clk), .RD(n1549), .Q(
        \sh_sync_inst/interval_sum [14]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/interval_sum_reg[16]  ( .D(
        \sh_sync_inst/n232 ), .CK(clk), .RD(n1549), .Q(
        \sh_sync_inst/interval_sum [16]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/interval_sum_reg[17]  ( .D(
        \sh_sync_inst/n233 ), .CK(clk), .RD(n1549), .Q(
        \sh_sync_inst/interval_sum [17]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/interval_sum_reg[0]  ( .D(
        \sh_sync_inst/n234 ), .CK(clk), .RD(n1551), .Q(
        \sh_sync_inst/interval_sum [0]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/pulse_count_reg[3]  ( .D(
        \sh_sync_inst/n246 ), .CK(clk), .RD(n1550), .Q(
        \sh_sync_inst/pulse_count [3]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/pulse_count_reg[2]  ( .D(
        \sh_sync_inst/n243 ), .CK(clk), .RD(n1550), .Q(
        \sh_sync_inst/pulse_count [2]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/pulse_count_reg[1]  ( .D(
        \sh_sync_inst/n244 ), .CK(clk), .RD(n1550), .Q(
        \sh_sync_inst/pulse_count [1]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/pulse_count_reg[0]  ( .D(
        \sh_sync_inst/n245 ), .CK(clk), .RD(n1552), .Q(
        \sh_sync_inst/pulse_count [0]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/rfin_edge_reg  ( .D(\sh_sync_inst/N79 ), .CK(clk), .RD(n1551), .Q(\sh_sync_inst/rfin_edge ) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/rfin_prev_reg  ( .D(
        \sh_sync_inst/rfin_sync2 ), .CK(clk), .RD(n1551), .Q(
        \sh_sync_inst/rfin_prev ) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/rfin_sync2_reg  ( .D(
        \sh_sync_inst/rfin_sync1 ), .CK(clk), .RD(n1551), .Q(
        \sh_sync_inst/rfin_sync2 ) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/rfin_sync1_reg  ( .D(
        \sh_sync_inst/N400 ), .CK(clk), .RD(n1541), .Q(
        \sh_sync_inst/rfin_sync1 ) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/counter_reg[11]  ( .D(
        \sh_sync_inst/n203 ), .CK(clk), .RD(n1541), .Q(
        \sh_sync_inst/counter [11]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/counter_reg[10]  ( .D(
        \sh_sync_inst/n204 ), .CK(clk), .RD(n1540), .Q(
        \sh_sync_inst/counter [10]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/counter_reg[6]  ( .D(
        \sh_sync_inst/n208 ), .CK(clk), .RD(n1540), .Q(
        \sh_sync_inst/counter [6]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/counter_reg[4]  ( .D(
        \sh_sync_inst/n210 ), .CK(clk), .RD(n1542), .Q(
        \sh_sync_inst/counter [4]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/counter_reg[3]  ( .D(
        \sh_sync_inst/n211 ), .CK(clk), .RD(n1541), .Q(
        \sh_sync_inst/counter [3]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/counter_reg[13]  ( .D(
        \sh_sync_inst/n215 ), .CK(clk), .RD(n1541), .Q(
        \sh_sync_inst/counter [13]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/state_reg[2]  ( .D(\sh_sync_inst/n248 ), .CK(clk), .RD(n1540), .Q(\sh_sync_inst/state [2]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/state_reg[1]  ( .D(\sh_sync_inst/n249 ), .CK(clk), .RD(n1540), .Q(\sh_sync_inst/state [1]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/pulse_gen_count_reg[1]  ( .D(
        \sh_sync_inst/n236 ), .CK(clk), .RD(n1539), .Q(
        \sh_sync_inst/pulse_gen_count [1]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/pulse_gen_count_reg[2]  ( .D(
        \sh_sync_inst/n237 ), .CK(clk), .RD(n1539), .Q(
        \sh_sync_inst/pulse_gen_count [2]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/pulse_gen_count_reg[3]  ( .D(
        \sh_sync_inst/n238 ), .CK(clk), .RD(n1539), .Q(
        \sh_sync_inst/pulse_gen_count [3]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/pulse_gen_count_reg[4]  ( .D(
        \sh_sync_inst/n239 ), .CK(clk), .RD(n1542), .Q(
        \sh_sync_inst/pulse_gen_count [4]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/pulse_gen_count_reg[0]  ( .D(
        \sh_sync_inst/n241 ), .CK(clk), .RD(n1542), .Q(
        \sh_sync_inst/pulse_gen_count [0]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/counter_reg[12]  ( .D(
        \sh_sync_inst/n202 ), .CK(clk), .RD(n1539), .Q(
        \sh_sync_inst/counter [12]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/state_reg[0]  ( .D(\sh_sync_inst/n247 ), .CK(clk), .RD(n1538), .Q(\sh_sync_inst/state [0]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/tx_rdy_p_reg  ( .D(\sh_sync_inst/N81 ), 
        .CK(clk), .RD(n1538), .Q(\sh_sync_inst/tx_rdy_p ) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/tx_rdy_prev_reg  ( .D(TX_SH), .CK(clk), 
        .RD(n1538), .Q(\sh_sync_inst/tx_rdy_prev ) );
  UDB116SVT24_FDPRBQ_V2_1 \shift_buf_inst/shift_reg_reg[23]  ( .D(
        \shift_buf_inst/n30 ), .CK(clk), .RD(n1535), .Q(SHIFT_OUT[23]) );
  UDB116SVT24_FDPRBQ_V2_1 \shift_buf_inst/shift_reg_reg[22]  ( .D(
        \shift_buf_inst/n31 ), .CK(clk), .RD(n1535), .Q(SHIFT_OUT[22]) );
  UDB116SVT24_FDPRBQ_V2_1 \shift_buf_inst/shift_reg_reg[21]  ( .D(
        \shift_buf_inst/n32 ), .CK(clk), .RD(n1535), .Q(SHIFT_OUT[21]) );
  UDB116SVT24_FDPRBQ_V2_1 \shift_buf_inst/shift_reg_reg[20]  ( .D(
        \shift_buf_inst/n33 ), .CK(clk), .RD(n1535), .Q(SHIFT_OUT[20]) );
  UDB116SVT24_FDPRBQ_V2_1 \shift_buf_inst/shift_reg_reg[19]  ( .D(
        \shift_buf_inst/n34 ), .CK(clk), .RD(n1537), .Q(SHIFT_OUT[19]) );
  UDB116SVT24_FDPRBQ_V2_1 \shift_buf_inst/shift_reg_reg[18]  ( .D(
        \shift_buf_inst/n35 ), .CK(clk), .RD(n1536), .Q(SHIFT_OUT[18]) );
  UDB116SVT24_FDPRBQ_V2_1 \shift_buf_inst/shift_reg_reg[17]  ( .D(
        \shift_buf_inst/n36 ), .CK(clk), .RD(n1536), .Q(SHIFT_OUT[17]) );
  UDB116SVT24_FDPRBQ_V2_1 \shift_buf_inst/shift_reg_reg[16]  ( .D(
        \shift_buf_inst/n37 ), .CK(clk), .RD(n1536), .Q(SHIFT_OUT[16]) );
  UDB116SVT24_FDPRBQ_V2_1 \shift_buf_inst/shift_reg_reg[15]  ( .D(
        \shift_buf_inst/n38 ), .CK(clk), .RD(n1531), .Q(SHIFT_OUT[15]) );
  UDB116SVT24_FDPRBQ_V2_1 \shift_buf_inst/shift_reg_reg[14]  ( .D(
        \shift_buf_inst/n39 ), .CK(clk), .RD(n1531), .Q(SHIFT_OUT[14]) );
  UDB116SVT24_FDPRBQ_V2_1 \shift_buf_inst/sync_reg[0]  ( .D(
        \shift_buf_inst/N28 ), .CK(clk), .RD(n1531), .Q(
        \shift_buf_inst/sync [0]) );
  UDB116SVT24_FDPRBQ_V2_1 \shift_buf_inst/shift_reg_reg[13]  ( .D(
        \shift_buf_inst/n40 ), .CK(clk), .RD(n1531), .Q(SHIFT_OUT[13]) );
  UDB116SVT24_FDPRBQ_V2_1 \shift_buf_inst/sync_reg[1]  ( .D(n657), .CK(clk), 
        .RD(n1532), .Q(\shift_buf_inst/sync [1]) );
  UDB116SVT24_FDPRBQ_V2_1 \shift_buf_inst/shift_reg_reg[12]  ( .D(
        \shift_buf_inst/n41 ), .CK(clk), .RD(n1532), .Q(SHIFT_OUT[12]) );
  UDB116SVT24_FDPRBQ_V2_1 \shift_buf_inst/sync_reg[2]  ( .D(
        \shift_buf_inst/N30 ), .CK(clk), .RD(n1532), .Q(
        \shift_buf_inst/sync [2]) );
  UDB116SVT24_FDPRBQ_V2_1 \shift_buf_inst/shift_reg_reg[11]  ( .D(
        \shift_buf_inst/n42 ), .CK(clk), .RD(n1532), .Q(SHIFT_OUT[11]) );
  UDB116SVT24_FDPRBQ_V2_1 \shift_buf_inst/sync_reg[3]  ( .D(n656), .CK(clk), 
        .RD(n1538), .Q(\shift_buf_inst/sync [3]) );
  UDB116SVT24_FDPRBQ_V2_1 \shift_buf_inst/shift_reg_reg[10]  ( .D(
        \shift_buf_inst/n43 ), .CK(clk), .RD(n1537), .Q(SHIFT_OUT[10]) );
  UDB116SVT24_FDPRBQ_V2_1 \shift_buf_inst/shift_reg_reg[9]  ( .D(
        \shift_buf_inst/n44 ), .CK(clk), .RD(n1537), .Q(SHIFT_OUT[9]) );
  UDB116SVT24_FDPRBQ_V2_1 \shift_buf_inst/shift_reg_reg[8]  ( .D(
        \shift_buf_inst/n45 ), .CK(clk), .RD(n1537), .Q(SHIFT_OUT[8]) );
  UDB116SVT24_FDPRBQ_V2_1 \shift_buf_inst/shift_reg_reg[7]  ( .D(
        \shift_buf_inst/n46 ), .CK(clk), .RD(n1533), .Q(SHIFT_OUT[7]) );
  UDB116SVT24_FDPRBQ_V2_1 \shift_buf_inst/shift_reg_reg[6]  ( .D(
        \shift_buf_inst/n47 ), .CK(clk), .RD(n1533), .Q(SHIFT_OUT[6]) );
  UDB116SVT24_FDPRBQ_V2_1 \shift_buf_inst/shift_reg_reg[5]  ( .D(
        \shift_buf_inst/n48 ), .CK(clk), .RD(n1533), .Q(SHIFT_OUT[5]) );
  UDB116SVT24_FDPRBQ_V2_1 \shift_buf_inst/shift_reg_reg[4]  ( .D(
        \shift_buf_inst/n49 ), .CK(clk), .RD(n1533), .Q(SHIFT_OUT[4]) );
  UDB116SVT24_FDPRBQ_V2_1 \shift_buf_inst/shift_reg_reg[3]  ( .D(
        \shift_buf_inst/n50 ), .CK(clk), .RD(n1534), .Q(SHIFT_OUT[3]) );
  UDB116SVT24_FDPRBQ_V2_1 \shift_buf_inst/shift_reg_reg[2]  ( .D(
        \shift_buf_inst/n51 ), .CK(clk), .RD(n1534), .Q(SHIFT_OUT[2]) );
  UDB116SVT24_FDPRBQ_V2_1 \shift_buf_inst/shift_reg_reg[1]  ( .D(
        \shift_buf_inst/n52 ), .CK(clk), .RD(n1534), .Q(SHIFT_OUT[1]) );
  UDB116SVT24_FDPRBQ_V2_1 \shift_buf_inst/shift_reg_reg[0]  ( .D(
        \shift_buf_inst/n53 ), .CK(clk), .RD(n1534), .Q(SHIFT_OUT[0]) );
  UDB116SVT24_FDPRBQ_V2_1 \pkt_reg_inst/dout_reg[0]  ( .D(\pkt_reg_inst/n28 ), 
        .CK(clk), .RD(n1590), .Q(SPI_IN[0]) );
  UDB116SVT24_FDPRBQ_V2_1 \pkt_reg_inst/pkt_reg_reg[16]  ( .D(
        \pkt_reg_inst/n36 ), .CK(clk), .RD(n1589), .Q(
        \pkt_reg_inst/pkt_reg [16]) );
  UDB116SVT24_FDPRBQ_V2_1 \pkt_reg_inst/pkt_reg_reg[8]  ( .D(
        \pkt_reg_inst/n44 ), .CK(clk), .RD(n1590), .Q(
        \pkt_reg_inst/pkt_reg [8]) );
  UDB116SVT24_FDPRBQ_V2_1 \pkt_reg_inst/pkt_reg_reg[0]  ( .D(
        \pkt_reg_inst/n52 ), .CK(clk), .RD(n1544), .Q(
        \pkt_reg_inst/pkt_reg [0]) );
  UDB116SVT24_FDPRBQ_V2_1 \pkt_reg_inst/dout_reg[1]  ( .D(\pkt_reg_inst/n27 ), 
        .CK(clk), .RD(n1589), .Q(SPI_IN[1]) );
  UDB116SVT24_FDPRBQ_V2_1 \pkt_reg_inst/pkt_reg_reg[17]  ( .D(
        \pkt_reg_inst/n35 ), .CK(clk), .RD(n1587), .Q(
        \pkt_reg_inst/pkt_reg [17]) );
  UDB116SVT24_FDPRBQ_V2_1 \pkt_reg_inst/pkt_reg_reg[9]  ( .D(
        \pkt_reg_inst/n43 ), .CK(clk), .RD(n1586), .Q(
        \pkt_reg_inst/pkt_reg [9]) );
  UDB116SVT24_FDPRBQ_V2_1 \pkt_reg_inst/pkt_reg_reg[1]  ( .D(
        \pkt_reg_inst/n51 ), .CK(clk), .RD(n1587), .Q(
        \pkt_reg_inst/pkt_reg [1]) );
  UDB116SVT24_FDPRBQ_V2_1 \pkt_reg_inst/dout_reg[2]  ( .D(\pkt_reg_inst/n26 ), 
        .CK(clk), .RD(n1586), .Q(SPI_IN[2]) );
  UDB116SVT24_FDPRBQ_V2_1 \pkt_reg_inst/pkt_reg_reg[18]  ( .D(
        \pkt_reg_inst/n34 ), .CK(clk), .RD(n1529), .Q(
        \pkt_reg_inst/pkt_reg [18]) );
  UDB116SVT24_FDPRBQ_V2_1 \pkt_reg_inst/pkt_reg_reg[10]  ( .D(
        \pkt_reg_inst/n42 ), .CK(clk), .RD(n1529), .Q(
        \pkt_reg_inst/pkt_reg [10]) );
  UDB116SVT24_FDPRBQ_V2_1 \pkt_reg_inst/pkt_reg_reg[2]  ( .D(
        \pkt_reg_inst/n50 ), .CK(clk), .RD(n1529), .Q(
        \pkt_reg_inst/pkt_reg [2]) );
  UDB116SVT24_FDPRBQ_V2_1 \pkt_reg_inst/dout_reg[3]  ( .D(\pkt_reg_inst/n25 ), 
        .CK(clk), .RD(n1529), .Q(SPI_IN[3]) );
  UDB116SVT24_FDPRBQ_V2_1 \pkt_reg_inst/pkt_reg_reg[19]  ( .D(
        \pkt_reg_inst/n33 ), .CK(clk), .RD(n1586), .Q(
        \pkt_reg_inst/pkt_reg [19]) );
  UDB116SVT24_FDPRBQ_V2_1 \pkt_reg_inst/pkt_reg_reg[11]  ( .D(
        \pkt_reg_inst/n41 ), .CK(clk), .RD(n1585), .Q(
        \pkt_reg_inst/pkt_reg [11]) );
  UDB116SVT24_FDPRBQ_V2_1 \pkt_reg_inst/pkt_reg_reg[3]  ( .D(
        \pkt_reg_inst/n49 ), .CK(clk), .RD(n1586), .Q(
        \pkt_reg_inst/pkt_reg [3]) );
  UDB116SVT24_FDPRBQ_V2_1 \pkt_reg_inst/dout_reg[4]  ( .D(\pkt_reg_inst/n24 ), 
        .CK(clk), .RD(n1585), .Q(SPI_IN[4]) );
  UDB116SVT24_FDPRBQ_V2_1 \pkt_reg_inst/pkt_reg_reg[20]  ( .D(
        \pkt_reg_inst/n32 ), .CK(clk), .RD(n1588), .Q(
        \pkt_reg_inst/pkt_reg [20]) );
  UDB116SVT24_FDPRBQ_V2_1 \pkt_reg_inst/pkt_reg_reg[12]  ( .D(
        \pkt_reg_inst/n40 ), .CK(clk), .RD(n1587), .Q(
        \pkt_reg_inst/pkt_reg [12]) );
  UDB116SVT24_FDPRBQ_V2_1 \pkt_reg_inst/pkt_reg_reg[4]  ( .D(
        \pkt_reg_inst/n48 ), .CK(clk), .RD(n1588), .Q(
        \pkt_reg_inst/pkt_reg [4]) );
  UDB116SVT24_FDPRBQ_V2_1 \pkt_reg_inst/dout_reg[5]  ( .D(\pkt_reg_inst/n23 ), 
        .CK(clk), .RD(n1587), .Q(SPI_IN[5]) );
  UDB116SVT24_FDPRBQ_V2_1 \pkt_reg_inst/pkt_reg_reg[21]  ( .D(
        \pkt_reg_inst/n31 ), .CK(clk), .RD(n1530), .Q(
        \pkt_reg_inst/pkt_reg [21]) );
  UDB116SVT24_FDPRBQ_V2_1 \pkt_reg_inst/pkt_reg_reg[13]  ( .D(
        \pkt_reg_inst/n39 ), .CK(clk), .RD(n1530), .Q(
        \pkt_reg_inst/pkt_reg [13]) );
  UDB116SVT24_FDPRBQ_V2_1 \pkt_reg_inst/pkt_reg_reg[5]  ( .D(
        \pkt_reg_inst/n47 ), .CK(clk), .RD(n1530), .Q(
        \pkt_reg_inst/pkt_reg [5]) );
  UDB116SVT24_FDPRBQ_V2_1 \pkt_reg_inst/dout_reg[6]  ( .D(\pkt_reg_inst/n22 ), 
        .CK(clk), .RD(n1530), .Q(SPI_IN[6]) );
  UDB116SVT24_FDPRBQ_V2_1 \pkt_reg_inst/pkt_reg_reg[22]  ( .D(
        \pkt_reg_inst/n30 ), .CK(clk), .RD(n1589), .Q(
        \pkt_reg_inst/pkt_reg [22]) );
  UDB116SVT24_FDPRBQ_V2_1 \pkt_reg_inst/pkt_reg_reg[14]  ( .D(
        \pkt_reg_inst/n38 ), .CK(clk), .RD(n1588), .Q(
        \pkt_reg_inst/pkt_reg [14]) );
  UDB116SVT24_FDPRBQ_V2_1 \pkt_reg_inst/pkt_reg_reg[6]  ( .D(
        \pkt_reg_inst/n46 ), .CK(clk), .RD(n1589), .Q(
        \pkt_reg_inst/pkt_reg [6]) );
  UDB116SVT24_FDPRBQ_V2_1 \pkt_reg_inst/dout_reg[7]  ( .D(\pkt_reg_inst/n21 ), 
        .CK(clk), .RD(n1588), .Q(SPI_IN[7]) );
  UDB116SVT24_FDPRBQ_V2_1 \pkt_reg_inst/pkt_reg_reg[23]  ( .D(
        \pkt_reg_inst/n29 ), .CK(clk), .RD(n1590), .Q(
        \pkt_reg_inst/pkt_reg [23]) );
  UDB116SVT24_FDPRBQ_V2_1 \pkt_reg_inst/pkt_reg_reg[15]  ( .D(
        \pkt_reg_inst/n37 ), .CK(clk), .RD(n1591), .Q(
        \pkt_reg_inst/pkt_reg [15]) );
  UDB116SVT24_FDPRBQ_V2_1 \pkt_reg_inst/pkt_reg_reg[7]  ( .D(
        \pkt_reg_inst/n45 ), .CK(clk), .RD(n1590), .Q(
        \pkt_reg_inst/pkt_reg [7]) );
  UDB116SVT24_FDPRBQ_V2_1 \SPI_slave_inst/OUT_reg[1]  ( .D(
        \SPI_slave_inst/n22 ), .CK(clk), .RD(n1584), .Q(SPI_OUT[1]) );
  UDB116SVT24_FDPRBQ_V2_1 \SPI_slave_inst/OUT_reg[2]  ( .D(
        \SPI_slave_inst/n24 ), .CK(clk), .RD(n1583), .Q(SPI_OUT[2]) );
  UDB116SVT24_FDPRBQ_V2_1 \SPI_slave_inst/OUT_reg[3]  ( .D(
        \SPI_slave_inst/n26 ), .CK(clk), .RD(n1585), .Q(SPI_OUT[3]) );
  UDB116SVT24_FDPRBQ_V2_1 \SPI_slave_inst/OUT_reg[4]  ( .D(
        \SPI_slave_inst/n28 ), .CK(clk), .RD(n1584), .Q(SPI_OUT[4]) );
  UDB116SVT24_FDPRBQ_V2_1 \SPI_slave_inst/OUT_reg[5]  ( .D(
        \SPI_slave_inst/n30 ), .CK(clk), .RD(n1584), .Q(SPI_OUT[5]) );
  UDB116SVT24_FDPRBQ_V2_1 \SPI_slave_inst/OUT_reg[6]  ( .D(
        \SPI_slave_inst/n32 ), .CK(clk), .RD(n1583), .Q(SPI_OUT[6]) );
  UDB116SVT24_FDPRBQ_V2_1 \SPI_slave_inst/OUT_reg[7]  ( .D(
        \SPI_slave_inst/n34 ), .CK(clk), .RD(n1559), .Q(SPI_OUT[7]) );
  UDB116SVT24_FDPRBQ_V2_1 \SPI_slave_inst/SHIFT_REG_reg[7]  ( .D(
        \SPI_slave_inst/n35 ), .CK(clk), .RD(n1585), .Q(
        \SPI_slave_inst/SHIFT_REG [7]) );
  UDB116SVT24_FDPRBQ_V2_1 \SPI_slave_inst/SHIFT_REG_reg[6]  ( .D(
        \SPI_slave_inst/n33 ), .CK(clk), .RD(n1584), .Q(
        \SPI_slave_inst/SHIFT_REG [6]) );
  UDB116SVT24_FDPRBQ_V2_1 \SPI_slave_inst/SHIFT_REG_reg[5]  ( .D(
        \SPI_slave_inst/n31 ), .CK(clk), .RD(n1583), .Q(
        \SPI_slave_inst/SHIFT_REG [5]) );
  UDB116SVT24_FDPRBQ_V2_1 \SPI_slave_inst/SHIFT_REG_reg[4]  ( .D(
        \SPI_slave_inst/n29 ), .CK(clk), .RD(n1582), .Q(
        \SPI_slave_inst/SHIFT_REG [4]) );
  UDB116SVT24_FDPRBQ_V2_1 \SPI_slave_inst/SHIFT_REG_reg[3]  ( .D(
        \SPI_slave_inst/n27 ), .CK(clk), .RD(n1581), .Q(
        \SPI_slave_inst/SHIFT_REG [3]) );
  UDB116SVT24_FDPRBQ_V2_1 \SPI_slave_inst/SHIFT_REG_reg[2]  ( .D(
        \SPI_slave_inst/n25 ), .CK(clk), .RD(n1581), .Q(
        \SPI_slave_inst/SHIFT_REG [2]) );
  UDB116SVT24_FDPRBQ_V2_1 \SPI_slave_inst/SHIFT_REG_reg[1]  ( .D(
        \SPI_slave_inst/n23 ), .CK(clk), .RD(n1581), .Q(
        \SPI_slave_inst/SHIFT_REG [1]) );
  UDB116SVT24_FDPRBQ_V2_1 \SPI_slave_inst/OUT_reg[0]  ( .D(
        \SPI_slave_inst/n36 ), .CK(clk), .RD(n1581), .Q(SPI_OUT[0]) );
  UDB116SVT24_FDPRBQ_V2_1 \SPI_slave_inst/SHIFT_REG_reg[0]  ( .D(
        \SPI_slave_inst/n37 ), .CK(clk), .RD(n1580), .Q(
        \SPI_slave_inst/SHIFT_REG [0]) );
  UDB116SVT24_FDPRBQ_V2_1 \SPI_slave_inst/SHIFT_IN_reg  ( .D(
        \SPI_slave_inst/n38 ), .CK(clk), .RD(n1580), .Q(
        \SPI_slave_inst/SHIFT_IN ) );
  UDB116SVT24_FDPRBQ_V2_1 \SPI_slave_inst/SPI_OUT_RDY_reg  ( .D(
        \SPI_slave_inst/n39 ), .CK(clk), .RD(n1580), .Q(SPI_OUT_RDY) );
  UDB116SVT24_FDPRBQ_V2_1 \SPI_slave_inst/SS_prev_reg  ( .D(n768), .CK(clk), 
        .RD(n1583), .Q(\SPI_slave_inst/SS_prev ) );
  UDB116SVT24_FDPRBQ_V2_1 \SPI_slave_inst/SCK_prev_reg  ( .D(
        \SPI_slave_inst/SCK_sync_1 ), .CK(clk), .RD(n1582), .Q(
        \SPI_slave_inst/SCK_prev ) );
  UDB116SVT24_FDPRBQ_V2_1 \SPI_slave_inst/SS_sync_0_reg  ( .D(CS), .CK(clk), 
        .RD(n1580), .Q(\SPI_slave_inst/SS_sync_0 ) );
  UDB116SVT24_FDPRBQ_V2_1 \SPI_slave_inst/SCK_sync_1_reg  ( .D(
        \SPI_slave_inst/SCK_sync_0 ), .CK(clk), .RD(n1582), .Q(
        \SPI_slave_inst/SCK_sync_1 ) );
  UDB116SVT24_FDPRBQ_V2_1 \SPI_slave_inst/SCK_sync_0_reg  ( .D(SCK), .CK(clk), 
        .RD(n1579), .Q(\SPI_slave_inst/SCK_sync_0 ) );
  UDB116SVT24_FDPRBQ_V2_1 \SPI_slave_inst/MOSI_sync_1_reg  ( .D(
        \SPI_slave_inst/MOSI_sync_0 ), .CK(clk), .RD(n1579), .Q(
        \SPI_slave_inst/MOSI_sync_1 ) );
  UDB116SVT24_FDPRBQ_V2_1 \SPI_slave_inst/MOSI_sync_0_reg  ( .D(MOSI), .CK(clk), .RD(n1579), .Q(\SPI_slave_inst/MOSI_sync_0 ) );
  UDB116SVT24_FDPRBQ_V2_1 \tx_buf_inst/dout_reg  ( .D(\tx_buf_inst/N5 ), .CK(
        clk), .RD(n1579), .Q(TX_OUT_I) );
  UDB116SVT24_FDPRBQ_V2_1 \tx_buf_inst/buffer_reg[7]  ( .D(\tx_buf_inst/n5 ), 
        .CK(clk), .RD(n1578), .Q(\tx_buf_inst/buffer [7]) );
  UDB116SVT24_FDPRBQ_V2_1 \tx_buf_inst/buffer_reg[6]  ( .D(\tx_buf_inst/n6 ), 
        .CK(clk), .RD(n1578), .Q(\tx_buf_inst/buffer [6]) );
  UDB116SVT24_FDPRBQ_V2_1 \tx_buf_inst/buffer_reg[5]  ( .D(\tx_buf_inst/n7 ), 
        .CK(clk), .RD(n1528), .Q(\tx_buf_inst/buffer [5]) );
  UDB116SVT24_FDPRBQ_V2_1 \tx_buf_inst/buffer_reg[4]  ( .D(\tx_buf_inst/n8 ), 
        .CK(clk), .RD(n1578), .Q(\tx_buf_inst/buffer [4]) );
  UDB116SVT24_FDPRBQ_V2_1 \tx_buf_inst/buffer_reg[3]  ( .D(\tx_buf_inst/n9 ), 
        .CK(clk), .RD(n1578), .Q(\tx_buf_inst/buffer [3]) );
  UDB116SVT24_FDPRBQ_V2_1 \tx_buf_inst/buffer_reg[2]  ( .D(\tx_buf_inst/n10 ), 
        .CK(clk), .RD(n1559), .Q(\tx_buf_inst/buffer [2]) );
  UDB116SVT24_FDPRBQ_V2_1 \tx_buf_inst/buffer_reg[1]  ( .D(\tx_buf_inst/n11 ), 
        .CK(clk), .RD(n1577), .Q(\tx_buf_inst/buffer [1]) );
  UDB116SVT24_FDPRBQ_V2_1 \tx_buf_inst/buffer_reg[0]  ( .D(\tx_buf_inst/n12 ), 
        .CK(clk), .RD(n1559), .Q(\tx_buf_inst/buffer [0]) );
  UDB116SVT24_FDPRBQ_V2_1 \CONFIG_inst/ext_counter_value_RX_reg[1]  ( .D(
        \CONFIG_inst/n42 ), .CK(clk), .RD(n1571), .Q(ext_count_val_RX[1]) );
  UDB116SVT24_FDPRBQ_V2_1 \CONFIG_inst/ext_counter_value_RX_reg[2]  ( .D(
        \CONFIG_inst/n43 ), .CK(clk), .RD(n1570), .Q(ext_count_val_RX[2]) );
  UDB116SVT24_FDPRBQ_V2_1 \CONFIG_inst/ext_counter_value_RX_reg[3]  ( .D(
        \CONFIG_inst/n44 ), .CK(clk), .RD(n1570), .Q(ext_count_val_RX[3]) );
  UDB116SVT24_FDPRBQ_V2_1 \CONFIG_inst/ext_counter_value_RX_reg[4]  ( .D(
        \CONFIG_inst/n45 ), .CK(clk), .RD(n1566), .Q(ext_count_val_RX[4]) );
  UDB116SVT24_FDPRBQ_V2_1 \CONFIG_inst/ext_counter_value_RX_reg[5]  ( .D(
        \CONFIG_inst/n46 ), .CK(clk), .RD(n1566), .Q(ext_count_val_RX[5]) );
  UDB116SVT24_FDPRBQ_V2_1 \CONFIG_inst/ext_counter_value_RX_reg[6]  ( .D(
        \CONFIG_inst/n47 ), .CK(clk), .RD(n1566), .Q(ext_count_val_RX[6]) );
  UDB116SVT24_FDPRBQ_V2_1 \CONFIG_inst/ext_counter_value_RX_reg[7]  ( .D(
        \CONFIG_inst/n48 ), .CK(clk), .RD(n1566), .Q(ext_count_val_RX[7]) );
  UDB116SVT24_FDPRBQ_V2_1 \CONFIG_inst/ext_counter_value_RX_reg[8]  ( .D(
        \CONFIG_inst/n49 ), .CK(clk), .RD(n1561), .Q(ext_count_val_RX[8]) );
  UDB116SVT24_FDPRBQ_V2_1 \CONFIG_inst/ext_counter_value_RX_reg[9]  ( .D(
        \CONFIG_inst/n50 ), .CK(clk), .RD(n1560), .Q(ext_count_val_RX[9]) );
  UDB116SVT24_FDPRBQ_V2_1 \CONFIG_inst/ext_counter_value_RX_reg[10]  ( .D(
        \CONFIG_inst/n51 ), .CK(clk), .RD(n1560), .Q(ext_count_val_RX[10]) );
  UDB116SVT24_FDPRBQ_V2_1 \CONFIG_inst/ext_counter_value_RX_reg[11]  ( .D(
        \CONFIG_inst/n52 ), .CK(clk), .RD(n1560), .Q(ext_count_val_RX[11]) );
  UDB116SVT24_FDPRBQ_V2_1 \CONFIG_inst/ext_counter_value_RX_reg[12]  ( .D(
        \CONFIG_inst/n53 ), .CK(clk), .RD(n1563), .Q(ext_count_val_RX[12]) );
  UDB116SVT24_FDPRBQ_V2_1 \CONFIG_inst/ext_counter_value_RX_reg[13]  ( .D(
        \CONFIG_inst/n54 ), .CK(clk), .RD(n1563), .Q(ext_count_val_RX[13]) );
  UDB116SVT24_FDPRBQ_V2_1 \CONFIG_inst/ext_counter_value_RX_reg[0]  ( .D(
        \CONFIG_inst/n57 ), .CK(clk), .RD(n1562), .Q(ext_count_val_RX[0]) );
  UDB116SVT24_FDPRBQ_V2_1 \CONFIG_inst/ext_counter_flag_RX_reg  ( .D(
        \CONFIG_inst/n83 ), .CK(clk), .RD(n1561), .Q(ext_counter_flag_RX) );
  UDB116SVT24_FDPRBQ_V2_1 \CONFIG_inst/ext_counter_value_TX_reg[1]  ( .D(
        \CONFIG_inst/n58 ), .CK(clk), .RD(n1561), .Q(ext_count_val_TX[1]) );
  UDB116SVT24_FDPRBQ_V2_1 \CONFIG_inst/ext_counter_value_TX_reg[2]  ( .D(
        \CONFIG_inst/n59 ), .CK(clk), .RD(n1561), .Q(ext_count_val_TX[2]) );
  UDB116SVT24_FDPRBQ_V2_1 \CONFIG_inst/ext_counter_value_TX_reg[3]  ( .D(
        \CONFIG_inst/n60 ), .CK(clk), .RD(n1563), .Q(ext_count_val_TX[3]) );
  UDB116SVT24_FDPRBQ_V2_1 \CONFIG_inst/ext_counter_value_TX_reg[4]  ( .D(
        \CONFIG_inst/n61 ), .CK(clk), .RD(n1562), .Q(ext_count_val_TX[4]) );
  UDB116SVT24_FDPRBQ_V2_1 \CONFIG_inst/ext_counter_value_TX_reg[5]  ( .D(
        \CONFIG_inst/n62 ), .CK(clk), .RD(n1562), .Q(ext_count_val_TX[5]) );
  UDB116SVT24_FDPRBQ_V2_1 \CONFIG_inst/ext_counter_value_TX_reg[6]  ( .D(
        \CONFIG_inst/n63 ), .CK(clk), .RD(n1562), .Q(ext_count_val_TX[6]) );
  UDB116SVT24_FDPRBQ_V2_1 \CONFIG_inst/ext_counter_value_TX_reg[7]  ( .D(
        \CONFIG_inst/n64 ), .CK(clk), .RD(n1564), .Q(ext_count_val_TX[7]) );
  UDB116SVT24_FDPRBQ_V2_1 \CONFIG_inst/ext_counter_value_TX_reg[8]  ( .D(
        \CONFIG_inst/n65 ), .CK(clk), .RD(n1564), .Q(ext_count_val_TX[8]) );
  UDB116SVT24_FDPRBQ_V2_1 \CONFIG_inst/ext_counter_value_TX_reg[9]  ( .D(
        \CONFIG_inst/n66 ), .CK(clk), .RD(n1564), .Q(ext_count_val_TX[9]) );
  UDB116SVT24_FDPRBQ_V2_1 \CONFIG_inst/ext_counter_value_TX_reg[10]  ( .D(
        \CONFIG_inst/n67 ), .CK(clk), .RD(n1564), .Q(ext_count_val_TX[10]) );
  UDB116SVT24_FDPRBQ_V2_1 \CONFIG_inst/ext_counter_value_TX_reg[11]  ( .D(
        \CONFIG_inst/n68 ), .CK(clk), .RD(n1577), .Q(ext_count_val_TX[11]) );
  UDB116SVT24_FDPRBQ_V2_1 \CONFIG_inst/ext_counter_value_TX_reg[12]  ( .D(
        \CONFIG_inst/n69 ), .CK(clk), .RD(n1563), .Q(ext_count_val_TX[12]) );
  UDB116SVT24_FDPRBQ_V2_1 \CONFIG_inst/ext_counter_value_TX_reg[13]  ( .D(
        \CONFIG_inst/n70 ), .CK(clk), .RD(n1570), .Q(ext_count_val_TX[13]) );
  UDB116SVT24_FDPRBQ_V2_1 \CONFIG_inst/ext_counter_value_TX_reg[0]  ( .D(
        \CONFIG_inst/n73 ), .CK(clk), .RD(n1565), .Q(ext_count_val_TX[0]) );
  UDB116SVT24_FDPRBQ_V2_1 \CONFIG_inst/ext_counter_flag_TX_reg  ( .D(
        \CONFIG_inst/n82 ), .CK(clk), .RD(n1565), .Q(ext_counter_flag_TX) );
  UDB116SVT24_FDPRBQ_V2_1 \CONFIG_inst/arthur_reg[9]  ( .D(\CONFIG_inst/n84 ), 
        .CK(clk), .RD(n1565), .Q(arthur[9]) );
  UDB116SVT24_FDPRBQ_V2_1 \CONFIG_inst/arthur_reg[10]  ( .D(\CONFIG_inst/n86 ), 
        .CK(clk), .RD(n1575), .Q(arthur[10]) );
  UDB116SVT24_FDPRBQ_V2_1 \CONFIG_inst/arthur_reg[11]  ( .D(\CONFIG_inst/n88 ), 
        .CK(clk), .RD(n1574), .Q(arthur[11]) );
  UDB116SVT24_FDPRBQ_V2_1 \CONFIG_inst/arthur_reg[12]  ( .D(\CONFIG_inst/n90 ), 
        .CK(clk), .RD(n1574), .Q(arthur[12]) );
  UDB116SVT24_FDPRBQ_V2_1 \CONFIG_inst/arthur_reg[13]  ( .D(\CONFIG_inst/n92 ), 
        .CK(clk), .RD(n1574), .Q(arthur[13]) );
  UDB116SVT24_FDPRBQ_V2_1 \CONFIG_inst/arthur_reg[14]  ( .D(\CONFIG_inst/n94 ), 
        .CK(clk), .RD(n1576), .Q(arthur[14]) );
  UDB116SVT24_FDPRBQ_V2_1 \CONFIG_inst/arthur_reg[15]  ( .D(\CONFIG_inst/n96 ), 
        .CK(clk), .RD(n1576), .Q(arthur[15]) );
  UDB116SVT24_FDPRBQ_V2_1 \CONFIG_inst/arthur_reg[8]  ( .D(\CONFIG_inst/n98 ), 
        .CK(clk), .RD(n1575), .Q(arthur[8]) );
  UDB116SVT24_FDPRBQ_V2_1 \CONFIG_inst/arthur_reg[1]  ( .D(\CONFIG_inst/n104 ), 
        .CK(clk), .RD(n1575), .Q(arthur[1]) );
  UDB116SVT24_FDPRBQ_V2_1 \CONFIG_inst/arthur_reg[2]  ( .D(\CONFIG_inst/n105 ), 
        .CK(clk), .RD(n1577), .Q(arthur[2]) );
  UDB116SVT24_FDPRBQ_V2_1 \CONFIG_inst/arthur_reg[3]  ( .D(\CONFIG_inst/n106 ), 
        .CK(clk), .RD(n1577), .Q(arthur[3]) );
  UDB116SVT24_FDPRBQ_V2_1 \CONFIG_inst/arthur_reg[4]  ( .D(\CONFIG_inst/n107 ), 
        .CK(clk), .RD(n1576), .Q(arthur[4]) );
  UDB116SVT24_FDPRBQ_V2_1 \CONFIG_inst/arthur_reg[5]  ( .D(\CONFIG_inst/n108 ), 
        .CK(clk), .RD(n1576), .Q(arthur[5]) );
  UDB116SVT24_FDPRBQ_V2_1 \CONFIG_inst/arthur_reg[6]  ( .D(\CONFIG_inst/n109 ), 
        .CK(clk), .RD(n1567), .Q(arthur[6]) );
  UDB116SVT24_FDPRBQ_V2_1 \CONFIG_inst/arthur_reg[7]  ( .D(\CONFIG_inst/n110 ), 
        .CK(clk), .RD(n1567), .Q(arthur[7]) );
  UDB116SVT24_FDPRBQ_V2_1 \CONFIG_inst/arthur_reg[0]  ( .D(\CONFIG_inst/n111 ), 
        .CK(clk), .RD(n1575), .Q(arthur[0]) );
  UDB116SVT24_FDPRBQ_V2_1 \CONFIG_inst/osc_freq_reg[1]  ( .D(
        \CONFIG_inst/n100 ), .CK(clk), .RD(n1567), .Q(osc_freq[1]) );
  UDB116SVT24_FDPRBQ_V2_1 \CONFIG_inst/osc_freq_reg[2]  ( .D(
        \CONFIG_inst/n101 ), .CK(clk), .RD(n1568), .Q(osc_freq[2]) );
  UDB116SVT24_FDPRBQ_V2_1 \CONFIG_inst/osc_freq_reg[3]  ( .D(
        \CONFIG_inst/n102 ), .CK(clk), .RD(n1568), .Q(osc_freq[3]) );
  UDB116SVT24_FDPRBQ_V2_1 \CONFIG_inst/osc_freq_reg[0]  ( .D(
        \CONFIG_inst/n103 ), .CK(clk), .RD(n1568), .Q(osc_freq[0]) );
  UDB116SVT24_FDPRBQ_V2_1 \CONFIG_inst/opcode_q_reg[1]  ( .D(\CONFIG_inst/n74 ), .CK(clk), .RD(n1567), .Q(\CONFIG_inst/opcode_q [1]) );
  UDB116SVT24_FDPRBQ_V2_1 \CONFIG_inst/opcode_q_reg[2]  ( .D(\CONFIG_inst/n75 ), .CK(clk), .RD(n1569), .Q(\CONFIG_inst/opcode_q [2]) );
  UDB116SVT24_FDPRBQ_V2_1 \CONFIG_inst/opcode_q_reg[3]  ( .D(\CONFIG_inst/n76 ), .CK(clk), .RD(n1569), .Q(\CONFIG_inst/opcode_q [3]) );
  UDB116SVT24_FDPRBQ_V2_1 \CONFIG_inst/opcode_q_reg[4]  ( .D(\CONFIG_inst/n77 ), .CK(clk), .RD(n1569), .Q(\CONFIG_inst/opcode_q [4]) );
  UDB116SVT24_FDPRBQ_V2_1 \CONFIG_inst/opcode_q_reg[5]  ( .D(\CONFIG_inst/n78 ), .CK(clk), .RD(n1568), .Q(\CONFIG_inst/opcode_q [5]) );
  UDB116SVT24_FDPRBQ_V2_1 \CONFIG_inst/opcode_q_reg[6]  ( .D(\CONFIG_inst/n79 ), .CK(clk), .RD(n1572), .Q(\CONFIG_inst/opcode_q [6]) );
  UDB116SVT24_FDPRBQ_V2_1 \CONFIG_inst/opcode_q_reg[7]  ( .D(\CONFIG_inst/n80 ), .CK(clk), .RD(n1571), .Q(\CONFIG_inst/opcode_q [7]) );
  UDB116SVT24_FDPRBQ_V2_1 \CONFIG_inst/opcode_q_reg[0]  ( .D(\CONFIG_inst/n81 ), .CK(clk), .RD(n1571), .Q(\CONFIG_inst/opcode_q [0]) );
  UDB116SVT24_FDPRBQ_V2_1 \CONFIG_inst/pay0_reg[1]  ( .D(\CONFIG_inst/n85 ), 
        .CK(clk), .RD(n1571), .Q(\CONFIG_inst/pay0 [1]) );
  UDB116SVT24_FDPRBQ_V2_1 \CONFIG_inst/pay0_reg[2]  ( .D(\CONFIG_inst/n87 ), 
        .CK(clk), .RD(n1573), .Q(\CONFIG_inst/pay0 [2]) );
  UDB116SVT24_FDPRBQ_V2_1 \CONFIG_inst/pay0_reg[3]  ( .D(\CONFIG_inst/n89 ), 
        .CK(clk), .RD(n1572), .Q(\CONFIG_inst/pay0 [3]) );
  UDB116SVT24_FDPRBQ_V2_1 \CONFIG_inst/pay0_reg[4]  ( .D(\CONFIG_inst/n91 ), 
        .CK(clk), .RD(n1572), .Q(\CONFIG_inst/pay0 [4]) );
  UDB116SVT24_FDPRBQ_V2_1 \CONFIG_inst/pay0_reg[5]  ( .D(\CONFIG_inst/n93 ), 
        .CK(clk), .RD(n1572), .Q(\CONFIG_inst/pay0 [5]) );
  UDB116SVT24_FDPRBQ_V2_1 \CONFIG_inst/pay0_reg[6]  ( .D(\CONFIG_inst/n95 ), 
        .CK(clk), .RD(n1574), .Q(\CONFIG_inst/pay0 [6]) );
  UDB116SVT24_FDPRBQ_V2_1 \CONFIG_inst/pay0_reg[7]  ( .D(\CONFIG_inst/n97 ), 
        .CK(clk), .RD(n1573), .Q(\CONFIG_inst/pay0 [7]) );
  UDB116SVT24_FDPRBQ_V2_1 \CONFIG_inst/pay0_reg[0]  ( .D(\CONFIG_inst/n99 ), 
        .CK(clk), .RD(n1573), .Q(\CONFIG_inst/pay0 [0]) );
  UDB116SVT24_FDPRBQ_V2_1 \CONFIG_inst/state_reg[1]  ( .D(\CONFIG_inst/n112 ), 
        .CK(clk), .RD(n1573), .Q(\CONFIG_inst/state [1]) );
  UDB116SVT24_FDPRBQ_V2_1 \CONFIG_inst/state_reg[0]  ( .D(\CONFIG_inst/n113 ), 
        .CK(clk), .RD(n1565), .Q(\CONFIG_inst/state [0]) );
  UDB116SVT24_FDPRBQ_V2_1 \CONFIG_inst/spi_rx_valid_prev_reg  ( .D(SPI_OUT_RDY), .CK(clk), .RD(n1569), .Q(\CONFIG_inst/spi_rx_valid_prev ) );
  UDB116SVT24_FDPRBQ_V2_1 \CONFIG_inst/i_CONFIG_sync2_reg  ( .D(
        \CONFIG_inst/i_CONFIG_sync1 ), .CK(clk), .RD(n1570), .Q(
        \CONFIG_inst/i_CONFIG_sync2 ) );
  UDB116SVT24_FDPRBQ_V2_1 \CONFIG_inst/i_CONFIG_sync1_reg  ( .D(i_CONFIG), 
        .CK(clk), .RD(n1560), .Q(\CONFIG_inst/i_CONFIG_sync1 ) );
  UDB116SVT24_FDPRBQ_V2_1 pkt_rec_prev_reg ( .D(n655), .CK(clk), .RD(n1523), 
        .Q(pkt_rec_prev) );
  UDB116SVT24_FDPRBQ_V2_1 \rx_state_reg[0]  ( .D(n649), .CK(clk), .RD(n1523), 
        .Q(rx_state[0]) );
  UDB116SVT24_FDPRBQ_V2_1 \rx_state_reg[2]  ( .D(n647), .CK(clk), .RD(n1523), 
        .Q(rx_state[2]) );
  UDB116SVT24_FDPRBQ_V2_1 \rx_state_reg[1]  ( .D(n648), .CK(clk), .RD(n1523), 
        .Q(rx_state[1]) );
  UDB116SVT24_FDPRBQ_V2_1 SPI_LD_reg ( .D(n654), .CK(clk), .RD(n1524), .Q(
        SPI_LD) );
  UDB116SVT24_FDPRBQ_V2_1 PKT_EN_reg ( .D(n645), .CK(clk), .RD(n1524), .Q(
        PKT_EN) );
  UDB116SVT24_FDPRBQ_V2_1 \counter_reg[0]  ( .D(n643), .CK(clk), .RD(n1525), 
        .Q(counter[0]) );
  UDB116SVT24_FDPRBQ_V2_1 \counter_reg[1]  ( .D(n642), .CK(clk), .RD(n1525), 
        .Q(counter[1]) );
  UDB116SVT24_FDPRBQ_V2_1 \counter_reg[2]  ( .D(n641), .CK(clk), .RD(n1524), 
        .Q(counter[2]) );
  UDB116SVT24_FDPRBQ_V2_1 \counter_reg[3]  ( .D(n644), .CK(clk), .RD(n1525), 
        .Q(counter[3]) );
  UDB116SVT24_FDPRBQ_V2_1 PKT_RST_reg ( .D(n640), .CK(clk), .RD(n1524), .Q(
        PKT_RST) );
  UDB116SVT24_FDPRBQ_V2_1 \counter3_reg[0]  ( .D(n652), .CK(clk), .RD(n1526), 
        .Q(counter3[0]) );
  UDB116SVT24_FDPRBQ_V2_1 \tx_state_reg[1]  ( .D(n638), .CK(clk), .RD(n1526), 
        .Q(tx_state[1]) );
  UDB116SVT24_FDPRBQ_V2_1 \tx_state_reg[0]  ( .D(n639), .CK(clk), .RD(n1526), 
        .Q(tx_state[0]) );
  UDB116SVT24_FDPRBQ_V2_1 TX_LD_reg ( .D(n637), .CK(clk), .RD(n1527), .Q(TX_LD) );
  UDB116SVT24_FDPRBQ_V2_1 TX_SH_reg ( .D(n636), .CK(clk), .RD(n1527), .Q(TX_SH) );
  UDB116SVT24_FDPRBQ_V2_1 \counter3_reg[1]  ( .D(n651), .CK(clk), .RD(n1526), 
        .Q(counter3[1]) );
  UDB116SVT24_FDPRBQ_V2_1 \counter3_reg[2]  ( .D(n650), .CK(clk), .RD(n1527), 
        .Q(counter3[2]) );
  UDB116SVT24_FDPRBQ_V2_1 \counter3_reg[3]  ( .D(n653), .CK(clk), .RD(n1528), 
        .Q(counter3[3]) );
  UDB116SVT24_FDPRBQ_V2_1 TX_EN_reg ( .D(n635), .CK(clk), .RD(n1527), .Q(TX_EN) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/counter_reg[7]  ( .D(
        \sh_sync_inst/n207 ), .CK(clk), .RD(n1548), .Q(
        \sh_sync_inst/counter [7]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/counter_reg[1]  ( .D(
        \sh_sync_inst/n213 ), .CK(clk), .RD(n1543), .Q(
        \sh_sync_inst/counter [1]) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/counter_reg[5]  ( .D(
        \sh_sync_inst/n209 ), .CK(clk), .RD(n1542), .Q(
        \sh_sync_inst/counter [5]) );
  UDB116SVT24_FDPRBQ_V2_1 \SPI_slave_inst/SS_sync_1_reg  ( .D(
        \SPI_slave_inst/SS_sync_0 ), .CK(clk), .RD(n1582), .Q(CS_sync) );
  UDB116SVT24_FDPRBQ_V2_1 PKT_LD_reg ( .D(n646), .CK(clk), .RD(n1525), .Q(
        PKT_LD) );
  UDB116SVT24_ADDF_V1_1 \intadd_0/U2  ( .A(n667), .B(
        \sh_sync_inst/counter [13]), .CI(\intadd_0/n2 ), .CO(\intadd_0/n1 ), 
        .S(\intadd_0/SUM[11] ) );
  UDB116SVT24_ADDF_V1_1 \intadd_0/U3  ( .A(n733), .B(
        \sh_sync_inst/interval_sum [12]), .CI(\intadd_0/n3 ), .CO(
        \intadd_0/n2 ), .S(\intadd_0/SUM[10] ) );
  UDB116SVT24_ADDF_V1_1 \intadd_0/U4  ( .A(n737), .B(n668), .CI(\intadd_0/n4 ), 
        .CO(\intadd_0/n3 ), .S(\intadd_0/SUM[9] ) );
  UDB116SVT24_ADDF_V1_1 \intadd_0/U5  ( .A(n839), .B(
        \sh_sync_inst/interval_sum [10]), .CI(\intadd_0/n5 ), .CO(
        \intadd_0/n4 ), .S(\intadd_0/SUM[8] ) );
  UDB116SVT24_ADDF_V1_1 \intadd_0/U6  ( .A(n748), .B(
        \sh_sync_inst/interval_sum [9]), .CI(\intadd_0/n6 ), .CO(\intadd_0/n5 ), .S(\intadd_0/SUM[7] ) );
  UDB116SVT24_ADDF_V1_1 \intadd_0/U7  ( .A(\sh_sync_inst/interval_sum [8]), 
        .B(n745), .CI(\intadd_0/n7 ), .CO(\intadd_0/n6 ), .S(\intadd_0/SUM[6] ) );
  UDB116SVT24_ADDF_V1_1 \intadd_0/U8  ( .A(\sh_sync_inst/interval_sum [7]), 
        .B(\sh_sync_inst/counter [7]), .CI(\intadd_0/n8 ), .CO(\intadd_0/n7 ), 
        .S(\intadd_0/SUM[5] ) );
  UDB116SVT24_ADDF_V1_1 \intadd_0/U9  ( .A(\sh_sync_inst/interval_sum [6]), 
        .B(n714), .CI(\intadd_0/n9 ), .CO(\intadd_0/n8 ), .S(\intadd_0/SUM[4] ) );
  UDB116SVT24_ADDF_V1_1 \intadd_0/U10  ( .A(\sh_sync_inst/interval_sum [5]), 
        .B(n770), .CI(\intadd_0/n10 ), .CO(\intadd_0/n9 ), .S(
        \intadd_0/SUM[3] ) );
  UDB116SVT24_ADDF_V1_1 \intadd_0/U11  ( .A(\sh_sync_inst/interval_sum [4]), 
        .B(n708), .CI(\intadd_0/n11 ), .CO(\intadd_0/n10 ), .S(
        \intadd_0/SUM[2] ) );
  UDB116SVT24_ADDF_V1_1 \intadd_0/U13  ( .A(\sh_sync_inst/interval_sum [2]), 
        .B(n741), .CI(\intadd_0/CI ), .CO(\intadd_0/n12 ), .S(
        \intadd_0/SUM[0] ) );
  UDB116SVT24_ADDF_V1_1 \intadd_0/U12  ( .A(\sh_sync_inst/interval_sum [3]), 
        .B(n727), .CI(\intadd_0/n12 ), .CO(\intadd_0/n11 ), .S(
        \intadd_0/SUM[1] ) );
  UDB116SVT24_FDPRBQ_V2_1 \sh_sync_inst/sh_en_reg  ( .D(\sh_sync_inst/n192 ), 
        .CK(clk), .RD(n1558), .Q(n1594) );
  UDB116SVT24_FDPCBQ_1 \fsm_sync_inst/sh_en_prev_reg  ( .D(n1594), .RS(n1591), 
        .CK(clk), .Q(\fsm_sync_inst/sh_en_prev ) );
  UDB116SVT24_FDPRBQ_V2_4 \shift_buf_inst/pkt_rec_reg  ( .D(
        \shift_buf_inst/n29 ), .CK(clk), .RD(n1536), .Q(n1592) );
  UDB116SVT24_NR2_6 U891 ( .A1(n767), .A2(n1309), .X(n1593) );
  UDB116SVT24_INV_10 U892 ( .A(n826), .X(n827) );
  UDB116SVT24_OR2_0P75 U893 ( .A1(n1145), .A2(n1144), .X(n658) );
  UDB116SVT24_OAI21_0P75 U894 ( .A1(n1594), .A2(n1282), .B(n1283), .X(n659) );
  UDB116SVT24_BUF_1 U895 ( .A(n1369), .X(n660) );
  UDB116SVT24_BUF_1 U896 ( .A(n1514), .X(n661) );
  UDB116SVT24_INV_0P75 U897 ( .A(n1279), .X(n662) );
  UDB116SVT24_INV_0P75 U898 ( .A(n948), .X(n663) );
  UDB116SVT24_INV_0P75 U899 ( .A(n1127), .X(n664) );
  UDB116SVT24_BUF_1 U900 ( .A(\sh_sync_inst/rfin_edge ), .X(n665) );
  UDB116SVT24_INV_0P75 U901 ( .A(n1186), .X(n666) );
  UDB116SVT24_BUF_1 U902 ( .A(\sh_sync_inst/interval_sum [13]), .X(n667) );
  UDB116SVT24_BUF_1 U903 ( .A(\sh_sync_inst/interval_sum [11]), .X(n668) );
  UDB116SVT24_BUF_1 U904 ( .A(\sh_sync_inst/interval_sum [5]), .X(n669) );
  UDB116SVT24_BUF_1 U905 ( .A(\sh_sync_inst/interval_sum [4]), .X(n670) );
  UDB116SVT24_BUF_1 U906 ( .A(\sh_sync_inst/interval_sum [2]), .X(n671) );
  UDB116SVT24_INV_0P75 U907 ( .A(n1072), .X(n672) );
  UDB116SVT24_BUF_1 U908 ( .A(\sh_sync_inst/pulse_pack_count [1]), .X(n673) );
  UDB116SVT24_INV_0P75 U909 ( .A(n974), .X(n674) );
  UDB116SVT24_BUF_1 U910 ( .A(n1518), .X(n675) );
  UDB116SVT24_BUF_1 U911 ( .A(n1380), .X(n676) );
  UDB116SVT24_BUF_1 U912 ( .A(n1120), .X(n677) );
  UDB116SVT24_BUF_1 U913 ( .A(n1378), .X(n678) );
  UDB116SVT24_INV_0P75 U914 ( .A(n1481), .X(n679) );
  UDB116SVT24_INV_0P75 U915 ( .A(n1294), .X(n680) );
  UDB116SVT24_NR2_0P75 U916 ( .A1(n1292), .A2(n827), .X(n1294) );
  UDB116SVT24_BUF_1 U917 ( .A(n1313), .X(n681) );
  UDB116SVT24_INV_0P75 U918 ( .A(n1491), .X(n682) );
  UDB116SVT24_BUF_1 U919 ( .A(n1065), .X(n683) );
  UDB116SVT24_INV_0P75 U920 ( .A(n798), .X(n684) );
  UDB116SVT24_BUF_1 U921 ( .A(n991), .X(n685) );
  UDB116SVT24_INV_0P75 U922 ( .A(\sh_sync_inst/counter [6]), .X(n686) );
  UDB116SVT24_INV_0P75 U923 ( .A(n773), .X(n687) );
  UDB116SVT24_INV_0P75 U924 ( .A(n1386), .X(n688) );
  UDB116SVT24_INV_0P75 U925 ( .A(n688), .X(n689) );
  UDB116SVT24_INV_0P75 U926 ( .A(\sh_sync_inst/counter [12]), .X(n690) );
  UDB116SVT24_INV_0P75 U927 ( .A(\sh_sync_inst/counter [12]), .X(n691) );
  UDB116SVT24_INV_0P75 U928 ( .A(n749), .X(n692) );
  UDB116SVT24_INV_0P75 U929 ( .A(n692), .X(n693) );
  UDB116SVT24_INV_0P75 U930 ( .A(i_CONFIG), .X(n694) );
  UDB116SVT24_INV_0P75 U931 ( .A(n694), .X(n695) );
  UDB116SVT24_INV_0P75 U932 ( .A(n1503), .X(n696) );
  UDB116SVT24_INV_0P75 U933 ( .A(n696), .X(n697) );
  UDB116SVT24_INV_0P75 U934 ( .A(tx_state[0]), .X(n698) );
  UDB116SVT24_INV_0P75 U935 ( .A(n698), .X(n699) );
  UDB116SVT24_INV_0P75 U936 ( .A(\sh_sync_inst/state [1]), .X(n700) );
  UDB116SVT24_INV_0P75 U937 ( .A(n700), .X(n701) );
  UDB116SVT24_INV_0P75 U938 ( .A(\sh_sync_inst/state [2]), .X(n702) );
  UDB116SVT24_INV_0P75 U939 ( .A(n702), .X(n703) );
  UDB116SVT24_INV_0P75 U940 ( .A(\sh_sync_inst/interval_sum [3]), .X(n704) );
  UDB116SVT24_INV_0P75 U941 ( .A(n704), .X(n705) );
  UDB116SVT24_INV_0P75 U942 ( .A(\sh_sync_inst/interval_sum [15]), .X(n706) );
  UDB116SVT24_INV_0P75 U943 ( .A(n706), .X(n707) );
  UDB116SVT24_INV_0P75 U944 ( .A(n1124), .X(n708) );
  UDB116SVT24_INV_0P75 U945 ( .A(n708), .X(n709) );
  UDB116SVT24_INV_0P75 U946 ( .A(n736), .X(n710) );
  UDB116SVT24_INV_0P75 U947 ( .A(\sh_sync_inst/counter [9]), .X(n711) );
  UDB116SVT24_INV_0P75 U948 ( .A(n1293), .X(n712) );
  UDB116SVT24_INV_0P75 U949 ( .A(n1462), .X(n713) );
  UDB116SVT24_INV_0P75 U950 ( .A(n1098), .X(n714) );
  UDB116SVT24_INV_0P75 U951 ( .A(\sh_sync_inst/interval_sum [14]), .X(n715) );
  UDB116SVT24_INV_0P75 U952 ( .A(n715), .X(n716) );
  UDB116SVT24_INV_0P75 U953 ( .A(n1521), .X(n717) );
  UDB116SVT24_INV_0P75 U954 ( .A(n717), .X(n718) );
  UDB116SVT24_INV_0P75 U955 ( .A(n1475), .X(n719) );
  UDB116SVT24_INV_0P75 U956 ( .A(n719), .X(n720) );
  UDB116SVT24_INV_0P75 U957 ( .A(SPI_OUT[7]), .X(n721) );
  UDB116SVT24_INV_0P75 U958 ( .A(SPI_OUT[4]), .X(n722) );
  UDB116SVT24_INV_0P75 U959 ( .A(SPI_OUT[6]), .X(n723) );
  UDB116SVT24_INV_0P75 U960 ( .A(SPI_OUT[5]), .X(n724) );
  UDB116SVT24_INV_0P75 U961 ( .A(n858), .X(n725) );
  UDB116SVT24_INV_0P75 U962 ( .A(\sh_sync_inst/counter [10]), .X(n726) );
  UDB116SVT24_INV_0P75 U963 ( .A(n1122), .X(n727) );
  UDB116SVT24_INV_0P75 U964 ( .A(n727), .X(n728) );
  UDB116SVT24_INV_0P75 U965 ( .A(n1128), .X(n729) );
  UDB116SVT24_INV_0P75 U966 ( .A(n729), .X(n730) );
  UDB116SVT24_INV_0P75 U967 ( .A(n809), .X(n731) );
  UDB116SVT24_INV_0P75 U968 ( .A(n810), .X(n732) );
  UDB116SVT24_INV_0P75 U969 ( .A(n691), .X(n733) );
  UDB116SVT24_INV_0P75 U970 ( .A(n690), .X(n734) );
  UDB116SVT24_INV_0P75 U971 ( .A(\sh_sync_inst/counter [11]), .X(n735) );
  UDB116SVT24_INV_0P75 U972 ( .A(n735), .X(n736) );
  UDB116SVT24_INV_0P75 U973 ( .A(n735), .X(n737) );
  UDB116SVT24_INV_0P75 U974 ( .A(\sh_sync_inst/counter [0]), .X(n738) );
  UDB116SVT24_INV_0P75 U975 ( .A(n738), .X(n739) );
  UDB116SVT24_INV_0P75 U976 ( .A(\sh_sync_inst/counter [2]), .X(n740) );
  UDB116SVT24_INV_0P75 U977 ( .A(n740), .X(n741) );
  UDB116SVT24_INV_0P75 U978 ( .A(n740), .X(n742) );
  UDB116SVT24_INV_0P75 U979 ( .A(\sh_sync_inst/counter [8]), .X(n743) );
  UDB116SVT24_INV_0P75 U980 ( .A(n743), .X(n744) );
  UDB116SVT24_INV_0P75 U981 ( .A(n743), .X(n745) );
  UDB116SVT24_INV_0P75 U982 ( .A(\sh_sync_inst/counter [9]), .X(n746) );
  UDB116SVT24_INV_0P75 U983 ( .A(n746), .X(n747) );
  UDB116SVT24_INV_0P75 U984 ( .A(n746), .X(n748) );
  UDB116SVT24_INV_0P75 U985 ( .A(n1047), .X(n749) );
  UDB116SVT24_INV_0P75 U986 ( .A(n749), .X(n750) );
  UDB116SVT24_INV_0P75 U987 ( .A(n658), .X(n751) );
  UDB116SVT24_INV_0P75 U988 ( .A(n658), .X(n752) );
  UDB116SVT24_INV_0P75 U989 ( .A(n1477), .X(n753) );
  UDB116SVT24_INV_0P75 U990 ( .A(n753), .X(n754) );
  UDB116SVT24_INV_0P75 U991 ( .A(n753), .X(n755) );
  UDB116SVT24_INV_0P75 U992 ( .A(n1452), .X(n756) );
  UDB116SVT24_INV_0P75 U993 ( .A(n1452), .X(n757) );
  UDB116SVT24_INV_0P75 U994 ( .A(SPI_OUT[3]), .X(n758) );
  UDB116SVT24_INV_0P75 U995 ( .A(SPI_OUT[3]), .X(n759) );
  UDB116SVT24_INV_0P75 U996 ( .A(n1152), .X(n760) );
  UDB116SVT24_INV_0P75 U997 ( .A(n760), .X(n761) );
  UDB116SVT24_INV_0P75 U998 ( .A(n760), .X(n762) );
  UDB116SVT24_INV_0P75 U999 ( .A(n738), .X(n763) );
  UDB116SVT24_INV_0P75 U1000 ( .A(n763), .X(n764) );
  UDB116SVT24_INV_0P75 U1001 ( .A(n763), .X(n765) );
  UDB116SVT24_INV_0P75 U1002 ( .A(CS_sync), .X(n766) );
  UDB116SVT24_INV_0P75 U1003 ( .A(n766), .X(n767) );
  UDB116SVT24_INV_0P75 U1004 ( .A(n766), .X(n768) );
  UDB116SVT24_INV_0P75 U1005 ( .A(\sh_sync_inst/counter [5]), .X(n769) );
  UDB116SVT24_INV_0P75 U1006 ( .A(n769), .X(n770) );
  UDB116SVT24_INV_0P75 U1007 ( .A(n769), .X(n771) );
  UDB116SVT24_INV_0P75 U1008 ( .A(\sh_sync_inst/counter [1]), .X(n772) );
  UDB116SVT24_INV_0P75 U1009 ( .A(n772), .X(n773) );
  UDB116SVT24_INV_0P75 U1010 ( .A(n772), .X(n774) );
  UDB116SVT24_INV_0P75 U1011 ( .A(\sh_sync_inst/counter [7]), .X(n775) );
  UDB116SVT24_INV_0P75 U1012 ( .A(n775), .X(n776) );
  UDB116SVT24_INV_0P75 U1013 ( .A(n775), .X(n777) );
  UDB116SVT24_INV_0P75 U1014 ( .A(n1294), .X(n778) );
  UDB116SVT24_INV_0P75 U1015 ( .A(n778), .X(n779) );
  UDB116SVT24_INV_0P75 U1016 ( .A(n778), .X(n780) );
  UDB116SVT24_INV_0P75 U1017 ( .A(n1452), .X(n781) );
  UDB116SVT24_INV_0P75 U1018 ( .A(n781), .X(n782) );
  UDB116SVT24_INV_0P75 U1019 ( .A(n781), .X(n783) );
  UDB116SVT24_INV_0P75 U1020 ( .A(n1490), .X(n784) );
  UDB116SVT24_INV_0P75 U1021 ( .A(n784), .X(n785) );
  UDB116SVT24_INV_0P75 U1022 ( .A(n784), .X(n786) );
  UDB116SVT24_INV_0P75 U1023 ( .A(SPI_OUT[2]), .X(n787) );
  UDB116SVT24_INV_0P75 U1024 ( .A(SPI_OUT[2]), .X(n788) );
  UDB116SVT24_INV_0P75 U1025 ( .A(RX), .X(n789) );
  UDB116SVT24_INV_0P75 U1026 ( .A(n789), .X(n790) );
  UDB116SVT24_INV_0P75 U1027 ( .A(n789), .X(n791) );
  UDB116SVT24_INV_0P75 U1028 ( .A(PKT_LD), .X(n792) );
  UDB116SVT24_INV_0P75 U1029 ( .A(n792), .X(n793) );
  UDB116SVT24_INV_0P75 U1030 ( .A(n792), .X(n794) );
  UDB116SVT24_INV_0P75 U1031 ( .A(n792), .X(n795) );
  UDB116SVT24_INV_0P75 U1032 ( .A(n1255), .X(n796) );
  UDB116SVT24_INV_0P75 U1033 ( .A(n796), .X(n797) );
  UDB116SVT24_INV_0P75 U1034 ( .A(n796), .X(n798) );
  UDB116SVT24_INV_0P75 U1035 ( .A(n796), .X(n799) );
  UDB116SVT24_INV_0P75 U1036 ( .A(n682), .X(n800) );
  UDB116SVT24_INV_0P75 U1037 ( .A(n682), .X(n801) );
  UDB116SVT24_INV_0P75 U1038 ( .A(n682), .X(n802) );
  UDB116SVT24_INV_0P75 U1039 ( .A(n1481), .X(n803) );
  UDB116SVT24_INV_0P75 U1040 ( .A(n803), .X(n804) );
  UDB116SVT24_INV_0P75 U1041 ( .A(n803), .X(n805) );
  UDB116SVT24_INV_0P75 U1042 ( .A(n803), .X(n806) );
  UDB116SVT24_INV_0P75 U1043 ( .A(n1344), .X(n807) );
  UDB116SVT24_INV_0P75 U1044 ( .A(n807), .X(n808) );
  UDB116SVT24_INV_0P75 U1045 ( .A(n807), .X(n809) );
  UDB116SVT24_INV_0P75 U1046 ( .A(n807), .X(n810) );
  UDB116SVT24_INV_0P75 U1047 ( .A(n1390), .X(n811) );
  UDB116SVT24_INV_0P75 U1048 ( .A(n811), .X(n812) );
  UDB116SVT24_INV_0P75 U1049 ( .A(n811), .X(n813) );
  UDB116SVT24_INV_0P75 U1050 ( .A(n811), .X(n814) );
  UDB116SVT24_INV_0P75 U1051 ( .A(n1389), .X(n815) );
  UDB116SVT24_INV_0P75 U1052 ( .A(n815), .X(n816) );
  UDB116SVT24_INV_0P75 U1053 ( .A(n815), .X(n817) );
  UDB116SVT24_INV_0P75 U1054 ( .A(n815), .X(n818) );
  UDB116SVT24_INV_0P75 U1055 ( .A(PKT_LD), .X(n819) );
  UDB116SVT24_INV_0P75 U1056 ( .A(PKT_LD), .X(n820) );
  UDB116SVT24_INV_0P75 U1057 ( .A(PKT_LD), .X(n821) );
  UDB116SVT24_INV_0P75 U1058 ( .A(n795), .X(n822) );
  UDB116SVT24_BUF_32 U1059 ( .A(n1592), .X(pkt_rec) );
  UDB116SVT24_BUF_32 U1060 ( .A(n827), .X(sh_en) );
  UDB116SVT24_BUF_32 U1061 ( .A(n1593), .X(MISO) );
  UDB116SVT24_INV_0P75 U1062 ( .A(n1594), .X(n826) );
  UDB116SVT24_INV_0P75 U1063 ( .A(n1592), .X(n828) );
  UDB116SVT24_BUF_1 U1064 ( .A(n1508), .X(n829) );
  UDB116SVT24_INV_0P75 U1065 ( .A(tx_state[1]), .X(n830) );
  UDB116SVT24_BUF_1 U1066 ( .A(n1370), .X(n831) );
  UDB116SVT24_BUF_1 U1067 ( .A(n1370), .X(n832) );
  UDB116SVT24_BUF_1 U1068 ( .A(n1450), .X(n833) );
  UDB116SVT24_BUF_1 U1069 ( .A(n1450), .X(n834) );
  UDB116SVT24_OR2_0P75 U1070 ( .A1(TX_EN), .A2(TX_LD), .X(n1478) );
  UDB116SVT24_INV_0P75 U1071 ( .A(n1478), .X(n835) );
  UDB116SVT24_INV_0P75 U1072 ( .A(n1478), .X(n836) );
  UDB116SVT24_BUF_1 U1073 ( .A(\sh_sync_inst/interval_sum [16]), .X(n837) );
  UDB116SVT24_BUF_1 U1074 ( .A(\sh_sync_inst/interval_sum [16]), .X(n838) );
  UDB116SVT24_BUF_1 U1075 ( .A(\sh_sync_inst/counter [10]), .X(n839) );
  UDB116SVT24_BUF_1 U1076 ( .A(\sh_sync_inst/counter [10]), .X(n840) );
  UDB116SVT24_BUF_1 U1077 ( .A(n1374), .X(n1257) );
  UDB116SVT24_INV_0P75 U1078 ( .A(n1257), .X(n841) );
  UDB116SVT24_INV_0P75 U1079 ( .A(n1257), .X(n842) );
  UDB116SVT24_INV_0P75 U1080 ( .A(n1257), .X(n843) );
  UDB116SVT24_INV_0P75 U1081 ( .A(n1459), .X(n844) );
  UDB116SVT24_INV_0P75 U1082 ( .A(n844), .X(n845) );
  UDB116SVT24_INV_0P75 U1083 ( .A(n844), .X(n846) );
  UDB116SVT24_INV_0P75 U1084 ( .A(n1263), .X(n847) );
  UDB116SVT24_INV_0P75 U1085 ( .A(n847), .X(n848) );
  UDB116SVT24_INV_0P75 U1086 ( .A(n847), .X(n849) );
  UDB116SVT24_INV_0P75 U1087 ( .A(n847), .X(n850) );
  UDB116SVT24_OR2_0P75 U1088 ( .A1(n949), .A2(n797), .X(n1372) );
  UDB116SVT24_INV_0P75 U1089 ( .A(n1372), .X(n851) );
  UDB116SVT24_INV_0P75 U1090 ( .A(n1372), .X(n852) );
  UDB116SVT24_INV_0P75 U1091 ( .A(n1372), .X(n853) );
  UDB116SVT24_INV_0P75 U1092 ( .A(n1372), .X(n854) );
  UDB116SVT24_OR2_0P75 U1093 ( .A1(n914), .A2(\sh_sync_inst/state [1]), .X(
        n1312) );
  UDB116SVT24_INV_0P75 U1094 ( .A(n1312), .X(n855) );
  UDB116SVT24_INV_0P75 U1095 ( .A(n1312), .X(n856) );
  UDB116SVT24_INV_0P75 U1096 ( .A(n1312), .X(n857) );
  UDB116SVT24_INV_0P75 U1097 ( .A(n1312), .X(n858) );
  UDB116SVT24_OR2_0P75 U1098 ( .A1(\CONFIG_inst/state [1]), .A2(n1489), .X(
        n922) );
  UDB116SVT24_INV_0P75 U1099 ( .A(n922), .X(n859) );
  UDB116SVT24_INV_0P75 U1100 ( .A(n922), .X(n860) );
  UDB116SVT24_INV_0P75 U1101 ( .A(n922), .X(n861) );
  UDB116SVT24_INV_0P75 U1102 ( .A(n922), .X(n862) );
  UDB116SVT24_INV_0P75 U1103 ( .A(n1441), .X(n863) );
  UDB116SVT24_INV_0P75 U1104 ( .A(n863), .X(n864) );
  UDB116SVT24_INV_0P75 U1105 ( .A(n863), .X(n865) );
  UDB116SVT24_INV_0P75 U1106 ( .A(n863), .X(n866) );
  UDB116SVT24_INV_0P75 U1107 ( .A(n863), .X(n867) );
  UDB116SVT24_OR2_0P75 U1108 ( .A1(\CONFIG_inst/opcode_q [1]), .A2(n1135), .X(
        n1482) );
  UDB116SVT24_INV_0P75 U1109 ( .A(n1482), .X(n868) );
  UDB116SVT24_INV_0P75 U1110 ( .A(n1482), .X(n869) );
  UDB116SVT24_INV_0P75 U1111 ( .A(n1482), .X(n870) );
  UDB116SVT24_INV_0P75 U1112 ( .A(n1482), .X(n871) );
  UDB116SVT24_OR2_1 U1113 ( .A1(TX_BY), .A2(TX_OUT_I), .X(TX_OUT) );
  UDB116SVT24_BUF_1 U1114 ( .A(n1313), .X(n872) );
  UDB116SVT24_BUF_1 U1115 ( .A(n1313), .X(n873) );
  UDB116SVT24_BUF_1 U1116 ( .A(n680), .X(n874) );
  UDB116SVT24_BUF_1 U1117 ( .A(rst), .X(n879) );
  UDB116SVT24_OR2_0P75 U1118 ( .A1(n793), .A2(PKT_EN), .X(n1434) );
  UDB116SVT24_BUF_1 U1119 ( .A(n879), .X(n888) );
  UDB116SVT24_BUF_1 U1120 ( .A(n888), .X(n882) );
  UDB116SVT24_BUF_1 U1121 ( .A(n888), .X(n892) );
  UDB116SVT24_BUF_1 U1122 ( .A(n892), .X(n1578) );
  UDB116SVT24_BUF_1 U1123 ( .A(n888), .X(n885) );
  UDB116SVT24_BUF_1 U1124 ( .A(n885), .X(n1580) );
  UDB116SVT24_BUF_1 U1125 ( .A(n885), .X(n1581) );
  UDB116SVT24_BUF_1 U1126 ( .A(n892), .X(n1579) );
  UDB116SVT24_BUF_1 U1127 ( .A(rst), .X(n876) );
  UDB116SVT24_BUF_1 U1128 ( .A(n876), .X(n1583) );
  UDB116SVT24_BUF_1 U1129 ( .A(n876), .X(n875) );
  UDB116SVT24_BUF_1 U1130 ( .A(n875), .X(n1584) );
  UDB116SVT24_BUF_1 U1131 ( .A(n885), .X(n877) );
  UDB116SVT24_BUF_1 U1132 ( .A(n877), .X(n1530) );
  UDB116SVT24_BUF_1 U1133 ( .A(n875), .X(n1588) );
  UDB116SVT24_BUF_1 U1134 ( .A(rst), .X(n1585) );
  UDB116SVT24_BUF_1 U1135 ( .A(n882), .X(n1529) );
  UDB116SVT24_BUF_1 U1136 ( .A(n875), .X(n1586) );
  UDB116SVT24_BUF_1 U1137 ( .A(n875), .X(n1587) );
  UDB116SVT24_BUF_1 U1138 ( .A(n876), .X(n1589) );
  UDB116SVT24_BUF_1 U1139 ( .A(n876), .X(n1590) );
  UDB116SVT24_BUF_1 U1140 ( .A(n877), .X(n889) );
  UDB116SVT24_BUF_1 U1141 ( .A(n889), .X(n1534) );
  UDB116SVT24_BUF_1 U1142 ( .A(n889), .X(n1533) );
  UDB116SVT24_BUF_1 U1143 ( .A(n877), .X(n1532) );
  UDB116SVT24_BUF_1 U1144 ( .A(n877), .X(n887) );
  UDB116SVT24_BUF_1 U1145 ( .A(n887), .X(n1531) );
  UDB116SVT24_BUF_1 U1146 ( .A(n887), .X(n1537) );
  UDB116SVT24_BUF_1 U1147 ( .A(n889), .X(n1535) );
  UDB116SVT24_BUF_1 U1148 ( .A(n887), .X(n1538) );
  UDB116SVT24_BUF_1 U1149 ( .A(n879), .X(n878) );
  UDB116SVT24_BUF_1 U1150 ( .A(n878), .X(n1539) );
  UDB116SVT24_BUF_1 U1151 ( .A(n878), .X(n884) );
  UDB116SVT24_BUF_1 U1152 ( .A(n884), .X(n1540) );
  UDB116SVT24_BUF_1 U1153 ( .A(n878), .X(n1541) );
  UDB116SVT24_BUF_1 U1154 ( .A(n878), .X(n880) );
  UDB116SVT24_BUF_1 U1155 ( .A(n880), .X(n1546) );
  UDB116SVT24_BUF_1 U1156 ( .A(n880), .X(n1547) );
  UDB116SVT24_BUF_1 U1157 ( .A(n879), .X(n893) );
  UDB116SVT24_BUF_1 U1158 ( .A(n893), .X(n883) );
  UDB116SVT24_BUF_1 U1159 ( .A(n883), .X(n1549) );
  UDB116SVT24_BUF_1 U1160 ( .A(n884), .X(n1544) );
  UDB116SVT24_BUF_1 U1161 ( .A(n880), .X(n1545) );
  UDB116SVT24_BUF_1 U1162 ( .A(n882), .X(n886) );
  UDB116SVT24_BUF_1 U1163 ( .A(n886), .X(n894) );
  UDB116SVT24_BUF_1 U1164 ( .A(n894), .X(n895) );
  UDB116SVT24_BUF_1 U1165 ( .A(n895), .X(n1558) );
  UDB116SVT24_BUF_1 U1166 ( .A(n894), .X(n1559) );
  UDB116SVT24_BUF_1 U1167 ( .A(n895), .X(n1557) );
  UDB116SVT24_BUF_1 U1168 ( .A(n883), .X(n1552) );
  UDB116SVT24_BUF_1 U1169 ( .A(n893), .X(n1553) );
  UDB116SVT24_BUF_1 U1170 ( .A(n893), .X(n881) );
  UDB116SVT24_BUF_1 U1171 ( .A(n881), .X(n1554) );
  UDB116SVT24_BUF_1 U1172 ( .A(n881), .X(n1555) );
  UDB116SVT24_BUF_1 U1173 ( .A(n881), .X(n1556) );
  UDB116SVT24_BUF_1 U1174 ( .A(n883), .X(n1550) );
  UDB116SVT24_BUF_1 U1175 ( .A(n886), .X(n890) );
  UDB116SVT24_BUF_1 U1176 ( .A(n890), .X(n891) );
  UDB116SVT24_BUF_1 U1177 ( .A(n891), .X(n1526) );
  UDB116SVT24_BUF_1 U1178 ( .A(n882), .X(n1524) );
  UDB116SVT24_BUF_1 U1179 ( .A(n886), .X(n1523) );
  UDB116SVT24_BUF_1 U1180 ( .A(n894), .X(n897) );
  UDB116SVT24_BUF_1 U1181 ( .A(n897), .X(n1528) );
  UDB116SVT24_BUF_1 U1182 ( .A(n890), .X(n896) );
  UDB116SVT24_BUF_1 U1183 ( .A(n896), .X(n1573) );
  UDB116SVT24_BUF_1 U1184 ( .A(n896), .X(n1571) );
  UDB116SVT24_BUF_1 U1185 ( .A(n896), .X(n1572) );
  UDB116SVT24_BUF_1 U1186 ( .A(n882), .X(n1527) );
  UDB116SVT24_BUF_1 U1187 ( .A(n891), .X(n1569) );
  UDB116SVT24_BUF_1 U1188 ( .A(n883), .X(n1548) );
  UDB116SVT24_BUF_1 U1189 ( .A(n884), .X(n1543) );
  UDB116SVT24_BUF_1 U1190 ( .A(n891), .X(n1568) );
  UDB116SVT24_BUF_1 U1191 ( .A(n884), .X(n1542) );
  UDB116SVT24_BUF_1 U1192 ( .A(n885), .X(n1582) );
  UDB116SVT24_BUF_1 U1193 ( .A(n890), .X(n1567) );
  UDB116SVT24_BUF_1 U1194 ( .A(n886), .X(n1525) );
  UDB116SVT24_BUF_1 U1195 ( .A(n887), .X(n1536) );
  UDB116SVT24_BUF_1 U1196 ( .A(n888), .X(n1576) );
  UDB116SVT24_BUF_1 U1197 ( .A(n892), .X(n1574) );
  UDB116SVT24_BUF_1 U1198 ( .A(n889), .X(n1575) );
  UDB116SVT24_BUF_1 U1199 ( .A(n890), .X(n1565) );
  UDB116SVT24_BUF_1 U1200 ( .A(n891), .X(n1570) );
  UDB116SVT24_BUF_1 U1201 ( .A(n892), .X(n1577) );
  UDB116SVT24_BUF_1 U1202 ( .A(n893), .X(n1551) );
  UDB116SVT24_BUF_1 U1203 ( .A(n894), .X(n1561) );
  UDB116SVT24_BUF_1 U1204 ( .A(n895), .X(n1560) );
  UDB116SVT24_BUF_1 U1205 ( .A(n896), .X(n1566) );
  UDB116SVT24_BUF_1 U1206 ( .A(n897), .X(n1563) );
  UDB116SVT24_BUF_1 U1207 ( .A(n897), .X(n1564) );
  UDB116SVT24_BUF_1 U1208 ( .A(n897), .X(n1562) );
  UDB116SVT24_INV_0P75 U1209 ( .A(TX_SH), .X(n899) );
  UDB116SVT24_NR2_0P75 U1210 ( .A1(\sh_sync_inst/tx_rdy_prev ), .A2(n899), .X(
        \sh_sync_inst/N81 ) );
  UDB116SVT24_INV_0P75 U1211 ( .A(SPI_OUT_RDY), .X(n913) );
  UDB116SVT24_INV_0P75 U1212 ( .A(n768), .X(n1276) );
  UDB116SVT24_AOI21_0P75 U1213 ( .A1(\SPI_slave_inst/SS_prev ), .A2(n913), .B(
        n1276), .X(\SPI_slave_inst/n39 ) );
  UDB116SVT24_INV_0P75 U1214 ( .A(RX), .X(n1275) );
  UDB116SVT24_ND2_MM_0P75 U1215 ( .A1(n1275), .A2(n694), .X(n898) );
  UDB116SVT24_AOI21_0P75 U1216 ( .A1(tx_state[1]), .A2(tx_state[0]), .B(n898), 
        .X(n1270) );
  UDB116SVT24_INV_0P75 U1217 ( .A(TX_LD), .X(n1477) );
  UDB116SVT24_INV_0P75 U1218 ( .A(tx_state[1]), .X(n924) );
  UDB116SVT24_ND3_0P75 U1219 ( .A1(n924), .A2(tx_state[0]), .A3(SPI_OUT_RDY), 
        .X(n901) );
  UDB116SVT24_OAI22_0P75 U1220 ( .A1(n1270), .A2(n754), .B1(n898), .B2(n901), 
        .X(n637) );
  UDB116SVT24_INV_0P75 U1221 ( .A(n1270), .X(n1269) );
  UDB116SVT24_AOI22_1 U1222 ( .A1(n1270), .A2(n830), .B1(n899), .B2(n1269), 
        .X(n636) );
  UDB116SVT24_NR2_0P75 U1223 ( .A1(n1275), .A2(i_CONFIG), .X(n1521) );
  UDB116SVT24_INV_0P75 U1224 ( .A(n1521), .X(n1507) );
  UDB116SVT24_AOI21_0P75 U1225 ( .A1(n767), .A2(n924), .B(n699), .X(n903) );
  UDB116SVT24_NR4B_1 U1226 ( .A(counter3[3]), .B1(counter3[2]), .B2(
        counter3[0]), .B3(counter3[1]), .X(n900) );
  UDB116SVT24_NR3_0P75 U1227 ( .A1(n900), .A2(SH_EN_DONE), .A3(n924), .X(n1268) );
  UDB116SVT24_INV_0P75 U1228 ( .A(n1268), .X(n1282) );
  UDB116SVT24_INV_0P75 U1229 ( .A(n901), .X(n902) );
  UDB116SVT24_AOAI211_0P75 U1230 ( .A1(n903), .A2(n1282), .B(n902), .C(n694), 
        .X(n905) );
  UDB116SVT24_ND2_MM_0P75 U1231 ( .A1(n1507), .A2(n905), .X(n926) );
  UDB116SVT24_ND2_MM_0P75 U1232 ( .A1(tx_state[0]), .A2(n1275), .X(n904) );
  UDB116SVT24_OAI22_0P75 U1233 ( .A1(n830), .A2(n926), .B1(n905), .B2(n904), 
        .X(n638) );
  UDB116SVT24_NR2_0P75 U1234 ( .A1(n662), .A2(rx_state[1]), .X(n1518) );
  UDB116SVT24_ND3_0P75 U1235 ( .A1(rx_state[0]), .A2(n1518), .A3(n718), .X(
        n1505) );
  UDB116SVT24_INV_0P75 U1236 ( .A(rx_state[1]), .X(n1502) );
  UDB116SVT24_AOI31_0P75 U1237 ( .A1(rx_state[0]), .A2(n767), .A3(n1502), .B(
        n1518), .X(n906) );
  UDB116SVT24_NR2_0P75 U1238 ( .A1(n906), .A2(n1507), .X(n1511) );
  UDB116SVT24_INV_0P75 U1239 ( .A(n1511), .X(n908) );
  UDB116SVT24_INV_0P75 U1240 ( .A(rx_state[2]), .X(n1279) );
  UDB116SVT24_INV_0P75 U1241 ( .A(rx_state[0]), .X(n1508) );
  UDB116SVT24_NR3_0P75 U1242 ( .A1(rx_state[1]), .A2(n1279), .A3(n1508), .X(
        n1514) );
  UDB116SVT24_ND2_MM_0P75 U1243 ( .A1(n1514), .A2(n1511), .X(n1509) );
  UDB116SVT24_NR2_0P75 U1244 ( .A1(counter[0]), .A2(n1509), .X(n909) );
  UDB116SVT24_AOI21_0P75 U1245 ( .A1(counter[0]), .A2(n908), .B(n909), .X(n907) );
  UDB116SVT24_ND2_MM_0P75 U1246 ( .A1(n1505), .A2(n907), .X(n643) );
  UDB116SVT24_NR2_0P75 U1247 ( .A1(\SPI_slave_inst/SS_prev ), .A2(n1276), .X(
        n1452) );
  UDB116SVT24_INV_0P75 U1248 ( .A(\SPI_slave_inst/SHIFT_REG [7]), .X(n1309) );
  UDB116SVT24_INV_0P75 U1249 ( .A(SPI_OUT[7]), .X(n1465) );
  UDB116SVT24_AOI22_1 U1250 ( .A1(n1452), .A2(n1309), .B1(n1465), .B2(n756), 
        .X(\SPI_slave_inst/n34 ) );
  UDB116SVT24_INV_0P75 U1251 ( .A(\SPI_slave_inst/SHIFT_REG [4]), .X(n981) );
  UDB116SVT24_INV_0P75 U1252 ( .A(SPI_OUT[4]), .X(n1471) );
  UDB116SVT24_AOI22_1 U1253 ( .A1(n782), .A2(n981), .B1(n1471), .B2(n757), .X(
        \SPI_slave_inst/n28 ) );
  UDB116SVT24_INV_0P75 U1254 ( .A(\SPI_slave_inst/SHIFT_REG [6]), .X(n1457) );
  UDB116SVT24_INV_0P75 U1255 ( .A(SPI_OUT[6]), .X(n1467) );
  UDB116SVT24_AOI22_1 U1256 ( .A1(n783), .A2(n1457), .B1(n1467), .B2(n756), 
        .X(\SPI_slave_inst/n32 ) );
  UDB116SVT24_AOI21_0P75 U1257 ( .A1(counter[0]), .A2(n1514), .B(n908), .X(
        n911) );
  UDB116SVT24_INV_0P75 U1258 ( .A(counter[1]), .X(n910) );
  UDB116SVT24_ND2_MM_0P75 U1259 ( .A1(n909), .A2(n910), .X(n1517) );
  UDB116SVT24_OAI211_0P75 U1260 ( .A1(n911), .A2(n910), .B1(n1517), .B2(n1505), 
        .X(n642) );
  UDB116SVT24_INV_0P75 U1261 ( .A(\SPI_slave_inst/SHIFT_REG [3]), .X(n990) );
  UDB116SVT24_AOI22_1 U1262 ( .A1(n783), .A2(n990), .B1(n758), .B2(n757), .X(
        \SPI_slave_inst/n26 ) );
  UDB116SVT24_INV_0P75 U1263 ( .A(\SPI_slave_inst/SHIFT_REG [0]), .X(n1455) );
  UDB116SVT24_INV_0P75 U1264 ( .A(SPI_OUT[0]), .X(n1152) );
  UDB116SVT24_AOI22_1 U1265 ( .A1(n782), .A2(n1455), .B1(n762), .B2(n756), .X(
        \SPI_slave_inst/n36 ) );
  UDB116SVT24_INV_0P75 U1266 ( .A(\SPI_slave_inst/SHIFT_REG [2]), .X(n1461) );
  UDB116SVT24_INV_0P75 U1267 ( .A(SPI_OUT[2]), .X(n1474) );
  UDB116SVT24_AOI22_1 U1268 ( .A1(n783), .A2(n1461), .B1(n788), .B2(n757), .X(
        \SPI_slave_inst/n24 ) );
  UDB116SVT24_AOI21B_0P75 U1269 ( .A1(counter[1]), .A2(n661), .B(n911), .X(
        n1512) );
  UDB116SVT24_INV_0P75 U1270 ( .A(counter[2]), .X(n912) );
  UDB116SVT24_AOI22_1 U1271 ( .A1(counter[2]), .A2(n1512), .B1(n1517), .B2(
        n912), .X(n641) );
  UDB116SVT24_NR2_0P75 U1272 ( .A1(\CONFIG_inst/spi_rx_valid_prev ), .A2(n913), 
        .X(n919) );
  UDB116SVT24_INV_0P75 U1273 ( .A(\CONFIG_inst/state [0]), .X(n1496) );
  UDB116SVT24_ND3_0P75 U1274 ( .A1(\CONFIG_inst/i_CONFIG_sync2 ), .A2(n919), 
        .A3(n1496), .X(n1489) );
  UDB116SVT24_INV_0P75 U1275 ( .A(SPI_OUT[5]), .X(n1469) );
  UDB116SVT24_OA2BB2_0P75 U1276 ( .A1(n861), .A2(n724), .B1(
        \CONFIG_inst/opcode_q [5]), .B2(n861), .X(\CONFIG_inst/n78 ) );
  UDB116SVT24_OA2BB2_0P75 U1277 ( .A1(n862), .A2(n788), .B1(
        \CONFIG_inst/opcode_q [2]), .B2(n862), .X(\CONFIG_inst/n75 ) );
  UDB116SVT24_OA2BB2_0P75 U1278 ( .A1(n859), .A2(n1465), .B1(
        \CONFIG_inst/opcode_q [7]), .B2(n859), .X(\CONFIG_inst/n80 ) );
  UDB116SVT24_OA2BB2_0P75 U1279 ( .A1(n860), .A2(n1471), .B1(
        \CONFIG_inst/opcode_q [4]), .B2(n860), .X(\CONFIG_inst/n77 ) );
  UDB116SVT24_NR2_0P75 U1280 ( .A1(\sh_sync_inst/state [2]), .A2(
        \sh_sync_inst/state [0]), .X(n960) );
  UDB116SVT24_INV_0P75 U1281 ( .A(\sh_sync_inst/state [0]), .X(n948) );
  UDB116SVT24_NR2_0P75 U1282 ( .A1(n948), .A2(\sh_sync_inst/state [2]), .X(
        n1094) );
  UDB116SVT24_INV_0P75 U1283 ( .A(n1094), .X(n914) );
  UDB116SVT24_INV_0P75 U1284 ( .A(FSM_RST), .X(n917) );
  UDB116SVT24_INV_0P75 U1285 ( .A(\sh_sync_inst/timeout_counter [8]), .X(n1397) );
  UDB116SVT24_AOAI211_0P75 U1286 ( .A1(\sh_sync_inst/timeout_counter [5]), 
        .A2(\sh_sync_inst/timeout_counter [4]), .B(
        \sh_sync_inst/timeout_counter [6]), .C(
        \sh_sync_inst/timeout_counter [7]), .X(n915) );
  UDB116SVT24_ND2_MM_0P75 U1287 ( .A1(\sh_sync_inst/timeout_counter [10]), 
        .A2(\sh_sync_inst/timeout_counter [9]), .X(n1067) );
  UDB116SVT24_AOI21_0P75 U1288 ( .A1(n1397), .A2(n915), .B(n1067), .X(n916) );
  UDB116SVT24_OAI211_0P75 U1289 ( .A1(\sh_sync_inst/timeout_counter [11]), 
        .A2(n916), .B1(\sh_sync_inst/timeout_counter [12]), .B2(
        \sh_sync_inst/timeout_counter [13]), .X(n928) );
  UDB116SVT24_ND2B_0P75 U1290 ( .A(\sh_sync_inst/rfin_edge ), .B(n928), .X(
        n994) );
  UDB116SVT24_ND2_MM_0P75 U1291 ( .A1(n994), .A2(n856), .X(n1069) );
  UDB116SVT24_OAI31_1 U1292 ( .A1(n960), .A2(n855), .A3(n917), .B(n1069), .X(
        \sh_sync_inst/n194 ) );
  UDB116SVT24_OA2BB2_0P75 U1293 ( .A1(n861), .A2(n1467), .B1(
        \CONFIG_inst/opcode_q [6]), .B2(n861), .X(\CONFIG_inst/n79 ) );
  UDB116SVT24_OA2BB2_0P75 U1294 ( .A1(n862), .A2(n758), .B1(
        \CONFIG_inst/opcode_q [3]), .B2(n862), .X(\CONFIG_inst/n76 ) );
  UDB116SVT24_INV_0P75 U1295 ( .A(SPI_OUT[1]), .X(n1490) );
  UDB116SVT24_INV_0P75 U1296 ( .A(\CONFIG_inst/opcode_q [1]), .X(n1145) );
  UDB116SVT24_INV_0P75 U1297 ( .A(n860), .X(n918) );
  UDB116SVT24_AOI22_1 U1298 ( .A1(n859), .A2(n785), .B1(n1145), .B2(n918), .X(
        \CONFIG_inst/n74 ) );
  UDB116SVT24_INV_0P75 U1299 ( .A(\CONFIG_inst/opcode_q [0]), .X(n937) );
  UDB116SVT24_AOI22_1 U1300 ( .A1(n860), .A2(n761), .B1(n937), .B2(n918), .X(
        \CONFIG_inst/n81 ) );
  UDB116SVT24_INV_0P75 U1301 ( .A(\CONFIG_inst/state [1]), .X(n938) );
  UDB116SVT24_AOI21_0P75 U1302 ( .A1(\CONFIG_inst/state [1]), .A2(
        \CONFIG_inst/state [0]), .B(n919), .X(n920) );
  UDB116SVT24_ND2_MM_0P75 U1303 ( .A1(\CONFIG_inst/i_CONFIG_sync2 ), .A2(n920), 
        .X(n1495) );
  UDB116SVT24_ND4_0P75 U1304 ( .A1(SPI_OUT[7]), .A2(SPI_OUT[6]), .A3(
        SPI_OUT[4]), .A4(SPI_OUT[3]), .X(n921) );
  UDB116SVT24_NR2_0P75 U1305 ( .A1(n1469), .A2(n921), .X(n1493) );
  UDB116SVT24_ND2_MM_0P75 U1306 ( .A1(n859), .A2(n1493), .X(n933) );
  UDB116SVT24_OAI21_0P75 U1307 ( .A1(SPI_OUT[0]), .A2(n786), .B(n788), .X(n923) );
  UDB116SVT24_OAI22_0P75 U1308 ( .A1(n938), .A2(n1495), .B1(n933), .B2(n923), 
        .X(\CONFIG_inst/n112 ) );
  UDB116SVT24_ND3_0P75 U1309 ( .A1(n926), .A2(n924), .A3(n698), .X(n925) );
  UDB116SVT24_OAI22_0P75 U1310 ( .A1(n926), .A2(n698), .B1(n791), .B2(n925), 
        .X(n639) );
  UDB116SVT24_INV_0P75 U1311 ( .A(\sh_sync_inst/pulse_count [0]), .X(n927) );
  UDB116SVT24_INV_0P75 U1312 ( .A(n701), .X(n1093) );
  UDB116SVT24_INV_0P75 U1313 ( .A(n703), .X(n1261) );
  UDB116SVT24_OAI211_0P75 U1314 ( .A1(n948), .A2(\sh_sync_inst/rfin_edge ), 
        .B1(n1093), .B2(n1261), .X(n951) );
  UDB116SVT24_AOI21_0P75 U1315 ( .A1(n855), .A2(n927), .B(n951), .X(n965) );
  UDB116SVT24_ND3_0P75 U1316 ( .A1(n858), .A2(n665), .A3(
        \sh_sync_inst/pulse_count [0]), .X(n963) );
  UDB116SVT24_INV_0P75 U1317 ( .A(\sh_sync_inst/pulse_count [1]), .X(n964) );
  UDB116SVT24_AOI22_1 U1318 ( .A1(\sh_sync_inst/pulse_count [1]), .A2(n965), 
        .B1(n963), .B2(n964), .X(\sh_sync_inst/n244 ) );
  UDB116SVT24_AOI21_0P75 U1319 ( .A1(n927), .A2(n951), .B(n965), .X(
        \sh_sync_inst/n245 ) );
  UDB116SVT24_ND2_MM_0P75 U1320 ( .A1(\sh_sync_inst/state [1]), .A2(n1094), 
        .X(n1264) );
  UDB116SVT24_INV_0P75 U1321 ( .A(n1264), .X(n1126) );
  UDB116SVT24_ND2_MM_0P75 U1322 ( .A1(\sh_sync_inst/pulse_gen_count [4]), .A2(
        \sh_sync_inst/pulse_gen_count [3]), .X(n997) );
  UDB116SVT24_INV_0P75 U1323 ( .A(\sh_sync_inst/pulse_gen_count [0]), .X(n1127) );
  UDB116SVT24_NR2_0P75 U1324 ( .A1(\sh_sync_inst/pulse_gen_count [2]), .A2(
        \sh_sync_inst/pulse_gen_count [1]), .X(n998) );
  UDB116SVT24_OR3B_0P75 U1325 ( .B1(n997), .B2(n1127), .A(n998), .X(n956) );
  UDB116SVT24_NR2_0P75 U1326 ( .A1(n701), .A2(\sh_sync_inst/state [0]), .X(
        n1380) );
  UDB116SVT24_AOI21_0P75 U1327 ( .A1(n1126), .A2(n956), .B(n676), .X(n932) );
  UDB116SVT24_NR3_0P75 U1328 ( .A1(\sh_sync_inst/pulse_count [2]), .A2(
        \sh_sync_inst/pulse_count [1]), .A3(\sh_sync_inst/pulse_count [0]), 
        .X(n952) );
  UDB116SVT24_ND2_MM_0P75 U1329 ( .A1(n952), .A2(\sh_sync_inst/pulse_count [3]), .X(n1405) );
  UDB116SVT24_ND3_0P75 U1330 ( .A1(n857), .A2(n928), .A3(n1405), .X(n958) );
  UDB116SVT24_ND2_MM_0P75 U1331 ( .A1(n703), .A2(n1380), .X(n1120) );
  UDB116SVT24_INV_0P75 U1332 ( .A(n1120), .X(n1345) );
  UDB116SVT24_ND3_0P75 U1333 ( .A1(n703), .A2(n663), .A3(n1093), .X(n1091) );
  UDB116SVT24_NR2_0P75 U1334 ( .A1(n791), .A2(n1091), .X(n931) );
  UDB116SVT24_NR4_0P75 U1335 ( .A1(\sh_sync_inst/pulse_pack_count [6]), .A2(
        \sh_sync_inst/pulse_pack_count [4]), .A3(
        \sh_sync_inst/pulse_pack_count [2]), .A4(
        \sh_sync_inst/pulse_pack_count [1]), .X(n929) );
  UDB116SVT24_INV_0P75 U1336 ( .A(\sh_sync_inst/pulse_pack_count [0]), .X(
        n1072) );
  UDB116SVT24_ND4B_1 U1337 ( .A(\sh_sync_inst/pulse_pack_count [3]), .B1(
        \sh_sync_inst/pulse_pack_count [5]), .B2(n929), .B3(n1072), .X(n930)
         );
  UDB116SVT24_AOI22_1 U1338 ( .A1(n1345), .A2(\sh_sync_inst/tx_rdy_p ), .B1(
        n931), .B2(n930), .X(n962) );
  UDB116SVT24_AOAI211_0P75 U1339 ( .A1(n932), .A2(n958), .B(RX), .C(n962), .X(
        \sh_sync_inst/n248 ) );
  UDB116SVT24_NR3_0P75 U1340 ( .A1(SPI_OUT[1]), .A2(n787), .A3(n933), .X(n1483) );
  UDB116SVT24_INV_0P75 U1341 ( .A(ext_counter_flag_RX), .X(n949) );
  UDB116SVT24_ND2_MM_0P75 U1342 ( .A1(\CONFIG_inst/state [0]), .A2(
        \CONFIG_inst/i_CONFIG_sync2 ), .X(n936) );
  UDB116SVT24_ND4_0P75 U1343 ( .A1(\CONFIG_inst/opcode_q [3]), .A2(
        \CONFIG_inst/opcode_q [4]), .A3(\CONFIG_inst/opcode_q [7]), .A4(
        \CONFIG_inst/opcode_q [5]), .X(n934) );
  UDB116SVT24_ND4B_1 U1344 ( .A(n934), .B1(SPI_OUT_RDY), .B2(
        \CONFIG_inst/opcode_q [6]), .B3(n938), .X(n935) );
  UDB116SVT24_NR4_0P75 U1345 ( .A1(\CONFIG_inst/spi_rx_valid_prev ), .A2(
        \CONFIG_inst/opcode_q [2]), .A3(n936), .A4(n935), .X(n966) );
  UDB116SVT24_ND2_MM_0P75 U1346 ( .A1(n966), .A2(n937), .X(n1144) );
  UDB116SVT24_OR2_0P75 U1347 ( .A1(\CONFIG_inst/opcode_q [1]), .A2(n1144), .X(
        n967) );
  UDB116SVT24_AOAI211_0P75 U1348 ( .A1(n1483), .A2(n761), .B(n949), .C(n967), 
        .X(\CONFIG_inst/n83 ) );
  UDB116SVT24_NR2_0P75 U1349 ( .A1(n938), .A2(n1489), .X(n1491) );
  UDB116SVT24_OA2BB2_0P75 U1350 ( .A1(n801), .A2(n721), .B1(
        \CONFIG_inst/pay0 [7]), .B2(n800), .X(\CONFIG_inst/n97 ) );
  UDB116SVT24_OAI21_0P75 U1351 ( .A1(n716), .A2(n666), .B(
        \sh_sync_inst/interval_sum [15]), .X(n941) );
  UDB116SVT24_AOI21_0P75 U1352 ( .A1(\sh_sync_inst/interval_sum [14]), .A2(
        \sh_sync_inst/interval_sum [17]), .B(\sh_sync_inst/interval_sum [13]), 
        .X(n940) );
  UDB116SVT24_ND2_MM_0P75 U1353 ( .A1(n837), .A2(n941), .X(n939) );
  UDB116SVT24_OAI31_1 U1354 ( .A1(n838), .A2(n941), .A3(n940), .B(n939), .X(
        n1373) );
  UDB116SVT24_ND2_MM_0P75 U1355 ( .A1(\sh_sync_inst/interval_sum [13]), .A2(
        n1373), .X(n1078) );
  UDB116SVT24_OAI21_0P75 U1356 ( .A1(\sh_sync_inst/interval_sum [13]), .A2(
        n1373), .B(n1078), .X(n1079) );
  UDB116SVT24_INV_0P75 U1357 ( .A(\sh_sync_inst/interval_sum [17]), .X(n1186)
         );
  UDB116SVT24_AOI21_0P75 U1358 ( .A1(n837), .A2(n707), .B(n1186), .X(n943) );
  UDB116SVT24_NR2_0P75 U1359 ( .A1(n716), .A2(n943), .X(n945) );
  UDB116SVT24_ND2_MM_0P75 U1360 ( .A1(n838), .A2(n707), .X(n942) );
  UDB116SVT24_NR2_0P75 U1361 ( .A1(\sh_sync_inst/interval_sum [17]), .A2(n942), 
        .X(n1184) );
  UDB116SVT24_OAI21_0P75 U1362 ( .A1(n943), .A2(n1184), .B(
        \sh_sync_inst/interval_sum [14]), .X(n944) );
  UDB116SVT24_ND2B_0P75 U1363 ( .A(n945), .B(n944), .X(n1084) );
  UDB116SVT24_INV_0P75 U1364 ( .A(\sh_sync_inst/interval_sum [12]), .X(n1080)
         );
  UDB116SVT24_NR3_0P75 U1365 ( .A1(n1079), .A2(n1084), .A3(n1080), .X(n1082)
         );
  UDB116SVT24_INV_0P75 U1366 ( .A(n707), .X(n1360) );
  UDB116SVT24_AOI21_0P75 U1367 ( .A1(\sh_sync_inst/interval_sum [17]), .A2(
        n837), .B(n1360), .X(n947) );
  UDB116SVT24_OAI21_0P75 U1368 ( .A1(n945), .A2(n1078), .B(n944), .X(n946) );
  UDB116SVT24_EO2_V2_1 U1369 ( .A1(n947), .A2(n946), .X(n1088) );
  UDB116SVT24_NR2_0P75 U1370 ( .A1(n1082), .A2(n1088), .X(n1081) );
  UDB116SVT24_ND3_0P75 U1371 ( .A1(n1261), .A2(n948), .A3(
        \sh_sync_inst/state [1]), .X(n1255) );
  UDB116SVT24_NR2_0P75 U1372 ( .A1(n1255), .A2(ext_counter_flag_RX), .X(n1374)
         );
  UDB116SVT24_AOI22_1 U1373 ( .A1(ext_count_val_RX[12]), .A2(n852), .B1(
        \sh_sync_inst/avg_interval [12]), .B2(n798), .X(n950) );
  UDB116SVT24_OAI21_0P75 U1374 ( .A1(n1081), .A2(n841), .B(n950), .X(
        \sh_sync_inst/n175 ) );
  UDB116SVT24_OA2BB2_0P75 U1375 ( .A1(n802), .A2(n723), .B1(
        \CONFIG_inst/pay0 [6]), .B2(n801), .X(\CONFIG_inst/n95 ) );
  UDB116SVT24_OA2BB2_0P75 U1376 ( .A1(n801), .A2(n722), .B1(
        \CONFIG_inst/pay0 [4]), .B2(n802), .X(\CONFIG_inst/n91 ) );
  UDB116SVT24_ND2_MM_0P75 U1377 ( .A1(n1380), .A2(n1261), .X(n1378) );
  UDB116SVT24_INV_0P75 U1378 ( .A(\sh_sync_inst/pulse_count [3]), .X(n953) );
  UDB116SVT24_AOI31_0P75 U1379 ( .A1(n1378), .A2(n953), .A3(n952), .B(n951), 
        .X(n1357) );
  UDB116SVT24_ND2_MM_0P75 U1380 ( .A1(n857), .A2(n1357), .X(n1353) );
  UDB116SVT24_INV_0P75 U1381 ( .A(n1357), .X(n1390) );
  UDB116SVT24_AOAI211_0P75 U1382 ( .A1(n857), .A2(n764), .B(n812), .C(
        \sh_sync_inst/interval_sum [0]), .X(n954) );
  UDB116SVT24_OAI31_1 U1383 ( .A1(\sh_sync_inst/interval_sum [0]), .A2(n764), 
        .A3(n1353), .B(n954), .X(\sh_sync_inst/n234 ) );
  UDB116SVT24_INV_0P75 U1384 ( .A(\CONFIG_inst/pay0 [1]), .X(n1138) );
  UDB116SVT24_INV_0P75 U1385 ( .A(n1491), .X(n955) );
  UDB116SVT24_AOI22_1 U1386 ( .A1(n800), .A2(n786), .B1(n1138), .B2(n682), .X(
        \CONFIG_inst/n85 ) );
  UDB116SVT24_INV_0P75 U1387 ( .A(\CONFIG_inst/pay0 [5]), .X(n1146) );
  UDB116SVT24_AOI22_1 U1388 ( .A1(n801), .A2(n724), .B1(n1146), .B2(n955), .X(
        \CONFIG_inst/n93 ) );
  UDB116SVT24_INV_0P75 U1389 ( .A(\CONFIG_inst/pay0 [2]), .X(n1143) );
  UDB116SVT24_AOI22_1 U1390 ( .A1(n802), .A2(n1474), .B1(n1143), .B2(n955), 
        .X(\CONFIG_inst/n87 ) );
  UDB116SVT24_INV_0P75 U1391 ( .A(\CONFIG_inst/pay0 [0]), .X(n1139) );
  UDB116SVT24_AOI22_1 U1392 ( .A1(n802), .A2(n762), .B1(n1139), .B2(n955), .X(
        \CONFIG_inst/n99 ) );
  UDB116SVT24_INV_0P75 U1393 ( .A(n994), .X(n1065) );
  UDB116SVT24_ND2_MM_0P75 U1394 ( .A1(n856), .A2(n1065), .X(n1047) );
  UDB116SVT24_INV_0P75 U1395 ( .A(\sh_sync_inst/timeout_counter [0]), .X(n974)
         );
  UDB116SVT24_AOI22_1 U1396 ( .A1(\sh_sync_inst/timeout_counter [0]), .A2(n856), .B1(n1047), .B2(n974), .X(\sh_sync_inst/n191 ) );
  UDB116SVT24_INV_0P75 U1397 ( .A(\CONFIG_inst/pay0 [3]), .X(n1141) );
  UDB116SVT24_AOI22_1 U1398 ( .A1(n800), .A2(n758), .B1(n1141), .B2(n955), .X(
        \CONFIG_inst/n89 ) );
  UDB116SVT24_NR2B_0P75 U1399 ( .A(\sh_sync_inst/rfin_sync2 ), .B(
        \sh_sync_inst/rfin_prev ), .X(\sh_sync_inst/N79 ) );
  UDB116SVT24_NR2_0P75 U1400 ( .A1(n703), .A2(n1093), .X(n957) );
  UDB116SVT24_INV_0P75 U1401 ( .A(n798), .X(n1377) );
  UDB116SVT24_AOI31_0P75 U1402 ( .A1(n791), .A2(n957), .A3(n956), .B(n684), 
        .X(n1404) );
  UDB116SVT24_INV_0P75 U1403 ( .A(n958), .X(n959) );
  UDB116SVT24_AOAI211_0P75 U1404 ( .A1(n960), .A2(\sh_sync_inst/N79 ), .B(n959), .C(n790), .X(n961) );
  UDB116SVT24_ND3_0P75 U1405 ( .A1(n1404), .A2(n962), .A3(n961), .X(
        \sh_sync_inst/n247 ) );
  UDB116SVT24_OR2_0P75 U1406 ( .A1(n964), .A2(n963), .X(n970) );
  UDB116SVT24_INV_0P75 U1407 ( .A(\sh_sync_inst/pulse_count [2]), .X(n971) );
  UDB116SVT24_INV_0P75 U1408 ( .A(n855), .X(n1406) );
  UDB116SVT24_OAI21_0P75 U1409 ( .A1(\sh_sync_inst/pulse_count [1]), .A2(n725), 
        .B(n965), .X(n968) );
  UDB116SVT24_OA2BB2_0P75 U1410 ( .A1(n970), .A2(n971), .B1(n971), .B2(n968), 
        .X(\sh_sync_inst/n243 ) );
  UDB116SVT24_ND2_MM_0P75 U1411 ( .A1(\CONFIG_inst/opcode_q [0]), .A2(n966), 
        .X(n1135) );
  UDB116SVT24_OA2BB2_0P75 U1412 ( .A1(n868), .A2(n761), .B1(
        ext_count_val_TX[0]), .B2(n870), .X(\CONFIG_inst/n73 ) );
  UDB116SVT24_BUF_1 U1413 ( .A(n967), .X(n972) );
  UDB116SVT24_INV_0P75 U1414 ( .A(n972), .X(n978) );
  UDB116SVT24_BUF_1 U1415 ( .A(n967), .X(n1480) );
  UDB116SVT24_INV_0P75 U1416 ( .A(n1480), .X(n973) );
  UDB116SVT24_OA2BB2_0P75 U1417 ( .A1(n978), .A2(n1469), .B1(
        ext_count_val_RX[5]), .B2(n973), .X(\CONFIG_inst/n46 ) );
  UDB116SVT24_AOAI211_0P75 U1418 ( .A1(n858), .A2(n971), .B(n968), .C(
        \sh_sync_inst/pulse_count [3]), .X(n969) );
  UDB116SVT24_OAI31_1 U1419 ( .A1(\sh_sync_inst/pulse_count [3]), .A2(n971), 
        .A3(n970), .B(n969), .X(\sh_sync_inst/n246 ) );
  UDB116SVT24_INV_0P75 U1420 ( .A(n972), .X(n1479) );
  UDB116SVT24_OA2BB2_0P75 U1421 ( .A1(n1479), .A2(n759), .B1(
        ext_count_val_RX[3]), .B2(n973), .X(\CONFIG_inst/n44 ) );
  UDB116SVT24_INV_0P75 U1422 ( .A(n972), .X(n976) );
  UDB116SVT24_INV_0P75 U1423 ( .A(n1480), .X(n977) );
  UDB116SVT24_OA2BB2_0P75 U1424 ( .A1(n976), .A2(n1138), .B1(
        ext_count_val_RX[9]), .B2(n977), .X(\CONFIG_inst/n50 ) );
  UDB116SVT24_OA2BB2_0P75 U1425 ( .A1(n976), .A2(n1139), .B1(
        ext_count_val_RX[8]), .B2(n977), .X(\CONFIG_inst/n49 ) );
  UDB116SVT24_INV_0P75 U1426 ( .A(n972), .X(n984) );
  UDB116SVT24_OA2BB2_0P75 U1427 ( .A1(n984), .A2(n722), .B1(
        ext_count_val_RX[4]), .B2(n973), .X(\CONFIG_inst/n45 ) );
  UDB116SVT24_OA2BB2_0P75 U1428 ( .A1(n984), .A2(n1143), .B1(
        ext_count_val_RX[10]), .B2(n978), .X(\CONFIG_inst/n51 ) );
  UDB116SVT24_INV_0P75 U1429 ( .A(n1480), .X(n983) );
  UDB116SVT24_OA2BB2_0P75 U1430 ( .A1(n976), .A2(n723), .B1(
        ext_count_val_RX[6]), .B2(n983), .X(\CONFIG_inst/n47 ) );
  UDB116SVT24_INV_0P75 U1431 ( .A(\sh_sync_inst/timeout_counter [7]), .X(n1051) );
  UDB116SVT24_INV_0P75 U1432 ( .A(\sh_sync_inst/timeout_counter [5]), .X(n1049) );
  UDB116SVT24_AN3B_0P75 U1433 ( .B1(\sh_sync_inst/timeout_counter [2]), .B2(
        \sh_sync_inst/timeout_counter [1]), .A(n974), .X(n1332) );
  UDB116SVT24_ND2_MM_0P75 U1434 ( .A1(n1332), .A2(
        \sh_sync_inst/timeout_counter [3]), .X(n996) );
  UDB116SVT24_ND2B_0P75 U1435 ( .A(n996), .B(\sh_sync_inst/timeout_counter [4]), .X(n1048) );
  UDB116SVT24_NR2_0P75 U1436 ( .A1(n1049), .A2(n1048), .X(n1391) );
  UDB116SVT24_ND2_MM_0P75 U1437 ( .A1(\sh_sync_inst/timeout_counter [6]), .A2(
        n1391), .X(n1050) );
  UDB116SVT24_NR2_0P75 U1438 ( .A1(n1051), .A2(n1050), .X(n1396) );
  UDB116SVT24_ND2_MM_0P75 U1439 ( .A1(\sh_sync_inst/timeout_counter [8]), .A2(
        n1396), .X(n975) );
  UDB116SVT24_AOI21_0P75 U1440 ( .A1(n1065), .A2(n975), .B(n725), .X(n1064) );
  UDB116SVT24_OR2_0P75 U1441 ( .A1(n975), .A2(n750), .X(n1066) );
  UDB116SVT24_INV_0P75 U1442 ( .A(\sh_sync_inst/timeout_counter [9]), .X(n988)
         );
  UDB116SVT24_AOI22_1 U1443 ( .A1(\sh_sync_inst/timeout_counter [9]), .A2(
        n1064), .B1(n1066), .B2(n988), .X(\sh_sync_inst/n182 ) );
  UDB116SVT24_OA2BB2_0P75 U1444 ( .A1(n984), .A2(n1146), .B1(
        ext_count_val_RX[13]), .B2(n977), .X(\CONFIG_inst/n54 ) );
  UDB116SVT24_OA2BB2_0P75 U1445 ( .A1(n976), .A2(n1141), .B1(
        ext_count_val_RX[11]), .B2(n978), .X(\CONFIG_inst/n52 ) );
  UDB116SVT24_OA2BB2_0P75 U1446 ( .A1(n1479), .A2(n1490), .B1(
        ext_count_val_RX[1]), .B2(n983), .X(\CONFIG_inst/n42 ) );
  UDB116SVT24_OA2BB2_0P75 U1447 ( .A1(n1479), .A2(n787), .B1(
        ext_count_val_RX[2]), .B2(n983), .X(\CONFIG_inst/n43 ) );
  UDB116SVT24_OA2BB2_0P75 U1448 ( .A1(n978), .A2(n721), .B1(
        ext_count_val_RX[7]), .B2(n977), .X(\CONFIG_inst/n48 ) );
  UDB116SVT24_INV_0P75 U1449 ( .A(\SPI_slave_inst/SCK_sync_1 ), .X(n1319) );
  UDB116SVT24_NR2B_0P75 U1450 ( .A(\SPI_slave_inst/SS_prev ), .B(n768), .X(
        n1459) );
  UDB116SVT24_AOAI211_0P75 U1451 ( .A1(n1319), .A2(\SPI_slave_inst/SCK_prev ), 
        .B(n1459), .C(n1276), .X(n1453) );
  UDB116SVT24_NR2_0P75 U1452 ( .A1(n1453), .A2(n845), .X(n1458) );
  UDB116SVT24_INV_0P75 U1453 ( .A(n1458), .X(n991) );
  UDB116SVT24_AOI22_1 U1454 ( .A1(n846), .A2(SPI_IN[3]), .B1(
        \SPI_slave_inst/SHIFT_REG [3]), .B2(n713), .X(n979) );
  UDB116SVT24_OAI21_0P75 U1455 ( .A1(n991), .A2(n1461), .B(n979), .X(
        \SPI_slave_inst/n27 ) );
  UDB116SVT24_AOI22_1 U1456 ( .A1(n845), .A2(SPI_IN[5]), .B1(
        \SPI_slave_inst/SHIFT_REG [5]), .B2(n713), .X(n980) );
  UDB116SVT24_OAI21_0P75 U1457 ( .A1(n991), .A2(n981), .B(n980), .X(
        \SPI_slave_inst/n31 ) );
  UDB116SVT24_AOI22_1 U1458 ( .A1(n845), .A2(SPI_IN[7]), .B1(
        \SPI_slave_inst/SHIFT_REG [7]), .B2(n713), .X(n982) );
  UDB116SVT24_OAI21_0P75 U1459 ( .A1(n991), .A2(n1457), .B(n982), .X(
        \SPI_slave_inst/n35 ) );
  UDB116SVT24_OA2BB2_0P75 U1460 ( .A1(n984), .A2(n762), .B1(
        ext_count_val_RX[0]), .B2(n983), .X(\CONFIG_inst/n57 ) );
  UDB116SVT24_AOI22_1 U1461 ( .A1(n846), .A2(SPI_IN[1]), .B1(
        \SPI_slave_inst/SHIFT_REG [1]), .B2(n1453), .X(n985) );
  UDB116SVT24_OAI21_0P75 U1462 ( .A1(n685), .A2(n1455), .B(n985), .X(
        \SPI_slave_inst/n23 ) );
  UDB116SVT24_OAI21_0P75 U1463 ( .A1(\sh_sync_inst/timeout_counter [9]), .A2(
        n750), .B(n1064), .X(n986) );
  UDB116SVT24_ND2_MM_0P75 U1464 ( .A1(\sh_sync_inst/timeout_counter [10]), 
        .A2(n986), .X(n987) );
  UDB116SVT24_OAI31_1 U1465 ( .A1(n1066), .A2(n988), .A3(
        \sh_sync_inst/timeout_counter [10]), .B(n987), .X(\sh_sync_inst/n181 )
         );
  UDB116SVT24_AOI22_1 U1466 ( .A1(n1459), .A2(SPI_IN[4]), .B1(
        \SPI_slave_inst/SHIFT_REG [4]), .B2(n713), .X(n989) );
  UDB116SVT24_OAI21_0P75 U1467 ( .A1(n685), .A2(n990), .B(n989), .X(
        \SPI_slave_inst/n29 ) );
  UDB116SVT24_ND2_MM_0P75 U1468 ( .A1(\sh_sync_inst/timeout_counter [0]), .A2(
        \sh_sync_inst/timeout_counter [1]), .X(n993) );
  UDB116SVT24_NR2_0P75 U1469 ( .A1(\sh_sync_inst/timeout_counter [1]), .A2(
        n692), .X(n1334) );
  UDB116SVT24_OAI21_0P75 U1470 ( .A1(n674), .A2(n994), .B(n858), .X(n1333) );
  UDB116SVT24_OAI21_0P75 U1471 ( .A1(n1334), .A2(n1333), .B(
        \sh_sync_inst/timeout_counter [2]), .X(n992) );
  UDB116SVT24_OAI31_1 U1472 ( .A1(\sh_sync_inst/timeout_counter [2]), .A2(n993), .A3(n692), .B(n992), .X(\sh_sync_inst/n189 ) );
  UDB116SVT24_NR2_0P75 U1473 ( .A1(\sh_sync_inst/timeout_counter [3]), .A2(
        n750), .X(n1331) );
  UDB116SVT24_OAI21_0P75 U1474 ( .A1(n1332), .A2(n994), .B(n855), .X(n1330) );
  UDB116SVT24_OAI21_0P75 U1475 ( .A1(n1331), .A2(n1330), .B(
        \sh_sync_inst/timeout_counter [4]), .X(n995) );
  UDB116SVT24_OAI31_1 U1476 ( .A1(\sh_sync_inst/timeout_counter [4]), .A2(n996), .A3(n750), .B(n995), .X(\sh_sync_inst/n187 ) );
  UDB116SVT24_NR2_0P75 U1477 ( .A1(n998), .A2(n997), .X(n1092) );
  UDB116SVT24_INV_0P75 U1478 ( .A(\sh_sync_inst/avg_interval [0]), .X(n999) );
  UDB116SVT24_INV_0P75 U1479 ( .A(\sh_sync_inst/avg_interval [6]), .X(n1326)
         );
  UDB116SVT24_INV_0P75 U1480 ( .A(\sh_sync_inst/counter [6]), .X(n1098) );
  UDB116SVT24_AOI2222_V2_0P75 U1481 ( .A1(n999), .A2(n739), .B1(n714), .B2(
        n1326), .C1(n765), .C2(\sh_sync_inst/avg_interval [0]), .D1(
        \sh_sync_inst/avg_interval [6]), .D2(n686), .X(n1029) );
  UDB116SVT24_INV_0P75 U1482 ( .A(\sh_sync_inst/avg_interval [2]), .X(n1010)
         );
  UDB116SVT24_INV_0P75 U1483 ( .A(\sh_sync_inst/avg_interval [4]), .X(n1323)
         );
  UDB116SVT24_INV_0P75 U1484 ( .A(n742), .X(n1038) );
  UDB116SVT24_INV_0P75 U1485 ( .A(\sh_sync_inst/counter [4]), .X(n1124) );
  UDB116SVT24_AOI2222_V2_0P75 U1486 ( .A1(n1010), .A2(n742), .B1(
        \sh_sync_inst/counter [4]), .B2(n1323), .C1(n1038), .C2(
        \sh_sync_inst/avg_interval [2]), .D1(\sh_sync_inst/avg_interval [4]), 
        .D2(n1124), .X(n1028) );
  UDB116SVT24_INV_0P75 U1487 ( .A(\sh_sync_inst/avg_interval [1]), .X(n1011)
         );
  UDB116SVT24_AOI22_1 U1488 ( .A1(\sh_sync_inst/avg_interval [1]), .A2(n773), 
        .B1(n687), .B2(n1011), .X(n1006) );
  UDB116SVT24_INV_0P75 U1489 ( .A(\sh_sync_inst/avg_interval [13]), .X(n1376)
         );
  UDB116SVT24_INV_0P75 U1490 ( .A(\sh_sync_inst/counter [13]), .X(n1386) );
  UDB116SVT24_AOI22_1 U1491 ( .A1(\sh_sync_inst/counter [13]), .A2(
        \sh_sync_inst/avg_interval [13]), .B1(n1376), .B2(n689), .X(n1005) );
  UDB116SVT24_INV_0P75 U1492 ( .A(\sh_sync_inst/avg_interval [9]), .X(n1008)
         );
  UDB116SVT24_INV_0P75 U1493 ( .A(\sh_sync_inst/avg_interval [11]), .X(n1014)
         );
  UDB116SVT24_AOI2222_V2_0P75 U1494 ( .A1(n1008), .A2(n748), .B1(
        \sh_sync_inst/avg_interval [11]), .B2(n735), .C1(n711), .C2(
        \sh_sync_inst/avg_interval [9]), .D1(n737), .D2(n1014), .X(n1003) );
  UDB116SVT24_INV_0P75 U1495 ( .A(\sh_sync_inst/avg_interval [10]), .X(n1329)
         );
  UDB116SVT24_INV_0P75 U1496 ( .A(n839), .X(n1381) );
  UDB116SVT24_INV_0P75 U1497 ( .A(\sh_sync_inst/avg_interval [12]), .X(n1017)
         );
  UDB116SVT24_AOI2222_V2_0P75 U1498 ( .A1(n1329), .A2(n839), .B1(
        \sh_sync_inst/avg_interval [12]), .B2(n690), .C1(n1381), .C2(
        \sh_sync_inst/avg_interval [10]), .D1(n734), .D2(n1017), .X(n1002) );
  UDB116SVT24_INV_0P75 U1499 ( .A(\sh_sync_inst/avg_interval [7]), .X(n1015)
         );
  UDB116SVT24_INV_0P75 U1500 ( .A(n744), .X(n1117) );
  UDB116SVT24_INV_0P75 U1501 ( .A(n776), .X(n1032) );
  UDB116SVT24_INV_0P75 U1502 ( .A(\sh_sync_inst/avg_interval [8]), .X(n1007)
         );
  UDB116SVT24_AOI2222_V2_0P75 U1503 ( .A1(n1015), .A2(n777), .B1(
        \sh_sync_inst/avg_interval [8]), .B2(n1117), .C1(n1032), .C2(
        \sh_sync_inst/avg_interval [7]), .D1(n744), .D2(n1007), .X(n1001) );
  UDB116SVT24_INV_0P75 U1504 ( .A(\sh_sync_inst/avg_interval [3]), .X(n1009)
         );
  UDB116SVT24_INV_0P75 U1505 ( .A(n771), .X(n1033) );
  UDB116SVT24_INV_0P75 U1506 ( .A(\sh_sync_inst/counter [3]), .X(n1122) );
  UDB116SVT24_INV_0P75 U1507 ( .A(\sh_sync_inst/avg_interval [5]), .X(n1016)
         );
  UDB116SVT24_AOI2222_V2_0P75 U1508 ( .A1(n1009), .A2(
        \sh_sync_inst/counter [3]), .B1(\sh_sync_inst/avg_interval [5]), .B2(
        n1033), .C1(n728), .C2(\sh_sync_inst/avg_interval [3]), .D1(n771), 
        .D2(n1016), .X(n1000) );
  UDB116SVT24_ND4_0P75 U1509 ( .A1(n1003), .A2(n1002), .A3(n1001), .A4(n1000), 
        .X(n1004) );
  UDB116SVT24_NR4_0P75 U1510 ( .A1(\sh_sync_inst/first_pulse_flag ), .A2(n1006), .A3(n1005), .A4(n1004), .X(n1027) );
  UDB116SVT24_AOI22_1 U1511 ( .A1(\sh_sync_inst/avg_interval [8]), .A2(n777), 
        .B1(n1032), .B2(n1007), .X(n1025) );
  UDB116SVT24_AOI22_1 U1512 ( .A1(\sh_sync_inst/avg_interval [9]), .A2(n744), 
        .B1(n1117), .B2(n1008), .X(n1024) );
  UDB116SVT24_AOI2222_V2_0P75 U1513 ( .A1(n1010), .A2(n774), .B1(n741), .B2(
        n1009), .C1(n687), .C2(\sh_sync_inst/avg_interval [2]), .D1(
        \sh_sync_inst/avg_interval [3]), .D2(n1038), .X(n1013) );
  UDB116SVT24_AOI22_1 U1514 ( .A1(\sh_sync_inst/avg_interval [1]), .A2(n765), 
        .B1(n763), .B2(n1011), .X(n1012) );
  UDB116SVT24_ND4_0P75 U1515 ( .A1(\sh_sync_inst/first_pulse_flag ), .A2(n1013), .A3(n689), .A4(n1012), .X(n1023) );
  UDB116SVT24_AOI2222_V2_0P75 U1516 ( .A1(n1326), .A2(n770), .B1(
        \sh_sync_inst/avg_interval [11]), .B2(n1381), .C1(n1033), .C2(
        \sh_sync_inst/avg_interval [6]), .D1(n840), .D2(n1014), .X(n1021) );
  UDB116SVT24_AOI2222_V2_0P75 U1517 ( .A1(n1323), .A2(
        \sh_sync_inst/counter [3]), .B1(\sh_sync_inst/avg_interval [13]), .B2(
        n691), .C1(n728), .C2(\sh_sync_inst/avg_interval [4]), .D1(n733), .D2(
        n1376), .X(n1020) );
  UDB116SVT24_AOI2222_V2_0P75 U1518 ( .A1(n1016), .A2(
        \sh_sync_inst/counter [4]), .B1(n714), .B2(n1015), .C1(n709), .C2(
        \sh_sync_inst/avg_interval [5]), .D1(\sh_sync_inst/avg_interval [7]), 
        .D2(n686), .X(n1019) );
  UDB116SVT24_AOI2222_V2_0P75 U1519 ( .A1(n1329), .A2(n747), .B1(
        \sh_sync_inst/avg_interval [12]), .B2(n710), .C1(n711), .C2(
        \sh_sync_inst/avg_interval [10]), .D1(n736), .D2(n1017), .X(n1018) );
  UDB116SVT24_ND4_0P75 U1520 ( .A1(n1021), .A2(n1020), .A3(n1019), .A4(n1018), 
        .X(n1022) );
  UDB116SVT24_NR4_0P75 U1521 ( .A1(n1025), .A2(n1024), .A3(n1023), .A4(n1022), 
        .X(n1026) );
  UDB116SVT24_AOI31_0P75 U1522 ( .A1(n1029), .A2(n1028), .A3(n1027), .B(n1026), 
        .X(n1265) );
  UDB116SVT24_OAI31_1 U1523 ( .A1(n1092), .A2(n1265), .A3(n1264), .B(
        \sh_sync_inst/first_pulse_flag ), .X(n1030) );
  UDB116SVT24_ND2_MM_0P75 U1524 ( .A1(n678), .A2(n1030), .X(
        \sh_sync_inst/n216 ) );
  UDB116SVT24_OAI22_0P75 U1525 ( .A1(n690), .A2(ext_count_val_TX[12]), .B1(
        n764), .B2(ext_count_val_TX[0]), .X(n1031) );
  UDB116SVT24_AOI221_1 U1526 ( .A1(n691), .A2(ext_count_val_TX[12]), .B1(
        ext_count_val_TX[0]), .B2(n764), .C(n1031), .X(n1037) );
  UDB116SVT24_INV_0P75 U1527 ( .A(ext_count_val_TX[5]), .X(n1061) );
  UDB116SVT24_INV_0P75 U1528 ( .A(ext_count_val_TX[7]), .X(n1054) );
  UDB116SVT24_AOI2222_V2_0P75 U1529 ( .A1(n1061), .A2(
        \sh_sync_inst/counter [5]), .B1(n777), .B2(n1054), .C1(n1033), .C2(
        ext_count_val_TX[5]), .D1(ext_count_val_TX[7]), .D2(n1032), .X(n1036)
         );
  UDB116SVT24_INV_0P75 U1530 ( .A(ext_count_val_TX[6]), .X(n1052) );
  UDB116SVT24_INV_0P75 U1531 ( .A(ext_count_val_TX[3]), .X(n1060) );
  UDB116SVT24_AOI2222_V2_0P75 U1532 ( .A1(n1052), .A2(
        \sh_sync_inst/counter [6]), .B1(\sh_sync_inst/counter [3]), .B2(n1060), 
        .C1(n686), .C2(ext_count_val_TX[6]), .D1(ext_count_val_TX[3]), .D2(
        n1122), .X(n1035) );
  UDB116SVT24_INV_0P75 U1533 ( .A(ext_count_val_TX[11]), .X(n1059) );
  UDB116SVT24_INV_0P75 U1534 ( .A(ext_count_val_TX[10]), .X(n1058) );
  UDB116SVT24_AOI2222_V2_0P75 U1535 ( .A1(n1059), .A2(n737), .B1(n840), .B2(
        n1058), .C1(n735), .C2(ext_count_val_TX[11]), .D1(ext_count_val_TX[10]), .D2(n726), .X(n1034) );
  UDB116SVT24_ND4_0P75 U1536 ( .A1(n1037), .A2(n1036), .A3(n1035), .A4(n1034), 
        .X(n1046) );
  UDB116SVT24_INV_0P75 U1537 ( .A(ext_count_val_TX[9]), .X(n1053) );
  UDB116SVT24_INV_0P75 U1538 ( .A(ext_count_val_TX[8]), .X(n1057) );
  UDB116SVT24_AOI2222_V2_0P75 U1539 ( .A1(n1053), .A2(n747), .B1(n745), .B2(
        n1057), .C1(n711), .C2(ext_count_val_TX[9]), .D1(ext_count_val_TX[8]), 
        .D2(n1117), .X(n1041) );
  UDB116SVT24_INV_0P75 U1540 ( .A(ext_count_val_TX[4]), .X(n1062) );
  UDB116SVT24_INV_0P75 U1541 ( .A(ext_count_val_TX[13]), .X(n1056) );
  UDB116SVT24_AOI2222_V2_0P75 U1542 ( .A1(n1062), .A2(
        \sh_sync_inst/counter [4]), .B1(\sh_sync_inst/counter [13]), .B2(n1056), .C1(n709), .C2(ext_count_val_TX[4]), .D1(ext_count_val_TX[13]), .D2(n1386), 
        .X(n1040) );
  UDB116SVT24_INV_0P75 U1543 ( .A(ext_count_val_TX[1]), .X(n1063) );
  UDB116SVT24_INV_0P75 U1544 ( .A(ext_count_val_TX[2]), .X(n1055) );
  UDB116SVT24_AOI2222_V2_0P75 U1545 ( .A1(n1063), .A2(n774), .B1(n741), .B2(
        n1055), .C1(n687), .C2(ext_count_val_TX[1]), .D1(ext_count_val_TX[2]), 
        .D2(n1038), .X(n1039) );
  UDB116SVT24_ND4_0P75 U1546 ( .A1(ext_counter_flag_TX), .A2(n1041), .A3(n1040), .A4(n1039), .X(n1045) );
  UDB116SVT24_ND3_0P75 U1547 ( .A1(n773), .A2(n742), .A3(n739), .X(n1121) );
  UDB116SVT24_NR2_0P75 U1548 ( .A1(n728), .A2(n1121), .X(n1097) );
  UDB116SVT24_ND2_MM_0P75 U1549 ( .A1(n1097), .A2(n709), .X(n1123) );
  UDB116SVT24_NR4_0P75 U1550 ( .A1(ext_counter_flag_TX), .A2(n771), .A3(n746), 
        .A4(n689), .X(n1043) );
  UDB116SVT24_NR4_0P75 U1551 ( .A1(n734), .A2(n776), .A3(n736), .A4(n726), .X(
        n1042) );
  UDB116SVT24_ND4_0P75 U1552 ( .A1(n745), .A2(n1043), .A3(n1042), .A4(n686), 
        .X(n1044) );
  UDB116SVT24_OAI22_0P75 U1553 ( .A1(n1046), .A2(n1045), .B1(n1123), .B2(n1044), .X(n1090) );
  UDB116SVT24_ND2B_0P75 U1554 ( .A(n1091), .B(n1090), .X(n1263) );
  UDB116SVT24_ND2_MM_0P75 U1555 ( .A1(n1378), .A2(n849), .X(n1100) );
  UDB116SVT24_AOI22_1 U1556 ( .A1(\sh_sync_inst/pulse_pack_count [0]), .A2(
        n1100), .B1(n850), .B2(n1072), .X(\sh_sync_inst/n201 ) );
  UDB116SVT24_AOI21_0P75 U1557 ( .A1(n683), .A2(n1048), .B(n1406), .X(n1395)
         );
  UDB116SVT24_ND2_MM_0P75 U1558 ( .A1(n693), .A2(n1049), .X(n1394) );
  UDB116SVT24_OAI22_0P75 U1559 ( .A1(n1395), .A2(n1049), .B1(n1048), .B2(n1394), .X(\sh_sync_inst/n186 ) );
  UDB116SVT24_AOI21_0P75 U1560 ( .A1(n683), .A2(n1050), .B(n725), .X(n1400) );
  UDB116SVT24_ND2_MM_0P75 U1561 ( .A1(n693), .A2(n1051), .X(n1399) );
  UDB116SVT24_OAI22_0P75 U1562 ( .A1(n1400), .A2(n1051), .B1(n1050), .B2(n1399), .X(\sh_sync_inst/n184 ) );
  UDB116SVT24_INV_0P75 U1563 ( .A(n868), .X(n1481) );
  UDB116SVT24_AOI22_1 U1564 ( .A1(n868), .A2(n1467), .B1(n1052), .B2(n806), 
        .X(\CONFIG_inst/n63 ) );
  UDB116SVT24_AOI22_1 U1565 ( .A1(n869), .A2(n1138), .B1(n1053), .B2(n806), 
        .X(\CONFIG_inst/n66 ) );
  UDB116SVT24_AOI22_1 U1566 ( .A1(n870), .A2(n1465), .B1(n1054), .B2(n804), 
        .X(\CONFIG_inst/n64 ) );
  UDB116SVT24_AOI22_1 U1567 ( .A1(n871), .A2(n788), .B1(n1055), .B2(n804), .X(
        \CONFIG_inst/n59 ) );
  UDB116SVT24_AOI22_1 U1568 ( .A1(n868), .A2(n1146), .B1(n1056), .B2(n805), 
        .X(\CONFIG_inst/n70 ) );
  UDB116SVT24_AOI22_1 U1569 ( .A1(n869), .A2(n1139), .B1(n1057), .B2(n806), 
        .X(\CONFIG_inst/n65 ) );
  UDB116SVT24_AOI22_1 U1570 ( .A1(n870), .A2(n1143), .B1(n1058), .B2(n1481), 
        .X(\CONFIG_inst/n67 ) );
  UDB116SVT24_AOI22_1 U1571 ( .A1(n871), .A2(n1141), .B1(n1059), .B2(n804), 
        .X(\CONFIG_inst/n68 ) );
  UDB116SVT24_AOI22_1 U1572 ( .A1(n679), .A2(n759), .B1(n1060), .B2(n805), .X(
        \CONFIG_inst/n60 ) );
  UDB116SVT24_AOI22_1 U1573 ( .A1(n869), .A2(n724), .B1(n1061), .B2(n806), .X(
        \CONFIG_inst/n62 ) );
  UDB116SVT24_AOI22_1 U1574 ( .A1(n870), .A2(n1471), .B1(n1062), .B2(n805), 
        .X(\CONFIG_inst/n61 ) );
  UDB116SVT24_AOI22_1 U1575 ( .A1(n871), .A2(n1490), .B1(n1063), .B2(n805), 
        .X(\CONFIG_inst/n58 ) );
  UDB116SVT24_INV_0P75 U1576 ( .A(\sh_sync_inst/timeout_counter [11]), .X(
        n1401) );
  UDB116SVT24_AO21B_0P75 U1577 ( .A1(n1067), .A2(n1065), .B(n1064), .X(n1403)
         );
  UDB116SVT24_AOI21_0P75 U1578 ( .A1(n693), .A2(n1401), .B(n1403), .X(n1068)
         );
  UDB116SVT24_NR2_0P75 U1579 ( .A1(n1067), .A2(n1066), .X(n1402) );
  UDB116SVT24_ND2_MM_0P75 U1580 ( .A1(\sh_sync_inst/timeout_counter [11]), 
        .A2(n1402), .X(n1070) );
  UDB116SVT24_INV_0P75 U1581 ( .A(\sh_sync_inst/timeout_counter [12]), .X(
        n1071) );
  UDB116SVT24_AOI22_1 U1582 ( .A1(\sh_sync_inst/timeout_counter [12]), .A2(
        n1068), .B1(n1070), .B2(n1071), .X(\sh_sync_inst/n179 ) );
  UDB116SVT24_AO2BB2_0P75 U1583 ( .A1(n1071), .A2(n1070), .B1(n1069), .B2(
        \sh_sync_inst/timeout_counter [13]), .X(\sh_sync_inst/n178 ) );
  UDB116SVT24_AN3B_0P75 U1584 ( .B1(\sh_sync_inst/pulse_pack_count [2]), .B2(
        \sh_sync_inst/pulse_pack_count [1]), .A(n1072), .X(n1339) );
  UDB116SVT24_ND2_MM_0P75 U1585 ( .A1(\sh_sync_inst/pulse_pack_count [3]), 
        .A2(n1339), .X(n1102) );
  UDB116SVT24_ND2B_0P75 U1586 ( .A(n1102), .B(
        \sh_sync_inst/pulse_pack_count [4]), .X(n1075) );
  UDB116SVT24_ND2B_0P75 U1587 ( .A(n850), .B(
        \sh_sync_inst/pulse_pack_count [5]), .X(n1074) );
  UDB116SVT24_NR2_0P75 U1588 ( .A1(\sh_sync_inst/pulse_pack_count [5]), .A2(
        n850), .X(n1336) );
  UDB116SVT24_INV_0P75 U1589 ( .A(n1075), .X(n1335) );
  UDB116SVT24_OAI21_0P75 U1590 ( .A1(n1335), .A2(n850), .B(n1100), .X(n1337)
         );
  UDB116SVT24_OAI21_0P75 U1591 ( .A1(n1336), .A2(n1337), .B(
        \sh_sync_inst/pulse_pack_count [6]), .X(n1073) );
  UDB116SVT24_OAI31_1 U1592 ( .A1(\sh_sync_inst/pulse_pack_count [6]), .A2(
        n1075), .A3(n1074), .B(n1073), .X(\sh_sync_inst/n195 ) );
  UDB116SVT24_ND2_MM_0P75 U1593 ( .A1(n673), .A2(
        \sh_sync_inst/pulse_pack_count [0]), .X(n1077) );
  UDB116SVT24_NR2_0P75 U1594 ( .A1(\sh_sync_inst/pulse_pack_count [1]), .A2(
        n848), .X(n1341) );
  UDB116SVT24_OAI21_0P75 U1595 ( .A1(n672), .A2(n848), .B(n1100), .X(n1342) );
  UDB116SVT24_OAI21_0P75 U1596 ( .A1(n1341), .A2(n1342), .B(
        \sh_sync_inst/pulse_pack_count [2]), .X(n1076) );
  UDB116SVT24_OAI31_1 U1597 ( .A1(\sh_sync_inst/pulse_pack_count [2]), .A2(
        n848), .A3(n1077), .B(n1076), .X(\sh_sync_inst/n199 ) );
  UDB116SVT24_INV_0P75 U1598 ( .A(n1078), .X(n1085) );
  UDB116SVT24_INV_0P75 U1599 ( .A(n1079), .X(n1086) );
  UDB116SVT24_NR2_0P75 U1600 ( .A1(n1081), .A2(n1080), .X(n1087) );
  UDB116SVT24_ND2_MM_0P75 U1601 ( .A1(n1086), .A2(n1087), .X(n1161) );
  UDB116SVT24_AOI21B_0P75 U1602 ( .A1(n1085), .A2(n1084), .B(n1161), .X(n1083)
         );
  UDB116SVT24_OAOI211_0P75 U1603 ( .A1(n1085), .A2(n1084), .B(n1083), .C(n1082), .X(n1156) );
  UDB116SVT24_OR2_0P75 U1604 ( .A1(n1086), .A2(n1087), .X(n1160) );
  UDB116SVT24_OAI21B_1 U1605 ( .A1(n1088), .A2(\sh_sync_inst/interval_sum [12]), .B(n1087), .X(n1154) );
  UDB116SVT24_AN3B_0P75 U1606 ( .B1(n1160), .B2(
        \sh_sync_inst/interval_sum [11]), .A(n1154), .X(n1157) );
  UDB116SVT24_NR2_0P75 U1607 ( .A1(n1156), .A2(n1157), .X(n1153) );
  UDB116SVT24_AOI22_1 U1608 ( .A1(ext_count_val_RX[11]), .A2(n853), .B1(
        \sh_sync_inst/avg_interval [11]), .B2(n799), .X(n1089) );
  UDB116SVT24_OAI21_0P75 U1609 ( .A1(n1153), .A2(n842), .B(n1089), .X(
        \sh_sync_inst/n174 ) );
  UDB116SVT24_OAI22_0P75 U1610 ( .A1(\sh_sync_inst/rfin_edge ), .A2(n1406), 
        .B1(n1091), .B2(n1090), .X(n1095) );
  UDB116SVT24_INV_0P75 U1611 ( .A(n1092), .X(n1260) );
  UDB116SVT24_AOI21_0P75 U1612 ( .A1(n1260), .A2(n1094), .B(n1093), .X(n1384)
         );
  UDB116SVT24_INV_0P75 U1613 ( .A(n1384), .X(n1128) );
  UDB116SVT24_AOAI211_0P75 U1614 ( .A1(n1265), .A2(n1126), .B(n1095), .C(n1128), .X(n1344) );
  UDB116SVT24_OAI21_0P75 U1615 ( .A1(n763), .A2(n1344), .B(n730), .X(n1108) );
  UDB116SVT24_NR2_0P75 U1616 ( .A1(\sh_sync_inst/counter [1]), .A2(n1344), .X(
        n1109) );
  UDB116SVT24_AOI22_1 U1617 ( .A1(n774), .A2(n1108), .B1(
        \sh_sync_inst/counter [0]), .B2(n1109), .X(n1096) );
  UDB116SVT24_ND2_MM_0P75 U1618 ( .A1(n1096), .A2(n677), .X(
        \sh_sync_inst/n213 ) );
  UDB116SVT24_NR2B_0P75 U1619 ( .A(n1097), .B(n1124), .X(n1351) );
  UDB116SVT24_ND2_MM_0P75 U1620 ( .A1(n770), .A2(n1351), .X(n1104) );
  UDB116SVT24_NR2_0P75 U1621 ( .A1(n1098), .A2(n1104), .X(n1112) );
  UDB116SVT24_OAI21_0P75 U1622 ( .A1(n1112), .A2(n810), .B(n730), .X(n1113) );
  UDB116SVT24_NR2_0P75 U1623 ( .A1(n776), .A2(n810), .X(n1114) );
  UDB116SVT24_AOI22_1 U1624 ( .A1(n777), .A2(n1113), .B1(n1112), .B2(n1114), 
        .X(n1099) );
  UDB116SVT24_ND2_MM_0P75 U1625 ( .A1(n1099), .A2(n677), .X(
        \sh_sync_inst/n207 ) );
  UDB116SVT24_NR2_0P75 U1626 ( .A1(\sh_sync_inst/pulse_pack_count [3]), .A2(
        n849), .X(n1338) );
  UDB116SVT24_OAI21_0P75 U1627 ( .A1(n1339), .A2(n849), .B(n1100), .X(n1340)
         );
  UDB116SVT24_OAI21_0P75 U1628 ( .A1(n1338), .A2(n1340), .B(
        \sh_sync_inst/pulse_pack_count [4]), .X(n1101) );
  UDB116SVT24_OAI31_1 U1629 ( .A1(\sh_sync_inst/pulse_pack_count [4]), .A2(
        n849), .A3(n1102), .B(n1101), .X(\sh_sync_inst/n197 ) );
  UDB116SVT24_OAI21_0P75 U1630 ( .A1(n1351), .A2(n809), .B(n1128), .X(n1352)
         );
  UDB116SVT24_NR2_0P75 U1631 ( .A1(\sh_sync_inst/counter [5]), .A2(n808), .X(
        n1350) );
  UDB116SVT24_OAI21_0P75 U1632 ( .A1(n1352), .A2(n1350), .B(
        \sh_sync_inst/counter [6]), .X(n1103) );
  UDB116SVT24_OAI31_1 U1633 ( .A1(n714), .A2(n810), .A3(n1104), .B(n1103), .X(
        \sh_sync_inst/n208 ) );
  UDB116SVT24_ND2_MM_0P75 U1634 ( .A1(n731), .A2(n765), .X(n1105) );
  UDB116SVT24_OAI211_0P75 U1635 ( .A1(n1128), .A2(n765), .B1(n1120), .B2(n1105), .X(\sh_sync_inst/n214 ) );
  UDB116SVT24_AOI21_0P75 U1636 ( .A1(n732), .A2(n1121), .B(n1384), .X(n1107)
         );
  UDB116SVT24_ND2_MM_0P75 U1637 ( .A1(n731), .A2(n728), .X(n1106) );
  UDB116SVT24_OAI22_0P75 U1638 ( .A1(n1107), .A2(n1122), .B1(n1121), .B2(n1106), .X(\sh_sync_inst/n211 ) );
  UDB116SVT24_ND2_MM_0P75 U1639 ( .A1(n773), .A2(n739), .X(n1111) );
  UDB116SVT24_OAOI211_0P75 U1640 ( .A1(n1109), .A2(n1108), .B(n741), .C(n1345), 
        .X(n1110) );
  UDB116SVT24_OAI31_1 U1641 ( .A1(n742), .A2(n1111), .A3(n808), .B(n1110), .X(
        \sh_sync_inst/n212 ) );
  UDB116SVT24_ND2_MM_0P75 U1642 ( .A1(\sh_sync_inst/counter [7]), .A2(n1112), 
        .X(n1116) );
  UDB116SVT24_OAOI211_0P75 U1643 ( .A1(n1114), .A2(n1113), .B(n744), .C(n1345), 
        .X(n1115) );
  UDB116SVT24_OAI31_1 U1644 ( .A1(n745), .A2(n1344), .A3(n1116), .B(n1115), 
        .X(\sh_sync_inst/n206 ) );
  UDB116SVT24_NR2_0P75 U1645 ( .A1(n1117), .A2(n1116), .X(n1383) );
  UDB116SVT24_ND2_MM_0P75 U1646 ( .A1(n731), .A2(n1383), .X(n1129) );
  UDB116SVT24_OAOI211_0P75 U1647 ( .A1(n809), .A2(n1383), .B(n730), .C(n746), 
        .X(n1118) );
  UDB116SVT24_INV_0P75 U1648 ( .A(n1118), .X(n1119) );
  UDB116SVT24_OAI211_0P75 U1649 ( .A1(n748), .A2(n1129), .B1(n1120), .B2(n1119), .X(\sh_sync_inst/n205 ) );
  UDB116SVT24_OAOI211_0P75 U1650 ( .A1(n1122), .A2(n1121), .B(n731), .C(n1384), 
        .X(n1125) );
  UDB116SVT24_OAI22_0P75 U1651 ( .A1(n1125), .A2(n709), .B1(n1123), .B2(n809), 
        .X(\sh_sync_inst/n210 ) );
  UDB116SVT24_AOAI211_0P75 U1652 ( .A1(n1265), .A2(n1260), .B(n1264), .C(n1378), .X(n1369) );
  UDB116SVT24_ND3_0P75 U1653 ( .A1(n1126), .A2(n1260), .A3(n1369), .X(n1370)
         );
  UDB116SVT24_AOI22_1 U1654 ( .A1(\sh_sync_inst/pulse_gen_count [0]), .A2(n660), .B1(n831), .B2(n1127), .X(\sh_sync_inst/n241 ) );
  UDB116SVT24_AOAI211_0P75 U1655 ( .A1(n748), .A2(n1383), .B(n808), .C(n730), 
        .X(n1348) );
  UDB116SVT24_AOI21_0P75 U1656 ( .A1(n732), .A2(n1381), .B(n1348), .X(n1343)
         );
  UDB116SVT24_ND2_MM_0P75 U1657 ( .A1(n839), .A2(n710), .X(n1131) );
  UDB116SVT24_NR2_0P75 U1658 ( .A1(n711), .A2(n1129), .X(n1349) );
  UDB116SVT24_INV_0P75 U1659 ( .A(n1349), .X(n1130) );
  UDB116SVT24_OAI22_0P75 U1660 ( .A1(n1343), .A2(n710), .B1(n1131), .B2(n1130), 
        .X(\sh_sync_inst/n203 ) );
  UDB116SVT24_INV_0P75 U1661 ( .A(\sh_sync_inst/pulse_gen_count [3]), .X(n1368) );
  UDB116SVT24_ND2_MM_0P75 U1662 ( .A1(\sh_sync_inst/pulse_gen_count [1]), .A2(
        n664), .X(n1134) );
  UDB116SVT24_ND2B_0P75 U1663 ( .A(n1134), .B(
        \sh_sync_inst/pulse_gen_count [2]), .X(n1366) );
  UDB116SVT24_AO21B_0P75 U1664 ( .A1(n1369), .A2(n832), .B(
        \sh_sync_inst/pulse_gen_count [4]), .X(n1132) );
  UDB116SVT24_OAI31_1 U1665 ( .A1(n832), .A2(n1368), .A3(n1366), .B(n1132), 
        .X(\sh_sync_inst/n239 ) );
  UDB116SVT24_NR2_0P75 U1666 ( .A1(\sh_sync_inst/pulse_gen_count [1]), .A2(
        n832), .X(n1364) );
  UDB116SVT24_OAI21_0P75 U1667 ( .A1(\sh_sync_inst/pulse_gen_count [0]), .A2(
        n831), .B(n1369), .X(n1365) );
  UDB116SVT24_OAI21_0P75 U1668 ( .A1(n1364), .A2(n1365), .B(
        \sh_sync_inst/pulse_gen_count [2]), .X(n1133) );
  UDB116SVT24_OAI31_1 U1669 ( .A1(\sh_sync_inst/pulse_gen_count [2]), .A2(n832), .A3(n1134), .B(n1133), .X(\sh_sync_inst/n237 ) );
  UDB116SVT24_OR2_0P75 U1670 ( .A1(n1145), .A2(n1135), .X(n1136) );
  UDB116SVT24_BUF_1 U1671 ( .A(n1136), .X(n1142) );
  UDB116SVT24_INV_0P75 U1672 ( .A(n1142), .X(n1149) );
  UDB116SVT24_BUF_1 U1673 ( .A(n1136), .X(n1486) );
  UDB116SVT24_BUF_1 U1674 ( .A(n1486), .X(n1487) );
  UDB116SVT24_INV_0P75 U1675 ( .A(n1487), .X(n1140) );
  UDB116SVT24_OA2BB2_0P75 U1676 ( .A1(n1149), .A2(n723), .B1(arthur[6]), .B2(
        n1140), .X(\CONFIG_inst/n109 ) );
  UDB116SVT24_INV_0P75 U1677 ( .A(n1142), .X(n1151) );
  UDB116SVT24_OA2BB2_0P75 U1678 ( .A1(n1151), .A2(n1469), .B1(arthur[5]), .B2(
        n1140), .X(\CONFIG_inst/n108 ) );
  UDB116SVT24_INV_0P75 U1679 ( .A(n1142), .X(n1147) );
  UDB116SVT24_INV_0P75 U1680 ( .A(n1487), .X(n1137) );
  UDB116SVT24_OA2BB2_0P75 U1681 ( .A1(n1147), .A2(n1138), .B1(arthur[9]), .B2(
        n1137), .X(\CONFIG_inst/n84 ) );
  UDB116SVT24_OA2BB2_0P75 U1682 ( .A1(n1151), .A2(n1139), .B1(arthur[8]), .B2(
        n1140), .X(\CONFIG_inst/n98 ) );
  UDB116SVT24_OA2BB2_0P75 U1683 ( .A1(n1149), .A2(n721), .B1(arthur[7]), .B2(
        n1140), .X(\CONFIG_inst/n110 ) );
  UDB116SVT24_INV_0P75 U1684 ( .A(n1486), .X(n1150) );
  UDB116SVT24_OA2BB2_0P75 U1685 ( .A1(n1147), .A2(n1141), .B1(arthur[11]), 
        .B2(n1150), .X(\CONFIG_inst/n88 ) );
  UDB116SVT24_INV_0P75 U1686 ( .A(n1487), .X(n1148) );
  UDB116SVT24_OA2BB2_0P75 U1687 ( .A1(n1151), .A2(n761), .B1(arthur[0]), .B2(
        n1148), .X(\CONFIG_inst/n111 ) );
  UDB116SVT24_INV_0P75 U1688 ( .A(n1142), .X(n1488) );
  UDB116SVT24_OA2BB2_0P75 U1689 ( .A1(n1488), .A2(n722), .B1(arthur[4]), .B2(
        n1148), .X(\CONFIG_inst/n107 ) );
  UDB116SVT24_OA2BB2_0P75 U1690 ( .A1(n1147), .A2(n1143), .B1(arthur[10]), 
        .B2(n1148), .X(\CONFIG_inst/n86 ) );
  UDB116SVT24_OA2BB2_0P75 U1691 ( .A1(n751), .A2(n758), .B1(osc_freq[3]), .B2(
        n751), .X(\CONFIG_inst/n102 ) );
  UDB116SVT24_OA2BB2_0P75 U1692 ( .A1(n1147), .A2(n1146), .B1(arthur[13]), 
        .B2(n1150), .X(\CONFIG_inst/n92 ) );
  UDB116SVT24_OA2BB2_0P75 U1693 ( .A1(n1149), .A2(n759), .B1(arthur[3]), .B2(
        n1148), .X(\CONFIG_inst/n106 ) );
  UDB116SVT24_OA2BB2_0P75 U1694 ( .A1(n752), .A2(n787), .B1(osc_freq[2]), .B2(
        n752), .X(\CONFIG_inst/n101 ) );
  UDB116SVT24_OA2BB2_0P75 U1695 ( .A1(n1149), .A2(n785), .B1(arthur[1]), .B2(
        n1150), .X(\CONFIG_inst/n104 ) );
  UDB116SVT24_OA2BB2_0P75 U1696 ( .A1(n1151), .A2(n1474), .B1(arthur[2]), .B2(
        n1150), .X(\CONFIG_inst/n105 ) );
  UDB116SVT24_OA2BB2_0P75 U1697 ( .A1(n751), .A2(n786), .B1(osc_freq[1]), .B2(
        n751), .X(\CONFIG_inst/n100 ) );
  UDB116SVT24_OA2BB2_0P75 U1698 ( .A1(n752), .A2(n762), .B1(osc_freq[0]), .B2(
        n752), .X(\CONFIG_inst/n103 ) );
  UDB116SVT24_ND2B_0P75 U1699 ( .A(n1153), .B(\sh_sync_inst/interval_sum [11]), 
        .X(n1155) );
  UDB116SVT24_NR2_0P75 U1700 ( .A1(n1154), .A2(n1155), .X(n1159) );
  UDB116SVT24_INV_0P75 U1701 ( .A(n1159), .X(n1164) );
  UDB116SVT24_ND2_MM_0P75 U1702 ( .A1(n1154), .A2(n1155), .X(n1163) );
  UDB116SVT24_OAI21_0P75 U1703 ( .A1(\sh_sync_inst/interval_sum [11]), .A2(
        n1156), .B(n1155), .X(n1168) );
  UDB116SVT24_INV_0P75 U1704 ( .A(n1157), .X(n1158) );
  UDB116SVT24_AOAI211_0P75 U1705 ( .A1(n1161), .A2(n1160), .B(n1159), .C(n1158), .X(n1165) );
  UDB116SVT24_INV_0P75 U1706 ( .A(\sh_sync_inst/interval_sum [10]), .X(n1166)
         );
  UDB116SVT24_OR3B_0P75 U1707 ( .B1(n1166), .B2(n1168), .A(n1163), .X(n1162)
         );
  UDB116SVT24_ND2_MM_0P75 U1708 ( .A1(n1165), .A2(n1162), .X(n1327) );
  UDB116SVT24_ND2_MM_0P75 U1709 ( .A1(\sh_sync_inst/interval_sum [10]), .A2(
        n1327), .X(n1167) );
  UDB116SVT24_NR2_0P75 U1710 ( .A1(n1168), .A2(n1167), .X(n1174) );
  UDB116SVT24_AOAI211_0P75 U1711 ( .A1(n1164), .A2(n1163), .B(n1174), .C(n1162), .X(n1172) );
  UDB116SVT24_INV_0P75 U1712 ( .A(\sh_sync_inst/interval_sum [9]), .X(n1173)
         );
  UDB116SVT24_AOI21B_0P75 U1713 ( .A1(n1166), .A2(n1165), .B(n1167), .X(n1176)
         );
  UDB116SVT24_ND2_MM_0P75 U1714 ( .A1(n1168), .A2(n1167), .X(n1179) );
  UDB116SVT24_ND2_MM_0P75 U1715 ( .A1(n1176), .A2(n1179), .X(n1171) );
  UDB116SVT24_OR2_0P75 U1716 ( .A1(n1173), .A2(n1171), .X(n1177) );
  UDB116SVT24_AOI22_1 U1717 ( .A1(ext_count_val_RX[9]), .A2(n852), .B1(
        \sh_sync_inst/avg_interval [9]), .B2(n799), .X(n1169) );
  UDB116SVT24_AOAI211_0P75 U1718 ( .A1(n1172), .A2(n1177), .B(n843), .C(n1169), 
        .X(\sh_sync_inst/n172 ) );
  UDB116SVT24_INV_0P75 U1719 ( .A(\intadd_0/n1 ), .X(n1170) );
  UDB116SVT24_AOI21_0P75 U1720 ( .A1(n856), .A2(n1170), .B(n1390), .X(n1363)
         );
  UDB116SVT24_INV_0P75 U1721 ( .A(n1353), .X(n1389) );
  UDB116SVT24_ND2_MM_0P75 U1722 ( .A1(n816), .A2(n715), .X(n1362) );
  UDB116SVT24_OAI22_0P75 U1723 ( .A1(n1363), .A2(n715), .B1(n1362), .B2(n1170), 
        .X(\sh_sync_inst/n230 ) );
  UDB116SVT24_INV_0P75 U1724 ( .A(\sh_sync_inst/interval_sum [8]), .X(n1193)
         );
  UDB116SVT24_AOI21_0P75 U1725 ( .A1(n1171), .A2(n1172), .B(n1173), .X(n1175)
         );
  UDB116SVT24_AOI21_0P75 U1726 ( .A1(n1173), .A2(n1172), .B(n1175), .X(n1195)
         );
  UDB116SVT24_INV_0P75 U1727 ( .A(n1195), .X(n1180) );
  UDB116SVT24_NR2_0P75 U1728 ( .A1(n1176), .A2(n1175), .X(n1191) );
  UDB116SVT24_INV_0P75 U1729 ( .A(n1174), .X(n1178) );
  UDB116SVT24_AN2_1 U1730 ( .A1(n1176), .A2(n1175), .X(n1189) );
  UDB116SVT24_AOAI211_0P75 U1731 ( .A1(n1179), .A2(n1178), .B(n1189), .C(n1177), .X(n1192) );
  UDB116SVT24_OA31_1 U1732 ( .A1(n1193), .A2(n1180), .A3(n1191), .B(n1192), 
        .X(n1188) );
  UDB116SVT24_AOI22_1 U1733 ( .A1(ext_count_val_RX[8]), .A2(n854), .B1(
        \sh_sync_inst/avg_interval [8]), .B2(n1255), .X(n1181) );
  UDB116SVT24_OAI21_0P75 U1734 ( .A1(n1188), .A2(n843), .B(n1181), .X(
        \sh_sync_inst/n171 ) );
  UDB116SVT24_ND3_0P75 U1735 ( .A1(n716), .A2(n1389), .A3(\intadd_0/n1 ), .X(
        n1361) );
  UDB116SVT24_AOAI211_0P75 U1736 ( .A1(\sh_sync_inst/interval_sum [14]), .A2(
        \sh_sync_inst/interval_sum [15]), .B(n725), .C(n1363), .X(n1183) );
  UDB116SVT24_ND2_MM_0P75 U1737 ( .A1(n837), .A2(n1183), .X(n1182) );
  UDB116SVT24_OAI31_1 U1738 ( .A1(n1361), .A2(n1360), .A3(n838), .B(n1182), 
        .X(\sh_sync_inst/n232 ) );
  UDB116SVT24_OA21B_0P75 U1739 ( .A1(n1353), .A2(n838), .B(n1183), .X(n1187)
         );
  UDB116SVT24_INV_0P75 U1740 ( .A(n1184), .X(n1185) );
  UDB116SVT24_OAI22_0P75 U1741 ( .A1(n1187), .A2(n1186), .B1(n1185), .B2(n1361), .X(\sh_sync_inst/n233 ) );
  UDB116SVT24_AOI22_1 U1742 ( .A1(ext_count_val_RX[7]), .A2(n852), .B1(
        \sh_sync_inst/avg_interval [7]), .B2(n1255), .X(n1197) );
  UDB116SVT24_NR2_0P75 U1743 ( .A1(n1188), .A2(n1193), .X(n1194) );
  UDB116SVT24_ND2_MM_0P75 U1744 ( .A1(n1195), .A2(n1194), .X(n1204) );
  UDB116SVT24_OAI21_0P75 U1745 ( .A1(n1191), .A2(n1189), .B(n1204), .X(n1190)
         );
  UDB116SVT24_OAI21_0P75 U1746 ( .A1(n1191), .A2(n1204), .B(n1190), .X(n1199)
         );
  UDB116SVT24_INV_0P75 U1747 ( .A(\sh_sync_inst/interval_sum [7]), .X(n1200)
         );
  UDB116SVT24_AOI21_0P75 U1748 ( .A1(n1193), .A2(n1192), .B(n1194), .X(n1202)
         );
  UDB116SVT24_OR2_0P75 U1749 ( .A1(n1195), .A2(n1194), .X(n1205) );
  UDB116SVT24_ND2_MM_0P75 U1750 ( .A1(n1202), .A2(n1205), .X(n1198) );
  UDB116SVT24_OR2_0P75 U1751 ( .A1(n1200), .A2(n1198), .X(n1203) );
  UDB116SVT24_AO21_0P75 U1752 ( .A1(n1199), .A2(n1203), .B(n841), .X(n1196) );
  UDB116SVT24_ND2_MM_0P75 U1753 ( .A1(n1197), .A2(n1196), .X(
        \sh_sync_inst/n170 ) );
  UDB116SVT24_AOI21_0P75 U1754 ( .A1(n1198), .A2(n1199), .B(n1200), .X(n1201)
         );
  UDB116SVT24_AN2_1 U1755 ( .A1(n1202), .A2(n1201), .X(n1208) );
  UDB116SVT24_AO21_0P75 U1756 ( .A1(n1200), .A2(n1199), .B(n1201), .X(n1209)
         );
  UDB116SVT24_NR2_0P75 U1757 ( .A1(n1202), .A2(n1201), .X(n1207) );
  UDB116SVT24_INV_0P75 U1758 ( .A(\sh_sync_inst/interval_sum [6]), .X(n1212)
         );
  UDB116SVT24_AOAI211_0P75 U1759 ( .A1(n1205), .A2(n1204), .B(n1208), .C(n1203), .X(n1211) );
  UDB116SVT24_OAI31_1 U1760 ( .A1(n1207), .A2(n1212), .A3(n1209), .B(n1211), 
        .X(n1324) );
  UDB116SVT24_ND2_MM_0P75 U1761 ( .A1(\sh_sync_inst/interval_sum [6]), .A2(
        n1324), .X(n1210) );
  UDB116SVT24_NR2_0P75 U1762 ( .A1(n1209), .A2(n1210), .X(n1221) );
  UDB116SVT24_ND2_MM_0P75 U1763 ( .A1(n1221), .A2(n1207), .X(n1206) );
  UDB116SVT24_OAI31_1 U1764 ( .A1(n1208), .A2(n1221), .A3(n1207), .B(n1206), 
        .X(n1218) );
  UDB116SVT24_INV_0P75 U1765 ( .A(n1218), .X(n1214) );
  UDB116SVT24_AN2_1 U1766 ( .A1(n1209), .A2(n1210), .X(n1222) );
  UDB116SVT24_AO21B_0P75 U1767 ( .A1(n1212), .A2(n1211), .B(n1210), .X(n1216)
         );
  UDB116SVT24_NR2_0P75 U1768 ( .A1(n1222), .A2(n1216), .X(n1215) );
  UDB116SVT24_ND2_MM_0P75 U1769 ( .A1(n669), .A2(n1215), .X(n1219) );
  UDB116SVT24_AOI22_1 U1770 ( .A1(ext_count_val_RX[5]), .A2(n853), .B1(
        \sh_sync_inst/avg_interval [5]), .B2(n797), .X(n1213) );
  UDB116SVT24_AOAI211_0P75 U1771 ( .A1(n1214), .A2(n1219), .B(n841), .C(n1213), 
        .X(\sh_sync_inst/n168 ) );
  UDB116SVT24_OAI21_0P75 U1772 ( .A1(n1215), .A2(n1218), .B(
        \sh_sync_inst/interval_sum [5]), .X(n1217) );
  UDB116SVT24_ND2_MM_0P75 U1773 ( .A1(n1216), .A2(n1217), .X(n1226) );
  UDB116SVT24_OR2_0P75 U1774 ( .A1(n1216), .A2(n1217), .X(n1225) );
  UDB116SVT24_OAI21_0P75 U1775 ( .A1(\sh_sync_inst/interval_sum [5]), .A2(
        n1218), .B(n1217), .X(n1228) );
  UDB116SVT24_INV_0P75 U1776 ( .A(n1219), .X(n1220) );
  UDB116SVT24_OAOI211_0P75 U1777 ( .A1(n1222), .A2(n1221), .B(n1225), .C(n1220), .X(n1230) );
  UDB116SVT24_ND3B_0P75 U1778 ( .A(n1228), .B1(\sh_sync_inst/interval_sum [4]), 
        .B2(n1226), .X(n1223) );
  UDB116SVT24_ND2B_0P75 U1779 ( .A(n1230), .B(n1223), .X(n1321) );
  UDB116SVT24_ND2_MM_0P75 U1780 ( .A1(\sh_sync_inst/interval_sum [4]), .A2(
        n1321), .X(n1229) );
  UDB116SVT24_NR2_0P75 U1781 ( .A1(n1228), .A2(n1229), .X(n1224) );
  UDB116SVT24_AOAI211_0P75 U1782 ( .A1(n1226), .A2(n1225), .B(n1224), .C(n1223), .X(n1227) );
  UDB116SVT24_INV_0P75 U1783 ( .A(n1227), .X(n1235) );
  UDB116SVT24_EN2_V2_0P75 U1784 ( .A1(n1228), .A2(n1229), .X(n1238) );
  UDB116SVT24_OA21_V2_1 U1785 ( .A1(n670), .A2(n1230), .B(n1229), .X(n1234) );
  UDB116SVT24_ND2_MM_0P75 U1786 ( .A1(n705), .A2(n1234), .X(n1233) );
  UDB116SVT24_NR2_0P75 U1787 ( .A1(n1238), .A2(n1233), .X(n1236) );
  UDB116SVT24_NR2_0P75 U1788 ( .A1(n1235), .A2(n1236), .X(n1232) );
  UDB116SVT24_AOI22_1 U1789 ( .A1(ext_count_val_RX[3]), .A2(n851), .B1(
        \sh_sync_inst/avg_interval [3]), .B2(n797), .X(n1231) );
  UDB116SVT24_OAI21_0P75 U1790 ( .A1(n1232), .A2(n841), .B(n1231), .X(
        \sh_sync_inst/n166 ) );
  UDB116SVT24_OAI22_0P75 U1791 ( .A1(n704), .A2(n1232), .B1(n1235), .B2(n705), 
        .X(n1248) );
  UDB116SVT24_OR2_0P75 U1792 ( .A1(n1233), .A2(n1232), .X(n1237) );
  UDB116SVT24_AOAI211_0P75 U1793 ( .A1(n1235), .A2(n705), .B(n1234), .C(n1237), 
        .X(n1244) );
  UDB116SVT24_NR2_0P75 U1794 ( .A1(n1248), .A2(n1244), .X(n1241) );
  UDB116SVT24_AN2_1 U1795 ( .A1(\sh_sync_inst/interval_sum [2]), .A2(n1241), 
        .X(n1242) );
  UDB116SVT24_AOI21_0P75 U1796 ( .A1(n1238), .A2(n1237), .B(n1236), .X(n1245)
         );
  UDB116SVT24_NR2_0P75 U1797 ( .A1(n1242), .A2(n1245), .X(n1240) );
  UDB116SVT24_AOI22_1 U1798 ( .A1(ext_count_val_RX[2]), .A2(n854), .B1(
        \sh_sync_inst/avg_interval [2]), .B2(n798), .X(n1239) );
  UDB116SVT24_OAI21_0P75 U1799 ( .A1(n842), .A2(n1240), .B(n1239), .X(
        \sh_sync_inst/n165 ) );
  UDB116SVT24_OAI21_0P75 U1800 ( .A1(n1241), .A2(n1245), .B(
        \sh_sync_inst/interval_sum [2]), .X(n1253) );
  UDB116SVT24_OR2_0P75 U1801 ( .A1(n1253), .A2(n1248), .X(n1243) );
  UDB116SVT24_AOI21_0P75 U1802 ( .A1(n1244), .A2(n1243), .B(n1242), .X(n1249)
         );
  UDB116SVT24_INV_0P75 U1803 ( .A(\sh_sync_inst/interval_sum [1]), .X(n1359)
         );
  UDB116SVT24_OAI21_0P75 U1804 ( .A1(n671), .A2(n1245), .B(n1253), .X(n1251)
         );
  UDB116SVT24_NR3_0P75 U1805 ( .A1(n1248), .A2(n1359), .A3(n1251), .X(n1258)
         );
  UDB116SVT24_NR2_0P75 U1806 ( .A1(n1249), .A2(n1258), .X(n1247) );
  UDB116SVT24_AOI22_1 U1807 ( .A1(ext_count_val_RX[1]), .A2(n851), .B1(
        \sh_sync_inst/avg_interval [1]), .B2(n799), .X(n1246) );
  UDB116SVT24_OAI21_0P75 U1808 ( .A1(n843), .A2(n1247), .B(n1246), .X(
        \sh_sync_inst/n164 ) );
  UDB116SVT24_INV_0P75 U1809 ( .A(n1248), .X(n1254) );
  UDB116SVT24_MAJI3_1 U1810 ( .A1(\sh_sync_inst/interval_sum [0]), .A2(
        \sh_sync_inst/interval_sum [1]), .A3(n1249), .X(n1250) );
  UDB116SVT24_OAI22_0P75 U1811 ( .A1(n1254), .A2(n1253), .B1(n1251), .B2(n1250), .X(n1252) );
  UDB116SVT24_AOI21_0P75 U1812 ( .A1(n1254), .A2(n1253), .B(n1252), .X(n1259)
         );
  UDB116SVT24_AOI22_1 U1813 ( .A1(n851), .A2(ext_count_val_RX[0]), .B1(
        \sh_sync_inst/avg_interval [0]), .B2(n799), .X(n1256) );
  UDB116SVT24_OAI31_1 U1814 ( .A1(n1259), .A2(n1258), .A3(n842), .B(n1256), 
        .X(\sh_sync_inst/n177 ) );
  UDB116SVT24_AOI31_0P75 U1815 ( .A1(\sh_sync_inst/state [0]), .A2(n701), .A3(
        n1260), .B(n1380), .X(n1262) );
  UDB116SVT24_ND2_MM_0P75 U1816 ( .A1(n1262), .A2(n1261), .X(n1267) );
  UDB116SVT24_OAI21_0P75 U1817 ( .A1(n1265), .A2(n1264), .B(n848), .X(n1266)
         );
  UDB116SVT24_AO2BB2_0P75 U1818 ( .A1(n1267), .A2(n826), .B1(n1267), .B2(n1266), .X(\sh_sync_inst/n192 ) );
  UDB116SVT24_ND2_MM_0P75 U1819 ( .A1(n1268), .A2(n827), .X(n1281) );
  UDB116SVT24_INV_0P75 U1820 ( .A(TX_EN), .X(n1463) );
  UDB116SVT24_AOI22_1 U1821 ( .A1(n1270), .A2(n1281), .B1(n1463), .B2(n1269), 
        .X(n635) );
  UDB116SVT24_BUF_1 U1822 ( .A(rst), .X(n1591) );
  UDB116SVT24_AOI21_0P75 U1823 ( .A1(\fsm_sync_inst/sh_en_prev ), .A2(n826), 
        .B(FSM_RST), .X(n1311) );
  UDB116SVT24_INV_0P75 U1824 ( .A(n1311), .X(n1318) );
  UDB116SVT24_OAI21_0P75 U1825 ( .A1(rfin), .A2(\fsm_sync_inst/state_pos ), 
        .B(n1591), .X(n1271) );
  UDB116SVT24_AOI21_0P75 U1826 ( .A1(\fsm_sync_inst/state_pos ), .A2(n1318), 
        .B(n1271), .X(\fsm_sync_inst/N10 ) );
  UDB116SVT24_OA2BB2_0P75 U1827 ( .A1(n1521), .A2(n828), .B1(pkt_rec_prev), 
        .B2(n1521), .X(n655) );
  UDB116SVT24_NR2_0P75 U1828 ( .A1(PKT_RST), .A2(n717), .X(n1293) );
  UDB116SVT24_ND4_0P75 U1829 ( .A1(\shift_buf_inst/sync [2]), .A2(
        \shift_buf_inst/sync [3]), .A3(\shift_buf_inst/sync [1]), .A4(
        \shift_buf_inst/sync [0]), .X(n1272) );
  UDB116SVT24_INV_0P75 U1830 ( .A(n1293), .X(n1292) );
  UDB116SVT24_AOI22_1 U1831 ( .A1(n1293), .A2(n1272), .B1(n828), .B2(n712), 
        .X(\shift_buf_inst/n29 ) );
  UDB116SVT24_NR2_0P75 U1832 ( .A1(pkt_rec_prev), .A2(n828), .X(n1497) );
  UDB116SVT24_NR2_0P75 U1833 ( .A1(n1508), .A2(n1502), .X(n1519) );
  UDB116SVT24_INV_0P75 U1834 ( .A(n1519), .X(n1278) );
  UDB116SVT24_NR2_0P75 U1835 ( .A1(rx_state[2]), .A2(n1278), .X(n1522) );
  UDB116SVT24_OAOI211_0P75 U1836 ( .A1(n1497), .A2(n1508), .B(n1518), .C(n1522), .X(n1506) );
  UDB116SVT24_OR2_0P75 U1837 ( .A1(counter[2]), .A2(counter[3]), .X(n1516) );
  UDB116SVT24_OAI31_1 U1838 ( .A1(counter[1]), .A2(counter[0]), .A3(n1516), 
        .B(CS_sync), .X(n1273) );
  UDB116SVT24_AOI22_1 U1839 ( .A1(n1519), .A2(n1273), .B1(n768), .B2(n1514), 
        .X(n1274) );
  UDB116SVT24_AOI31_0P75 U1840 ( .A1(n791), .A2(n1506), .A3(n1274), .B(n695), 
        .X(n1503) );
  UDB116SVT24_OA2BB2_0P75 U1841 ( .A1(n697), .A2(n1275), .B1(rx_state[0]), 
        .B2(n1503), .X(n649) );
  UDB116SVT24_OAI211_0P75 U1842 ( .A1(n1276), .A2(n1279), .B1(n790), .B2(n1503), .X(n1277) );
  UDB116SVT24_OAI22_0P75 U1843 ( .A1(n697), .A2(n1279), .B1(n1278), .B2(n1277), 
        .X(n647) );
  UDB116SVT24_NR3_0P75 U1844 ( .A1(n790), .A2(n699), .A3(n695), .X(n1283) );
  UDB116SVT24_INV_0P75 U1845 ( .A(counter3[0]), .X(n1280) );
  UDB116SVT24_NR2_0P75 U1846 ( .A1(n1280), .A2(n659), .X(n1284) );
  UDB116SVT24_OAOI211_0P75 U1847 ( .A1(n659), .A2(n1281), .B(n1280), .C(n1284), 
        .X(n652) );
  UDB116SVT24_ND2_MM_0P75 U1848 ( .A1(n1283), .A2(n1282), .X(n1289) );
  UDB116SVT24_INV_0P75 U1849 ( .A(n1289), .X(n1286) );
  UDB116SVT24_ND2_MM_0P75 U1850 ( .A1(counter3[1]), .A2(n1284), .X(n1287) );
  UDB116SVT24_OAI21_0P75 U1851 ( .A1(counter3[1]), .A2(n1284), .B(n1287), .X(
        n1285) );
  UDB116SVT24_NR2_0P75 U1852 ( .A1(n1286), .A2(n1285), .X(n651) );
  UDB116SVT24_INV_0P75 U1853 ( .A(counter3[2]), .X(n1288) );
  UDB116SVT24_NR2_0P75 U1854 ( .A1(n1288), .A2(n1287), .X(n1291) );
  UDB116SVT24_AOI211_0P75 U1855 ( .A1(n1288), .A2(n1287), .B1(n1291), .B2(
        n1286), .X(n650) );
  UDB116SVT24_OAI21_0P75 U1856 ( .A1(counter3[3]), .A2(n1291), .B(n1289), .X(
        n1290) );
  UDB116SVT24_AOI21_0P75 U1857 ( .A1(counter3[3]), .A2(n1291), .B(n1290), .X(
        n653) );
  UDB116SVT24_INV_0P75 U1858 ( .A(SHIFT_OUT[11]), .X(n1436) );
  UDB116SVT24_NR2_0P75 U1859 ( .A1(n712), .A2(n1436), .X(\shift_buf_inst/N30 )
         );
  UDB116SVT24_INV_0P75 U1860 ( .A(SHIFT_OUT[12]), .X(n1433) );
  UDB116SVT24_OA2BB2_0P75 U1861 ( .A1(n780), .A2(n1433), .B1(
        \shift_buf_inst/N30 ), .B2(n779), .X(\shift_buf_inst/n41 ) );
  UDB116SVT24_NR2_0P75 U1862 ( .A1(n712), .A2(n1433), .X(n657) );
  UDB116SVT24_INV_0P75 U1863 ( .A(SHIFT_OUT[13]), .X(n1430) );
  UDB116SVT24_OA2BB2_0P75 U1864 ( .A1(n780), .A2(n1430), .B1(n657), .B2(n780), 
        .X(\shift_buf_inst/n40 ) );
  UDB116SVT24_NR2_0P75 U1865 ( .A1(n712), .A2(n1430), .X(\shift_buf_inst/N28 )
         );
  UDB116SVT24_INV_0P75 U1866 ( .A(SHIFT_OUT[14]), .X(n1428) );
  UDB116SVT24_OA2BB2_0P75 U1867 ( .A1(n779), .A2(n1428), .B1(
        \shift_buf_inst/N28 ), .B2(n779), .X(\shift_buf_inst/n39 ) );
  UDB116SVT24_INV_0P75 U1868 ( .A(SHIFT_OUT[10]), .X(n1438) );
  UDB116SVT24_NR2_0P75 U1869 ( .A1(n1292), .A2(n1438), .X(n656) );
  UDB116SVT24_OA2BB2_0P75 U1870 ( .A1(n780), .A2(n1436), .B1(n656), .B2(n779), 
        .X(\shift_buf_inst/n42 ) );
  UDB116SVT24_ND2_MM_0P75 U1871 ( .A1(n827), .A2(n1293), .X(n1295) );
  UDB116SVT24_INV_0P75 U1872 ( .A(n1295), .X(n1296) );
  UDB116SVT24_INV_0P75 U1873 ( .A(n1296), .X(n1298) );
  UDB116SVT24_INV_0P75 U1874 ( .A(SHIFT_OUT[17]), .X(n1421) );
  UDB116SVT24_INV_0P75 U1875 ( .A(n1294), .X(n1313) );
  UDB116SVT24_INV_0P75 U1876 ( .A(SHIFT_OUT[18]), .X(n1419) );
  UDB116SVT24_OAI22_0P75 U1877 ( .A1(n1298), .A2(n1421), .B1(n873), .B2(n1419), 
        .X(\shift_buf_inst/n35 ) );
  UDB116SVT24_INV_0P75 U1878 ( .A(n1295), .X(n1297) );
  UDB116SVT24_INV_0P75 U1879 ( .A(n1297), .X(n1302) );
  UDB116SVT24_INV_0P75 U1880 ( .A(SHIFT_OUT[22]), .X(n1410) );
  UDB116SVT24_INV_0P75 U1881 ( .A(SHIFT_OUT[23]), .X(n1408) );
  UDB116SVT24_OAI22_0P75 U1882 ( .A1(n1302), .A2(n1410), .B1(n681), .B2(n1408), 
        .X(\shift_buf_inst/n30 ) );
  UDB116SVT24_INV_0P75 U1883 ( .A(n1296), .X(n1300) );
  UDB116SVT24_INV_0P75 U1884 ( .A(SHIFT_OUT[7]), .X(n1299) );
  UDB116SVT24_INV_0P75 U1885 ( .A(SHIFT_OUT[8]), .X(n1444) );
  UDB116SVT24_OAI22_0P75 U1886 ( .A1(n1300), .A2(n1299), .B1(n680), .B2(n1444), 
        .X(\shift_buf_inst/n45 ) );
  UDB116SVT24_INV_0P75 U1887 ( .A(SHIFT_OUT[15]), .X(n1426) );
  UDB116SVT24_OAI22_0P75 U1888 ( .A1(n1300), .A2(n1428), .B1(n872), .B2(n1426), 
        .X(\shift_buf_inst/n38 ) );
  UDB116SVT24_INV_0P75 U1889 ( .A(SHIFT_OUT[16]), .X(n1424) );
  UDB116SVT24_OAI22_0P75 U1890 ( .A1(n1298), .A2(n1424), .B1(n874), .B2(n1421), 
        .X(\shift_buf_inst/n36 ) );
  UDB116SVT24_INV_0P75 U1891 ( .A(n1297), .X(n1308) );
  UDB116SVT24_INV_0P75 U1892 ( .A(SHIFT_OUT[20]), .X(n1415) );
  UDB116SVT24_INV_0P75 U1893 ( .A(SHIFT_OUT[21]), .X(n1412) );
  UDB116SVT24_OAI22_0P75 U1894 ( .A1(n1308), .A2(n1415), .B1(n778), .B2(n1412), 
        .X(\shift_buf_inst/n32 ) );
  UDB116SVT24_INV_0P75 U1895 ( .A(n1297), .X(n1316) );
  UDB116SVT24_INV_0P75 U1896 ( .A(SHIFT_OUT[19]), .X(n1417) );
  UDB116SVT24_OAI22_0P75 U1897 ( .A1(n1316), .A2(n1417), .B1(n873), .B2(n1415), 
        .X(\shift_buf_inst/n33 ) );
  UDB116SVT24_OAI22_0P75 U1898 ( .A1(n1298), .A2(n1419), .B1(n681), .B2(n1417), 
        .X(\shift_buf_inst/n34 ) );
  UDB116SVT24_INV_0P75 U1899 ( .A(SHIFT_OUT[9]), .X(n1440) );
  UDB116SVT24_OAI22_0P75 U1900 ( .A1(n1300), .A2(n1440), .B1(n681), .B2(n1438), 
        .X(\shift_buf_inst/n43 ) );
  UDB116SVT24_OAI22_0P75 U1901 ( .A1(n1298), .A2(n1444), .B1(n680), .B2(n1440), 
        .X(\shift_buf_inst/n44 ) );
  UDB116SVT24_INV_0P75 U1902 ( .A(SHIFT_OUT[6]), .X(n1301) );
  UDB116SVT24_OAI22_0P75 U1903 ( .A1(n1308), .A2(n1301), .B1(n873), .B2(n1299), 
        .X(\shift_buf_inst/n46 ) );
  UDB116SVT24_INV_0P75 U1904 ( .A(SHIFT_OUT[1]), .X(n1307) );
  UDB116SVT24_INV_0P75 U1905 ( .A(SHIFT_OUT[2]), .X(n1306) );
  UDB116SVT24_OAI22_0P75 U1906 ( .A1(n1302), .A2(n1307), .B1(n872), .B2(n1306), 
        .X(\shift_buf_inst/n51 ) );
  UDB116SVT24_OAI22_0P75 U1907 ( .A1(n1300), .A2(n1426), .B1(n872), .B2(n1424), 
        .X(\shift_buf_inst/n37 ) );
  UDB116SVT24_INV_0P75 U1908 ( .A(SHIFT_OUT[5]), .X(n1303) );
  UDB116SVT24_OAI22_0P75 U1909 ( .A1(n1302), .A2(n1303), .B1(n680), .B2(n1301), 
        .X(\shift_buf_inst/n47 ) );
  UDB116SVT24_OAI22_0P75 U1910 ( .A1(n1302), .A2(n1412), .B1(n874), .B2(n1410), 
        .X(\shift_buf_inst/n31 ) );
  UDB116SVT24_INV_0P75 U1911 ( .A(SHIFT_OUT[4]), .X(n1304) );
  UDB116SVT24_OAI22_0P75 U1912 ( .A1(n1308), .A2(n1304), .B1(n874), .B2(n1303), 
        .X(\shift_buf_inst/n48 ) );
  UDB116SVT24_INV_0P75 U1913 ( .A(SHIFT_OUT[3]), .X(n1305) );
  UDB116SVT24_OAI22_0P75 U1914 ( .A1(n1316), .A2(n1305), .B1(n872), .B2(n1304), 
        .X(\shift_buf_inst/n49 ) );
  UDB116SVT24_OAI22_0P75 U1915 ( .A1(n1316), .A2(n1306), .B1(n681), .B2(n1305), 
        .X(\shift_buf_inst/n50 ) );
  UDB116SVT24_INV_0P75 U1916 ( .A(SHIFT_OUT[0]), .X(n1314) );
  UDB116SVT24_OAI22_0P75 U1917 ( .A1(n1308), .A2(n1314), .B1(n874), .B2(n1307), 
        .X(\shift_buf_inst/n52 ) );
  UDB116SVT24_AOI21B_0P75 U1918 ( .A1(\fsm_sync_inst/state_pos ), .A2(
        \fsm_sync_inst/state_neg ), .B(rfin), .X(n1310) );
  UDB116SVT24_OAOI211_0P75 U1919 ( .A1(\fsm_sync_inst/state_pos ), .A2(
        \fsm_sync_inst/state_neg ), .B(n1311), .C(n1310), .X(n1315) );
  UDB116SVT24_AOI21_0P75 U1920 ( .A1(n857), .A2(n665), .B(n1315), .X(
        \sh_sync_inst/N400 ) );
  UDB116SVT24_OAI22_0P75 U1921 ( .A1(n1316), .A2(n1315), .B1(n1314), .B2(n873), 
        .X(\shift_buf_inst/n53 ) );
  UDB116SVT24_OAI21_0P75 U1922 ( .A1(rfin), .A2(\fsm_sync_inst/state_neg ), 
        .B(n1591), .X(n1317) );
  UDB116SVT24_AOI21_0P75 U1923 ( .A1(\fsm_sync_inst/state_neg ), .A2(n1318), 
        .B(n1317), .X(\fsm_sync_inst/N12 ) );
  UDB116SVT24_NR2B_0P75 U1924 ( .A(\tx_buf_inst/buffer [7]), .B(n1463), .X(
        \tx_buf_inst/N5 ) );
  UDB116SVT24_NR4_0P75 U1925 ( .A1(CS_sync), .A2(\SPI_slave_inst/SS_prev ), 
        .A3(\SPI_slave_inst/SCK_prev ), .A4(n1319), .X(n1320) );
  UDB116SVT24_MUX2_0P75 U1926 ( .D0(\SPI_slave_inst/SHIFT_IN ), .D1(
        \SPI_slave_inst/MOSI_sync_1 ), .S(n1320), .X(\SPI_slave_inst/n38 ) );
  UDB116SVT24_AOI22_1 U1927 ( .A1(n1374), .A2(n1321), .B1(n851), .B2(
        ext_count_val_RX[4]), .X(n1322) );
  UDB116SVT24_OAI21_0P75 U1928 ( .A1(n1377), .A2(n1323), .B(n1322), .X(
        \sh_sync_inst/n167 ) );
  UDB116SVT24_AOI22_1 U1929 ( .A1(n1374), .A2(n1324), .B1(n852), .B2(
        ext_count_val_RX[6]), .X(n1325) );
  UDB116SVT24_OAI21_0P75 U1930 ( .A1(n1377), .A2(n1326), .B(n1325), .X(
        \sh_sync_inst/n169 ) );
  UDB116SVT24_AOI22_1 U1931 ( .A1(n1374), .A2(n1327), .B1(n853), .B2(
        ext_count_val_RX[10]), .X(n1328) );
  UDB116SVT24_OAI21_0P75 U1932 ( .A1(n1377), .A2(n1329), .B(n1328), .X(
        \sh_sync_inst/n173 ) );
  UDB116SVT24_AO22_1 U1933 ( .A1(n1332), .A2(n1331), .B1(
        \sh_sync_inst/timeout_counter [3]), .B2(n1330), .X(\sh_sync_inst/n188 ) );
  UDB116SVT24_AO22_1 U1934 ( .A1(\sh_sync_inst/timeout_counter [0]), .A2(n1334), .B1(\sh_sync_inst/timeout_counter [1]), .B2(n1333), .X(\sh_sync_inst/n190 )
         );
  UDB116SVT24_AO22_1 U1935 ( .A1(\sh_sync_inst/pulse_pack_count [5]), .A2(
        n1337), .B1(n1336), .B2(n1335), .X(\sh_sync_inst/n196 ) );
  UDB116SVT24_AO22_1 U1936 ( .A1(\sh_sync_inst/pulse_pack_count [3]), .A2(
        n1340), .B1(n1339), .B2(n1338), .X(\sh_sync_inst/n198 ) );
  UDB116SVT24_AO22_1 U1937 ( .A1(n673), .A2(n1342), .B1(
        \sh_sync_inst/pulse_pack_count [0]), .B2(n1341), .X(
        \sh_sync_inst/n200 ) );
  UDB116SVT24_ND3_0P75 U1938 ( .A1(n736), .A2(n840), .A3(n1349), .X(n1388) );
  UDB116SVT24_OAI21_0P75 U1939 ( .A1(n737), .A2(n808), .B(n1343), .X(n1346) );
  UDB116SVT24_AOI21_0P75 U1940 ( .A1(n733), .A2(n1346), .B(n1345), .X(n1347)
         );
  UDB116SVT24_OAI21_0P75 U1941 ( .A1(n734), .A2(n1388), .B(n1347), .X(
        \sh_sync_inst/n202 ) );
  UDB116SVT24_OA22_1 U1942 ( .A1(n1349), .A2(n840), .B1(n726), .B2(n1348), .X(
        \sh_sync_inst/n204 ) );
  UDB116SVT24_AO22_1 U1943 ( .A1(n771), .A2(n1352), .B1(n1351), .B2(n1350), 
        .X(\sh_sync_inst/n209 ) );
  UDB116SVT24_ND2_MM_0P75 U1944 ( .A1(\sh_sync_inst/interval_sum [0]), .A2(
        n739), .X(n1358) );
  UDB116SVT24_AOI22_1 U1945 ( .A1(\sh_sync_inst/interval_sum [1]), .A2(n687), 
        .B1(n774), .B2(n1359), .X(n1355) );
  UDB116SVT24_AOI21_0P75 U1946 ( .A1(n1358), .A2(n1355), .B(n1353), .X(n1354)
         );
  UDB116SVT24_OAI21_0P75 U1947 ( .A1(n1358), .A2(n1355), .B(n1354), .X(n1356)
         );
  UDB116SVT24_OAI21_0P75 U1948 ( .A1(n1357), .A2(n1359), .B(n1356), .X(
        \sh_sync_inst/n217 ) );
  UDB116SVT24_MAJI3_1 U1949 ( .A1(n1359), .A2(n772), .A3(n1358), .X(
        \intadd_0/CI ) );
  UDB116SVT24_AO22_1 U1950 ( .A1(n671), .A2(n813), .B1(n817), .B2(
        \intadd_0/SUM[0] ), .X(\sh_sync_inst/n218 ) );
  UDB116SVT24_AO22_1 U1951 ( .A1(n705), .A2(n814), .B1(n818), .B2(
        \intadd_0/SUM[1] ), .X(\sh_sync_inst/n219 ) );
  UDB116SVT24_AO22_1 U1952 ( .A1(n670), .A2(n1390), .B1(n1389), .B2(
        \intadd_0/SUM[2] ), .X(\sh_sync_inst/n220 ) );
  UDB116SVT24_AO22_1 U1953 ( .A1(n669), .A2(n812), .B1(n816), .B2(
        \intadd_0/SUM[3] ), .X(\sh_sync_inst/n221 ) );
  UDB116SVT24_AO22_1 U1954 ( .A1(\sh_sync_inst/interval_sum [7]), .A2(n813), 
        .B1(n817), .B2(\intadd_0/SUM[5] ), .X(\sh_sync_inst/n223 ) );
  UDB116SVT24_AO22_1 U1955 ( .A1(\sh_sync_inst/interval_sum [9]), .A2(n814), 
        .B1(n818), .B2(\intadd_0/SUM[7] ), .X(\sh_sync_inst/n225 ) );
  UDB116SVT24_AO22_1 U1956 ( .A1(n668), .A2(n813), .B1(n817), .B2(
        \intadd_0/SUM[9] ), .X(\sh_sync_inst/n227 ) );
  UDB116SVT24_AO22_1 U1957 ( .A1(\sh_sync_inst/interval_sum [12]), .A2(n812), 
        .B1(n816), .B2(\intadd_0/SUM[10] ), .X(\sh_sync_inst/n228 ) );
  UDB116SVT24_AO22_1 U1958 ( .A1(n667), .A2(n813), .B1(n817), .B2(
        \intadd_0/SUM[11] ), .X(\sh_sync_inst/n229 ) );
  UDB116SVT24_AOI32_1 U1959 ( .A1(n1363), .A2(n707), .A3(n1362), .B1(n1361), 
        .B2(n1360), .X(\sh_sync_inst/n231 ) );
  UDB116SVT24_AO22_1 U1960 ( .A1(\sh_sync_inst/pulse_gen_count [1]), .A2(n1365), .B1(n1364), .B2(\sh_sync_inst/pulse_gen_count [0]), .X(\sh_sync_inst/n236 )
         );
  UDB116SVT24_INV_0P75 U1961 ( .A(n1366), .X(n1371) );
  UDB116SVT24_OR3B_0P75 U1962 ( .B1(n1366), .B2(n831), .A(n1368), .X(n1367) );
  UDB116SVT24_OAOAI2111_1 U1963 ( .A1(n1371), .A2(n831), .B(n660), .C(n1368), 
        .D(n1367), .X(\sh_sync_inst/n238 ) );
  UDB116SVT24_AOI22_1 U1964 ( .A1(n1257), .A2(n1373), .B1(n854), .B2(
        ext_count_val_RX[13]), .X(n1375) );
  UDB116SVT24_OAI21_0P75 U1965 ( .A1(n1377), .A2(n1376), .B(n1375), .X(
        \sh_sync_inst/n176 ) );
  UDB116SVT24_INV_0P75 U1966 ( .A(SH_EN_DONE), .X(n1379) );
  UDB116SVT24_OAI21_0P75 U1967 ( .A1(n676), .A2(n1379), .B(n678), .X(
        \sh_sync_inst/n235 ) );
  UDB116SVT24_AO22_1 U1968 ( .A1(\sh_sync_inst/interval_sum [10]), .A2(n814), 
        .B1(n818), .B2(\intadd_0/SUM[8] ), .X(\sh_sync_inst/n226 ) );
  UDB116SVT24_AO22_1 U1969 ( .A1(\sh_sync_inst/interval_sum [8]), .A2(n814), 
        .B1(n818), .B2(\intadd_0/SUM[6] ), .X(\sh_sync_inst/n224 ) );
  UDB116SVT24_NR2_0P75 U1970 ( .A1(n710), .A2(n726), .X(n1382) );
  UDB116SVT24_ND4_0P75 U1971 ( .A1(n734), .A2(n747), .A3(n1383), .A4(n1382), 
        .X(n1385) );
  UDB116SVT24_AOI21_0P75 U1972 ( .A1(n732), .A2(n1385), .B(n1384), .X(n1387)
         );
  UDB116SVT24_OAI32_1 U1973 ( .A1(n688), .A2(n690), .A3(n1388), .B1(n1387), 
        .B2(n1386), .X(\sh_sync_inst/n215 ) );
  UDB116SVT24_AO22_1 U1974 ( .A1(\sh_sync_inst/interval_sum [6]), .A2(n812), 
        .B1(n816), .B2(\intadd_0/SUM[4] ), .X(\sh_sync_inst/n222 ) );
  UDB116SVT24_ND2_MM_0P75 U1975 ( .A1(n1391), .A2(n693), .X(n1393) );
  UDB116SVT24_INV_0P75 U1976 ( .A(\sh_sync_inst/timeout_counter [6]), .X(n1392) );
  UDB116SVT24_AOI32_1 U1977 ( .A1(n1395), .A2(
        \sh_sync_inst/timeout_counter [6]), .A3(n1394), .B1(n1393), .B2(n1392), 
        .X(\sh_sync_inst/n185 ) );
  UDB116SVT24_ND2_MM_0P75 U1978 ( .A1(n1396), .A2(n749), .X(n1398) );
  UDB116SVT24_AOI32_1 U1979 ( .A1(n1400), .A2(
        \sh_sync_inst/timeout_counter [8]), .A3(n1399), .B1(n1398), .B2(n1397), 
        .X(\sh_sync_inst/n183 ) );
  UDB116SVT24_AO22_1 U1980 ( .A1(\sh_sync_inst/timeout_counter [11]), .A2(
        n1403), .B1(n1402), .B2(n1401), .X(\sh_sync_inst/n180 ) );
  UDB116SVT24_OAI21_0P75 U1981 ( .A1(n1406), .A2(n1405), .B(n1404), .X(
        \sh_sync_inst/n249 ) );
  UDB116SVT24_BUF_1 U1982 ( .A(n1434), .X(n1446) );
  UDB116SVT24_INV_0P75 U1983 ( .A(n1446), .X(n1413) );
  UDB116SVT24_NR2B_0P75 U1984 ( .A(PKT_EN), .B(n794), .X(n1441) );
  UDB116SVT24_AOI22_1 U1985 ( .A1(n1413), .A2(\pkt_reg_inst/pkt_reg [23]), 
        .B1(n864), .B2(\pkt_reg_inst/pkt_reg [15]), .X(n1407) );
  UDB116SVT24_OAI21_0P75 U1986 ( .A1(n819), .A2(n1408), .B(n1407), .X(
        \pkt_reg_inst/n29 ) );
  UDB116SVT24_AOI22_1 U1987 ( .A1(n1413), .A2(\pkt_reg_inst/pkt_reg [22]), 
        .B1(n865), .B2(\pkt_reg_inst/pkt_reg [14]), .X(n1409) );
  UDB116SVT24_OAI21_0P75 U1988 ( .A1(n820), .A2(n1410), .B(n1409), .X(
        \pkt_reg_inst/n30 ) );
  UDB116SVT24_AOI22_1 U1989 ( .A1(n1413), .A2(\pkt_reg_inst/pkt_reg [21]), 
        .B1(n866), .B2(\pkt_reg_inst/pkt_reg [13]), .X(n1411) );
  UDB116SVT24_OAI21_0P75 U1990 ( .A1(n821), .A2(n1412), .B(n1411), .X(
        \pkt_reg_inst/n31 ) );
  UDB116SVT24_AOI22_1 U1991 ( .A1(n1413), .A2(\pkt_reg_inst/pkt_reg [20]), 
        .B1(n867), .B2(\pkt_reg_inst/pkt_reg [12]), .X(n1414) );
  UDB116SVT24_OAI21_0P75 U1992 ( .A1(n822), .A2(n1415), .B(n1414), .X(
        \pkt_reg_inst/n32 ) );
  UDB116SVT24_INV_0P75 U1993 ( .A(n1434), .X(n1422) );
  UDB116SVT24_AOI22_1 U1994 ( .A1(n1422), .A2(\pkt_reg_inst/pkt_reg [19]), 
        .B1(n864), .B2(\pkt_reg_inst/pkt_reg [11]), .X(n1416) );
  UDB116SVT24_OAI21_0P75 U1995 ( .A1(n819), .A2(n1417), .B(n1416), .X(
        \pkt_reg_inst/n33 ) );
  UDB116SVT24_AOI22_1 U1996 ( .A1(n1422), .A2(\pkt_reg_inst/pkt_reg [18]), 
        .B1(n865), .B2(\pkt_reg_inst/pkt_reg [10]), .X(n1418) );
  UDB116SVT24_OAI21_0P75 U1997 ( .A1(n820), .A2(n1419), .B(n1418), .X(
        \pkt_reg_inst/n34 ) );
  UDB116SVT24_AOI22_1 U1998 ( .A1(n1422), .A2(\pkt_reg_inst/pkt_reg [17]), 
        .B1(n866), .B2(\pkt_reg_inst/pkt_reg [9]), .X(n1420) );
  UDB116SVT24_OAI21_0P75 U1999 ( .A1(n821), .A2(n1421), .B(n1420), .X(
        \pkt_reg_inst/n35 ) );
  UDB116SVT24_AOI22_1 U2000 ( .A1(n1422), .A2(\pkt_reg_inst/pkt_reg [16]), 
        .B1(n867), .B2(\pkt_reg_inst/pkt_reg [8]), .X(n1423) );
  UDB116SVT24_OAI21_0P75 U2001 ( .A1(n822), .A2(n1424), .B(n1423), .X(
        \pkt_reg_inst/n36 ) );
  UDB116SVT24_INV_0P75 U2002 ( .A(n1446), .X(n1431) );
  UDB116SVT24_AOI22_1 U2003 ( .A1(n1431), .A2(\pkt_reg_inst/pkt_reg [15]), 
        .B1(n864), .B2(\pkt_reg_inst/pkt_reg [7]), .X(n1425) );
  UDB116SVT24_OAI21_0P75 U2004 ( .A1(n819), .A2(n1426), .B(n1425), .X(
        \pkt_reg_inst/n37 ) );
  UDB116SVT24_AOI22_1 U2005 ( .A1(n1431), .A2(\pkt_reg_inst/pkt_reg [14]), 
        .B1(n865), .B2(\pkt_reg_inst/pkt_reg [6]), .X(n1427) );
  UDB116SVT24_OAI21_0P75 U2006 ( .A1(n820), .A2(n1428), .B(n1427), .X(
        \pkt_reg_inst/n38 ) );
  UDB116SVT24_AOI22_1 U2007 ( .A1(n1431), .A2(\pkt_reg_inst/pkt_reg [13]), 
        .B1(n866), .B2(\pkt_reg_inst/pkt_reg [5]), .X(n1429) );
  UDB116SVT24_OAI21_0P75 U2008 ( .A1(n821), .A2(n1430), .B(n1429), .X(
        \pkt_reg_inst/n39 ) );
  UDB116SVT24_AOI22_1 U2009 ( .A1(n1431), .A2(\pkt_reg_inst/pkt_reg [12]), 
        .B1(n867), .B2(\pkt_reg_inst/pkt_reg [4]), .X(n1432) );
  UDB116SVT24_OAI21_0P75 U2010 ( .A1(n822), .A2(n1433), .B(n1432), .X(
        \pkt_reg_inst/n40 ) );
  UDB116SVT24_BUF_1 U2011 ( .A(n1434), .X(n1448) );
  UDB116SVT24_INV_0P75 U2012 ( .A(n1448), .X(n1442) );
  UDB116SVT24_AOI22_1 U2013 ( .A1(n1442), .A2(\pkt_reg_inst/pkt_reg [11]), 
        .B1(n864), .B2(\pkt_reg_inst/pkt_reg [3]), .X(n1435) );
  UDB116SVT24_OAI21_0P75 U2014 ( .A1(n819), .A2(n1436), .B(n1435), .X(
        \pkt_reg_inst/n41 ) );
  UDB116SVT24_AOI22_1 U2015 ( .A1(n1442), .A2(\pkt_reg_inst/pkt_reg [10]), 
        .B1(n865), .B2(\pkt_reg_inst/pkt_reg [2]), .X(n1437) );
  UDB116SVT24_OAI21_0P75 U2016 ( .A1(n820), .A2(n1438), .B(n1437), .X(
        \pkt_reg_inst/n42 ) );
  UDB116SVT24_AOI22_1 U2017 ( .A1(n1442), .A2(\pkt_reg_inst/pkt_reg [9]), .B1(
        n866), .B2(\pkt_reg_inst/pkt_reg [1]), .X(n1439) );
  UDB116SVT24_OAI21_0P75 U2018 ( .A1(n821), .A2(n1440), .B(n1439), .X(
        \pkt_reg_inst/n43 ) );
  UDB116SVT24_AOI22_1 U2019 ( .A1(n1442), .A2(\pkt_reg_inst/pkt_reg [8]), .B1(
        n867), .B2(\pkt_reg_inst/pkt_reg [0]), .X(n1443) );
  UDB116SVT24_OAI21_0P75 U2020 ( .A1(n822), .A2(n1444), .B(n1443), .X(
        \pkt_reg_inst/n44 ) );
  UDB116SVT24_BUF_1 U2021 ( .A(n1446), .X(n1451) );
  UDB116SVT24_INV_0P75 U2022 ( .A(n1451), .X(n1445) );
  UDB116SVT24_AO22_1 U2023 ( .A1(n794), .A2(SHIFT_OUT[7]), .B1(n1445), .B2(
        \pkt_reg_inst/pkt_reg [7]), .X(\pkt_reg_inst/n45 ) );
  UDB116SVT24_AO22_1 U2024 ( .A1(n795), .A2(SHIFT_OUT[6]), .B1(n1445), .B2(
        \pkt_reg_inst/pkt_reg [6]), .X(\pkt_reg_inst/n46 ) );
  UDB116SVT24_AO22_1 U2025 ( .A1(n793), .A2(SHIFT_OUT[5]), .B1(n1445), .B2(
        \pkt_reg_inst/pkt_reg [5]), .X(\pkt_reg_inst/n47 ) );
  UDB116SVT24_AO22_1 U2026 ( .A1(n794), .A2(SHIFT_OUT[4]), .B1(n1445), .B2(
        \pkt_reg_inst/pkt_reg [4]), .X(\pkt_reg_inst/n48 ) );
  UDB116SVT24_BUF_1 U2027 ( .A(n1446), .X(n1449) );
  UDB116SVT24_INV_0P75 U2028 ( .A(n1449), .X(n1447) );
  UDB116SVT24_AO22_1 U2029 ( .A1(n795), .A2(SHIFT_OUT[3]), .B1(n1447), .B2(
        \pkt_reg_inst/pkt_reg [3]), .X(\pkt_reg_inst/n49 ) );
  UDB116SVT24_AO22_1 U2030 ( .A1(n793), .A2(SHIFT_OUT[2]), .B1(n1447), .B2(
        \pkt_reg_inst/pkt_reg [2]), .X(\pkt_reg_inst/n50 ) );
  UDB116SVT24_AO22_1 U2031 ( .A1(n794), .A2(SHIFT_OUT[1]), .B1(n1447), .B2(
        \pkt_reg_inst/pkt_reg [1]), .X(\pkt_reg_inst/n51 ) );
  UDB116SVT24_AO22_1 U2032 ( .A1(SHIFT_OUT[0]), .A2(n795), .B1(n1447), .B2(
        \pkt_reg_inst/pkt_reg [0]), .X(\pkt_reg_inst/n52 ) );
  UDB116SVT24_NR2B_0P75 U2033 ( .A(SPI_LD), .B(n1448), .X(n1450) );
  UDB116SVT24_AO22_1 U2034 ( .A1(n1448), .A2(SPI_IN[0]), .B1(
        \pkt_reg_inst/pkt_reg [16]), .B2(n833), .X(\pkt_reg_inst/n28 ) );
  UDB116SVT24_AO22_1 U2035 ( .A1(n1448), .A2(SPI_IN[2]), .B1(
        \pkt_reg_inst/pkt_reg [18]), .B2(n834), .X(\pkt_reg_inst/n26 ) );
  UDB116SVT24_AO22_1 U2036 ( .A1(n1451), .A2(SPI_IN[6]), .B1(
        \pkt_reg_inst/pkt_reg [22]), .B2(n833), .X(\pkt_reg_inst/n22 ) );
  UDB116SVT24_AO22_1 U2037 ( .A1(n1451), .A2(SPI_IN[4]), .B1(
        \pkt_reg_inst/pkt_reg [20]), .B2(n834), .X(\pkt_reg_inst/n24 ) );
  UDB116SVT24_AO22_1 U2038 ( .A1(n1449), .A2(SPI_IN[3]), .B1(
        \pkt_reg_inst/pkt_reg [19]), .B2(n833), .X(\pkt_reg_inst/n25 ) );
  UDB116SVT24_AO22_1 U2039 ( .A1(n1449), .A2(SPI_IN[5]), .B1(
        \pkt_reg_inst/pkt_reg [21]), .B2(n834), .X(\pkt_reg_inst/n23 ) );
  UDB116SVT24_AO22_1 U2040 ( .A1(n1449), .A2(SPI_IN[7]), .B1(
        \pkt_reg_inst/pkt_reg [23]), .B2(n833), .X(\pkt_reg_inst/n21 ) );
  UDB116SVT24_AO22_1 U2041 ( .A1(n1451), .A2(SPI_IN[1]), .B1(
        \pkt_reg_inst/pkt_reg [17]), .B2(n834), .X(\pkt_reg_inst/n27 ) );
  UDB116SVT24_OA22_1 U2042 ( .A1(SPI_OUT[1]), .A2(n782), .B1(n756), .B2(
        \SPI_slave_inst/SHIFT_REG [1]), .X(\SPI_slave_inst/n22 ) );
  UDB116SVT24_OA22_1 U2043 ( .A1(SPI_OUT[5]), .A2(n783), .B1(n757), .B2(
        \SPI_slave_inst/SHIFT_REG [5]), .X(\SPI_slave_inst/n30 ) );
  UDB116SVT24_INV_0P75 U2044 ( .A(n1453), .X(n1462) );
  UDB116SVT24_AOI22_1 U2045 ( .A1(n845), .A2(SPI_IN[0]), .B1(n1458), .B2(
        \SPI_slave_inst/SHIFT_IN ), .X(n1454) );
  UDB116SVT24_OAI21_0P75 U2046 ( .A1(n1462), .A2(n1455), .B(n1454), .X(
        \SPI_slave_inst/n37 ) );
  UDB116SVT24_AOI22_1 U2047 ( .A1(n846), .A2(SPI_IN[6]), .B1(n1458), .B2(
        \SPI_slave_inst/SHIFT_REG [5]), .X(n1456) );
  UDB116SVT24_OAI21_0P75 U2048 ( .A1(n1462), .A2(n1457), .B(n1456), .X(
        \SPI_slave_inst/n33 ) );
  UDB116SVT24_AOI22_1 U2049 ( .A1(n846), .A2(SPI_IN[2]), .B1(n1458), .B2(
        \SPI_slave_inst/SHIFT_REG [1]), .X(n1460) );
  UDB116SVT24_OAI21_0P75 U2050 ( .A1(n1462), .A2(n1461), .B(n1460), .X(
        \SPI_slave_inst/n25 ) );
  UDB116SVT24_NR2_0P75 U2051 ( .A1(TX_LD), .A2(n1463), .X(n1475) );
  UDB116SVT24_AOI22_1 U2052 ( .A1(n720), .A2(\tx_buf_inst/buffer [6]), .B1(
        \tx_buf_inst/buffer [7]), .B2(n836), .X(n1464) );
  UDB116SVT24_OAI21_0P75 U2053 ( .A1(n721), .A2(n754), .B(n1464), .X(
        \tx_buf_inst/n5 ) );
  UDB116SVT24_AOI22_1 U2054 ( .A1(n720), .A2(\tx_buf_inst/buffer [5]), .B1(
        \tx_buf_inst/buffer [6]), .B2(n835), .X(n1466) );
  UDB116SVT24_OAI21_0P75 U2055 ( .A1(n723), .A2(n755), .B(n1466), .X(
        \tx_buf_inst/n6 ) );
  UDB116SVT24_AOI22_1 U2056 ( .A1(n720), .A2(\tx_buf_inst/buffer [4]), .B1(
        n836), .B2(\tx_buf_inst/buffer [5]), .X(n1468) );
  UDB116SVT24_OAI21_0P75 U2057 ( .A1(n724), .A2(n755), .B(n1468), .X(
        \tx_buf_inst/n7 ) );
  UDB116SVT24_AOI22_1 U2058 ( .A1(n1475), .A2(\tx_buf_inst/buffer [3]), .B1(
        n835), .B2(\tx_buf_inst/buffer [4]), .X(n1470) );
  UDB116SVT24_OAI21_0P75 U2059 ( .A1(n722), .A2(n754), .B(n1470), .X(
        \tx_buf_inst/n8 ) );
  UDB116SVT24_AOI22_1 U2060 ( .A1(n1475), .A2(\tx_buf_inst/buffer [2]), .B1(
        n835), .B2(\tx_buf_inst/buffer [3]), .X(n1472) );
  UDB116SVT24_OAI21_0P75 U2061 ( .A1(n759), .A2(n755), .B(n1472), .X(
        \tx_buf_inst/n9 ) );
  UDB116SVT24_AOI22_1 U2062 ( .A1(n1475), .A2(\tx_buf_inst/buffer [1]), .B1(
        n835), .B2(\tx_buf_inst/buffer [2]), .X(n1473) );
  UDB116SVT24_OAI21_0P75 U2063 ( .A1(n787), .A2(n754), .B(n1473), .X(
        \tx_buf_inst/n10 ) );
  UDB116SVT24_AOI22_1 U2064 ( .A1(n720), .A2(\tx_buf_inst/buffer [0]), .B1(
        n836), .B2(\tx_buf_inst/buffer [1]), .X(n1476) );
  UDB116SVT24_OAI21_0P75 U2065 ( .A1(n786), .A2(n755), .B(n1476), .X(
        \tx_buf_inst/n11 ) );
  UDB116SVT24_AO22_1 U2066 ( .A1(n760), .A2(TX_LD), .B1(n836), .B2(
        \tx_buf_inst/buffer [0]), .X(\tx_buf_inst/n12 ) );
  UDB116SVT24_OA22_1 U2067 ( .A1(n1480), .A2(\CONFIG_inst/pay0 [4]), .B1(
        ext_count_val_RX[12]), .B2(n1479), .X(\CONFIG_inst/n53 ) );
  UDB116SVT24_OA22_1 U2068 ( .A1(n1481), .A2(\CONFIG_inst/pay0 [4]), .B1(
        ext_count_val_TX[12]), .B2(n871), .X(\CONFIG_inst/n69 ) );
  UDB116SVT24_AOI21_0P75 U2069 ( .A1(SPI_OUT[0]), .A2(n1483), .B(n869), .X(
        n1485) );
  UDB116SVT24_ND2_MM_0P75 U2070 ( .A1(n1485), .A2(ext_counter_flag_TX), .X(
        n1484) );
  UDB116SVT24_OAI21_0P75 U2071 ( .A1(n1485), .A2(n1496), .B(n1484), .X(
        \CONFIG_inst/n82 ) );
  UDB116SVT24_OA22_1 U2072 ( .A1(n1486), .A2(\CONFIG_inst/pay0 [4]), .B1(
        arthur[12]), .B2(n1488), .X(\CONFIG_inst/n90 ) );
  UDB116SVT24_AO22_1 U2073 ( .A1(n1488), .A2(\CONFIG_inst/pay0 [6]), .B1(
        arthur[14]), .B2(n1486), .X(\CONFIG_inst/n94 ) );
  UDB116SVT24_AO22_1 U2074 ( .A1(n1488), .A2(\CONFIG_inst/pay0 [7]), .B1(
        arthur[15]), .B2(n1487), .X(\CONFIG_inst/n96 ) );
  UDB116SVT24_NR4_0P75 U2075 ( .A1(SPI_OUT[0]), .A2(SPI_OUT[2]), .A3(n785), 
        .A4(n1489), .X(n1492) );
  UDB116SVT24_AOI21_0P75 U2076 ( .A1(n1493), .A2(n1492), .B(n1491), .X(n1494)
         );
  UDB116SVT24_OAI21_0P75 U2077 ( .A1(n1496), .A2(n1495), .B(n1494), .X(
        \CONFIG_inst/n113 ) );
  UDB116SVT24_INV_0P75 U2078 ( .A(n1497), .X(n1499) );
  UDB116SVT24_AO21B_0P75 U2079 ( .A1(n675), .A2(n718), .B(SPI_LD), .X(n1498)
         );
  UDB116SVT24_OAI21_0P75 U2080 ( .A1(n1505), .A2(n1499), .B(n1498), .X(n654)
         );
  UDB116SVT24_AOI21_0P75 U2081 ( .A1(rx_state[2]), .A2(rx_state[1]), .B(n829), 
        .X(n1500) );
  UDB116SVT24_ND3_0P75 U2082 ( .A1(n697), .A2(n1500), .A3(n790), .X(n1501) );
  UDB116SVT24_OAI21_0P75 U2083 ( .A1(n1503), .A2(n1502), .B(n1501), .X(n648)
         );
  UDB116SVT24_OAI21_0P75 U2084 ( .A1(n1506), .A2(n1507), .B(n793), .X(n1504)
         );
  UDB116SVT24_OAI21_0P75 U2085 ( .A1(n1506), .A2(n1505), .B(n1504), .X(n646)
         );
  UDB116SVT24_OAI31_1 U2086 ( .A1(rx_state[2]), .A2(n829), .A3(n1507), .B(
        PKT_EN), .X(n1510) );
  UDB116SVT24_OAI21_0P75 U2087 ( .A1(n1511), .A2(n1510), .B(n1509), .X(n645)
         );
  UDB116SVT24_INV_0P75 U2088 ( .A(n1512), .X(n1513) );
  UDB116SVT24_AOAI211_0P75 U2089 ( .A1(counter[2]), .A2(n661), .B(n1513), .C(
        counter[3]), .X(n1515) );
  UDB116SVT24_OAI21_0P75 U2090 ( .A1(n1517), .A2(n1516), .B(n1515), .X(n644)
         );
  UDB116SVT24_OAI21_0P75 U2091 ( .A1(n1519), .A2(n675), .B(n718), .X(n1520) );
  UDB116SVT24_AO22_1 U2092 ( .A1(n1522), .A2(n718), .B1(PKT_RST), .B2(n1520), 
        .X(n640) );
endmodule

