module intadder_13_f300_uid20
    (input clk,
        input rst,
        input[12:0] x,
        input[12:0] y,
        input cin,
        output[12:0] r);
    wire[12:0] n420_o;
    wire[12:0] n421_o;
    wire[12:0] n422_o;
    assign r = n422_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:178:12  */
    assign n420_o = x+y;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:178:16  */
    assign n421_o = {12'b0, cin};  //  uext
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:178:16  */
    assign n422_o = n420_o+n421_o;
endmodule

module lzcshifter_10_to_10_counting_16_f300_uid16
    (input clk,
        input rst,
        input[9:0] i,
        output[3:0] count,
        output[9:0] o);
    wire[9:0] level4;
    wire count3;
    wire count3_d1;
    wire[9:0] level3;
    wire count2;
    wire count2_d1;
    wire[9:0] level2;
    wire count1;
    wire count1_d1;
    wire[9:0] level1;
    wire[9:0] level1_d1;
    wire count0;
    wire[9:0] level0;
    wire[3:0] scount;
    reg n364_q;
    reg n365_q;
    reg n366_q;
    reg[9:0] n367_q;
    wire[7:0] n369_o;
    wire n371_o;
    wire n372_o;
    wire n374_o;
    wire[9:0] n375_o;
    wire[1:0] n376_o;
    wire[9:0] n378_o;
    wire[3:0] n380_o;
    wire n382_o;
    wire n383_o;
    wire n385_o;
    wire[9:0] n386_o;
    wire[5:0] n387_o;
    wire[9:0] n389_o;
    wire[1:0] n391_o;
    wire n393_o;
    wire n394_o;
    wire n396_o;
    wire[9:0] n397_o;
    wire[7:0] n398_o;
    wire[9:0] n400_o;
    wire n402_o;
    wire n404_o;
    wire n405_o;
    wire n407_o;
    wire[9:0] n408_o;
    wire[8:0] n409_o;
    wire[9:0] n411_o;
    wire[1:0] n412_o;
    wire[2:0] n413_o;
    wire[3:0] n414_o;
    assign count = scount;
    assign o = level0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:128:19  */
    assign level4 = i; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:107:8  */
    assign count3 = n372_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:107:16  */
    assign count3_d1 = n364_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:131:19  */
    assign level3 = n375_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:109:8  */
    assign count2 = n383_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:109:16  */
    assign count2_d1 = n365_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:134:19  */
    assign level2 = n386_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:111:8  */
    assign count1 = n394_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:111:16  */
    assign count1_d1 = n366_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:112:8  */
    assign level1 = n397_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:138:22  */
    assign level1_d1 = n367_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:113:8  */
    assign count0 = n405_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:114:8  */
    assign level0 = n408_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:115:8  */
    assign scount = n414_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:119:10  */
    always @(posedge clk)
        n364_q <= count3;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:119:10  */
    always @(posedge clk)
        n365_q <= count2;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:119:10  */
    always @(posedge clk)
        n366_q <= count1;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:119:10  */
    always @(posedge clk)
        n367_q <= level1;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:127:28  */
    assign n369_o = level4[9:2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:127:41  */
    assign n371_o = n369_o == 8'b00000000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:127:17  */
    assign n372_o = n371_o ? 1'b1 : 1'b0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:128:43  */
    assign n374_o = ~count3;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:128:32  */
    assign n375_o = n374_o ? level4 : n378_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:128:59  */
    assign n376_o = level4[1:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:128:72  */
    assign n378_o = {n376_o, 8'b00000000};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:130:28  */
    assign n380_o = level3[9:6];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:130:41  */
    assign n382_o = n380_o == 4'b0000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:130:17  */
    assign n383_o = n382_o ? 1'b1 : 1'b0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:131:43  */
    assign n385_o = ~count2;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:131:32  */
    assign n386_o = n385_o ? level3 : n389_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:131:59  */
    assign n387_o = level3[5:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:131:72  */
    assign n389_o = {n387_o, 4'b0000};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:133:28  */
    assign n391_o = level2[9:8];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:133:41  */
    assign n393_o = n391_o == 2'b00;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:133:17  */
    assign n394_o = n393_o ? 1'b1 : 1'b0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:134:43  */
    assign n396_o = ~count1;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:134:32  */
    assign n397_o = n396_o ? level2 : n400_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:134:59  */
    assign n398_o = level2[7:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:134:72  */
    assign n400_o = {n398_o, 2'b00};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:137:31  */
    assign n402_o = level1_d1[9];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:137:44  */
    assign n404_o = n402_o == 1'b0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:137:17  */
    assign n405_o = n404_o ? 1'b1 : 1'b0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:138:46  */
    assign n407_o = ~count0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:138:35  */
    assign n408_o = n407_o ? level1_d1 : n411_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:138:65  */
    assign n409_o = level1_d1[8:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:138:78  */
    assign n411_o = {n409_o, 1'b0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:141:24  */
    assign n412_o = {count3_d1, count2_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:141:36  */
    assign n413_o = {n412_o, count1_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:141:48  */
    assign n414_o = {n413_o, count0};
endmodule

module intadder_9_f300_uid8
    (input clk,
        input rst,
        input[8:0] x,
        input[8:0] y,
        input cin,
        output[8:0] r);
    wire[8:0] n351_o;
    wire[8:0] n352_o;
    wire[8:0] n353_o;
    assign r = n353_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:79:12  */
    assign n351_o = x+y;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:79:16  */
    assign n352_o = {8'b0, cin};  //  uext
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:79:16  */
    assign n353_o = n351_o+n352_o;
endmodule

module rightshifter_6_by_max_8_f300_uid4
    (input clk,
        input rst,
        input[5:0] x,
        input[3:0] s,
        output[13:0] r);
    wire[5:0] level0;
    wire[3:0] ps;
    wire[6:0] level1;
    wire[8:0] level2;
    wire[12:0] level3;
    wire[20:0] level4;
    wire[6:0] n322_o;
    wire n323_o;
    wire[6:0] n324_o;
    wire[6:0] n326_o;
    wire[8:0] n328_o;
    wire n329_o;
    wire[8:0] n330_o;
    wire[8:0] n332_o;
    wire[12:0] n334_o;
    wire n335_o;
    wire[12:0] n336_o;
    wire[12:0] n338_o;
    wire[20:0] n340_o;
    wire n341_o;
    wire[20:0] n342_o;
    wire[20:0] n344_o;
    wire[13:0] n345_o;
    assign r = n345_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:25:8  */
    assign level0 = x; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:26:8  */
    assign ps = s; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:27:8  */
    assign level1 = n324_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:28:8  */
    assign level2 = n330_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:29:8  */
    assign level3 = n336_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:30:8  */
    assign level4 = n342_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:39:34  */
    assign n322_o = {1'b0, level0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:39:50  */
    assign n323_o = ps[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:39:43  */
    assign n324_o = n323_o ? n322_o : n326_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:39:75  */
    assign n326_o = {level0, 1'b0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:40:34  */
    assign n328_o = {2'b00, level1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:40:50  */
    assign n329_o = ps[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:40:43  */
    assign n330_o = n329_o ? n328_o : n332_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:40:75  */
    assign n332_o = {level1, 2'b00};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:41:34  */
    assign n334_o = {4'b0000, level2};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:41:50  */
    assign n335_o = ps[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:41:43  */
    assign n336_o = n335_o ? n334_o : n338_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:41:75  */
    assign n338_o = {level2, 4'b0000};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:42:34  */
    assign n340_o = {8'b00000000, level3};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:42:50  */
    assign n341_o = ps[3];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:42:43  */
    assign n342_o = n341_o ? n340_o : n344_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:42:75  */
    assign n344_o = {level3, 8'b00000000};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:43:15  */
    assign n345_o = level4[20:7];
endmodule

module fadd #(parameter ID = 1)
    (input clk,
        input rst,
        input[12:0] X,
        input[12:0] Y,
        output[12:0] R);
    wire[11:0] excexpfracx;
    wire[11:0] excexpfracy;
    wire[5:0] exmey;
    wire[5:0] eymex;
    wire swap;
    wire[12:0] newx;
    wire[12:0] newx_d1;
    wire[12:0] newy;
    wire[4:0] expx;
    wire[4:0] expx_d1;
    wire[1:0] excx;
    wire[1:0] excy;
    wire signx;
    wire signy;
    wire effsub;
    wire effsub_d1;
    wire effsub_d2;
    wire[5:0] sxsyexnxy;
    wire[5:0] fracy;
    wire[1:0] excrt;
    wire[1:0] excrt_d1;
    wire[1:0] excrt_d2;
    wire signr;
    wire signr_d1;
    wire signr_d2;
    wire[5:0] expdiff;
    wire shiftedout;
    wire[3:0] shiftval;
    wire[13:0] shiftedfracy;
    wire[13:0] shiftedfracy_d1;
    wire sticky;
    wire[8:0] fracyfar;
    wire[8:0] effsubvector;
    wire[8:0] fracyfarxorop;
    wire[8:0] fracxfar;
    wire cinaddfar;
    wire[8:0] fracaddresult;
    wire[9:0] fracgrs;
    wire[6:0] extendedexpinc;
    wire[6:0] extendedexpinc_d1;
    wire[3:0] nzerosnew;
    wire[9:0] shiftedfrac;
    wire[6:0] updatedexp;
    wire eqdiffsign;
    wire[12:0] expfrac;
    wire stk;
    wire rnd;
    wire grd;
    wire lsb;
    wire addtoroundbit;
    wire[12:0] roundedexpfrac;
    wire[1:0] upexc;
    wire[4:0] fracr;
    wire[4:0] expr;
    wire[3:0] exexpexc;
    wire[1:0] excrt2;
    wire[1:0] excr;
    wire signr2;
    wire[12:0] computedr;
    reg[12:0] n15_q;
    reg[4:0] n16_q;
    reg n17_q;
    reg n18_q;
    reg[1:0] n19_q;
    reg[1:0] n20_q;
    reg n21_q;
    reg n22_q;
    reg[13:0] n23_q;
    reg[6:0] n24_q;
    wire[1:0] n25_o;
    wire[9:0] n26_o;
    wire[11:0] n27_o;
    wire[1:0] n28_o;
    wire[9:0] n29_o;
    wire[11:0] n30_o;
    wire[4:0] n31_o;
    wire[5:0] n33_o;
    wire[4:0] n34_o;
    wire[5:0] n36_o;
    wire[5:0] n37_o;
    wire[4:0] n38_o;
    wire[5:0] n40_o;
    wire[4:0] n41_o;
    wire[5:0] n43_o;
    wire[5:0] n44_o;
    wire n46_o;
    wire n47_o;
    wire n49_o;
    wire[12:0] n50_o;
    wire n51_o;
    wire[12:0] n52_o;
    wire[4:0] n53_o;
    wire[1:0] n54_o;
    wire[1:0] n55_o;
    wire n56_o;
    wire n57_o;
    wire n58_o;
    wire[1:0] n59_o;
    wire[3:0] n60_o;
    wire[5:0] n61_o;
    wire n65_o;
    wire[5:0] n66_o;
    wire[4:0] n67_o;
    wire[5:0] n69_o;
    wire n72_o;
    wire n74_o;
    wire n75_o;
    wire n77_o;
    wire n78_o;
    wire n80_o;
    wire n81_o;
    wire n84_o;
    wire n86_o;
    wire n87_o;
    wire n89_o;
    wire n90_o;
    wire n92_o;
    wire n93_o;
    wire n95_o;
    wire n96_o;
    wire n98_o;
    wire n99_o;
    wire n101_o;
    wire n102_o;
    wire n104_o;
    wire n105_o;
    wire n107_o;
    wire n108_o;
    wire n110_o;
    wire n111_o;
    wire n113_o;
    wire n114_o;
    wire n116_o;
    wire n117_o;
    wire n120_o;
    wire n122_o;
    wire n123_o;
    wire n125_o;
    wire n126_o;
    wire n128_o;
    wire n129_o;
    wire n131_o;
    wire n132_o;
    wire n134_o;
    wire n135_o;
    wire n137_o;
    wire n138_o;
    wire n140_o;
    wire n141_o;
    wire n143_o;
    wire n144_o;
    wire n146_o;
    wire n147_o;
    wire n149_o;
    wire n150_o;
    wire n152_o;
    wire n153_o;
    wire n155_o;
    wire n156_o;
    wire n158_o;
    wire n159_o;
    wire n161_o;
    wire n162_o;
    wire n164_o;
    wire n165_o;
    wire n167_o;
    wire n168_o;
    wire n170_o;
    wire n171_o;
    wire[2:0] n173_o;
    reg[1:0] n174_o;
    wire n177_o;
    wire n179_o;
    wire n180_o;
    wire n181_o;
    wire n182_o;
    wire[5:0] n183_o;
    wire n186_o;
    wire n187_o;
    wire[3:0] n189_o;
    wire n190_o;
    wire[3:0] n191_o;
    wire[13:0] rightshiftercomponent_n193;
    wire[13:0] rightshiftercomponent_r;
    wire[5:0] n197_o;
    wire n199_o;
    wire n200_o;
    wire[7:0] n202_o;
    wire[8:0] n204_o;
    wire[3:0] n205_o;
    wire[3:0] n206_o;
    wire[8:0] n207_o;
    wire[8:0] n208_o;
    wire[4:0] n209_o;
    wire[6:0] n211_o;
    wire[8:0] n213_o;
    wire n214_o;
    wire n215_o;
    wire[8:0] fracadder_n216;
    wire[8:0] fracadder_r;
    wire[9:0] n219_o;
    wire[6:0] n221_o;
    wire[6:0] n224_o;
    wire[3:0] lzc_component_n225;
    wire[9:0] lzc_component_n226;
    wire[3:0] lzc_component_count;
    wire[9:0] lzc_component_o;
    wire[6:0] n232_o;
    wire[6:0] n233_o;
    wire n236_o;
    wire n237_o;
    wire[5:0] n239_o;
    wire[12:0] n240_o;
    wire n241_o;
    wire n242_o;
    wire n243_o;
    wire n244_o;
    wire n245_o;
    wire n246_o;
    wire n248_o;
    wire n249_o;
    wire n250_o;
    wire n251_o;
    wire n252_o;
    wire n253_o;
    wire n254_o;
    localparam [12:0] n256_o = 13'b0000000000000;
    wire[12:0] roundingadder_n257;
    wire[12:0] roundingadder_r;
    wire[1:0] n260_o;
    wire[4:0] n261_o;
    wire[4:0] n262_o;
    wire[3:0] n263_o;
    wire n266_o;
    wire n268_o;
    wire n269_o;
    wire n271_o;
    wire n272_o;
    wire n274_o;
    wire n275_o;
    wire n277_o;
    wire n278_o;
    wire n280_o;
    wire n281_o;
    wire n284_o;
    wire n287_o;
    wire n289_o;
    wire n290_o;
    wire n292_o;
    wire n293_o;
    wire n295_o;
    wire n296_o;
    wire n298_o;
    wire n299_o;
    wire[2:0] n301_o;
    reg[1:0] n302_o;
    wire n304_o;
    wire n306_o;
    wire n307_o;
    wire n308_o;
    wire[1:0] n309_o;
    wire n311_o;
    wire n312_o;
    wire[2:0] n313_o;
    wire[7:0] n314_o;
    wire[12:0] n315_o;
    assign R = computedr;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:236:8  */
    assign excexpfracx = n27_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:237:8  */
    assign excexpfracy = n30_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:238:8  */
    assign exmey = n37_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:239:8  */
    assign eymex = n44_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:240:8  */
    assign swap = n47_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:241:8  */
    assign newx = n50_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:241:14  */
    assign newx_d1 = n15_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:242:8  */
    assign newy = n52_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:243:8  */
    assign expx = n53_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:243:14  */
    assign expx_d1 = n16_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:244:8  */
    assign excx = n54_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:245:8  */
    assign excy = n55_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:246:8  */
    assign signx = n56_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:247:8  */
    assign signy = n57_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:248:8  */
    assign effsub = n58_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:248:16  */
    assign effsub_d1 = n17_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:248:27  */
    assign effsub_d2 = n18_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:249:8  */
    assign sxsyexnxy = n61_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:251:8  */
    assign fracy = n66_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:252:8  */
    assign excrt = n174_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:252:15  */
    assign excrt_d1 = n19_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:252:25  */
    assign excrt_d2 = n20_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:253:8  */
    assign signr = n181_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:253:15  */
    assign signr_d1 = n21_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:253:25  */
    assign signr_d2 = n22_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:254:8  */
    assign expdiff = n183_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:255:8  */
    assign shiftedout = n187_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:256:8  */
    assign shiftval = n191_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:257:8  */
    assign shiftedfracy = rightshiftercomponent_n193; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:257:22  */
    assign shiftedfracy_d1 = n23_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:258:8  */
    assign sticky = n200_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:259:8  */
    assign fracyfar = n204_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:260:8  */
    assign effsubvector = n207_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:261:8  */
    assign fracyfarxorop = n208_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:262:8  */
    assign fracxfar = n213_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:263:8  */
    assign cinaddfar = n215_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:264:8  */
    assign fracaddresult = fracadder_n216; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:265:8  */
    assign fracgrs = n219_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:266:8  */
    assign extendedexpinc = n224_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:266:24  */
    assign extendedexpinc_d1 = n24_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:267:8  */
    assign nzerosnew = lzc_component_n225; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:268:8  */
    assign shiftedfrac = lzc_component_n226; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:269:8  */
    assign updatedexp = n233_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:270:8  */
    assign eqdiffsign = n237_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:271:8  */
    assign expfrac = n240_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:272:8  */
    assign stk = n243_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:273:8  */
    assign rnd = n244_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:274:8  */
    assign grd = n245_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:275:8  */
    assign lsb = n246_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:276:8  */
    assign addtoroundbit = n254_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:277:8  */
    assign roundedexpfrac = roundingadder_n257; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:278:8  */
    assign upexc = n260_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:279:8  */
    assign fracr = n261_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:280:8  */
    assign expr = n262_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:281:8  */
    assign exexpexc = n263_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:282:8  */
    assign excrt2 = n302_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:283:8  */
    assign excr = n309_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:284:8  */
    assign signr2 = n312_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:285:8  */
    assign computedr = n315_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:289:10  */
    always @(posedge clk)
        n15_q <= newx;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:289:10  */
    always @(posedge clk)
        n16_q <= expx;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:289:10  */
    always @(posedge clk)
        n17_q <= effsub;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:289:10  */
    always @(posedge clk)
        n18_q <= effsub_d1;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:289:10  */
    always @(posedge clk)
        n19_q <= excrt;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:289:10  */
    always @(posedge clk)
        n20_q <= excrt_d1;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:289:10  */
    always @(posedge clk)
        n21_q <= signr;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:289:10  */
    always @(posedge clk)
        n22_q <= signr_d1;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:289:10  */
    always @(posedge clk)
        n23_q <= shiftedfracy;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:289:10  */
    always @(posedge clk)
        n24_q <= extendedexpinc;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:303:20  */
    assign n25_o = X[12:11];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:303:38  */
    assign n26_o = X[9:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:303:35  */
    assign n27_o = {n25_o, n26_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:304:20  */
    assign n28_o = Y[12:11];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:304:38  */
    assign n29_o = Y[9:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:304:35  */
    assign n30_o = {n28_o, n29_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:305:21  */
    assign n31_o = X[9:5];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:305:18  */
    assign n33_o = {1'b0, n31_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:305:45  */
    assign n34_o = Y[9:5];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:305:42  */
    assign n36_o = {1'b0, n34_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:305:35  */
    assign n37_o = n33_o-n36_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:306:21  */
    assign n38_o = Y[9:5];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:306:18  */
    assign n40_o = {1'b0, n38_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:306:45  */
    assign n41_o = X[9:5];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:306:42  */
    assign n43_o = {1'b0, n41_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:306:35  */
    assign n44_o = n40_o-n43_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:307:33  */
    assign n46_o = $unsigned(excexpfracx) >= $unsigned(excexpfracy);
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:307:16  */
    assign n47_o = n46_o ? 1'b0 : 1'b1;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:308:24  */
    assign n49_o = ~swap;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:308:14  */
    assign n50_o = n49_o ? X : Y;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:309:24  */
    assign n51_o = ~swap;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:309:14  */
    assign n52_o = n51_o ? Y : X;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:310:15  */
    assign n53_o = newx[9:5];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:311:15  */
    assign n54_o = newx[12:11];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:312:15  */
    assign n55_o = newy[12:11];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:313:16  */
    assign n56_o = newx[10];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:314:16  */
    assign n57_o = newy[10];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:315:20  */
    assign n58_o = signx ^ signy;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:316:23  */
    assign n59_o = {signx, signy};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:316:31  */
    assign n60_o = {n59_o, excx};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:316:38  */
    assign n61_o = {n60_o, excy};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:318:31  */
    assign n65_o = excy == 2'b00;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:318:22  */
    assign n66_o = n65_o ? 6'b000000 : n69_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:318:53  */
    assign n67_o = newy[4:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:318:47  */
    assign n69_o = {1'b1, n67_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:320:18  */
    assign n72_o = sxsyexnxy == 6'b000000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:320:31  */
    assign n74_o = sxsyexnxy == 6'b010000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:320:31  */
    assign n75_o = n72_o | n74_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:320:40  */
    assign n77_o = sxsyexnxy == 6'b100000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:320:40  */
    assign n78_o = n75_o | n77_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:320:49  */
    assign n80_o = sxsyexnxy == 6'b110000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:320:49  */
    assign n81_o = n78_o | n80_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:321:12  */
    assign n84_o = sxsyexnxy == 6'b000101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:321:25  */
    assign n86_o = sxsyexnxy == 6'b010101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:321:25  */
    assign n87_o = n84_o | n86_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:321:34  */
    assign n89_o = sxsyexnxy == 6'b100101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:321:34  */
    assign n90_o = n87_o | n89_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:321:43  */
    assign n92_o = sxsyexnxy == 6'b110101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:321:43  */
    assign n93_o = n90_o | n92_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:321:52  */
    assign n95_o = sxsyexnxy == 6'b000100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:321:52  */
    assign n96_o = n93_o | n95_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:321:61  */
    assign n98_o = sxsyexnxy == 6'b010100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:321:61  */
    assign n99_o = n96_o | n98_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:321:70  */
    assign n101_o = sxsyexnxy == 6'b100100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:321:70  */
    assign n102_o = n99_o | n101_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:321:79  */
    assign n104_o = sxsyexnxy == 6'b110100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:321:79  */
    assign n105_o = n102_o | n104_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:321:88  */
    assign n107_o = sxsyexnxy == 6'b000001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:321:88  */
    assign n108_o = n105_o | n107_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:321:97  */
    assign n110_o = sxsyexnxy == 6'b010001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:321:97  */
    assign n111_o = n108_o | n110_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:321:106  */
    assign n113_o = sxsyexnxy == 6'b100001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:321:106  */
    assign n114_o = n111_o | n113_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:321:115  */
    assign n116_o = sxsyexnxy == 6'b110001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:321:115  */
    assign n117_o = n114_o | n116_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:322:12  */
    assign n120_o = sxsyexnxy == 6'b111010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:322:25  */
    assign n122_o = sxsyexnxy == 6'b001010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:322:25  */
    assign n123_o = n120_o | n122_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:322:34  */
    assign n125_o = sxsyexnxy == 6'b001000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:322:34  */
    assign n126_o = n123_o | n125_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:322:43  */
    assign n128_o = sxsyexnxy == 6'b011000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:322:43  */
    assign n129_o = n126_o | n128_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:322:52  */
    assign n131_o = sxsyexnxy == 6'b101000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:322:52  */
    assign n132_o = n129_o | n131_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:322:61  */
    assign n134_o = sxsyexnxy == 6'b111000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:322:61  */
    assign n135_o = n132_o | n134_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:322:70  */
    assign n137_o = sxsyexnxy == 6'b000010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:322:70  */
    assign n138_o = n135_o | n137_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:322:79  */
    assign n140_o = sxsyexnxy == 6'b010010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:322:79  */
    assign n141_o = n138_o | n140_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:322:88  */
    assign n143_o = sxsyexnxy == 6'b100010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:322:88  */
    assign n144_o = n141_o | n143_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:322:97  */
    assign n146_o = sxsyexnxy == 6'b110010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:322:97  */
    assign n147_o = n144_o | n146_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:322:106  */
    assign n149_o = sxsyexnxy == 6'b001001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:322:106  */
    assign n150_o = n147_o | n149_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:322:115  */
    assign n152_o = sxsyexnxy == 6'b011001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:322:115  */
    assign n153_o = n150_o | n152_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:322:124  */
    assign n155_o = sxsyexnxy == 6'b101001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:322:124  */
    assign n156_o = n153_o | n155_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:322:133  */
    assign n158_o = sxsyexnxy == 6'b111001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:322:133  */
    assign n159_o = n156_o | n158_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:322:142  */
    assign n161_o = sxsyexnxy == 6'b000110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:322:142  */
    assign n162_o = n159_o | n161_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:322:151  */
    assign n164_o = sxsyexnxy == 6'b010110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:322:151  */
    assign n165_o = n162_o | n164_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:322:160  */
    assign n167_o = sxsyexnxy == 6'b100110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:322:160  */
    assign n168_o = n165_o | n167_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:322:169  */
    assign n170_o = sxsyexnxy == 6'b110110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:322:169  */
    assign n171_o = n168_o | n170_o;
    assign n173_o = {n171_o, n117_o, n81_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:319:4  */
    always @*
        case (n173_o)
            3'b100: n174_o <= 2'b10;
            3'b010: n174_o <= 2'b01;
            3'b001: n174_o <= 2'b00;
            default: n174_o <= 2'b11;
        endcase
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:324:31  */
    assign n177_o = sxsyexnxy == 6'b100000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:324:53  */
    assign n179_o = sxsyexnxy == 6'b010000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:324:41  */
    assign n180_o = n177_o | n179_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:324:16  */
    assign n181_o = n180_o ? 1'b0 : signx;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:326:31  */
    assign n182_o = ~swap;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:326:21  */
    assign n183_o = n182_o ? exmey : eymex;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:327:36  */
    assign n186_o = $unsigned(expdiff) > $unsigned(6'b000111);
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:327:22  */
    assign n187_o = n186_o ? 1'b1 : 1'b0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:328:23  */
    assign n189_o = expdiff[3:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:328:51  */
    assign n190_o = ~shiftedout;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:328:36  */
    assign n191_o = n190_o ? n189_o : 4'b1000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:332:23  */
    assign rightshiftercomponent_n193 = rightshiftercomponent_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:329:4  */
    rightshifter_6_by_max_8_f300_uid4 rightshiftercomponent(
        .clk(clk),
        .rst(rst),
        .x(fracy),
        .s(shiftval),
        .r(rightshiftercomponent_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:336:39  */
    assign n197_o = shiftedfracy_d1[5:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:336:51  */
    assign n199_o = n197_o == 6'b000000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:336:18  */
    assign n200_o = n199_o ? 1'b0 : 1'b1;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:339:37  */
    assign n202_o = shiftedfracy_d1[13:6];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:339:20  */
    assign n204_o = {1'b0, n202_o};
    assign n205_o = {effsub_d1, effsub_d1, effsub_d1, effsub_d1};
    assign n206_o = {effsub_d1, effsub_d1, effsub_d1, effsub_d1};
    assign n207_o = {n205_o, n206_o, effsub_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:341:30  */
    assign n208_o = fracyfar ^ effsubvector;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:342:31  */
    assign n209_o = newx_d1[4:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:342:21  */
    assign n211_o = {2'b01, n209_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:342:45  */
    assign n213_o = {n211_o, 2'b00};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:343:31  */
    assign n214_o = ~sticky;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:343:27  */
    assign n215_o = effsub_d1 & n214_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:348:23  */
    assign fracadder_n216 = fracadder_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:344:4  */
    intadder_9_f300_uid8 fracadder(
        .clk(clk),
        .rst(rst),
        .x(fracxfar),
        .y(fracyfarxorop),
        .cin(cinaddfar),
        .r(fracadder_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:351:28  */
    assign n219_o = {fracaddresult, sticky};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:352:27  */
    assign n221_o = {2'b00, expx_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:352:38  */
    assign n224_o = n221_o+7'b0000001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:356:27  */
    assign lzc_component_n225 = lzc_component_count; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:358:23  */
    assign lzc_component_n226 = lzc_component_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:353:4  */
    lzcshifter_10_to_10_counting_16_f300_uid16 lzc_component(
        .clk(clk),
        .rst(rst),
        .i(fracgrs),
        .count(lzc_component_count),
        .o(lzc_component_o));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:360:45  */
    assign n232_o = {3'b000, nzerosnew};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:360:36  */
    assign n233_o = extendedexpinc_d1-n232_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:361:36  */
    assign n236_o = nzerosnew == 4'b1111;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:361:22  */
    assign n237_o = n236_o ? 1'b1 : 1'b0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:362:38  */
    assign n239_o = shiftedfrac[8:3];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:362:25  */
    assign n240_o = {updatedexp, n239_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:364:21  */
    assign n241_o = shiftedfrac[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:364:39  */
    assign n242_o = shiftedfrac[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:364:25  */
    assign n243_o = n241_o | n242_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:365:21  */
    assign n244_o = shiftedfrac[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:366:21  */
    assign n245_o = shiftedfrac[3];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:367:21  */
    assign n246_o = shiftedfrac[4];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:368:33  */
    assign n248_o = ~lsb;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:368:38  */
    assign n249_o = n248_o & grd;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:368:57  */
    assign n250_o = ~rnd;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:368:50  */
    assign n251_o = n249_o & n250_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:368:69  */
    assign n252_o = ~stk;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:368:62  */
    assign n253_o = n251_o & n252_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:368:24  */
    assign n254_o = n253_o ? 1'b0 : 1'b1;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:373:23  */
    assign roundingadder_n257 = roundingadder_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:369:4  */
    intadder_13_f300_uid20 roundingadder(
        .clk(clk),
        .rst(rst),
        .x(expfrac),
        .y(n256_o),
        .cin(addtoroundbit),
        .r(roundingadder_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:377:27  */
    assign n260_o = roundedexpfrac[12:11];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:378:27  */
    assign n261_o = roundedexpfrac[5:1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:379:26  */
    assign n262_o = roundedexpfrac[10:6];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:380:22  */
    assign n263_o = {upexc, excrt_d2};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:382:18  */
    assign n266_o = exexpexc == 4'b0000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:382:29  */
    assign n268_o = exexpexc == 4'b0100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:382:29  */
    assign n269_o = n266_o | n268_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:382:36  */
    assign n271_o = exexpexc == 4'b1000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:382:36  */
    assign n272_o = n269_o | n271_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:382:43  */
    assign n274_o = exexpexc == 4'b1100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:382:43  */
    assign n275_o = n272_o | n274_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:382:50  */
    assign n277_o = exexpexc == 4'b1001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:382:50  */
    assign n278_o = n275_o | n277_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:382:57  */
    assign n280_o = exexpexc == 4'b1101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:382:57  */
    assign n281_o = n278_o | n280_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:383:12  */
    assign n284_o = exexpexc == 4'b0001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:384:12  */
    assign n287_o = exexpexc == 4'b0010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:384:23  */
    assign n289_o = exexpexc == 4'b0110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:384:23  */
    assign n290_o = n287_o | n289_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:384:30  */
    assign n292_o = exexpexc == 4'b1010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:384:30  */
    assign n293_o = n290_o | n292_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:384:37  */
    assign n295_o = exexpexc == 4'b1110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:384:37  */
    assign n296_o = n293_o | n295_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:384:44  */
    assign n298_o = exexpexc == 4'b0101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:384:44  */
    assign n299_o = n296_o | n298_o;
    assign n301_o = {n299_o, n284_o, n281_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:381:4  */
    always @*
        case (n301_o)
            3'b100: n302_o <= 2'b10;
            3'b010: n302_o <= 2'b01;
            3'b001: n302_o <= 2'b00;
            default: n302_o <= 2'b11;
        endcase
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:386:38  */
    assign n304_o = eqdiffsign & effsub_d2;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:386:72  */
    assign n306_o = excrt_d2 == 2'b11;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:386:60  */
    assign n307_o = ~n306_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:386:56  */
    assign n308_o = n304_o & n307_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:386:17  */
    assign n309_o = n308_o ? 2'b00 : excrt2;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:387:39  */
    assign n311_o = eqdiffsign & effsub_d2;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:387:18  */
    assign n312_o = n311_o ? 1'b0 : signr_d2;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:388:22  */
    assign n313_o = {excr, signr2};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:388:31  */
    assign n314_o = {n313_o, expr};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:388:38  */
    assign n315_o = {n314_o, fracr};
endmodule

