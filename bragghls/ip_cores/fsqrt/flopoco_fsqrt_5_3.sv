module fsqrt#(parameter ID=1)
  (input  clk,
   input  [10:0] X,
   output [10:0] R);
  wire [2:0] fracx;
  wire [4:0] ern0;
  wire [2:0] xsx;
  wire [4:0] ern1;
  wire [4:0] ern1_d1;
  wire [6:0] fracxnorm;
  wire [1:0] s0;
  wire [6:0] t1;
  wire d1;
  wire [7:0] t1s;
  wire [5:0] t1s_h;
  wire [1:0] t1s_l;
  wire [5:0] u1;
  wire [5:0] t3_h;
  wire [6:0] t2;
  wire [2:0] s1;
  wire d2;
  wire [7:0] t2s;
  wire [6:0] t2s_h;
  wire t2s_l;
  wire [6:0] u2;
  wire [6:0] t4_h;
  wire [6:0] t3;
  wire [3:0] s2;
  wire d3;
  wire d3_d1;
  wire [7:0] t3s;
  wire [7:0] t3s_h;
  wire [7:0] t3s_h_d1;
  wire [7:0] u3;
  wire [7:0] u3_d1;
  wire [7:0] t5_h;
  wire [6:0] t4;
  wire [4:0] s3;
  wire [4:0] s3_d1;
  wire d5;
  wire [5:0] mr;
  wire [2:0] fr;
  wire round;
  wire [2:0] frrnd;
  wire [7:0] rn2;
  wire [2:0] xsr;
  wire [2:0] xsr_d1;
  wire [2:0] n11_o;
  wire [3:0] n12_o;
  wire [4:0] n14_o;
  wire [2:0] n15_o;
  wire [4:0] n17_o;
  wire n18_o;
  wire [4:0] n19_o;
  wire [4:0] n20_o;
  wire [3:0] n22_o;
  wire [6:0] n24_o;
  wire n25_o;
  wire n26_o;
  wire [6:0] n27_o;
  wire [4:0] n29_o;
  wire [6:0] n31_o;
  wire [3:0] n33_o;
  wire [3:0] n35_o;
  wire [2:0] n36_o;
  wire [6:0] n37_o;
  wire n38_o;
  wire n39_o;
  wire [7:0] n41_o;
  wire [5:0] n42_o;
  wire [1:0] n43_o;
  wire [2:0] n45_o;
  wire [3:0] n46_o;
  wire n47_o;
  wire [4:0] n48_o;
  wire [5:0] n50_o;
  wire [5:0] n51_o;
  wire [5:0] n52_o;
  wire [5:0] n53_o;
  wire [4:0] n54_o;
  wire [6:0] n55_o;
  wire [2:0] n56_o;
  wire n57_o;
  wire n58_o;
  wire [7:0] n60_o;
  wire [6:0] n61_o;
  wire n62_o;
  wire [3:0] n64_o;
  wire [4:0] n65_o;
  wire n66_o;
  wire [5:0] n67_o;
  wire [6:0] n69_o;
  wire [6:0] n70_o;
  wire [6:0] n71_o;
  wire [6:0] n72_o;
  wire [5:0] n73_o;
  wire [6:0] n74_o;
  wire [3:0] n75_o;
  wire n76_o;
  wire n77_o;
  wire [7:0] n79_o;
  wire [4:0] n81_o;
  wire [5:0] n82_o;
  wire n83_o;
  wire [6:0] n84_o;
  wire [7:0] n86_o;
  wire [7:0] n87_o;
  wire [7:0] n88_o;
  wire [7:0] n89_o;
  wire [6:0] n90_o;
  wire [4:0] n91_o;
  wire n92_o;
  wire n93_o;
  wire [5:0] n94_o;
  wire [2:0] n95_o;
  wire n96_o;
  wire [2:0] n98_o;
  wire [2:0] n99_o;
  wire [7:0] n100_o;
  wire n103_o;
  wire n106_o;
  wire n109_o;
  wire n112_o;
  wire [3:0] n114_o;
  reg [2:0] n115_o;
  wire [10:0] n116_o;
  reg [4:0] n117_q;
  reg n118_q;
  reg [7:0] n119_q;
  reg [7:0] n120_q;
  reg [4:0] n121_q;
  reg [2:0] n122_q;
  assign R = n116_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_3.vhdl:30:8  */
  assign fracx = n11_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_3.vhdl:31:8  */
  assign ern0 = n14_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_3.vhdl:32:8  */
  assign xsx = n15_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_3.vhdl:33:8  */
  assign ern1 = n20_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_3.vhdl:33:14  */
  assign ern1_d1 = n117_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_3.vhdl:34:8  */
  assign fracxnorm = n27_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_3.vhdl:35:8  */
  assign s0 = 2'b01; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_3.vhdl:36:8  */
  assign t1 = n37_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_3.vhdl:37:8  */
  assign d1 = n39_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_3.vhdl:38:8  */
  assign t1s = n41_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_3.vhdl:39:8  */
  assign t1s_h = n42_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_3.vhdl:40:8  */
  assign t1s_l = n43_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_3.vhdl:41:8  */
  assign u1 = n50_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_3.vhdl:42:8  */
  assign t3_h = n52_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_3.vhdl:43:8  */
  assign t2 = n55_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_3.vhdl:44:8  */
  assign s1 = n56_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_3.vhdl:45:8  */
  assign d2 = n58_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_3.vhdl:46:8  */
  assign t2s = n60_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_3.vhdl:47:8  */
  assign t2s_h = n61_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_3.vhdl:48:8  */
  assign t2s_l = n62_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_3.vhdl:49:8  */
  assign u2 = n69_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_3.vhdl:50:8  */
  assign t4_h = n71_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_3.vhdl:51:8  */
  assign t3 = n74_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_3.vhdl:52:8  */
  assign s2 = n75_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_3.vhdl:53:8  */
  assign d3 = n77_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_3.vhdl:53:12  */
  assign d3_d1 = n118_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_3.vhdl:112:16  */
  assign t3s = n79_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_3.vhdl:55:8  */
  assign t3s_h = t3s; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_3.vhdl:55:15  */
  assign t3s_h_d1 = n119_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_3.vhdl:56:8  */
  assign u3 = n86_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_3.vhdl:56:12  */
  assign u3_d1 = n120_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_3.vhdl:57:8  */
  assign t5_h = n88_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_3.vhdl:58:8  */
  assign t4 = n90_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_3.vhdl:59:8  */
  assign s3 = n91_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_3.vhdl:59:12  */
  assign s3_d1 = n121_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_3.vhdl:60:8  */
  assign d5 = n93_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_3.vhdl:61:8  */
  assign mr = n94_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_3.vhdl:62:8  */
  assign fr = n95_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_3.vhdl:63:8  */
  assign round = n96_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_3.vhdl:64:8  */
  assign frrnd = n99_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_3.vhdl:65:8  */
  assign rn2 = n100_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_3.vhdl:66:8  */
  assign xsr = n115_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_3.vhdl:66:13  */
  assign xsr_d1 = n122_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_3.vhdl:79:14  */
  assign n11_o = X[2:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_3.vhdl:80:19  */
  assign n12_o = X[7:4];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_3.vhdl:80:16  */
  assign n14_o = {1'b0, n12_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_3.vhdl:81:12  */
  assign n15_o = X[10:8];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_3.vhdl:82:17  */
  assign n17_o = ern0 + 5'b00111;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_3.vhdl:82:51  */
  assign n18_o = X[3];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_3.vhdl:82:48  */
  assign n19_o = {4'b0, n18_o};  //  uext
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_3.vhdl:82:48  */
  assign n20_o = n17_o + n19_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_3.vhdl:83:21  */
  assign n22_o = {1'b1, fracx};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_3.vhdl:83:29  */
  assign n24_o = {n22_o, 3'b000};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_3.vhdl:83:43  */
  assign n25_o = X[3];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_3.vhdl:83:47  */
  assign n26_o = ~n25_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_3.vhdl:83:37  */
  assign n27_o = n26_o ? n24_o : n31_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_3.vhdl:84:15  */
  assign n29_o = {2'b01, fracx};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_3.vhdl:84:22  */
  assign n31_o = {n29_o, 2'b00};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_3.vhdl:86:29  */
  assign n33_o = fracxnorm[6:3];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_3.vhdl:86:18  */
  assign n35_o = 4'b0111 + n33_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_3.vhdl:86:54  */
  assign n36_o = fracxnorm[2:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_3.vhdl:86:43  */
  assign n37_o = {n35_o, n36_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_3.vhdl:90:16  */
  assign n38_o = t1[6];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_3.vhdl:90:10  */
  assign n39_o = ~n38_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_3.vhdl:91:14  */
  assign n41_o = {t1, 1'b0};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_3.vhdl:92:16  */
  assign n42_o = t1s[7:2];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_3.vhdl:93:16  */
  assign n43_o = t1s[1:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_3.vhdl:94:15  */
  assign n45_o = {1'b0, s0};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_3.vhdl:94:20  */
  assign n46_o = {n45_o, d1};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_3.vhdl:94:28  */
  assign n47_o = ~d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_3.vhdl:94:25  */
  assign n48_o = {n46_o, n47_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_3.vhdl:94:36  */
  assign n50_o = {n48_o, 1'b1};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_3.vhdl:95:20  */
  assign n51_o = t1s_h - u1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_3.vhdl:95:25  */
  assign n52_o = d1 ? n51_o : n53_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_3.vhdl:96:20  */
  assign n53_o = t1s_h + u1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_3.vhdl:97:14  */
  assign n54_o = t3_h[4:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_3.vhdl:97:27  */
  assign n55_o = {n54_o, t1s_l};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_3.vhdl:98:13  */
  assign n56_o = {s0, d1};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_3.vhdl:100:16  */
  assign n57_o = t2[6];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_3.vhdl:100:10  */
  assign n58_o = ~n57_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_3.vhdl:101:14  */
  assign n60_o = {t2, 1'b0};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_3.vhdl:102:16  */
  assign n61_o = t2s[7:1];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_3.vhdl:103:16  */
  assign n62_o = t2s[0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_3.vhdl:104:15  */
  assign n64_o = {1'b0, s1};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_3.vhdl:104:20  */
  assign n65_o = {n64_o, d2};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_3.vhdl:104:28  */
  assign n66_o = ~d2;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_3.vhdl:104:25  */
  assign n67_o = {n65_o, n66_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_3.vhdl:104:36  */
  assign n69_o = {n67_o, 1'b1};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_3.vhdl:105:20  */
  assign n70_o = t2s_h - u2;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_3.vhdl:105:25  */
  assign n71_o = d2 ? n70_o : n72_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_3.vhdl:106:20  */
  assign n72_o = t2s_h + u2;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_3.vhdl:107:14  */
  assign n73_o = t4_h[5:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_3.vhdl:107:27  */
  assign n74_o = {n73_o, t2s_l};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_3.vhdl:108:13  */
  assign n75_o = {s1, d2};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_3.vhdl:110:16  */
  assign n76_o = t3[6];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_3.vhdl:110:10  */
  assign n77_o = ~n76_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_3.vhdl:111:14  */
  assign n79_o = {t3, 1'b0};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_3.vhdl:113:15  */
  assign n81_o = {1'b0, s2};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_3.vhdl:113:20  */
  assign n82_o = {n81_o, d3};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_3.vhdl:113:28  */
  assign n83_o = ~d3;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_3.vhdl:113:25  */
  assign n84_o = {n82_o, n83_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_3.vhdl:113:36  */
  assign n86_o = {n84_o, 1'b1};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_3.vhdl:114:23  */
  assign n87_o = t3s_h_d1 - u3_d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_3.vhdl:114:31  */
  assign n88_o = d3_d1 ? n87_o : n89_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_3.vhdl:115:23  */
  assign n89_o = t3s_h_d1 + u3_d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_3.vhdl:116:14  */
  assign n90_o = t5_h[6:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_3.vhdl:117:13  */
  assign n91_o = {s2, d3};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_3.vhdl:118:16  */
  assign n92_o = t4[6];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_3.vhdl:118:10  */
  assign n93_o = ~n92_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_3.vhdl:119:16  */
  assign n94_o = {s3_d1, d5};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_3.vhdl:120:12  */
  assign n95_o = mr[3:1];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_3.vhdl:121:15  */
  assign n96_o = mr[0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_3.vhdl:122:39  */
  assign n98_o = {2'b00, round};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_3.vhdl:122:16  */
  assign n99_o = fr + n98_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_3.vhdl:123:19  */
  assign n100_o = {ern1_d1, frrnd};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_3.vhdl:126:21  */
  assign n103_o = xsx == 3'b010;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_3.vhdl:127:21  */
  assign n106_o = xsx == 3'b100;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_3.vhdl:128:21  */
  assign n109_o = xsx == 3'b000;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_3.vhdl:129:21  */
  assign n112_o = xsx == 3'b001;
  assign n114_o = {n112_o, n109_o, n106_o, n103_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_3.vhdl:125:4  */
  always @*
    case (n114_o)
      4'b1000: n115_o = 3'b001;
      4'b0100: n115_o = 3'b000;
      4'b0010: n115_o = 3'b100;
      4'b0001: n115_o = 3'b010;
      default: n115_o = 3'b110;
    endcase
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_3.vhdl:131:16  */
  assign n116_o = {xsr_d1, rn2};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_3.vhdl:70:10  */
  always @(posedge clk)
    n117_q <= ern1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_3.vhdl:70:10  */
  always @(posedge clk)
    n118_q <= d3;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_3.vhdl:70:10  */
  always @(posedge clk)
    n119_q <= t3s_h;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_3.vhdl:70:10  */
  always @(posedge clk)
    n120_q <= u3;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_3.vhdl:70:10  */
  always @(posedge clk)
    n121_q <= s3;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsqrt_5_3.vhdl:70:10  */
  always @(posedge clk)
    n122_q <= xsr;
endmodule

