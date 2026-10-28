/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06-SP1
// Date      : Fri Oct  9 22:49:41 2026
/////////////////////////////////////////////////////////////


module RST_SYNC_test_0 ( CLK, RST, SYNC_RST, test_si, test_se );
  input CLK, RST, test_si, test_se;
  output SYNC_RST;
  wire   sync_regs_0_;

  SDFFRQX2M sync_regs_reg_1_ ( .D(sync_regs_0_), .SI(sync_regs_0_), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(SYNC_RST) );
  SDFFRQX2M sync_regs_reg_0_ ( .D(1'b1), .SI(test_si), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(sync_regs_0_) );
endmodule


module RST_SYNC_test_1 ( CLK, RST, SYNC_RST, test_si, test_se );
  input CLK, RST, test_si, test_se;
  output SYNC_RST;
  wire   sync_regs_0_;

  SDFFRQX2M sync_regs_reg_1_ ( .D(sync_regs_0_), .SI(sync_regs_0_), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(SYNC_RST) );
  SDFFRQX2M sync_regs_reg_0_ ( .D(1'b1), .SI(test_si), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(sync_regs_0_) );
endmodule


module RegFile_test_1 ( CLK, RST, Address, WrEn, RdEn, WrData, RdData, 
        RdData_Valid, REG0, REG1, REG2, REG3, test_si2, test_si1, test_so2, 
        test_so1, test_se );
  input [3:0] Address;
  input [7:0] WrData;
  output [7:0] RdData;
  output [7:0] REG0;
  output [7:0] REG1;
  output [7:0] REG2;
  output [7:0] REG3;
  input CLK, RST, WrEn, RdEn, test_si2, test_si1, test_se;
  output RdData_Valid, test_so2, test_so1;
  wire   memory_4__6_, memory_4__5_, memory_4__4_, memory_4__3_, memory_4__2_,
         memory_4__1_, memory_4__0_, memory_5__7_, memory_5__6_, memory_5__5_,
         memory_5__4_, memory_5__3_, memory_5__2_, memory_5__1_, memory_5__0_,
         memory_6__7_, memory_6__6_, memory_6__5_, memory_6__4_, memory_6__3_,
         memory_6__2_, memory_6__1_, memory_6__0_, memory_7__7_, memory_7__6_,
         memory_7__5_, memory_7__4_, memory_7__3_, memory_7__2_, memory_7__1_,
         memory_7__0_, memory_8__7_, memory_8__6_, memory_8__5_, memory_8__4_,
         memory_8__3_, memory_8__2_, memory_8__1_, memory_8__0_, memory_9__7_,
         memory_9__6_, memory_9__5_, memory_9__4_, memory_9__3_, memory_9__2_,
         memory_9__1_, memory_9__0_, memory_10__7_, memory_10__6_,
         memory_10__5_, memory_10__4_, memory_10__3_, memory_10__2_,
         memory_10__1_, memory_10__0_, memory_11__7_, memory_11__6_,
         memory_11__5_, memory_11__4_, memory_11__3_, memory_11__2_,
         memory_11__1_, memory_11__0_, memory_12__7_, memory_12__6_,
         memory_12__5_, memory_12__4_, memory_12__3_, memory_12__2_,
         memory_12__1_, memory_12__0_, memory_13__7_, memory_13__6_,
         memory_13__5_, memory_13__4_, memory_13__3_, memory_13__2_,
         memory_13__1_, memory_13__0_, memory_14__7_, memory_14__6_,
         memory_14__5_, memory_14__4_, memory_14__3_, memory_14__2_,
         memory_14__1_, memory_14__0_, memory_15__6_, memory_15__5_,
         memory_15__4_, memory_15__3_, memory_15__2_, memory_15__1_,
         memory_15__0_, N36, N37, N38, N39, N40, N41, N42, N43, n150, n151,
         n152, n153, n154, n155, n156, n157, n158, n159, n160, n161, n162,
         n163, n164, n165, n166, n167, n168, n169, n170, n171, n172, n173,
         n174, n175, n176, n177, n178, n179, n180, n181, n182, n183, n184,
         n185, n186, n187, n188, n189, n190, n191, n192, n193, n194, n195,
         n196, n197, n198, n199, n200, n201, n202, n203, n204, n205, n206,
         n207, n208, n209, n210, n211, n212, n213, n214, n215, n216, n217,
         n218, n219, n220, n221, n222, n223, n224, n225, n226, n227, n228,
         n229, n230, n231, n232, n233, n234, n235, n236, n237, n238, n239,
         n240, n241, n242, n243, n244, n245, n246, n247, n248, n249, n250,
         n251, n252, n253, n254, n255, n256, n257, n258, n259, n260, n261,
         n262, n263, n264, n265, n266, n267, n268, n269, n270, n271, n272,
         n273, n274, n275, n276, n277, n278, n279, n280, n281, n282, n283,
         n284, n285, n286, n287, n288, n289, n290, n291, n292, n293, n294,
         n295, n296, n297, n298, n299, n300, n301, n302, n303, n304, n305,
         n306, n307, n308, n309, n310, n311, n312, n313, n138, n139, n140,
         n141, n142, n143, n144, n145, n146, n147, n148, n149, n314, n315,
         n316, n317, n318, n319, n320, n321, n322, n323, n324, n325, n326,
         n327, n328, n329, n330, n331, n332, n333, n334, n335, n336, n337,
         n338, n339, n340, n341, n342, n343, n344, n345, n346, n347, n348,
         n349, n350, n351, n352, n353, n354, n355, n356, n357, n358, n359,
         n360, n361, n362, n363, n364, n365, n366, n367, n368, n369, n370,
         n371, n372, n373, n374, n375, n376, n377, n378, n379, n380, n381,
         n382, n383, n384, n385, n386, n387, n388, n389, n390, n391, n392,
         n393, n394, n395, n396, n397, n398, n399, n400, n401, n402, n403,
         n404, n405, n406, n407, n408, n409, n410, n411, n412, n413, n414,
         n415, n416, n417, n418, n419, n420, n421, n422, n423, n424, n425,
         n426, n427, n428, n429, n430, n431, n432, n433, n434, n435, n436,
         n437, n438, n442, n443, n444, n445;

  SDFFRQX2M memory_reg_5__7_ ( .D(n273), .SI(memory_5__6_), .SE(n442), .CK(CLK), .RN(n416), .Q(memory_5__7_) );
  SDFFRQX2M memory_reg_5__6_ ( .D(n272), .SI(memory_5__5_), .SE(n445), .CK(CLK), .RN(n416), .Q(memory_5__6_) );
  SDFFRQX2M memory_reg_5__5_ ( .D(n271), .SI(memory_5__4_), .SE(n444), .CK(CLK), .RN(n416), .Q(memory_5__5_) );
  SDFFRQX2M memory_reg_5__4_ ( .D(n270), .SI(memory_5__3_), .SE(n443), .CK(CLK), .RN(n418), .Q(memory_5__4_) );
  SDFFRQX2M memory_reg_5__3_ ( .D(n269), .SI(memory_5__2_), .SE(n442), .CK(CLK), .RN(n418), .Q(memory_5__3_) );
  SDFFRQX2M memory_reg_5__2_ ( .D(n268), .SI(memory_5__1_), .SE(n445), .CK(CLK), .RN(n417), .Q(memory_5__2_) );
  SDFFRQX2M memory_reg_5__1_ ( .D(n267), .SI(memory_5__0_), .SE(n444), .CK(CLK), .RN(n417), .Q(memory_5__1_) );
  SDFFRQX2M memory_reg_5__0_ ( .D(n266), .SI(test_si2), .SE(n443), .CK(CLK), 
        .RN(n417), .Q(memory_5__0_) );
  SDFFRQX2M memory_reg_7__7_ ( .D(n257), .SI(memory_7__6_), .SE(n442), .CK(CLK), .RN(n417), .Q(memory_7__7_) );
  SDFFRQX2M memory_reg_7__6_ ( .D(n256), .SI(memory_7__5_), .SE(n445), .CK(CLK), .RN(n419), .Q(memory_7__6_) );
  SDFFRQX2M memory_reg_7__5_ ( .D(n255), .SI(memory_7__4_), .SE(n444), .CK(CLK), .RN(n419), .Q(memory_7__5_) );
  SDFFRQX2M memory_reg_7__4_ ( .D(n254), .SI(memory_7__3_), .SE(n443), .CK(CLK), .RN(n418), .Q(memory_7__4_) );
  SDFFRQX2M memory_reg_7__3_ ( .D(n253), .SI(memory_7__2_), .SE(n442), .CK(CLK), .RN(n418), .Q(memory_7__3_) );
  SDFFRQX2M memory_reg_7__2_ ( .D(n252), .SI(memory_7__1_), .SE(n445), .CK(CLK), .RN(n418), .Q(memory_7__2_) );
  SDFFRQX2M memory_reg_7__1_ ( .D(n251), .SI(memory_7__0_), .SE(n444), .CK(CLK), .RN(n418), .Q(memory_7__1_) );
  SDFFRQX2M memory_reg_7__0_ ( .D(n250), .SI(memory_6__7_), .SE(n443), .CK(CLK), .RN(n418), .Q(memory_7__0_) );
  SDFFRQX2M memory_reg_9__7_ ( .D(n241), .SI(memory_9__6_), .SE(n442), .CK(CLK), .RN(n420), .Q(memory_9__7_) );
  SDFFRQX2M memory_reg_9__6_ ( .D(n240), .SI(memory_9__5_), .SE(n445), .CK(CLK), .RN(n419), .Q(memory_9__6_) );
  SDFFRQX2M memory_reg_9__5_ ( .D(n239), .SI(memory_9__4_), .SE(n444), .CK(CLK), .RN(n419), .Q(memory_9__5_) );
  SDFFRQX2M memory_reg_9__4_ ( .D(n238), .SI(memory_9__3_), .SE(n443), .CK(CLK), .RN(n419), .Q(memory_9__4_) );
  SDFFRQX2M memory_reg_9__3_ ( .D(n237), .SI(memory_9__2_), .SE(n442), .CK(CLK), .RN(n419), .Q(memory_9__3_) );
  SDFFRQX2M memory_reg_9__2_ ( .D(n236), .SI(memory_9__1_), .SE(n445), .CK(CLK), .RN(n419), .Q(memory_9__2_) );
  SDFFRQX2M memory_reg_9__1_ ( .D(n235), .SI(memory_9__0_), .SE(n444), .CK(CLK), .RN(n419), .Q(memory_9__1_) );
  SDFFRQX2M memory_reg_9__0_ ( .D(n234), .SI(memory_8__7_), .SE(n443), .CK(CLK), .RN(n419), .Q(memory_9__0_) );
  SDFFRQX2M memory_reg_11__7_ ( .D(n225), .SI(memory_11__6_), .SE(n442), .CK(
        CLK), .RN(n420), .Q(memory_11__7_) );
  SDFFRQX2M memory_reg_11__6_ ( .D(n224), .SI(memory_11__5_), .SE(n445), .CK(
        CLK), .RN(n420), .Q(memory_11__6_) );
  SDFFRQX2M memory_reg_11__5_ ( .D(n223), .SI(memory_11__4_), .SE(n444), .CK(
        CLK), .RN(n420), .Q(memory_11__5_) );
  SDFFRQX2M memory_reg_11__4_ ( .D(n222), .SI(memory_11__3_), .SE(n443), .CK(
        CLK), .RN(n420), .Q(memory_11__4_) );
  SDFFRQX2M memory_reg_11__3_ ( .D(n221), .SI(memory_11__2_), .SE(n442), .CK(
        CLK), .RN(n420), .Q(memory_11__3_) );
  SDFFRQX2M memory_reg_11__2_ ( .D(n220), .SI(memory_11__1_), .SE(n445), .CK(
        CLK), .RN(n420), .Q(memory_11__2_) );
  SDFFRQX2M memory_reg_11__1_ ( .D(n219), .SI(memory_11__0_), .SE(n444), .CK(
        CLK), .RN(n420), .Q(memory_11__1_) );
  SDFFRQX2M memory_reg_11__0_ ( .D(n218), .SI(memory_10__7_), .SE(n443), .CK(
        CLK), .RN(n420), .Q(memory_11__0_) );
  SDFFRQX2M memory_reg_13__7_ ( .D(n209), .SI(memory_13__6_), .SE(n442), .CK(
        CLK), .RN(n421), .Q(memory_13__7_) );
  SDFFRQX2M memory_reg_13__6_ ( .D(n208), .SI(memory_13__5_), .SE(n445), .CK(
        CLK), .RN(n421), .Q(memory_13__6_) );
  SDFFRQX2M memory_reg_13__5_ ( .D(n207), .SI(memory_13__4_), .SE(n444), .CK(
        CLK), .RN(n421), .Q(memory_13__5_) );
  SDFFRQX2M memory_reg_13__4_ ( .D(n206), .SI(memory_13__3_), .SE(n443), .CK(
        CLK), .RN(n421), .Q(memory_13__4_) );
  SDFFRQX2M memory_reg_13__3_ ( .D(n205), .SI(memory_13__2_), .SE(n442), .CK(
        CLK), .RN(n421), .Q(memory_13__3_) );
  SDFFRQX2M memory_reg_13__2_ ( .D(n204), .SI(memory_13__1_), .SE(n445), .CK(
        CLK), .RN(n421), .Q(memory_13__2_) );
  SDFFRQX2M memory_reg_13__1_ ( .D(n203), .SI(memory_13__0_), .SE(n444), .CK(
        CLK), .RN(n421), .Q(memory_13__1_) );
  SDFFRQX2M memory_reg_13__0_ ( .D(n202), .SI(memory_12__7_), .SE(n443), .CK(
        CLK), .RN(n423), .Q(memory_13__0_) );
  SDFFRQX2M memory_reg_15__7_ ( .D(n193), .SI(memory_15__6_), .SE(n442), .CK(
        CLK), .RN(n422), .Q(test_so2) );
  SDFFRQX2M memory_reg_15__6_ ( .D(n192), .SI(memory_15__5_), .SE(n445), .CK(
        CLK), .RN(n422), .Q(memory_15__6_) );
  SDFFRQX2M memory_reg_15__5_ ( .D(n191), .SI(memory_15__4_), .SE(n444), .CK(
        CLK), .RN(n421), .Q(memory_15__5_) );
  SDFFRQX2M memory_reg_15__4_ ( .D(n190), .SI(memory_15__3_), .SE(n443), .CK(
        CLK), .RN(n422), .Q(memory_15__4_) );
  SDFFRQX2M memory_reg_15__3_ ( .D(n189), .SI(memory_15__2_), .SE(n442), .CK(
        CLK), .RN(n422), .Q(memory_15__3_) );
  SDFFRQX2M memory_reg_15__2_ ( .D(n188), .SI(memory_15__1_), .SE(n445), .CK(
        CLK), .RN(n423), .Q(memory_15__2_) );
  SDFFRQX2M memory_reg_15__1_ ( .D(n187), .SI(memory_15__0_), .SE(n444), .CK(
        CLK), .RN(n422), .Q(memory_15__1_) );
  SDFFRQX2M memory_reg_15__0_ ( .D(n186), .SI(memory_14__7_), .SE(n443), .CK(
        CLK), .RN(n423), .Q(memory_15__0_) );
  SDFFRQX2M memory_reg_4__7_ ( .D(n281), .SI(memory_4__6_), .SE(n444), .CK(CLK), .RN(n416), .Q(test_so1) );
  SDFFRQX2M memory_reg_4__6_ ( .D(n280), .SI(memory_4__5_), .SE(n443), .CK(CLK), .RN(n416), .Q(memory_4__6_) );
  SDFFRQX2M memory_reg_4__5_ ( .D(n279), .SI(memory_4__4_), .SE(n442), .CK(CLK), .RN(n416), .Q(memory_4__5_) );
  SDFFRQX2M memory_reg_4__4_ ( .D(n278), .SI(memory_4__3_), .SE(n445), .CK(CLK), .RN(n416), .Q(memory_4__4_) );
  SDFFRQX2M memory_reg_4__3_ ( .D(n277), .SI(memory_4__2_), .SE(n444), .CK(CLK), .RN(n416), .Q(memory_4__3_) );
  SDFFRQX2M memory_reg_4__2_ ( .D(n276), .SI(memory_4__1_), .SE(n443), .CK(CLK), .RN(n416), .Q(memory_4__2_) );
  SDFFRQX2M memory_reg_4__1_ ( .D(n275), .SI(memory_4__0_), .SE(n442), .CK(CLK), .RN(n416), .Q(memory_4__1_) );
  SDFFRQX2M memory_reg_4__0_ ( .D(n274), .SI(REG3[7]), .SE(n445), .CK(CLK), 
        .RN(n416), .Q(memory_4__0_) );
  SDFFRQX2M memory_reg_6__7_ ( .D(n265), .SI(memory_6__6_), .SE(n442), .CK(CLK), .RN(n417), .Q(memory_6__7_) );
  SDFFRQX2M memory_reg_6__6_ ( .D(n264), .SI(memory_6__5_), .SE(n445), .CK(CLK), .RN(n417), .Q(memory_6__6_) );
  SDFFRQX2M memory_reg_6__5_ ( .D(n263), .SI(memory_6__4_), .SE(n444), .CK(CLK), .RN(n417), .Q(memory_6__5_) );
  SDFFRQX2M memory_reg_6__4_ ( .D(n262), .SI(memory_6__3_), .SE(n443), .CK(CLK), .RN(n417), .Q(memory_6__4_) );
  SDFFRQX2M memory_reg_6__3_ ( .D(n261), .SI(memory_6__2_), .SE(n442), .CK(CLK), .RN(n417), .Q(memory_6__3_) );
  SDFFRQX2M memory_reg_6__2_ ( .D(n260), .SI(memory_6__1_), .SE(n445), .CK(CLK), .RN(n417), .Q(memory_6__2_) );
  SDFFRQX2M memory_reg_6__1_ ( .D(n259), .SI(memory_6__0_), .SE(n444), .CK(CLK), .RN(n417), .Q(memory_6__1_) );
  SDFFRQX2M memory_reg_6__0_ ( .D(n258), .SI(memory_5__7_), .SE(n443), .CK(CLK), .RN(n417), .Q(memory_6__0_) );
  SDFFRQX2M memory_reg_8__7_ ( .D(n249), .SI(memory_8__6_), .SE(n442), .CK(CLK), .RN(n418), .Q(memory_8__7_) );
  SDFFRQX2M memory_reg_8__6_ ( .D(n248), .SI(memory_8__5_), .SE(n445), .CK(CLK), .RN(n418), .Q(memory_8__6_) );
  SDFFRQX2M memory_reg_8__5_ ( .D(n247), .SI(memory_8__4_), .SE(n444), .CK(CLK), .RN(n418), .Q(memory_8__5_) );
  SDFFRQX2M memory_reg_8__4_ ( .D(n246), .SI(memory_8__3_), .SE(n443), .CK(CLK), .RN(n418), .Q(memory_8__4_) );
  SDFFRQX2M memory_reg_8__3_ ( .D(n245), .SI(memory_8__2_), .SE(n442), .CK(CLK), .RN(n418), .Q(memory_8__3_) );
  SDFFRQX2M memory_reg_8__2_ ( .D(n244), .SI(memory_8__1_), .SE(n445), .CK(CLK), .RN(n418), .Q(memory_8__2_) );
  SDFFRQX2M memory_reg_8__1_ ( .D(n243), .SI(memory_8__0_), .SE(n444), .CK(CLK), .RN(n420), .Q(memory_8__1_) );
  SDFFRQX2M memory_reg_8__0_ ( .D(n242), .SI(memory_7__7_), .SE(n443), .CK(CLK), .RN(n420), .Q(memory_8__0_) );
  SDFFRQX2M memory_reg_10__7_ ( .D(n233), .SI(memory_10__6_), .SE(n442), .CK(
        CLK), .RN(n419), .Q(memory_10__7_) );
  SDFFRQX2M memory_reg_10__6_ ( .D(n232), .SI(memory_10__5_), .SE(n445), .CK(
        CLK), .RN(n419), .Q(memory_10__6_) );
  SDFFRQX2M memory_reg_10__5_ ( .D(n231), .SI(memory_10__4_), .SE(n444), .CK(
        CLK), .RN(n419), .Q(memory_10__5_) );
  SDFFRQX2M memory_reg_10__4_ ( .D(n230), .SI(memory_10__3_), .SE(n443), .CK(
        CLK), .RN(n419), .Q(memory_10__4_) );
  SDFFRQX2M memory_reg_10__3_ ( .D(n229), .SI(memory_10__2_), .SE(n442), .CK(
        CLK), .RN(n421), .Q(memory_10__3_) );
  SDFFRQX2M memory_reg_10__2_ ( .D(n228), .SI(memory_10__1_), .SE(n445), .CK(
        CLK), .RN(n421), .Q(memory_10__2_) );
  SDFFRQX2M memory_reg_10__1_ ( .D(n227), .SI(memory_10__0_), .SE(n444), .CK(
        CLK), .RN(n421), .Q(memory_10__1_) );
  SDFFRQX2M memory_reg_10__0_ ( .D(n226), .SI(memory_9__7_), .SE(n443), .CK(
        CLK), .RN(n420), .Q(memory_10__0_) );
  SDFFRQX2M memory_reg_12__7_ ( .D(n217), .SI(memory_12__6_), .SE(n442), .CK(
        CLK), .RN(n420), .Q(memory_12__7_) );
  SDFFRQX2M memory_reg_12__6_ ( .D(n216), .SI(memory_12__5_), .SE(n445), .CK(
        CLK), .RN(n420), .Q(memory_12__6_) );
  SDFFRQX2M memory_reg_12__5_ ( .D(n215), .SI(memory_12__4_), .SE(n444), .CK(
        CLK), .RN(n422), .Q(memory_12__5_) );
  SDFFRQX2M memory_reg_12__4_ ( .D(n214), .SI(memory_12__3_), .SE(n443), .CK(
        CLK), .RN(n422), .Q(memory_12__4_) );
  SDFFRQX2M memory_reg_12__3_ ( .D(n213), .SI(memory_12__2_), .SE(n442), .CK(
        CLK), .RN(n422), .Q(memory_12__3_) );
  SDFFRQX2M memory_reg_12__2_ ( .D(n212), .SI(memory_12__1_), .SE(n445), .CK(
        CLK), .RN(n421), .Q(memory_12__2_) );
  SDFFRQX2M memory_reg_12__1_ ( .D(n211), .SI(memory_12__0_), .SE(n444), .CK(
        CLK), .RN(n421), .Q(memory_12__1_) );
  SDFFRQX2M memory_reg_12__0_ ( .D(n210), .SI(memory_11__7_), .SE(n443), .CK(
        CLK), .RN(n421), .Q(memory_12__0_) );
  SDFFRQX2M memory_reg_14__7_ ( .D(n201), .SI(memory_14__6_), .SE(n442), .CK(
        CLK), .RN(n423), .Q(memory_14__7_) );
  SDFFRQX2M memory_reg_14__6_ ( .D(n200), .SI(memory_14__5_), .SE(n445), .CK(
        CLK), .RN(n423), .Q(memory_14__6_) );
  SDFFRQX2M memory_reg_14__5_ ( .D(n199), .SI(memory_14__4_), .SE(n444), .CK(
        CLK), .RN(n422), .Q(memory_14__5_) );
  SDFFRQX2M memory_reg_14__4_ ( .D(n198), .SI(memory_14__3_), .SE(n443), .CK(
        CLK), .RN(n422), .Q(memory_14__4_) );
  SDFFRQX2M memory_reg_14__3_ ( .D(n197), .SI(memory_14__2_), .SE(n442), .CK(
        CLK), .RN(n422), .Q(memory_14__3_) );
  SDFFRQX2M memory_reg_14__2_ ( .D(n196), .SI(memory_14__1_), .SE(n445), .CK(
        CLK), .RN(n422), .Q(memory_14__2_) );
  SDFFRQX2M memory_reg_14__1_ ( .D(n195), .SI(memory_14__0_), .SE(n444), .CK(
        CLK), .RN(n422), .Q(memory_14__1_) );
  SDFFRQX2M memory_reg_14__0_ ( .D(n194), .SI(memory_13__7_), .SE(n443), .CK(
        CLK), .RN(n422), .Q(memory_14__0_) );
  SDFFRQX2M RdData_Valid_reg ( .D(n429), .SI(test_si1), .SE(n443), .CK(CLK), 
        .RN(n423), .Q(RdData_Valid) );
  SDFFRQX2M RdData_reg_7_ ( .D(n185), .SI(RdData[6]), .SE(n443), .CK(CLK), 
        .RN(n414), .Q(RdData[7]) );
  SDFFRQX2M RdData_reg_6_ ( .D(n184), .SI(RdData[5]), .SE(n442), .CK(CLK), 
        .RN(n423), .Q(RdData[6]) );
  SDFFRQX2M RdData_reg_5_ ( .D(n183), .SI(RdData[4]), .SE(n445), .CK(CLK), 
        .RN(n423), .Q(RdData[5]) );
  SDFFRQX2M RdData_reg_4_ ( .D(n182), .SI(RdData[3]), .SE(n444), .CK(CLK), 
        .RN(n423), .Q(RdData[4]) );
  SDFFRQX2M RdData_reg_3_ ( .D(n181), .SI(RdData[2]), .SE(n443), .CK(CLK), 
        .RN(n423), .Q(RdData[3]) );
  SDFFRQX2M RdData_reg_2_ ( .D(n180), .SI(RdData[1]), .SE(n442), .CK(CLK), 
        .RN(n423), .Q(RdData[2]) );
  SDFFRQX2M RdData_reg_1_ ( .D(n179), .SI(RdData[0]), .SE(n445), .CK(CLK), 
        .RN(n423), .Q(RdData[1]) );
  SDFFRQX2M RdData_reg_0_ ( .D(n178), .SI(RdData_Valid), .SE(n444), .CK(CLK), 
        .RN(n418), .Q(RdData[0]) );
  SDFFSQX2M memory_reg_2__0_ ( .D(n290), .SI(REG1[7]), .SE(n445), .CK(CLK), 
        .SN(n414), .Q(REG2[0]) );
  SDFFRQX2M memory_reg_2__1_ ( .D(n291), .SI(REG2[0]), .SE(n444), .CK(CLK), 
        .RN(n415), .Q(REG2[1]) );
  SDFFSQX2M memory_reg_2__7_ ( .D(n297), .SI(REG2[6]), .SE(n442), .CK(CLK), 
        .SN(n414), .Q(REG2[7]) );
  SDFFRQX2M memory_reg_2__5_ ( .D(n295), .SI(REG2[4]), .SE(n444), .CK(CLK), 
        .RN(n415), .Q(REG2[5]) );
  SDFFRQX2M memory_reg_2__6_ ( .D(n296), .SI(REG2[5]), .SE(n445), .CK(CLK), 
        .RN(n415), .Q(REG2[6]) );
  SDFFRQX2M memory_reg_2__2_ ( .D(n292), .SI(REG2[1]), .SE(n445), .CK(CLK), 
        .RN(n415), .Q(REG2[2]) );
  SDFFRQX2M memory_reg_2__3_ ( .D(n293), .SI(REG2[2]), .SE(n442), .CK(CLK), 
        .RN(n415), .Q(REG2[3]) );
  SDFFRQX2M memory_reg_2__4_ ( .D(n294), .SI(REG2[3]), .SE(n443), .CK(CLK), 
        .RN(n415), .Q(REG2[4]) );
  SDFFRQX2M memory_reg_3__0_ ( .D(n282), .SI(REG2[7]), .SE(n442), .CK(CLK), 
        .RN(n416), .Q(REG3[0]) );
  SDFFRQX2M memory_reg_0__1_ ( .D(n307), .SI(REG0[0]), .SE(n445), .CK(CLK), 
        .RN(n414), .Q(REG0[1]) );
  SDFFRQX2M memory_reg_0__0_ ( .D(n306), .SI(RdData[7]), .SE(n444), .CK(CLK), 
        .RN(n414), .Q(REG0[0]) );
  SDFFRQX2M memory_reg_0__2_ ( .D(n308), .SI(REG0[1]), .SE(n442), .CK(CLK), 
        .RN(n414), .Q(REG0[2]) );
  SDFFRQX2M memory_reg_0__3_ ( .D(n309), .SI(REG0[2]), .SE(n443), .CK(CLK), 
        .RN(n414), .Q(REG0[3]) );
  SDFFRQX2M memory_reg_0__4_ ( .D(n310), .SI(REG0[3]), .SE(n444), .CK(CLK), 
        .RN(n414), .Q(REG0[4]) );
  SDFFRQX2M memory_reg_0__5_ ( .D(n311), .SI(REG0[4]), .SE(n445), .CK(CLK), 
        .RN(n414), .Q(REG0[5]) );
  SDFFRQX2M memory_reg_0__6_ ( .D(n312), .SI(REG0[5]), .SE(n442), .CK(CLK), 
        .RN(n415), .Q(REG0[6]) );
  SDFFRQX2M memory_reg_0__7_ ( .D(n313), .SI(REG0[6]), .SE(n443), .CK(CLK), 
        .RN(n415), .Q(REG0[7]) );
  SDFFRQX2M memory_reg_1__1_ ( .D(n299), .SI(REG1[0]), .SE(n445), .CK(CLK), 
        .RN(n415), .Q(REG1[1]) );
  SDFFRQX2M memory_reg_1__3_ ( .D(n301), .SI(REG1[2]), .SE(n443), .CK(CLK), 
        .RN(n416), .Q(REG1[3]) );
  SDFFRQX2M memory_reg_1__2_ ( .D(n300), .SI(REG1[1]), .SE(n442), .CK(CLK), 
        .RN(n416), .Q(REG1[2]) );
  SDFFRQX2M memory_reg_1__5_ ( .D(n303), .SI(REG1[4]), .SE(n445), .CK(CLK), 
        .RN(n414), .Q(REG1[5]) );
  SDFFRQX2M memory_reg_1__7_ ( .D(n305), .SI(REG1[6]), .SE(n443), .CK(CLK), 
        .RN(n414), .Q(REG1[7]) );
  SDFFRQX2M memory_reg_1__0_ ( .D(n298), .SI(REG0[7]), .SE(n444), .CK(CLK), 
        .RN(n415), .Q(REG1[0]) );
  SDFFRQX2M memory_reg_1__4_ ( .D(n302), .SI(REG1[3]), .SE(n444), .CK(CLK), 
        .RN(n419), .Q(REG1[4]) );
  SDFFRQX2M memory_reg_1__6_ ( .D(n304), .SI(REG1[5]), .SE(n442), .CK(CLK), 
        .RN(n414), .Q(REG1[6]) );
  SDFFRQX2M memory_reg_3__1_ ( .D(n283), .SI(REG3[0]), .SE(n443), .CK(CLK), 
        .RN(n417), .Q(REG3[1]) );
  SDFFRQX2M memory_reg_3__2_ ( .D(n284), .SI(REG3[1]), .SE(n444), .CK(CLK), 
        .RN(n417), .Q(REG3[2]) );
  SDFFRQX2M memory_reg_3__3_ ( .D(n285), .SI(REG3[2]), .SE(n445), .CK(CLK), 
        .RN(n415), .Q(REG3[3]) );
  SDFFSQX2M memory_reg_3__5_ ( .D(n287), .SI(REG3[4]), .SE(test_se), .CK(CLK), 
        .SN(n414), .Q(REG3[5]) );
  SDFFRQX2M memory_reg_3__6_ ( .D(n288), .SI(REG3[5]), .SE(n443), .CK(CLK), 
        .RN(n415), .Q(REG3[6]) );
  SDFFRQX2M memory_reg_3__7_ ( .D(n289), .SI(REG3[6]), .SE(n444), .CK(CLK), 
        .RN(n415), .Q(REG3[7]) );
  SDFFRQX2M memory_reg_3__4_ ( .D(n286), .SI(REG3[3]), .SE(n442), .CK(CLK), 
        .RN(n415), .Q(REG3[4]) );
  NOR2BX2M U140 ( .AN(n176), .B(Address[0]), .Y(n170) );
  NOR2BX2M U141 ( .AN(n164), .B(Address[0]), .Y(n155) );
  NOR2X2M U142 ( .A(Address[1]), .B(Address[2]), .Y(n163) );
  NOR2X2M U143 ( .A(n435), .B(Address[2]), .Y(n160) );
  NOR2X2M U144 ( .A(n407), .B(Address[1]), .Y(n157) );
  INVX2M U145 ( .A(WrData[5]), .Y(n432) );
  INVX2M U146 ( .A(WrData[7]), .Y(n433) );
  INVX2M U147 ( .A(n412), .Y(n413) );
  NAND2X2M U148 ( .A(n168), .B(n152), .Y(n167) );
  NAND2X2M U149 ( .A(n152), .B(n153), .Y(n151) );
  INVX2M U150 ( .A(n138), .Y(n409) );
  INVX2M U151 ( .A(n150), .Y(n429) );
  OR2X2M U152 ( .A(n435), .B(n408), .Y(n138) );
  BUFX2M U153 ( .A(n140), .Y(n412) );
  NOR2BX2M U154 ( .AN(n164), .B(n408), .Y(n153) );
  NOR2BX2M U155 ( .AN(n176), .B(n408), .Y(n168) );
  NAND2X2M U156 ( .A(n157), .B(n153), .Y(n156) );
  NAND2X2M U157 ( .A(n160), .B(n153), .Y(n159) );
  NAND2X2M U158 ( .A(n163), .B(n153), .Y(n162) );
  NAND2X2M U159 ( .A(n168), .B(n157), .Y(n171) );
  NAND2X2M U160 ( .A(n168), .B(n160), .Y(n173) );
  NAND2X2M U161 ( .A(n168), .B(n163), .Y(n175) );
  INVX2M U162 ( .A(n141), .Y(n410) );
  INVX2M U163 ( .A(n139), .Y(n411) );
  NOR2X2M U164 ( .A(n407), .B(n435), .Y(n152) );
  NAND2X2M U165 ( .A(n157), .B(n155), .Y(n158) );
  NAND2X2M U166 ( .A(n160), .B(n155), .Y(n161) );
  NAND2X2M U167 ( .A(n163), .B(n155), .Y(n165) );
  NAND2X2M U168 ( .A(n170), .B(n157), .Y(n172) );
  NAND2X2M U169 ( .A(n170), .B(n160), .Y(n174) );
  NAND2X2M U170 ( .A(n170), .B(n163), .Y(n177) );
  NAND2X2M U171 ( .A(n155), .B(n152), .Y(n154) );
  NAND2X2M U172 ( .A(n170), .B(n152), .Y(n169) );
  NAND2BX2M U173 ( .AN(WrEn), .B(RdEn), .Y(n150) );
  NOR2BX2M U174 ( .AN(WrEn), .B(RdEn), .Y(n166) );
  BUFX2M U175 ( .A(n424), .Y(n422) );
  BUFX2M U176 ( .A(n425), .Y(n421) );
  BUFX2M U177 ( .A(n425), .Y(n420) );
  BUFX2M U178 ( .A(n426), .Y(n418) );
  BUFX2M U179 ( .A(n427), .Y(n417) );
  BUFX2M U180 ( .A(n427), .Y(n416) );
  BUFX2M U181 ( .A(n426), .Y(n419) );
  BUFX2M U182 ( .A(n428), .Y(n415) );
  BUFX2M U183 ( .A(n428), .Y(n414) );
  BUFX2M U184 ( .A(n424), .Y(n423) );
  OR2X2M U185 ( .A(n408), .B(Address[1]), .Y(n139) );
  OR2X2M U186 ( .A(Address[0]), .B(Address[1]), .Y(n140) );
  OR2X2M U187 ( .A(n435), .B(Address[0]), .Y(n141) );
  INVX2M U188 ( .A(Address[0]), .Y(n408) );
  INVX2M U189 ( .A(WrData[4]), .Y(n431) );
  INVX2M U190 ( .A(WrData[6]), .Y(n430) );
  INVX2M U191 ( .A(Address[1]), .Y(n435) );
  INVX2M U192 ( .A(WrData[1]), .Y(n436) );
  INVX2M U193 ( .A(WrData[2]), .Y(n437) );
  INVX2M U194 ( .A(WrData[3]), .Y(n438) );
  INVX2M U195 ( .A(WrData[0]), .Y(n434) );
  NOR2BX2M U196 ( .AN(n166), .B(Address[3]), .Y(n176) );
  INVX2M U197 ( .A(Address[2]), .Y(n407) );
  INVX2M U198 ( .A(Address[3]), .Y(n406) );
  AND2X2M U199 ( .A(Address[3]), .B(n166), .Y(n164) );
  BUFX2M U200 ( .A(RST), .Y(n425) );
  BUFX2M U201 ( .A(RST), .Y(n427) );
  BUFX2M U202 ( .A(RST), .Y(n426) );
  BUFX2M U203 ( .A(RST), .Y(n428) );
  BUFX2M U204 ( .A(RST), .Y(n424) );
  AO22X1M U205 ( .A0(N40), .A1(n429), .B0(RdData[3]), .B1(n150), .Y(n181) );
  AO22X1M U206 ( .A0(N39), .A1(n429), .B0(RdData[4]), .B1(n150), .Y(n182) );
  AO22X1M U207 ( .A0(N38), .A1(n429), .B0(RdData[5]), .B1(n150), .Y(n183) );
  AO22X1M U208 ( .A0(N37), .A1(n429), .B0(RdData[6]), .B1(n150), .Y(n184) );
  AO22X1M U209 ( .A0(N36), .A1(n429), .B0(RdData[7]), .B1(n150), .Y(n185) );
  OAI2BB2X1M U210 ( .B0(n151), .B1(n434), .A0N(memory_15__0_), .A1N(n151), .Y(
        n186) );
  OAI2BB2X1M U211 ( .B0(n151), .B1(n436), .A0N(memory_15__1_), .A1N(n151), .Y(
        n187) );
  OAI2BB2X1M U212 ( .B0(n151), .B1(n437), .A0N(memory_15__2_), .A1N(n151), .Y(
        n188) );
  OAI2BB2X1M U213 ( .B0(n151), .B1(n438), .A0N(memory_15__3_), .A1N(n151), .Y(
        n189) );
  OAI2BB2X1M U214 ( .B0(n151), .B1(n431), .A0N(memory_15__4_), .A1N(n151), .Y(
        n190) );
  OAI2BB2X1M U215 ( .B0(n151), .B1(n432), .A0N(memory_15__5_), .A1N(n151), .Y(
        n191) );
  OAI2BB2X1M U216 ( .B0(n151), .B1(n430), .A0N(memory_15__6_), .A1N(n151), .Y(
        n192) );
  OAI2BB2X1M U217 ( .B0(n151), .B1(n433), .A0N(test_so2), .A1N(n151), .Y(n193)
         );
  OAI2BB2X1M U218 ( .B0(n434), .B1(n167), .A0N(memory_7__0_), .A1N(n167), .Y(
        n250) );
  OAI2BB2X1M U219 ( .B0(n436), .B1(n167), .A0N(memory_7__1_), .A1N(n167), .Y(
        n251) );
  OAI2BB2X1M U220 ( .B0(n437), .B1(n167), .A0N(memory_7__2_), .A1N(n167), .Y(
        n252) );
  OAI2BB2X1M U221 ( .B0(n438), .B1(n167), .A0N(memory_7__3_), .A1N(n167), .Y(
        n253) );
  OAI2BB2X1M U222 ( .B0(n431), .B1(n167), .A0N(memory_7__4_), .A1N(n167), .Y(
        n254) );
  OAI2BB2X1M U223 ( .B0(n432), .B1(n167), .A0N(memory_7__5_), .A1N(n167), .Y(
        n255) );
  OAI2BB2X1M U224 ( .B0(n430), .B1(n167), .A0N(memory_7__6_), .A1N(n167), .Y(
        n256) );
  OAI2BB2X1M U225 ( .B0(n433), .B1(n167), .A0N(memory_7__7_), .A1N(n167), .Y(
        n257) );
  OAI2BB2X1M U226 ( .B0(n434), .B1(n171), .A0N(memory_5__0_), .A1N(n171), .Y(
        n266) );
  OAI2BB2X1M U227 ( .B0(n436), .B1(n171), .A0N(memory_5__1_), .A1N(n171), .Y(
        n267) );
  OAI2BB2X1M U228 ( .B0(n437), .B1(n171), .A0N(memory_5__2_), .A1N(n171), .Y(
        n268) );
  OAI2BB2X1M U229 ( .B0(n438), .B1(n171), .A0N(memory_5__3_), .A1N(n171), .Y(
        n269) );
  OAI2BB2X1M U230 ( .B0(n431), .B1(n171), .A0N(memory_5__4_), .A1N(n171), .Y(
        n270) );
  OAI2BB2X1M U231 ( .B0(n432), .B1(n171), .A0N(memory_5__5_), .A1N(n171), .Y(
        n271) );
  OAI2BB2X1M U232 ( .B0(n430), .B1(n171), .A0N(memory_5__6_), .A1N(n171), .Y(
        n272) );
  OAI2BB2X1M U233 ( .B0(n433), .B1(n171), .A0N(memory_5__7_), .A1N(n171), .Y(
        n273) );
  OAI2BB2X1M U234 ( .B0(n434), .B1(n173), .A0N(REG3[0]), .A1N(n173), .Y(n282)
         );
  OAI2BB2X1M U235 ( .B0(n436), .B1(n173), .A0N(REG3[1]), .A1N(n173), .Y(n283)
         );
  OAI2BB2X1M U236 ( .B0(n437), .B1(n173), .A0N(REG3[2]), .A1N(n173), .Y(n284)
         );
  OAI2BB2X1M U237 ( .B0(n438), .B1(n173), .A0N(REG3[3]), .A1N(n173), .Y(n285)
         );
  OAI2BB2X1M U238 ( .B0(n431), .B1(n173), .A0N(REG3[4]), .A1N(n173), .Y(n286)
         );
  OAI2BB2X1M U239 ( .B0(n430), .B1(n173), .A0N(REG3[6]), .A1N(n173), .Y(n288)
         );
  OAI2BB2X1M U240 ( .B0(n433), .B1(n173), .A0N(REG3[7]), .A1N(n173), .Y(n289)
         );
  OAI2BB2X1M U241 ( .B0(n434), .B1(n175), .A0N(REG1[0]), .A1N(n175), .Y(n298)
         );
  OAI2BB2X1M U242 ( .B0(n436), .B1(n175), .A0N(REG1[1]), .A1N(n175), .Y(n299)
         );
  OAI2BB2X1M U243 ( .B0(n437), .B1(n175), .A0N(REG1[2]), .A1N(n175), .Y(n300)
         );
  OAI2BB2X1M U244 ( .B0(n438), .B1(n175), .A0N(REG1[3]), .A1N(n175), .Y(n301)
         );
  OAI2BB2X1M U245 ( .B0(n431), .B1(n175), .A0N(REG1[4]), .A1N(n175), .Y(n302)
         );
  OAI2BB2X1M U246 ( .B0(n432), .B1(n175), .A0N(REG1[5]), .A1N(n175), .Y(n303)
         );
  OAI2BB2X1M U247 ( .B0(n430), .B1(n175), .A0N(REG1[6]), .A1N(n175), .Y(n304)
         );
  OAI2BB2X1M U248 ( .B0(n433), .B1(n175), .A0N(REG1[7]), .A1N(n175), .Y(n305)
         );
  OAI2BB2X1M U249 ( .B0(n434), .B1(n156), .A0N(memory_13__0_), .A1N(n156), .Y(
        n202) );
  OAI2BB2X1M U250 ( .B0(n436), .B1(n156), .A0N(memory_13__1_), .A1N(n156), .Y(
        n203) );
  OAI2BB2X1M U251 ( .B0(n437), .B1(n156), .A0N(memory_13__2_), .A1N(n156), .Y(
        n204) );
  OAI2BB2X1M U252 ( .B0(n438), .B1(n156), .A0N(memory_13__3_), .A1N(n156), .Y(
        n205) );
  OAI2BB2X1M U253 ( .B0(n431), .B1(n156), .A0N(memory_13__4_), .A1N(n156), .Y(
        n206) );
  OAI2BB2X1M U254 ( .B0(n432), .B1(n156), .A0N(memory_13__5_), .A1N(n156), .Y(
        n207) );
  OAI2BB2X1M U255 ( .B0(n430), .B1(n156), .A0N(memory_13__6_), .A1N(n156), .Y(
        n208) );
  OAI2BB2X1M U256 ( .B0(n433), .B1(n156), .A0N(memory_13__7_), .A1N(n156), .Y(
        n209) );
  OAI2BB2X1M U257 ( .B0(n434), .B1(n159), .A0N(memory_11__0_), .A1N(n159), .Y(
        n218) );
  OAI2BB2X1M U258 ( .B0(n436), .B1(n159), .A0N(memory_11__1_), .A1N(n159), .Y(
        n219) );
  OAI2BB2X1M U259 ( .B0(n437), .B1(n159), .A0N(memory_11__2_), .A1N(n159), .Y(
        n220) );
  OAI2BB2X1M U260 ( .B0(n438), .B1(n159), .A0N(memory_11__3_), .A1N(n159), .Y(
        n221) );
  OAI2BB2X1M U261 ( .B0(n431), .B1(n159), .A0N(memory_11__4_), .A1N(n159), .Y(
        n222) );
  OAI2BB2X1M U262 ( .B0(n432), .B1(n159), .A0N(memory_11__5_), .A1N(n159), .Y(
        n223) );
  OAI2BB2X1M U263 ( .B0(n430), .B1(n159), .A0N(memory_11__6_), .A1N(n159), .Y(
        n224) );
  OAI2BB2X1M U264 ( .B0(n433), .B1(n159), .A0N(memory_11__7_), .A1N(n159), .Y(
        n225) );
  OAI2BB2X1M U265 ( .B0(n434), .B1(n162), .A0N(memory_9__0_), .A1N(n162), .Y(
        n234) );
  OAI2BB2X1M U266 ( .B0(n436), .B1(n162), .A0N(memory_9__1_), .A1N(n162), .Y(
        n235) );
  OAI2BB2X1M U267 ( .B0(n437), .B1(n162), .A0N(memory_9__2_), .A1N(n162), .Y(
        n236) );
  OAI2BB2X1M U268 ( .B0(n438), .B1(n162), .A0N(memory_9__3_), .A1N(n162), .Y(
        n237) );
  OAI2BB2X1M U269 ( .B0(n431), .B1(n162), .A0N(memory_9__4_), .A1N(n162), .Y(
        n238) );
  OAI2BB2X1M U270 ( .B0(n432), .B1(n162), .A0N(memory_9__5_), .A1N(n162), .Y(
        n239) );
  OAI2BB2X1M U271 ( .B0(n430), .B1(n162), .A0N(memory_9__6_), .A1N(n162), .Y(
        n240) );
  OAI2BB2X1M U272 ( .B0(n433), .B1(n162), .A0N(memory_9__7_), .A1N(n162), .Y(
        n241) );
  OAI2BB2X1M U273 ( .B0(n432), .B1(n173), .A0N(REG3[5]), .A1N(n173), .Y(n287)
         );
  AO22X1M U274 ( .A0(N43), .A1(n429), .B0(RdData[0]), .B1(n150), .Y(n178) );
  AO22X1M U275 ( .A0(N42), .A1(n429), .B0(RdData[1]), .B1(n150), .Y(n179) );
  AO22X1M U276 ( .A0(N41), .A1(n429), .B0(RdData[2]), .B1(n150), .Y(n180) );
  OAI2BB2X1M U277 ( .B0(n434), .B1(n154), .A0N(memory_14__0_), .A1N(n154), .Y(
        n194) );
  OAI2BB2X1M U278 ( .B0(n436), .B1(n154), .A0N(memory_14__1_), .A1N(n154), .Y(
        n195) );
  OAI2BB2X1M U279 ( .B0(n437), .B1(n154), .A0N(memory_14__2_), .A1N(n154), .Y(
        n196) );
  OAI2BB2X1M U280 ( .B0(n438), .B1(n154), .A0N(memory_14__3_), .A1N(n154), .Y(
        n197) );
  OAI2BB2X1M U281 ( .B0(n431), .B1(n154), .A0N(memory_14__4_), .A1N(n154), .Y(
        n198) );
  OAI2BB2X1M U282 ( .B0(n432), .B1(n154), .A0N(memory_14__5_), .A1N(n154), .Y(
        n199) );
  OAI2BB2X1M U283 ( .B0(n430), .B1(n154), .A0N(memory_14__6_), .A1N(n154), .Y(
        n200) );
  OAI2BB2X1M U284 ( .B0(n433), .B1(n154), .A0N(memory_14__7_), .A1N(n154), .Y(
        n201) );
  OAI2BB2X1M U285 ( .B0(n434), .B1(n169), .A0N(memory_6__0_), .A1N(n169), .Y(
        n258) );
  OAI2BB2X1M U286 ( .B0(n436), .B1(n169), .A0N(memory_6__1_), .A1N(n169), .Y(
        n259) );
  OAI2BB2X1M U287 ( .B0(n437), .B1(n169), .A0N(memory_6__2_), .A1N(n169), .Y(
        n260) );
  OAI2BB2X1M U288 ( .B0(n438), .B1(n169), .A0N(memory_6__3_), .A1N(n169), .Y(
        n261) );
  OAI2BB2X1M U289 ( .B0(n431), .B1(n169), .A0N(memory_6__4_), .A1N(n169), .Y(
        n262) );
  OAI2BB2X1M U290 ( .B0(n432), .B1(n169), .A0N(memory_6__5_), .A1N(n169), .Y(
        n263) );
  OAI2BB2X1M U291 ( .B0(n430), .B1(n169), .A0N(memory_6__6_), .A1N(n169), .Y(
        n264) );
  OAI2BB2X1M U292 ( .B0(n433), .B1(n169), .A0N(memory_6__7_), .A1N(n169), .Y(
        n265) );
  OAI2BB2X1M U293 ( .B0(n434), .B1(n172), .A0N(memory_4__0_), .A1N(n172), .Y(
        n274) );
  OAI2BB2X1M U294 ( .B0(n436), .B1(n172), .A0N(memory_4__1_), .A1N(n172), .Y(
        n275) );
  OAI2BB2X1M U295 ( .B0(n437), .B1(n172), .A0N(memory_4__2_), .A1N(n172), .Y(
        n276) );
  OAI2BB2X1M U296 ( .B0(n438), .B1(n172), .A0N(memory_4__3_), .A1N(n172), .Y(
        n277) );
  OAI2BB2X1M U297 ( .B0(n431), .B1(n172), .A0N(memory_4__4_), .A1N(n172), .Y(
        n278) );
  OAI2BB2X1M U298 ( .B0(n432), .B1(n172), .A0N(memory_4__5_), .A1N(n172), .Y(
        n279) );
  OAI2BB2X1M U299 ( .B0(n430), .B1(n172), .A0N(memory_4__6_), .A1N(n172), .Y(
        n280) );
  OAI2BB2X1M U300 ( .B0(n433), .B1(n172), .A0N(test_so1), .A1N(n172), .Y(n281)
         );
  OAI2BB2X1M U301 ( .B0(n436), .B1(n174), .A0N(REG2[1]), .A1N(n174), .Y(n291)
         );
  OAI2BB2X1M U302 ( .B0(n437), .B1(n174), .A0N(REG2[2]), .A1N(n174), .Y(n292)
         );
  OAI2BB2X1M U303 ( .B0(n438), .B1(n174), .A0N(REG2[3]), .A1N(n174), .Y(n293)
         );
  OAI2BB2X1M U304 ( .B0(n431), .B1(n174), .A0N(REG2[4]), .A1N(n174), .Y(n294)
         );
  OAI2BB2X1M U305 ( .B0(n432), .B1(n174), .A0N(REG2[5]), .A1N(n174), .Y(n295)
         );
  OAI2BB2X1M U306 ( .B0(n430), .B1(n174), .A0N(REG2[6]), .A1N(n174), .Y(n296)
         );
  OAI2BB2X1M U307 ( .B0(n434), .B1(n177), .A0N(REG0[0]), .A1N(n177), .Y(n306)
         );
  OAI2BB2X1M U308 ( .B0(n436), .B1(n177), .A0N(REG0[1]), .A1N(n177), .Y(n307)
         );
  OAI2BB2X1M U309 ( .B0(n437), .B1(n177), .A0N(REG0[2]), .A1N(n177), .Y(n308)
         );
  OAI2BB2X1M U310 ( .B0(n438), .B1(n177), .A0N(REG0[3]), .A1N(n177), .Y(n309)
         );
  OAI2BB2X1M U311 ( .B0(n431), .B1(n177), .A0N(REG0[4]), .A1N(n177), .Y(n310)
         );
  OAI2BB2X1M U312 ( .B0(n432), .B1(n177), .A0N(REG0[5]), .A1N(n177), .Y(n311)
         );
  OAI2BB2X1M U313 ( .B0(n430), .B1(n177), .A0N(REG0[6]), .A1N(n177), .Y(n312)
         );
  OAI2BB2X1M U314 ( .B0(n433), .B1(n177), .A0N(REG0[7]), .A1N(n177), .Y(n313)
         );
  OAI2BB2X1M U315 ( .B0(n434), .B1(n158), .A0N(memory_12__0_), .A1N(n158), .Y(
        n210) );
  OAI2BB2X1M U316 ( .B0(n436), .B1(n158), .A0N(memory_12__1_), .A1N(n158), .Y(
        n211) );
  OAI2BB2X1M U317 ( .B0(n437), .B1(n158), .A0N(memory_12__2_), .A1N(n158), .Y(
        n212) );
  OAI2BB2X1M U318 ( .B0(n438), .B1(n158), .A0N(memory_12__3_), .A1N(n158), .Y(
        n213) );
  OAI2BB2X1M U319 ( .B0(n431), .B1(n158), .A0N(memory_12__4_), .A1N(n158), .Y(
        n214) );
  OAI2BB2X1M U320 ( .B0(n432), .B1(n158), .A0N(memory_12__5_), .A1N(n158), .Y(
        n215) );
  OAI2BB2X1M U321 ( .B0(n430), .B1(n158), .A0N(memory_12__6_), .A1N(n158), .Y(
        n216) );
  OAI2BB2X1M U322 ( .B0(n433), .B1(n158), .A0N(memory_12__7_), .A1N(n158), .Y(
        n217) );
  OAI2BB2X1M U323 ( .B0(n434), .B1(n161), .A0N(memory_10__0_), .A1N(n161), .Y(
        n226) );
  OAI2BB2X1M U324 ( .B0(n436), .B1(n161), .A0N(memory_10__1_), .A1N(n161), .Y(
        n227) );
  OAI2BB2X1M U325 ( .B0(n437), .B1(n161), .A0N(memory_10__2_), .A1N(n161), .Y(
        n228) );
  OAI2BB2X1M U326 ( .B0(n438), .B1(n161), .A0N(memory_10__3_), .A1N(n161), .Y(
        n229) );
  OAI2BB2X1M U327 ( .B0(n431), .B1(n161), .A0N(memory_10__4_), .A1N(n161), .Y(
        n230) );
  OAI2BB2X1M U328 ( .B0(n432), .B1(n161), .A0N(memory_10__5_), .A1N(n161), .Y(
        n231) );
  OAI2BB2X1M U329 ( .B0(n430), .B1(n161), .A0N(memory_10__6_), .A1N(n161), .Y(
        n232) );
  OAI2BB2X1M U330 ( .B0(n433), .B1(n161), .A0N(memory_10__7_), .A1N(n161), .Y(
        n233) );
  OAI2BB2X1M U331 ( .B0(n434), .B1(n165), .A0N(memory_8__0_), .A1N(n165), .Y(
        n242) );
  OAI2BB2X1M U332 ( .B0(n436), .B1(n165), .A0N(memory_8__1_), .A1N(n165), .Y(
        n243) );
  OAI2BB2X1M U333 ( .B0(n437), .B1(n165), .A0N(memory_8__2_), .A1N(n165), .Y(
        n244) );
  OAI2BB2X1M U334 ( .B0(n438), .B1(n165), .A0N(memory_8__3_), .A1N(n165), .Y(
        n245) );
  OAI2BB2X1M U335 ( .B0(n431), .B1(n165), .A0N(memory_8__4_), .A1N(n165), .Y(
        n246) );
  OAI2BB2X1M U336 ( .B0(n432), .B1(n165), .A0N(memory_8__5_), .A1N(n165), .Y(
        n247) );
  OAI2BB2X1M U337 ( .B0(n430), .B1(n165), .A0N(memory_8__6_), .A1N(n165), .Y(
        n248) );
  OAI2BB2X1M U338 ( .B0(n433), .B1(n165), .A0N(memory_8__7_), .A1N(n165), .Y(
        n249) );
  OAI2BB2X1M U339 ( .B0(n434), .B1(n174), .A0N(REG2[0]), .A1N(n174), .Y(n290)
         );
  OAI2BB2X1M U340 ( .B0(n433), .B1(n174), .A0N(REG2[7]), .A1N(n174), .Y(n297)
         );
  AOI22X1M U341 ( .A0(memory_10__0_), .A1(n410), .B0(memory_11__0_), .B1(n409), 
        .Y(n143) );
  AOI22X1M U342 ( .A0(memory_8__0_), .A1(n413), .B0(memory_9__0_), .B1(n411), 
        .Y(n142) );
  CLKNAND2X2M U343 ( .A(Address[3]), .B(n407), .Y(n390) );
  AOI21X1M U344 ( .A0(n143), .A1(n142), .B0(n390), .Y(n317) );
  AOI22X1M U345 ( .A0(memory_14__0_), .A1(n410), .B0(memory_15__0_), .B1(n409), 
        .Y(n145) );
  AOI22X1M U346 ( .A0(memory_12__0_), .A1(n413), .B0(memory_13__0_), .B1(n411), 
        .Y(n144) );
  CLKNAND2X2M U347 ( .A(Address[3]), .B(Address[2]), .Y(n393) );
  AOI21X1M U348 ( .A0(n145), .A1(n144), .B0(n393), .Y(n316) );
  AOI22X1M U349 ( .A0(REG2[0]), .A1(n410), .B0(REG3[0]), .B1(n409), .Y(n147)
         );
  AOI22X1M U350 ( .A0(REG0[0]), .A1(n413), .B0(REG1[0]), .B1(n411), .Y(n146)
         );
  CLKNAND2X2M U351 ( .A(n407), .B(n406), .Y(n396) );
  AOI21X1M U352 ( .A0(n147), .A1(n146), .B0(n396), .Y(n315) );
  AOI22X1M U353 ( .A0(memory_6__0_), .A1(n410), .B0(memory_7__0_), .B1(n409), 
        .Y(n149) );
  AOI22X1M U354 ( .A0(memory_4__0_), .A1(n413), .B0(memory_5__0_), .B1(n411), 
        .Y(n148) );
  CLKNAND2X2M U355 ( .A(Address[2]), .B(n406), .Y(n399) );
  AOI21X1M U356 ( .A0(n149), .A1(n148), .B0(n399), .Y(n314) );
  OR4X1M U357 ( .A(n317), .B(n316), .C(n315), .D(n314), .Y(N43) );
  AOI22X1M U358 ( .A0(memory_10__1_), .A1(n410), .B0(memory_11__1_), .B1(n409), 
        .Y(n319) );
  AOI22X1M U359 ( .A0(memory_8__1_), .A1(n413), .B0(memory_9__1_), .B1(n411), 
        .Y(n318) );
  AOI21X1M U360 ( .A0(n319), .A1(n318), .B0(n390), .Y(n329) );
  AOI22X1M U361 ( .A0(memory_14__1_), .A1(n410), .B0(memory_15__1_), .B1(n409), 
        .Y(n321) );
  AOI22X1M U362 ( .A0(memory_12__1_), .A1(n413), .B0(memory_13__1_), .B1(n411), 
        .Y(n320) );
  AOI21X1M U363 ( .A0(n321), .A1(n320), .B0(n393), .Y(n328) );
  AOI22X1M U364 ( .A0(REG2[1]), .A1(n410), .B0(REG3[1]), .B1(n409), .Y(n323)
         );
  AOI22X1M U365 ( .A0(REG0[1]), .A1(n413), .B0(REG1[1]), .B1(n411), .Y(n322)
         );
  AOI21X1M U366 ( .A0(n323), .A1(n322), .B0(n396), .Y(n327) );
  AOI22X1M U367 ( .A0(memory_6__1_), .A1(n410), .B0(memory_7__1_), .B1(n409), 
        .Y(n325) );
  AOI22X1M U368 ( .A0(memory_4__1_), .A1(n413), .B0(memory_5__1_), .B1(n411), 
        .Y(n324) );
  AOI21X1M U369 ( .A0(n325), .A1(n324), .B0(n399), .Y(n326) );
  OR4X1M U370 ( .A(n329), .B(n328), .C(n327), .D(n326), .Y(N42) );
  AOI22X1M U371 ( .A0(memory_10__2_), .A1(n410), .B0(memory_11__2_), .B1(n409), 
        .Y(n331) );
  AOI22X1M U372 ( .A0(memory_8__2_), .A1(n413), .B0(memory_9__2_), .B1(n411), 
        .Y(n330) );
  AOI21X1M U373 ( .A0(n331), .A1(n330), .B0(n390), .Y(n341) );
  AOI22X1M U374 ( .A0(memory_14__2_), .A1(n410), .B0(memory_15__2_), .B1(n409), 
        .Y(n333) );
  AOI22X1M U375 ( .A0(memory_12__2_), .A1(n413), .B0(memory_13__2_), .B1(n411), 
        .Y(n332) );
  AOI21X1M U376 ( .A0(n333), .A1(n332), .B0(n393), .Y(n340) );
  AOI22X1M U377 ( .A0(REG2[2]), .A1(n410), .B0(REG3[2]), .B1(n409), .Y(n335)
         );
  AOI22X1M U378 ( .A0(REG0[2]), .A1(n413), .B0(REG1[2]), .B1(n411), .Y(n334)
         );
  AOI21X1M U379 ( .A0(n335), .A1(n334), .B0(n396), .Y(n339) );
  AOI22X1M U380 ( .A0(memory_6__2_), .A1(n410), .B0(memory_7__2_), .B1(n409), 
        .Y(n337) );
  AOI22X1M U381 ( .A0(memory_4__2_), .A1(n413), .B0(memory_5__2_), .B1(n411), 
        .Y(n336) );
  AOI21X1M U382 ( .A0(n337), .A1(n336), .B0(n399), .Y(n338) );
  OR4X1M U383 ( .A(n341), .B(n340), .C(n339), .D(n338), .Y(N41) );
  AOI22X1M U384 ( .A0(memory_10__3_), .A1(n410), .B0(memory_11__3_), .B1(n409), 
        .Y(n343) );
  AOI22X1M U385 ( .A0(memory_8__3_), .A1(n413), .B0(memory_9__3_), .B1(n411), 
        .Y(n342) );
  AOI21X1M U386 ( .A0(n343), .A1(n342), .B0(n390), .Y(n353) );
  AOI22X1M U387 ( .A0(memory_14__3_), .A1(n410), .B0(memory_15__3_), .B1(n409), 
        .Y(n345) );
  AOI22X1M U388 ( .A0(memory_12__3_), .A1(n413), .B0(memory_13__3_), .B1(n411), 
        .Y(n344) );
  AOI21X1M U389 ( .A0(n345), .A1(n344), .B0(n393), .Y(n352) );
  AOI22X1M U390 ( .A0(REG2[3]), .A1(n410), .B0(REG3[3]), .B1(n409), .Y(n347)
         );
  AOI22X1M U391 ( .A0(REG0[3]), .A1(n413), .B0(REG1[3]), .B1(n411), .Y(n346)
         );
  AOI21X1M U392 ( .A0(n347), .A1(n346), .B0(n396), .Y(n351) );
  AOI22X1M U393 ( .A0(memory_6__3_), .A1(n410), .B0(memory_7__3_), .B1(n409), 
        .Y(n349) );
  AOI22X1M U394 ( .A0(memory_4__3_), .A1(n413), .B0(memory_5__3_), .B1(n411), 
        .Y(n348) );
  AOI21X1M U395 ( .A0(n349), .A1(n348), .B0(n399), .Y(n350) );
  OR4X1M U396 ( .A(n353), .B(n352), .C(n351), .D(n350), .Y(N40) );
  AOI22X1M U397 ( .A0(memory_10__4_), .A1(n410), .B0(memory_11__4_), .B1(n409), 
        .Y(n355) );
  AOI22X1M U398 ( .A0(memory_8__4_), .A1(n413), .B0(memory_9__4_), .B1(n411), 
        .Y(n354) );
  AOI21X1M U399 ( .A0(n355), .A1(n354), .B0(n390), .Y(n365) );
  AOI22X1M U400 ( .A0(memory_14__4_), .A1(n410), .B0(memory_15__4_), .B1(n409), 
        .Y(n357) );
  AOI22X1M U401 ( .A0(memory_12__4_), .A1(n413), .B0(memory_13__4_), .B1(n411), 
        .Y(n356) );
  AOI21X1M U402 ( .A0(n357), .A1(n356), .B0(n393), .Y(n364) );
  AOI22X1M U403 ( .A0(REG2[4]), .A1(n410), .B0(REG3[4]), .B1(n409), .Y(n359)
         );
  AOI22X1M U404 ( .A0(REG0[4]), .A1(n413), .B0(REG1[4]), .B1(n411), .Y(n358)
         );
  AOI21X1M U405 ( .A0(n359), .A1(n358), .B0(n396), .Y(n363) );
  AOI22X1M U406 ( .A0(memory_6__4_), .A1(n410), .B0(memory_7__4_), .B1(n409), 
        .Y(n361) );
  AOI22X1M U407 ( .A0(memory_4__4_), .A1(n413), .B0(memory_5__4_), .B1(n411), 
        .Y(n360) );
  AOI21X1M U408 ( .A0(n361), .A1(n360), .B0(n399), .Y(n362) );
  OR4X1M U409 ( .A(n365), .B(n364), .C(n363), .D(n362), .Y(N39) );
  AOI22X1M U410 ( .A0(memory_10__5_), .A1(n410), .B0(memory_11__5_), .B1(n409), 
        .Y(n367) );
  AOI22X1M U411 ( .A0(memory_8__5_), .A1(n413), .B0(memory_9__5_), .B1(n411), 
        .Y(n366) );
  AOI21X1M U412 ( .A0(n367), .A1(n366), .B0(n390), .Y(n377) );
  AOI22X1M U413 ( .A0(memory_14__5_), .A1(n410), .B0(memory_15__5_), .B1(n409), 
        .Y(n369) );
  AOI22X1M U414 ( .A0(memory_12__5_), .A1(n413), .B0(memory_13__5_), .B1(n411), 
        .Y(n368) );
  AOI21X1M U415 ( .A0(n369), .A1(n368), .B0(n393), .Y(n376) );
  AOI22X1M U416 ( .A0(REG2[5]), .A1(n410), .B0(REG3[5]), .B1(n409), .Y(n371)
         );
  AOI22X1M U417 ( .A0(REG0[5]), .A1(n413), .B0(REG1[5]), .B1(n411), .Y(n370)
         );
  AOI21X1M U418 ( .A0(n371), .A1(n370), .B0(n396), .Y(n375) );
  AOI22X1M U419 ( .A0(memory_6__5_), .A1(n410), .B0(memory_7__5_), .B1(n409), 
        .Y(n373) );
  AOI22X1M U420 ( .A0(memory_4__5_), .A1(n413), .B0(memory_5__5_), .B1(n411), 
        .Y(n372) );
  AOI21X1M U421 ( .A0(n373), .A1(n372), .B0(n399), .Y(n374) );
  OR4X1M U422 ( .A(n377), .B(n376), .C(n375), .D(n374), .Y(N38) );
  AOI22X1M U423 ( .A0(memory_10__6_), .A1(n410), .B0(memory_11__6_), .B1(n409), 
        .Y(n379) );
  AOI22X1M U424 ( .A0(memory_8__6_), .A1(n413), .B0(memory_9__6_), .B1(n411), 
        .Y(n378) );
  AOI21X1M U425 ( .A0(n379), .A1(n378), .B0(n390), .Y(n389) );
  AOI22X1M U426 ( .A0(memory_14__6_), .A1(n410), .B0(memory_15__6_), .B1(n409), 
        .Y(n381) );
  AOI22X1M U427 ( .A0(memory_12__6_), .A1(n413), .B0(memory_13__6_), .B1(n411), 
        .Y(n380) );
  AOI21X1M U428 ( .A0(n381), .A1(n380), .B0(n393), .Y(n388) );
  AOI22X1M U429 ( .A0(REG2[6]), .A1(n410), .B0(REG3[6]), .B1(n409), .Y(n383)
         );
  AOI22X1M U430 ( .A0(REG0[6]), .A1(n413), .B0(REG1[6]), .B1(n411), .Y(n382)
         );
  AOI21X1M U431 ( .A0(n383), .A1(n382), .B0(n396), .Y(n387) );
  AOI22X1M U432 ( .A0(memory_6__6_), .A1(n410), .B0(memory_7__6_), .B1(n409), 
        .Y(n385) );
  AOI22X1M U433 ( .A0(memory_4__6_), .A1(n413), .B0(memory_5__6_), .B1(n411), 
        .Y(n384) );
  AOI21X1M U434 ( .A0(n385), .A1(n384), .B0(n399), .Y(n386) );
  OR4X1M U435 ( .A(n389), .B(n388), .C(n387), .D(n386), .Y(N37) );
  AOI22X1M U436 ( .A0(memory_10__7_), .A1(n410), .B0(memory_11__7_), .B1(n409), 
        .Y(n392) );
  AOI22X1M U437 ( .A0(memory_8__7_), .A1(n413), .B0(memory_9__7_), .B1(n411), 
        .Y(n391) );
  AOI21X1M U438 ( .A0(n392), .A1(n391), .B0(n390), .Y(n405) );
  AOI22X1M U439 ( .A0(memory_14__7_), .A1(n410), .B0(test_so2), .B1(n409), .Y(
        n395) );
  AOI22X1M U440 ( .A0(memory_12__7_), .A1(n413), .B0(memory_13__7_), .B1(n411), 
        .Y(n394) );
  AOI21X1M U441 ( .A0(n395), .A1(n394), .B0(n393), .Y(n404) );
  AOI22X1M U442 ( .A0(REG2[7]), .A1(n410), .B0(REG3[7]), .B1(n409), .Y(n398)
         );
  AOI22X1M U443 ( .A0(REG0[7]), .A1(n413), .B0(REG1[7]), .B1(n411), .Y(n397)
         );
  AOI21X1M U444 ( .A0(n398), .A1(n397), .B0(n396), .Y(n403) );
  AOI22X1M U445 ( .A0(memory_6__7_), .A1(n410), .B0(memory_7__7_), .B1(n409), 
        .Y(n401) );
  AOI22X1M U446 ( .A0(test_so1), .A1(n413), .B0(memory_5__7_), .B1(n411), .Y(
        n400) );
  AOI21X1M U447 ( .A0(n401), .A1(n400), .B0(n399), .Y(n402) );
  OR4X1M U448 ( .A(n405), .B(n404), .C(n403), .D(n402), .Y(N36) );
  DLY1X1M U449 ( .A(test_se), .Y(n442) );
  DLY1X1M U450 ( .A(test_se), .Y(n443) );
  DLY1X1M U451 ( .A(test_se), .Y(n444) );
  DLY1X1M U452 ( .A(test_se), .Y(n445) );
endmodule


module SYS_CTRL_test_1 ( CLK, RST, ALU_OUT, OUT_Valid, RX_P_DATA, RX_D_VLD, 
        RdData, RdData_Valid, FIFO_FULL, ALU_FUN, EN, CLK_EN, Address, WrEn, 
        RdEn, WrData, TX_P_DATA, TX_D_VLD, clk_div_en, test_si, test_so, 
        test_se );
  input [15:0] ALU_OUT;
  input [7:0] RX_P_DATA;
  input [7:0] RdData;
  output [3:0] ALU_FUN;
  output [3:0] Address;
  output [7:0] WrData;
  output [7:0] TX_P_DATA;
  input CLK, RST, OUT_Valid, RX_D_VLD, RdData_Valid, FIFO_FULL, test_si,
         test_se;
  output EN, CLK_EN, WrEn, RdEn, TX_D_VLD, clk_div_en, test_so;
  wire   n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n55, n56, n57, n58, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n59, n60, n61, n62,
         n63, n64, n87, n155, n156, n157, n160, n161, n162, n163, n164, n165,
         n166, n167, n168, n169, n170, n171, n172, n173, n174, n175, n176,
         n177, n178;
  wire   [3:0] current_state;

  SDFFRX1M alu_out_low_reg_reg_6_ ( .D(n135), .SI(n165), .SE(test_se), .CK(CLK), .RN(RST), .Q(n164), .QN(n26) );
  SDFFRX1M alu_out_low_reg_reg_5_ ( .D(n136), .SI(n166), .SE(test_se), .CK(CLK), .RN(RST), .Q(n165), .QN(n27) );
  SDFFRX1M alu_out_low_reg_reg_4_ ( .D(n137), .SI(n167), .SE(test_se), .CK(CLK), .RN(RST), .Q(n166), .QN(n28) );
  SDFFRX1M alu_out_low_reg_reg_3_ ( .D(n138), .SI(n168), .SE(test_se), .CK(CLK), .RN(RST), .Q(n167), .QN(n29) );
  SDFFRX1M alu_out_low_reg_reg_2_ ( .D(n139), .SI(n169), .SE(test_se), .CK(CLK), .RN(RST), .Q(n168), .QN(n30) );
  SDFFRX1M alu_out_low_reg_reg_1_ ( .D(n140), .SI(n170), .SE(test_se), .CK(CLK), .RN(RST), .Q(n169), .QN(n31) );
  SDFFRX1M alu_out_low_reg_reg_0_ ( .D(n141), .SI(n171), .SE(test_se), .CK(CLK), .RN(RST), .Q(n170), .QN(n32) );
  SDFFRX1M alu_out_low_reg_reg_7_ ( .D(n142), .SI(n164), .SE(test_se), .CK(CLK), .RN(RST), .Q(n163), .QN(n25) );
  SDFFRX1M alu_out_high_reg_reg_0_ ( .D(n143), .SI(test_si), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(n178), .QN(n40) );
  SDFFRX1M alu_out_high_reg_reg_1_ ( .D(n144), .SI(n178), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(n177), .QN(n39) );
  SDFFRX1M alu_out_high_reg_reg_2_ ( .D(n145), .SI(n177), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(n176), .QN(n38) );
  SDFFRX1M alu_out_high_reg_reg_3_ ( .D(n146), .SI(n176), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(n175), .QN(n37) );
  SDFFRX1M alu_out_high_reg_reg_4_ ( .D(n147), .SI(n175), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(n174), .QN(n36) );
  SDFFRX1M alu_out_high_reg_reg_5_ ( .D(n148), .SI(n174), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(n173), .QN(n35) );
  SDFFRX1M alu_out_high_reg_reg_6_ ( .D(n149), .SI(n173), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(n172), .QN(n34) );
  SDFFRX1M alu_out_high_reg_reg_7_ ( .D(n150), .SI(n172), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(n171), .QN(n33) );
  SDFFRX1M rf_addr_reg_reg_2_ ( .D(n133), .SI(n161), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(n160), .QN(n56) );
  SDFFRX1M rf_addr_reg_reg_3_ ( .D(n134), .SI(n160), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(test_so), .QN(n55) );
  SDFFRX1M rf_addr_reg_reg_1_ ( .D(n132), .SI(n162), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(n161), .QN(n57) );
  SDFFRX1M rf_addr_reg_reg_0_ ( .D(n131), .SI(current_state[3]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(n162), .QN(n58) );
  SDFFRQX2M current_state_reg_1_ ( .D(n153), .SI(current_state[0]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(current_state[1]) );
  SDFFRQX2M current_state_reg_0_ ( .D(n154), .SI(n163), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(current_state[0]) );
  SDFFRQX2M current_state_reg_2_ ( .D(n152), .SI(current_state[1]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(current_state[2]) );
  SDFFRQX2M current_state_reg_3_ ( .D(n151), .SI(current_state[2]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(current_state[3]) );
  AND3X2M U29 ( .A(n84), .B(n88), .C(n86), .Y(n43) );
  OAI222X1M U30 ( .A0(n49), .A1(n112), .B0(n58), .B1(n130), .C0(n124), .C1(
        n115), .Y(Address[0]) );
  NOR2X2M U31 ( .A(n49), .B(n44), .Y(EN) );
  NOR2X2M U32 ( .A(n44), .B(n124), .Y(ALU_FUN[0]) );
  NOR2X2M U33 ( .A(n44), .B(n121), .Y(ALU_FUN[3]) );
  NOR2X2M U34 ( .A(n44), .B(n122), .Y(ALU_FUN[2]) );
  OAI22X1M U35 ( .A0(n121), .A1(n115), .B0(n55), .B1(n130), .Y(Address[3]) );
  OAI22X1M U36 ( .A0(n122), .A1(n115), .B0(n56), .B1(n130), .Y(Address[2]) );
  OAI22X1M U37 ( .A0(n123), .A1(n115), .B0(n57), .B1(n130), .Y(Address[1]) );
  OAI31X1M U38 ( .A0(n108), .A1(n51), .A2(n107), .B0(n109), .Y(n101) );
  NAND2BX2M U39 ( .AN(EN), .B(n67), .Y(CLK_EN) );
  NAND2X2M U40 ( .A(n125), .B(n126), .Y(TX_D_VLD) );
  NOR3X2M U41 ( .A(n59), .B(n114), .C(n87), .Y(n70) );
  NOR4X1M U42 ( .A(n114), .B(n64), .C(n100), .D(n61), .Y(n84) );
  INVX2M U43 ( .A(n115), .Y(n61) );
  INVX2M U44 ( .A(n65), .Y(n47) );
  INVX2M U45 ( .A(n113), .Y(n59) );
  AND2X2M U46 ( .A(n73), .B(n54), .Y(n75) );
  AND2X2M U47 ( .A(n73), .B(n63), .Y(n76) );
  INVX2M U48 ( .A(WrEn), .Y(n48) );
  INVX2M U49 ( .A(n112), .Y(n87) );
  INVX2M U50 ( .A(n67), .Y(n54) );
  INVX2M U51 ( .A(n66), .Y(n64) );
  INVX2M U52 ( .A(n44), .Y(n60) );
  INVX2M U53 ( .A(n88), .Y(n63) );
  NOR2X2M U54 ( .A(n62), .B(n155), .Y(n129) );
  NAND2X2M U55 ( .A(n116), .B(n128), .Y(n67) );
  BUFX2M U56 ( .A(n91), .Y(n44) );
  AOI22X1M U57 ( .A0(n90), .A1(n128), .B0(n129), .B1(n120), .Y(n91) );
  AND2X2M U58 ( .A(n117), .B(n127), .Y(n114) );
  NAND2X2M U59 ( .A(n118), .B(n45), .Y(n126) );
  OAI2BB1X2M U60 ( .A0N(n127), .A1N(n128), .B0(n95), .Y(n118) );
  NAND2X2M U61 ( .A(n117), .B(n129), .Y(n115) );
  NAND2X2M U62 ( .A(n120), .B(n127), .Y(n112) );
  NAND2X2M U63 ( .A(n129), .B(n128), .Y(n95) );
  NAND4X2M U64 ( .A(n66), .B(n67), .C(n68), .D(n69), .Y(n65) );
  NOR3X2M U65 ( .A(n63), .B(n72), .C(n61), .Y(n68) );
  NOR4BX1M U66 ( .AN(n70), .B(n60), .C(n71), .D(n49), .Y(n69) );
  NOR4BX1M U67 ( .AN(n89), .B(n71), .C(n60), .D(n72), .Y(n86) );
  NOR2X2M U68 ( .A(n51), .B(n48), .Y(WrData[4]) );
  NOR2X2M U69 ( .A(n50), .B(n48), .Y(WrData[6]) );
  OAI221X1M U70 ( .A0(n96), .A1(n97), .B0(n46), .B1(n157), .C0(n98), .Y(n152)
         );
  NOR4BX1M U71 ( .AN(n95), .B(n61), .C(n59), .D(n87), .Y(n96) );
  NAND2X2M U72 ( .A(n119), .B(n45), .Y(n125) );
  NOR2X2M U73 ( .A(n49), .B(n70), .Y(WrEn) );
  AND3X2M U74 ( .A(n84), .B(n85), .C(n86), .Y(n73) );
  OAI22X1M U75 ( .A0(n46), .A1(n155), .B0(n99), .B1(n97), .Y(n153) );
  NOR4X1M U76 ( .A(n63), .B(n100), .C(n59), .D(n101), .Y(n99) );
  NOR2X2M U77 ( .A(n49), .B(n115), .Y(RdEn) );
  NOR2X2M U78 ( .A(n44), .B(n123), .Y(ALU_FUN[1]) );
  NOR2X2M U79 ( .A(n157), .B(n90), .Y(n72) );
  NAND2X2M U80 ( .A(n120), .B(n90), .Y(n88) );
  NOR2X2M U81 ( .A(n70), .B(n123), .Y(WrData[1]) );
  NOR2X2M U82 ( .A(n70), .B(n122), .Y(WrData[2]) );
  NOR2X2M U83 ( .A(n70), .B(n121), .Y(WrData[3]) );
  NOR2X2M U84 ( .A(n70), .B(n124), .Y(WrData[0]) );
  NAND2X2M U85 ( .A(n117), .B(n90), .Y(n66) );
  NAND2X2M U86 ( .A(n116), .B(n120), .Y(n113) );
  AND2X2M U87 ( .A(n116), .B(n117), .Y(n100) );
  INVX2M U88 ( .A(n97), .Y(n46) );
  NAND3X2M U89 ( .A(n53), .B(n51), .C(n93), .Y(n98) );
  OR2X2M U90 ( .A(n118), .B(n119), .Y(n71) );
  NOR2X2M U91 ( .A(current_state[0]), .B(current_state[1]), .Y(n90) );
  NOR2X2M U92 ( .A(n157), .B(current_state[3]), .Y(n120) );
  NOR2X2M U93 ( .A(n156), .B(current_state[2]), .Y(n128) );
  NOR2X2M U94 ( .A(n62), .B(current_state[1]), .Y(n116) );
  INVX2M U95 ( .A(RX_D_VLD), .Y(n49) );
  INVX2M U96 ( .A(current_state[0]), .Y(n62) );
  INVX2M U97 ( .A(current_state[1]), .Y(n155) );
  INVX2M U98 ( .A(current_state[2]), .Y(n157) );
  INVX2M U99 ( .A(current_state[3]), .Y(n156) );
  NOR2X2M U100 ( .A(n155), .B(current_state[0]), .Y(n127) );
  NAND2X2M U101 ( .A(n114), .B(RX_D_VLD), .Y(n130) );
  NOR2X2M U102 ( .A(current_state[2]), .B(current_state[3]), .Y(n117) );
  NAND2X2M U103 ( .A(RX_P_DATA[1]), .B(RX_D_VLD), .Y(n123) );
  NAND2X2M U104 ( .A(RX_P_DATA[0]), .B(RX_D_VLD), .Y(n124) );
  NAND3X2M U105 ( .A(n52), .B(n50), .C(RX_P_DATA[0]), .Y(n108) );
  NOR2X2M U106 ( .A(n54), .B(n87), .Y(n109) );
  OAI22X1M U107 ( .A0(n65), .A1(n53), .B0(n47), .B1(n58), .Y(n131) );
  OAI22X1M U108 ( .A0(n65), .A1(n52), .B0(n47), .B1(n56), .Y(n133) );
  OAI211X2M U109 ( .A0(n46), .A1(n62), .B0(n102), .C0(n98), .Y(n154) );
  OAI21X2M U110 ( .A0(n101), .A1(n105), .B0(n46), .Y(n102) );
  OAI31X1M U111 ( .A0(n106), .A1(RX_P_DATA[0]), .A2(n107), .B0(n44), .Y(n105)
         );
  NAND3X2M U112 ( .A(n51), .B(n50), .C(n52), .Y(n106) );
  NAND2X2M U113 ( .A(RX_P_DATA[2]), .B(RX_D_VLD), .Y(n122) );
  NAND2X2M U114 ( .A(RX_P_DATA[3]), .B(RX_D_VLD), .Y(n121) );
  OAI22X1M U115 ( .A0(n40), .A1(n125), .B0(n32), .B1(n126), .Y(TX_P_DATA[0])
         );
  OAI22X1M U116 ( .A0(n39), .A1(n125), .B0(n31), .B1(n126), .Y(TX_P_DATA[1])
         );
  OAI22X1M U117 ( .A0(n38), .A1(n125), .B0(n30), .B1(n126), .Y(TX_P_DATA[2])
         );
  OAI22X1M U118 ( .A0(n37), .A1(n125), .B0(n29), .B1(n126), .Y(TX_P_DATA[3])
         );
  OAI22X1M U119 ( .A0(n36), .A1(n125), .B0(n28), .B1(n126), .Y(TX_P_DATA[4])
         );
  OAI22X1M U120 ( .A0(n35), .A1(n125), .B0(n27), .B1(n126), .Y(TX_P_DATA[5])
         );
  OAI22X1M U121 ( .A0(n34), .A1(n125), .B0(n26), .B1(n126), .Y(TX_P_DATA[6])
         );
  OAI22X1M U122 ( .A0(n33), .A1(n125), .B0(n25), .B1(n126), .Y(TX_P_DATA[7])
         );
  AND3X2M U123 ( .A(n90), .B(current_state[2]), .C(current_state[3]), .Y(n119)
         );
  OAI2BB2X1M U124 ( .B0(n47), .B1(n57), .A0N(n47), .A1N(RX_P_DATA[1]), .Y(n132) );
  OAI2BB2X1M U125 ( .B0(n47), .B1(n55), .A0N(n47), .A1N(RX_P_DATA[3]), .Y(n134) );
  OAI2BB2X1M U126 ( .B0(n43), .B1(n33), .A0N(ALU_OUT[15]), .A1N(n43), .Y(n150)
         );
  OAI2BB2X1M U127 ( .B0(n43), .B1(n34), .A0N(ALU_OUT[14]), .A1N(n43), .Y(n149)
         );
  OAI2BB2X1M U128 ( .B0(n43), .B1(n35), .A0N(ALU_OUT[13]), .A1N(n43), .Y(n148)
         );
  OAI2BB2X1M U129 ( .B0(n43), .B1(n36), .A0N(ALU_OUT[12]), .A1N(n43), .Y(n147)
         );
  OAI2BB2X1M U130 ( .B0(n43), .B1(n37), .A0N(ALU_OUT[11]), .A1N(n43), .Y(n146)
         );
  OAI2BB2X1M U131 ( .B0(n43), .B1(n38), .A0N(ALU_OUT[10]), .A1N(n43), .Y(n145)
         );
  OAI2BB2X1M U132 ( .B0(n43), .B1(n39), .A0N(ALU_OUT[9]), .A1N(n43), .Y(n144)
         );
  OAI2BB2X1M U133 ( .B0(n43), .B1(n40), .A0N(ALU_OUT[8]), .A1N(n43), .Y(n143)
         );
  OAI21X2M U134 ( .A0(n46), .A1(n156), .B0(n92), .Y(n151) );
  AOI32X1M U135 ( .A0(n93), .A1(RX_P_DATA[0]), .A2(RX_P_DATA[4]), .B0(n46), 
        .B1(n94), .Y(n92) );
  NAND4X2M U136 ( .A(n44), .B(n95), .C(n67), .D(n88), .Y(n94) );
  OAI21X2M U137 ( .A0(n73), .A1(n25), .B0(n83), .Y(n142) );
  AOI22X1M U138 ( .A0(ALU_OUT[7]), .A1(n75), .B0(RdData[7]), .B1(n76), .Y(n83)
         );
  OAI21X2M U139 ( .A0(n73), .A1(n32), .B0(n82), .Y(n141) );
  AOI22X1M U140 ( .A0(ALU_OUT[0]), .A1(n75), .B0(RdData[0]), .B1(n76), .Y(n82)
         );
  OAI21X2M U141 ( .A0(n73), .A1(n31), .B0(n81), .Y(n140) );
  AOI22X1M U142 ( .A0(ALU_OUT[1]), .A1(n75), .B0(RdData[1]), .B1(n76), .Y(n81)
         );
  OAI21X2M U143 ( .A0(n73), .A1(n30), .B0(n80), .Y(n139) );
  AOI22X1M U144 ( .A0(ALU_OUT[2]), .A1(n75), .B0(RdData[2]), .B1(n76), .Y(n80)
         );
  OAI21X2M U145 ( .A0(n73), .A1(n29), .B0(n79), .Y(n138) );
  AOI22X1M U146 ( .A0(ALU_OUT[3]), .A1(n75), .B0(RdData[3]), .B1(n76), .Y(n79)
         );
  OAI21X2M U147 ( .A0(n73), .A1(n28), .B0(n78), .Y(n137) );
  AOI22X1M U148 ( .A0(ALU_OUT[4]), .A1(n75), .B0(RdData[4]), .B1(n76), .Y(n78)
         );
  OAI21X2M U149 ( .A0(n73), .A1(n27), .B0(n77), .Y(n136) );
  AOI22X1M U150 ( .A0(ALU_OUT[5]), .A1(n75), .B0(RdData[5]), .B1(n76), .Y(n77)
         );
  OAI21X2M U151 ( .A0(n73), .A1(n26), .B0(n74), .Y(n135) );
  AOI22X1M U152 ( .A0(ALU_OUT[6]), .A1(n75), .B0(RdData[6]), .B1(n76), .Y(n74)
         );
  AND2X2M U153 ( .A(RX_P_DATA[5]), .B(WrEn), .Y(WrData[5]) );
  AND2X2M U154 ( .A(RX_P_DATA[7]), .B(WrEn), .Y(WrData[7]) );
  NAND3X2M U155 ( .A(n85), .B(n89), .C(n110), .Y(n97) );
  AOI22X1M U156 ( .A0(FIFO_FULL), .A1(n71), .B0(n49), .B1(n111), .Y(n110) );
  NAND4X2M U157 ( .A(n84), .B(n44), .C(n112), .D(n113), .Y(n111) );
  AND3X2M U158 ( .A(n64), .B(RX_P_DATA[3]), .C(RX_P_DATA[7]), .Y(n103) );
  AND4X2M U159 ( .A(n46), .B(n103), .C(RX_P_DATA[6]), .D(n104), .Y(n93) );
  NOR3X2M U160 ( .A(n52), .B(RX_P_DATA[5]), .C(RX_P_DATA[1]), .Y(n104) );
  NAND3X2M U161 ( .A(n103), .B(RX_P_DATA[1]), .C(RX_P_DATA[5]), .Y(n107) );
  INVX2M U162 ( .A(FIFO_FULL), .Y(n45) );
  OR2X2M U163 ( .A(RdData_Valid), .B(n88), .Y(n85) );
  OR2X2M U164 ( .A(OUT_Valid), .B(n67), .Y(n89) );
  INVX2M U165 ( .A(RX_P_DATA[2]), .Y(n52) );
  INVX2M U166 ( .A(RX_P_DATA[4]), .Y(n51) );
  INVX2M U167 ( .A(RX_P_DATA[6]), .Y(n50) );
  INVX2M U168 ( .A(RX_P_DATA[0]), .Y(n53) );
  INVX2M U3 ( .A(1'b0), .Y(clk_div_en) );
endmodule


module CLK_GATE ( CLK, CLK_EN, GATED_CLK );
  input CLK, CLK_EN;
  output GATED_CLK;
  wire   clk_en_latch;

  TLATNX2M clk_en_latch_reg ( .D(CLK_EN), .GN(CLK), .Q(clk_en_latch) );
  AND2X2M U2 ( .A(clk_en_latch), .B(CLK), .Y(GATED_CLK) );
endmodule


module ALU_DW_div_uns_0 ( a, b, quotient, remainder, divide_by_0 );
  input [7:0] a;
  input [7:0] b;
  output [7:0] quotient;
  output [7:0] remainder;
  output divide_by_0;
  wire   u_div_SumTmp_1__0_, u_div_SumTmp_1__1_, u_div_SumTmp_1__2_,
         u_div_SumTmp_1__3_, u_div_SumTmp_1__4_, u_div_SumTmp_1__5_,
         u_div_SumTmp_1__6_, u_div_SumTmp_2__0_, u_div_SumTmp_2__1_,
         u_div_SumTmp_2__2_, u_div_SumTmp_2__3_, u_div_SumTmp_2__4_,
         u_div_SumTmp_2__5_, u_div_SumTmp_3__0_, u_div_SumTmp_3__1_,
         u_div_SumTmp_3__2_, u_div_SumTmp_3__3_, u_div_SumTmp_3__4_,
         u_div_SumTmp_4__0_, u_div_SumTmp_4__1_, u_div_SumTmp_4__2_,
         u_div_SumTmp_4__3_, u_div_SumTmp_5__0_, u_div_SumTmp_5__1_,
         u_div_SumTmp_5__2_, u_div_SumTmp_6__0_, u_div_SumTmp_6__1_,
         u_div_SumTmp_7__0_, u_div_CryTmp_0__1_, u_div_CryTmp_0__2_,
         u_div_CryTmp_0__3_, u_div_CryTmp_0__4_, u_div_CryTmp_0__5_,
         u_div_CryTmp_0__6_, u_div_CryTmp_0__7_, u_div_CryTmp_1__1_,
         u_div_CryTmp_1__2_, u_div_CryTmp_1__3_, u_div_CryTmp_1__4_,
         u_div_CryTmp_1__5_, u_div_CryTmp_1__6_, u_div_CryTmp_1__7_,
         u_div_CryTmp_2__1_, u_div_CryTmp_2__2_, u_div_CryTmp_2__3_,
         u_div_CryTmp_2__4_, u_div_CryTmp_2__5_, u_div_CryTmp_2__6_,
         u_div_CryTmp_3__1_, u_div_CryTmp_3__2_, u_div_CryTmp_3__3_,
         u_div_CryTmp_3__4_, u_div_CryTmp_3__5_, u_div_CryTmp_4__1_,
         u_div_CryTmp_4__2_, u_div_CryTmp_4__3_, u_div_CryTmp_4__4_,
         u_div_CryTmp_5__1_, u_div_CryTmp_5__2_, u_div_CryTmp_5__3_,
         u_div_CryTmp_6__1_, u_div_CryTmp_6__2_, u_div_CryTmp_7__1_,
         u_div_PartRem_1__1_, u_div_PartRem_1__2_, u_div_PartRem_1__3_,
         u_div_PartRem_1__4_, u_div_PartRem_1__5_, u_div_PartRem_1__6_,
         u_div_PartRem_1__7_, u_div_PartRem_2__1_, u_div_PartRem_2__2_,
         u_div_PartRem_2__3_, u_div_PartRem_2__4_, u_div_PartRem_2__5_,
         u_div_PartRem_2__6_, u_div_PartRem_3__1_, u_div_PartRem_3__2_,
         u_div_PartRem_3__3_, u_div_PartRem_3__4_, u_div_PartRem_3__5_,
         u_div_PartRem_4__1_, u_div_PartRem_4__2_, u_div_PartRem_4__3_,
         u_div_PartRem_4__4_, u_div_PartRem_5__1_, u_div_PartRem_5__2_,
         u_div_PartRem_5__3_, u_div_PartRem_6__1_, u_div_PartRem_6__2_,
         u_div_PartRem_7__1_, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11,
         n12, n13, n14, n15, n16, n17, n18, n19, n20, n21;

  ADDFX2M u_div_u_fa_PartRem_0_1_6 ( .A(u_div_PartRem_2__6_), .B(n12), .CI(
        u_div_CryTmp_1__6_), .CO(u_div_CryTmp_1__7_), .S(u_div_SumTmp_1__6_)
         );
  ADDFX2M u_div_u_fa_PartRem_0_2_5 ( .A(u_div_PartRem_3__5_), .B(n13), .CI(
        u_div_CryTmp_2__5_), .CO(u_div_CryTmp_2__6_), .S(u_div_SumTmp_2__5_)
         );
  ADDFX2M u_div_u_fa_PartRem_0_4_3 ( .A(u_div_PartRem_5__3_), .B(n15), .CI(
        u_div_CryTmp_4__3_), .CO(u_div_CryTmp_4__4_), .S(u_div_SumTmp_4__3_)
         );
  ADDFX2M u_div_u_fa_PartRem_0_5_2 ( .A(u_div_PartRem_6__2_), .B(n16), .CI(
        u_div_CryTmp_5__2_), .CO(u_div_CryTmp_5__3_), .S(u_div_SumTmp_5__2_)
         );
  ADDFX2M u_div_u_fa_PartRem_0_6_1 ( .A(u_div_PartRem_7__1_), .B(n17), .CI(
        u_div_CryTmp_6__1_), .CO(u_div_CryTmp_6__2_), .S(u_div_SumTmp_6__1_)
         );
  ADDFX2M u_div_u_fa_PartRem_0_3_4 ( .A(u_div_PartRem_4__4_), .B(n14), .CI(
        u_div_CryTmp_3__4_), .CO(u_div_CryTmp_3__5_), .S(u_div_SumTmp_3__4_)
         );
  ADDFX2M u_div_u_fa_PartRem_0_0_1 ( .A(u_div_PartRem_1__1_), .B(n17), .CI(
        u_div_CryTmp_0__1_), .CO(u_div_CryTmp_0__2_) );
  ADDFX2M u_div_u_fa_PartRem_0_0_2 ( .A(u_div_PartRem_1__2_), .B(n16), .CI(
        u_div_CryTmp_0__2_), .CO(u_div_CryTmp_0__3_) );
  ADDFX2M u_div_u_fa_PartRem_0_1_1 ( .A(u_div_PartRem_2__1_), .B(n17), .CI(
        u_div_CryTmp_1__1_), .CO(u_div_CryTmp_1__2_), .S(u_div_SumTmp_1__1_)
         );
  ADDFX2M u_div_u_fa_PartRem_0_2_1 ( .A(u_div_PartRem_3__1_), .B(n17), .CI(
        u_div_CryTmp_2__1_), .CO(u_div_CryTmp_2__2_), .S(u_div_SumTmp_2__1_)
         );
  ADDFX2M u_div_u_fa_PartRem_0_3_1 ( .A(u_div_PartRem_4__1_), .B(n17), .CI(
        u_div_CryTmp_3__1_), .CO(u_div_CryTmp_3__2_), .S(u_div_SumTmp_3__1_)
         );
  ADDFX2M u_div_u_fa_PartRem_0_4_1 ( .A(u_div_PartRem_5__1_), .B(n17), .CI(
        u_div_CryTmp_4__1_), .CO(u_div_CryTmp_4__2_), .S(u_div_SumTmp_4__1_)
         );
  ADDFX2M u_div_u_fa_PartRem_0_5_1 ( .A(u_div_PartRem_6__1_), .B(n17), .CI(
        u_div_CryTmp_5__1_), .CO(u_div_CryTmp_5__2_), .S(u_div_SumTmp_5__1_)
         );
  ADDFX2M u_div_u_fa_PartRem_0_0_5 ( .A(u_div_PartRem_1__5_), .B(n13), .CI(
        u_div_CryTmp_0__5_), .CO(u_div_CryTmp_0__6_) );
  ADDFX2M u_div_u_fa_PartRem_0_0_6 ( .A(u_div_PartRem_1__6_), .B(n12), .CI(
        u_div_CryTmp_0__6_), .CO(u_div_CryTmp_0__7_) );
  ADDFX2M u_div_u_fa_PartRem_0_1_5 ( .A(u_div_PartRem_2__5_), .B(n13), .CI(
        u_div_CryTmp_1__5_), .CO(u_div_CryTmp_1__6_), .S(u_div_SumTmp_1__5_)
         );
  ADDFX2M u_div_u_fa_PartRem_0_0_3 ( .A(u_div_PartRem_1__3_), .B(n15), .CI(
        u_div_CryTmp_0__3_), .CO(u_div_CryTmp_0__4_) );
  ADDFX2M u_div_u_fa_PartRem_0_0_4 ( .A(u_div_PartRem_1__4_), .B(n14), .CI(
        u_div_CryTmp_0__4_), .CO(u_div_CryTmp_0__5_) );
  ADDFX2M u_div_u_fa_PartRem_0_1_4 ( .A(u_div_PartRem_2__4_), .B(n14), .CI(
        u_div_CryTmp_1__4_), .CO(u_div_CryTmp_1__5_), .S(u_div_SumTmp_1__4_)
         );
  ADDFX2M u_div_u_fa_PartRem_0_1_3 ( .A(u_div_PartRem_2__3_), .B(n15), .CI(
        u_div_CryTmp_1__3_), .CO(u_div_CryTmp_1__4_), .S(u_div_SumTmp_1__3_)
         );
  ADDFX2M u_div_u_fa_PartRem_0_1_2 ( .A(u_div_PartRem_2__2_), .B(n16), .CI(
        u_div_CryTmp_1__2_), .CO(u_div_CryTmp_1__3_), .S(u_div_SumTmp_1__2_)
         );
  ADDFX2M u_div_u_fa_PartRem_0_2_4 ( .A(u_div_PartRem_3__4_), .B(n14), .CI(
        u_div_CryTmp_2__4_), .CO(u_div_CryTmp_2__5_), .S(u_div_SumTmp_2__4_)
         );
  ADDFX2M u_div_u_fa_PartRem_0_2_3 ( .A(u_div_PartRem_3__3_), .B(n15), .CI(
        u_div_CryTmp_2__3_), .CO(u_div_CryTmp_2__4_), .S(u_div_SumTmp_2__3_)
         );
  ADDFX2M u_div_u_fa_PartRem_0_2_2 ( .A(u_div_PartRem_3__2_), .B(n16), .CI(
        u_div_CryTmp_2__2_), .CO(u_div_CryTmp_2__3_), .S(u_div_SumTmp_2__2_)
         );
  ADDFX2M u_div_u_fa_PartRem_0_3_3 ( .A(u_div_PartRem_4__3_), .B(n15), .CI(
        u_div_CryTmp_3__3_), .CO(u_div_CryTmp_3__4_), .S(u_div_SumTmp_3__3_)
         );
  ADDFX2M u_div_u_fa_PartRem_0_3_2 ( .A(u_div_PartRem_4__2_), .B(n16), .CI(
        u_div_CryTmp_3__2_), .CO(u_div_CryTmp_3__3_), .S(u_div_SumTmp_3__2_)
         );
  ADDFX2M u_div_u_fa_PartRem_0_4_2 ( .A(u_div_PartRem_5__2_), .B(n16), .CI(
        u_div_CryTmp_4__2_), .CO(u_div_CryTmp_4__3_), .S(u_div_SumTmp_4__2_)
         );
  ADDFX2M u_div_u_fa_PartRem_0_0_7 ( .A(u_div_PartRem_1__7_), .B(n11), .CI(
        u_div_CryTmp_0__7_), .CO(quotient[0]) );
  INVX2M U1 ( .A(b[0]), .Y(n18) );
  XNOR2X2M U2 ( .A(n18), .B(a[7]), .Y(u_div_SumTmp_7__0_) );
  XNOR2X2M U3 ( .A(n18), .B(a[6]), .Y(u_div_SumTmp_6__0_) );
  XNOR2X2M U4 ( .A(n18), .B(a[5]), .Y(u_div_SumTmp_5__0_) );
  XNOR2X2M U5 ( .A(n18), .B(a[4]), .Y(u_div_SumTmp_4__0_) );
  XNOR2X2M U6 ( .A(n18), .B(a[3]), .Y(u_div_SumTmp_3__0_) );
  XNOR2X2M U7 ( .A(n18), .B(a[2]), .Y(u_div_SumTmp_2__0_) );
  XNOR2X2M U8 ( .A(n18), .B(a[1]), .Y(u_div_SumTmp_1__0_) );
  OR2X2M U9 ( .A(n18), .B(a[7]), .Y(u_div_CryTmp_7__1_) );
  NAND2X2M U10 ( .A(n3), .B(n4), .Y(u_div_CryTmp_5__1_) );
  INVX2M U11 ( .A(a[5]), .Y(n4) );
  INVX2M U12 ( .A(n18), .Y(n3) );
  NAND2X2M U13 ( .A(n5), .B(n6), .Y(u_div_CryTmp_4__1_) );
  INVX2M U14 ( .A(a[4]), .Y(n6) );
  INVX2M U15 ( .A(n18), .Y(n5) );
  NAND2X2M U16 ( .A(n5), .B(n7), .Y(u_div_CryTmp_3__1_) );
  INVX2M U17 ( .A(a[3]), .Y(n7) );
  NAND2X2M U18 ( .A(n5), .B(n8), .Y(u_div_CryTmp_2__1_) );
  INVX2M U19 ( .A(a[2]), .Y(n8) );
  NAND2X2M U20 ( .A(n5), .B(n9), .Y(u_div_CryTmp_1__1_) );
  INVX2M U21 ( .A(a[1]), .Y(n9) );
  NAND2X2M U22 ( .A(n5), .B(n10), .Y(u_div_CryTmp_0__1_) );
  NAND2X2M U23 ( .A(n1), .B(n2), .Y(u_div_CryTmp_6__1_) );
  INVX2M U24 ( .A(a[6]), .Y(n2) );
  INVX2M U25 ( .A(n18), .Y(n1) );
  INVX2M U26 ( .A(a[0]), .Y(n10) );
  INVX2M U27 ( .A(b[1]), .Y(n17) );
  INVX2M U28 ( .A(b[2]), .Y(n16) );
  INVX2M U29 ( .A(b[3]), .Y(n15) );
  INVX2M U30 ( .A(b[4]), .Y(n14) );
  INVX2M U31 ( .A(b[5]), .Y(n13) );
  INVX2M U32 ( .A(b[6]), .Y(n12) );
  INVX2M U33 ( .A(b[7]), .Y(n11) );
  CLKMX2X2M U34 ( .A(u_div_PartRem_2__6_), .B(u_div_SumTmp_1__6_), .S0(
        quotient[1]), .Y(u_div_PartRem_1__7_) );
  CLKMX2X2M U35 ( .A(u_div_PartRem_3__5_), .B(u_div_SumTmp_2__5_), .S0(
        quotient[2]), .Y(u_div_PartRem_2__6_) );
  CLKMX2X2M U36 ( .A(u_div_PartRem_4__4_), .B(u_div_SumTmp_3__4_), .S0(
        quotient[3]), .Y(u_div_PartRem_3__5_) );
  CLKMX2X2M U37 ( .A(u_div_PartRem_5__3_), .B(u_div_SumTmp_4__3_), .S0(
        quotient[4]), .Y(u_div_PartRem_4__4_) );
  CLKMX2X2M U38 ( .A(u_div_PartRem_6__2_), .B(u_div_SumTmp_5__2_), .S0(
        quotient[5]), .Y(u_div_PartRem_5__3_) );
  CLKMX2X2M U39 ( .A(u_div_PartRem_7__1_), .B(u_div_SumTmp_6__1_), .S0(
        quotient[6]), .Y(u_div_PartRem_6__2_) );
  CLKMX2X2M U40 ( .A(a[7]), .B(u_div_SumTmp_7__0_), .S0(quotient[7]), .Y(
        u_div_PartRem_7__1_) );
  CLKMX2X2M U41 ( .A(u_div_PartRem_2__5_), .B(u_div_SumTmp_1__5_), .S0(
        quotient[1]), .Y(u_div_PartRem_1__6_) );
  CLKMX2X2M U42 ( .A(u_div_PartRem_3__4_), .B(u_div_SumTmp_2__4_), .S0(
        quotient[2]), .Y(u_div_PartRem_2__5_) );
  CLKMX2X2M U43 ( .A(u_div_PartRem_4__3_), .B(u_div_SumTmp_3__3_), .S0(
        quotient[3]), .Y(u_div_PartRem_3__4_) );
  CLKMX2X2M U44 ( .A(u_div_PartRem_5__2_), .B(u_div_SumTmp_4__2_), .S0(
        quotient[4]), .Y(u_div_PartRem_4__3_) );
  CLKMX2X2M U45 ( .A(u_div_PartRem_6__1_), .B(u_div_SumTmp_5__1_), .S0(
        quotient[5]), .Y(u_div_PartRem_5__2_) );
  CLKMX2X2M U46 ( .A(a[6]), .B(u_div_SumTmp_6__0_), .S0(quotient[6]), .Y(
        u_div_PartRem_6__1_) );
  CLKMX2X2M U47 ( .A(u_div_PartRem_2__4_), .B(u_div_SumTmp_1__4_), .S0(
        quotient[1]), .Y(u_div_PartRem_1__5_) );
  CLKMX2X2M U48 ( .A(u_div_PartRem_3__3_), .B(u_div_SumTmp_2__3_), .S0(
        quotient[2]), .Y(u_div_PartRem_2__4_) );
  CLKMX2X2M U49 ( .A(u_div_PartRem_4__2_), .B(u_div_SumTmp_3__2_), .S0(
        quotient[3]), .Y(u_div_PartRem_3__3_) );
  CLKMX2X2M U50 ( .A(u_div_PartRem_5__1_), .B(u_div_SumTmp_4__1_), .S0(
        quotient[4]), .Y(u_div_PartRem_4__2_) );
  CLKMX2X2M U51 ( .A(a[5]), .B(u_div_SumTmp_5__0_), .S0(quotient[5]), .Y(
        u_div_PartRem_5__1_) );
  CLKMX2X2M U52 ( .A(u_div_PartRem_2__3_), .B(u_div_SumTmp_1__3_), .S0(
        quotient[1]), .Y(u_div_PartRem_1__4_) );
  CLKMX2X2M U53 ( .A(u_div_PartRem_3__2_), .B(u_div_SumTmp_2__2_), .S0(
        quotient[2]), .Y(u_div_PartRem_2__3_) );
  CLKMX2X2M U54 ( .A(u_div_PartRem_4__1_), .B(u_div_SumTmp_3__1_), .S0(
        quotient[3]), .Y(u_div_PartRem_3__2_) );
  CLKMX2X2M U55 ( .A(a[4]), .B(u_div_SumTmp_4__0_), .S0(quotient[4]), .Y(
        u_div_PartRem_4__1_) );
  CLKMX2X2M U56 ( .A(u_div_PartRem_2__2_), .B(u_div_SumTmp_1__2_), .S0(
        quotient[1]), .Y(u_div_PartRem_1__3_) );
  CLKMX2X2M U57 ( .A(u_div_PartRem_3__1_), .B(u_div_SumTmp_2__1_), .S0(
        quotient[2]), .Y(u_div_PartRem_2__2_) );
  CLKMX2X2M U58 ( .A(a[3]), .B(u_div_SumTmp_3__0_), .S0(quotient[3]), .Y(
        u_div_PartRem_3__1_) );
  CLKMX2X2M U59 ( .A(u_div_PartRem_2__1_), .B(u_div_SumTmp_1__1_), .S0(
        quotient[1]), .Y(u_div_PartRem_1__2_) );
  CLKMX2X2M U60 ( .A(a[2]), .B(u_div_SumTmp_2__0_), .S0(quotient[2]), .Y(
        u_div_PartRem_2__1_) );
  CLKMX2X2M U61 ( .A(a[1]), .B(u_div_SumTmp_1__0_), .S0(quotient[1]), .Y(
        u_div_PartRem_1__1_) );
  AND4X1M U62 ( .A(u_div_CryTmp_7__1_), .B(n19), .C(n17), .D(n16), .Y(
        quotient[7]) );
  AND3X1M U63 ( .A(n19), .B(n16), .C(u_div_CryTmp_6__2_), .Y(quotient[6]) );
  AND2X1M U64 ( .A(u_div_CryTmp_5__3_), .B(n19), .Y(quotient[5]) );
  AND2X1M U65 ( .A(n20), .B(n15), .Y(n19) );
  AND2X1M U66 ( .A(u_div_CryTmp_4__4_), .B(n20), .Y(quotient[4]) );
  AND3X1M U67 ( .A(n21), .B(n14), .C(n13), .Y(n20) );
  AND3X1M U68 ( .A(n21), .B(n13), .C(u_div_CryTmp_3__5_), .Y(quotient[3]) );
  AND2X1M U69 ( .A(u_div_CryTmp_2__6_), .B(n21), .Y(quotient[2]) );
  NOR2X1M U70 ( .A(b[6]), .B(b[7]), .Y(n21) );
  AND2X1M U71 ( .A(u_div_CryTmp_1__7_), .B(n11), .Y(quotient[1]) );
endmodule


module ALU_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9;
  wire   [8:1] carry;

  ADDFX2M U2_7 ( .A(A[7]), .B(n2), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  ADDFX2M U2_1 ( .A(A[1]), .B(n8), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFX2M U2_6 ( .A(A[6]), .B(n3), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  ADDFX2M U2_5 ( .A(A[5]), .B(n4), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFX2M U2_4 ( .A(A[4]), .B(n5), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFX2M U2_3 ( .A(A[3]), .B(n6), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFX2M U2_2 ( .A(A[2]), .B(n7), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  XNOR2X2M U1 ( .A(n9), .B(A[0]), .Y(DIFF[0]) );
  INVX2M U2 ( .A(B[0]), .Y(n9) );
  INVX2M U3 ( .A(B[2]), .Y(n7) );
  INVX2M U4 ( .A(B[3]), .Y(n6) );
  INVX2M U5 ( .A(B[4]), .Y(n5) );
  INVX2M U6 ( .A(B[5]), .Y(n4) );
  INVX2M U7 ( .A(B[6]), .Y(n3) );
  INVX2M U8 ( .A(B[1]), .Y(n8) );
  NAND2X2M U9 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  INVX2M U10 ( .A(A[0]), .Y(n1) );
  INVX2M U11 ( .A(B[7]), .Y(n2) );
  CLKINVX1M U12 ( .A(carry[8]), .Y(DIFF[8]) );
endmodule


module ALU_DW01_add_0 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [7:2] carry;

  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(SUM[8]), .S(SUM[7]) );
  ADDFX2M U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFX2M U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFX2M U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFX2M U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFX2M U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  AND2X2M U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  CLKXOR2X2M U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module ALU_DW01_add_1 ( A, B, CI, SUM, CO );
  input [13:0] A;
  input [13:0] B;
  output [13:0] SUM;
  input CI;
  output CO;
  wire   n1, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27;

  NAND2X2M U2 ( .A(A[7]), .B(B[7]), .Y(n15) );
  AOI21BX2M U3 ( .A0(n18), .A1(A[12]), .B0N(n19), .Y(n1) );
  XNOR2X2M U4 ( .A(B[13]), .B(n1), .Y(SUM[13]) );
  XNOR2X2M U5 ( .A(A[7]), .B(n8), .Y(SUM[7]) );
  INVX2M U6 ( .A(B[7]), .Y(n8) );
  INVX2M U7 ( .A(n9), .Y(SUM[6]) );
  INVX2M U8 ( .A(A[6]), .Y(n9) );
  BUFX2M U9 ( .A(A[0]), .Y(SUM[0]) );
  BUFX2M U10 ( .A(A[1]), .Y(SUM[1]) );
  BUFX2M U11 ( .A(A[2]), .Y(SUM[2]) );
  BUFX2M U12 ( .A(A[3]), .Y(SUM[3]) );
  BUFX2M U13 ( .A(A[4]), .Y(SUM[4]) );
  BUFX2M U14 ( .A(A[5]), .Y(SUM[5]) );
  XNOR2X1M U15 ( .A(n10), .B(n11), .Y(SUM[9]) );
  NOR2X1M U16 ( .A(n12), .B(n13), .Y(n11) );
  CLKXOR2X2M U17 ( .A(n14), .B(n15), .Y(SUM[8]) );
  NAND2BX1M U18 ( .AN(n16), .B(n17), .Y(n14) );
  OAI21X1M U19 ( .A0(A[12]), .A1(n18), .B0(B[12]), .Y(n19) );
  XOR3XLM U20 ( .A(B[12]), .B(A[12]), .C(n18), .Y(SUM[12]) );
  OAI21BX1M U21 ( .A0(n20), .A1(n21), .B0N(n22), .Y(n18) );
  XNOR2X1M U22 ( .A(n21), .B(n23), .Y(SUM[11]) );
  NOR2X1M U23 ( .A(n22), .B(n20), .Y(n23) );
  NOR2X1M U24 ( .A(B[11]), .B(A[11]), .Y(n20) );
  AND2X1M U25 ( .A(B[11]), .B(A[11]), .Y(n22) );
  OA21X1M U26 ( .A0(n24), .A1(n25), .B0(n26), .Y(n21) );
  CLKXOR2X2M U27 ( .A(n27), .B(n25), .Y(SUM[10]) );
  AOI2BB1X1M U28 ( .A0N(n10), .A1N(n13), .B0(n12), .Y(n25) );
  AND2X1M U29 ( .A(B[9]), .B(A[9]), .Y(n12) );
  NOR2X1M U30 ( .A(B[9]), .B(A[9]), .Y(n13) );
  OA21X1M U31 ( .A0(n15), .A1(n16), .B0(n17), .Y(n10) );
  CLKNAND2X2M U32 ( .A(B[8]), .B(A[8]), .Y(n17) );
  NOR2X1M U33 ( .A(B[8]), .B(A[8]), .Y(n16) );
  NAND2BX1M U34 ( .AN(n24), .B(n26), .Y(n27) );
  CLKNAND2X2M U35 ( .A(B[10]), .B(A[10]), .Y(n26) );
  NOR2X1M U36 ( .A(B[10]), .B(A[10]), .Y(n24) );
endmodule


module ALU_DW02_mult_0 ( A, B, TC, PRODUCT );
  input [7:0] A;
  input [7:0] B;
  output [15:0] PRODUCT;
  input TC;
  wire   ab_7__7_, ab_7__6_, ab_7__5_, ab_7__4_, ab_7__3_, ab_7__2_, ab_7__1_,
         ab_7__0_, ab_6__7_, ab_6__6_, ab_6__5_, ab_6__4_, ab_6__3_, ab_6__2_,
         ab_6__1_, ab_6__0_, ab_5__7_, ab_5__6_, ab_5__5_, ab_5__4_, ab_5__3_,
         ab_5__2_, ab_5__1_, ab_5__0_, ab_4__7_, ab_4__6_, ab_4__5_, ab_4__4_,
         ab_4__3_, ab_4__2_, ab_4__1_, ab_4__0_, ab_3__7_, ab_3__6_, ab_3__5_,
         ab_3__4_, ab_3__3_, ab_3__2_, ab_3__1_, ab_3__0_, ab_2__7_, ab_2__6_,
         ab_2__5_, ab_2__4_, ab_2__3_, ab_2__2_, ab_2__1_, ab_2__0_, ab_1__7_,
         ab_1__6_, ab_1__5_, ab_1__4_, ab_1__3_, ab_1__2_, ab_1__1_, ab_1__0_,
         ab_0__7_, ab_0__6_, ab_0__5_, ab_0__4_, ab_0__3_, ab_0__2_, ab_0__1_,
         CARRYB_7__6_, CARRYB_7__5_, CARRYB_7__4_, CARRYB_7__3_, CARRYB_7__2_,
         CARRYB_7__1_, CARRYB_7__0_, CARRYB_6__6_, CARRYB_6__5_, CARRYB_6__4_,
         CARRYB_6__3_, CARRYB_6__2_, CARRYB_6__1_, CARRYB_6__0_, CARRYB_5__6_,
         CARRYB_5__5_, CARRYB_5__4_, CARRYB_5__3_, CARRYB_5__2_, CARRYB_5__1_,
         CARRYB_5__0_, CARRYB_4__6_, CARRYB_4__5_, CARRYB_4__4_, CARRYB_4__3_,
         CARRYB_4__2_, CARRYB_4__1_, CARRYB_4__0_, CARRYB_3__6_, CARRYB_3__5_,
         CARRYB_3__4_, CARRYB_3__3_, CARRYB_3__2_, CARRYB_3__1_, CARRYB_3__0_,
         CARRYB_2__6_, CARRYB_2__5_, CARRYB_2__4_, CARRYB_2__3_, CARRYB_2__2_,
         CARRYB_2__1_, CARRYB_2__0_, SUMB_7__6_, SUMB_7__5_, SUMB_7__4_,
         SUMB_7__3_, SUMB_7__2_, SUMB_7__1_, SUMB_7__0_, SUMB_6__6_,
         SUMB_6__5_, SUMB_6__4_, SUMB_6__3_, SUMB_6__2_, SUMB_6__1_,
         SUMB_5__6_, SUMB_5__5_, SUMB_5__4_, SUMB_5__3_, SUMB_5__2_,
         SUMB_5__1_, SUMB_4__6_, SUMB_4__5_, SUMB_4__4_, SUMB_4__3_,
         SUMB_4__2_, SUMB_4__1_, SUMB_3__6_, SUMB_3__5_, SUMB_3__4_,
         SUMB_3__3_, SUMB_3__2_, SUMB_3__1_, SUMB_2__6_, SUMB_2__5_,
         SUMB_2__4_, SUMB_2__3_, SUMB_2__2_, SUMB_2__1_, SUMB_1__6_,
         SUMB_1__5_, SUMB_1__4_, SUMB_1__3_, SUMB_1__2_, SUMB_1__1_, A1_12_,
         A1_11_, A1_10_, A1_9_, A1_8_, A1_7_, A1_6_, A1_4_, A1_3_, A1_2_,
         A1_1_, A1_0_, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n30, n31, n32, n33, n34, n35, n36, n37, n38;

  ADDFX2M S1_3_0 ( .A(ab_3__0_), .B(CARRYB_2__0_), .CI(SUMB_2__1_), .CO(
        CARRYB_3__0_), .S(A1_1_) );
  ADDFX2M S1_2_0 ( .A(ab_2__0_), .B(n7), .CI(SUMB_1__1_), .CO(CARRYB_2__0_), 
        .S(A1_0_) );
  ADDFX2M S3_6_6 ( .A(ab_6__6_), .B(CARRYB_5__6_), .CI(ab_5__7_), .CO(
        CARRYB_6__6_), .S(SUMB_6__6_) );
  ADDFX2M S3_5_6 ( .A(ab_5__6_), .B(CARRYB_4__6_), .CI(ab_4__7_), .CO(
        CARRYB_5__6_), .S(SUMB_5__6_) );
  ADDFX2M S5_6 ( .A(ab_7__6_), .B(CARRYB_6__6_), .CI(ab_6__7_), .CO(
        CARRYB_7__6_), .S(SUMB_7__6_) );
  ADDFX2M S4_5 ( .A(ab_7__5_), .B(CARRYB_6__5_), .CI(SUMB_6__6_), .CO(
        CARRYB_7__5_), .S(SUMB_7__5_) );
  ADDFX2M S1_6_0 ( .A(ab_6__0_), .B(CARRYB_5__0_), .CI(SUMB_5__1_), .CO(
        CARRYB_6__0_), .S(A1_4_) );
  ADDFX2M S2_6_2 ( .A(ab_6__2_), .B(CARRYB_5__2_), .CI(SUMB_5__3_), .CO(
        CARRYB_6__2_), .S(SUMB_6__2_) );
  ADDFX2M S2_6_1 ( .A(ab_6__1_), .B(CARRYB_5__1_), .CI(SUMB_5__2_), .CO(
        CARRYB_6__1_), .S(SUMB_6__1_) );
  ADDFX2M S1_5_0 ( .A(ab_5__0_), .B(CARRYB_4__0_), .CI(SUMB_4__1_), .CO(
        CARRYB_5__0_), .S(A1_3_) );
  ADDFX2M S2_5_3 ( .A(ab_5__3_), .B(CARRYB_4__3_), .CI(SUMB_4__4_), .CO(
        CARRYB_5__3_), .S(SUMB_5__3_) );
  ADDFX2M S2_5_2 ( .A(ab_5__2_), .B(CARRYB_4__2_), .CI(SUMB_4__3_), .CO(
        CARRYB_5__2_), .S(SUMB_5__2_) );
  ADDFX2M S2_5_1 ( .A(ab_5__1_), .B(CARRYB_4__1_), .CI(SUMB_4__2_), .CO(
        CARRYB_5__1_), .S(SUMB_5__1_) );
  ADDFX2M S1_4_0 ( .A(ab_4__0_), .B(CARRYB_3__0_), .CI(SUMB_3__1_), .CO(
        CARRYB_4__0_), .S(A1_2_) );
  ADDFX2M S2_4_4 ( .A(ab_4__4_), .B(CARRYB_3__4_), .CI(SUMB_3__5_), .CO(
        CARRYB_4__4_), .S(SUMB_4__4_) );
  ADDFX2M S2_4_3 ( .A(ab_4__3_), .B(CARRYB_3__3_), .CI(SUMB_3__4_), .CO(
        CARRYB_4__3_), .S(SUMB_4__3_) );
  ADDFX2M S2_4_2 ( .A(ab_4__2_), .B(CARRYB_3__2_), .CI(SUMB_3__3_), .CO(
        CARRYB_4__2_), .S(SUMB_4__2_) );
  ADDFX2M S2_4_1 ( .A(ab_4__1_), .B(CARRYB_3__1_), .CI(SUMB_3__2_), .CO(
        CARRYB_4__1_), .S(SUMB_4__1_) );
  ADDFX2M S2_3_4 ( .A(ab_3__4_), .B(CARRYB_2__4_), .CI(SUMB_2__5_), .CO(
        CARRYB_3__4_), .S(SUMB_3__4_) );
  ADDFX2M S2_3_2 ( .A(ab_3__2_), .B(CARRYB_2__2_), .CI(SUMB_2__3_), .CO(
        CARRYB_3__2_), .S(SUMB_3__2_) );
  ADDFX2M S2_3_1 ( .A(ab_3__1_), .B(CARRYB_2__1_), .CI(SUMB_2__2_), .CO(
        CARRYB_3__1_), .S(SUMB_3__1_) );
  ADDFX2M S2_3_5 ( .A(ab_3__5_), .B(CARRYB_2__5_), .CI(SUMB_2__6_), .CO(
        CARRYB_3__5_), .S(SUMB_3__5_) );
  ADDFX2M S2_2_2 ( .A(ab_2__2_), .B(n6), .CI(SUMB_1__3_), .CO(CARRYB_2__2_), 
        .S(SUMB_2__2_) );
  ADDFX2M S2_2_1 ( .A(ab_2__1_), .B(n5), .CI(SUMB_1__2_), .CO(CARRYB_2__1_), 
        .S(SUMB_2__1_) );
  ADDFX2M S2_6_4 ( .A(ab_6__4_), .B(CARRYB_5__4_), .CI(SUMB_5__5_), .CO(
        CARRYB_6__4_), .S(SUMB_6__4_) );
  ADDFX2M S2_6_3 ( .A(ab_6__3_), .B(CARRYB_5__3_), .CI(SUMB_5__4_), .CO(
        CARRYB_6__3_), .S(SUMB_6__3_) );
  ADDFX2M S2_6_5 ( .A(ab_6__5_), .B(CARRYB_5__5_), .CI(SUMB_5__6_), .CO(
        CARRYB_6__5_), .S(SUMB_6__5_) );
  ADDFX2M S2_5_4 ( .A(ab_5__4_), .B(CARRYB_4__4_), .CI(SUMB_4__5_), .CO(
        CARRYB_5__4_), .S(SUMB_5__4_) );
  ADDFX2M S2_5_5 ( .A(ab_5__5_), .B(CARRYB_4__5_), .CI(SUMB_4__6_), .CO(
        CARRYB_5__5_), .S(SUMB_5__5_) );
  ADDFX2M S3_4_6 ( .A(ab_4__6_), .B(CARRYB_3__6_), .CI(ab_3__7_), .CO(
        CARRYB_4__6_), .S(SUMB_4__6_) );
  ADDFX2M S2_4_5 ( .A(ab_4__5_), .B(CARRYB_3__5_), .CI(SUMB_3__6_), .CO(
        CARRYB_4__5_), .S(SUMB_4__5_) );
  ADDFX2M S2_3_3 ( .A(ab_3__3_), .B(CARRYB_2__3_), .CI(SUMB_2__4_), .CO(
        CARRYB_3__3_), .S(SUMB_3__3_) );
  ADDFX2M S3_3_6 ( .A(ab_3__6_), .B(CARRYB_2__6_), .CI(ab_2__7_), .CO(
        CARRYB_3__6_), .S(SUMB_3__6_) );
  ADDFX2M S2_2_4 ( .A(ab_2__4_), .B(n4), .CI(SUMB_1__5_), .CO(CARRYB_2__4_), 
        .S(SUMB_2__4_) );
  ADDFX2M S2_2_3 ( .A(ab_2__3_), .B(n3), .CI(SUMB_1__4_), .CO(CARRYB_2__3_), 
        .S(SUMB_2__3_) );
  ADDFX2M S3_2_6 ( .A(ab_2__6_), .B(n9), .CI(ab_1__7_), .CO(CARRYB_2__6_), .S(
        SUMB_2__6_) );
  ADDFX2M S2_2_5 ( .A(ab_2__5_), .B(n8), .CI(SUMB_1__6_), .CO(CARRYB_2__5_), 
        .S(SUMB_2__5_) );
  ADDFX2M S4_0 ( .A(ab_7__0_), .B(CARRYB_6__0_), .CI(SUMB_6__1_), .CO(
        CARRYB_7__0_), .S(SUMB_7__0_) );
  ADDFX2M S4_4 ( .A(ab_7__4_), .B(CARRYB_6__4_), .CI(SUMB_6__5_), .CO(
        CARRYB_7__4_), .S(SUMB_7__4_) );
  ADDFX2M S4_3 ( .A(ab_7__3_), .B(CARRYB_6__3_), .CI(SUMB_6__4_), .CO(
        CARRYB_7__3_), .S(SUMB_7__3_) );
  ADDFX2M S4_2 ( .A(ab_7__2_), .B(CARRYB_6__2_), .CI(SUMB_6__3_), .CO(
        CARRYB_7__2_), .S(SUMB_7__2_) );
  ADDFX2M S4_1 ( .A(ab_7__1_), .B(CARRYB_6__1_), .CI(SUMB_6__2_), .CO(
        CARRYB_7__1_), .S(SUMB_7__1_) );
  AND2X2M U2 ( .A(ab_0__4_), .B(ab_1__3_), .Y(n3) );
  AND2X2M U3 ( .A(ab_0__5_), .B(ab_1__4_), .Y(n4) );
  AND2X2M U4 ( .A(ab_0__2_), .B(ab_1__1_), .Y(n5) );
  AND2X2M U5 ( .A(ab_0__3_), .B(ab_1__2_), .Y(n6) );
  AND2X2M U6 ( .A(ab_0__1_), .B(ab_1__0_), .Y(n7) );
  AND2X2M U7 ( .A(ab_0__6_), .B(ab_1__5_), .Y(n8) );
  AND2X2M U8 ( .A(ab_0__7_), .B(ab_1__6_), .Y(n9) );
  AND2X2M U9 ( .A(CARRYB_7__6_), .B(ab_7__7_), .Y(n10) );
  CLKXOR2X2M U10 ( .A(CARRYB_7__1_), .B(SUMB_7__2_), .Y(A1_7_) );
  CLKXOR2X2M U11 ( .A(CARRYB_7__2_), .B(SUMB_7__3_), .Y(A1_8_) );
  INVX2M U12 ( .A(ab_0__7_), .Y(n22) );
  INVX2M U13 ( .A(ab_0__3_), .Y(n18) );
  INVX2M U14 ( .A(ab_0__5_), .Y(n20) );
  INVX2M U15 ( .A(ab_0__4_), .Y(n19) );
  INVX2M U16 ( .A(ab_0__6_), .Y(n21) );
  AND2X2M U17 ( .A(CARRYB_7__0_), .B(SUMB_7__1_), .Y(n11) );
  CLKXOR2X2M U18 ( .A(CARRYB_7__3_), .B(SUMB_7__4_), .Y(A1_9_) );
  AND2X2M U19 ( .A(CARRYB_7__1_), .B(SUMB_7__2_), .Y(n12) );
  AND2X2M U20 ( .A(CARRYB_7__2_), .B(SUMB_7__3_), .Y(n13) );
  CLKXOR2X2M U21 ( .A(CARRYB_7__4_), .B(SUMB_7__5_), .Y(A1_10_) );
  CLKXOR2X2M U22 ( .A(CARRYB_7__5_), .B(SUMB_7__6_), .Y(A1_11_) );
  INVX2M U23 ( .A(ab_0__2_), .Y(n17) );
  AND2X2M U24 ( .A(CARRYB_7__3_), .B(SUMB_7__4_), .Y(n14) );
  AND2X2M U25 ( .A(CARRYB_7__5_), .B(SUMB_7__6_), .Y(n15) );
  AND2X2M U26 ( .A(CARRYB_7__4_), .B(SUMB_7__5_), .Y(n16) );
  CLKXOR2X2M U27 ( .A(CARRYB_7__0_), .B(SUMB_7__1_), .Y(A1_6_) );
  CLKXOR2X2M U28 ( .A(CARRYB_7__6_), .B(ab_7__7_), .Y(A1_12_) );
  CLKXOR2X2M U29 ( .A(ab_1__0_), .B(ab_0__1_), .Y(PRODUCT[1]) );
  XNOR2X2M U30 ( .A(ab_1__6_), .B(n22), .Y(SUMB_1__6_) );
  XNOR2X2M U31 ( .A(ab_1__4_), .B(n20), .Y(SUMB_1__4_) );
  XNOR2X2M U32 ( .A(ab_1__5_), .B(n21), .Y(SUMB_1__5_) );
  XNOR2X2M U33 ( .A(ab_1__2_), .B(n18), .Y(SUMB_1__2_) );
  XNOR2X2M U34 ( .A(ab_1__3_), .B(n19), .Y(SUMB_1__3_) );
  INVX2M U35 ( .A(A[2]), .Y(n28) );
  INVX2M U36 ( .A(A[0]), .Y(n30) );
  INVX2M U37 ( .A(A[1]), .Y(n29) );
  XNOR2X2M U38 ( .A(ab_1__1_), .B(n17), .Y(SUMB_1__1_) );
  INVX2M U39 ( .A(A[3]), .Y(n27) );
  INVX2M U40 ( .A(A[5]), .Y(n25) );
  INVX2M U41 ( .A(A[4]), .Y(n26) );
  INVX2M U42 ( .A(A[7]), .Y(n23) );
  INVX2M U43 ( .A(A[6]), .Y(n24) );
  INVX2M U44 ( .A(B[6]), .Y(n32) );
  INVX2M U45 ( .A(B[4]), .Y(n34) );
  INVX2M U46 ( .A(B[7]), .Y(n31) );
  INVX2M U47 ( .A(B[5]), .Y(n33) );
  INVX2M U48 ( .A(B[2]), .Y(n36) );
  INVX2M U49 ( .A(B[3]), .Y(n35) );
  INVX2M U50 ( .A(B[0]), .Y(n38) );
  INVX2M U51 ( .A(B[1]), .Y(n37) );
  NOR2X1M U53 ( .A(n23), .B(n31), .Y(ab_7__7_) );
  NOR2X1M U54 ( .A(n23), .B(n32), .Y(ab_7__6_) );
  NOR2X1M U55 ( .A(n23), .B(n33), .Y(ab_7__5_) );
  NOR2X1M U56 ( .A(n23), .B(n34), .Y(ab_7__4_) );
  NOR2X1M U57 ( .A(n23), .B(n35), .Y(ab_7__3_) );
  NOR2X1M U58 ( .A(n23), .B(n36), .Y(ab_7__2_) );
  NOR2X1M U59 ( .A(n23), .B(n37), .Y(ab_7__1_) );
  NOR2X1M U60 ( .A(n23), .B(n38), .Y(ab_7__0_) );
  NOR2X1M U61 ( .A(n31), .B(n24), .Y(ab_6__7_) );
  NOR2X1M U62 ( .A(n32), .B(n24), .Y(ab_6__6_) );
  NOR2X1M U63 ( .A(n33), .B(n24), .Y(ab_6__5_) );
  NOR2X1M U64 ( .A(n34), .B(n24), .Y(ab_6__4_) );
  NOR2X1M U65 ( .A(n35), .B(n24), .Y(ab_6__3_) );
  NOR2X1M U66 ( .A(n36), .B(n24), .Y(ab_6__2_) );
  NOR2X1M U67 ( .A(n37), .B(n24), .Y(ab_6__1_) );
  NOR2X1M U68 ( .A(n38), .B(n24), .Y(ab_6__0_) );
  NOR2X1M U69 ( .A(n31), .B(n25), .Y(ab_5__7_) );
  NOR2X1M U70 ( .A(n32), .B(n25), .Y(ab_5__6_) );
  NOR2X1M U71 ( .A(n33), .B(n25), .Y(ab_5__5_) );
  NOR2X1M U72 ( .A(n34), .B(n25), .Y(ab_5__4_) );
  NOR2X1M U73 ( .A(n35), .B(n25), .Y(ab_5__3_) );
  NOR2X1M U74 ( .A(n36), .B(n25), .Y(ab_5__2_) );
  NOR2X1M U75 ( .A(n37), .B(n25), .Y(ab_5__1_) );
  NOR2X1M U76 ( .A(n38), .B(n25), .Y(ab_5__0_) );
  NOR2X1M U77 ( .A(n31), .B(n26), .Y(ab_4__7_) );
  NOR2X1M U78 ( .A(n32), .B(n26), .Y(ab_4__6_) );
  NOR2X1M U79 ( .A(n33), .B(n26), .Y(ab_4__5_) );
  NOR2X1M U80 ( .A(n34), .B(n26), .Y(ab_4__4_) );
  NOR2X1M U81 ( .A(n35), .B(n26), .Y(ab_4__3_) );
  NOR2X1M U82 ( .A(n36), .B(n26), .Y(ab_4__2_) );
  NOR2X1M U83 ( .A(n37), .B(n26), .Y(ab_4__1_) );
  NOR2X1M U84 ( .A(n38), .B(n26), .Y(ab_4__0_) );
  NOR2X1M U85 ( .A(n31), .B(n27), .Y(ab_3__7_) );
  NOR2X1M U86 ( .A(n32), .B(n27), .Y(ab_3__6_) );
  NOR2X1M U87 ( .A(n33), .B(n27), .Y(ab_3__5_) );
  NOR2X1M U88 ( .A(n34), .B(n27), .Y(ab_3__4_) );
  NOR2X1M U89 ( .A(n35), .B(n27), .Y(ab_3__3_) );
  NOR2X1M U90 ( .A(n36), .B(n27), .Y(ab_3__2_) );
  NOR2X1M U91 ( .A(n37), .B(n27), .Y(ab_3__1_) );
  NOR2X1M U92 ( .A(n38), .B(n27), .Y(ab_3__0_) );
  NOR2X1M U93 ( .A(n31), .B(n28), .Y(ab_2__7_) );
  NOR2X1M U94 ( .A(n32), .B(n28), .Y(ab_2__6_) );
  NOR2X1M U95 ( .A(n33), .B(n28), .Y(ab_2__5_) );
  NOR2X1M U96 ( .A(n34), .B(n28), .Y(ab_2__4_) );
  NOR2X1M U97 ( .A(n35), .B(n28), .Y(ab_2__3_) );
  NOR2X1M U98 ( .A(n36), .B(n28), .Y(ab_2__2_) );
  NOR2X1M U99 ( .A(n37), .B(n28), .Y(ab_2__1_) );
  NOR2X1M U100 ( .A(n38), .B(n28), .Y(ab_2__0_) );
  NOR2X1M U101 ( .A(n31), .B(n29), .Y(ab_1__7_) );
  NOR2X1M U102 ( .A(n32), .B(n29), .Y(ab_1__6_) );
  NOR2X1M U103 ( .A(n33), .B(n29), .Y(ab_1__5_) );
  NOR2X1M U104 ( .A(n34), .B(n29), .Y(ab_1__4_) );
  NOR2X1M U105 ( .A(n35), .B(n29), .Y(ab_1__3_) );
  NOR2X1M U106 ( .A(n36), .B(n29), .Y(ab_1__2_) );
  NOR2X1M U107 ( .A(n37), .B(n29), .Y(ab_1__1_) );
  NOR2X1M U108 ( .A(n38), .B(n29), .Y(ab_1__0_) );
  NOR2X1M U109 ( .A(n31), .B(n30), .Y(ab_0__7_) );
  NOR2X1M U110 ( .A(n32), .B(n30), .Y(ab_0__6_) );
  NOR2X1M U111 ( .A(n33), .B(n30), .Y(ab_0__5_) );
  NOR2X1M U112 ( .A(n34), .B(n30), .Y(ab_0__4_) );
  NOR2X1M U113 ( .A(n35), .B(n30), .Y(ab_0__3_) );
  NOR2X1M U114 ( .A(n36), .B(n30), .Y(ab_0__2_) );
  NOR2X1M U115 ( .A(n37), .B(n30), .Y(ab_0__1_) );
  NOR2X1M U116 ( .A(n38), .B(n30), .Y(PRODUCT[0]) );
  ALU_DW01_add_1 FS_1 ( .A({1'b0, A1_12_, A1_11_, A1_10_, A1_9_, A1_8_, A1_7_, 
        A1_6_, SUMB_7__0_, A1_4_, A1_3_, A1_2_, A1_1_, A1_0_}), .B({n10, n15, 
        n16, n14, n13, n12, n11, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .CI(1'b0), .SUM(PRODUCT[15:2]) );
endmodule


module ALU_test_1 ( CLK, RST, A, B, ALU_FUN, Enable, ALU_OUT, OUT_VALID, 
        test_si, test_se );
  input [7:0] A;
  input [7:0] B;
  input [3:0] ALU_FUN;
  output [15:0] ALU_OUT;
  input CLK, RST, Enable, test_si, test_se;
  output OUT_VALID;
  wire   N87, N88, N89, N90, N91, N92, N93, N94, N95, N96, N97, N98, N99, N100,
         N101, N102, N103, N104, N105, N106, N107, N108, N109, N110, N111,
         N112, N113, N114, N115, N116, N117, N118, N119, N120, N122, N123,
         N124, N125, N126, N127, N128, N129, N162, N163, n9, n10, n11, n12,
         n13, n14, n15, n16, n18, n20, n21, n22, n25, n27, n28, n30, n31, n35,
         n36, n37, n38, n39, n40, n41, n44, n45, n46, n47, n48, n49, n52, n53,
         n54, n55, n56, n57, n60, n61, n62, n63, n64, n65, n68, n69, n70, n71,
         n72, n73, n76, n77, n78, n79, n80, n81, n82, n85, n86, n87, n88, n89,
         n90, n91, n92, n94, n95, n98, n99, n100, n102, n104, n105, n106, n107,
         n108, n109, n110, n112, n113, n114, n115, n116, n117, n118, n121,
         n123, n125, n127, n129, n131, n133, n135, n137, n139, n141, n143,
         n145, n147, n149, n151, n3, n4, n5, n6, n7, n8, n17, n19, n23, n24,
         n26, n29, n32, n33, n34, n42, n43, n50, n51, n58, n59, n66, n67, n74,
         n75, n83, n84, n93, n96, n97, n101, n103, n111, n152, n153, n154,
         n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, n165,
         n166, n167, n168, n169, n170, SYNOPSYS_UNCONNECTED_1,
         SYNOPSYS_UNCONNECTED_2, SYNOPSYS_UNCONNECTED_3,
         SYNOPSYS_UNCONNECTED_4, SYNOPSYS_UNCONNECTED_5,
         SYNOPSYS_UNCONNECTED_6, SYNOPSYS_UNCONNECTED_7,
         SYNOPSYS_UNCONNECTED_8;

  SDFFRQX2M ALU_OUT_reg_8_ ( .D(n137), .SI(ALU_OUT[7]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(ALU_OUT[8]) );
  SDFFRQX2M OUT_VALID_reg ( .D(Enable), .SI(ALU_OUT[15]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(OUT_VALID) );
  SDFFRQX2M ALU_OUT_reg_15_ ( .D(n151), .SI(ALU_OUT[14]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(ALU_OUT[15]) );
  SDFFRQX2M ALU_OUT_reg_14_ ( .D(n149), .SI(ALU_OUT[13]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(ALU_OUT[14]) );
  SDFFRQX2M ALU_OUT_reg_13_ ( .D(n147), .SI(ALU_OUT[12]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(ALU_OUT[13]) );
  SDFFRQX2M ALU_OUT_reg_12_ ( .D(n145), .SI(ALU_OUT[11]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(ALU_OUT[12]) );
  SDFFRQX2M ALU_OUT_reg_11_ ( .D(n143), .SI(ALU_OUT[10]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(ALU_OUT[11]) );
  SDFFRQX2M ALU_OUT_reg_10_ ( .D(n141), .SI(ALU_OUT[9]), .SE(test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[10]) );
  SDFFRQX2M ALU_OUT_reg_9_ ( .D(n139), .SI(ALU_OUT[8]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(ALU_OUT[9]) );
  SDFFRQX2M ALU_OUT_reg_7_ ( .D(n135), .SI(ALU_OUT[6]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(ALU_OUT[7]) );
  SDFFRQX2M ALU_OUT_reg_6_ ( .D(n133), .SI(ALU_OUT[5]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(ALU_OUT[6]) );
  SDFFRQX2M ALU_OUT_reg_5_ ( .D(n131), .SI(ALU_OUT[4]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(ALU_OUT[5]) );
  SDFFRQX2M ALU_OUT_reg_4_ ( .D(n129), .SI(ALU_OUT[3]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(ALU_OUT[4]) );
  SDFFRQX2M ALU_OUT_reg_3_ ( .D(n127), .SI(ALU_OUT[2]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(ALU_OUT[3]) );
  SDFFRQX2M ALU_OUT_reg_2_ ( .D(n125), .SI(ALU_OUT[1]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(ALU_OUT[2]) );
  SDFFRQX2M ALU_OUT_reg_1_ ( .D(n123), .SI(ALU_OUT[0]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(ALU_OUT[1]) );
  SDFFRQX2M ALU_OUT_reg_0_ ( .D(n121), .SI(test_si), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(ALU_OUT[0]) );
  INVX2M U3 ( .A(n30), .Y(n111) );
  INVX2M U4 ( .A(n85), .Y(n96) );
  NOR2X2M U5 ( .A(n95), .B(n104), .Y(n30) );
  AOI2B1X1M U8 ( .A1N(n102), .A0(n106), .B0(n97), .Y(n85) );
  NOR2BX2M U9 ( .AN(n110), .B(n95), .Y(n31) );
  NOR2X2M U10 ( .A(n154), .B(n95), .Y(n94) );
  INVX2M U11 ( .A(n25), .Y(n93) );
  NOR3X2M U12 ( .A(n97), .B(n156), .C(n104), .Y(n80) );
  NOR2BX2M U13 ( .AN(n80), .B(n153), .Y(n39) );
  INVX2M U14 ( .A(n27), .Y(n101) );
  NOR3BX2M U15 ( .AN(n110), .B(n97), .C(ALU_FUN[0]), .Y(n107) );
  NOR3X2M U16 ( .A(n154), .B(ALU_FUN[3]), .C(n155), .Y(n102) );
  NAND2X2M U17 ( .A(n107), .B(ALU_FUN[3]), .Y(n25) );
  NAND3X2M U18 ( .A(Enable), .B(n153), .C(n102), .Y(n27) );
  NAND3X2M U19 ( .A(ALU_FUN[0]), .B(n156), .C(Enable), .Y(n95) );
  INVX2M U20 ( .A(Enable), .Y(n97) );
  NAND3X2M U21 ( .A(ALU_FUN[3]), .B(ALU_FUN[0]), .C(n110), .Y(n106) );
  NOR2X2M U22 ( .A(ALU_FUN[1]), .B(ALU_FUN[2]), .Y(n110) );
  INVX2M U23 ( .A(ALU_FUN[3]), .Y(n156) );
  INVX2M U24 ( .A(ALU_FUN[0]), .Y(n153) );
  INVX2M U25 ( .A(ALU_FUN[2]), .Y(n155) );
  NOR4X1M U26 ( .A(n97), .B(n154), .C(ALU_FUN[0]), .D(ALU_FUN[3]), .Y(n98) );
  NOR2BX2M U27 ( .AN(n107), .B(ALU_FUN[3]), .Y(n21) );
  NOR2BX2M U28 ( .AN(n98), .B(ALU_FUN[2]), .Y(n13) );
  NOR2BX2M U29 ( .AN(n80), .B(ALU_FUN[0]), .Y(n14) );
  NAND2X2M U30 ( .A(Enable), .B(n105), .Y(n28) );
  OAI21X2M U31 ( .A0(ALU_FUN[3]), .A1(n104), .B0(n106), .Y(n105) );
  NAND2X2M U32 ( .A(ALU_FUN[2]), .B(n154), .Y(n104) );
  INVX2M U33 ( .A(ALU_FUN[1]), .Y(n154) );
  AOI222X1M U34 ( .A0(n30), .A1(n3), .B0(N96), .B1(n31), .C0(N122), .C1(n152), 
        .Y(n10) );
  AOI222X1M U35 ( .A0(n30), .A1(n4), .B0(N97), .B1(n31), .C0(N123), .C1(n152), 
        .Y(n36) );
  AOI222X1M U36 ( .A0(n5), .A1(n30), .B0(N98), .B1(n31), .C0(N124), .C1(n152), 
        .Y(n45) );
  AOI222X1M U37 ( .A0(n6), .A1(n30), .B0(N99), .B1(n31), .C0(N125), .C1(n152), 
        .Y(n53) );
  AOI222X1M U38 ( .A0(n7), .A1(n30), .B0(N100), .B1(n31), .C0(N126), .C1(n152), 
        .Y(n61) );
  AOI222X1M U39 ( .A0(n8), .A1(n30), .B0(N101), .B1(n31), .C0(N127), .C1(n152), 
        .Y(n69) );
  AOI222X1M U40 ( .A0(N111), .A1(n13), .B0(n19), .B1(n14), .C0(n8), .C1(n39), 
        .Y(n79) );
  AOI222X1M U41 ( .A0(N94), .A1(n21), .B0(n17), .B1(n39), .C0(N112), .C1(n13), 
        .Y(n87) );
  AOI21X2M U42 ( .A0(N104), .A1(n31), .B0(n85), .Y(n108) );
  AOI221XLM U43 ( .A0(n93), .A1(n157), .B0(n19), .B1(n103), .C0(n30), .Y(n99)
         );
  INVX2M U44 ( .A(n28), .Y(n103) );
  AOI221XLM U45 ( .A0(n19), .A1(n93), .B0(n85), .B1(n157), .C0(n101), .Y(n100)
         );
  OAI221X1M U46 ( .A0(n4), .A1(n96), .B0(n161), .B1(n25), .C0(n27), .Y(n41) );
  OAI221X1M U47 ( .A0(n3), .A1(n96), .B0(n25), .B1(n162), .C0(n27), .Y(n22) );
  OAI221X1M U48 ( .A0(n5), .A1(n96), .B0(n25), .B1(n83), .C0(n27), .Y(n49) );
  OAI221X1M U49 ( .A0(n6), .A1(n96), .B0(n25), .B1(n84), .C0(n27), .Y(n57) );
  OAI221X1M U50 ( .A0(n7), .A1(n96), .B0(n25), .B1(n160), .C0(n27), .Y(n65) );
  OAI221X1M U51 ( .A0(n8), .A1(n96), .B0(n25), .B1(n159), .C0(n27), .Y(n73) );
  OAI221X1M U52 ( .A0(n17), .A1(n96), .B0(n25), .B1(n158), .C0(n27), .Y(n82)
         );
  OAI221X1M U53 ( .A0(n162), .A1(n28), .B0(n3), .B1(n25), .C0(n111), .Y(n20)
         );
  OAI221X1M U54 ( .A0(n161), .A1(n28), .B0(n4), .B1(n25), .C0(n111), .Y(n40)
         );
  OAI221X1M U55 ( .A0(n28), .A1(n83), .B0(n5), .B1(n25), .C0(n111), .Y(n48) );
  OAI221X1M U56 ( .A0(n28), .A1(n84), .B0(n6), .B1(n25), .C0(n111), .Y(n56) );
  OAI221X1M U57 ( .A0(n28), .A1(n160), .B0(n7), .B1(n25), .C0(n111), .Y(n64)
         );
  OAI221X1M U58 ( .A0(n28), .A1(n159), .B0(n8), .B1(n25), .C0(n111), .Y(n72)
         );
  OAI221X1M U59 ( .A0(n28), .A1(n158), .B0(n17), .B1(n25), .C0(n111), .Y(n81)
         );
  NOR4X1M U60 ( .A(n16), .B(n154), .C(ALU_FUN[2]), .D(n18), .Y(n15) );
  NAND2X2M U61 ( .A(Enable), .B(ALU_FUN[3]), .Y(n16) );
  AOI22X1M U62 ( .A0(N162), .A1(n153), .B0(N163), .B1(ALU_FUN[0]), .Y(n18) );
  INVX2M U63 ( .A(n90), .Y(n152) );
  OAI211X2M U64 ( .A0(n91), .A1(n92), .B0(n155), .C0(n94), .Y(n90) );
  NAND4X2M U65 ( .A(n170), .B(n169), .C(n168), .D(n167), .Y(n92) );
  NAND4X2M U66 ( .A(n166), .B(n165), .C(n164), .D(n163), .Y(n91) );
  INVX2M U67 ( .A(n6), .Y(n84) );
  INVX2M U68 ( .A(n5), .Y(n83) );
  INVX2M U69 ( .A(n8), .Y(n159) );
  INVX2M U70 ( .A(n4), .Y(n161) );
  INVX2M U71 ( .A(n3), .Y(n162) );
  INVX2M U72 ( .A(n19), .Y(n157) );
  INVX2M U73 ( .A(n7), .Y(n160) );
  INVX2M U74 ( .A(n17), .Y(n158) );
  NAND4X2M U75 ( .A(n9), .B(n10), .C(n11), .D(n12), .Y(n121) );
  AOI22X1M U76 ( .A0(n101), .A1(n162), .B0(ALU_OUT[0]), .B1(n97), .Y(n9) );
  AOI222X1M U77 ( .A0(B[0]), .A1(n20), .B0(N87), .B1(n21), .C0(n22), .C1(n170), 
        .Y(n11) );
  AOI221XLM U78 ( .A0(N105), .A1(n13), .B0(n4), .B1(n14), .C0(n15), .Y(n12) );
  BUFX2M U79 ( .A(A[7]), .Y(n19) );
  BUFX2M U80 ( .A(A[6]), .Y(n17) );
  NAND4X2M U81 ( .A(n35), .B(n36), .C(n37), .D(n38), .Y(n123) );
  AOI22X1M U82 ( .A0(n101), .A1(n161), .B0(ALU_OUT[1]), .B1(n97), .Y(n35) );
  AOI222X1M U83 ( .A0(N106), .A1(n13), .B0(n5), .B1(n14), .C0(n39), .C1(n3), 
        .Y(n38) );
  AOI222X1M U84 ( .A0(B[1]), .A1(n40), .B0(N88), .B1(n21), .C0(n41), .C1(n169), 
        .Y(n37) );
  BUFX2M U85 ( .A(A[5]), .Y(n8) );
  BUFX2M U86 ( .A(A[4]), .Y(n7) );
  NAND4X2M U87 ( .A(n44), .B(n45), .C(n46), .D(n47), .Y(n125) );
  AOI22X1M U88 ( .A0(n101), .A1(n83), .B0(ALU_OUT[2]), .B1(n97), .Y(n44) );
  AOI222X1M U89 ( .A0(N107), .A1(n13), .B0(n6), .B1(n14), .C0(n39), .C1(n4), 
        .Y(n47) );
  AOI222X1M U90 ( .A0(B[2]), .A1(n48), .B0(N89), .B1(n21), .C0(n49), .C1(n168), 
        .Y(n46) );
  BUFX2M U91 ( .A(A[3]), .Y(n6) );
  NAND4X2M U92 ( .A(n52), .B(n53), .C(n54), .D(n55), .Y(n127) );
  AOI22X1M U93 ( .A0(n101), .A1(n84), .B0(ALU_OUT[3]), .B1(n97), .Y(n52) );
  AOI222X1M U94 ( .A0(B[3]), .A1(n56), .B0(N90), .B1(n21), .C0(n57), .C1(n167), 
        .Y(n54) );
  AOI222X1M U95 ( .A0(N108), .A1(n13), .B0(n7), .B1(n14), .C0(n39), .C1(n5), 
        .Y(n55) );
  BUFX2M U96 ( .A(A[2]), .Y(n5) );
  NAND2X2M U97 ( .A(n117), .B(n108), .Y(n149) );
  AOI22X1M U98 ( .A0(N119), .A1(n98), .B0(ALU_OUT[14]), .B1(n97), .Y(n117) );
  NAND4X2M U99 ( .A(n60), .B(n61), .C(n62), .D(n63), .Y(n129) );
  AOI22X1M U100 ( .A0(n101), .A1(n160), .B0(ALU_OUT[4]), .B1(n97), .Y(n60) );
  AOI222X1M U101 ( .A0(B[4]), .A1(n64), .B0(N91), .B1(n21), .C0(n65), .C1(n166), .Y(n62) );
  AOI222X1M U102 ( .A0(N109), .A1(n13), .B0(n8), .B1(n14), .C0(n6), .C1(n39), 
        .Y(n63) );
  NAND2X2M U103 ( .A(n118), .B(n108), .Y(n151) );
  AOI22X1M U104 ( .A0(N120), .A1(n98), .B0(ALU_OUT[15]), .B1(n97), .Y(n118) );
  BUFX2M U105 ( .A(A[0]), .Y(n3) );
  BUFX2M U106 ( .A(A[1]), .Y(n4) );
  NAND2X2M U107 ( .A(n113), .B(n108), .Y(n141) );
  AOI22X1M U108 ( .A0(N115), .A1(n98), .B0(ALU_OUT[10]), .B1(n97), .Y(n113) );
  NAND2X2M U109 ( .A(n115), .B(n108), .Y(n145) );
  AOI22X1M U110 ( .A0(N117), .A1(n98), .B0(ALU_OUT[12]), .B1(n97), .Y(n115) );
  NAND2X2M U111 ( .A(n114), .B(n108), .Y(n143) );
  AOI22X1M U112 ( .A0(N116), .A1(n98), .B0(ALU_OUT[11]), .B1(n97), .Y(n114) );
  NAND2X2M U113 ( .A(n116), .B(n108), .Y(n147) );
  AOI22X1M U114 ( .A0(N118), .A1(n98), .B0(ALU_OUT[13]), .B1(n97), .Y(n116) );
  NAND2X2M U115 ( .A(n112), .B(n108), .Y(n139) );
  AOI22X1M U116 ( .A0(N114), .A1(n98), .B0(ALU_OUT[9]), .B1(n97), .Y(n112) );
  OAI2B11X2M U117 ( .A1N(ALU_OUT[8]), .A0(Enable), .B0(n108), .C0(n109), .Y(
        n137) );
  AOI222X1M U118 ( .A0(N113), .A1(n98), .B0(n19), .B1(n39), .C0(N95), .C1(n21), 
        .Y(n109) );
  NAND4X2M U119 ( .A(n68), .B(n69), .C(n70), .D(n71), .Y(n131) );
  AOI22X1M U120 ( .A0(n101), .A1(n159), .B0(ALU_OUT[5]), .B1(n97), .Y(n68) );
  AOI222X1M U121 ( .A0(B[5]), .A1(n72), .B0(N92), .B1(n21), .C0(n73), .C1(n165), .Y(n70) );
  AOI222X1M U122 ( .A0(N110), .A1(n13), .B0(n17), .B1(n14), .C0(n7), .C1(n39), 
        .Y(n71) );
  NAND4X2M U123 ( .A(n76), .B(n77), .C(n78), .D(n79), .Y(n133) );
  AOI22X1M U124 ( .A0(n101), .A1(n158), .B0(ALU_OUT[6]), .B1(n97), .Y(n76) );
  AOI222X1M U125 ( .A0(B[6]), .A1(n81), .B0(N93), .B1(n21), .C0(n82), .C1(n164), .Y(n78) );
  AOI222X1M U126 ( .A0(n17), .A1(n30), .B0(N102), .B1(n31), .C0(N128), .C1(
        n152), .Y(n77) );
  NAND4BX1M U127 ( .AN(n86), .B(n87), .C(n88), .D(n89), .Y(n135) );
  AOI22X1M U128 ( .A0(n101), .A1(n157), .B0(ALU_OUT[7]), .B1(n97), .Y(n88) );
  OAI22X1M U129 ( .A0(n99), .A1(n163), .B0(B[7]), .B1(n100), .Y(n86) );
  AOI222X1M U130 ( .A0(n19), .A1(n30), .B0(N103), .B1(n31), .C0(N129), .C1(
        n152), .Y(n89) );
  INVX2M U131 ( .A(B[7]), .Y(n163) );
  INVX2M U149 ( .A(B[4]), .Y(n166) );
  INVX2M U150 ( .A(B[6]), .Y(n164) );
  INVX2M U151 ( .A(B[0]), .Y(n170) );
  INVX2M U152 ( .A(B[5]), .Y(n165) );
  INVX2M U153 ( .A(B[1]), .Y(n169) );
  INVX2M U154 ( .A(B[3]), .Y(n167) );
  INVX2M U155 ( .A(B[2]), .Y(n168) );
  NOR2BX1M U156 ( .AN(B[0]), .B(n3), .Y(n23) );
  OAI2B2X1M U157 ( .A1N(n4), .A0(n23), .B0(B[1]), .B1(n23), .Y(n24) );
  NAND2BX1M U158 ( .AN(n17), .B(B[6]), .Y(n59) );
  CLKNAND2X2M U159 ( .A(B[5]), .B(n159), .Y(n58) );
  NAND2BX1M U160 ( .AN(n7), .B(B[4]), .Y(n43) );
  NAND4X1M U161 ( .A(n24), .B(n59), .C(n58), .D(n43), .Y(n75) );
  CLKNAND2X2M U162 ( .A(B[3]), .B(n84), .Y(n42) );
  CLKNAND2X2M U163 ( .A(B[2]), .B(n83), .Y(n26) );
  CLKNAND2X2M U164 ( .A(n42), .B(n26), .Y(n74) );
  NOR2BX1M U165 ( .AN(B[7]), .B(n19), .Y(n67) );
  NOR2BX1M U166 ( .AN(n3), .B(B[0]), .Y(n32) );
  OAI2BB1X1M U167 ( .A0N(n32), .A1N(n4), .B0(B[1]), .Y(n29) );
  OAI211X1M U168 ( .A0(n4), .A1(n32), .B0(n29), .C0(n26), .Y(n33) );
  OAI221X1M U169 ( .A0(B[2]), .A1(n83), .B0(B[3]), .B1(n84), .C0(n33), .Y(n34)
         );
  AOI32X1M U170 ( .A0(n43), .A1(n42), .A2(n34), .B0(n7), .B1(n166), .Y(n50) );
  OAI21X1M U171 ( .A0(B[5]), .A1(n159), .B0(n50), .Y(n51) );
  AOI32X1M U172 ( .A0(n59), .A1(n58), .A2(n51), .B0(n17), .B1(n164), .Y(n66)
         );
  OAI2B2X1M U173 ( .A1N(n19), .A0(B[7]), .B0(n67), .B1(n66), .Y(N163) );
  NOR4X1M U174 ( .A(n75), .B(n74), .C(N163), .D(n67), .Y(N162) );
  ALU_DW_div_uns_0 div_27 ( .a({n19, n17, n8, n7, n6, n5, n4, n3}), .b(B), 
        .quotient({N129, N128, N127, N126, N125, N124, N123, N122}), 
        .remainder({SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2, 
        SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4, SYNOPSYS_UNCONNECTED_5, 
        SYNOPSYS_UNCONNECTED_6, SYNOPSYS_UNCONNECTED_7, SYNOPSYS_UNCONNECTED_8}) );
  ALU_DW01_sub_0 sub_25 ( .A({1'b0, n19, n17, n8, n7, n6, n5, n4, n3}), .B({
        1'b0, B}), .CI(1'b0), .DIFF({N104, N103, N102, N101, N100, N99, N98, 
        N97, N96}) );
  ALU_DW01_add_0 add_24 ( .A({1'b0, n19, n17, n8, n7, n6, n5, n4, n3}), .B({
        1'b0, B}), .CI(1'b0), .SUM({N95, N94, N93, N92, N91, N90, N89, N88, 
        N87}) );
  ALU_DW02_mult_0 mult_26 ( .A({n19, n17, n8, n7, n6, n5, n4, n3}), .B(B), 
        .TC(1'b0), .PRODUCT({N120, N119, N118, N117, N116, N115, N114, N113, 
        N112, N111, N110, N109, N108, N107, N106, N105}) );
endmodule


module ClkDiv_DW01_inc_0 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  ADDHX1M U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHX1M U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  ADDHX1M U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHX1M U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX1M U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHX1M U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  CLKXOR2X2M U1 ( .A(carry[7]), .B(A[7]), .Y(SUM[7]) );
  CLKINVX1M U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module ClkDiv_test_1 ( i_ref_clk, i_rst_n, i_clk_en, i_div_ratio, o_div_clk, 
        test_si2, test_si1, test_so2, test_so1, test_se );
  input [7:0] i_div_ratio;
  input i_ref_clk, i_rst_n, i_clk_en, test_si2, test_si1, test_se;
  output o_div_clk, test_so2, test_so1;
  wire   N7, N8, N9, N10, N11, N12, N13, N14, N15, N16, N18, N19, N20, N21,
         N22, N23, N24, N25, N34, N35, N36, N37, N38, N39, N40, N41, N42, N43,
         n19, n20, n21, n22, n23, n24, n25, n1, n2, n3, n4, n5, n6, n18, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54;
  wire   [7:0] counter;

  SDFFNSRHX2M out_n_reg ( .D(n54), .SI(test_si2), .SE(test_se), .CKN(i_ref_clk), .SN(1'b1), .RN(i_rst_n), .Q(test_so2) );
  SDFFRQX2M counter_reg_7_ ( .D(N42), .SI(counter[6]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[7]) );
  SDFFRQX2M counter_reg_6_ ( .D(N41), .SI(counter[5]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[6]) );
  SDFFRQX2M counter_reg_5_ ( .D(N40), .SI(counter[4]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[5]) );
  SDFFRQX2M counter_reg_0_ ( .D(N35), .SI(test_si1), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[0]) );
  SDFFRQX2M counter_reg_1_ ( .D(N36), .SI(counter[0]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[1]) );
  SDFFRQX2M counter_reg_4_ ( .D(N39), .SI(counter[3]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[4]) );
  SDFFRQX2M counter_reg_2_ ( .D(N37), .SI(counter[1]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[2]) );
  SDFFRQX2M counter_reg_3_ ( .D(N38), .SI(counter[2]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[3]) );
  SDFFRQX2M out_p_reg ( .D(N43), .SI(counter[7]), .SE(test_se), .CK(i_ref_clk), 
        .RN(i_rst_n), .Q(test_so1) );
  INVX2M U6 ( .A(n22), .Y(n54) );
  NOR2BX2M U7 ( .AN(N19), .B(n23), .Y(N36) );
  NOR2BX2M U8 ( .AN(N20), .B(n23), .Y(N37) );
  NOR2BX2M U17 ( .AN(N21), .B(n23), .Y(N38) );
  NOR2BX2M U18 ( .AN(N22), .B(n23), .Y(N39) );
  NOR2BX2M U19 ( .AN(N23), .B(n23), .Y(N40) );
  NOR2BX2M U20 ( .AN(N24), .B(n23), .Y(N41) );
  AOI21BX2M U21 ( .A0(n24), .A1(n25), .B0N(i_clk_en), .Y(n20) );
  NOR3X2M U22 ( .A(i_div_ratio[1]), .B(i_div_ratio[3]), .C(i_div_ratio[2]), 
        .Y(n24) );
  NOR4X1M U23 ( .A(i_div_ratio[7]), .B(i_div_ratio[6]), .C(i_div_ratio[5]), 
        .D(i_div_ratio[4]), .Y(n25) );
  NAND2X2M U24 ( .A(test_so1), .B(n20), .Y(n22) );
  NAND2BX2M U25 ( .AN(N16), .B(n20), .Y(n23) );
  OR2X2M U26 ( .A(i_div_ratio[1]), .B(i_div_ratio[0]), .Y(n1) );
  NOR2BX2M U27 ( .AN(N25), .B(n23), .Y(N42) );
  NOR2BX2M U28 ( .AN(N18), .B(n23), .Y(N35) );
  INVX2M U29 ( .A(counter[3]), .Y(n51) );
  INVX2M U30 ( .A(counter[2]), .Y(n50) );
  INVX2M U31 ( .A(counter[5]), .Y(n53) );
  INVX2M U32 ( .A(counter[4]), .Y(n52) );
  INVX2M U33 ( .A(i_div_ratio[4]), .Y(n46) );
  INVX2M U34 ( .A(i_div_ratio[5]), .Y(n47) );
  INVX2M U35 ( .A(i_div_ratio[3]), .Y(n45) );
  AND2X2M U36 ( .A(N34), .B(n20), .Y(N43) );
  INVX2M U37 ( .A(i_div_ratio[7]), .Y(n49) );
  INVX2M U38 ( .A(i_div_ratio[6]), .Y(n48) );
  NAND3X2M U39 ( .A(i_div_ratio[0]), .B(n20), .C(test_so2), .Y(n21) );
  INVX2M U40 ( .A(i_ref_clk), .Y(n19) );
  OAI211X2M U41 ( .A0(n19), .A1(n20), .B0(n21), .C0(n22), .Y(o_div_clk) );
  CLKINVX1M U42 ( .A(i_div_ratio[0]), .Y(N7) );
  OAI2BB1X1M U43 ( .A0N(i_div_ratio[0]), .A1N(i_div_ratio[1]), .B0(n1), .Y(N8)
         );
  OR2X1M U44 ( .A(n1), .B(i_div_ratio[2]), .Y(n2) );
  OAI2BB1X1M U45 ( .A0N(n1), .A1N(i_div_ratio[2]), .B0(n2), .Y(N9) );
  OR2X1M U46 ( .A(n2), .B(i_div_ratio[3]), .Y(n3) );
  OAI2BB1X1M U47 ( .A0N(n2), .A1N(i_div_ratio[3]), .B0(n3), .Y(N10) );
  OR2X1M U48 ( .A(n3), .B(i_div_ratio[4]), .Y(n4) );
  OAI2BB1X1M U49 ( .A0N(n3), .A1N(i_div_ratio[4]), .B0(n4), .Y(N11) );
  OR2X1M U50 ( .A(n4), .B(i_div_ratio[5]), .Y(n5) );
  OAI2BB1X1M U51 ( .A0N(n4), .A1N(i_div_ratio[5]), .B0(n5), .Y(N12) );
  OR2X1M U52 ( .A(n5), .B(i_div_ratio[6]), .Y(n6) );
  OAI2BB1X1M U53 ( .A0N(n5), .A1N(i_div_ratio[6]), .B0(n6), .Y(N13) );
  NOR2X1M U54 ( .A(n6), .B(i_div_ratio[7]), .Y(N15) );
  AO21XLM U55 ( .A0(n6), .A1(i_div_ratio[7]), .B0(N15), .Y(N14) );
  XNOR2X1M U56 ( .A(N13), .B(counter[6]), .Y(n28) );
  XNOR2X1M U57 ( .A(N12), .B(counter[5]), .Y(n27) );
  XNOR2X1M U58 ( .A(N11), .B(counter[4]), .Y(n26) );
  XNOR2X1M U59 ( .A(N10), .B(counter[3]), .Y(n18) );
  NAND4X1M U60 ( .A(n28), .B(n27), .C(n26), .D(n18), .Y(n36) );
  NOR2BX1M U61 ( .AN(N7), .B(counter[0]), .Y(n29) );
  OAI2B2X1M U62 ( .A1N(counter[1]), .A0(n29), .B0(N8), .B1(n29), .Y(n32) );
  NOR2BX1M U63 ( .AN(counter[0]), .B(N7), .Y(n30) );
  OAI2B2X1M U64 ( .A1N(N8), .A0(n30), .B0(counter[1]), .B1(n30), .Y(n31) );
  NAND3BX1M U65 ( .AN(N15), .B(n32), .C(n31), .Y(n35) );
  CLKXOR2X2M U66 ( .A(N14), .B(counter[7]), .Y(n34) );
  CLKXOR2X2M U67 ( .A(N9), .B(counter[2]), .Y(n33) );
  NOR4X1M U68 ( .A(n36), .B(n35), .C(n34), .D(n33), .Y(N16) );
  NAND2BX1M U69 ( .AN(counter[0]), .B(i_div_ratio[1]), .Y(n38) );
  AOI2BB1X1M U70 ( .A0N(n38), .A1N(counter[1]), .B0(i_div_ratio[2]), .Y(n37)
         );
  AOI221XLM U71 ( .A0(counter[2]), .A1(n45), .B0(counter[1]), .B1(n38), .C0(
        n37), .Y(n39) );
  AOI221XLM U72 ( .A0(i_div_ratio[4]), .A1(n51), .B0(i_div_ratio[3]), .B1(n50), 
        .C0(n39), .Y(n40) );
  AOI221XLM U73 ( .A0(counter[4]), .A1(n47), .B0(counter[3]), .B1(n46), .C0(
        n40), .Y(n41) );
  AOI221XLM U74 ( .A0(i_div_ratio[6]), .A1(n53), .B0(i_div_ratio[5]), .B1(n52), 
        .C0(n41), .Y(n42) );
  AOI221XLM U75 ( .A0(counter[6]), .A1(n49), .B0(counter[5]), .B1(n48), .C0(
        n42), .Y(n43) );
  AOI2B1X1M U76 ( .A1N(counter[6]), .A0(i_div_ratio[7]), .B0(n43), .Y(n44) );
  NOR2X1M U77 ( .A(counter[7]), .B(n44), .Y(N34) );
  ClkDiv_DW01_inc_0 add_36 ( .A(counter), .SUM({N25, N24, N23, N22, N21, N20, 
        N19, N18}) );
endmodule


module edge_bit_counter_test_1 ( CLK, RST, enable, bit_cnt_clr, Prescale, 
        edge_cnt, bit_cnt, test_si, test_se );
  input [5:0] Prescale;
  output [5:0] edge_cnt;
  output [5:0] bit_cnt;
  input CLK, RST, enable, bit_cnt_clr, test_si, test_se;
  wire   N6, N7, N8, N9, N10, N11, N12, N13, N19, N20, N21, N22, N23, N24, N31,
         N32, N33, N34, N35, N36, n19, n20, n21, n22, n23, n24, n25, n26, n27,
         n28, n29, n30, n31, n32, n33, n34, n35, n1, n2, n3, n4, n17, n18, n36,
         n37, n38, n39, n40, n41, n42, n43, n44;
  wire   [5:2] add_37_carry;
  wire   [5:2] add_29_carry;

  SDFFRQX2M bit_cnt_reg_0_ ( .D(n29), .SI(test_si), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(bit_cnt[0]) );
  SDFFRQX2M bit_cnt_reg_5_ ( .D(n24), .SI(bit_cnt[4]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(bit_cnt[5]) );
  SDFFRQX2M bit_cnt_reg_3_ ( .D(n26), .SI(bit_cnt[2]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(bit_cnt[3]) );
  SDFFRQX2M bit_cnt_reg_4_ ( .D(n25), .SI(bit_cnt[3]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(bit_cnt[4]) );
  SDFFRQX2M bit_cnt_reg_1_ ( .D(n28), .SI(bit_cnt[0]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(bit_cnt[1]) );
  SDFFRQX2M bit_cnt_reg_2_ ( .D(n27), .SI(bit_cnt[1]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(bit_cnt[2]) );
  SDFFRQX2M edge_cnt_reg_5_ ( .D(n34), .SI(edge_cnt[4]), .SE(test_se), .CK(CLK), .RN(RST), .Q(edge_cnt[5]) );
  SDFFRQX2M edge_cnt_reg_4_ ( .D(n33), .SI(edge_cnt[3]), .SE(test_se), .CK(CLK), .RN(RST), .Q(edge_cnt[4]) );
  SDFFRQX2M edge_cnt_reg_3_ ( .D(n32), .SI(edge_cnt[2]), .SE(test_se), .CK(CLK), .RN(RST), .Q(edge_cnt[3]) );
  SDFFRQX2M edge_cnt_reg_0_ ( .D(n35), .SI(bit_cnt[5]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(edge_cnt[0]) );
  SDFFRQX2M edge_cnt_reg_2_ ( .D(n31), .SI(edge_cnt[1]), .SE(test_se), .CK(CLK), .RN(RST), .Q(edge_cnt[2]) );
  SDFFRQX2M edge_cnt_reg_1_ ( .D(n30), .SI(edge_cnt[0]), .SE(test_se), .CK(CLK), .RN(RST), .Q(edge_cnt[1]) );
  NOR2X2M U6 ( .A(n21), .B(bit_cnt_clr), .Y(n20) );
  AND3X2M U7 ( .A(n44), .B(n21), .C(enable), .Y(n19) );
  AND3X2M U17 ( .A(n23), .B(n21), .C(enable), .Y(n22) );
  INVX2M U18 ( .A(n23), .Y(n43) );
  INVX2M U19 ( .A(bit_cnt_clr), .Y(n44) );
  NAND2X2M U20 ( .A(enable), .B(N13), .Y(n21) );
  NAND3BX2M U21 ( .AN(N13), .B(enable), .C(n44), .Y(n23) );
  AO22X1M U22 ( .A0(bit_cnt[5]), .A1(n19), .B0(N24), .B1(n20), .Y(n24) );
  AO22X1M U23 ( .A0(bit_cnt[4]), .A1(n19), .B0(N23), .B1(n20), .Y(n25) );
  AO22X1M U24 ( .A0(bit_cnt[3]), .A1(n19), .B0(N22), .B1(n20), .Y(n26) );
  AO22X1M U25 ( .A0(bit_cnt[2]), .A1(n19), .B0(N21), .B1(n20), .Y(n27) );
  AO22X1M U26 ( .A0(bit_cnt[1]), .A1(n19), .B0(N20), .B1(n20), .Y(n28) );
  AO22X1M U27 ( .A0(bit_cnt[0]), .A1(n19), .B0(N19), .B1(n20), .Y(n29) );
  AO22X1M U28 ( .A0(edge_cnt[4]), .A1(n22), .B0(N35), .B1(n43), .Y(n33) );
  AO22X1M U29 ( .A0(edge_cnt[3]), .A1(n22), .B0(N34), .B1(n43), .Y(n32) );
  AO22X1M U30 ( .A0(edge_cnt[2]), .A1(n22), .B0(N33), .B1(n43), .Y(n31) );
  AO22X1M U31 ( .A0(edge_cnt[1]), .A1(n22), .B0(N32), .B1(n43), .Y(n30) );
  AO22X1M U32 ( .A0(edge_cnt[5]), .A1(n22), .B0(N36), .B1(n43), .Y(n34) );
  AO22X1M U33 ( .A0(edge_cnt[0]), .A1(n22), .B0(N31), .B1(n43), .Y(n35) );
  ADDHX1M U34 ( .A(edge_cnt[1]), .B(edge_cnt[0]), .CO(add_37_carry[2]), .S(N32) );
  ADDHX1M U35 ( .A(edge_cnt[2]), .B(add_37_carry[2]), .CO(add_37_carry[3]), 
        .S(N33) );
  ADDHX1M U36 ( .A(bit_cnt[2]), .B(add_29_carry[2]), .CO(add_29_carry[3]), .S(
        N21) );
  ADDHX1M U37 ( .A(bit_cnt[1]), .B(bit_cnt[0]), .CO(add_29_carry[2]), .S(N20)
         );
  ADDHX1M U38 ( .A(edge_cnt[3]), .B(add_37_carry[3]), .CO(add_37_carry[4]), 
        .S(N34) );
  ADDHX1M U39 ( .A(bit_cnt[3]), .B(add_29_carry[3]), .CO(add_29_carry[4]), .S(
        N22) );
  ADDHX1M U40 ( .A(bit_cnt[4]), .B(add_29_carry[4]), .CO(add_29_carry[5]), .S(
        N23) );
  ADDHX1M U41 ( .A(edge_cnt[4]), .B(add_37_carry[4]), .CO(add_37_carry[5]), 
        .S(N35) );
  OR2X2M U42 ( .A(Prescale[1]), .B(Prescale[0]), .Y(n1) );
  CLKINVX1M U43 ( .A(Prescale[0]), .Y(N6) );
  OAI2BB1X1M U44 ( .A0N(Prescale[0]), .A1N(Prescale[1]), .B0(n1), .Y(N7) );
  OR2X1M U45 ( .A(n1), .B(Prescale[2]), .Y(n2) );
  OAI2BB1X1M U46 ( .A0N(n1), .A1N(Prescale[2]), .B0(n2), .Y(N8) );
  OR2X1M U47 ( .A(n2), .B(Prescale[3]), .Y(n3) );
  OAI2BB1X1M U48 ( .A0N(n2), .A1N(Prescale[3]), .B0(n3), .Y(N9) );
  OR2X1M U49 ( .A(n3), .B(Prescale[4]), .Y(n4) );
  OAI2BB1X1M U50 ( .A0N(n3), .A1N(Prescale[4]), .B0(n4), .Y(N10) );
  NOR2X1M U51 ( .A(n4), .B(Prescale[5]), .Y(N12) );
  AO21XLM U52 ( .A0(n4), .A1(Prescale[5]), .B0(N12), .Y(N11) );
  CLKINVX1M U53 ( .A(bit_cnt[0]), .Y(N19) );
  CLKXOR2X2M U54 ( .A(add_29_carry[5]), .B(bit_cnt[5]), .Y(N24) );
  CLKINVX1M U55 ( .A(edge_cnt[0]), .Y(N31) );
  CLKXOR2X2M U56 ( .A(add_37_carry[5]), .B(edge_cnt[5]), .Y(N36) );
  NOR2BX1M U57 ( .AN(N6), .B(edge_cnt[0]), .Y(n17) );
  OAI2B2X1M U58 ( .A1N(edge_cnt[1]), .A0(n17), .B0(N7), .B1(n17), .Y(n38) );
  XNOR2X1M U59 ( .A(N11), .B(edge_cnt[5]), .Y(n37) );
  NOR2BX1M U60 ( .AN(edge_cnt[0]), .B(N6), .Y(n18) );
  OAI2B2X1M U61 ( .A1N(N7), .A0(n18), .B0(edge_cnt[1]), .B1(n18), .Y(n36) );
  NAND4BX1M U62 ( .AN(N12), .B(n38), .C(n37), .D(n36), .Y(n42) );
  CLKXOR2X2M U63 ( .A(N10), .B(edge_cnt[4]), .Y(n41) );
  CLKXOR2X2M U64 ( .A(N8), .B(edge_cnt[2]), .Y(n40) );
  CLKXOR2X2M U65 ( .A(N9), .B(edge_cnt[3]), .Y(n39) );
  NOR4X1M U66 ( .A(n42), .B(n41), .C(n40), .D(n39), .Y(N13) );
endmodule


module data_sampling_test_1 ( CLK, RST, RX_IN, Prescale, edge_cnt, dat_samp_en, 
        sampled_bit, test_si, test_so, test_se );
  input [5:0] Prescale;
  input [5:0] edge_cnt;
  input CLK, RST, RX_IN, dat_samp_en, test_si, test_se;
  output sampled_bit, test_so;
  wire   samples_1_, samples_0_, N6, N7, N8, N9, N12, N13, N14, N15, N16, N17,
         N23, N24, N25, N26, N27, n27, n28, n29, n30, n1, n2, n3, n4, n5, n6,
         n7, n8, n9, n10, n11, n12, n13, n14, n19, n20, n21, n22, n23, n24,
         n25, n26, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42,
         n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56;
  wire   [4:2] add_28_carry;
  wire   [4:3] sub_23_carry;

  SDFFRQX2M samples_reg_1_ ( .D(n29), .SI(samples_0_), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(samples_1_) );
  SDFFRQX2M samples_reg_0_ ( .D(n28), .SI(sampled_bit), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(samples_0_) );
  SDFFRQX2M samples_reg_2_ ( .D(n30), .SI(samples_1_), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(test_so) );
  SDFFRQX2M sampled_bit_reg ( .D(n27), .SI(test_si), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(sampled_bit) );
  NOR2X2M U6 ( .A(Prescale[5]), .B(sub_23_carry[4]), .Y(n1) );
  OR2X2M U7 ( .A(Prescale[2]), .B(Prescale[1]), .Y(n2) );
  ADDHX1M U8 ( .A(Prescale[2]), .B(Prescale[1]), .CO(add_28_carry[2]), .S(N23)
         );
  ADDHX1M U9 ( .A(Prescale[4]), .B(add_28_carry[3]), .CO(add_28_carry[4]), .S(
        N25) );
  ADDHX1M U10 ( .A(Prescale[3]), .B(add_28_carry[2]), .CO(add_28_carry[3]), 
        .S(N24) );
  INVX2M U11 ( .A(Prescale[2]), .Y(N6) );
  ADDHX1M U12 ( .A(Prescale[5]), .B(add_28_carry[4]), .CO(N27), .S(N26) );
  XNOR2X1M U14 ( .A(sub_23_carry[4]), .B(Prescale[5]), .Y(N9) );
  OR2X1M U15 ( .A(Prescale[4]), .B(sub_23_carry[3]), .Y(sub_23_carry[4]) );
  XNOR2X1M U16 ( .A(sub_23_carry[3]), .B(Prescale[4]), .Y(N8) );
  OR2X1M U17 ( .A(Prescale[3]), .B(Prescale[2]), .Y(sub_23_carry[3]) );
  XNOR2X1M U18 ( .A(Prescale[2]), .B(Prescale[3]), .Y(N7) );
  CLKINVX1M U19 ( .A(Prescale[1]), .Y(N12) );
  OAI2BB1X1M U20 ( .A0N(Prescale[1]), .A1N(Prescale[2]), .B0(n2), .Y(N13) );
  OR2X1M U21 ( .A(n2), .B(Prescale[3]), .Y(n3) );
  OAI2BB1X1M U22 ( .A0N(n2), .A1N(Prescale[3]), .B0(n3), .Y(N14) );
  XNOR2X1M U23 ( .A(Prescale[4]), .B(n3), .Y(N15) );
  NOR3X1M U24 ( .A(Prescale[4]), .B(Prescale[5]), .C(n3), .Y(N17) );
  OAI21X1M U25 ( .A0(Prescale[4]), .A1(n3), .B0(Prescale[5]), .Y(n4) );
  NAND2BX1M U26 ( .AN(N17), .B(n4), .Y(N16) );
  CLKMX2X2M U27 ( .A(test_so), .B(RX_IN), .S0(n5), .Y(n30) );
  NOR4X1M U28 ( .A(n6), .B(n7), .C(n8), .D(n9), .Y(n5) );
  XNOR2X1M U29 ( .A(n10), .B(Prescale[1]), .Y(n9) );
  NAND3X1M U30 ( .A(n11), .B(n12), .C(n13), .Y(n7) );
  NAND4BBX1M U31 ( .AN(n14), .BN(n19), .C(n20), .D(n21), .Y(n13) );
  NAND4X1M U32 ( .A(n22), .B(n23), .C(n24), .D(n25), .Y(n6) );
  XNOR2X1M U33 ( .A(edge_cnt[1]), .B(Prescale[2]), .Y(n25) );
  XNOR2X1M U34 ( .A(edge_cnt[2]), .B(Prescale[3]), .Y(n24) );
  XNOR2X1M U35 ( .A(edge_cnt[3]), .B(Prescale[4]), .Y(n23) );
  XNOR2X1M U36 ( .A(edge_cnt[4]), .B(Prescale[5]), .Y(n22) );
  MXI2X1M U37 ( .A(n26), .B(n31), .S0(n32), .Y(n29) );
  NOR4BX1M U38 ( .AN(n11), .B(n33), .C(n14), .D(n19), .Y(n32) );
  CLKXOR2X2M U39 ( .A(edge_cnt[4]), .B(N16), .Y(n19) );
  CLKXOR2X2M U40 ( .A(edge_cnt[3]), .B(N15), .Y(n14) );
  NAND3X1M U41 ( .A(n20), .B(n21), .C(dat_samp_en), .Y(n33) );
  AND3X1M U42 ( .A(n34), .B(n35), .C(n36), .Y(n21) );
  XNOR2X1M U43 ( .A(edge_cnt[1]), .B(N13), .Y(n36) );
  XNOR2X1M U44 ( .A(edge_cnt[5]), .B(N17), .Y(n35) );
  XNOR2X1M U45 ( .A(edge_cnt[0]), .B(N12), .Y(n34) );
  XNOR2X1M U46 ( .A(edge_cnt[2]), .B(N14), .Y(n20) );
  MXI2X1M U47 ( .A(n37), .B(n31), .S0(n38), .Y(n28) );
  NOR2X1M U48 ( .A(n8), .B(n11), .Y(n38) );
  NAND4X1M U49 ( .A(n39), .B(n40), .C(n41), .D(n42), .Y(n11) );
  NOR3X1M U50 ( .A(n43), .B(n44), .C(n45), .Y(n42) );
  XNOR2X1M U51 ( .A(n46), .B(N9), .Y(n45) );
  XNOR2X1M U52 ( .A(n10), .B(Prescale[1]), .Y(n44) );
  CLKINVX1M U53 ( .A(edge_cnt[0]), .Y(n10) );
  XNOR2X1M U54 ( .A(n12), .B(n1), .Y(n43) );
  XNOR2X1M U55 ( .A(edge_cnt[2]), .B(N7), .Y(n41) );
  XNOR2X1M U56 ( .A(edge_cnt[3]), .B(N8), .Y(n40) );
  XNOR2X1M U57 ( .A(edge_cnt[1]), .B(N6), .Y(n39) );
  CLKINVX1M U58 ( .A(dat_samp_en), .Y(n8) );
  CLKINVX1M U59 ( .A(RX_IN), .Y(n31) );
  CLKMX2X2M U60 ( .A(sampled_bit), .B(n47), .S0(n48), .Y(n27) );
  NOR4X1M U61 ( .A(n49), .B(n50), .C(n51), .D(n52), .Y(n48) );
  CLKXOR2X2M U62 ( .A(edge_cnt[3]), .B(N25), .Y(n52) );
  XNOR2X1M U63 ( .A(n12), .B(N27), .Y(n51) );
  CLKINVX1M U64 ( .A(edge_cnt[5]), .Y(n12) );
  XNOR2X1M U65 ( .A(n46), .B(N26), .Y(n50) );
  CLKINVX1M U66 ( .A(edge_cnt[4]), .Y(n46) );
  NAND4X1M U67 ( .A(n53), .B(n54), .C(n55), .D(dat_samp_en), .Y(n49) );
  XNOR2X1M U68 ( .A(edge_cnt[0]), .B(N12), .Y(n55) );
  XNOR2X1M U69 ( .A(edge_cnt[1]), .B(N23), .Y(n54) );
  XNOR2X1M U70 ( .A(edge_cnt[2]), .B(N24), .Y(n53) );
  OAI21X1M U71 ( .A0(n26), .A1(n37), .B0(n56), .Y(n47) );
  OAI21X1M U72 ( .A0(samples_0_), .A1(samples_1_), .B0(test_so), .Y(n56) );
  CLKINVX1M U73 ( .A(samples_0_), .Y(n37) );
  CLKINVX1M U74 ( .A(samples_1_), .Y(n26) );
endmodule


module deserializer_test_1 ( CLK, RST, sampled_bit, deser_en, edge_cnt, 
        Prescale, P_DATA, test_si, test_se );
  input [5:0] edge_cnt;
  input [5:0] Prescale;
  output [7:0] P_DATA;
  input CLK, RST, sampled_bit, deser_en, test_si, test_se;
  wire   N1, N2, N3, N4, N5, N6, N7, N8, n1, n11, n13, n15, n17, n19, n21, n23,
         n25, n2, n3, n4, n5, n6, n7, n8, n9, n26, n27, n28, n29, n30, n31,
         n32, n33, n34, n35, n36, n37, n38;

  SDFFRQX2M P_DATA_reg_0_ ( .D(n11), .SI(test_si), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(P_DATA[0]) );
  SDFFRQX2M P_DATA_reg_5_ ( .D(n21), .SI(P_DATA[4]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(P_DATA[5]) );
  SDFFRQX2M P_DATA_reg_1_ ( .D(n13), .SI(P_DATA[0]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(P_DATA[1]) );
  SDFFRQX2M P_DATA_reg_4_ ( .D(n19), .SI(P_DATA[3]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(P_DATA[4]) );
  SDFFRQX2M P_DATA_reg_7_ ( .D(n25), .SI(P_DATA[6]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(P_DATA[7]) );
  SDFFRQX2M P_DATA_reg_3_ ( .D(n17), .SI(P_DATA[2]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(P_DATA[3]) );
  SDFFRQX2M P_DATA_reg_6_ ( .D(n23), .SI(P_DATA[5]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(P_DATA[6]) );
  SDFFRQX2M P_DATA_reg_2_ ( .D(n15), .SI(P_DATA[1]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(P_DATA[2]) );
  OAI22X1M U3 ( .A0(n31), .A1(n38), .B0(n1), .B1(n37), .Y(n13) );
  OAI22X1M U4 ( .A0(n31), .A1(n37), .B0(n1), .B1(n36), .Y(n15) );
  OAI22X1M U5 ( .A0(n31), .A1(n36), .B0(n1), .B1(n35), .Y(n17) );
  OAI22X1M U6 ( .A0(n31), .A1(n35), .B0(n1), .B1(n34), .Y(n19) );
  OAI22X1M U7 ( .A0(n31), .A1(n34), .B0(n1), .B1(n33), .Y(n21) );
  OAI22X1M U8 ( .A0(n31), .A1(n33), .B0(n1), .B1(n32), .Y(n23) );
  INVX2M U9 ( .A(n1), .Y(n31) );
  NAND2X2M U10 ( .A(deser_en), .B(N8), .Y(n1) );
  OAI2BB2X1M U11 ( .B0(n1), .B1(n38), .A0N(P_DATA[0]), .A1N(n1), .Y(n11) );
  OAI2BB2X1M U12 ( .B0(n31), .B1(n32), .A0N(sampled_bit), .A1N(n31), .Y(n25)
         );
  INVX2M U13 ( .A(P_DATA[2]), .Y(n37) );
  INVX2M U14 ( .A(P_DATA[6]), .Y(n33) );
  INVX2M U15 ( .A(P_DATA[7]), .Y(n32) );
  INVX2M U16 ( .A(P_DATA[3]), .Y(n36) );
  INVX2M U17 ( .A(P_DATA[1]), .Y(n38) );
  INVX2M U18 ( .A(P_DATA[4]), .Y(n35) );
  INVX2M U19 ( .A(P_DATA[5]), .Y(n34) );
  OR2X2M U28 ( .A(Prescale[1]), .B(Prescale[0]), .Y(n2) );
  CLKINVX1M U29 ( .A(Prescale[0]), .Y(N1) );
  OAI2BB1X1M U30 ( .A0N(Prescale[0]), .A1N(Prescale[1]), .B0(n2), .Y(N2) );
  OR2X1M U31 ( .A(n2), .B(Prescale[2]), .Y(n3) );
  OAI2BB1X1M U32 ( .A0N(n2), .A1N(Prescale[2]), .B0(n3), .Y(N3) );
  OR2X1M U33 ( .A(n3), .B(Prescale[3]), .Y(n4) );
  OAI2BB1X1M U34 ( .A0N(n3), .A1N(Prescale[3]), .B0(n4), .Y(N4) );
  OR2X1M U35 ( .A(n4), .B(Prescale[4]), .Y(n5) );
  OAI2BB1X1M U36 ( .A0N(n4), .A1N(Prescale[4]), .B0(n5), .Y(N5) );
  NOR2X1M U37 ( .A(n5), .B(Prescale[5]), .Y(N7) );
  AO21XLM U38 ( .A0(n5), .A1(Prescale[5]), .B0(N7), .Y(N6) );
  NOR2BX1M U39 ( .AN(N1), .B(edge_cnt[0]), .Y(n6) );
  OAI2B2X1M U40 ( .A1N(edge_cnt[1]), .A0(n6), .B0(N2), .B1(n6), .Y(n26) );
  XNOR2X1M U41 ( .A(N6), .B(edge_cnt[5]), .Y(n9) );
  NOR2BX1M U42 ( .AN(edge_cnt[0]), .B(N1), .Y(n7) );
  OAI2B2X1M U43 ( .A1N(N2), .A0(n7), .B0(edge_cnt[1]), .B1(n7), .Y(n8) );
  NAND4BX1M U44 ( .AN(N7), .B(n26), .C(n9), .D(n8), .Y(n30) );
  CLKXOR2X2M U45 ( .A(N5), .B(edge_cnt[4]), .Y(n29) );
  CLKXOR2X2M U46 ( .A(N3), .B(edge_cnt[2]), .Y(n28) );
  CLKXOR2X2M U47 ( .A(N4), .B(edge_cnt[3]), .Y(n27) );
  NOR4X1M U48 ( .A(n30), .B(n29), .C(n28), .D(n27), .Y(N8) );
endmodule


module strt_check ( strt_chk_en, sampled_bit, strt_glitch );
  input strt_chk_en, sampled_bit;
  output strt_glitch;


  AND2X2M U2 ( .A(strt_chk_en), .B(sampled_bit), .Y(strt_glitch) );
endmodule


module parity_check ( par_chk_en, sampled_bit, PAR_TYP, P_DATA, par_err );
  input [7:0] P_DATA;
  input par_chk_en, sampled_bit, PAR_TYP;
  output par_err;
  wire   n1, n2, n3, n4, n5, n6;

  NOR2BX2M U2 ( .AN(par_chk_en), .B(n1), .Y(par_err) );
  XNOR2X2M U3 ( .A(P_DATA[3]), .B(P_DATA[2]), .Y(n6) );
  XNOR2X2M U4 ( .A(P_DATA[7]), .B(P_DATA[6]), .Y(n5) );
  XOR3XLM U5 ( .A(n2), .B(n3), .C(n4), .Y(n1) );
  XNOR2X2M U6 ( .A(sampled_bit), .B(PAR_TYP), .Y(n4) );
  XOR3XLM U7 ( .A(P_DATA[5]), .B(P_DATA[4]), .C(n5), .Y(n3) );
  XOR3XLM U8 ( .A(P_DATA[1]), .B(P_DATA[0]), .C(n6), .Y(n2) );
endmodule


module stop_check ( stp_chk_en, sampled_bit, stp_err );
  input stp_chk_en, sampled_bit;
  output stp_err;


  NOR2BX2M U2 ( .AN(stp_chk_en), .B(sampled_bit), .Y(stp_err) );
endmodule


module UART_RX_FSM_test_1 ( CLK, RST, RX_IN, PAR_EN, strt_glitch, par_err_in, 
        stp_err_in, bit_cnt, edge_cnt, Prescale, enable, bit_cnt_clr, 
        dat_samp_en, deser_en, strt_chk_en, par_chk_en, stp_chk_en, data_valid, 
        par_err, stp_err, test_si2, test_si1, test_so1, test_se );
  input [5:0] bit_cnt;
  input [5:0] edge_cnt;
  input [5:0] Prescale;
  input CLK, RST, RX_IN, PAR_EN, strt_glitch, par_err_in, stp_err_in, test_si2,
         test_si1, test_se;
  output enable, bit_cnt_clr, dat_samp_en, deser_en, strt_chk_en, par_chk_en,
         stp_chk_en, data_valid, par_err, stp_err, test_so1;
  wire   state_1_, state_0_, N32, N33, N34, N35, N36, N37, N38, N39, N97, N98,
         N99, N100, N101, N103, N111, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50,
         n1, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n23, n24, n25, n26, n27, n28, n51, n52, n53, n54, n55, n56, n57, n58,
         n62, n63;
  wire   [5:3] sub_95_carry;

  SDFFRQX2M state_reg_1_ ( .D(n48), .SI(state_0_), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(state_1_) );
  SDFFRQX2M state_reg_2_ ( .D(n49), .SI(state_1_), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(test_so1) );
  SDFFRQX2M state_reg_0_ ( .D(n50), .SI(par_err), .SE(test_se), .CK(CLK), .RN(
        RST), .Q(state_0_) );
  SDFFRQX2M stp_err_reg ( .D(n47), .SI(test_si2), .SE(test_se), .CK(CLK), .RN(
        RST), .Q(stp_err) );
  SDFFRQX2M par_err_reg ( .D(n53), .SI(data_valid), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(par_err) );
  SDFFRQX2M data_valid_reg ( .D(N111), .SI(test_si1), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(data_valid) );
  NOR2X2M U4 ( .A(Prescale[5]), .B(sub_95_carry[5]), .Y(n1) );
  OAI21X2M U5 ( .A0(par_chk_en), .A1(n39), .B0(n58), .Y(n44) );
  OAI21BX1M U6 ( .A0(n36), .A1(n57), .B0N(n37), .Y(n48) );
  AOI211X2M U7 ( .A0(n58), .A1(n39), .B0(deser_en), .C0(par_chk_en), .Y(n36)
         );
  NAND2X2M U13 ( .A(N39), .B(par_chk_en), .Y(n30) );
  INVX2M U14 ( .A(N39), .Y(n58) );
  OAI2B2X1M U15 ( .A1N(deser_en), .A0(n38), .B0(n36), .B1(n56), .Y(n49) );
  NOR3X2M U16 ( .A(n57), .B(n55), .C(n56), .Y(par_chk_en) );
  OAI21X2M U17 ( .A0(n34), .A1(n55), .B0(n35), .Y(n31) );
  NOR2BX2M U18 ( .AN(n34), .B(n42), .Y(bit_cnt_clr) );
  NAND2BX2M U19 ( .AN(stp_chk_en), .B(n42), .Y(n39) );
  NOR3X2M U20 ( .A(strt_glitch), .B(n58), .C(n42), .Y(n37) );
  AOI22X1M U21 ( .A0(RX_IN), .A1(n55), .B0(n40), .B1(n41), .Y(n50) );
  AOI22X1M U22 ( .A0(n35), .A1(n55), .B0(state_0_), .B1(n43), .Y(n40) );
  AOI221XLM U23 ( .A0(stp_chk_en), .A1(N39), .B0(PAR_EN), .B1(deser_en), .C0(
        n37), .Y(n41) );
  OAI2BB1X2M U24 ( .A0N(n38), .A1N(deser_en), .B0(n44), .Y(n43) );
  OAI2B1X2M U25 ( .A1N(n35), .A0(RX_IN), .B0(n42), .Y(strt_chk_en) );
  NAND4BXLM U26 ( .AN(bit_cnt[0]), .B(N39), .C(bit_cnt[3]), .D(n45), .Y(n38)
         );
  NOR4X1M U27 ( .A(bit_cnt[5]), .B(bit_cnt[4]), .C(bit_cnt[2]), .D(bit_cnt[1]), 
        .Y(n45) );
  INVX2M U28 ( .A(n29), .Y(n53) );
  AOI32X1M U29 ( .A0(n30), .A1(n31), .A2(par_err), .B0(par_err_in), .B1(n54), 
        .Y(n29) );
  INVX2M U30 ( .A(n30), .Y(n54) );
  NOR3X2M U31 ( .A(n57), .B(state_0_), .C(n56), .Y(stp_chk_en) );
  NOR3X2M U32 ( .A(n55), .B(test_so1), .C(n57), .Y(deser_en) );
  NAND2X2M U33 ( .A(N103), .B(stp_chk_en), .Y(n32) );
  NOR2X2M U34 ( .A(state_1_), .B(test_so1), .Y(n35) );
  NOR3X2M U35 ( .A(n32), .B(stp_err_in), .C(par_err), .Y(N111) );
  NAND2X2M U36 ( .A(state_0_), .B(n35), .Y(n42) );
  OAI2B1X2M U37 ( .A1N(stp_err_in), .A0(n32), .B0(n33), .Y(n47) );
  NAND3X2M U38 ( .A(n31), .B(n32), .C(n63), .Y(n33) );
  INVX2M U39 ( .A(state_0_), .Y(n55) );
  INVX2M U40 ( .A(state_1_), .Y(n57) );
  INVX2M U41 ( .A(test_so1), .Y(n56) );
  NOR4X1M U42 ( .A(edge_cnt[2]), .B(edge_cnt[1]), .C(edge_cnt[0]), .D(n46), 
        .Y(n34) );
  OR3X2M U43 ( .A(edge_cnt[5]), .B(edge_cnt[4]), .C(edge_cnt[3]), .Y(n46) );
  OR2X2M U44 ( .A(Prescale[1]), .B(Prescale[0]), .Y(n3) );
  INVX2M U45 ( .A(Prescale[1]), .Y(N97) );
  BUFX2M U46 ( .A(dat_samp_en), .Y(enable) );
  OR4X1M U47 ( .A(deser_en), .B(stp_chk_en), .C(par_chk_en), .D(strt_chk_en), 
        .Y(dat_samp_en) );
  XNOR2X1M U48 ( .A(sub_95_carry[5]), .B(Prescale[5]), .Y(N101) );
  OR2X1M U49 ( .A(Prescale[4]), .B(sub_95_carry[4]), .Y(sub_95_carry[5]) );
  XNOR2X1M U50 ( .A(sub_95_carry[4]), .B(Prescale[4]), .Y(N100) );
  OR2X1M U51 ( .A(Prescale[3]), .B(sub_95_carry[3]), .Y(sub_95_carry[4]) );
  XNOR2X1M U52 ( .A(sub_95_carry[3]), .B(Prescale[3]), .Y(N99) );
  OR2X1M U53 ( .A(Prescale[2]), .B(Prescale[1]), .Y(sub_95_carry[3]) );
  XNOR2X1M U54 ( .A(Prescale[1]), .B(Prescale[2]), .Y(N98) );
  CLKINVX1M U55 ( .A(Prescale[0]), .Y(N32) );
  OAI2BB1X1M U56 ( .A0N(Prescale[0]), .A1N(Prescale[1]), .B0(n3), .Y(N33) );
  OR2X1M U57 ( .A(n3), .B(Prescale[2]), .Y(n4) );
  OAI2BB1X1M U58 ( .A0N(n3), .A1N(Prescale[2]), .B0(n4), .Y(N34) );
  OR2X1M U59 ( .A(n4), .B(Prescale[3]), .Y(n5) );
  OAI2BB1X1M U60 ( .A0N(n4), .A1N(Prescale[3]), .B0(n5), .Y(N35) );
  OR2X1M U61 ( .A(n5), .B(Prescale[4]), .Y(n6) );
  OAI2BB1X1M U62 ( .A0N(n5), .A1N(Prescale[4]), .B0(n6), .Y(N36) );
  NOR2X1M U63 ( .A(n6), .B(Prescale[5]), .Y(N38) );
  AO21XLM U64 ( .A0(n6), .A1(Prescale[5]), .B0(N38), .Y(N37) );
  NOR2BX1M U65 ( .AN(N32), .B(edge_cnt[0]), .Y(n7) );
  OAI2B2X1M U66 ( .A1N(edge_cnt[1]), .A0(n7), .B0(N33), .B1(n7), .Y(n11) );
  XNOR2X1M U67 ( .A(N37), .B(edge_cnt[5]), .Y(n10) );
  NOR2BX1M U68 ( .AN(edge_cnt[0]), .B(N32), .Y(n8) );
  OAI2B2X1M U69 ( .A1N(N33), .A0(n8), .B0(edge_cnt[1]), .B1(n8), .Y(n9) );
  NAND4BX1M U70 ( .AN(N38), .B(n11), .C(n10), .D(n9), .Y(n15) );
  CLKXOR2X2M U71 ( .A(N36), .B(edge_cnt[4]), .Y(n14) );
  CLKXOR2X2M U72 ( .A(N34), .B(edge_cnt[2]), .Y(n13) );
  CLKXOR2X2M U73 ( .A(N35), .B(edge_cnt[3]), .Y(n12) );
  NOR4X1M U74 ( .A(n15), .B(n14), .C(n13), .D(n12), .Y(N39) );
  NOR2BX1M U75 ( .AN(Prescale[0]), .B(edge_cnt[0]), .Y(n16) );
  OAI2B2X1M U76 ( .A1N(edge_cnt[1]), .A0(n16), .B0(N97), .B1(n16), .Y(n26) );
  XNOR2X1M U77 ( .A(N101), .B(edge_cnt[5]), .Y(n25) );
  NOR2BX1M U78 ( .AN(edge_cnt[0]), .B(Prescale[0]), .Y(n23) );
  OAI2B2X1M U79 ( .A1N(N97), .A0(n23), .B0(edge_cnt[1]), .B1(n23), .Y(n24) );
  NAND4BX1M U80 ( .AN(n1), .B(n26), .C(n25), .D(n24), .Y(n52) );
  CLKXOR2X2M U81 ( .A(N100), .B(edge_cnt[4]), .Y(n51) );
  CLKXOR2X2M U82 ( .A(N98), .B(edge_cnt[2]), .Y(n28) );
  CLKXOR2X2M U83 ( .A(N99), .B(edge_cnt[3]), .Y(n27) );
  NOR4X1M U84 ( .A(n52), .B(n51), .C(n28), .D(n27), .Y(N103) );
  INVXLM U85 ( .A(stp_err), .Y(n62) );
  INVXLM U86 ( .A(n62), .Y(n63) );
endmodule


module UART_RX_test_1 ( CLK, RST, PAR_TYP, PAR_EN, Prescale, RX_IN, P_DATA, 
        Data_valid, Parity_Error, Stop_Error, test_si2, test_si1, test_so1, 
        test_se );
  input [5:0] Prescale;
  output [7:0] P_DATA;
  input CLK, RST, PAR_TYP, PAR_EN, RX_IN, test_si2, test_si1, test_se;
  output Data_valid, Parity_Error, Stop_Error, test_so1;
  wire   enable, bit_cnt_clr, edge_cnt_4_, edge_cnt_3_, edge_cnt_2_,
         edge_cnt_1_, edge_cnt_0_, dat_samp_en, sampled_bit, deser_en,
         strt_chk_en, strt_glitch, par_chk_en, par_err_comb, stp_chk_en,
         stp_err_comb, n1, n2, n4, n5;
  wire   [5:0] bit_cnt;

  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(RST), .Y(n2) );
  edge_bit_counter_test_1 U_edge_bit_counter ( .CLK(CLK), .RST(n1), .enable(
        enable), .bit_cnt_clr(bit_cnt_clr), .Prescale(Prescale), .edge_cnt({
        test_so1, edge_cnt_4_, edge_cnt_3_, edge_cnt_2_, edge_cnt_1_, 
        edge_cnt_0_}), .bit_cnt(bit_cnt), .test_si(P_DATA[7]), .test_se(
        test_se) );
  data_sampling_test_1 U_data_sampling ( .CLK(CLK), .RST(n1), .RX_IN(RX_IN), 
        .Prescale(Prescale), .edge_cnt({test_so1, edge_cnt_4_, edge_cnt_3_, 
        edge_cnt_2_, edge_cnt_1_, edge_cnt_0_}), .dat_samp_en(dat_samp_en), 
        .sampled_bit(sampled_bit), .test_si(n5), .test_so(n4), .test_se(
        test_se) );
  deserializer_test_1 U_deserializer ( .CLK(CLK), .RST(n1), .sampled_bit(
        sampled_bit), .deser_en(deser_en), .edge_cnt({test_so1, edge_cnt_4_, 
        edge_cnt_3_, edge_cnt_2_, edge_cnt_1_, edge_cnt_0_}), .Prescale(
        Prescale), .P_DATA(P_DATA), .test_si(n4), .test_se(test_se) );
  strt_check U_strt_check ( .strt_chk_en(strt_chk_en), .sampled_bit(
        sampled_bit), .strt_glitch(strt_glitch) );
  parity_check U_parity_Check ( .par_chk_en(par_chk_en), .sampled_bit(
        sampled_bit), .PAR_TYP(PAR_TYP), .P_DATA(P_DATA), .par_err(
        par_err_comb) );
  stop_check U_stop_check ( .stp_chk_en(stp_chk_en), .sampled_bit(sampled_bit), 
        .stp_err(stp_err_comb) );
  UART_RX_FSM_test_1 U_FSM ( .CLK(CLK), .RST(n1), .RX_IN(RX_IN), .PAR_EN(
        PAR_EN), .strt_glitch(strt_glitch), .par_err_in(par_err_comb), 
        .stp_err_in(stp_err_comb), .bit_cnt(bit_cnt), .edge_cnt({test_so1, 
        edge_cnt_4_, edge_cnt_3_, edge_cnt_2_, edge_cnt_1_, edge_cnt_0_}), 
        .Prescale(Prescale), .enable(enable), .bit_cnt_clr(bit_cnt_clr), 
        .dat_samp_en(dat_samp_en), .deser_en(deser_en), .strt_chk_en(
        strt_chk_en), .par_chk_en(par_chk_en), .stp_chk_en(stp_chk_en), 
        .data_valid(Data_valid), .par_err(Parity_Error), .stp_err(Stop_Error), 
        .test_si2(test_si2), .test_si1(test_si1), .test_so1(n5), .test_se(
        test_se) );
endmodule


module DATA_SYNC_test_1 ( unsync_bus, bus_enable, CLK, RST, sync_bus, 
        enable_pulse, test_si, test_so, test_se );
  input [7:0] unsync_bus;
  output [7:0] sync_bus;
  input bus_enable, CLK, RST, test_si, test_se;
  output enable_pulse, test_so;
  wire   sync_regs_0_, pulse_gen_ff, n1, n3, n5, n7, n9, n11, n13, n15, n17,
         n22;

  SDFFRQX2M pulse_gen_ff_reg ( .D(test_so), .SI(enable_pulse), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(pulse_gen_ff) );
  SDFFRQX2M sync_regs_reg_1_ ( .D(sync_regs_0_), .SI(sync_regs_0_), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(test_so) );
  SDFFRQX2M sync_bus_reg_4_ ( .D(n11), .SI(sync_bus[3]), .SE(test_se), .CK(CLK), .RN(RST), .Q(sync_bus[4]) );
  SDFFRQX2M sync_bus_reg_6_ ( .D(n15), .SI(sync_bus[5]), .SE(test_se), .CK(CLK), .RN(RST), .Q(sync_bus[6]) );
  SDFFRQX2M sync_bus_reg_7_ ( .D(n17), .SI(sync_bus[6]), .SE(test_se), .CK(CLK), .RN(RST), .Q(sync_bus[7]) );
  SDFFRQX2M sync_bus_reg_3_ ( .D(n9), .SI(sync_bus[2]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(sync_bus[3]) );
  SDFFRQX2M sync_bus_reg_2_ ( .D(n7), .SI(sync_bus[1]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(sync_bus[2]) );
  SDFFRQX2M sync_bus_reg_5_ ( .D(n13), .SI(sync_bus[4]), .SE(test_se), .CK(CLK), .RN(RST), .Q(sync_bus[5]) );
  SDFFRQX2M sync_bus_reg_1_ ( .D(n5), .SI(sync_bus[0]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(sync_bus[1]) );
  SDFFRQX2M sync_bus_reg_0_ ( .D(n3), .SI(pulse_gen_ff), .SE(test_se), .CK(CLK), .RN(RST), .Q(sync_bus[0]) );
  SDFFRQX2M enable_pulse_reg ( .D(n22), .SI(test_si), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(enable_pulse) );
  SDFFRQX2M sync_regs_reg_0_ ( .D(bus_enable), .SI(sync_bus[7]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(sync_regs_0_) );
  INVX2M U3 ( .A(n1), .Y(n22) );
  NAND2BX2M U4 ( .AN(pulse_gen_ff), .B(test_so), .Y(n1) );
  AO22X1M U5 ( .A0(unsync_bus[0]), .A1(n22), .B0(sync_bus[0]), .B1(n1), .Y(n3)
         );
  AO22X1M U6 ( .A0(unsync_bus[1]), .A1(n22), .B0(sync_bus[1]), .B1(n1), .Y(n5)
         );
  AO22X1M U7 ( .A0(unsync_bus[2]), .A1(n22), .B0(sync_bus[2]), .B1(n1), .Y(n7)
         );
  AO22X1M U8 ( .A0(unsync_bus[3]), .A1(n22), .B0(sync_bus[3]), .B1(n1), .Y(n9)
         );
  AO22X1M U9 ( .A0(unsync_bus[4]), .A1(n22), .B0(sync_bus[4]), .B1(n1), .Y(n11) );
  AO22X1M U10 ( .A0(unsync_bus[5]), .A1(n22), .B0(sync_bus[5]), .B1(n1), .Y(
        n13) );
  AO22X1M U11 ( .A0(unsync_bus[6]), .A1(n22), .B0(sync_bus[6]), .B1(n1), .Y(
        n15) );
  AO22X1M U12 ( .A0(unsync_bus[7]), .A1(n22), .B0(sync_bus[7]), .B1(n1), .Y(
        n17) );
endmodule


module FIFO_MEM_CNTRL_test_1 ( wclk, wclken, waddr, raddr, wdata, rdata, 
        test_si, test_so, test_se );
  input [2:0] waddr;
  input [2:0] raddr;
  input [7:0] wdata;
  output [7:0] rdata;
  input wclk, wclken, test_si, test_se;
  output test_so;
  wire   mem_0__7_, mem_0__6_, mem_0__5_, mem_0__4_, mem_0__3_, mem_0__2_,
         mem_0__1_, mem_0__0_, mem_1__7_, mem_1__6_, mem_1__5_, mem_1__4_,
         mem_1__3_, mem_1__2_, mem_1__1_, mem_1__0_, mem_2__7_, mem_2__6_,
         mem_2__5_, mem_2__4_, mem_2__3_, mem_2__2_, mem_2__1_, mem_2__0_,
         mem_3__7_, mem_3__6_, mem_3__5_, mem_3__4_, mem_3__3_, mem_3__2_,
         mem_3__1_, mem_3__0_, mem_4__7_, mem_4__6_, mem_4__5_, mem_4__4_,
         mem_4__3_, mem_4__2_, mem_4__1_, mem_4__0_, mem_5__7_, mem_5__6_,
         mem_5__5_, mem_5__4_, mem_5__3_, mem_5__2_, mem_5__1_, mem_5__0_,
         mem_6__7_, mem_6__6_, mem_6__5_, mem_6__4_, mem_6__3_, mem_6__2_,
         mem_6__1_, mem_6__0_, mem_7__6_, mem_7__5_, mem_7__4_, mem_7__3_,
         mem_7__2_, mem_7__1_, mem_7__0_, n75, n76, n77, n78, n79, n80, n81,
         n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95,
         n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107,
         n108, n109, n110, n111, n112, n113, n114, n115, n116, n117, n118,
         n119, n120, n121, n122, n123, n124, n125, n126, n127, n128, n129,
         n130, n131, n132, n133, n134, n135, n136, n137, n138, n139, n140,
         n141, n142, n143, n144, n145, n146, n147, n148, n65, n66, n67, n68,
         n69, n70, n71, n72, n73, n74, n149, n150, n151, n152, n153, n154,
         n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, n165,
         n166, n167, n168, n169, n170, n171, n172, n173, n174, n175, n176,
         n177, n178, n179, n180, n181, n182, n183, n184, n185, n186, n187,
         n188, n189, n190, n191, n194, n195, n196;

  SDFFQX2M mem_reg_0__7_ ( .D(n148), .SI(mem_0__6_), .SE(n195), .CK(wclk), .Q(
        mem_0__7_) );
  SDFFQX2M mem_reg_0__6_ ( .D(n147), .SI(mem_0__5_), .SE(n194), .CK(wclk), .Q(
        mem_0__6_) );
  SDFFQX2M mem_reg_0__5_ ( .D(n146), .SI(mem_0__4_), .SE(n196), .CK(wclk), .Q(
        mem_0__5_) );
  SDFFQX2M mem_reg_0__4_ ( .D(n145), .SI(mem_0__3_), .SE(n195), .CK(wclk), .Q(
        mem_0__4_) );
  SDFFQX2M mem_reg_0__3_ ( .D(n144), .SI(mem_0__2_), .SE(n194), .CK(wclk), .Q(
        mem_0__3_) );
  SDFFQX2M mem_reg_0__2_ ( .D(n143), .SI(mem_0__1_), .SE(n196), .CK(wclk), .Q(
        mem_0__2_) );
  SDFFQX2M mem_reg_0__1_ ( .D(n142), .SI(mem_0__0_), .SE(n195), .CK(wclk), .Q(
        mem_0__1_) );
  SDFFQX2M mem_reg_0__0_ ( .D(n141), .SI(test_si), .SE(n194), .CK(wclk), .Q(
        mem_0__0_) );
  SDFFQX2M mem_reg_1__7_ ( .D(n140), .SI(mem_1__6_), .SE(n194), .CK(wclk), .Q(
        mem_1__7_) );
  SDFFQX2M mem_reg_1__6_ ( .D(n139), .SI(mem_1__5_), .SE(n196), .CK(wclk), .Q(
        mem_1__6_) );
  SDFFQX2M mem_reg_1__5_ ( .D(n138), .SI(mem_1__4_), .SE(n195), .CK(wclk), .Q(
        mem_1__5_) );
  SDFFQX2M mem_reg_1__4_ ( .D(n137), .SI(mem_1__3_), .SE(n194), .CK(wclk), .Q(
        mem_1__4_) );
  SDFFQX2M mem_reg_1__3_ ( .D(n136), .SI(mem_1__2_), .SE(n196), .CK(wclk), .Q(
        mem_1__3_) );
  SDFFQX2M mem_reg_1__2_ ( .D(n135), .SI(mem_1__1_), .SE(n195), .CK(wclk), .Q(
        mem_1__2_) );
  SDFFQX2M mem_reg_1__1_ ( .D(n134), .SI(mem_1__0_), .SE(n194), .CK(wclk), .Q(
        mem_1__1_) );
  SDFFQX2M mem_reg_1__0_ ( .D(n133), .SI(mem_0__7_), .SE(n196), .CK(wclk), .Q(
        mem_1__0_) );
  SDFFQX2M mem_reg_4__7_ ( .D(n116), .SI(mem_4__6_), .SE(n194), .CK(wclk), .Q(
        mem_4__7_) );
  SDFFQX2M mem_reg_4__6_ ( .D(n115), .SI(mem_4__5_), .SE(n196), .CK(wclk), .Q(
        mem_4__6_) );
  SDFFQX2M mem_reg_4__5_ ( .D(n114), .SI(mem_4__4_), .SE(n195), .CK(wclk), .Q(
        mem_4__5_) );
  SDFFQX2M mem_reg_4__4_ ( .D(n113), .SI(mem_4__3_), .SE(n194), .CK(wclk), .Q(
        mem_4__4_) );
  SDFFQX2M mem_reg_4__3_ ( .D(n112), .SI(mem_4__2_), .SE(n196), .CK(wclk), .Q(
        mem_4__3_) );
  SDFFQX2M mem_reg_4__2_ ( .D(n111), .SI(mem_4__1_), .SE(n195), .CK(wclk), .Q(
        mem_4__2_) );
  SDFFQX2M mem_reg_4__1_ ( .D(n110), .SI(mem_4__0_), .SE(n194), .CK(wclk), .Q(
        mem_4__1_) );
  SDFFQX2M mem_reg_4__0_ ( .D(n109), .SI(mem_3__7_), .SE(n196), .CK(wclk), .Q(
        mem_4__0_) );
  SDFFQX2M mem_reg_5__7_ ( .D(n108), .SI(mem_5__6_), .SE(n196), .CK(wclk), .Q(
        mem_5__7_) );
  SDFFQX2M mem_reg_5__6_ ( .D(n107), .SI(mem_5__5_), .SE(n195), .CK(wclk), .Q(
        mem_5__6_) );
  SDFFQX2M mem_reg_5__5_ ( .D(n106), .SI(mem_5__4_), .SE(n194), .CK(wclk), .Q(
        mem_5__5_) );
  SDFFQX2M mem_reg_5__4_ ( .D(n105), .SI(mem_5__3_), .SE(n196), .CK(wclk), .Q(
        mem_5__4_) );
  SDFFQX2M mem_reg_5__3_ ( .D(n104), .SI(mem_5__2_), .SE(n195), .CK(wclk), .Q(
        mem_5__3_) );
  SDFFQX2M mem_reg_5__2_ ( .D(n103), .SI(mem_5__1_), .SE(n194), .CK(wclk), .Q(
        mem_5__2_) );
  SDFFQX2M mem_reg_5__1_ ( .D(n102), .SI(mem_5__0_), .SE(n196), .CK(wclk), .Q(
        mem_5__1_) );
  SDFFQX2M mem_reg_5__0_ ( .D(n101), .SI(mem_4__7_), .SE(n195), .CK(wclk), .Q(
        mem_5__0_) );
  SDFFQX2M mem_reg_6__7_ ( .D(n100), .SI(mem_6__6_), .SE(n195), .CK(wclk), .Q(
        mem_6__7_) );
  SDFFQX2M mem_reg_6__6_ ( .D(n99), .SI(mem_6__5_), .SE(n194), .CK(wclk), .Q(
        mem_6__6_) );
  SDFFQX2M mem_reg_6__5_ ( .D(n98), .SI(mem_6__4_), .SE(n196), .CK(wclk), .Q(
        mem_6__5_) );
  SDFFQX2M mem_reg_6__4_ ( .D(n97), .SI(mem_6__3_), .SE(n195), .CK(wclk), .Q(
        mem_6__4_) );
  SDFFQX2M mem_reg_6__3_ ( .D(n96), .SI(mem_6__2_), .SE(n194), .CK(wclk), .Q(
        mem_6__3_) );
  SDFFQX2M mem_reg_6__2_ ( .D(n95), .SI(mem_6__1_), .SE(n196), .CK(wclk), .Q(
        mem_6__2_) );
  SDFFQX2M mem_reg_6__1_ ( .D(n94), .SI(mem_6__0_), .SE(n195), .CK(wclk), .Q(
        mem_6__1_) );
  SDFFQX2M mem_reg_6__0_ ( .D(n93), .SI(mem_5__7_), .SE(n194), .CK(wclk), .Q(
        mem_6__0_) );
  SDFFQX2M mem_reg_7__7_ ( .D(n92), .SI(mem_7__6_), .SE(n194), .CK(wclk), .Q(
        test_so) );
  SDFFQX2M mem_reg_7__6_ ( .D(n91), .SI(mem_7__5_), .SE(n196), .CK(wclk), .Q(
        mem_7__6_) );
  SDFFQX2M mem_reg_7__5_ ( .D(n90), .SI(mem_7__4_), .SE(n195), .CK(wclk), .Q(
        mem_7__5_) );
  SDFFQX2M mem_reg_7__4_ ( .D(n89), .SI(mem_7__3_), .SE(n194), .CK(wclk), .Q(
        mem_7__4_) );
  SDFFQX2M mem_reg_7__3_ ( .D(n88), .SI(mem_7__2_), .SE(n196), .CK(wclk), .Q(
        mem_7__3_) );
  SDFFQX2M mem_reg_7__2_ ( .D(n87), .SI(mem_7__1_), .SE(n195), .CK(wclk), .Q(
        mem_7__2_) );
  SDFFQX2M mem_reg_7__1_ ( .D(n86), .SI(mem_7__0_), .SE(n194), .CK(wclk), .Q(
        mem_7__1_) );
  SDFFQX2M mem_reg_7__0_ ( .D(n85), .SI(mem_6__7_), .SE(n196), .CK(wclk), .Q(
        mem_7__0_) );
  SDFFQX2M mem_reg_2__7_ ( .D(n132), .SI(mem_2__6_), .SE(n196), .CK(wclk), .Q(
        mem_2__7_) );
  SDFFQX2M mem_reg_2__6_ ( .D(n131), .SI(mem_2__5_), .SE(n195), .CK(wclk), .Q(
        mem_2__6_) );
  SDFFQX2M mem_reg_2__5_ ( .D(n130), .SI(mem_2__4_), .SE(n194), .CK(wclk), .Q(
        mem_2__5_) );
  SDFFQX2M mem_reg_2__4_ ( .D(n129), .SI(mem_2__3_), .SE(n196), .CK(wclk), .Q(
        mem_2__4_) );
  SDFFQX2M mem_reg_2__3_ ( .D(n128), .SI(mem_2__2_), .SE(n195), .CK(wclk), .Q(
        mem_2__3_) );
  SDFFQX2M mem_reg_2__2_ ( .D(n127), .SI(mem_2__1_), .SE(n194), .CK(wclk), .Q(
        mem_2__2_) );
  SDFFQX2M mem_reg_2__1_ ( .D(n126), .SI(mem_2__0_), .SE(n196), .CK(wclk), .Q(
        mem_2__1_) );
  SDFFQX2M mem_reg_2__0_ ( .D(n125), .SI(mem_1__7_), .SE(n195), .CK(wclk), .Q(
        mem_2__0_) );
  SDFFQX2M mem_reg_3__7_ ( .D(n124), .SI(mem_3__6_), .SE(n195), .CK(wclk), .Q(
        mem_3__7_) );
  SDFFQX2M mem_reg_3__6_ ( .D(n123), .SI(mem_3__5_), .SE(n194), .CK(wclk), .Q(
        mem_3__6_) );
  SDFFQX2M mem_reg_3__5_ ( .D(n122), .SI(mem_3__4_), .SE(n196), .CK(wclk), .Q(
        mem_3__5_) );
  SDFFQX2M mem_reg_3__4_ ( .D(n121), .SI(mem_3__3_), .SE(n195), .CK(wclk), .Q(
        mem_3__4_) );
  SDFFQX2M mem_reg_3__3_ ( .D(n120), .SI(mem_3__2_), .SE(n194), .CK(wclk), .Q(
        mem_3__3_) );
  SDFFQX2M mem_reg_3__2_ ( .D(n119), .SI(mem_3__1_), .SE(n196), .CK(wclk), .Q(
        mem_3__2_) );
  SDFFQX2M mem_reg_3__1_ ( .D(n118), .SI(mem_3__0_), .SE(n195), .CK(wclk), .Q(
        mem_3__1_) );
  SDFFQX2M mem_reg_3__0_ ( .D(n117), .SI(mem_2__7_), .SE(n194), .CK(wclk), .Q(
        mem_3__0_) );
  BUFX2M U66 ( .A(n80), .Y(n180) );
  BUFX2M U67 ( .A(n82), .Y(n179) );
  BUFX2M U68 ( .A(n83), .Y(n178) );
  BUFX2M U69 ( .A(n77), .Y(n181) );
  NOR2X2M U70 ( .A(n175), .B(n176), .Y(n171) );
  NAND3X2M U71 ( .A(n182), .B(n191), .C(n76), .Y(n79) );
  NAND3X2M U72 ( .A(n182), .B(n191), .C(n81), .Y(n84) );
  NOR2X2M U73 ( .A(n175), .B(raddr[1]), .Y(n172) );
  NOR2X2M U74 ( .A(n176), .B(raddr[2]), .Y(n169) );
  NOR2X2M U75 ( .A(raddr[1]), .B(raddr[2]), .Y(n168) );
  INVX2M U76 ( .A(raddr[1]), .Y(n176) );
  INVX2M U77 ( .A(raddr[2]), .Y(n175) );
  NAND3X2M U78 ( .A(n76), .B(n191), .C(waddr[0]), .Y(n78) );
  NAND3X2M U79 ( .A(waddr[0]), .B(n76), .C(waddr[1]), .Y(n75) );
  NOR2BX2M U80 ( .AN(wclken), .B(waddr[2]), .Y(n81) );
  INVX2M U81 ( .A(wdata[0]), .Y(n183) );
  INVX2M U82 ( .A(wdata[1]), .Y(n184) );
  INVX2M U83 ( .A(wdata[2]), .Y(n185) );
  INVX2M U84 ( .A(wdata[3]), .Y(n186) );
  INVX2M U85 ( .A(wdata[4]), .Y(n187) );
  INVX2M U86 ( .A(wdata[5]), .Y(n188) );
  INVX2M U87 ( .A(wdata[6]), .Y(n189) );
  INVX2M U88 ( .A(wdata[7]), .Y(n190) );
  OAI2BB2X1M U89 ( .B0(n75), .B1(n183), .A0N(mem_7__0_), .A1N(n75), .Y(n85) );
  OAI2BB2X1M U90 ( .B0(n75), .B1(n184), .A0N(mem_7__1_), .A1N(n75), .Y(n86) );
  OAI2BB2X1M U91 ( .B0(n75), .B1(n185), .A0N(mem_7__2_), .A1N(n75), .Y(n87) );
  OAI2BB2X1M U92 ( .B0(n75), .B1(n186), .A0N(mem_7__3_), .A1N(n75), .Y(n88) );
  OAI2BB2X1M U93 ( .B0(n75), .B1(n187), .A0N(mem_7__4_), .A1N(n75), .Y(n89) );
  OAI2BB2X1M U94 ( .B0(n75), .B1(n188), .A0N(mem_7__5_), .A1N(n75), .Y(n90) );
  OAI2BB2X1M U95 ( .B0(n75), .B1(n189), .A0N(mem_7__6_), .A1N(n75), .Y(n91) );
  OAI2BB2X1M U96 ( .B0(n75), .B1(n190), .A0N(test_so), .A1N(n75), .Y(n92) );
  OAI2BB2X1M U97 ( .B0(n183), .B1(n78), .A0N(mem_5__0_), .A1N(n78), .Y(n101)
         );
  OAI2BB2X1M U98 ( .B0(n184), .B1(n78), .A0N(mem_5__1_), .A1N(n78), .Y(n102)
         );
  OAI2BB2X1M U99 ( .B0(n185), .B1(n78), .A0N(mem_5__2_), .A1N(n78), .Y(n103)
         );
  OAI2BB2X1M U100 ( .B0(n186), .B1(n78), .A0N(mem_5__3_), .A1N(n78), .Y(n104)
         );
  OAI2BB2X1M U101 ( .B0(n187), .B1(n78), .A0N(mem_5__4_), .A1N(n78), .Y(n105)
         );
  OAI2BB2X1M U102 ( .B0(n188), .B1(n78), .A0N(mem_5__5_), .A1N(n78), .Y(n106)
         );
  OAI2BB2X1M U103 ( .B0(n189), .B1(n78), .A0N(mem_5__6_), .A1N(n78), .Y(n107)
         );
  OAI2BB2X1M U104 ( .B0(n190), .B1(n78), .A0N(mem_5__7_), .A1N(n78), .Y(n108)
         );
  OAI2BB2X1M U105 ( .B0(n183), .B1(n84), .A0N(mem_0__0_), .A1N(n84), .Y(n141)
         );
  OAI2BB2X1M U106 ( .B0(n184), .B1(n84), .A0N(mem_0__1_), .A1N(n84), .Y(n142)
         );
  OAI2BB2X1M U107 ( .B0(n185), .B1(n84), .A0N(mem_0__2_), .A1N(n84), .Y(n143)
         );
  OAI2BB2X1M U108 ( .B0(n186), .B1(n84), .A0N(mem_0__3_), .A1N(n84), .Y(n144)
         );
  OAI2BB2X1M U109 ( .B0(n187), .B1(n84), .A0N(mem_0__4_), .A1N(n84), .Y(n145)
         );
  OAI2BB2X1M U110 ( .B0(n188), .B1(n84), .A0N(mem_0__5_), .A1N(n84), .Y(n146)
         );
  OAI2BB2X1M U111 ( .B0(n189), .B1(n84), .A0N(mem_0__6_), .A1N(n84), .Y(n147)
         );
  OAI2BB2X1M U112 ( .B0(n190), .B1(n84), .A0N(mem_0__7_), .A1N(n84), .Y(n148)
         );
  OAI2BB2X1M U113 ( .B0(n183), .B1(n79), .A0N(mem_4__0_), .A1N(n79), .Y(n109)
         );
  OAI2BB2X1M U114 ( .B0(n184), .B1(n79), .A0N(mem_4__1_), .A1N(n79), .Y(n110)
         );
  OAI2BB2X1M U115 ( .B0(n185), .B1(n79), .A0N(mem_4__2_), .A1N(n79), .Y(n111)
         );
  OAI2BB2X1M U116 ( .B0(n186), .B1(n79), .A0N(mem_4__3_), .A1N(n79), .Y(n112)
         );
  OAI2BB2X1M U117 ( .B0(n187), .B1(n79), .A0N(mem_4__4_), .A1N(n79), .Y(n113)
         );
  OAI2BB2X1M U118 ( .B0(n188), .B1(n79), .A0N(mem_4__5_), .A1N(n79), .Y(n114)
         );
  OAI2BB2X1M U119 ( .B0(n189), .B1(n79), .A0N(mem_4__6_), .A1N(n79), .Y(n115)
         );
  OAI2BB2X1M U120 ( .B0(n190), .B1(n79), .A0N(mem_4__7_), .A1N(n79), .Y(n116)
         );
  OAI2BB2X1M U121 ( .B0(n183), .B1(n181), .A0N(mem_6__0_), .A1N(n181), .Y(n93)
         );
  OAI2BB2X1M U122 ( .B0(n184), .B1(n181), .A0N(mem_6__1_), .A1N(n181), .Y(n94)
         );
  OAI2BB2X1M U123 ( .B0(n185), .B1(n181), .A0N(mem_6__2_), .A1N(n181), .Y(n95)
         );
  OAI2BB2X1M U124 ( .B0(n186), .B1(n181), .A0N(mem_6__3_), .A1N(n181), .Y(n96)
         );
  OAI2BB2X1M U125 ( .B0(n187), .B1(n181), .A0N(mem_6__4_), .A1N(n181), .Y(n97)
         );
  OAI2BB2X1M U126 ( .B0(n188), .B1(n181), .A0N(mem_6__5_), .A1N(n181), .Y(n98)
         );
  OAI2BB2X1M U127 ( .B0(n189), .B1(n181), .A0N(mem_6__6_), .A1N(n181), .Y(n99)
         );
  OAI2BB2X1M U128 ( .B0(n190), .B1(n181), .A0N(mem_6__7_), .A1N(n181), .Y(n100) );
  OAI2BB2X1M U129 ( .B0(n183), .B1(n180), .A0N(mem_3__0_), .A1N(n180), .Y(n117) );
  OAI2BB2X1M U130 ( .B0(n184), .B1(n180), .A0N(mem_3__1_), .A1N(n180), .Y(n118) );
  OAI2BB2X1M U131 ( .B0(n185), .B1(n180), .A0N(mem_3__2_), .A1N(n180), .Y(n119) );
  OAI2BB2X1M U132 ( .B0(n186), .B1(n180), .A0N(mem_3__3_), .A1N(n180), .Y(n120) );
  OAI2BB2X1M U133 ( .B0(n187), .B1(n180), .A0N(mem_3__4_), .A1N(n180), .Y(n121) );
  OAI2BB2X1M U134 ( .B0(n188), .B1(n180), .A0N(mem_3__5_), .A1N(n180), .Y(n122) );
  OAI2BB2X1M U135 ( .B0(n189), .B1(n180), .A0N(mem_3__6_), .A1N(n180), .Y(n123) );
  OAI2BB2X1M U136 ( .B0(n190), .B1(n180), .A0N(mem_3__7_), .A1N(n180), .Y(n124) );
  OAI2BB2X1M U137 ( .B0(n183), .B1(n179), .A0N(mem_2__0_), .A1N(n179), .Y(n125) );
  OAI2BB2X1M U138 ( .B0(n184), .B1(n179), .A0N(mem_2__1_), .A1N(n179), .Y(n126) );
  OAI2BB2X1M U139 ( .B0(n185), .B1(n179), .A0N(mem_2__2_), .A1N(n179), .Y(n127) );
  OAI2BB2X1M U140 ( .B0(n186), .B1(n179), .A0N(mem_2__3_), .A1N(n179), .Y(n128) );
  OAI2BB2X1M U141 ( .B0(n187), .B1(n179), .A0N(mem_2__4_), .A1N(n179), .Y(n129) );
  OAI2BB2X1M U142 ( .B0(n188), .B1(n179), .A0N(mem_2__5_), .A1N(n179), .Y(n130) );
  OAI2BB2X1M U143 ( .B0(n189), .B1(n179), .A0N(mem_2__6_), .A1N(n179), .Y(n131) );
  OAI2BB2X1M U144 ( .B0(n190), .B1(n179), .A0N(mem_2__7_), .A1N(n179), .Y(n132) );
  OAI2BB2X1M U145 ( .B0(n183), .B1(n178), .A0N(mem_1__0_), .A1N(n178), .Y(n133) );
  OAI2BB2X1M U146 ( .B0(n184), .B1(n178), .A0N(mem_1__1_), .A1N(n178), .Y(n134) );
  OAI2BB2X1M U147 ( .B0(n185), .B1(n178), .A0N(mem_1__2_), .A1N(n178), .Y(n135) );
  OAI2BB2X1M U148 ( .B0(n186), .B1(n178), .A0N(mem_1__3_), .A1N(n178), .Y(n136) );
  OAI2BB2X1M U149 ( .B0(n187), .B1(n178), .A0N(mem_1__4_), .A1N(n178), .Y(n137) );
  OAI2BB2X1M U150 ( .B0(n188), .B1(n178), .A0N(mem_1__5_), .A1N(n178), .Y(n138) );
  OAI2BB2X1M U151 ( .B0(n189), .B1(n178), .A0N(mem_1__6_), .A1N(n178), .Y(n139) );
  OAI2BB2X1M U152 ( .B0(n190), .B1(n178), .A0N(mem_1__7_), .A1N(n178), .Y(n140) );
  AND2X2M U153 ( .A(wclken), .B(waddr[2]), .Y(n76) );
  NAND3X2M U154 ( .A(n76), .B(n182), .C(waddr[1]), .Y(n77) );
  NAND3X2M U155 ( .A(waddr[1]), .B(waddr[0]), .C(n81), .Y(n80) );
  NAND3X2M U156 ( .A(waddr[1]), .B(n182), .C(n81), .Y(n82) );
  NAND3X2M U157 ( .A(waddr[0]), .B(n191), .C(n81), .Y(n83) );
  INVX2M U158 ( .A(raddr[0]), .Y(n177) );
  INVX2M U159 ( .A(waddr[1]), .Y(n191) );
  INVX2M U160 ( .A(waddr[0]), .Y(n182) );
  AO22X1M U161 ( .A0(mem_3__0_), .A1(n169), .B0(mem_1__0_), .B1(n168), .Y(n65)
         );
  AOI221XLM U162 ( .A0(mem_5__0_), .A1(n172), .B0(mem_7__0_), .B1(n171), .C0(
        n65), .Y(n68) );
  AO22X1M U163 ( .A0(mem_2__0_), .A1(n169), .B0(mem_0__0_), .B1(n168), .Y(n66)
         );
  AOI221XLM U164 ( .A0(mem_4__0_), .A1(n172), .B0(mem_6__0_), .B1(n171), .C0(
        n66), .Y(n67) );
  OAI22X1M U165 ( .A0(n177), .A1(n68), .B0(raddr[0]), .B1(n67), .Y(rdata[0])
         );
  AO22X1M U166 ( .A0(mem_3__1_), .A1(n169), .B0(mem_1__1_), .B1(n168), .Y(n69)
         );
  AOI221XLM U167 ( .A0(mem_5__1_), .A1(n172), .B0(mem_7__1_), .B1(n171), .C0(
        n69), .Y(n72) );
  AO22X1M U168 ( .A0(mem_2__1_), .A1(n169), .B0(mem_0__1_), .B1(n168), .Y(n70)
         );
  AOI221XLM U169 ( .A0(mem_4__1_), .A1(n172), .B0(mem_6__1_), .B1(n171), .C0(
        n70), .Y(n71) );
  OAI22X1M U170 ( .A0(n177), .A1(n72), .B0(raddr[0]), .B1(n71), .Y(rdata[1])
         );
  AO22X1M U171 ( .A0(mem_3__2_), .A1(n169), .B0(mem_1__2_), .B1(n168), .Y(n73)
         );
  AOI221XLM U172 ( .A0(mem_5__2_), .A1(n172), .B0(mem_7__2_), .B1(n171), .C0(
        n73), .Y(n150) );
  AO22X1M U173 ( .A0(mem_2__2_), .A1(n169), .B0(mem_0__2_), .B1(n168), .Y(n74)
         );
  AOI221XLM U174 ( .A0(mem_4__2_), .A1(n172), .B0(mem_6__2_), .B1(n171), .C0(
        n74), .Y(n149) );
  OAI22X1M U175 ( .A0(n177), .A1(n150), .B0(raddr[0]), .B1(n149), .Y(rdata[2])
         );
  AO22X1M U176 ( .A0(mem_3__3_), .A1(n169), .B0(mem_1__3_), .B1(n168), .Y(n151) );
  AOI221XLM U177 ( .A0(mem_5__3_), .A1(n172), .B0(mem_7__3_), .B1(n171), .C0(
        n151), .Y(n154) );
  AO22X1M U178 ( .A0(mem_2__3_), .A1(n169), .B0(mem_0__3_), .B1(n168), .Y(n152) );
  AOI221XLM U179 ( .A0(mem_4__3_), .A1(n172), .B0(mem_6__3_), .B1(n171), .C0(
        n152), .Y(n153) );
  OAI22X1M U180 ( .A0(n177), .A1(n154), .B0(raddr[0]), .B1(n153), .Y(rdata[3])
         );
  AO22X1M U181 ( .A0(mem_3__4_), .A1(n169), .B0(mem_1__4_), .B1(n168), .Y(n155) );
  AOI221XLM U182 ( .A0(mem_5__4_), .A1(n172), .B0(mem_7__4_), .B1(n171), .C0(
        n155), .Y(n158) );
  AO22X1M U183 ( .A0(mem_2__4_), .A1(n169), .B0(mem_0__4_), .B1(n168), .Y(n156) );
  AOI221XLM U184 ( .A0(mem_4__4_), .A1(n172), .B0(mem_6__4_), .B1(n171), .C0(
        n156), .Y(n157) );
  OAI22X1M U185 ( .A0(n177), .A1(n158), .B0(raddr[0]), .B1(n157), .Y(rdata[4])
         );
  AO22X1M U186 ( .A0(mem_3__5_), .A1(n169), .B0(mem_1__5_), .B1(n168), .Y(n159) );
  AOI221XLM U187 ( .A0(mem_5__5_), .A1(n172), .B0(mem_7__5_), .B1(n171), .C0(
        n159), .Y(n162) );
  AO22X1M U188 ( .A0(mem_2__5_), .A1(n169), .B0(mem_0__5_), .B1(n168), .Y(n160) );
  AOI221XLM U189 ( .A0(mem_4__5_), .A1(n172), .B0(mem_6__5_), .B1(n171), .C0(
        n160), .Y(n161) );
  OAI22X1M U190 ( .A0(n177), .A1(n162), .B0(raddr[0]), .B1(n161), .Y(rdata[5])
         );
  AO22X1M U191 ( .A0(mem_3__6_), .A1(n169), .B0(mem_1__6_), .B1(n168), .Y(n163) );
  AOI221XLM U192 ( .A0(mem_5__6_), .A1(n172), .B0(mem_7__6_), .B1(n171), .C0(
        n163), .Y(n166) );
  AO22X1M U193 ( .A0(mem_2__6_), .A1(n169), .B0(mem_0__6_), .B1(n168), .Y(n164) );
  AOI221XLM U194 ( .A0(mem_4__6_), .A1(n172), .B0(mem_6__6_), .B1(n171), .C0(
        n164), .Y(n165) );
  OAI22X1M U195 ( .A0(n177), .A1(n166), .B0(raddr[0]), .B1(n165), .Y(rdata[6])
         );
  AO22X1M U196 ( .A0(mem_3__7_), .A1(n169), .B0(mem_1__7_), .B1(n168), .Y(n167) );
  AOI221XLM U197 ( .A0(mem_5__7_), .A1(n172), .B0(test_so), .B1(n171), .C0(
        n167), .Y(n174) );
  AO22X1M U198 ( .A0(mem_2__7_), .A1(n169), .B0(mem_0__7_), .B1(n168), .Y(n170) );
  AOI221XLM U199 ( .A0(mem_4__7_), .A1(n172), .B0(mem_6__7_), .B1(n171), .C0(
        n170), .Y(n173) );
  OAI22X1M U200 ( .A0(n174), .A1(n177), .B0(raddr[0]), .B1(n173), .Y(rdata[7])
         );
  DLY1X1M U201 ( .A(test_se), .Y(n194) );
  DLY1X1M U202 ( .A(test_se), .Y(n195) );
  DLY1X1M U203 ( .A(test_se), .Y(n196) );
endmodule


module DF_SYNC_test_0 ( clk, rst_n, async_in, sync_out, test_si, test_se );
  input [3:0] async_in;
  output [3:0] sync_out;
  input clk, rst_n, test_si, test_se;

  wire   [3:0] q1;

  SDFFRQX2M sync_out_reg_3_ ( .D(q1[3]), .SI(sync_out[2]), .SE(test_se), .CK(
        clk), .RN(rst_n), .Q(sync_out[3]) );
  SDFFRQX2M sync_out_reg_2_ ( .D(q1[2]), .SI(sync_out[1]), .SE(test_se), .CK(
        clk), .RN(rst_n), .Q(sync_out[2]) );
  SDFFRQX2M sync_out_reg_1_ ( .D(q1[1]), .SI(sync_out[0]), .SE(test_se), .CK(
        clk), .RN(rst_n), .Q(sync_out[1]) );
  SDFFRQX2M sync_out_reg_0_ ( .D(q1[0]), .SI(q1[3]), .SE(test_se), .CK(clk), 
        .RN(rst_n), .Q(sync_out[0]) );
  SDFFRQX2M q1_reg_3_ ( .D(async_in[3]), .SI(q1[2]), .SE(test_se), .CK(clk), 
        .RN(rst_n), .Q(q1[3]) );
  SDFFRQX2M q1_reg_2_ ( .D(async_in[2]), .SI(q1[1]), .SE(test_se), .CK(clk), 
        .RN(rst_n), .Q(q1[2]) );
  SDFFRQX2M q1_reg_1_ ( .D(async_in[1]), .SI(q1[0]), .SE(test_se), .CK(clk), 
        .RN(rst_n), .Q(q1[1]) );
  SDFFRQX2M q1_reg_0_ ( .D(async_in[0]), .SI(test_si), .SE(test_se), .CK(clk), 
        .RN(rst_n), .Q(q1[0]) );
endmodule


module DF_SYNC_test_1 ( clk, rst_n, async_in, sync_out, test_si, test_se );
  input [3:0] async_in;
  output [3:0] sync_out;
  input clk, rst_n, test_si, test_se;

  wire   [3:0] q1;

  SDFFRQX2M sync_out_reg_3_ ( .D(q1[3]), .SI(sync_out[2]), .SE(test_se), .CK(
        clk), .RN(rst_n), .Q(sync_out[3]) );
  SDFFRQX2M sync_out_reg_2_ ( .D(q1[2]), .SI(sync_out[1]), .SE(test_se), .CK(
        clk), .RN(rst_n), .Q(sync_out[2]) );
  SDFFRQX2M sync_out_reg_1_ ( .D(q1[1]), .SI(sync_out[0]), .SE(test_se), .CK(
        clk), .RN(rst_n), .Q(sync_out[1]) );
  SDFFRQX2M sync_out_reg_0_ ( .D(q1[0]), .SI(q1[3]), .SE(test_se), .CK(clk), 
        .RN(rst_n), .Q(sync_out[0]) );
  SDFFRQX2M q1_reg_3_ ( .D(async_in[3]), .SI(q1[2]), .SE(test_se), .CK(clk), 
        .RN(rst_n), .Q(q1[3]) );
  SDFFRQX2M q1_reg_2_ ( .D(async_in[2]), .SI(q1[1]), .SE(test_se), .CK(clk), 
        .RN(rst_n), .Q(q1[2]) );
  SDFFRQX2M q1_reg_1_ ( .D(async_in[1]), .SI(q1[0]), .SE(test_se), .CK(clk), 
        .RN(rst_n), .Q(q1[1]) );
  SDFFRQX2M q1_reg_0_ ( .D(async_in[0]), .SI(test_si), .SE(test_se), .CK(clk), 
        .RN(rst_n), .Q(q1[0]) );
endmodule


module FIFO_WR_test_1 ( wclk, wrst_n, winc, wq2_rptr, wptr, waddr, wfull, 
        test_si, test_se );
  input [3:0] wq2_rptr;
  output [3:0] wptr;
  output [2:0] waddr;
  input wclk, wrst_n, winc, test_si, test_se;
  output wfull;
  wire   wbin_3_, wfull_next, n10, n11, n12, n13, n14, n15, n16, n17;
  wire   [3:0] wbin_next;
  wire   [2:0] wgray_next;

  SDFFRQX2M wbin_reg_3_ ( .D(wbin_next[3]), .SI(waddr[2]), .SE(test_se), .CK(
        wclk), .RN(wrst_n), .Q(wbin_3_) );
  SDFFRQX2M wbin_reg_2_ ( .D(wbin_next[2]), .SI(waddr[1]), .SE(test_se), .CK(
        wclk), .RN(wrst_n), .Q(waddr[2]) );
  SDFFRQX2M wfull_reg ( .D(wfull_next), .SI(wbin_3_), .SE(test_se), .CK(wclk), 
        .RN(wrst_n), .Q(wfull) );
  SDFFRQX2M wbin_reg_0_ ( .D(wbin_next[0]), .SI(test_si), .SE(test_se), .CK(
        wclk), .RN(wrst_n), .Q(waddr[0]) );
  SDFFRQX2M wbin_reg_1_ ( .D(wbin_next[1]), .SI(waddr[0]), .SE(test_se), .CK(
        wclk), .RN(wrst_n), .Q(waddr[1]) );
  SDFFRQX2M wptr_reg_0_ ( .D(wgray_next[0]), .SI(wfull), .SE(test_se), .CK(
        wclk), .RN(wrst_n), .Q(wptr[0]) );
  SDFFRQX2M wptr_reg_3_ ( .D(wbin_next[3]), .SI(wptr[2]), .SE(test_se), .CK(
        wclk), .RN(wrst_n), .Q(wptr[3]) );
  SDFFRQX2M wptr_reg_2_ ( .D(wgray_next[2]), .SI(wptr[1]), .SE(test_se), .CK(
        wclk), .RN(wrst_n), .Q(wptr[2]) );
  SDFFRQX2M wptr_reg_1_ ( .D(wgray_next[1]), .SI(wptr[0]), .SE(test_se), .CK(
        wclk), .RN(wrst_n), .Q(wptr[1]) );
  CLKXOR2X2M U12 ( .A(wbin_next[2]), .B(wbin_next[1]), .Y(wgray_next[1]) );
  CLKXOR2X2M U13 ( .A(wbin_next[1]), .B(wbin_next[0]), .Y(wgray_next[0]) );
  CLKXOR2X2M U14 ( .A(wbin_next[3]), .B(wbin_next[2]), .Y(wgray_next[2]) );
  NOR4X1M U15 ( .A(n10), .B(n11), .C(n12), .D(n13), .Y(wfull_next) );
  XNOR2X2M U16 ( .A(wbin_next[3]), .B(wq2_rptr[3]), .Y(n10) );
  XNOR2X2M U17 ( .A(wgray_next[2]), .B(wq2_rptr[2]), .Y(n11) );
  CLKXOR2X2M U18 ( .A(wq2_rptr[0]), .B(wgray_next[0]), .Y(n12) );
  NOR2BX2M U19 ( .AN(winc), .B(wfull), .Y(n17) );
  AND2X2M U20 ( .A(waddr[0]), .B(n17), .Y(n15) );
  CLKXOR2X2M U21 ( .A(n15), .B(waddr[1]), .Y(wbin_next[1]) );
  CLKXOR2X2M U22 ( .A(wq2_rptr[1]), .B(wgray_next[1]), .Y(n13) );
  XNOR2X2M U23 ( .A(n16), .B(waddr[2]), .Y(wbin_next[2]) );
  NAND2X2M U24 ( .A(waddr[1]), .B(n15), .Y(n16) );
  XNOR2X2M U25 ( .A(n14), .B(wbin_3_), .Y(wbin_next[3]) );
  NAND3X2M U26 ( .A(waddr[1]), .B(n15), .C(waddr[2]), .Y(n14) );
  CLKXOR2X2M U27 ( .A(n17), .B(waddr[0]), .Y(wbin_next[0]) );
endmodule


module FIFO_RD_test_1 ( rclk, rrst_n, rinc, rq2_wptr, rptr, raddr, rempty, 
        test_si, test_se );
  input [3:0] rq2_wptr;
  output [3:0] rptr;
  output [2:0] raddr;
  input rclk, rrst_n, rinc, test_si, test_se;
  output rempty;
  wire   rbin_3_, rempty_next, n10, n11, n12, n13, n14, n15, n16, n17;
  wire   [3:0] rbin_next;
  wire   [2:0] rgray_next;

  SDFFRQX2M rbin_reg_3_ ( .D(rbin_next[3]), .SI(raddr[2]), .SE(test_se), .CK(
        rclk), .RN(rrst_n), .Q(rbin_3_) );
  SDFFSQX2M rempty_reg ( .D(rempty_next), .SI(rbin_3_), .SE(test_se), .CK(rclk), .SN(rrst_n), .Q(rempty) );
  SDFFRQX2M rbin_reg_0_ ( .D(rbin_next[0]), .SI(test_si), .SE(test_se), .CK(
        rclk), .RN(rrst_n), .Q(raddr[0]) );
  SDFFRQX2M rbin_reg_2_ ( .D(rbin_next[2]), .SI(raddr[1]), .SE(test_se), .CK(
        rclk), .RN(rrst_n), .Q(raddr[2]) );
  SDFFRQX2M rbin_reg_1_ ( .D(rbin_next[1]), .SI(raddr[0]), .SE(test_se), .CK(
        rclk), .RN(rrst_n), .Q(raddr[1]) );
  SDFFRQX2M rptr_reg_0_ ( .D(rgray_next[0]), .SI(rempty), .SE(test_se), .CK(
        rclk), .RN(rrst_n), .Q(rptr[0]) );
  SDFFRQX2M rptr_reg_3_ ( .D(rbin_next[3]), .SI(rptr[2]), .SE(test_se), .CK(
        rclk), .RN(rrst_n), .Q(rptr[3]) );
  SDFFRQX2M rptr_reg_2_ ( .D(rgray_next[2]), .SI(rptr[1]), .SE(test_se), .CK(
        rclk), .RN(rrst_n), .Q(rptr[2]) );
  SDFFRQX2M rptr_reg_1_ ( .D(rgray_next[1]), .SI(rptr[0]), .SE(test_se), .CK(
        rclk), .RN(rrst_n), .Q(rptr[1]) );
  CLKXOR2X2M U12 ( .A(rbin_next[3]), .B(rbin_next[2]), .Y(rgray_next[2]) );
  CLKXOR2X2M U13 ( .A(rbin_next[2]), .B(rbin_next[1]), .Y(rgray_next[1]) );
  CLKXOR2X2M U14 ( .A(rbin_next[1]), .B(rbin_next[0]), .Y(rgray_next[0]) );
  XNOR2X2M U15 ( .A(n14), .B(rbin_3_), .Y(rbin_next[3]) );
  NAND3X2M U16 ( .A(raddr[1]), .B(n15), .C(raddr[2]), .Y(n14) );
  XNOR2X2M U17 ( .A(n16), .B(raddr[2]), .Y(rbin_next[2]) );
  NAND2X2M U18 ( .A(raddr[1]), .B(n15), .Y(n16) );
  NOR4X1M U19 ( .A(n10), .B(n11), .C(n12), .D(n13), .Y(rempty_next) );
  CLKXOR2X2M U20 ( .A(rq2_wptr[3]), .B(rbin_next[3]), .Y(n11) );
  CLKXOR2X2M U21 ( .A(rq2_wptr[2]), .B(rgray_next[2]), .Y(n10) );
  CLKXOR2X2M U22 ( .A(rq2_wptr[0]), .B(rgray_next[0]), .Y(n12) );
  NOR2BX2M U23 ( .AN(rinc), .B(rempty), .Y(n17) );
  AND2X2M U24 ( .A(raddr[0]), .B(n17), .Y(n15) );
  CLKXOR2X2M U25 ( .A(n15), .B(raddr[1]), .Y(rbin_next[1]) );
  CLKXOR2X2M U26 ( .A(rq2_wptr[1]), .B(rgray_next[1]), .Y(n13) );
  CLKXOR2X2M U27 ( .A(n17), .B(raddr[0]), .Y(rbin_next[0]) );
endmodule


module ASYNC_FIFO_test_1 ( W_CLK, W_RST, W_INC, R_CLK, R_RST, R_INC, WR_DATA, 
        RD_DATA, FULL, EMPTY, test_si, test_so, test_se );
  input [7:0] WR_DATA;
  output [7:0] RD_DATA;
  input W_CLK, W_RST, W_INC, R_CLK, R_RST, R_INC, test_si, test_se;
  output FULL, EMPTY, test_so;
  wire   wclken, rq2_wptr_2_, rq2_wptr_1_, rq2_wptr_0_, n1, n2, n3, n4, n6;
  wire   [2:0] waddr;
  wire   [2:0] raddr;
  wire   [3:0] rptr;
  wire   [3:0] wq2_rptr;
  wire   [3:0] wptr;

  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(W_RST), .Y(n2) );
  INVX2M U3 ( .A(n4), .Y(n3) );
  INVX2M U4 ( .A(R_RST), .Y(n4) );
  NOR2BX2M U5 ( .AN(W_INC), .B(FULL), .Y(wclken) );
  FIFO_MEM_CNTRL_test_1 u_fifo_mem ( .wclk(W_CLK), .wclken(wclken), .waddr(
        waddr), .raddr(raddr), .wdata(WR_DATA), .rdata(RD_DATA), .test_si(
        test_si), .test_so(n6), .test_se(test_se) );
  DF_SYNC_test_0 u_sync_r2w ( .clk(W_CLK), .rst_n(n1), .async_in(rptr), 
        .sync_out(wq2_rptr), .test_si(wptr[3]), .test_se(test_se) );
  DF_SYNC_test_1 u_sync_w2r ( .clk(R_CLK), .rst_n(n3), .async_in(wptr), 
        .sync_out({test_so, rq2_wptr_2_, rq2_wptr_1_, rq2_wptr_0_}), .test_si(
        wq2_rptr[3]), .test_se(test_se) );
  FIFO_WR_test_1 u_fifo_wr ( .wclk(W_CLK), .wrst_n(n1), .winc(W_INC), 
        .wq2_rptr(wq2_rptr), .wptr(wptr), .waddr(waddr), .wfull(FULL), 
        .test_si(rptr[3]), .test_se(test_se) );
  FIFO_RD_test_1 u_fifo_rd ( .rclk(R_CLK), .rrst_n(n3), .rinc(R_INC), 
        .rq2_wptr({test_so, rq2_wptr_2_, rq2_wptr_1_, rq2_wptr_0_}), .rptr(
        rptr), .raddr(raddr), .rempty(EMPTY), .test_si(n6), .test_se(test_se)
         );
endmodule


module UART_TX_FSM_test_1 ( Data_Valid, Par_En, Ser_Done, CLK, RST, Ser_En, 
        Mux_Sel, busy, test_si, test_so, test_se );
  output [2:0] Mux_Sel;
  input Data_Valid, Par_En, Ser_Done, CLK, RST, test_si, test_se;
  output Ser_En, busy, test_so;
  wire   state_1_, state_0_, next_state_2_, next_state_0_, n7, n8, n9, n10,
         n11, n4, n5, n6;

  SDFFRQX2M state_reg_2_ ( .D(next_state_2_), .SI(state_1_), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(test_so) );
  SDFFRQX2M state_reg_0_ ( .D(next_state_0_), .SI(test_si), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(state_0_) );
  SDFFRQX2M state_reg_1_ ( .D(Mux_Sel[0]), .SI(state_0_), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(state_1_) );
  INVX2M U6 ( .A(n11), .Y(Ser_En) );
  NOR2X2M U7 ( .A(n6), .B(n5), .Y(Mux_Sel[2]) );
  NAND2BX2M U8 ( .AN(Mux_Sel[2]), .B(n7), .Y(Mux_Sel[1]) );
  NAND2BX2M U9 ( .AN(Mux_Sel[1]), .B(n11), .Y(busy) );
  OAI21X2M U10 ( .A0(n7), .A1(n4), .B0(n8), .Y(next_state_2_) );
  NAND3X2M U11 ( .A(n7), .B(n8), .C(n11), .Y(Mux_Sel[0]) );
  NAND3X2M U12 ( .A(n5), .B(n6), .C(state_0_), .Y(n11) );
  NAND3X2M U13 ( .A(state_0_), .B(n6), .C(state_1_), .Y(n7) );
  INVX2M U14 ( .A(test_so), .Y(n6) );
  INVX2M U15 ( .A(state_1_), .Y(n5) );
  OAI211X2M U16 ( .A0(n9), .A1(n7), .B0(n10), .C0(n11), .Y(next_state_0_) );
  NOR2X2M U17 ( .A(Par_En), .B(n4), .Y(n9) );
  NAND3X2M U18 ( .A(n5), .B(n6), .C(Data_Valid), .Y(n10) );
  NAND3X2M U19 ( .A(state_1_), .B(state_0_), .C(test_so), .Y(n8) );
  INVX2M U20 ( .A(Ser_Done), .Y(n4) );
endmodule


module Serializer_DW01_inc_0 ( A, SUM );
  input [31:0] A;
  output [31:0] SUM;

  wire   [31:2] carry;

  ADDHX1M U1_1_30 ( .A(A[30]), .B(carry[30]), .CO(carry[31]), .S(SUM[30]) );
  ADDHX1M U1_1_10 ( .A(A[10]), .B(carry[10]), .CO(carry[11]), .S(SUM[10]) );
  ADDHX1M U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHX1M U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  ADDHX1M U1_1_25 ( .A(A[25]), .B(carry[25]), .CO(carry[26]), .S(SUM[25]) );
  ADDHX1M U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX1M U1_1_17 ( .A(A[17]), .B(carry[17]), .CO(carry[18]), .S(SUM[17]) );
  ADDHX1M U1_1_18 ( .A(A[18]), .B(carry[18]), .CO(carry[19]), .S(SUM[18]) );
  ADDHX1M U1_1_26 ( .A(A[26]), .B(carry[26]), .CO(carry[27]), .S(SUM[26]) );
  ADDHX1M U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHX1M U1_1_29 ( .A(A[29]), .B(carry[29]), .CO(carry[30]), .S(SUM[29]) );
  ADDHX1M U1_1_13 ( .A(A[13]), .B(carry[13]), .CO(carry[14]), .S(SUM[13]) );
  ADDHX1M U1_1_8 ( .A(A[8]), .B(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  ADDHX1M U1_1_21 ( .A(A[21]), .B(carry[21]), .CO(carry[22]), .S(SUM[21]) );
  ADDHX1M U1_1_22 ( .A(A[22]), .B(carry[22]), .CO(carry[23]), .S(SUM[22]) );
  ADDHX1M U1_1_14 ( .A(A[14]), .B(carry[14]), .CO(carry[15]), .S(SUM[14]) );
  ADDHX1M U1_1_9 ( .A(A[9]), .B(carry[9]), .CO(carry[10]), .S(SUM[9]) );
  ADDHX1M U1_1_11 ( .A(A[11]), .B(carry[11]), .CO(carry[12]), .S(SUM[11]) );
  ADDHX1M U1_1_19 ( .A(A[19]), .B(carry[19]), .CO(carry[20]), .S(SUM[19]) );
  ADDHX1M U1_1_27 ( .A(A[27]), .B(carry[27]), .CO(carry[28]), .S(SUM[27]) );
  ADDHX1M U1_1_15 ( .A(A[15]), .B(carry[15]), .CO(carry[16]), .S(SUM[15]) );
  ADDHX1M U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHX1M U1_1_23 ( .A(A[23]), .B(carry[23]), .CO(carry[24]), .S(SUM[23]) );
  ADDHX1M U1_1_12 ( .A(A[12]), .B(carry[12]), .CO(carry[13]), .S(SUM[12]) );
  ADDHX1M U1_1_24 ( .A(A[24]), .B(carry[24]), .CO(carry[25]), .S(SUM[24]) );
  ADDHX1M U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHX1M U1_1_20 ( .A(A[20]), .B(carry[20]), .CO(carry[21]), .S(SUM[20]) );
  ADDHX1M U1_1_28 ( .A(A[28]), .B(carry[28]), .CO(carry[29]), .S(SUM[28]) );
  ADDHX1M U1_1_7 ( .A(A[7]), .B(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  ADDHX1M U1_1_16 ( .A(A[16]), .B(carry[16]), .CO(carry[17]), .S(SUM[16]) );
  CLKXOR2X2M U1 ( .A(carry[31]), .B(A[31]), .Y(SUM[31]) );
  CLKINVX1M U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module Serializer_test_1 ( P_Data, ser_en, CLK, RST, Ser_Data, Ser_Done, 
        test_si, test_so, test_se );
  input [7:0] P_Data;
  input ser_en, CLK, RST, test_si, test_se;
  output Ser_Data, Ser_Done, test_so;
  wire   N2, N3, N4, N10, N12, N13, N14, N15, N16, N17, N18, N19, N20, N21,
         N22, N23, N24, N25, N26, N27, N28, N29, N30, N31, N32, N33, N34, N35,
         N36, N37, N38, N39, N40, N41, N42, N43, N44, N84, N85, N86, N87, N88,
         N89, N90, N91, N92, N93, N94, N95, N96, N97, N98, N99, N100, N101,
         N102, N103, N104, N105, N106, N107, N108, N109, N110, N111, N112,
         N113, N114, N115, n49, n51, n52, n53, n54, n55, n56, n57, n58, n59,
         n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73,
         n74, n1, n2, n3, n4, n48, n50, n75, n76, n77, n78, n79, n80, n81, n82,
         n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n97, n98;
  wire   [31:3] i;
  wire   [7:0] Data_FF;

  SDFFRQX2M Ser_Data_reg ( .D(n73), .SI(Data_FF[7]), .SE(test_se), .CK(CLK), 
        .RN(n4), .Q(Ser_Data) );
  SDFFRQX2M Data_FF_reg_7_ ( .D(n71), .SI(Data_FF[6]), .SE(test_se), .CK(CLK), 
        .RN(n50), .Q(Data_FF[7]) );
  SDFFRQX2M Data_FF_reg_5_ ( .D(n69), .SI(Data_FF[4]), .SE(test_se), .CK(CLK), 
        .RN(n75), .Q(Data_FF[5]) );
  SDFFRQX2M Data_FF_reg_3_ ( .D(n67), .SI(Data_FF[2]), .SE(test_se), .CK(CLK), 
        .RN(n75), .Q(Data_FF[3]) );
  SDFFRQX2M Data_FF_reg_1_ ( .D(n65), .SI(Data_FF[0]), .SE(test_se), .CK(CLK), 
        .RN(n75), .Q(Data_FF[1]) );
  SDFFRQX2M Data_FF_reg_6_ ( .D(n70), .SI(Data_FF[5]), .SE(test_se), .CK(CLK), 
        .RN(n75), .Q(Data_FF[6]) );
  SDFFRQX2M Data_FF_reg_4_ ( .D(n68), .SI(Data_FF[3]), .SE(test_se), .CK(CLK), 
        .RN(n75), .Q(Data_FF[4]) );
  SDFFRQX2M Data_FF_reg_2_ ( .D(n66), .SI(Data_FF[1]), .SE(test_se), .CK(CLK), 
        .RN(n75), .Q(Data_FF[2]) );
  SDFFRQX2M Data_FF_reg_0_ ( .D(n64), .SI(test_si), .SE(test_se), .CK(CLK), 
        .RN(n75), .Q(Data_FF[0]) );
  SDFFRQX2M is_transmitting_reg ( .D(n74), .SI(i[31]), .SE(n98), .CK(CLK), 
        .RN(n4), .Q(test_so) );
  SDFFRQX2M Ser_Done_reg ( .D(n72), .SI(Ser_Data), .SE(test_se), .CK(CLK), 
        .RN(n50), .Q(Ser_Done) );
  SDFFRQX2M i_reg_31_ ( .D(N115), .SI(i[30]), .SE(n98), .CK(CLK), .RN(n50), 
        .Q(i[31]) );
  SDFFRQX2M i_reg_25_ ( .D(N109), .SI(i[24]), .SE(n98), .CK(CLK), .RN(n50), 
        .Q(i[25]) );
  SDFFRQX2M i_reg_18_ ( .D(N102), .SI(i[17]), .SE(test_se), .CK(CLK), .RN(n48), 
        .Q(i[18]) );
  SDFFRQX2M i_reg_26_ ( .D(N110), .SI(i[25]), .SE(n98), .CK(CLK), .RN(n50), 
        .Q(i[26]) );
  SDFFRQX2M i_reg_29_ ( .D(N113), .SI(i[28]), .SE(n98), .CK(CLK), .RN(n50), 
        .Q(i[29]) );
  SDFFRQX2M i_reg_21_ ( .D(N105), .SI(i[20]), .SE(n98), .CK(CLK), .RN(n48), 
        .Q(i[21]) );
  SDFFRQX2M i_reg_22_ ( .D(N106), .SI(i[21]), .SE(n98), .CK(CLK), .RN(n50), 
        .Q(i[22]) );
  SDFFRQX2M i_reg_30_ ( .D(N114), .SI(i[29]), .SE(n98), .CK(CLK), .RN(n50), 
        .Q(i[30]) );
  SDFFRQX2M i_reg_19_ ( .D(N103), .SI(i[18]), .SE(n98), .CK(CLK), .RN(n48), 
        .Q(i[19]) );
  SDFFRQX2M i_reg_27_ ( .D(N111), .SI(i[26]), .SE(n98), .CK(CLK), .RN(n50), 
        .Q(i[27]) );
  SDFFRQX2M i_reg_23_ ( .D(N107), .SI(i[22]), .SE(n98), .CK(CLK), .RN(n50), 
        .Q(i[23]) );
  SDFFRQX2M i_reg_24_ ( .D(N108), .SI(i[23]), .SE(n98), .CK(CLK), .RN(n50), 
        .Q(i[24]) );
  SDFFRQX2M i_reg_20_ ( .D(N104), .SI(i[19]), .SE(n98), .CK(CLK), .RN(n48), 
        .Q(i[20]) );
  SDFFRQX2M i_reg_28_ ( .D(N112), .SI(i[27]), .SE(n98), .CK(CLK), .RN(n50), 
        .Q(i[28]) );
  SDFFRQX2M i_reg_10_ ( .D(N94), .SI(i[9]), .SE(test_se), .CK(CLK), .RN(n48), 
        .Q(i[10]) );
  SDFFRQX2M i_reg_17_ ( .D(N101), .SI(i[16]), .SE(test_se), .CK(CLK), .RN(n48), 
        .Q(i[17]) );
  SDFFRQX2M i_reg_13_ ( .D(N97), .SI(i[12]), .SE(test_se), .CK(CLK), .RN(n48), 
        .Q(i[13]) );
  SDFFRQX2M i_reg_14_ ( .D(N98), .SI(i[13]), .SE(test_se), .CK(CLK), .RN(n48), 
        .Q(i[14]) );
  SDFFRQX2M i_reg_11_ ( .D(N95), .SI(i[10]), .SE(test_se), .CK(CLK), .RN(n48), 
        .Q(i[11]) );
  SDFFRQX2M i_reg_15_ ( .D(N99), .SI(i[14]), .SE(test_se), .CK(CLK), .RN(n48), 
        .Q(i[15]) );
  SDFFRQX2M i_reg_12_ ( .D(N96), .SI(i[11]), .SE(test_se), .CK(CLK), .RN(n48), 
        .Q(i[12]) );
  SDFFRQX2M i_reg_16_ ( .D(N100), .SI(i[15]), .SE(test_se), .CK(CLK), .RN(n4), 
        .Q(i[16]) );
  SDFFRQX2M i_reg_4_ ( .D(N88), .SI(i[3]), .SE(test_se), .CK(CLK), .RN(n4), 
        .Q(i[4]) );
  SDFFRQX2M i_reg_5_ ( .D(N89), .SI(i[4]), .SE(test_se), .CK(CLK), .RN(n4), 
        .Q(i[5]) );
  SDFFRQX2M i_reg_8_ ( .D(N92), .SI(i[7]), .SE(test_se), .CK(CLK), .RN(n4), 
        .Q(i[8]) );
  SDFFRQX2M i_reg_9_ ( .D(N93), .SI(i[8]), .SE(test_se), .CK(CLK), .RN(n48), 
        .Q(i[9]) );
  SDFFRQX2M i_reg_6_ ( .D(N90), .SI(i[5]), .SE(test_se), .CK(CLK), .RN(n4), 
        .Q(i[6]) );
  SDFFRQX2M i_reg_3_ ( .D(N87), .SI(N4), .SE(test_se), .CK(CLK), .RN(n4), .Q(
        i[3]) );
  SDFFRQX2M i_reg_7_ ( .D(N91), .SI(i[6]), .SE(test_se), .CK(CLK), .RN(n4), 
        .Q(i[7]) );
  SDFFRQX2M i_reg_2_ ( .D(N86), .SI(N3), .SE(test_se), .CK(CLK), .RN(n4), .Q(
        N4) );
  SDFFRQX2M i_reg_0_ ( .D(N84), .SI(Ser_Done), .SE(test_se), .CK(CLK), .RN(n4), 
        .Q(N2) );
  SDFFRQX2M i_reg_1_ ( .D(N85), .SI(N2), .SE(test_se), .CK(CLK), .RN(n4), .Q(
        N3) );
  AND2X2M U7 ( .A(N10), .B(n53), .Y(n1) );
  INVX2M U8 ( .A(ser_en), .Y(n94) );
  BUFX2M U48 ( .A(n3), .Y(n50) );
  BUFX2M U49 ( .A(n2), .Y(n48) );
  BUFX2M U50 ( .A(n2), .Y(n4) );
  BUFX2M U51 ( .A(n3), .Y(n75) );
  AND2X2M U52 ( .A(N43), .B(n1), .Y(N114) );
  AND2X2M U53 ( .A(N42), .B(n1), .Y(N113) );
  AND2X2M U54 ( .A(N41), .B(n1), .Y(N112) );
  AND2X2M U55 ( .A(N40), .B(n1), .Y(N111) );
  AND2X2M U56 ( .A(N39), .B(n1), .Y(N110) );
  AND2X2M U57 ( .A(N38), .B(n1), .Y(N109) );
  AND2X2M U58 ( .A(N37), .B(n1), .Y(N108) );
  AND2X2M U59 ( .A(N36), .B(n1), .Y(N107) );
  AND2X2M U60 ( .A(N35), .B(n1), .Y(N106) );
  AND2X2M U61 ( .A(N34), .B(n1), .Y(N105) );
  AND2X2M U62 ( .A(N33), .B(n1), .Y(N104) );
  AND2X2M U63 ( .A(N32), .B(n1), .Y(N103) );
  AND2X2M U64 ( .A(N31), .B(n1), .Y(N102) );
  AND2X2M U65 ( .A(N30), .B(n1), .Y(N101) );
  AND2X2M U66 ( .A(N29), .B(n1), .Y(N100) );
  AND2X2M U67 ( .A(N28), .B(n1), .Y(N99) );
  AND2X2M U68 ( .A(N27), .B(n1), .Y(N98) );
  AND2X2M U69 ( .A(N26), .B(n1), .Y(N97) );
  AND2X2M U70 ( .A(N25), .B(n1), .Y(N96) );
  AND2X2M U71 ( .A(N24), .B(n1), .Y(N95) );
  AND2X2M U72 ( .A(N22), .B(n1), .Y(N93) );
  AND2X2M U73 ( .A(N21), .B(n1), .Y(N92) );
  AND2X2M U74 ( .A(N20), .B(n1), .Y(N91) );
  AND2X2M U75 ( .A(N19), .B(n1), .Y(N90) );
  AND2X2M U76 ( .A(N18), .B(n1), .Y(N89) );
  AND2X2M U77 ( .A(N17), .B(n1), .Y(N88) );
  AND2X2M U78 ( .A(N16), .B(n1), .Y(N87) );
  AND2X2M U79 ( .A(N14), .B(n1), .Y(N85) );
  AND2X2M U80 ( .A(N23), .B(n1), .Y(N94) );
  AND2X2M U81 ( .A(N15), .B(n1), .Y(N86) );
  BUFX2M U82 ( .A(RST), .Y(n3) );
  BUFX2M U83 ( .A(RST), .Y(n2) );
  AND2X2M U84 ( .A(N44), .B(n1), .Y(N115) );
  NOR2BX2M U85 ( .AN(test_so), .B(ser_en), .Y(n53) );
  OAI2BB2X1M U86 ( .B0(n62), .B1(n63), .A0N(Ser_Data), .A1N(n62), .Y(n73) );
  AOI22X1M U87 ( .A0(N12), .A1(n53), .B0(ser_en), .B1(P_Data[0]), .Y(n63) );
  NOR2X2M U88 ( .A(ser_en), .B(n1), .Y(n62) );
  OAI2BB1X2M U89 ( .A0N(test_so), .A1N(N10), .B0(n94), .Y(n74) );
  AO22X1M U90 ( .A0(P_Data[7]), .A1(ser_en), .B0(Data_FF[7]), .B1(n94), .Y(n71) );
  AO22X1M U91 ( .A0(P_Data[6]), .A1(ser_en), .B0(Data_FF[6]), .B1(n94), .Y(n70) );
  AO22X1M U92 ( .A0(P_Data[2]), .A1(ser_en), .B0(Data_FF[2]), .B1(n94), .Y(n66) );
  AO2B2X2M U93 ( .B0(n49), .B1(n1), .A0(Ser_Done), .A1N(n49), .Y(n72) );
  OAI211X2M U94 ( .A0(n51), .A1(n52), .B0(n53), .C0(N10), .Y(n49) );
  NAND4X2M U95 ( .A(n58), .B(n59), .C(n60), .D(n61), .Y(n51) );
  NAND4BX1M U96 ( .AN(n54), .B(n55), .C(n56), .D(n57), .Y(n52) );
  AO22X1M U97 ( .A0(P_Data[0]), .A1(ser_en), .B0(Data_FF[0]), .B1(n94), .Y(n64) );
  AO22X1M U98 ( .A0(P_Data[3]), .A1(ser_en), .B0(Data_FF[3]), .B1(n94), .Y(n67) );
  AO22X1M U99 ( .A0(P_Data[1]), .A1(ser_en), .B0(Data_FF[1]), .B1(n94), .Y(n65) );
  AO22X1M U100 ( .A0(P_Data[4]), .A1(ser_en), .B0(Data_FF[4]), .B1(n94), .Y(
        n68) );
  AO22X1M U101 ( .A0(P_Data[5]), .A1(ser_en), .B0(Data_FF[5]), .B1(n94), .Y(
        n69) );
  AO21XLM U102 ( .A0(N13), .A1(n1), .B0(ser_en), .Y(N84) );
  NOR4X1M U103 ( .A(i[26]), .B(i[25]), .C(i[24]), .D(i[23]), .Y(n58) );
  NOR4X1M U104 ( .A(i[30]), .B(i[29]), .C(i[28]), .D(i[27]), .Y(n59) );
  NOR4X1M U105 ( .A(i[9]), .B(i[8]), .C(i[7]), .D(i[6]), .Y(n61) );
  NOR4X1M U106 ( .A(i[5]), .B(i[4]), .C(i[3]), .D(i[31]), .Y(n60) );
  NOR4X1M U107 ( .A(i[14]), .B(i[13]), .C(i[12]), .D(i[11]), .Y(n55) );
  NOR4X1M U108 ( .A(i[22]), .B(i[21]), .C(i[20]), .D(i[19]), .Y(n57) );
  NOR4X1M U109 ( .A(i[18]), .B(i[17]), .C(i[16]), .D(i[15]), .Y(n56) );
  NAND4BX1M U110 ( .AN(i[10]), .B(N2), .C(N3), .D(N4), .Y(n54) );
  INVX2M U111 ( .A(N2), .Y(n83) );
  INVX2M U112 ( .A(N3), .Y(n82) );
  AOI22X1M U113 ( .A0(Data_FF[2]), .A1(n83), .B0(Data_FF[3]), .B1(N2), .Y(n77)
         );
  AOI22X1M U114 ( .A0(Data_FF[0]), .A1(n83), .B0(Data_FF[1]), .B1(N2), .Y(n76)
         );
  OA22X1M U115 ( .A0(n82), .A1(n77), .B0(N3), .B1(n76), .Y(n81) );
  AOI22X1M U116 ( .A0(Data_FF[6]), .A1(n83), .B0(Data_FF[7]), .B1(N2), .Y(n79)
         );
  AOI22X1M U117 ( .A0(Data_FF[4]), .A1(n83), .B0(Data_FF[5]), .B1(N2), .Y(n78)
         );
  OAI22X1M U118 ( .A0(n79), .A1(n82), .B0(N3), .B1(n78), .Y(n80) );
  OAI2BB2X1M U119 ( .B0(n81), .B1(N4), .A0N(N4), .A1N(n80), .Y(N12) );
  NOR3X1M U120 ( .A(i[24]), .B(i[26]), .C(i[25]), .Y(n87) );
  NOR4X1M U121 ( .A(i[30]), .B(i[29]), .C(i[28]), .D(i[27]), .Y(n86) );
  NOR3X1M U122 ( .A(i[3]), .B(i[5]), .C(i[4]), .Y(n85) );
  NOR4X1M U123 ( .A(i[9]), .B(i[8]), .C(i[7]), .D(i[6]), .Y(n84) );
  NAND4X1M U124 ( .A(n87), .B(n86), .C(n85), .D(n84), .Y(n93) );
  NOR3X1M U125 ( .A(i[10]), .B(i[12]), .C(i[11]), .Y(n91) );
  NOR4X1M U126 ( .A(i[16]), .B(i[15]), .C(i[14]), .D(i[13]), .Y(n90) );
  NOR3X1M U127 ( .A(i[17]), .B(i[19]), .C(i[18]), .Y(n89) );
  NOR4X1M U128 ( .A(i[23]), .B(i[22]), .C(i[21]), .D(i[20]), .Y(n88) );
  NAND4X1M U129 ( .A(n91), .B(n90), .C(n89), .D(n88), .Y(n92) );
  OAI21BX1M U130 ( .A0(n93), .A1(n92), .B0N(i[31]), .Y(N10) );
  INVXLM U131 ( .A(test_se), .Y(n97) );
  INVXLM U132 ( .A(n97), .Y(n98) );
  Serializer_DW01_inc_0 add_37 ( .A({i, N4, N3, N2}), .SUM({N44, N43, N42, N41, 
        N40, N39, N38, N37, N36, N35, N34, N33, N32, N31, N30, N29, N28, N27, 
        N26, N25, N24, N23, N22, N21, N20, N19, N18, N17, N16, N15, N14, N13})
         );
endmodule


module Parity_Calc_test_1 ( P_Data, Data_Valid, Par_Type, CLK, RST, Par_Bit, 
        test_si, test_se );
  input [7:0] P_Data;
  input Data_Valid, Par_Type, CLK, RST, test_si, test_se;
  output Par_Bit;
  wire   n1, n3, n4, n5, n6, n8, n2;

  SDFFRQX2M Par_Bit_reg ( .D(n8), .SI(test_si), .SE(test_se), .CK(CLK), .RN(
        RST), .Q(Par_Bit) );
  XOR3XLM U2 ( .A(P_Data[5]), .B(P_Data[4]), .C(n6), .Y(n3) );
  CLKXOR2X2M U3 ( .A(P_Data[7]), .B(P_Data[6]), .Y(n6) );
  XNOR2X2M U4 ( .A(P_Data[3]), .B(P_Data[2]), .Y(n5) );
  OAI2BB2X1M U5 ( .B0(n1), .B1(n2), .A0N(Par_Bit), .A1N(n2), .Y(n8) );
  INVX2M U6 ( .A(Data_Valid), .Y(n2) );
  XOR3XLM U7 ( .A(n3), .B(Par_Type), .C(n4), .Y(n1) );
  XOR3XLM U8 ( .A(P_Data[1]), .B(P_Data[0]), .C(n5), .Y(n4) );
endmodule


module Output_Mux ( Mux_Sel, Ser_Data, Par_Bit, TX_OUT );
  input [2:0] Mux_Sel;
  input Ser_Data, Par_Bit;
  output TX_OUT;
  wire   n2, n3, n1;

  OAI211X4M U3 ( .A0(n2), .A1(n1), .B0(n3), .C0(Mux_Sel[0]), .Y(TX_OUT) );
  NAND3X2M U4 ( .A(Mux_Sel[1]), .B(n1), .C(Ser_Data), .Y(n3) );
  NOR2BX2M U5 ( .AN(Mux_Sel[1]), .B(Par_Bit), .Y(n2) );
  INVX2M U6 ( .A(Mux_Sel[2]), .Y(n1) );
endmodule


module UART_TX_test_1 ( P_Data, Data_Valid, Par_En, Par_Type, CLK, RST, TX_OUT, 
        busy, test_si, test_so, test_se );
  input [7:0] P_Data;
  input Data_Valid, Par_En, Par_Type, CLK, RST, test_si, test_se;
  output TX_OUT, busy, test_so;
  wire   Ser_Done_Top, Ser_En_Top, Ser_Data_Top, Par_Bit_Top, n3;
  wire   [2:0] Mux_Sel_Top;

  UART_TX_FSM_test_1 FSM_inst ( .Data_Valid(Data_Valid), .Par_En(Par_En), 
        .Ser_Done(Ser_Done_Top), .CLK(CLK), .RST(RST), .Ser_En(Ser_En_Top), 
        .Mux_Sel(Mux_Sel_Top), .busy(busy), .test_si(test_si), .test_so(n3), 
        .test_se(test_se) );
  Serializer_test_1 Serializer_inst ( .P_Data(P_Data), .ser_en(Ser_En_Top), 
        .CLK(CLK), .RST(RST), .Ser_Data(Ser_Data_Top), .Ser_Done(Ser_Done_Top), 
        .test_si(Par_Bit_Top), .test_so(test_so), .test_se(test_se) );
  Parity_Calc_test_1 Parity_Calc_inst ( .P_Data(P_Data), .Data_Valid(
        Data_Valid), .Par_Type(Par_Type), .CLK(CLK), .RST(RST), .Par_Bit(
        Par_Bit_Top), .test_si(n3), .test_se(test_se) );
  Output_Mux Output_Mux_inst ( .Mux_Sel(Mux_Sel_Top), .Ser_Data(Ser_Data_Top), 
        .Par_Bit(Par_Bit_Top), .TX_OUT(TX_OUT) );
endmodule


module PULSE_GEN_test_1 ( CLK, RST, LVL_SIG, PULSE_SIG, test_si, test_so, 
        test_se );
  input CLK, RST, LVL_SIG, test_si, test_se;
  output PULSE_SIG, test_so;


  SDFFRQX2M lvl_ff_reg ( .D(LVL_SIG), .SI(test_si), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(test_so) );
  NOR2BX2M U4 ( .AN(LVL_SIG), .B(test_so), .Y(PULSE_SIG) );
endmodule


module SYS_TOP_dft ( scan_clk, scan_rst, test_mode, SE, SI, SO, RST_N, 
        UART_CLK, REF_CLK, UART_RX_IN, UART_TX_O, parity_error, framing_error
 );
  input [2:0] SI;
  output [2:0] SO;
  input scan_clk, scan_rst, test_mode, SE, RST_N, UART_CLK, REF_CLK,
         UART_RX_IN;
  output UART_TX_O, parity_error, framing_error;
  wire   ref_clk_mux, uart_clk_mux, rst_n_mux, rst_sync_1_out, rst_sync_1,
         rst_sync_2_out, rst_sync_2, rf_wr_en, rf_rd_en, rf_rd_valid,
         alu_out_valid, sync_rx_d_vld, fifo_full, alu_en, clk_en, tx_d_vld,
         gated_clk_out, gated_clk, tx_clk_out, tx_clk, rx_d_vld, pulse_r_inc,
         fifo_empty, tx_busy, n1, n2, n3, n5, n6, n7, n8, n13, n14, n15, n16,
         n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32,
         n33, n34, n35, n36, n37, n38, n39;
  wire   [3:0] rf_address;
  wire   [7:0] rf_wr_data;
  wire   [7:0] rf_rd_data;
  wire   [7:0] reg0;
  wire   [7:0] reg1;
  wire   [7:0] reg2;
  wire   [7:0] reg3;
  wire   [15:0] alu_out;
  wire   [7:0] sync_rx_p_data;
  wire   [3:0] alu_fun;
  wire   [7:0] tx_p_data;
  wire   [7:0] rx_p_data;
  wire   [7:0] fifo_rd_data;

  AO2B2X4M U1 ( .B0(test_mode), .B1(scan_clk), .A0(REF_CLK), .A1N(test_mode), 
        .Y(ref_clk_mux) );
  INVX2M U3 ( .A(fifo_empty), .Y(n1) );
  INVX4M U4 ( .A(n3), .Y(n2) );
  INVX2M U5 ( .A(rst_sync_1), .Y(n3) );
  MX2X2M U6 ( .A(rst_sync_1_out), .B(scan_rst), .S0(test_mode), .Y(rst_sync_1)
         );
  MX2X2M U7 ( .A(RST_N), .B(scan_rst), .S0(test_mode), .Y(rst_n_mux) );
  MX2X2M U8 ( .A(rst_sync_2_out), .B(scan_rst), .S0(test_mode), .Y(rst_sync_2)
         );
  MX2X2M U9 ( .A(tx_clk_out), .B(scan_clk), .S0(test_mode), .Y(tx_clk) );
  MX2X2M U10 ( .A(gated_clk_out), .B(scan_clk), .S0(test_mode), .Y(gated_clk)
         );
  MX2X2M U11 ( .A(UART_CLK), .B(scan_clk), .S0(test_mode), .Y(uart_clk_mux) );
  DLY1X1M U14 ( .A(n22), .Y(n19) );
  INVXLM U15 ( .A(n38), .Y(n20) );
  INVXLM U16 ( .A(n20), .Y(n21) );
  INVXLM U17 ( .A(n20), .Y(n22) );
  DLY1X1M U18 ( .A(n25), .Y(n23) );
  INVXLM U19 ( .A(n34), .Y(n24) );
  INVXLM U20 ( .A(n24), .Y(n25) );
  INVXLM U21 ( .A(n37), .Y(n26) );
  INVXLM U22 ( .A(n26), .Y(n27) );
  DLY1X1M U23 ( .A(n30), .Y(n28) );
  INVXLM U24 ( .A(n39), .Y(n29) );
  INVXLM U25 ( .A(n29), .Y(n30) );
  INVXLM U26 ( .A(n29), .Y(n31) );
  INVXLM U27 ( .A(n21), .Y(n32) );
  INVXLM U28 ( .A(n32), .Y(n33) );
  INVXLM U29 ( .A(n32), .Y(n34) );
  INVXLM U30 ( .A(SE), .Y(n35) );
  INVXLM U31 ( .A(n35), .Y(n36) );
  INVXLM U32 ( .A(n35), .Y(n37) );
  INVXLM U33 ( .A(n35), .Y(n38) );
  INVXLM U34 ( .A(n35), .Y(n39) );
  RST_SYNC_test_0 U_RST_SYNC_1 ( .CLK(ref_clk_mux), .RST(rst_n_mux), 
        .SYNC_RST(rst_sync_1_out), .test_si(n13), .test_se(n31) );
  RST_SYNC_test_1 U_RST_SYNC_2 ( .CLK(uart_clk_mux), .RST(rst_n_mux), 
        .SYNC_RST(rst_sync_2_out), .test_si(rst_sync_1_out), .test_se(n36) );
  RegFile_test_1 U_RegFile ( .CLK(ref_clk_mux), .RST(n2), .Address(rf_address), 
        .WrEn(rf_wr_en), .RdEn(rf_rd_en), .WrData(rf_wr_data), .RdData(
        rf_rd_data), .RdData_Valid(rf_rd_valid), .REG0(reg0), .REG1(reg1), 
        .REG2(reg2), .REG3(reg3), .test_si2(SI[0]), .test_si1(rst_sync_2_out), 
        .test_so2(n8), .test_so1(SO[2]), .test_se(SE) );
  SYS_CTRL_test_1 U_SYS_CTRL ( .CLK(ref_clk_mux), .RST(n2), .ALU_OUT(alu_out), 
        .OUT_Valid(alu_out_valid), .RX_P_DATA(sync_rx_p_data), .RX_D_VLD(
        sync_rx_d_vld), .RdData(rf_rd_data), .RdData_Valid(rf_rd_valid), 
        .FIFO_FULL(fifo_full), .ALU_FUN(alu_fun), .EN(alu_en), .CLK_EN(clk_en), 
        .Address(rf_address), .WrEn(rf_wr_en), .RdEn(rf_rd_en), .WrData(
        rf_wr_data), .TX_P_DATA(tx_p_data), .TX_D_VLD(tx_d_vld), .test_si(n8), 
        .test_so(n7), .test_se(n19) );
  CLK_GATE U_CLK_GATE ( .CLK(ref_clk_mux), .CLK_EN(clk_en), .GATED_CLK(
        gated_clk_out) );
  ALU_test_1 U_ALU ( .CLK(gated_clk), .RST(n2), .A(reg0), .B(reg1), .ALU_FUN(
        alu_fun), .Enable(alu_en), .ALU_OUT(alu_out), .OUT_VALID(alu_out_valid), .test_si(SI[2]), .test_se(n39) );
  ClkDiv_test_1 U_ClkDiv ( .i_ref_clk(uart_clk_mux), .i_rst_n(rst_sync_2), 
        .i_clk_en(1'b1), .i_div_ratio(reg3), .o_div_clk(tx_clk_out), 
        .test_si2(SI[1]), .test_si1(n16), .test_so2(SO[1]), .test_so1(n15), 
        .test_se(n36) );
  UART_RX_test_1 U_UART_RX ( .CLK(uart_clk_mux), .RST(rst_sync_2), .PAR_TYP(
        reg2[1]), .PAR_EN(reg2[0]), .Prescale(reg2[7:2]), .RX_IN(UART_RX_IN), 
        .P_DATA(rx_p_data), .Data_valid(rx_d_vld), .Parity_Error(parity_error), 
        .Stop_Error(framing_error), .test_si2(n5), .test_si1(n7), .test_so1(n6), .test_se(n23) );
  DATA_SYNC_test_1 U_DATA_SYNC ( .unsync_bus(rx_p_data), .bus_enable(rx_d_vld), 
        .CLK(ref_clk_mux), .RST(n2), .sync_bus(sync_rx_p_data), .enable_pulse(
        sync_rx_d_vld), .test_si(n15), .test_so(n14), .test_se(n33) );
  ASYNC_FIFO_test_1 U_ASYNC_FIFO ( .W_CLK(ref_clk_mux), .W_RST(n2), .W_INC(
        tx_d_vld), .R_CLK(tx_clk), .R_RST(rst_sync_2), .R_INC(pulse_r_inc), 
        .WR_DATA(tx_p_data), .RD_DATA(fifo_rd_data), .FULL(fifo_full), .EMPTY(
        fifo_empty), .test_si(alu_out_valid), .test_so(n16), .test_se(SE) );
  UART_TX_test_1 U_UART_TX ( .P_Data(fifo_rd_data), .Data_Valid(n1), .Par_En(
        reg2[0]), .Par_Type(reg2[1]), .CLK(tx_clk), .RST(rst_sync_2), .TX_OUT(
        UART_TX_O), .busy(tx_busy), .test_si(n6), .test_so(n5), .test_se(n28)
         );
  PULSE_GEN_test_1 U_PULSE_GEN ( .CLK(tx_clk), .RST(rst_sync_2), .LVL_SIG(
        tx_busy), .PULSE_SIG(pulse_r_inc), .test_si(n14), .test_so(n13), 
        .test_se(n27) );
  BUFX2M U13 ( .A(framing_error), .Y(SO[0]) );
endmodule

