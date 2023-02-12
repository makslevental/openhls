module intadder_16_f300_uid1333
    (input wire clk,
        input wire [15:0] x,
        input wire [15:0] y,
        input wire cin,
       output wire [15:0] r);
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
    wire[16:0] n503_o;
    wire[16:0] n505_o;
    wire[16:0] n506_o;
    wire[16:0] n507_o;
    wire[16:0] n508_o;
    wire[15:0] n509_o;
    reg n510_q;
    reg[16:0] n511_q;
    reg[16:0] n512_q;
    reg[16:0] n513_q;
    reg[16:0] n514_q;
    assign r = r_1;
    assign cin_1 = cin; // (signal)
    assign cin_1_d1 = n510_q; // (signal)
    assign x_1 = n503_o; // (signal)
    assign x_1_d1 = n511_q; // (signal)
    assign y_1 = n505_o; // (signal)
    assign y_1_d1 = n512_q; // (signal)
    assign y_1_d2 = n513_q; // (signal)
    assign y_1_d3 = n514_q; // (signal)
    assign s_1 = n508_o; // (signal)
    assign r_1 = n509_o; // (signal)
    assign n503_o = {1'b0, x};
    assign n505_o = {1'b0, y};
    assign n506_o = x_1_d1+y_1_d3;
    assign n507_o = {16'b0, cin_1_d1};  //  uext
    assign n508_o = n506_o+n507_o;
    assign n509_o = s_1[15:0];
    always @(posedge clk)
        n510_q <= cin_1;
    always @(posedge clk)
        n511_q <= x_1;
    always @(posedge clk)
        n512_q <= y_1;
    always @(posedge clk)
        n513_q <= y_1_d1;
    always @(posedge clk)
        n514_q <= y_1_d2;
endmodule

module intadder_11_f300_uid1000
    (input wire clk,
        input wire [10:0] x,
        input wire [10:0] y,
        input wire cin,
       output wire [10:0] r);
    wire[10:0] rtmp;
    wire[10:0] x_d1;
    wire[10:0] x_d2;
    wire[10:0] y_d1;
    wire[10:0] y_d2;
    wire[10:0] n485_o;
    wire[10:0] n486_o;
    wire[10:0] n487_o;
    reg[10:0] n488_q;
    reg[10:0] n489_q;
    reg[10:0] n490_q;
    reg[10:0] n491_q;
    assign r = rtmp;
    assign rtmp = n487_o; // (signal)
    assign x_d1 = n488_q; // (signal)
    assign x_d2 = n489_q; // (signal)
    assign y_d1 = n490_q; // (signal)
    assign y_d2 = n491_q; // (signal)
    assign n485_o = x_d2+y_d2;
    assign n486_o = {10'b0, cin};  //  uext
    assign n487_o = n485_o+n486_o;
    always @(posedge clk)
        n488_q <= x;
    always @(posedge clk)
        n489_q <= x_d1;
    always @(posedge clk)
        n490_q <= y;
    always @(posedge clk)
        n491_q <= y_d1;
endmodule

module rightshiftersticky8_by_max_10_f300_uid88
    (input wire clk,
        input wire [7:0] x,
        input wire [3:0] s,
       output wire [9:0] r,
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
    wire[9:0] n407_o;
    wire[7:0] n409_o;
    wire n411_o;
    wire n412_o;
    wire n413_o;
    wire n414_o;
    wire n416_o;
    wire n417_o;
    wire[9:0] n418_o;
    wire[1:0] n419_o;
    wire[9:0] n421_o;
    wire[3:0] n423_o;
    wire n425_o;
    wire n426_o;
    wire n427_o;
    wire n428_o;
    wire n429_o;
    wire n431_o;
    wire n432_o;
    wire[9:0] n433_o;
    wire[5:0] n434_o;
    wire[9:0] n436_o;
    wire[1:0] n438_o;
    wire n440_o;
    wire n441_o;
    wire n442_o;
    wire n443_o;
    wire n444_o;
    wire n446_o;
    wire n447_o;
    wire[9:0] n448_o;
    wire[7:0] n449_o;
    wire[9:0] n451_o;
    wire n453_o;
    wire n455_o;
    wire n456_o;
    wire n457_o;
    wire n458_o;
    wire n459_o;
    wire n461_o;
    wire n462_o;
    wire[9:0] n463_o;
    wire[8:0] n464_o;
    wire[9:0] n466_o;
    reg[3:0] n467_q;
    reg[3:0] n468_q;
    reg[9:0] n469_q;
    reg[9:0] n470_q;
    reg n471_q;
    reg[9:0] n472_q;
    reg[9:0] n473_q;
    reg[9:0] n474_q;
    reg[9:0] n475_q;
    assign r = level0;
    assign sticky = stk0;
    assign ps = s; // (signal)
    assign ps_d1 = n467_q; // (signal)
    assign ps_d2 = n468_q; // (signal)
    assign xpadded = n407_o; // (signal)
    assign level4 = xpadded; // (signal)
    assign level4_d1 = n469_q; // (signal)
    assign stk3 = n414_o; // (signal)
    assign level3 = n418_o; // (signal)
    assign level3_d1 = n470_q; // (signal)
    assign stk2 = n429_o; // (signal)
    assign stk2_d1 = n471_q; // (signal)
    assign level2 = n433_o; // (signal)
    assign level2_d1 = n472_q; // (signal)
    assign level2_d2 = n473_q; // (signal)
    assign stk1 = n444_o; // (signal)
    assign level1 = n448_o; // (signal)
    assign level1_d1 = n474_q; // (signal)
    assign level1_d2 = n475_q; // (signal)
    assign stk0 = n459_o; // (signal)
    assign level0 = n463_o; // (signal)
    assign n407_o = {x, 2'b00};
    assign n409_o = level4_d1[7:0];
    assign n411_o = n409_o != 8'b00000000;
    assign n412_o = ps_d1[3];
    assign n413_o = n411_o & n412_o;
    assign n414_o = n413_o ? 1'b1 : 1'b0;
    assign n416_o = ps[3];
    assign n417_o = ~n416_o;
    assign n418_o = n417_o ? level4 : n421_o;
    assign n419_o = level4[9:8];
    assign n421_o = {8'b00000000, n419_o};
    assign n423_o = level3_d1[3:0];
    assign n425_o = n423_o != 4'b0000;
    assign n426_o = ps_d1[2];
    assign n427_o = n425_o & n426_o;
    assign n428_o = n427_o | stk3;
    assign n429_o = n428_o ? 1'b1 : 1'b0;
    assign n431_o = ps[2];
    assign n432_o = ~n431_o;
    assign n433_o = n432_o ? level3 : n436_o;
    assign n434_o = level3[9:4];
    assign n436_o = {4'b0000, n434_o};
    assign n438_o = level2_d2[1:0];
    assign n440_o = n438_o != 2'b00;
    assign n441_o = ps_d2[1];
    assign n442_o = n440_o & n441_o;
    assign n443_o = n442_o | stk2_d1;
    assign n444_o = n443_o ? 1'b1 : 1'b0;
    assign n446_o = ps[1];
    assign n447_o = ~n446_o;
    assign n448_o = n447_o ? level2 : n451_o;
    assign n449_o = level2[9:2];
    assign n451_o = {2'b00, n449_o};
    assign n453_o = level1_d2[0];
    assign n455_o = n453_o != 1'b0;
    assign n456_o = ps_d2[0];
    assign n457_o = n455_o & n456_o;
    assign n458_o = n457_o | stk1;
    assign n459_o = n458_o ? 1'b1 : 1'b0;
    assign n461_o = ps[0];
    assign n462_o = ~n461_o;
    assign n463_o = n462_o ? level1 : n466_o;
    assign n464_o = level1[9:1];
    assign n466_o = {1'b0, n464_o};
    always @(posedge clk)
        n467_q <= ps;
    always @(posedge clk)
        n468_q <= ps_d1;
    always @(posedge clk)
        n469_q <= level4;
    always @(posedge clk)
        n470_q <= level3;
    always @(posedge clk)
        n471_q <= stk2;
    always @(posedge clk)
        n472_q <= level2;
    always @(posedge clk)
        n473_q <= level2_d1;
    always @(posedge clk)
        n474_q <= level1;
    always @(posedge clk)
        n475_q <= level1_d1;
endmodule

module normalizer_z_9_9_9_f300_uid66
    (input wire clk,
        input wire [8:0] x,
       output wire [3:0] count,
       output wire [8:0] r);
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
    wire[7:0] n340_o;
    wire n342_o;
    wire n343_o;
    wire n345_o;
    wire[8:0] n346_o;
    wire n347_o;
    wire[8:0] n349_o;
    wire[3:0] n351_o;
    wire n353_o;
    wire n354_o;
    wire n356_o;
    wire[8:0] n357_o;
    wire[4:0] n358_o;
    wire[8:0] n360_o;
    wire[1:0] n362_o;
    wire n364_o;
    wire n365_o;
    wire n367_o;
    wire[8:0] n368_o;
    wire[6:0] n369_o;
    wire[8:0] n371_o;
    wire n373_o;
    wire n375_o;
    wire n376_o;
    wire n378_o;
    wire[8:0] n379_o;
    wire[7:0] n380_o;
    wire[8:0] n382_o;
    wire[1:0] n383_o;
    wire[2:0] n384_o;
    wire[3:0] n385_o;
    reg[8:0] n386_q;
    reg n387_q;
    reg n388_q;
    reg[8:0] n389_q;
    reg n390_q;
    assign count = scount;
    assign r = level0;
    assign level4 = x; // (signal)
    assign level4_d1 = n386_q; // (signal)
    assign count3 = n343_o; // (signal)
    assign count3_d1 = n387_q; // (signal)
    assign level3 = n346_o; // (signal)
    assign count2 = n354_o; // (signal)
    assign count2_d1 = n388_q; // (signal)
    assign level2 = n357_o; // (signal)
    assign level2_d1 = n389_q; // (signal)
    assign count1 = n365_o; // (signal)
    assign count1_d1 = n390_q; // (signal)
    assign level1 = n368_o; // (signal)
    assign count0 = n376_o; // (signal)
    assign level0 = n379_o; // (signal)
    assign scount = n385_o; // (signal)
    assign n340_o = level4_d1[8:1];
    assign n342_o = n340_o == 8'b00000000;
    assign n343_o = n342_o ? 1'b1 : 1'b0;
    assign n345_o = ~count3;
    assign n346_o = n345_o ? level4_d1 : n349_o;
    assign n347_o = level4_d1[0];
    assign n349_o = {n347_o, 8'b00000000};
    assign n351_o = level3[8:5];
    assign n353_o = n351_o == 4'b0000;
    assign n354_o = n353_o ? 1'b1 : 1'b0;
    assign n356_o = ~count2;
    assign n357_o = n356_o ? level3 : n360_o;
    assign n358_o = level3[4:0];
    assign n360_o = {n358_o, 4'b0000};
    assign n362_o = level2[8:7];
    assign n364_o = n362_o == 2'b00;
    assign n365_o = n364_o ? 1'b1 : 1'b0;
    assign n367_o = ~count1_d1;
    assign n368_o = n367_o ? level2_d1 : n371_o;
    assign n369_o = level2_d1[6:0];
    assign n371_o = {n369_o, 2'b00};
    assign n373_o = level1[8];
    assign n375_o = n373_o == 1'b0;
    assign n376_o = n375_o ? 1'b1 : 1'b0;
    assign n378_o = ~count0;
    assign n379_o = n378_o ? level1 : n382_o;
    assign n380_o = level1[7:0];
    assign n382_o = {n380_o, 1'b0};
    assign n383_o = {count3_d1, count2_d1};
    assign n384_o = {n383_o, count1_d1};
    assign n385_o = {n384_o, count0};
    always @(posedge clk)
        n386_q <= level4;
    always @(posedge clk)
        n387_q <= count3;
    always @(posedge clk)
        n388_q <= count2;
    always @(posedge clk)
        n389_q <= level2;
    always @(posedge clk)
        n390_q <= count1;
endmodule

module intdualsub_10_f300_uid444
    (input wire clk,
        input wire [9:0] x,
        input wire [9:0] y,
       output wire [9:0] xmy,
       output wire [9:0] ymx);
    wire[9:0] temprxmy;
    wire[9:0] temprymx;
    wire[9:0] n318_o;
    wire[9:0] n319_o;
    wire[9:0] n322_o;
    wire[9:0] n323_o;
    wire[9:0] n324_o;
    wire[9:0] n327_o;
    assign xmy = temprxmy;
    assign ymx = temprymx;
    assign temprxmy = n322_o; // (signal)
    assign temprymx = n327_o; // (signal)
    assign n318_o = ~y;
    assign n319_o = x+n318_o;
    assign n322_o = n319_o+10'b0000000001;
    assign n323_o = ~x;
    assign n324_o = y+n323_o;
    assign n327_o = n324_o+10'b0000000001;
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
    wire[7:0] signedexponentx;
    wire[7:0] signedexponenty;
    wire[7:0] exponentdifferencexy;
    wire[6:0] exponentdifferenceyx;
    wire swap;
    wire[16:0] my;
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
    wire[1:0] n55_o;
    wire n56_o;
    wire n57_o;
    wire[2:0] n58_o;
    wire[13:0] n59_o;
    wire[16:0] n60_o;
    wire[16:0] n61_o;
    wire[16:0] n62_o;
    wire[6:0] n63_o;
    wire[6:0] n64_o;
    wire n65_o;
    wire n66_o;
    wire n67_o;
    wire n68_o;
    wire n69_o;
    wire[3:0] n70_o;
    wire n71_o;
    wire[3:0] n72_o;
    wire n74_o;
    wire n75_o;
    wire n76_o;
    wire[5:0] n77_o;
    wire n79_o;
    wire n80_o;
    wire[1:0] n82_o;
    wire[1:0] n83_o;
    wire[3:0] n84_o;
    wire n85_o;
    wire[6:0] n86_o;
    wire[8:0] n88_o;
    wire[9:0] n90_o;
    wire n91_o;
    wire[6:0] n92_o;
    wire[8:0] n94_o;
    wire[9:0] n96_o;
    wire n98_o;
    wire[6:0] n99_o;
    wire[9:0] n101_o;
    reg[9:0] n102_o;
    wire[9:0] fpsub_7_7_f300_uid2_dualsubclose_n103;
    wire[9:0] fpsub_7_7_f300_uid2_dualsubclose_n104;
    wire[9:0] fpsub_7_7_f300_uid2_dualsubclose_xmy;
    wire[9:0] fpsub_7_7_f300_uid2_dualsubclose_ymx;
    wire n109_o;
    wire[8:0] n110_o;
    wire n111_o;
    wire[8:0] n112_o;
    wire[8:0] n113_o;
    wire n116_o;
    wire n117_o;
    wire n118_o;
    wire n119_o;
    wire n120_o;
    wire n121_o;
    wire[3:0] norm_n122;
    wire[8:0] norm_n123;
    wire[3:0] norm_count;
    wire[8:0] norm_r;
    wire n128_o;
    wire n129_o;
    wire n130_o;
    wire n133_o;
    wire n134_o;
    wire[6:0] n136_o;
    wire[8:0] n138_o;
    wire[8:0] n140_o;
    wire[8:0] n141_o;
    wire[6:0] n142_o;
    wire[15:0] n143_o;
    wire[6:0] n144_o;
    wire[7:0] n146_o;
    wire[9:0] rightshiftercomponent_n147;
    wire rightshiftercomponent_n148;
    wire[9:0] rightshiftercomponent_r;
    wire rightshiftercomponent_sticky;
    wire[10:0] n154_o;
    wire[3:0] n155_o;
    wire[3:0] n156_o;
    wire[2:0] n157_o;
    wire[10:0] n158_o;
    wire[10:0] n159_o;
    wire[6:0] n160_o;
    wire[8:0] n162_o;
    wire[10:0] n164_o;
    wire n165_o;
    wire n166_o;
    wire[10:0] fpsub_7_7_f300_uid2_fracaddfar_n167;
    wire[10:0] fpsub_7_7_f300_uid2_fracaddfar_r;
    wire[1:0] n170_o;
    wire[6:0] n171_o;
    wire n173_o;
    wire[6:0] n174_o;
    wire[6:0] n175_o;
    wire n177_o;
    wire[6:0] n178_o;
    wire[6:0] n179_o;
    wire n180_o;
    wire n182_o;
    wire n183_o;
    wire n184_o;
    wire n186_o;
    wire n187_o;
    wire n188_o;
    wire n190_o;
    wire n191_o;
    wire n192_o;
    wire n193_o;
    wire n195_o;
    wire n196_o;
    wire n197_o;
    wire n198_o;
    wire n199_o;
    wire n200_o;
    wire n201_o;
    wire n202_o;
    wire n203_o;
    wire n206_o;
    wire[1:0] n207_o;
    wire n210_o;
    wire[1:0] n211_o;
    wire n213_o;
    wire n214_o;
    wire n215_o;
    wire n216_o;
    wire n217_o;
    wire n218_o;
    wire n219_o;
    wire n220_o;
    wire[3:0] n221_o;
    wire[3:0] n222_o;
    wire[7:0] n223_o;
    wire n224_o;
    wire[8:0] n225_o;
    wire[6:0] n226_o;
    wire[8:0] n228_o;
    wire[8:0] n229_o;
    wire[15:0] n230_o;
    wire n232_o;
    reg[15:0] n233_o;
    wire n235_o;
    reg n236_o;
    wire n237_o;
    localparam [15:0] n238_o = 16'b0000000000000000;
    wire[15:0] fpsub_7_7_f300_uid2_finalroundadd_n239;
    wire[15:0] fpsub_7_7_f300_uid2_finalroundadd_r;
    wire[1:0] n242_o;
    wire n243_o;
    wire[1:0] n245_o;
    wire n247_o;
    wire n250_o;
    wire n252_o;
    wire n253_o;
    wire n254_o;
    wire[1:0] n256_o;
    wire[1:0] n257_o;
    reg[1:0] n258_o;
    wire[13:0] n259_o;
    wire[14:0] n260_o;
    wire[1:0] n261_o;
    wire n263_o;
    wire[1:0] n265_o;
    wire n267_o;
    wire n270_o;
    wire[1:0] n271_o;
    wire[2:0] n272_o;
    reg[1:0] n273_o;
    wire n274_o;
    wire n276_o;
    wire n277_o;
    wire n278_o;
    wire n280_o;
    wire n281_o;
    wire[1:0] n282_o;
    reg n283_o;
    wire[13:0] n284_o;
    wire n286_o;
    wire[13:0] n287_o;
    reg[13:0] n288_o;
    wire[2:0] n289_o;
    wire[16:0] n290_o;
    reg[16:0] n291_q;
    reg[16:0] n292_q;
    reg n293_q;
    reg n294_q;
    reg n295_q;
    reg n296_q;
    reg[8:0] n297_q;
    reg[8:0] n298_q;
    reg n299_q;
    reg n300_q;
    reg n301_q;
    reg n302_q;
    reg[16:0] n303_q;
    reg[16:0] n304_q;
    reg[16:0] n305_q;
    reg n306_q;
    reg n307_q;
    reg n308_q;
    reg n309_q;
    reg n310_q;
    reg n311_q;
    wire[16:0] n312_o;
    reg[3:0] n313_q;
    reg[3:0] n314_q;
    reg[3:0] n315_q;
    assign R = n290_o;
    assign inx = X; // (signal)
    assign iny = Y; // (signal)
    assign exceptionxsuperiory = n33_o; // (signal)
    assign exceptionxequaly = n39_o; // (signal)
    assign signedexponentx = n43_o; // (signal)
    assign signedexponenty = n46_o; // (signal)
    assign exponentdifferencexy = n47_o; // (signal)
    assign exponentdifferenceyx = n50_o; // (signal)
    assign swap = n54_o; // (signal)
    assign my = n60_o; // (signal)
    assign newx = n61_o; // (signal)
    assign newx_d1 = n291_q; // (signal)
    assign newx_d2 = n292_q; // (signal)
    assign newy = n62_o; // (signal)
    assign exponentdifference = n63_o; // (signal)
    assign shiftedout = n69_o; // (signal)
    assign shiftval = n72_o; // (signal)
    assign effsub = n76_o; // (signal)
    assign effsub_d1 = n293_q; // (signal)
    assign effsub_d2 = n294_q; // (signal)
    assign selectclosepath = n80_o; // (signal)
    assign selectclosepath_d1 = n295_q; // (signal)
    assign selectclosepath_d2 = n296_q; // (signal)
    assign sdexnxy = n84_o; // (signal)
    assign pipesigny = n85_o; // (signal)
    assign fracxclose1 = n90_o; // (signal)
    assign fracyclose1 = n102_o; // (signal)
    assign fracrclosexmy = fpsub_7_7_f300_uid2_dualsubclose_n103; // (signal)
    assign fracrcloseymx = fpsub_7_7_f300_uid2_dualsubclose_n104; // (signal)
    assign fracsignclose = n109_o; // (signal)
    assign fracrclose1 = n112_o; // (signal)
    assign ressign = n118_o; // (signal)
    assign nzerosnew = norm_n122; // (signal)
    assign shiftedfrac = norm_n123; // (signal)
    assign roundclose0 = n130_o; // (signal)
    assign resultcloseiszero0 = n134_o; // (signal)
    assign exponentresultclose = n141_o; // (signal)
    assign resultbeforeroundclose = n143_o; // (signal)
    assign roundclose = roundclose0; // (signal)
    assign resultcloseiszero = resultcloseiszero0; // (signal)
    assign fracnewy = n146_o; // (signal)
    assign shiftedfracy = rightshiftercomponent_n147; // (signal)
    assign sticky = rightshiftercomponent_n148; // (signal)
    assign fracyfar = n154_o; // (signal)
    assign effsubvector = n158_o; // (signal)
    assign fracyfarxorop = n159_o; // (signal)
    assign fracxfar = n164_o; // (signal)
    assign cinaddfar = n166_o; // (signal)
    assign fracresultfar0 = fpsub_7_7_f300_uid2_fracaddfar_n167; // (signal)
    assign fracresultfarnormstage = fracresultfar0; // (signal)
    assign fracleadingbits = n170_o; // (signal)
    assign fracresultfar1 = n174_o; // (signal)
    assign fracresultroundbit = n183_o; // (signal)
    assign fracresultstickybit = n191_o; // (signal)
    assign roundfar1 = n203_o; // (signal)
    assign expoperationsel = n207_o; // (signal)
    assign exponentupdate = n225_o; // (signal)
    assign exponentresultfar0 = n228_o; // (signal)
    assign exponentresultfar0_d1 = n297_q; // (signal)
    assign exponentresultfar0_d2 = n298_q; // (signal)
    assign exponentresultfar1 = n229_o; // (signal)
    assign resultbeforeroundfar = n230_o; // (signal)
    assign roundfar = roundfar1; // (signal)
    assign resultbeforeround = n233_o; // (signal)
    assign round = n236_o; // (signal)
    assign zerofromclose = n237_o; // (signal)
    assign zerofromclose_d1 = n299_q; // (signal)
    assign resultrounded = fpsub_7_7_f300_uid2_finalroundadd_n239; // (signal)
    assign synceffsub = effsub; // (signal)
    assign synceffsub_d1 = n300_q; // (signal)
    assign synceffsub_d2 = n301_q; // (signal)
    assign synceffsub_d3 = n302_q; // (signal)
    assign syncx = newx; // (signal)
    assign syncx_d1 = n303_q; // (signal)
    assign syncx_d2 = n304_q; // (signal)
    assign syncx_d3 = n305_q; // (signal)
    assign syncsigny = pipesigny; // (signal)
    assign syncsigny_d1 = n306_q; // (signal)
    assign syncsigny_d2 = n307_q; // (signal)
    assign syncsigny_d3 = n308_q; // (signal)
    assign syncressign = ressign; // (signal)
    assign syncressign_d1 = n309_q; // (signal)
    assign syncressign_d2 = n310_q; // (signal)
    assign syncressign_d3 = n311_q; // (signal)
    assign underflowoverflow = n242_o; // (signal)
    assign resultnoexn = n312_o; // (signal)
    assign syncexnxy = sdexnxy; // (signal)
    assign syncexnxy_d1 = n313_q; // (signal)
    assign syncexnxy_d2 = n314_q; // (signal)
    assign syncexnxy_d3 = n315_q; // (signal)
    assign exnr = n273_o; // (signal)
    assign sgnr = n283_o; // (signal)
    assign expsigr = n288_o; // (signal)
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
    assign n55_o = iny[16:15];
    assign n56_o = iny[14];
    assign n57_o = ~n56_o;
    assign n58_o = {n55_o, n57_o};
    assign n59_o = iny[13:0];
    assign n60_o = {n58_o, n59_o};
    assign n61_o = swap ? my : inx;
    assign n62_o = swap ? inx : my;
    assign n63_o = swap ? exponentdifferenceyx : n64_o;
    assign n64_o = exponentdifferencexy[6:0];
    assign n65_o = exponentdifference[6];
    assign n66_o = exponentdifference[5];
    assign n67_o = n65_o | n66_o;
    assign n68_o = exponentdifference[4];
    assign n69_o = n67_o | n68_o;
    assign n70_o = exponentdifference[3:0];
    assign n71_o = ~shiftedout;
    assign n72_o = n71_o ? n70_o : 4'b1010;
    assign n74_o = newx[14];
    assign n75_o = newy[14];
    assign n76_o = n74_o ^ n75_o;
    assign n77_o = exponentdifference[6:1];
    assign n79_o = n77_o == 6'b000000;
    assign n80_o = n79_o ? effsub : 1'b0;
    assign n82_o = newx[16:15];
    assign n83_o = newy[16:15];
    assign n84_o = {n82_o, n83_o};
    assign n85_o = newy[14];
    assign n86_o = newx[6:0];
    assign n88_o = {2'b01, n86_o};
    assign n90_o = {n88_o, 1'b0};
    assign n91_o = exponentdifference[0];
    assign n92_o = newy[6:0];
    assign n94_o = {2'b01, n92_o};
    assign n96_o = {n94_o, 1'b0};
    assign n98_o = n91_o == 1'b0;
    assign n99_o = newy[6:0];
    assign n101_o = {3'b001, n99_o};
    always @*
        case (n98_o)
            1'b1: n102_o = n96_o;
            default: n102_o = n101_o;
        endcase
    assign fpsub_7_7_f300_uid2_dualsubclose_n103 = fpsub_7_7_f300_uid2_dualsubclose_xmy; // (signal)
    assign fpsub_7_7_f300_uid2_dualsubclose_n104 = fpsub_7_7_f300_uid2_dualsubclose_ymx; // (signal)
    intdualsub_10_f300_uid444 fpsub_7_7_f300_uid2_dualsubclose(
        .clk(clk),
        .x(fracxclose1),
        .y(fracyclose1),
        .xmy(fpsub_7_7_f300_uid2_dualsubclose_xmy),
        .ymx(fpsub_7_7_f300_uid2_dualsubclose_ymx));
    assign n109_o = fracrclosexmy[9];
    assign n110_o = fracrclosexmy[8:0];
    assign n111_o = ~fracsignclose;
    assign n112_o = n111_o ? n110_o : n113_o;
    assign n113_o = fracrcloseymx[8:0];
    assign n116_o = fracrclose1 == 9'b000000000;
    assign n117_o = selectclosepath & n116_o;
    assign n118_o = n117_o ? 1'b0 : n121_o;
    assign n119_o = newx[14];
    assign n120_o = selectclosepath & fracsignclose;
    assign n121_o = n119_o ^ n120_o;
    assign norm_n122 = norm_count; // (signal)
    assign norm_n123 = norm_r; // (signal)
    normalizer_z_9_9_9_f300_uid66 norm(
        .clk(clk),
        .x(fracrclose1),
        .count(norm_count),
        .r(norm_r));
    assign n128_o = shiftedfrac[0];
    assign n129_o = shiftedfrac[1];
    assign n130_o = n128_o & n129_o;
    assign n133_o = nzerosnew == 4'b1111;
    assign n134_o = n133_o ? 1'b1 : 1'b0;
    assign n136_o = newx_d2[13:7];
    assign n138_o = {2'b00, n136_o};
    assign n140_o = {5'b00000, nzerosnew};
    assign n141_o = n138_o-n140_o;
    assign n142_o = shiftedfrac[7:1];
    assign n143_o = {exponentresultclose, n142_o};
    assign n144_o = newy[6:0];
    assign n146_o = {1'b1, n144_o};
    assign rightshiftercomponent_n147 = rightshiftercomponent_r; // (signal)
    assign rightshiftercomponent_n148 = rightshiftercomponent_sticky; // (signal)
    rightshiftersticky8_by_max_10_f300_uid88 rightshiftercomponent(
        .clk(clk),
        .x(fracnewy),
        .s(shiftval),
        .r(rightshiftercomponent_r),
        .sticky(rightshiftercomponent_sticky));
    assign n154_o = {1'b0, shiftedfracy};
    assign n155_o = {effsub, effsub, effsub, effsub};
    assign n156_o = {effsub, effsub, effsub, effsub};
    assign n157_o = {effsub, effsub, effsub};
    assign n158_o = {n155_o, n156_o, n157_o};
    assign n159_o = fracyfar ^ effsubvector;
    assign n160_o = newx[6:0];
    assign n162_o = {2'b01, n160_o};
    assign n164_o = {n162_o, 2'b00};
    assign n165_o = ~sticky;
    assign n166_o = effsub_d2 & n165_o;
    assign fpsub_7_7_f300_uid2_fracaddfar_n167 = fpsub_7_7_f300_uid2_fracaddfar_r; // (signal)
    intadder_11_f300_uid1000 fpsub_7_7_f300_uid2_fracaddfar(
        .clk(clk),
        .x(fracxfar),
        .y(fracyfarxorop),
        .cin(cinaddfar),
        .r(fpsub_7_7_f300_uid2_fracaddfar_r));
    assign n170_o = fracresultfarnormstage[10:9];
    assign n171_o = fracresultfarnormstage[7:1];
    assign n173_o = fracleadingbits == 2'b00;
    assign n174_o = n173_o ? n171_o : n178_o;
    assign n175_o = fracresultfarnormstage[8:2];
    assign n177_o = fracleadingbits == 2'b01;
    assign n178_o = n177_o ? n175_o : n179_o;
    assign n179_o = fracresultfarnormstage[9:3];
    assign n180_o = fracresultfarnormstage[0];
    assign n182_o = fracleadingbits == 2'b00;
    assign n183_o = n182_o ? n180_o : n187_o;
    assign n184_o = fracresultfarnormstage[1];
    assign n186_o = fracleadingbits == 2'b01;
    assign n187_o = n186_o ? n184_o : n188_o;
    assign n188_o = fracresultfarnormstage[2];
    assign n190_o = fracleadingbits == 2'b00;
    assign n191_o = n190_o ? sticky : n196_o;
    assign n192_o = fracresultfarnormstage[0];
    assign n193_o = n192_o | sticky;
    assign n195_o = fracleadingbits == 2'b01;
    assign n196_o = n195_o ? n193_o : n200_o;
    assign n197_o = fracresultfarnormstage[1];
    assign n198_o = fracresultfarnormstage[0];
    assign n199_o = n197_o | n198_o;
    assign n200_o = n199_o | sticky;
    assign n201_o = fracresultfar1[0];
    assign n202_o = fracresultstickybit | n201_o;
    assign n203_o = fracresultroundbit & n202_o;
    assign n206_o = fracleadingbits == 2'b00;
    assign n207_o = n206_o ? 2'b11 : n211_o;
    assign n210_o = fracleadingbits == 2'b01;
    assign n211_o = n210_o ? 2'b00 : 2'b01;
    assign n213_o = expoperationsel[1];
    assign n214_o = expoperationsel[1];
    assign n215_o = expoperationsel[1];
    assign n216_o = expoperationsel[1];
    assign n217_o = expoperationsel[1];
    assign n218_o = expoperationsel[1];
    assign n219_o = expoperationsel[1];
    assign n220_o = expoperationsel[1];
    assign n221_o = {n220_o, n219_o, n218_o, n217_o};
    assign n222_o = {n216_o, n215_o, n214_o, n213_o};
    assign n223_o = {n221_o, n222_o};
    assign n224_o = expoperationsel[0];
    assign n225_o = {n223_o, n224_o};
    assign n226_o = newx[13:7];
    assign n228_o = {2'b00, n226_o};
    assign n229_o = exponentresultfar0_d2+exponentupdate;
    assign n230_o = {exponentresultfar1, fracresultfar1};
    assign n232_o = selectclosepath_d2 == 1'b1;
    always @*
        case (n232_o)
            1'b1: n233_o = resultbeforeroundclose;
            default: n233_o = resultbeforeroundfar;
        endcase
    assign n235_o = selectclosepath_d2 == 1'b1;
    always @*
        case (n235_o)
            1'b1: n236_o = roundclose;
            default: n236_o = roundfar;
        endcase
    assign n237_o = selectclosepath_d2 & resultcloseiszero;
    assign fpsub_7_7_f300_uid2_finalroundadd_n239 = fpsub_7_7_f300_uid2_finalroundadd_r; // (signal)
    intadder_16_f300_uid13 fpsub_7_7_f300_uid2_finalroundadd(
        .clk(clk),
        .x(resultbeforeround),
        .y(n238_o),
        .cin(round),
        .r(fpsub_7_7_f300_uid2_finalroundadd_r));
    assign n242_o = resultrounded[15:14];
    assign n243_o = ~zerofromclose_d1;
    assign n245_o = {n243_o, 1'b0};
    assign n247_o = underflowoverflow == 2'b01;
    assign n250_o = underflowoverflow == 2'b10;
    assign n252_o = underflowoverflow == 2'b11;
    assign n253_o = n250_o | n252_o;
    assign n254_o = ~zerofromclose_d1;
    assign n256_o = {1'b0, n254_o};
    assign n257_o = {n253_o, n247_o};
    always @*
        case (n257_o)
            2'b10: n258_o = 2'b00;
            2'b01: n258_o = n245_o;
            default: n258_o = n256_o;
        endcase
    assign n259_o = resultrounded[13:0];
    assign n260_o = {syncressign_d3, n259_o};
    assign n261_o = resultnoexn[16:15];
    assign n263_o = syncexnxy_d3 == 4'b0101;
    assign n265_o = {1'b1, synceffsub_d3};
    assign n267_o = syncexnxy_d3 == 4'b1010;
    assign n270_o = syncexnxy_d3 == 4'b1110;
    assign n271_o = syncexnxy_d3[3:2];
    assign n272_o = {n270_o, n267_o, n263_o};
    always @*
        case (n272_o)
            3'b100: n273_o = 2'b11;
            3'b010: n273_o = n265_o;
            3'b001: n273_o = n261_o;
            default: n273_o = n271_o;
        endcase
    assign n274_o = resultnoexn[14];
    assign n276_o = syncexnxy_d3 == 4'b0101;
    assign n277_o = syncx_d3[14];
    assign n278_o = n277_o & syncsigny_d3;
    assign n280_o = syncexnxy_d3 == 4'b0000;
    assign n281_o = syncx_d3[14];
    assign n282_o = {n280_o, n276_o};
    always @*
        case (n282_o)
            2'b10: n283_o = n278_o;
            2'b01: n283_o = n274_o;
            default: n283_o = n281_o;
        endcase
    assign n284_o = resultnoexn[13:0];
    assign n286_o = syncexnxy_d3 == 4'b0101;
    assign n287_o = syncx_d3[13:0];
    always @*
        case (n286_o)
            1'b1: n288_o = n284_o;
            default: n288_o = n287_o;
        endcase
    assign n289_o = {exnr, sgnr};
    assign n290_o = {n289_o, expsigr};
    always @(posedge clk)
        n291_q <= newx;
    always @(posedge clk)
        n292_q <= newx_d1;
    always @(posedge clk)
        n293_q <= effsub;
    always @(posedge clk)
        n294_q <= effsub_d1;
    always @(posedge clk)
        n295_q <= selectclosepath;
    always @(posedge clk)
        n296_q <= selectclosepath_d1;
    always @(posedge clk)
        n297_q <= exponentresultfar0;
    always @(posedge clk)
        n298_q <= exponentresultfar0_d1;
    always @(posedge clk)
        n299_q <= zerofromclose;
    always @(posedge clk)
        n300_q <= synceffsub;
    always @(posedge clk)
        n301_q <= synceffsub_d1;
    always @(posedge clk)
        n302_q <= synceffsub_d2;
    always @(posedge clk)
        n303_q <= syncx;
    always @(posedge clk)
        n304_q <= syncx_d1;
    always @(posedge clk)
        n305_q <= syncx_d2;
    always @(posedge clk)
        n306_q <= syncsigny;
    always @(posedge clk)
        n307_q <= syncsigny_d1;
    always @(posedge clk)
        n308_q <= syncsigny_d2;
    always @(posedge clk)
        n309_q <= syncressign;
    always @(posedge clk)
        n310_q <= syncressign_d1;
    always @(posedge clk)
        n311_q <= syncressign_d2;
    assign n312_o = {n258_o, n260_o};
    always @(posedge clk)
        n313_q <= syncexnxy;
    always @(posedge clk)
        n314_q <= syncexnxy_d1;
    always @(posedge clk)
        n315_q <= syncexnxy_d2;
endmodule

