module fsqrt#(parameter ID=1)
  (input  clk,
   input  [16:0] X,
   output [16:0] R);
  wire [6:0] fracx;
  wire [6:0] ern0;
  wire [2:0] xsx;
  wire [6:0] ern1;
  wire [6:0] ern1_d1;
  wire [6:0] ern1_d2;
  wire [10:0] fracxnorm;
  wire [1:0] s0;
  wire [10:0] t1;
  wire d1;
  wire [11:0] t1s;
  wire [5:0] t1s_h;
  wire [5:0] t1s_l;
  wire [5:0] u1;
  wire [5:0] t3_h;
  wire [10:0] t2;
  wire [2:0] s1;
  wire d2;
  wire [11:0] t2s;
  wire [6:0] t2s_h;
  wire [4:0] t2s_l;
  wire [6:0] u2;
  wire [6:0] t4_h;
  wire [10:0] t3;
  wire [3:0] s2;
  wire d3;
  wire d3_d1;
  wire [11:0] t3s;
  wire [7:0] t3s_h;
  wire [7:0] t3s_h_d1;
  wire [3:0] t3s_l;
  wire [3:0] t3s_l_d1;
  wire [7:0] u3;
  wire [7:0] u3_d1;
  wire [7:0] t5_h;
  wire [10:0] t4;
  wire [4:0] s3;
  wire [4:0] s3_d1;
  wire d4;
  wire [11:0] t4s;
  wire [8:0] t4s_h;
  wire [2:0] t4s_l;
  wire [8:0] u4;
  wire [8:0] t6_h;
  wire [10:0] t5;
  wire [5:0] s4;
  wire d5;
  wire [11:0] t5s;
  wire [9:0] t5s_h;
  wire [1:0] t5s_l;
  wire [9:0] u5;
  wire [9:0] t7_h;
  wire [10:0] t6;
  wire [6:0] s5;
  wire d6;
  wire [11:0] t6s;
  wire [10:0] t6s_h;
  wire t6s_l;
  wire [10:0] u6;
  wire [10:0] t8_h;
  wire [10:0] t7;
  wire [7:0] s6;
  wire d7;
  wire d7_d1;
  wire [11:0] t7s;
  wire [11:0] t7s_h;
  wire [11:0] t7s_h_d1;
  wire [11:0] u7;
  wire [11:0] u7_d1;
  wire [11:0] t9_h;
  wire [10:0] t8;
  wire [8:0] s7;
  wire [8:0] s7_d1;
  wire d9;
  wire [9:0] mr;
  wire [6:0] fr;
  wire round;
  wire [6:0] frrnd;
  wire [13:0] rn2;
  wire [2:0] xsr;
  wire [2:0] xsr_d1;
  wire [2:0] xsr_d2;
  wire [6:0] n18_o;
  wire [5:0] n19_o;
  wire [6:0] n21_o;
  wire [2:0] n22_o;
  wire [6:0] n24_o;
  wire n25_o;
  wire [6:0] n26_o;
  wire [6:0] n27_o;
  wire [7:0] n29_o;
  wire [10:0] n31_o;
  wire n32_o;
  wire n33_o;
  wire [10:0] n34_o;
  wire [8:0] n36_o;
  wire [10:0] n38_o;
  wire [3:0] n40_o;
  wire [3:0] n42_o;
  wire [6:0] n43_o;
  wire [10:0] n44_o;
  wire n45_o;
  wire n46_o;
  wire [11:0] n48_o;
  wire [5:0] n49_o;
  wire [5:0] n50_o;
  wire [2:0] n52_o;
  wire [3:0] n53_o;
  wire n54_o;
  wire [4:0] n55_o;
  wire [5:0] n57_o;
  wire [5:0] n58_o;
  wire [5:0] n59_o;
  wire [5:0] n60_o;
  wire [4:0] n61_o;
  wire [10:0] n62_o;
  wire [2:0] n63_o;
  wire n64_o;
  wire n65_o;
  wire [11:0] n67_o;
  wire [6:0] n68_o;
  wire [4:0] n69_o;
  wire [3:0] n71_o;
  wire [4:0] n72_o;
  wire n73_o;
  wire [5:0] n74_o;
  wire [6:0] n76_o;
  wire [6:0] n77_o;
  wire [6:0] n78_o;
  wire [6:0] n79_o;
  wire [5:0] n80_o;
  wire [10:0] n81_o;
  wire [3:0] n82_o;
  wire n83_o;
  wire n84_o;
  wire [11:0] n86_o;
  wire [7:0] n87_o;
  wire [3:0] n88_o;
  wire [4:0] n90_o;
  wire [5:0] n91_o;
  wire n92_o;
  wire [6:0] n93_o;
  wire [7:0] n95_o;
  wire [7:0] n96_o;
  wire [7:0] n97_o;
  wire [7:0] n98_o;
  wire [6:0] n99_o;
  wire [10:0] n100_o;
  wire [4:0] n101_o;
  wire n102_o;
  wire n103_o;
  wire [11:0] n105_o;
  wire [8:0] n106_o;
  wire [2:0] n107_o;
  wire [5:0] n109_o;
  wire [6:0] n110_o;
  wire n111_o;
  wire [7:0] n112_o;
  wire [8:0] n114_o;
  wire [8:0] n115_o;
  wire [8:0] n116_o;
  wire [8:0] n117_o;
  wire [7:0] n118_o;
  wire [10:0] n119_o;
  wire [5:0] n120_o;
  wire n121_o;
  wire n122_o;
  wire [11:0] n124_o;
  wire [9:0] n125_o;
  wire [1:0] n126_o;
  wire [6:0] n128_o;
  wire [7:0] n129_o;
  wire n130_o;
  wire [8:0] n131_o;
  wire [9:0] n133_o;
  wire [9:0] n134_o;
  wire [9:0] n135_o;
  wire [9:0] n136_o;
  wire [8:0] n137_o;
  wire [10:0] n138_o;
  wire [6:0] n139_o;
  wire n140_o;
  wire n141_o;
  wire [11:0] n143_o;
  wire [10:0] n144_o;
  wire n145_o;
  wire [7:0] n147_o;
  wire [8:0] n148_o;
  wire n149_o;
  wire [9:0] n150_o;
  wire [10:0] n152_o;
  wire [10:0] n153_o;
  wire [10:0] n154_o;
  wire [10:0] n155_o;
  wire [9:0] n156_o;
  wire [10:0] n157_o;
  wire [7:0] n158_o;
  wire n159_o;
  wire n160_o;
  wire [11:0] n162_o;
  wire [8:0] n164_o;
  wire [9:0] n165_o;
  wire n166_o;
  wire [10:0] n167_o;
  wire [11:0] n169_o;
  wire [11:0] n170_o;
  wire [11:0] n171_o;
  wire [11:0] n172_o;
  wire [10:0] n173_o;
  wire [8:0] n174_o;
  wire n175_o;
  wire n176_o;
  wire [9:0] n177_o;
  wire [6:0] n178_o;
  wire n179_o;
  wire [6:0] n181_o;
  wire [6:0] n182_o;
  wire [13:0] n183_o;
  wire n186_o;
  wire n189_o;
  wire n192_o;
  wire n195_o;
  wire [3:0] n197_o;
  reg [2:0] n198_o;
  wire [16:0] n199_o;
  reg [6:0] n200_q;
  reg [6:0] n201_q;
  reg n202_q;
  reg [7:0] n203_q;
  reg [3:0] n204_q;
  reg [7:0] n205_q;
  reg [4:0] n206_q;
  reg n207_q;
  reg [11:0] n208_q;
  reg [11:0] n209_q;
  reg [8:0] n210_q;
  reg [2:0] n211_q;
  reg [2:0] n212_q;
  assign R = n199_o;
  assign fracx = n18_o; // (signal)
  assign ern0 = n21_o; // (signal)
  assign xsx = n22_o; // (signal)
  assign ern1 = n27_o; // (signal)
  assign ern1_d1 = n200_q; // (signal)
  assign ern1_d2 = n201_q; // (signal)
  assign fracxnorm = n34_o; // (signal)
  assign s0 = 2'b01; // (signal)
  assign t1 = n44_o; // (signal)
  assign d1 = n46_o; // (signal)
  assign t1s = n48_o; // (signal)
  assign t1s_h = n49_o; // (signal)
  assign t1s_l = n50_o; // (signal)
  assign u1 = n57_o; // (signal)
  assign t3_h = n59_o; // (signal)
  assign t2 = n62_o; // (signal)
  assign s1 = n63_o; // (signal)
  assign d2 = n65_o; // (signal)
  assign t2s = n67_o; // (signal)
  assign t2s_h = n68_o; // (signal)
  assign t2s_l = n69_o; // (signal)
  assign u2 = n76_o; // (signal)
  assign t4_h = n78_o; // (signal)
  assign t3 = n81_o; // (signal)
  assign s2 = n82_o; // (signal)
  assign d3 = n84_o; // (signal)
  assign d3_d1 = n202_q; // (signal)
  assign t3s = n86_o; // (signal)
  assign t3s_h = n87_o; // (signal)
  assign t3s_h_d1 = n203_q; // (signal)
  assign t3s_l = n88_o; // (signal)
  assign t3s_l_d1 = n204_q; // (signal)
  assign u3 = n95_o; // (signal)
  assign u3_d1 = n205_q; // (signal)
  assign t5_h = n97_o; // (signal)
  assign t4 = n100_o; // (signal)
  assign s3 = n101_o; // (signal)
  assign s3_d1 = n206_q; // (signal)
  assign d4 = n103_o; // (signal)
  assign t4s = n105_o; // (signal)
  assign t4s_h = n106_o; // (signal)
  assign t4s_l = n107_o; // (signal)
  assign u4 = n114_o; // (signal)
  assign t6_h = n116_o; // (signal)
  assign t5 = n119_o; // (signal)
  assign s4 = n120_o; // (signal)
  assign d5 = n122_o; // (signal)
  assign t5s = n124_o; // (signal)
  assign t5s_h = n125_o; // (signal)
  assign t5s_l = n126_o; // (signal)
  assign u5 = n133_o; // (signal)
  assign t7_h = n135_o; // (signal)
  assign t6 = n138_o; // (signal)
  assign s5 = n139_o; // (signal)
  assign d6 = n141_o; // (signal)
  assign t6s = n143_o; // (signal)
  assign t6s_h = n144_o; // (signal)
  assign t6s_l = n145_o; // (signal)
  assign u6 = n152_o; // (signal)
  assign t8_h = n154_o; // (signal)
  assign t7 = n157_o; // (signal)
  assign s6 = n158_o; // (signal)
  assign d7 = n160_o; // (signal)
  assign d7_d1 = n207_q; // (signal)
  assign t7s = n162_o; // (signal)
  assign t7s_h = t7s; // (signal)
  assign t7s_h_d1 = n208_q; // (signal)
  assign u7 = n169_o; // (signal)
  assign u7_d1 = n209_q; // (signal)
  assign t9_h = n171_o; // (signal)
  assign t8 = n173_o; // (signal)
  assign s7 = n174_o; // (signal)
  assign s7_d1 = n210_q; // (signal)
  assign d9 = n176_o; // (signal)
  assign mr = n177_o; // (signal)
  assign fr = n178_o; // (signal)
  assign round = n179_o; // (signal)
  assign frrnd = n182_o; // (signal)
  assign rn2 = n183_o; // (signal)
  assign xsr = n198_o; // (signal)
  assign xsr_d1 = n211_q; // (signal)
  assign xsr_d2 = n212_q; // (signal)
  assign n18_o = X[6:0];
  assign n19_o = X[13:8];
  assign n21_o = {1'b0, n19_o};
  assign n22_o = X[16:14];
  assign n24_o = ern0 + 7'b0011111;
  assign n25_o = X[7];
  assign n26_o = {6'b0, n25_o};  //  uext
  assign n27_o = n24_o + n26_o;
  assign n29_o = {1'b1, fracx};
  assign n31_o = {n29_o, 3'b000};
  assign n32_o = X[7];
  assign n33_o = ~n32_o;
  assign n34_o = n33_o ? n31_o : n38_o;
  assign n36_o = {2'b01, fracx};
  assign n38_o = {n36_o, 2'b00};
  assign n40_o = fracxnorm[10:7];
  assign n42_o = 4'b0111 + n40_o;
  assign n43_o = fracxnorm[6:0];
  assign n44_o = {n42_o, n43_o};
  assign n45_o = t1[10];
  assign n46_o = ~n45_o;
  assign n48_o = {t1, 1'b0};
  assign n49_o = t1s[11:6];
  assign n50_o = t1s[5:0];
  assign n52_o = {1'b0, s0};
  assign n53_o = {n52_o, d1};
  assign n54_o = ~d1;
  assign n55_o = {n53_o, n54_o};
  assign n57_o = {n55_o, 1'b1};
  assign n58_o = t1s_h - u1;
  assign n59_o = d1 ? n58_o : n60_o;
  assign n60_o = t1s_h + u1;
  assign n61_o = t3_h[4:0];
  assign n62_o = {n61_o, t1s_l};
  assign n63_o = {s0, d1};
  assign n64_o = t2[10];
  assign n65_o = ~n64_o;
  assign n67_o = {t2, 1'b0};
  assign n68_o = t2s[11:5];
  assign n69_o = t2s[4:0];
  assign n71_o = {1'b0, s1};
  assign n72_o = {n71_o, d2};
  assign n73_o = ~d2;
  assign n74_o = {n72_o, n73_o};
  assign n76_o = {n74_o, 1'b1};
  assign n77_o = t2s_h - u2;
  assign n78_o = d2 ? n77_o : n79_o;
  assign n79_o = t2s_h + u2;
  assign n80_o = t4_h[5:0];
  assign n81_o = {n80_o, t2s_l};
  assign n82_o = {s1, d2};
  assign n83_o = t3[10];
  assign n84_o = ~n83_o;
  assign n86_o = {t3, 1'b0};
  assign n87_o = t3s[11:4];
  assign n88_o = t3s[3:0];
  assign n90_o = {1'b0, s2};
  assign n91_o = {n90_o, d3};
  assign n92_o = ~d3;
  assign n93_o = {n91_o, n92_o};
  assign n95_o = {n93_o, 1'b1};
  assign n96_o = t3s_h_d1 - u3_d1;
  assign n97_o = d3_d1 ? n96_o : n98_o;
  assign n98_o = t3s_h_d1 + u3_d1;
  assign n99_o = t5_h[6:0];
  assign n100_o = {n99_o, t3s_l_d1};
  assign n101_o = {s2, d3};
  assign n102_o = t4[10];
  assign n103_o = ~n102_o;
  assign n105_o = {t4, 1'b0};
  assign n106_o = t4s[11:3];
  assign n107_o = t4s[2:0];
  assign n109_o = {1'b0, s3_d1};
  assign n110_o = {n109_o, d4};
  assign n111_o = ~d4;
  assign n112_o = {n110_o, n111_o};
  assign n114_o = {n112_o, 1'b1};
  assign n115_o = t4s_h - u4;
  assign n116_o = d4 ? n115_o : n117_o;
  assign n117_o = t4s_h + u4;
  assign n118_o = t6_h[7:0];
  assign n119_o = {n118_o, t4s_l};
  assign n120_o = {s3_d1, d4};
  assign n121_o = t5[10];
  assign n122_o = ~n121_o;
  assign n124_o = {t5, 1'b0};
  assign n125_o = t5s[11:2];
  assign n126_o = t5s[1:0];
  assign n128_o = {1'b0, s4};
  assign n129_o = {n128_o, d5};
  assign n130_o = ~d5;
  assign n131_o = {n129_o, n130_o};
  assign n133_o = {n131_o, 1'b1};
  assign n134_o = t5s_h - u5;
  assign n135_o = d5 ? n134_o : n136_o;
  assign n136_o = t5s_h + u5;
  assign n137_o = t7_h[8:0];
  assign n138_o = {n137_o, t5s_l};
  assign n139_o = {s4, d5};
  assign n140_o = t6[10];
  assign n141_o = ~n140_o;
  assign n143_o = {t6, 1'b0};
  assign n144_o = t6s[11:1];
  assign n145_o = t6s[0];
  assign n147_o = {1'b0, s5};
  assign n148_o = {n147_o, d6};
  assign n149_o = ~d6;
  assign n150_o = {n148_o, n149_o};
  assign n152_o = {n150_o, 1'b1};
  assign n153_o = t6s_h - u6;
  assign n154_o = d6 ? n153_o : n155_o;
  assign n155_o = t6s_h + u6;
  assign n156_o = t8_h[9:0];
  assign n157_o = {n156_o, t6s_l};
  assign n158_o = {s5, d6};
  assign n159_o = t7[10];
  assign n160_o = ~n159_o;
  assign n162_o = {t7, 1'b0};
  assign n164_o = {1'b0, s6};
  assign n165_o = {n164_o, d7};
  assign n166_o = ~d7;
  assign n167_o = {n165_o, n166_o};
  assign n169_o = {n167_o, 1'b1};
  assign n170_o = t7s_h_d1 - u7_d1;
  assign n171_o = d7_d1 ? n170_o : n172_o;
  assign n172_o = t7s_h_d1 + u7_d1;
  assign n173_o = t9_h[10:0];
  assign n174_o = {s6, d7};
  assign n175_o = t8[10];
  assign n176_o = ~n175_o;
  assign n177_o = {s7_d1, d9};
  assign n178_o = mr[7:1];
  assign n179_o = mr[0];
  assign n181_o = {6'b000000, round};
  assign n182_o = fr + n181_o;
  assign n183_o = {ern1_d2, frrnd};
  assign n186_o = xsx == 3'b010;
  assign n189_o = xsx == 3'b100;
  assign n192_o = xsx == 3'b000;
  assign n195_o = xsx == 3'b001;
  assign n197_o = {n195_o, n192_o, n189_o, n186_o};
  always @*
    case (n197_o)
      4'b1000: n198_o = 3'b001;
      4'b0100: n198_o = 3'b000;
      4'b0010: n198_o = 3'b100;
      4'b0001: n198_o = 3'b010;
      default: n198_o = 3'b110;
    endcase
  assign n199_o = {xsr_d2, rn2};
  always @(posedge clk)
    n200_q <= ern1;
  always @(posedge clk)
    n201_q <= ern1_d1;
  always @(posedge clk)
    n202_q <= d3;
  always @(posedge clk)
    n203_q <= t3s_h;
  always @(posedge clk)
    n204_q <= t3s_l;
  always @(posedge clk)
    n205_q <= u3;
  always @(posedge clk)
    n206_q <= s3;
  always @(posedge clk)
    n207_q <= d7;
  always @(posedge clk)
    n208_q <= t7s_h;
  always @(posedge clk)
    n209_q <= u7;
  always @(posedge clk)
    n210_q <= s7;
  always @(posedge clk)
    n211_q <= xsr;
  always @(posedge clk)
    n212_q <= xsr_d1;
endmodule

