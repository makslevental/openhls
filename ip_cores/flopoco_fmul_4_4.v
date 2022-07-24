module dspblock_5x5_f300_uid9
  (input  clk,
   input  [4:0] x,
   input  [4:0] y,
   output [9:0] r);
  wire [9:0] mint;
  wire [9:0] m;
  wire [9:0] rtmp;
  wire [9:0] n158_o;
  wire [9:0] n159_o;
  wire [9:0] n160_o;
  assign r = rtmp;
  /* ip_cores/flopoco_fmul_4_4.vhdl:34:13  */
  assign mint = n160_o; // (signal)
  /* ip_cores/flopoco_fmul_4_4.vhdl:30:8  */
  assign m = mint; // (signal)
  /* ip_cores/flopoco_fmul_4_4.vhdl:31:8  */
  assign rtmp = m; // (signal)
  /* ip_cores/flopoco_fmul_4_4.vhdl:33:41  */
  assign n158_o = {5'b0, x};  //  uext
  /* ip_cores/flopoco_fmul_4_4.vhdl:33:41  */
  assign n159_o = {5'b0, y};  //  uext
  /* ip_cores/flopoco_fmul_4_4.vhdl:33:41  */
  assign n160_o = n158_o * n159_o; // smul
endmodule

module intadder_10_f300_uid13
  (input  clk,
   input  [9:0] x,
   input  [9:0] y,
   input  cin,
   output [9:0] r);
  wire cin_1;
  wire cin_1_d1;
  wire [10:0] x_1;
  wire [10:0] x_1_d1;
  wire [10:0] y_1;
  wire [10:0] y_1_d1;
  wire [10:0] s_1;
  wire [9:0] r_1;
  reg n146_q;
  reg [10:0] n147_q;
  reg [10:0] n148_q;
  wire [10:0] n150_o;
  wire [10:0] n152_o;
  wire [10:0] n153_o;
  wire [10:0] n154_o;
  wire [10:0] n155_o;
  wire [9:0] n156_o;
  assign r = r_1;
  /* ip_cores/flopoco_fmul_4_4.vhdl:153:8  */
  assign cin_1 = cin; // (signal)
  /* ip_cores/flopoco_fmul_4_4.vhdl:153:15  */
  assign cin_1_d1 = n146_q; // (signal)
  /* ip_cores/flopoco_fmul_4_4.vhdl:154:8  */
  assign x_1 = n150_o; // (signal)
  /* ip_cores/flopoco_fmul_4_4.vhdl:154:13  */
  assign x_1_d1 = n147_q; // (signal)
  /* ip_cores/flopoco_fmul_4_4.vhdl:155:8  */
  assign y_1 = n152_o; // (signal)
  /* ip_cores/flopoco_fmul_4_4.vhdl:155:13  */
  assign y_1_d1 = n148_q; // (signal)
  /* ip_cores/flopoco_fmul_4_4.vhdl:156:8  */
  assign s_1 = n155_o; // (signal)
  /* ip_cores/flopoco_fmul_4_4.vhdl:157:8  */
  assign r_1 = n156_o; // (signal)
  /* ip_cores/flopoco_fmul_4_4.vhdl:161:10  */
  always @(posedge clk)
    n146_q <= cin_1;
  /* ip_cores/flopoco_fmul_4_4.vhdl:161:10  */
  always @(posedge clk)
    n147_q <= x_1;
  /* ip_cores/flopoco_fmul_4_4.vhdl:161:10  */
  always @(posedge clk)
    n148_q <= y_1;
  /* ip_cores/flopoco_fmul_4_4.vhdl:168:15  */
  assign n150_o = {1'b0, x};
  /* ip_cores/flopoco_fmul_4_4.vhdl:169:15  */
  assign n152_o = {1'b0, y};
  /* ip_cores/flopoco_fmul_4_4.vhdl:170:18  */
  assign n153_o = x_1_d1 + y_1_d1;
  /* ip_cores/flopoco_fmul_4_4.vhdl:170:27  */
  assign n154_o = {10'b0, cin_1_d1};  //  uext
  /* ip_cores/flopoco_fmul_4_4.vhdl:170:27  */
  assign n155_o = n153_o + n154_o;
  /* ip_cores/flopoco_fmul_4_4.vhdl:171:14  */
  assign n156_o = s_1[9:0];
endmodule

module intmultiplier_f300_uid5
  (input  clk,
   input  [4:0] x,
   input  [4:0] y,
   output [9:0] r);
  wire [4:0] tile_0_x;
  wire [4:0] tile_0_y;
  wire [9:0] tile_0_output;
  wire [9:0] tile_0_filtered_output;
  wire bh7_w0_0;
  wire bh7_w1_0;
  wire bh7_w2_0;
  wire bh7_w3_0;
  wire bh7_w4_0;
  wire bh7_w5_0;
  wire bh7_w6_0;
  wire bh7_w7_0;
  wire bh7_w8_0;
  wire bh7_w9_0;
  wire [9:0] tmp_bitheapresult_bh7_9;
  wire [9:0] bitheapresult_bh7;
  wire [9:0] tile_0_mult_n116;
  wire [9:0] tile_0_mult_r;
  wire n119_o;
  wire n120_o;
  wire n121_o;
  wire n122_o;
  wire n123_o;
  wire n124_o;
  wire n125_o;
  wire n126_o;
  wire n127_o;
  wire n128_o;
  wire [1:0] n129_o;
  wire [2:0] n130_o;
  wire [3:0] n131_o;
  wire [4:0] n132_o;
  wire [5:0] n133_o;
  wire [6:0] n134_o;
  wire [7:0] n135_o;
  wire [8:0] n136_o;
  wire [9:0] n137_o;
  assign r = bitheapresult_bh7;
  /* ip_cores/flopoco_fmul_4_4.vhdl:76:8  */
  assign tile_0_x = x; // (signal)
  /* ip_cores/flopoco_fmul_4_4.vhdl:77:8  */
  assign tile_0_y = y; // (signal)
  /* ip_cores/flopoco_fmul_4_4.vhdl:103:52  */
  assign tile_0_output = tile_0_mult_n116; // (signal)
  /* ip_cores/flopoco_fmul_4_4.vhdl:79:8  */
  assign tile_0_filtered_output = tile_0_output; // (signal)
  /* ip_cores/flopoco_fmul_4_4.vhdl:80:8  */
  assign bh7_w0_0 = n119_o; // (signal)
  /* ip_cores/flopoco_fmul_4_4.vhdl:81:8  */
  assign bh7_w1_0 = n120_o; // (signal)
  /* ip_cores/flopoco_fmul_4_4.vhdl:82:8  */
  assign bh7_w2_0 = n121_o; // (signal)
  /* ip_cores/flopoco_fmul_4_4.vhdl:83:8  */
  assign bh7_w3_0 = n122_o; // (signal)
  /* ip_cores/flopoco_fmul_4_4.vhdl:84:8  */
  assign bh7_w4_0 = n123_o; // (signal)
  /* ip_cores/flopoco_fmul_4_4.vhdl:85:8  */
  assign bh7_w5_0 = n124_o; // (signal)
  /* ip_cores/flopoco_fmul_4_4.vhdl:86:8  */
  assign bh7_w6_0 = n125_o; // (signal)
  /* ip_cores/flopoco_fmul_4_4.vhdl:87:8  */
  assign bh7_w7_0 = n126_o; // (signal)
  /* ip_cores/flopoco_fmul_4_4.vhdl:88:8  */
  assign bh7_w8_0 = n127_o; // (signal)
  /* ip_cores/flopoco_fmul_4_4.vhdl:89:8  */
  assign bh7_w9_0 = n128_o; // (signal)
  /* ip_cores/flopoco_fmul_4_4.vhdl:90:8  */
  assign tmp_bitheapresult_bh7_9 = n137_o; // (signal)
  /* ip_cores/flopoco_fmul_4_4.vhdl:120:26  */
  assign bitheapresult_bh7 = tmp_bitheapresult_bh7_9; // (signal)
  /* ip_cores/flopoco_fmul_4_4.vhdl:101:23  */
  assign tile_0_mult_n116 = tile_0_mult_r; // (signal)
  /* ip_cores/flopoco_fmul_4_4.vhdl:97:4  */
  dspblock_5x5_f300_uid9 tile_0_mult (
    .clk(clk),
    .x(tile_0_x),
    .y(tile_0_y),
    .r(tile_0_mult_r));
  /* ip_cores/flopoco_fmul_4_4.vhdl:104:38  */
  assign n119_o = tile_0_filtered_output[0];
  /* ip_cores/flopoco_fmul_4_4.vhdl:105:38  */
  assign n120_o = tile_0_filtered_output[1];
  /* ip_cores/flopoco_fmul_4_4.vhdl:106:38  */
  assign n121_o = tile_0_filtered_output[2];
  /* ip_cores/flopoco_fmul_4_4.vhdl:107:38  */
  assign n122_o = tile_0_filtered_output[3];
  /* ip_cores/flopoco_fmul_4_4.vhdl:108:38  */
  assign n123_o = tile_0_filtered_output[4];
  /* ip_cores/flopoco_fmul_4_4.vhdl:109:38  */
  assign n124_o = tile_0_filtered_output[5];
  /* ip_cores/flopoco_fmul_4_4.vhdl:110:38  */
  assign n125_o = tile_0_filtered_output[6];
  /* ip_cores/flopoco_fmul_4_4.vhdl:111:38  */
  assign n126_o = tile_0_filtered_output[7];
  /* ip_cores/flopoco_fmul_4_4.vhdl:112:38  */
  assign n127_o = tile_0_filtered_output[8];
  /* ip_cores/flopoco_fmul_4_4.vhdl:113:38  */
  assign n128_o = tile_0_filtered_output[9];
  /* ip_cores/flopoco_fmul_4_4.vhdl:118:40  */
  assign n129_o = {bh7_w9_0, bh7_w8_0};
  /* ip_cores/flopoco_fmul_4_4.vhdl:118:51  */
  assign n130_o = {n129_o, bh7_w7_0};
  /* ip_cores/flopoco_fmul_4_4.vhdl:118:62  */
  assign n131_o = {n130_o, bh7_w6_0};
  /* ip_cores/flopoco_fmul_4_4.vhdl:118:73  */
  assign n132_o = {n131_o, bh7_w5_0};
  /* ip_cores/flopoco_fmul_4_4.vhdl:118:84  */
  assign n133_o = {n132_o, bh7_w4_0};
  /* ip_cores/flopoco_fmul_4_4.vhdl:118:95  */
  assign n134_o = {n133_o, bh7_w3_0};
  /* ip_cores/flopoco_fmul_4_4.vhdl:118:106  */
  assign n135_o = {n134_o, bh7_w2_0};
  /* ip_cores/flopoco_fmul_4_4.vhdl:118:117  */
  assign n136_o = {n135_o, bh7_w1_0};
  /* ip_cores/flopoco_fmul_4_4.vhdl:118:128  */
  assign n137_o = {n136_o, bh7_w0_0};
endmodule

module fmul
  (input  clk,
   input  [10:0] X,
   input  [10:0] Y,
   output [10:0] R);
  wire sign;
  wire sign_d1;
  wire [3:0] expx;
  wire [3:0] expy;
  wire [5:0] expsumpresub;
  wire [5:0] bias;
  wire [5:0] expsum;
  wire [4:0] sigx;
  wire [4:0] sigy;
  wire [9:0] sigprod;
  wire [3:0] excsel;
  wire [1:0] exc;
  wire [1:0] exc_d1;
  wire norm;
  wire [5:0] exppostnorm;
  wire [9:0] sigprodext;
  wire [9:0] expsig;
  wire sticky;
  wire guard;
  wire round;
  wire [9:0] expsigpostround;
  wire [1:0] excpostnorm;
  wire [1:0] finalexc;
  reg n7_q;
  reg [1:0] n8_q;
  wire n9_o;
  wire n10_o;
  wire n11_o;
  wire [3:0] n12_o;
  wire [3:0] n13_o;
  wire [5:0] n15_o;
  wire [5:0] n17_o;
  wire [5:0] n18_o;
  wire [5:0] n20_o;
  wire [3:0] n21_o;
  wire [4:0] n23_o;
  wire [3:0] n24_o;
  wire [4:0] n26_o;
  wire [9:0] significandmultiplication_n27;
  wire [9:0] significandmultiplication_r;
  wire [1:0] n30_o;
  wire [1:0] n31_o;
  wire [3:0] n32_o;
  wire n35_o;
  wire n37_o;
  wire n38_o;
  wire n40_o;
  wire n41_o;
  wire n44_o;
  wire n47_o;
  wire n49_o;
  wire n50_o;
  wire n52_o;
  wire n53_o;
  wire [2:0] n55_o;
  reg [1:0] n56_o;
  wire n57_o;
  wire [5:0] n59_o;
  wire [5:0] n60_o;
  wire [8:0] n61_o;
  wire [9:0] n63_o;
  wire [9:0] n64_o;
  wire [7:0] n65_o;
  wire [9:0] n67_o;
  wire [3:0] n68_o;
  wire [9:0] n69_o;
  wire n70_o;
  wire [4:0] n72_o;
  wire n74_o;
  wire n75_o;
  wire n77_o;
  wire n78_o;
  wire n79_o;
  wire n80_o;
  wire n81_o;
  wire n82_o;
  localparam [9:0] n83_o = 10'b0000000000;
  wire [9:0] roundingadder_n84;
  wire [9:0] roundingadder_r;
  wire [1:0] n87_o;
  wire n90_o;
  wire n93_o;
  wire n96_o;
  wire n98_o;
  wire n99_o;
  wire [2:0] n101_o;
  reg [1:0] n102_o;
  wire n104_o;
  wire n106_o;
  wire n107_o;
  wire n109_o;
  wire n110_o;
  reg [1:0] n111_o;
  wire [2:0] n112_o;
  wire [7:0] n113_o;
  wire [10:0] n114_o;
  assign R = n114_o;
  /* ip_cores/flopoco_fmul_4_4.vhdl:221:8  */
  assign sign = n11_o; // (signal)
  /* ip_cores/flopoco_fmul_4_4.vhdl:221:14  */
  assign sign_d1 = n7_q; // (signal)
  /* ip_cores/flopoco_fmul_4_4.vhdl:222:8  */
  assign expx = n12_o; // (signal)
  /* ip_cores/flopoco_fmul_4_4.vhdl:223:8  */
  assign expy = n13_o; // (signal)
  /* ip_cores/flopoco_fmul_4_4.vhdl:224:8  */
  assign expsumpresub = n18_o; // (signal)
  /* ip_cores/flopoco_fmul_4_4.vhdl:225:8  */
  assign bias = 6'b000111; // (signal)
  /* ip_cores/flopoco_fmul_4_4.vhdl:226:8  */
  assign expsum = n20_o; // (signal)
  /* ip_cores/flopoco_fmul_4_4.vhdl:227:8  */
  assign sigx = n23_o; // (signal)
  /* ip_cores/flopoco_fmul_4_4.vhdl:228:8  */
  assign sigy = n26_o; // (signal)
  /* ip_cores/flopoco_fmul_4_4.vhdl:229:8  */
  assign sigprod = significandmultiplication_n27; // (signal)
  /* ip_cores/flopoco_fmul_4_4.vhdl:230:8  */
  assign excsel = n32_o; // (signal)
  /* ip_cores/flopoco_fmul_4_4.vhdl:231:8  */
  assign exc = n56_o; // (signal)
  /* ip_cores/flopoco_fmul_4_4.vhdl:231:13  */
  assign exc_d1 = n8_q; // (signal)
  /* ip_cores/flopoco_fmul_4_4.vhdl:232:8  */
  assign norm = n57_o; // (signal)
  /* ip_cores/flopoco_fmul_4_4.vhdl:233:8  */
  assign exppostnorm = n60_o; // (signal)
  /* ip_cores/flopoco_fmul_4_4.vhdl:234:8  */
  assign sigprodext = n64_o; // (signal)
  /* ip_cores/flopoco_fmul_4_4.vhdl:235:8  */
  assign expsig = n69_o; // (signal)
  /* ip_cores/flopoco_fmul_4_4.vhdl:236:8  */
  assign sticky = n70_o; // (signal)
  /* ip_cores/flopoco_fmul_4_4.vhdl:237:8  */
  assign guard = n75_o; // (signal)
  /* ip_cores/flopoco_fmul_4_4.vhdl:238:8  */
  assign round = n82_o; // (signal)
  /* ip_cores/flopoco_fmul_4_4.vhdl:239:8  */
  assign expsigpostround = roundingadder_n84; // (signal)
  /* ip_cores/flopoco_fmul_4_4.vhdl:240:8  */
  assign excpostnorm = n102_o; // (signal)
  /* ip_cores/flopoco_fmul_4_4.vhdl:241:8  */
  assign finalexc = n111_o; // (signal)
  /* ip_cores/flopoco_fmul_4_4.vhdl:245:10  */
  always @(posedge clk)
    n7_q <= sign;
  /* ip_cores/flopoco_fmul_4_4.vhdl:245:10  */
  always @(posedge clk)
    n8_q <= exc;
  /* ip_cores/flopoco_fmul_4_4.vhdl:250:13  */
  assign n9_o = X[8];
  /* ip_cores/flopoco_fmul_4_4.vhdl:250:22  */
  assign n10_o = Y[8];
  /* ip_cores/flopoco_fmul_4_4.vhdl:250:17  */
  assign n11_o = n9_o ^ n10_o;
  /* ip_cores/flopoco_fmul_4_4.vhdl:251:13  */
  assign n12_o = X[7:4];
  /* ip_cores/flopoco_fmul_4_4.vhdl:252:13  */
  assign n13_o = Y[7:4];
  /* ip_cores/flopoco_fmul_4_4.vhdl:253:26  */
  assign n15_o = {2'b00, expx};
  /* ip_cores/flopoco_fmul_4_4.vhdl:253:42  */
  assign n17_o = {2'b00, expy};
  /* ip_cores/flopoco_fmul_4_4.vhdl:253:34  */
  assign n18_o = n15_o + n17_o;
  /* ip_cores/flopoco_fmul_4_4.vhdl:255:27  */
  assign n20_o = expsumpresub - bias;
  /* ip_cores/flopoco_fmul_4_4.vhdl:256:19  */
  assign n21_o = X[3:0];
  /* ip_cores/flopoco_fmul_4_4.vhdl:256:16  */
  assign n23_o = {1'b1, n21_o};
  /* ip_cores/flopoco_fmul_4_4.vhdl:257:19  */
  assign n24_o = Y[3:0];
  /* ip_cores/flopoco_fmul_4_4.vhdl:257:16  */
  assign n26_o = {1'b1, n24_o};
  /* ip_cores/flopoco_fmul_4_4.vhdl:262:23  */
  assign significandmultiplication_n27 = significandmultiplication_r; // (signal)
  /* ip_cores/flopoco_fmul_4_4.vhdl:258:4  */
  intmultiplier_f300_uid5 significandmultiplication (
    .clk(clk),
    .x(sigx),
    .y(sigy),
    .r(significandmultiplication_r));
  /* ip_cores/flopoco_fmul_4_4.vhdl:263:15  */
  assign n30_o = X[10:9];
  /* ip_cores/flopoco_fmul_4_4.vhdl:263:32  */
  assign n31_o = Y[10:9];
  /* ip_cores/flopoco_fmul_4_4.vhdl:263:29  */
  assign n32_o = {n30_o, n31_o};
  /* ip_cores/flopoco_fmul_4_4.vhdl:265:16  */
  assign n35_o = excsel == 4'b0000;
  /* ip_cores/flopoco_fmul_4_4.vhdl:265:29  */
  assign n37_o = excsel == 4'b0001;
  /* ip_cores/flopoco_fmul_4_4.vhdl:265:29  */
  assign n38_o = n35_o | n37_o;
  /* ip_cores/flopoco_fmul_4_4.vhdl:265:38  */
  assign n40_o = excsel == 4'b0100;
  /* ip_cores/flopoco_fmul_4_4.vhdl:265:38  */
  assign n41_o = n38_o | n40_o;
  /* ip_cores/flopoco_fmul_4_4.vhdl:266:16  */
  assign n44_o = excsel == 4'b0101;
  /* ip_cores/flopoco_fmul_4_4.vhdl:267:16  */
  assign n47_o = excsel == 4'b0110;
  /* ip_cores/flopoco_fmul_4_4.vhdl:267:28  */
  assign n49_o = excsel == 4'b1001;
  /* ip_cores/flopoco_fmul_4_4.vhdl:267:28  */
  assign n50_o = n47_o | n49_o;
  /* ip_cores/flopoco_fmul_4_4.vhdl:267:37  */
  assign n52_o = excsel == 4'b1010;
  /* ip_cores/flopoco_fmul_4_4.vhdl:267:37  */
  assign n53_o = n50_o | n52_o;
  assign n55_o = {n53_o, n44_o, n41_o};
  /* ip_cores/flopoco_fmul_4_4.vhdl:264:4  */
  always @*
    case (n55_o)
      3'b100: n56_o <= 2'b10;
      3'b010: n56_o <= 2'b01;
      3'b001: n56_o <= 2'b00;
      default: n56_o <= 2'b11;
    endcase
  /* ip_cores/flopoco_fmul_4_4.vhdl:269:19  */
  assign n57_o = sigprod[9];
  /* ip_cores/flopoco_fmul_4_4.vhdl:271:37  */
  assign n59_o = {5'b00000, norm};
  /* ip_cores/flopoco_fmul_4_4.vhdl:271:26  */
  assign n60_o = expsum + n59_o;
  /* ip_cores/flopoco_fmul_4_4.vhdl:273:25  */
  assign n61_o = sigprod[8:0];
  /* ip_cores/flopoco_fmul_4_4.vhdl:273:38  */
  assign n63_o = {n61_o, 1'b0};
  /* ip_cores/flopoco_fmul_4_4.vhdl:273:44  */
  assign n64_o = norm ? n63_o : n67_o;
  /* ip_cores/flopoco_fmul_4_4.vhdl:274:33  */
  assign n65_o = sigprod[7:0];
  /* ip_cores/flopoco_fmul_4_4.vhdl:274:46  */
  assign n67_o = {n65_o, 2'b00};
  /* ip_cores/flopoco_fmul_4_4.vhdl:275:38  */
  assign n68_o = sigprodext[9:6];
  /* ip_cores/flopoco_fmul_4_4.vhdl:275:26  */
  assign n69_o = {exppostnorm, n68_o};
  /* ip_cores/flopoco_fmul_4_4.vhdl:276:24  */
  assign n70_o = sigprodext[5];
  /* ip_cores/flopoco_fmul_4_4.vhdl:277:32  */
  assign n72_o = sigprodext[4:0];
  /* ip_cores/flopoco_fmul_4_4.vhdl:277:44  */
  assign n74_o = n72_o == 5'b00000;
  /* ip_cores/flopoco_fmul_4_4.vhdl:277:17  */
  assign n75_o = n74_o ? 1'b0 : 1'b1;
  /* ip_cores/flopoco_fmul_4_4.vhdl:278:51  */
  assign n77_o = sigprodext[6];
  /* ip_cores/flopoco_fmul_4_4.vhdl:278:37  */
  assign n78_o = ~n77_o;
  /* ip_cores/flopoco_fmul_4_4.vhdl:278:33  */
  assign n79_o = guard & n78_o;
  /* ip_cores/flopoco_fmul_4_4.vhdl:278:71  */
  assign n80_o = sigprodext[6];
  /* ip_cores/flopoco_fmul_4_4.vhdl:278:57  */
  assign n81_o = n79_o | n80_o;
  /* ip_cores/flopoco_fmul_4_4.vhdl:278:20  */
  assign n82_o = sticky & n81_o;
  /* ip_cores/flopoco_fmul_4_4.vhdl:284:23  */
  assign roundingadder_n84 = roundingadder_r; // (signal)
  /* ip_cores/flopoco_fmul_4_4.vhdl:279:4  */
  intadder_10_f300_uid13 roundingadder (
    .clk(clk),
    .x(expsig),
    .y(n83_o),
    .cin(round),
    .r(roundingadder_r));
  /* ip_cores/flopoco_fmul_4_4.vhdl:285:24  */
  assign n87_o = expsigpostround[9:8];
  /* ip_cores/flopoco_fmul_4_4.vhdl:286:26  */
  assign n90_o = n87_o == 2'b00;
  /* ip_cores/flopoco_fmul_4_4.vhdl:287:49  */
  assign n93_o = n87_o == 2'b01;
  /* ip_cores/flopoco_fmul_4_4.vhdl:288:49  */
  assign n96_o = n87_o == 2'b11;
  /* ip_cores/flopoco_fmul_4_4.vhdl:288:58  */
  assign n98_o = n87_o == 2'b10;
  /* ip_cores/flopoco_fmul_4_4.vhdl:288:58  */
  assign n99_o = n96_o | n98_o;
  assign n101_o = {n99_o, n93_o, n90_o};
  /* ip_cores/flopoco_fmul_4_4.vhdl:285:4  */
  always @*
    case (n101_o)
      3'b100: n102_o <= 2'b00;
      3'b010: n102_o <= 2'b10;
      3'b001: n102_o <= 2'b01;
      default: n102_o <= 2'b11;
    endcase
  /* ip_cores/flopoco_fmul_4_4.vhdl:291:23  */
  assign n104_o = exc_d1 == 2'b11;
  /* ip_cores/flopoco_fmul_4_4.vhdl:291:33  */
  assign n106_o = exc_d1 == 2'b10;
  /* ip_cores/flopoco_fmul_4_4.vhdl:291:33  */
  assign n107_o = n104_o | n106_o;
  /* ip_cores/flopoco_fmul_4_4.vhdl:291:38  */
  assign n109_o = exc_d1 == 2'b00;
  /* ip_cores/flopoco_fmul_4_4.vhdl:291:38  */
  assign n110_o = n107_o | n109_o;
  /* ip_cores/flopoco_fmul_4_4.vhdl:290:4  */
  always @*
    case (n110_o)
      1'b1: n111_o <= exc_d1;
      default: n111_o <= excpostnorm;
    endcase
  /* ip_cores/flopoco_fmul_4_4.vhdl:293:18  */
  assign n112_o = {finalexc, sign_d1};
  /* ip_cores/flopoco_fmul_4_4.vhdl:293:45  */
  assign n113_o = expsigpostround[7:0];
  /* ip_cores/flopoco_fmul_4_4.vhdl:293:28  */
  assign n114_o = {n112_o, n113_o};
endmodule

