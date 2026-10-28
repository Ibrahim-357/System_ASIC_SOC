/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06-SP1
// Date      : Fri Oct  9 22:34:21 2026
/////////////////////////////////////////////////////////////


module RST_SYNC_0 ( CLK, RST, SYNC_RST );
  input CLK, RST;
  output SYNC_RST;
  wire   sync_regs_0_;

  DFFRQX2M sync_regs_reg_1_ ( .D(sync_regs_0_), .CK(CLK), .RN(RST), .Q(
        SYNC_RST) );
  DFFRQX2M sync_regs_reg_0_ ( .D(1'b1), .CK(CLK), .RN(RST), .Q(sync_regs_0_)
         );
endmodule


module RST_SYNC_1 ( CLK, RST, SYNC_RST );
  input CLK, RST;
  output SYNC_RST;
  wire   sync_regs_0_;

  DFFRQX2M sync_regs_reg_1_ ( .D(sync_regs_0_), .CK(CLK), .RN(RST), .Q(
        SYNC_RST) );
  DFFRQX2M sync_regs_reg_0_ ( .D(1'b1), .CK(CLK), .RN(RST), .Q(sync_regs_0_)
         );
endmodule


module RegFile ( CLK, RST, Address, WrEn, RdEn, WrData, RdData, RdData_Valid, 
        REG0, REG1, REG2, REG3 );
  input [3:0] Address;
  input [7:0] WrData;
  output [7:0] RdData;
  output [7:0] REG0;
  output [7:0] REG1;
  output [7:0] REG2;
  output [7:0] REG3;
  input CLK, RST, WrEn, RdEn;
  output RdData_Valid;
  wire   memory_4__7_, memory_4__6_, memory_4__5_, memory_4__4_, memory_4__3_,
         memory_4__2_, memory_4__1_, memory_4__0_, memory_5__7_, memory_5__6_,
         memory_5__5_, memory_5__4_, memory_5__3_, memory_5__2_, memory_5__1_,
         memory_5__0_, memory_6__7_, memory_6__6_, memory_6__5_, memory_6__4_,
         memory_6__3_, memory_6__2_, memory_6__1_, memory_6__0_, memory_7__7_,
         memory_7__6_, memory_7__5_, memory_7__4_, memory_7__3_, memory_7__2_,
         memory_7__1_, memory_7__0_, memory_8__7_, memory_8__6_, memory_8__5_,
         memory_8__4_, memory_8__3_, memory_8__2_, memory_8__1_, memory_8__0_,
         memory_9__7_, memory_9__6_, memory_9__5_, memory_9__4_, memory_9__3_,
         memory_9__2_, memory_9__1_, memory_9__0_, memory_10__7_,
         memory_10__6_, memory_10__5_, memory_10__4_, memory_10__3_,
         memory_10__2_, memory_10__1_, memory_10__0_, memory_11__7_,
         memory_11__6_, memory_11__5_, memory_11__4_, memory_11__3_,
         memory_11__2_, memory_11__1_, memory_11__0_, memory_12__7_,
         memory_12__6_, memory_12__5_, memory_12__4_, memory_12__3_,
         memory_12__2_, memory_12__1_, memory_12__0_, memory_13__7_,
         memory_13__6_, memory_13__5_, memory_13__4_, memory_13__3_,
         memory_13__2_, memory_13__1_, memory_13__0_, memory_14__7_,
         memory_14__6_, memory_14__5_, memory_14__4_, memory_14__3_,
         memory_14__2_, memory_14__1_, memory_14__0_, memory_15__7_,
         memory_15__6_, memory_15__5_, memory_15__4_, memory_15__3_,
         memory_15__2_, memory_15__1_, memory_15__0_, N36, N37, N38, N39, N40,
         N41, N42, N43, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23,
         n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37,
         n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51,
         n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65,
         n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79,
         n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93,
         n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138,
         n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149,
         n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160,
         n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171,
         n172, n173, n174, n175, n176, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n177, n178, n179, n180, n181, n182, n183, n184, n185, n186,
         n187, n188, n189, n190, n191, n192, n193, n194, n195, n196, n197,
         n198, n199, n200, n201, n202, n203, n204, n205, n206, n207, n208,
         n209, n210, n211, n212, n213, n214, n215, n216, n217, n218, n219,
         n220, n221, n222, n223, n224, n225, n226, n227, n228, n229, n230,
         n231, n232, n233, n234, n235, n236, n237, n238, n239, n240, n241,
         n242, n243, n244, n245, n246, n247, n248, n249, n250, n251, n252,
         n253, n254, n255, n256, n257, n258, n259, n260, n261, n262, n263,
         n264, n265, n266, n267, n268, n269, n270, n271, n272, n273, n274,
         n275, n276, n277, n278, n279, n280, n281, n282, n283, n284, n285,
         n286, n287, n288, n289, n290, n291, n292, n293, n294, n295, n296,
         n297, n298, n299, n300;

  DFFRQX2M RdData_reg_7_ ( .D(n48), .CK(CLK), .RN(n285), .Q(RdData[7]) );
  DFFRQX2M RdData_reg_6_ ( .D(n47), .CK(CLK), .RN(n284), .Q(RdData[6]) );
  DFFRQX2M RdData_reg_5_ ( .D(n46), .CK(CLK), .RN(n284), .Q(RdData[5]) );
  DFFRQX2M RdData_reg_4_ ( .D(n45), .CK(CLK), .RN(n284), .Q(RdData[4]) );
  DFFRQX2M RdData_reg_3_ ( .D(n44), .CK(CLK), .RN(n284), .Q(RdData[3]) );
  DFFRQX2M RdData_reg_2_ ( .D(n43), .CK(CLK), .RN(n284), .Q(RdData[2]) );
  DFFRQX2M RdData_reg_1_ ( .D(n42), .CK(CLK), .RN(n284), .Q(RdData[1]) );
  DFFRQX2M RdData_reg_0_ ( .D(n41), .CK(CLK), .RN(n281), .Q(RdData[0]) );
  DFFRQX2M memory_reg_5__7_ ( .D(n136), .CK(CLK), .RN(n278), .Q(memory_5__7_)
         );
  DFFRQX2M memory_reg_5__6_ ( .D(n135), .CK(CLK), .RN(n278), .Q(memory_5__6_)
         );
  DFFRQX2M memory_reg_5__5_ ( .D(n134), .CK(CLK), .RN(n278), .Q(memory_5__5_)
         );
  DFFRQX2M memory_reg_5__4_ ( .D(n133), .CK(CLK), .RN(n278), .Q(memory_5__4_)
         );
  DFFRQX2M memory_reg_5__3_ ( .D(n132), .CK(CLK), .RN(n278), .Q(memory_5__3_)
         );
  DFFRQX2M memory_reg_5__2_ ( .D(n131), .CK(CLK), .RN(n278), .Q(memory_5__2_)
         );
  DFFRQX2M memory_reg_5__1_ ( .D(n130), .CK(CLK), .RN(n278), .Q(memory_5__1_)
         );
  DFFRQX2M memory_reg_5__0_ ( .D(n129), .CK(CLK), .RN(n278), .Q(memory_5__0_)
         );
  DFFRQX2M memory_reg_7__7_ ( .D(n120), .CK(CLK), .RN(n279), .Q(memory_7__7_)
         );
  DFFRQX2M memory_reg_7__6_ ( .D(n119), .CK(CLK), .RN(n279), .Q(memory_7__6_)
         );
  DFFRQX2M memory_reg_7__5_ ( .D(n118), .CK(CLK), .RN(n279), .Q(memory_7__5_)
         );
  DFFRQX2M memory_reg_7__4_ ( .D(n117), .CK(CLK), .RN(n279), .Q(memory_7__4_)
         );
  DFFRQX2M memory_reg_7__3_ ( .D(n116), .CK(CLK), .RN(n279), .Q(memory_7__3_)
         );
  DFFRQX2M memory_reg_7__2_ ( .D(n115), .CK(CLK), .RN(n279), .Q(memory_7__2_)
         );
  DFFRQX2M memory_reg_7__1_ ( .D(n114), .CK(CLK), .RN(n279), .Q(memory_7__1_)
         );
  DFFRQX2M memory_reg_7__0_ ( .D(n113), .CK(CLK), .RN(n279), .Q(memory_7__0_)
         );
  DFFRQX2M memory_reg_9__7_ ( .D(n104), .CK(CLK), .RN(n280), .Q(memory_9__7_)
         );
  DFFRQX2M memory_reg_9__6_ ( .D(n103), .CK(CLK), .RN(n280), .Q(memory_9__6_)
         );
  DFFRQX2M memory_reg_9__5_ ( .D(n102), .CK(CLK), .RN(n280), .Q(memory_9__5_)
         );
  DFFRQX2M memory_reg_9__4_ ( .D(n101), .CK(CLK), .RN(n280), .Q(memory_9__4_)
         );
  DFFRQX2M memory_reg_9__3_ ( .D(n100), .CK(CLK), .RN(n280), .Q(memory_9__3_)
         );
  DFFRQX2M memory_reg_9__2_ ( .D(n99), .CK(CLK), .RN(n280), .Q(memory_9__2_)
         );
  DFFRQX2M memory_reg_9__1_ ( .D(n98), .CK(CLK), .RN(n280), .Q(memory_9__1_)
         );
  DFFRQX2M memory_reg_9__0_ ( .D(n97), .CK(CLK), .RN(n282), .Q(memory_9__0_)
         );
  DFFRQX2M memory_reg_11__7_ ( .D(n88), .CK(CLK), .RN(n281), .Q(memory_11__7_)
         );
  DFFRQX2M memory_reg_11__6_ ( .D(n87), .CK(CLK), .RN(n281), .Q(memory_11__6_)
         );
  DFFRQX2M memory_reg_11__5_ ( .D(n86), .CK(CLK), .RN(n281), .Q(memory_11__5_)
         );
  DFFRQX2M memory_reg_11__4_ ( .D(n85), .CK(CLK), .RN(n281), .Q(memory_11__4_)
         );
  DFFRQX2M memory_reg_11__3_ ( .D(n84), .CK(CLK), .RN(n281), .Q(memory_11__3_)
         );
  DFFRQX2M memory_reg_11__2_ ( .D(n83), .CK(CLK), .RN(n281), .Q(memory_11__2_)
         );
  DFFRQX2M memory_reg_11__1_ ( .D(n82), .CK(CLK), .RN(n283), .Q(memory_11__1_)
         );
  DFFRQX2M memory_reg_11__0_ ( .D(n81), .CK(CLK), .RN(n283), .Q(memory_11__0_)
         );
  DFFRQX2M memory_reg_13__7_ ( .D(n72), .CK(CLK), .RN(n282), .Q(memory_13__7_)
         );
  DFFRQX2M memory_reg_13__6_ ( .D(n71), .CK(CLK), .RN(n282), .Q(memory_13__6_)
         );
  DFFRQX2M memory_reg_13__5_ ( .D(n70), .CK(CLK), .RN(n282), .Q(memory_13__5_)
         );
  DFFRQX2M memory_reg_13__4_ ( .D(n69), .CK(CLK), .RN(n282), .Q(memory_13__4_)
         );
  DFFRQX2M memory_reg_13__3_ ( .D(n68), .CK(CLK), .RN(n282), .Q(memory_13__3_)
         );
  DFFRQX2M memory_reg_13__2_ ( .D(n67), .CK(CLK), .RN(n284), .Q(memory_13__2_)
         );
  DFFRQX2M memory_reg_13__1_ ( .D(n66), .CK(CLK), .RN(n284), .Q(memory_13__1_)
         );
  DFFRQX2M memory_reg_13__0_ ( .D(n65), .CK(CLK), .RN(n284), .Q(memory_13__0_)
         );
  DFFRQX2M memory_reg_15__7_ ( .D(n56), .CK(CLK), .RN(n283), .Q(memory_15__7_)
         );
  DFFRQX2M memory_reg_15__6_ ( .D(n55), .CK(CLK), .RN(n283), .Q(memory_15__6_)
         );
  DFFRQX2M memory_reg_15__5_ ( .D(n54), .CK(CLK), .RN(n284), .Q(memory_15__5_)
         );
  DFFRQX2M memory_reg_15__4_ ( .D(n53), .CK(CLK), .RN(n285), .Q(memory_15__4_)
         );
  DFFRQX2M memory_reg_15__3_ ( .D(n52), .CK(CLK), .RN(n283), .Q(memory_15__3_)
         );
  DFFRQX2M memory_reg_15__2_ ( .D(n51), .CK(CLK), .RN(n284), .Q(memory_15__2_)
         );
  DFFRQX2M memory_reg_15__1_ ( .D(n50), .CK(CLK), .RN(n276), .Q(memory_15__1_)
         );
  DFFRQX2M memory_reg_15__0_ ( .D(n49), .CK(CLK), .RN(n284), .Q(memory_15__0_)
         );
  DFFRQX2M memory_reg_4__7_ ( .D(n144), .CK(CLK), .RN(n277), .Q(memory_4__7_)
         );
  DFFRQX2M memory_reg_4__6_ ( .D(n143), .CK(CLK), .RN(n277), .Q(memory_4__6_)
         );
  DFFRQX2M memory_reg_4__5_ ( .D(n142), .CK(CLK), .RN(n277), .Q(memory_4__5_)
         );
  DFFRQX2M memory_reg_4__4_ ( .D(n141), .CK(CLK), .RN(n279), .Q(memory_4__4_)
         );
  DFFRQX2M memory_reg_4__3_ ( .D(n140), .CK(CLK), .RN(n279), .Q(memory_4__3_)
         );
  DFFRQX2M memory_reg_4__2_ ( .D(n139), .CK(CLK), .RN(n279), .Q(memory_4__2_)
         );
  DFFRQX2M memory_reg_4__1_ ( .D(n138), .CK(CLK), .RN(n279), .Q(memory_4__1_)
         );
  DFFRQX2M memory_reg_4__0_ ( .D(n137), .CK(CLK), .RN(n279), .Q(memory_4__0_)
         );
  DFFRQX2M memory_reg_6__7_ ( .D(n128), .CK(CLK), .RN(n278), .Q(memory_6__7_)
         );
  DFFRQX2M memory_reg_6__6_ ( .D(n127), .CK(CLK), .RN(n278), .Q(memory_6__6_)
         );
  DFFRQX2M memory_reg_6__5_ ( .D(n126), .CK(CLK), .RN(n280), .Q(memory_6__5_)
         );
  DFFRQX2M memory_reg_6__4_ ( .D(n125), .CK(CLK), .RN(n280), .Q(memory_6__4_)
         );
  DFFRQX2M memory_reg_6__3_ ( .D(n124), .CK(CLK), .RN(n280), .Q(memory_6__3_)
         );
  DFFRQX2M memory_reg_6__2_ ( .D(n123), .CK(CLK), .RN(n280), .Q(memory_6__2_)
         );
  DFFRQX2M memory_reg_6__1_ ( .D(n122), .CK(CLK), .RN(n280), .Q(memory_6__1_)
         );
  DFFRQX2M memory_reg_6__0_ ( .D(n121), .CK(CLK), .RN(n279), .Q(memory_6__0_)
         );
  DFFRQX2M memory_reg_8__7_ ( .D(n112), .CK(CLK), .RN(n279), .Q(memory_8__7_)
         );
  DFFRQX2M memory_reg_8__6_ ( .D(n111), .CK(CLK), .RN(n281), .Q(memory_8__6_)
         );
  DFFRQX2M memory_reg_8__5_ ( .D(n110), .CK(CLK), .RN(n281), .Q(memory_8__5_)
         );
  DFFRQX2M memory_reg_8__4_ ( .D(n109), .CK(CLK), .RN(n281), .Q(memory_8__4_)
         );
  DFFRQX2M memory_reg_8__3_ ( .D(n108), .CK(CLK), .RN(n281), .Q(memory_8__3_)
         );
  DFFRQX2M memory_reg_8__2_ ( .D(n107), .CK(CLK), .RN(n281), .Q(memory_8__2_)
         );
  DFFRQX2M memory_reg_8__1_ ( .D(n106), .CK(CLK), .RN(n280), .Q(memory_8__1_)
         );
  DFFRQX2M memory_reg_8__0_ ( .D(n105), .CK(CLK), .RN(n280), .Q(memory_8__0_)
         );
  DFFRQX2M memory_reg_10__7_ ( .D(n96), .CK(CLK), .RN(n282), .Q(memory_10__7_)
         );
  DFFRQX2M memory_reg_10__6_ ( .D(n95), .CK(CLK), .RN(n282), .Q(memory_10__6_)
         );
  DFFRQX2M memory_reg_10__5_ ( .D(n94), .CK(CLK), .RN(n282), .Q(memory_10__5_)
         );
  DFFRQX2M memory_reg_10__4_ ( .D(n93), .CK(CLK), .RN(n282), .Q(memory_10__4_)
         );
  DFFRQX2M memory_reg_10__3_ ( .D(n92), .CK(CLK), .RN(n282), .Q(memory_10__3_)
         );
  DFFRQX2M memory_reg_10__2_ ( .D(n91), .CK(CLK), .RN(n281), .Q(memory_10__2_)
         );
  DFFRQX2M memory_reg_10__1_ ( .D(n90), .CK(CLK), .RN(n281), .Q(memory_10__1_)
         );
  DFFRQX2M memory_reg_10__0_ ( .D(n89), .CK(CLK), .RN(n281), .Q(memory_10__0_)
         );
  DFFRQX2M memory_reg_12__7_ ( .D(n80), .CK(CLK), .RN(n283), .Q(memory_12__7_)
         );
  DFFRQX2M memory_reg_12__6_ ( .D(n79), .CK(CLK), .RN(n283), .Q(memory_12__6_)
         );
  DFFRQX2M memory_reg_12__5_ ( .D(n78), .CK(CLK), .RN(n283), .Q(memory_12__5_)
         );
  DFFRQX2M memory_reg_12__4_ ( .D(n77), .CK(CLK), .RN(n283), .Q(memory_12__4_)
         );
  DFFRQX2M memory_reg_12__3_ ( .D(n76), .CK(CLK), .RN(n282), .Q(memory_12__3_)
         );
  DFFRQX2M memory_reg_12__2_ ( .D(n75), .CK(CLK), .RN(n282), .Q(memory_12__2_)
         );
  DFFRQX2M memory_reg_12__1_ ( .D(n74), .CK(CLK), .RN(n282), .Q(memory_12__1_)
         );
  DFFRQX2M memory_reg_12__0_ ( .D(n73), .CK(CLK), .RN(n282), .Q(memory_12__0_)
         );
  DFFRQX2M memory_reg_14__7_ ( .D(n64), .CK(CLK), .RN(n284), .Q(memory_14__7_)
         );
  DFFRQX2M memory_reg_14__6_ ( .D(n63), .CK(CLK), .RN(n284), .Q(memory_14__6_)
         );
  DFFRQX2M memory_reg_14__5_ ( .D(n62), .CK(CLK), .RN(n283), .Q(memory_14__5_)
         );
  DFFRQX2M memory_reg_14__4_ ( .D(n61), .CK(CLK), .RN(n283), .Q(memory_14__4_)
         );
  DFFRQX2M memory_reg_14__3_ ( .D(n60), .CK(CLK), .RN(n283), .Q(memory_14__3_)
         );
  DFFRQX2M memory_reg_14__2_ ( .D(n59), .CK(CLK), .RN(n283), .Q(memory_14__2_)
         );
  DFFRQX2M memory_reg_14__1_ ( .D(n58), .CK(CLK), .RN(n283), .Q(memory_14__1_)
         );
  DFFRQX2M memory_reg_14__0_ ( .D(n57), .CK(CLK), .RN(n283), .Q(memory_14__0_)
         );
  DFFRQX2M RdData_Valid_reg ( .D(n291), .CK(CLK), .RN(n284), .Q(RdData_Valid)
         );
  DFFSQX2M memory_reg_2__0_ ( .D(n153), .CK(CLK), .SN(n276), .Q(REG2[0]) );
  DFFRQX2M memory_reg_2__1_ ( .D(n154), .CK(CLK), .RN(n278), .Q(REG2[1]) );
  DFFRQX2M memory_reg_3__1_ ( .D(n146), .CK(CLK), .RN(n277), .Q(REG3[1]) );
  DFFRQX2M memory_reg_3__2_ ( .D(n147), .CK(CLK), .RN(n277), .Q(REG3[2]) );
  DFFRQX2M memory_reg_3__0_ ( .D(n145), .CK(CLK), .RN(n277), .Q(REG3[0]) );
  DFFRQX2M memory_reg_3__3_ ( .D(n148), .CK(CLK), .RN(n277), .Q(REG3[3]) );
  DFFSQX2M memory_reg_2__7_ ( .D(n160), .CK(CLK), .SN(n276), .Q(REG2[7]) );
  DFFSQX2M memory_reg_3__5_ ( .D(n150), .CK(CLK), .SN(n276), .Q(REG3[5]) );
  DFFRQX2M memory_reg_3__6_ ( .D(n151), .CK(CLK), .RN(n277), .Q(REG3[6]) );
  DFFRQX2M memory_reg_2__5_ ( .D(n158), .CK(CLK), .RN(n278), .Q(REG2[5]) );
  DFFRQX2M memory_reg_3__7_ ( .D(n152), .CK(CLK), .RN(n277), .Q(REG3[7]) );
  DFFRQX2M memory_reg_3__4_ ( .D(n149), .CK(CLK), .RN(n277), .Q(REG3[4]) );
  DFFRQX2M memory_reg_2__6_ ( .D(n159), .CK(CLK), .RN(n276), .Q(REG2[6]) );
  DFFRQX2M memory_reg_2__2_ ( .D(n155), .CK(CLK), .RN(n278), .Q(REG2[2]) );
  DFFRQX2M memory_reg_2__3_ ( .D(n156), .CK(CLK), .RN(n278), .Q(REG2[3]) );
  DFFRQX2M memory_reg_2__4_ ( .D(n157), .CK(CLK), .RN(n278), .Q(REG2[4]) );
  DFFRQX2M memory_reg_0__1_ ( .D(n170), .CK(CLK), .RN(n277), .Q(REG0[1]) );
  DFFRQX2M memory_reg_0__0_ ( .D(n169), .CK(CLK), .RN(n276), .Q(REG0[0]) );
  DFFRQX2M memory_reg_0__2_ ( .D(n171), .CK(CLK), .RN(n277), .Q(REG0[2]) );
  DFFRQX2M memory_reg_0__3_ ( .D(n172), .CK(CLK), .RN(n277), .Q(REG0[3]) );
  DFFRQX2M memory_reg_0__4_ ( .D(n173), .CK(CLK), .RN(n277), .Q(REG0[4]) );
  DFFRQX2M memory_reg_0__5_ ( .D(n174), .CK(CLK), .RN(n277), .Q(REG0[5]) );
  DFFRQX2M memory_reg_0__6_ ( .D(n175), .CK(CLK), .RN(n280), .Q(REG0[6]) );
  DFFRQX2M memory_reg_0__7_ ( .D(n176), .CK(CLK), .RN(n276), .Q(REG0[7]) );
  DFFRQX2M memory_reg_1__1_ ( .D(n162), .CK(CLK), .RN(n276), .Q(REG1[1]) );
  DFFRQX2M memory_reg_1__3_ ( .D(n164), .CK(CLK), .RN(n276), .Q(REG1[3]) );
  DFFRQX2M memory_reg_1__2_ ( .D(n163), .CK(CLK), .RN(n276), .Q(REG1[2]) );
  DFFRQX2M memory_reg_1__5_ ( .D(n166), .CK(CLK), .RN(n276), .Q(REG1[5]) );
  DFFRQX2M memory_reg_1__7_ ( .D(n168), .CK(CLK), .RN(n276), .Q(REG1[7]) );
  DFFRQX2M memory_reg_1__0_ ( .D(n161), .CK(CLK), .RN(n276), .Q(REG1[0]) );
  DFFRQX2M memory_reg_1__4_ ( .D(n165), .CK(CLK), .RN(n276), .Q(REG1[4]) );
  DFFRQX2M memory_reg_1__6_ ( .D(n167), .CK(CLK), .RN(n276), .Q(REG1[6]) );
  NOR2BX2M U3 ( .AN(n39), .B(Address[0]), .Y(n33) );
  NOR2BX2M U4 ( .AN(n27), .B(Address[0]), .Y(n18) );
  NOR2X2M U5 ( .A(Address[1]), .B(Address[2]), .Y(n26) );
  NOR2X2M U6 ( .A(n270), .B(Address[2]), .Y(n23) );
  NOR2X2M U7 ( .A(n298), .B(Address[1]), .Y(n20) );
  INVX2M U8 ( .A(WrData[5]), .Y(n294) );
  INVX2M U9 ( .A(WrData[7]), .Y(n295) );
  INVX2M U10 ( .A(n1), .Y(n272) );
  NAND2X2M U11 ( .A(n31), .B(n15), .Y(n30) );
  NAND2X2M U12 ( .A(n15), .B(n16), .Y(n14) );
  INVX2M U13 ( .A(n13), .Y(n291) );
  NOR2BX2M U14 ( .AN(n39), .B(n271), .Y(n31) );
  NAND2X2M U15 ( .A(n31), .B(n23), .Y(n36) );
  OR2X2M U16 ( .A(n270), .B(n271), .Y(n1) );
  INVX2M U17 ( .A(n3), .Y(n274) );
  INVX2M U18 ( .A(n4), .Y(n275) );
  INVX2M U19 ( .A(n2), .Y(n273) );
  NOR2BX2M U20 ( .AN(n27), .B(n271), .Y(n16) );
  NOR2X2M U21 ( .A(n298), .B(n270), .Y(n15) );
  NAND2X2M U22 ( .A(n20), .B(n18), .Y(n21) );
  NAND2X2M U23 ( .A(n23), .B(n18), .Y(n24) );
  NAND2X2M U24 ( .A(n26), .B(n18), .Y(n28) );
  NAND2X2M U25 ( .A(n20), .B(n16), .Y(n19) );
  NAND2X2M U26 ( .A(n23), .B(n16), .Y(n22) );
  NAND2X2M U27 ( .A(n26), .B(n16), .Y(n25) );
  NAND2X2M U28 ( .A(n31), .B(n20), .Y(n34) );
  NAND2X2M U29 ( .A(n33), .B(n20), .Y(n35) );
  NAND2X2M U30 ( .A(n33), .B(n23), .Y(n37) );
  NAND2X2M U31 ( .A(n31), .B(n26), .Y(n38) );
  NAND2X2M U32 ( .A(n33), .B(n26), .Y(n40) );
  NAND2X2M U33 ( .A(n18), .B(n15), .Y(n17) );
  NAND2X2M U34 ( .A(n33), .B(n15), .Y(n32) );
  NAND2BX2M U35 ( .AN(WrEn), .B(RdEn), .Y(n13) );
  NOR2BX2M U36 ( .AN(WrEn), .B(RdEn), .Y(n29) );
  BUFX2M U37 ( .A(n290), .Y(n276) );
  BUFX2M U38 ( .A(n287), .Y(n283) );
  BUFX2M U39 ( .A(n287), .Y(n282) );
  BUFX2M U40 ( .A(n288), .Y(n281) );
  BUFX2M U41 ( .A(n289), .Y(n279) );
  BUFX2M U42 ( .A(n289), .Y(n278) );
  BUFX2M U43 ( .A(n290), .Y(n277) );
  BUFX2M U44 ( .A(n288), .Y(n280) );
  BUFX2M U45 ( .A(n286), .Y(n284) );
  BUFX2M U46 ( .A(n286), .Y(n285) );
  OR2X2M U47 ( .A(n270), .B(Address[0]), .Y(n2) );
  OR2X2M U48 ( .A(n271), .B(Address[1]), .Y(n3) );
  OR2X2M U49 ( .A(Address[0]), .B(Address[1]), .Y(n4) );
  INVX2M U50 ( .A(Address[0]), .Y(n271) );
  INVX2M U51 ( .A(Address[1]), .Y(n270) );
  INVX2M U52 ( .A(WrData[4]), .Y(n293) );
  INVX2M U53 ( .A(WrData[6]), .Y(n292) );
  INVX2M U54 ( .A(Address[2]), .Y(n298) );
  NOR2BX2M U55 ( .AN(n29), .B(Address[3]), .Y(n39) );
  INVX2M U56 ( .A(Address[3]), .Y(n269) );
  AND2X2M U57 ( .A(Address[3]), .B(n29), .Y(n27) );
  INVX2M U58 ( .A(WrData[0]), .Y(n296) );
  INVX2M U59 ( .A(WrData[1]), .Y(n297) );
  INVX2M U60 ( .A(WrData[2]), .Y(n299) );
  INVX2M U61 ( .A(WrData[3]), .Y(n300) );
  BUFX2M U62 ( .A(RST), .Y(n287) );
  BUFX2M U63 ( .A(RST), .Y(n289) );
  BUFX2M U64 ( .A(RST), .Y(n288) );
  BUFX2M U65 ( .A(RST), .Y(n290) );
  BUFX2M U66 ( .A(RST), .Y(n286) );
  OAI2BB2X1M U67 ( .B0(n294), .B1(n36), .A0N(REG3[5]), .A1N(n36), .Y(n150) );
  AO22X1M U68 ( .A0(N43), .A1(n291), .B0(RdData[0]), .B1(n13), .Y(n41) );
  AO22X1M U69 ( .A0(N42), .A1(n291), .B0(RdData[1]), .B1(n13), .Y(n42) );
  AO22X1M U70 ( .A0(N41), .A1(n291), .B0(RdData[2]), .B1(n13), .Y(n43) );
  AO22X1M U71 ( .A0(N40), .A1(n291), .B0(RdData[3]), .B1(n13), .Y(n44) );
  AO22X1M U72 ( .A0(N39), .A1(n291), .B0(RdData[4]), .B1(n13), .Y(n45) );
  AO22X1M U73 ( .A0(N38), .A1(n291), .B0(RdData[5]), .B1(n13), .Y(n46) );
  AO22X1M U74 ( .A0(N37), .A1(n291), .B0(RdData[6]), .B1(n13), .Y(n47) );
  AO22X1M U75 ( .A0(N36), .A1(n291), .B0(RdData[7]), .B1(n13), .Y(n48) );
  OAI2BB2X1M U76 ( .B0(n296), .B1(n17), .A0N(memory_14__0_), .A1N(n17), .Y(n57) );
  OAI2BB2X1M U77 ( .B0(n297), .B1(n17), .A0N(memory_14__1_), .A1N(n17), .Y(n58) );
  OAI2BB2X1M U78 ( .B0(n299), .B1(n17), .A0N(memory_14__2_), .A1N(n17), .Y(n59) );
  OAI2BB2X1M U79 ( .B0(n300), .B1(n17), .A0N(memory_14__3_), .A1N(n17), .Y(n60) );
  OAI2BB2X1M U80 ( .B0(n293), .B1(n17), .A0N(memory_14__4_), .A1N(n17), .Y(n61) );
  OAI2BB2X1M U81 ( .B0(n294), .B1(n17), .A0N(memory_14__5_), .A1N(n17), .Y(n62) );
  OAI2BB2X1M U82 ( .B0(n292), .B1(n17), .A0N(memory_14__6_), .A1N(n17), .Y(n63) );
  OAI2BB2X1M U83 ( .B0(n295), .B1(n17), .A0N(memory_14__7_), .A1N(n17), .Y(n64) );
  OAI2BB2X1M U84 ( .B0(n296), .B1(n32), .A0N(memory_6__0_), .A1N(n32), .Y(n121) );
  OAI2BB2X1M U85 ( .B0(n297), .B1(n32), .A0N(memory_6__1_), .A1N(n32), .Y(n122) );
  OAI2BB2X1M U86 ( .B0(n299), .B1(n32), .A0N(memory_6__2_), .A1N(n32), .Y(n123) );
  OAI2BB2X1M U87 ( .B0(n300), .B1(n32), .A0N(memory_6__3_), .A1N(n32), .Y(n124) );
  OAI2BB2X1M U88 ( .B0(n293), .B1(n32), .A0N(memory_6__4_), .A1N(n32), .Y(n125) );
  OAI2BB2X1M U89 ( .B0(n294), .B1(n32), .A0N(memory_6__5_), .A1N(n32), .Y(n126) );
  OAI2BB2X1M U90 ( .B0(n292), .B1(n32), .A0N(memory_6__6_), .A1N(n32), .Y(n127) );
  OAI2BB2X1M U91 ( .B0(n295), .B1(n32), .A0N(memory_6__7_), .A1N(n32), .Y(n128) );
  OAI2BB2X1M U92 ( .B0(n296), .B1(n35), .A0N(memory_4__0_), .A1N(n35), .Y(n137) );
  OAI2BB2X1M U93 ( .B0(n297), .B1(n35), .A0N(memory_4__1_), .A1N(n35), .Y(n138) );
  OAI2BB2X1M U94 ( .B0(n299), .B1(n35), .A0N(memory_4__2_), .A1N(n35), .Y(n139) );
  OAI2BB2X1M U95 ( .B0(n300), .B1(n35), .A0N(memory_4__3_), .A1N(n35), .Y(n140) );
  OAI2BB2X1M U96 ( .B0(n293), .B1(n35), .A0N(memory_4__4_), .A1N(n35), .Y(n141) );
  OAI2BB2X1M U97 ( .B0(n294), .B1(n35), .A0N(memory_4__5_), .A1N(n35), .Y(n142) );
  OAI2BB2X1M U98 ( .B0(n292), .B1(n35), .A0N(memory_4__6_), .A1N(n35), .Y(n143) );
  OAI2BB2X1M U99 ( .B0(n295), .B1(n35), .A0N(memory_4__7_), .A1N(n35), .Y(n144) );
  OAI2BB2X1M U100 ( .B0(n297), .B1(n37), .A0N(REG2[1]), .A1N(n37), .Y(n154) );
  OAI2BB2X1M U101 ( .B0(n299), .B1(n37), .A0N(REG2[2]), .A1N(n37), .Y(n155) );
  OAI2BB2X1M U102 ( .B0(n300), .B1(n37), .A0N(REG2[3]), .A1N(n37), .Y(n156) );
  OAI2BB2X1M U103 ( .B0(n293), .B1(n37), .A0N(REG2[4]), .A1N(n37), .Y(n157) );
  OAI2BB2X1M U104 ( .B0(n294), .B1(n37), .A0N(REG2[5]), .A1N(n37), .Y(n158) );
  OAI2BB2X1M U105 ( .B0(n292), .B1(n37), .A0N(REG2[6]), .A1N(n37), .Y(n159) );
  OAI2BB2X1M U106 ( .B0(n296), .B1(n40), .A0N(REG0[0]), .A1N(n40), .Y(n169) );
  OAI2BB2X1M U107 ( .B0(n297), .B1(n40), .A0N(REG0[1]), .A1N(n40), .Y(n170) );
  OAI2BB2X1M U108 ( .B0(n299), .B1(n40), .A0N(REG0[2]), .A1N(n40), .Y(n171) );
  OAI2BB2X1M U109 ( .B0(n300), .B1(n40), .A0N(REG0[3]), .A1N(n40), .Y(n172) );
  OAI2BB2X1M U110 ( .B0(n293), .B1(n40), .A0N(REG0[4]), .A1N(n40), .Y(n173) );
  OAI2BB2X1M U111 ( .B0(n294), .B1(n40), .A0N(REG0[5]), .A1N(n40), .Y(n174) );
  OAI2BB2X1M U112 ( .B0(n292), .B1(n40), .A0N(REG0[6]), .A1N(n40), .Y(n175) );
  OAI2BB2X1M U113 ( .B0(n295), .B1(n40), .A0N(REG0[7]), .A1N(n40), .Y(n176) );
  OAI2BB2X1M U114 ( .B0(n14), .B1(n296), .A0N(memory_15__0_), .A1N(n14), .Y(
        n49) );
  OAI2BB2X1M U115 ( .B0(n14), .B1(n297), .A0N(memory_15__1_), .A1N(n14), .Y(
        n50) );
  OAI2BB2X1M U116 ( .B0(n14), .B1(n299), .A0N(memory_15__2_), .A1N(n14), .Y(
        n51) );
  OAI2BB2X1M U117 ( .B0(n14), .B1(n300), .A0N(memory_15__3_), .A1N(n14), .Y(
        n52) );
  OAI2BB2X1M U118 ( .B0(n14), .B1(n293), .A0N(memory_15__4_), .A1N(n14), .Y(
        n53) );
  OAI2BB2X1M U119 ( .B0(n14), .B1(n294), .A0N(memory_15__5_), .A1N(n14), .Y(
        n54) );
  OAI2BB2X1M U120 ( .B0(n14), .B1(n292), .A0N(memory_15__6_), .A1N(n14), .Y(
        n55) );
  OAI2BB2X1M U121 ( .B0(n14), .B1(n295), .A0N(memory_15__7_), .A1N(n14), .Y(
        n56) );
  OAI2BB2X1M U122 ( .B0(n296), .B1(n30), .A0N(memory_7__0_), .A1N(n30), .Y(
        n113) );
  OAI2BB2X1M U123 ( .B0(n297), .B1(n30), .A0N(memory_7__1_), .A1N(n30), .Y(
        n114) );
  OAI2BB2X1M U124 ( .B0(n299), .B1(n30), .A0N(memory_7__2_), .A1N(n30), .Y(
        n115) );
  OAI2BB2X1M U125 ( .B0(n300), .B1(n30), .A0N(memory_7__3_), .A1N(n30), .Y(
        n116) );
  OAI2BB2X1M U126 ( .B0(n293), .B1(n30), .A0N(memory_7__4_), .A1N(n30), .Y(
        n117) );
  OAI2BB2X1M U127 ( .B0(n294), .B1(n30), .A0N(memory_7__5_), .A1N(n30), .Y(
        n118) );
  OAI2BB2X1M U128 ( .B0(n292), .B1(n30), .A0N(memory_7__6_), .A1N(n30), .Y(
        n119) );
  OAI2BB2X1M U129 ( .B0(n295), .B1(n30), .A0N(memory_7__7_), .A1N(n30), .Y(
        n120) );
  OAI2BB2X1M U130 ( .B0(n296), .B1(n34), .A0N(memory_5__0_), .A1N(n34), .Y(
        n129) );
  OAI2BB2X1M U131 ( .B0(n297), .B1(n34), .A0N(memory_5__1_), .A1N(n34), .Y(
        n130) );
  OAI2BB2X1M U132 ( .B0(n299), .B1(n34), .A0N(memory_5__2_), .A1N(n34), .Y(
        n131) );
  OAI2BB2X1M U133 ( .B0(n300), .B1(n34), .A0N(memory_5__3_), .A1N(n34), .Y(
        n132) );
  OAI2BB2X1M U134 ( .B0(n293), .B1(n34), .A0N(memory_5__4_), .A1N(n34), .Y(
        n133) );
  OAI2BB2X1M U135 ( .B0(n294), .B1(n34), .A0N(memory_5__5_), .A1N(n34), .Y(
        n134) );
  OAI2BB2X1M U136 ( .B0(n292), .B1(n34), .A0N(memory_5__6_), .A1N(n34), .Y(
        n135) );
  OAI2BB2X1M U137 ( .B0(n295), .B1(n34), .A0N(memory_5__7_), .A1N(n34), .Y(
        n136) );
  OAI2BB2X1M U138 ( .B0(n296), .B1(n36), .A0N(REG3[0]), .A1N(n36), .Y(n145) );
  OAI2BB2X1M U139 ( .B0(n297), .B1(n36), .A0N(REG3[1]), .A1N(n36), .Y(n146) );
  OAI2BB2X1M U140 ( .B0(n299), .B1(n36), .A0N(REG3[2]), .A1N(n36), .Y(n147) );
  OAI2BB2X1M U141 ( .B0(n300), .B1(n36), .A0N(REG3[3]), .A1N(n36), .Y(n148) );
  OAI2BB2X1M U142 ( .B0(n293), .B1(n36), .A0N(REG3[4]), .A1N(n36), .Y(n149) );
  OAI2BB2X1M U143 ( .B0(n292), .B1(n36), .A0N(REG3[6]), .A1N(n36), .Y(n151) );
  OAI2BB2X1M U144 ( .B0(n295), .B1(n36), .A0N(REG3[7]), .A1N(n36), .Y(n152) );
  OAI2BB2X1M U145 ( .B0(n296), .B1(n38), .A0N(REG1[0]), .A1N(n38), .Y(n161) );
  OAI2BB2X1M U146 ( .B0(n297), .B1(n38), .A0N(REG1[1]), .A1N(n38), .Y(n162) );
  OAI2BB2X1M U147 ( .B0(n299), .B1(n38), .A0N(REG1[2]), .A1N(n38), .Y(n163) );
  OAI2BB2X1M U148 ( .B0(n300), .B1(n38), .A0N(REG1[3]), .A1N(n38), .Y(n164) );
  OAI2BB2X1M U149 ( .B0(n293), .B1(n38), .A0N(REG1[4]), .A1N(n38), .Y(n165) );
  OAI2BB2X1M U150 ( .B0(n294), .B1(n38), .A0N(REG1[5]), .A1N(n38), .Y(n166) );
  OAI2BB2X1M U151 ( .B0(n292), .B1(n38), .A0N(REG1[6]), .A1N(n38), .Y(n167) );
  OAI2BB2X1M U152 ( .B0(n295), .B1(n38), .A0N(REG1[7]), .A1N(n38), .Y(n168) );
  OAI2BB2X1M U153 ( .B0(n296), .B1(n19), .A0N(memory_13__0_), .A1N(n19), .Y(
        n65) );
  OAI2BB2X1M U154 ( .B0(n297), .B1(n19), .A0N(memory_13__1_), .A1N(n19), .Y(
        n66) );
  OAI2BB2X1M U155 ( .B0(n299), .B1(n19), .A0N(memory_13__2_), .A1N(n19), .Y(
        n67) );
  OAI2BB2X1M U156 ( .B0(n300), .B1(n19), .A0N(memory_13__3_), .A1N(n19), .Y(
        n68) );
  OAI2BB2X1M U157 ( .B0(n293), .B1(n19), .A0N(memory_13__4_), .A1N(n19), .Y(
        n69) );
  OAI2BB2X1M U158 ( .B0(n294), .B1(n19), .A0N(memory_13__5_), .A1N(n19), .Y(
        n70) );
  OAI2BB2X1M U159 ( .B0(n292), .B1(n19), .A0N(memory_13__6_), .A1N(n19), .Y(
        n71) );
  OAI2BB2X1M U160 ( .B0(n295), .B1(n19), .A0N(memory_13__7_), .A1N(n19), .Y(
        n72) );
  OAI2BB2X1M U161 ( .B0(n296), .B1(n21), .A0N(memory_12__0_), .A1N(n21), .Y(
        n73) );
  OAI2BB2X1M U162 ( .B0(n297), .B1(n21), .A0N(memory_12__1_), .A1N(n21), .Y(
        n74) );
  OAI2BB2X1M U163 ( .B0(n299), .B1(n21), .A0N(memory_12__2_), .A1N(n21), .Y(
        n75) );
  OAI2BB2X1M U164 ( .B0(n300), .B1(n21), .A0N(memory_12__3_), .A1N(n21), .Y(
        n76) );
  OAI2BB2X1M U165 ( .B0(n293), .B1(n21), .A0N(memory_12__4_), .A1N(n21), .Y(
        n77) );
  OAI2BB2X1M U166 ( .B0(n294), .B1(n21), .A0N(memory_12__5_), .A1N(n21), .Y(
        n78) );
  OAI2BB2X1M U167 ( .B0(n292), .B1(n21), .A0N(memory_12__6_), .A1N(n21), .Y(
        n79) );
  OAI2BB2X1M U168 ( .B0(n295), .B1(n21), .A0N(memory_12__7_), .A1N(n21), .Y(
        n80) );
  OAI2BB2X1M U169 ( .B0(n296), .B1(n22), .A0N(memory_11__0_), .A1N(n22), .Y(
        n81) );
  OAI2BB2X1M U170 ( .B0(n297), .B1(n22), .A0N(memory_11__1_), .A1N(n22), .Y(
        n82) );
  OAI2BB2X1M U171 ( .B0(n299), .B1(n22), .A0N(memory_11__2_), .A1N(n22), .Y(
        n83) );
  OAI2BB2X1M U172 ( .B0(n300), .B1(n22), .A0N(memory_11__3_), .A1N(n22), .Y(
        n84) );
  OAI2BB2X1M U173 ( .B0(n293), .B1(n22), .A0N(memory_11__4_), .A1N(n22), .Y(
        n85) );
  OAI2BB2X1M U174 ( .B0(n294), .B1(n22), .A0N(memory_11__5_), .A1N(n22), .Y(
        n86) );
  OAI2BB2X1M U175 ( .B0(n292), .B1(n22), .A0N(memory_11__6_), .A1N(n22), .Y(
        n87) );
  OAI2BB2X1M U176 ( .B0(n295), .B1(n22), .A0N(memory_11__7_), .A1N(n22), .Y(
        n88) );
  OAI2BB2X1M U177 ( .B0(n296), .B1(n24), .A0N(memory_10__0_), .A1N(n24), .Y(
        n89) );
  OAI2BB2X1M U178 ( .B0(n297), .B1(n24), .A0N(memory_10__1_), .A1N(n24), .Y(
        n90) );
  OAI2BB2X1M U179 ( .B0(n299), .B1(n24), .A0N(memory_10__2_), .A1N(n24), .Y(
        n91) );
  OAI2BB2X1M U180 ( .B0(n300), .B1(n24), .A0N(memory_10__3_), .A1N(n24), .Y(
        n92) );
  OAI2BB2X1M U181 ( .B0(n293), .B1(n24), .A0N(memory_10__4_), .A1N(n24), .Y(
        n93) );
  OAI2BB2X1M U182 ( .B0(n294), .B1(n24), .A0N(memory_10__5_), .A1N(n24), .Y(
        n94) );
  OAI2BB2X1M U183 ( .B0(n292), .B1(n24), .A0N(memory_10__6_), .A1N(n24), .Y(
        n95) );
  OAI2BB2X1M U184 ( .B0(n295), .B1(n24), .A0N(memory_10__7_), .A1N(n24), .Y(
        n96) );
  OAI2BB2X1M U185 ( .B0(n296), .B1(n25), .A0N(memory_9__0_), .A1N(n25), .Y(n97) );
  OAI2BB2X1M U186 ( .B0(n297), .B1(n25), .A0N(memory_9__1_), .A1N(n25), .Y(n98) );
  OAI2BB2X1M U187 ( .B0(n299), .B1(n25), .A0N(memory_9__2_), .A1N(n25), .Y(n99) );
  OAI2BB2X1M U188 ( .B0(n300), .B1(n25), .A0N(memory_9__3_), .A1N(n25), .Y(
        n100) );
  OAI2BB2X1M U189 ( .B0(n293), .B1(n25), .A0N(memory_9__4_), .A1N(n25), .Y(
        n101) );
  OAI2BB2X1M U190 ( .B0(n294), .B1(n25), .A0N(memory_9__5_), .A1N(n25), .Y(
        n102) );
  OAI2BB2X1M U191 ( .B0(n292), .B1(n25), .A0N(memory_9__6_), .A1N(n25), .Y(
        n103) );
  OAI2BB2X1M U192 ( .B0(n295), .B1(n25), .A0N(memory_9__7_), .A1N(n25), .Y(
        n104) );
  OAI2BB2X1M U193 ( .B0(n296), .B1(n28), .A0N(memory_8__0_), .A1N(n28), .Y(
        n105) );
  OAI2BB2X1M U194 ( .B0(n297), .B1(n28), .A0N(memory_8__1_), .A1N(n28), .Y(
        n106) );
  OAI2BB2X1M U195 ( .B0(n299), .B1(n28), .A0N(memory_8__2_), .A1N(n28), .Y(
        n107) );
  OAI2BB2X1M U196 ( .B0(n300), .B1(n28), .A0N(memory_8__3_), .A1N(n28), .Y(
        n108) );
  OAI2BB2X1M U197 ( .B0(n293), .B1(n28), .A0N(memory_8__4_), .A1N(n28), .Y(
        n109) );
  OAI2BB2X1M U198 ( .B0(n294), .B1(n28), .A0N(memory_8__5_), .A1N(n28), .Y(
        n110) );
  OAI2BB2X1M U199 ( .B0(n292), .B1(n28), .A0N(memory_8__6_), .A1N(n28), .Y(
        n111) );
  OAI2BB2X1M U200 ( .B0(n295), .B1(n28), .A0N(memory_8__7_), .A1N(n28), .Y(
        n112) );
  OAI2BB2X1M U201 ( .B0(n296), .B1(n37), .A0N(REG2[0]), .A1N(n37), .Y(n153) );
  OAI2BB2X1M U202 ( .B0(n295), .B1(n37), .A0N(REG2[7]), .A1N(n37), .Y(n160) );
  AOI22X1M U203 ( .A0(memory_10__0_), .A1(n273), .B0(memory_11__0_), .B1(n272), 
        .Y(n6) );
  AOI22X1M U204 ( .A0(memory_8__0_), .A1(n275), .B0(memory_9__0_), .B1(n274), 
        .Y(n5) );
  CLKNAND2X2M U205 ( .A(Address[3]), .B(n298), .Y(n253) );
  AOI21X1M U206 ( .A0(n6), .A1(n5), .B0(n253), .Y(n180) );
  AOI22X1M U207 ( .A0(memory_14__0_), .A1(n273), .B0(memory_15__0_), .B1(n272), 
        .Y(n8) );
  AOI22X1M U208 ( .A0(memory_12__0_), .A1(n275), .B0(memory_13__0_), .B1(n274), 
        .Y(n7) );
  CLKNAND2X2M U209 ( .A(Address[3]), .B(Address[2]), .Y(n256) );
  AOI21X1M U210 ( .A0(n8), .A1(n7), .B0(n256), .Y(n179) );
  AOI22X1M U211 ( .A0(REG2[0]), .A1(n273), .B0(REG3[0]), .B1(n272), .Y(n10) );
  AOI22X1M U212 ( .A0(REG0[0]), .A1(n275), .B0(REG1[0]), .B1(n274), .Y(n9) );
  CLKNAND2X2M U213 ( .A(n298), .B(n269), .Y(n259) );
  AOI21X1M U214 ( .A0(n10), .A1(n9), .B0(n259), .Y(n178) );
  AOI22X1M U215 ( .A0(memory_6__0_), .A1(n273), .B0(memory_7__0_), .B1(n272), 
        .Y(n12) );
  AOI22X1M U216 ( .A0(memory_4__0_), .A1(n275), .B0(memory_5__0_), .B1(n274), 
        .Y(n11) );
  CLKNAND2X2M U217 ( .A(Address[2]), .B(n269), .Y(n262) );
  AOI21X1M U218 ( .A0(n12), .A1(n11), .B0(n262), .Y(n177) );
  OR4X1M U219 ( .A(n180), .B(n179), .C(n178), .D(n177), .Y(N43) );
  AOI22X1M U220 ( .A0(memory_10__1_), .A1(n273), .B0(memory_11__1_), .B1(n272), 
        .Y(n182) );
  AOI22X1M U221 ( .A0(memory_8__1_), .A1(n275), .B0(memory_9__1_), .B1(n274), 
        .Y(n181) );
  AOI21X1M U222 ( .A0(n182), .A1(n181), .B0(n253), .Y(n192) );
  AOI22X1M U223 ( .A0(memory_14__1_), .A1(n273), .B0(memory_15__1_), .B1(n272), 
        .Y(n184) );
  AOI22X1M U224 ( .A0(memory_12__1_), .A1(n275), .B0(memory_13__1_), .B1(n274), 
        .Y(n183) );
  AOI21X1M U225 ( .A0(n184), .A1(n183), .B0(n256), .Y(n191) );
  AOI22X1M U226 ( .A0(REG2[1]), .A1(n273), .B0(REG3[1]), .B1(n272), .Y(n186)
         );
  AOI22X1M U227 ( .A0(REG0[1]), .A1(n275), .B0(REG1[1]), .B1(n274), .Y(n185)
         );
  AOI21X1M U228 ( .A0(n186), .A1(n185), .B0(n259), .Y(n190) );
  AOI22X1M U229 ( .A0(memory_6__1_), .A1(n273), .B0(memory_7__1_), .B1(n272), 
        .Y(n188) );
  AOI22X1M U230 ( .A0(memory_4__1_), .A1(n275), .B0(memory_5__1_), .B1(n274), 
        .Y(n187) );
  AOI21X1M U231 ( .A0(n188), .A1(n187), .B0(n262), .Y(n189) );
  OR4X1M U232 ( .A(n192), .B(n191), .C(n190), .D(n189), .Y(N42) );
  AOI22X1M U233 ( .A0(memory_10__2_), .A1(n273), .B0(memory_11__2_), .B1(n272), 
        .Y(n194) );
  AOI22X1M U234 ( .A0(memory_8__2_), .A1(n275), .B0(memory_9__2_), .B1(n274), 
        .Y(n193) );
  AOI21X1M U235 ( .A0(n194), .A1(n193), .B0(n253), .Y(n204) );
  AOI22X1M U236 ( .A0(memory_14__2_), .A1(n273), .B0(memory_15__2_), .B1(n272), 
        .Y(n196) );
  AOI22X1M U237 ( .A0(memory_12__2_), .A1(n275), .B0(memory_13__2_), .B1(n274), 
        .Y(n195) );
  AOI21X1M U238 ( .A0(n196), .A1(n195), .B0(n256), .Y(n203) );
  AOI22X1M U239 ( .A0(REG2[2]), .A1(n273), .B0(REG3[2]), .B1(n272), .Y(n198)
         );
  AOI22X1M U240 ( .A0(REG0[2]), .A1(n275), .B0(REG1[2]), .B1(n274), .Y(n197)
         );
  AOI21X1M U241 ( .A0(n198), .A1(n197), .B0(n259), .Y(n202) );
  AOI22X1M U242 ( .A0(memory_6__2_), .A1(n273), .B0(memory_7__2_), .B1(n272), 
        .Y(n200) );
  AOI22X1M U243 ( .A0(memory_4__2_), .A1(n275), .B0(memory_5__2_), .B1(n274), 
        .Y(n199) );
  AOI21X1M U244 ( .A0(n200), .A1(n199), .B0(n262), .Y(n201) );
  OR4X1M U245 ( .A(n204), .B(n203), .C(n202), .D(n201), .Y(N41) );
  AOI22X1M U246 ( .A0(memory_10__3_), .A1(n273), .B0(memory_11__3_), .B1(n272), 
        .Y(n206) );
  AOI22X1M U247 ( .A0(memory_8__3_), .A1(n275), .B0(memory_9__3_), .B1(n274), 
        .Y(n205) );
  AOI21X1M U248 ( .A0(n206), .A1(n205), .B0(n253), .Y(n216) );
  AOI22X1M U249 ( .A0(memory_14__3_), .A1(n273), .B0(memory_15__3_), .B1(n272), 
        .Y(n208) );
  AOI22X1M U250 ( .A0(memory_12__3_), .A1(n275), .B0(memory_13__3_), .B1(n274), 
        .Y(n207) );
  AOI21X1M U251 ( .A0(n208), .A1(n207), .B0(n256), .Y(n215) );
  AOI22X1M U252 ( .A0(REG2[3]), .A1(n273), .B0(REG3[3]), .B1(n272), .Y(n210)
         );
  AOI22X1M U253 ( .A0(REG0[3]), .A1(n275), .B0(REG1[3]), .B1(n274), .Y(n209)
         );
  AOI21X1M U254 ( .A0(n210), .A1(n209), .B0(n259), .Y(n214) );
  AOI22X1M U255 ( .A0(memory_6__3_), .A1(n273), .B0(memory_7__3_), .B1(n272), 
        .Y(n212) );
  AOI22X1M U256 ( .A0(memory_4__3_), .A1(n275), .B0(memory_5__3_), .B1(n274), 
        .Y(n211) );
  AOI21X1M U257 ( .A0(n212), .A1(n211), .B0(n262), .Y(n213) );
  OR4X1M U258 ( .A(n216), .B(n215), .C(n214), .D(n213), .Y(N40) );
  AOI22X1M U259 ( .A0(memory_10__4_), .A1(n273), .B0(memory_11__4_), .B1(n272), 
        .Y(n218) );
  AOI22X1M U260 ( .A0(memory_8__4_), .A1(n275), .B0(memory_9__4_), .B1(n274), 
        .Y(n217) );
  AOI21X1M U261 ( .A0(n218), .A1(n217), .B0(n253), .Y(n228) );
  AOI22X1M U262 ( .A0(memory_14__4_), .A1(n273), .B0(memory_15__4_), .B1(n272), 
        .Y(n220) );
  AOI22X1M U263 ( .A0(memory_12__4_), .A1(n275), .B0(memory_13__4_), .B1(n274), 
        .Y(n219) );
  AOI21X1M U264 ( .A0(n220), .A1(n219), .B0(n256), .Y(n227) );
  AOI22X1M U265 ( .A0(REG2[4]), .A1(n273), .B0(REG3[4]), .B1(n272), .Y(n222)
         );
  AOI22X1M U266 ( .A0(REG0[4]), .A1(n275), .B0(REG1[4]), .B1(n274), .Y(n221)
         );
  AOI21X1M U267 ( .A0(n222), .A1(n221), .B0(n259), .Y(n226) );
  AOI22X1M U268 ( .A0(memory_6__4_), .A1(n273), .B0(memory_7__4_), .B1(n272), 
        .Y(n224) );
  AOI22X1M U269 ( .A0(memory_4__4_), .A1(n275), .B0(memory_5__4_), .B1(n274), 
        .Y(n223) );
  AOI21X1M U270 ( .A0(n224), .A1(n223), .B0(n262), .Y(n225) );
  OR4X1M U271 ( .A(n228), .B(n227), .C(n226), .D(n225), .Y(N39) );
  AOI22X1M U272 ( .A0(memory_10__5_), .A1(n273), .B0(memory_11__5_), .B1(n272), 
        .Y(n230) );
  AOI22X1M U273 ( .A0(memory_8__5_), .A1(n275), .B0(memory_9__5_), .B1(n274), 
        .Y(n229) );
  AOI21X1M U274 ( .A0(n230), .A1(n229), .B0(n253), .Y(n240) );
  AOI22X1M U275 ( .A0(memory_14__5_), .A1(n273), .B0(memory_15__5_), .B1(n272), 
        .Y(n232) );
  AOI22X1M U276 ( .A0(memory_12__5_), .A1(n275), .B0(memory_13__5_), .B1(n274), 
        .Y(n231) );
  AOI21X1M U277 ( .A0(n232), .A1(n231), .B0(n256), .Y(n239) );
  AOI22X1M U278 ( .A0(REG2[5]), .A1(n273), .B0(REG3[5]), .B1(n272), .Y(n234)
         );
  AOI22X1M U279 ( .A0(REG0[5]), .A1(n275), .B0(REG1[5]), .B1(n274), .Y(n233)
         );
  AOI21X1M U280 ( .A0(n234), .A1(n233), .B0(n259), .Y(n238) );
  AOI22X1M U281 ( .A0(memory_6__5_), .A1(n273), .B0(memory_7__5_), .B1(n272), 
        .Y(n236) );
  AOI22X1M U282 ( .A0(memory_4__5_), .A1(n275), .B0(memory_5__5_), .B1(n274), 
        .Y(n235) );
  AOI21X1M U283 ( .A0(n236), .A1(n235), .B0(n262), .Y(n237) );
  OR4X1M U284 ( .A(n240), .B(n239), .C(n238), .D(n237), .Y(N38) );
  AOI22X1M U285 ( .A0(memory_10__6_), .A1(n273), .B0(memory_11__6_), .B1(n272), 
        .Y(n242) );
  AOI22X1M U286 ( .A0(memory_8__6_), .A1(n275), .B0(memory_9__6_), .B1(n274), 
        .Y(n241) );
  AOI21X1M U287 ( .A0(n242), .A1(n241), .B0(n253), .Y(n252) );
  AOI22X1M U288 ( .A0(memory_14__6_), .A1(n273), .B0(memory_15__6_), .B1(n272), 
        .Y(n244) );
  AOI22X1M U289 ( .A0(memory_12__6_), .A1(n275), .B0(memory_13__6_), .B1(n274), 
        .Y(n243) );
  AOI21X1M U290 ( .A0(n244), .A1(n243), .B0(n256), .Y(n251) );
  AOI22X1M U291 ( .A0(REG2[6]), .A1(n273), .B0(REG3[6]), .B1(n272), .Y(n246)
         );
  AOI22X1M U292 ( .A0(REG0[6]), .A1(n275), .B0(REG1[6]), .B1(n274), .Y(n245)
         );
  AOI21X1M U293 ( .A0(n246), .A1(n245), .B0(n259), .Y(n250) );
  AOI22X1M U294 ( .A0(memory_6__6_), .A1(n273), .B0(memory_7__6_), .B1(n272), 
        .Y(n248) );
  AOI22X1M U295 ( .A0(memory_4__6_), .A1(n275), .B0(memory_5__6_), .B1(n274), 
        .Y(n247) );
  AOI21X1M U296 ( .A0(n248), .A1(n247), .B0(n262), .Y(n249) );
  OR4X1M U297 ( .A(n252), .B(n251), .C(n250), .D(n249), .Y(N37) );
  AOI22X1M U298 ( .A0(memory_10__7_), .A1(n273), .B0(memory_11__7_), .B1(n272), 
        .Y(n255) );
  AOI22X1M U299 ( .A0(memory_8__7_), .A1(n275), .B0(memory_9__7_), .B1(n274), 
        .Y(n254) );
  AOI21X1M U300 ( .A0(n255), .A1(n254), .B0(n253), .Y(n268) );
  AOI22X1M U301 ( .A0(memory_14__7_), .A1(n273), .B0(memory_15__7_), .B1(n272), 
        .Y(n258) );
  AOI22X1M U302 ( .A0(memory_12__7_), .A1(n275), .B0(memory_13__7_), .B1(n274), 
        .Y(n257) );
  AOI21X1M U303 ( .A0(n258), .A1(n257), .B0(n256), .Y(n267) );
  AOI22X1M U304 ( .A0(REG2[7]), .A1(n273), .B0(REG3[7]), .B1(n272), .Y(n261)
         );
  AOI22X1M U305 ( .A0(REG0[7]), .A1(n275), .B0(REG1[7]), .B1(n274), .Y(n260)
         );
  AOI21X1M U306 ( .A0(n261), .A1(n260), .B0(n259), .Y(n266) );
  AOI22X1M U307 ( .A0(memory_6__7_), .A1(n273), .B0(memory_7__7_), .B1(n272), 
        .Y(n264) );
  AOI22X1M U308 ( .A0(memory_4__7_), .A1(n275), .B0(memory_5__7_), .B1(n274), 
        .Y(n263) );
  AOI21X1M U309 ( .A0(n264), .A1(n263), .B0(n262), .Y(n265) );
  OR4X1M U310 ( .A(n268), .B(n267), .C(n266), .D(n265), .Y(N36) );
endmodule


module SYS_CTRL ( CLK, RST, ALU_OUT, OUT_Valid, RX_P_DATA, RX_D_VLD, RdData, 
        RdData_Valid, FIFO_FULL, ALU_FUN, EN, CLK_EN, Address, WrEn, RdEn, 
        WrData, TX_P_DATA, TX_D_VLD, clk_div_en );
  input [15:0] ALU_OUT;
  input [7:0] RX_P_DATA;
  input [7:0] RdData;
  output [3:0] ALU_FUN;
  output [3:0] Address;
  output [7:0] WrData;
  output [7:0] TX_P_DATA;
  input CLK, RST, OUT_Valid, RX_D_VLD, RdData_Valid, FIFO_FULL;
  output EN, CLK_EN, WrEn, RdEn, TX_D_VLD, clk_div_en;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n31, n32, n33, n34, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50,
         n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n64, n65,
         n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79,
         n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93,
         n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n30, n35, n36, n37, n38, n39, n40, n63, n131, n132, n133, n134,
         n135;
  wire   [3:0] current_state;

  DFFRX1M alu_out_low_reg_reg_6_ ( .D(n111), .CK(CLK), .RN(RST), .QN(n2) );
  DFFRX1M alu_out_low_reg_reg_5_ ( .D(n112), .CK(CLK), .RN(RST), .QN(n3) );
  DFFRX1M alu_out_low_reg_reg_4_ ( .D(n113), .CK(CLK), .RN(RST), .QN(n4) );
  DFFRX1M alu_out_low_reg_reg_3_ ( .D(n114), .CK(CLK), .RN(n20), .QN(n5) );
  DFFRX1M alu_out_low_reg_reg_2_ ( .D(n115), .CK(CLK), .RN(n20), .QN(n6) );
  DFFRX1M alu_out_low_reg_reg_1_ ( .D(n116), .CK(CLK), .RN(n20), .QN(n7) );
  DFFRX1M alu_out_low_reg_reg_0_ ( .D(n117), .CK(CLK), .RN(n20), .QN(n8) );
  DFFRX1M alu_out_low_reg_reg_7_ ( .D(n118), .CK(CLK), .RN(n20), .QN(n1) );
  DFFRX1M alu_out_high_reg_reg_0_ ( .D(n119), .CK(CLK), .RN(n20), .QN(n16) );
  DFFRX1M alu_out_high_reg_reg_1_ ( .D(n120), .CK(CLK), .RN(n20), .QN(n15) );
  DFFRX1M alu_out_high_reg_reg_2_ ( .D(n121), .CK(CLK), .RN(n20), .QN(n14) );
  DFFRX1M alu_out_high_reg_reg_3_ ( .D(n122), .CK(CLK), .RN(RST), .QN(n13) );
  DFFRX1M alu_out_high_reg_reg_4_ ( .D(n123), .CK(CLK), .RN(RST), .QN(n12) );
  DFFRX1M alu_out_high_reg_reg_5_ ( .D(n124), .CK(CLK), .RN(RST), .QN(n11) );
  DFFRX1M alu_out_high_reg_reg_6_ ( .D(n125), .CK(CLK), .RN(RST), .QN(n10) );
  DFFRX1M alu_out_high_reg_reg_7_ ( .D(n126), .CK(CLK), .RN(RST), .QN(n9) );
  DFFRX1M rf_addr_reg_reg_2_ ( .D(n109), .CK(CLK), .RN(RST), .QN(n32) );
  DFFRX1M rf_addr_reg_reg_3_ ( .D(n110), .CK(CLK), .RN(RST), .QN(n31) );
  DFFRX1M rf_addr_reg_reg_0_ ( .D(n107), .CK(CLK), .RN(RST), .QN(n34) );
  DFFRX1M rf_addr_reg_reg_1_ ( .D(n108), .CK(CLK), .RN(RST), .QN(n33) );
  DFFRQX2M current_state_reg_1_ ( .D(n129), .CK(CLK), .RN(n20), .Q(
        current_state[1]) );
  DFFRQX2M current_state_reg_0_ ( .D(n130), .CK(CLK), .RN(n20), .Q(
        current_state[0]) );
  DFFRQX2M current_state_reg_2_ ( .D(n128), .CK(CLK), .RN(n20), .Q(
        current_state[2]) );
  DFFRQX2M current_state_reg_3_ ( .D(n127), .CK(CLK), .RN(n20), .Q(
        current_state[3]) );
  INVX2M U3 ( .A(1'b0), .Y(clk_div_en) );
  AND3X2M U5 ( .A(n60), .B(n64), .C(n62), .Y(n19) );
  OAI222X1M U6 ( .A0(n27), .A1(n88), .B0(n34), .B1(n106), .C0(n100), .C1(n91), 
        .Y(Address[0]) );
  NOR2X2M U7 ( .A(n27), .B(n22), .Y(EN) );
  NOR2X2M U8 ( .A(n22), .B(n100), .Y(ALU_FUN[0]) );
  NOR2X2M U9 ( .A(n22), .B(n97), .Y(ALU_FUN[3]) );
  NOR2X2M U10 ( .A(n22), .B(n98), .Y(ALU_FUN[2]) );
  OAI22X1M U11 ( .A0(n99), .A1(n91), .B0(n33), .B1(n106), .Y(Address[1]) );
  OAI22X1M U12 ( .A0(n97), .A1(n91), .B0(n31), .B1(n106), .Y(Address[3]) );
  OAI22X1M U13 ( .A0(n98), .A1(n91), .B0(n32), .B1(n106), .Y(Address[2]) );
  OAI31X1M U14 ( .A0(n84), .A1(n29), .A2(n83), .B0(n85), .Y(n77) );
  NAND2BX2M U15 ( .AN(EN), .B(n43), .Y(CLK_EN) );
  NOR3X2M U16 ( .A(n37), .B(n90), .C(n132), .Y(n46) );
  NOR4X1M U17 ( .A(n90), .B(n131), .C(n76), .D(n39), .Y(n60) );
  INVX2M U18 ( .A(n91), .Y(n39) );
  INVX2M U19 ( .A(n41), .Y(n25) );
  INVX2M U20 ( .A(n89), .Y(n37) );
  NAND2X2M U21 ( .A(n101), .B(n102), .Y(TX_D_VLD) );
  AND2X2M U22 ( .A(n49), .B(n36), .Y(n51) );
  AND2X2M U23 ( .A(n49), .B(n63), .Y(n52) );
  INVX2M U24 ( .A(WrEn), .Y(n26) );
  INVX2M U25 ( .A(n88), .Y(n132) );
  INVX2M U26 ( .A(n42), .Y(n131) );
  INVX2M U27 ( .A(n22), .Y(n38) );
  INVX2M U28 ( .A(n64), .Y(n63) );
  INVX2M U29 ( .A(n43), .Y(n36) );
  INVX2M U30 ( .A(n21), .Y(n20) );
  NOR2X2M U31 ( .A(n40), .B(n133), .Y(n105) );
  NAND2X2M U32 ( .A(n92), .B(n104), .Y(n43) );
  BUFX2M U33 ( .A(n67), .Y(n22) );
  AOI22X1M U34 ( .A0(n66), .A1(n104), .B0(n105), .B1(n96), .Y(n67) );
  NAND2X2M U35 ( .A(n93), .B(n105), .Y(n91) );
  NAND2X2M U36 ( .A(n96), .B(n103), .Y(n88) );
  AND2X2M U37 ( .A(n93), .B(n103), .Y(n90) );
  NAND4X2M U38 ( .A(n42), .B(n43), .C(n44), .D(n45), .Y(n41) );
  NOR3X2M U39 ( .A(n63), .B(n48), .C(n39), .Y(n44) );
  NOR4BX1M U40 ( .AN(n46), .B(n38), .C(n47), .D(n27), .Y(n45) );
  NOR4BX1M U41 ( .AN(n65), .B(n47), .C(n38), .D(n48), .Y(n62) );
  NOR2X2M U42 ( .A(n29), .B(n26), .Y(WrData[4]) );
  NOR2X2M U43 ( .A(n28), .B(n26), .Y(WrData[6]) );
  OAI221X1M U44 ( .A0(n72), .A1(n73), .B0(n24), .B1(n135), .C0(n74), .Y(n128)
         );
  NOR4BX1M U45 ( .AN(n71), .B(n39), .C(n37), .D(n132), .Y(n72) );
  NAND2X2M U46 ( .A(n94), .B(n23), .Y(n102) );
  NAND2X2M U47 ( .A(n95), .B(n23), .Y(n101) );
  NOR2X2M U48 ( .A(n27), .B(n46), .Y(WrEn) );
  AND3X2M U49 ( .A(n60), .B(n61), .C(n62), .Y(n49) );
  OAI22X1M U50 ( .A0(n24), .A1(n133), .B0(n75), .B1(n73), .Y(n129) );
  NOR4X1M U51 ( .A(n63), .B(n76), .C(n37), .D(n77), .Y(n75) );
  NOR2X2M U52 ( .A(n27), .B(n91), .Y(RdEn) );
  OAI2BB1X2M U53 ( .A0N(n103), .A1N(n104), .B0(n71), .Y(n94) );
  NOR2X2M U54 ( .A(n22), .B(n99), .Y(ALU_FUN[1]) );
  NOR2X2M U55 ( .A(n135), .B(n66), .Y(n48) );
  NAND2X2M U56 ( .A(n96), .B(n66), .Y(n64) );
  NAND2X2M U57 ( .A(n93), .B(n66), .Y(n42) );
  NAND2X2M U58 ( .A(n92), .B(n96), .Y(n89) );
  AND2X2M U59 ( .A(n92), .B(n93), .Y(n76) );
  NAND2X2M U60 ( .A(n105), .B(n104), .Y(n71) );
  INVX2M U61 ( .A(n73), .Y(n24) );
  NAND3X2M U62 ( .A(n35), .B(n29), .C(n69), .Y(n74) );
  OR2X2M U63 ( .A(n94), .B(n95), .Y(n47) );
  NOR2X2M U64 ( .A(n46), .B(n100), .Y(WrData[0]) );
  NOR2X2M U65 ( .A(n46), .B(n99), .Y(WrData[1]) );
  NOR2X2M U66 ( .A(n46), .B(n98), .Y(WrData[2]) );
  NOR2X2M U67 ( .A(n46), .B(n97), .Y(WrData[3]) );
  INVX2M U68 ( .A(RST), .Y(n21) );
  NOR2X2M U69 ( .A(current_state[0]), .B(current_state[1]), .Y(n66) );
  NOR2X2M U70 ( .A(n135), .B(current_state[3]), .Y(n96) );
  NOR2X2M U71 ( .A(n134), .B(current_state[2]), .Y(n104) );
  NOR2X2M U72 ( .A(n40), .B(current_state[1]), .Y(n92) );
  INVX2M U73 ( .A(RX_D_VLD), .Y(n27) );
  INVX2M U74 ( .A(current_state[0]), .Y(n40) );
  INVX2M U75 ( .A(current_state[1]), .Y(n133) );
  INVX2M U76 ( .A(current_state[2]), .Y(n135) );
  INVX2M U77 ( .A(current_state[3]), .Y(n134) );
  NOR2X2M U78 ( .A(current_state[2]), .B(current_state[3]), .Y(n93) );
  NOR2X2M U79 ( .A(n133), .B(current_state[0]), .Y(n103) );
  NAND2X2M U80 ( .A(RX_P_DATA[1]), .B(RX_D_VLD), .Y(n99) );
  NAND2X2M U81 ( .A(RX_P_DATA[0]), .B(RX_D_VLD), .Y(n100) );
  NAND2X2M U82 ( .A(n90), .B(RX_D_VLD), .Y(n106) );
  NAND3X2M U83 ( .A(n30), .B(n28), .C(RX_P_DATA[0]), .Y(n84) );
  NOR2X2M U84 ( .A(n36), .B(n132), .Y(n85) );
  OAI22X1M U85 ( .A0(n41), .A1(n35), .B0(n25), .B1(n34), .Y(n107) );
  OAI22X1M U86 ( .A0(n41), .A1(n30), .B0(n25), .B1(n32), .Y(n109) );
  OAI211X2M U87 ( .A0(n24), .A1(n40), .B0(n78), .C0(n74), .Y(n130) );
  OAI21X2M U88 ( .A0(n77), .A1(n81), .B0(n24), .Y(n78) );
  OAI31X1M U89 ( .A0(n82), .A1(RX_P_DATA[0]), .A2(n83), .B0(n22), .Y(n81) );
  NAND3X2M U90 ( .A(n29), .B(n28), .C(n30), .Y(n82) );
  NAND2X2M U91 ( .A(RX_P_DATA[2]), .B(RX_D_VLD), .Y(n98) );
  NAND2X2M U92 ( .A(RX_P_DATA[3]), .B(RX_D_VLD), .Y(n97) );
  OAI22X1M U93 ( .A0(n16), .A1(n101), .B0(n8), .B1(n102), .Y(TX_P_DATA[0]) );
  OAI22X1M U94 ( .A0(n15), .A1(n101), .B0(n7), .B1(n102), .Y(TX_P_DATA[1]) );
  OAI22X1M U95 ( .A0(n14), .A1(n101), .B0(n6), .B1(n102), .Y(TX_P_DATA[2]) );
  OAI22X1M U96 ( .A0(n13), .A1(n101), .B0(n5), .B1(n102), .Y(TX_P_DATA[3]) );
  OAI22X1M U97 ( .A0(n12), .A1(n101), .B0(n4), .B1(n102), .Y(TX_P_DATA[4]) );
  OAI22X1M U98 ( .A0(n11), .A1(n101), .B0(n3), .B1(n102), .Y(TX_P_DATA[5]) );
  OAI22X1M U99 ( .A0(n10), .A1(n101), .B0(n2), .B1(n102), .Y(TX_P_DATA[6]) );
  OAI22X1M U100 ( .A0(n9), .A1(n101), .B0(n1), .B1(n102), .Y(TX_P_DATA[7]) );
  NAND3X2M U101 ( .A(n61), .B(n65), .C(n86), .Y(n73) );
  AOI22X1M U102 ( .A0(FIFO_FULL), .A1(n47), .B0(n27), .B1(n87), .Y(n86) );
  NAND4X2M U103 ( .A(n60), .B(n22), .C(n88), .D(n89), .Y(n87) );
  AND3X2M U104 ( .A(n66), .B(current_state[2]), .C(current_state[3]), .Y(n95)
         );
  OAI2BB2X1M U105 ( .B0(n25), .B1(n33), .A0N(n25), .A1N(RX_P_DATA[1]), .Y(n108) );
  OAI2BB2X1M U106 ( .B0(n25), .B1(n31), .A0N(n25), .A1N(RX_P_DATA[3]), .Y(n110) );
  OAI2BB2X1M U107 ( .B0(n19), .B1(n9), .A0N(ALU_OUT[15]), .A1N(n19), .Y(n126)
         );
  OAI2BB2X1M U108 ( .B0(n19), .B1(n10), .A0N(ALU_OUT[14]), .A1N(n19), .Y(n125)
         );
  OAI2BB2X1M U109 ( .B0(n19), .B1(n11), .A0N(ALU_OUT[13]), .A1N(n19), .Y(n124)
         );
  OAI2BB2X1M U110 ( .B0(n19), .B1(n12), .A0N(ALU_OUT[12]), .A1N(n19), .Y(n123)
         );
  OAI2BB2X1M U111 ( .B0(n19), .B1(n13), .A0N(ALU_OUT[11]), .A1N(n19), .Y(n122)
         );
  OAI2BB2X1M U112 ( .B0(n19), .B1(n14), .A0N(ALU_OUT[10]), .A1N(n19), .Y(n121)
         );
  OAI2BB2X1M U113 ( .B0(n19), .B1(n15), .A0N(ALU_OUT[9]), .A1N(n19), .Y(n120)
         );
  OAI2BB2X1M U114 ( .B0(n19), .B1(n16), .A0N(ALU_OUT[8]), .A1N(n19), .Y(n119)
         );
  OAI21X2M U115 ( .A0(n24), .A1(n134), .B0(n68), .Y(n127) );
  AOI32X1M U116 ( .A0(n69), .A1(RX_P_DATA[0]), .A2(RX_P_DATA[4]), .B0(n24), 
        .B1(n70), .Y(n68) );
  NAND4X2M U117 ( .A(n22), .B(n71), .C(n43), .D(n64), .Y(n70) );
  AND2X2M U118 ( .A(RX_P_DATA[7]), .B(WrEn), .Y(WrData[7]) );
  OAI21X2M U119 ( .A0(n49), .A1(n1), .B0(n59), .Y(n118) );
  AOI22X1M U120 ( .A0(ALU_OUT[7]), .A1(n51), .B0(RdData[7]), .B1(n52), .Y(n59)
         );
  OAI21X2M U121 ( .A0(n49), .A1(n8), .B0(n58), .Y(n117) );
  AOI22X1M U122 ( .A0(ALU_OUT[0]), .A1(n51), .B0(RdData[0]), .B1(n52), .Y(n58)
         );
  OAI21X2M U123 ( .A0(n49), .A1(n7), .B0(n57), .Y(n116) );
  AOI22X1M U124 ( .A0(ALU_OUT[1]), .A1(n51), .B0(RdData[1]), .B1(n52), .Y(n57)
         );
  OAI21X2M U125 ( .A0(n49), .A1(n6), .B0(n56), .Y(n115) );
  AOI22X1M U126 ( .A0(ALU_OUT[2]), .A1(n51), .B0(RdData[2]), .B1(n52), .Y(n56)
         );
  OAI21X2M U127 ( .A0(n49), .A1(n5), .B0(n55), .Y(n114) );
  AOI22X1M U128 ( .A0(ALU_OUT[3]), .A1(n51), .B0(RdData[3]), .B1(n52), .Y(n55)
         );
  OAI21X2M U129 ( .A0(n49), .A1(n4), .B0(n54), .Y(n113) );
  AOI22X1M U130 ( .A0(ALU_OUT[4]), .A1(n51), .B0(RdData[4]), .B1(n52), .Y(n54)
         );
  OAI21X2M U131 ( .A0(n49), .A1(n3), .B0(n53), .Y(n112) );
  AOI22X1M U132 ( .A0(ALU_OUT[5]), .A1(n51), .B0(RdData[5]), .B1(n52), .Y(n53)
         );
  OAI21X2M U133 ( .A0(n49), .A1(n2), .B0(n50), .Y(n111) );
  AOI22X1M U134 ( .A0(ALU_OUT[6]), .A1(n51), .B0(RdData[6]), .B1(n52), .Y(n50)
         );
  AND3X2M U135 ( .A(n131), .B(RX_P_DATA[3]), .C(RX_P_DATA[7]), .Y(n79) );
  AND4X2M U136 ( .A(n24), .B(n79), .C(RX_P_DATA[6]), .D(n80), .Y(n69) );
  NOR3X2M U137 ( .A(n30), .B(RX_P_DATA[5]), .C(RX_P_DATA[1]), .Y(n80) );
  NAND3X2M U138 ( .A(n79), .B(RX_P_DATA[1]), .C(RX_P_DATA[5]), .Y(n83) );
  AND2X2M U139 ( .A(RX_P_DATA[5]), .B(WrEn), .Y(WrData[5]) );
  INVX2M U140 ( .A(FIFO_FULL), .Y(n23) );
  OR2X2M U141 ( .A(RdData_Valid), .B(n64), .Y(n61) );
  OR2X2M U142 ( .A(OUT_Valid), .B(n43), .Y(n65) );
  INVX2M U143 ( .A(RX_P_DATA[2]), .Y(n30) );
  INVX2M U144 ( .A(RX_P_DATA[4]), .Y(n29) );
  INVX2M U145 ( .A(RX_P_DATA[6]), .Y(n28) );
  INVX2M U146 ( .A(RX_P_DATA[0]), .Y(n35) );
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

  AOI21BX2M U2 ( .A0(n18), .A1(A[12]), .B0N(n19), .Y(n1) );
  NAND2X2M U3 ( .A(A[7]), .B(B[7]), .Y(n15) );
  XNOR2X2M U4 ( .A(B[13]), .B(n1), .Y(SUM[13]) );
  INVX2M U5 ( .A(n9), .Y(SUM[6]) );
  INVX2M U6 ( .A(A[6]), .Y(n9) );
  XNOR2X2M U7 ( .A(A[7]), .B(n8), .Y(SUM[7]) );
  INVX2M U8 ( .A(B[7]), .Y(n8) );
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

  ALU_DW01_add_1 FS_1 ( .A({1'b0, A1_12_, A1_11_, A1_10_, A1_9_, A1_8_, A1_7_, 
        A1_6_, SUMB_7__0_, A1_4_, A1_3_, A1_2_, A1_1_, A1_0_}), .B({n10, n16, 
        n15, n14, n13, n11, n12, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .CI(1'b0), .SUM(PRODUCT[15:2]) );
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
  AND2X2M U17 ( .A(CARRYB_7__1_), .B(SUMB_7__2_), .Y(n11) );
  AND2X2M U18 ( .A(CARRYB_7__0_), .B(SUMB_7__1_), .Y(n12) );
  CLKXOR2X2M U19 ( .A(CARRYB_7__3_), .B(SUMB_7__4_), .Y(A1_9_) );
  CLKXOR2X2M U20 ( .A(CARRYB_7__4_), .B(SUMB_7__5_), .Y(A1_10_) );
  CLKXOR2X2M U21 ( .A(CARRYB_7__5_), .B(SUMB_7__6_), .Y(A1_11_) );
  INVX2M U22 ( .A(ab_0__2_), .Y(n17) );
  AND2X2M U23 ( .A(CARRYB_7__2_), .B(SUMB_7__3_), .Y(n13) );
  AND2X2M U24 ( .A(CARRYB_7__3_), .B(SUMB_7__4_), .Y(n14) );
  AND2X2M U25 ( .A(CARRYB_7__4_), .B(SUMB_7__5_), .Y(n15) );
  CLKXOR2X2M U26 ( .A(CARRYB_7__0_), .B(SUMB_7__1_), .Y(A1_6_) );
  CLKXOR2X2M U27 ( .A(CARRYB_7__6_), .B(ab_7__7_), .Y(A1_12_) );
  AND2X2M U28 ( .A(CARRYB_7__5_), .B(SUMB_7__6_), .Y(n16) );
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
endmodule


module ALU ( CLK, RST, A, B, ALU_FUN, Enable, ALU_OUT, OUT_VALID );
  input [7:0] A;
  input [7:0] B;
  input [3:0] ALU_FUN;
  output [15:0] ALU_OUT;
  input CLK, RST, Enable;
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
         n108, n109, n110, n112, n113, n114, n115, n116, n117, n118, n119,
         n120, n121, n122, n123, n124, n125, n126, n127, n128, n129, n130,
         n131, n132, n133, n134, n3, n4, n5, n6, n7, n8, n17, n19, n23, n24,
         n26, n29, n32, n33, n34, n42, n43, n50, n51, n58, n59, n66, n67, n74,
         n75, n83, n84, n93, n96, n97, n101, n103, n111, n135, n136, n137,
         n138, n139, n140, n141, n142, n143, n144, n145, n146, n147, n148,
         n149, n150, n151, n152, n153, SYNOPSYS_UNCONNECTED_1,
         SYNOPSYS_UNCONNECTED_2, SYNOPSYS_UNCONNECTED_3,
         SYNOPSYS_UNCONNECTED_4, SYNOPSYS_UNCONNECTED_5,
         SYNOPSYS_UNCONNECTED_6, SYNOPSYS_UNCONNECTED_7,
         SYNOPSYS_UNCONNECTED_8;

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
  DFFRQX2M ALU_OUT_reg_8_ ( .D(n127), .CK(CLK), .RN(RST), .Q(ALU_OUT[8]) );
  DFFRQX2M OUT_VALID_reg ( .D(Enable), .CK(CLK), .RN(RST), .Q(OUT_VALID) );
  DFFRQX2M ALU_OUT_reg_15_ ( .D(n134), .CK(CLK), .RN(RST), .Q(ALU_OUT[15]) );
  DFFRQX2M ALU_OUT_reg_14_ ( .D(n133), .CK(CLK), .RN(RST), .Q(ALU_OUT[14]) );
  DFFRQX2M ALU_OUT_reg_13_ ( .D(n132), .CK(CLK), .RN(RST), .Q(ALU_OUT[13]) );
  DFFRQX2M ALU_OUT_reg_12_ ( .D(n131), .CK(CLK), .RN(RST), .Q(ALU_OUT[12]) );
  DFFRQX2M ALU_OUT_reg_11_ ( .D(n130), .CK(CLK), .RN(RST), .Q(ALU_OUT[11]) );
  DFFRQX2M ALU_OUT_reg_10_ ( .D(n129), .CK(CLK), .RN(RST), .Q(ALU_OUT[10]) );
  DFFRQX2M ALU_OUT_reg_9_ ( .D(n128), .CK(CLK), .RN(RST), .Q(ALU_OUT[9]) );
  DFFRQX2M ALU_OUT_reg_7_ ( .D(n126), .CK(CLK), .RN(RST), .Q(ALU_OUT[7]) );
  DFFRQX2M ALU_OUT_reg_6_ ( .D(n125), .CK(CLK), .RN(RST), .Q(ALU_OUT[6]) );
  DFFRQX2M ALU_OUT_reg_5_ ( .D(n124), .CK(CLK), .RN(RST), .Q(ALU_OUT[5]) );
  DFFRQX2M ALU_OUT_reg_4_ ( .D(n123), .CK(CLK), .RN(RST), .Q(ALU_OUT[4]) );
  DFFRQX2M ALU_OUT_reg_3_ ( .D(n122), .CK(CLK), .RN(RST), .Q(ALU_OUT[3]) );
  DFFRQX2M ALU_OUT_reg_2_ ( .D(n121), .CK(CLK), .RN(RST), .Q(ALU_OUT[2]) );
  DFFRQX2M ALU_OUT_reg_1_ ( .D(n120), .CK(CLK), .RN(RST), .Q(ALU_OUT[1]) );
  DFFRQX2M ALU_OUT_reg_0_ ( .D(n119), .CK(CLK), .RN(RST), .Q(ALU_OUT[0]) );
  INVX2M U3 ( .A(n30), .Y(n135) );
  INVX2M U4 ( .A(n85), .Y(n97) );
  NOR2X2M U5 ( .A(n95), .B(n104), .Y(n30) );
  AOI2B1X1M U8 ( .A1N(n102), .A0(n106), .B0(n101), .Y(n85) );
  NOR2BX2M U9 ( .AN(n110), .B(n95), .Y(n31) );
  NOR2X2M U10 ( .A(n138), .B(n95), .Y(n94) );
  INVX2M U11 ( .A(n25), .Y(n96) );
  NOR3X2M U12 ( .A(n101), .B(n140), .C(n104), .Y(n80) );
  NOR2BX2M U13 ( .AN(n80), .B(n137), .Y(n39) );
  INVX2M U14 ( .A(n27), .Y(n103) );
  NOR3BX2M U15 ( .AN(n110), .B(n101), .C(ALU_FUN[0]), .Y(n107) );
  NOR3X2M U16 ( .A(n138), .B(ALU_FUN[3]), .C(n139), .Y(n102) );
  NAND2X2M U17 ( .A(n107), .B(ALU_FUN[3]), .Y(n25) );
  NAND3X2M U18 ( .A(ALU_FUN[0]), .B(n140), .C(Enable), .Y(n95) );
  INVX2M U19 ( .A(Enable), .Y(n101) );
  NOR2X2M U20 ( .A(ALU_FUN[1]), .B(ALU_FUN[2]), .Y(n110) );
  INVX2M U21 ( .A(ALU_FUN[3]), .Y(n140) );
  INVX2M U22 ( .A(ALU_FUN[2]), .Y(n139) );
  NOR4X1M U23 ( .A(n101), .B(n138), .C(ALU_FUN[0]), .D(ALU_FUN[3]), .Y(n98) );
  NOR2BX2M U24 ( .AN(n107), .B(ALU_FUN[3]), .Y(n21) );
  NOR2BX2M U25 ( .AN(n98), .B(ALU_FUN[2]), .Y(n13) );
  NAND3X2M U26 ( .A(Enable), .B(n137), .C(n102), .Y(n27) );
  NOR2BX2M U27 ( .AN(n80), .B(ALU_FUN[0]), .Y(n14) );
  NAND2X2M U28 ( .A(Enable), .B(n105), .Y(n28) );
  OAI21X2M U29 ( .A0(ALU_FUN[3]), .A1(n104), .B0(n106), .Y(n105) );
  NAND2X2M U30 ( .A(ALU_FUN[2]), .B(n138), .Y(n104) );
  NAND3X2M U31 ( .A(ALU_FUN[3]), .B(ALU_FUN[0]), .C(n110), .Y(n106) );
  INVX2M U32 ( .A(ALU_FUN[1]), .Y(n138) );
  INVX2M U33 ( .A(ALU_FUN[0]), .Y(n137) );
  AOI222X1M U34 ( .A0(n30), .A1(n3), .B0(N96), .B1(n31), .C0(N122), .C1(n136), 
        .Y(n10) );
  AOI222X1M U35 ( .A0(n30), .A1(n4), .B0(N97), .B1(n31), .C0(N123), .C1(n136), 
        .Y(n36) );
  AOI222X1M U36 ( .A0(n5), .A1(n30), .B0(N98), .B1(n31), .C0(N124), .C1(n136), 
        .Y(n45) );
  AOI222X1M U37 ( .A0(n6), .A1(n30), .B0(N99), .B1(n31), .C0(N125), .C1(n136), 
        .Y(n53) );
  AOI222X1M U38 ( .A0(n7), .A1(n30), .B0(N100), .B1(n31), .C0(N126), .C1(n136), 
        .Y(n61) );
  AOI222X1M U39 ( .A0(n8), .A1(n30), .B0(N101), .B1(n31), .C0(N127), .C1(n136), 
        .Y(n69) );
  AOI222X1M U40 ( .A0(N111), .A1(n13), .B0(n19), .B1(n14), .C0(n8), .C1(n39), 
        .Y(n79) );
  AOI222X1M U41 ( .A0(N94), .A1(n21), .B0(n17), .B1(n39), .C0(N112), .C1(n13), 
        .Y(n87) );
  AOI21X2M U42 ( .A0(N104), .A1(n31), .B0(n85), .Y(n108) );
  AOI221XLM U43 ( .A0(n96), .A1(n141), .B0(n19), .B1(n111), .C0(n30), .Y(n99)
         );
  INVX2M U44 ( .A(n28), .Y(n111) );
  AOI221XLM U45 ( .A0(n19), .A1(n96), .B0(n85), .B1(n141), .C0(n103), .Y(n100)
         );
  OAI221X1M U46 ( .A0(n4), .A1(n97), .B0(n144), .B1(n25), .C0(n27), .Y(n41) );
  OAI221X1M U47 ( .A0(n3), .A1(n97), .B0(n25), .B1(n145), .C0(n27), .Y(n22) );
  OAI221X1M U48 ( .A0(n5), .A1(n97), .B0(n25), .B1(n83), .C0(n27), .Y(n49) );
  OAI221X1M U49 ( .A0(n6), .A1(n97), .B0(n25), .B1(n84), .C0(n27), .Y(n57) );
  OAI221X1M U50 ( .A0(n7), .A1(n97), .B0(n25), .B1(n143), .C0(n27), .Y(n65) );
  OAI221X1M U51 ( .A0(n8), .A1(n97), .B0(n25), .B1(n93), .C0(n27), .Y(n73) );
  OAI221X1M U52 ( .A0(n17), .A1(n97), .B0(n25), .B1(n142), .C0(n27), .Y(n82)
         );
  OAI221X1M U53 ( .A0(n145), .A1(n28), .B0(n3), .B1(n25), .C0(n135), .Y(n20)
         );
  OAI221X1M U54 ( .A0(n144), .A1(n28), .B0(n4), .B1(n25), .C0(n135), .Y(n40)
         );
  OAI221X1M U55 ( .A0(n28), .A1(n83), .B0(n5), .B1(n25), .C0(n135), .Y(n48) );
  OAI221X1M U56 ( .A0(n28), .A1(n84), .B0(n6), .B1(n25), .C0(n135), .Y(n56) );
  OAI221X1M U57 ( .A0(n28), .A1(n143), .B0(n7), .B1(n25), .C0(n135), .Y(n64)
         );
  OAI221X1M U58 ( .A0(n28), .A1(n93), .B0(n8), .B1(n25), .C0(n135), .Y(n72) );
  OAI221X1M U59 ( .A0(n28), .A1(n142), .B0(n17), .B1(n25), .C0(n135), .Y(n81)
         );
  NOR4X1M U60 ( .A(n16), .B(n138), .C(ALU_FUN[2]), .D(n18), .Y(n15) );
  NAND2X2M U61 ( .A(Enable), .B(ALU_FUN[3]), .Y(n16) );
  AOI22X1M U62 ( .A0(N162), .A1(n137), .B0(N163), .B1(ALU_FUN[0]), .Y(n18) );
  INVX2M U63 ( .A(n90), .Y(n136) );
  OAI211X2M U64 ( .A0(n91), .A1(n92), .B0(n139), .C0(n94), .Y(n90) );
  NAND4X2M U65 ( .A(n153), .B(n152), .C(n151), .D(n150), .Y(n92) );
  NAND4X2M U66 ( .A(n149), .B(n148), .C(n147), .D(n146), .Y(n91) );
  INVX2M U67 ( .A(n6), .Y(n84) );
  INVX2M U68 ( .A(n5), .Y(n83) );
  INVX2M U69 ( .A(n8), .Y(n93) );
  INVX2M U70 ( .A(n4), .Y(n144) );
  INVX2M U71 ( .A(n3), .Y(n145) );
  INVX2M U72 ( .A(n19), .Y(n141) );
  INVX2M U73 ( .A(n7), .Y(n143) );
  INVX2M U74 ( .A(n17), .Y(n142) );
  NAND4X2M U75 ( .A(n9), .B(n10), .C(n11), .D(n12), .Y(n119) );
  AOI22X1M U76 ( .A0(n103), .A1(n145), .B0(ALU_OUT[0]), .B1(n101), .Y(n9) );
  AOI222X1M U77 ( .A0(B[0]), .A1(n20), .B0(N87), .B1(n21), .C0(n22), .C1(n153), 
        .Y(n11) );
  AOI221XLM U78 ( .A0(N105), .A1(n13), .B0(n4), .B1(n14), .C0(n15), .Y(n12) );
  BUFX2M U79 ( .A(A[7]), .Y(n19) );
  BUFX2M U80 ( .A(A[6]), .Y(n17) );
  NAND4X2M U81 ( .A(n35), .B(n36), .C(n37), .D(n38), .Y(n120) );
  AOI22X1M U82 ( .A0(n103), .A1(n144), .B0(ALU_OUT[1]), .B1(n101), .Y(n35) );
  AOI222X1M U83 ( .A0(N106), .A1(n13), .B0(n5), .B1(n14), .C0(n39), .C1(n3), 
        .Y(n38) );
  AOI222X1M U84 ( .A0(B[1]), .A1(n40), .B0(N88), .B1(n21), .C0(n41), .C1(n152), 
        .Y(n37) );
  BUFX2M U85 ( .A(A[5]), .Y(n8) );
  NAND4X2M U86 ( .A(n44), .B(n45), .C(n46), .D(n47), .Y(n121) );
  AOI22X1M U87 ( .A0(n103), .A1(n83), .B0(ALU_OUT[2]), .B1(n101), .Y(n44) );
  AOI222X1M U88 ( .A0(N107), .A1(n13), .B0(n6), .B1(n14), .C0(n39), .C1(n4), 
        .Y(n47) );
  AOI222X1M U89 ( .A0(B[2]), .A1(n48), .B0(N89), .B1(n21), .C0(n49), .C1(n151), 
        .Y(n46) );
  BUFX2M U90 ( .A(A[4]), .Y(n7) );
  BUFX2M U91 ( .A(A[3]), .Y(n6) );
  NAND4X2M U92 ( .A(n52), .B(n53), .C(n54), .D(n55), .Y(n122) );
  AOI22X1M U93 ( .A0(n103), .A1(n84), .B0(ALU_OUT[3]), .B1(n101), .Y(n52) );
  AOI222X1M U94 ( .A0(B[3]), .A1(n56), .B0(N90), .B1(n21), .C0(n57), .C1(n150), 
        .Y(n54) );
  AOI222X1M U95 ( .A0(N108), .A1(n13), .B0(n7), .B1(n14), .C0(n39), .C1(n5), 
        .Y(n55) );
  BUFX2M U96 ( .A(A[2]), .Y(n5) );
  NAND2X2M U97 ( .A(n117), .B(n108), .Y(n133) );
  AOI22X1M U98 ( .A0(N119), .A1(n98), .B0(ALU_OUT[14]), .B1(n101), .Y(n117) );
  NAND2X2M U99 ( .A(n118), .B(n108), .Y(n134) );
  AOI22X1M U100 ( .A0(N120), .A1(n98), .B0(ALU_OUT[15]), .B1(n101), .Y(n118)
         );
  NAND4X2M U101 ( .A(n60), .B(n61), .C(n62), .D(n63), .Y(n123) );
  AOI22X1M U102 ( .A0(n103), .A1(n143), .B0(ALU_OUT[4]), .B1(n101), .Y(n60) );
  AOI222X1M U103 ( .A0(B[4]), .A1(n64), .B0(N91), .B1(n21), .C0(n65), .C1(n149), .Y(n62) );
  AOI222X1M U104 ( .A0(N109), .A1(n13), .B0(n8), .B1(n14), .C0(n6), .C1(n39), 
        .Y(n63) );
  BUFX2M U105 ( .A(A[0]), .Y(n3) );
  BUFX2M U106 ( .A(A[1]), .Y(n4) );
  NAND2X2M U107 ( .A(n113), .B(n108), .Y(n129) );
  AOI22X1M U108 ( .A0(N115), .A1(n98), .B0(ALU_OUT[10]), .B1(n101), .Y(n113)
         );
  NAND2X2M U109 ( .A(n114), .B(n108), .Y(n130) );
  AOI22X1M U110 ( .A0(N116), .A1(n98), .B0(ALU_OUT[11]), .B1(n101), .Y(n114)
         );
  NAND2X2M U111 ( .A(n115), .B(n108), .Y(n131) );
  AOI22X1M U112 ( .A0(N117), .A1(n98), .B0(ALU_OUT[12]), .B1(n101), .Y(n115)
         );
  NAND2X2M U113 ( .A(n116), .B(n108), .Y(n132) );
  AOI22X1M U114 ( .A0(N118), .A1(n98), .B0(ALU_OUT[13]), .B1(n101), .Y(n116)
         );
  OAI2B11X2M U115 ( .A1N(ALU_OUT[8]), .A0(Enable), .B0(n108), .C0(n109), .Y(
        n127) );
  AOI222X1M U116 ( .A0(N113), .A1(n98), .B0(n19), .B1(n39), .C0(N95), .C1(n21), 
        .Y(n109) );
  NAND2X2M U117 ( .A(n112), .B(n108), .Y(n128) );
  AOI22X1M U118 ( .A0(N114), .A1(n98), .B0(ALU_OUT[9]), .B1(n101), .Y(n112) );
  NAND4X2M U119 ( .A(n68), .B(n69), .C(n70), .D(n71), .Y(n124) );
  AOI22X1M U120 ( .A0(n103), .A1(n93), .B0(ALU_OUT[5]), .B1(n101), .Y(n68) );
  AOI222X1M U121 ( .A0(B[5]), .A1(n72), .B0(N92), .B1(n21), .C0(n73), .C1(n148), .Y(n70) );
  AOI222X1M U122 ( .A0(N110), .A1(n13), .B0(n17), .B1(n14), .C0(n7), .C1(n39), 
        .Y(n71) );
  NAND4X2M U123 ( .A(n76), .B(n77), .C(n78), .D(n79), .Y(n125) );
  AOI22X1M U124 ( .A0(n103), .A1(n142), .B0(ALU_OUT[6]), .B1(n101), .Y(n76) );
  AOI222X1M U125 ( .A0(B[6]), .A1(n81), .B0(N93), .B1(n21), .C0(n82), .C1(n147), .Y(n78) );
  AOI222X1M U126 ( .A0(n17), .A1(n30), .B0(N102), .B1(n31), .C0(N128), .C1(
        n136), .Y(n77) );
  NAND4BX1M U127 ( .AN(n86), .B(n87), .C(n88), .D(n89), .Y(n126) );
  AOI22X1M U128 ( .A0(n103), .A1(n141), .B0(ALU_OUT[7]), .B1(n101), .Y(n88) );
  OAI22X1M U129 ( .A0(n99), .A1(n146), .B0(B[7]), .B1(n100), .Y(n86) );
  AOI222X1M U130 ( .A0(n19), .A1(n30), .B0(N103), .B1(n31), .C0(N129), .C1(
        n136), .Y(n89) );
  INVX2M U131 ( .A(B[7]), .Y(n146) );
  INVX2M U132 ( .A(B[6]), .Y(n147) );
  INVX2M U133 ( .A(B[0]), .Y(n153) );
  INVX2M U134 ( .A(B[5]), .Y(n148) );
  INVX2M U135 ( .A(B[1]), .Y(n152) );
  INVX2M U136 ( .A(B[3]), .Y(n150) );
  INVX2M U137 ( .A(B[2]), .Y(n151) );
  INVX2M U138 ( .A(B[4]), .Y(n149) );
  NOR2BX1M U139 ( .AN(B[0]), .B(n3), .Y(n23) );
  OAI2B2X1M U140 ( .A1N(n4), .A0(n23), .B0(B[1]), .B1(n23), .Y(n24) );
  NAND2BX1M U141 ( .AN(n17), .B(B[6]), .Y(n59) );
  CLKNAND2X2M U142 ( .A(B[5]), .B(n93), .Y(n58) );
  NAND2BX1M U143 ( .AN(n7), .B(B[4]), .Y(n43) );
  NAND4X1M U144 ( .A(n24), .B(n59), .C(n58), .D(n43), .Y(n75) );
  CLKNAND2X2M U145 ( .A(B[3]), .B(n84), .Y(n42) );
  CLKNAND2X2M U146 ( .A(B[2]), .B(n83), .Y(n26) );
  CLKNAND2X2M U147 ( .A(n42), .B(n26), .Y(n74) );
  NOR2BX1M U148 ( .AN(B[7]), .B(n19), .Y(n67) );
  NOR2BX1M U149 ( .AN(n3), .B(B[0]), .Y(n32) );
  OAI2BB1X1M U150 ( .A0N(n32), .A1N(n4), .B0(B[1]), .Y(n29) );
  OAI211X1M U151 ( .A0(n4), .A1(n32), .B0(n29), .C0(n26), .Y(n33) );
  OAI221X1M U152 ( .A0(B[2]), .A1(n83), .B0(B[3]), .B1(n84), .C0(n33), .Y(n34)
         );
  AOI32X1M U153 ( .A0(n43), .A1(n42), .A2(n34), .B0(n7), .B1(n149), .Y(n50) );
  OAI21X1M U154 ( .A0(B[5]), .A1(n93), .B0(n50), .Y(n51) );
  AOI32X1M U155 ( .A0(n59), .A1(n58), .A2(n51), .B0(n17), .B1(n147), .Y(n66)
         );
  OAI2B2X1M U156 ( .A1N(n19), .A0(B[7]), .B0(n67), .B1(n66), .Y(N163) );
  NOR4X1M U157 ( .A(n75), .B(n74), .C(N163), .D(n67), .Y(N162) );
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


module ClkDiv ( i_ref_clk, i_rst_n, i_clk_en, i_div_ratio, o_div_clk );
  input [7:0] i_div_ratio;
  input i_ref_clk, i_rst_n, i_clk_en;
  output o_div_clk;
  wire   out_p, N7, N8, N9, N10, N11, N12, N13, N14, N15, N16, N18, N19, N20,
         N21, N22, N23, N24, N25, N34, N35, N36, N37, N38, N39, N40, N41, N42,
         N43, out_n, n9, n10, n11, n12, n13, n14, n15, n1, n2, n3, n4, n5, n6,
         n8, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42,
         n43, n44;
  wire   [7:0] counter;

  DFFNSRHX2M out_n_reg ( .D(n44), .CKN(i_ref_clk), .SN(1'b1), .RN(i_rst_n), 
        .Q(out_n) );
  ClkDiv_DW01_inc_0 add_36 ( .A(counter), .SUM({N25, N24, N23, N22, N21, N20, 
        N19, N18}) );
  DFFRX1M counter_reg_4_ ( .D(N39), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[4]), .QN(n42) );
  DFFRX1M counter_reg_3_ ( .D(N38), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[3]), .QN(n41) );
  DFFRX1M counter_reg_2_ ( .D(N37), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[2]), .QN(n40) );
  DFFRX1M counter_reg_1_ ( .D(N36), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[1]) );
  DFFRX1M counter_reg_0_ ( .D(N35), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[0]) );
  DFFRX1M counter_reg_5_ ( .D(N40), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[5]), .QN(n43) );
  DFFRX1M counter_reg_6_ ( .D(N41), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[6]) );
  DFFRX1M counter_reg_7_ ( .D(N42), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[7]) );
  DFFRX1M out_p_reg ( .D(N43), .CK(i_ref_clk), .RN(i_rst_n), .Q(out_p) );
  INVX2M U4 ( .A(n12), .Y(n44) );
  NOR2BX2M U5 ( .AN(N19), .B(n13), .Y(N36) );
  NOR2BX2M U6 ( .AN(N20), .B(n13), .Y(N37) );
  NOR2BX2M U7 ( .AN(N21), .B(n13), .Y(N38) );
  NOR2BX2M U8 ( .AN(N22), .B(n13), .Y(N39) );
  NOR2BX2M U9 ( .AN(N23), .B(n13), .Y(N40) );
  NOR2BX2M U10 ( .AN(N24), .B(n13), .Y(N41) );
  OAI211X2M U11 ( .A0(n9), .A1(n10), .B0(n11), .C0(n12), .Y(o_div_clk) );
  NAND2X2M U12 ( .A(out_p), .B(n10), .Y(n12) );
  AND2X2M U13 ( .A(N34), .B(n10), .Y(N43) );
  NAND2BX2M U14 ( .AN(N16), .B(n10), .Y(n13) );
  NOR2BX2M U15 ( .AN(N25), .B(n13), .Y(N42) );
  NOR2BX2M U16 ( .AN(N18), .B(n13), .Y(N35) );
  AOI21BX2M U17 ( .A0(n14), .A1(n15), .B0N(i_clk_en), .Y(n10) );
  NOR3X2M U18 ( .A(i_div_ratio[1]), .B(i_div_ratio[3]), .C(i_div_ratio[2]), 
        .Y(n14) );
  NOR4X1M U19 ( .A(i_div_ratio[7]), .B(i_div_ratio[6]), .C(i_div_ratio[5]), 
        .D(i_div_ratio[4]), .Y(n15) );
  OR2X2M U20 ( .A(i_div_ratio[1]), .B(i_div_ratio[0]), .Y(n1) );
  NAND3X2M U21 ( .A(i_div_ratio[0]), .B(n10), .C(out_n), .Y(n11) );
  INVX2M U22 ( .A(i_div_ratio[4]), .Y(n36) );
  INVX2M U23 ( .A(i_div_ratio[7]), .Y(n39) );
  INVX2M U24 ( .A(i_div_ratio[6]), .Y(n38) );
  INVX2M U25 ( .A(i_div_ratio[5]), .Y(n37) );
  INVX2M U26 ( .A(i_div_ratio[3]), .Y(n35) );
  INVX2M U27 ( .A(i_ref_clk), .Y(n9) );
  CLKINVX1M U28 ( .A(i_div_ratio[0]), .Y(N7) );
  OAI2BB1X1M U29 ( .A0N(i_div_ratio[0]), .A1N(i_div_ratio[1]), .B0(n1), .Y(N8)
         );
  OR2X1M U30 ( .A(n1), .B(i_div_ratio[2]), .Y(n2) );
  OAI2BB1X1M U31 ( .A0N(n1), .A1N(i_div_ratio[2]), .B0(n2), .Y(N9) );
  OR2X1M U32 ( .A(n2), .B(i_div_ratio[3]), .Y(n3) );
  OAI2BB1X1M U33 ( .A0N(n2), .A1N(i_div_ratio[3]), .B0(n3), .Y(N10) );
  OR2X1M U34 ( .A(n3), .B(i_div_ratio[4]), .Y(n4) );
  OAI2BB1X1M U35 ( .A0N(n3), .A1N(i_div_ratio[4]), .B0(n4), .Y(N11) );
  OR2X1M U36 ( .A(n4), .B(i_div_ratio[5]), .Y(n5) );
  OAI2BB1X1M U37 ( .A0N(n4), .A1N(i_div_ratio[5]), .B0(n5), .Y(N12) );
  OR2X1M U38 ( .A(n5), .B(i_div_ratio[6]), .Y(n6) );
  OAI2BB1X1M U39 ( .A0N(n5), .A1N(i_div_ratio[6]), .B0(n6), .Y(N13) );
  NOR2X1M U40 ( .A(n6), .B(i_div_ratio[7]), .Y(N15) );
  AO21XLM U41 ( .A0(n6), .A1(i_div_ratio[7]), .B0(N15), .Y(N14) );
  XNOR2X1M U42 ( .A(N13), .B(counter[6]), .Y(n18) );
  XNOR2X1M U43 ( .A(N12), .B(counter[5]), .Y(n17) );
  XNOR2X1M U44 ( .A(N11), .B(counter[4]), .Y(n16) );
  XNOR2X1M U45 ( .A(N10), .B(counter[3]), .Y(n8) );
  NAND4X1M U46 ( .A(n18), .B(n17), .C(n16), .D(n8), .Y(n26) );
  NOR2BX1M U47 ( .AN(N7), .B(counter[0]), .Y(n19) );
  OAI2B2X1M U48 ( .A1N(counter[1]), .A0(n19), .B0(N8), .B1(n19), .Y(n22) );
  NOR2BX1M U49 ( .AN(counter[0]), .B(N7), .Y(n20) );
  OAI2B2X1M U50 ( .A1N(N8), .A0(n20), .B0(counter[1]), .B1(n20), .Y(n21) );
  NAND3BX1M U51 ( .AN(N15), .B(n22), .C(n21), .Y(n25) );
  CLKXOR2X2M U52 ( .A(N14), .B(counter[7]), .Y(n24) );
  CLKXOR2X2M U53 ( .A(N9), .B(counter[2]), .Y(n23) );
  NOR4X1M U54 ( .A(n26), .B(n25), .C(n24), .D(n23), .Y(N16) );
  NAND2BX1M U55 ( .AN(counter[0]), .B(i_div_ratio[1]), .Y(n28) );
  AOI2BB1X1M U56 ( .A0N(n28), .A1N(counter[1]), .B0(i_div_ratio[2]), .Y(n27)
         );
  AOI221XLM U57 ( .A0(counter[2]), .A1(n35), .B0(counter[1]), .B1(n28), .C0(
        n27), .Y(n29) );
  AOI221XLM U58 ( .A0(i_div_ratio[4]), .A1(n41), .B0(i_div_ratio[3]), .B1(n40), 
        .C0(n29), .Y(n30) );
  AOI221XLM U59 ( .A0(counter[4]), .A1(n37), .B0(counter[3]), .B1(n36), .C0(
        n30), .Y(n31) );
  AOI221XLM U60 ( .A0(i_div_ratio[6]), .A1(n43), .B0(i_div_ratio[5]), .B1(n42), 
        .C0(n31), .Y(n32) );
  AOI221XLM U61 ( .A0(counter[6]), .A1(n39), .B0(counter[5]), .B1(n38), .C0(
        n32), .Y(n33) );
  AOI2B1X1M U62 ( .A1N(counter[6]), .A0(i_div_ratio[7]), .B0(n33), .Y(n34) );
  NOR2X1M U63 ( .A(counter[7]), .B(n34), .Y(N34) );
endmodule


module edge_bit_counter ( CLK, RST, enable, bit_cnt_clr, Prescale, edge_cnt, 
        bit_cnt );
  input [5:0] Prescale;
  output [5:0] edge_cnt;
  output [5:0] bit_cnt;
  input CLK, RST, enable, bit_cnt_clr;
  wire   N6, N7, N8, N9, N10, N11, N12, N13, N19, N20, N21, N22, N23, N24, N31,
         N32, N33, N34, N35, N36, n7, n8, n9, n10, n11, n12, n13, n14, n15,
         n16, n17, n18, n19, n20, n21, n22, n23, n1, n2, n3, n4, n5, n6, n24,
         n25, n26, n27, n28, n29, n30, n31, n32;
  wire   [5:2] add_37_carry;
  wire   [5:2] add_29_carry;

  DFFRQX2M bit_cnt_reg_0_ ( .D(n17), .CK(CLK), .RN(RST), .Q(bit_cnt[0]) );
  DFFRQX2M bit_cnt_reg_5_ ( .D(n12), .CK(CLK), .RN(RST), .Q(bit_cnt[5]) );
  DFFRQX2M bit_cnt_reg_3_ ( .D(n14), .CK(CLK), .RN(RST), .Q(bit_cnt[3]) );
  DFFRQX2M bit_cnt_reg_4_ ( .D(n13), .CK(CLK), .RN(RST), .Q(bit_cnt[4]) );
  DFFRQX2M bit_cnt_reg_1_ ( .D(n16), .CK(CLK), .RN(RST), .Q(bit_cnt[1]) );
  DFFRQX2M bit_cnt_reg_2_ ( .D(n15), .CK(CLK), .RN(RST), .Q(bit_cnt[2]) );
  DFFRQX2M edge_cnt_reg_5_ ( .D(n22), .CK(CLK), .RN(RST), .Q(edge_cnt[5]) );
  DFFRQX2M edge_cnt_reg_4_ ( .D(n21), .CK(CLK), .RN(RST), .Q(edge_cnt[4]) );
  DFFRQX2M edge_cnt_reg_3_ ( .D(n20), .CK(CLK), .RN(RST), .Q(edge_cnt[3]) );
  DFFRQX2M edge_cnt_reg_0_ ( .D(n23), .CK(CLK), .RN(RST), .Q(edge_cnt[0]) );
  DFFRQX2M edge_cnt_reg_2_ ( .D(n19), .CK(CLK), .RN(RST), .Q(edge_cnt[2]) );
  DFFRQX2M edge_cnt_reg_1_ ( .D(n18), .CK(CLK), .RN(RST), .Q(edge_cnt[1]) );
  NOR2X2M U3 ( .A(n9), .B(bit_cnt_clr), .Y(n8) );
  AND3X2M U4 ( .A(n32), .B(n9), .C(enable), .Y(n7) );
  AND3X2M U5 ( .A(n11), .B(n9), .C(enable), .Y(n10) );
  INVX2M U6 ( .A(n11), .Y(n31) );
  INVX2M U7 ( .A(bit_cnt_clr), .Y(n32) );
  NAND2X2M U8 ( .A(enable), .B(N13), .Y(n9) );
  NAND3BX2M U9 ( .AN(N13), .B(enable), .C(n32), .Y(n11) );
  AO22X1M U10 ( .A0(bit_cnt[5]), .A1(n7), .B0(N24), .B1(n8), .Y(n12) );
  AO22X1M U11 ( .A0(bit_cnt[4]), .A1(n7), .B0(N23), .B1(n8), .Y(n13) );
  AO22X1M U12 ( .A0(bit_cnt[3]), .A1(n7), .B0(N22), .B1(n8), .Y(n14) );
  AO22X1M U13 ( .A0(bit_cnt[2]), .A1(n7), .B0(N21), .B1(n8), .Y(n15) );
  AO22X1M U14 ( .A0(bit_cnt[1]), .A1(n7), .B0(N20), .B1(n8), .Y(n16) );
  AO22X1M U15 ( .A0(bit_cnt[0]), .A1(n7), .B0(N19), .B1(n8), .Y(n17) );
  AO22X1M U16 ( .A0(edge_cnt[4]), .A1(n10), .B0(N35), .B1(n31), .Y(n21) );
  AO22X1M U17 ( .A0(edge_cnt[3]), .A1(n10), .B0(N34), .B1(n31), .Y(n20) );
  AO22X1M U18 ( .A0(edge_cnt[2]), .A1(n10), .B0(N33), .B1(n31), .Y(n19) );
  AO22X1M U19 ( .A0(edge_cnt[1]), .A1(n10), .B0(N32), .B1(n31), .Y(n18) );
  AO22X1M U20 ( .A0(edge_cnt[5]), .A1(n10), .B0(N36), .B1(n31), .Y(n22) );
  AO22X1M U21 ( .A0(edge_cnt[0]), .A1(n10), .B0(N31), .B1(n31), .Y(n23) );
  ADDHX1M U22 ( .A(edge_cnt[1]), .B(edge_cnt[0]), .CO(add_37_carry[2]), .S(N32) );
  ADDHX1M U23 ( .A(edge_cnt[2]), .B(add_37_carry[2]), .CO(add_37_carry[3]), 
        .S(N33) );
  ADDHX1M U24 ( .A(bit_cnt[2]), .B(add_29_carry[2]), .CO(add_29_carry[3]), .S(
        N21) );
  ADDHX1M U25 ( .A(bit_cnt[1]), .B(bit_cnt[0]), .CO(add_29_carry[2]), .S(N20)
         );
  ADDHX1M U26 ( .A(edge_cnt[3]), .B(add_37_carry[3]), .CO(add_37_carry[4]), 
        .S(N34) );
  ADDHX1M U27 ( .A(bit_cnt[3]), .B(add_29_carry[3]), .CO(add_29_carry[4]), .S(
        N22) );
  ADDHX1M U28 ( .A(bit_cnt[4]), .B(add_29_carry[4]), .CO(add_29_carry[5]), .S(
        N23) );
  ADDHX1M U29 ( .A(edge_cnt[4]), .B(add_37_carry[4]), .CO(add_37_carry[5]), 
        .S(N35) );
  OR2X2M U30 ( .A(Prescale[1]), .B(Prescale[0]), .Y(n1) );
  CLKINVX1M U31 ( .A(Prescale[0]), .Y(N6) );
  OAI2BB1X1M U32 ( .A0N(Prescale[0]), .A1N(Prescale[1]), .B0(n1), .Y(N7) );
  OR2X1M U33 ( .A(n1), .B(Prescale[2]), .Y(n2) );
  OAI2BB1X1M U34 ( .A0N(n1), .A1N(Prescale[2]), .B0(n2), .Y(N8) );
  OR2X1M U35 ( .A(n2), .B(Prescale[3]), .Y(n3) );
  OAI2BB1X1M U36 ( .A0N(n2), .A1N(Prescale[3]), .B0(n3), .Y(N9) );
  OR2X1M U37 ( .A(n3), .B(Prescale[4]), .Y(n4) );
  OAI2BB1X1M U38 ( .A0N(n3), .A1N(Prescale[4]), .B0(n4), .Y(N10) );
  NOR2X1M U39 ( .A(n4), .B(Prescale[5]), .Y(N12) );
  AO21XLM U40 ( .A0(n4), .A1(Prescale[5]), .B0(N12), .Y(N11) );
  CLKINVX1M U41 ( .A(bit_cnt[0]), .Y(N19) );
  CLKXOR2X2M U42 ( .A(add_29_carry[5]), .B(bit_cnt[5]), .Y(N24) );
  CLKINVX1M U43 ( .A(edge_cnt[0]), .Y(N31) );
  CLKXOR2X2M U44 ( .A(add_37_carry[5]), .B(edge_cnt[5]), .Y(N36) );
  NOR2BX1M U45 ( .AN(N6), .B(edge_cnt[0]), .Y(n5) );
  OAI2B2X1M U46 ( .A1N(edge_cnt[1]), .A0(n5), .B0(N7), .B1(n5), .Y(n26) );
  XNOR2X1M U47 ( .A(N11), .B(edge_cnt[5]), .Y(n25) );
  NOR2BX1M U48 ( .AN(edge_cnt[0]), .B(N6), .Y(n6) );
  OAI2B2X1M U49 ( .A1N(N7), .A0(n6), .B0(edge_cnt[1]), .B1(n6), .Y(n24) );
  NAND4BX1M U50 ( .AN(N12), .B(n26), .C(n25), .D(n24), .Y(n30) );
  CLKXOR2X2M U51 ( .A(N10), .B(edge_cnt[4]), .Y(n29) );
  CLKXOR2X2M U52 ( .A(N8), .B(edge_cnt[2]), .Y(n28) );
  CLKXOR2X2M U53 ( .A(N9), .B(edge_cnt[3]), .Y(n27) );
  NOR4X1M U54 ( .A(n30), .B(n29), .C(n28), .D(n27), .Y(N13) );
endmodule


module data_sampling ( CLK, RST, RX_IN, Prescale, edge_cnt, dat_samp_en, 
        sampled_bit );
  input [5:0] Prescale;
  input [5:0] edge_cnt;
  input CLK, RST, RX_IN, dat_samp_en;
  output sampled_bit;
  wire   N6, N7, N8, N9, N12, N13, N14, N15, N16, N17, N23, N24, N25, N26, N27,
         n23, n24, n25, n26, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52;
  wire   [2:0] samples;
  wire   [4:2] add_28_carry;
  wire   [4:3] sub_23_carry;

  DFFRQX2M samples_reg_1_ ( .D(n25), .CK(CLK), .RN(RST), .Q(samples[1]) );
  DFFRQX2M samples_reg_0_ ( .D(n24), .CK(CLK), .RN(RST), .Q(samples[0]) );
  DFFRQX2M samples_reg_2_ ( .D(n26), .CK(CLK), .RN(RST), .Q(samples[2]) );
  DFFRQX2M sampled_bit_reg ( .D(n23), .CK(CLK), .RN(RST), .Q(sampled_bit) );
  NOR2X2M U3 ( .A(Prescale[5]), .B(sub_23_carry[4]), .Y(n1) );
  OR2X2M U4 ( .A(Prescale[2]), .B(Prescale[1]), .Y(n2) );
  ADDHX1M U5 ( .A(Prescale[2]), .B(Prescale[1]), .CO(add_28_carry[2]), .S(N23)
         );
  ADDHX1M U6 ( .A(Prescale[4]), .B(add_28_carry[3]), .CO(add_28_carry[4]), .S(
        N25) );
  ADDHX1M U7 ( .A(Prescale[3]), .B(add_28_carry[2]), .CO(add_28_carry[3]), .S(
        N24) );
  INVX2M U8 ( .A(Prescale[2]), .Y(N6) );
  ADDHX1M U9 ( .A(Prescale[5]), .B(add_28_carry[4]), .CO(N27), .S(N26) );
  XNOR2X1M U10 ( .A(sub_23_carry[4]), .B(Prescale[5]), .Y(N9) );
  OR2X1M U11 ( .A(Prescale[4]), .B(sub_23_carry[3]), .Y(sub_23_carry[4]) );
  XNOR2X1M U12 ( .A(sub_23_carry[3]), .B(Prescale[4]), .Y(N8) );
  OR2X1M U13 ( .A(Prescale[3]), .B(Prescale[2]), .Y(sub_23_carry[3]) );
  XNOR2X1M U14 ( .A(Prescale[2]), .B(Prescale[3]), .Y(N7) );
  CLKINVX1M U15 ( .A(Prescale[1]), .Y(N12) );
  OAI2BB1X1M U16 ( .A0N(Prescale[1]), .A1N(Prescale[2]), .B0(n2), .Y(N13) );
  OR2X1M U17 ( .A(n2), .B(Prescale[3]), .Y(n3) );
  OAI2BB1X1M U18 ( .A0N(n2), .A1N(Prescale[3]), .B0(n3), .Y(N14) );
  XNOR2X1M U19 ( .A(Prescale[4]), .B(n3), .Y(N15) );
  NOR3X1M U20 ( .A(Prescale[4]), .B(Prescale[5]), .C(n3), .Y(N17) );
  OAI21X1M U21 ( .A0(Prescale[4]), .A1(n3), .B0(Prescale[5]), .Y(n4) );
  NAND2BX1M U22 ( .AN(N17), .B(n4), .Y(N16) );
  CLKMX2X2M U23 ( .A(samples[2]), .B(RX_IN), .S0(n5), .Y(n26) );
  NOR4X1M U24 ( .A(n6), .B(n7), .C(n8), .D(n9), .Y(n5) );
  XNOR2X1M U25 ( .A(n10), .B(Prescale[1]), .Y(n9) );
  NAND3X1M U26 ( .A(n11), .B(n12), .C(n13), .Y(n7) );
  NAND4BBX1M U27 ( .AN(n14), .BN(n15), .C(n16), .D(n17), .Y(n13) );
  NAND4X1M U28 ( .A(n18), .B(n19), .C(n20), .D(n21), .Y(n6) );
  XNOR2X1M U29 ( .A(edge_cnt[1]), .B(Prescale[2]), .Y(n21) );
  XNOR2X1M U30 ( .A(edge_cnt[2]), .B(Prescale[3]), .Y(n20) );
  XNOR2X1M U31 ( .A(edge_cnt[3]), .B(Prescale[4]), .Y(n19) );
  XNOR2X1M U32 ( .A(edge_cnt[4]), .B(Prescale[5]), .Y(n18) );
  MXI2X1M U33 ( .A(n22), .B(n27), .S0(n28), .Y(n25) );
  NOR4BX1M U34 ( .AN(n11), .B(n29), .C(n14), .D(n15), .Y(n28) );
  CLKXOR2X2M U35 ( .A(edge_cnt[4]), .B(N16), .Y(n15) );
  CLKXOR2X2M U36 ( .A(edge_cnt[3]), .B(N15), .Y(n14) );
  NAND3X1M U37 ( .A(n16), .B(n17), .C(dat_samp_en), .Y(n29) );
  AND3X1M U38 ( .A(n30), .B(n31), .C(n32), .Y(n17) );
  XNOR2X1M U39 ( .A(edge_cnt[1]), .B(N13), .Y(n32) );
  XNOR2X1M U40 ( .A(edge_cnt[5]), .B(N17), .Y(n31) );
  XNOR2X1M U41 ( .A(edge_cnt[0]), .B(N12), .Y(n30) );
  XNOR2X1M U42 ( .A(edge_cnt[2]), .B(N14), .Y(n16) );
  MXI2X1M U43 ( .A(n33), .B(n27), .S0(n34), .Y(n24) );
  NOR2X1M U44 ( .A(n8), .B(n11), .Y(n34) );
  NAND4X1M U45 ( .A(n35), .B(n36), .C(n37), .D(n38), .Y(n11) );
  NOR3X1M U46 ( .A(n39), .B(n40), .C(n41), .Y(n38) );
  XNOR2X1M U47 ( .A(n42), .B(N9), .Y(n41) );
  XNOR2X1M U48 ( .A(n10), .B(Prescale[1]), .Y(n40) );
  CLKINVX1M U49 ( .A(edge_cnt[0]), .Y(n10) );
  XNOR2X1M U50 ( .A(n12), .B(n1), .Y(n39) );
  XNOR2X1M U51 ( .A(edge_cnt[2]), .B(N7), .Y(n37) );
  XNOR2X1M U52 ( .A(edge_cnt[3]), .B(N8), .Y(n36) );
  XNOR2X1M U53 ( .A(edge_cnt[1]), .B(N6), .Y(n35) );
  CLKINVX1M U54 ( .A(dat_samp_en), .Y(n8) );
  CLKINVX1M U55 ( .A(RX_IN), .Y(n27) );
  CLKMX2X2M U56 ( .A(sampled_bit), .B(n43), .S0(n44), .Y(n23) );
  NOR4X1M U57 ( .A(n45), .B(n46), .C(n47), .D(n48), .Y(n44) );
  CLKXOR2X2M U58 ( .A(edge_cnt[3]), .B(N25), .Y(n48) );
  XNOR2X1M U59 ( .A(n12), .B(N27), .Y(n47) );
  CLKINVX1M U60 ( .A(edge_cnt[5]), .Y(n12) );
  XNOR2X1M U61 ( .A(n42), .B(N26), .Y(n46) );
  CLKINVX1M U62 ( .A(edge_cnt[4]), .Y(n42) );
  NAND4X1M U63 ( .A(n49), .B(n50), .C(n51), .D(dat_samp_en), .Y(n45) );
  XNOR2X1M U64 ( .A(edge_cnt[0]), .B(N12), .Y(n51) );
  XNOR2X1M U65 ( .A(edge_cnt[1]), .B(N23), .Y(n50) );
  XNOR2X1M U66 ( .A(edge_cnt[2]), .B(N24), .Y(n49) );
  OAI21X1M U67 ( .A0(n22), .A1(n33), .B0(n52), .Y(n43) );
  OAI21X1M U68 ( .A0(samples[0]), .A1(samples[1]), .B0(samples[2]), .Y(n52) );
  CLKINVX1M U69 ( .A(samples[0]), .Y(n33) );
  CLKINVX1M U70 ( .A(samples[1]), .Y(n22) );
endmodule


module deserializer ( CLK, RST, sampled_bit, deser_en, edge_cnt, Prescale, 
        P_DATA );
  input [5:0] edge_cnt;
  input [5:0] Prescale;
  output [7:0] P_DATA;
  input CLK, RST, sampled_bit, deser_en;
  wire   N1, N2, N3, N4, N5, N6, N7, N8, n1, n10, n11, n12, n13, n14, n15, n16,
         n17, n2, n3, n4, n5, n6, n7, n8, n9, n18, n19, n20, n21, n22, n23,
         n24, n25, n26, n27, n28, n29, n30;

  DFFRQX2M P_DATA_reg_0_ ( .D(n10), .CK(CLK), .RN(RST), .Q(P_DATA[0]) );
  DFFRQX2M P_DATA_reg_5_ ( .D(n15), .CK(CLK), .RN(RST), .Q(P_DATA[5]) );
  DFFRQX2M P_DATA_reg_1_ ( .D(n11), .CK(CLK), .RN(RST), .Q(P_DATA[1]) );
  DFFRQX2M P_DATA_reg_4_ ( .D(n14), .CK(CLK), .RN(RST), .Q(P_DATA[4]) );
  DFFRQX2M P_DATA_reg_7_ ( .D(n17), .CK(CLK), .RN(RST), .Q(P_DATA[7]) );
  DFFRQX2M P_DATA_reg_3_ ( .D(n13), .CK(CLK), .RN(RST), .Q(P_DATA[3]) );
  DFFRQX2M P_DATA_reg_6_ ( .D(n16), .CK(CLK), .RN(RST), .Q(P_DATA[6]) );
  DFFRQX2M P_DATA_reg_2_ ( .D(n12), .CK(CLK), .RN(RST), .Q(P_DATA[2]) );
  OAI22X1M U3 ( .A0(n23), .A1(n30), .B0(n1), .B1(n29), .Y(n11) );
  OAI22X1M U4 ( .A0(n23), .A1(n29), .B0(n1), .B1(n28), .Y(n12) );
  OAI22X1M U5 ( .A0(n23), .A1(n28), .B0(n1), .B1(n27), .Y(n13) );
  OAI22X1M U6 ( .A0(n23), .A1(n27), .B0(n1), .B1(n26), .Y(n14) );
  OAI22X1M U7 ( .A0(n23), .A1(n26), .B0(n1), .B1(n25), .Y(n15) );
  OAI22X1M U8 ( .A0(n23), .A1(n25), .B0(n1), .B1(n24), .Y(n16) );
  INVX2M U9 ( .A(n1), .Y(n23) );
  NAND2X2M U10 ( .A(deser_en), .B(N8), .Y(n1) );
  OAI2BB2X1M U11 ( .B0(n1), .B1(n30), .A0N(P_DATA[0]), .A1N(n1), .Y(n10) );
  OAI2BB2X1M U12 ( .B0(n23), .B1(n24), .A0N(sampled_bit), .A1N(n23), .Y(n17)
         );
  INVX2M U13 ( .A(P_DATA[2]), .Y(n29) );
  INVX2M U14 ( .A(P_DATA[6]), .Y(n25) );
  INVX2M U15 ( .A(P_DATA[7]), .Y(n24) );
  INVX2M U16 ( .A(P_DATA[3]), .Y(n28) );
  INVX2M U17 ( .A(P_DATA[1]), .Y(n30) );
  INVX2M U18 ( .A(P_DATA[4]), .Y(n27) );
  INVX2M U19 ( .A(P_DATA[5]), .Y(n26) );
  OR2X2M U20 ( .A(Prescale[1]), .B(Prescale[0]), .Y(n2) );
  CLKINVX1M U21 ( .A(Prescale[0]), .Y(N1) );
  OAI2BB1X1M U22 ( .A0N(Prescale[0]), .A1N(Prescale[1]), .B0(n2), .Y(N2) );
  OR2X1M U23 ( .A(n2), .B(Prescale[2]), .Y(n3) );
  OAI2BB1X1M U24 ( .A0N(n2), .A1N(Prescale[2]), .B0(n3), .Y(N3) );
  OR2X1M U25 ( .A(n3), .B(Prescale[3]), .Y(n4) );
  OAI2BB1X1M U26 ( .A0N(n3), .A1N(Prescale[3]), .B0(n4), .Y(N4) );
  OR2X1M U27 ( .A(n4), .B(Prescale[4]), .Y(n5) );
  OAI2BB1X1M U28 ( .A0N(n4), .A1N(Prescale[4]), .B0(n5), .Y(N5) );
  NOR2X1M U29 ( .A(n5), .B(Prescale[5]), .Y(N7) );
  AO21XLM U30 ( .A0(n5), .A1(Prescale[5]), .B0(N7), .Y(N6) );
  NOR2BX1M U31 ( .AN(N1), .B(edge_cnt[0]), .Y(n6) );
  OAI2B2X1M U32 ( .A1N(edge_cnt[1]), .A0(n6), .B0(N2), .B1(n6), .Y(n18) );
  XNOR2X1M U33 ( .A(N6), .B(edge_cnt[5]), .Y(n9) );
  NOR2BX1M U34 ( .AN(edge_cnt[0]), .B(N1), .Y(n7) );
  OAI2B2X1M U35 ( .A1N(N2), .A0(n7), .B0(edge_cnt[1]), .B1(n7), .Y(n8) );
  NAND4BX1M U36 ( .AN(N7), .B(n18), .C(n9), .D(n8), .Y(n22) );
  CLKXOR2X2M U37 ( .A(N5), .B(edge_cnt[4]), .Y(n21) );
  CLKXOR2X2M U38 ( .A(N3), .B(edge_cnt[2]), .Y(n20) );
  CLKXOR2X2M U39 ( .A(N4), .B(edge_cnt[3]), .Y(n19) );
  NOR4X1M U40 ( .A(n22), .B(n21), .C(n20), .D(n19), .Y(N8) );
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


module UART_RX_FSM ( CLK, RST, RX_IN, PAR_EN, strt_glitch, par_err_in, 
        stp_err_in, bit_cnt, edge_cnt, Prescale, enable, bit_cnt_clr, 
        dat_samp_en, deser_en, strt_chk_en, par_chk_en, stp_chk_en, data_valid, 
        par_err, stp_err );
  input [5:0] bit_cnt;
  input [5:0] edge_cnt;
  input [5:0] Prescale;
  input CLK, RST, RX_IN, PAR_EN, strt_glitch, par_err_in, stp_err_in;
  output enable, bit_cnt_clr, dat_samp_en, deser_en, strt_chk_en, par_chk_en,
         stp_chk_en, data_valid, par_err, stp_err;
  wire   N32, N33, N34, N35, N36, N37, N38, N39, N97, N98, N99, N100, N101,
         N103, N111, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n1, n3, n4, n5,
         n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n45, n46, n47, n48, n49, n50, n51, n52;
  wire   [2:0] state;
  wire   [5:3] sub_95_carry;

  DFFRQX2M state_reg_1_ ( .D(n42), .CK(CLK), .RN(RST), .Q(state[1]) );
  DFFRQX2M state_reg_2_ ( .D(n43), .CK(CLK), .RN(RST), .Q(state[2]) );
  DFFRQX2M state_reg_0_ ( .D(n44), .CK(CLK), .RN(RST), .Q(state[0]) );
  DFFRQX2M stp_err_reg ( .D(n41), .CK(CLK), .RN(RST), .Q(stp_err) );
  DFFRQX2M par_err_reg ( .D(n47), .CK(CLK), .RN(RST), .Q(par_err) );
  DFFRQX2M data_valid_reg ( .D(N111), .CK(CLK), .RN(RST), .Q(data_valid) );
  NOR2X2M U3 ( .A(Prescale[5]), .B(sub_95_carry[5]), .Y(n1) );
  OAI21X2M U4 ( .A0(par_chk_en), .A1(n33), .B0(n52), .Y(n38) );
  OAI21BX1M U5 ( .A0(n30), .A1(n51), .B0N(n31), .Y(n42) );
  AOI211X2M U6 ( .A0(n52), .A1(n33), .B0(deser_en), .C0(par_chk_en), .Y(n30)
         );
  NAND2X2M U7 ( .A(N39), .B(par_chk_en), .Y(n24) );
  INVX2M U8 ( .A(N39), .Y(n52) );
  OAI2B2X1M U9 ( .A1N(deser_en), .A0(n32), .B0(n30), .B1(n50), .Y(n43) );
  NOR3X2M U10 ( .A(n51), .B(n49), .C(n50), .Y(par_chk_en) );
  OAI21X2M U11 ( .A0(n28), .A1(n49), .B0(n29), .Y(n25) );
  NOR2BX2M U12 ( .AN(n28), .B(n36), .Y(bit_cnt_clr) );
  NAND2BX2M U13 ( .AN(stp_chk_en), .B(n36), .Y(n33) );
  AOI22X1M U14 ( .A0(RX_IN), .A1(n49), .B0(n34), .B1(n35), .Y(n44) );
  AOI22X1M U15 ( .A0(n29), .A1(n49), .B0(state[0]), .B1(n37), .Y(n34) );
  AOI221XLM U16 ( .A0(stp_chk_en), .A1(N39), .B0(PAR_EN), .B1(deser_en), .C0(
        n31), .Y(n35) );
  OAI2BB1X2M U17 ( .A0N(n32), .A1N(deser_en), .B0(n38), .Y(n37) );
  NOR3X2M U18 ( .A(strt_glitch), .B(n52), .C(n36), .Y(n31) );
  OAI2B1X2M U19 ( .A1N(n29), .A0(RX_IN), .B0(n36), .Y(strt_chk_en) );
  NAND4BXLM U20 ( .AN(bit_cnt[0]), .B(N39), .C(bit_cnt[3]), .D(n39), .Y(n32)
         );
  NOR4X1M U21 ( .A(bit_cnt[5]), .B(bit_cnt[4]), .C(bit_cnt[2]), .D(bit_cnt[1]), 
        .Y(n39) );
  INVX2M U22 ( .A(n23), .Y(n47) );
  AOI32X1M U23 ( .A0(n24), .A1(n25), .A2(par_err), .B0(par_err_in), .B1(n48), 
        .Y(n23) );
  INVX2M U24 ( .A(n24), .Y(n48) );
  NOR3X2M U25 ( .A(n51), .B(state[0]), .C(n50), .Y(stp_chk_en) );
  NOR3X2M U26 ( .A(n49), .B(state[2]), .C(n51), .Y(deser_en) );
  NAND2X2M U27 ( .A(N103), .B(stp_chk_en), .Y(n26) );
  NOR2X2M U28 ( .A(state[1]), .B(state[2]), .Y(n29) );
  NOR3X2M U29 ( .A(n26), .B(stp_err_in), .C(par_err), .Y(N111) );
  NAND2X2M U30 ( .A(state[0]), .B(n29), .Y(n36) );
  OAI2B1X2M U31 ( .A1N(stp_err_in), .A0(n26), .B0(n27), .Y(n41) );
  NAND3X2M U32 ( .A(n25), .B(n26), .C(stp_err), .Y(n27) );
  INVX2M U33 ( .A(state[0]), .Y(n49) );
  INVX2M U34 ( .A(state[1]), .Y(n51) );
  INVX2M U35 ( .A(state[2]), .Y(n50) );
  NOR4X1M U36 ( .A(edge_cnt[2]), .B(edge_cnt[1]), .C(edge_cnt[0]), .D(n40), 
        .Y(n28) );
  OR3X2M U37 ( .A(edge_cnt[5]), .B(edge_cnt[4]), .C(edge_cnt[3]), .Y(n40) );
  OR2X2M U38 ( .A(Prescale[1]), .B(Prescale[0]), .Y(n3) );
  INVX2M U39 ( .A(Prescale[1]), .Y(N97) );
  BUFX2M U40 ( .A(dat_samp_en), .Y(enable) );
  OR4X1M U41 ( .A(deser_en), .B(stp_chk_en), .C(par_chk_en), .D(strt_chk_en), 
        .Y(dat_samp_en) );
  XNOR2X1M U42 ( .A(sub_95_carry[5]), .B(Prescale[5]), .Y(N101) );
  OR2X1M U43 ( .A(Prescale[4]), .B(sub_95_carry[4]), .Y(sub_95_carry[5]) );
  XNOR2X1M U44 ( .A(sub_95_carry[4]), .B(Prescale[4]), .Y(N100) );
  OR2X1M U45 ( .A(Prescale[3]), .B(sub_95_carry[3]), .Y(sub_95_carry[4]) );
  XNOR2X1M U46 ( .A(sub_95_carry[3]), .B(Prescale[3]), .Y(N99) );
  OR2X1M U47 ( .A(Prescale[2]), .B(Prescale[1]), .Y(sub_95_carry[3]) );
  XNOR2X1M U48 ( .A(Prescale[1]), .B(Prescale[2]), .Y(N98) );
  CLKINVX1M U49 ( .A(Prescale[0]), .Y(N32) );
  OAI2BB1X1M U50 ( .A0N(Prescale[0]), .A1N(Prescale[1]), .B0(n3), .Y(N33) );
  OR2X1M U51 ( .A(n3), .B(Prescale[2]), .Y(n4) );
  OAI2BB1X1M U52 ( .A0N(n3), .A1N(Prescale[2]), .B0(n4), .Y(N34) );
  OR2X1M U53 ( .A(n4), .B(Prescale[3]), .Y(n5) );
  OAI2BB1X1M U54 ( .A0N(n4), .A1N(Prescale[3]), .B0(n5), .Y(N35) );
  OR2X1M U55 ( .A(n5), .B(Prescale[4]), .Y(n6) );
  OAI2BB1X1M U56 ( .A0N(n5), .A1N(Prescale[4]), .B0(n6), .Y(N36) );
  NOR2X1M U57 ( .A(n6), .B(Prescale[5]), .Y(N38) );
  AO21XLM U58 ( .A0(n6), .A1(Prescale[5]), .B0(N38), .Y(N37) );
  NOR2BX1M U59 ( .AN(N32), .B(edge_cnt[0]), .Y(n7) );
  OAI2B2X1M U60 ( .A1N(edge_cnt[1]), .A0(n7), .B0(N33), .B1(n7), .Y(n11) );
  XNOR2X1M U61 ( .A(N37), .B(edge_cnt[5]), .Y(n10) );
  NOR2BX1M U62 ( .AN(edge_cnt[0]), .B(N32), .Y(n8) );
  OAI2B2X1M U63 ( .A1N(N33), .A0(n8), .B0(edge_cnt[1]), .B1(n8), .Y(n9) );
  NAND4BX1M U64 ( .AN(N38), .B(n11), .C(n10), .D(n9), .Y(n15) );
  CLKXOR2X2M U65 ( .A(N36), .B(edge_cnt[4]), .Y(n14) );
  CLKXOR2X2M U66 ( .A(N34), .B(edge_cnt[2]), .Y(n13) );
  CLKXOR2X2M U67 ( .A(N35), .B(edge_cnt[3]), .Y(n12) );
  NOR4X1M U68 ( .A(n15), .B(n14), .C(n13), .D(n12), .Y(N39) );
  NOR2BX1M U69 ( .AN(Prescale[0]), .B(edge_cnt[0]), .Y(n16) );
  OAI2B2X1M U70 ( .A1N(edge_cnt[1]), .A0(n16), .B0(N97), .B1(n16), .Y(n20) );
  XNOR2X1M U71 ( .A(N101), .B(edge_cnt[5]), .Y(n19) );
  NOR2BX1M U72 ( .AN(edge_cnt[0]), .B(Prescale[0]), .Y(n17) );
  OAI2B2X1M U73 ( .A1N(N97), .A0(n17), .B0(edge_cnt[1]), .B1(n17), .Y(n18) );
  NAND4BX1M U74 ( .AN(n1), .B(n20), .C(n19), .D(n18), .Y(n46) );
  CLKXOR2X2M U75 ( .A(N100), .B(edge_cnt[4]), .Y(n45) );
  CLKXOR2X2M U76 ( .A(N98), .B(edge_cnt[2]), .Y(n22) );
  CLKXOR2X2M U77 ( .A(N99), .B(edge_cnt[3]), .Y(n21) );
  NOR4X1M U78 ( .A(n46), .B(n45), .C(n22), .D(n21), .Y(N103) );
endmodule


module UART_RX ( CLK, RST, PAR_TYP, PAR_EN, Prescale, RX_IN, P_DATA, 
        Data_valid, Parity_Error, Stop_Error );
  input [5:0] Prescale;
  output [7:0] P_DATA;
  input CLK, RST, PAR_TYP, PAR_EN, RX_IN;
  output Data_valid, Parity_Error, Stop_Error;
  wire   enable, bit_cnt_clr, dat_samp_en, sampled_bit, deser_en, strt_chk_en,
         strt_glitch, par_chk_en, par_err_comb, stp_chk_en, stp_err_comb, n1,
         n2;
  wire   [5:0] edge_cnt;
  wire   [5:0] bit_cnt;

  edge_bit_counter U_edge_bit_counter ( .CLK(CLK), .RST(n1), .enable(enable), 
        .bit_cnt_clr(bit_cnt_clr), .Prescale(Prescale), .edge_cnt(edge_cnt), 
        .bit_cnt(bit_cnt) );
  data_sampling U_data_sampling ( .CLK(CLK), .RST(n1), .RX_IN(RX_IN), 
        .Prescale(Prescale), .edge_cnt(edge_cnt), .dat_samp_en(dat_samp_en), 
        .sampled_bit(sampled_bit) );
  deserializer U_deserializer ( .CLK(CLK), .RST(n1), .sampled_bit(sampled_bit), 
        .deser_en(deser_en), .edge_cnt(edge_cnt), .Prescale(Prescale), 
        .P_DATA(P_DATA) );
  strt_check U_strt_check ( .strt_chk_en(strt_chk_en), .sampled_bit(
        sampled_bit), .strt_glitch(strt_glitch) );
  parity_check U_parity_Check ( .par_chk_en(par_chk_en), .sampled_bit(
        sampled_bit), .PAR_TYP(PAR_TYP), .P_DATA(P_DATA), .par_err(
        par_err_comb) );
  stop_check U_stop_check ( .stp_chk_en(stp_chk_en), .sampled_bit(sampled_bit), 
        .stp_err(stp_err_comb) );
  UART_RX_FSM U_FSM ( .CLK(CLK), .RST(n1), .RX_IN(RX_IN), .PAR_EN(PAR_EN), 
        .strt_glitch(strt_glitch), .par_err_in(par_err_comb), .stp_err_in(
        stp_err_comb), .bit_cnt(bit_cnt), .edge_cnt(edge_cnt), .Prescale(
        Prescale), .enable(enable), .bit_cnt_clr(bit_cnt_clr), .dat_samp_en(
        dat_samp_en), .deser_en(deser_en), .strt_chk_en(strt_chk_en), 
        .par_chk_en(par_chk_en), .stp_chk_en(stp_chk_en), .data_valid(
        Data_valid), .par_err(Parity_Error), .stp_err(Stop_Error) );
  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(RST), .Y(n2) );
endmodule


module DATA_SYNC ( unsync_bus, bus_enable, CLK, RST, sync_bus, enable_pulse );
  input [7:0] unsync_bus;
  output [7:0] sync_bus;
  input bus_enable, CLK, RST;
  output enable_pulse;
  wire   pulse_gen_ff, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10;
  wire   [1:0] sync_regs;

  DFFRQX2M pulse_gen_ff_reg ( .D(sync_regs[1]), .CK(CLK), .RN(RST), .Q(
        pulse_gen_ff) );
  DFFRQX2M sync_regs_reg_1_ ( .D(sync_regs[0]), .CK(CLK), .RN(RST), .Q(
        sync_regs[1]) );
  DFFRQX2M sync_bus_reg_4_ ( .D(n6), .CK(CLK), .RN(RST), .Q(sync_bus[4]) );
  DFFRQX2M sync_bus_reg_6_ ( .D(n8), .CK(CLK), .RN(RST), .Q(sync_bus[6]) );
  DFFRQX2M sync_bus_reg_5_ ( .D(n7), .CK(CLK), .RN(RST), .Q(sync_bus[5]) );
  DFFRQX2M sync_bus_reg_7_ ( .D(n9), .CK(CLK), .RN(RST), .Q(sync_bus[7]) );
  DFFRQX2M sync_bus_reg_3_ ( .D(n5), .CK(CLK), .RN(RST), .Q(sync_bus[3]) );
  DFFRQX2M sync_bus_reg_2_ ( .D(n4), .CK(CLK), .RN(RST), .Q(sync_bus[2]) );
  DFFRQX2M sync_bus_reg_1_ ( .D(n3), .CK(CLK), .RN(RST), .Q(sync_bus[1]) );
  DFFRQX2M sync_bus_reg_0_ ( .D(n2), .CK(CLK), .RN(RST), .Q(sync_bus[0]) );
  DFFRQX2M enable_pulse_reg ( .D(n10), .CK(CLK), .RN(RST), .Q(enable_pulse) );
  DFFRQX2M sync_regs_reg_0_ ( .D(bus_enable), .CK(CLK), .RN(RST), .Q(
        sync_regs[0]) );
  INVX2M U3 ( .A(n1), .Y(n10) );
  NAND2BX2M U4 ( .AN(pulse_gen_ff), .B(sync_regs[1]), .Y(n1) );
  AO22X1M U5 ( .A0(unsync_bus[0]), .A1(n10), .B0(sync_bus[0]), .B1(n1), .Y(n2)
         );
  AO22X1M U6 ( .A0(unsync_bus[1]), .A1(n10), .B0(sync_bus[1]), .B1(n1), .Y(n3)
         );
  AO22X1M U7 ( .A0(unsync_bus[2]), .A1(n10), .B0(sync_bus[2]), .B1(n1), .Y(n4)
         );
  AO22X1M U8 ( .A0(unsync_bus[3]), .A1(n10), .B0(sync_bus[3]), .B1(n1), .Y(n5)
         );
  AO22X1M U9 ( .A0(unsync_bus[4]), .A1(n10), .B0(sync_bus[4]), .B1(n1), .Y(n6)
         );
  AO22X1M U10 ( .A0(unsync_bus[5]), .A1(n10), .B0(sync_bus[5]), .B1(n1), .Y(n7) );
  AO22X1M U11 ( .A0(unsync_bus[6]), .A1(n10), .B0(sync_bus[6]), .B1(n1), .Y(n8) );
  AO22X1M U12 ( .A0(unsync_bus[7]), .A1(n10), .B0(sync_bus[7]), .B1(n1), .Y(n9) );
endmodule


module FIFO_MEM_CNTRL ( wclk, wclken, waddr, raddr, wdata, rdata );
  input [2:0] waddr;
  input [2:0] raddr;
  input [7:0] wdata;
  output [7:0] rdata;
  input wclk, wclken;
  wire   n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66,
         n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80,
         n81, n82, n83, n84, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127;
  wire   [63:0] mem;

  DFFQX2M mem_reg_0__7_ ( .D(n84), .CK(wclk), .Q(mem[63]) );
  DFFQX2M mem_reg_0__6_ ( .D(n83), .CK(wclk), .Q(mem[62]) );
  DFFQX2M mem_reg_0__5_ ( .D(n82), .CK(wclk), .Q(mem[61]) );
  DFFQX2M mem_reg_0__4_ ( .D(n81), .CK(wclk), .Q(mem[60]) );
  DFFQX2M mem_reg_0__3_ ( .D(n80), .CK(wclk), .Q(mem[59]) );
  DFFQX2M mem_reg_0__2_ ( .D(n79), .CK(wclk), .Q(mem[58]) );
  DFFQX2M mem_reg_0__1_ ( .D(n78), .CK(wclk), .Q(mem[57]) );
  DFFQX2M mem_reg_0__0_ ( .D(n77), .CK(wclk), .Q(mem[56]) );
  DFFQX2M mem_reg_1__7_ ( .D(n76), .CK(wclk), .Q(mem[55]) );
  DFFQX2M mem_reg_1__6_ ( .D(n75), .CK(wclk), .Q(mem[54]) );
  DFFQX2M mem_reg_1__5_ ( .D(n74), .CK(wclk), .Q(mem[53]) );
  DFFQX2M mem_reg_1__4_ ( .D(n73), .CK(wclk), .Q(mem[52]) );
  DFFQX2M mem_reg_1__3_ ( .D(n72), .CK(wclk), .Q(mem[51]) );
  DFFQX2M mem_reg_1__2_ ( .D(n71), .CK(wclk), .Q(mem[50]) );
  DFFQX2M mem_reg_1__1_ ( .D(n70), .CK(wclk), .Q(mem[49]) );
  DFFQX2M mem_reg_1__0_ ( .D(n69), .CK(wclk), .Q(mem[48]) );
  DFFQX2M mem_reg_4__7_ ( .D(n52), .CK(wclk), .Q(mem[31]) );
  DFFQX2M mem_reg_4__6_ ( .D(n51), .CK(wclk), .Q(mem[30]) );
  DFFQX2M mem_reg_4__5_ ( .D(n50), .CK(wclk), .Q(mem[29]) );
  DFFQX2M mem_reg_4__4_ ( .D(n49), .CK(wclk), .Q(mem[28]) );
  DFFQX2M mem_reg_4__3_ ( .D(n48), .CK(wclk), .Q(mem[27]) );
  DFFQX2M mem_reg_4__2_ ( .D(n47), .CK(wclk), .Q(mem[26]) );
  DFFQX2M mem_reg_4__1_ ( .D(n46), .CK(wclk), .Q(mem[25]) );
  DFFQX2M mem_reg_4__0_ ( .D(n45), .CK(wclk), .Q(mem[24]) );
  DFFQX2M mem_reg_5__7_ ( .D(n44), .CK(wclk), .Q(mem[23]) );
  DFFQX2M mem_reg_5__6_ ( .D(n43), .CK(wclk), .Q(mem[22]) );
  DFFQX2M mem_reg_5__5_ ( .D(n42), .CK(wclk), .Q(mem[21]) );
  DFFQX2M mem_reg_5__4_ ( .D(n41), .CK(wclk), .Q(mem[20]) );
  DFFQX2M mem_reg_5__3_ ( .D(n40), .CK(wclk), .Q(mem[19]) );
  DFFQX2M mem_reg_5__2_ ( .D(n39), .CK(wclk), .Q(mem[18]) );
  DFFQX2M mem_reg_5__1_ ( .D(n38), .CK(wclk), .Q(mem[17]) );
  DFFQX2M mem_reg_5__0_ ( .D(n37), .CK(wclk), .Q(mem[16]) );
  DFFQX2M mem_reg_6__7_ ( .D(n36), .CK(wclk), .Q(mem[15]) );
  DFFQX2M mem_reg_6__6_ ( .D(n35), .CK(wclk), .Q(mem[14]) );
  DFFQX2M mem_reg_6__5_ ( .D(n34), .CK(wclk), .Q(mem[13]) );
  DFFQX2M mem_reg_6__4_ ( .D(n33), .CK(wclk), .Q(mem[12]) );
  DFFQX2M mem_reg_6__3_ ( .D(n32), .CK(wclk), .Q(mem[11]) );
  DFFQX2M mem_reg_6__2_ ( .D(n31), .CK(wclk), .Q(mem[10]) );
  DFFQX2M mem_reg_6__1_ ( .D(n30), .CK(wclk), .Q(mem[9]) );
  DFFQX2M mem_reg_6__0_ ( .D(n29), .CK(wclk), .Q(mem[8]) );
  DFFQX2M mem_reg_7__7_ ( .D(n28), .CK(wclk), .Q(mem[7]) );
  DFFQX2M mem_reg_7__6_ ( .D(n27), .CK(wclk), .Q(mem[6]) );
  DFFQX2M mem_reg_7__5_ ( .D(n26), .CK(wclk), .Q(mem[5]) );
  DFFQX2M mem_reg_7__4_ ( .D(n25), .CK(wclk), .Q(mem[4]) );
  DFFQX2M mem_reg_7__3_ ( .D(n24), .CK(wclk), .Q(mem[3]) );
  DFFQX2M mem_reg_7__2_ ( .D(n23), .CK(wclk), .Q(mem[2]) );
  DFFQX2M mem_reg_7__1_ ( .D(n22), .CK(wclk), .Q(mem[1]) );
  DFFQX2M mem_reg_7__0_ ( .D(n21), .CK(wclk), .Q(mem[0]) );
  DFFQX2M mem_reg_2__7_ ( .D(n68), .CK(wclk), .Q(mem[47]) );
  DFFQX2M mem_reg_2__6_ ( .D(n67), .CK(wclk), .Q(mem[46]) );
  DFFQX2M mem_reg_2__5_ ( .D(n66), .CK(wclk), .Q(mem[45]) );
  DFFQX2M mem_reg_2__4_ ( .D(n65), .CK(wclk), .Q(mem[44]) );
  DFFQX2M mem_reg_2__3_ ( .D(n64), .CK(wclk), .Q(mem[43]) );
  DFFQX2M mem_reg_2__2_ ( .D(n63), .CK(wclk), .Q(mem[42]) );
  DFFQX2M mem_reg_2__1_ ( .D(n62), .CK(wclk), .Q(mem[41]) );
  DFFQX2M mem_reg_2__0_ ( .D(n61), .CK(wclk), .Q(mem[40]) );
  DFFQX2M mem_reg_3__7_ ( .D(n60), .CK(wclk), .Q(mem[39]) );
  DFFQX2M mem_reg_3__6_ ( .D(n59), .CK(wclk), .Q(mem[38]) );
  DFFQX2M mem_reg_3__5_ ( .D(n58), .CK(wclk), .Q(mem[37]) );
  DFFQX2M mem_reg_3__4_ ( .D(n57), .CK(wclk), .Q(mem[36]) );
  DFFQX2M mem_reg_3__3_ ( .D(n56), .CK(wclk), .Q(mem[35]) );
  DFFQX2M mem_reg_3__2_ ( .D(n55), .CK(wclk), .Q(mem[34]) );
  DFFQX2M mem_reg_3__1_ ( .D(n54), .CK(wclk), .Q(mem[33]) );
  DFFQX2M mem_reg_3__0_ ( .D(n53), .CK(wclk), .Q(mem[32]) );
  BUFX2M U2 ( .A(n16), .Y(n116) );
  BUFX2M U3 ( .A(n18), .Y(n115) );
  BUFX2M U4 ( .A(n19), .Y(n114) );
  BUFX2M U5 ( .A(n13), .Y(n117) );
  NAND3X2M U6 ( .A(n118), .B(n127), .C(n12), .Y(n15) );
  NAND3X2M U7 ( .A(n118), .B(n127), .C(n17), .Y(n20) );
  NOR2X2M U8 ( .A(n111), .B(n112), .Y(n107) );
  NAND3X2M U9 ( .A(n12), .B(n127), .C(waddr[0]), .Y(n14) );
  NAND3X2M U10 ( .A(waddr[0]), .B(n12), .C(waddr[1]), .Y(n11) );
  NOR2BX2M U11 ( .AN(wclken), .B(waddr[2]), .Y(n17) );
  INVX2M U12 ( .A(wdata[0]), .Y(n119) );
  INVX2M U13 ( .A(wdata[1]), .Y(n120) );
  INVX2M U14 ( .A(wdata[2]), .Y(n121) );
  INVX2M U15 ( .A(wdata[3]), .Y(n122) );
  INVX2M U16 ( .A(wdata[4]), .Y(n123) );
  INVX2M U17 ( .A(wdata[5]), .Y(n124) );
  INVX2M U18 ( .A(wdata[6]), .Y(n125) );
  INVX2M U19 ( .A(wdata[7]), .Y(n126) );
  OAI2BB2X1M U20 ( .B0(n11), .B1(n119), .A0N(mem[0]), .A1N(n11), .Y(n21) );
  OAI2BB2X1M U21 ( .B0(n11), .B1(n120), .A0N(mem[1]), .A1N(n11), .Y(n22) );
  OAI2BB2X1M U22 ( .B0(n11), .B1(n121), .A0N(mem[2]), .A1N(n11), .Y(n23) );
  OAI2BB2X1M U23 ( .B0(n11), .B1(n122), .A0N(mem[3]), .A1N(n11), .Y(n24) );
  OAI2BB2X1M U24 ( .B0(n11), .B1(n123), .A0N(mem[4]), .A1N(n11), .Y(n25) );
  OAI2BB2X1M U25 ( .B0(n11), .B1(n124), .A0N(mem[5]), .A1N(n11), .Y(n26) );
  OAI2BB2X1M U26 ( .B0(n11), .B1(n125), .A0N(mem[6]), .A1N(n11), .Y(n27) );
  OAI2BB2X1M U27 ( .B0(n11), .B1(n126), .A0N(mem[7]), .A1N(n11), .Y(n28) );
  OAI2BB2X1M U28 ( .B0(n119), .B1(n14), .A0N(mem[16]), .A1N(n14), .Y(n37) );
  OAI2BB2X1M U29 ( .B0(n120), .B1(n14), .A0N(mem[17]), .A1N(n14), .Y(n38) );
  OAI2BB2X1M U30 ( .B0(n121), .B1(n14), .A0N(mem[18]), .A1N(n14), .Y(n39) );
  OAI2BB2X1M U31 ( .B0(n122), .B1(n14), .A0N(mem[19]), .A1N(n14), .Y(n40) );
  OAI2BB2X1M U32 ( .B0(n123), .B1(n14), .A0N(mem[20]), .A1N(n14), .Y(n41) );
  OAI2BB2X1M U33 ( .B0(n124), .B1(n14), .A0N(mem[21]), .A1N(n14), .Y(n42) );
  OAI2BB2X1M U34 ( .B0(n125), .B1(n14), .A0N(mem[22]), .A1N(n14), .Y(n43) );
  OAI2BB2X1M U35 ( .B0(n126), .B1(n14), .A0N(mem[23]), .A1N(n14), .Y(n44) );
  OAI2BB2X1M U36 ( .B0(n119), .B1(n20), .A0N(mem[56]), .A1N(n20), .Y(n77) );
  OAI2BB2X1M U37 ( .B0(n120), .B1(n20), .A0N(mem[57]), .A1N(n20), .Y(n78) );
  OAI2BB2X1M U38 ( .B0(n121), .B1(n20), .A0N(mem[58]), .A1N(n20), .Y(n79) );
  OAI2BB2X1M U39 ( .B0(n122), .B1(n20), .A0N(mem[59]), .A1N(n20), .Y(n80) );
  OAI2BB2X1M U40 ( .B0(n123), .B1(n20), .A0N(mem[60]), .A1N(n20), .Y(n81) );
  OAI2BB2X1M U41 ( .B0(n124), .B1(n20), .A0N(mem[61]), .A1N(n20), .Y(n82) );
  OAI2BB2X1M U42 ( .B0(n125), .B1(n20), .A0N(mem[62]), .A1N(n20), .Y(n83) );
  OAI2BB2X1M U43 ( .B0(n126), .B1(n20), .A0N(mem[63]), .A1N(n20), .Y(n84) );
  OAI2BB2X1M U44 ( .B0(n119), .B1(n15), .A0N(mem[24]), .A1N(n15), .Y(n45) );
  OAI2BB2X1M U45 ( .B0(n120), .B1(n15), .A0N(mem[25]), .A1N(n15), .Y(n46) );
  OAI2BB2X1M U46 ( .B0(n121), .B1(n15), .A0N(mem[26]), .A1N(n15), .Y(n47) );
  OAI2BB2X1M U47 ( .B0(n122), .B1(n15), .A0N(mem[27]), .A1N(n15), .Y(n48) );
  OAI2BB2X1M U48 ( .B0(n123), .B1(n15), .A0N(mem[28]), .A1N(n15), .Y(n49) );
  OAI2BB2X1M U49 ( .B0(n124), .B1(n15), .A0N(mem[29]), .A1N(n15), .Y(n50) );
  OAI2BB2X1M U50 ( .B0(n125), .B1(n15), .A0N(mem[30]), .A1N(n15), .Y(n51) );
  OAI2BB2X1M U51 ( .B0(n126), .B1(n15), .A0N(mem[31]), .A1N(n15), .Y(n52) );
  OAI2BB2X1M U52 ( .B0(n119), .B1(n117), .A0N(mem[8]), .A1N(n117), .Y(n29) );
  OAI2BB2X1M U53 ( .B0(n120), .B1(n117), .A0N(mem[9]), .A1N(n117), .Y(n30) );
  OAI2BB2X1M U54 ( .B0(n121), .B1(n117), .A0N(mem[10]), .A1N(n117), .Y(n31) );
  OAI2BB2X1M U55 ( .B0(n122), .B1(n117), .A0N(mem[11]), .A1N(n117), .Y(n32) );
  OAI2BB2X1M U56 ( .B0(n123), .B1(n117), .A0N(mem[12]), .A1N(n117), .Y(n33) );
  OAI2BB2X1M U57 ( .B0(n124), .B1(n117), .A0N(mem[13]), .A1N(n117), .Y(n34) );
  OAI2BB2X1M U58 ( .B0(n125), .B1(n117), .A0N(mem[14]), .A1N(n117), .Y(n35) );
  OAI2BB2X1M U59 ( .B0(n126), .B1(n117), .A0N(mem[15]), .A1N(n117), .Y(n36) );
  OAI2BB2X1M U60 ( .B0(n119), .B1(n116), .A0N(mem[32]), .A1N(n116), .Y(n53) );
  OAI2BB2X1M U61 ( .B0(n120), .B1(n116), .A0N(mem[33]), .A1N(n116), .Y(n54) );
  OAI2BB2X1M U62 ( .B0(n121), .B1(n116), .A0N(mem[34]), .A1N(n116), .Y(n55) );
  OAI2BB2X1M U63 ( .B0(n122), .B1(n116), .A0N(mem[35]), .A1N(n116), .Y(n56) );
  OAI2BB2X1M U64 ( .B0(n123), .B1(n116), .A0N(mem[36]), .A1N(n116), .Y(n57) );
  OAI2BB2X1M U65 ( .B0(n124), .B1(n116), .A0N(mem[37]), .A1N(n116), .Y(n58) );
  OAI2BB2X1M U66 ( .B0(n125), .B1(n116), .A0N(mem[38]), .A1N(n116), .Y(n59) );
  OAI2BB2X1M U67 ( .B0(n126), .B1(n116), .A0N(mem[39]), .A1N(n116), .Y(n60) );
  OAI2BB2X1M U68 ( .B0(n119), .B1(n115), .A0N(mem[40]), .A1N(n115), .Y(n61) );
  OAI2BB2X1M U69 ( .B0(n120), .B1(n115), .A0N(mem[41]), .A1N(n115), .Y(n62) );
  OAI2BB2X1M U70 ( .B0(n121), .B1(n115), .A0N(mem[42]), .A1N(n115), .Y(n63) );
  OAI2BB2X1M U71 ( .B0(n122), .B1(n115), .A0N(mem[43]), .A1N(n115), .Y(n64) );
  OAI2BB2X1M U72 ( .B0(n123), .B1(n115), .A0N(mem[44]), .A1N(n115), .Y(n65) );
  OAI2BB2X1M U73 ( .B0(n124), .B1(n115), .A0N(mem[45]), .A1N(n115), .Y(n66) );
  OAI2BB2X1M U74 ( .B0(n125), .B1(n115), .A0N(mem[46]), .A1N(n115), .Y(n67) );
  OAI2BB2X1M U75 ( .B0(n126), .B1(n115), .A0N(mem[47]), .A1N(n115), .Y(n68) );
  OAI2BB2X1M U76 ( .B0(n119), .B1(n114), .A0N(mem[48]), .A1N(n114), .Y(n69) );
  OAI2BB2X1M U77 ( .B0(n120), .B1(n114), .A0N(mem[49]), .A1N(n114), .Y(n70) );
  OAI2BB2X1M U78 ( .B0(n121), .B1(n114), .A0N(mem[50]), .A1N(n114), .Y(n71) );
  OAI2BB2X1M U79 ( .B0(n122), .B1(n114), .A0N(mem[51]), .A1N(n114), .Y(n72) );
  OAI2BB2X1M U80 ( .B0(n123), .B1(n114), .A0N(mem[52]), .A1N(n114), .Y(n73) );
  OAI2BB2X1M U81 ( .B0(n124), .B1(n114), .A0N(mem[53]), .A1N(n114), .Y(n74) );
  OAI2BB2X1M U82 ( .B0(n125), .B1(n114), .A0N(mem[54]), .A1N(n114), .Y(n75) );
  OAI2BB2X1M U83 ( .B0(n126), .B1(n114), .A0N(mem[55]), .A1N(n114), .Y(n76) );
  AND2X2M U84 ( .A(wclken), .B(waddr[2]), .Y(n12) );
  NAND3X2M U85 ( .A(n12), .B(n118), .C(waddr[1]), .Y(n13) );
  NAND3X2M U86 ( .A(waddr[1]), .B(waddr[0]), .C(n17), .Y(n16) );
  NAND3X2M U87 ( .A(waddr[1]), .B(n118), .C(n17), .Y(n18) );
  NAND3X2M U88 ( .A(waddr[0]), .B(n127), .C(n17), .Y(n19) );
  INVX2M U89 ( .A(waddr[1]), .Y(n127) );
  INVX2M U90 ( .A(waddr[0]), .Y(n118) );
  NOR2X2M U91 ( .A(n111), .B(raddr[1]), .Y(n108) );
  NOR2X2M U92 ( .A(n112), .B(raddr[2]), .Y(n105) );
  NOR2X2M U93 ( .A(raddr[1]), .B(raddr[2]), .Y(n104) );
  INVX2M U94 ( .A(raddr[1]), .Y(n112) );
  INVX2M U95 ( .A(raddr[2]), .Y(n111) );
  INVX2M U96 ( .A(raddr[0]), .Y(n113) );
  AO22X1M U97 ( .A0(mem[32]), .A1(n105), .B0(mem[48]), .B1(n104), .Y(n1) );
  AOI221XLM U98 ( .A0(mem[16]), .A1(n108), .B0(mem[0]), .B1(n107), .C0(n1), 
        .Y(n4) );
  AO22X1M U99 ( .A0(mem[40]), .A1(n105), .B0(mem[56]), .B1(n104), .Y(n2) );
  AOI221XLM U100 ( .A0(mem[24]), .A1(n108), .B0(mem[8]), .B1(n107), .C0(n2), 
        .Y(n3) );
  OAI22X1M U101 ( .A0(n113), .A1(n4), .B0(raddr[0]), .B1(n3), .Y(rdata[0]) );
  AO22X1M U102 ( .A0(mem[33]), .A1(n105), .B0(mem[49]), .B1(n104), .Y(n5) );
  AOI221XLM U103 ( .A0(mem[17]), .A1(n108), .B0(mem[1]), .B1(n107), .C0(n5), 
        .Y(n8) );
  AO22X1M U104 ( .A0(mem[41]), .A1(n105), .B0(mem[57]), .B1(n104), .Y(n6) );
  AOI221XLM U105 ( .A0(mem[25]), .A1(n108), .B0(mem[9]), .B1(n107), .C0(n6), 
        .Y(n7) );
  OAI22X1M U106 ( .A0(n113), .A1(n8), .B0(raddr[0]), .B1(n7), .Y(rdata[1]) );
  AO22X1M U107 ( .A0(mem[34]), .A1(n105), .B0(mem[50]), .B1(n104), .Y(n9) );
  AOI221XLM U108 ( .A0(mem[18]), .A1(n108), .B0(mem[2]), .B1(n107), .C0(n9), 
        .Y(n86) );
  AO22X1M U109 ( .A0(mem[42]), .A1(n105), .B0(mem[58]), .B1(n104), .Y(n10) );
  AOI221XLM U110 ( .A0(mem[26]), .A1(n108), .B0(mem[10]), .B1(n107), .C0(n10), 
        .Y(n85) );
  OAI22X1M U111 ( .A0(n113), .A1(n86), .B0(raddr[0]), .B1(n85), .Y(rdata[2])
         );
  AO22X1M U112 ( .A0(mem[35]), .A1(n105), .B0(mem[51]), .B1(n104), .Y(n87) );
  AOI221XLM U113 ( .A0(mem[19]), .A1(n108), .B0(mem[3]), .B1(n107), .C0(n87), 
        .Y(n90) );
  AO22X1M U114 ( .A0(mem[43]), .A1(n105), .B0(mem[59]), .B1(n104), .Y(n88) );
  AOI221XLM U115 ( .A0(mem[27]), .A1(n108), .B0(mem[11]), .B1(n107), .C0(n88), 
        .Y(n89) );
  OAI22X1M U116 ( .A0(n113), .A1(n90), .B0(raddr[0]), .B1(n89), .Y(rdata[3])
         );
  AO22X1M U117 ( .A0(mem[36]), .A1(n105), .B0(mem[52]), .B1(n104), .Y(n91) );
  AOI221XLM U118 ( .A0(mem[20]), .A1(n108), .B0(mem[4]), .B1(n107), .C0(n91), 
        .Y(n94) );
  AO22X1M U119 ( .A0(mem[44]), .A1(n105), .B0(mem[60]), .B1(n104), .Y(n92) );
  AOI221XLM U120 ( .A0(mem[28]), .A1(n108), .B0(mem[12]), .B1(n107), .C0(n92), 
        .Y(n93) );
  OAI22X1M U121 ( .A0(n113), .A1(n94), .B0(raddr[0]), .B1(n93), .Y(rdata[4])
         );
  AO22X1M U122 ( .A0(mem[37]), .A1(n105), .B0(mem[53]), .B1(n104), .Y(n95) );
  AOI221XLM U123 ( .A0(mem[21]), .A1(n108), .B0(mem[5]), .B1(n107), .C0(n95), 
        .Y(n98) );
  AO22X1M U124 ( .A0(mem[45]), .A1(n105), .B0(mem[61]), .B1(n104), .Y(n96) );
  AOI221XLM U125 ( .A0(mem[29]), .A1(n108), .B0(mem[13]), .B1(n107), .C0(n96), 
        .Y(n97) );
  OAI22X1M U126 ( .A0(n113), .A1(n98), .B0(raddr[0]), .B1(n97), .Y(rdata[5])
         );
  AO22X1M U127 ( .A0(mem[38]), .A1(n105), .B0(mem[54]), .B1(n104), .Y(n99) );
  AOI221XLM U128 ( .A0(mem[22]), .A1(n108), .B0(mem[6]), .B1(n107), .C0(n99), 
        .Y(n102) );
  AO22X1M U129 ( .A0(mem[46]), .A1(n105), .B0(mem[62]), .B1(n104), .Y(n100) );
  AOI221XLM U130 ( .A0(mem[30]), .A1(n108), .B0(mem[14]), .B1(n107), .C0(n100), 
        .Y(n101) );
  OAI22X1M U131 ( .A0(n113), .A1(n102), .B0(raddr[0]), .B1(n101), .Y(rdata[6])
         );
  AO22X1M U132 ( .A0(mem[39]), .A1(n105), .B0(mem[55]), .B1(n104), .Y(n103) );
  AOI221XLM U133 ( .A0(mem[23]), .A1(n108), .B0(mem[7]), .B1(n107), .C0(n103), 
        .Y(n110) );
  AO22X1M U134 ( .A0(mem[47]), .A1(n105), .B0(mem[63]), .B1(n104), .Y(n106) );
  AOI221XLM U135 ( .A0(mem[31]), .A1(n108), .B0(mem[15]), .B1(n107), .C0(n106), 
        .Y(n109) );
  OAI22X1M U136 ( .A0(n110), .A1(n113), .B0(raddr[0]), .B1(n109), .Y(rdata[7])
         );
endmodule


module DF_SYNC_0 ( clk, rst_n, async_in, sync_out );
  input [3:0] async_in;
  output [3:0] sync_out;
  input clk, rst_n;

  wire   [3:0] q1;

  DFFRQX2M sync_out_reg_3_ ( .D(q1[3]), .CK(clk), .RN(rst_n), .Q(sync_out[3])
         );
  DFFRQX2M sync_out_reg_2_ ( .D(q1[2]), .CK(clk), .RN(rst_n), .Q(sync_out[2])
         );
  DFFRQX2M sync_out_reg_1_ ( .D(q1[1]), .CK(clk), .RN(rst_n), .Q(sync_out[1])
         );
  DFFRQX2M sync_out_reg_0_ ( .D(q1[0]), .CK(clk), .RN(rst_n), .Q(sync_out[0])
         );
  DFFRQX2M q1_reg_3_ ( .D(async_in[3]), .CK(clk), .RN(rst_n), .Q(q1[3]) );
  DFFRQX2M q1_reg_2_ ( .D(async_in[2]), .CK(clk), .RN(rst_n), .Q(q1[2]) );
  DFFRQX2M q1_reg_1_ ( .D(async_in[1]), .CK(clk), .RN(rst_n), .Q(q1[1]) );
  DFFRQX2M q1_reg_0_ ( .D(async_in[0]), .CK(clk), .RN(rst_n), .Q(q1[0]) );
endmodule


module DF_SYNC_1 ( clk, rst_n, async_in, sync_out );
  input [3:0] async_in;
  output [3:0] sync_out;
  input clk, rst_n;

  wire   [3:0] q1;

  DFFRQX2M sync_out_reg_3_ ( .D(q1[3]), .CK(clk), .RN(rst_n), .Q(sync_out[3])
         );
  DFFRQX2M sync_out_reg_2_ ( .D(q1[2]), .CK(clk), .RN(rst_n), .Q(sync_out[2])
         );
  DFFRQX2M sync_out_reg_1_ ( .D(q1[1]), .CK(clk), .RN(rst_n), .Q(sync_out[1])
         );
  DFFRQX2M sync_out_reg_0_ ( .D(q1[0]), .CK(clk), .RN(rst_n), .Q(sync_out[0])
         );
  DFFRQX2M q1_reg_3_ ( .D(async_in[3]), .CK(clk), .RN(rst_n), .Q(q1[3]) );
  DFFRQX2M q1_reg_2_ ( .D(async_in[2]), .CK(clk), .RN(rst_n), .Q(q1[2]) );
  DFFRQX2M q1_reg_1_ ( .D(async_in[1]), .CK(clk), .RN(rst_n), .Q(q1[1]) );
  DFFRQX2M q1_reg_0_ ( .D(async_in[0]), .CK(clk), .RN(rst_n), .Q(q1[0]) );
endmodule


module FIFO_WR ( wclk, wrst_n, winc, wq2_rptr, wptr, waddr, wfull );
  input [3:0] wq2_rptr;
  output [3:0] wptr;
  output [2:0] waddr;
  input wclk, wrst_n, winc;
  output wfull;
  wire   wbin_3_, wfull_next, n1, n2, n3, n4, n5, n6, n7, n8;
  wire   [3:0] wbin_next;
  wire   [2:0] wgray_next;

  DFFRQX2M wbin_reg_3_ ( .D(wbin_next[3]), .CK(wclk), .RN(wrst_n), .Q(wbin_3_)
         );
  DFFRQX2M wbin_reg_2_ ( .D(wbin_next[2]), .CK(wclk), .RN(wrst_n), .Q(waddr[2]) );
  DFFRQX2M wbin_reg_1_ ( .D(wbin_next[1]), .CK(wclk), .RN(wrst_n), .Q(waddr[1]) );
  DFFRQX2M wfull_reg ( .D(wfull_next), .CK(wclk), .RN(wrst_n), .Q(wfull) );
  DFFRQX2M wbin_reg_0_ ( .D(wbin_next[0]), .CK(wclk), .RN(wrst_n), .Q(waddr[0]) );
  DFFRQX2M wptr_reg_0_ ( .D(wgray_next[0]), .CK(wclk), .RN(wrst_n), .Q(wptr[0]) );
  DFFRQX2M wptr_reg_3_ ( .D(wbin_next[3]), .CK(wclk), .RN(wrst_n), .Q(wptr[3])
         );
  DFFRQX2M wptr_reg_2_ ( .D(wgray_next[2]), .CK(wclk), .RN(wrst_n), .Q(wptr[2]) );
  DFFRQX2M wptr_reg_1_ ( .D(wgray_next[1]), .CK(wclk), .RN(wrst_n), .Q(wptr[1]) );
  CLKXOR2X2M U3 ( .A(wbin_next[2]), .B(wbin_next[1]), .Y(wgray_next[1]) );
  CLKXOR2X2M U4 ( .A(wbin_next[1]), .B(wbin_next[0]), .Y(wgray_next[0]) );
  CLKXOR2X2M U5 ( .A(wbin_next[3]), .B(wbin_next[2]), .Y(wgray_next[2]) );
  XNOR2X2M U6 ( .A(n7), .B(waddr[2]), .Y(wbin_next[2]) );
  NAND2X2M U7 ( .A(waddr[1]), .B(n6), .Y(n7) );
  XNOR2X2M U8 ( .A(n5), .B(wbin_3_), .Y(wbin_next[3]) );
  NAND3X2M U9 ( .A(waddr[1]), .B(n6), .C(waddr[2]), .Y(n5) );
  NOR4X1M U10 ( .A(n1), .B(n2), .C(n3), .D(n4), .Y(wfull_next) );
  XNOR2X2M U11 ( .A(wbin_next[3]), .B(wq2_rptr[3]), .Y(n1) );
  XNOR2X2M U12 ( .A(wgray_next[2]), .B(wq2_rptr[2]), .Y(n2) );
  CLKXOR2X2M U13 ( .A(wq2_rptr[0]), .B(wgray_next[0]), .Y(n3) );
  NOR2BX2M U14 ( .AN(winc), .B(wfull), .Y(n8) );
  AND2X2M U15 ( .A(waddr[0]), .B(n8), .Y(n6) );
  CLKXOR2X2M U16 ( .A(n6), .B(waddr[1]), .Y(wbin_next[1]) );
  CLKXOR2X2M U17 ( .A(wq2_rptr[1]), .B(wgray_next[1]), .Y(n4) );
  CLKXOR2X2M U18 ( .A(n8), .B(waddr[0]), .Y(wbin_next[0]) );
endmodule


module FIFO_RD ( rclk, rrst_n, rinc, rq2_wptr, rptr, raddr, rempty );
  input [3:0] rq2_wptr;
  output [3:0] rptr;
  output [2:0] raddr;
  input rclk, rrst_n, rinc;
  output rempty;
  wire   rbin_3_, rempty_next, n1, n2, n3, n4, n5, n6, n7, n8;
  wire   [3:0] rbin_next;
  wire   [2:0] rgray_next;

  DFFRQX2M rbin_reg_3_ ( .D(rbin_next[3]), .CK(rclk), .RN(rrst_n), .Q(rbin_3_)
         );
  DFFSQX2M rempty_reg ( .D(rempty_next), .CK(rclk), .SN(rrst_n), .Q(rempty) );
  DFFRQX2M rbin_reg_0_ ( .D(rbin_next[0]), .CK(rclk), .RN(rrst_n), .Q(raddr[0]) );
  DFFRQX2M rbin_reg_2_ ( .D(rbin_next[2]), .CK(rclk), .RN(rrst_n), .Q(raddr[2]) );
  DFFRQX2M rbin_reg_1_ ( .D(rbin_next[1]), .CK(rclk), .RN(rrst_n), .Q(raddr[1]) );
  DFFRQX2M rptr_reg_0_ ( .D(rgray_next[0]), .CK(rclk), .RN(rrst_n), .Q(rptr[0]) );
  DFFRQX2M rptr_reg_3_ ( .D(rbin_next[3]), .CK(rclk), .RN(rrst_n), .Q(rptr[3])
         );
  DFFRQX2M rptr_reg_2_ ( .D(rgray_next[2]), .CK(rclk), .RN(rrst_n), .Q(rptr[2]) );
  DFFRQX2M rptr_reg_1_ ( .D(rgray_next[1]), .CK(rclk), .RN(rrst_n), .Q(rptr[1]) );
  CLKXOR2X2M U3 ( .A(rbin_next[3]), .B(rbin_next[2]), .Y(rgray_next[2]) );
  CLKXOR2X2M U4 ( .A(rbin_next[2]), .B(rbin_next[1]), .Y(rgray_next[1]) );
  CLKXOR2X2M U5 ( .A(rbin_next[1]), .B(rbin_next[0]), .Y(rgray_next[0]) );
  XNOR2X2M U6 ( .A(n5), .B(rbin_3_), .Y(rbin_next[3]) );
  NAND3X2M U7 ( .A(raddr[1]), .B(n6), .C(raddr[2]), .Y(n5) );
  XNOR2X2M U8 ( .A(n7), .B(raddr[2]), .Y(rbin_next[2]) );
  NAND2X2M U9 ( .A(raddr[1]), .B(n6), .Y(n7) );
  NOR4X1M U10 ( .A(n1), .B(n2), .C(n3), .D(n4), .Y(rempty_next) );
  CLKXOR2X2M U11 ( .A(rq2_wptr[3]), .B(rbin_next[3]), .Y(n2) );
  CLKXOR2X2M U12 ( .A(rq2_wptr[2]), .B(rgray_next[2]), .Y(n1) );
  CLKXOR2X2M U13 ( .A(rq2_wptr[1]), .B(rgray_next[1]), .Y(n4) );
  NOR2BX2M U14 ( .AN(rinc), .B(rempty), .Y(n8) );
  AND2X2M U15 ( .A(raddr[0]), .B(n8), .Y(n6) );
  CLKXOR2X2M U16 ( .A(rq2_wptr[0]), .B(rgray_next[0]), .Y(n3) );
  CLKXOR2X2M U17 ( .A(n6), .B(raddr[1]), .Y(rbin_next[1]) );
  CLKXOR2X2M U18 ( .A(n8), .B(raddr[0]), .Y(rbin_next[0]) );
endmodule


module ASYNC_FIFO ( W_CLK, W_RST, W_INC, R_CLK, R_RST, R_INC, WR_DATA, RD_DATA, 
        FULL, EMPTY );
  input [7:0] WR_DATA;
  output [7:0] RD_DATA;
  input W_CLK, W_RST, W_INC, R_CLK, R_RST, R_INC;
  output FULL, EMPTY;
  wire   wclken;
  wire   [2:0] waddr;
  wire   [2:0] raddr;
  wire   [3:0] rptr;
  wire   [3:0] wq2_rptr;
  wire   [3:0] wptr;
  wire   [3:0] rq2_wptr;

  FIFO_MEM_CNTRL u_fifo_mem ( .wclk(W_CLK), .wclken(wclken), .waddr(waddr), 
        .raddr(raddr), .wdata(WR_DATA), .rdata(RD_DATA) );
  DF_SYNC_0 u_sync_r2w ( .clk(W_CLK), .rst_n(W_RST), .async_in(rptr), 
        .sync_out(wq2_rptr) );
  DF_SYNC_1 u_sync_w2r ( .clk(R_CLK), .rst_n(R_RST), .async_in(wptr), 
        .sync_out(rq2_wptr) );
  FIFO_WR u_fifo_wr ( .wclk(W_CLK), .wrst_n(W_RST), .winc(W_INC), .wq2_rptr(
        wq2_rptr), .wptr(wptr), .waddr(waddr), .wfull(FULL) );
  FIFO_RD u_fifo_rd ( .rclk(R_CLK), .rrst_n(R_RST), .rinc(R_INC), .rq2_wptr(
        rq2_wptr), .rptr(rptr), .raddr(raddr), .rempty(EMPTY) );
  NOR2BX2M U1 ( .AN(W_INC), .B(FULL), .Y(wclken) );
endmodule


module UART_TX_FSM ( Data_Valid, Par_En, Ser_Done, CLK, RST, Ser_En, Mux_Sel, 
        busy );
  output [2:0] Mux_Sel;
  input Data_Valid, Par_En, Ser_Done, CLK, RST;
  output Ser_En, busy;
  wire   next_state_2_, next_state_0_, n4, n5, n6, n7, n8, n1, n2, n3;
  wire   [2:0] state;

  DFFRQX2M state_reg_0_ ( .D(next_state_0_), .CK(CLK), .RN(RST), .Q(state[0])
         );
  DFFRQX2M state_reg_2_ ( .D(next_state_2_), .CK(CLK), .RN(RST), .Q(state[2])
         );
  DFFRX1M state_reg_1_ ( .D(Mux_Sel[0]), .CK(CLK), .RN(RST), .Q(state[1]), 
        .QN(n2) );
  NAND2BX2M U3 ( .AN(Mux_Sel[2]), .B(n4), .Y(Mux_Sel[1]) );
  NOR2X2M U4 ( .A(n3), .B(n2), .Y(Mux_Sel[2]) );
  NAND3X2M U5 ( .A(n4), .B(n5), .C(n8), .Y(Mux_Sel[0]) );
  NAND2BX2M U6 ( .AN(Mux_Sel[1]), .B(n8), .Y(busy) );
  INVX2M U7 ( .A(n8), .Y(Ser_En) );
  OAI21X2M U8 ( .A0(n4), .A1(n1), .B0(n5), .Y(next_state_2_) );
  NAND3X2M U9 ( .A(state[0]), .B(n3), .C(state[1]), .Y(n4) );
  INVX2M U10 ( .A(state[2]), .Y(n3) );
  NAND3X2M U11 ( .A(n2), .B(n3), .C(state[0]), .Y(n8) );
  NAND3X2M U12 ( .A(state[1]), .B(state[0]), .C(state[2]), .Y(n5) );
  OAI211X2M U13 ( .A0(n6), .A1(n4), .B0(n7), .C0(n8), .Y(next_state_0_) );
  NAND3X2M U14 ( .A(n2), .B(n3), .C(Data_Valid), .Y(n7) );
  NOR2X2M U15 ( .A(Par_En), .B(n1), .Y(n6) );
  INVX2M U16 ( .A(Ser_Done), .Y(n1) );
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


module Serializer ( P_Data, ser_en, CLK, RST, Ser_Data, Ser_Done );
  input [7:0] P_Data;
  input ser_en, CLK, RST;
  output Ser_Data, Ser_Done;
  wire   N2, N3, N4, is_transmitting, N10, N12, N13, N14, N15, N16, N17, N18,
         N19, N20, N21, N22, N23, N24, N25, N26, N27, N28, N29, N30, N31, N32,
         N33, N34, N35, N36, N37, N38, N39, N40, N41, N42, N43, N44, N84, N85,
         N86, N87, N88, N89, N90, N91, N92, N93, N94, N95, N96, N97, N98, N99,
         N100, N101, N102, N103, N104, N105, N106, N107, N108, N109, N110,
         N111, N112, N113, N114, N115, n6, n8, n9, n10, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n30, n31, n1, n2, n3, n4, n5, n7, n32, n33, n34, n35, n36, n37,
         n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51;
  wire   [31:3] i;
  wire   [7:0] Data_FF;

  Serializer_DW01_inc_0 add_37 ( .A({i, N4, N3, N2}), .SUM({N44, N43, N42, N41, 
        N40, N39, N38, N37, N36, N35, N34, N33, N32, N31, N30, N29, N28, N27, 
        N26, N25, N24, N23, N22, N21, N20, N19, N18, N17, N16, N15, N14, N13})
         );
  DFFRQX2M Data_FF_reg_7_ ( .D(n28), .CK(CLK), .RN(n4), .Q(Data_FF[7]) );
  DFFRQX2M Data_FF_reg_6_ ( .D(n27), .CK(CLK), .RN(n4), .Q(Data_FF[6]) );
  DFFRQX2M Data_FF_reg_4_ ( .D(n25), .CK(CLK), .RN(n4), .Q(Data_FF[4]) );
  DFFRQX2M is_transmitting_reg ( .D(n31), .CK(CLK), .RN(n32), .Q(
        is_transmitting) );
  DFFRQX2M Ser_Done_reg ( .D(n29), .CK(CLK), .RN(n4), .Q(Ser_Done) );
  DFFRQX2M Data_FF_reg_5_ ( .D(n26), .CK(CLK), .RN(n4), .Q(Data_FF[5]) );
  DFFRQX2M Data_FF_reg_3_ ( .D(n24), .CK(CLK), .RN(n4), .Q(Data_FF[3]) );
  DFFRQX2M Data_FF_reg_1_ ( .D(n22), .CK(CLK), .RN(n4), .Q(Data_FF[1]) );
  DFFRQX2M Data_FF_reg_2_ ( .D(n23), .CK(CLK), .RN(n4), .Q(Data_FF[2]) );
  DFFRQX2M Data_FF_reg_0_ ( .D(n21), .CK(CLK), .RN(n4), .Q(Data_FF[0]) );
  DFFRQX2M i_reg_31_ ( .D(N115), .CK(CLK), .RN(n4), .Q(i[31]) );
  DFFRQX2M i_reg_25_ ( .D(N109), .CK(CLK), .RN(n5), .Q(i[25]) );
  DFFRQX2M i_reg_26_ ( .D(N110), .CK(CLK), .RN(n5), .Q(i[26]) );
  DFFRQX2M i_reg_29_ ( .D(N113), .CK(CLK), .RN(n4), .Q(i[29]) );
  DFFRQX2M i_reg_21_ ( .D(N105), .CK(CLK), .RN(n5), .Q(i[21]) );
  DFFRQX2M i_reg_22_ ( .D(N106), .CK(CLK), .RN(n5), .Q(i[22]) );
  DFFRQX2M i_reg_30_ ( .D(N114), .CK(CLK), .RN(n4), .Q(i[30]) );
  DFFRQX2M i_reg_27_ ( .D(N111), .CK(CLK), .RN(n5), .Q(i[27]) );
  DFFRQX2M i_reg_23_ ( .D(N107), .CK(CLK), .RN(n5), .Q(i[23]) );
  DFFRQX2M i_reg_24_ ( .D(N108), .CK(CLK), .RN(n5), .Q(i[24]) );
  DFFRQX2M i_reg_28_ ( .D(N112), .CK(CLK), .RN(n4), .Q(i[28]) );
  DFFRQX2M i_reg_17_ ( .D(N101), .CK(CLK), .RN(n5), .Q(i[17]) );
  DFFRQX2M i_reg_18_ ( .D(N102), .CK(CLK), .RN(n5), .Q(i[18]) );
  DFFRQX2M i_reg_14_ ( .D(N98), .CK(CLK), .RN(n5), .Q(i[14]) );
  DFFRQX2M i_reg_19_ ( .D(N103), .CK(CLK), .RN(n5), .Q(i[19]) );
  DFFRQX2M i_reg_15_ ( .D(N99), .CK(CLK), .RN(n5), .Q(i[15]) );
  DFFRQX2M i_reg_20_ ( .D(N104), .CK(CLK), .RN(n5), .Q(i[20]) );
  DFFRQX2M i_reg_16_ ( .D(N100), .CK(CLK), .RN(n32), .Q(i[16]) );
  DFFRQX2M i_reg_10_ ( .D(N94), .CK(CLK), .RN(n7), .Q(i[10]) );
  DFFRQX2M i_reg_13_ ( .D(N97), .CK(CLK), .RN(n7), .Q(i[13]) );
  DFFRQX2M i_reg_8_ ( .D(N92), .CK(CLK), .RN(n7), .Q(i[8]) );
  DFFRQX2M i_reg_9_ ( .D(N93), .CK(CLK), .RN(n7), .Q(i[9]) );
  DFFRQX2M i_reg_11_ ( .D(N95), .CK(CLK), .RN(n7), .Q(i[11]) );
  DFFRQX2M i_reg_6_ ( .D(N90), .CK(CLK), .RN(n7), .Q(i[6]) );
  DFFRQX2M i_reg_12_ ( .D(N96), .CK(CLK), .RN(n7), .Q(i[12]) );
  DFFRQX2M i_reg_7_ ( .D(N91), .CK(CLK), .RN(n7), .Q(i[7]) );
  DFFRQX2M i_reg_2_ ( .D(N86), .CK(CLK), .RN(n7), .Q(N4) );
  DFFRQX2M i_reg_0_ ( .D(N84), .CK(CLK), .RN(n32), .Q(N2) );
  DFFRQX2M i_reg_1_ ( .D(N85), .CK(CLK), .RN(n7), .Q(N3) );
  DFFRQX2M i_reg_4_ ( .D(N88), .CK(CLK), .RN(n7), .Q(i[4]) );
  DFFRQX2M i_reg_5_ ( .D(N89), .CK(CLK), .RN(n7), .Q(i[5]) );
  DFFRQX2M i_reg_3_ ( .D(N87), .CK(CLK), .RN(n7), .Q(i[3]) );
  DFFRQX2M Ser_Data_reg ( .D(n30), .CK(CLK), .RN(n32), .Q(Ser_Data) );
  AND2X2M U3 ( .A(N10), .B(n10), .Y(n1) );
  INVX2M U4 ( .A(ser_en), .Y(n51) );
  BUFX2M U5 ( .A(n2), .Y(n4) );
  BUFX2M U6 ( .A(n2), .Y(n5) );
  BUFX2M U7 ( .A(n3), .Y(n7) );
  BUFX2M U8 ( .A(n3), .Y(n32) );
  AND2X2M U9 ( .A(N43), .B(n1), .Y(N114) );
  AND2X2M U10 ( .A(N42), .B(n1), .Y(N113) );
  AND2X2M U11 ( .A(N41), .B(n1), .Y(N112) );
  AND2X2M U12 ( .A(N40), .B(n1), .Y(N111) );
  AND2X2M U13 ( .A(N39), .B(n1), .Y(N110) );
  AND2X2M U14 ( .A(N38), .B(n1), .Y(N109) );
  AND2X2M U15 ( .A(N37), .B(n1), .Y(N108) );
  AND2X2M U16 ( .A(N36), .B(n1), .Y(N107) );
  AND2X2M U17 ( .A(N35), .B(n1), .Y(N106) );
  AND2X2M U18 ( .A(N34), .B(n1), .Y(N105) );
  AND2X2M U19 ( .A(N33), .B(n1), .Y(N104) );
  AND2X2M U20 ( .A(N32), .B(n1), .Y(N103) );
  AND2X2M U21 ( .A(N31), .B(n1), .Y(N102) );
  AND2X2M U22 ( .A(N30), .B(n1), .Y(N101) );
  AND2X2M U23 ( .A(N28), .B(n1), .Y(N99) );
  AND2X2M U24 ( .A(N27), .B(n1), .Y(N98) );
  AND2X2M U25 ( .A(N26), .B(n1), .Y(N97) );
  AND2X2M U26 ( .A(N29), .B(n1), .Y(N100) );
  AND2X2M U27 ( .A(N25), .B(n1), .Y(N96) );
  AND2X2M U28 ( .A(N24), .B(n1), .Y(N95) );
  AND2X2M U29 ( .A(N22), .B(n1), .Y(N93) );
  AND2X2M U30 ( .A(N21), .B(n1), .Y(N92) );
  AND2X2M U31 ( .A(N20), .B(n1), .Y(N91) );
  AND2X2M U32 ( .A(N19), .B(n1), .Y(N90) );
  AND2X2M U33 ( .A(N18), .B(n1), .Y(N89) );
  AND2X2M U34 ( .A(N17), .B(n1), .Y(N88) );
  AND2X2M U35 ( .A(N16), .B(n1), .Y(N87) );
  AND2X2M U36 ( .A(N14), .B(n1), .Y(N85) );
  AND2X2M U37 ( .A(N23), .B(n1), .Y(N94) );
  AND2X2M U38 ( .A(N15), .B(n1), .Y(N86) );
  BUFX2M U39 ( .A(RST), .Y(n2) );
  BUFX2M U40 ( .A(RST), .Y(n3) );
  AND2X2M U41 ( .A(N44), .B(n1), .Y(N115) );
  NOR4X1M U42 ( .A(i[26]), .B(i[25]), .C(i[24]), .D(i[23]), .Y(n15) );
  NOR4X1M U43 ( .A(i[30]), .B(i[29]), .C(i[28]), .D(i[27]), .Y(n16) );
  NOR4X1M U44 ( .A(i[9]), .B(i[8]), .C(i[7]), .D(i[6]), .Y(n18) );
  NOR4X1M U45 ( .A(i[5]), .B(i[4]), .C(i[3]), .D(i[31]), .Y(n17) );
  NOR4X1M U46 ( .A(i[14]), .B(i[13]), .C(i[12]), .D(i[11]), .Y(n12) );
  NOR4X1M U47 ( .A(i[22]), .B(i[21]), .C(i[20]), .D(i[19]), .Y(n14) );
  NOR4X1M U48 ( .A(i[18]), .B(i[17]), .C(i[16]), .D(i[15]), .Y(n13) );
  NOR2BX2M U49 ( .AN(is_transmitting), .B(ser_en), .Y(n10) );
  OAI2BB2X1M U50 ( .B0(n19), .B1(n20), .A0N(Ser_Data), .A1N(n19), .Y(n30) );
  NOR2X2M U51 ( .A(ser_en), .B(n1), .Y(n19) );
  AOI22X1M U52 ( .A0(N12), .A1(n10), .B0(ser_en), .B1(P_Data[0]), .Y(n20) );
  NAND4BX1M U53 ( .AN(i[10]), .B(N2), .C(N3), .D(N4), .Y(n11) );
  OAI2BB1X2M U54 ( .A0N(is_transmitting), .A1N(N10), .B0(n51), .Y(n31) );
  AO22X1M U55 ( .A0(P_Data[7]), .A1(ser_en), .B0(Data_FF[7]), .B1(n51), .Y(n28) );
  AO22X1M U56 ( .A0(P_Data[6]), .A1(ser_en), .B0(Data_FF[6]), .B1(n51), .Y(n27) );
  AO22X1M U57 ( .A0(P_Data[2]), .A1(ser_en), .B0(Data_FF[2]), .B1(n51), .Y(n23) );
  AO2B2X2M U58 ( .B0(n6), .B1(n1), .A0(Ser_Done), .A1N(n6), .Y(n29) );
  OAI211X2M U59 ( .A0(n8), .A1(n9), .B0(n10), .C0(N10), .Y(n6) );
  NAND4X2M U60 ( .A(n15), .B(n16), .C(n17), .D(n18), .Y(n8) );
  NAND4BX1M U61 ( .AN(n11), .B(n12), .C(n13), .D(n14), .Y(n9) );
  AO22X1M U62 ( .A0(P_Data[0]), .A1(ser_en), .B0(Data_FF[0]), .B1(n51), .Y(n21) );
  AO22X1M U63 ( .A0(P_Data[3]), .A1(ser_en), .B0(Data_FF[3]), .B1(n51), .Y(n24) );
  AO22X1M U64 ( .A0(P_Data[1]), .A1(ser_en), .B0(Data_FF[1]), .B1(n51), .Y(n22) );
  AO22X1M U65 ( .A0(P_Data[4]), .A1(ser_en), .B0(Data_FF[4]), .B1(n51), .Y(n25) );
  AO22X1M U66 ( .A0(P_Data[5]), .A1(ser_en), .B0(Data_FF[5]), .B1(n51), .Y(n26) );
  INVX2M U67 ( .A(N2), .Y(n40) );
  INVX2M U68 ( .A(N3), .Y(n39) );
  AO21XLM U69 ( .A0(N13), .A1(n1), .B0(ser_en), .Y(N84) );
  AOI22X1M U70 ( .A0(Data_FF[2]), .A1(n40), .B0(Data_FF[3]), .B1(N2), .Y(n34)
         );
  AOI22X1M U71 ( .A0(Data_FF[0]), .A1(n40), .B0(Data_FF[1]), .B1(N2), .Y(n33)
         );
  OA22X1M U72 ( .A0(n39), .A1(n34), .B0(N3), .B1(n33), .Y(n38) );
  AOI22X1M U73 ( .A0(Data_FF[6]), .A1(n40), .B0(Data_FF[7]), .B1(N2), .Y(n36)
         );
  AOI22X1M U74 ( .A0(Data_FF[4]), .A1(n40), .B0(Data_FF[5]), .B1(N2), .Y(n35)
         );
  OAI22X1M U75 ( .A0(n36), .A1(n39), .B0(N3), .B1(n35), .Y(n37) );
  OAI2BB2X1M U76 ( .B0(n38), .B1(N4), .A0N(N4), .A1N(n37), .Y(N12) );
  NOR3X1M U77 ( .A(i[24]), .B(i[26]), .C(i[25]), .Y(n44) );
  NOR4X1M U78 ( .A(i[30]), .B(i[29]), .C(i[28]), .D(i[27]), .Y(n43) );
  NOR3X1M U79 ( .A(i[3]), .B(i[5]), .C(i[4]), .Y(n42) );
  NOR4X1M U80 ( .A(i[9]), .B(i[8]), .C(i[7]), .D(i[6]), .Y(n41) );
  NAND4X1M U81 ( .A(n44), .B(n43), .C(n42), .D(n41), .Y(n50) );
  NOR3X1M U82 ( .A(i[10]), .B(i[12]), .C(i[11]), .Y(n48) );
  NOR4X1M U83 ( .A(i[16]), .B(i[15]), .C(i[14]), .D(i[13]), .Y(n47) );
  NOR3X1M U84 ( .A(i[17]), .B(i[19]), .C(i[18]), .Y(n46) );
  NOR4X1M U85 ( .A(i[23]), .B(i[22]), .C(i[21]), .D(i[20]), .Y(n45) );
  NAND4X1M U86 ( .A(n48), .B(n47), .C(n46), .D(n45), .Y(n49) );
  OAI21BX1M U87 ( .A0(n50), .A1(n49), .B0N(i[31]), .Y(N10) );
endmodule


module Parity_Calc ( P_Data, Data_Valid, Par_Type, CLK, RST, Par_Bit );
  input [7:0] P_Data;
  input Data_Valid, Par_Type, CLK, RST;
  output Par_Bit;
  wire   n1, n3, n4, n5, n6, n7, n2;

  DFFRQX2M Par_Bit_reg ( .D(n7), .CK(CLK), .RN(RST), .Q(Par_Bit) );
  XNOR2X2M U2 ( .A(P_Data[3]), .B(P_Data[2]), .Y(n5) );
  XOR3XLM U3 ( .A(P_Data[5]), .B(P_Data[4]), .C(n6), .Y(n3) );
  CLKXOR2X2M U4 ( .A(P_Data[7]), .B(P_Data[6]), .Y(n6) );
  OAI2BB2X1M U5 ( .B0(n1), .B1(n2), .A0N(Par_Bit), .A1N(n2), .Y(n7) );
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


module UART_TX ( P_Data, Data_Valid, Par_En, Par_Type, CLK, RST, TX_OUT, busy
 );
  input [7:0] P_Data;
  input Data_Valid, Par_En, Par_Type, CLK, RST;
  output TX_OUT, busy;
  wire   Ser_Done_Top, Ser_En_Top, Ser_Data_Top, Par_Bit_Top;
  wire   [2:0] Mux_Sel_Top;

  UART_TX_FSM FSM_inst ( .Data_Valid(Data_Valid), .Par_En(Par_En), .Ser_Done(
        Ser_Done_Top), .CLK(CLK), .RST(RST), .Ser_En(Ser_En_Top), .Mux_Sel(
        Mux_Sel_Top), .busy(busy) );
  Serializer Serializer_inst ( .P_Data(P_Data), .ser_en(Ser_En_Top), .CLK(CLK), 
        .RST(RST), .Ser_Data(Ser_Data_Top), .Ser_Done(Ser_Done_Top) );
  Parity_Calc Parity_Calc_inst ( .P_Data(P_Data), .Data_Valid(Data_Valid), 
        .Par_Type(Par_Type), .CLK(CLK), .RST(RST), .Par_Bit(Par_Bit_Top) );
  Output_Mux Output_Mux_inst ( .Mux_Sel(Mux_Sel_Top), .Ser_Data(Ser_Data_Top), 
        .Par_Bit(Par_Bit_Top), .TX_OUT(TX_OUT) );
endmodule


module PULSE_GEN ( CLK, RST, LVL_SIG, PULSE_SIG );
  input CLK, RST, LVL_SIG;
  output PULSE_SIG;
  wire   lvl_ff;

  DFFRQX2M lvl_ff_reg ( .D(LVL_SIG), .CK(CLK), .RN(RST), .Q(lvl_ff) );
  NOR2BX2M U3 ( .AN(LVL_SIG), .B(lvl_ff), .Y(PULSE_SIG) );
endmodule


module SYS_TOP ( REF_CLK, UART_CLK, RST_N, RX_IN, TX_OUT, PAR_ERR, STP_ERR );
  input REF_CLK, UART_CLK, RST_N, RX_IN;
  output TX_OUT, PAR_ERR, STP_ERR;
  wire   rst_sync_1, rst_sync_2, rf_wr_en, rf_rd_en, rf_rd_valid,
         alu_out_valid, sync_rx_d_vld, fifo_full, alu_en, clk_en, tx_d_vld,
         gated_clk, tx_clk, rx_d_vld, pulse_r_inc, fifo_empty, tx_busy, n1, n2,
         n3;
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

  RST_SYNC_0 U_RST_SYNC_1 ( .CLK(REF_CLK), .RST(RST_N), .SYNC_RST(rst_sync_1)
         );
  RST_SYNC_1 U_RST_SYNC_2 ( .CLK(UART_CLK), .RST(RST_N), .SYNC_RST(rst_sync_2)
         );
  RegFile U_RegFile ( .CLK(REF_CLK), .RST(n2), .Address(rf_address), .WrEn(
        rf_wr_en), .RdEn(rf_rd_en), .WrData(rf_wr_data), .RdData(rf_rd_data), 
        .RdData_Valid(rf_rd_valid), .REG0(reg0), .REG1(reg1), .REG2(reg2), 
        .REG3(reg3) );
  SYS_CTRL U_SYS_CTRL ( .CLK(REF_CLK), .RST(n2), .ALU_OUT(alu_out), 
        .OUT_Valid(alu_out_valid), .RX_P_DATA(sync_rx_p_data), .RX_D_VLD(
        sync_rx_d_vld), .RdData(rf_rd_data), .RdData_Valid(rf_rd_valid), 
        .FIFO_FULL(fifo_full), .ALU_FUN(alu_fun), .EN(alu_en), .CLK_EN(clk_en), 
        .Address(rf_address), .WrEn(rf_wr_en), .RdEn(rf_rd_en), .WrData(
        rf_wr_data), .TX_P_DATA(tx_p_data), .TX_D_VLD(tx_d_vld) );
  CLK_GATE U_CLK_GATE ( .CLK(REF_CLK), .CLK_EN(clk_en), .GATED_CLK(gated_clk)
         );
  ALU U_ALU ( .CLK(gated_clk), .RST(n2), .A(reg0), .B(reg1), .ALU_FUN(alu_fun), 
        .Enable(alu_en), .ALU_OUT(alu_out), .OUT_VALID(alu_out_valid) );
  ClkDiv U_ClkDiv ( .i_ref_clk(UART_CLK), .i_rst_n(rst_sync_2), .i_clk_en(1'b1), .i_div_ratio(reg3), .o_div_clk(tx_clk) );
  UART_RX U_UART_RX ( .CLK(UART_CLK), .RST(rst_sync_2), .PAR_TYP(reg2[1]), 
        .PAR_EN(reg2[0]), .Prescale(reg2[7:2]), .RX_IN(RX_IN), .P_DATA(
        rx_p_data), .Data_valid(rx_d_vld), .Parity_Error(PAR_ERR), 
        .Stop_Error(STP_ERR) );
  DATA_SYNC U_DATA_SYNC ( .unsync_bus(rx_p_data), .bus_enable(rx_d_vld), .CLK(
        REF_CLK), .RST(n2), .sync_bus(sync_rx_p_data), .enable_pulse(
        sync_rx_d_vld) );
  ASYNC_FIFO U_ASYNC_FIFO ( .W_CLK(REF_CLK), .W_RST(n2), .W_INC(tx_d_vld), 
        .R_CLK(tx_clk), .R_RST(rst_sync_2), .R_INC(pulse_r_inc), .WR_DATA(
        tx_p_data), .RD_DATA(fifo_rd_data), .FULL(fifo_full), .EMPTY(
        fifo_empty) );
  UART_TX U_UART_TX ( .P_Data(fifo_rd_data), .Data_Valid(n1), .Par_En(reg2[0]), 
        .Par_Type(reg2[1]), .CLK(tx_clk), .RST(rst_sync_2), .TX_OUT(TX_OUT), 
        .busy(tx_busy) );
  PULSE_GEN U_PULSE_GEN ( .CLK(tx_clk), .RST(rst_sync_2), .LVL_SIG(tx_busy), 
        .PULSE_SIG(pulse_r_inc) );
  INVX2M U2 ( .A(fifo_empty), .Y(n1) );
  INVX4M U3 ( .A(n3), .Y(n2) );
  INVX2M U4 ( .A(rst_sync_1), .Y(n3) );
endmodule

