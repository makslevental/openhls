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
  assign fracx = n12_o; // (signal)
  assign ern0 = n15_o; // (signal)
  assign xsx = n16_o; // (signal)
  assign ern1 = n21_o; // (signal)
  assign ern1_d1 = n137_q; // (signal)
  assign fracxnorm = n28_o; // (signal)
  assign s0 = 2'b01; // (signal)
  assign t1 = n38_o; // (signal)
  assign d1 = n40_o; // (signal)
  assign t1s = n42_o; // (signal)
  assign t1s_h = n43_o; // (signal)
  assign t1s_l = n44_o; // (signal)
  assign u1 = n51_o; // (signal)
  assign t3_h = n53_o; // (signal)
  assign t2 = n56_o; // (signal)
  assign s1 = n57_o; // (signal)
  assign d2 = n59_o; // (signal)
  assign t2s = n61_o; // (signal)
  assign t2s_h = n62_o; // (signal)
  assign t2s_l = n63_o; // (signal)
  assign u2 = n70_o; // (signal)
  assign t4_h = n72_o; // (signal)
  assign t3 = n75_o; // (signal)
  assign s2 = n76_o; // (signal)
  assign d3 = n78_o; // (signal)
  assign d3_d1 = n138_q; // (signal)
  assign t3s = n80_o; // (signal)
  assign t3s_h = n81_o; // (signal)
  assign t3s_h_d1 = n139_q; // (signal)
  assign t3s_l = n82_o; // (signal)
  assign t3s_l_d1 = n140_q; // (signal)
  assign u3 = n89_o; // (signal)
  assign u3_d1 = n141_q; // (signal)
  assign t5_h = n91_o; // (signal)
  assign t4 = n94_o; // (signal)
  assign s3 = n95_o; // (signal)
  assign s3_d1 = n142_q; // (signal)
  assign d4 = n97_o; // (signal)
  assign t4s = n99_o; // (signal)
  assign t4s_h = t4s; // (signal)
  assign u4 = n106_o; // (signal)
  assign t6_h = n108_o; // (signal)
  assign t5 = n110_o; // (signal)
  assign s4 = n111_o; // (signal)
  assign d6 = n113_o; // (signal)
  assign mr = n114_o; // (signal)
  assign fr = n115_o; // (signal)
  assign round = n116_o; // (signal)
  assign frrnd = n119_o; // (signal)
  assign rn2 = n120_o; // (signal)
  assign xsr = n135_o; // (signal)
  assign xsr_d1 = n143_q; // (signal)
  assign n12_o = X[3:0];
  assign n13_o = X[8:5];
  assign n15_o = {1'b0, n13_o};
  assign n16_o = X[11:9];
  assign n18_o = ern0 + 5'b00111;
  assign n19_o = X[4];
  assign n20_o = {4'b0, n19_o};  //  uext
  assign n21_o = n18_o + n20_o;
  assign n23_o = {1'b1, fracx};
  assign n25_o = {n23_o, 3'b000};
  assign n26_o = X[4];
  assign n27_o = ~n26_o;
  assign n28_o = n27_o ? n25_o : n32_o;
  assign n30_o = {2'b01, fracx};
  assign n32_o = {n30_o, 2'b00};
  assign n34_o = fracxnorm[7:4];
  assign n36_o = 4'b0111 + n34_o;
  assign n37_o = fracxnorm[3:0];
  assign n38_o = {n36_o, n37_o};
  assign n39_o = t1[7];
  assign n40_o = ~n39_o;
  assign n42_o = {t1, 1'b0};
  assign n43_o = t1s[8:3];
  assign n44_o = t1s[2:0];
  assign n46_o = {1'b0, s0};
  assign n47_o = {n46_o, d1};
  assign n48_o = ~d1;
  assign n49_o = {n47_o, n48_o};
  assign n51_o = {n49_o, 1'b1};
  assign n52_o = t1s_h - u1;
  assign n53_o = d1 ? n52_o : n54_o;
  assign n54_o = t1s_h + u1;
  assign n55_o = t3_h[4:0];
  assign n56_o = {n55_o, t1s_l};
  assign n57_o = {s0, d1};
  assign n58_o = t2[7];
  assign n59_o = ~n58_o;
  assign n61_o = {t2, 1'b0};
  assign n62_o = t2s[8:2];
  assign n63_o = t2s[1:0];
  assign n65_o = {1'b0, s1};
  assign n66_o = {n65_o, d2};
  assign n67_o = ~d2;
  assign n68_o = {n66_o, n67_o};
  assign n70_o = {n68_o, 1'b1};
  assign n71_o = t2s_h - u2;
  assign n72_o = d2 ? n71_o : n73_o;
  assign n73_o = t2s_h + u2;
  assign n74_o = t4_h[5:0];
  assign n75_o = {n74_o, t2s_l};
  assign n76_o = {s1, d2};
  assign n77_o = t3[7];
  assign n78_o = ~n77_o;
  assign n80_o = {t3, 1'b0};
  assign n81_o = t3s[8:1];
  assign n82_o = t3s[0];
  assign n84_o = {1'b0, s2};
  assign n85_o = {n84_o, d3};
  assign n86_o = ~d3;
  assign n87_o = {n85_o, n86_o};
  assign n89_o = {n87_o, 1'b1};
  assign n90_o = t3s_h_d1 - u3_d1;
  assign n91_o = d3_d1 ? n90_o : n92_o;
  assign n92_o = t3s_h_d1 + u3_d1;
  assign n93_o = t5_h[6:0];
  assign n94_o = {n93_o, t3s_l_d1};
  assign n95_o = {s2, d3};
  assign n96_o = t4[7];
  assign n97_o = ~n96_o;
  assign n99_o = {t4, 1'b0};
  assign n101_o = {1'b0, s3_d1};
  assign n102_o = {n101_o, d4};
  assign n103_o = ~d4;
  assign n104_o = {n102_o, n103_o};
  assign n106_o = {n104_o, 1'b1};
  assign n107_o = t4s_h - u4;
  assign n108_o = d4 ? n107_o : n109_o;
  assign n109_o = t4s_h + u4;
  assign n110_o = t6_h[7:0];
  assign n111_o = {s3_d1, d4};
  assign n112_o = t5[7];
  assign n113_o = ~n112_o;
  assign n114_o = {s4, d6};
  assign n115_o = mr[4:1];
  assign n116_o = mr[0];
  assign n118_o = {3'b000, round};
  assign n119_o = fr + n118_o;
  assign n120_o = {ern1_d1, frrnd};
  assign n123_o = xsx == 3'b010;
  assign n126_o = xsx == 3'b100;
  assign n129_o = xsx == 3'b000;
  assign n132_o = xsx == 3'b001;
  assign n134_o = {n132_o, n129_o, n126_o, n123_o};
  always @*
    case (n134_o)
      4'b1000: n135_o = 3'b001;
      4'b0100: n135_o = 3'b000;
      4'b0010: n135_o = 3'b100;
      4'b0001: n135_o = 3'b010;
      default: n135_o = 3'b110;
    endcase
  assign n136_o = {xsr_d1, rn2};
  always @(posedge clk)
    n137_q <= ern1;
  always @(posedge clk)
    n138_q <= d3;
  always @(posedge clk)
    n139_q <= t3s_h;
  always @(posedge clk)
    n140_q <= t3s_l;
  always @(posedge clk)
    n141_q <= u3;
  always @(posedge clk)
    n142_q <= s3;
  always @(posedge clk)
    n143_q <= xsr;
endmodule

