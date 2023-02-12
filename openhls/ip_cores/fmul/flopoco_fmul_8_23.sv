module intadder_32_f300_uid14
    (input wire clk,
        input wire[31:0] x,
        input wire[31:0] y,
        input wire cin,
        output wire[31:0] r);
    wire[31:0] rtmp;
    wire[31:0] n300_o;
    wire[31:0] n301_o;
    wire[31:0] n302_o;
    assign r = rtmp;
    assign rtmp = n302_o; // (signal)
    assign n300_o = x+y;
    assign n301_o = {31'b0, cin};  //  uext
    assign n302_o = n300_o+n301_o;
endmodule

module dspblock_7x24_f300_uid11
    (input wire clk,
        input wire[6:0] x,
        input wire[23:0] y,
        output wire[30:0] r);
    wire[30:0] mint;
    wire[30:0] m;
    wire[30:0] rtmp;
    wire[30:0] n296_o;
    wire[30:0] n297_o;
    wire[30:0] n298_o;
    assign r = rtmp;
    assign mint = n298_o; // (signal)
    assign m = mint; // (signal)
    assign rtmp = m; // (signal)
    assign n296_o = {24'b0, x};  //  uext
    assign n297_o = {7'b0, y};  //  uext
    assign n298_o = n296_o*n297_o; // umul
endmodule

module dspblock_17x24_f300_uid9
    (input wire clk,
        input wire[16:0] x,
        input wire[23:0] y,
        output wire[40:0] r);
    wire[40:0] mint;
    wire[40:0] m;
    wire[40:0] rtmp;
    wire[40:0] n292_o;
    wire[40:0] n293_o;
    wire[40:0] n294_o;
    assign r = rtmp;
    assign mint = n294_o; // (signal)
    assign m = mint; // (signal)
    assign rtmp = m; // (signal)
    assign n292_o = {24'b0, x};  //  uext
    assign n293_o = {17'b0, y};  //  uext
    assign n294_o = n292_o*n293_o; // umul
endmodule

module intadder_33_f300_uid17
    (input wire clk,
        input wire[32:0] x,
        input wire[32:0] y,
        input wire cin,
        output wire[32:0] r);
    wire[32:0] rtmp;
    wire[32:0] x_d1;
    wire[32:0] y_d1;
    wire[32:0] n286_o;
    wire[32:0] n287_o;
    wire[32:0] n288_o;
    reg[32:0] n289_q;
    reg[32:0] n290_q;
    assign r = rtmp;
    assign rtmp = n288_o; // (signal)
    assign x_d1 = n289_q; // (signal)
    assign y_d1 = n290_q; // (signal)
    assign n286_o = x_d1+y_d1;
    assign n287_o = {32'b0, cin};  //  uext
    assign n288_o = n286_o+n287_o;
    always @(posedge clk)
        n289_q <= x;
    always @(posedge clk)
        n290_q <= y;
endmodule

module intmultiplier_f300_uid5
    (input wire clk,
        input wire[23:0] x,
        input wire[23:0] y,
        output wire[47:0] r);
    wire[16:0] tile_0_x;
    wire[23:0] tile_0_y;
    wire[40:0] tile_0_output;
    wire[40:0] tile_0_filtered_output;
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
    wire bh7_w22_0;
    wire bh7_w23_0;
    wire bh7_w24_0;
    wire bh7_w25_0;
    wire bh7_w26_0;
    wire bh7_w27_0;
    wire bh7_w28_0;
    wire bh7_w29_0;
    wire bh7_w30_0;
    wire bh7_w31_0;
    wire bh7_w32_0;
    wire bh7_w33_0;
    wire bh7_w34_0;
    wire bh7_w35_0;
    wire bh7_w36_0;
    wire bh7_w37_0;
    wire bh7_w38_0;
    wire bh7_w39_0;
    wire bh7_w40_0;
    wire[6:0] tile_1_x;
    wire[23:0] tile_1_y;
    wire[30:0] tile_1_output;
    wire[30:0] tile_1_filtered_output;
    wire bh7_w17_1;
    wire bh7_w18_1;
    wire bh7_w19_1;
    wire bh7_w20_1;
    wire bh7_w21_1;
    wire bh7_w22_1;
    wire bh7_w23_1;
    wire bh7_w24_1;
    wire bh7_w25_1;
    wire bh7_w26_1;
    wire bh7_w27_1;
    wire bh7_w28_1;
    wire bh7_w29_1;
    wire bh7_w30_1;
    wire bh7_w31_1;
    wire bh7_w32_1;
    wire bh7_w33_1;
    wire bh7_w34_1;
    wire bh7_w35_1;
    wire bh7_w36_1;
    wire bh7_w37_1;
    wire bh7_w38_1;
    wire bh7_w39_1;
    wire bh7_w40_1;
    wire bh7_w41_0;
    wire bh7_w42_0;
    wire bh7_w43_0;
    wire bh7_w44_0;
    wire bh7_w45_0;
    wire bh7_w46_0;
    wire bh7_w47_0;
    wire[16:0] tmp_bitheapresult_bh7_16;
    wire[31:0] bitheapfinaladd_bh7_in0;
    wire[31:0] bitheapfinaladd_bh7_in1;
    wire bitheapfinaladd_bh7_cin;
    wire[31:0] bitheapfinaladd_bh7_out;
    wire[47:0] bitheapresult_bh7;
    wire[16:0] n120_o;
    wire[40:0] tile_0_mult_n121;
    wire[40:0] tile_0_mult_r;
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
    wire n141_o;
    wire n142_o;
    wire n143_o;
    wire n144_o;
    wire n145_o;
    wire n146_o;
    wire n147_o;
    wire n148_o;
    wire n149_o;
    wire n150_o;
    wire n151_o;
    wire n152_o;
    wire n153_o;
    wire n154_o;
    wire n155_o;
    wire n156_o;
    wire n157_o;
    wire n158_o;
    wire n159_o;
    wire n160_o;
    wire n161_o;
    wire n162_o;
    wire n163_o;
    wire n164_o;
    wire[6:0] n165_o;
    wire[30:0] tile_1_mult_n166;
    wire[30:0] tile_1_mult_r;
    wire n169_o;
    wire n170_o;
    wire n171_o;
    wire n172_o;
    wire n173_o;
    wire n174_o;
    wire n175_o;
    wire n176_o;
    wire n177_o;
    wire n178_o;
    wire n179_o;
    wire n180_o;
    wire n181_o;
    wire n182_o;
    wire n183_o;
    wire n184_o;
    wire n185_o;
    wire n186_o;
    wire n187_o;
    wire n188_o;
    wire n189_o;
    wire n190_o;
    wire n191_o;
    wire n192_o;
    wire n193_o;
    wire n194_o;
    wire n195_o;
    wire n196_o;
    wire n197_o;
    wire n198_o;
    wire n199_o;
    wire[1:0] n200_o;
    wire[2:0] n201_o;
    wire[3:0] n202_o;
    wire[4:0] n203_o;
    wire[5:0] n204_o;
    wire[6:0] n205_o;
    wire[7:0] n206_o;
    wire[8:0] n207_o;
    wire[9:0] n208_o;
    wire[10:0] n209_o;
    wire[11:0] n210_o;
    wire[12:0] n211_o;
    wire[13:0] n212_o;
    wire[14:0] n213_o;
    wire[15:0] n214_o;
    wire[16:0] n215_o;
    wire[1:0] n217_o;
    wire[2:0] n218_o;
    wire[3:0] n219_o;
    wire[4:0] n220_o;
    wire[5:0] n221_o;
    wire[6:0] n222_o;
    wire[7:0] n223_o;
    wire[8:0] n224_o;
    wire[9:0] n225_o;
    wire[10:0] n226_o;
    wire[11:0] n227_o;
    wire[12:0] n228_o;
    wire[13:0] n229_o;
    wire[14:0] n230_o;
    wire[15:0] n231_o;
    wire[16:0] n232_o;
    wire[17:0] n233_o;
    wire[18:0] n234_o;
    wire[19:0] n235_o;
    wire[20:0] n236_o;
    wire[21:0] n237_o;
    wire[22:0] n238_o;
    wire[23:0] n239_o;
    wire[24:0] n240_o;
    wire[25:0] n241_o;
    wire[26:0] n242_o;
    wire[27:0] n243_o;
    wire[28:0] n244_o;
    wire[29:0] n245_o;
    wire[30:0] n246_o;
    wire[31:0] n247_o;
    wire[8:0] n249_o;
    wire[9:0] n250_o;
    wire[10:0] n251_o;
    wire[11:0] n252_o;
    wire[12:0] n253_o;
    wire[13:0] n254_o;
    wire[14:0] n255_o;
    wire[15:0] n256_o;
    wire[16:0] n257_o;
    wire[17:0] n258_o;
    wire[18:0] n259_o;
    wire[19:0] n260_o;
    wire[20:0] n261_o;
    wire[21:0] n262_o;
    wire[22:0] n263_o;
    wire[23:0] n264_o;
    wire[24:0] n265_o;
    wire[25:0] n266_o;
    wire[26:0] n267_o;
    wire[27:0] n268_o;
    wire[28:0] n269_o;
    wire[29:0] n270_o;
    wire[30:0] n271_o;
    wire[31:0] n272_o;
    wire[31:0] bitheapfinaladd_bh7_n274;
    wire[31:0] bitheapfinaladd_bh7_r;
    wire[30:0] n277_o;
    wire[47:0] n278_o;
    assign r = bitheapresult_bh7;
    assign tile_0_x = n120_o; // (signal)
    assign tile_0_y = y; // (signal)
    assign tile_0_output = tile_0_mult_n121; // (signal)
    assign tile_0_filtered_output = tile_0_output; // (signal)
    assign bh7_w0_0 = n124_o; // (signal)
    assign bh7_w1_0 = n125_o; // (signal)
    assign bh7_w2_0 = n126_o; // (signal)
    assign bh7_w3_0 = n127_o; // (signal)
    assign bh7_w4_0 = n128_o; // (signal)
    assign bh7_w5_0 = n129_o; // (signal)
    assign bh7_w6_0 = n130_o; // (signal)
    assign bh7_w7_0 = n131_o; // (signal)
    assign bh7_w8_0 = n132_o; // (signal)
    assign bh7_w9_0 = n133_o; // (signal)
    assign bh7_w10_0 = n134_o; // (signal)
    assign bh7_w11_0 = n135_o; // (signal)
    assign bh7_w12_0 = n136_o; // (signal)
    assign bh7_w13_0 = n137_o; // (signal)
    assign bh7_w14_0 = n138_o; // (signal)
    assign bh7_w15_0 = n139_o; // (signal)
    assign bh7_w16_0 = n140_o; // (signal)
    assign bh7_w17_0 = n141_o; // (signal)
    assign bh7_w18_0 = n142_o; // (signal)
    assign bh7_w19_0 = n143_o; // (signal)
    assign bh7_w20_0 = n144_o; // (signal)
    assign bh7_w21_0 = n145_o; // (signal)
    assign bh7_w22_0 = n146_o; // (signal)
    assign bh7_w23_0 = n147_o; // (signal)
    assign bh7_w24_0 = n148_o; // (signal)
    assign bh7_w25_0 = n149_o; // (signal)
    assign bh7_w26_0 = n150_o; // (signal)
    assign bh7_w27_0 = n151_o; // (signal)
    assign bh7_w28_0 = n152_o; // (signal)
    assign bh7_w29_0 = n153_o; // (signal)
    assign bh7_w30_0 = n154_o; // (signal)
    assign bh7_w31_0 = n155_o; // (signal)
    assign bh7_w32_0 = n156_o; // (signal)
    assign bh7_w33_0 = n157_o; // (signal)
    assign bh7_w34_0 = n158_o; // (signal)
    assign bh7_w35_0 = n159_o; // (signal)
    assign bh7_w36_0 = n160_o; // (signal)
    assign bh7_w37_0 = n161_o; // (signal)
    assign bh7_w38_0 = n162_o; // (signal)
    assign bh7_w39_0 = n163_o; // (signal)
    assign bh7_w40_0 = n164_o; // (signal)
    assign tile_1_x = n165_o; // (signal)
    assign tile_1_y = y; // (signal)
    assign tile_1_output = tile_1_mult_n166; // (signal)
    assign tile_1_filtered_output = tile_1_output; // (signal)
    assign bh7_w17_1 = n169_o; // (signal)
    assign bh7_w18_1 = n170_o; // (signal)
    assign bh7_w19_1 = n171_o; // (signal)
    assign bh7_w20_1 = n172_o; // (signal)
    assign bh7_w21_1 = n173_o; // (signal)
    assign bh7_w22_1 = n174_o; // (signal)
    assign bh7_w23_1 = n175_o; // (signal)
    assign bh7_w24_1 = n176_o; // (signal)
    assign bh7_w25_1 = n177_o; // (signal)
    assign bh7_w26_1 = n178_o; // (signal)
    assign bh7_w27_1 = n179_o; // (signal)
    assign bh7_w28_1 = n180_o; // (signal)
    assign bh7_w29_1 = n181_o; // (signal)
    assign bh7_w30_1 = n182_o; // (signal)
    assign bh7_w31_1 = n183_o; // (signal)
    assign bh7_w32_1 = n184_o; // (signal)
    assign bh7_w33_1 = n185_o; // (signal)
    assign bh7_w34_1 = n186_o; // (signal)
    assign bh7_w35_1 = n187_o; // (signal)
    assign bh7_w36_1 = n188_o; // (signal)
    assign bh7_w37_1 = n189_o; // (signal)
    assign bh7_w38_1 = n190_o; // (signal)
    assign bh7_w39_1 = n191_o; // (signal)
    assign bh7_w40_1 = n192_o; // (signal)
    assign bh7_w41_0 = n193_o; // (signal)
    assign bh7_w42_0 = n194_o; // (signal)
    assign bh7_w43_0 = n195_o; // (signal)
    assign bh7_w44_0 = n196_o; // (signal)
    assign bh7_w45_0 = n197_o; // (signal)
    assign bh7_w46_0 = n198_o; // (signal)
    assign bh7_w47_0 = n199_o; // (signal)
    assign tmp_bitheapresult_bh7_16 = n215_o; // (signal)
    assign bitheapfinaladd_bh7_in0 = n247_o; // (signal)
    assign bitheapfinaladd_bh7_in1 = n272_o; // (signal)
    assign bitheapfinaladd_bh7_cin = 1'b0; // (signal)
    assign bitheapfinaladd_bh7_out = bitheapfinaladd_bh7_n274; // (signal)
    assign bitheapresult_bh7 = n278_o; // (signal)
    assign n120_o = x[16:0];
    assign tile_0_mult_n121 = tile_0_mult_r; // (signal)
    dspblock_17x24_f300_uid9 tile_0_mult(
        .clk(clk),
        .x(tile_0_x),
        .y(tile_0_y),
        .r(tile_0_mult_r));
    assign n124_o = tile_0_filtered_output[0];
    assign n125_o = tile_0_filtered_output[1];
    assign n126_o = tile_0_filtered_output[2];
    assign n127_o = tile_0_filtered_output[3];
    assign n128_o = tile_0_filtered_output[4];
    assign n129_o = tile_0_filtered_output[5];
    assign n130_o = tile_0_filtered_output[6];
    assign n131_o = tile_0_filtered_output[7];
    assign n132_o = tile_0_filtered_output[8];
    assign n133_o = tile_0_filtered_output[9];
    assign n134_o = tile_0_filtered_output[10];
    assign n135_o = tile_0_filtered_output[11];
    assign n136_o = tile_0_filtered_output[12];
    assign n137_o = tile_0_filtered_output[13];
    assign n138_o = tile_0_filtered_output[14];
    assign n139_o = tile_0_filtered_output[15];
    assign n140_o = tile_0_filtered_output[16];
    assign n141_o = tile_0_filtered_output[17];
    assign n142_o = tile_0_filtered_output[18];
    assign n143_o = tile_0_filtered_output[19];
    assign n144_o = tile_0_filtered_output[20];
    assign n145_o = tile_0_filtered_output[21];
    assign n146_o = tile_0_filtered_output[22];
    assign n147_o = tile_0_filtered_output[23];
    assign n148_o = tile_0_filtered_output[24];
    assign n149_o = tile_0_filtered_output[25];
    assign n150_o = tile_0_filtered_output[26];
    assign n151_o = tile_0_filtered_output[27];
    assign n152_o = tile_0_filtered_output[28];
    assign n153_o = tile_0_filtered_output[29];
    assign n154_o = tile_0_filtered_output[30];
    assign n155_o = tile_0_filtered_output[31];
    assign n156_o = tile_0_filtered_output[32];
    assign n157_o = tile_0_filtered_output[33];
    assign n158_o = tile_0_filtered_output[34];
    assign n159_o = tile_0_filtered_output[35];
    assign n160_o = tile_0_filtered_output[36];
    assign n161_o = tile_0_filtered_output[37];
    assign n162_o = tile_0_filtered_output[38];
    assign n163_o = tile_0_filtered_output[39];
    assign n164_o = tile_0_filtered_output[40];
    assign n165_o = x[23:17];
    assign tile_1_mult_n166 = tile_1_mult_r; // (signal)
    dspblock_7x24_f300_uid11 tile_1_mult(
        .clk(clk),
        .x(tile_1_x),
        .y(tile_1_y),
        .r(tile_1_mult_r));
    assign n169_o = tile_1_filtered_output[0];
    assign n170_o = tile_1_filtered_output[1];
    assign n171_o = tile_1_filtered_output[2];
    assign n172_o = tile_1_filtered_output[3];
    assign n173_o = tile_1_filtered_output[4];
    assign n174_o = tile_1_filtered_output[5];
    assign n175_o = tile_1_filtered_output[6];
    assign n176_o = tile_1_filtered_output[7];
    assign n177_o = tile_1_filtered_output[8];
    assign n178_o = tile_1_filtered_output[9];
    assign n179_o = tile_1_filtered_output[10];
    assign n180_o = tile_1_filtered_output[11];
    assign n181_o = tile_1_filtered_output[12];
    assign n182_o = tile_1_filtered_output[13];
    assign n183_o = tile_1_filtered_output[14];
    assign n184_o = tile_1_filtered_output[15];
    assign n185_o = tile_1_filtered_output[16];
    assign n186_o = tile_1_filtered_output[17];
    assign n187_o = tile_1_filtered_output[18];
    assign n188_o = tile_1_filtered_output[19];
    assign n189_o = tile_1_filtered_output[20];
    assign n190_o = tile_1_filtered_output[21];
    assign n191_o = tile_1_filtered_output[22];
    assign n192_o = tile_1_filtered_output[23];
    assign n193_o = tile_1_filtered_output[24];
    assign n194_o = tile_1_filtered_output[25];
    assign n195_o = tile_1_filtered_output[26];
    assign n196_o = tile_1_filtered_output[27];
    assign n197_o = tile_1_filtered_output[28];
    assign n198_o = tile_1_filtered_output[29];
    assign n199_o = tile_1_filtered_output[30];
    assign n200_o = {bh7_w16_0, bh7_w15_0};
    assign n201_o = {n200_o, bh7_w14_0};
    assign n202_o = {n201_o, bh7_w13_0};
    assign n203_o = {n202_o, bh7_w12_0};
    assign n204_o = {n203_o, bh7_w11_0};
    assign n205_o = {n204_o, bh7_w10_0};
    assign n206_o = {n205_o, bh7_w9_0};
    assign n207_o = {n206_o, bh7_w8_0};
    assign n208_o = {n207_o, bh7_w7_0};
    assign n209_o = {n208_o, bh7_w6_0};
    assign n210_o = {n209_o, bh7_w5_0};
    assign n211_o = {n210_o, bh7_w4_0};
    assign n212_o = {n211_o, bh7_w3_0};
    assign n213_o = {n212_o, bh7_w2_0};
    assign n214_o = {n213_o, bh7_w1_0};
    assign n215_o = {n214_o, bh7_w0_0};
    assign n217_o = {1'b0, bh7_w47_0};
    assign n218_o = {n217_o, bh7_w46_0};
    assign n219_o = {n218_o, bh7_w45_0};
    assign n220_o = {n219_o, bh7_w44_0};
    assign n221_o = {n220_o, bh7_w43_0};
    assign n222_o = {n221_o, bh7_w42_0};
    assign n223_o = {n222_o, bh7_w41_0};
    assign n224_o = {n223_o, bh7_w40_0};
    assign n225_o = {n224_o, bh7_w39_0};
    assign n226_o = {n225_o, bh7_w38_0};
    assign n227_o = {n226_o, bh7_w37_0};
    assign n228_o = {n227_o, bh7_w36_0};
    assign n229_o = {n228_o, bh7_w35_0};
    assign n230_o = {n229_o, bh7_w34_0};
    assign n231_o = {n230_o, bh7_w33_0};
    assign n232_o = {n231_o, bh7_w32_0};
    assign n233_o = {n232_o, bh7_w31_0};
    assign n234_o = {n233_o, bh7_w30_0};
    assign n235_o = {n234_o, bh7_w29_0};
    assign n236_o = {n235_o, bh7_w28_0};
    assign n237_o = {n236_o, bh7_w27_0};
    assign n238_o = {n237_o, bh7_w26_0};
    assign n239_o = {n238_o, bh7_w25_0};
    assign n240_o = {n239_o, bh7_w24_0};
    assign n241_o = {n240_o, bh7_w23_0};
    assign n242_o = {n241_o, bh7_w22_0};
    assign n243_o = {n242_o, bh7_w21_0};
    assign n244_o = {n243_o, bh7_w20_0};
    assign n245_o = {n244_o, bh7_w19_0};
    assign n246_o = {n245_o, bh7_w18_0};
    assign n247_o = {n246_o, bh7_w17_0};
    assign n249_o = {8'b00000000, bh7_w40_1};
    assign n250_o = {n249_o, bh7_w39_1};
    assign n251_o = {n250_o, bh7_w38_1};
    assign n252_o = {n251_o, bh7_w37_1};
    assign n253_o = {n252_o, bh7_w36_1};
    assign n254_o = {n253_o, bh7_w35_1};
    assign n255_o = {n254_o, bh7_w34_1};
    assign n256_o = {n255_o, bh7_w33_1};
    assign n257_o = {n256_o, bh7_w32_1};
    assign n258_o = {n257_o, bh7_w31_1};
    assign n259_o = {n258_o, bh7_w30_1};
    assign n260_o = {n259_o, bh7_w29_1};
    assign n261_o = {n260_o, bh7_w28_1};
    assign n262_o = {n261_o, bh7_w27_1};
    assign n263_o = {n262_o, bh7_w26_1};
    assign n264_o = {n263_o, bh7_w25_1};
    assign n265_o = {n264_o, bh7_w24_1};
    assign n266_o = {n265_o, bh7_w23_1};
    assign n267_o = {n266_o, bh7_w22_1};
    assign n268_o = {n267_o, bh7_w21_1};
    assign n269_o = {n268_o, bh7_w20_1};
    assign n270_o = {n269_o, bh7_w19_1};
    assign n271_o = {n270_o, bh7_w18_1};
    assign n272_o = {n271_o, bh7_w17_1};
    assign bitheapfinaladd_bh7_n274 = bitheapfinaladd_bh7_r; // (signal)
    intadder_32_f300_uid14 bitheapfinaladd_bh7(
        .clk(clk),
        .x(bitheapfinaladd_bh7_in0),
        .y(bitheapfinaladd_bh7_in1),
        .cin(bitheapfinaladd_bh7_cin),
        .r(bitheapfinaladd_bh7_r));
    assign n277_o = bitheapfinaladd_bh7_out[30:0];
    assign n278_o = {n277_o, tmp_bitheapresult_bh7_16};
endmodule

module fmul#(parameter ID=1)
    (input wire clk,
        input wire[33:0] X,
        input wire[33:0] Y,
        output wire[33:0] R);
    wire sign;
    wire sign_d1;
    wire[7:0] expx;
    wire[7:0] expy;
    wire[9:0] expsumpresub;
    wire[9:0] bias;
    wire[9:0] expsum;
    wire[23:0] sigx;
    wire[23:0] sigy;
    wire[47:0] sigprod;
    wire[3:0] excsel;
    wire[1:0] exc;
    wire[1:0] exc_d1;
    wire norm;
    wire[9:0] exppostnorm;
    wire[47:0] sigprodext;
    wire[47:0] sigprodext_d1;
    wire[32:0] expsig;
    wire sticky;
    wire sticky_d1;
    wire guard;
    wire round;
    wire[32:0] expsigpostround;
    wire[1:0] excpostnorm;
    wire[1:0] finalexc;
    wire n9_o;
    wire n10_o;
    wire n11_o;
    wire[7:0] n12_o;
    wire[7:0] n13_o;
    wire[9:0] n15_o;
    wire[9:0] n17_o;
    wire[9:0] n18_o;
    wire[9:0] n20_o;
    wire[22:0] n21_o;
    wire[23:0] n23_o;
    wire[22:0] n24_o;
    wire[23:0] n26_o;
    wire[47:0] significandmultiplication_n27;
    wire[47:0] significandmultiplication_r;
    wire[1:0] n30_o;
    wire[1:0] n31_o;
    wire[3:0] n32_o;
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
    wire[2:0] n55_o;
    reg[1:0] n56_o;
    wire n57_o;
    wire[9:0] n59_o;
    wire[9:0] n60_o;
    wire[46:0] n61_o;
    wire[47:0] n63_o;
    wire[47:0] n64_o;
    wire[45:0] n65_o;
    wire[47:0] n67_o;
    wire[22:0] n68_o;
    wire[32:0] n69_o;
    wire n70_o;
    wire[23:0] n72_o;
    wire n74_o;
    wire n75_o;
    wire n77_o;
    wire n78_o;
    wire n79_o;
    wire n80_o;
    wire n81_o;
    wire n82_o;
    localparam [32:0] n83_o = 33'b000000000000000000000000000000000;
    wire[32:0] roundingadder_n84;
    wire[32:0] roundingadder_r;
    wire[1:0] n87_o;
    wire n90_o;
    wire n93_o;
    wire n96_o;
    wire n98_o;
    wire n99_o;
    wire[2:0] n101_o;
    reg[1:0] n102_o;
    wire n104_o;
    wire n106_o;
    wire n107_o;
    wire n109_o;
    wire n110_o;
    reg[1:0] n111_o;
    wire[2:0] n112_o;
    wire[30:0] n113_o;
    wire[33:0] n114_o;
    reg n115_q;
    reg[1:0] n116_q;
    reg[47:0] n117_q;
    reg n118_q;
    assign R = n114_o;
    assign sign = n11_o; // (signal)
    assign sign_d1 = n115_q; // (signal)
    assign expx = n12_o; // (signal)
    assign expy = n13_o; // (signal)
    assign expsumpresub = n18_o; // (signal)
    assign bias = 10'b0001111111; // (signal)
    assign expsum = n20_o; // (signal)
    assign sigx = n23_o; // (signal)
    assign sigy = n26_o; // (signal)
    assign sigprod = significandmultiplication_n27; // (signal)
    assign excsel = n32_o; // (signal)
    assign exc = n56_o; // (signal)
    assign exc_d1 = n116_q; // (signal)
    assign norm = n57_o; // (signal)
    assign exppostnorm = n60_o; // (signal)
    assign sigprodext = n64_o; // (signal)
    assign sigprodext_d1 = n117_q; // (signal)
    assign expsig = n69_o; // (signal)
    assign sticky = n70_o; // (signal)
    assign sticky_d1 = n118_q; // (signal)
    assign guard = n75_o; // (signal)
    assign round = n82_o; // (signal)
    assign expsigpostround = roundingadder_n84; // (signal)
    assign excpostnorm = n102_o; // (signal)
    assign finalexc = n111_o; // (signal)
    assign n9_o = X[31];
    assign n10_o = Y[31];
    assign n11_o = n9_o ^ n10_o;
    assign n12_o = X[30:23];
    assign n13_o = Y[30:23];
    assign n15_o = {2'b00, expx};
    assign n17_o = {2'b00, expy};
    assign n18_o = n15_o+n17_o;
    assign n20_o = expsumpresub-bias;
    assign n21_o = X[22:0];
    assign n23_o = {1'b1, n21_o};
    assign n24_o = Y[22:0];
    assign n26_o = {1'b1, n24_o};
    assign significandmultiplication_n27 = significandmultiplication_r; // (signal)
    intmultiplier_f300_uid5 significandmultiplication(
        .clk(clk),
        .x(sigx),
        .y(sigy),
        .r(significandmultiplication_r));
    assign n30_o = X[33:32];
    assign n31_o = Y[33:32];
    assign n32_o = {n30_o, n31_o};
    assign n35_o = excsel == 4'b0000;
    assign n37_o = excsel == 4'b0001;
    assign n38_o = n35_o | n37_o;
    assign n40_o = excsel == 4'b0100;
    assign n41_o = n38_o | n40_o;
    assign n44_o = excsel == 4'b0101;
    assign n47_o = excsel == 4'b0110;
    assign n49_o = excsel == 4'b1001;
    assign n50_o = n47_o | n49_o;
    assign n52_o = excsel == 4'b1010;
    assign n53_o = n50_o | n52_o;
    assign n55_o = {n53_o, n44_o, n41_o};
    always @*
        case (n55_o)
            3'b100: n56_o = 2'b10;
            3'b010: n56_o = 2'b01;
            3'b001: n56_o = 2'b00;
            default: n56_o = 2'b11;
        endcase
    assign n57_o = sigprod[47];
    assign n59_o = {9'b000000000, norm};
    assign n60_o = expsum+n59_o;
    assign n61_o = sigprod[46:0];
    assign n63_o = {n61_o, 1'b0};
    assign n64_o = norm ? n63_o : n67_o;
    assign n65_o = sigprod[45:0];
    assign n67_o = {n65_o, 2'b00};
    assign n68_o = sigprodext[47:25];
    assign n69_o = {exppostnorm, n68_o};
    assign n70_o = sigprodext[24];
    assign n72_o = sigprodext_d1[23:0];
    assign n74_o = n72_o == 24'b000000000000000000000000;
    assign n75_o = n74_o ? 1'b0 : 1'b1;
    assign n77_o = sigprodext_d1[25];
    assign n78_o = ~n77_o;
    assign n79_o = guard & n78_o;
    assign n80_o = sigprodext_d1[25];
    assign n81_o = n79_o | n80_o;
    assign n82_o = sticky_d1 & n81_o;
    assign roundingadder_n84 = roundingadder_r; // (signal)
    intadder_33_f300_uid17 roundingadder(
        .clk(clk),
        .x(expsig),
        .y(n83_o),
        .cin(round),
        .r(roundingadder_r));
    assign n87_o = expsigpostround[32:31];
    assign n90_o = n87_o == 2'b00;
    assign n93_o = n87_o == 2'b01;
    assign n96_o = n87_o == 2'b11;
    assign n98_o = n87_o == 2'b10;
    assign n99_o = n96_o | n98_o;
    assign n101_o = {n99_o, n93_o, n90_o};
    always @*
        case (n101_o)
            3'b100: n102_o = 2'b00;
            3'b010: n102_o = 2'b10;
            3'b001: n102_o = 2'b01;
            default: n102_o = 2'b11;
        endcase
    assign n104_o = exc_d1 == 2'b11;
    assign n106_o = exc_d1 == 2'b10;
    assign n107_o = n104_o | n106_o;
    assign n109_o = exc_d1 == 2'b00;
    assign n110_o = n107_o | n109_o;
    always @*
        case (n110_o)
            1'b1: n111_o = exc_d1;
            default: n111_o = excpostnorm;
        endcase
    assign n112_o = {finalexc, sign_d1};
    assign n113_o = expsigpostround[30:0];
    assign n114_o = {n112_o, n113_o};
    always @(posedge clk)
        n115_q <= sign;
    always @(posedge clk)
        n116_q <= exc;
    always @(posedge clk)
        n117_q <= sigprodext;
    always @(posedge clk)
        n118_q <= sticky;
endmodule

