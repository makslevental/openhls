module intadder_16_f300_uid133
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
    wire[16:0] y_1_d2;
    wire[16:0] y_1_d3;
    wire[16:0] s_1;
    wire[15:0] r_1;
    wire[16:0] n497_o;
    wire[16:0] n499_o;
    wire[16:0] n500_o;
    wire[16:0] n501_o;
    wire[16:0] n502_o;
    wire[15:0] n503_o;
    reg n504_q;
    reg[16:0] n505_q;
    reg[16:0] n506_q;
    reg[16:0] n507_q;
    reg[16:0] n508_q;
    assign r = r_1;
    assign cin_1 = cin; // (signal)
    assign cin_1_d1 = n504_q; // (signal)
    assign x_1 = n497_o; // (signal)
    assign x_1_d1 = n505_q; // (signal)
    assign y_1 = n499_o; // (signal)
    assign y_1_d1 = n506_q; // (signal)
    assign y_1_d2 = n507_q; // (signal)
    assign y_1_d3 = n508_q; // (signal)
    assign s_1 = n502_o; // (signal)
    assign r_1 = n503_o; // (signal)
    assign n497_o = {1'b0, x};
    assign n499_o = {1'b0, y};
    assign n500_o = x_1_d1+y_1_d3;
    assign n501_o = {16'b0, cin_1_d1};  //  uext
    assign n502_o = n500_o+n501_o;
    assign n503_o = s_1[15:0];
    always @(posedge clk)
        n504_q <= cin_1;
    always @(posedge clk)
        n505_q <= x_1;
    always @(posedge clk)
        n506_q <= y_1;
    always @(posedge clk)
        n507_q <= y_1_d1;
    always @(posedge clk)
        n508_q <= y_1_d2;
endmodule

module intadder_11_f300_uid10
    (input wire clk,
        input wire[10:0] x,
        input wire[10:0] y,
        input wire cin,
        output wire[10:0] r);
    wire[10:0] rtmp;
    wire[10:0] x_d1;
    wire[10:0] x_d2;
    wire[10:0] y_d1;
    wire[10:0] y_d2;
    wire[10:0] n479_o;
    wire[10:0] n480_o;
    wire[10:0] n481_o;
    reg[10:0] n482_q;
    reg[10:0] n483_q;
    reg[10:0] n484_q;
    reg[10:0] n485_q;
    assign r = rtmp;
    assign rtmp = n481_o; // (signal)
    assign x_d1 = n482_q; // (signal)
    assign x_d2 = n483_q; // (signal)
    assign y_d1 = n484_q; // (signal)
    assign y_d2 = n485_q; // (signal)
    assign n479_o = x_d2+y_d2;
    assign n480_o = {10'b0, cin};  //  uext
    assign n481_o = n479_o+n480_o;
    always @(posedge clk)
        n482_q <= x;
    always @(posedge clk)
        n483_q <= x_d1;
    always @(posedge clk)
        n484_q <= y;
    always @(posedge clk)
        n485_q <= y_d1;
endmodule

module rightshiftersticky8_by_max_10_f300_uid8
    (input wire clk,
        input wire[7:0] x,
        input wire[3:0] s,
        output wire[9:0] r,
        output wire sticky);
    wire[3:0] ps;
    wire[3:0] ps_d1;
    wire[3:0] ps_d2;
    wire[9:0] xpadded;
    wire[9:0] level4;
    wire[9:0] level4_d1;
    wire stk3;
    wire[9:0] level3;
    wire[9:0] level3_d1;
    wire stk2;
    wire stk2_d1;
    wire[9:0] level2;
    wire[9:0] level2_d1;
    wire[9:0] level2_d2;
    wire stk1;
    wire[9:0] level1;
    wire[9:0] level1_d1;
    wire[9:0] level1_d2;
    wire stk0;
    wire[9:0] level0;
    wire[9:0] n401_o;
    wire[7:0] n403_o;
    wire n405_o;
    wire n406_o;
    wire n407_o;
    wire n408_o;
    wire n410_o;
    wire n411_o;
    wire[9:0] n412_o;
    wire[1:0] n413_o;
    wire[9:0] n415_o;
    wire[3:0] n417_o;
    wire n419_o;
    wire n420_o;
    wire n421_o;
    wire n422_o;
    wire n423_o;
    wire n425_o;
    wire n426_o;
    wire[9:0] n427_o;
    wire[5:0] n428_o;
    wire[9:0] n430_o;
    wire[1:0] n432_o;
    wire n434_o;
    wire n435_o;
    wire n436_o;
    wire n437_o;
    wire n438_o;
    wire n440_o;
    wire n441_o;
    wire[9:0] n442_o;
    wire[7:0] n443_o;
    wire[9:0] n445_o;
    wire n447_o;
    wire n449_o;
    wire n450_o;
    wire n451_o;
    wire n452_o;
    wire n453_o;
    wire n455_o;
    wire n456_o;
    wire[9:0] n457_o;
    wire[8:0] n458_o;
    wire[9:0] n460_o;
    reg[3:0] n461_q;
    reg[3:0] n462_q;
    reg[9:0] n463_q;
    reg[9:0] n464_q;
    reg n465_q;
    reg[9:0] n466_q;
    reg[9:0] n467_q;
    reg[9:0] n468_q;
    reg[9:0] n469_q;
    assign r = level0;
    assign sticky = stk0;
    assign ps = s; // (signal)
    assign ps_d1 = n461_q; // (signal)
    assign ps_d2 = n462_q; // (signal)
    assign xpadded = n401_o; // (signal)
    assign level4 = xpadded; // (signal)
    assign level4_d1 = n463_q; // (signal)
    assign stk3 = n408_o; // (signal)
    assign level3 = n412_o; // (signal)
    assign level3_d1 = n464_q; // (signal)
    assign stk2 = n423_o; // (signal)
    assign stk2_d1 = n465_q; // (signal)
    assign level2 = n427_o; // (signal)
    assign level2_d1 = n466_q; // (signal)
    assign level2_d2 = n467_q; // (signal)
    assign stk1 = n438_o; // (signal)
    assign level1 = n442_o; // (signal)
    assign level1_d1 = n468_q; // (signal)
    assign level1_d2 = n469_q; // (signal)
    assign stk0 = n453_o; // (signal)
    assign level0 = n457_o; // (signal)
    assign n401_o = {x, 2'b00};
    assign n403_o = level4_d1[7:0];
    assign n405_o = n403_o != 8'b00000000;
    assign n406_o = ps_d1[3];
    assign n407_o = n405_o & n406_o;
    assign n408_o = n407_o ? 1'b1 : 1'b0;
    assign n410_o = ps[3];
    assign n411_o = ~n410_o;
    assign n412_o = n411_o ? level4 : n415_o;
    assign n413_o = level4[9:8];
    assign n415_o = {8'b00000000, n413_o};
    assign n417_o = level3_d1[3:0];
    assign n419_o = n417_o != 4'b0000;
    assign n420_o = ps_d1[2];
    assign n421_o = n419_o & n420_o;
    assign n422_o = n421_o | stk3;
    assign n423_o = n422_o ? 1'b1 : 1'b0;
    assign n425_o = ps[2];
    assign n426_o = ~n425_o;
    assign n427_o = n426_o ? level3 : n430_o;
    assign n428_o = level3[9:4];
    assign n430_o = {4'b0000, n428_o};
    assign n432_o = level2_d2[1:0];
    assign n434_o = n432_o != 2'b00;
    assign n435_o = ps_d2[1];
    assign n436_o = n434_o & n435_o;
    assign n437_o = n436_o | stk2_d1;
    assign n438_o = n437_o ? 1'b1 : 1'b0;
    assign n440_o = ps[1];
    assign n441_o = ~n440_o;
    assign n442_o = n441_o ? level2 : n445_o;
    assign n443_o = level2[9:2];
    assign n445_o = {2'b00, n443_o};
    assign n447_o = level1_d2[0];
    assign n449_o = n447_o != 1'b0;
    assign n450_o = ps_d2[0];
    assign n451_o = n449_o & n450_o;
    assign n452_o = n451_o | stk1;
    assign n453_o = n452_o ? 1'b1 : 1'b0;
    assign n455_o = ps[0];
    assign n456_o = ~n455_o;
    assign n457_o = n456_o ? level1 : n460_o;
    assign n458_o = level1[9:1];
    assign n460_o = {1'b0, n458_o};
    always @(posedge clk)
        n461_q <= ps;
    always @(posedge clk)
        n462_q <= ps_d1;
    always @(posedge clk)
        n463_q <= level4;
    always @(posedge clk)
        n464_q <= level3;
    always @(posedge clk)
        n465_q <= stk2;
    always @(posedge clk)
        n466_q <= level2;
    always @(posedge clk)
        n467_q <= level2_d1;
    always @(posedge clk)
        n468_q <= level1;
    always @(posedge clk)
        n469_q <= level1_d1;
endmodule

module normalizer_z_9_9_9_f300_uid6
    (input wire clk,
        input wire[8:0] x,
        output wire[3:0] count,
        output wire[8:0] r);
    wire[8:0] level4;
    wire[8:0] level4_d1;
    wire count3;
    wire count3_d1;
    wire[8:0] level3;
    wire count2;
    wire count2_d1;
    wire[8:0] level2;
    wire[8:0] level2_d1;
    wire count1;
    wire count1_d1;
    wire[8:0] level1;
    wire count0;
    wire[8:0] level0;
    wire[3:0] scount;
    wire[7:0] n334_o;
    wire n336_o;
    wire n337_o;
    wire n339_o;
    wire[8:0] n340_o;
    wire n341_o;
    wire[8:0] n343_o;
    wire[3:0] n345_o;
    wire n347_o;
    wire n348_o;
    wire n350_o;
    wire[8:0] n351_o;
    wire[4:0] n352_o;
    wire[8:0] n354_o;
    wire[1:0] n356_o;
    wire n358_o;
    wire n359_o;
    wire n361_o;
    wire[8:0] n362_o;
    wire[6:0] n363_o;
    wire[8:0] n365_o;
    wire n367_o;
    wire n369_o;
    wire n370_o;
    wire n372_o;
    wire[8:0] n373_o;
    wire[7:0] n374_o;
    wire[8:0] n376_o;
    wire[1:0] n377_o;
    wire[2:0] n378_o;
    wire[3:0] n379_o;
    reg[8:0] n380_q;
    reg n381_q;
    reg n382_q;
    reg[8:0] n383_q;
    reg n384_q;
    assign count = scount;
    assign r = level0;
    assign level4 = x; // (signal)
    assign level4_d1 = n380_q; // (signal)
    assign count3 = n337_o; // (signal)
    assign count3_d1 = n381_q; // (signal)
    assign level3 = n340_o; // (signal)
    assign count2 = n348_o; // (signal)
    assign count2_d1 = n382_q; // (signal)
    assign level2 = n351_o; // (signal)
    assign level2_d1 = n383_q; // (signal)
    assign count1 = n359_o; // (signal)
    assign count1_d1 = n384_q; // (signal)
    assign level1 = n362_o; // (signal)
    assign count0 = n370_o; // (signal)
    assign level0 = n373_o; // (signal)
    assign scount = n379_o; // (signal)
    assign n334_o = level4_d1[8:1];
    assign n336_o = n334_o == 8'b00000000;
    assign n337_o = n336_o ? 1'b1 : 1'b0;
    assign n339_o = ~count3;
    assign n340_o = n339_o ? level4_d1 : n343_o;
    assign n341_o = level4_d1[0];
    assign n343_o = {n341_o, 8'b00000000};
    assign n345_o = level3[8:5];
    assign n347_o = n345_o == 4'b0000;
    assign n348_o = n347_o ? 1'b1 : 1'b0;
    assign n350_o = ~count2;
    assign n351_o = n350_o ? level3 : n354_o;
    assign n352_o = level3[4:0];
    assign n354_o = {n352_o, 4'b0000};
    assign n356_o = level2[8:7];
    assign n358_o = n356_o == 2'b00;
    assign n359_o = n358_o ? 1'b1 : 1'b0;
    assign n361_o = ~count1_d1;
    assign n362_o = n361_o ? level2_d1 : n365_o;
    assign n363_o = level2_d1[6:0];
    assign n365_o = {n363_o, 2'b00};
    assign n367_o = level1[8];
    assign n369_o = n367_o == 1'b0;
    assign n370_o = n369_o ? 1'b1 : 1'b0;
    assign n372_o = ~count0;
    assign n373_o = n372_o ? level1 : n376_o;
    assign n374_o = level1[7:0];
    assign n376_o = {n374_o, 1'b0};
    assign n377_o = {count3_d1, count2_d1};
    assign n378_o = {n377_o, count1_d1};
    assign n379_o = {n378_o, count0};
    always @(posedge clk)
        n380_q <= level4;
    always @(posedge clk)
        n381_q <= count3;
    always @(posedge clk)
        n382_q <= count2;
    always @(posedge clk)
        n383_q <= level2;
    always @(posedge clk)
        n384_q <= count1;
endmodule

module intdualsub_10_f300_uid4
    (input wire clk,
        input wire[9:0] x,
        input wire[9:0] y,
        output wire[9:0] xmy,
        output wire[9:0] ymx);
    wire[9:0] temprxmy;
    wire[9:0] temprymx;
    wire[9:0] n312_o;
    wire[9:0] n313_o;
    wire[9:0] n316_o;
    wire[9:0] n317_o;
    wire[9:0] n318_o;
    wire[9:0] n321_o;
    assign xmy = temprxmy;
    assign ymx = temprymx;
    assign temprxmy = n316_o; // (signal)
    assign temprymx = n321_o; // (signal)
    assign n312_o = ~y;
    assign n313_o = x+n312_o;
    assign n316_o = n313_o+10'b0000000001;
    assign n317_o = ~x;
    assign n318_o = y+n317_o;
    assign n321_o = n318_o+10'b0000000001;
endmodule

module fadd#(parameter ID=1)
    (input wire clk,
        input wire[16:0] X,
        input wire[16:0] Y,
        output wire[16:0] R);
    wire[16:0] inx;
    wire[16:0] iny;
    wire exceptionxsuperiory;
    wire exceptionxequaly;
    wire[7:0] signedexponentx;
    wire[7:0] signedexponenty;
    wire[7:0] exponentdifferencexy;
    wire[6:0] exponentdifferenceyx;
    wire swap;
    wire[16:0] newx;
    wire[16:0] newx_d1;
    wire[16:0] newx_d2;
    wire[16:0] newy;
    wire[6:0] exponentdifference;
    wire shiftedout;
    wire[3:0] shiftval;
    wire effsub;
    wire effsub_d1;
    wire effsub_d2;
    wire selectclosepath;
    wire selectclosepath_d1;
    wire selectclosepath_d2;
    wire[3:0] sdexnxy;
    wire pipesigny;
    wire[9:0] fracxclose1;
    wire[9:0] fracyclose1;
    wire[9:0] fracrclosexmy;
    wire[9:0] fracrcloseymx;
    wire fracsignclose;
    wire[8:0] fracrclose1;
    wire ressign;
    wire[3:0] nzerosnew;
    wire[8:0] shiftedfrac;
    wire roundclose0;
    wire resultcloseiszero0;
    wire[8:0] exponentresultclose;
    wire[15:0] resultbeforeroundclose;
    wire roundclose;
    wire resultcloseiszero;
    wire[7:0] fracnewy;
    wire[9:0] shiftedfracy;
    wire sticky;
    wire[10:0] fracyfar;
    wire[10:0] effsubvector;
    wire[10:0] fracyfarxorop;
    wire[10:0] fracxfar;
    wire cinaddfar;
    wire[10:0] fracresultfar0;
    wire[10:0] fracresultfarnormstage;
    wire[1:0] fracleadingbits;
    wire[6:0] fracresultfar1;
    wire fracresultroundbit;
    wire fracresultstickybit;
    wire roundfar1;
    wire[1:0] expoperationsel;
    wire[8:0] exponentupdate;
    wire[8:0] exponentresultfar0;
    wire[8:0] exponentresultfar0_d1;
    wire[8:0] exponentresultfar0_d2;
    wire[8:0] exponentresultfar1;
    wire[15:0] resultbeforeroundfar;
    wire roundfar;
    wire[15:0] resultbeforeround;
    wire round;
    wire zerofromclose;
    wire zerofromclose_d1;
    wire[15:0] resultrounded;
    wire synceffsub;
    wire synceffsub_d1;
    wire synceffsub_d2;
    wire synceffsub_d3;
    wire[16:0] syncx;
    wire[16:0] syncx_d1;
    wire[16:0] syncx_d2;
    wire[16:0] syncx_d3;
    wire syncsigny;
    wire syncsigny_d1;
    wire syncsigny_d2;
    wire syncsigny_d3;
    wire syncressign;
    wire syncressign_d1;
    wire syncressign_d2;
    wire syncressign_d3;
    wire[1:0] underflowoverflow;
    wire[16:0] resultnoexn;
    wire[3:0] syncexnxy;
    wire[3:0] syncexnxy_d1;
    wire[3:0] syncexnxy_d2;
    wire[3:0] syncexnxy_d3;
    wire[1:0] exnr;
    wire sgnr;
    wire[13:0] expsigr;
    wire[1:0] n30_o;
    wire[1:0] n31_o;
    wire n32_o;
    wire n33_o;
    wire[1:0] n36_o;
    wire[1:0] n37_o;
    wire n38_o;
    wire n39_o;
    wire[6:0] n41_o;
    wire[7:0] n43_o;
    wire[6:0] n44_o;
    wire[7:0] n46_o;
    wire[7:0] n47_o;
    wire[6:0] n48_o;
    wire[6:0] n49_o;
    wire[6:0] n50_o;
    wire n51_o;
    wire n52_o;
    wire n53_o;
    wire n54_o;
    wire[16:0] n55_o;
    wire[16:0] n56_o;
    wire[6:0] n57_o;
    wire[6:0] n58_o;
    wire n59_o;
    wire n60_o;
    wire n61_o;
    wire n62_o;
    wire n63_o;
    wire[3:0] n64_o;
    wire n65_o;
    wire[3:0] n66_o;
    wire n68_o;
    wire n69_o;
    wire n70_o;
    wire[5:0] n71_o;
    wire n73_o;
    wire n74_o;
    wire[1:0] n76_o;
    wire[1:0] n77_o;
    wire[3:0] n78_o;
    wire n79_o;
    wire[6:0] n80_o;
    wire[8:0] n82_o;
    wire[9:0] n84_o;
    wire n85_o;
    wire[6:0] n86_o;
    wire[8:0] n88_o;
    wire[9:0] n90_o;
    wire n92_o;
    wire[6:0] n93_o;
    wire[9:0] n95_o;
    reg[9:0] n96_o;
    wire[9:0] fpadd_7_7_f300_uid2_dualsubclose_n97;
    wire[9:0] fpadd_7_7_f300_uid2_dualsubclose_n98;
    wire[9:0] fpadd_7_7_f300_uid2_dualsubclose_xmy;
    wire[9:0] fpadd_7_7_f300_uid2_dualsubclose_ymx;
    wire n103_o;
    wire[8:0] n104_o;
    wire n105_o;
    wire[8:0] n106_o;
    wire[8:0] n107_o;
    wire n110_o;
    wire n111_o;
    wire n112_o;
    wire n113_o;
    wire n114_o;
    wire n115_o;
    wire[3:0] norm_n116;
    wire[8:0] norm_n117;
    wire[3:0] norm_count;
    wire[8:0] norm_r;
    wire n122_o;
    wire n123_o;
    wire n124_o;
    wire n127_o;
    wire n128_o;
    wire[6:0] n130_o;
    wire[8:0] n132_o;
    wire[8:0] n134_o;
    wire[8:0] n135_o;
    wire[6:0] n136_o;
    wire[15:0] n137_o;
    wire[6:0] n138_o;
    wire[7:0] n140_o;
    wire[9:0] rightshiftercomponent_n141;
    wire rightshiftercomponent_n142;
    wire[9:0] rightshiftercomponent_r;
    wire rightshiftercomponent_sticky;
    wire[10:0] n148_o;
    wire[3:0] n149_o;
    wire[3:0] n150_o;
    wire[2:0] n151_o;
    wire[10:0] n152_o;
    wire[10:0] n153_o;
    wire[6:0] n154_o;
    wire[8:0] n156_o;
    wire[10:0] n158_o;
    wire n159_o;
    wire n160_o;
    wire[10:0] fpadd_7_7_f300_uid2_fracaddfar_n161;
    wire[10:0] fpadd_7_7_f300_uid2_fracaddfar_r;
    wire[1:0] n164_o;
    wire[6:0] n165_o;
    wire n167_o;
    wire[6:0] n168_o;
    wire[6:0] n169_o;
    wire n171_o;
    wire[6:0] n172_o;
    wire[6:0] n173_o;
    wire n174_o;
    wire n176_o;
    wire n177_o;
    wire n178_o;
    wire n180_o;
    wire n181_o;
    wire n182_o;
    wire n184_o;
    wire n185_o;
    wire n186_o;
    wire n187_o;
    wire n189_o;
    wire n190_o;
    wire n191_o;
    wire n192_o;
    wire n193_o;
    wire n194_o;
    wire n195_o;
    wire n196_o;
    wire n197_o;
    wire n200_o;
    wire[1:0] n201_o;
    wire n204_o;
    wire[1:0] n205_o;
    wire n207_o;
    wire n208_o;
    wire n209_o;
    wire n210_o;
    wire n211_o;
    wire n212_o;
    wire n213_o;
    wire n214_o;
    wire[3:0] n215_o;
    wire[3:0] n216_o;
    wire[7:0] n217_o;
    wire n218_o;
    wire[8:0] n219_o;
    wire[6:0] n220_o;
    wire[8:0] n222_o;
    wire[8:0] n223_o;
    wire[15:0] n224_o;
    wire n226_o;
    reg[15:0] n227_o;
    wire n229_o;
    reg n230_o;
    wire n231_o;
    localparam [15:0] n232_o = 16'b0000000000000000;
    wire[15:0] fpadd_7_7_f300_uid2_finalroundadd_n233;
    wire[15:0] fpadd_7_7_f300_uid2_finalroundadd_r;
    wire[1:0] n236_o;
    wire n237_o;
    wire[1:0] n239_o;
    wire n241_o;
    wire n244_o;
    wire n246_o;
    wire n247_o;
    wire n248_o;
    wire[1:0] n250_o;
    wire[1:0] n251_o;
    reg[1:0] n252_o;
    wire[13:0] n253_o;
    wire[14:0] n254_o;
    wire[1:0] n255_o;
    wire n257_o;
    wire[1:0] n259_o;
    wire n261_o;
    wire n264_o;
    wire[1:0] n265_o;
    wire[2:0] n266_o;
    reg[1:0] n267_o;
    wire n268_o;
    wire n270_o;
    wire n271_o;
    wire n272_o;
    wire n274_o;
    wire n275_o;
    wire[1:0] n276_o;
    reg n277_o;
    wire[13:0] n278_o;
    wire n280_o;
    wire[13:0] n281_o;
    reg[13:0] n282_o;
    wire[2:0] n283_o;
    wire[16:0] n284_o;
    reg[16:0] n285_q;
    reg[16:0] n286_q;
    reg n287_q;
    reg n288_q;
    reg n289_q;
    reg n290_q;
    reg[8:0] n291_q;
    reg[8:0] n292_q;
    reg n293_q;
    reg n294_q;
    reg n295_q;
    reg n296_q;
    reg[16:0] n297_q;
    reg[16:0] n298_q;
    reg[16:0] n299_q;
    reg n300_q;
    reg n301_q;
    reg n302_q;
    reg n303_q;
    reg n304_q;
    reg n305_q;
    wire[16:0] n306_o;
    reg[3:0] n307_q;
    reg[3:0] n308_q;
    reg[3:0] n309_q;
    assign R = n284_o;
    assign inx = X; // (signal)
    assign iny = Y; // (signal)
    assign exceptionxsuperiory = n33_o; // (signal)
    assign exceptionxequaly = n39_o; // (signal)
    assign signedexponentx = n43_o; // (signal)
    assign signedexponenty = n46_o; // (signal)
    assign exponentdifferencexy = n47_o; // (signal)
    assign exponentdifferenceyx = n50_o; // (signal)
    assign swap = n54_o; // (signal)
    assign newx = n55_o; // (signal)
    assign newx_d1 = n285_q; // (signal)
    assign newx_d2 = n286_q; // (signal)
    assign newy = n56_o; // (signal)
    assign exponentdifference = n57_o; // (signal)
    assign shiftedout = n63_o; // (signal)
    assign shiftval = n66_o; // (signal)
    assign effsub = n70_o; // (signal)
    assign effsub_d1 = n287_q; // (signal)
    assign effsub_d2 = n288_q; // (signal)
    assign selectclosepath = n74_o; // (signal)
    assign selectclosepath_d1 = n289_q; // (signal)
    assign selectclosepath_d2 = n290_q; // (signal)
    assign sdexnxy = n78_o; // (signal)
    assign pipesigny = n79_o; // (signal)
    assign fracxclose1 = n84_o; // (signal)
    assign fracyclose1 = n96_o; // (signal)
    assign fracrclosexmy = fpadd_7_7_f300_uid2_dualsubclose_n97; // (signal)
    assign fracrcloseymx = fpadd_7_7_f300_uid2_dualsubclose_n98; // (signal)
    assign fracsignclose = n103_o; // (signal)
    assign fracrclose1 = n106_o; // (signal)
    assign ressign = n112_o; // (signal)
    assign nzerosnew = norm_n116; // (signal)
    assign shiftedfrac = norm_n117; // (signal)
    assign roundclose0 = n124_o; // (signal)
    assign resultcloseiszero0 = n128_o; // (signal)
    assign exponentresultclose = n135_o; // (signal)
    assign resultbeforeroundclose = n137_o; // (signal)
    assign roundclose = roundclose0; // (signal)
    assign resultcloseiszero = resultcloseiszero0; // (signal)
    assign fracnewy = n140_o; // (signal)
    assign shiftedfracy = rightshiftercomponent_n141; // (signal)
    assign sticky = rightshiftercomponent_n142; // (signal)
    assign fracyfar = n148_o; // (signal)
    assign effsubvector = n152_o; // (signal)
    assign fracyfarxorop = n153_o; // (signal)
    assign fracxfar = n158_o; // (signal)
    assign cinaddfar = n160_o; // (signal)
    assign fracresultfar0 = fpadd_7_7_f300_uid2_fracaddfar_n161; // (signal)
    assign fracresultfarnormstage = fracresultfar0; // (signal)
    assign fracleadingbits = n164_o; // (signal)
    assign fracresultfar1 = n168_o; // (signal)
    assign fracresultroundbit = n177_o; // (signal)
    assign fracresultstickybit = n185_o; // (signal)
    assign roundfar1 = n197_o; // (signal)
    assign expoperationsel = n201_o; // (signal)
    assign exponentupdate = n219_o; // (signal)
    assign exponentresultfar0 = n222_o; // (signal)
    assign exponentresultfar0_d1 = n291_q; // (signal)
    assign exponentresultfar0_d2 = n292_q; // (signal)
    assign exponentresultfar1 = n223_o; // (signal)
    assign resultbeforeroundfar = n224_o; // (signal)
    assign roundfar = roundfar1; // (signal)
    assign resultbeforeround = n227_o; // (signal)
    assign round = n230_o; // (signal)
    assign zerofromclose = n231_o; // (signal)
    assign zerofromclose_d1 = n293_q; // (signal)
    assign resultrounded = fpadd_7_7_f300_uid2_finalroundadd_n233; // (signal)
    assign synceffsub = effsub; // (signal)
    assign synceffsub_d1 = n294_q; // (signal)
    assign synceffsub_d2 = n295_q; // (signal)
    assign synceffsub_d3 = n296_q; // (signal)
    assign syncx = newx; // (signal)
    assign syncx_d1 = n297_q; // (signal)
    assign syncx_d2 = n298_q; // (signal)
    assign syncx_d3 = n299_q; // (signal)
    assign syncsigny = pipesigny; // (signal)
    assign syncsigny_d1 = n300_q; // (signal)
    assign syncsigny_d2 = n301_q; // (signal)
    assign syncsigny_d3 = n302_q; // (signal)
    assign syncressign = ressign; // (signal)
    assign syncressign_d1 = n303_q; // (signal)
    assign syncressign_d2 = n304_q; // (signal)
    assign syncressign_d3 = n305_q; // (signal)
    assign underflowoverflow = n236_o; // (signal)
    assign resultnoexn = n306_o; // (signal)
    assign syncexnxy = sdexnxy; // (signal)
    assign syncexnxy_d1 = n307_q; // (signal)
    assign syncexnxy_d2 = n308_q; // (signal)
    assign syncexnxy_d3 = n309_q; // (signal)
    assign exnr = n267_o; // (signal)
    assign sgnr = n277_o; // (signal)
    assign expsigr = n282_o; // (signal)
    assign n30_o = inx[16:15];
    assign n31_o = iny[16:15];
    assign n32_o = $unsigned(n30_o) >= $unsigned(n31_o);
    assign n33_o = n32_o ? 1'b1 : 1'b0;
    assign n36_o = inx[16:15];
    assign n37_o = iny[16:15];
    assign n38_o = n36_o == n37_o;
    assign n39_o = n38_o ? 1'b1 : 1'b0;
    assign n41_o = inx[13:7];
    assign n43_o = {1'b0, n41_o};
    assign n44_o = iny[13:7];
    assign n46_o = {1'b0, n44_o};
    assign n47_o = signedexponentx-signedexponenty;
    assign n48_o = signedexponenty[6:0];
    assign n49_o = signedexponentx[6:0];
    assign n50_o = n48_o-n49_o;
    assign n51_o = exponentdifferencexy[7];
    assign n52_o = exceptionxequaly & n51_o;
    assign n53_o = ~exceptionxsuperiory;
    assign n54_o = n52_o | n53_o;
    assign n55_o = swap ? iny : inx;
    assign n56_o = swap ? inx : iny;
    assign n57_o = swap ? exponentdifferenceyx : n58_o;
    assign n58_o = exponentdifferencexy[6:0];
    assign n59_o = exponentdifference[6];
    assign n60_o = exponentdifference[5];
    assign n61_o = n59_o | n60_o;
    assign n62_o = exponentdifference[4];
    assign n63_o = n61_o | n62_o;
    assign n64_o = exponentdifference[3:0];
    assign n65_o = ~shiftedout;
    assign n66_o = n65_o ? n64_o : 4'b1010;
    assign n68_o = newx[14];
    assign n69_o = newy[14];
    assign n70_o = n68_o ^ n69_o;
    assign n71_o = exponentdifference[6:1];
    assign n73_o = n71_o == 6'b000000;
    assign n74_o = n73_o ? effsub : 1'b0;
    assign n76_o = newx[16:15];
    assign n77_o = newy[16:15];
    assign n78_o = {n76_o, n77_o};
    assign n79_o = newy[14];
    assign n80_o = newx[6:0];
    assign n82_o = {2'b01, n80_o};
    assign n84_o = {n82_o, 1'b0};
    assign n85_o = exponentdifference[0];
    assign n86_o = newy[6:0];
    assign n88_o = {2'b01, n86_o};
    assign n90_o = {n88_o, 1'b0};
    assign n92_o = n85_o == 1'b0;
    assign n93_o = newy[6:0];
    assign n95_o = {3'b001, n93_o};
    always @*
        case (n92_o)
            1'b1: n96_o = n90_o;
            default: n96_o = n95_o;
        endcase
    assign fpadd_7_7_f300_uid2_dualsubclose_n97 = fpadd_7_7_f300_uid2_dualsubclose_xmy; // (signal)
    assign fpadd_7_7_f300_uid2_dualsubclose_n98 = fpadd_7_7_f300_uid2_dualsubclose_ymx; // (signal)
    intdualsub_10_f300_uid4 fpadd_7_7_f300_uid2_dualsubclose(
        .clk(clk),
        .x(fracxclose1),
        .y(fracyclose1),
        .xmy(fpadd_7_7_f300_uid2_dualsubclose_xmy),
        .ymx(fpadd_7_7_f300_uid2_dualsubclose_ymx));
    assign n103_o = fracrclosexmy[9];
    assign n104_o = fracrclosexmy[8:0];
    assign n105_o = ~fracsignclose;
    assign n106_o = n105_o ? n104_o : n107_o;
    assign n107_o = fracrcloseymx[8:0];
    assign n110_o = fracrclose1 == 9'b000000000;
    assign n111_o = selectclosepath & n110_o;
    assign n112_o = n111_o ? 1'b0 : n115_o;
    assign n113_o = newx[14];
    assign n114_o = selectclosepath & fracsignclose;
    assign n115_o = n113_o ^ n114_o;
    assign norm_n116 = norm_count; // (signal)
    assign norm_n117 = norm_r; // (signal)
    normalizer_z_9_9_9_f300_uid6 norm(
        .clk(clk),
        .x(fracrclose1),
        .count(norm_count),
        .r(norm_r));
    assign n122_o = shiftedfrac[0];
    assign n123_o = shiftedfrac[1];
    assign n124_o = n122_o & n123_o;
    assign n127_o = nzerosnew == 4'b1111;
    assign n128_o = n127_o ? 1'b1 : 1'b0;
    assign n130_o = newx_d2[13:7];
    assign n132_o = {2'b00, n130_o};
    assign n134_o = {5'b00000, nzerosnew};
    assign n135_o = n132_o-n134_o;
    assign n136_o = shiftedfrac[7:1];
    assign n137_o = {exponentresultclose, n136_o};
    assign n138_o = newy[6:0];
    assign n140_o = {1'b1, n138_o};
    assign rightshiftercomponent_n141 = rightshiftercomponent_r; // (signal)
    assign rightshiftercomponent_n142 = rightshiftercomponent_sticky; // (signal)
    rightshiftersticky8_by_max_10_f300_uid8 rightshiftercomponent(
        .clk(clk),
        .x(fracnewy),
        .s(shiftval),
        .r(rightshiftercomponent_r),
        .sticky(rightshiftercomponent_sticky));
    assign n148_o = {1'b0, shiftedfracy};
    assign n149_o = {effsub, effsub, effsub, effsub};
    assign n150_o = {effsub, effsub, effsub, effsub};
    assign n151_o = {effsub, effsub, effsub};
    assign n152_o = {n149_o, n150_o, n151_o};
    assign n153_o = fracyfar ^ effsubvector;
    assign n154_o = newx[6:0];
    assign n156_o = {2'b01, n154_o};
    assign n158_o = {n156_o, 2'b00};
    assign n159_o = ~sticky;
    assign n160_o = effsub_d2 & n159_o;
    assign fpadd_7_7_f300_uid2_fracaddfar_n161 = fpadd_7_7_f300_uid2_fracaddfar_r; // (signal)
    intadder_11_f300_uid10 fpadd_7_7_f300_uid2_fracaddfar(
        .clk(clk),
        .x(fracxfar),
        .y(fracyfarxorop),
        .cin(cinaddfar),
        .r(fpadd_7_7_f300_uid2_fracaddfar_r));
    assign n164_o = fracresultfarnormstage[10:9];
    assign n165_o = fracresultfarnormstage[7:1];
    assign n167_o = fracleadingbits == 2'b00;
    assign n168_o = n167_o ? n165_o : n172_o;
    assign n169_o = fracresultfarnormstage[8:2];
    assign n171_o = fracleadingbits == 2'b01;
    assign n172_o = n171_o ? n169_o : n173_o;
    assign n173_o = fracresultfarnormstage[9:3];
    assign n174_o = fracresultfarnormstage[0];
    assign n176_o = fracleadingbits == 2'b00;
    assign n177_o = n176_o ? n174_o : n181_o;
    assign n178_o = fracresultfarnormstage[1];
    assign n180_o = fracleadingbits == 2'b01;
    assign n181_o = n180_o ? n178_o : n182_o;
    assign n182_o = fracresultfarnormstage[2];
    assign n184_o = fracleadingbits == 2'b00;
    assign n185_o = n184_o ? sticky : n190_o;
    assign n186_o = fracresultfarnormstage[0];
    assign n187_o = n186_o | sticky;
    assign n189_o = fracleadingbits == 2'b01;
    assign n190_o = n189_o ? n187_o : n194_o;
    assign n191_o = fracresultfarnormstage[1];
    assign n192_o = fracresultfarnormstage[0];
    assign n193_o = n191_o | n192_o;
    assign n194_o = n193_o | sticky;
    assign n195_o = fracresultfar1[0];
    assign n196_o = fracresultstickybit | n195_o;
    assign n197_o = fracresultroundbit & n196_o;
    assign n200_o = fracleadingbits == 2'b00;
    assign n201_o = n200_o ? 2'b11 : n205_o;
    assign n204_o = fracleadingbits == 2'b01;
    assign n205_o = n204_o ? 2'b00 : 2'b01;
    assign n207_o = expoperationsel[1];
    assign n208_o = expoperationsel[1];
    assign n209_o = expoperationsel[1];
    assign n210_o = expoperationsel[1];
    assign n211_o = expoperationsel[1];
    assign n212_o = expoperationsel[1];
    assign n213_o = expoperationsel[1];
    assign n214_o = expoperationsel[1];
    assign n215_o = {n214_o, n213_o, n212_o, n211_o};
    assign n216_o = {n210_o, n209_o, n208_o, n207_o};
    assign n217_o = {n215_o, n216_o};
    assign n218_o = expoperationsel[0];
    assign n219_o = {n217_o, n218_o};
    assign n220_o = newx[13:7];
    assign n222_o = {2'b00, n220_o};
    assign n223_o = exponentresultfar0_d2+exponentupdate;
    assign n224_o = {exponentresultfar1, fracresultfar1};
    assign n226_o = selectclosepath_d2 == 1'b1;
    always @*
        case (n226_o)
            1'b1: n227_o = resultbeforeroundclose;
            default: n227_o = resultbeforeroundfar;
        endcase
    assign n229_o = selectclosepath_d2 == 1'b1;
    always @*
        case (n229_o)
            1'b1: n230_o = roundclose;
            default: n230_o = roundfar;
        endcase
    assign n231_o = selectclosepath_d2 & resultcloseiszero;
    assign fpadd_7_7_f300_uid2_finalroundadd_n233 = fpadd_7_7_f300_uid2_finalroundadd_r; // (signal)
    intadder_16_f300_uid133 fpadd_7_7_f300_uid2_finalroundadd(
        .clk(clk),
        .x(resultbeforeround),
        .y(n232_o),
        .cin(round),
        .r(fpadd_7_7_f300_uid2_finalroundadd_r));
    assign n236_o = resultrounded[15:14];
    assign n237_o = ~zerofromclose_d1;
    assign n239_o = {n237_o, 1'b0};
    assign n241_o = underflowoverflow == 2'b01;
    assign n244_o = underflowoverflow == 2'b10;
    assign n246_o = underflowoverflow == 2'b11;
    assign n247_o = n244_o | n246_o;
    assign n248_o = ~zerofromclose_d1;
    assign n250_o = {1'b0, n248_o};
    assign n251_o = {n247_o, n241_o};
    always @*
        case (n251_o)
            2'b10: n252_o = 2'b00;
            2'b01: n252_o = n239_o;
            default: n252_o = n250_o;
        endcase
    assign n253_o = resultrounded[13:0];
    assign n254_o = {syncressign_d3, n253_o};
    assign n255_o = resultnoexn[16:15];
    assign n257_o = syncexnxy_d3 == 4'b0101;
    assign n259_o = {1'b1, synceffsub_d3};
    assign n261_o = syncexnxy_d3 == 4'b1010;
    assign n264_o = syncexnxy_d3 == 4'b1110;
    assign n265_o = syncexnxy_d3[3:2];
    assign n266_o = {n264_o, n261_o, n257_o};
    always @*
        case (n266_o)
            3'b100: n267_o = 2'b11;
            3'b010: n267_o = n259_o;
            3'b001: n267_o = n255_o;
            default: n267_o = n265_o;
        endcase
    assign n268_o = resultnoexn[14];
    assign n270_o = syncexnxy_d3 == 4'b0101;
    assign n271_o = syncx_d3[14];
    assign n272_o = n271_o & syncsigny_d3;
    assign n274_o = syncexnxy_d3 == 4'b0000;
    assign n275_o = syncx_d3[14];
    assign n276_o = {n274_o, n270_o};
    always @*
        case (n276_o)
            2'b10: n277_o = n272_o;
            2'b01: n277_o = n268_o;
            default: n277_o = n275_o;
        endcase
    assign n278_o = resultnoexn[13:0];
    assign n280_o = syncexnxy_d3 == 4'b0101;
    assign n281_o = syncx_d3[13:0];
    always @*
        case (n280_o)
            1'b1: n282_o = n278_o;
            default: n282_o = n281_o;
        endcase
    assign n283_o = {exnr, sgnr};
    assign n284_o = {n283_o, expsigr};
    always @(posedge clk)
        n285_q <= newx;
    always @(posedge clk)
        n286_q <= newx_d1;
    always @(posedge clk)
        n287_q <= effsub;
    always @(posedge clk)
        n288_q <= effsub_d1;
    always @(posedge clk)
        n289_q <= selectclosepath;
    always @(posedge clk)
        n290_q <= selectclosepath_d1;
    always @(posedge clk)
        n291_q <= exponentresultfar0;
    always @(posedge clk)
        n292_q <= exponentresultfar0_d1;
    always @(posedge clk)
        n293_q <= zerofromclose;
    always @(posedge clk)
        n294_q <= synceffsub;
    always @(posedge clk)
        n295_q <= synceffsub_d1;
    always @(posedge clk)
        n296_q <= synceffsub_d2;
    always @(posedge clk)
        n297_q <= syncx;
    always @(posedge clk)
        n298_q <= syncx_d1;
    always @(posedge clk)
        n299_q <= syncx_d2;
    always @(posedge clk)
        n300_q <= syncsigny;
    always @(posedge clk)
        n301_q <= syncsigny_d1;
    always @(posedge clk)
        n302_q <= syncsigny_d2;
    always @(posedge clk)
        n303_q <= syncressign;
    always @(posedge clk)
        n304_q <= syncressign_d1;
    always @(posedge clk)
        n305_q <= syncressign_d2;
    assign n306_o = {n252_o, n254_o};
    always @(posedge clk)
        n307_q <= syncexnxy;
    always @(posedge clk)
        n308_q <= syncexnxy_d1;
    always @(posedge clk)
        n309_q <= syncexnxy_d2;
endmodule

