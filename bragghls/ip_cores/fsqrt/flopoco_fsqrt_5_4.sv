module fsqrt#(parameter ID=1)
  (input  clk,
   input  [11:0] X,
   output [11:0] R);
  wire [3:0] fracx;
  wire [4:0] ern0;
  wire [2:0] xsx;
  wire [4:0] ern1;
  wire [4:0] ern1_d1;
  wire [7:0] fracxnorm;
  wire [1:0] s0;
  wire [7:0] t1;
  wire d1;
  wire [8:0] t1s;
  wire [5:0] t1s_h;
  wire [2:0] t1s_l;
  wire [5:0] u1;
  wire [5:0] t3_h;
  wire [7:0] t2;
  wire [2:0] s1;
  wire d2;
  wire [8:0] t2s;
  wire [6:0] t2s_h;
  wire [1:0] t2s_l;
  wire [6:0] u2;
  wire [6:0] t4_h;
  wire [7:0] t3;
  wire [3:0] s2;
  wire d3;
  wire d3_d1;
  wire [8:0] t3s;
  wire [7:0] t3s_h;
  wire [7:0] t3s_h_d1;
  wire t3s_l;
  wire t3s_l_d1;
  wire [7:0] u3;
  wire [7:0] u3_d1;
  wire [7:0] t5_h;
  wire [7:0] t4;
  wire [4:0] s3;
  wire [4:0] s3_d1;
  wire d4;
  wire [8:0] t4s;
  wire [8:0] t4s_h;
  wire [8:0] u4;
  wire [8:0] t6_h;
  wire [7:0] t5;
  wire [5:0] s4;
  wire d6;
  wire [6:0] mr;
  wire [3:0] fr;
  wire round;
  wire [3:0] frrnd;
  wire [8:0] rn2;
  wire [2:0] xsr;
  wire [2:0] xsr_d1;
  wire [3:0] n12_o;
  wire [3:0] n13_o;
  wire [4:0] n15_o;
  wire [2:0] n16_o;
  wire [4:0] n18_o;
  wire n19_o;
  wire [4:0] n20_o;
  wire [4:0] n21_o;
  wire [4:0] n23_o;
  wire [7:0] n25_o;
  wire n26_o;
  wire n27_o;
  wire [7:0] n28_o;
  wire [5:0] n30_o;
  wire [7:0] n32_o;
  wire [3:0] n34_o;
  wire [3:0] n36_o;
  wire [3:0] n37_o;
  wire [7:0] n38_o;
  wire n39_o;
  wire n40_o;
  wire [8:0] n42_o;
  wire [5:0] n43_o;
  wire [2:0] n44_o;
  wire [2:0] n46_o;
  wire [3:0] n47_o;
  wire n48_o;
  wire [4:0] n49_o;
  wire [5:0] n51_o;
  wire [5:0] n52_o;
  wire [5:0] n53_o;
  wire [5:0] n54_o;
  wire [4:0] n55_o;
  wire [7:0] n56_o;
  wire [2:0] n57_o;
  wire n58_o;
  wire n59_o;
  wire [8:0] n61_o;
  wire [6:0] n62_o;
  wire [1:0] n63_o;
  wire [3:0] n65_o;
  wire [4:0] n66_o;
  wire n67_o;
  wire [5:0] n68_o;
  wire [6:0] n70_o;
  wire [6:0] n71_o;
  wire [6:0] n72_o;
  wire [6:0] n73_o;
  wire [5:0] n74_o;
  wire [7:0] n75_o;
  wire [3:0] n76_o;
  wire n77_o;
  wire n78_o;
  wire [8:0] n80_o;
  wire [7:0] n81_o;
  wire n82_o;
  wire [4:0] n84_o;
  wire [5:0] n85_o;
  wire n86_o;
  wire [6:0] n87_o;
  wire [7:0] n89_o;
  wire [7:0] n90_o;
  wire [7:0] n91_o;
  wire [7:0] n92_o;
  wire [6:0] n93_o;
  wire [7:0] n94_o;
  wire [4:0] n95_o;
  wire n96_o;
  wire n97_o;
  wire [8:0] n99_o;
  wire [5:0] n101_o;
  wire [6:0] n102_o;
  wire n103_o;
  wire [7:0] n104_o;
  wire [8:0] n106_o;
  wire [8:0] n107_o;
  wire [8:0] n108_o;
  wire [8:0] n109_o;
  wire [7:0] n110_o;
  wire [5:0] n111_o;
  wire n112_o;
  wire n113_o;
  wire [6:0] n114_o;
  wire [3:0] n115_o;
  wire n116_o;
  wire [3:0] n118_o;
  wire [3:0] n119_o;
  wire [8:0] n120_o;
  wire n123_o;
  wire n126_o;
  wire n129_o;
  wire n132_o;
  wire [3:0] n134_o;
  reg [2:0] n135_o;
  wire [11:0] n136_o;
  reg [4:0] n137_q;
  reg n138_q;
  reg [7:0] n139_q;
  reg n140_q;
  reg [7:0] n141_q;
  reg [4:0] n142_q;
  reg [2:0] n143_q;
  assign R = n136_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:30:8  */
  assign fracx = n12_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:31:8  */
  assign ern0 = n15_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:32:8  */
  assign xsx = n16_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:33:8  */
  assign ern1 = n21_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:33:14  */
  assign ern1_d1 = n137_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:34:8  */
  assign fracxnorm = n28_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:35:8  */
  assign s0 = 2'b01; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:36:8  */
  assign t1 = n38_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:37:8  */
  assign d1 = n40_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:38:8  */
  assign t1s = n42_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:39:8  */
  assign t1s_h = n43_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:40:8  */
  assign t1s_l = n44_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:41:8  */
  assign u1 = n51_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:42:8  */
  assign t3_h = n53_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:43:8  */
  assign t2 = n56_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:44:8  */
  assign s1 = n57_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:45:8  */
  assign d2 = n59_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:46:8  */
  assign t2s = n61_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:47:8  */
  assign t2s_h = n62_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:48:8  */
  assign t2s_l = n63_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:49:8  */
  assign u2 = n70_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:50:8  */
  assign t4_h = n72_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:51:8  */
  assign t3 = n75_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:52:8  */
  assign s2 = n76_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:53:8  */
  assign d3 = n78_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:53:12  */
  assign d3_d1 = n138_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:54:8  */
  assign t3s = n80_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:55:8  */
  assign t3s_h = n81_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:55:15  */
  assign t3s_h_d1 = n139_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:56:8  */
  assign t3s_l = n82_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:56:15  */
  assign t3s_l_d1 = n140_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:57:8  */
  assign u3 = n89_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:57:12  */
  assign u3_d1 = n141_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:58:8  */
  assign t5_h = n91_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:59:8  */
  assign t4 = n94_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:60:8  */
  assign s3 = n95_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:60:12  */
  assign s3_d1 = n142_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:61:8  */
  assign d4 = n97_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:131:16  */
  assign t4s = n99_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:63:8  */
  assign t4s_h = t4s; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:64:8  */
  assign u4 = n106_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:65:8  */
  assign t6_h = n108_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:66:8  */
  assign t5 = n110_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:67:8  */
  assign s4 = n111_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:68:8  */
  assign d6 = n113_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:69:8  */
  assign mr = n114_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:70:8  */
  assign fr = n115_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:71:8  */
  assign round = n116_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:72:8  */
  assign frrnd = n119_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:73:8  */
  assign rn2 = n120_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:74:8  */
  assign xsr = n135_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:74:13  */
  assign xsr_d1 = n143_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:88:14  */
  assign n12_o = X[3:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:89:19  */
  assign n13_o = X[8:5];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:89:16  */
  assign n15_o = {1'b0, n13_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:90:12  */
  assign n16_o = X[11:9];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:91:17  */
  assign n18_o = ern0 + 5'b00111;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:91:51  */
  assign n19_o = X[4];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:91:48  */
  assign n20_o = {4'b0, n19_o};  //  uext
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:91:48  */
  assign n21_o = n18_o + n20_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:92:21  */
  assign n23_o = {1'b1, fracx};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:92:29  */
  assign n25_o = {n23_o, 3'b000};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:92:43  */
  assign n26_o = X[4];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:92:47  */
  assign n27_o = ~n26_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:92:37  */
  assign n28_o = n27_o ? n25_o : n32_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:93:15  */
  assign n30_o = {2'b01, fracx};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:93:22  */
  assign n32_o = {n30_o, 2'b00};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:95:29  */
  assign n34_o = fracxnorm[7:4];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:95:18  */
  assign n36_o = 4'b0111 + n34_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:95:54  */
  assign n37_o = fracxnorm[3:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:95:43  */
  assign n38_o = {n36_o, n37_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:99:16  */
  assign n39_o = t1[7];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:99:10  */
  assign n40_o = ~n39_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:100:14  */
  assign n42_o = {t1, 1'b0};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:101:16  */
  assign n43_o = t1s[8:3];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:102:16  */
  assign n44_o = t1s[2:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:103:15  */
  assign n46_o = {1'b0, s0};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:103:20  */
  assign n47_o = {n46_o, d1};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:103:28  */
  assign n48_o = ~d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:103:25  */
  assign n49_o = {n47_o, n48_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:103:36  */
  assign n51_o = {n49_o, 1'b1};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:104:20  */
  assign n52_o = t1s_h - u1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:104:25  */
  assign n53_o = d1 ? n52_o : n54_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:105:20  */
  assign n54_o = t1s_h + u1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:106:14  */
  assign n55_o = t3_h[4:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:106:27  */
  assign n56_o = {n55_o, t1s_l};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:107:13  */
  assign n57_o = {s0, d1};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:109:16  */
  assign n58_o = t2[7];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:109:10  */
  assign n59_o = ~n58_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:110:14  */
  assign n61_o = {t2, 1'b0};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:111:16  */
  assign n62_o = t2s[8:2];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:112:16  */
  assign n63_o = t2s[1:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:113:15  */
  assign n65_o = {1'b0, s1};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:113:20  */
  assign n66_o = {n65_o, d2};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:113:28  */
  assign n67_o = ~d2;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:113:25  */
  assign n68_o = {n66_o, n67_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:113:36  */
  assign n70_o = {n68_o, 1'b1};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:114:20  */
  assign n71_o = t2s_h - u2;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:114:25  */
  assign n72_o = d2 ? n71_o : n73_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:115:20  */
  assign n73_o = t2s_h + u2;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:116:14  */
  assign n74_o = t4_h[5:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:116:27  */
  assign n75_o = {n74_o, t2s_l};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:117:13  */
  assign n76_o = {s1, d2};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:119:16  */
  assign n77_o = t3[7];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:119:10  */
  assign n78_o = ~n77_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:120:14  */
  assign n80_o = {t3, 1'b0};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:121:16  */
  assign n81_o = t3s[8:1];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:122:16  */
  assign n82_o = t3s[0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:123:15  */
  assign n84_o = {1'b0, s2};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:123:20  */
  assign n85_o = {n84_o, d3};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:123:28  */
  assign n86_o = ~d3;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:123:25  */
  assign n87_o = {n85_o, n86_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:123:36  */
  assign n89_o = {n87_o, 1'b1};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:124:23  */
  assign n90_o = t3s_h_d1 - u3_d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:124:31  */
  assign n91_o = d3_d1 ? n90_o : n92_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:125:23  */
  assign n92_o = t3s_h_d1 + u3_d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:126:14  */
  assign n93_o = t5_h[6:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:126:27  */
  assign n94_o = {n93_o, t3s_l_d1};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:127:13  */
  assign n95_o = {s2, d3};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:129:16  */
  assign n96_o = t4[7];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:129:10  */
  assign n97_o = ~n96_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:130:14  */
  assign n99_o = {t4, 1'b0};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:132:15  */
  assign n101_o = {1'b0, s3_d1};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:132:23  */
  assign n102_o = {n101_o, d4};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:132:31  */
  assign n103_o = ~d4;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:132:28  */
  assign n104_o = {n102_o, n103_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:132:39  */
  assign n106_o = {n104_o, 1'b1};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:133:20  */
  assign n107_o = t4s_h - u4;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:133:25  */
  assign n108_o = d4 ? n107_o : n109_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:134:20  */
  assign n109_o = t4s_h + u4;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:135:14  */
  assign n110_o = t6_h[7:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:136:16  */
  assign n111_o = {s3_d1, d4};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:137:16  */
  assign n112_o = t5[7];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:137:10  */
  assign n113_o = ~n112_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:138:13  */
  assign n114_o = {s4, d6};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:139:12  */
  assign n115_o = mr[4:1];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:140:15  */
  assign n116_o = mr[0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:141:39  */
  assign n118_o = {3'b000, round};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:141:16  */
  assign n119_o = fr + n118_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:142:19  */
  assign n120_o = {ern1_d1, frrnd};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:145:21  */
  assign n123_o = xsx == 3'b010;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:146:21  */
  assign n126_o = xsx == 3'b100;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:147:21  */
  assign n129_o = xsx == 3'b000;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:148:21  */
  assign n132_o = xsx == 3'b001;
  assign n134_o = {n132_o, n129_o, n126_o, n123_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:144:4  */
  always @*
    case (n134_o)
      4'b1000: n135_o = 3'b001;
      4'b0100: n135_o = 3'b000;
      4'b0010: n135_o = 3'b100;
      4'b0001: n135_o = 3'b010;
      default: n135_o = 3'b110;
    endcase
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:150:16  */
  assign n136_o = {xsr_d1, rn2};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:78:10  */
  always @(posedge clk)
    n137_q <= ern1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:78:10  */
  always @(posedge clk)
    n138_q <= d3;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:78:10  */
  always @(posedge clk)
    n139_q <= t3s_h;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:78:10  */
  always @(posedge clk)
    n140_q <= t3s_l;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:78:10  */
  always @(posedge clk)
    n141_q <= u3;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:78:10  */
  always @(posedge clk)
    n142_q <= s3;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_4.vhdl:78:10  */
  always @(posedge clk)
    n143_q <= xsr;
endmodule

