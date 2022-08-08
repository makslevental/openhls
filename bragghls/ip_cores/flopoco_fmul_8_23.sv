module intadder_42_f300_uid15
    (input clk,
        input rst,
        input[41:0] x,
        input[41:0] y,
        input cin,
        output[41:0] r);
    wire[41:0] n435_o;
    wire[41:0] n436_o;
    wire[41:0] n437_o;
    assign r = n437_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:34:12  */
    assign n435_o = x+y;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:34:16  */
    assign n436_o = {41'b0, cin};  //  uext
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:34:16  */
    assign n437_o = n435_o+n436_o;
endmodule

module intadder_33_f300_uid25
    (input clk,
        input rst,
        input[32:0] x,
        input[32:0] y,
        input cin,
        output[32:0] r);
    wire[32:0] n427_o;
    wire[32:0] n428_o;
    wire[32:0] n429_o;
    assign r = n429_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:363:12  */
    assign n427_o = x+y;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:363:16  */
    assign n428_o = {32'b0, cin};  //  uext
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:363:16  */
    assign n429_o = n427_o+n428_o;
endmodule

module intmultiplier_usingdsp_24_24_48_unsigned_f300_uid4
    (input clk,
        input rst,
        input[23:0] x,
        input[23:0] y,
        output[47:0] r);
    wire[23:0] xx_m5;
    wire[23:0] yy_m5;
    wire[40:0] dsp_bh6_ch0_0;
    wire heap_bh6_w47_0;
    wire heap_bh6_w47_0_d1;
    wire heap_bh6_w46_0;
    wire heap_bh6_w46_0_d1;
    wire heap_bh6_w45_0;
    wire heap_bh6_w45_0_d1;
    wire heap_bh6_w44_0;
    wire heap_bh6_w44_0_d1;
    wire heap_bh6_w43_0;
    wire heap_bh6_w43_0_d1;
    wire heap_bh6_w42_0;
    wire heap_bh6_w42_0_d1;
    wire heap_bh6_w41_0;
    wire heap_bh6_w41_0_d1;
    wire heap_bh6_w40_0;
    wire heap_bh6_w40_0_d1;
    wire heap_bh6_w39_0;
    wire heap_bh6_w39_0_d1;
    wire heap_bh6_w38_0;
    wire heap_bh6_w38_0_d1;
    wire heap_bh6_w37_0;
    wire heap_bh6_w37_0_d1;
    wire heap_bh6_w36_0;
    wire heap_bh6_w36_0_d1;
    wire heap_bh6_w35_0;
    wire heap_bh6_w35_0_d1;
    wire heap_bh6_w34_0;
    wire heap_bh6_w34_0_d1;
    wire heap_bh6_w33_0;
    wire heap_bh6_w33_0_d1;
    wire heap_bh6_w32_0;
    wire heap_bh6_w32_0_d1;
    wire heap_bh6_w31_0;
    wire heap_bh6_w31_0_d1;
    wire heap_bh6_w30_0;
    wire heap_bh6_w30_0_d1;
    wire heap_bh6_w29_0;
    wire heap_bh6_w29_0_d1;
    wire heap_bh6_w28_0;
    wire heap_bh6_w28_0_d1;
    wire heap_bh6_w27_0;
    wire heap_bh6_w27_0_d1;
    wire heap_bh6_w26_0;
    wire heap_bh6_w26_0_d1;
    wire heap_bh6_w25_0;
    wire heap_bh6_w25_0_d1;
    wire heap_bh6_w24_0;
    wire heap_bh6_w24_0_d1;
    wire heap_bh6_w23_0;
    wire heap_bh6_w23_0_d1;
    wire heap_bh6_w22_0;
    wire heap_bh6_w22_0_d1;
    wire heap_bh6_w21_0;
    wire heap_bh6_w21_0_d1;
    wire heap_bh6_w20_0;
    wire heap_bh6_w20_0_d1;
    wire heap_bh6_w19_0;
    wire heap_bh6_w19_0_d1;
    wire heap_bh6_w18_0;
    wire heap_bh6_w18_0_d1;
    wire heap_bh6_w17_0;
    wire heap_bh6_w17_0_d1;
    wire heap_bh6_w16_0;
    wire heap_bh6_w16_0_d1;
    wire heap_bh6_w15_0;
    wire heap_bh6_w15_0_d1;
    wire heap_bh6_w14_0;
    wire heap_bh6_w14_0_d1;
    wire heap_bh6_w13_0;
    wire heap_bh6_w13_0_d1;
    wire heap_bh6_w12_0;
    wire heap_bh6_w12_0_d1;
    wire heap_bh6_w11_0;
    wire heap_bh6_w11_0_d1;
    wire heap_bh6_w10_0;
    wire heap_bh6_w10_0_d1;
    wire heap_bh6_w9_0;
    wire heap_bh6_w9_0_d1;
    wire heap_bh6_w8_0;
    wire heap_bh6_w8_0_d1;
    wire heap_bh6_w7_0;
    wire heap_bh6_w7_0_d1;
    wire[40:0] dsp_bh6_ch1_0;
    wire heap_bh6_w30_1;
    wire heap_bh6_w30_1_d1;
    wire heap_bh6_w29_1;
    wire heap_bh6_w29_1_d1;
    wire heap_bh6_w28_1;
    wire heap_bh6_w28_1_d1;
    wire heap_bh6_w27_1;
    wire heap_bh6_w27_1_d1;
    wire heap_bh6_w26_1;
    wire heap_bh6_w26_1_d1;
    wire heap_bh6_w25_1;
    wire heap_bh6_w25_1_d1;
    wire heap_bh6_w24_1;
    wire heap_bh6_w24_1_d1;
    wire heap_bh6_w23_1;
    wire heap_bh6_w23_1_d1;
    wire heap_bh6_w22_1;
    wire heap_bh6_w22_1_d1;
    wire heap_bh6_w21_1;
    wire heap_bh6_w21_1_d1;
    wire heap_bh6_w20_1;
    wire heap_bh6_w20_1_d1;
    wire heap_bh6_w19_1;
    wire heap_bh6_w19_1_d1;
    wire heap_bh6_w18_1;
    wire heap_bh6_w18_1_d1;
    wire heap_bh6_w17_1;
    wire heap_bh6_w17_1_d1;
    wire heap_bh6_w16_1;
    wire heap_bh6_w16_1_d1;
    wire heap_bh6_w15_1;
    wire heap_bh6_w15_1_d1;
    wire heap_bh6_w14_1;
    wire heap_bh6_w14_1_d1;
    wire heap_bh6_w13_1;
    wire heap_bh6_w13_1_d1;
    wire heap_bh6_w12_1;
    wire heap_bh6_w12_1_d1;
    wire heap_bh6_w11_1;
    wire heap_bh6_w11_1_d1;
    wire heap_bh6_w10_1;
    wire heap_bh6_w10_1_d1;
    wire heap_bh6_w9_1;
    wire heap_bh6_w9_1_d1;
    wire heap_bh6_w8_1;
    wire heap_bh6_w8_1_d1;
    wire heap_bh6_w7_1;
    wire heap_bh6_w7_1_d1;
    wire heap_bh6_w6_0;
    wire heap_bh6_w5_0;
    wire heap_bh6_w4_0;
    wire heap_bh6_w3_0;
    wire heap_bh6_w2_0;
    wire heap_bh6_w1_0;
    wire heap_bh6_w0_0;
    wire[41:0] finaladderin0_bh6;
    wire[41:0] finaladderin1_bh6;
    wire finaladdercin_bh6;
    wire[41:0] finaladderout_bh6;
    wire[6:0] tempr_bh6_0;
    wire[6:0] tempr_bh6_0_d1;
    wire[48:0] compressionresult6;
    reg n188_q;
    reg n189_q;
    reg n190_q;
    reg n191_q;
    reg n192_q;
    reg n193_q;
    reg n194_q;
    reg n195_q;
    reg n196_q;
    reg n197_q;
    reg n198_q;
    reg n199_q;
    reg n200_q;
    reg n201_q;
    reg n202_q;
    reg n203_q;
    reg n204_q;
    reg n205_q;
    reg n206_q;
    reg n207_q;
    reg n208_q;
    reg n209_q;
    reg n210_q;
    reg n211_q;
    reg n212_q;
    reg n213_q;
    reg n214_q;
    reg n215_q;
    reg n216_q;
    reg n217_q;
    reg n218_q;
    reg n219_q;
    reg n220_q;
    reg n221_q;
    reg n222_q;
    reg n223_q;
    reg n224_q;
    reg n225_q;
    reg n226_q;
    reg n227_q;
    reg n228_q;
    reg n229_q;
    reg n230_q;
    reg n231_q;
    reg n232_q;
    reg n233_q;
    reg n234_q;
    reg n235_q;
    reg n236_q;
    reg n237_q;
    reg n238_q;
    reg n239_q;
    reg n240_q;
    reg n241_q;
    reg n242_q;
    reg n243_q;
    reg n244_q;
    reg n245_q;
    reg n246_q;
    reg n247_q;
    reg n248_q;
    reg n249_q;
    reg n250_q;
    reg n251_q;
    reg n252_q;
    reg[6:0] n253_q;
    wire[16:0] n256_o;
    wire[40:0] n259_o;
    wire[40:0] n260_o;
    wire[40:0] n261_o;
    wire n262_o;
    wire n263_o;
    wire n264_o;
    wire n265_o;
    wire n266_o;
    wire n267_o;
    wire n268_o;
    wire n269_o;
    wire n270_o;
    wire n271_o;
    wire n272_o;
    wire n273_o;
    wire n274_o;
    wire n275_o;
    wire n276_o;
    wire n277_o;
    wire n278_o;
    wire n279_o;
    wire n280_o;
    wire n281_o;
    wire n282_o;
    wire n283_o;
    wire n284_o;
    wire n285_o;
    wire n286_o;
    wire n287_o;
    wire n288_o;
    wire n289_o;
    wire n290_o;
    wire n291_o;
    wire n292_o;
    wire n293_o;
    wire n294_o;
    wire n295_o;
    wire n296_o;
    wire n297_o;
    wire n298_o;
    wire n299_o;
    wire n300_o;
    wire n301_o;
    wire n302_o;
    wire[6:0] n305_o;
    wire[16:0] n308_o;
    wire[40:0] n309_o;
    wire[40:0] n310_o;
    wire[40:0] n311_o;
    wire n312_o;
    wire n313_o;
    wire n314_o;
    wire n315_o;
    wire n316_o;
    wire n317_o;
    wire n318_o;
    wire n319_o;
    wire n320_o;
    wire n321_o;
    wire n322_o;
    wire n323_o;
    wire n324_o;
    wire n325_o;
    wire n326_o;
    wire n327_o;
    wire n328_o;
    wire n329_o;
    wire n330_o;
    wire n331_o;
    wire n332_o;
    wire n333_o;
    wire n334_o;
    wire n335_o;
    wire n336_o;
    wire n337_o;
    wire n338_o;
    wire n339_o;
    wire n340_o;
    wire n341_o;
    wire n342_o;
    wire[1:0] n344_o;
    wire[2:0] n345_o;
    wire[3:0] n346_o;
    wire[4:0] n347_o;
    wire[5:0] n348_o;
    wire[6:0] n349_o;
    wire[7:0] n350_o;
    wire[8:0] n351_o;
    wire[9:0] n352_o;
    wire[10:0] n353_o;
    wire[11:0] n354_o;
    wire[12:0] n355_o;
    wire[13:0] n356_o;
    wire[14:0] n357_o;
    wire[15:0] n358_o;
    wire[16:0] n359_o;
    wire[17:0] n360_o;
    wire[18:0] n361_o;
    wire[19:0] n362_o;
    wire[20:0] n363_o;
    wire[21:0] n364_o;
    wire[22:0] n365_o;
    wire[23:0] n366_o;
    wire[24:0] n367_o;
    wire[25:0] n368_o;
    wire[26:0] n369_o;
    wire[27:0] n370_o;
    wire[28:0] n371_o;
    wire[29:0] n372_o;
    wire[30:0] n373_o;
    wire[31:0] n374_o;
    wire[32:0] n375_o;
    wire[33:0] n376_o;
    wire[34:0] n377_o;
    wire[35:0] n378_o;
    wire[36:0] n379_o;
    wire[37:0] n380_o;
    wire[38:0] n381_o;
    wire[39:0] n382_o;
    wire[40:0] n383_o;
    wire[41:0] n384_o;
    wire[18:0] n386_o;
    wire[19:0] n387_o;
    wire[20:0] n388_o;
    wire[21:0] n389_o;
    wire[22:0] n390_o;
    wire[23:0] n391_o;
    wire[24:0] n392_o;
    wire[25:0] n393_o;
    wire[26:0] n394_o;
    wire[27:0] n395_o;
    wire[28:0] n396_o;
    wire[29:0] n397_o;
    wire[30:0] n398_o;
    wire[31:0] n399_o;
    wire[32:0] n400_o;
    wire[33:0] n401_o;
    wire[34:0] n402_o;
    wire[35:0] n403_o;
    wire[36:0] n404_o;
    wire[37:0] n405_o;
    wire[38:0] n406_o;
    wire[39:0] n407_o;
    wire[40:0] n408_o;
    wire[41:0] n409_o;
    wire[41:0] adder_final6_0_n411;
    wire[41:0] adder_final6_0_r;
    wire[1:0] n414_o;
    wire[2:0] n415_o;
    wire[3:0] n416_o;
    wire[4:0] n417_o;
    wire[5:0] n418_o;
    wire[6:0] n419_o;
    wire[48:0] n420_o;
    wire[47:0] n421_o;
    assign r = n421_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:271:71  */
    assign xx_m5 = x; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:69:8  */
    assign yy_m5 = y; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:70:8  */
    assign dsp_bh6_ch0_0 = n261_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:71:8  */
    assign heap_bh6_w47_0 = n262_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:71:24  */
    assign heap_bh6_w47_0_d1 = n188_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:72:8  */
    assign heap_bh6_w46_0 = n263_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:72:24  */
    assign heap_bh6_w46_0_d1 = n189_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:73:8  */
    assign heap_bh6_w45_0 = n264_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:73:24  */
    assign heap_bh6_w45_0_d1 = n190_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:74:8  */
    assign heap_bh6_w44_0 = n265_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:74:24  */
    assign heap_bh6_w44_0_d1 = n191_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:75:8  */
    assign heap_bh6_w43_0 = n266_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:75:24  */
    assign heap_bh6_w43_0_d1 = n192_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:76:8  */
    assign heap_bh6_w42_0 = n267_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:76:24  */
    assign heap_bh6_w42_0_d1 = n193_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:77:8  */
    assign heap_bh6_w41_0 = n268_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:77:24  */
    assign heap_bh6_w41_0_d1 = n194_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:78:8  */
    assign heap_bh6_w40_0 = n269_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:78:24  */
    assign heap_bh6_w40_0_d1 = n195_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:79:8  */
    assign heap_bh6_w39_0 = n270_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:79:24  */
    assign heap_bh6_w39_0_d1 = n196_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:80:8  */
    assign heap_bh6_w38_0 = n271_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:80:24  */
    assign heap_bh6_w38_0_d1 = n197_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:81:8  */
    assign heap_bh6_w37_0 = n272_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:81:24  */
    assign heap_bh6_w37_0_d1 = n198_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:82:8  */
    assign heap_bh6_w36_0 = n273_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:82:24  */
    assign heap_bh6_w36_0_d1 = n199_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:83:8  */
    assign heap_bh6_w35_0 = n274_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:83:24  */
    assign heap_bh6_w35_0_d1 = n200_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:84:8  */
    assign heap_bh6_w34_0 = n275_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:84:24  */
    assign heap_bh6_w34_0_d1 = n201_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:85:8  */
    assign heap_bh6_w33_0 = n276_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:85:24  */
    assign heap_bh6_w33_0_d1 = n202_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:86:8  */
    assign heap_bh6_w32_0 = n277_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:86:24  */
    assign heap_bh6_w32_0_d1 = n203_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:87:8  */
    assign heap_bh6_w31_0 = n278_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:87:24  */
    assign heap_bh6_w31_0_d1 = n204_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:88:8  */
    assign heap_bh6_w30_0 = n279_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:88:24  */
    assign heap_bh6_w30_0_d1 = n205_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:89:8  */
    assign heap_bh6_w29_0 = n280_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:89:24  */
    assign heap_bh6_w29_0_d1 = n206_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:90:8  */
    assign heap_bh6_w28_0 = n281_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:90:24  */
    assign heap_bh6_w28_0_d1 = n207_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:91:8  */
    assign heap_bh6_w27_0 = n282_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:91:24  */
    assign heap_bh6_w27_0_d1 = n208_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:92:8  */
    assign heap_bh6_w26_0 = n283_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:92:24  */
    assign heap_bh6_w26_0_d1 = n209_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:93:8  */
    assign heap_bh6_w25_0 = n284_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:93:24  */
    assign heap_bh6_w25_0_d1 = n210_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:94:8  */
    assign heap_bh6_w24_0 = n285_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:94:24  */
    assign heap_bh6_w24_0_d1 = n211_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:95:8  */
    assign heap_bh6_w23_0 = n286_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:95:24  */
    assign heap_bh6_w23_0_d1 = n212_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:96:8  */
    assign heap_bh6_w22_0 = n287_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:96:24  */
    assign heap_bh6_w22_0_d1 = n213_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:97:8  */
    assign heap_bh6_w21_0 = n288_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:97:24  */
    assign heap_bh6_w21_0_d1 = n214_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:98:8  */
    assign heap_bh6_w20_0 = n289_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:98:24  */
    assign heap_bh6_w20_0_d1 = n215_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:99:8  */
    assign heap_bh6_w19_0 = n290_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:99:24  */
    assign heap_bh6_w19_0_d1 = n216_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:100:8  */
    assign heap_bh6_w18_0 = n291_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:100:24  */
    assign heap_bh6_w18_0_d1 = n217_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:101:8  */
    assign heap_bh6_w17_0 = n292_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:101:24  */
    assign heap_bh6_w17_0_d1 = n218_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:102:8  */
    assign heap_bh6_w16_0 = n293_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:102:24  */
    assign heap_bh6_w16_0_d1 = n219_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:103:8  */
    assign heap_bh6_w15_0 = n294_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:103:24  */
    assign heap_bh6_w15_0_d1 = n220_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:104:8  */
    assign heap_bh6_w14_0 = n295_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:104:24  */
    assign heap_bh6_w14_0_d1 = n221_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:105:8  */
    assign heap_bh6_w13_0 = n296_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:105:24  */
    assign heap_bh6_w13_0_d1 = n222_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:106:8  */
    assign heap_bh6_w12_0 = n297_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:106:24  */
    assign heap_bh6_w12_0_d1 = n223_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:107:8  */
    assign heap_bh6_w11_0 = n298_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:107:24  */
    assign heap_bh6_w11_0_d1 = n224_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:108:8  */
    assign heap_bh6_w10_0 = n299_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:108:24  */
    assign heap_bh6_w10_0_d1 = n225_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:109:8  */
    assign heap_bh6_w9_0 = n300_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:109:23  */
    assign heap_bh6_w9_0_d1 = n226_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:110:8  */
    assign heap_bh6_w8_0 = n301_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:110:23  */
    assign heap_bh6_w8_0_d1 = n227_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:111:8  */
    assign heap_bh6_w7_0 = n302_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:111:23  */
    assign heap_bh6_w7_0_d1 = n228_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:112:8  */
    assign dsp_bh6_ch1_0 = n311_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:113:8  */
    assign heap_bh6_w30_1 = n312_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:113:24  */
    assign heap_bh6_w30_1_d1 = n229_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:114:8  */
    assign heap_bh6_w29_1 = n313_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:114:24  */
    assign heap_bh6_w29_1_d1 = n230_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:115:8  */
    assign heap_bh6_w28_1 = n314_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:115:24  */
    assign heap_bh6_w28_1_d1 = n231_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:116:8  */
    assign heap_bh6_w27_1 = n315_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:116:24  */
    assign heap_bh6_w27_1_d1 = n232_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:117:8  */
    assign heap_bh6_w26_1 = n316_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:117:24  */
    assign heap_bh6_w26_1_d1 = n233_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:118:8  */
    assign heap_bh6_w25_1 = n317_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:118:24  */
    assign heap_bh6_w25_1_d1 = n234_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:119:8  */
    assign heap_bh6_w24_1 = n318_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:119:24  */
    assign heap_bh6_w24_1_d1 = n235_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:120:8  */
    assign heap_bh6_w23_1 = n319_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:120:24  */
    assign heap_bh6_w23_1_d1 = n236_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:121:8  */
    assign heap_bh6_w22_1 = n320_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:121:24  */
    assign heap_bh6_w22_1_d1 = n237_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:122:8  */
    assign heap_bh6_w21_1 = n321_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:122:24  */
    assign heap_bh6_w21_1_d1 = n238_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:123:8  */
    assign heap_bh6_w20_1 = n322_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:123:24  */
    assign heap_bh6_w20_1_d1 = n239_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:124:8  */
    assign heap_bh6_w19_1 = n323_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:124:24  */
    assign heap_bh6_w19_1_d1 = n240_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:125:8  */
    assign heap_bh6_w18_1 = n324_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:125:24  */
    assign heap_bh6_w18_1_d1 = n241_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:126:8  */
    assign heap_bh6_w17_1 = n325_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:126:24  */
    assign heap_bh6_w17_1_d1 = n242_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:127:8  */
    assign heap_bh6_w16_1 = n326_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:127:24  */
    assign heap_bh6_w16_1_d1 = n243_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:128:8  */
    assign heap_bh6_w15_1 = n327_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:128:24  */
    assign heap_bh6_w15_1_d1 = n244_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:129:8  */
    assign heap_bh6_w14_1 = n328_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:129:24  */
    assign heap_bh6_w14_1_d1 = n245_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:130:8  */
    assign heap_bh6_w13_1 = n329_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:130:24  */
    assign heap_bh6_w13_1_d1 = n246_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:131:8  */
    assign heap_bh6_w12_1 = n330_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:131:24  */
    assign heap_bh6_w12_1_d1 = n247_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:132:8  */
    assign heap_bh6_w11_1 = n331_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:132:24  */
    assign heap_bh6_w11_1_d1 = n248_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:133:8  */
    assign heap_bh6_w10_1 = n332_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:133:24  */
    assign heap_bh6_w10_1_d1 = n249_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:134:8  */
    assign heap_bh6_w9_1 = n333_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:134:23  */
    assign heap_bh6_w9_1_d1 = n250_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:135:8  */
    assign heap_bh6_w8_1 = n334_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:135:23  */
    assign heap_bh6_w8_1_d1 = n251_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:136:8  */
    assign heap_bh6_w7_1 = n335_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:136:23  */
    assign heap_bh6_w7_1_d1 = n252_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:137:8  */
    assign heap_bh6_w6_0 = n336_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:138:8  */
    assign heap_bh6_w5_0 = n337_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:139:8  */
    assign heap_bh6_w4_0 = n338_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:140:8  */
    assign heap_bh6_w3_0 = n339_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:141:8  */
    assign heap_bh6_w2_0 = n340_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:142:8  */
    assign heap_bh6_w1_0 = n341_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:143:8  */
    assign heap_bh6_w0_0 = n342_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:144:8  */
    assign finaladderin0_bh6 = n384_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:145:8  */
    assign finaladderin1_bh6 = n409_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:146:8  */
    assign finaladdercin_bh6 = 1'b0; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:147:8  */
    assign finaladderout_bh6 = adder_final6_0_n411; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:148:8  */
    assign tempr_bh6_0 = n419_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:148:21  */
    assign tempr_bh6_0_d1 = n253_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:149:8  */
    assign compressionresult6 = n420_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:153:10  */
    always @(posedge clk)
        n188_q <= heap_bh6_w47_0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:153:10  */
    always @(posedge clk)
        n189_q <= heap_bh6_w46_0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:153:10  */
    always @(posedge clk)
        n190_q <= heap_bh6_w45_0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:153:10  */
    always @(posedge clk)
        n191_q <= heap_bh6_w44_0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:153:10  */
    always @(posedge clk)
        n192_q <= heap_bh6_w43_0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:153:10  */
    always @(posedge clk)
        n193_q <= heap_bh6_w42_0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:153:10  */
    always @(posedge clk)
        n194_q <= heap_bh6_w41_0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:153:10  */
    always @(posedge clk)
        n195_q <= heap_bh6_w40_0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:153:10  */
    always @(posedge clk)
        n196_q <= heap_bh6_w39_0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:153:10  */
    always @(posedge clk)
        n197_q <= heap_bh6_w38_0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:153:10  */
    always @(posedge clk)
        n198_q <= heap_bh6_w37_0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:153:10  */
    always @(posedge clk)
        n199_q <= heap_bh6_w36_0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:153:10  */
    always @(posedge clk)
        n200_q <= heap_bh6_w35_0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:153:10  */
    always @(posedge clk)
        n201_q <= heap_bh6_w34_0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:153:10  */
    always @(posedge clk)
        n202_q <= heap_bh6_w33_0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:153:10  */
    always @(posedge clk)
        n203_q <= heap_bh6_w32_0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:153:10  */
    always @(posedge clk)
        n204_q <= heap_bh6_w31_0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:153:10  */
    always @(posedge clk)
        n205_q <= heap_bh6_w30_0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:153:10  */
    always @(posedge clk)
        n206_q <= heap_bh6_w29_0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:153:10  */
    always @(posedge clk)
        n207_q <= heap_bh6_w28_0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:153:10  */
    always @(posedge clk)
        n208_q <= heap_bh6_w27_0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:153:10  */
    always @(posedge clk)
        n209_q <= heap_bh6_w26_0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:153:10  */
    always @(posedge clk)
        n210_q <= heap_bh6_w25_0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:153:10  */
    always @(posedge clk)
        n211_q <= heap_bh6_w24_0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:153:10  */
    always @(posedge clk)
        n212_q <= heap_bh6_w23_0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:153:10  */
    always @(posedge clk)
        n213_q <= heap_bh6_w22_0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:153:10  */
    always @(posedge clk)
        n214_q <= heap_bh6_w21_0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:153:10  */
    always @(posedge clk)
        n215_q <= heap_bh6_w20_0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:153:10  */
    always @(posedge clk)
        n216_q <= heap_bh6_w19_0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:153:10  */
    always @(posedge clk)
        n217_q <= heap_bh6_w18_0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:153:10  */
    always @(posedge clk)
        n218_q <= heap_bh6_w17_0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:153:10  */
    always @(posedge clk)
        n219_q <= heap_bh6_w16_0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:153:10  */
    always @(posedge clk)
        n220_q <= heap_bh6_w15_0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:153:10  */
    always @(posedge clk)
        n221_q <= heap_bh6_w14_0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:153:10  */
    always @(posedge clk)
        n222_q <= heap_bh6_w13_0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:153:10  */
    always @(posedge clk)
        n223_q <= heap_bh6_w12_0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:153:10  */
    always @(posedge clk)
        n224_q <= heap_bh6_w11_0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:153:10  */
    always @(posedge clk)
        n225_q <= heap_bh6_w10_0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:153:10  */
    always @(posedge clk)
        n226_q <= heap_bh6_w9_0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:153:10  */
    always @(posedge clk)
        n227_q <= heap_bh6_w8_0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:153:10  */
    always @(posedge clk)
        n228_q <= heap_bh6_w7_0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:153:10  */
    always @(posedge clk)
        n229_q <= heap_bh6_w30_1;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:153:10  */
    always @(posedge clk)
        n230_q <= heap_bh6_w29_1;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:153:10  */
    always @(posedge clk)
        n231_q <= heap_bh6_w28_1;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:153:10  */
    always @(posedge clk)
        n232_q <= heap_bh6_w27_1;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:153:10  */
    always @(posedge clk)
        n233_q <= heap_bh6_w26_1;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:153:10  */
    always @(posedge clk)
        n234_q <= heap_bh6_w25_1;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:153:10  */
    always @(posedge clk)
        n235_q <= heap_bh6_w24_1;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:153:10  */
    always @(posedge clk)
        n236_q <= heap_bh6_w23_1;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:153:10  */
    always @(posedge clk)
        n237_q <= heap_bh6_w22_1;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:153:10  */
    always @(posedge clk)
        n238_q <= heap_bh6_w21_1;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:153:10  */
    always @(posedge clk)
        n239_q <= heap_bh6_w20_1;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:153:10  */
    always @(posedge clk)
        n240_q <= heap_bh6_w19_1;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:153:10  */
    always @(posedge clk)
        n241_q <= heap_bh6_w18_1;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:153:10  */
    always @(posedge clk)
        n242_q <= heap_bh6_w17_1;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:153:10  */
    always @(posedge clk)
        n243_q <= heap_bh6_w16_1;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:153:10  */
    always @(posedge clk)
        n244_q <= heap_bh6_w15_1;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:153:10  */
    always @(posedge clk)
        n245_q <= heap_bh6_w14_1;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:153:10  */
    always @(posedge clk)
        n246_q <= heap_bh6_w13_1;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:153:10  */
    always @(posedge clk)
        n247_q <= heap_bh6_w12_1;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:153:10  */
    always @(posedge clk)
        n248_q <= heap_bh6_w11_1;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:153:10  */
    always @(posedge clk)
        n249_q <= heap_bh6_w10_1;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:153:10  */
    always @(posedge clk)
        n250_q <= heap_bh6_w9_1;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:153:10  */
    always @(posedge clk)
        n251_q <= heap_bh6_w8_1;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:153:10  */
    always @(posedge clk)
        n252_q <= heap_bh6_w7_1;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:153:10  */
    always @(posedge clk)
        n253_q <= tempr_bh6_0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:228:112  */
    assign n256_o = yy_m5[23:7];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:228:77  */
    assign n259_o = {17'b0, xx_m5};  //  uext
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:228:77  */
    assign n260_o = {24'b0, n256_o};  //  uext
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:228:77  */
    assign n261_o = n259_o*n260_o; // smul
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:229:35  */
    assign n262_o = dsp_bh6_ch0_0[40];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:230:35  */
    assign n263_o = dsp_bh6_ch0_0[39];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:231:35  */
    assign n264_o = dsp_bh6_ch0_0[38];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:232:35  */
    assign n265_o = dsp_bh6_ch0_0[37];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:233:35  */
    assign n266_o = dsp_bh6_ch0_0[36];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:234:35  */
    assign n267_o = dsp_bh6_ch0_0[35];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:235:35  */
    assign n268_o = dsp_bh6_ch0_0[34];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:236:35  */
    assign n269_o = dsp_bh6_ch0_0[33];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:237:35  */
    assign n270_o = dsp_bh6_ch0_0[32];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:238:35  */
    assign n271_o = dsp_bh6_ch0_0[31];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:239:35  */
    assign n272_o = dsp_bh6_ch0_0[30];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:240:35  */
    assign n273_o = dsp_bh6_ch0_0[29];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:241:35  */
    assign n274_o = dsp_bh6_ch0_0[28];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:242:35  */
    assign n275_o = dsp_bh6_ch0_0[27];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:243:35  */
    assign n276_o = dsp_bh6_ch0_0[26];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:244:35  */
    assign n277_o = dsp_bh6_ch0_0[25];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:245:35  */
    assign n278_o = dsp_bh6_ch0_0[24];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:246:35  */
    assign n279_o = dsp_bh6_ch0_0[23];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:247:35  */
    assign n280_o = dsp_bh6_ch0_0[22];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:248:35  */
    assign n281_o = dsp_bh6_ch0_0[21];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:249:35  */
    assign n282_o = dsp_bh6_ch0_0[20];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:250:35  */
    assign n283_o = dsp_bh6_ch0_0[19];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:251:35  */
    assign n284_o = dsp_bh6_ch0_0[18];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:252:35  */
    assign n285_o = dsp_bh6_ch0_0[17];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:253:35  */
    assign n286_o = dsp_bh6_ch0_0[16];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:254:35  */
    assign n287_o = dsp_bh6_ch0_0[15];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:255:35  */
    assign n288_o = dsp_bh6_ch0_0[14];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:256:35  */
    assign n289_o = dsp_bh6_ch0_0[13];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:257:35  */
    assign n290_o = dsp_bh6_ch0_0[12];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:258:35  */
    assign n291_o = dsp_bh6_ch0_0[11];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:259:35  */
    assign n292_o = dsp_bh6_ch0_0[10];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:260:35  */
    assign n293_o = dsp_bh6_ch0_0[9];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:261:35  */
    assign n294_o = dsp_bh6_ch0_0[8];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:262:35  */
    assign n295_o = dsp_bh6_ch0_0[7];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:263:35  */
    assign n296_o = dsp_bh6_ch0_0[6];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:264:35  */
    assign n297_o = dsp_bh6_ch0_0[5];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:265:35  */
    assign n298_o = dsp_bh6_ch0_0[4];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:266:35  */
    assign n299_o = dsp_bh6_ch0_0[3];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:267:34  */
    assign n300_o = dsp_bh6_ch0_0[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:268:34  */
    assign n301_o = dsp_bh6_ch0_0[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:269:34  */
    assign n302_o = dsp_bh6_ch0_0[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:271:91  */
    assign n305_o = yy_m5[6:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:271:111  */
    assign n308_o = {n305_o, 10'b0000000000};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:271:77  */
    assign n309_o = {17'b0, xx_m5};  //  uext
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:271:77  */
    assign n310_o = {24'b0, n308_o};  //  uext
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:271:77  */
    assign n311_o = n309_o*n310_o; // smul
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:272:35  */
    assign n312_o = dsp_bh6_ch1_0[40];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:273:35  */
    assign n313_o = dsp_bh6_ch1_0[39];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:274:35  */
    assign n314_o = dsp_bh6_ch1_0[38];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:275:35  */
    assign n315_o = dsp_bh6_ch1_0[37];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:276:35  */
    assign n316_o = dsp_bh6_ch1_0[36];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:277:35  */
    assign n317_o = dsp_bh6_ch1_0[35];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:278:35  */
    assign n318_o = dsp_bh6_ch1_0[34];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:279:35  */
    assign n319_o = dsp_bh6_ch1_0[33];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:280:35  */
    assign n320_o = dsp_bh6_ch1_0[32];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:281:35  */
    assign n321_o = dsp_bh6_ch1_0[31];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:282:35  */
    assign n322_o = dsp_bh6_ch1_0[30];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:283:35  */
    assign n323_o = dsp_bh6_ch1_0[29];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:284:35  */
    assign n324_o = dsp_bh6_ch1_0[28];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:285:35  */
    assign n325_o = dsp_bh6_ch1_0[27];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:286:35  */
    assign n326_o = dsp_bh6_ch1_0[26];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:287:35  */
    assign n327_o = dsp_bh6_ch1_0[25];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:288:35  */
    assign n328_o = dsp_bh6_ch1_0[24];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:289:35  */
    assign n329_o = dsp_bh6_ch1_0[23];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:290:35  */
    assign n330_o = dsp_bh6_ch1_0[22];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:291:35  */
    assign n331_o = dsp_bh6_ch1_0[21];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:292:35  */
    assign n332_o = dsp_bh6_ch1_0[20];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:293:34  */
    assign n333_o = dsp_bh6_ch1_0[19];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:294:34  */
    assign n334_o = dsp_bh6_ch1_0[18];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:295:34  */
    assign n335_o = dsp_bh6_ch1_0[17];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:296:34  */
    assign n336_o = dsp_bh6_ch1_0[16];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:297:34  */
    assign n337_o = dsp_bh6_ch1_0[15];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:298:34  */
    assign n338_o = dsp_bh6_ch1_0[14];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:299:34  */
    assign n339_o = dsp_bh6_ch1_0[13];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:300:34  */
    assign n340_o = dsp_bh6_ch1_0[12];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:301:34  */
    assign n341_o = dsp_bh6_ch1_0[11];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:302:34  */
    assign n342_o = dsp_bh6_ch1_0[10];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:311:29  */
    assign n344_o = {1'b0, heap_bh6_w47_0_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:311:49  */
    assign n345_o = {n344_o, heap_bh6_w46_0_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:311:69  */
    assign n346_o = {n345_o, heap_bh6_w45_0_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:311:89  */
    assign n347_o = {n346_o, heap_bh6_w44_0_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:311:109  */
    assign n348_o = {n347_o, heap_bh6_w43_0_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:311:129  */
    assign n349_o = {n348_o, heap_bh6_w42_0_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:311:149  */
    assign n350_o = {n349_o, heap_bh6_w41_0_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:311:169  */
    assign n351_o = {n350_o, heap_bh6_w40_0_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:311:189  */
    assign n352_o = {n351_o, heap_bh6_w39_0_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:311:209  */
    assign n353_o = {n352_o, heap_bh6_w38_0_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:311:229  */
    assign n354_o = {n353_o, heap_bh6_w37_0_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:311:249  */
    assign n355_o = {n354_o, heap_bh6_w36_0_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:311:269  */
    assign n356_o = {n355_o, heap_bh6_w35_0_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:311:289  */
    assign n357_o = {n356_o, heap_bh6_w34_0_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:311:309  */
    assign n358_o = {n357_o, heap_bh6_w33_0_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:311:329  */
    assign n359_o = {n358_o, heap_bh6_w32_0_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:311:349  */
    assign n360_o = {n359_o, heap_bh6_w31_0_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:311:369  */
    assign n361_o = {n360_o, heap_bh6_w30_1_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:311:389  */
    assign n362_o = {n361_o, heap_bh6_w29_1_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:311:409  */
    assign n363_o = {n362_o, heap_bh6_w28_1_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:311:429  */
    assign n364_o = {n363_o, heap_bh6_w27_1_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:311:449  */
    assign n365_o = {n364_o, heap_bh6_w26_1_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:311:469  */
    assign n366_o = {n365_o, heap_bh6_w25_1_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:311:489  */
    assign n367_o = {n366_o, heap_bh6_w24_1_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:311:509  */
    assign n368_o = {n367_o, heap_bh6_w23_1_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:311:529  */
    assign n369_o = {n368_o, heap_bh6_w22_1_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:311:549  */
    assign n370_o = {n369_o, heap_bh6_w21_1_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:311:569  */
    assign n371_o = {n370_o, heap_bh6_w20_1_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:311:589  */
    assign n372_o = {n371_o, heap_bh6_w19_1_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:311:609  */
    assign n373_o = {n372_o, heap_bh6_w18_1_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:311:629  */
    assign n374_o = {n373_o, heap_bh6_w17_1_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:311:649  */
    assign n375_o = {n374_o, heap_bh6_w16_1_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:311:669  */
    assign n376_o = {n375_o, heap_bh6_w15_1_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:311:689  */
    assign n377_o = {n376_o, heap_bh6_w14_1_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:311:709  */
    assign n378_o = {n377_o, heap_bh6_w13_1_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:311:729  */
    assign n379_o = {n378_o, heap_bh6_w12_1_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:311:749  */
    assign n380_o = {n379_o, heap_bh6_w11_1_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:311:769  */
    assign n381_o = {n380_o, heap_bh6_w10_1_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:311:789  */
    assign n382_o = {n381_o, heap_bh6_w9_1_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:311:808  */
    assign n383_o = {n382_o, heap_bh6_w8_1_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:311:827  */
    assign n384_o = {n383_o, heap_bh6_w7_1_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:312:131  */
    assign n386_o = {18'b000000000000000000, heap_bh6_w30_0_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:312:151  */
    assign n387_o = {n386_o, heap_bh6_w29_0_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:312:171  */
    assign n388_o = {n387_o, heap_bh6_w28_0_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:312:191  */
    assign n389_o = {n388_o, heap_bh6_w27_0_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:312:211  */
    assign n390_o = {n389_o, heap_bh6_w26_0_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:312:231  */
    assign n391_o = {n390_o, heap_bh6_w25_0_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:312:251  */
    assign n392_o = {n391_o, heap_bh6_w24_0_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:312:271  */
    assign n393_o = {n392_o, heap_bh6_w23_0_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:312:291  */
    assign n394_o = {n393_o, heap_bh6_w22_0_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:312:311  */
    assign n395_o = {n394_o, heap_bh6_w21_0_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:312:331  */
    assign n396_o = {n395_o, heap_bh6_w20_0_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:312:351  */
    assign n397_o = {n396_o, heap_bh6_w19_0_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:312:371  */
    assign n398_o = {n397_o, heap_bh6_w18_0_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:312:391  */
    assign n399_o = {n398_o, heap_bh6_w17_0_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:312:411  */
    assign n400_o = {n399_o, heap_bh6_w16_0_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:312:431  */
    assign n401_o = {n400_o, heap_bh6_w15_0_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:312:451  */
    assign n402_o = {n401_o, heap_bh6_w14_0_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:312:471  */
    assign n403_o = {n402_o, heap_bh6_w13_0_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:312:491  */
    assign n404_o = {n403_o, heap_bh6_w12_0_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:312:511  */
    assign n405_o = {n404_o, heap_bh6_w11_0_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:312:531  */
    assign n406_o = {n405_o, heap_bh6_w10_0_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:312:551  */
    assign n407_o = {n406_o, heap_bh6_w9_0_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:312:570  */
    assign n408_o = {n407_o, heap_bh6_w8_0_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:312:589  */
    assign n409_o = {n408_o, heap_bh6_w7_0_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:318:23  */
    assign adder_final6_0_n411 = adder_final6_0_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:314:7  */
    intadder_42_f300_uid15 adder_final6_0(
        .clk(clk),
        .rst(rst),
        .x(finaladderin0_bh6),
        .y(finaladderin1_bh6),
        .cin(finaladdercin_bh6),
        .r(adder_final6_0_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:322:33  */
    assign n414_o = {heap_bh6_w6_0, heap_bh6_w5_0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:322:49  */
    assign n415_o = {n414_o, heap_bh6_w4_0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:322:65  */
    assign n416_o = {n415_o, heap_bh6_w3_0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:322:81  */
    assign n417_o = {n416_o, heap_bh6_w2_0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:322:97  */
    assign n418_o = {n417_o, heap_bh6_w1_0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:322:113  */
    assign n419_o = {n418_o, heap_bh6_w0_0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:325:44  */
    assign n420_o = {finaladderout_bh6, tempr_bh6_0_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:327:27  */
    assign n421_o = compressionresult6[47:0];
endmodule

module fmul #(parameter ID = 1)
    (input clk,
        input rst,
        input[33:0] X,
        input[33:0] Y,
        output[33:0] R);
    wire sign;
    wire sign_d1;
    wire[7:0] expx;
    wire[7:0] expy;
    wire[9:0] expsumpresub;
    wire[9:0] bias;
    wire[9:0] expsum;
    wire[9:0] expsum_d1;
    wire[23:0] sigx;
    wire[23:0] sigy;
    wire[47:0] sigprod;
    wire[3:0] excsel;
    wire[1:0] exc;
    wire[1:0] exc_d1;
    wire norm;
    wire[9:0] exppostnorm;
    wire[47:0] sigprodext;
    wire[32:0] expsig;
    wire sticky;
    wire guard;
    wire round;
    wire[32:0] expsigpostround;
    wire[1:0] excpostnorm;
    wire[1:0] finalexc;
    reg n8_q;
    reg[9:0] n9_q;
    reg[1:0] n10_q;
    wire n11_o;
    wire n12_o;
    wire n13_o;
    wire[7:0] n14_o;
    wire[7:0] n15_o;
    wire[9:0] n17_o;
    wire[9:0] n19_o;
    wire[9:0] n20_o;
    wire[9:0] n22_o;
    wire[22:0] n23_o;
    wire[23:0] n25_o;
    wire[22:0] n26_o;
    wire[23:0] n28_o;
    wire[47:0] significandmultiplication_n29;
    wire[47:0] significandmultiplication_r;
    wire[1:0] n32_o;
    wire[1:0] n33_o;
    wire[3:0] n34_o;
    wire n37_o;
    wire n39_o;
    wire n40_o;
    wire n42_o;
    wire n43_o;
    wire n46_o;
    wire n49_o;
    wire n51_o;
    wire n52_o;
    wire n54_o;
    wire n55_o;
    wire[2:0] n57_o;
    reg[1:0] n58_o;
    wire n59_o;
    wire[9:0] n61_o;
    wire[9:0] n62_o;
    wire[46:0] n63_o;
    wire[47:0] n65_o;
    wire[47:0] n66_o;
    wire[45:0] n67_o;
    wire[47:0] n69_o;
    wire[22:0] n70_o;
    wire[32:0] n71_o;
    wire n72_o;
    wire[23:0] n74_o;
    wire n76_o;
    wire n77_o;
    wire n79_o;
    wire n80_o;
    wire n81_o;
    wire n82_o;
    wire n83_o;
    wire n84_o;
    localparam [32:0] n85_o = 33'b000000000000000000000000000000000;
    wire[32:0] roundingadder_n86;
    wire[32:0] roundingadder_r;
    wire[1:0] n89_o;
    wire n92_o;
    wire n95_o;
    wire n98_o;
    wire n100_o;
    wire n101_o;
    wire[2:0] n103_o;
    reg[1:0] n104_o;
    wire n106_o;
    wire n108_o;
    wire n109_o;
    wire n111_o;
    wire n112_o;
    reg[1:0] n113_o;
    wire[2:0] n114_o;
    wire[30:0] n115_o;
    wire[33:0] n116_o;
    assign R = n116_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:406:8  */
    assign sign = n13_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:406:14  */
    assign sign_d1 = n8_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:407:8  */
    assign expx = n14_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:408:8  */
    assign expy = n15_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:409:8  */
    assign expsumpresub = n20_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:410:8  */
    assign bias = 10'b0001111111; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:411:8  */
    assign expsum = n22_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:411:16  */
    assign expsum_d1 = n9_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:412:8  */
    assign sigx = n25_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:413:8  */
    assign sigy = n28_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:414:8  */
    assign sigprod = significandmultiplication_n29; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:415:8  */
    assign excsel = n34_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:416:8  */
    assign exc = n58_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:416:13  */
    assign exc_d1 = n10_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:417:8  */
    assign norm = n59_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:418:8  */
    assign exppostnorm = n62_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:419:8  */
    assign sigprodext = n66_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:420:8  */
    assign expsig = n71_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:421:8  */
    assign sticky = n72_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:422:8  */
    assign guard = n77_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:423:8  */
    assign round = n84_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:424:8  */
    assign expsigpostround = roundingadder_n86; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:425:8  */
    assign excpostnorm = n104_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:426:8  */
    assign finalexc = n113_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:430:10  */
    always @(posedge clk)
        n8_q <= sign;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:430:10  */
    always @(posedge clk)
        n9_q <= expsum;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:430:10  */
    always @(posedge clk)
        n10_q <= exc;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:436:13  */
    assign n11_o = X[31];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:436:23  */
    assign n12_o = Y[31];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:436:18  */
    assign n13_o = n11_o ^ n12_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:437:13  */
    assign n14_o = X[30:23];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:438:13  */
    assign n15_o = Y[30:23];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:439:26  */
    assign n17_o = {2'b00, expx};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:439:42  */
    assign n19_o = {2'b00, expy};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:439:34  */
    assign n20_o = n17_o+n19_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:441:27  */
    assign n22_o = expsumpresub-bias;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:443:19  */
    assign n23_o = X[22:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:443:16  */
    assign n25_o = {1'b1, n23_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:444:19  */
    assign n26_o = Y[22:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:444:16  */
    assign n28_o = {1'b1, n26_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:448:23  */
    assign significandmultiplication_n29 = significandmultiplication_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:445:4  */
    intmultiplier_usingdsp_24_24_48_unsigned_f300_uid4 significandmultiplication(
        .clk(clk),
        .rst(rst),
        .x(sigx),
        .y(sigy),
        .r(significandmultiplication_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:453:15  */
    assign n32_o = X[33:32];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:453:33  */
    assign n33_o = Y[33:32];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:453:30  */
    assign n34_o = {n32_o, n33_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:455:16  */
    assign n37_o = excsel == 4'b0000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:455:29  */
    assign n39_o = excsel == 4'b0001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:455:29  */
    assign n40_o = n37_o | n39_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:455:38  */
    assign n42_o = excsel == 4'b0100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:455:38  */
    assign n43_o = n40_o | n42_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:456:16  */
    assign n46_o = excsel == 4'b0101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:457:16  */
    assign n49_o = excsel == 4'b0110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:457:28  */
    assign n51_o = excsel == 4'b1001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:457:28  */
    assign n52_o = n49_o | n51_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:457:37  */
    assign n54_o = excsel == 4'b1010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:457:37  */
    assign n55_o = n52_o | n54_o;
    assign n57_o = {n55_o, n46_o, n43_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:454:4  */
    always @*
        case (n57_o)
            3'b100: n58_o <= 2'b10;
            3'b010: n58_o <= 2'b01;
            3'b001: n58_o <= 2'b00;
            default: n58_o <= 2'b11;
        endcase
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:460:19  */
    assign n59_o = sigprod[47];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:462:44  */
    assign n61_o = {9'b000000000, norm};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:462:29  */
    assign n62_o = expsum_d1+n61_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:465:25  */
    assign n63_o = sigprod[46:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:465:39  */
    assign n65_o = {n63_o, 1'b0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:465:45  */
    assign n66_o = norm ? n65_o : n69_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:466:33  */
    assign n67_o = sigprod[45:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:466:47  */
    assign n69_o = {n67_o, 2'b00};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:467:38  */
    assign n70_o = sigprodext[47:25];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:467:26  */
    assign n71_o = {exppostnorm, n70_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:468:24  */
    assign n72_o = sigprodext[24];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:469:32  */
    assign n74_o = sigprodext[23:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:469:45  */
    assign n76_o = n74_o == 24'b000000000000000000000000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:469:17  */
    assign n77_o = n76_o ? 1'b0 : 1'b1;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:470:51  */
    assign n79_o = sigprodext[25];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:470:37  */
    assign n80_o = ~n79_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:470:33  */
    assign n81_o = guard & n80_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:470:72  */
    assign n82_o = sigprodext[25];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:470:58  */
    assign n83_o = n81_o | n82_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:470:20  */
    assign n84_o = sticky & n83_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:475:23  */
    assign roundingadder_n86 = roundingadder_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:471:7  */
    intadder_33_f300_uid25 roundingadder(
        .clk(clk),
        .rst(rst),
        .x(expsig),
        .y(n85_o),
        .cin(round),
        .r(roundingadder_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:478:24  */
    assign n89_o = expsigpostround[32:31];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:479:26  */
    assign n92_o = n89_o == 2'b00;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:480:49  */
    assign n95_o = n89_o == 2'b01;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:481:49  */
    assign n98_o = n89_o == 2'b11;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:481:58  */
    assign n100_o = n89_o == 2'b10;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:481:58  */
    assign n101_o = n98_o | n100_o;
    assign n103_o = {n101_o, n95_o, n92_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:478:4  */
    always @*
        case (n103_o)
            3'b100: n104_o <= 2'b00;
            3'b010: n104_o <= 2'b10;
            3'b001: n104_o <= 2'b01;
            default: n104_o <= 2'b11;
        endcase
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:484:23  */
    assign n106_o = exc_d1 == 2'b11;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:484:33  */
    assign n108_o = exc_d1 == 2'b10;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:484:33  */
    assign n109_o = n106_o | n108_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:484:38  */
    assign n111_o = exc_d1 == 2'b00;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:484:38  */
    assign n112_o = n109_o | n111_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:483:4  */
    always @*
        case (n112_o)
            1'b1: n113_o <= exc_d1;
            default: n113_o <= excpostnorm;
        endcase
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:486:18  */
    assign n114_o = {finalexc, sign_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:486:45  */
    assign n115_o = expsigpostround[30:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_8_23.vhdl:486:28  */
    assign n116_o = {n114_o, n115_o};
endmodule

