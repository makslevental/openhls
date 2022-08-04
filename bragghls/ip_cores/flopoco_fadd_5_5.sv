module intadder_13_f600_uid20
    (input clk,
        input rst,
        input[12:0] x,
        input[12:0] y,
        input cin,
        output[12:0] r);
    wire[12:0] n476_o;
    wire[12:0] n477_o;
    wire[12:0] n478_o;
    assign r = n478_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:184:12  */
    assign n476_o = x+y;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:184:16  */
    assign n477_o = {12'b0, cin};  //  uext
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:184:16  */
    assign n478_o = n476_o+n477_o;
endmodule

module lzcshifter_10_to_10_counting_16_f600_uid16
    (input clk,
        input rst,
        input[9:0] i,
        output[3:0] count,
        output[9:0] o);
    wire[9:0] level4;
    wire count3;
    wire count3_d1;
    wire count3_d2;
    wire[9:0] level3;
    wire[9:0] level3_d1;
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
    reg n418_q;
    reg n419_q;
    reg[9:0] n420_q;
    reg n421_q;
    reg n422_q;
    reg[9:0] n423_q;
    wire[7:0] n425_o;
    wire n427_o;
    wire n428_o;
    wire n430_o;
    wire[9:0] n431_o;
    wire[1:0] n432_o;
    wire[9:0] n434_o;
    wire[3:0] n436_o;
    wire n438_o;
    wire n439_o;
    wire n441_o;
    wire[9:0] n442_o;
    wire[5:0] n443_o;
    wire[9:0] n445_o;
    wire[1:0] n447_o;
    wire n449_o;
    wire n450_o;
    wire n452_o;
    wire[9:0] n453_o;
    wire[7:0] n454_o;
    wire[9:0] n456_o;
    wire n458_o;
    wire n460_o;
    wire n461_o;
    wire n463_o;
    wire[9:0] n464_o;
    wire[8:0] n465_o;
    wire[9:0] n467_o;
    wire[1:0] n468_o;
    wire[2:0] n469_o;
    wire[3:0] n470_o;
    assign count = scount;
    assign o = level0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:133:19  */
    assign level4 = i; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:110:8  */
    assign count3 = n428_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:110:16  */
    assign count3_d1 = n418_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:110:27  */
    assign count3_d2 = n419_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:111:8  */
    assign level3 = n431_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:137:22  */
    assign level3_d1 = n420_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:112:8  */
    assign count2 = n439_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:112:16  */
    assign count2_d1 = n421_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:140:19  */
    assign level2 = n442_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:114:8  */
    assign count1 = n450_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:114:16  */
    assign count1_d1 = n422_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:115:8  */
    assign level1 = n453_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:144:22  */
    assign level1_d1 = n423_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:116:8  */
    assign count0 = n461_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:117:8  */
    assign level0 = n464_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:118:8  */
    assign scount = n470_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:122:10  */
    always @(posedge clk)
        n418_q <= count3;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:122:10  */
    always @(posedge clk)
        n419_q <= count3_d1;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:122:10  */
    always @(posedge clk)
        n420_q <= level3;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:122:10  */
    always @(posedge clk)
        n421_q <= count2;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:122:10  */
    always @(posedge clk)
        n422_q <= count1;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:122:10  */
    always @(posedge clk)
        n423_q <= level1;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:132:28  */
    assign n425_o = level4[9:2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:132:41  */
    assign n427_o = n425_o == 8'b00000000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:132:17  */
    assign n428_o = n427_o ? 1'b1 : 1'b0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:133:43  */
    assign n430_o = ~count3;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:133:32  */
    assign n431_o = n430_o ? level4 : n434_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:133:59  */
    assign n432_o = level4[1:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:133:72  */
    assign n434_o = {n432_o, 8'b00000000};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:136:31  */
    assign n436_o = level3_d1[9:6];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:136:44  */
    assign n438_o = n436_o == 4'b0000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:136:17  */
    assign n439_o = n438_o ? 1'b1 : 1'b0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:137:46  */
    assign n441_o = ~count2;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:137:35  */
    assign n442_o = n441_o ? level3_d1 : n445_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:137:65  */
    assign n443_o = level3_d1[5:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:137:78  */
    assign n445_o = {n443_o, 4'b0000};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:139:28  */
    assign n447_o = level2[9:8];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:139:41  */
    assign n449_o = n447_o == 2'b00;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:139:17  */
    assign n450_o = n449_o ? 1'b1 : 1'b0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:140:43  */
    assign n452_o = ~count1;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:140:32  */
    assign n453_o = n452_o ? level2 : n456_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:140:59  */
    assign n454_o = level2[7:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:140:72  */
    assign n456_o = {n454_o, 2'b00};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:143:31  */
    assign n458_o = level1_d1[9];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:143:44  */
    assign n460_o = n458_o == 1'b0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:143:17  */
    assign n461_o = n460_o ? 1'b1 : 1'b0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:144:46  */
    assign n463_o = ~count0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:144:35  */
    assign n464_o = n463_o ? level1_d1 : n467_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:144:65  */
    assign n465_o = level1_d1[8:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:144:78  */
    assign n467_o = {n465_o, 1'b0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:147:24  */
    assign n468_o = {count3_d2, count2_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:147:36  */
    assign n469_o = {n468_o, count1_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:147:48  */
    assign n470_o = {n469_o, count0};
endmodule

module intadder_9_f600_uid8
    (input clk,
        input rst,
        input[8:0] x,
        input[8:0] y,
        input cin,
        output[8:0] r);
    wire[8:0] n403_o;
    wire[8:0] n404_o;
    wire[8:0] n405_o;
    assign r = n405_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:82:12  */
    assign n403_o = x+y;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:82:16  */
    assign n404_o = {8'b0, cin};  //  uext
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:82:16  */
    assign n405_o = n403_o+n404_o;
endmodule

module rightshifter_6_by_max_8_f600_uid4
    (input clk,
        input rst,
        input[5:0] x,
        input[3:0] s,
        output[13:0] r);
    wire[5:0] level0;
    wire[3:0] ps;
    wire[3:0] ps_d1;
    wire[6:0] level1;
    wire[8:0] level2;
    wire[12:0] level3;
    wire[12:0] level3_d1;
    wire[20:0] level4;
    reg[3:0] n371_q;
    reg[12:0] n372_q;
    wire[6:0] n374_o;
    wire n375_o;
    wire[6:0] n376_o;
    wire[6:0] n378_o;
    wire[8:0] n380_o;
    wire n381_o;
    wire[8:0] n382_o;
    wire[8:0] n384_o;
    wire[12:0] n386_o;
    wire n387_o;
    wire[12:0] n388_o;
    wire[12:0] n390_o;
    wire[20:0] n392_o;
    wire n393_o;
    wire[20:0] n394_o;
    wire[20:0] n396_o;
    wire[13:0] n397_o;
    assign r = n397_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:25:8  */
    assign level0 = x; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:26:8  */
    assign ps = s; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:26:12  */
    assign ps_d1 = n371_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:27:8  */
    assign level1 = n376_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:28:8  */
    assign level2 = n382_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:29:8  */
    assign level3 = n388_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:29:16  */
    assign level3_d1 = n372_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:30:8  */
    assign level4 = n394_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:34:10  */
    always @(posedge clk)
        n371_q <= ps;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:34:10  */
    always @(posedge clk)
        n372_q <= level3;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:41:34  */
    assign n374_o = {1'b0, level0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:41:50  */
    assign n375_o = ps[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:41:43  */
    assign n376_o = n375_o ? n374_o : n378_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:41:75  */
    assign n378_o = {level0, 1'b0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:42:34  */
    assign n380_o = {2'b00, level1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:42:50  */
    assign n381_o = ps[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:42:43  */
    assign n382_o = n381_o ? n380_o : n384_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:42:75  */
    assign n384_o = {level1, 2'b00};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:43:34  */
    assign n386_o = {4'b0000, level2};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:43:50  */
    assign n387_o = ps[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:43:43  */
    assign n388_o = n387_o ? n386_o : n390_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:43:75  */
    assign n390_o = {level2, 4'b0000};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:45:34  */
    assign n392_o = {8'b00000000, level3_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:45:56  */
    assign n393_o = ps_d1[3];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:45:46  */
    assign n394_o = n393_o ? n392_o : n396_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:45:84  */
    assign n396_o = {level3_d1, 8'b00000000};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:46:15  */
    assign n397_o = level4[20:7];
endmodule

(* USE_DSP48 = "yes" *) module fadd
    #(parameter
        ID=1
    )(input clk,
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
    wire[12:0] newx_d2;
    wire[12:0] newx_d3;
    wire[12:0] newy;
    wire[12:0] newy_d1;
    wire[4:0] expx;
    wire[4:0] expx_d1;
    wire[4:0] expx_d2;
    wire[4:0] expx_d3;
    wire[1:0] excx;
    wire[1:0] excy;
    wire[1:0] excy_d1;
    wire signx;
    wire signx_d1;
    wire signy;
    wire effsub;
    wire effsub_d1;
    wire effsub_d2;
    wire effsub_d3;
    wire effsub_d4;
    wire effsub_d5;
    wire effsub_d6;
    wire[5:0] sxsyexnxy;
    wire[5:0] sxsyexnxy_d1;
    wire[5:0] fracy;
    wire[1:0] excrt;
    wire[1:0] excrt_d1;
    wire[1:0] excrt_d2;
    wire[1:0] excrt_d3;
    wire[1:0] excrt_d4;
    wire[1:0] excrt_d5;
    wire signr;
    wire signr_d1;
    wire signr_d2;
    wire signr_d3;
    wire signr_d4;
    wire signr_d5;
    wire[5:0] expdiff;
    wire[5:0] expdiff_d1;
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
    wire[6:0] extendedexpinc_d2;
    wire[3:0] nzerosnew;
    wire[9:0] shiftedfrac;
    wire[6:0] updatedexp;
    wire eqdiffsign;
    wire eqdiffsign_d1;
    wire[12:0] expfrac;
    wire stk;
    wire rnd;
    wire grd;
    wire lsb;
    wire addtoroundbit;
    wire[12:0] roundedexpfrac;
    wire[1:0] upexc;
    wire[1:0] upexc_d1;
    wire[4:0] fracr;
    wire[4:0] fracr_d1;
    wire[4:0] expr;
    wire[4:0] expr_d1;
    wire[3:0] exexpexc;
    wire[1:0] excrt2;
    wire[1:0] excr;
    wire signr2;
    wire[12:0] computedr;
    reg[12:0] n39_q;
    reg[12:0] n40_q;
    reg[12:0] n41_q;
    reg[12:0] n42_q;
    reg[4:0] n43_q;
    reg[4:0] n44_q;
    reg[4:0] n45_q;
    reg[1:0] n46_q;
    reg n47_q;
    reg n48_q;
    reg n49_q;
    reg n50_q;
    reg n51_q;
    reg n52_q;
    reg n53_q;
    reg[5:0] n54_q;
    reg[1:0] n55_q;
    reg[1:0] n56_q;
    reg[1:0] n57_q;
    reg[1:0] n58_q;
    reg[1:0] n59_q;
    reg n60_q;
    reg n61_q;
    reg n62_q;
    reg n63_q;
    reg n64_q;
    reg[5:0] n65_q;
    reg[13:0] n66_q;
    reg[6:0] n67_q;
    reg[6:0] n68_q;
    reg n69_q;
    reg[1:0] n70_q;
    reg[4:0] n71_q;
    reg[4:0] n72_q;
    wire[1:0] n73_o;
    wire[9:0] n74_o;
    wire[11:0] n75_o;
    wire[1:0] n76_o;
    wire[9:0] n77_o;
    wire[11:0] n78_o;
    wire[4:0] n79_o;
    wire[5:0] n81_o;
    wire[4:0] n82_o;
    wire[5:0] n84_o;
    wire[5:0] n85_o;
    wire[4:0] n86_o;
    wire[5:0] n88_o;
    wire[4:0] n89_o;
    wire[5:0] n91_o;
    wire[5:0] n92_o;
    wire n94_o;
    wire n95_o;
    wire n97_o;
    wire[12:0] n98_o;
    wire n99_o;
    wire[12:0] n100_o;
    wire[4:0] n101_o;
    wire[1:0] n102_o;
    wire[1:0] n103_o;
    wire n104_o;
    wire n105_o;
    wire n106_o;
    wire[1:0] n107_o;
    wire[3:0] n108_o;
    wire[5:0] n109_o;
    wire n113_o;
    wire[5:0] n114_o;
    wire[4:0] n115_o;
    wire[5:0] n117_o;
    wire n120_o;
    wire n122_o;
    wire n123_o;
    wire n125_o;
    wire n126_o;
    wire n128_o;
    wire n129_o;
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
    wire n168_o;
    wire n170_o;
    wire n171_o;
    wire n173_o;
    wire n174_o;
    wire n176_o;
    wire n177_o;
    wire n179_o;
    wire n180_o;
    wire n182_o;
    wire n183_o;
    wire n185_o;
    wire n186_o;
    wire n188_o;
    wire n189_o;
    wire n191_o;
    wire n192_o;
    wire n194_o;
    wire n195_o;
    wire n197_o;
    wire n198_o;
    wire n200_o;
    wire n201_o;
    wire n203_o;
    wire n204_o;
    wire n206_o;
    wire n207_o;
    wire n209_o;
    wire n210_o;
    wire n212_o;
    wire n213_o;
    wire n215_o;
    wire n216_o;
    wire n218_o;
    wire n219_o;
    wire[2:0] n221_o;
    reg[1:0] n222_o;
    wire n225_o;
    wire n227_o;
    wire n228_o;
    wire n229_o;
    wire n230_o;
    wire[5:0] n231_o;
    wire n234_o;
    wire n235_o;
    wire[3:0] n237_o;
    wire n238_o;
    wire[3:0] n239_o;
    wire[13:0] rightshiftercomponent_n241;
    wire[13:0] rightshiftercomponent_r;
    wire[5:0] n245_o;
    wire n247_o;
    wire n248_o;
    wire[7:0] n250_o;
    wire[8:0] n252_o;
    wire[3:0] n253_o;
    wire[3:0] n254_o;
    wire[8:0] n255_o;
    wire[8:0] n256_o;
    wire[4:0] n257_o;
    wire[6:0] n259_o;
    wire[8:0] n261_o;
    wire n262_o;
    wire n263_o;
    wire[8:0] fracadder_n264;
    wire[8:0] fracadder_r;
    wire[9:0] n267_o;
    wire[6:0] n269_o;
    wire[6:0] n272_o;
    wire[3:0] lzc_component_n273;
    wire[9:0] lzc_component_n274;
    wire[3:0] lzc_component_count;
    wire[9:0] lzc_component_o;
    wire[6:0] n280_o;
    wire[6:0] n281_o;
    wire n284_o;
    wire n285_o;
    wire[5:0] n287_o;
    wire[12:0] n288_o;
    wire n289_o;
    wire n290_o;
    wire n291_o;
    wire n292_o;
    wire n293_o;
    wire n294_o;
    wire n296_o;
    wire n297_o;
    wire n298_o;
    wire n299_o;
    wire n300_o;
    wire n301_o;
    wire n302_o;
    localparam [12:0] n304_o = 13'b0000000000000;
    wire[12:0] roundingadder_n305;
    wire[12:0] roundingadder_r;
    wire[1:0] n308_o;
    wire[4:0] n309_o;
    wire[4:0] n310_o;
    wire[3:0] n311_o;
    wire n314_o;
    wire n316_o;
    wire n317_o;
    wire n319_o;
    wire n320_o;
    wire n322_o;
    wire n323_o;
    wire n325_o;
    wire n326_o;
    wire n328_o;
    wire n329_o;
    wire n332_o;
    wire n335_o;
    wire n337_o;
    wire n338_o;
    wire n340_o;
    wire n341_o;
    wire n343_o;
    wire n344_o;
    wire n346_o;
    wire n347_o;
    wire[2:0] n349_o;
    reg[1:0] n350_o;
    wire n352_o;
    wire n354_o;
    wire n355_o;
    wire n356_o;
    wire[1:0] n357_o;
    wire n359_o;
    wire n360_o;
    wire[2:0] n361_o;
    wire[7:0] n362_o;
    wire[12:0] n363_o;
    assign R = computedr;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:242:8  */
    assign excexpfracx = n75_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:243:8  */
    assign excexpfracy = n78_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:244:8  */
    assign exmey = n85_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:245:8  */
    assign eymex = n92_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:246:8  */
    assign swap = n95_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:247:8  */
    assign newx = n98_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:247:14  */
    assign newx_d1 = n39_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:247:23  */
    assign newx_d2 = n40_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:247:32  */
    assign newx_d3 = n41_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:248:8  */
    assign newy = n100_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:248:14  */
    assign newy_d1 = n42_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:249:8  */
    assign expx = n101_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:249:14  */
    assign expx_d1 = n43_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:249:23  */
    assign expx_d2 = n44_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:249:32  */
    assign expx_d3 = n45_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:250:8  */
    assign excx = n102_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:251:8  */
    assign excy = n103_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:251:14  */
    assign excy_d1 = n46_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:252:8  */
    assign signx = n104_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:252:15  */
    assign signx_d1 = n47_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:253:8  */
    assign signy = n105_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:254:8  */
    assign effsub = n106_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:254:16  */
    assign effsub_d1 = n48_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:254:27  */
    assign effsub_d2 = n49_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:254:38  */
    assign effsub_d3 = n50_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:254:49  */
    assign effsub_d4 = n51_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:254:60  */
    assign effsub_d5 = n52_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:254:71  */
    assign effsub_d6 = n53_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:255:8  */
    assign sxsyexnxy = n109_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:255:19  */
    assign sxsyexnxy_d1 = n54_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:257:8  */
    assign fracy = n114_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:258:8  */
    assign excrt = n222_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:258:15  */
    assign excrt_d1 = n55_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:258:25  */
    assign excrt_d2 = n56_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:258:35  */
    assign excrt_d3 = n57_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:258:45  */
    assign excrt_d4 = n58_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:258:55  */
    assign excrt_d5 = n59_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:259:8  */
    assign signr = n229_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:259:15  */
    assign signr_d1 = n60_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:259:25  */
    assign signr_d2 = n61_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:259:35  */
    assign signr_d3 = n62_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:259:45  */
    assign signr_d4 = n63_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:259:55  */
    assign signr_d5 = n64_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:260:8  */
    assign expdiff = n231_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:260:17  */
    assign expdiff_d1 = n65_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:261:8  */
    assign shiftedout = n235_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:262:8  */
    assign shiftval = n239_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:263:8  */
    assign shiftedfracy = rightshiftercomponent_n241; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:263:22  */
    assign shiftedfracy_d1 = n66_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:264:8  */
    assign sticky = n248_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:265:8  */
    assign fracyfar = n252_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:266:8  */
    assign effsubvector = n255_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:267:8  */
    assign fracyfarxorop = n256_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:268:8  */
    assign fracxfar = n261_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:269:8  */
    assign cinaddfar = n263_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:270:8  */
    assign fracaddresult = fracadder_n264; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:271:8  */
    assign fracgrs = n267_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:272:8  */
    assign extendedexpinc = n272_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:272:24  */
    assign extendedexpinc_d1 = n67_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:272:43  */
    assign extendedexpinc_d2 = n68_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:273:8  */
    assign nzerosnew = lzc_component_n273; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:274:8  */
    assign shiftedfrac = lzc_component_n274; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:275:8  */
    assign updatedexp = n281_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:276:8  */
    assign eqdiffsign = n285_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:276:20  */
    assign eqdiffsign_d1 = n69_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:277:8  */
    assign expfrac = n288_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:278:8  */
    assign stk = n291_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:279:8  */
    assign rnd = n292_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:280:8  */
    assign grd = n293_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:281:8  */
    assign lsb = n294_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:282:8  */
    assign addtoroundbit = n302_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:283:8  */
    assign roundedexpfrac = roundingadder_n305; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:284:8  */
    assign upexc = n308_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:284:15  */
    assign upexc_d1 = n70_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:285:8  */
    assign fracr = n309_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:285:15  */
    assign fracr_d1 = n71_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:286:8  */
    assign expr = n310_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:286:14  */
    assign expr_d1 = n72_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:287:8  */
    assign exexpexc = n311_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:288:8  */
    assign excrt2 = n350_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:289:8  */
    assign excr = n357_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:290:8  */
    assign signr2 = n360_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:291:8  */
    assign computedr = n363_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:295:10  */
    always @(posedge clk)
        n39_q <= newx;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:295:10  */
    always @(posedge clk)
        n40_q <= newx_d1;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:295:10  */
    always @(posedge clk)
        n41_q <= newx_d2;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:295:10  */
    always @(posedge clk)
        n42_q <= newy;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:295:10  */
    always @(posedge clk)
        n43_q <= expx;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:295:10  */
    always @(posedge clk)
        n44_q <= expx_d1;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:295:10  */
    always @(posedge clk)
        n45_q <= expx_d2;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:295:10  */
    always @(posedge clk)
        n46_q <= excy;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:295:10  */
    always @(posedge clk)
        n47_q <= signx;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:295:10  */
    always @(posedge clk)
        n48_q <= effsub;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:295:10  */
    always @(posedge clk)
        n49_q <= effsub_d1;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:295:10  */
    always @(posedge clk)
        n50_q <= effsub_d2;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:295:10  */
    always @(posedge clk)
        n51_q <= effsub_d3;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:295:10  */
    always @(posedge clk)
        n52_q <= effsub_d4;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:295:10  */
    always @(posedge clk)
        n53_q <= effsub_d5;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:295:10  */
    always @(posedge clk)
        n54_q <= sxsyexnxy;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:295:10  */
    always @(posedge clk)
        n55_q <= excrt;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:295:10  */
    always @(posedge clk)
        n56_q <= excrt_d1;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:295:10  */
    always @(posedge clk)
        n57_q <= excrt_d2;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:295:10  */
    always @(posedge clk)
        n58_q <= excrt_d3;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:295:10  */
    always @(posedge clk)
        n59_q <= excrt_d4;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:295:10  */
    always @(posedge clk)
        n60_q <= signr;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:295:10  */
    always @(posedge clk)
        n61_q <= signr_d1;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:295:10  */
    always @(posedge clk)
        n62_q <= signr_d2;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:295:10  */
    always @(posedge clk)
        n63_q <= signr_d3;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:295:10  */
    always @(posedge clk)
        n64_q <= signr_d4;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:295:10  */
    always @(posedge clk)
        n65_q <= expdiff;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:295:10  */
    always @(posedge clk)
        n66_q <= shiftedfracy;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:295:10  */
    always @(posedge clk)
        n67_q <= extendedexpinc;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:295:10  */
    always @(posedge clk)
        n68_q <= extendedexpinc_d1;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:295:10  */
    always @(posedge clk)
        n69_q <= eqdiffsign;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:295:10  */
    always @(posedge clk)
        n70_q <= upexc;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:295:10  */
    always @(posedge clk)
        n71_q <= fracr;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:295:10  */
    always @(posedge clk)
        n72_q <= expr;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:333:20  */
    assign n73_o = X[12:11];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:333:38  */
    assign n74_o = X[9:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:333:35  */
    assign n75_o = {n73_o, n74_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:334:20  */
    assign n76_o = Y[12:11];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:334:38  */
    assign n77_o = Y[9:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:334:35  */
    assign n78_o = {n76_o, n77_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:335:21  */
    assign n79_o = X[9:5];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:335:18  */
    assign n81_o = {1'b0, n79_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:335:45  */
    assign n82_o = Y[9:5];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:335:42  */
    assign n84_o = {1'b0, n82_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:335:35  */
    assign n85_o = n81_o-n84_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:336:21  */
    assign n86_o = Y[9:5];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:336:18  */
    assign n88_o = {1'b0, n86_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:336:45  */
    assign n89_o = X[9:5];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:336:42  */
    assign n91_o = {1'b0, n89_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:336:35  */
    assign n92_o = n88_o-n91_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:337:33  */
    assign n94_o = $unsigned(excexpfracx) >= $unsigned(excexpfracy);
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:337:16  */
    assign n95_o = n94_o ? 1'b0 : 1'b1;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:338:24  */
    assign n97_o = ~swap;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:338:14  */
    assign n98_o = n97_o ? X : Y;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:339:24  */
    assign n99_o = ~swap;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:339:14  */
    assign n100_o = n99_o ? Y : X;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:340:15  */
    assign n101_o = newx[9:5];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:341:15  */
    assign n102_o = newx[12:11];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:342:15  */
    assign n103_o = newy[12:11];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:343:16  */
    assign n104_o = newx[10];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:344:16  */
    assign n105_o = newy[10];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:345:20  */
    assign n106_o = signx ^ signy;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:346:23  */
    assign n107_o = {signx, signy};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:346:31  */
    assign n108_o = {n107_o, excx};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:346:38  */
    assign n109_o = {n108_o, excy};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:349:34  */
    assign n113_o = excy_d1 == 2'b00;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:349:22  */
    assign n114_o = n113_o ? 6'b000000 : n117_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:349:59  */
    assign n115_o = newy_d1[4:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:349:50  */
    assign n117_o = {1'b1, n115_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:351:18  */
    assign n120_o = sxsyexnxy_d1 == 6'b000000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:351:31  */
    assign n122_o = sxsyexnxy_d1 == 6'b010000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:351:31  */
    assign n123_o = n120_o | n122_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:351:40  */
    assign n125_o = sxsyexnxy_d1 == 6'b100000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:351:40  */
    assign n126_o = n123_o | n125_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:351:49  */
    assign n128_o = sxsyexnxy_d1 == 6'b110000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:351:49  */
    assign n129_o = n126_o | n128_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:352:12  */
    assign n132_o = sxsyexnxy_d1 == 6'b000101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:352:25  */
    assign n134_o = sxsyexnxy_d1 == 6'b010101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:352:25  */
    assign n135_o = n132_o | n134_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:352:34  */
    assign n137_o = sxsyexnxy_d1 == 6'b100101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:352:34  */
    assign n138_o = n135_o | n137_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:352:43  */
    assign n140_o = sxsyexnxy_d1 == 6'b110101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:352:43  */
    assign n141_o = n138_o | n140_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:352:52  */
    assign n143_o = sxsyexnxy_d1 == 6'b000100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:352:52  */
    assign n144_o = n141_o | n143_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:352:61  */
    assign n146_o = sxsyexnxy_d1 == 6'b010100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:352:61  */
    assign n147_o = n144_o | n146_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:352:70  */
    assign n149_o = sxsyexnxy_d1 == 6'b100100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:352:70  */
    assign n150_o = n147_o | n149_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:352:79  */
    assign n152_o = sxsyexnxy_d1 == 6'b110100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:352:79  */
    assign n153_o = n150_o | n152_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:352:88  */
    assign n155_o = sxsyexnxy_d1 == 6'b000001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:352:88  */
    assign n156_o = n153_o | n155_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:352:97  */
    assign n158_o = sxsyexnxy_d1 == 6'b010001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:352:97  */
    assign n159_o = n156_o | n158_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:352:106  */
    assign n161_o = sxsyexnxy_d1 == 6'b100001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:352:106  */
    assign n162_o = n159_o | n161_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:352:115  */
    assign n164_o = sxsyexnxy_d1 == 6'b110001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:352:115  */
    assign n165_o = n162_o | n164_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:353:12  */
    assign n168_o = sxsyexnxy_d1 == 6'b111010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:353:25  */
    assign n170_o = sxsyexnxy_d1 == 6'b001010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:353:25  */
    assign n171_o = n168_o | n170_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:353:34  */
    assign n173_o = sxsyexnxy_d1 == 6'b001000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:353:34  */
    assign n174_o = n171_o | n173_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:353:43  */
    assign n176_o = sxsyexnxy_d1 == 6'b011000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:353:43  */
    assign n177_o = n174_o | n176_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:353:52  */
    assign n179_o = sxsyexnxy_d1 == 6'b101000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:353:52  */
    assign n180_o = n177_o | n179_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:353:61  */
    assign n182_o = sxsyexnxy_d1 == 6'b111000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:353:61  */
    assign n183_o = n180_o | n182_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:353:70  */
    assign n185_o = sxsyexnxy_d1 == 6'b000010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:353:70  */
    assign n186_o = n183_o | n185_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:353:79  */
    assign n188_o = sxsyexnxy_d1 == 6'b010010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:353:79  */
    assign n189_o = n186_o | n188_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:353:88  */
    assign n191_o = sxsyexnxy_d1 == 6'b100010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:353:88  */
    assign n192_o = n189_o | n191_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:353:97  */
    assign n194_o = sxsyexnxy_d1 == 6'b110010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:353:97  */
    assign n195_o = n192_o | n194_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:353:106  */
    assign n197_o = sxsyexnxy_d1 == 6'b001001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:353:106  */
    assign n198_o = n195_o | n197_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:353:115  */
    assign n200_o = sxsyexnxy_d1 == 6'b011001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:353:115  */
    assign n201_o = n198_o | n200_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:353:124  */
    assign n203_o = sxsyexnxy_d1 == 6'b101001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:353:124  */
    assign n204_o = n201_o | n203_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:353:133  */
    assign n206_o = sxsyexnxy_d1 == 6'b111001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:353:133  */
    assign n207_o = n204_o | n206_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:353:142  */
    assign n209_o = sxsyexnxy_d1 == 6'b000110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:353:142  */
    assign n210_o = n207_o | n209_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:353:151  */
    assign n212_o = sxsyexnxy_d1 == 6'b010110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:353:151  */
    assign n213_o = n210_o | n212_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:353:160  */
    assign n215_o = sxsyexnxy_d1 == 6'b100110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:353:160  */
    assign n216_o = n213_o | n215_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:353:169  */
    assign n218_o = sxsyexnxy_d1 == 6'b110110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:353:169  */
    assign n219_o = n216_o | n218_o;
    assign n221_o = {n219_o, n165_o, n129_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:350:4  */
    always @*
        case (n221_o)
            3'b100: n222_o <= 2'b10;
            3'b010: n222_o <= 2'b01;
            3'b001: n222_o <= 2'b00;
            default: n222_o <= 2'b11;
        endcase
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:355:34  */
    assign n225_o = sxsyexnxy_d1 == 6'b100000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:355:59  */
    assign n227_o = sxsyexnxy_d1 == 6'b010000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:355:44  */
    assign n228_o = n225_o | n227_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:355:16  */
    assign n229_o = n228_o ? 1'b0 : signx_d1;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:357:31  */
    assign n230_o = ~swap;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:357:21  */
    assign n231_o = n230_o ? exmey : eymex;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:359:39  */
    assign n234_o = $unsigned(expdiff_d1) > $unsigned(6'b000111);
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:359:22  */
    assign n235_o = n234_o ? 1'b1 : 1'b0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:360:26  */
    assign n237_o = expdiff_d1[3:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:360:54  */
    assign n238_o = ~shiftedout;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:360:39  */
    assign n239_o = n238_o ? n237_o : 4'b1000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:364:23  */
    assign rightshiftercomponent_n241 = rightshiftercomponent_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:361:4  */
    rightshifter_6_by_max_8_f600_uid4 rightshiftercomponent(
        .clk(clk),
        .rst(rst),
        .x(fracy),
        .s(shiftval),
        .r(rightshiftercomponent_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:369:39  */
    assign n245_o = shiftedfracy_d1[5:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:369:51  */
    assign n247_o = n245_o == 6'b000000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:369:18  */
    assign n248_o = n247_o ? 1'b0 : 1'b1;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:372:37  */
    assign n250_o = shiftedfracy_d1[13:6];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:372:20  */
    assign n252_o = {1'b0, n250_o};
    assign n253_o = {effsub_d3, effsub_d3, effsub_d3, effsub_d3};
    assign n254_o = {effsub_d3, effsub_d3, effsub_d3, effsub_d3};
    assign n255_o = {n253_o, n254_o, effsub_d3};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:374:30  */
    assign n256_o = fracyfar ^ effsubvector;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:375:31  */
    assign n257_o = newx_d3[4:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:375:21  */
    assign n259_o = {2'b01, n257_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:375:45  */
    assign n261_o = {n259_o, 2'b00};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:376:31  */
    assign n262_o = ~sticky;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:376:27  */
    assign n263_o = effsub_d3 & n262_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:381:23  */
    assign fracadder_n264 = fracadder_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:377:4  */
    intadder_9_f600_uid8 fracadder(
        .clk(clk),
        .rst(rst),
        .x(fracxfar),
        .y(fracyfarxorop),
        .cin(cinaddfar),
        .r(fracadder_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:384:28  */
    assign n267_o = {fracaddresult, sticky};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:385:27  */
    assign n269_o = {2'b00, expx_d3};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:385:38  */
    assign n272_o = n269_o+7'b0000001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:389:27  */
    assign lzc_component_n273 = lzc_component_count; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:391:23  */
    assign lzc_component_n274 = lzc_component_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:386:4  */
    lzcshifter_10_to_10_counting_16_f600_uid16 lzc_component(
        .clk(clk),
        .rst(rst),
        .i(fracgrs),
        .count(lzc_component_count),
        .o(lzc_component_o));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:393:45  */
    assign n280_o = {3'b000, nzerosnew};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:393:36  */
    assign n281_o = extendedexpinc_d2-n280_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:394:36  */
    assign n284_o = nzerosnew == 4'b1111;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:394:22  */
    assign n285_o = n284_o ? 1'b1 : 1'b0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:395:38  */
    assign n287_o = shiftedfrac[8:3];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:395:25  */
    assign n288_o = {updatedexp, n287_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:397:21  */
    assign n289_o = shiftedfrac[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:397:39  */
    assign n290_o = shiftedfrac[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:397:25  */
    assign n291_o = n289_o | n290_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:398:21  */
    assign n292_o = shiftedfrac[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:399:21  */
    assign n293_o = shiftedfrac[3];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:400:21  */
    assign n294_o = shiftedfrac[4];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:401:33  */
    assign n296_o = ~lsb;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:401:38  */
    assign n297_o = n296_o & grd;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:401:57  */
    assign n298_o = ~rnd;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:401:50  */
    assign n299_o = n297_o & n298_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:401:69  */
    assign n300_o = ~stk;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:401:62  */
    assign n301_o = n299_o & n300_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:401:24  */
    assign n302_o = n301_o ? 1'b0 : 1'b1;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:406:23  */
    assign roundingadder_n305 = roundingadder_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:402:4  */
    intadder_13_f600_uid20 roundingadder(
        .clk(clk),
        .rst(rst),
        .x(expfrac),
        .y(n304_o),
        .cin(addtoroundbit),
        .r(roundingadder_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:410:27  */
    assign n308_o = roundedexpfrac[12:11];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:411:27  */
    assign n309_o = roundedexpfrac[5:1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:412:26  */
    assign n310_o = roundedexpfrac[10:6];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:414:25  */
    assign n311_o = {upexc_d1, excrt_d5};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:416:18  */
    assign n314_o = exexpexc == 4'b0000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:416:29  */
    assign n316_o = exexpexc == 4'b0100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:416:29  */
    assign n317_o = n314_o | n316_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:416:36  */
    assign n319_o = exexpexc == 4'b1000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:416:36  */
    assign n320_o = n317_o | n319_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:416:43  */
    assign n322_o = exexpexc == 4'b1100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:416:43  */
    assign n323_o = n320_o | n322_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:416:50  */
    assign n325_o = exexpexc == 4'b1001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:416:50  */
    assign n326_o = n323_o | n325_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:416:57  */
    assign n328_o = exexpexc == 4'b1101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:416:57  */
    assign n329_o = n326_o | n328_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:417:12  */
    assign n332_o = exexpexc == 4'b0001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:418:12  */
    assign n335_o = exexpexc == 4'b0010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:418:23  */
    assign n337_o = exexpexc == 4'b0110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:418:23  */
    assign n338_o = n335_o | n337_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:418:30  */
    assign n340_o = exexpexc == 4'b1010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:418:30  */
    assign n341_o = n338_o | n340_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:418:37  */
    assign n343_o = exexpexc == 4'b1110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:418:37  */
    assign n344_o = n341_o | n343_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:418:44  */
    assign n346_o = exexpexc == 4'b0101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:418:44  */
    assign n347_o = n344_o | n346_o;
    assign n349_o = {n347_o, n332_o, n329_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:415:4  */
    always @*
        case (n349_o)
            3'b100: n350_o <= 2'b10;
            3'b010: n350_o <= 2'b01;
            3'b001: n350_o <= 2'b00;
            default: n350_o <= 2'b11;
        endcase
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:420:41  */
    assign n352_o = eqdiffsign_d1 & effsub_d6;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:420:75  */
    assign n354_o = excrt_d5 == 2'b11;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:420:63  */
    assign n355_o = ~n354_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:420:59  */
    assign n356_o = n352_o & n355_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:420:17  */
    assign n357_o = n356_o ? 2'b00 : excrt2;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:421:42  */
    assign n359_o = eqdiffsign_d1 & effsub_d6;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:421:18  */
    assign n360_o = n359_o ? 1'b0 : signr_d5;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:422:22  */
    assign n361_o = {excr, signr2};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:422:31  */
    assign n362_o = {n361_o, expr_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:422:41  */
    assign n363_o = {n362_o, fracr_d1};
endmodule

