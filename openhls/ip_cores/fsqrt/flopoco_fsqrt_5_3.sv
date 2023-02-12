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
  assign fracx = n11_o; // (signal)
  assign ern0 = n14_o; // (signal)
  assign xsx = n15_o; // (signal)
  assign ern1 = n20_o; // (signal)
  assign ern1_d1 = n117_q; // (signal)
  assign fracxnorm = n27_o; // (signal)
  assign s0 = 2'b01; // (signal)
  assign t1 = n37_o; // (signal)
  assign d1 = n39_o; // (signal)
  assign t1s = n41_o; // (signal)
  assign t1s_h = n42_o; // (signal)
  assign t1s_l = n43_o; // (signal)
  assign u1 = n50_o; // (signal)
  assign t3_h = n52_o; // (signal)
  assign t2 = n55_o; // (signal)
  assign s1 = n56_o; // (signal)
  assign d2 = n58_o; // (signal)
  assign t2s = n60_o; // (signal)
  assign t2s_h = n61_o; // (signal)
  assign t2s_l = n62_o; // (signal)
  assign u2 = n69_o; // (signal)
  assign t4_h = n71_o; // (signal)
  assign t3 = n74_o; // (signal)
  assign s2 = n75_o; // (signal)
  assign d3 = n77_o; // (signal)
  assign d3_d1 = n118_q; // (signal)
  assign t3s = n79_o; // (signal)
  assign t3s_h = t3s; // (signal)
  assign t3s_h_d1 = n119_q; // (signal)
  assign u3 = n86_o; // (signal)
  assign u3_d1 = n120_q; // (signal)
  assign t5_h = n88_o; // (signal)
  assign t4 = n90_o; // (signal)
  assign s3 = n91_o; // (signal)
  assign s3_d1 = n121_q; // (signal)
  assign d5 = n93_o; // (signal)
  assign mr = n94_o; // (signal)
  assign fr = n95_o; // (signal)
  assign round = n96_o; // (signal)
  assign frrnd = n99_o; // (signal)
  assign rn2 = n100_o; // (signal)
  assign xsr = n115_o; // (signal)
  assign xsr_d1 = n122_q; // (signal)
  assign n11_o = X[2:0];
  assign n12_o = X[7:4];
  assign n14_o = {1'b0, n12_o};
  assign n15_o = X[10:8];
  assign n17_o = ern0 + 5'b00111;
  assign n18_o = X[3];
  assign n19_o = {4'b0, n18_o};  //  uext
  assign n20_o = n17_o + n19_o;
  assign n22_o = {1'b1, fracx};
  assign n24_o = {n22_o, 3'b000};
  assign n25_o = X[3];
  assign n26_o = ~n25_o;
  assign n27_o = n26_o ? n24_o : n31_o;
  assign n29_o = {2'b01, fracx};
  assign n31_o = {n29_o, 2'b00};
  assign n33_o = fracxnorm[6:3];
  assign n35_o = 4'b0111 + n33_o;
  assign n36_o = fracxnorm[2:0];
  assign n37_o = {n35_o, n36_o};
  assign n38_o = t1[6];
  assign n39_o = ~n38_o;
  assign n41_o = {t1, 1'b0};
  assign n42_o = t1s[7:2];
  assign n43_o = t1s[1:0];
  assign n45_o = {1'b0, s0};
  assign n46_o = {n45_o, d1};
  assign n47_o = ~d1;
  assign n48_o = {n46_o, n47_o};
  assign n50_o = {n48_o, 1'b1};
  assign n51_o = t1s_h - u1;
  assign n52_o = d1 ? n51_o : n53_o;
  assign n53_o = t1s_h + u1;
  assign n54_o = t3_h[4:0];
  assign n55_o = {n54_o, t1s_l};
  assign n56_o = {s0, d1};
  assign n57_o = t2[6];
  assign n58_o = ~n57_o;
  assign n60_o = {t2, 1'b0};
  assign n61_o = t2s[7:1];
  assign n62_o = t2s[0];
  assign n64_o = {1'b0, s1};
  assign n65_o = {n64_o, d2};
  assign n66_o = ~d2;
  assign n67_o = {n65_o, n66_o};
  assign n69_o = {n67_o, 1'b1};
  assign n70_o = t2s_h - u2;
  assign n71_o = d2 ? n70_o : n72_o;
  assign n72_o = t2s_h + u2;
  assign n73_o = t4_h[5:0];
  assign n74_o = {n73_o, t2s_l};
  assign n75_o = {s1, d2};
  assign n76_o = t3[6];
  assign n77_o = ~n76_o;
  assign n79_o = {t3, 1'b0};
  assign n81_o = {1'b0, s2};
  assign n82_o = {n81_o, d3};
  assign n83_o = ~d3;
  assign n84_o = {n82_o, n83_o};
  assign n86_o = {n84_o, 1'b1};
  assign n87_o = t3s_h_d1 - u3_d1;
  assign n88_o = d3_d1 ? n87_o : n89_o;
  assign n89_o = t3s_h_d1 + u3_d1;
  assign n90_o = t5_h[6:0];
  assign n91_o = {s2, d3};
  assign n92_o = t4[6];
  assign n93_o = ~n92_o;
  assign n94_o = {s3_d1, d5};
  assign n95_o = mr[3:1];
  assign n96_o = mr[0];
  assign n98_o = {2'b00, round};
  assign n99_o = fr + n98_o;
  assign n100_o = {ern1_d1, frrnd};
  assign n103_o = xsx == 3'b010;
  assign n106_o = xsx == 3'b100;
  assign n109_o = xsx == 3'b000;
  assign n112_o = xsx == 3'b001;
  assign n114_o = {n112_o, n109_o, n106_o, n103_o};
  always @*
    case (n114_o)
      4'b1000: n115_o = 3'b001;
      4'b0100: n115_o = 3'b000;
      4'b0010: n115_o = 3'b100;
      4'b0001: n115_o = 3'b010;
      default: n115_o = 3'b110;
    endcase
  assign n116_o = {xsr_d1, rn2};
  always @(posedge clk)
    n117_q <= ern1;
  always @(posedge clk)
    n118_q <= d3;
  always @(posedge clk)
    n119_q <= t3s_h;
  always @(posedge clk)
    n120_q <= u3;
  always @(posedge clk)
    n121_q <= s3;
  always @(posedge clk)
    n122_q <= xsr;
endmodule

