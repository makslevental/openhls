module intadder_12_f300_uid1333
    (input wire clk,
        input wire [11:0] x,
        input wire [11:0] y,
        input wire cin,
       output wire [11:0] r);
    wire cin_1;
    wire cin_1_d1;
    wire[12:0] x_1;
    wire[12:0] x_1_d1;
    wire[12:0] y_1;
    wire[12:0] y_1_d1;
    wire[12:0] y_1_d2;
    wire[12:0] y_1_d3;
    wire[12:0] s_1;
    wire[11:0] r_1;
    wire[12:0] n479_o;
    wire[12:0] n481_o;
    wire[12:0] n482_o;
    wire[12:0] n483_o;
    wire[12:0] n484_o;
    wire[11:0] n485_o;
    reg n486_q;
    reg[12:0] n487_q;
    reg[12:0] n488_q;
    reg[12:0] n489_q;
    reg[12:0] n490_q;
    assign r = r_1;
    assign cin_1 = cin; // (signal)
    assign cin_1_d1 = n486_q; // (signal)
    assign x_1 = n479_o; // (signal)
    assign x_1_d1 = n487_q; // (signal)
    assign y_1 = n481_o; // (signal)
    assign y_1_d1 = n488_q; // (signal)
    assign y_1_d2 = n489_q; // (signal)
    assign y_1_d3 = n490_q; // (signal)
    assign s_1 = n484_o; // (signal)
    assign r_1 = n485_o; // (signal)
    assign n479_o = {1'b0, x};
    assign n481_o = {1'b0, y};
    assign n482_o = x_1_d1+y_1_d3;
    assign n483_o = {12'b0, cin_1_d1};  //  uext
    assign n484_o = n482_o+n483_o;
    assign n485_o = s_1[11:0];
    always @(posedge clk)
        n486_q <= cin_1;
    always @(posedge clk)
        n487_q <= x_1;
    always @(posedge clk)
        n488_q <= y_1;
    always @(posedge clk)
        n489_q <= y_1_d1;
    always @(posedge clk)
        n490_q <= y_1_d2;
endmodule

module intadder_9_f300_uid1000
    (input wire clk,
        input wire [8:0] x,
        input wire [8:0] y,
        input wire cin,
       output wire [8:0] r);
    wire[8:0] rtmp;
    wire[8:0] x_d1;
    wire[8:0] x_d2;
    wire[8:0] y_d1;
    wire[8:0] y_d2;
    wire[8:0] n461_o;
    wire[8:0] n462_o;
    wire[8:0] n463_o;
    reg[8:0] n464_q;
    reg[8:0] n465_q;
    reg[8:0] n466_q;
    reg[8:0] n467_q;
    assign r = rtmp;
    assign rtmp = n463_o; // (signal)
    assign x_d1 = n464_q; // (signal)
    assign x_d2 = n465_q; // (signal)
    assign y_d1 = n466_q; // (signal)
    assign y_d2 = n467_q; // (signal)
    assign n461_o = x_d2+y_d2;
    assign n462_o = {8'b0, cin};  //  uext
    assign n463_o = n461_o+n462_o;
    always @(posedge clk)
        n464_q <= x;
    always @(posedge clk)
        n465_q <= x_d1;
    always @(posedge clk)
        n466_q <= y;
    always @(posedge clk)
        n467_q <= y_d1;
endmodule

module rightshiftersticky6_by_max_8_f300_uid8888
    (input wire clk,
        input wire [5:0] x,
        input wire [3:0] s,
       output wire [7:0] r,
        output wire sticky);
    wire[3:0] ps;
    wire[3:0] ps_d1;
    wire[3:0] ps_d2;
    wire[7:0] xpadded;
    wire[7:0] level4;
    wire[7:0] level4_d1;
    wire stk3;
    wire[7:0] level3;
    wire[7:0] level3_d1;
    wire stk2;
    wire stk2_d1;
    wire[7:0] level2;
    wire[7:0] level2_d1;
    wire[7:0] level2_d2;
    wire stk1;
    wire[7:0] level1;
    wire[7:0] level1_d1;
    wire[7:0] level1_d2;
    wire stk0;
    wire[7:0] level0;
    wire[7:0] n386_o;
    wire n389_o;
    wire n390_o;
    wire n391_o;
    wire n392_o;
    wire n394_o;
    wire n395_o;
    wire[7:0] n396_o;
    wire[3:0] n399_o;
    wire n401_o;
    wire n402_o;
    wire n403_o;
    wire n404_o;
    wire n405_o;
    wire n407_o;
    wire n408_o;
    wire[7:0] n409_o;
    wire[3:0] n410_o;
    wire[7:0] n412_o;
    wire[1:0] n414_o;
    wire n416_o;
    wire n417_o;
    wire n418_o;
    wire n419_o;
    wire n420_o;
    wire n422_o;
    wire n423_o;
    wire[7:0] n424_o;
    wire[5:0] n425_o;
    wire[7:0] n427_o;
    wire n429_o;
    wire n431_o;
    wire n432_o;
    wire n433_o;
    wire n434_o;
    wire n435_o;
    wire n437_o;
    wire n438_o;
    wire[7:0] n439_o;
    wire[6:0] n440_o;
    wire[7:0] n442_o;
    reg[3:0] n443_q;
    reg[3:0] n444_q;
    reg[7:0] n445_q;
    reg[7:0] n446_q;
    reg n447_q;
    reg[7:0] n448_q;
    reg[7:0] n449_q;
    reg[7:0] n450_q;
    reg[7:0] n451_q;
    assign r = level0;
    assign sticky = stk0;
    assign ps = s; // (signal)
    assign ps_d1 = n443_q; // (signal)
    assign ps_d2 = n444_q; // (signal)
    assign xpadded = n386_o; // (signal)
    assign level4 = xpadded; // (signal)
    assign level4_d1 = n445_q; // (signal)
    assign stk3 = n392_o; // (signal)
    assign level3 = n396_o; // (signal)
    assign level3_d1 = n446_q; // (signal)
    assign stk2 = n405_o; // (signal)
    assign stk2_d1 = n447_q; // (signal)
    assign level2 = n409_o; // (signal)
    assign level2_d1 = n448_q; // (signal)
    assign level2_d2 = n449_q; // (signal)
    assign stk1 = n420_o; // (signal)
    assign level1 = n424_o; // (signal)
    assign level1_d1 = n450_q; // (signal)
    assign level1_d2 = n451_q; // (signal)
    assign stk0 = n435_o; // (signal)
    assign level0 = n439_o; // (signal)
    assign n386_o = {x, 2'b00};
    assign n389_o = level4_d1 != 8'b00000000;
    assign n390_o = ps_d1[3];
    assign n391_o = n389_o & n390_o;
    assign n392_o = n391_o ? 1'b1 : 1'b0;
    assign n394_o = ps[3];
    assign n395_o = ~n394_o;
    assign n396_o = n395_o ? level4 : 8'b00000000;
    assign n399_o = level3_d1[3:0];
    assign n401_o = n399_o != 4'b0000;
    assign n402_o = ps_d1[2];
    assign n403_o = n401_o & n402_o;
    assign n404_o = n403_o | stk3;
    assign n405_o = n404_o ? 1'b1 : 1'b0;
    assign n407_o = ps[2];
    assign n408_o = ~n407_o;
    assign n409_o = n408_o ? level3 : n412_o;
    assign n410_o = level3[7:4];
    assign n412_o = {4'b0000, n410_o};
    assign n414_o = level2_d2[1:0];
    assign n416_o = n414_o != 2'b00;
    assign n417_o = ps_d2[1];
    assign n418_o = n416_o & n417_o;
    assign n419_o = n418_o | stk2_d1;
    assign n420_o = n419_o ? 1'b1 : 1'b0;
    assign n422_o = ps[1];
    assign n423_o = ~n422_o;
    assign n424_o = n423_o ? level2 : n427_o;
    assign n425_o = level2[7:2];
    assign n427_o = {2'b00, n425_o};
    assign n429_o = level1_d2[0];
    assign n431_o = n429_o != 1'b0;
    assign n432_o = ps_d2[0];
    assign n433_o = n431_o & n432_o;
    assign n434_o = n433_o | stk1;
    assign n435_o = n434_o ? 1'b1 : 1'b0;
    assign n437_o = ps[0];
    assign n438_o = ~n437_o;
    assign n439_o = n438_o ? level1 : n442_o;
    assign n440_o = level1[7:1];
    assign n442_o = {1'b0, n440_o};
    always @(posedge clk)
        n443_q <= ps;
    always @(posedge clk)
        n444_q <= ps_d1;
    always @(posedge clk)
        n445_q <= level4;
    always @(posedge clk)
        n446_q <= level3;
    always @(posedge clk)
        n447_q <= stk2;
    always @(posedge clk)
        n448_q <= level2;
    always @(posedge clk)
        n449_q <= level2_d1;
    always @(posedge clk)
        n450_q <= level1;
    always @(posedge clk)
        n451_q <= level1_d1;
endmodule

module normalizer_z_7_7_7_f300_uid6666
    (input wire clk,
        input wire [6:0] x,
       output wire [2:0] count,
       output wire [6:0] r);
    wire[6:0] level3;
    wire[6:0] level3_d1;
    wire count2;
    wire[6:0] level2;
    wire count1;
    wire[6:0] level1;
    wire[6:0] level1_d1;
    wire count0;
    wire count0_d1;
    wire[6:0] level0;
    wire[2:0] scount;
    wire[3:0] n333_o;
    wire n335_o;
    wire n336_o;
    wire n338_o;
    wire[6:0] n339_o;
    wire[2:0] n340_o;
    wire[6:0] n342_o;
    wire[1:0] n344_o;
    wire n346_o;
    wire n347_o;
    wire n349_o;
    wire[6:0] n350_o;
    wire[4:0] n351_o;
    wire[6:0] n353_o;
    wire n355_o;
    wire n357_o;
    wire n358_o;
    wire n360_o;
    wire[6:0] n361_o;
    wire[5:0] n362_o;
    wire[6:0] n364_o;
    wire[1:0] n365_o;
    wire[2:0] n366_o;
    reg[6:0] n367_q;
    reg[6:0] n368_q;
    reg n369_q;
    assign count = scount;
    assign r = level0;
    assign level3 = x; // (signal)
    assign level3_d1 = n367_q; // (signal)
    assign count2 = n336_o; // (signal)
    assign level2 = n339_o; // (signal)
    assign count1 = n347_o; // (signal)
    assign level1 = n350_o; // (signal)
    assign level1_d1 = n368_q; // (signal)
    assign count0 = n358_o; // (signal)
    assign count0_d1 = n369_q; // (signal)
    assign level0 = n361_o; // (signal)
    assign scount = n366_o; // (signal)
    assign n333_o = level3_d1[6:3];
    assign n335_o = n333_o == 4'b0000;
    assign n336_o = n335_o ? 1'b1 : 1'b0;
    assign n338_o = ~count2;
    assign n339_o = n338_o ? level3_d1 : n342_o;
    assign n340_o = level3_d1[2:0];
    assign n342_o = {n340_o, 4'b0000};
    assign n344_o = level2[6:5];
    assign n346_o = n344_o == 2'b00;
    assign n347_o = n346_o ? 1'b1 : 1'b0;
    assign n349_o = ~count1;
    assign n350_o = n349_o ? level2 : n353_o;
    assign n351_o = level2[4:0];
    assign n353_o = {n351_o, 2'b00};
    assign n355_o = level1[6];
    assign n357_o = n355_o == 1'b0;
    assign n358_o = n357_o ? 1'b1 : 1'b0;
    assign n360_o = ~count0_d1;
    assign n361_o = n360_o ? level1_d1 : n364_o;
    assign n362_o = level1_d1[5:0];
    assign n364_o = {n362_o, 1'b0};
    assign n365_o = {count2, count1};
    assign n366_o = {n365_o, count0};
    always @(posedge clk)
        n367_q <= level3;
    always @(posedge clk)
        n368_q <= level1;
    always @(posedge clk)
        n369_q <= count0;
endmodule

module intdualsub_8_f300_uid444
    (input wire clk,
        input wire [7:0] x,
        input wire [7:0] y,
       output wire [7:0] xmy,
       output wire [7:0] ymx);
    wire[7:0] temprxmy;
    wire[7:0] temprymx;
    wire[7:0] n313_o;
    wire[7:0] n314_o;
    wire[7:0] n317_o;
    wire[7:0] n318_o;
    wire[7:0] n319_o;
    wire[7:0] n322_o;
    assign xmy = temprxmy;
    assign ymx = temprymx;
    assign temprxmy = n317_o; // (signal)
    assign temprymx = n322_o; // (signal)
    assign n313_o = ~y;
    assign n314_o = x+n313_o;
    assign n317_o = n314_o+8'b00000001;
    assign n318_o = ~x;
    assign n319_o = y+n318_o;
    assign n322_o = n319_o+8'b00000001;
endmodule

module fsub#(parameter ID=1)
    (input wire clk,
        input wire [12:0] X,
        input wire [12:0] Y,
       output wire [12:0] R);
    wire[12:0] inx;
    wire[12:0] iny;
    wire exceptionxsuperiory;
    wire exceptionxequaly;
    wire[5:0] signedexponentx;
    wire[5:0] signedexponenty;
    wire[5:0] exponentdifferencexy;
    wire[4:0] exponentdifferenceyx;
    wire swap;
    wire[12:0] my;
    wire[12:0] newx;
    wire[12:0] newx_d1;
    wire[12:0] newy;
    wire[4:0] exponentdifference;
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
    wire[7:0] fracxclose1;
    wire[7:0] fracyclose1;
    wire[7:0] fracrclosexmy;
    wire[7:0] fracrcloseymx;
    wire fracsignclose;
    wire[6:0] fracrclose1;
    wire ressign;
    wire[2:0] nzerosnew;
    wire[6:0] shiftedfrac;
    wire roundclose0;
    wire resultcloseiszero0;
    wire[6:0] exponentresultclose;
    wire[6:0] exponentresultclose_d1;
    wire[11:0] resultbeforeroundclose;
    wire roundclose;
    wire resultcloseiszero;
    wire[5:0] fracnewy;
    wire[7:0] shiftedfracy;
    wire sticky;
    wire[8:0] fracyfar;
    wire[8:0] effsubvector;
    wire[8:0] fracyfarxorop;
    wire[8:0] fracxfar;
    wire cinaddfar;
    wire[8:0] fracresultfar0;
    wire[8:0] fracresultfarnormstage;
    wire[1:0] fracleadingbits;
    wire[4:0] fracresultfar1;
    wire fracresultroundbit;
    wire fracresultstickybit;
    wire roundfar1;
    wire[1:0] expoperationsel;
    wire[6:0] exponentupdate;
    wire[6:0] exponentresultfar0;
    wire[6:0] exponentresultfar0_d1;
    wire[6:0] exponentresultfar0_d2;
    wire[6:0] exponentresultfar1;
    wire[11:0] resultbeforeroundfar;
    wire roundfar;
    wire[11:0] resultbeforeround;
    wire round;
    wire zerofromclose;
    wire zerofromclose_d1;
    wire zerofromclose_d2;
    wire[11:0] resultrounded;
    wire synceffsub;
    wire synceffsub_d1;
    wire synceffsub_d2;
    wire synceffsub_d3;
    wire[12:0] syncx;
    wire[12:0] syncx_d1;
    wire[12:0] syncx_d2;
    wire[12:0] syncx_d3;
    wire syncsigny;
    wire syncsigny_d1;
    wire syncsigny_d2;
    wire syncsigny_d3;
    wire syncressign;
    wire syncressign_d1;
    wire syncressign_d2;
    wire syncressign_d3;
    wire[1:0] underflowoverflow;
    wire[12:0] resultnoexn;
    wire[3:0] syncexnxy;
    wire[3:0] syncexnxy_d1;
    wire[3:0] syncexnxy_d2;
    wire[3:0] syncexnxy_d3;
    wire[1:0] exnr;
    wire sgnr;
    wire[9:0] expsigr;
    wire[1:0] n31_o;
    wire[1:0] n32_o;
    wire n33_o;
    wire n34_o;
    wire[1:0] n37_o;
    wire[1:0] n38_o;
    wire n39_o;
    wire n40_o;
    wire[4:0] n42_o;
    wire[5:0] n44_o;
    wire[4:0] n45_o;
    wire[5:0] n47_o;
    wire[5:0] n48_o;
    wire[4:0] n49_o;
    wire[4:0] n50_o;
    wire[4:0] n51_o;
    wire n52_o;
    wire n53_o;
    wire n54_o;
    wire n55_o;
    wire[1:0] n56_o;
    wire n57_o;
    wire n58_o;
    wire[2:0] n59_o;
    wire[9:0] n60_o;
    wire[12:0] n61_o;
    wire[12:0] n62_o;
    wire[12:0] n63_o;
    wire[4:0] n64_o;
    wire[4:0] n65_o;
    wire n66_o;
    wire[3:0] n67_o;
    wire n68_o;
    wire[3:0] n69_o;
    wire n71_o;
    wire n72_o;
    wire n73_o;
    wire[3:0] n74_o;
    wire n76_o;
    wire n77_o;
    wire[1:0] n79_o;
    wire[1:0] n80_o;
    wire[3:0] n81_o;
    wire n82_o;
    wire[4:0] n83_o;
    wire[6:0] n85_o;
    wire[7:0] n87_o;
    wire n88_o;
    wire[4:0] n89_o;
    wire[6:0] n91_o;
    wire[7:0] n93_o;
    wire n95_o;
    wire[4:0] n96_o;
    wire[7:0] n98_o;
    reg[7:0] n99_o;
    wire[7:0] fpsub_5_5_f300_uid2_dualsubclose_n100;
    wire[7:0] fpsub_5_5_f300_uid2_dualsubclose_n101;
    wire[7:0] fpsub_5_5_f300_uid2_dualsubclose_xmy;
    wire[7:0] fpsub_5_5_f300_uid2_dualsubclose_ymx;
    wire n106_o;
    wire[6:0] n107_o;
    wire n108_o;
    wire[6:0] n109_o;
    wire[6:0] n110_o;
    wire n113_o;
    wire n114_o;
    wire n115_o;
    wire n116_o;
    wire n117_o;
    wire n118_o;
    wire[2:0] norm_n119;
    wire[6:0] norm_n120;
    wire[2:0] norm_count;
    wire[6:0] norm_r;
    wire n125_o;
    wire n126_o;
    wire n127_o;
    wire n130_o;
    wire n131_o;
    wire[4:0] n133_o;
    wire[6:0] n135_o;
    wire[6:0] n137_o;
    wire[6:0] n138_o;
    wire[4:0] n139_o;
    wire[11:0] n140_o;
    wire[4:0] n141_o;
    wire[5:0] n143_o;
    wire[7:0] rightshiftercomponent_n144;
    wire rightshiftercomponent_n145;
    wire[7:0] rightshiftercomponent_r;
    wire rightshiftercomponent_sticky;
    wire[8:0] n151_o;
    wire[3:0] n152_o;
    wire[3:0] n153_o;
    wire[8:0] n154_o;
    wire[8:0] n155_o;
    wire[4:0] n156_o;
    wire[6:0] n158_o;
    wire[8:0] n160_o;
    wire n161_o;
    wire n162_o;
    wire[8:0] fpsub_5_5_f300_uid2_fracaddfar_n163;
    wire[8:0] fpsub_5_5_f300_uid2_fracaddfar_r;
    wire[1:0] n166_o;
    wire[4:0] n167_o;
    wire n169_o;
    wire[4:0] n170_o;
    wire[4:0] n171_o;
    wire n173_o;
    wire[4:0] n174_o;
    wire[4:0] n175_o;
    wire n176_o;
    wire n178_o;
    wire n179_o;
    wire n180_o;
    wire n182_o;
    wire n183_o;
    wire n184_o;
    wire n186_o;
    wire n187_o;
    wire n188_o;
    wire n189_o;
    wire n191_o;
    wire n192_o;
    wire n193_o;
    wire n194_o;
    wire n195_o;
    wire n196_o;
    wire n197_o;
    wire n198_o;
    wire n199_o;
    wire n202_o;
    wire[1:0] n203_o;
    wire n206_o;
    wire[1:0] n207_o;
    wire n209_o;
    wire n210_o;
    wire n211_o;
    wire n212_o;
    wire n213_o;
    wire n214_o;
    wire[3:0] n215_o;
    wire[1:0] n216_o;
    wire[5:0] n217_o;
    wire n218_o;
    wire[6:0] n219_o;
    wire[4:0] n220_o;
    wire[6:0] n222_o;
    wire[6:0] n223_o;
    wire[11:0] n224_o;
    wire n226_o;
    reg[11:0] n227_o;
    wire n229_o;
    reg n230_o;
    wire n231_o;
    localparam [11:0] n232_o = 12'b000000000000;
    wire[11:0] fpsub_5_5_f300_uid2_finalroundadd_n233;
    wire[11:0] fpsub_5_5_f300_uid2_finalroundadd_r;
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
    wire[9:0] n253_o;
    wire[10:0] n254_o;
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
    wire[9:0] n278_o;
    wire n280_o;
    wire[9:0] n281_o;
    reg[9:0] n282_o;
    wire[2:0] n283_o;
    wire[12:0] n284_o;
    reg[12:0] n285_q;
    reg n286_q;
    reg n287_q;
    reg n288_q;
    reg n289_q;
    reg[6:0] n290_q;
    reg[6:0] n291_q;
    reg[6:0] n292_q;
    reg n293_q;
    reg n294_q;
    reg n295_q;
    reg n296_q;
    reg n297_q;
    reg[12:0] n298_q;
    reg[12:0] n299_q;
    reg[12:0] n300_q;
    reg n301_q;
    reg n302_q;
    reg n303_q;
    reg n304_q;
    reg n305_q;
    reg n306_q;
    wire[12:0] n307_o;
    reg[3:0] n308_q;
    reg[3:0] n309_q;
    reg[3:0] n310_q;
    assign R = n284_o;
    assign inx = X; // (signal)
    assign iny = Y; // (signal)
    assign exceptionxsuperiory = n34_o; // (signal)
    assign exceptionxequaly = n40_o; // (signal)
    assign signedexponentx = n44_o; // (signal)
    assign signedexponenty = n47_o; // (signal)
    assign exponentdifferencexy = n48_o; // (signal)
    assign exponentdifferenceyx = n51_o; // (signal)
    assign swap = n55_o; // (signal)
    assign my = n61_o; // (signal)
    assign newx = n62_o; // (signal)
    assign newx_d1 = n285_q; // (signal)
    assign newy = n63_o; // (signal)
    assign exponentdifference = n64_o; // (signal)
    assign shiftedout = n66_o; // (signal)
    assign shiftval = n69_o; // (signal)
    assign effsub = n73_o; // (signal)
    assign effsub_d1 = n286_q; // (signal)
    assign effsub_d2 = n287_q; // (signal)
    assign selectclosepath = n77_o; // (signal)
    assign selectclosepath_d1 = n288_q; // (signal)
    assign selectclosepath_d2 = n289_q; // (signal)
    assign sdexnxy = n81_o; // (signal)
    assign pipesigny = n82_o; // (signal)
    assign fracxclose1 = n87_o; // (signal)
    assign fracyclose1 = n99_o; // (signal)
    assign fracrclosexmy = fpsub_5_5_f300_uid2_dualsubclose_n100; // (signal)
    assign fracrcloseymx = fpsub_5_5_f300_uid2_dualsubclose_n101; // (signal)
    assign fracsignclose = n106_o; // (signal)
    assign fracrclose1 = n109_o; // (signal)
    assign ressign = n115_o; // (signal)
    assign nzerosnew = norm_n119; // (signal)
    assign shiftedfrac = norm_n120; // (signal)
    assign roundclose0 = n127_o; // (signal)
    assign resultcloseiszero0 = n131_o; // (signal)
    assign exponentresultclose = n138_o; // (signal)
    assign exponentresultclose_d1 = n290_q; // (signal)
    assign resultbeforeroundclose = n140_o; // (signal)
    assign roundclose = roundclose0; // (signal)
    assign resultcloseiszero = resultcloseiszero0; // (signal)
    assign fracnewy = n143_o; // (signal)
    assign shiftedfracy = rightshiftercomponent_n144; // (signal)
    assign sticky = rightshiftercomponent_n145; // (signal)
    assign fracyfar = n151_o; // (signal)
    assign effsubvector = n154_o; // (signal)
    assign fracyfarxorop = n155_o; // (signal)
    assign fracxfar = n160_o; // (signal)
    assign cinaddfar = n162_o; // (signal)
    assign fracresultfar0 = fpsub_5_5_f300_uid2_fracaddfar_n163; // (signal)
    assign fracresultfarnormstage = fracresultfar0; // (signal)
    assign fracleadingbits = n166_o; // (signal)
    assign fracresultfar1 = n170_o; // (signal)
    assign fracresultroundbit = n179_o; // (signal)
    assign fracresultstickybit = n187_o; // (signal)
    assign roundfar1 = n199_o; // (signal)
    assign expoperationsel = n203_o; // (signal)
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
    assign zerofromclose_d2 = n294_q; // (signal)
    assign resultrounded = fpsub_5_5_f300_uid2_finalroundadd_n233; // (signal)
    assign synceffsub = effsub; // (signal)
    assign synceffsub_d1 = n295_q; // (signal)
    assign synceffsub_d2 = n296_q; // (signal)
    assign synceffsub_d3 = n297_q; // (signal)
    assign syncx = newx; // (signal)
    assign syncx_d1 = n298_q; // (signal)
    assign syncx_d2 = n299_q; // (signal)
    assign syncx_d3 = n300_q; // (signal)
    assign syncsigny = pipesigny; // (signal)
    assign syncsigny_d1 = n301_q; // (signal)
    assign syncsigny_d2 = n302_q; // (signal)
    assign syncsigny_d3 = n303_q; // (signal)
    assign syncressign = ressign; // (signal)
    assign syncressign_d1 = n304_q; // (signal)
    assign syncressign_d2 = n305_q; // (signal)
    assign syncressign_d3 = n306_q; // (signal)
    assign underflowoverflow = n236_o; // (signal)
    assign resultnoexn = n307_o; // (signal)
    assign syncexnxy = sdexnxy; // (signal)
    assign syncexnxy_d1 = n308_q; // (signal)
    assign syncexnxy_d2 = n309_q; // (signal)
    assign syncexnxy_d3 = n310_q; // (signal)
    assign exnr = n267_o; // (signal)
    assign sgnr = n277_o; // (signal)
    assign expsigr = n282_o; // (signal)
    assign n31_o = inx[12:11];
    assign n32_o = iny[12:11];
    assign n33_o = $unsigned(n31_o) >= $unsigned(n32_o);
    assign n34_o = n33_o ? 1'b1 : 1'b0;
    assign n37_o = inx[12:11];
    assign n38_o = iny[12:11];
    assign n39_o = n37_o == n38_o;
    assign n40_o = n39_o ? 1'b1 : 1'b0;
    assign n42_o = inx[9:5];
    assign n44_o = {1'b0, n42_o};
    assign n45_o = iny[9:5];
    assign n47_o = {1'b0, n45_o};
    assign n48_o = signedexponentx-signedexponenty;
    assign n49_o = signedexponenty[4:0];
    assign n50_o = signedexponentx[4:0];
    assign n51_o = n49_o-n50_o;
    assign n52_o = exponentdifferencexy[5];
    assign n53_o = exceptionxequaly & n52_o;
    assign n54_o = ~exceptionxsuperiory;
    assign n55_o = n53_o | n54_o;
    assign n56_o = iny[12:11];
    assign n57_o = iny[10];
    assign n58_o = ~n57_o;
    assign n59_o = {n56_o, n58_o};
    assign n60_o = iny[9:0];
    assign n61_o = {n59_o, n60_o};
    assign n62_o = swap ? my : inx;
    assign n63_o = swap ? inx : my;
    assign n64_o = swap ? exponentdifferenceyx : n65_o;
    assign n65_o = exponentdifferencexy[4:0];
    assign n66_o = exponentdifference[4];
    assign n67_o = exponentdifference[3:0];
    assign n68_o = ~shiftedout;
    assign n69_o = n68_o ? n67_o : 4'b1000;
    assign n71_o = newx[10];
    assign n72_o = newy[10];
    assign n73_o = n71_o ^ n72_o;
    assign n74_o = exponentdifference[4:1];
    assign n76_o = n74_o == 4'b0000;
    assign n77_o = n76_o ? effsub : 1'b0;
    assign n79_o = newx[12:11];
    assign n80_o = newy[12:11];
    assign n81_o = {n79_o, n80_o};
    assign n82_o = newy[10];
    assign n83_o = newx[4:0];
    assign n85_o = {2'b01, n83_o};
    assign n87_o = {n85_o, 1'b0};
    assign n88_o = exponentdifference[0];
    assign n89_o = newy[4:0];
    assign n91_o = {2'b01, n89_o};
    assign n93_o = {n91_o, 1'b0};
    assign n95_o = n88_o == 1'b0;
    assign n96_o = newy[4:0];
    assign n98_o = {3'b001, n96_o};
    always @*
        case (n95_o)
            1'b1: n99_o = n93_o;
            default: n99_o = n98_o;
        endcase
    assign fpsub_5_5_f300_uid2_dualsubclose_n100 = fpsub_5_5_f300_uid2_dualsubclose_xmy; // (signal)
    assign fpsub_5_5_f300_uid2_dualsubclose_n101 = fpsub_5_5_f300_uid2_dualsubclose_ymx; // (signal)
    intdualsub_8_f300_uid444 fpsub_5_5_f300_uid2_dualsubclose(
        .clk(clk),
        .x(fracxclose1),
        .y(fracyclose1),
        .xmy(fpsub_5_5_f300_uid2_dualsubclose_xmy),
        .ymx(fpsub_5_5_f300_uid2_dualsubclose_ymx));
    assign n106_o = fracrclosexmy[7];
    assign n107_o = fracrclosexmy[6:0];
    assign n108_o = ~fracsignclose;
    assign n109_o = n108_o ? n107_o : n110_o;
    assign n110_o = fracrcloseymx[6:0];
    assign n113_o = fracrclose1 == 7'b0000000;
    assign n114_o = selectclosepath & n113_o;
    assign n115_o = n114_o ? 1'b0 : n118_o;
    assign n116_o = newx[10];
    assign n117_o = selectclosepath & fracsignclose;
    assign n118_o = n116_o ^ n117_o;
    assign norm_n119 = norm_count; // (signal)
    assign norm_n120 = norm_r; // (signal)
    normalizer_z_7_7_7_f300_uid6666 norm(
        .clk(clk),
        .x(fracrclose1),
        .count(norm_count),
        .r(norm_r));
    assign n125_o = shiftedfrac[0];
    assign n126_o = shiftedfrac[1];
    assign n127_o = n125_o & n126_o;
    assign n130_o = nzerosnew == 3'b111;
    assign n131_o = n130_o ? 1'b1 : 1'b0;
    assign n133_o = newx_d1[9:5];
    assign n135_o = {2'b00, n133_o};
    assign n137_o = {4'b0000, nzerosnew};
    assign n138_o = n135_o-n137_o;
    assign n139_o = shiftedfrac[5:1];
    assign n140_o = {exponentresultclose_d1, n139_o};
    assign n141_o = newy[4:0];
    assign n143_o = {1'b1, n141_o};
    assign rightshiftercomponent_n144 = rightshiftercomponent_r; // (signal)
    assign rightshiftercomponent_n145 = rightshiftercomponent_sticky; // (signal)
    rightshiftersticky6_by_max_8_f300_uid8888 rightshiftercomponent(
        .clk(clk),
        .x(fracnewy),
        .s(shiftval),
        .r(rightshiftercomponent_r),
        .sticky(rightshiftercomponent_sticky));
    assign n151_o = {1'b0, shiftedfracy};
    assign n152_o = {effsub, effsub, effsub, effsub};
    assign n153_o = {effsub, effsub, effsub, effsub};
    assign n154_o = {n152_o, n153_o, effsub};
    assign n155_o = fracyfar ^ effsubvector;
    assign n156_o = newx[4:0];
    assign n158_o = {2'b01, n156_o};
    assign n160_o = {n158_o, 2'b00};
    assign n161_o = ~sticky;
    assign n162_o = effsub_d2 & n161_o;
    assign fpsub_5_5_f300_uid2_fracaddfar_n163 = fpsub_5_5_f300_uid2_fracaddfar_r; // (signal)
    intadder_9_f300_uid1000 fpsub_5_5_f300_uid2_fracaddfar(
        .clk(clk),
        .x(fracxfar),
        .y(fracyfarxorop),
        .cin(cinaddfar),
        .r(fpsub_5_5_f300_uid2_fracaddfar_r));
    assign n166_o = fracresultfarnormstage[8:7];
    assign n167_o = fracresultfarnormstage[5:1];
    assign n169_o = fracleadingbits == 2'b00;
    assign n170_o = n169_o ? n167_o : n174_o;
    assign n171_o = fracresultfarnormstage[6:2];
    assign n173_o = fracleadingbits == 2'b01;
    assign n174_o = n173_o ? n171_o : n175_o;
    assign n175_o = fracresultfarnormstage[7:3];
    assign n176_o = fracresultfarnormstage[0];
    assign n178_o = fracleadingbits == 2'b00;
    assign n179_o = n178_o ? n176_o : n183_o;
    assign n180_o = fracresultfarnormstage[1];
    assign n182_o = fracleadingbits == 2'b01;
    assign n183_o = n182_o ? n180_o : n184_o;
    assign n184_o = fracresultfarnormstage[2];
    assign n186_o = fracleadingbits == 2'b00;
    assign n187_o = n186_o ? sticky : n192_o;
    assign n188_o = fracresultfarnormstage[0];
    assign n189_o = n188_o | sticky;
    assign n191_o = fracleadingbits == 2'b01;
    assign n192_o = n191_o ? n189_o : n196_o;
    assign n193_o = fracresultfarnormstage[1];
    assign n194_o = fracresultfarnormstage[0];
    assign n195_o = n193_o | n194_o;
    assign n196_o = n195_o | sticky;
    assign n197_o = fracresultfar1[0];
    assign n198_o = fracresultstickybit | n197_o;
    assign n199_o = fracresultroundbit & n198_o;
    assign n202_o = fracleadingbits == 2'b00;
    assign n203_o = n202_o ? 2'b11 : n207_o;
    assign n206_o = fracleadingbits == 2'b01;
    assign n207_o = n206_o ? 2'b00 : 2'b01;
    assign n209_o = expoperationsel[1];
    assign n210_o = expoperationsel[1];
    assign n211_o = expoperationsel[1];
    assign n212_o = expoperationsel[1];
    assign n213_o = expoperationsel[1];
    assign n214_o = expoperationsel[1];
    assign n215_o = {n214_o, n213_o, n212_o, n211_o};
    assign n216_o = {n210_o, n209_o};
    assign n217_o = {n215_o, n216_o};
    assign n218_o = expoperationsel[0];
    assign n219_o = {n217_o, n218_o};
    assign n220_o = newx[9:5];
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
    assign n231_o = selectclosepath_d1 & resultcloseiszero;
    assign fpsub_5_5_f300_uid2_finalroundadd_n233 = fpsub_5_5_f300_uid2_finalroundadd_r; // (signal)
    intadder_12_f300_uid13 fpsub_5_5_f300_uid2_finalroundadd(
        .clk(clk),
        .x(resultbeforeround),
        .y(n232_o),
        .cin(round),
        .r(fpsub_5_5_f300_uid2_finalroundadd_r));
    assign n236_o = resultrounded[11:10];
    assign n237_o = ~zerofromclose_d2;
    assign n239_o = {n237_o, 1'b0};
    assign n241_o = underflowoverflow == 2'b01;
    assign n244_o = underflowoverflow == 2'b10;
    assign n246_o = underflowoverflow == 2'b11;
    assign n247_o = n244_o | n246_o;
    assign n248_o = ~zerofromclose_d2;
    assign n250_o = {1'b0, n248_o};
    assign n251_o = {n247_o, n241_o};
    always @*
        case (n251_o)
            2'b10: n252_o = 2'b00;
            2'b01: n252_o = n239_o;
            default: n252_o = n250_o;
        endcase
    assign n253_o = resultrounded[9:0];
    assign n254_o = {syncressign_d3, n253_o};
    assign n255_o = resultnoexn[12:11];
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
    assign n268_o = resultnoexn[10];
    assign n270_o = syncexnxy_d3 == 4'b0101;
    assign n271_o = syncx_d3[10];
    assign n272_o = n271_o & syncsigny_d3;
    assign n274_o = syncexnxy_d3 == 4'b0000;
    assign n275_o = syncx_d3[10];
    assign n276_o = {n274_o, n270_o};
    always @*
        case (n276_o)
            2'b10: n277_o = n272_o;
            2'b01: n277_o = n268_o;
            default: n277_o = n275_o;
        endcase
    assign n278_o = resultnoexn[9:0];
    assign n280_o = syncexnxy_d3 == 4'b0101;
    assign n281_o = syncx_d3[9:0];
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
        n286_q <= effsub;
    always @(posedge clk)
        n287_q <= effsub_d1;
    always @(posedge clk)
        n288_q <= selectclosepath;
    always @(posedge clk)
        n289_q <= selectclosepath_d1;
    always @(posedge clk)
        n290_q <= exponentresultclose;
    always @(posedge clk)
        n291_q <= exponentresultfar0;
    always @(posedge clk)
        n292_q <= exponentresultfar0_d1;
    always @(posedge clk)
        n293_q <= zerofromclose;
    always @(posedge clk)
        n294_q <= zerofromclose_d1;
    always @(posedge clk)
        n295_q <= synceffsub;
    always @(posedge clk)
        n296_q <= synceffsub_d1;
    always @(posedge clk)
        n297_q <= synceffsub_d2;
    always @(posedge clk)
        n298_q <= syncx;
    always @(posedge clk)
        n299_q <= syncx_d1;
    always @(posedge clk)
        n300_q <= syncx_d2;
    always @(posedge clk)
        n301_q <= syncsigny;
    always @(posedge clk)
        n302_q <= syncsigny_d1;
    always @(posedge clk)
        n303_q <= syncsigny_d2;
    always @(posedge clk)
        n304_q <= syncressign;
    always @(posedge clk)
        n305_q <= syncressign_d1;
    always @(posedge clk)
        n306_q <= syncressign_d2;
    assign n307_o = {n252_o, n254_o};
    always @(posedge clk)
        n308_q <= syncexnxy;
    always @(posedge clk)
        n309_q <= syncexnxy_d1;
    always @(posedge clk)
        n310_q <= syncexnxy_d2;
endmodule

