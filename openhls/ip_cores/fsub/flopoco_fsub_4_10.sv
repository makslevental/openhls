module intadder_16_f300_uid1333
    (input wire clk,
        input wire [15:0] x,
        input wire [15:0] y,
        input wire cin,
       output wire [15:0] r);
    wire[15:0] rtmp;
    wire[15:0] y_d1;
    wire[15:0] y_d2;
    wire[15:0] n474_o;
    wire[15:0] n475_o;
    wire[15:0] n476_o;
    reg[15:0] n477_q;
    reg[15:0] n478_q;
    assign r = rtmp;
    assign rtmp = n476_o; // (signal)
    assign y_d1 = n477_q; // (signal)
    assign y_d2 = n478_q; // (signal)
    assign n474_o = x+y_d2;
    assign n475_o = {15'b0, cin};  //  uext
    assign n476_o = n474_o+n475_o;
    always @(posedge clk)
        n477_q <= y;
    always @(posedge clk)
        n478_q <= y_d1;
endmodule

module intadder_14_f300_uid1000
    (input wire clk,
        input wire [13:0] x,
        input wire [13:0] y,
        input wire cin,
       output wire [13:0] r);
    wire[13:0] rtmp;
    wire[13:0] x_d1;
    wire[13:0] x_d2;
    wire[13:0] y_d1;
    wire[13:0] y_d2;
    wire[13:0] n460_o;
    wire[13:0] n461_o;
    wire[13:0] n462_o;
    reg[13:0] n463_q;
    reg[13:0] n464_q;
    reg[13:0] n465_q;
    reg[13:0] n466_q;
    assign r = rtmp;
    assign rtmp = n462_o; // (signal)
    assign x_d1 = n463_q; // (signal)
    assign x_d2 = n464_q; // (signal)
    assign y_d1 = n465_q; // (signal)
    assign y_d2 = n466_q; // (signal)
    assign n460_o = x_d2+y_d2;
    assign n461_o = {13'b0, cin};  //  uext
    assign n462_o = n460_o+n461_o;
    always @(posedge clk)
        n463_q <= x;
    always @(posedge clk)
        n464_q <= x_d1;
    always @(posedge clk)
        n465_q <= y;
    always @(posedge clk)
        n466_q <= y_d1;
endmodule

module rightshiftersticky11_by_max_13_f300_uid8
    (input wire clk,
        input wire [10:0] x,
        input wire [3:0] s,
       output wire [12:0] r,
        output wire sticky);
    wire[3:0] ps;
    wire[3:0] ps_d1;
    wire[3:0] ps_d2;
    wire[12:0] xpadded;
    wire[12:0] level4;
    wire stk3;
    wire stk3_d1;
    wire[12:0] level3;
    wire[12:0] level3_d1;
    wire stk2;
    wire[12:0] level2;
    wire[12:0] level2_d1;
    wire stk1;
    wire stk1_d1;
    wire[12:0] level1;
    wire[12:0] level1_d1;
    wire[12:0] level1_d2;
    wire stk0;
    wire[12:0] level0;
    wire[12:0] n383_o;
    wire[7:0] n385_o;
    wire n387_o;
    wire n388_o;
    wire n389_o;
    wire n390_o;
    wire n392_o;
    wire n393_o;
    wire[12:0] n394_o;
    wire[4:0] n395_o;
    wire[12:0] n397_o;
    wire[3:0] n399_o;
    wire n401_o;
    wire n402_o;
    wire n403_o;
    wire n404_o;
    wire n405_o;
    wire n407_o;
    wire n408_o;
    wire[12:0] n409_o;
    wire[8:0] n410_o;
    wire[12:0] n412_o;
    wire[1:0] n414_o;
    wire n416_o;
    wire n417_o;
    wire n418_o;
    wire n419_o;
    wire n420_o;
    wire n422_o;
    wire n423_o;
    wire[12:0] n424_o;
    wire[10:0] n425_o;
    wire[12:0] n427_o;
    wire n429_o;
    wire n431_o;
    wire n432_o;
    wire n433_o;
    wire n434_o;
    wire n435_o;
    wire n437_o;
    wire n438_o;
    wire[12:0] n439_o;
    wire[11:0] n440_o;
    wire[12:0] n442_o;
    reg[3:0] n443_q;
    reg[3:0] n444_q;
    reg n445_q;
    reg[12:0] n446_q;
    reg[12:0] n447_q;
    reg n448_q;
    reg[12:0] n449_q;
    reg[12:0] n450_q;
    assign r = level0;
    assign sticky = stk0;
    assign ps = s; // (signal)
    assign ps_d1 = n443_q; // (signal)
    assign ps_d2 = n444_q; // (signal)
    assign xpadded = n383_o; // (signal)
    assign level4 = xpadded; // (signal)
    assign stk3 = n390_o; // (signal)
    assign stk3_d1 = n445_q; // (signal)
    assign level3 = n394_o; // (signal)
    assign level3_d1 = n446_q; // (signal)
    assign stk2 = n405_o; // (signal)
    assign level2 = n409_o; // (signal)
    assign level2_d1 = n447_q; // (signal)
    assign stk1 = n420_o; // (signal)
    assign stk1_d1 = n448_q; // (signal)
    assign level1 = n424_o; // (signal)
    assign level1_d1 = n449_q; // (signal)
    assign level1_d2 = n450_q; // (signal)
    assign stk0 = n435_o; // (signal)
    assign level0 = n439_o; // (signal)
    assign n383_o = {x, 2'b00};
    assign n385_o = level4[7:0];
    assign n387_o = n385_o != 8'b00000000;
    assign n388_o = ps[3];
    assign n389_o = n387_o & n388_o;
    assign n390_o = n389_o ? 1'b1 : 1'b0;
    assign n392_o = ps[3];
    assign n393_o = ~n392_o;
    assign n394_o = n393_o ? level4 : n397_o;
    assign n395_o = level4[12:8];
    assign n397_o = {8'b00000000, n395_o};
    assign n399_o = level3_d1[3:0];
    assign n401_o = n399_o != 4'b0000;
    assign n402_o = ps_d1[2];
    assign n403_o = n401_o & n402_o;
    assign n404_o = n403_o | stk3_d1;
    assign n405_o = n404_o ? 1'b1 : 1'b0;
    assign n407_o = ps[2];
    assign n408_o = ~n407_o;
    assign n409_o = n408_o ? level3 : n412_o;
    assign n410_o = level3[12:4];
    assign n412_o = {4'b0000, n410_o};
    assign n414_o = level2_d1[1:0];
    assign n416_o = n414_o != 2'b00;
    assign n417_o = ps_d1[1];
    assign n418_o = n416_o & n417_o;
    assign n419_o = n418_o | stk2;
    assign n420_o = n419_o ? 1'b1 : 1'b0;
    assign n422_o = ps[1];
    assign n423_o = ~n422_o;
    assign n424_o = n423_o ? level2 : n427_o;
    assign n425_o = level2[12:2];
    assign n427_o = {2'b00, n425_o};
    assign n429_o = level1_d2[0];
    assign n431_o = n429_o != 1'b0;
    assign n432_o = ps_d2[0];
    assign n433_o = n431_o & n432_o;
    assign n434_o = n433_o | stk1_d1;
    assign n435_o = n434_o ? 1'b1 : 1'b0;
    assign n437_o = ps[0];
    assign n438_o = ~n437_o;
    assign n439_o = n438_o ? level1 : n442_o;
    assign n440_o = level1[12:1];
    assign n442_o = {1'b0, n440_o};
    always @(posedge clk)
        n443_q <= ps;
    always @(posedge clk)
        n444_q <= ps_d1;
    always @(posedge clk)
        n445_q <= stk3;
    always @(posedge clk)
        n446_q <= level3;
    always @(posedge clk)
        n447_q <= level2;
    always @(posedge clk)
        n448_q <= stk1;
    always @(posedge clk)
        n449_q <= level1;
    always @(posedge clk)
        n450_q <= level1_d1;
endmodule

module normalizer_z_12_12_12_f300_uid6
    (input wire clk,
        input wire [11:0] x,
       output wire [3:0] count,
       output wire [11:0] r);
    wire[11:0] level4;
    wire[11:0] level4_d1;
    wire count3;
    wire count3_d1;
    wire[11:0] level3;
    wire count2;
    wire count2_d1;
    wire[11:0] level2;
    wire[11:0] level2_d1;
    wire count1;
    wire count1_d1;
    wire[11:0] level1;
    wire count0;
    wire[11:0] level0;
    wire[3:0] scount;
    wire[7:0] n317_o;
    wire n319_o;
    wire n320_o;
    wire n322_o;
    wire[11:0] n323_o;
    wire[3:0] n324_o;
    wire[11:0] n326_o;
    wire[3:0] n328_o;
    wire n330_o;
    wire n331_o;
    wire n333_o;
    wire[11:0] n334_o;
    wire[7:0] n335_o;
    wire[11:0] n337_o;
    wire[1:0] n339_o;
    wire n341_o;
    wire n342_o;
    wire n344_o;
    wire[11:0] n345_o;
    wire[9:0] n346_o;
    wire[11:0] n348_o;
    wire n350_o;
    wire n352_o;
    wire n353_o;
    wire n355_o;
    wire[11:0] n356_o;
    wire[10:0] n357_o;
    wire[11:0] n359_o;
    wire[1:0] n360_o;
    wire[2:0] n361_o;
    wire[3:0] n362_o;
    reg[11:0] n363_q;
    reg n364_q;
    reg n365_q;
    reg[11:0] n366_q;
    reg n367_q;
    assign count = scount;
    assign r = level0;
    assign level4 = x; // (signal)
    assign level4_d1 = n363_q; // (signal)
    assign count3 = n320_o; // (signal)
    assign count3_d1 = n364_q; // (signal)
    assign level3 = n323_o; // (signal)
    assign count2 = n331_o; // (signal)
    assign count2_d1 = n365_q; // (signal)
    assign level2 = n334_o; // (signal)
    assign level2_d1 = n366_q; // (signal)
    assign count1 = n342_o; // (signal)
    assign count1_d1 = n367_q; // (signal)
    assign level1 = n345_o; // (signal)
    assign count0 = n353_o; // (signal)
    assign level0 = n356_o; // (signal)
    assign scount = n362_o; // (signal)
    assign n317_o = level4_d1[11:4];
    assign n319_o = n317_o == 8'b00000000;
    assign n320_o = n319_o ? 1'b1 : 1'b0;
    assign n322_o = ~count3;
    assign n323_o = n322_o ? level4_d1 : n326_o;
    assign n324_o = level4_d1[3:0];
    assign n326_o = {n324_o, 8'b00000000};
    assign n328_o = level3[11:8];
    assign n330_o = n328_o == 4'b0000;
    assign n331_o = n330_o ? 1'b1 : 1'b0;
    assign n333_o = ~count2;
    assign n334_o = n333_o ? level3 : n337_o;
    assign n335_o = level3[7:0];
    assign n337_o = {n335_o, 4'b0000};
    assign n339_o = level2[11:10];
    assign n341_o = n339_o == 2'b00;
    assign n342_o = n341_o ? 1'b1 : 1'b0;
    assign n344_o = ~count1_d1;
    assign n345_o = n344_o ? level2_d1 : n348_o;
    assign n346_o = level2_d1[9:0];
    assign n348_o = {n346_o, 2'b00};
    assign n350_o = level1[11];
    assign n352_o = n350_o == 1'b0;
    assign n353_o = n352_o ? 1'b1 : 1'b0;
    assign n355_o = ~count0;
    assign n356_o = n355_o ? level1 : n359_o;
    assign n357_o = level1[10:0];
    assign n359_o = {n357_o, 1'b0};
    assign n360_o = {count3_d1, count2_d1};
    assign n361_o = {n360_o, count1_d1};
    assign n362_o = {n361_o, count0};
    always @(posedge clk)
        n363_q <= level4;
    always @(posedge clk)
        n364_q <= count3;
    always @(posedge clk)
        n365_q <= count2;
    always @(posedge clk)
        n366_q <= level2;
    always @(posedge clk)
        n367_q <= count1;
endmodule

module intdualsub_13_f300_uid444
    (input wire clk,
        input wire [12:0] x,
        input wire [12:0] y,
       output wire [12:0] xmy,
       output wire [12:0] ymx);
    wire[12:0] temprxmy;
    wire[12:0] temprymx;
    wire[12:0] n295_o;
    wire[12:0] n296_o;
    wire[12:0] n299_o;
    wire[12:0] n300_o;
    wire[12:0] n301_o;
    wire[12:0] n304_o;
    assign xmy = temprxmy;
    assign ymx = temprymx;
    assign temprxmy = n299_o; // (signal)
    assign temprymx = n304_o; // (signal)
    assign n295_o = ~y;
    assign n296_o = x+n295_o;
    assign n299_o = n296_o+13'b0000000000001;
    assign n300_o = ~x;
    assign n301_o = y+n300_o;
    assign n304_o = n301_o+13'b0000000000001;
endmodule

module fsub#(parameter ID=1)
    (input wire clk,
        input wire [16:0] X,
        input wire [16:0] Y,
       output wire [16:0] R);
    wire[16:0] inx;
    wire[16:0] iny;
    wire exceptionxsuperiory;
    wire exceptionxequaly;
    wire[4:0] signedexponentx;
    wire[4:0] signedexponenty;
    wire[4:0] exponentdifferencexy;
    wire[3:0] exponentdifferenceyx;
    wire swap;
    wire[16:0] my;
    wire[16:0] newx;
    wire[16:0] newx_d1;
    wire[16:0] newx_d2;
    wire[16:0] newy;
    wire[3:0] exponentdifference;
    wire[3:0] shiftval;
    wire effsub;
    wire effsub_d1;
    wire effsub_d2;
    wire selectclosepath;
    wire selectclosepath_d1;
    wire selectclosepath_d2;
    wire[3:0] sdexnxy;
    wire pipesigny;
    wire[12:0] fracxclose1;
    wire[12:0] fracyclose1;
    wire[12:0] fracrclosexmy;
    wire[12:0] fracrcloseymx;
    wire fracsignclose;
    wire[11:0] fracrclose1;
    wire ressign;
    wire[3:0] nzerosnew;
    wire[11:0] shiftedfrac;
    wire roundclose0;
    wire resultcloseiszero0;
    wire[5:0] exponentresultclose;
    wire[15:0] resultbeforeroundclose;
    wire roundclose;
    wire resultcloseiszero;
    wire[10:0] fracnewy;
    wire[12:0] shiftedfracy;
    wire sticky;
    wire[13:0] fracyfar;
    wire[13:0] effsubvector;
    wire[13:0] fracyfarxorop;
    wire[13:0] fracxfar;
    wire cinaddfar;
    wire[13:0] fracresultfar0;
    wire[13:0] fracresultfarnormstage;
    wire[1:0] fracleadingbits;
    wire[9:0] fracresultfar1;
    wire fracresultroundbit;
    wire fracresultstickybit;
    wire roundfar1;
    wire[1:0] expoperationsel;
    wire[5:0] exponentupdate;
    wire[5:0] exponentresultfar0;
    wire[5:0] exponentresultfar0_d1;
    wire[5:0] exponentresultfar0_d2;
    wire[5:0] exponentresultfar1;
    wire[15:0] resultbeforeroundfar;
    wire roundfar;
    wire[15:0] resultbeforeround;
    wire round;
    wire zerofromclose;
    wire[15:0] resultrounded;
    wire synceffsub;
    wire synceffsub_d1;
    wire synceffsub_d2;
    wire[16:0] syncx;
    wire[16:0] syncx_d1;
    wire[16:0] syncx_d2;
    wire syncsigny;
    wire syncsigny_d1;
    wire syncsigny_d2;
    wire syncressign;
    wire syncressign_d1;
    wire syncressign_d2;
    wire[1:0] underflowoverflow;
    wire[16:0] resultnoexn;
    wire[3:0] syncexnxy;
    wire[3:0] syncexnxy_d1;
    wire[3:0] syncexnxy_d2;
    wire[1:0] exnr;
    wire sgnr;
    wire[13:0] expsigr;
    wire[1:0] n24_o;
    wire[1:0] n25_o;
    wire n26_o;
    wire n27_o;
    wire[1:0] n30_o;
    wire[1:0] n31_o;
    wire n32_o;
    wire n33_o;
    wire[3:0] n35_o;
    wire[4:0] n37_o;
    wire[3:0] n38_o;
    wire[4:0] n40_o;
    wire[4:0] n41_o;
    wire[3:0] n42_o;
    wire[3:0] n43_o;
    wire[3:0] n44_o;
    wire n45_o;
    wire n46_o;
    wire n47_o;
    wire n48_o;
    wire[1:0] n49_o;
    wire n50_o;
    wire n51_o;
    wire[2:0] n52_o;
    wire[13:0] n53_o;
    wire[16:0] n54_o;
    wire[16:0] n55_o;
    wire[16:0] n56_o;
    wire[3:0] n57_o;
    wire[3:0] n58_o;
    wire n60_o;
    wire n61_o;
    wire n62_o;
    wire[2:0] n63_o;
    wire n65_o;
    wire n66_o;
    wire[1:0] n68_o;
    wire[1:0] n69_o;
    wire[3:0] n70_o;
    wire n71_o;
    wire[9:0] n72_o;
    wire[11:0] n74_o;
    wire[12:0] n76_o;
    wire n77_o;
    wire[9:0] n78_o;
    wire[11:0] n80_o;
    wire[12:0] n82_o;
    wire n84_o;
    wire[9:0] n85_o;
    wire[12:0] n87_o;
    reg[12:0] n88_o;
    wire[12:0] fpsub_4_10_f300_uid2_dualsubclose_n89;
    wire[12:0] fpsub_4_10_f300_uid2_dualsubclose_n90;
    wire[12:0] fpsub_4_10_f300_uid2_dualsubclose_xmy;
    wire[12:0] fpsub_4_10_f300_uid2_dualsubclose_ymx;
    wire n95_o;
    wire[11:0] n96_o;
    wire n97_o;
    wire[11:0] n98_o;
    wire[11:0] n99_o;
    wire n102_o;
    wire n103_o;
    wire n104_o;
    wire n105_o;
    wire n106_o;
    wire n107_o;
    wire[3:0] norm_n108;
    wire[11:0] norm_n109;
    wire[3:0] norm_count;
    wire[11:0] norm_r;
    wire n114_o;
    wire n115_o;
    wire n116_o;
    wire n119_o;
    wire n120_o;
    wire[3:0] n122_o;
    wire[5:0] n124_o;
    wire[5:0] n126_o;
    wire[5:0] n127_o;
    wire[9:0] n128_o;
    wire[15:0] n129_o;
    wire[9:0] n130_o;
    wire[10:0] n132_o;
    wire[12:0] rightshiftercomponent_n133;
    wire rightshiftercomponent_n134;
    wire[12:0] rightshiftercomponent_r;
    wire rightshiftercomponent_sticky;
    wire[13:0] n140_o;
    wire[3:0] n141_o;
    wire[3:0] n142_o;
    wire[3:0] n143_o;
    wire[1:0] n144_o;
    wire[13:0] n145_o;
    wire[13:0] n146_o;
    wire[9:0] n147_o;
    wire[11:0] n149_o;
    wire[13:0] n151_o;
    wire n152_o;
    wire n153_o;
    wire[13:0] fpsub_4_10_f300_uid2_fracaddfar_n154;
    wire[13:0] fpsub_4_10_f300_uid2_fracaddfar_r;
    wire[1:0] n157_o;
    wire[9:0] n158_o;
    wire n160_o;
    wire[9:0] n161_o;
    wire[9:0] n162_o;
    wire n164_o;
    wire[9:0] n165_o;
    wire[9:0] n166_o;
    wire n167_o;
    wire n169_o;
    wire n170_o;
    wire n171_o;
    wire n173_o;
    wire n174_o;
    wire n175_o;
    wire n177_o;
    wire n178_o;
    wire n179_o;
    wire n180_o;
    wire n182_o;
    wire n183_o;
    wire n184_o;
    wire n185_o;
    wire n186_o;
    wire n187_o;
    wire n188_o;
    wire n189_o;
    wire n190_o;
    wire n193_o;
    wire[1:0] n194_o;
    wire n197_o;
    wire[1:0] n198_o;
    wire n200_o;
    wire n201_o;
    wire n202_o;
    wire n203_o;
    wire n204_o;
    wire[3:0] n205_o;
    wire[4:0] n206_o;
    wire n207_o;
    wire[5:0] n208_o;
    wire[3:0] n209_o;
    wire[5:0] n211_o;
    wire[5:0] n212_o;
    wire[15:0] n213_o;
    wire n215_o;
    reg[15:0] n216_o;
    wire n218_o;
    reg n219_o;
    wire n220_o;
    localparam [15:0] n221_o = 16'b0000000000000000;
    wire[15:0] fpsub_4_10_f300_uid2_finalroundadd_n222;
    wire[15:0] fpsub_4_10_f300_uid2_finalroundadd_r;
    wire[1:0] n225_o;
    wire n226_o;
    wire[1:0] n228_o;
    wire n230_o;
    wire n233_o;
    wire n235_o;
    wire n236_o;
    wire n237_o;
    wire[1:0] n239_o;
    wire[1:0] n240_o;
    reg[1:0] n241_o;
    wire[13:0] n242_o;
    wire[14:0] n243_o;
    wire[1:0] n244_o;
    wire n246_o;
    wire[1:0] n248_o;
    wire n250_o;
    wire n253_o;
    wire[1:0] n254_o;
    wire[2:0] n255_o;
    reg[1:0] n256_o;
    wire n257_o;
    wire n259_o;
    wire n260_o;
    wire n261_o;
    wire n263_o;
    wire n264_o;
    wire[1:0] n265_o;
    reg n266_o;
    wire[13:0] n267_o;
    wire n269_o;
    wire[13:0] n270_o;
    reg[13:0] n271_o;
    wire[2:0] n272_o;
    wire[16:0] n273_o;
    reg[16:0] n274_q;
    reg[16:0] n275_q;
    reg n276_q;
    reg n277_q;
    reg n278_q;
    reg n279_q;
    reg[5:0] n280_q;
    reg[5:0] n281_q;
    reg n282_q;
    reg n283_q;
    reg[16:0] n284_q;
    reg[16:0] n285_q;
    reg n286_q;
    reg n287_q;
    reg n288_q;
    reg n289_q;
    wire[16:0] n290_o;
    reg[3:0] n291_q;
    reg[3:0] n292_q;
    assign R = n273_o;
    assign inx = X; // (signal)
    assign iny = Y; // (signal)
    assign exceptionxsuperiory = n27_o; // (signal)
    assign exceptionxequaly = n33_o; // (signal)
    assign signedexponentx = n37_o; // (signal)
    assign signedexponenty = n40_o; // (signal)
    assign exponentdifferencexy = n41_o; // (signal)
    assign exponentdifferenceyx = n44_o; // (signal)
    assign swap = n48_o; // (signal)
    assign my = n54_o; // (signal)
    assign newx = n55_o; // (signal)
    assign newx_d1 = n274_q; // (signal)
    assign newx_d2 = n275_q; // (signal)
    assign newy = n56_o; // (signal)
    assign exponentdifference = n57_o; // (signal)
    assign shiftval = exponentdifference; // (signal)
    assign effsub = n62_o; // (signal)
    assign effsub_d1 = n276_q; // (signal)
    assign effsub_d2 = n277_q; // (signal)
    assign selectclosepath = n66_o; // (signal)
    assign selectclosepath_d1 = n278_q; // (signal)
    assign selectclosepath_d2 = n279_q; // (signal)
    assign sdexnxy = n70_o; // (signal)
    assign pipesigny = n71_o; // (signal)
    assign fracxclose1 = n76_o; // (signal)
    assign fracyclose1 = n88_o; // (signal)
    assign fracrclosexmy = fpsub_4_10_f300_uid2_dualsubclose_n89; // (signal)
    assign fracrcloseymx = fpsub_4_10_f300_uid2_dualsubclose_n90; // (signal)
    assign fracsignclose = n95_o; // (signal)
    assign fracrclose1 = n98_o; // (signal)
    assign ressign = n104_o; // (signal)
    assign nzerosnew = norm_n108; // (signal)
    assign shiftedfrac = norm_n109; // (signal)
    assign roundclose0 = n116_o; // (signal)
    assign resultcloseiszero0 = n120_o; // (signal)
    assign exponentresultclose = n127_o; // (signal)
    assign resultbeforeroundclose = n129_o; // (signal)
    assign roundclose = roundclose0; // (signal)
    assign resultcloseiszero = resultcloseiszero0; // (signal)
    assign fracnewy = n132_o; // (signal)
    assign shiftedfracy = rightshiftercomponent_n133; // (signal)
    assign sticky = rightshiftercomponent_n134; // (signal)
    assign fracyfar = n140_o; // (signal)
    assign effsubvector = n145_o; // (signal)
    assign fracyfarxorop = n146_o; // (signal)
    assign fracxfar = n151_o; // (signal)
    assign cinaddfar = n153_o; // (signal)
    assign fracresultfar0 = fpsub_4_10_f300_uid2_fracaddfar_n154; // (signal)
    assign fracresultfarnormstage = fracresultfar0; // (signal)
    assign fracleadingbits = n157_o; // (signal)
    assign fracresultfar1 = n161_o; // (signal)
    assign fracresultroundbit = n170_o; // (signal)
    assign fracresultstickybit = n178_o; // (signal)
    assign roundfar1 = n190_o; // (signal)
    assign expoperationsel = n194_o; // (signal)
    assign exponentupdate = n208_o; // (signal)
    assign exponentresultfar0 = n211_o; // (signal)
    assign exponentresultfar0_d1 = n280_q; // (signal)
    assign exponentresultfar0_d2 = n281_q; // (signal)
    assign exponentresultfar1 = n212_o; // (signal)
    assign resultbeforeroundfar = n213_o; // (signal)
    assign roundfar = roundfar1; // (signal)
    assign resultbeforeround = n216_o; // (signal)
    assign round = n219_o; // (signal)
    assign zerofromclose = n220_o; // (signal)
    assign resultrounded = fpsub_4_10_f300_uid2_finalroundadd_n222; // (signal)
    assign synceffsub = effsub; // (signal)
    assign synceffsub_d1 = n282_q; // (signal)
    assign synceffsub_d2 = n283_q; // (signal)
    assign syncx = newx; // (signal)
    assign syncx_d1 = n284_q; // (signal)
    assign syncx_d2 = n285_q; // (signal)
    assign syncsigny = pipesigny; // (signal)
    assign syncsigny_d1 = n286_q; // (signal)
    assign syncsigny_d2 = n287_q; // (signal)
    assign syncressign = ressign; // (signal)
    assign syncressign_d1 = n288_q; // (signal)
    assign syncressign_d2 = n289_q; // (signal)
    assign underflowoverflow = n225_o; // (signal)
    assign resultnoexn = n290_o; // (signal)
    assign syncexnxy = sdexnxy; // (signal)
    assign syncexnxy_d1 = n291_q; // (signal)
    assign syncexnxy_d2 = n292_q; // (signal)
    assign exnr = n256_o; // (signal)
    assign sgnr = n266_o; // (signal)
    assign expsigr = n271_o; // (signal)
    assign n24_o = inx[16:15];
    assign n25_o = iny[16:15];
    assign n26_o = $unsigned(n24_o) >= $unsigned(n25_o);
    assign n27_o = n26_o ? 1'b1 : 1'b0;
    assign n30_o = inx[16:15];
    assign n31_o = iny[16:15];
    assign n32_o = n30_o == n31_o;
    assign n33_o = n32_o ? 1'b1 : 1'b0;
    assign n35_o = inx[13:10];
    assign n37_o = {1'b0, n35_o};
    assign n38_o = iny[13:10];
    assign n40_o = {1'b0, n38_o};
    assign n41_o = signedexponentx-signedexponenty;
    assign n42_o = signedexponenty[3:0];
    assign n43_o = signedexponentx[3:0];
    assign n44_o = n42_o-n43_o;
    assign n45_o = exponentdifferencexy[4];
    assign n46_o = exceptionxequaly & n45_o;
    assign n47_o = ~exceptionxsuperiory;
    assign n48_o = n46_o | n47_o;
    assign n49_o = iny[16:15];
    assign n50_o = iny[14];
    assign n51_o = ~n50_o;
    assign n52_o = {n49_o, n51_o};
    assign n53_o = iny[13:0];
    assign n54_o = {n52_o, n53_o};
    assign n55_o = swap ? my : inx;
    assign n56_o = swap ? inx : my;
    assign n57_o = swap ? exponentdifferenceyx : n58_o;
    assign n58_o = exponentdifferencexy[3:0];
    assign n60_o = newx[14];
    assign n61_o = newy[14];
    assign n62_o = n60_o ^ n61_o;
    assign n63_o = exponentdifference[3:1];
    assign n65_o = n63_o == 3'b000;
    assign n66_o = n65_o ? effsub : 1'b0;
    assign n68_o = newx[16:15];
    assign n69_o = newy[16:15];
    assign n70_o = {n68_o, n69_o};
    assign n71_o = newy[14];
    assign n72_o = newx[9:0];
    assign n74_o = {2'b01, n72_o};
    assign n76_o = {n74_o, 1'b0};
    assign n77_o = exponentdifference[0];
    assign n78_o = newy[9:0];
    assign n80_o = {2'b01, n78_o};
    assign n82_o = {n80_o, 1'b0};
    assign n84_o = n77_o == 1'b0;
    assign n85_o = newy[9:0];
    assign n87_o = {3'b001, n85_o};
    always @*
        case (n84_o)
            1'b1: n88_o = n82_o;
            default: n88_o = n87_o;
        endcase
    assign fpsub_4_10_f300_uid2_dualsubclose_n89 = fpsub_4_10_f300_uid2_dualsubclose_xmy; // (signal)
    assign fpsub_4_10_f300_uid2_dualsubclose_n90 = fpsub_4_10_f300_uid2_dualsubclose_ymx; // (signal)
    intdualsub_13_f300_uid444 fpsub_4_10_f300_uid2_dualsubclose(
        .clk(clk),
        .x(fracxclose1),
        .y(fracyclose1),
        .xmy(fpsub_4_10_f300_uid2_dualsubclose_xmy),
        .ymx(fpsub_4_10_f300_uid2_dualsubclose_ymx));
    assign n95_o = fracrclosexmy[12];
    assign n96_o = fracrclosexmy[11:0];
    assign n97_o = ~fracsignclose;
    assign n98_o = n97_o ? n96_o : n99_o;
    assign n99_o = fracrcloseymx[11:0];
    assign n102_o = fracrclose1 == 12'b000000000000;
    assign n103_o = selectclosepath & n102_o;
    assign n104_o = n103_o ? 1'b0 : n107_o;
    assign n105_o = newx[14];
    assign n106_o = selectclosepath & fracsignclose;
    assign n107_o = n105_o ^ n106_o;
    assign norm_n108 = norm_count; // (signal)
    assign norm_n109 = norm_r; // (signal)
    normalizer_z_12_12_12_f300_uid6 norm(
        .clk(clk),
        .x(fracrclose1),
        .count(norm_count),
        .r(norm_r));
    assign n114_o = shiftedfrac[0];
    assign n115_o = shiftedfrac[1];
    assign n116_o = n114_o & n115_o;
    assign n119_o = nzerosnew == 4'b1111;
    assign n120_o = n119_o ? 1'b1 : 1'b0;
    assign n122_o = newx_d2[13:10];
    assign n124_o = {2'b00, n122_o};
    assign n126_o = {2'b00, nzerosnew};
    assign n127_o = n124_o-n126_o;
    assign n128_o = shiftedfrac[10:1];
    assign n129_o = {exponentresultclose, n128_o};
    assign n130_o = newy[9:0];
    assign n132_o = {1'b1, n130_o};
    assign rightshiftercomponent_n133 = rightshiftercomponent_r; // (signal)
    assign rightshiftercomponent_n134 = rightshiftercomponent_sticky; // (signal)
    rightshiftersticky11_by_max_13_f300_uid8 rightshiftercomponent(
        .clk(clk),
        .x(fracnewy),
        .s(shiftval),
        .r(rightshiftercomponent_r),
        .sticky(rightshiftercomponent_sticky));
    assign n140_o = {1'b0, shiftedfracy};
    assign n141_o = {effsub, effsub, effsub, effsub};
    assign n142_o = {effsub, effsub, effsub, effsub};
    assign n143_o = {effsub, effsub, effsub, effsub};
    assign n144_o = {effsub, effsub};
    assign n145_o = {n141_o, n142_o, n143_o, n144_o};
    assign n146_o = fracyfar ^ effsubvector;
    assign n147_o = newx[9:0];
    assign n149_o = {2'b01, n147_o};
    assign n151_o = {n149_o, 2'b00};
    assign n152_o = ~sticky;
    assign n153_o = effsub_d2 & n152_o;
    assign fpsub_4_10_f300_uid2_fracaddfar_n154 = fpsub_4_10_f300_uid2_fracaddfar_r; // (signal)
    intadder_14_f300_uid1000 fpsub_4_10_f300_uid2_fracaddfar(
        .clk(clk),
        .x(fracxfar),
        .y(fracyfarxorop),
        .cin(cinaddfar),
        .r(fpsub_4_10_f300_uid2_fracaddfar_r));
    assign n157_o = fracresultfarnormstage[13:12];
    assign n158_o = fracresultfarnormstage[10:1];
    assign n160_o = fracleadingbits == 2'b00;
    assign n161_o = n160_o ? n158_o : n165_o;
    assign n162_o = fracresultfarnormstage[11:2];
    assign n164_o = fracleadingbits == 2'b01;
    assign n165_o = n164_o ? n162_o : n166_o;
    assign n166_o = fracresultfarnormstage[12:3];
    assign n167_o = fracresultfarnormstage[0];
    assign n169_o = fracleadingbits == 2'b00;
    assign n170_o = n169_o ? n167_o : n174_o;
    assign n171_o = fracresultfarnormstage[1];
    assign n173_o = fracleadingbits == 2'b01;
    assign n174_o = n173_o ? n171_o : n175_o;
    assign n175_o = fracresultfarnormstage[2];
    assign n177_o = fracleadingbits == 2'b00;
    assign n178_o = n177_o ? sticky : n183_o;
    assign n179_o = fracresultfarnormstage[0];
    assign n180_o = n179_o | sticky;
    assign n182_o = fracleadingbits == 2'b01;
    assign n183_o = n182_o ? n180_o : n187_o;
    assign n184_o = fracresultfarnormstage[1];
    assign n185_o = fracresultfarnormstage[0];
    assign n186_o = n184_o | n185_o;
    assign n187_o = n186_o | sticky;
    assign n188_o = fracresultfar1[0];
    assign n189_o = fracresultstickybit | n188_o;
    assign n190_o = fracresultroundbit & n189_o;
    assign n193_o = fracleadingbits == 2'b00;
    assign n194_o = n193_o ? 2'b11 : n198_o;
    assign n197_o = fracleadingbits == 2'b01;
    assign n198_o = n197_o ? 2'b00 : 2'b01;
    assign n200_o = expoperationsel[1];
    assign n201_o = expoperationsel[1];
    assign n202_o = expoperationsel[1];
    assign n203_o = expoperationsel[1];
    assign n204_o = expoperationsel[1];
    assign n205_o = {n204_o, n203_o, n202_o, n201_o};
    assign n206_o = {n205_o, n200_o};
    assign n207_o = expoperationsel[0];
    assign n208_o = {n206_o, n207_o};
    assign n209_o = newx[13:10];
    assign n211_o = {2'b00, n209_o};
    assign n212_o = exponentresultfar0_d2+exponentupdate;
    assign n213_o = {exponentresultfar1, fracresultfar1};
    assign n215_o = selectclosepath_d2 == 1'b1;
    always @*
        case (n215_o)
            1'b1: n216_o = resultbeforeroundclose;
            default: n216_o = resultbeforeroundfar;
        endcase
    assign n218_o = selectclosepath_d2 == 1'b1;
    always @*
        case (n218_o)
            1'b1: n219_o = roundclose;
            default: n219_o = roundfar;
        endcase
    assign n220_o = selectclosepath_d2 & resultcloseiszero;
    assign fpsub_4_10_f300_uid2_finalroundadd_n222 = fpsub_4_10_f300_uid2_finalroundadd_r; // (signal)
    intadder_16_f300_uid13 fpsub_4_10_f300_uid2_finalroundadd(
        .clk(clk),
        .x(resultbeforeround),
        .y(n221_o),
        .cin(round),
        .r(fpsub_4_10_f300_uid2_finalroundadd_r));
    assign n225_o = resultrounded[15:14];
    assign n226_o = ~zerofromclose;
    assign n228_o = {n226_o, 1'b0};
    assign n230_o = underflowoverflow == 2'b01;
    assign n233_o = underflowoverflow == 2'b10;
    assign n235_o = underflowoverflow == 2'b11;
    assign n236_o = n233_o | n235_o;
    assign n237_o = ~zerofromclose;
    assign n239_o = {1'b0, n237_o};
    assign n240_o = {n236_o, n230_o};
    always @*
        case (n240_o)
            2'b10: n241_o = 2'b00;
            2'b01: n241_o = n228_o;
            default: n241_o = n239_o;
        endcase
    assign n242_o = resultrounded[13:0];
    assign n243_o = {syncressign_d2, n242_o};
    assign n244_o = resultnoexn[16:15];
    assign n246_o = syncexnxy_d2 == 4'b0101;
    assign n248_o = {1'b1, synceffsub_d2};
    assign n250_o = syncexnxy_d2 == 4'b1010;
    assign n253_o = syncexnxy_d2 == 4'b1110;
    assign n254_o = syncexnxy_d2[3:2];
    assign n255_o = {n253_o, n250_o, n246_o};
    always @*
        case (n255_o)
            3'b100: n256_o = 2'b11;
            3'b010: n256_o = n248_o;
            3'b001: n256_o = n244_o;
            default: n256_o = n254_o;
        endcase
    assign n257_o = resultnoexn[14];
    assign n259_o = syncexnxy_d2 == 4'b0101;
    assign n260_o = syncx_d2[14];
    assign n261_o = n260_o & syncsigny_d2;
    assign n263_o = syncexnxy_d2 == 4'b0000;
    assign n264_o = syncx_d2[14];
    assign n265_o = {n263_o, n259_o};
    always @*
        case (n265_o)
            2'b10: n266_o = n261_o;
            2'b01: n266_o = n257_o;
            default: n266_o = n264_o;
        endcase
    assign n267_o = resultnoexn[13:0];
    assign n269_o = syncexnxy_d2 == 4'b0101;
    assign n270_o = syncx_d2[13:0];
    always @*
        case (n269_o)
            1'b1: n271_o = n267_o;
            default: n271_o = n270_o;
        endcase
    assign n272_o = {exnr, sgnr};
    assign n273_o = {n272_o, expsigr};
    always @(posedge clk)
        n274_q <= newx;
    always @(posedge clk)
        n275_q <= newx_d1;
    always @(posedge clk)
        n276_q <= effsub;
    always @(posedge clk)
        n277_q <= effsub_d1;
    always @(posedge clk)
        n278_q <= selectclosepath;
    always @(posedge clk)
        n279_q <= selectclosepath_d1;
    always @(posedge clk)
        n280_q <= exponentresultfar0;
    always @(posedge clk)
        n281_q <= exponentresultfar0_d1;
    always @(posedge clk)
        n282_q <= synceffsub;
    always @(posedge clk)
        n283_q <= synceffsub_d1;
    always @(posedge clk)
        n284_q <= syncx;
    always @(posedge clk)
        n285_q <= syncx_d1;
    always @(posedge clk)
        n286_q <= syncsigny;
    always @(posedge clk)
        n287_q <= syncsigny_d1;
    always @(posedge clk)
        n288_q <= syncressign;
    always @(posedge clk)
        n289_q <= syncressign_d1;
    assign n290_o = {n241_o, n243_o};
    always @(posedge clk)
        n291_q <= syncexnxy;
    always @(posedge clk)
        n292_q <= syncexnxy_d1;
endmodule

