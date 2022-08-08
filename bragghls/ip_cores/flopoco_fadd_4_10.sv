module intadder_17_f300_uid20
    (input clk,
        input rst,
        input[16:0] x,
        input[16:0] y,
        input cin,
        output[16:0] r);
    wire[16:0] n419_o;
    wire[16:0] n420_o;
    wire[16:0] n421_o;
    assign r = n421_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:178:12  */
    assign n419_o = x+y;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:178:16  */
    assign n420_o = {16'b0, cin};  //  uext
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:178:16  */
    assign n421_o = n419_o+n420_o;
endmodule

module lzcshifter_15_to_15_counting_16_f300_uid16
    (input clk,
        input rst,
        input[14:0] i,
        output[3:0] count,
        output[14:0] o);
    wire[14:0] level4;
    wire count3;
    wire count3_d1;
    wire[14:0] level3;
    wire count2;
    wire count2_d1;
    wire[14:0] level2;
    wire count1;
    wire count1_d1;
    wire[14:0] level1;
    wire[14:0] level1_d1;
    wire count0;
    wire[14:0] level0;
    wire[3:0] scount;
    reg n363_q;
    reg n364_q;
    reg n365_q;
    reg[14:0] n366_q;
    wire[7:0] n368_o;
    wire n370_o;
    wire n371_o;
    wire n373_o;
    wire[14:0] n374_o;
    wire[6:0] n375_o;
    wire[14:0] n377_o;
    wire[3:0] n379_o;
    wire n381_o;
    wire n382_o;
    wire n384_o;
    wire[14:0] n385_o;
    wire[10:0] n386_o;
    wire[14:0] n388_o;
    wire[1:0] n390_o;
    wire n392_o;
    wire n393_o;
    wire n395_o;
    wire[14:0] n396_o;
    wire[12:0] n397_o;
    wire[14:0] n399_o;
    wire n401_o;
    wire n403_o;
    wire n404_o;
    wire n406_o;
    wire[14:0] n407_o;
    wire[13:0] n408_o;
    wire[14:0] n410_o;
    wire[1:0] n411_o;
    wire[2:0] n412_o;
    wire[3:0] n413_o;
    assign count = scount;
    assign o = level0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:128:19  */
    assign level4 = i; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:107:8  */
    assign count3 = n371_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:107:16  */
    assign count3_d1 = n363_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:131:19  */
    assign level3 = n374_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:109:8  */
    assign count2 = n382_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:109:16  */
    assign count2_d1 = n364_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:134:19  */
    assign level2 = n385_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:111:8  */
    assign count1 = n393_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:111:16  */
    assign count1_d1 = n365_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:112:8  */
    assign level1 = n396_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:138:22  */
    assign level1_d1 = n366_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:113:8  */
    assign count0 = n404_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:114:8  */
    assign level0 = n407_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:115:8  */
    assign scount = n413_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:119:10  */
    always @(posedge clk)
        n363_q <= count3;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:119:10  */
    always @(posedge clk)
        n364_q <= count2;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:119:10  */
    always @(posedge clk)
        n365_q <= count1;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:119:10  */
    always @(posedge clk)
        n366_q <= level1;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:127:28  */
    assign n368_o = level4[14:7];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:127:42  */
    assign n370_o = n368_o == 8'b00000000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:127:17  */
    assign n371_o = n370_o ? 1'b1 : 1'b0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:128:44  */
    assign n373_o = ~count3;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:128:33  */
    assign n374_o = n373_o ? level4 : n377_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:128:60  */
    assign n375_o = level4[6:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:128:73  */
    assign n377_o = {n375_o, 8'b00000000};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:130:28  */
    assign n379_o = level3[14:11];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:130:43  */
    assign n381_o = n379_o == 4'b0000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:130:17  */
    assign n382_o = n381_o ? 1'b1 : 1'b0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:131:44  */
    assign n384_o = ~count2;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:131:33  */
    assign n385_o = n384_o ? level3 : n388_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:131:60  */
    assign n386_o = level3[10:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:131:74  */
    assign n388_o = {n386_o, 4'b0000};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:133:28  */
    assign n390_o = level2[14:13];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:133:43  */
    assign n392_o = n390_o == 2'b00;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:133:17  */
    assign n393_o = n392_o ? 1'b1 : 1'b0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:134:44  */
    assign n395_o = ~count1;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:134:33  */
    assign n396_o = n395_o ? level2 : n399_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:134:60  */
    assign n397_o = level2[12:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:134:74  */
    assign n399_o = {n397_o, 2'b00};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:137:31  */
    assign n401_o = level1_d1[14];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:137:46  */
    assign n403_o = n401_o == 1'b0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:137:17  */
    assign n404_o = n403_o ? 1'b1 : 1'b0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:138:47  */
    assign n406_o = ~count0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:138:36  */
    assign n407_o = n406_o ? level1_d1 : n410_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:138:66  */
    assign n408_o = level1_d1[13:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:138:80  */
    assign n410_o = {n408_o, 1'b0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:141:24  */
    assign n411_o = {count3_d1, count2_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:141:36  */
    assign n412_o = {n411_o, count1_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:141:48  */
    assign n413_o = {n412_o, count0};
endmodule

module intadder_14_f300_uid8
    (input clk,
        input rst,
        input[13:0] x,
        input[13:0] y,
        input cin,
        output[13:0] r);
    wire[13:0] n350_o;
    wire[13:0] n351_o;
    wire[13:0] n352_o;
    assign r = n352_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:79:12  */
    assign n350_o = x+y;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:79:16  */
    assign n351_o = {13'b0, cin};  //  uext
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:79:16  */
    assign n352_o = n350_o+n351_o;
endmodule

module rightshifter_11_by_max_13_f300_uid4
    (input clk,
        input rst,
        input[10:0] x,
        input[3:0] s,
        output[23:0] r);
    wire[10:0] level0;
    wire[3:0] ps;
    wire[11:0] level1;
    wire[13:0] level2;
    wire[17:0] level3;
    wire[25:0] level4;
    wire[11:0] n321_o;
    wire n322_o;
    wire[11:0] n323_o;
    wire[11:0] n325_o;
    wire[13:0] n327_o;
    wire n328_o;
    wire[13:0] n329_o;
    wire[13:0] n331_o;
    wire[17:0] n333_o;
    wire n334_o;
    wire[17:0] n335_o;
    wire[17:0] n337_o;
    wire[25:0] n339_o;
    wire n340_o;
    wire[25:0] n341_o;
    wire[25:0] n343_o;
    wire[23:0] n344_o;
    assign r = n344_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:25:8  */
    assign level0 = x; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:26:8  */
    assign ps = s; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:27:8  */
    assign level1 = n323_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:28:8  */
    assign level2 = n329_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:29:8  */
    assign level3 = n335_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:30:8  */
    assign level4 = n341_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:39:34  */
    assign n321_o = {1'b0, level0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:39:50  */
    assign n322_o = ps[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:39:43  */
    assign n323_o = n322_o ? n321_o : n325_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:39:75  */
    assign n325_o = {level0, 1'b0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:40:34  */
    assign n327_o = {2'b00, level1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:40:50  */
    assign n328_o = ps[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:40:43  */
    assign n329_o = n328_o ? n327_o : n331_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:40:75  */
    assign n331_o = {level1, 2'b00};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:41:34  */
    assign n333_o = {4'b0000, level2};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:41:50  */
    assign n334_o = ps[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:41:43  */
    assign n335_o = n334_o ? n333_o : n337_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:41:75  */
    assign n337_o = {level2, 4'b0000};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:42:34  */
    assign n339_o = {8'b00000000, level3};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:42:50  */
    assign n340_o = ps[3];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:42:43  */
    assign n341_o = n340_o ? n339_o : n343_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:42:75  */
    assign n343_o = {level3, 8'b00000000};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:43:15  */
    assign n344_o = level4[25:2];
endmodule

module fadd #(parameter ID = 1)
    (input clk,
        input rst,
        input[16:0] X,
        input[16:0] Y,
        output[16:0] R);
    wire[15:0] excexpfracx;
    wire[15:0] excexpfracy;
    wire[4:0] exmey;
    wire[4:0] eymex;
    wire swap;
    wire[16:0] newx;
    wire[16:0] newx_d1;
    wire[16:0] newy;
    wire[3:0] expx;
    wire[3:0] expx_d1;
    wire[1:0] excx;
    wire[1:0] excy;
    wire signx;
    wire signy;
    wire effsub;
    wire effsub_d1;
    wire effsub_d2;
    wire[5:0] sxsyexnxy;
    wire[10:0] fracy;
    wire[1:0] excrt;
    wire[1:0] excrt_d1;
    wire[1:0] excrt_d2;
    wire signr;
    wire signr_d1;
    wire signr_d2;
    wire[4:0] expdiff;
    wire[3:0] shiftval;
    wire[23:0] shiftedfracy;
    wire[23:0] shiftedfracy_d1;
    wire sticky;
    wire[13:0] fracyfar;
    wire[13:0] effsubvector;
    wire[13:0] fracyfarxorop;
    wire[13:0] fracxfar;
    wire cinaddfar;
    wire[13:0] fracaddresult;
    wire[14:0] fracgrs;
    wire[5:0] extendedexpinc;
    wire[5:0] extendedexpinc_d1;
    wire[3:0] nzerosnew;
    wire[14:0] shiftedfrac;
    wire[5:0] updatedexp;
    wire eqdiffsign;
    wire[16:0] expfrac;
    wire stk;
    wire rnd;
    wire grd;
    wire lsb;
    wire addtoroundbit;
    wire[16:0] roundedexpfrac;
    wire[1:0] upexc;
    wire[9:0] fracr;
    wire[3:0] expr;
    wire[3:0] exexpexc;
    wire[1:0] excrt2;
    wire[1:0] excr;
    wire signr2;
    wire[16:0] computedr;
    reg[16:0] n15_q;
    reg[3:0] n16_q;
    reg n17_q;
    reg n18_q;
    reg[1:0] n19_q;
    reg[1:0] n20_q;
    reg n21_q;
    reg n22_q;
    reg[23:0] n23_q;
    reg[5:0] n24_q;
    wire[1:0] n25_o;
    wire[13:0] n26_o;
    wire[15:0] n27_o;
    wire[1:0] n28_o;
    wire[13:0] n29_o;
    wire[15:0] n30_o;
    wire[3:0] n31_o;
    wire[4:0] n33_o;
    wire[3:0] n34_o;
    wire[4:0] n36_o;
    wire[4:0] n37_o;
    wire[3:0] n38_o;
    wire[4:0] n40_o;
    wire[3:0] n41_o;
    wire[4:0] n43_o;
    wire[4:0] n44_o;
    wire n46_o;
    wire n47_o;
    wire n49_o;
    wire[16:0] n50_o;
    wire n51_o;
    wire[16:0] n52_o;
    wire[3:0] n53_o;
    wire[1:0] n54_o;
    wire[1:0] n55_o;
    wire n56_o;
    wire n57_o;
    wire n58_o;
    wire[1:0] n59_o;
    wire[3:0] n60_o;
    wire[5:0] n61_o;
    wire n65_o;
    wire[10:0] n66_o;
    wire[9:0] n67_o;
    wire[10:0] n69_o;
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
    wire[4:0] n183_o;
    wire[3:0] n189_o;
    wire[23:0] rightshiftercomponent_n190;
    wire[23:0] rightshiftercomponent_r;
    wire[10:0] n194_o;
    wire n196_o;
    wire n197_o;
    wire[12:0] n199_o;
    wire[13:0] n201_o;
    wire[3:0] n202_o;
    wire[3:0] n203_o;
    wire[3:0] n204_o;
    wire[1:0] n205_o;
    wire[13:0] n206_o;
    wire[13:0] n207_o;
    wire[9:0] n208_o;
    wire[11:0] n210_o;
    wire[13:0] n212_o;
    wire n213_o;
    wire n214_o;
    wire[13:0] fracadder_n215;
    wire[13:0] fracadder_r;
    wire[14:0] n218_o;
    wire[5:0] n220_o;
    wire[5:0] n223_o;
    wire[3:0] lzc_component_n224;
    wire[14:0] lzc_component_n225;
    wire[3:0] lzc_component_count;
    wire[14:0] lzc_component_o;
    wire[5:0] n231_o;
    wire[5:0] n232_o;
    wire n235_o;
    wire n236_o;
    wire[10:0] n238_o;
    wire[16:0] n239_o;
    wire n240_o;
    wire n241_o;
    wire n242_o;
    wire n243_o;
    wire n244_o;
    wire n245_o;
    wire n247_o;
    wire n248_o;
    wire n249_o;
    wire n250_o;
    wire n251_o;
    wire n252_o;
    wire n253_o;
    localparam [16:0] n255_o = 17'b00000000000000000;
    wire[16:0] roundingadder_n256;
    wire[16:0] roundingadder_r;
    wire[1:0] n259_o;
    wire[9:0] n260_o;
    wire[3:0] n261_o;
    wire[3:0] n262_o;
    wire n265_o;
    wire n267_o;
    wire n268_o;
    wire n270_o;
    wire n271_o;
    wire n273_o;
    wire n274_o;
    wire n276_o;
    wire n277_o;
    wire n279_o;
    wire n280_o;
    wire n283_o;
    wire n286_o;
    wire n288_o;
    wire n289_o;
    wire n291_o;
    wire n292_o;
    wire n294_o;
    wire n295_o;
    wire n297_o;
    wire n298_o;
    wire[2:0] n300_o;
    reg[1:0] n301_o;
    wire n303_o;
    wire n305_o;
    wire n306_o;
    wire n307_o;
    wire[1:0] n308_o;
    wire n310_o;
    wire n311_o;
    wire[2:0] n312_o;
    wire[6:0] n313_o;
    wire[16:0] n314_o;
    assign R = computedr;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:236:8  */
    assign excexpfracx = n27_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:237:8  */
    assign excexpfracy = n30_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:238:8  */
    assign exmey = n37_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:239:8  */
    assign eymex = n44_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:240:8  */
    assign swap = n47_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:241:8  */
    assign newx = n50_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:241:14  */
    assign newx_d1 = n15_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:242:8  */
    assign newy = n52_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:243:8  */
    assign expx = n53_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:243:14  */
    assign expx_d1 = n16_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:244:8  */
    assign excx = n54_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:245:8  */
    assign excy = n55_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:246:8  */
    assign signx = n56_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:247:8  */
    assign signy = n57_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:248:8  */
    assign effsub = n58_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:248:16  */
    assign effsub_d1 = n17_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:248:27  */
    assign effsub_d2 = n18_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:249:8  */
    assign sxsyexnxy = n61_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:251:8  */
    assign fracy = n66_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:252:8  */
    assign excrt = n174_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:252:15  */
    assign excrt_d1 = n19_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:252:25  */
    assign excrt_d2 = n20_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:253:8  */
    assign signr = n181_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:253:15  */
    assign signr_d1 = n21_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:253:25  */
    assign signr_d2 = n22_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:254:8  */
    assign expdiff = n183_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:256:8  */
    assign shiftval = n189_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:257:8  */
    assign shiftedfracy = rightshiftercomponent_n190; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:257:22  */
    assign shiftedfracy_d1 = n23_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:258:8  */
    assign sticky = n197_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:259:8  */
    assign fracyfar = n201_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:260:8  */
    assign effsubvector = n206_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:261:8  */
    assign fracyfarxorop = n207_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:262:8  */
    assign fracxfar = n212_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:263:8  */
    assign cinaddfar = n214_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:264:8  */
    assign fracaddresult = fracadder_n215; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:265:8  */
    assign fracgrs = n218_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:266:8  */
    assign extendedexpinc = n223_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:266:24  */
    assign extendedexpinc_d1 = n24_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:267:8  */
    assign nzerosnew = lzc_component_n224; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:268:8  */
    assign shiftedfrac = lzc_component_n225; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:269:8  */
    assign updatedexp = n232_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:270:8  */
    assign eqdiffsign = n236_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:271:8  */
    assign expfrac = n239_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:272:8  */
    assign stk = n242_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:273:8  */
    assign rnd = n243_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:274:8  */
    assign grd = n244_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:275:8  */
    assign lsb = n245_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:276:8  */
    assign addtoroundbit = n253_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:277:8  */
    assign roundedexpfrac = roundingadder_n256; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:278:8  */
    assign upexc = n259_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:279:8  */
    assign fracr = n260_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:280:8  */
    assign expr = n261_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:281:8  */
    assign exexpexc = n262_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:282:8  */
    assign excrt2 = n301_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:283:8  */
    assign excr = n308_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:284:8  */
    assign signr2 = n311_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:285:8  */
    assign computedr = n314_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:289:10  */
    always @(posedge clk)
        n15_q <= newx;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:289:10  */
    always @(posedge clk)
        n16_q <= expx;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:289:10  */
    always @(posedge clk)
        n17_q <= effsub;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:289:10  */
    always @(posedge clk)
        n18_q <= effsub_d1;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:289:10  */
    always @(posedge clk)
        n19_q <= excrt;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:289:10  */
    always @(posedge clk)
        n20_q <= excrt_d1;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:289:10  */
    always @(posedge clk)
        n21_q <= signr;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:289:10  */
    always @(posedge clk)
        n22_q <= signr_d1;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:289:10  */
    always @(posedge clk)
        n23_q <= shiftedfracy;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:289:10  */
    always @(posedge clk)
        n24_q <= extendedexpinc;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:303:20  */
    assign n25_o = X[16:15];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:303:38  */
    assign n26_o = X[13:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:303:35  */
    assign n27_o = {n25_o, n26_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:304:20  */
    assign n28_o = Y[16:15];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:304:38  */
    assign n29_o = Y[13:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:304:35  */
    assign n30_o = {n28_o, n29_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:305:21  */
    assign n31_o = X[13:10];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:305:18  */
    assign n33_o = {1'b0, n31_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:305:47  */
    assign n34_o = Y[13:10];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:305:44  */
    assign n36_o = {1'b0, n34_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:305:37  */
    assign n37_o = n33_o-n36_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:306:21  */
    assign n38_o = Y[13:10];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:306:18  */
    assign n40_o = {1'b0, n38_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:306:47  */
    assign n41_o = X[13:10];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:306:44  */
    assign n43_o = {1'b0, n41_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:306:37  */
    assign n44_o = n40_o-n43_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:307:33  */
    assign n46_o = $unsigned(excexpfracx) >= $unsigned(excexpfracy);
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:307:16  */
    assign n47_o = n46_o ? 1'b0 : 1'b1;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:308:24  */
    assign n49_o = ~swap;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:308:14  */
    assign n50_o = n49_o ? X : Y;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:309:24  */
    assign n51_o = ~swap;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:309:14  */
    assign n52_o = n51_o ? Y : X;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:310:15  */
    assign n53_o = newx[13:10];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:311:15  */
    assign n54_o = newx[16:15];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:312:15  */
    assign n55_o = newy[16:15];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:313:16  */
    assign n56_o = newx[14];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:314:16  */
    assign n57_o = newy[14];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:315:20  */
    assign n58_o = signx ^ signy;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:316:23  */
    assign n59_o = {signx, signy};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:316:31  */
    assign n60_o = {n59_o, excx};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:316:38  */
    assign n61_o = {n60_o, excy};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:318:36  */
    assign n65_o = excy == 2'b00;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:318:27  */
    assign n66_o = n65_o ? 11'b00000000000 : n69_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:318:58  */
    assign n67_o = newy[9:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:318:52  */
    assign n69_o = {1'b1, n67_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:320:18  */
    assign n72_o = sxsyexnxy == 6'b000000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:320:31  */
    assign n74_o = sxsyexnxy == 6'b010000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:320:31  */
    assign n75_o = n72_o | n74_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:320:40  */
    assign n77_o = sxsyexnxy == 6'b100000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:320:40  */
    assign n78_o = n75_o | n77_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:320:49  */
    assign n80_o = sxsyexnxy == 6'b110000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:320:49  */
    assign n81_o = n78_o | n80_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:321:12  */
    assign n84_o = sxsyexnxy == 6'b000101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:321:25  */
    assign n86_o = sxsyexnxy == 6'b010101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:321:25  */
    assign n87_o = n84_o | n86_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:321:34  */
    assign n89_o = sxsyexnxy == 6'b100101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:321:34  */
    assign n90_o = n87_o | n89_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:321:43  */
    assign n92_o = sxsyexnxy == 6'b110101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:321:43  */
    assign n93_o = n90_o | n92_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:321:52  */
    assign n95_o = sxsyexnxy == 6'b000100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:321:52  */
    assign n96_o = n93_o | n95_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:321:61  */
    assign n98_o = sxsyexnxy == 6'b010100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:321:61  */
    assign n99_o = n96_o | n98_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:321:70  */
    assign n101_o = sxsyexnxy == 6'b100100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:321:70  */
    assign n102_o = n99_o | n101_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:321:79  */
    assign n104_o = sxsyexnxy == 6'b110100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:321:79  */
    assign n105_o = n102_o | n104_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:321:88  */
    assign n107_o = sxsyexnxy == 6'b000001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:321:88  */
    assign n108_o = n105_o | n107_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:321:97  */
    assign n110_o = sxsyexnxy == 6'b010001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:321:97  */
    assign n111_o = n108_o | n110_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:321:106  */
    assign n113_o = sxsyexnxy == 6'b100001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:321:106  */
    assign n114_o = n111_o | n113_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:321:115  */
    assign n116_o = sxsyexnxy == 6'b110001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:321:115  */
    assign n117_o = n114_o | n116_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:322:12  */
    assign n120_o = sxsyexnxy == 6'b111010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:322:25  */
    assign n122_o = sxsyexnxy == 6'b001010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:322:25  */
    assign n123_o = n120_o | n122_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:322:34  */
    assign n125_o = sxsyexnxy == 6'b001000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:322:34  */
    assign n126_o = n123_o | n125_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:322:43  */
    assign n128_o = sxsyexnxy == 6'b011000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:322:43  */
    assign n129_o = n126_o | n128_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:322:52  */
    assign n131_o = sxsyexnxy == 6'b101000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:322:52  */
    assign n132_o = n129_o | n131_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:322:61  */
    assign n134_o = sxsyexnxy == 6'b111000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:322:61  */
    assign n135_o = n132_o | n134_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:322:70  */
    assign n137_o = sxsyexnxy == 6'b000010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:322:70  */
    assign n138_o = n135_o | n137_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:322:79  */
    assign n140_o = sxsyexnxy == 6'b010010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:322:79  */
    assign n141_o = n138_o | n140_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:322:88  */
    assign n143_o = sxsyexnxy == 6'b100010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:322:88  */
    assign n144_o = n141_o | n143_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:322:97  */
    assign n146_o = sxsyexnxy == 6'b110010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:322:97  */
    assign n147_o = n144_o | n146_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:322:106  */
    assign n149_o = sxsyexnxy == 6'b001001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:322:106  */
    assign n150_o = n147_o | n149_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:322:115  */
    assign n152_o = sxsyexnxy == 6'b011001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:322:115  */
    assign n153_o = n150_o | n152_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:322:124  */
    assign n155_o = sxsyexnxy == 6'b101001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:322:124  */
    assign n156_o = n153_o | n155_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:322:133  */
    assign n158_o = sxsyexnxy == 6'b111001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:322:133  */
    assign n159_o = n156_o | n158_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:322:142  */
    assign n161_o = sxsyexnxy == 6'b000110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:322:142  */
    assign n162_o = n159_o | n161_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:322:151  */
    assign n164_o = sxsyexnxy == 6'b010110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:322:151  */
    assign n165_o = n162_o | n164_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:322:160  */
    assign n167_o = sxsyexnxy == 6'b100110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:322:160  */
    assign n168_o = n165_o | n167_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:322:169  */
    assign n170_o = sxsyexnxy == 6'b110110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:322:169  */
    assign n171_o = n168_o | n170_o;
    assign n173_o = {n171_o, n117_o, n81_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:319:4  */
    always @*
        case (n173_o)
            3'b100: n174_o <= 2'b10;
            3'b010: n174_o <= 2'b01;
            3'b001: n174_o <= 2'b00;
            default: n174_o <= 2'b11;
        endcase
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:324:31  */
    assign n177_o = sxsyexnxy == 6'b100000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:324:53  */
    assign n179_o = sxsyexnxy == 6'b010000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:324:41  */
    assign n180_o = n177_o | n179_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:324:16  */
    assign n181_o = n180_o ? 1'b0 : signx;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:326:31  */
    assign n182_o = ~swap;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:326:21  */
    assign n183_o = n182_o ? exmey : eymex;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:328:23  */
    assign n189_o = expdiff[3:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:332:23  */
    assign rightshiftercomponent_n190 = rightshiftercomponent_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:329:4  */
    rightshifter_11_by_max_13_f300_uid4 rightshiftercomponent(
        .clk(clk),
        .rst(rst),
        .x(fracy),
        .s(shiftval),
        .r(rightshiftercomponent_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:336:39  */
    assign n194_o = shiftedfracy_d1[10:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:336:52  */
    assign n196_o = n194_o == 11'b00000000000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:336:18  */
    assign n197_o = n196_o ? 1'b0 : 1'b1;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:339:37  */
    assign n199_o = shiftedfracy_d1[23:11];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:339:20  */
    assign n201_o = {1'b0, n199_o};
    assign n202_o = {effsub_d1, effsub_d1, effsub_d1, effsub_d1};
    assign n203_o = {effsub_d1, effsub_d1, effsub_d1, effsub_d1};
    assign n204_o = {effsub_d1, effsub_d1, effsub_d1, effsub_d1};
    assign n205_o = {effsub_d1, effsub_d1};
    assign n206_o = {n202_o, n203_o, n204_o, n205_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:341:30  */
    assign n207_o = fracyfar ^ effsubvector;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:342:31  */
    assign n208_o = newx_d1[9:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:342:21  */
    assign n210_o = {2'b01, n208_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:342:45  */
    assign n212_o = {n210_o, 2'b00};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:343:31  */
    assign n213_o = ~sticky;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:343:27  */
    assign n214_o = effsub_d1 & n213_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:348:23  */
    assign fracadder_n215 = fracadder_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:344:4  */
    intadder_14_f300_uid8 fracadder(
        .clk(clk),
        .rst(rst),
        .x(fracxfar),
        .y(fracyfarxorop),
        .cin(cinaddfar),
        .r(fracadder_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:351:28  */
    assign n218_o = {fracaddresult, sticky};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:352:27  */
    assign n220_o = {2'b00, expx_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:352:38  */
    assign n223_o = n220_o+6'b000001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:356:27  */
    assign lzc_component_n224 = lzc_component_count; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:358:23  */
    assign lzc_component_n225 = lzc_component_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:353:4  */
    lzcshifter_15_to_15_counting_16_f300_uid16 lzc_component(
        .clk(clk),
        .rst(rst),
        .i(fracgrs),
        .count(lzc_component_count),
        .o(lzc_component_o));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:360:44  */
    assign n231_o = {2'b00, nzerosnew};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:360:36  */
    assign n232_o = extendedexpinc_d1-n231_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:361:36  */
    assign n235_o = nzerosnew == 4'b1111;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:361:22  */
    assign n236_o = n235_o ? 1'b1 : 1'b0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:362:38  */
    assign n238_o = shiftedfrac[13:3];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:362:25  */
    assign n239_o = {updatedexp, n238_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:364:21  */
    assign n240_o = shiftedfrac[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:364:39  */
    assign n241_o = shiftedfrac[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:364:25  */
    assign n242_o = n240_o | n241_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:365:21  */
    assign n243_o = shiftedfrac[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:366:21  */
    assign n244_o = shiftedfrac[3];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:367:21  */
    assign n245_o = shiftedfrac[4];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:368:33  */
    assign n247_o = ~lsb;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:368:38  */
    assign n248_o = n247_o & grd;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:368:57  */
    assign n249_o = ~rnd;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:368:50  */
    assign n250_o = n248_o & n249_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:368:69  */
    assign n251_o = ~stk;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:368:62  */
    assign n252_o = n250_o & n251_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:368:24  */
    assign n253_o = n252_o ? 1'b0 : 1'b1;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:373:23  */
    assign roundingadder_n256 = roundingadder_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:369:4  */
    intadder_17_f300_uid20 roundingadder(
        .clk(clk),
        .rst(rst),
        .x(expfrac),
        .y(n255_o),
        .cin(addtoroundbit),
        .r(roundingadder_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:377:27  */
    assign n259_o = roundedexpfrac[16:15];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:378:27  */
    assign n260_o = roundedexpfrac[10:1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:379:26  */
    assign n261_o = roundedexpfrac[14:11];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:380:22  */
    assign n262_o = {upexc, excrt_d2};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:382:18  */
    assign n265_o = exexpexc == 4'b0000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:382:29  */
    assign n267_o = exexpexc == 4'b0100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:382:29  */
    assign n268_o = n265_o | n267_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:382:36  */
    assign n270_o = exexpexc == 4'b1000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:382:36  */
    assign n271_o = n268_o | n270_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:382:43  */
    assign n273_o = exexpexc == 4'b1100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:382:43  */
    assign n274_o = n271_o | n273_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:382:50  */
    assign n276_o = exexpexc == 4'b1001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:382:50  */
    assign n277_o = n274_o | n276_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:382:57  */
    assign n279_o = exexpexc == 4'b1101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:382:57  */
    assign n280_o = n277_o | n279_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:383:12  */
    assign n283_o = exexpexc == 4'b0001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:384:12  */
    assign n286_o = exexpexc == 4'b0010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:384:23  */
    assign n288_o = exexpexc == 4'b0110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:384:23  */
    assign n289_o = n286_o | n288_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:384:30  */
    assign n291_o = exexpexc == 4'b1010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:384:30  */
    assign n292_o = n289_o | n291_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:384:37  */
    assign n294_o = exexpexc == 4'b1110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:384:37  */
    assign n295_o = n292_o | n294_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:384:44  */
    assign n297_o = exexpexc == 4'b0101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:384:44  */
    assign n298_o = n295_o | n297_o;
    assign n300_o = {n298_o, n283_o, n280_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:381:4  */
    always @*
        case (n300_o)
            3'b100: n301_o <= 2'b10;
            3'b010: n301_o <= 2'b01;
            3'b001: n301_o <= 2'b00;
            default: n301_o <= 2'b11;
        endcase
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:386:38  */
    assign n303_o = eqdiffsign & effsub_d2;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:386:72  */
    assign n305_o = excrt_d2 == 2'b11;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:386:60  */
    assign n306_o = ~n305_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:386:56  */
    assign n307_o = n303_o & n306_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:386:17  */
    assign n308_o = n307_o ? 2'b00 : excrt2;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:387:39  */
    assign n310_o = eqdiffsign & effsub_d2;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:387:18  */
    assign n311_o = n310_o ? 1'b0 : signr_d2;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:388:22  */
    assign n312_o = {excr, signr2};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:388:31  */
    assign n313_o = {n312_o, expr};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_4_10.vhdl:388:38  */
    assign n314_o = {n313_o, fracr};
endmodule

