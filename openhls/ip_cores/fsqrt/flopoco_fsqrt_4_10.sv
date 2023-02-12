module fsqrt#(parameter ID=1)
  (input  clk,
   input  [16:0] X,
   output [16:0] R);
  wire [9:0] fracx;
  wire [3:0] ern0;
  wire [2:0] xsx;
  wire [3:0] ern1;
  wire [3:0] ern1_d1;
  wire [3:0] ern1_d2;
  wire [3:0] ern1_d3;
  wire [13:0] fracxnorm;
  wire [1:0] s0;
  wire [13:0] t1;
  wire d1;
  wire [14:0] t1s;
  wire [5:0] t1s_h;
  wire [8:0] t1s_l;
  wire [5:0] u1;
  wire [5:0] t3_h;
  wire [13:0] t2;
  wire [2:0] s1;
  wire d2;
  wire [14:0] t2s;
  wire [6:0] t2s_h;
  wire [7:0] t2s_l;
  wire [6:0] u2;
  wire [6:0] t4_h;
  wire [13:0] t3;
  wire [3:0] s2;
  wire d3;
  wire d3_d1;
  wire [14:0] t3s;
  wire [7:0] t3s_h;
  wire [7:0] t3s_h_d1;
  wire [6:0] t3s_l;
  wire [6:0] t3s_l_d1;
  wire [7:0] u3;
  wire [7:0] u3_d1;
  wire [7:0] t5_h;
  wire [13:0] t4;
  wire [4:0] s3;
  wire [4:0] s3_d1;
  wire d4;
  wire [14:0] t4s;
  wire [8:0] t4s_h;
  wire [5:0] t4s_l;
  wire [8:0] u4;
  wire [8:0] t6_h;
  wire [13:0] t5;
  wire [5:0] s4;
  wire d5;
  wire [14:0] t5s;
  wire [9:0] t5s_h;
  wire [4:0] t5s_l;
  wire [9:0] u5;
  wire [9:0] t7_h;
  wire [13:0] t6;
  wire [6:0] s5;
  wire d6;
  wire [14:0] t6s;
  wire [10:0] t6s_h;
  wire [3:0] t6s_l;
  wire [10:0] u6;
  wire [10:0] t8_h;
  wire [13:0] t7;
  wire [7:0] s6;
  wire d7;
  wire d7_d1;
  wire [14:0] t7s;
  wire [11:0] t7s_h;
  wire [11:0] t7s_h_d1;
  wire [2:0] t7s_l;
  wire [2:0] t7s_l_d1;
  wire [11:0] u7;
  wire [11:0] u7_d1;
  wire [11:0] t9_h;
  wire [13:0] t8;
  wire [8:0] s7;
  wire [8:0] s7_d1;
  wire d8;
  wire [14:0] t8s;
  wire [12:0] t8s_h;
  wire [1:0] t8s_l;
  wire [12:0] u8;
  wire [12:0] t10_h;
  wire [13:0] t9;
  wire [9:0] s8;
  wire d9;
  wire [14:0] t9s;
  wire [13:0] t9s_h;
  wire t9s_l;
  wire [13:0] u9;
  wire [13:0] t11_h;
  wire [13:0] t10;
  wire [10:0] s9;
  wire d10;
  wire d10_d1;
  wire [14:0] t10s;
  wire [14:0] t10s_h;
  wire [14:0] t10s_h_d1;
  wire [14:0] u10;
  wire [14:0] u10_d1;
  wire [14:0] t12_h;
  wire [13:0] t11;
  wire [11:0] s10;
  wire [11:0] s10_d1;
  wire d12;
  wire [12:0] mr;
  wire [9:0] fr;
  wire round;
  wire [9:0] frrnd;
  wire [13:0] rn2;
  wire [2:0] xsr;
  wire [2:0] xsr_d1;
  wire [2:0] xsr_d2;
  wire [2:0] xsr_d3;
  wire [9:0] n25_o;
  wire [2:0] n26_o;
  wire [3:0] n28_o;
  wire [2:0] n29_o;
  wire [3:0] n31_o;
  wire n32_o;
  wire [3:0] n33_o;
  wire [3:0] n34_o;
  wire [10:0] n36_o;
  wire [13:0] n38_o;
  wire n39_o;
  wire n40_o;
  wire [13:0] n41_o;
  wire [11:0] n43_o;
  wire [13:0] n45_o;
  wire [3:0] n47_o;
  wire [3:0] n49_o;
  wire [9:0] n50_o;
  wire [13:0] n51_o;
  wire n52_o;
  wire n53_o;
  wire [14:0] n55_o;
  wire [5:0] n56_o;
  wire [8:0] n57_o;
  wire [2:0] n59_o;
  wire [3:0] n60_o;
  wire n61_o;
  wire [4:0] n62_o;
  wire [5:0] n64_o;
  wire [5:0] n65_o;
  wire [5:0] n66_o;
  wire [5:0] n67_o;
  wire [4:0] n68_o;
  wire [13:0] n69_o;
  wire [2:0] n70_o;
  wire n71_o;
  wire n72_o;
  wire [14:0] n74_o;
  wire [6:0] n75_o;
  wire [7:0] n76_o;
  wire [3:0] n78_o;
  wire [4:0] n79_o;
  wire n80_o;
  wire [5:0] n81_o;
  wire [6:0] n83_o;
  wire [6:0] n84_o;
  wire [6:0] n85_o;
  wire [6:0] n86_o;
  wire [5:0] n87_o;
  wire [13:0] n88_o;
  wire [3:0] n89_o;
  wire n90_o;
  wire n91_o;
  wire [14:0] n93_o;
  wire [7:0] n94_o;
  wire [6:0] n95_o;
  wire [4:0] n97_o;
  wire [5:0] n98_o;
  wire n99_o;
  wire [6:0] n100_o;
  wire [7:0] n102_o;
  wire [7:0] n103_o;
  wire [7:0] n104_o;
  wire [7:0] n105_o;
  wire [6:0] n106_o;
  wire [13:0] n107_o;
  wire [4:0] n108_o;
  wire n109_o;
  wire n110_o;
  wire [14:0] n112_o;
  wire [8:0] n113_o;
  wire [5:0] n114_o;
  wire [5:0] n116_o;
  wire [6:0] n117_o;
  wire n118_o;
  wire [7:0] n119_o;
  wire [8:0] n121_o;
  wire [8:0] n122_o;
  wire [8:0] n123_o;
  wire [8:0] n124_o;
  wire [7:0] n125_o;
  wire [13:0] n126_o;
  wire [5:0] n127_o;
  wire n128_o;
  wire n129_o;
  wire [14:0] n131_o;
  wire [9:0] n132_o;
  wire [4:0] n133_o;
  wire [6:0] n135_o;
  wire [7:0] n136_o;
  wire n137_o;
  wire [8:0] n138_o;
  wire [9:0] n140_o;
  wire [9:0] n141_o;
  wire [9:0] n142_o;
  wire [9:0] n143_o;
  wire [8:0] n144_o;
  wire [13:0] n145_o;
  wire [6:0] n146_o;
  wire n147_o;
  wire n148_o;
  wire [14:0] n150_o;
  wire [10:0] n151_o;
  wire [3:0] n152_o;
  wire [7:0] n154_o;
  wire [8:0] n155_o;
  wire n156_o;
  wire [9:0] n157_o;
  wire [10:0] n159_o;
  wire [10:0] n160_o;
  wire [10:0] n161_o;
  wire [10:0] n162_o;
  wire [9:0] n163_o;
  wire [13:0] n164_o;
  wire [7:0] n165_o;
  wire n166_o;
  wire n167_o;
  wire [14:0] n169_o;
  wire [11:0] n170_o;
  wire [2:0] n171_o;
  wire [8:0] n173_o;
  wire [9:0] n174_o;
  wire n175_o;
  wire [10:0] n176_o;
  wire [11:0] n178_o;
  wire [11:0] n179_o;
  wire [11:0] n180_o;
  wire [11:0] n181_o;
  wire [10:0] n182_o;
  wire [13:0] n183_o;
  wire [8:0] n184_o;
  wire n185_o;
  wire n186_o;
  wire [14:0] n188_o;
  wire [12:0] n189_o;
  wire [1:0] n190_o;
  wire [9:0] n192_o;
  wire [10:0] n193_o;
  wire n194_o;
  wire [11:0] n195_o;
  wire [12:0] n197_o;
  wire [12:0] n198_o;
  wire [12:0] n199_o;
  wire [12:0] n200_o;
  wire [11:0] n201_o;
  wire [13:0] n202_o;
  wire [9:0] n203_o;
  wire n204_o;
  wire n205_o;
  wire [14:0] n207_o;
  wire [13:0] n208_o;
  wire n209_o;
  wire [10:0] n211_o;
  wire [11:0] n212_o;
  wire n213_o;
  wire [12:0] n214_o;
  wire [13:0] n216_o;
  wire [13:0] n217_o;
  wire [13:0] n218_o;
  wire [13:0] n219_o;
  wire [12:0] n220_o;
  wire [13:0] n221_o;
  wire [10:0] n222_o;
  wire n223_o;
  wire n224_o;
  wire [14:0] n226_o;
  wire [11:0] n228_o;
  wire [12:0] n229_o;
  wire n230_o;
  wire [13:0] n231_o;
  wire [14:0] n233_o;
  wire [14:0] n234_o;
  wire [14:0] n235_o;
  wire [14:0] n236_o;
  wire [13:0] n237_o;
  wire [11:0] n238_o;
  wire n239_o;
  wire n240_o;
  wire [12:0] n241_o;
  wire [9:0] n242_o;
  wire n243_o;
  wire [9:0] n245_o;
  wire [9:0] n246_o;
  wire [13:0] n247_o;
  wire n250_o;
  wire n253_o;
  wire n256_o;
  wire n259_o;
  wire [3:0] n261_o;
  reg [2:0] n262_o;
  wire [16:0] n263_o;
  reg [3:0] n264_q;
  reg [3:0] n265_q;
  reg [3:0] n266_q;
  reg n267_q;
  reg [7:0] n268_q;
  reg [6:0] n269_q;
  reg [7:0] n270_q;
  reg [4:0] n271_q;
  reg n272_q;
  reg [11:0] n273_q;
  reg [2:0] n274_q;
  reg [11:0] n275_q;
  reg [8:0] n276_q;
  reg n277_q;
  reg [14:0] n278_q;
  reg [14:0] n279_q;
  reg [11:0] n280_q;
  reg [2:0] n281_q;
  reg [2:0] n282_q;
  reg [2:0] n283_q;
  assign R = n263_o;
  assign fracx = n25_o; // (signal)
  assign ern0 = n28_o; // (signal)
  assign xsx = n29_o; // (signal)
  assign ern1 = n34_o; // (signal)
  assign ern1_d1 = n264_q; // (signal)
  assign ern1_d2 = n265_q; // (signal)
  assign ern1_d3 = n266_q; // (signal)
  assign fracxnorm = n41_o; // (signal)
  assign s0 = 2'b01; // (signal)
  assign t1 = n51_o; // (signal)
  assign d1 = n53_o; // (signal)
  assign t1s = n55_o; // (signal)
  assign t1s_h = n56_o; // (signal)
  assign t1s_l = n57_o; // (signal)
  assign u1 = n64_o; // (signal)
  assign t3_h = n66_o; // (signal)
  assign t2 = n69_o; // (signal)
  assign s1 = n70_o; // (signal)
  assign d2 = n72_o; // (signal)
  assign t2s = n74_o; // (signal)
  assign t2s_h = n75_o; // (signal)
  assign t2s_l = n76_o; // (signal)
  assign u2 = n83_o; // (signal)
  assign t4_h = n85_o; // (signal)
  assign t3 = n88_o; // (signal)
  assign s2 = n89_o; // (signal)
  assign d3 = n91_o; // (signal)
  assign d3_d1 = n267_q; // (signal)
  assign t3s = n93_o; // (signal)
  assign t3s_h = n94_o; // (signal)
  assign t3s_h_d1 = n268_q; // (signal)
  assign t3s_l = n95_o; // (signal)
  assign t3s_l_d1 = n269_q; // (signal)
  assign u3 = n102_o; // (signal)
  assign u3_d1 = n270_q; // (signal)
  assign t5_h = n104_o; // (signal)
  assign t4 = n107_o; // (signal)
  assign s3 = n108_o; // (signal)
  assign s3_d1 = n271_q; // (signal)
  assign d4 = n110_o; // (signal)
  assign t4s = n112_o; // (signal)
  assign t4s_h = n113_o; // (signal)
  assign t4s_l = n114_o; // (signal)
  assign u4 = n121_o; // (signal)
  assign t6_h = n123_o; // (signal)
  assign t5 = n126_o; // (signal)
  assign s4 = n127_o; // (signal)
  assign d5 = n129_o; // (signal)
  assign t5s = n131_o; // (signal)
  assign t5s_h = n132_o; // (signal)
  assign t5s_l = n133_o; // (signal)
  assign u5 = n140_o; // (signal)
  assign t7_h = n142_o; // (signal)
  assign t6 = n145_o; // (signal)
  assign s5 = n146_o; // (signal)
  assign d6 = n148_o; // (signal)
  assign t6s = n150_o; // (signal)
  assign t6s_h = n151_o; // (signal)
  assign t6s_l = n152_o; // (signal)
  assign u6 = n159_o; // (signal)
  assign t8_h = n161_o; // (signal)
  assign t7 = n164_o; // (signal)
  assign s6 = n165_o; // (signal)
  assign d7 = n167_o; // (signal)
  assign d7_d1 = n272_q; // (signal)
  assign t7s = n169_o; // (signal)
  assign t7s_h = n170_o; // (signal)
  assign t7s_h_d1 = n273_q; // (signal)
  assign t7s_l = n171_o; // (signal)
  assign t7s_l_d1 = n274_q; // (signal)
  assign u7 = n178_o; // (signal)
  assign u7_d1 = n275_q; // (signal)
  assign t9_h = n180_o; // (signal)
  assign t8 = n183_o; // (signal)
  assign s7 = n184_o; // (signal)
  assign s7_d1 = n276_q; // (signal)
  assign d8 = n186_o; // (signal)
  assign t8s = n188_o; // (signal)
  assign t8s_h = n189_o; // (signal)
  assign t8s_l = n190_o; // (signal)
  assign u8 = n197_o; // (signal)
  assign t10_h = n199_o; // (signal)
  assign t9 = n202_o; // (signal)
  assign s8 = n203_o; // (signal)
  assign d9 = n205_o; // (signal)
  assign t9s = n207_o; // (signal)
  assign t9s_h = n208_o; // (signal)
  assign t9s_l = n209_o; // (signal)
  assign u9 = n216_o; // (signal)
  assign t11_h = n218_o; // (signal)
  assign t10 = n221_o; // (signal)
  assign s9 = n222_o; // (signal)
  assign d10 = n224_o; // (signal)
  assign d10_d1 = n277_q; // (signal)
  assign t10s = n226_o; // (signal)
  assign t10s_h = t10s; // (signal)
  assign t10s_h_d1 = n278_q; // (signal)
  assign u10 = n233_o; // (signal)
  assign u10_d1 = n279_q; // (signal)
  assign t12_h = n235_o; // (signal)
  assign t11 = n237_o; // (signal)
  assign s10 = n238_o; // (signal)
  assign s10_d1 = n280_q; // (signal)
  assign d12 = n240_o; // (signal)
  assign mr = n241_o; // (signal)
  assign fr = n242_o; // (signal)
  assign round = n243_o; // (signal)
  assign frrnd = n246_o; // (signal)
  assign rn2 = n247_o; // (signal)
  assign xsr = n262_o; // (signal)
  assign xsr_d1 = n281_q; // (signal)
  assign xsr_d2 = n282_q; // (signal)
  assign xsr_d3 = n283_q; // (signal)
  assign n25_o = X[9:0];
  assign n26_o = X[13:11];
  assign n28_o = {1'b0, n26_o};
  assign n29_o = X[16:14];
  assign n31_o = ern0 + 4'b0011;
  assign n32_o = X[10];
  assign n33_o = {3'b0, n32_o};  //  uext
  assign n34_o = n31_o + n33_o;
  assign n36_o = {1'b1, fracx};
  assign n38_o = {n36_o, 3'b000};
  assign n39_o = X[10];
  assign n40_o = ~n39_o;
  assign n41_o = n40_o ? n38_o : n45_o;
  assign n43_o = {2'b01, fracx};
  assign n45_o = {n43_o, 2'b00};
  assign n47_o = fracxnorm[13:10];
  assign n49_o = 4'b0111 + n47_o;
  assign n50_o = fracxnorm[9:0];
  assign n51_o = {n49_o, n50_o};
  assign n52_o = t1[13];
  assign n53_o = ~n52_o;
  assign n55_o = {t1, 1'b0};
  assign n56_o = t1s[14:9];
  assign n57_o = t1s[8:0];
  assign n59_o = {1'b0, s0};
  assign n60_o = {n59_o, d1};
  assign n61_o = ~d1;
  assign n62_o = {n60_o, n61_o};
  assign n64_o = {n62_o, 1'b1};
  assign n65_o = t1s_h - u1;
  assign n66_o = d1 ? n65_o : n67_o;
  assign n67_o = t1s_h + u1;
  assign n68_o = t3_h[4:0];
  assign n69_o = {n68_o, t1s_l};
  assign n70_o = {s0, d1};
  assign n71_o = t2[13];
  assign n72_o = ~n71_o;
  assign n74_o = {t2, 1'b0};
  assign n75_o = t2s[14:8];
  assign n76_o = t2s[7:0];
  assign n78_o = {1'b0, s1};
  assign n79_o = {n78_o, d2};
  assign n80_o = ~d2;
  assign n81_o = {n79_o, n80_o};
  assign n83_o = {n81_o, 1'b1};
  assign n84_o = t2s_h - u2;
  assign n85_o = d2 ? n84_o : n86_o;
  assign n86_o = t2s_h + u2;
  assign n87_o = t4_h[5:0];
  assign n88_o = {n87_o, t2s_l};
  assign n89_o = {s1, d2};
  assign n90_o = t3[13];
  assign n91_o = ~n90_o;
  assign n93_o = {t3, 1'b0};
  assign n94_o = t3s[14:7];
  assign n95_o = t3s[6:0];
  assign n97_o = {1'b0, s2};
  assign n98_o = {n97_o, d3};
  assign n99_o = ~d3;
  assign n100_o = {n98_o, n99_o};
  assign n102_o = {n100_o, 1'b1};
  assign n103_o = t3s_h_d1 - u3_d1;
  assign n104_o = d3_d1 ? n103_o : n105_o;
  assign n105_o = t3s_h_d1 + u3_d1;
  assign n106_o = t5_h[6:0];
  assign n107_o = {n106_o, t3s_l_d1};
  assign n108_o = {s2, d3};
  assign n109_o = t4[13];
  assign n110_o = ~n109_o;
  assign n112_o = {t4, 1'b0};
  assign n113_o = t4s[14:6];
  assign n114_o = t4s[5:0];
  assign n116_o = {1'b0, s3_d1};
  assign n117_o = {n116_o, d4};
  assign n118_o = ~d4;
  assign n119_o = {n117_o, n118_o};
  assign n121_o = {n119_o, 1'b1};
  assign n122_o = t4s_h - u4;
  assign n123_o = d4 ? n122_o : n124_o;
  assign n124_o = t4s_h + u4;
  assign n125_o = t6_h[7:0];
  assign n126_o = {n125_o, t4s_l};
  assign n127_o = {s3_d1, d4};
  assign n128_o = t5[13];
  assign n129_o = ~n128_o;
  assign n131_o = {t5, 1'b0};
  assign n132_o = t5s[14:5];
  assign n133_o = t5s[4:0];
  assign n135_o = {1'b0, s4};
  assign n136_o = {n135_o, d5};
  assign n137_o = ~d5;
  assign n138_o = {n136_o, n137_o};
  assign n140_o = {n138_o, 1'b1};
  assign n141_o = t5s_h - u5;
  assign n142_o = d5 ? n141_o : n143_o;
  assign n143_o = t5s_h + u5;
  assign n144_o = t7_h[8:0];
  assign n145_o = {n144_o, t5s_l};
  assign n146_o = {s4, d5};
  assign n147_o = t6[13];
  assign n148_o = ~n147_o;
  assign n150_o = {t6, 1'b0};
  assign n151_o = t6s[14:4];
  assign n152_o = t6s[3:0];
  assign n154_o = {1'b0, s5};
  assign n155_o = {n154_o, d6};
  assign n156_o = ~d6;
  assign n157_o = {n155_o, n156_o};
  assign n159_o = {n157_o, 1'b1};
  assign n160_o = t6s_h - u6;
  assign n161_o = d6 ? n160_o : n162_o;
  assign n162_o = t6s_h + u6;
  assign n163_o = t8_h[9:0];
  assign n164_o = {n163_o, t6s_l};
  assign n165_o = {s5, d6};
  assign n166_o = t7[13];
  assign n167_o = ~n166_o;
  assign n169_o = {t7, 1'b0};
  assign n170_o = t7s[14:3];
  assign n171_o = t7s[2:0];
  assign n173_o = {1'b0, s6};
  assign n174_o = {n173_o, d7};
  assign n175_o = ~d7;
  assign n176_o = {n174_o, n175_o};
  assign n178_o = {n176_o, 1'b1};
  assign n179_o = t7s_h_d1 - u7_d1;
  assign n180_o = d7_d1 ? n179_o : n181_o;
  assign n181_o = t7s_h_d1 + u7_d1;
  assign n182_o = t9_h[10:0];
  assign n183_o = {n182_o, t7s_l_d1};
  assign n184_o = {s6, d7};
  assign n185_o = t8[13];
  assign n186_o = ~n185_o;
  assign n188_o = {t8, 1'b0};
  assign n189_o = t8s[14:2];
  assign n190_o = t8s[1:0];
  assign n192_o = {1'b0, s7_d1};
  assign n193_o = {n192_o, d8};
  assign n194_o = ~d8;
  assign n195_o = {n193_o, n194_o};
  assign n197_o = {n195_o, 1'b1};
  assign n198_o = t8s_h - u8;
  assign n199_o = d8 ? n198_o : n200_o;
  assign n200_o = t8s_h + u8;
  assign n201_o = t10_h[11:0];
  assign n202_o = {n201_o, t8s_l};
  assign n203_o = {s7_d1, d8};
  assign n204_o = t9[13];
  assign n205_o = ~n204_o;
  assign n207_o = {t9, 1'b0};
  assign n208_o = t9s[14:1];
  assign n209_o = t9s[0];
  assign n211_o = {1'b0, s8};
  assign n212_o = {n211_o, d9};
  assign n213_o = ~d9;
  assign n214_o = {n212_o, n213_o};
  assign n216_o = {n214_o, 1'b1};
  assign n217_o = t9s_h - u9;
  assign n218_o = d9 ? n217_o : n219_o;
  assign n219_o = t9s_h + u9;
  assign n220_o = t11_h[12:0];
  assign n221_o = {n220_o, t9s_l};
  assign n222_o = {s8, d9};
  assign n223_o = t10[13];
  assign n224_o = ~n223_o;
  assign n226_o = {t10, 1'b0};
  assign n228_o = {1'b0, s9};
  assign n229_o = {n228_o, d10};
  assign n230_o = ~d10;
  assign n231_o = {n229_o, n230_o};
  assign n233_o = {n231_o, 1'b1};
  assign n234_o = t10s_h_d1 - u10_d1;
  assign n235_o = d10_d1 ? n234_o : n236_o;
  assign n236_o = t10s_h_d1 + u10_d1;
  assign n237_o = t12_h[13:0];
  assign n238_o = {s9, d10};
  assign n239_o = t11[13];
  assign n240_o = ~n239_o;
  assign n241_o = {s10_d1, d12};
  assign n242_o = mr[10:1];
  assign n243_o = mr[0];
  assign n245_o = {9'b000000000, round};
  assign n246_o = fr + n245_o;
  assign n247_o = {ern1_d3, frrnd};
  assign n250_o = xsx == 3'b010;
  assign n253_o = xsx == 3'b100;
  assign n256_o = xsx == 3'b000;
  assign n259_o = xsx == 3'b001;
  assign n261_o = {n259_o, n256_o, n253_o, n250_o};
  always @*
    case (n261_o)
      4'b1000: n262_o = 3'b001;
      4'b0100: n262_o = 3'b000;
      4'b0010: n262_o = 3'b100;
      4'b0001: n262_o = 3'b010;
      default: n262_o = 3'b110;
    endcase
  assign n263_o = {xsr_d3, rn2};
  always @(posedge clk)
    n264_q <= ern1;
  always @(posedge clk)
    n265_q <= ern1_d1;
  always @(posedge clk)
    n266_q <= ern1_d2;
  always @(posedge clk)
    n267_q <= d3;
  always @(posedge clk)
    n268_q <= t3s_h;
  always @(posedge clk)
    n269_q <= t3s_l;
  always @(posedge clk)
    n270_q <= u3;
  always @(posedge clk)
    n271_q <= s3;
  always @(posedge clk)
    n272_q <= d7;
  always @(posedge clk)
    n273_q <= t7s_h;
  always @(posedge clk)
    n274_q <= t7s_l;
  always @(posedge clk)
    n275_q <= u7;
  always @(posedge clk)
    n276_q <= s7;
  always @(posedge clk)
    n277_q <= d10;
  always @(posedge clk)
    n278_q <= t10s_h;
  always @(posedge clk)
    n279_q <= u10;
  always @(posedge clk)
    n280_q <= s10;
  always @(posedge clk)
    n281_q <= xsr;
  always @(posedge clk)
    n282_q <= xsr_d1;
  always @(posedge clk)
    n283_q <= xsr_d2;
endmodule

