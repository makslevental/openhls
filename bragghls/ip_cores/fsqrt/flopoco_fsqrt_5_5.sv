module fsqrt#(parameter ID=1)
  (input  clk,
   input  [12:0] X,
   output [12:0] R);
  wire [4:0] fracx;
  wire [4:0] ern0;
  wire [2:0] xsx;
  wire [4:0] ern1;
  wire [4:0] ern1_d1;
  wire [8:0] fracxnorm;
  wire [1:0] s0;
  wire [8:0] t1;
  wire d1;
  wire [9:0] t1s;
  wire [5:0] t1s_h;
  wire [3:0] t1s_l;
  wire [5:0] u1;
  wire [5:0] t3_h;
  wire [8:0] t2;
  wire [2:0] s1;
  wire d2;
  wire [9:0] t2s;
  wire [6:0] t2s_h;
  wire [2:0] t2s_l;
  wire [6:0] u2;
  wire [6:0] t4_h;
  wire [8:0] t3;
  wire [3:0] s2;
  wire d3;
  wire d3_d1;
  wire [9:0] t3s;
  wire [7:0] t3s_h;
  wire [7:0] t3s_h_d1;
  wire [1:0] t3s_l;
  wire [1:0] t3s_l_d1;
  wire [7:0] u3;
  wire [7:0] u3_d1;
  wire [7:0] t5_h;
  wire [8:0] t4;
  wire [4:0] s3;
  wire [4:0] s3_d1;
  wire d4;
  wire [9:0] t4s;
  wire [8:0] t4s_h;
  wire t4s_l;
  wire [8:0] u4;
  wire [8:0] t6_h;
  wire [8:0] t5;
  wire [5:0] s4;
  wire d5;
  wire [9:0] t5s;
  wire [9:0] t5s_h;
  wire [9:0] u5;
  wire [9:0] t7_h;
  wire [8:0] t6;
  wire [6:0] s5;
  wire d7;
  wire [7:0] mr;
  wire [4:0] fr;
  wire round;
  wire [4:0] frrnd;
  wire [9:0] rn2;
  wire [2:0] xsr;
  wire [2:0] xsr_d1;
  wire [4:0] n12_o;
  wire [3:0] n13_o;
  wire [4:0] n15_o;
  wire [2:0] n16_o;
  wire [4:0] n18_o;
  wire n19_o;
  wire [4:0] n20_o;
  wire [4:0] n21_o;
  wire [5:0] n23_o;
  wire [8:0] n25_o;
  wire n26_o;
  wire n27_o;
  wire [8:0] n28_o;
  wire [6:0] n30_o;
  wire [8:0] n32_o;
  wire [3:0] n34_o;
  wire [3:0] n36_o;
  wire [4:0] n37_o;
  wire [8:0] n38_o;
  wire n39_o;
  wire n40_o;
  wire [9:0] n42_o;
  wire [5:0] n43_o;
  wire [3:0] n44_o;
  wire [2:0] n46_o;
  wire [3:0] n47_o;
  wire n48_o;
  wire [4:0] n49_o;
  wire [5:0] n51_o;
  wire [5:0] n52_o;
  wire [5:0] n53_o;
  wire [5:0] n54_o;
  wire [4:0] n55_o;
  wire [8:0] n56_o;
  wire [2:0] n57_o;
  wire n58_o;
  wire n59_o;
  wire [9:0] n61_o;
  wire [6:0] n62_o;
  wire [2:0] n63_o;
  wire [3:0] n65_o;
  wire [4:0] n66_o;
  wire n67_o;
  wire [5:0] n68_o;
  wire [6:0] n70_o;
  wire [6:0] n71_o;
  wire [6:0] n72_o;
  wire [6:0] n73_o;
  wire [5:0] n74_o;
  wire [8:0] n75_o;
  wire [3:0] n76_o;
  wire n77_o;
  wire n78_o;
  wire [9:0] n80_o;
  wire [7:0] n81_o;
  wire [1:0] n82_o;
  wire [4:0] n84_o;
  wire [5:0] n85_o;
  wire n86_o;
  wire [6:0] n87_o;
  wire [7:0] n89_o;
  wire [7:0] n90_o;
  wire [7:0] n91_o;
  wire [7:0] n92_o;
  wire [6:0] n93_o;
  wire [8:0] n94_o;
  wire [4:0] n95_o;
  wire n96_o;
  wire n97_o;
  wire [9:0] n99_o;
  wire [8:0] n100_o;
  wire n101_o;
  wire [5:0] n103_o;
  wire [6:0] n104_o;
  wire n105_o;
  wire [7:0] n106_o;
  wire [8:0] n108_o;
  wire [8:0] n109_o;
  wire [8:0] n110_o;
  wire [8:0] n111_o;
  wire [7:0] n112_o;
  wire [8:0] n113_o;
  wire [5:0] n114_o;
  wire n115_o;
  wire n116_o;
  wire [9:0] n118_o;
  wire [6:0] n120_o;
  wire [7:0] n121_o;
  wire n122_o;
  wire [8:0] n123_o;
  wire [9:0] n125_o;
  wire [9:0] n126_o;
  wire [9:0] n127_o;
  wire [9:0] n128_o;
  wire [8:0] n129_o;
  wire [6:0] n130_o;
  wire n131_o;
  wire n132_o;
  wire [7:0] n133_o;
  wire [4:0] n134_o;
  wire n135_o;
  wire [4:0] n137_o;
  wire [4:0] n138_o;
  wire [9:0] n139_o;
  wire n142_o;
  wire n145_o;
  wire n148_o;
  wire n151_o;
  wire [3:0] n153_o;
  reg [2:0] n154_o;
  wire [12:0] n155_o;
  reg [4:0] n156_q;
  reg n157_q;
  reg [7:0] n158_q;
  reg [1:0] n159_q;
  reg [7:0] n160_q;
  reg [4:0] n161_q;
  reg [2:0] n162_q;
  assign R = n155_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:30:8  */
  assign fracx = n12_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:31:8  */
  assign ern0 = n15_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:32:8  */
  assign xsx = n16_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:33:8  */
  assign ern1 = n21_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:33:14  */
  assign ern1_d1 = n156_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:34:8  */
  assign fracxnorm = n28_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:35:8  */
  assign s0 = 2'b01; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:36:8  */
  assign t1 = n38_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:37:8  */
  assign d1 = n40_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:38:8  */
  assign t1s = n42_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:39:8  */
  assign t1s_h = n43_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:40:8  */
  assign t1s_l = n44_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:41:8  */
  assign u1 = n51_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:42:8  */
  assign t3_h = n53_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:43:8  */
  assign t2 = n56_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:44:8  */
  assign s1 = n57_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:45:8  */
  assign d2 = n59_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:46:8  */
  assign t2s = n61_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:47:8  */
  assign t2s_h = n62_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:48:8  */
  assign t2s_l = n63_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:49:8  */
  assign u2 = n70_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:50:8  */
  assign t4_h = n72_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:51:8  */
  assign t3 = n75_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:52:8  */
  assign s2 = n76_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:53:8  */
  assign d3 = n78_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:53:12  */
  assign d3_d1 = n157_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:54:8  */
  assign t3s = n80_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:55:8  */
  assign t3s_h = n81_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:55:15  */
  assign t3s_h_d1 = n158_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:56:8  */
  assign t3s_l = n82_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:56:15  */
  assign t3s_l_d1 = n159_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:57:8  */
  assign u3 = n89_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:57:12  */
  assign u3_d1 = n160_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:58:8  */
  assign t5_h = n91_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:59:8  */
  assign t4 = n94_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:60:8  */
  assign s3 = n95_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:60:12  */
  assign s3_d1 = n161_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:61:8  */
  assign d4 = n97_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:62:8  */
  assign t4s = n99_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:63:8  */
  assign t4s_h = n100_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:64:8  */
  assign t4s_l = n101_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:65:8  */
  assign u4 = n108_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:66:8  */
  assign t6_h = n110_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:67:8  */
  assign t5 = n113_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:68:8  */
  assign s4 = n114_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:69:8  */
  assign d5 = n116_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:149:16  */
  assign t5s = n118_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:71:8  */
  assign t5s_h = t5s; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:72:8  */
  assign u5 = n125_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:73:8  */
  assign t7_h = n127_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:74:8  */
  assign t6 = n129_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:75:8  */
  assign s5 = n130_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:76:8  */
  assign d7 = n132_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:77:8  */
  assign mr = n133_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:78:8  */
  assign fr = n134_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:79:8  */
  assign round = n135_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:80:8  */
  assign frrnd = n138_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:81:8  */
  assign rn2 = n139_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:82:8  */
  assign xsr = n154_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:82:13  */
  assign xsr_d1 = n162_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:96:14  */
  assign n12_o = X[4:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:97:19  */
  assign n13_o = X[9:6];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:97:16  */
  assign n15_o = {1'b0, n13_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:98:12  */
  assign n16_o = X[12:10];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:99:17  */
  assign n18_o = ern0 + 5'b00111;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:99:51  */
  assign n19_o = X[5];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:99:48  */
  assign n20_o = {4'b0, n19_o};  //  uext
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:99:48  */
  assign n21_o = n18_o + n20_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:100:21  */
  assign n23_o = {1'b1, fracx};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:100:29  */
  assign n25_o = {n23_o, 3'b000};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:100:43  */
  assign n26_o = X[5];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:100:47  */
  assign n27_o = ~n26_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:100:37  */
  assign n28_o = n27_o ? n25_o : n32_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:101:15  */
  assign n30_o = {2'b01, fracx};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:101:22  */
  assign n32_o = {n30_o, 2'b00};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:103:29  */
  assign n34_o = fracxnorm[8:5];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:103:18  */
  assign n36_o = 4'b0111 + n34_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:103:54  */
  assign n37_o = fracxnorm[4:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:103:43  */
  assign n38_o = {n36_o, n37_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:107:16  */
  assign n39_o = t1[8];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:107:10  */
  assign n40_o = ~n39_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:108:14  */
  assign n42_o = {t1, 1'b0};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:109:16  */
  assign n43_o = t1s[9:4];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:110:16  */
  assign n44_o = t1s[3:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:111:15  */
  assign n46_o = {1'b0, s0};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:111:20  */
  assign n47_o = {n46_o, d1};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:111:28  */
  assign n48_o = ~d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:111:25  */
  assign n49_o = {n47_o, n48_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:111:36  */
  assign n51_o = {n49_o, 1'b1};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:112:20  */
  assign n52_o = t1s_h - u1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:112:25  */
  assign n53_o = d1 ? n52_o : n54_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:113:20  */
  assign n54_o = t1s_h + u1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:114:14  */
  assign n55_o = t3_h[4:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:114:27  */
  assign n56_o = {n55_o, t1s_l};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:115:13  */
  assign n57_o = {s0, d1};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:117:16  */
  assign n58_o = t2[8];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:117:10  */
  assign n59_o = ~n58_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:118:14  */
  assign n61_o = {t2, 1'b0};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:119:16  */
  assign n62_o = t2s[9:3];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:120:16  */
  assign n63_o = t2s[2:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:121:15  */
  assign n65_o = {1'b0, s1};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:121:20  */
  assign n66_o = {n65_o, d2};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:121:28  */
  assign n67_o = ~d2;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:121:25  */
  assign n68_o = {n66_o, n67_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:121:36  */
  assign n70_o = {n68_o, 1'b1};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:122:20  */
  assign n71_o = t2s_h - u2;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:122:25  */
  assign n72_o = d2 ? n71_o : n73_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:123:20  */
  assign n73_o = t2s_h + u2;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:124:14  */
  assign n74_o = t4_h[5:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:124:27  */
  assign n75_o = {n74_o, t2s_l};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:125:13  */
  assign n76_o = {s1, d2};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:127:16  */
  assign n77_o = t3[8];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:127:10  */
  assign n78_o = ~n77_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:128:14  */
  assign n80_o = {t3, 1'b0};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:129:16  */
  assign n81_o = t3s[9:2];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:130:16  */
  assign n82_o = t3s[1:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:131:15  */
  assign n84_o = {1'b0, s2};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:131:20  */
  assign n85_o = {n84_o, d3};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:131:28  */
  assign n86_o = ~d3;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:131:25  */
  assign n87_o = {n85_o, n86_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:131:36  */
  assign n89_o = {n87_o, 1'b1};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:132:23  */
  assign n90_o = t3s_h_d1 - u3_d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:132:31  */
  assign n91_o = d3_d1 ? n90_o : n92_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:133:23  */
  assign n92_o = t3s_h_d1 + u3_d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:134:14  */
  assign n93_o = t5_h[6:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:134:27  */
  assign n94_o = {n93_o, t3s_l_d1};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:135:13  */
  assign n95_o = {s2, d3};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:137:16  */
  assign n96_o = t4[8];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:137:10  */
  assign n97_o = ~n96_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:138:14  */
  assign n99_o = {t4, 1'b0};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:139:16  */
  assign n100_o = t4s[9:1];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:140:16  */
  assign n101_o = t4s[0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:141:15  */
  assign n103_o = {1'b0, s3_d1};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:141:23  */
  assign n104_o = {n103_o, d4};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:141:31  */
  assign n105_o = ~d4;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:141:28  */
  assign n106_o = {n104_o, n105_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:141:39  */
  assign n108_o = {n106_o, 1'b1};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:142:20  */
  assign n109_o = t4s_h - u4;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:142:25  */
  assign n110_o = d4 ? n109_o : n111_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:143:20  */
  assign n111_o = t4s_h + u4;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:144:14  */
  assign n112_o = t6_h[7:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:144:27  */
  assign n113_o = {n112_o, t4s_l};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:145:16  */
  assign n114_o = {s3_d1, d4};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:147:16  */
  assign n115_o = t5[8];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:147:10  */
  assign n116_o = ~n115_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:148:14  */
  assign n118_o = {t5, 1'b0};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:150:15  */
  assign n120_o = {1'b0, s4};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:150:20  */
  assign n121_o = {n120_o, d5};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:150:28  */
  assign n122_o = ~d5;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:150:25  */
  assign n123_o = {n121_o, n122_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:150:36  */
  assign n125_o = {n123_o, 1'b1};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:151:20  */
  assign n126_o = t5s_h - u5;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:151:25  */
  assign n127_o = d5 ? n126_o : n128_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:152:20  */
  assign n128_o = t5s_h + u5;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:153:14  */
  assign n129_o = t7_h[8:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:154:13  */
  assign n130_o = {s4, d5};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:155:16  */
  assign n131_o = t6[8];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:155:10  */
  assign n132_o = ~n131_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:156:13  */
  assign n133_o = {s5, d7};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:157:12  */
  assign n134_o = mr[5:1];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:158:15  */
  assign n135_o = mr[0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:159:39  */
  assign n137_o = {4'b0000, round};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:159:16  */
  assign n138_o = fr + n137_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:160:19  */
  assign n139_o = {ern1_d1, frrnd};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:163:21  */
  assign n142_o = xsx == 3'b010;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:164:21  */
  assign n145_o = xsx == 3'b100;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:165:21  */
  assign n148_o = xsx == 3'b000;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:166:21  */
  assign n151_o = xsx == 3'b001;
  assign n153_o = {n151_o, n148_o, n145_o, n142_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:162:4  */
  always @*
    case (n153_o)
      4'b1000: n154_o = 3'b001;
      4'b0100: n154_o = 3'b000;
      4'b0010: n154_o = 3'b100;
      4'b0001: n154_o = 3'b010;
      default: n154_o = 3'b110;
    endcase
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:168:16  */
  assign n155_o = {xsr_d1, rn2};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:86:10  */
  always @(posedge clk)
    n156_q <= ern1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:86:10  */
  always @(posedge clk)
    n157_q <= d3;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:86:10  */
  always @(posedge clk)
    n158_q <= t3s_h;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:86:10  */
  always @(posedge clk)
    n159_q <= t3s_l;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:86:10  */
  always @(posedge clk)
    n160_q <= u3;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:86:10  */
  always @(posedge clk)
    n161_q <= s3;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_5.vhdl:86:10  */
  always @(posedge clk)
    n162_q <= xsr;
endmodule

