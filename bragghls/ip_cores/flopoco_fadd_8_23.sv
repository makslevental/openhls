module intadder_34_f300_uid20
    (input clk,
        input rst,
        input[33:0] x,
        input[33:0] y,
        input cin,
        output[33:0] r);
    wire[33:0] n445_o;
    wire[33:0] n446_o;
    wire[33:0] n447_o;
    assign r = n447_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:185:12  */
    assign n445_o = x+y;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:185:16  */
    assign n446_o = {33'b0, cin};  //  uext
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:185:16  */
    assign n447_o = n445_o+n446_o;
endmodule

module lzcshifter_28_to_28_counting_32_f300_uid16
    (input clk,
        input rst,
        input[27:0] i,
        output[4:0] count,
        output[27:0] o);
    wire[27:0] level5;
    wire count4;
    wire count4_d1;
    wire[27:0] level4;
    wire count3;
    wire count3_d1;
    wire[27:0] level3;
    wire count2;
    wire count2_d1;
    wire[27:0] level2;
    wire[27:0] level2_d1;
    wire count1;
    wire[27:0] level1;
    wire count0;
    wire[27:0] level0;
    wire[4:0] scount;
    reg n377_q;
    reg n378_q;
    reg n379_q;
    reg[27:0] n380_q;
    wire[15:0] n382_o;
    wire n384_o;
    wire n385_o;
    wire n387_o;
    wire[27:0] n388_o;
    wire[11:0] n389_o;
    wire[27:0] n391_o;
    wire[7:0] n393_o;
    wire n395_o;
    wire n396_o;
    wire n398_o;
    wire[27:0] n399_o;
    wire[19:0] n400_o;
    wire[27:0] n402_o;
    wire[3:0] n404_o;
    wire n406_o;
    wire n407_o;
    wire n409_o;
    wire[27:0] n410_o;
    wire[23:0] n411_o;
    wire[27:0] n413_o;
    wire[1:0] n415_o;
    wire n417_o;
    wire n418_o;
    wire n420_o;
    wire[27:0] n421_o;
    wire[25:0] n422_o;
    wire[27:0] n424_o;
    wire n426_o;
    wire n428_o;
    wire n429_o;
    wire n431_o;
    wire[27:0] n432_o;
    wire[26:0] n433_o;
    wire[27:0] n435_o;
    wire[1:0] n436_o;
    wire[2:0] n437_o;
    wire[3:0] n438_o;
    wire[4:0] n439_o;
    assign count = scount;
    assign o = level0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:132:19  */
    assign level5 = i; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:109:8  */
    assign count4 = n385_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:109:16  */
    assign count4_d1 = n377_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:135:19  */
    assign level4 = n388_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:111:8  */
    assign count3 = n396_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:111:16  */
    assign count3_d1 = n378_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:138:19  */
    assign level3 = n399_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:113:8  */
    assign count2 = n407_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:113:16  */
    assign count2_d1 = n379_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:114:8  */
    assign level2 = n410_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:142:22  */
    assign level2_d1 = n380_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:115:8  */
    assign count1 = n418_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:145:19  */
    assign level1 = n421_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:117:8  */
    assign count0 = n429_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:118:8  */
    assign level0 = n432_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:119:8  */
    assign scount = n439_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:123:10  */
    always @(posedge clk)
        n377_q <= count4;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:123:10  */
    always @(posedge clk)
        n378_q <= count3;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:123:10  */
    always @(posedge clk)
        n379_q <= count2;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:123:10  */
    always @(posedge clk)
        n380_q <= level2;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:131:28  */
    assign n382_o = level5[27:12];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:131:43  */
    assign n384_o = n382_o == 16'b0000000000000000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:131:17  */
    assign n385_o = n384_o ? 1'b1 : 1'b0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:132:44  */
    assign n387_o = ~count4;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:132:33  */
    assign n388_o = n387_o ? level5 : n391_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:132:60  */
    assign n389_o = level5[11:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:132:74  */
    assign n391_o = {n389_o, 16'b0000000000000000};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:134:28  */
    assign n393_o = level4[27:20];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:134:43  */
    assign n395_o = n393_o == 8'b00000000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:134:17  */
    assign n396_o = n395_o ? 1'b1 : 1'b0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:135:44  */
    assign n398_o = ~count3;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:135:33  */
    assign n399_o = n398_o ? level4 : n402_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:135:60  */
    assign n400_o = level4[19:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:135:74  */
    assign n402_o = {n400_o, 8'b00000000};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:137:28  */
    assign n404_o = level3[27:24];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:137:43  */
    assign n406_o = n404_o == 4'b0000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:137:17  */
    assign n407_o = n406_o ? 1'b1 : 1'b0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:138:44  */
    assign n409_o = ~count2;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:138:33  */
    assign n410_o = n409_o ? level3 : n413_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:138:60  */
    assign n411_o = level3[23:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:138:74  */
    assign n413_o = {n411_o, 4'b0000};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:141:31  */
    assign n415_o = level2_d1[27:26];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:141:46  */
    assign n417_o = n415_o == 2'b00;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:141:17  */
    assign n418_o = n417_o ? 1'b1 : 1'b0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:142:47  */
    assign n420_o = ~count1;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:142:36  */
    assign n421_o = n420_o ? level2_d1 : n424_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:142:66  */
    assign n422_o = level2_d1[25:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:142:80  */
    assign n424_o = {n422_o, 2'b00};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:144:28  */
    assign n426_o = level1[27];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:144:43  */
    assign n428_o = n426_o == 1'b0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:144:17  */
    assign n429_o = n428_o ? 1'b1 : 1'b0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:145:44  */
    assign n431_o = ~count0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:145:33  */
    assign n432_o = n431_o ? level1 : n435_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:145:60  */
    assign n433_o = level1[26:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:145:74  */
    assign n435_o = {n433_o, 1'b0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:148:24  */
    assign n436_o = {count4_d1, count3_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:148:36  */
    assign n437_o = {n436_o, count2_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:148:48  */
    assign n438_o = {n437_o, count1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:148:57  */
    assign n439_o = {n438_o, count0};
endmodule

module intadder_27_f300_uid8
    (input clk,
        input rst,
        input[26:0] x,
        input[26:0] y,
        input cin,
        output[26:0] r);
    wire[26:0] n364_o;
    wire[26:0] n365_o;
    wire[26:0] n366_o;
    assign r = n366_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:81:12  */
    assign n364_o = x+y;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:81:16  */
    assign n365_o = {26'b0, cin};  //  uext
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:81:16  */
    assign n366_o = n364_o+n365_o;
endmodule

module rightshifter_24_by_max_26_f300_uid4
    (input clk,
        input rst,
        input[23:0] x,
        input[4:0] s,
        output[49:0] r);
    wire[23:0] level0;
    wire[4:0] ps;
    wire[24:0] level1;
    wire[26:0] level2;
    wire[30:0] level3;
    wire[38:0] level4;
    wire[54:0] level5;
    wire[24:0] n329_o;
    wire n330_o;
    wire[24:0] n331_o;
    wire[24:0] n333_o;
    wire[26:0] n335_o;
    wire n336_o;
    wire[26:0] n337_o;
    wire[26:0] n339_o;
    wire[30:0] n341_o;
    wire n342_o;
    wire[30:0] n343_o;
    wire[30:0] n345_o;
    wire[38:0] n347_o;
    wire n348_o;
    wire[38:0] n349_o;
    wire[38:0] n351_o;
    wire[54:0] n353_o;
    wire n354_o;
    wire[54:0] n355_o;
    wire[54:0] n357_o;
    wire[49:0] n358_o;
    assign r = n358_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:25:8  */
    assign level0 = x; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:26:8  */
    assign ps = s; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:27:8  */
    assign level1 = n331_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:28:8  */
    assign level2 = n337_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:29:8  */
    assign level3 = n343_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:30:8  */
    assign level4 = n349_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:31:8  */
    assign level5 = n355_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:40:34  */
    assign n329_o = {1'b0, level0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:40:50  */
    assign n330_o = ps[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:40:43  */
    assign n331_o = n330_o ? n329_o : n333_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:40:75  */
    assign n333_o = {level0, 1'b0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:41:34  */
    assign n335_o = {2'b00, level1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:41:50  */
    assign n336_o = ps[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:41:43  */
    assign n337_o = n336_o ? n335_o : n339_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:41:75  */
    assign n339_o = {level1, 2'b00};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:42:34  */
    assign n341_o = {4'b0000, level2};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:42:50  */
    assign n342_o = ps[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:42:43  */
    assign n343_o = n342_o ? n341_o : n345_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:42:75  */
    assign n345_o = {level2, 4'b0000};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:43:34  */
    assign n347_o = {8'b00000000, level3};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:43:50  */
    assign n348_o = ps[3];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:43:43  */
    assign n349_o = n348_o ? n347_o : n351_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:43:75  */
    assign n351_o = {level3, 8'b00000000};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:44:35  */
    assign n353_o = {16'b0000000000000000, level4};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:44:51  */
    assign n354_o = ps[4];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:44:44  */
    assign n355_o = n354_o ? n353_o : n357_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:44:76  */
    assign n357_o = {level4, 16'b0000000000000000};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:45:15  */
    assign n358_o = level5[54:5];
endmodule

module fadd
    (input clk,
        input rst,
        input[33:0] X,
        input[33:0] Y,
        output[33:0] R);
    wire[32:0] excexpfracx;
    wire[32:0] excexpfracy;
    wire[8:0] exmey;
    wire[8:0] eymex;
    wire swap;
    wire[33:0] newx;
    wire[33:0] newx_d1;
    wire[33:0] newy;
    wire[7:0] expx;
    wire[7:0] expx_d1;
    wire[1:0] excx;
    wire[1:0] excy;
    wire signx;
    wire signy;
    wire effsub;
    wire effsub_d1;
    wire effsub_d2;
    wire[5:0] sxsyexnxy;
    wire[23:0] fracy;
    wire[1:0] excrt;
    wire[1:0] excrt_d1;
    wire[1:0] excrt_d2;
    wire signr;
    wire signr_d1;
    wire signr_d2;
    wire[8:0] expdiff;
    wire shiftedout;
    wire[4:0] shiftval;
    wire[49:0] shiftedfracy;
    wire[49:0] shiftedfracy_d1;
    wire sticky;
    wire[26:0] fracyfar;
    wire[26:0] effsubvector;
    wire[26:0] fracyfarxorop;
    wire[26:0] fracxfar;
    wire cinaddfar;
    wire[26:0] fracaddresult;
    wire[27:0] fracgrs;
    wire[9:0] extendedexpinc;
    wire[9:0] extendedexpinc_d1;
    wire[4:0] nzerosnew;
    wire[27:0] shiftedfrac;
    wire[9:0] updatedexp;
    wire eqdiffsign;
    wire[33:0] expfrac;
    wire stk;
    wire rnd;
    wire grd;
    wire lsb;
    wire addtoroundbit;
    wire[33:0] roundedexpfrac;
    wire[1:0] upexc;
    wire[22:0] fracr;
    wire[7:0] expr;
    wire[3:0] exexpexc;
    wire[1:0] excrt2;
    wire[1:0] excr;
    wire signr2;
    wire[33:0] computedr;
    reg[33:0] n15_q;
    reg[7:0] n16_q;
    reg n17_q;
    reg n18_q;
    reg[1:0] n19_q;
    reg[1:0] n20_q;
    reg n21_q;
    reg n22_q;
    reg[49:0] n23_q;
    reg[9:0] n24_q;
    wire[1:0] n25_o;
    wire[30:0] n26_o;
    wire[32:0] n27_o;
    wire[1:0] n28_o;
    wire[30:0] n29_o;
    wire[32:0] n30_o;
    wire[7:0] n31_o;
    wire[8:0] n33_o;
    wire[7:0] n34_o;
    wire[8:0] n36_o;
    wire[8:0] n37_o;
    wire[7:0] n38_o;
    wire[8:0] n40_o;
    wire[7:0] n41_o;
    wire[8:0] n43_o;
    wire[8:0] n44_o;
    wire n46_o;
    wire n47_o;
    wire n49_o;
    wire[33:0] n50_o;
    wire n51_o;
    wire[33:0] n52_o;
    wire[7:0] n53_o;
    wire[1:0] n54_o;
    wire[1:0] n55_o;
    wire n56_o;
    wire n57_o;
    wire n58_o;
    wire[1:0] n59_o;
    wire[3:0] n60_o;
    wire[5:0] n61_o;
    wire n65_o;
    wire[23:0] n66_o;
    wire[22:0] n67_o;
    wire[23:0] n69_o;
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
    wire[8:0] n183_o;
    wire n186_o;
    wire n187_o;
    wire[4:0] n189_o;
    wire n190_o;
    wire[4:0] n191_o;
    wire[49:0] rightshiftercomponent_n193;
    wire[49:0] rightshiftercomponent_r;
    wire[23:0] n197_o;
    wire n199_o;
    wire n200_o;
    wire[25:0] n202_o;
    wire[26:0] n204_o;
    wire[3:0] n205_o;
    wire[3:0] n206_o;
    wire[3:0] n207_o;
    wire[3:0] n208_o;
    wire[3:0] n209_o;
    wire[3:0] n210_o;
    wire[2:0] n211_o;
    wire[15:0] n212_o;
    wire[10:0] n213_o;
    wire[26:0] n214_o;
    wire[26:0] n215_o;
    wire[22:0] n216_o;
    wire[24:0] n218_o;
    wire[26:0] n220_o;
    wire n221_o;
    wire n222_o;
    wire[26:0] fracadder_n223;
    wire[26:0] fracadder_r;
    wire[27:0] n226_o;
    wire[9:0] n228_o;
    wire[9:0] n231_o;
    wire[4:0] lzc_component_n232;
    wire[27:0] lzc_component_n233;
    wire[4:0] lzc_component_count;
    wire[27:0] lzc_component_o;
    wire[9:0] n239_o;
    wire[9:0] n240_o;
    wire n243_o;
    wire n244_o;
    wire[23:0] n246_o;
    wire[33:0] n247_o;
    wire n248_o;
    wire n249_o;
    wire n250_o;
    wire n251_o;
    wire n252_o;
    wire n253_o;
    wire n255_o;
    wire n256_o;
    wire n257_o;
    wire n258_o;
    wire n259_o;
    wire n260_o;
    wire n261_o;
    localparam [33:0] n263_o = 34'b0000000000000000000000000000000000;
    wire[33:0] roundingadder_n264;
    wire[33:0] roundingadder_r;
    wire[1:0] n267_o;
    wire[22:0] n268_o;
    wire[7:0] n269_o;
    wire[3:0] n270_o;
    wire n273_o;
    wire n275_o;
    wire n276_o;
    wire n278_o;
    wire n279_o;
    wire n281_o;
    wire n282_o;
    wire n284_o;
    wire n285_o;
    wire n287_o;
    wire n288_o;
    wire n291_o;
    wire n294_o;
    wire n296_o;
    wire n297_o;
    wire n299_o;
    wire n300_o;
    wire n302_o;
    wire n303_o;
    wire n305_o;
    wire n306_o;
    wire[2:0] n308_o;
    reg[1:0] n309_o;
    wire n311_o;
    wire n313_o;
    wire n314_o;
    wire n315_o;
    wire[1:0] n316_o;
    wire n318_o;
    wire n319_o;
    wire[2:0] n320_o;
    wire[10:0] n321_o;
    wire[33:0] n322_o;
    assign R = computedr;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:243:8  */
    assign excexpfracx = n27_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:244:8  */
    assign excexpfracy = n30_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:245:8  */
    assign exmey = n37_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:246:8  */
    assign eymex = n44_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:247:8  */
    assign swap = n47_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:248:8  */
    assign newx = n50_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:248:14  */
    assign newx_d1 = n15_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:249:8  */
    assign newy = n52_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:250:8  */
    assign expx = n53_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:250:14  */
    assign expx_d1 = n16_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:251:8  */
    assign excx = n54_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:252:8  */
    assign excy = n55_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:253:8  */
    assign signx = n56_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:254:8  */
    assign signy = n57_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:255:8  */
    assign effsub = n58_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:255:16  */
    assign effsub_d1 = n17_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:255:27  */
    assign effsub_d2 = n18_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:256:8  */
    assign sxsyexnxy = n61_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:258:8  */
    assign fracy = n66_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:259:8  */
    assign excrt = n174_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:259:15  */
    assign excrt_d1 = n19_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:259:25  */
    assign excrt_d2 = n20_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:260:8  */
    assign signr = n181_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:260:15  */
    assign signr_d1 = n21_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:260:25  */
    assign signr_d2 = n22_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:261:8  */
    assign expdiff = n183_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:262:8  */
    assign shiftedout = n187_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:263:8  */
    assign shiftval = n191_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:264:8  */
    assign shiftedfracy = rightshiftercomponent_n193; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:264:22  */
    assign shiftedfracy_d1 = n23_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:265:8  */
    assign sticky = n200_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:266:8  */
    assign fracyfar = n204_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:267:8  */
    assign effsubvector = n214_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:268:8  */
    assign fracyfarxorop = n215_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:269:8  */
    assign fracxfar = n220_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:270:8  */
    assign cinaddfar = n222_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:271:8  */
    assign fracaddresult = fracadder_n223; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:272:8  */
    assign fracgrs = n226_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:273:8  */
    assign extendedexpinc = n231_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:273:24  */
    assign extendedexpinc_d1 = n24_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:274:8  */
    assign nzerosnew = lzc_component_n232; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:275:8  */
    assign shiftedfrac = lzc_component_n233; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:276:8  */
    assign updatedexp = n240_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:277:8  */
    assign eqdiffsign = n244_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:278:8  */
    assign expfrac = n247_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:279:8  */
    assign stk = n250_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:280:8  */
    assign rnd = n251_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:281:8  */
    assign grd = n252_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:282:8  */
    assign lsb = n253_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:283:8  */
    assign addtoroundbit = n261_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:284:8  */
    assign roundedexpfrac = roundingadder_n264; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:285:8  */
    assign upexc = n267_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:286:8  */
    assign fracr = n268_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:287:8  */
    assign expr = n269_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:288:8  */
    assign exexpexc = n270_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:289:8  */
    assign excrt2 = n309_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:290:8  */
    assign excr = n316_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:291:8  */
    assign signr2 = n319_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:292:8  */
    assign computedr = n322_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:296:10  */
    always @(posedge clk)
        n15_q <= newx;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:296:10  */
    always @(posedge clk)
        n16_q <= expx;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:296:10  */
    always @(posedge clk)
        n17_q <= effsub;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:296:10  */
    always @(posedge clk)
        n18_q <= effsub_d1;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:296:10  */
    always @(posedge clk)
        n19_q <= excrt;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:296:10  */
    always @(posedge clk)
        n20_q <= excrt_d1;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:296:10  */
    always @(posedge clk)
        n21_q <= signr;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:296:10  */
    always @(posedge clk)
        n22_q <= signr_d1;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:296:10  */
    always @(posedge clk)
        n23_q <= shiftedfracy;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:296:10  */
    always @(posedge clk)
        n24_q <= extendedexpinc;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:310:20  */
    assign n25_o = X[33:32];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:310:38  */
    assign n26_o = X[30:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:310:35  */
    assign n27_o = {n25_o, n26_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:311:20  */
    assign n28_o = Y[33:32];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:311:38  */
    assign n29_o = Y[30:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:311:35  */
    assign n30_o = {n28_o, n29_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:312:21  */
    assign n31_o = X[30:23];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:312:18  */
    assign n33_o = {1'b0, n31_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:312:47  */
    assign n34_o = Y[30:23];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:312:44  */
    assign n36_o = {1'b0, n34_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:312:37  */
    assign n37_o = n33_o-n36_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:313:21  */
    assign n38_o = Y[30:23];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:313:18  */
    assign n40_o = {1'b0, n38_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:313:47  */
    assign n41_o = X[30:23];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:313:44  */
    assign n43_o = {1'b0, n41_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:313:37  */
    assign n44_o = n40_o-n43_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:314:33  */
    assign n46_o = $unsigned(excexpfracx) >= $unsigned(excexpfracy);
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:314:16  */
    assign n47_o = n46_o ? 1'b0 : 1'b1;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:315:24  */
    assign n49_o = ~swap;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:315:14  */
    assign n50_o = n49_o ? X : Y;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:316:24  */
    assign n51_o = ~swap;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:316:14  */
    assign n52_o = n51_o ? Y : X;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:317:15  */
    assign n53_o = newx[30:23];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:318:15  */
    assign n54_o = newx[33:32];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:319:15  */
    assign n55_o = newy[33:32];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:320:16  */
    assign n56_o = newx[31];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:321:16  */
    assign n57_o = newy[31];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:322:20  */
    assign n58_o = signx ^ signy;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:323:23  */
    assign n59_o = {signx, signy};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:323:31  */
    assign n60_o = {n59_o, excx};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:323:38  */
    assign n61_o = {n60_o, excy};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:325:49  */
    assign n65_o = excy == 2'b00;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:325:40  */
    assign n66_o = n65_o ? 24'b000000000000000000000000 : n69_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:325:71  */
    assign n67_o = newy[22:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:325:65  */
    assign n69_o = {1'b1, n67_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:327:18  */
    assign n72_o = sxsyexnxy == 6'b000000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:327:31  */
    assign n74_o = sxsyexnxy == 6'b010000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:327:31  */
    assign n75_o = n72_o | n74_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:327:40  */
    assign n77_o = sxsyexnxy == 6'b100000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:327:40  */
    assign n78_o = n75_o | n77_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:327:49  */
    assign n80_o = sxsyexnxy == 6'b110000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:327:49  */
    assign n81_o = n78_o | n80_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:328:12  */
    assign n84_o = sxsyexnxy == 6'b000101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:328:25  */
    assign n86_o = sxsyexnxy == 6'b010101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:328:25  */
    assign n87_o = n84_o | n86_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:328:34  */
    assign n89_o = sxsyexnxy == 6'b100101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:328:34  */
    assign n90_o = n87_o | n89_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:328:43  */
    assign n92_o = sxsyexnxy == 6'b110101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:328:43  */
    assign n93_o = n90_o | n92_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:328:52  */
    assign n95_o = sxsyexnxy == 6'b000100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:328:52  */
    assign n96_o = n93_o | n95_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:328:61  */
    assign n98_o = sxsyexnxy == 6'b010100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:328:61  */
    assign n99_o = n96_o | n98_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:328:70  */
    assign n101_o = sxsyexnxy == 6'b100100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:328:70  */
    assign n102_o = n99_o | n101_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:328:79  */
    assign n104_o = sxsyexnxy == 6'b110100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:328:79  */
    assign n105_o = n102_o | n104_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:328:88  */
    assign n107_o = sxsyexnxy == 6'b000001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:328:88  */
    assign n108_o = n105_o | n107_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:328:97  */
    assign n110_o = sxsyexnxy == 6'b010001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:328:97  */
    assign n111_o = n108_o | n110_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:328:106  */
    assign n113_o = sxsyexnxy == 6'b100001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:328:106  */
    assign n114_o = n111_o | n113_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:328:115  */
    assign n116_o = sxsyexnxy == 6'b110001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:328:115  */
    assign n117_o = n114_o | n116_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:329:12  */
    assign n120_o = sxsyexnxy == 6'b111010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:329:25  */
    assign n122_o = sxsyexnxy == 6'b001010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:329:25  */
    assign n123_o = n120_o | n122_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:329:34  */
    assign n125_o = sxsyexnxy == 6'b001000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:329:34  */
    assign n126_o = n123_o | n125_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:329:43  */
    assign n128_o = sxsyexnxy == 6'b011000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:329:43  */
    assign n129_o = n126_o | n128_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:329:52  */
    assign n131_o = sxsyexnxy == 6'b101000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:329:52  */
    assign n132_o = n129_o | n131_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:329:61  */
    assign n134_o = sxsyexnxy == 6'b111000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:329:61  */
    assign n135_o = n132_o | n134_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:329:70  */
    assign n137_o = sxsyexnxy == 6'b000010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:329:70  */
    assign n138_o = n135_o | n137_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:329:79  */
    assign n140_o = sxsyexnxy == 6'b010010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:329:79  */
    assign n141_o = n138_o | n140_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:329:88  */
    assign n143_o = sxsyexnxy == 6'b100010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:329:88  */
    assign n144_o = n141_o | n143_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:329:97  */
    assign n146_o = sxsyexnxy == 6'b110010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:329:97  */
    assign n147_o = n144_o | n146_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:329:106  */
    assign n149_o = sxsyexnxy == 6'b001001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:329:106  */
    assign n150_o = n147_o | n149_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:329:115  */
    assign n152_o = sxsyexnxy == 6'b011001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:329:115  */
    assign n153_o = n150_o | n152_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:329:124  */
    assign n155_o = sxsyexnxy == 6'b101001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:329:124  */
    assign n156_o = n153_o | n155_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:329:133  */
    assign n158_o = sxsyexnxy == 6'b111001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:329:133  */
    assign n159_o = n156_o | n158_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:329:142  */
    assign n161_o = sxsyexnxy == 6'b000110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:329:142  */
    assign n162_o = n159_o | n161_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:329:151  */
    assign n164_o = sxsyexnxy == 6'b010110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:329:151  */
    assign n165_o = n162_o | n164_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:329:160  */
    assign n167_o = sxsyexnxy == 6'b100110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:329:160  */
    assign n168_o = n165_o | n167_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:329:169  */
    assign n170_o = sxsyexnxy == 6'b110110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:329:169  */
    assign n171_o = n168_o | n170_o;
    assign n173_o = {n171_o, n117_o, n81_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:326:4  */
    always @*
        case (n173_o)
            3'b100: n174_o <= 2'b10;
            3'b010: n174_o <= 2'b01;
            3'b001: n174_o <= 2'b00;
            default: n174_o <= 2'b11;
        endcase
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:331:31  */
    assign n177_o = sxsyexnxy == 6'b100000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:331:53  */
    assign n179_o = sxsyexnxy == 6'b010000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:331:41  */
    assign n180_o = n177_o | n179_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:331:16  */
    assign n181_o = n180_o ? 1'b0 : signx;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:333:31  */
    assign n182_o = ~swap;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:333:21  */
    assign n183_o = n182_o ? exmey : eymex;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:334:36  */
    assign n186_o = $unsigned(expdiff) > $unsigned(9'b000011001);
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:334:22  */
    assign n187_o = n186_o ? 1'b1 : 1'b0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:335:23  */
    assign n189_o = expdiff[4:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:335:51  */
    assign n190_o = ~shiftedout;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:335:36  */
    assign n191_o = n190_o ? n189_o : 5'b11010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:339:23  */
    assign rightshiftercomponent_n193 = rightshiftercomponent_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:336:4  */
    rightshifter_24_by_max_26_f300_uid4 rightshiftercomponent(
        .clk(clk),
        .rst(rst),
        .x(fracy),
        .s(shiftval),
        .r(rightshiftercomponent_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:343:39  */
    assign n197_o = shiftedfracy_d1[23:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:343:52  */
    assign n199_o = n197_o == 24'b000000000000000000000000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:343:18  */
    assign n200_o = n199_o ? 1'b0 : 1'b1;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:346:37  */
    assign n202_o = shiftedfracy_d1[49:24];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:346:20  */
    assign n204_o = {1'b0, n202_o};
    assign n205_o = {effsub_d1, effsub_d1, effsub_d1, effsub_d1};
    assign n206_o = {effsub_d1, effsub_d1, effsub_d1, effsub_d1};
    assign n207_o = {effsub_d1, effsub_d1, effsub_d1, effsub_d1};
    assign n208_o = {effsub_d1, effsub_d1, effsub_d1, effsub_d1};
    assign n209_o = {effsub_d1, effsub_d1, effsub_d1, effsub_d1};
    assign n210_o = {effsub_d1, effsub_d1, effsub_d1, effsub_d1};
    assign n211_o = {effsub_d1, effsub_d1, effsub_d1};
    assign n212_o = {n205_o, n206_o, n207_o, n208_o};
    assign n213_o = {n209_o, n210_o, n211_o};
    assign n214_o = {n212_o, n213_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:348:30  */
    assign n215_o = fracyfar ^ effsubvector;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:349:31  */
    assign n216_o = newx_d1[22:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:349:21  */
    assign n218_o = {2'b01, n216_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:349:46  */
    assign n220_o = {n218_o, 2'b00};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:350:31  */
    assign n221_o = ~sticky;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:350:27  */
    assign n222_o = effsub_d1 & n221_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:355:23  */
    assign fracadder_n223 = fracadder_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:351:4  */
    intadder_27_f300_uid8 fracadder(
        .clk(clk),
        .rst(rst),
        .x(fracxfar),
        .y(fracyfarxorop),
        .cin(cinaddfar),
        .r(fracadder_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:358:28  */
    assign n226_o = {fracaddresult, sticky};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:359:27  */
    assign n228_o = {2'b00, expx_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:359:38  */
    assign n231_o = n228_o+10'b0000000001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:363:27  */
    assign lzc_component_n232 = lzc_component_count; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:365:23  */
    assign lzc_component_n233 = lzc_component_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:360:4  */
    lzcshifter_28_to_28_counting_32_f300_uid16 lzc_component(
        .clk(clk),
        .rst(rst),
        .i(fracgrs),
        .count(lzc_component_count),
        .o(lzc_component_o));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:367:47  */
    assign n239_o = {5'b00000, nzerosnew};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:367:36  */
    assign n240_o = extendedexpinc_d1-n239_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:368:36  */
    assign n243_o = nzerosnew == 5'b11111;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:368:22  */
    assign n244_o = n243_o ? 1'b1 : 1'b0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:369:38  */
    assign n246_o = shiftedfrac[26:3];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:369:25  */
    assign n247_o = {updatedexp, n246_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:371:21  */
    assign n248_o = shiftedfrac[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:371:39  */
    assign n249_o = shiftedfrac[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:371:25  */
    assign n250_o = n248_o | n249_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:372:21  */
    assign n251_o = shiftedfrac[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:373:21  */
    assign n252_o = shiftedfrac[3];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:374:21  */
    assign n253_o = shiftedfrac[4];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:375:33  */
    assign n255_o = ~lsb;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:375:38  */
    assign n256_o = n255_o & grd;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:375:57  */
    assign n257_o = ~rnd;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:375:50  */
    assign n258_o = n256_o & n257_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:375:69  */
    assign n259_o = ~stk;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:375:62  */
    assign n260_o = n258_o & n259_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:375:24  */
    assign n261_o = n260_o ? 1'b0 : 1'b1;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:380:23  */
    assign roundingadder_n264 = roundingadder_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:376:4  */
    intadder_34_f300_uid20 roundingadder(
        .clk(clk),
        .rst(rst),
        .x(expfrac),
        .y(n263_o),
        .cin(addtoroundbit),
        .r(roundingadder_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:384:27  */
    assign n267_o = roundedexpfrac[33:32];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:385:27  */
    assign n268_o = roundedexpfrac[23:1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:386:26  */
    assign n269_o = roundedexpfrac[31:24];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:387:22  */
    assign n270_o = {upexc, excrt_d2};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:389:18  */
    assign n273_o = exexpexc == 4'b0000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:389:29  */
    assign n275_o = exexpexc == 4'b0100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:389:29  */
    assign n276_o = n273_o | n275_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:389:36  */
    assign n278_o = exexpexc == 4'b1000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:389:36  */
    assign n279_o = n276_o | n278_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:389:43  */
    assign n281_o = exexpexc == 4'b1100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:389:43  */
    assign n282_o = n279_o | n281_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:389:50  */
    assign n284_o = exexpexc == 4'b1001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:389:50  */
    assign n285_o = n282_o | n284_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:389:57  */
    assign n287_o = exexpexc == 4'b1101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:389:57  */
    assign n288_o = n285_o | n287_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:390:12  */
    assign n291_o = exexpexc == 4'b0001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:391:12  */
    assign n294_o = exexpexc == 4'b0010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:391:23  */
    assign n296_o = exexpexc == 4'b0110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:391:23  */
    assign n297_o = n294_o | n296_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:391:30  */
    assign n299_o = exexpexc == 4'b1010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:391:30  */
    assign n300_o = n297_o | n299_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:391:37  */
    assign n302_o = exexpexc == 4'b1110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:391:37  */
    assign n303_o = n300_o | n302_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:391:44  */
    assign n305_o = exexpexc == 4'b0101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:391:44  */
    assign n306_o = n303_o | n305_o;
    assign n308_o = {n306_o, n291_o, n288_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:388:4  */
    always @*
        case (n308_o)
            3'b100: n309_o <= 2'b10;
            3'b010: n309_o <= 2'b01;
            3'b001: n309_o <= 2'b00;
            default: n309_o <= 2'b11;
        endcase
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:393:38  */
    assign n311_o = eqdiffsign & effsub_d2;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:393:72  */
    assign n313_o = excrt_d2 == 2'b11;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:393:60  */
    assign n314_o = ~n313_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:393:56  */
    assign n315_o = n311_o & n314_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:393:17  */
    assign n316_o = n315_o ? 2'b00 : excrt2;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:394:39  */
    assign n318_o = eqdiffsign & effsub_d2;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:394:18  */
    assign n319_o = n318_o ? 1'b0 : signr_d2;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:395:22  */
    assign n320_o = {excr, signr2};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:395:31  */
    assign n321_o = {n320_o, expr};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_8_23.vhdl:395:38  */
    assign n322_o = {n321_o, fracr};
endmodule

