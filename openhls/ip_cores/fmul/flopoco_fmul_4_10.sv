module dspblock_11x11_f300_uid9
    (input wire clk,
        input wire[10:0] x,
        input wire[10:0] y,
        output wire[21:0] r);
    wire[21:0] mint;
    wire[21:0] m;
    wire[21:0] rtmp;
    wire[21:0] n182_o;
    wire[21:0] n183_o;
    wire[21:0] n184_o;
    assign r = rtmp;
    assign mint = n184_o; // (signal)
    assign m = mint; // (signal)
    assign rtmp = m; // (signal)
    assign n182_o = {11'b0, x};  //  uext
    assign n183_o = {11'b0, y};  //  uext
    assign n184_o = n182_o*n183_o; // umul
endmodule

module intadder_16_f300_uid13
    (input wire clk,
        input wire[15:0] x,
        input wire[15:0] y,
        input wire cin,
        output wire[15:0] r);
    wire cin_1;
    wire cin_1_d1;
    wire[16:0] x_1;
    wire[16:0] x_1_d1;
    wire[16:0] y_1;
    wire[16:0] y_1_d1;
    wire[16:0] s_1;
    wire[15:0] r_1;
    wire[16:0] n171_o;
    wire[16:0] n173_o;
    wire[16:0] n174_o;
    wire[16:0] n175_o;
    wire[16:0] n176_o;
    wire[15:0] n177_o;
    reg n178_q;
    reg[16:0] n179_q;
    reg[16:0] n180_q;
    assign r = r_1;
    assign cin_1 = cin; // (signal)
    assign cin_1_d1 = n178_q; // (signal)
    assign x_1 = n171_o; // (signal)
    assign x_1_d1 = n179_q; // (signal)
    assign y_1 = n173_o; // (signal)
    assign y_1_d1 = n180_q; // (signal)
    assign s_1 = n176_o; // (signal)
    assign r_1 = n177_o; // (signal)
    assign n171_o = {1'b0, x};
    assign n173_o = {1'b0, y};
    assign n174_o = x_1_d1+y_1_d1;
    assign n175_o = {16'b0, cin_1_d1};  //  uext
    assign n176_o = n174_o+n175_o;
    assign n177_o = s_1[15:0];
    always @(posedge clk)
        n178_q <= cin_1;
    always @(posedge clk)
        n179_q <= x_1;
    always @(posedge clk)
        n180_q <= y_1;
endmodule

module intmultiplier_f300_uid5
    (input wire clk,
        input wire[10:0] x,
        input wire[10:0] y,
        output wire[21:0] r);
    wire[10:0] tile_0_x;
    wire[10:0] tile_0_y;
    wire[21:0] tile_0_output;
    wire[21:0] tile_0_filtered_output;
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
    wire bh7_w10_0;
    wire bh7_w11_0;
    wire bh7_w12_0;
    wire bh7_w13_0;
    wire bh7_w14_0;
    wire bh7_w15_0;
    wire bh7_w16_0;
    wire bh7_w17_0;
    wire bh7_w18_0;
    wire bh7_w19_0;
    wire bh7_w20_0;
    wire bh7_w21_0;
    wire[21:0] tmp_bitheapresult_bh7_21;
    wire[21:0] bitheapresult_bh7;
    wire[21:0] tile_0_mult_n116;
    wire[21:0] tile_0_mult_r;
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
    wire n129_o;
    wire n130_o;
    wire n131_o;
    wire n132_o;
    wire n133_o;
    wire n134_o;
    wire n135_o;
    wire n136_o;
    wire n137_o;
    wire n138_o;
    wire n139_o;
    wire n140_o;
    wire[1:0] n141_o;
    wire[2:0] n142_o;
    wire[3:0] n143_o;
    wire[4:0] n144_o;
    wire[5:0] n145_o;
    wire[6:0] n146_o;
    wire[7:0] n147_o;
    wire[8:0] n148_o;
    wire[9:0] n149_o;
    wire[10:0] n150_o;
    wire[11:0] n151_o;
    wire[12:0] n152_o;
    wire[13:0] n153_o;
    wire[14:0] n154_o;
    wire[15:0] n155_o;
    wire[16:0] n156_o;
    wire[17:0] n157_o;
    wire[18:0] n158_o;
    wire[19:0] n159_o;
    wire[20:0] n160_o;
    wire[21:0] n161_o;
    assign r = bitheapresult_bh7;
    assign tile_0_x = x; // (signal)
    assign tile_0_y = y; // (signal)
    assign tile_0_output = tile_0_mult_n116; // (signal)
    assign tile_0_filtered_output = tile_0_output; // (signal)
    assign bh7_w0_0 = n119_o; // (signal)
    assign bh7_w1_0 = n120_o; // (signal)
    assign bh7_w2_0 = n121_o; // (signal)
    assign bh7_w3_0 = n122_o; // (signal)
    assign bh7_w4_0 = n123_o; // (signal)
    assign bh7_w5_0 = n124_o; // (signal)
    assign bh7_w6_0 = n125_o; // (signal)
    assign bh7_w7_0 = n126_o; // (signal)
    assign bh7_w8_0 = n127_o; // (signal)
    assign bh7_w9_0 = n128_o; // (signal)
    assign bh7_w10_0 = n129_o; // (signal)
    assign bh7_w11_0 = n130_o; // (signal)
    assign bh7_w12_0 = n131_o; // (signal)
    assign bh7_w13_0 = n132_o; // (signal)
    assign bh7_w14_0 = n133_o; // (signal)
    assign bh7_w15_0 = n134_o; // (signal)
    assign bh7_w16_0 = n135_o; // (signal)
    assign bh7_w17_0 = n136_o; // (signal)
    assign bh7_w18_0 = n137_o; // (signal)
    assign bh7_w19_0 = n138_o; // (signal)
    assign bh7_w20_0 = n139_o; // (signal)
    assign bh7_w21_0 = n140_o; // (signal)
    assign tmp_bitheapresult_bh7_21 = n161_o; // (signal)
    assign bitheapresult_bh7 = tmp_bitheapresult_bh7_21; // (signal)
    assign tile_0_mult_n116 = tile_0_mult_r; // (signal)
    dspblock_11x11_f300_uid9 tile_0_mult(
        .clk(clk),
        .x(tile_0_x),
        .y(tile_0_y),
        .r(tile_0_mult_r));
    assign n119_o = tile_0_filtered_output[0];
    assign n120_o = tile_0_filtered_output[1];
    assign n121_o = tile_0_filtered_output[2];
    assign n122_o = tile_0_filtered_output[3];
    assign n123_o = tile_0_filtered_output[4];
    assign n124_o = tile_0_filtered_output[5];
    assign n125_o = tile_0_filtered_output[6];
    assign n126_o = tile_0_filtered_output[7];
    assign n127_o = tile_0_filtered_output[8];
    assign n128_o = tile_0_filtered_output[9];
    assign n129_o = tile_0_filtered_output[10];
    assign n130_o = tile_0_filtered_output[11];
    assign n131_o = tile_0_filtered_output[12];
    assign n132_o = tile_0_filtered_output[13];
    assign n133_o = tile_0_filtered_output[14];
    assign n134_o = tile_0_filtered_output[15];
    assign n135_o = tile_0_filtered_output[16];
    assign n136_o = tile_0_filtered_output[17];
    assign n137_o = tile_0_filtered_output[18];
    assign n138_o = tile_0_filtered_output[19];
    assign n139_o = tile_0_filtered_output[20];
    assign n140_o = tile_0_filtered_output[21];
    assign n141_o = {bh7_w21_0, bh7_w20_0};
    assign n142_o = {n141_o, bh7_w19_0};
    assign n143_o = {n142_o, bh7_w18_0};
    assign n144_o = {n143_o, bh7_w17_0};
    assign n145_o = {n144_o, bh7_w16_0};
    assign n146_o = {n145_o, bh7_w15_0};
    assign n147_o = {n146_o, bh7_w14_0};
    assign n148_o = {n147_o, bh7_w13_0};
    assign n149_o = {n148_o, bh7_w12_0};
    assign n150_o = {n149_o, bh7_w11_0};
    assign n151_o = {n150_o, bh7_w10_0};
    assign n152_o = {n151_o, bh7_w9_0};
    assign n153_o = {n152_o, bh7_w8_0};
    assign n154_o = {n153_o, bh7_w7_0};
    assign n155_o = {n154_o, bh7_w6_0};
    assign n156_o = {n155_o, bh7_w5_0};
    assign n157_o = {n156_o, bh7_w4_0};
    assign n158_o = {n157_o, bh7_w3_0};
    assign n159_o = {n158_o, bh7_w2_0};
    assign n160_o = {n159_o, bh7_w1_0};
    assign n161_o = {n160_o, bh7_w0_0};
endmodule

module fmul#(parameter ID=1)
    (input wire clk,
        input wire[16:0] X,
        input wire[16:0] Y,
        output wire[16:0] R);
    wire sign;
    wire sign_d1;
    wire[3:0] expx;
    wire[3:0] expy;
    wire[5:0] expsumpresub;
    wire[5:0] bias;
    wire[5:0] expsum;
    wire[10:0] sigx;
    wire[10:0] sigy;
    wire[21:0] sigprod;
    wire[3:0] excsel;
    wire[1:0] exc;
    wire[1:0] exc_d1;
    wire norm;
    wire[5:0] exppostnorm;
    wire[21:0] sigprodext;
    wire[15:0] expsig;
    wire sticky;
    wire guard;
    wire round;
    wire[15:0] expsigpostround;
    wire[1:0] excpostnorm;
    wire[1:0] finalexc;
    wire n7_o;
    wire n8_o;
    wire n9_o;
    wire[3:0] n10_o;
    wire[3:0] n11_o;
    wire[5:0] n13_o;
    wire[5:0] n15_o;
    wire[5:0] n16_o;
    wire[5:0] n18_o;
    wire[9:0] n19_o;
    wire[10:0] n21_o;
    wire[9:0] n22_o;
    wire[10:0] n24_o;
    wire[21:0] significandmultiplication_n25;
    wire[21:0] significandmultiplication_r;
    wire[1:0] n28_o;
    wire[1:0] n29_o;
    wire[3:0] n30_o;
    wire n33_o;
    wire n35_o;
    wire n36_o;
    wire n38_o;
    wire n39_o;
    wire n42_o;
    wire n45_o;
    wire n47_o;
    wire n48_o;
    wire n50_o;
    wire n51_o;
    wire[2:0] n53_o;
    reg[1:0] n54_o;
    wire n55_o;
    wire[5:0] n57_o;
    wire[5:0] n58_o;
    wire[20:0] n59_o;
    wire[21:0] n61_o;
    wire[21:0] n62_o;
    wire[19:0] n63_o;
    wire[21:0] n65_o;
    wire[9:0] n66_o;
    wire[15:0] n67_o;
    wire n68_o;
    wire[10:0] n70_o;
    wire n72_o;
    wire n73_o;
    wire n75_o;
    wire n76_o;
    wire n77_o;
    wire n78_o;
    wire n79_o;
    wire n80_o;
    localparam [15:0] n81_o = 16'b0000000000000000;
    wire[15:0] roundingadder_n82;
    wire[15:0] roundingadder_r;
    wire[1:0] n85_o;
    wire n88_o;
    wire n91_o;
    wire n94_o;
    wire n96_o;
    wire n97_o;
    wire[2:0] n99_o;
    reg[1:0] n100_o;
    wire n102_o;
    wire n104_o;
    wire n105_o;
    wire n107_o;
    wire n108_o;
    reg[1:0] n109_o;
    wire[2:0] n110_o;
    wire[13:0] n111_o;
    wire[16:0] n112_o;
    reg n113_q;
    reg[1:0] n114_q;
    assign R = n112_o;
    assign sign = n9_o; // (signal)
    assign sign_d1 = n113_q; // (signal)
    assign expx = n10_o; // (signal)
    assign expy = n11_o; // (signal)
    assign expsumpresub = n16_o; // (signal)
    assign bias = 6'b000111; // (signal)
    assign expsum = n18_o; // (signal)
    assign sigx = n21_o; // (signal)
    assign sigy = n24_o; // (signal)
    assign sigprod = significandmultiplication_n25; // (signal)
    assign excsel = n30_o; // (signal)
    assign exc = n54_o; // (signal)
    assign exc_d1 = n114_q; // (signal)
    assign norm = n55_o; // (signal)
    assign exppostnorm = n58_o; // (signal)
    assign sigprodext = n62_o; // (signal)
    assign expsig = n67_o; // (signal)
    assign sticky = n68_o; // (signal)
    assign guard = n73_o; // (signal)
    assign round = n80_o; // (signal)
    assign expsigpostround = roundingadder_n82; // (signal)
    assign excpostnorm = n100_o; // (signal)
    assign finalexc = n109_o; // (signal)
    assign n7_o = X[14];
    assign n8_o = Y[14];
    assign n9_o = n7_o ^ n8_o;
    assign n10_o = X[13:10];
    assign n11_o = Y[13:10];
    assign n13_o = {2'b00, expx};
    assign n15_o = {2'b00, expy};
    assign n16_o = n13_o+n15_o;
    assign n18_o = expsumpresub-bias;
    assign n19_o = X[9:0];
    assign n21_o = {1'b1, n19_o};
    assign n22_o = Y[9:0];
    assign n24_o = {1'b1, n22_o};
    assign significandmultiplication_n25 = significandmultiplication_r; // (signal)
    intmultiplier_f300_uid5 significandmultiplication(
        .clk(clk),
        .x(sigx),
        .y(sigy),
        .r(significandmultiplication_r));
    assign n28_o = X[16:15];
    assign n29_o = Y[16:15];
    assign n30_o = {n28_o, n29_o};
    assign n33_o = excsel == 4'b0000;
    assign n35_o = excsel == 4'b0001;
    assign n36_o = n33_o | n35_o;
    assign n38_o = excsel == 4'b0100;
    assign n39_o = n36_o | n38_o;
    assign n42_o = excsel == 4'b0101;
    assign n45_o = excsel == 4'b0110;
    assign n47_o = excsel == 4'b1001;
    assign n48_o = n45_o | n47_o;
    assign n50_o = excsel == 4'b1010;
    assign n51_o = n48_o | n50_o;
    assign n53_o = {n51_o, n42_o, n39_o};
    always @*
        case (n53_o)
            3'b100: n54_o = 2'b10;
            3'b010: n54_o = 2'b01;
            3'b001: n54_o = 2'b00;
            default: n54_o = 2'b11;
        endcase
    assign n55_o = sigprod[21];
    assign n57_o = {5'b00000, norm};
    assign n58_o = expsum+n57_o;
    assign n59_o = sigprod[20:0];
    assign n61_o = {n59_o, 1'b0};
    assign n62_o = norm ? n61_o : n65_o;
    assign n63_o = sigprod[19:0];
    assign n65_o = {n63_o, 2'b00};
    assign n66_o = sigprodext[21:12];
    assign n67_o = {exppostnorm, n66_o};
    assign n68_o = sigprodext[11];
    assign n70_o = sigprodext[10:0];
    assign n72_o = n70_o == 11'b00000000000;
    assign n73_o = n72_o ? 1'b0 : 1'b1;
    assign n75_o = sigprodext[12];
    assign n76_o = ~n75_o;
    assign n77_o = guard & n76_o;
    assign n78_o = sigprodext[12];
    assign n79_o = n77_o | n78_o;
    assign n80_o = sticky & n79_o;
    assign roundingadder_n82 = roundingadder_r; // (signal)
    intadder_16_f300_uid13 roundingadder(
        .clk(clk),
        .x(expsig),
        .y(n81_o),
        .cin(round),
        .r(roundingadder_r));
    assign n85_o = expsigpostround[15:14];
    assign n88_o = n85_o == 2'b00;
    assign n91_o = n85_o == 2'b01;
    assign n94_o = n85_o == 2'b11;
    assign n96_o = n85_o == 2'b10;
    assign n97_o = n94_o | n96_o;
    assign n99_o = {n97_o, n91_o, n88_o};
    always @*
        case (n99_o)
            3'b100: n100_o = 2'b00;
            3'b010: n100_o = 2'b10;
            3'b001: n100_o = 2'b01;
            default: n100_o = 2'b11;
        endcase
    assign n102_o = exc_d1 == 2'b11;
    assign n104_o = exc_d1 == 2'b10;
    assign n105_o = n102_o | n104_o;
    assign n107_o = exc_d1 == 2'b00;
    assign n108_o = n105_o | n107_o;
    always @*
        case (n108_o)
            1'b1: n109_o = exc_d1;
            default: n109_o = excpostnorm;
        endcase
    assign n110_o = {finalexc, sign_d1};
    assign n111_o = expsigpostround[13:0];
    assign n112_o = {n110_o, n111_o};
    always @(posedge clk)
        n113_q <= sign;
    always @(posedge clk)
        n114_q <= exc;
endmodule

