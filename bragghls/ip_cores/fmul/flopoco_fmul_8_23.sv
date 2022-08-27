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
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:107:8  */
    assign rtmp = n302_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:109:14  */
    assign n300_o = x+y;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:109:18  */
    assign n301_o = {31'b0, cin};  //  uext
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:109:18  */
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
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:72:13  */
    assign mint = n298_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:68:8  */
    assign m = mint; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:69:8  */
    assign rtmp = m; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:71:41  */
    assign n296_o = {24'b0, x};  //  uext
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:71:41  */
    assign n297_o = {7'b0, y};  //  uext
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:71:41  */
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
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:34:13  */
    assign mint = n294_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:30:8  */
    assign m = mint; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:31:8  */
    assign rtmp = m; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:33:41  */
    assign n292_o = {24'b0, x};  //  uext
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:33:41  */
    assign n293_o = {17'b0, y};  //  uext
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:33:41  */
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
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:394:8  */
    assign rtmp = n288_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:395:8  */
    assign x_d1 = n289_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:396:8  */
    assign y_d1 = n290_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:405:17  */
    assign n286_o = x_d1+y_d1;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:405:24  */
    assign n287_o = {32'b0, cin};  //  uext
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:405:24  */
    assign n288_o = n286_o+n287_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:400:10  */
    always @(posedge clk)
        n289_q <= x;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:400:10  */
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
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:165:8  */
    assign tile_0_x = n120_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:166:8  */
    assign tile_0_y = y; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:262:52  */
    assign tile_0_output = tile_0_mult_n121; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:168:8  */
    assign tile_0_filtered_output = tile_0_output; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:169:8  */
    assign bh7_w0_0 = n124_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:170:8  */
    assign bh7_w1_0 = n125_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:171:8  */
    assign bh7_w2_0 = n126_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:172:8  */
    assign bh7_w3_0 = n127_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:173:8  */
    assign bh7_w4_0 = n128_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:174:8  */
    assign bh7_w5_0 = n129_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:175:8  */
    assign bh7_w6_0 = n130_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:176:8  */
    assign bh7_w7_0 = n131_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:177:8  */
    assign bh7_w8_0 = n132_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:178:8  */
    assign bh7_w9_0 = n133_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:179:8  */
    assign bh7_w10_0 = n134_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:180:8  */
    assign bh7_w11_0 = n135_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:181:8  */
    assign bh7_w12_0 = n136_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:182:8  */
    assign bh7_w13_0 = n137_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:183:8  */
    assign bh7_w14_0 = n138_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:184:8  */
    assign bh7_w15_0 = n139_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:185:8  */
    assign bh7_w16_0 = n140_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:186:8  */
    assign bh7_w17_0 = n141_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:187:8  */
    assign bh7_w18_0 = n142_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:188:8  */
    assign bh7_w19_0 = n143_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:189:8  */
    assign bh7_w20_0 = n144_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:190:8  */
    assign bh7_w21_0 = n145_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:191:8  */
    assign bh7_w22_0 = n146_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:192:8  */
    assign bh7_w23_0 = n147_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:193:8  */
    assign bh7_w24_0 = n148_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:194:8  */
    assign bh7_w25_0 = n149_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:195:8  */
    assign bh7_w26_0 = n150_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:196:8  */
    assign bh7_w27_0 = n151_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:197:8  */
    assign bh7_w28_0 = n152_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:198:8  */
    assign bh7_w29_0 = n153_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:199:8  */
    assign bh7_w30_0 = n154_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:200:8  */
    assign bh7_w31_0 = n155_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:201:8  */
    assign bh7_w32_0 = n156_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:202:8  */
    assign bh7_w33_0 = n157_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:203:8  */
    assign bh7_w34_0 = n158_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:204:8  */
    assign bh7_w35_0 = n159_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:205:8  */
    assign bh7_w36_0 = n160_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:206:8  */
    assign bh7_w37_0 = n161_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:207:8  */
    assign bh7_w38_0 = n162_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:208:8  */
    assign bh7_w39_0 = n163_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:209:8  */
    assign bh7_w40_0 = n164_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:210:8  */
    assign tile_1_x = n165_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:211:8  */
    assign tile_1_y = y; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:312:52  */
    assign tile_1_output = tile_1_mult_n166; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:213:8  */
    assign tile_1_filtered_output = tile_1_output; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:214:8  */
    assign bh7_w17_1 = n169_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:215:8  */
    assign bh7_w18_1 = n170_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:216:8  */
    assign bh7_w19_1 = n171_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:217:8  */
    assign bh7_w20_1 = n172_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:218:8  */
    assign bh7_w21_1 = n173_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:219:8  */
    assign bh7_w22_1 = n174_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:220:8  */
    assign bh7_w23_1 = n175_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:221:8  */
    assign bh7_w24_1 = n176_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:222:8  */
    assign bh7_w25_1 = n177_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:223:8  */
    assign bh7_w26_1 = n178_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:224:8  */
    assign bh7_w27_1 = n179_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:225:8  */
    assign bh7_w28_1 = n180_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:226:8  */
    assign bh7_w29_1 = n181_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:227:8  */
    assign bh7_w30_1 = n182_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:228:8  */
    assign bh7_w31_1 = n183_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:229:8  */
    assign bh7_w32_1 = n184_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:230:8  */
    assign bh7_w33_1 = n185_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:231:8  */
    assign bh7_w34_1 = n186_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:232:8  */
    assign bh7_w35_1 = n187_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:233:8  */
    assign bh7_w36_1 = n188_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:234:8  */
    assign bh7_w37_1 = n189_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:235:8  */
    assign bh7_w38_1 = n190_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:236:8  */
    assign bh7_w39_1 = n191_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:237:8  */
    assign bh7_w40_1 = n192_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:238:8  */
    assign bh7_w41_0 = n193_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:239:8  */
    assign bh7_w42_0 = n194_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:240:8  */
    assign bh7_w43_0 = n195_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:241:8  */
    assign bh7_w44_0 = n196_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:242:8  */
    assign bh7_w45_0 = n197_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:243:8  */
    assign bh7_w46_0 = n198_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:244:8  */
    assign bh7_w47_0 = n199_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:245:8  */
    assign tmp_bitheapresult_bh7_16 = n215_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:246:8  */
    assign bitheapfinaladd_bh7_in0 = n247_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:247:8  */
    assign bitheapfinaladd_bh7_in1 = n272_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:248:8  */
    assign bitheapfinaladd_bh7_cin = 1'b0; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:249:8  */
    assign bitheapfinaladd_bh7_out = bitheapfinaladd_bh7_n274; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:361:26  */
    assign bitheapresult_bh7 = n278_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:254:17  */
    assign n120_o = x[16:0];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:260:23  */
    assign tile_0_mult_n121 = tile_0_mult_r; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:256:4  */
    dspblock_17x24_f300_uid9 tile_0_mult(
        .clk(clk),
        .x(tile_0_x),
        .y(tile_0_y),
        .r(tile_0_mult_r));
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:263:38  */
    assign n124_o = tile_0_filtered_output[0];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:264:38  */
    assign n125_o = tile_0_filtered_output[1];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:265:38  */
    assign n126_o = tile_0_filtered_output[2];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:266:38  */
    assign n127_o = tile_0_filtered_output[3];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:267:38  */
    assign n128_o = tile_0_filtered_output[4];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:268:38  */
    assign n129_o = tile_0_filtered_output[5];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:269:38  */
    assign n130_o = tile_0_filtered_output[6];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:270:38  */
    assign n131_o = tile_0_filtered_output[7];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:271:38  */
    assign n132_o = tile_0_filtered_output[8];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:272:38  */
    assign n133_o = tile_0_filtered_output[9];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:273:39  */
    assign n134_o = tile_0_filtered_output[10];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:274:39  */
    assign n135_o = tile_0_filtered_output[11];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:275:39  */
    assign n136_o = tile_0_filtered_output[12];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:276:39  */
    assign n137_o = tile_0_filtered_output[13];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:277:39  */
    assign n138_o = tile_0_filtered_output[14];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:278:39  */
    assign n139_o = tile_0_filtered_output[15];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:279:39  */
    assign n140_o = tile_0_filtered_output[16];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:280:39  */
    assign n141_o = tile_0_filtered_output[17];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:281:39  */
    assign n142_o = tile_0_filtered_output[18];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:282:39  */
    assign n143_o = tile_0_filtered_output[19];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:283:39  */
    assign n144_o = tile_0_filtered_output[20];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:284:39  */
    assign n145_o = tile_0_filtered_output[21];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:285:39  */
    assign n146_o = tile_0_filtered_output[22];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:286:39  */
    assign n147_o = tile_0_filtered_output[23];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:287:39  */
    assign n148_o = tile_0_filtered_output[24];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:288:39  */
    assign n149_o = tile_0_filtered_output[25];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:289:39  */
    assign n150_o = tile_0_filtered_output[26];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:290:39  */
    assign n151_o = tile_0_filtered_output[27];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:291:39  */
    assign n152_o = tile_0_filtered_output[28];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:292:39  */
    assign n153_o = tile_0_filtered_output[29];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:293:39  */
    assign n154_o = tile_0_filtered_output[30];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:294:39  */
    assign n155_o = tile_0_filtered_output[31];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:295:39  */
    assign n156_o = tile_0_filtered_output[32];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:296:39  */
    assign n157_o = tile_0_filtered_output[33];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:297:39  */
    assign n158_o = tile_0_filtered_output[34];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:298:39  */
    assign n159_o = tile_0_filtered_output[35];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:299:39  */
    assign n160_o = tile_0_filtered_output[36];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:300:39  */
    assign n161_o = tile_0_filtered_output[37];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:301:39  */
    assign n162_o = tile_0_filtered_output[38];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:302:39  */
    assign n163_o = tile_0_filtered_output[39];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:303:39  */
    assign n164_o = tile_0_filtered_output[40];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:304:17  */
    assign n165_o = x[23:17];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:310:23  */
    assign tile_1_mult_n166 = tile_1_mult_r; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:306:4  */
    dspblock_7x24_f300_uid11 tile_1_mult(
        .clk(clk),
        .x(tile_1_x),
        .y(tile_1_y),
        .r(tile_1_mult_r));
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:313:39  */
    assign n169_o = tile_1_filtered_output[0];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:314:39  */
    assign n170_o = tile_1_filtered_output[1];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:315:39  */
    assign n171_o = tile_1_filtered_output[2];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:316:39  */
    assign n172_o = tile_1_filtered_output[3];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:317:39  */
    assign n173_o = tile_1_filtered_output[4];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:318:39  */
    assign n174_o = tile_1_filtered_output[5];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:319:39  */
    assign n175_o = tile_1_filtered_output[6];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:320:39  */
    assign n176_o = tile_1_filtered_output[7];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:321:39  */
    assign n177_o = tile_1_filtered_output[8];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:322:39  */
    assign n178_o = tile_1_filtered_output[9];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:323:39  */
    assign n179_o = tile_1_filtered_output[10];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:324:39  */
    assign n180_o = tile_1_filtered_output[11];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:325:39  */
    assign n181_o = tile_1_filtered_output[12];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:326:39  */
    assign n182_o = tile_1_filtered_output[13];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:327:39  */
    assign n183_o = tile_1_filtered_output[14];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:328:39  */
    assign n184_o = tile_1_filtered_output[15];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:329:39  */
    assign n185_o = tile_1_filtered_output[16];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:330:39  */
    assign n186_o = tile_1_filtered_output[17];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:331:39  */
    assign n187_o = tile_1_filtered_output[18];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:332:39  */
    assign n188_o = tile_1_filtered_output[19];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:333:39  */
    assign n189_o = tile_1_filtered_output[20];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:334:39  */
    assign n190_o = tile_1_filtered_output[21];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:335:39  */
    assign n191_o = tile_1_filtered_output[22];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:336:39  */
    assign n192_o = tile_1_filtered_output[23];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:337:39  */
    assign n193_o = tile_1_filtered_output[24];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:338:39  */
    assign n194_o = tile_1_filtered_output[25];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:339:39  */
    assign n195_o = tile_1_filtered_output[26];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:340:39  */
    assign n196_o = tile_1_filtered_output[27];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:341:39  */
    assign n197_o = tile_1_filtered_output[28];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:342:39  */
    assign n198_o = tile_1_filtered_output[29];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:343:39  */
    assign n199_o = tile_1_filtered_output[30];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:348:42  */
    assign n200_o = {bh7_w16_0, bh7_w15_0};
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:348:54  */
    assign n201_o = {n200_o, bh7_w14_0};
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:348:66  */
    assign n202_o = {n201_o, bh7_w13_0};
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:348:78  */
    assign n203_o = {n202_o, bh7_w12_0};
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:348:90  */
    assign n204_o = {n203_o, bh7_w11_0};
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:348:102  */
    assign n205_o = {n204_o, bh7_w10_0};
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:348:114  */
    assign n206_o = {n205_o, bh7_w9_0};
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:348:125  */
    assign n207_o = {n206_o, bh7_w8_0};
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:348:136  */
    assign n208_o = {n207_o, bh7_w7_0};
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:348:147  */
    assign n209_o = {n208_o, bh7_w6_0};
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:348:158  */
    assign n210_o = {n209_o, bh7_w5_0};
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:348:169  */
    assign n211_o = {n210_o, bh7_w4_0};
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:348:180  */
    assign n212_o = {n211_o, bh7_w3_0};
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:348:191  */
    assign n213_o = {n212_o, bh7_w2_0};
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:348:202  */
    assign n214_o = {n213_o, bh7_w1_0};
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:348:213  */
    assign n215_o = {n214_o, bh7_w0_0};
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:350:35  */
    assign n217_o = {1'b0, bh7_w47_0};
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:350:47  */
    assign n218_o = {n217_o, bh7_w46_0};
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:350:59  */
    assign n219_o = {n218_o, bh7_w45_0};
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:350:71  */
    assign n220_o = {n219_o, bh7_w44_0};
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:350:83  */
    assign n221_o = {n220_o, bh7_w43_0};
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:350:95  */
    assign n222_o = {n221_o, bh7_w42_0};
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:350:107  */
    assign n223_o = {n222_o, bh7_w41_0};
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:350:119  */
    assign n224_o = {n223_o, bh7_w40_0};
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:350:131  */
    assign n225_o = {n224_o, bh7_w39_0};
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:350:143  */
    assign n226_o = {n225_o, bh7_w38_0};
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:350:155  */
    assign n227_o = {n226_o, bh7_w37_0};
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:350:167  */
    assign n228_o = {n227_o, bh7_w36_0};
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:350:179  */
    assign n229_o = {n228_o, bh7_w35_0};
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:350:191  */
    assign n230_o = {n229_o, bh7_w34_0};
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:350:203  */
    assign n231_o = {n230_o, bh7_w33_0};
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:350:215  */
    assign n232_o = {n231_o, bh7_w32_0};
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:350:227  */
    assign n233_o = {n232_o, bh7_w31_0};
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:350:239  */
    assign n234_o = {n233_o, bh7_w30_0};
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:350:251  */
    assign n235_o = {n234_o, bh7_w29_0};
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:350:263  */
    assign n236_o = {n235_o, bh7_w28_0};
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:350:275  */
    assign n237_o = {n236_o, bh7_w27_0};
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:350:287  */
    assign n238_o = {n237_o, bh7_w26_0};
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:350:299  */
    assign n239_o = {n238_o, bh7_w25_0};
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:350:311  */
    assign n240_o = {n239_o, bh7_w24_0};
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:350:323  */
    assign n241_o = {n240_o, bh7_w23_0};
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:350:335  */
    assign n242_o = {n241_o, bh7_w22_0};
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:350:347  */
    assign n243_o = {n242_o, bh7_w21_0};
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:350:359  */
    assign n244_o = {n243_o, bh7_w20_0};
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:350:371  */
    assign n245_o = {n244_o, bh7_w19_0};
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:350:383  */
    assign n246_o = {n245_o, bh7_w18_0};
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:350:395  */
    assign n247_o = {n246_o, bh7_w17_0};
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:351:77  */
    assign n249_o = {8'b00000000, bh7_w40_1};
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:351:89  */
    assign n250_o = {n249_o, bh7_w39_1};
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:351:101  */
    assign n251_o = {n250_o, bh7_w38_1};
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:351:113  */
    assign n252_o = {n251_o, bh7_w37_1};
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:351:125  */
    assign n253_o = {n252_o, bh7_w36_1};
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:351:137  */
    assign n254_o = {n253_o, bh7_w35_1};
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:351:149  */
    assign n255_o = {n254_o, bh7_w34_1};
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:351:161  */
    assign n256_o = {n255_o, bh7_w33_1};
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:351:173  */
    assign n257_o = {n256_o, bh7_w32_1};
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:351:185  */
    assign n258_o = {n257_o, bh7_w31_1};
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:351:197  */
    assign n259_o = {n258_o, bh7_w30_1};
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:351:209  */
    assign n260_o = {n259_o, bh7_w29_1};
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:351:221  */
    assign n261_o = {n260_o, bh7_w28_1};
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:351:233  */
    assign n262_o = {n261_o, bh7_w27_1};
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:351:245  */
    assign n263_o = {n262_o, bh7_w26_1};
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:351:257  */
    assign n264_o = {n263_o, bh7_w25_1};
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:351:269  */
    assign n265_o = {n264_o, bh7_w24_1};
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:351:281  */
    assign n266_o = {n265_o, bh7_w23_1};
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:351:293  */
    assign n267_o = {n266_o, bh7_w22_1};
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:351:305  */
    assign n268_o = {n267_o, bh7_w21_1};
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:351:317  */
    assign n269_o = {n268_o, bh7_w20_1};
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:351:329  */
    assign n270_o = {n269_o, bh7_w19_1};
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:351:341  */
    assign n271_o = {n270_o, bh7_w18_1};
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:351:353  */
    assign n272_o = {n271_o, bh7_w17_1};
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:359:23  */
    assign bitheapfinaladd_bh7_n274 = bitheapfinaladd_bh7_r; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:354:4  */
    intadder_32_f300_uid14 bitheapfinaladd_bh7(
        .clk(clk),
        .x(bitheapfinaladd_bh7_in0),
        .y(bitheapfinaladd_bh7_in1),
        .cin(bitheapfinaladd_bh7_cin),
        .r(bitheapfinaladd_bh7_r));
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:360:48  */
    assign n277_o = bitheapfinaladd_bh7_out[30:0];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:360:62  */
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
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:454:8  */
    assign sign = n11_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:454:14  */
    assign sign_d1 = n115_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:455:8  */
    assign expx = n12_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:456:8  */
    assign expy = n13_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:457:8  */
    assign expsumpresub = n18_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:458:8  */
    assign bias = 10'b0001111111; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:459:8  */
    assign expsum = n20_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:460:8  */
    assign sigx = n23_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:461:8  */
    assign sigy = n26_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:462:8  */
    assign sigprod = significandmultiplication_n27; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:463:8  */
    assign excsel = n32_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:464:8  */
    assign exc = n56_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:464:13  */
    assign exc_d1 = n116_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:465:8  */
    assign norm = n57_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:466:8  */
    assign exppostnorm = n60_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:467:8  */
    assign sigprodext = n64_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:467:20  */
    assign sigprodext_d1 = n117_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:468:8  */
    assign expsig = n69_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:469:8  */
    assign sticky = n70_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:469:16  */
    assign sticky_d1 = n118_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:470:8  */
    assign guard = n75_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:471:8  */
    assign round = n82_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:472:8  */
    assign expsigpostround = roundingadder_n84; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:473:8  */
    assign excpostnorm = n102_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:474:8  */
    assign finalexc = n111_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:485:13  */
    assign n9_o = X[31];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:485:23  */
    assign n10_o = Y[31];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:485:18  */
    assign n11_o = n9_o ^ n10_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:486:13  */
    assign n12_o = X[30:23];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:487:13  */
    assign n13_o = Y[30:23];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:488:26  */
    assign n15_o = {2'b00, expx};
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:488:42  */
    assign n17_o = {2'b00, expy};
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:488:34  */
    assign n18_o = n15_o+n17_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:490:27  */
    assign n20_o = expsumpresub-bias;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:491:19  */
    assign n21_o = X[22:0];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:491:16  */
    assign n23_o = {1'b1, n21_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:492:19  */
    assign n24_o = Y[22:0];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:492:16  */
    assign n26_o = {1'b1, n24_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:497:23  */
    assign significandmultiplication_n27 = significandmultiplication_r; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:493:4  */
    intmultiplier_f300_uid5 significandmultiplication(
        .clk(clk),
        .x(sigx),
        .y(sigy),
        .r(significandmultiplication_r));
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:498:15  */
    assign n30_o = X[33:32];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:498:33  */
    assign n31_o = Y[33:32];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:498:30  */
    assign n32_o = {n30_o, n31_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:500:16  */
    assign n35_o = excsel == 4'b0000;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:500:29  */
    assign n37_o = excsel == 4'b0001;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:500:29  */
    assign n38_o = n35_o | n37_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:500:38  */
    assign n40_o = excsel == 4'b0100;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:500:38  */
    assign n41_o = n38_o | n40_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:501:16  */
    assign n44_o = excsel == 4'b0101;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:502:16  */
    assign n47_o = excsel == 4'b0110;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:502:28  */
    assign n49_o = excsel == 4'b1001;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:502:28  */
    assign n50_o = n47_o | n49_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:502:37  */
    assign n52_o = excsel == 4'b1010;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:502:37  */
    assign n53_o = n50_o | n52_o;
    assign n55_o = {n53_o, n44_o, n41_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:499:4  */
    always @*
        case (n55_o)
            3'b100: n56_o = 2'b10;
            3'b010: n56_o = 2'b01;
            3'b001: n56_o = 2'b00;
            default: n56_o = 2'b11;
        endcase
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:504:19  */
    assign n57_o = sigprod[47];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:506:41  */
    assign n59_o = {9'b000000000, norm};
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:506:26  */
    assign n60_o = expsum+n59_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:508:25  */
    assign n61_o = sigprod[46:0];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:508:39  */
    assign n63_o = {n61_o, 1'b0};
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:508:45  */
    assign n64_o = norm ? n63_o : n67_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:509:33  */
    assign n65_o = sigprod[45:0];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:509:47  */
    assign n67_o = {n65_o, 2'b00};
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:510:38  */
    assign n68_o = sigprodext[47:25];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:510:26  */
    assign n69_o = {exppostnorm, n68_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:511:24  */
    assign n70_o = sigprodext[24];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:512:35  */
    assign n72_o = sigprodext_d1[23:0];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:512:48  */
    assign n74_o = n72_o == 24'b000000000000000000000000;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:512:17  */
    assign n75_o = n74_o ? 1'b0 : 1'b1;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:513:57  */
    assign n77_o = sigprodext_d1[25];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:513:40  */
    assign n78_o = ~n77_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:513:36  */
    assign n79_o = guard & n78_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:513:81  */
    assign n80_o = sigprodext_d1[25];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:513:64  */
    assign n81_o = n79_o | n80_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:513:23  */
    assign n82_o = sticky_d1 & n81_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:519:23  */
    assign roundingadder_n84 = roundingadder_r; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:514:4  */
    intadder_33_f300_uid17 roundingadder(
        .clk(clk),
        .x(expsig),
        .y(n83_o),
        .cin(round),
        .r(roundingadder_r));
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:520:24  */
    assign n87_o = expsigpostround[32:31];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:521:26  */
    assign n90_o = n87_o == 2'b00;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:522:49  */
    assign n93_o = n87_o == 2'b01;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:523:49  */
    assign n96_o = n87_o == 2'b11;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:523:58  */
    assign n98_o = n87_o == 2'b10;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:523:58  */
    assign n99_o = n96_o | n98_o;
    assign n101_o = {n99_o, n93_o, n90_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:520:4  */
    always @*
        case (n101_o)
            3'b100: n102_o = 2'b00;
            3'b010: n102_o = 2'b10;
            3'b001: n102_o = 2'b01;
            default: n102_o = 2'b11;
        endcase
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:526:23  */
    assign n104_o = exc_d1 == 2'b11;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:526:33  */
    assign n106_o = exc_d1 == 2'b10;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:526:33  */
    assign n107_o = n104_o | n106_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:526:38  */
    assign n109_o = exc_d1 == 2'b00;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:526:38  */
    assign n110_o = n107_o | n109_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:525:4  */
    always @*
        case (n110_o)
            1'b1: n111_o = exc_d1;
            default: n111_o = excpostnorm;
        endcase
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:528:18  */
    assign n112_o = {finalexc, sign_d1};
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:528:45  */
    assign n113_o = expsigpostround[30:0];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:528:28  */
    assign n114_o = {n112_o, n113_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:478:10  */
    always @(posedge clk)
        n115_q <= sign;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:478:10  */
    always @(posedge clk)
        n116_q <= exc;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:478:10  */
    always @(posedge clk)
        n117_q <= sigprodext;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fmul_8_23.vhdl:478:10  */
    always @(posedge clk)
        n118_q <= sticky;
endmodule

