module intadder_16_f300_uid133
    (input wire clk,
        input wire[15:0] x,
        input wire[15:0] y,
        input wire cin,
        output wire[15:0] r);
    wire[15:0] rtmp;
    wire[15:0] y_d1;
    wire[15:0] y_d2;
    wire[15:0] n468_o;
    wire[15:0] n469_o;
    wire[15:0] n470_o;
    reg[15:0] n471_q;
    reg[15:0] n472_q;
    assign r = rtmp;
    assign rtmp = n470_o; // (signal)
    assign y_d1 = n471_q; // (signal)
    assign y_d2 = n472_q; // (signal)
    assign n468_o = x+y_d2;
    assign n469_o = {15'b0, cin};  //  uext
    assign n470_o = n468_o+n469_o;
    always @(posedge clk)
        n471_q <= y;
    always @(posedge clk)
        n472_q <= y_d1;
endmodule

module intadder_14_f300_uid10
    (input wire clk,
        input wire[13:0] x,
        input wire[13:0] y,
        input wire cin,
        output wire[13:0] r);
    wire[13:0] rtmp;
    wire[13:0] x_d1;
    wire[13:0] x_d2;
    wire[13:0] y_d1;
    wire[13:0] y_d2;
    wire[13:0] n454_o;
    wire[13:0] n455_o;
    wire[13:0] n456_o;
    reg[13:0] n457_q;
    reg[13:0] n458_q;
    reg[13:0] n459_q;
    reg[13:0] n460_q;
    assign r = rtmp;
    assign rtmp = n456_o; // (signal)
    assign x_d1 = n457_q; // (signal)
    assign x_d2 = n458_q; // (signal)
    assign y_d1 = n459_q; // (signal)
    assign y_d2 = n460_q; // (signal)
    assign n454_o = x_d2+y_d2;
    assign n455_o = {13'b0, cin};  //  uext
    assign n456_o = n454_o+n455_o;
    always @(posedge clk)
        n457_q <= x;
    always @(posedge clk)
        n458_q <= x_d1;
    always @(posedge clk)
        n459_q <= y;
    always @(posedge clk)
        n460_q <= y_d1;
endmodule

module rightshiftersticky11_by_max_13_f300_uid8
    (input wire clk,
        input wire[10:0] x,
        input wire[3:0] s,
        output wire[12:0] r,
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
    wire[12:0] n377_o;
    wire[7:0] n379_o;
    wire n381_o;
    wire n382_o;
    wire n383_o;
    wire n384_o;
    wire n386_o;
    wire n387_o;
    wire[12:0] n388_o;
    wire[4:0] n389_o;
    wire[12:0] n391_o;
    wire[3:0] n393_o;
    wire n395_o;
    wire n396_o;
    wire n397_o;
    wire n398_o;
    wire n399_o;
    wire n401_o;
    wire n402_o;
    wire[12:0] n403_o;
    wire[8:0] n404_o;
    wire[12:0] n406_o;
    wire[1:0] n408_o;
    wire n410_o;
    wire n411_o;
    wire n412_o;
    wire n413_o;
    wire n414_o;
    wire n416_o;
    wire n417_o;
    wire[12:0] n418_o;
    wire[10:0] n419_o;
    wire[12:0] n421_o;
    wire n423_o;
    wire n425_o;
    wire n426_o;
    wire n427_o;
    wire n428_o;
    wire n429_o;
    wire n431_o;
    wire n432_o;
    wire[12:0] n433_o;
    wire[11:0] n434_o;
    wire[12:0] n436_o;
    reg[3:0] n437_q;
    reg[3:0] n438_q;
    reg n439_q;
    reg[12:0] n440_q;
    reg[12:0] n441_q;
    reg n442_q;
    reg[12:0] n443_q;
    reg[12:0] n444_q;
    assign r = level0;
    assign sticky = stk0;
    assign ps = s; // (signal)
    assign ps_d1 = n437_q; // (signal)
    assign ps_d2 = n438_q; // (signal)
    assign xpadded = n377_o; // (signal)
    assign level4 = xpadded; // (signal)
    assign stk3 = n384_o; // (signal)
    assign stk3_d1 = n439_q; // (signal)
    assign level3 = n388_o; // (signal)
    assign level3_d1 = n440_q; // (signal)
    assign stk2 = n399_o; // (signal)
    assign level2 = n403_o; // (signal)
    assign level2_d1 = n441_q; // (signal)
    assign stk1 = n414_o; // (signal)
    assign stk1_d1 = n442_q; // (signal)
    assign level1 = n418_o; // (signal)
    assign level1_d1 = n443_q; // (signal)
    assign level1_d2 = n444_q; // (signal)
    assign stk0 = n429_o; // (signal)
    assign level0 = n433_o; // (signal)
    assign n377_o = {x, 2'b00};
    assign n379_o = level4[7:0];
    assign n381_o = n379_o != 8'b00000000;
    assign n382_o = ps[3];
    assign n383_o = n381_o & n382_o;
    assign n384_o = n383_o ? 1'b1 : 1'b0;
    assign n386_o = ps[3];
    assign n387_o = ~n386_o;
    assign n388_o = n387_o ? level4 : n391_o;
    assign n389_o = level4[12:8];
    assign n391_o = {8'b00000000, n389_o};
    assign n393_o = level3_d1[3:0];
    assign n395_o = n393_o != 4'b0000;
    assign n396_o = ps_d1[2];
    assign n397_o = n395_o & n396_o;
    assign n398_o = n397_o | stk3_d1;
    assign n399_o = n398_o ? 1'b1 : 1'b0;
    assign n401_o = ps[2];
    assign n402_o = ~n401_o;
    assign n403_o = n402_o ? level3 : n406_o;
    assign n404_o = level3[12:4];
    assign n406_o = {4'b0000, n404_o};
    assign n408_o = level2_d1[1:0];
    assign n410_o = n408_o != 2'b00;
    assign n411_o = ps_d1[1];
    assign n412_o = n410_o & n411_o;
    assign n413_o = n412_o | stk2;
    assign n414_o = n413_o ? 1'b1 : 1'b0;
    assign n416_o = ps[1];
    assign n417_o = ~n416_o;
    assign n418_o = n417_o ? level2 : n421_o;
    assign n419_o = level2[12:2];
    assign n421_o = {2'b00, n419_o};
    assign n423_o = level1_d2[0];
    assign n425_o = n423_o != 1'b0;
    assign n426_o = ps_d2[0];
    assign n427_o = n425_o & n426_o;
    assign n428_o = n427_o | stk1_d1;
    assign n429_o = n428_o ? 1'b1 : 1'b0;
    assign n431_o = ps[0];
    assign n432_o = ~n431_o;
    assign n433_o = n432_o ? level1 : n436_o;
    assign n434_o = level1[12:1];
    assign n436_o = {1'b0, n434_o};
    always @(posedge clk)
        n437_q <= ps;
    always @(posedge clk)
        n438_q <= ps_d1;
    always @(posedge clk)
        n439_q <= stk3;
    always @(posedge clk)
        n440_q <= level3;
    always @(posedge clk)
        n441_q <= level2;
    always @(posedge clk)
        n442_q <= stk1;
    always @(posedge clk)
        n443_q <= level1;
    always @(posedge clk)
        n444_q <= level1_d1;
endmodule

module normalizer_z_12_12_12_f300_uid6
    (input wire clk,
        input wire[11:0] x,
        output wire[3:0] count,
        output wire[11:0] r);
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
    wire[7:0] n311_o;
    wire n313_o;
    wire n314_o;
    wire n316_o;
    wire[11:0] n317_o;
    wire[3:0] n318_o;
    wire[11:0] n320_o;
    wire[3:0] n322_o;
    wire n324_o;
    wire n325_o;
    wire n327_o;
    wire[11:0] n328_o;
    wire[7:0] n329_o;
    wire[11:0] n331_o;
    wire[1:0] n333_o;
    wire n335_o;
    wire n336_o;
    wire n338_o;
    wire[11:0] n339_o;
    wire[9:0] n340_o;
    wire[11:0] n342_o;
    wire n344_o;
    wire n346_o;
    wire n347_o;
    wire n349_o;
    wire[11:0] n350_o;
    wire[10:0] n351_o;
    wire[11:0] n353_o;
    wire[1:0] n354_o;
    wire[2:0] n355_o;
    wire[3:0] n356_o;
    reg[11:0] n357_q;
    reg n358_q;
    reg n359_q;
    reg[11:0] n360_q;
    reg n361_q;
    assign count = scount;
    assign r = level0;
    assign level4 = x; // (signal)
    assign level4_d1 = n357_q; // (signal)
    assign count3 = n314_o; // (signal)
    assign count3_d1 = n358_q; // (signal)
    assign level3 = n317_o; // (signal)
    assign count2 = n325_o; // (signal)
    assign count2_d1 = n359_q; // (signal)
    assign level2 = n328_o; // (signal)
    assign level2_d1 = n360_q; // (signal)
    assign count1 = n336_o; // (signal)
    assign count1_d1 = n361_q; // (signal)
    assign level1 = n339_o; // (signal)
    assign count0 = n347_o; // (signal)
    assign level0 = n350_o; // (signal)
    assign scount = n356_o; // (signal)
    assign n311_o = level4_d1[11:4];
    assign n313_o = n311_o == 8'b00000000;
    assign n314_o = n313_o ? 1'b1 : 1'b0;
    assign n316_o = ~count3;
    assign n317_o = n316_o ? level4_d1 : n320_o;
    assign n318_o = level4_d1[3:0];
    assign n320_o = {n318_o, 8'b00000000};
    assign n322_o = level3[11:8];
    assign n324_o = n322_o == 4'b0000;
    assign n325_o = n324_o ? 1'b1 : 1'b0;
    assign n327_o = ~count2;
    assign n328_o = n327_o ? level3 : n331_o;
    assign n329_o = level3[7:0];
    assign n331_o = {n329_o, 4'b0000};
    assign n333_o = level2[11:10];
    assign n335_o = n333_o == 2'b00;
    assign n336_o = n335_o ? 1'b1 : 1'b0;
    assign n338_o = ~count1_d1;
    assign n339_o = n338_o ? level2_d1 : n342_o;
    assign n340_o = level2_d1[9:0];
    assign n342_o = {n340_o, 2'b00};
    assign n344_o = level1[11];
    assign n346_o = n344_o == 1'b0;
    assign n347_o = n346_o ? 1'b1 : 1'b0;
    assign n349_o = ~count0;
    assign n350_o = n349_o ? level1 : n353_o;
    assign n351_o = level1[10:0];
    assign n353_o = {n351_o, 1'b0};
    assign n354_o = {count3_d1, count2_d1};
    assign n355_o = {n354_o, count1_d1};
    assign n356_o = {n355_o, count0};
    always @(posedge clk)
        n357_q <= level4;
    always @(posedge clk)
        n358_q <= count3;
    always @(posedge clk)
        n359_q <= count2;
    always @(posedge clk)
        n360_q <= level2;
    always @(posedge clk)
        n361_q <= count1;
endmodule

module intdualsub_13_f300_uid4
    (input wire clk,
        input wire[12:0] x,
        input wire[12:0] y,
        output wire[12:0] xmy,
        output wire[12:0] ymx);
    wire[12:0] temprxmy;
    wire[12:0] temprymx;
    wire[12:0] n289_o;
    wire[12:0] n290_o;
    wire[12:0] n293_o;
    wire[12:0] n294_o;
    wire[12:0] n295_o;
    wire[12:0] n298_o;
    assign xmy = temprxmy;
    assign ymx = temprymx;
    assign temprxmy = n293_o; // (signal)
    assign temprymx = n298_o; // (signal)
    assign n289_o = ~y;
    assign n290_o = x+n289_o;
    assign n293_o = n290_o+13'b0000000000001;
    assign n294_o = ~x;
    assign n295_o = y+n294_o;
    assign n298_o = n295_o+13'b0000000000001;
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
    wire[4:0] signedexponentx;
    wire[4:0] signedexponenty;
    wire[4:0] exponentdifferencexy;
    wire[3:0] exponentdifferenceyx;
    wire swap;
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
    wire[16:0] n49_o;
    wire[16:0] n50_o;
    wire[3:0] n51_o;
    wire[3:0] n52_o;
    wire n54_o;
    wire n55_o;
    wire n56_o;
    wire[2:0] n57_o;
    wire n59_o;
    wire n60_o;
    wire[1:0] n62_o;
    wire[1:0] n63_o;
    wire[3:0] n64_o;
    wire n65_o;
    wire[9:0] n66_o;
    wire[11:0] n68_o;
    wire[12:0] n70_o;
    wire n71_o;
    wire[9:0] n72_o;
    wire[11:0] n74_o;
    wire[12:0] n76_o;
    wire n78_o;
    wire[9:0] n79_o;
    wire[12:0] n81_o;
    reg[12:0] n82_o;
    wire[12:0] fpadd_4_10_f300_uid2_dualsubclose_n83;
    wire[12:0] fpadd_4_10_f300_uid2_dualsubclose_n84;
    wire[12:0] fpadd_4_10_f300_uid2_dualsubclose_xmy;
    wire[12:0] fpadd_4_10_f300_uid2_dualsubclose_ymx;
    wire n89_o;
    wire[11:0] n90_o;
    wire n91_o;
    wire[11:0] n92_o;
    wire[11:0] n93_o;
    wire n96_o;
    wire n97_o;
    wire n98_o;
    wire n99_o;
    wire n100_o;
    wire n101_o;
    wire[3:0] norm_n102;
    wire[11:0] norm_n103;
    wire[3:0] norm_count;
    wire[11:0] norm_r;
    wire n108_o;
    wire n109_o;
    wire n110_o;
    wire n113_o;
    wire n114_o;
    wire[3:0] n116_o;
    wire[5:0] n118_o;
    wire[5:0] n120_o;
    wire[5:0] n121_o;
    wire[9:0] n122_o;
    wire[15:0] n123_o;
    wire[9:0] n124_o;
    wire[10:0] n126_o;
    wire[12:0] rightshiftercomponent_n127;
    wire rightshiftercomponent_n128;
    wire[12:0] rightshiftercomponent_r;
    wire rightshiftercomponent_sticky;
    wire[13:0] n134_o;
    wire[3:0] n135_o;
    wire[3:0] n136_o;
    wire[3:0] n137_o;
    wire[1:0] n138_o;
    wire[13:0] n139_o;
    wire[13:0] n140_o;
    wire[9:0] n141_o;
    wire[11:0] n143_o;
    wire[13:0] n145_o;
    wire n146_o;
    wire n147_o;
    wire[13:0] fpadd_4_10_f300_uid2_fracaddfar_n148;
    wire[13:0] fpadd_4_10_f300_uid2_fracaddfar_r;
    wire[1:0] n151_o;
    wire[9:0] n152_o;
    wire n154_o;
    wire[9:0] n155_o;
    wire[9:0] n156_o;
    wire n158_o;
    wire[9:0] n159_o;
    wire[9:0] n160_o;
    wire n161_o;
    wire n163_o;
    wire n164_o;
    wire n165_o;
    wire n167_o;
    wire n168_o;
    wire n169_o;
    wire n171_o;
    wire n172_o;
    wire n173_o;
    wire n174_o;
    wire n176_o;
    wire n177_o;
    wire n178_o;
    wire n179_o;
    wire n180_o;
    wire n181_o;
    wire n182_o;
    wire n183_o;
    wire n184_o;
    wire n187_o;
    wire[1:0] n188_o;
    wire n191_o;
    wire[1:0] n192_o;
    wire n194_o;
    wire n195_o;
    wire n196_o;
    wire n197_o;
    wire n198_o;
    wire[3:0] n199_o;
    wire[4:0] n200_o;
    wire n201_o;
    wire[5:0] n202_o;
    wire[3:0] n203_o;
    wire[5:0] n205_o;
    wire[5:0] n206_o;
    wire[15:0] n207_o;
    wire n209_o;
    reg[15:0] n210_o;
    wire n212_o;
    reg n213_o;
    wire n214_o;
    localparam [15:0] n215_o = 16'b0000000000000000;
    wire[15:0] fpadd_4_10_f300_uid2_finalroundadd_n216;
    wire[15:0] fpadd_4_10_f300_uid2_finalroundadd_r;
    wire[1:0] n219_o;
    wire n220_o;
    wire[1:0] n222_o;
    wire n224_o;
    wire n227_o;
    wire n229_o;
    wire n230_o;
    wire n231_o;
    wire[1:0] n233_o;
    wire[1:0] n234_o;
    reg[1:0] n235_o;
    wire[13:0] n236_o;
    wire[14:0] n237_o;
    wire[1:0] n238_o;
    wire n240_o;
    wire[1:0] n242_o;
    wire n244_o;
    wire n247_o;
    wire[1:0] n248_o;
    wire[2:0] n249_o;
    reg[1:0] n250_o;
    wire n251_o;
    wire n253_o;
    wire n254_o;
    wire n255_o;
    wire n257_o;
    wire n258_o;
    wire[1:0] n259_o;
    reg n260_o;
    wire[13:0] n261_o;
    wire n263_o;
    wire[13:0] n264_o;
    reg[13:0] n265_o;
    wire[2:0] n266_o;
    wire[16:0] n267_o;
    reg[16:0] n268_q;
    reg[16:0] n269_q;
    reg n270_q;
    reg n271_q;
    reg n272_q;
    reg n273_q;
    reg[5:0] n274_q;
    reg[5:0] n275_q;
    reg n276_q;
    reg n277_q;
    reg[16:0] n278_q;
    reg[16:0] n279_q;
    reg n280_q;
    reg n281_q;
    reg n282_q;
    reg n283_q;
    wire[16:0] n284_o;
    reg[3:0] n285_q;
    reg[3:0] n286_q;
    assign R = n267_o;
    assign inx = X; // (signal)
    assign iny = Y; // (signal)
    assign exceptionxsuperiory = n27_o; // (signal)
    assign exceptionxequaly = n33_o; // (signal)
    assign signedexponentx = n37_o; // (signal)
    assign signedexponenty = n40_o; // (signal)
    assign exponentdifferencexy = n41_o; // (signal)
    assign exponentdifferenceyx = n44_o; // (signal)
    assign swap = n48_o; // (signal)
    assign newx = n49_o; // (signal)
    assign newx_d1 = n268_q; // (signal)
    assign newx_d2 = n269_q; // (signal)
    assign newy = n50_o; // (signal)
    assign exponentdifference = n51_o; // (signal)
    assign shiftval = exponentdifference; // (signal)
    assign effsub = n56_o; // (signal)
    assign effsub_d1 = n270_q; // (signal)
    assign effsub_d2 = n271_q; // (signal)
    assign selectclosepath = n60_o; // (signal)
    assign selectclosepath_d1 = n272_q; // (signal)
    assign selectclosepath_d2 = n273_q; // (signal)
    assign sdexnxy = n64_o; // (signal)
    assign pipesigny = n65_o; // (signal)
    assign fracxclose1 = n70_o; // (signal)
    assign fracyclose1 = n82_o; // (signal)
    assign fracrclosexmy = fpadd_4_10_f300_uid2_dualsubclose_n83; // (signal)
    assign fracrcloseymx = fpadd_4_10_f300_uid2_dualsubclose_n84; // (signal)
    assign fracsignclose = n89_o; // (signal)
    assign fracrclose1 = n92_o; // (signal)
    assign ressign = n98_o; // (signal)
    assign nzerosnew = norm_n102; // (signal)
    assign shiftedfrac = norm_n103; // (signal)
    assign roundclose0 = n110_o; // (signal)
    assign resultcloseiszero0 = n114_o; // (signal)
    assign exponentresultclose = n121_o; // (signal)
    assign resultbeforeroundclose = n123_o; // (signal)
    assign roundclose = roundclose0; // (signal)
    assign resultcloseiszero = resultcloseiszero0; // (signal)
    assign fracnewy = n126_o; // (signal)
    assign shiftedfracy = rightshiftercomponent_n127; // (signal)
    assign sticky = rightshiftercomponent_n128; // (signal)
    assign fracyfar = n134_o; // (signal)
    assign effsubvector = n139_o; // (signal)
    assign fracyfarxorop = n140_o; // (signal)
    assign fracxfar = n145_o; // (signal)
    assign cinaddfar = n147_o; // (signal)
    assign fracresultfar0 = fpadd_4_10_f300_uid2_fracaddfar_n148; // (signal)
    assign fracresultfarnormstage = fracresultfar0; // (signal)
    assign fracleadingbits = n151_o; // (signal)
    assign fracresultfar1 = n155_o; // (signal)
    assign fracresultroundbit = n164_o; // (signal)
    assign fracresultstickybit = n172_o; // (signal)
    assign roundfar1 = n184_o; // (signal)
    assign expoperationsel = n188_o; // (signal)
    assign exponentupdate = n202_o; // (signal)
    assign exponentresultfar0 = n205_o; // (signal)
    assign exponentresultfar0_d1 = n274_q; // (signal)
    assign exponentresultfar0_d2 = n275_q; // (signal)
    assign exponentresultfar1 = n206_o; // (signal)
    assign resultbeforeroundfar = n207_o; // (signal)
    assign roundfar = roundfar1; // (signal)
    assign resultbeforeround = n210_o; // (signal)
    assign round = n213_o; // (signal)
    assign zerofromclose = n214_o; // (signal)
    assign resultrounded = fpadd_4_10_f300_uid2_finalroundadd_n216; // (signal)
    assign synceffsub = effsub; // (signal)
    assign synceffsub_d1 = n276_q; // (signal)
    assign synceffsub_d2 = n277_q; // (signal)
    assign syncx = newx; // (signal)
    assign syncx_d1 = n278_q; // (signal)
    assign syncx_d2 = n279_q; // (signal)
    assign syncsigny = pipesigny; // (signal)
    assign syncsigny_d1 = n280_q; // (signal)
    assign syncsigny_d2 = n281_q; // (signal)
    assign syncressign = ressign; // (signal)
    assign syncressign_d1 = n282_q; // (signal)
    assign syncressign_d2 = n283_q; // (signal)
    assign underflowoverflow = n219_o; // (signal)
    assign resultnoexn = n284_o; // (signal)
    assign syncexnxy = sdexnxy; // (signal)
    assign syncexnxy_d1 = n285_q; // (signal)
    assign syncexnxy_d2 = n286_q; // (signal)
    assign exnr = n250_o; // (signal)
    assign sgnr = n260_o; // (signal)
    assign expsigr = n265_o; // (signal)
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
    assign n49_o = swap ? iny : inx;
    assign n50_o = swap ? inx : iny;
    assign n51_o = swap ? exponentdifferenceyx : n52_o;
    assign n52_o = exponentdifferencexy[3:0];
    assign n54_o = newx[14];
    assign n55_o = newy[14];
    assign n56_o = n54_o ^ n55_o;
    assign n57_o = exponentdifference[3:1];
    assign n59_o = n57_o == 3'b000;
    assign n60_o = n59_o ? effsub : 1'b0;
    assign n62_o = newx[16:15];
    assign n63_o = newy[16:15];
    assign n64_o = {n62_o, n63_o};
    assign n65_o = newy[14];
    assign n66_o = newx[9:0];
    assign n68_o = {2'b01, n66_o};
    assign n70_o = {n68_o, 1'b0};
    assign n71_o = exponentdifference[0];
    assign n72_o = newy[9:0];
    assign n74_o = {2'b01, n72_o};
    assign n76_o = {n74_o, 1'b0};
    assign n78_o = n71_o == 1'b0;
    assign n79_o = newy[9:0];
    assign n81_o = {3'b001, n79_o};
    always @*
        case (n78_o)
            1'b1: n82_o = n76_o;
            default: n82_o = n81_o;
        endcase
    assign fpadd_4_10_f300_uid2_dualsubclose_n83 = fpadd_4_10_f300_uid2_dualsubclose_xmy; // (signal)
    assign fpadd_4_10_f300_uid2_dualsubclose_n84 = fpadd_4_10_f300_uid2_dualsubclose_ymx; // (signal)
    intdualsub_13_f300_uid4 fpadd_4_10_f300_uid2_dualsubclose(
        .clk(clk),
        .x(fracxclose1),
        .y(fracyclose1),
        .xmy(fpadd_4_10_f300_uid2_dualsubclose_xmy),
        .ymx(fpadd_4_10_f300_uid2_dualsubclose_ymx));
    assign n89_o = fracrclosexmy[12];
    assign n90_o = fracrclosexmy[11:0];
    assign n91_o = ~fracsignclose;
    assign n92_o = n91_o ? n90_o : n93_o;
    assign n93_o = fracrcloseymx[11:0];
    assign n96_o = fracrclose1 == 12'b000000000000;
    assign n97_o = selectclosepath & n96_o;
    assign n98_o = n97_o ? 1'b0 : n101_o;
    assign n99_o = newx[14];
    assign n100_o = selectclosepath & fracsignclose;
    assign n101_o = n99_o ^ n100_o;
    assign norm_n102 = norm_count; // (signal)
    assign norm_n103 = norm_r; // (signal)
    normalizer_z_12_12_12_f300_uid6 norm(
        .clk(clk),
        .x(fracrclose1),
        .count(norm_count),
        .r(norm_r));
    assign n108_o = shiftedfrac[0];
    assign n109_o = shiftedfrac[1];
    assign n110_o = n108_o & n109_o;
    assign n113_o = nzerosnew == 4'b1111;
    assign n114_o = n113_o ? 1'b1 : 1'b0;
    assign n116_o = newx_d2[13:10];
    assign n118_o = {2'b00, n116_o};
    assign n120_o = {2'b00, nzerosnew};
    assign n121_o = n118_o-n120_o;
    assign n122_o = shiftedfrac[10:1];
    assign n123_o = {exponentresultclose, n122_o};
    assign n124_o = newy[9:0];
    assign n126_o = {1'b1, n124_o};
    assign rightshiftercomponent_n127 = rightshiftercomponent_r; // (signal)
    assign rightshiftercomponent_n128 = rightshiftercomponent_sticky; // (signal)
    rightshiftersticky11_by_max_13_f300_uid8 rightshiftercomponent(
        .clk(clk),
        .x(fracnewy),
        .s(shiftval),
        .r(rightshiftercomponent_r),
        .sticky(rightshiftercomponent_sticky));
    assign n134_o = {1'b0, shiftedfracy};
    assign n135_o = {effsub, effsub, effsub, effsub};
    assign n136_o = {effsub, effsub, effsub, effsub};
    assign n137_o = {effsub, effsub, effsub, effsub};
    assign n138_o = {effsub, effsub};
    assign n139_o = {n135_o, n136_o, n137_o, n138_o};
    assign n140_o = fracyfar ^ effsubvector;
    assign n141_o = newx[9:0];
    assign n143_o = {2'b01, n141_o};
    assign n145_o = {n143_o, 2'b00};
    assign n146_o = ~sticky;
    assign n147_o = effsub_d2 & n146_o;
    assign fpadd_4_10_f300_uid2_fracaddfar_n148 = fpadd_4_10_f300_uid2_fracaddfar_r; // (signal)
    intadder_14_f300_uid10 fpadd_4_10_f300_uid2_fracaddfar(
        .clk(clk),
        .x(fracxfar),
        .y(fracyfarxorop),
        .cin(cinaddfar),
        .r(fpadd_4_10_f300_uid2_fracaddfar_r));
    assign n151_o = fracresultfarnormstage[13:12];
    assign n152_o = fracresultfarnormstage[10:1];
    assign n154_o = fracleadingbits == 2'b00;
    assign n155_o = n154_o ? n152_o : n159_o;
    assign n156_o = fracresultfarnormstage[11:2];
    assign n158_o = fracleadingbits == 2'b01;
    assign n159_o = n158_o ? n156_o : n160_o;
    assign n160_o = fracresultfarnormstage[12:3];
    assign n161_o = fracresultfarnormstage[0];
    assign n163_o = fracleadingbits == 2'b00;
    assign n164_o = n163_o ? n161_o : n168_o;
    assign n165_o = fracresultfarnormstage[1];
    assign n167_o = fracleadingbits == 2'b01;
    assign n168_o = n167_o ? n165_o : n169_o;
    assign n169_o = fracresultfarnormstage[2];
    assign n171_o = fracleadingbits == 2'b00;
    assign n172_o = n171_o ? sticky : n177_o;
    assign n173_o = fracresultfarnormstage[0];
    assign n174_o = n173_o | sticky;
    assign n176_o = fracleadingbits == 2'b01;
    assign n177_o = n176_o ? n174_o : n181_o;
    assign n178_o = fracresultfarnormstage[1];
    assign n179_o = fracresultfarnormstage[0];
    assign n180_o = n178_o | n179_o;
    assign n181_o = n180_o | sticky;
    assign n182_o = fracresultfar1[0];
    assign n183_o = fracresultstickybit | n182_o;
    assign n184_o = fracresultroundbit & n183_o;
    assign n187_o = fracleadingbits == 2'b00;
    assign n188_o = n187_o ? 2'b11 : n192_o;
    assign n191_o = fracleadingbits == 2'b01;
    assign n192_o = n191_o ? 2'b00 : 2'b01;
    assign n194_o = expoperationsel[1];
    assign n195_o = expoperationsel[1];
    assign n196_o = expoperationsel[1];
    assign n197_o = expoperationsel[1];
    assign n198_o = expoperationsel[1];
    assign n199_o = {n198_o, n197_o, n196_o, n195_o};
    assign n200_o = {n199_o, n194_o};
    assign n201_o = expoperationsel[0];
    assign n202_o = {n200_o, n201_o};
    assign n203_o = newx[13:10];
    assign n205_o = {2'b00, n203_o};
    assign n206_o = exponentresultfar0_d2+exponentupdate;
    assign n207_o = {exponentresultfar1, fracresultfar1};
    assign n209_o = selectclosepath_d2 == 1'b1;
    always @*
        case (n209_o)
            1'b1: n210_o = resultbeforeroundclose;
            default: n210_o = resultbeforeroundfar;
        endcase
    assign n212_o = selectclosepath_d2 == 1'b1;
    always @*
        case (n212_o)
            1'b1: n213_o = roundclose;
            default: n213_o = roundfar;
        endcase
    assign n214_o = selectclosepath_d2 & resultcloseiszero;
    assign fpadd_4_10_f300_uid2_finalroundadd_n216 = fpadd_4_10_f300_uid2_finalroundadd_r; // (signal)
    intadder_16_f300_uid133 fpadd_4_10_f300_uid2_finalroundadd(
        .clk(clk),
        .x(resultbeforeround),
        .y(n215_o),
        .cin(round),
        .r(fpadd_4_10_f300_uid2_finalroundadd_r));
    assign n219_o = resultrounded[15:14];
    assign n220_o = ~zerofromclose;
    assign n222_o = {n220_o, 1'b0};
    assign n224_o = underflowoverflow == 2'b01;
    assign n227_o = underflowoverflow == 2'b10;
    assign n229_o = underflowoverflow == 2'b11;
    assign n230_o = n227_o | n229_o;
    assign n231_o = ~zerofromclose;
    assign n233_o = {1'b0, n231_o};
    assign n234_o = {n230_o, n224_o};
    always @*
        case (n234_o)
            2'b10: n235_o = 2'b00;
            2'b01: n235_o = n222_o;
            default: n235_o = n233_o;
        endcase
    assign n236_o = resultrounded[13:0];
    assign n237_o = {syncressign_d2, n236_o};
    assign n238_o = resultnoexn[16:15];
    assign n240_o = syncexnxy_d2 == 4'b0101;
    assign n242_o = {1'b1, synceffsub_d2};
    assign n244_o = syncexnxy_d2 == 4'b1010;
    assign n247_o = syncexnxy_d2 == 4'b1110;
    assign n248_o = syncexnxy_d2[3:2];
    assign n249_o = {n247_o, n244_o, n240_o};
    always @*
        case (n249_o)
            3'b100: n250_o = 2'b11;
            3'b010: n250_o = n242_o;
            3'b001: n250_o = n238_o;
            default: n250_o = n248_o;
        endcase
    assign n251_o = resultnoexn[14];
    assign n253_o = syncexnxy_d2 == 4'b0101;
    assign n254_o = syncx_d2[14];
    assign n255_o = n254_o & syncsigny_d2;
    assign n257_o = syncexnxy_d2 == 4'b0000;
    assign n258_o = syncx_d2[14];
    assign n259_o = {n257_o, n253_o};
    always @*
        case (n259_o)
            2'b10: n260_o = n255_o;
            2'b01: n260_o = n251_o;
            default: n260_o = n258_o;
        endcase
    assign n261_o = resultnoexn[13:0];
    assign n263_o = syncexnxy_d2 == 4'b0101;
    assign n264_o = syncx_d2[13:0];
    always @*
        case (n263_o)
            1'b1: n265_o = n261_o;
            default: n265_o = n264_o;
        endcase
    assign n266_o = {exnr, sgnr};
    assign n267_o = {n266_o, expsigr};
    always @(posedge clk)
        n268_q <= newx;
    always @(posedge clk)
        n269_q <= newx_d1;
    always @(posedge clk)
        n270_q <= effsub;
    always @(posedge clk)
        n271_q <= effsub_d1;
    always @(posedge clk)
        n272_q <= selectclosepath;
    always @(posedge clk)
        n273_q <= selectclosepath_d1;
    always @(posedge clk)
        n274_q <= exponentresultfar0;
    always @(posedge clk)
        n275_q <= exponentresultfar0_d1;
    always @(posedge clk)
        n276_q <= synceffsub;
    always @(posedge clk)
        n277_q <= synceffsub_d1;
    always @(posedge clk)
        n278_q <= syncx;
    always @(posedge clk)
        n279_q <= syncx_d1;
    always @(posedge clk)
        n280_q <= syncsigny;
    always @(posedge clk)
        n281_q <= syncsigny_d1;
    always @(posedge clk)
        n282_q <= syncressign;
    always @(posedge clk)
        n283_q <= syncressign_d1;
    assign n284_o = {n235_o, n237_o};
    always @(posedge clk)
        n285_q <= syncexnxy;
    always @(posedge clk)
        n286_q <= syncexnxy_d1;
endmodule

