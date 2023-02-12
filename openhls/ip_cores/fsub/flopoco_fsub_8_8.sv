module intadder_18_f300_uid1333
    (input wire clk,
        input wire [17:0] x,
        input wire [17:0] y,
        input wire cin,
       output wire [17:0] r);
    wire cin_1;
    wire cin_1_d1;
    wire[18:0] x_1;
    wire[18:0] x_1_d1;
    wire[18:0] y_1;
    wire[18:0] y_1_d1;
    wire[18:0] y_1_d2;
    wire[18:0] y_1_d3;
    wire[18:0] s_1;
    wire[17:0] r_1;
    wire[18:0] n506_o;
    wire[18:0] n508_o;
    wire[18:0] n509_o;
    wire[18:0] n510_o;
    wire[18:0] n511_o;
    wire[17:0] n512_o;
    reg n513_q;
    reg[18:0] n514_q;
    reg[18:0] n515_q;
    reg[18:0] n516_q;
    reg[18:0] n517_q;
    assign r = r_1;
    assign cin_1 = cin; // (signal)
    assign cin_1_d1 = n513_q; // (signal)
    assign x_1 = n506_o; // (signal)
    assign x_1_d1 = n514_q; // (signal)
    assign y_1 = n508_o; // (signal)
    assign y_1_d1 = n515_q; // (signal)
    assign y_1_d2 = n516_q; // (signal)
    assign y_1_d3 = n517_q; // (signal)
    assign s_1 = n511_o; // (signal)
    assign r_1 = n512_o; // (signal)
    assign n506_o = {1'b0, x};
    assign n508_o = {1'b0, y};
    assign n509_o = x_1_d1+y_1_d3;
    assign n510_o = {18'b0, cin_1_d1};  //  uext
    assign n511_o = n509_o+n510_o;
    assign n512_o = s_1[17:0];
    always @(posedge clk)
        n513_q <= cin_1;
    always @(posedge clk)
        n514_q <= x_1;
    always @(posedge clk)
        n515_q <= y_1;
    always @(posedge clk)
        n516_q <= y_1_d1;
    always @(posedge clk)
        n517_q <= y_1_d2;
endmodule

module intadder_12_f300_uid1000
    (input wire clk,
        input wire [11:0] x,
        input wire [11:0] y,
        input wire cin,
       output wire [11:0] r);
    wire[11:0] rtmp;
    wire[11:0] x_d1;
    wire[11:0] x_d2;
    wire[11:0] y_d1;
    wire[11:0] y_d2;
    wire[11:0] n488_o;
    wire[11:0] n489_o;
    wire[11:0] n490_o;
    reg[11:0] n491_q;
    reg[11:0] n492_q;
    reg[11:0] n493_q;
    reg[11:0] n494_q;
    assign r = rtmp;
    assign rtmp = n490_o; // (signal)
    assign x_d1 = n491_q; // (signal)
    assign x_d2 = n492_q; // (signal)
    assign y_d1 = n493_q; // (signal)
    assign y_d2 = n494_q; // (signal)
    assign n488_o = x_d2+y_d2;
    assign n489_o = {11'b0, cin};  //  uext
    assign n490_o = n488_o+n489_o;
    always @(posedge clk)
        n491_q <= x;
    always @(posedge clk)
        n492_q <= x_d1;
    always @(posedge clk)
        n493_q <= y;
    always @(posedge clk)
        n494_q <= y_d1;
endmodule

module rightshiftersticky9_by_max_11_f300_uid88
    (input wire clk,
        input wire [8:0] x,
        input wire [3:0] s,
       output wire [10:0] r,
        output wire sticky);
    wire[3:0] ps;
    wire[3:0] ps_d1;
    wire[3:0] ps_d2;
    wire[10:0] xpadded;
    wire[10:0] level4;
    wire[10:0] level4_d1;
    wire stk3;
    wire[10:0] level3;
    wire[10:0] level3_d1;
    wire stk2;
    wire stk2_d1;
    wire[10:0] level2;
    wire[10:0] level2_d1;
    wire[10:0] level2_d2;
    wire stk1;
    wire[10:0] level1;
    wire[10:0] level1_d1;
    wire[10:0] level1_d2;
    wire stk0;
    wire[10:0] level0;
    wire[10:0] n410_o;
    wire[7:0] n412_o;
    wire n414_o;
    wire n415_o;
    wire n416_o;
    wire n417_o;
    wire n419_o;
    wire n420_o;
    wire[10:0] n421_o;
    wire[2:0] n422_o;
    wire[10:0] n424_o;
    wire[3:0] n426_o;
    wire n428_o;
    wire n429_o;
    wire n430_o;
    wire n431_o;
    wire n432_o;
    wire n434_o;
    wire n435_o;
    wire[10:0] n436_o;
    wire[6:0] n437_o;
    wire[10:0] n439_o;
    wire[1:0] n441_o;
    wire n443_o;
    wire n444_o;
    wire n445_o;
    wire n446_o;
    wire n447_o;
    wire n449_o;
    wire n450_o;
    wire[10:0] n451_o;
    wire[8:0] n452_o;
    wire[10:0] n454_o;
    wire n456_o;
    wire n458_o;
    wire n459_o;
    wire n460_o;
    wire n461_o;
    wire n462_o;
    wire n464_o;
    wire n465_o;
    wire[10:0] n466_o;
    wire[9:0] n467_o;
    wire[10:0] n469_o;
    reg[3:0] n470_q;
    reg[3:0] n471_q;
    reg[10:0] n472_q;
    reg[10:0] n473_q;
    reg n474_q;
    reg[10:0] n475_q;
    reg[10:0] n476_q;
    reg[10:0] n477_q;
    reg[10:0] n478_q;
    assign r = level0;
    assign sticky = stk0;
    assign ps = s; // (signal)
    assign ps_d1 = n470_q; // (signal)
    assign ps_d2 = n471_q; // (signal)
    assign xpadded = n410_o; // (signal)
    assign level4 = xpadded; // (signal)
    assign level4_d1 = n472_q; // (signal)
    assign stk3 = n417_o; // (signal)
    assign level3 = n421_o; // (signal)
    assign level3_d1 = n473_q; // (signal)
    assign stk2 = n432_o; // (signal)
    assign stk2_d1 = n474_q; // (signal)
    assign level2 = n436_o; // (signal)
    assign level2_d1 = n475_q; // (signal)
    assign level2_d2 = n476_q; // (signal)
    assign stk1 = n447_o; // (signal)
    assign level1 = n451_o; // (signal)
    assign level1_d1 = n477_q; // (signal)
    assign level1_d2 = n478_q; // (signal)
    assign stk0 = n462_o; // (signal)
    assign level0 = n466_o; // (signal)
    assign n410_o = {x, 2'b00};
    assign n412_o = level4_d1[7:0];
    assign n414_o = n412_o != 8'b00000000;
    assign n415_o = ps_d1[3];
    assign n416_o = n414_o & n415_o;
    assign n417_o = n416_o ? 1'b1 : 1'b0;
    assign n419_o = ps[3];
    assign n420_o = ~n419_o;
    assign n421_o = n420_o ? level4 : n424_o;
    assign n422_o = level4[10:8];
    assign n424_o = {8'b00000000, n422_o};
    assign n426_o = level3_d1[3:0];
    assign n428_o = n426_o != 4'b0000;
    assign n429_o = ps_d1[2];
    assign n430_o = n428_o & n429_o;
    assign n431_o = n430_o | stk3;
    assign n432_o = n431_o ? 1'b1 : 1'b0;
    assign n434_o = ps[2];
    assign n435_o = ~n434_o;
    assign n436_o = n435_o ? level3 : n439_o;
    assign n437_o = level3[10:4];
    assign n439_o = {4'b0000, n437_o};
    assign n441_o = level2_d2[1:0];
    assign n443_o = n441_o != 2'b00;
    assign n444_o = ps_d2[1];
    assign n445_o = n443_o & n444_o;
    assign n446_o = n445_o | stk2_d1;
    assign n447_o = n446_o ? 1'b1 : 1'b0;
    assign n449_o = ps[1];
    assign n450_o = ~n449_o;
    assign n451_o = n450_o ? level2 : n454_o;
    assign n452_o = level2[10:2];
    assign n454_o = {2'b00, n452_o};
    assign n456_o = level1_d2[0];
    assign n458_o = n456_o != 1'b0;
    assign n459_o = ps_d2[0];
    assign n460_o = n458_o & n459_o;
    assign n461_o = n460_o | stk1;
    assign n462_o = n461_o ? 1'b1 : 1'b0;
    assign n464_o = ps[0];
    assign n465_o = ~n464_o;
    assign n466_o = n465_o ? level1 : n469_o;
    assign n467_o = level1[10:1];
    assign n469_o = {1'b0, n467_o};
    always @(posedge clk)
        n470_q <= ps;
    always @(posedge clk)
        n471_q <= ps_d1;
    always @(posedge clk)
        n472_q <= level4;
    always @(posedge clk)
        n473_q <= level3;
    always @(posedge clk)
        n474_q <= stk2;
    always @(posedge clk)
        n475_q <= level2;
    always @(posedge clk)
        n476_q <= level2_d1;
    always @(posedge clk)
        n477_q <= level1;
    always @(posedge clk)
        n478_q <= level1_d1;
endmodule

module normalizer_z_10_10_10_f300_uid66
    (input wire clk,
        input wire [9:0] x,
       output wire [3:0] count,
       output wire [9:0] r);
    wire[9:0] level4;
    wire[9:0] level4_d1;
    wire count3;
    wire count3_d1;
    wire[9:0] level3;
    wire count2;
    wire count2_d1;
    wire[9:0] level2;
    wire[9:0] level2_d1;
    wire count1;
    wire count1_d1;
    wire[9:0] level1;
    wire count0;
    wire[9:0] level0;
    wire[3:0] scount;
    wire[7:0] n343_o;
    wire n345_o;
    wire n346_o;
    wire n348_o;
    wire[9:0] n349_o;
    wire[1:0] n350_o;
    wire[9:0] n352_o;
    wire[3:0] n354_o;
    wire n356_o;
    wire n357_o;
    wire n359_o;
    wire[9:0] n360_o;
    wire[5:0] n361_o;
    wire[9:0] n363_o;
    wire[1:0] n365_o;
    wire n367_o;
    wire n368_o;
    wire n370_o;
    wire[9:0] n371_o;
    wire[7:0] n372_o;
    wire[9:0] n374_o;
    wire n376_o;
    wire n378_o;
    wire n379_o;
    wire n381_o;
    wire[9:0] n382_o;
    wire[8:0] n383_o;
    wire[9:0] n385_o;
    wire[1:0] n386_o;
    wire[2:0] n387_o;
    wire[3:0] n388_o;
    reg[9:0] n389_q;
    reg n390_q;
    reg n391_q;
    reg[9:0] n392_q;
    reg n393_q;
    assign count = scount;
    assign r = level0;
    assign level4 = x; // (signal)
    assign level4_d1 = n389_q; // (signal)
    assign count3 = n346_o; // (signal)
    assign count3_d1 = n390_q; // (signal)
    assign level3 = n349_o; // (signal)
    assign count2 = n357_o; // (signal)
    assign count2_d1 = n391_q; // (signal)
    assign level2 = n360_o; // (signal)
    assign level2_d1 = n392_q; // (signal)
    assign count1 = n368_o; // (signal)
    assign count1_d1 = n393_q; // (signal)
    assign level1 = n371_o; // (signal)
    assign count0 = n379_o; // (signal)
    assign level0 = n382_o; // (signal)
    assign scount = n388_o; // (signal)
    assign n343_o = level4_d1[9:2];
    assign n345_o = n343_o == 8'b00000000;
    assign n346_o = n345_o ? 1'b1 : 1'b0;
    assign n348_o = ~count3;
    assign n349_o = n348_o ? level4_d1 : n352_o;
    assign n350_o = level4_d1[1:0];
    assign n352_o = {n350_o, 8'b00000000};
    assign n354_o = level3[9:6];
    assign n356_o = n354_o == 4'b0000;
    assign n357_o = n356_o ? 1'b1 : 1'b0;
    assign n359_o = ~count2;
    assign n360_o = n359_o ? level3 : n363_o;
    assign n361_o = level3[5:0];
    assign n363_o = {n361_o, 4'b0000};
    assign n365_o = level2[9:8];
    assign n367_o = n365_o == 2'b00;
    assign n368_o = n367_o ? 1'b1 : 1'b0;
    assign n370_o = ~count1_d1;
    assign n371_o = n370_o ? level2_d1 : n374_o;
    assign n372_o = level2_d1[7:0];
    assign n374_o = {n372_o, 2'b00};
    assign n376_o = level1[9];
    assign n378_o = n376_o == 1'b0;
    assign n379_o = n378_o ? 1'b1 : 1'b0;
    assign n381_o = ~count0;
    assign n382_o = n381_o ? level1 : n385_o;
    assign n383_o = level1[8:0];
    assign n385_o = {n383_o, 1'b0};
    assign n386_o = {count3_d1, count2_d1};
    assign n387_o = {n386_o, count1_d1};
    assign n388_o = {n387_o, count0};
    always @(posedge clk)
        n389_q <= level4;
    always @(posedge clk)
        n390_q <= count3;
    always @(posedge clk)
        n391_q <= count2;
    always @(posedge clk)
        n392_q <= level2;
    always @(posedge clk)
        n393_q <= count1;
endmodule

module intdualsub_11_f300_uid444
    (input wire clk,
        input wire [10:0] x,
        input wire [10:0] y,
       output wire [10:0] xmy,
       output wire [10:0] ymx);
    wire[10:0] temprxmy;
    wire[10:0] temprymx;
    wire[10:0] n321_o;
    wire[10:0] n322_o;
    wire[10:0] n325_o;
    wire[10:0] n326_o;
    wire[10:0] n327_o;
    wire[10:0] n330_o;
    assign xmy = temprxmy;
    assign ymx = temprymx;
    assign temprxmy = n325_o; // (signal)
    assign temprymx = n330_o; // (signal)
    assign n321_o = ~y;
    assign n322_o = x+n321_o;
    assign n325_o = n322_o+11'b00000000001;
    assign n326_o = ~x;
    assign n327_o = y+n326_o;
    assign n330_o = n327_o+11'b00000000001;
endmodule

module fsub#(parameter ID=1)
    (input wire clk,
        input wire [18:0] X,
        input wire [18:0] Y,
       output wire [18:0] R);
    wire[18:0] inx;
    wire[18:0] iny;
    wire exceptionxsuperiory;
    wire exceptionxequaly;
    wire[8:0] signedexponentx;
    wire[8:0] signedexponenty;
    wire[8:0] exponentdifferencexy;
    wire[7:0] exponentdifferenceyx;
    wire swap;
    wire[18:0] my;
    wire[18:0] newx;
    wire[18:0] newx_d1;
    wire[18:0] newx_d2;
    wire[18:0] newy;
    wire[7:0] exponentdifference;
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
    wire[10:0] fracxclose1;
    wire[10:0] fracyclose1;
    wire[10:0] fracrclosexmy;
    wire[10:0] fracrcloseymx;
    wire fracsignclose;
    wire[9:0] fracrclose1;
    wire ressign;
    wire[3:0] nzerosnew;
    wire[9:0] shiftedfrac;
    wire roundclose0;
    wire resultcloseiszero0;
    wire[9:0] exponentresultclose;
    wire[17:0] resultbeforeroundclose;
    wire roundclose;
    wire resultcloseiszero;
    wire[8:0] fracnewy;
    wire[10:0] shiftedfracy;
    wire sticky;
    wire[11:0] fracyfar;
    wire[11:0] effsubvector;
    wire[11:0] fracyfarxorop;
    wire[11:0] fracxfar;
    wire cinaddfar;
    wire[11:0] fracresultfar0;
    wire[11:0] fracresultfarnormstage;
    wire[1:0] fracleadingbits;
    wire[7:0] fracresultfar1;
    wire fracresultroundbit;
    wire fracresultstickybit;
    wire roundfar1;
    wire[1:0] expoperationsel;
    wire[9:0] exponentupdate;
    wire[9:0] exponentresultfar0;
    wire[9:0] exponentresultfar0_d1;
    wire[9:0] exponentresultfar0_d2;
    wire[9:0] exponentresultfar1;
    wire[17:0] resultbeforeroundfar;
    wire roundfar;
    wire[17:0] resultbeforeround;
    wire round;
    wire zerofromclose;
    wire zerofromclose_d1;
    wire[17:0] resultrounded;
    wire synceffsub;
    wire synceffsub_d1;
    wire synceffsub_d2;
    wire synceffsub_d3;
    wire[18:0] syncx;
    wire[18:0] syncx_d1;
    wire[18:0] syncx_d2;
    wire[18:0] syncx_d3;
    wire syncsigny;
    wire syncsigny_d1;
    wire syncsigny_d2;
    wire syncsigny_d3;
    wire syncressign;
    wire syncressign_d1;
    wire syncressign_d2;
    wire syncressign_d3;
    wire[1:0] underflowoverflow;
    wire[18:0] resultnoexn;
    wire[3:0] syncexnxy;
    wire[3:0] syncexnxy_d1;
    wire[3:0] syncexnxy_d2;
    wire[3:0] syncexnxy_d3;
    wire[1:0] exnr;
    wire sgnr;
    wire[15:0] expsigr;
    wire[1:0] n30_o;
    wire[1:0] n31_o;
    wire n32_o;
    wire n33_o;
    wire[1:0] n36_o;
    wire[1:0] n37_o;
    wire n38_o;
    wire n39_o;
    wire[7:0] n41_o;
    wire[8:0] n43_o;
    wire[7:0] n44_o;
    wire[8:0] n46_o;
    wire[8:0] n47_o;
    wire[7:0] n48_o;
    wire[7:0] n49_o;
    wire[7:0] n50_o;
    wire n51_o;
    wire n52_o;
    wire n53_o;
    wire n54_o;
    wire[1:0] n55_o;
    wire n56_o;
    wire n57_o;
    wire[2:0] n58_o;
    wire[15:0] n59_o;
    wire[18:0] n60_o;
    wire[18:0] n61_o;
    wire[18:0] n62_o;
    wire[7:0] n63_o;
    wire[7:0] n64_o;
    wire n65_o;
    wire n66_o;
    wire n67_o;
    wire n68_o;
    wire n69_o;
    wire n70_o;
    wire n71_o;
    wire[3:0] n72_o;
    wire n73_o;
    wire[3:0] n74_o;
    wire n76_o;
    wire n77_o;
    wire n78_o;
    wire[6:0] n79_o;
    wire n81_o;
    wire n82_o;
    wire[1:0] n84_o;
    wire[1:0] n85_o;
    wire[3:0] n86_o;
    wire n87_o;
    wire[7:0] n88_o;
    wire[9:0] n90_o;
    wire[10:0] n92_o;
    wire n93_o;
    wire[7:0] n94_o;
    wire[9:0] n96_o;
    wire[10:0] n98_o;
    wire n100_o;
    wire[7:0] n101_o;
    wire[10:0] n103_o;
    reg[10:0] n104_o;
    wire[10:0] fpsub_8_8_f300_uid2_dualsubclose_n105;
    wire[10:0] fpsub_8_8_f300_uid2_dualsubclose_n106;
    wire[10:0] fpsub_8_8_f300_uid2_dualsubclose_xmy;
    wire[10:0] fpsub_8_8_f300_uid2_dualsubclose_ymx;
    wire n111_o;
    wire[9:0] n112_o;
    wire n113_o;
    wire[9:0] n114_o;
    wire[9:0] n115_o;
    wire n118_o;
    wire n119_o;
    wire n120_o;
    wire n121_o;
    wire n122_o;
    wire n123_o;
    wire[3:0] norm_n124;
    wire[9:0] norm_n125;
    wire[3:0] norm_count;
    wire[9:0] norm_r;
    wire n130_o;
    wire n131_o;
    wire n132_o;
    wire n135_o;
    wire n136_o;
    wire[7:0] n138_o;
    wire[9:0] n140_o;
    wire[9:0] n142_o;
    wire[9:0] n143_o;
    wire[7:0] n144_o;
    wire[17:0] n145_o;
    wire[7:0] n146_o;
    wire[8:0] n148_o;
    wire[10:0] rightshiftercomponent_n149;
    wire rightshiftercomponent_n150;
    wire[10:0] rightshiftercomponent_r;
    wire rightshiftercomponent_sticky;
    wire[11:0] n156_o;
    wire[3:0] n157_o;
    wire[3:0] n158_o;
    wire[3:0] n159_o;
    wire[11:0] n160_o;
    wire[11:0] n161_o;
    wire[7:0] n162_o;
    wire[9:0] n164_o;
    wire[11:0] n166_o;
    wire n167_o;
    wire n168_o;
    wire[11:0] fpsub_8_8_f300_uid2_fracaddfar_n169;
    wire[11:0] fpsub_8_8_f300_uid2_fracaddfar_r;
    wire[1:0] n172_o;
    wire[7:0] n173_o;
    wire n175_o;
    wire[7:0] n176_o;
    wire[7:0] n177_o;
    wire n179_o;
    wire[7:0] n180_o;
    wire[7:0] n181_o;
    wire n182_o;
    wire n184_o;
    wire n185_o;
    wire n186_o;
    wire n188_o;
    wire n189_o;
    wire n190_o;
    wire n192_o;
    wire n193_o;
    wire n194_o;
    wire n195_o;
    wire n197_o;
    wire n198_o;
    wire n199_o;
    wire n200_o;
    wire n201_o;
    wire n202_o;
    wire n203_o;
    wire n204_o;
    wire n205_o;
    wire n208_o;
    wire[1:0] n209_o;
    wire n212_o;
    wire[1:0] n213_o;
    wire n215_o;
    wire n216_o;
    wire n217_o;
    wire n218_o;
    wire n219_o;
    wire n220_o;
    wire n221_o;
    wire n222_o;
    wire n223_o;
    wire[3:0] n224_o;
    wire[3:0] n225_o;
    wire[8:0] n226_o;
    wire n227_o;
    wire[9:0] n228_o;
    wire[7:0] n229_o;
    wire[9:0] n231_o;
    wire[9:0] n232_o;
    wire[17:0] n233_o;
    wire n235_o;
    reg[17:0] n236_o;
    wire n238_o;
    reg n239_o;
    wire n240_o;
    localparam [17:0] n241_o = 18'b000000000000000000;
    wire[17:0] fpsub_8_8_f300_uid2_finalroundadd_n242;
    wire[17:0] fpsub_8_8_f300_uid2_finalroundadd_r;
    wire[1:0] n245_o;
    wire n246_o;
    wire[1:0] n248_o;
    wire n250_o;
    wire n253_o;
    wire n255_o;
    wire n256_o;
    wire n257_o;
    wire[1:0] n259_o;
    wire[1:0] n260_o;
    reg[1:0] n261_o;
    wire[15:0] n262_o;
    wire[16:0] n263_o;
    wire[1:0] n264_o;
    wire n266_o;
    wire[1:0] n268_o;
    wire n270_o;
    wire n273_o;
    wire[1:0] n274_o;
    wire[2:0] n275_o;
    reg[1:0] n276_o;
    wire n277_o;
    wire n279_o;
    wire n280_o;
    wire n281_o;
    wire n283_o;
    wire n284_o;
    wire[1:0] n285_o;
    reg n286_o;
    wire[15:0] n287_o;
    wire n289_o;
    wire[15:0] n290_o;
    reg[15:0] n291_o;
    wire[2:0] n292_o;
    wire[18:0] n293_o;
    reg[18:0] n294_q;
    reg[18:0] n295_q;
    reg n296_q;
    reg n297_q;
    reg n298_q;
    reg n299_q;
    reg[9:0] n300_q;
    reg[9:0] n301_q;
    reg n302_q;
    reg n303_q;
    reg n304_q;
    reg n305_q;
    reg[18:0] n306_q;
    reg[18:0] n307_q;
    reg[18:0] n308_q;
    reg n309_q;
    reg n310_q;
    reg n311_q;
    reg n312_q;
    reg n313_q;
    reg n314_q;
    wire[18:0] n315_o;
    reg[3:0] n316_q;
    reg[3:0] n317_q;
    reg[3:0] n318_q;
    assign R = n293_o;
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
    assign newx_d1 = n294_q; // (signal)
    assign newx_d2 = n295_q; // (signal)
    assign newy = n62_o; // (signal)
    assign exponentdifference = n63_o; // (signal)
    assign shiftedout = n71_o; // (signal)
    assign shiftval = n74_o; // (signal)
    assign effsub = n78_o; // (signal)
    assign effsub_d1 = n296_q; // (signal)
    assign effsub_d2 = n297_q; // (signal)
    assign selectclosepath = n82_o; // (signal)
    assign selectclosepath_d1 = n298_q; // (signal)
    assign selectclosepath_d2 = n299_q; // (signal)
    assign sdexnxy = n86_o; // (signal)
    assign pipesigny = n87_o; // (signal)
    assign fracxclose1 = n92_o; // (signal)
    assign fracyclose1 = n104_o; // (signal)
    assign fracrclosexmy = fpsub_8_8_f300_uid2_dualsubclose_n105; // (signal)
    assign fracrcloseymx = fpsub_8_8_f300_uid2_dualsubclose_n106; // (signal)
    assign fracsignclose = n111_o; // (signal)
    assign fracrclose1 = n114_o; // (signal)
    assign ressign = n120_o; // (signal)
    assign nzerosnew = norm_n124; // (signal)
    assign shiftedfrac = norm_n125; // (signal)
    assign roundclose0 = n132_o; // (signal)
    assign resultcloseiszero0 = n136_o; // (signal)
    assign exponentresultclose = n143_o; // (signal)
    assign resultbeforeroundclose = n145_o; // (signal)
    assign roundclose = roundclose0; // (signal)
    assign resultcloseiszero = resultcloseiszero0; // (signal)
    assign fracnewy = n148_o; // (signal)
    assign shiftedfracy = rightshiftercomponent_n149; // (signal)
    assign sticky = rightshiftercomponent_n150; // (signal)
    assign fracyfar = n156_o; // (signal)
    assign effsubvector = n160_o; // (signal)
    assign fracyfarxorop = n161_o; // (signal)
    assign fracxfar = n166_o; // (signal)
    assign cinaddfar = n168_o; // (signal)
    assign fracresultfar0 = fpsub_8_8_f300_uid2_fracaddfar_n169; // (signal)
    assign fracresultfarnormstage = fracresultfar0; // (signal)
    assign fracleadingbits = n172_o; // (signal)
    assign fracresultfar1 = n176_o; // (signal)
    assign fracresultroundbit = n185_o; // (signal)
    assign fracresultstickybit = n193_o; // (signal)
    assign roundfar1 = n205_o; // (signal)
    assign expoperationsel = n209_o; // (signal)
    assign exponentupdate = n228_o; // (signal)
    assign exponentresultfar0 = n231_o; // (signal)
    assign exponentresultfar0_d1 = n300_q; // (signal)
    assign exponentresultfar0_d2 = n301_q; // (signal)
    assign exponentresultfar1 = n232_o; // (signal)
    assign resultbeforeroundfar = n233_o; // (signal)
    assign roundfar = roundfar1; // (signal)
    assign resultbeforeround = n236_o; // (signal)
    assign round = n239_o; // (signal)
    assign zerofromclose = n240_o; // (signal)
    assign zerofromclose_d1 = n302_q; // (signal)
    assign resultrounded = fpsub_8_8_f300_uid2_finalroundadd_n242; // (signal)
    assign synceffsub = effsub; // (signal)
    assign synceffsub_d1 = n303_q; // (signal)
    assign synceffsub_d2 = n304_q; // (signal)
    assign synceffsub_d3 = n305_q; // (signal)
    assign syncx = newx; // (signal)
    assign syncx_d1 = n306_q; // (signal)
    assign syncx_d2 = n307_q; // (signal)
    assign syncx_d3 = n308_q; // (signal)
    assign syncsigny = pipesigny; // (signal)
    assign syncsigny_d1 = n309_q; // (signal)
    assign syncsigny_d2 = n310_q; // (signal)
    assign syncsigny_d3 = n311_q; // (signal)
    assign syncressign = ressign; // (signal)
    assign syncressign_d1 = n312_q; // (signal)
    assign syncressign_d2 = n313_q; // (signal)
    assign syncressign_d3 = n314_q; // (signal)
    assign underflowoverflow = n245_o; // (signal)
    assign resultnoexn = n315_o; // (signal)
    assign syncexnxy = sdexnxy; // (signal)
    assign syncexnxy_d1 = n316_q; // (signal)
    assign syncexnxy_d2 = n317_q; // (signal)
    assign syncexnxy_d3 = n318_q; // (signal)
    assign exnr = n276_o; // (signal)
    assign sgnr = n286_o; // (signal)
    assign expsigr = n291_o; // (signal)
    assign n30_o = inx[18:17];
    assign n31_o = iny[18:17];
    assign n32_o = $unsigned(n30_o) >= $unsigned(n31_o);
    assign n33_o = n32_o ? 1'b1 : 1'b0;
    assign n36_o = inx[18:17];
    assign n37_o = iny[18:17];
    assign n38_o = n36_o == n37_o;
    assign n39_o = n38_o ? 1'b1 : 1'b0;
    assign n41_o = inx[15:8];
    assign n43_o = {1'b0, n41_o};
    assign n44_o = iny[15:8];
    assign n46_o = {1'b0, n44_o};
    assign n47_o = signedexponentx-signedexponenty;
    assign n48_o = signedexponenty[7:0];
    assign n49_o = signedexponentx[7:0];
    assign n50_o = n48_o-n49_o;
    assign n51_o = exponentdifferencexy[8];
    assign n52_o = exceptionxequaly & n51_o;
    assign n53_o = ~exceptionxsuperiory;
    assign n54_o = n52_o | n53_o;
    assign n55_o = iny[18:17];
    assign n56_o = iny[16];
    assign n57_o = ~n56_o;
    assign n58_o = {n55_o, n57_o};
    assign n59_o = iny[15:0];
    assign n60_o = {n58_o, n59_o};
    assign n61_o = swap ? my : inx;
    assign n62_o = swap ? inx : my;
    assign n63_o = swap ? exponentdifferenceyx : n64_o;
    assign n64_o = exponentdifferencexy[7:0];
    assign n65_o = exponentdifference[7];
    assign n66_o = exponentdifference[6];
    assign n67_o = n65_o | n66_o;
    assign n68_o = exponentdifference[5];
    assign n69_o = n67_o | n68_o;
    assign n70_o = exponentdifference[4];
    assign n71_o = n69_o | n70_o;
    assign n72_o = exponentdifference[3:0];
    assign n73_o = ~shiftedout;
    assign n74_o = n73_o ? n72_o : 4'b1011;
    assign n76_o = newx[16];
    assign n77_o = newy[16];
    assign n78_o = n76_o ^ n77_o;
    assign n79_o = exponentdifference[7:1];
    assign n81_o = n79_o == 7'b0000000;
    assign n82_o = n81_o ? effsub : 1'b0;
    assign n84_o = newx[18:17];
    assign n85_o = newy[18:17];
    assign n86_o = {n84_o, n85_o};
    assign n87_o = newy[16];
    assign n88_o = newx[7:0];
    assign n90_o = {2'b01, n88_o};
    assign n92_o = {n90_o, 1'b0};
    assign n93_o = exponentdifference[0];
    assign n94_o = newy[7:0];
    assign n96_o = {2'b01, n94_o};
    assign n98_o = {n96_o, 1'b0};
    assign n100_o = n93_o == 1'b0;
    assign n101_o = newy[7:0];
    assign n103_o = {3'b001, n101_o};
    always @*
        case (n100_o)
            1'b1: n104_o = n98_o;
            default: n104_o = n103_o;
        endcase
    assign fpsub_8_8_f300_uid2_dualsubclose_n105 = fpsub_8_8_f300_uid2_dualsubclose_xmy; // (signal)
    assign fpsub_8_8_f300_uid2_dualsubclose_n106 = fpsub_8_8_f300_uid2_dualsubclose_ymx; // (signal)
    intdualsub_11_f300_uid444 fpsub_8_8_f300_uid2_dualsubclose(
        .clk(clk),
        .x(fracxclose1),
        .y(fracyclose1),
        .xmy(fpsub_8_8_f300_uid2_dualsubclose_xmy),
        .ymx(fpsub_8_8_f300_uid2_dualsubclose_ymx));
    assign n111_o = fracrclosexmy[10];
    assign n112_o = fracrclosexmy[9:0];
    assign n113_o = ~fracsignclose;
    assign n114_o = n113_o ? n112_o : n115_o;
    assign n115_o = fracrcloseymx[9:0];
    assign n118_o = fracrclose1 == 10'b0000000000;
    assign n119_o = selectclosepath & n118_o;
    assign n120_o = n119_o ? 1'b0 : n123_o;
    assign n121_o = newx[16];
    assign n122_o = selectclosepath & fracsignclose;
    assign n123_o = n121_o ^ n122_o;
    assign norm_n124 = norm_count; // (signal)
    assign norm_n125 = norm_r; // (signal)
    normalizer_z_10_10_10_f300_uid66 norm(
        .clk(clk),
        .x(fracrclose1),
        .count(norm_count),
        .r(norm_r));
    assign n130_o = shiftedfrac[0];
    assign n131_o = shiftedfrac[1];
    assign n132_o = n130_o & n131_o;
    assign n135_o = nzerosnew == 4'b1111;
    assign n136_o = n135_o ? 1'b1 : 1'b0;
    assign n138_o = newx_d2[15:8];
    assign n140_o = {2'b00, n138_o};
    assign n142_o = {6'b000000, nzerosnew};
    assign n143_o = n140_o-n142_o;
    assign n144_o = shiftedfrac[8:1];
    assign n145_o = {exponentresultclose, n144_o};
    assign n146_o = newy[7:0];
    assign n148_o = {1'b1, n146_o};
    assign rightshiftercomponent_n149 = rightshiftercomponent_r; // (signal)
    assign rightshiftercomponent_n150 = rightshiftercomponent_sticky; // (signal)
    rightshiftersticky9_by_max_11_f300_uid88 rightshiftercomponent(
        .clk(clk),
        .x(fracnewy),
        .s(shiftval),
        .r(rightshiftercomponent_r),
        .sticky(rightshiftercomponent_sticky));
    assign n156_o = {1'b0, shiftedfracy};
    assign n157_o = {effsub, effsub, effsub, effsub};
    assign n158_o = {effsub, effsub, effsub, effsub};
    assign n159_o = {effsub, effsub, effsub, effsub};
    assign n160_o = {n157_o, n158_o, n159_o};
    assign n161_o = fracyfar ^ effsubvector;
    assign n162_o = newx[7:0];
    assign n164_o = {2'b01, n162_o};
    assign n166_o = {n164_o, 2'b00};
    assign n167_o = ~sticky;
    assign n168_o = effsub_d2 & n167_o;
    assign fpsub_8_8_f300_uid2_fracaddfar_n169 = fpsub_8_8_f300_uid2_fracaddfar_r; // (signal)
    intadder_12_f300_uid1000 fpsub_8_8_f300_uid2_fracaddfar(
        .clk(clk),
        .x(fracxfar),
        .y(fracyfarxorop),
        .cin(cinaddfar),
        .r(fpsub_8_8_f300_uid2_fracaddfar_r));
    assign n172_o = fracresultfarnormstage[11:10];
    assign n173_o = fracresultfarnormstage[8:1];
    assign n175_o = fracleadingbits == 2'b00;
    assign n176_o = n175_o ? n173_o : n180_o;
    assign n177_o = fracresultfarnormstage[9:2];
    assign n179_o = fracleadingbits == 2'b01;
    assign n180_o = n179_o ? n177_o : n181_o;
    assign n181_o = fracresultfarnormstage[10:3];
    assign n182_o = fracresultfarnormstage[0];
    assign n184_o = fracleadingbits == 2'b00;
    assign n185_o = n184_o ? n182_o : n189_o;
    assign n186_o = fracresultfarnormstage[1];
    assign n188_o = fracleadingbits == 2'b01;
    assign n189_o = n188_o ? n186_o : n190_o;
    assign n190_o = fracresultfarnormstage[2];
    assign n192_o = fracleadingbits == 2'b00;
    assign n193_o = n192_o ? sticky : n198_o;
    assign n194_o = fracresultfarnormstage[0];
    assign n195_o = n194_o | sticky;
    assign n197_o = fracleadingbits == 2'b01;
    assign n198_o = n197_o ? n195_o : n202_o;
    assign n199_o = fracresultfarnormstage[1];
    assign n200_o = fracresultfarnormstage[0];
    assign n201_o = n199_o | n200_o;
    assign n202_o = n201_o | sticky;
    assign n203_o = fracresultfar1[0];
    assign n204_o = fracresultstickybit | n203_o;
    assign n205_o = fracresultroundbit & n204_o;
    assign n208_o = fracleadingbits == 2'b00;
    assign n209_o = n208_o ? 2'b11 : n213_o;
    assign n212_o = fracleadingbits == 2'b01;
    assign n213_o = n212_o ? 2'b00 : 2'b01;
    assign n215_o = expoperationsel[1];
    assign n216_o = expoperationsel[1];
    assign n217_o = expoperationsel[1];
    assign n218_o = expoperationsel[1];
    assign n219_o = expoperationsel[1];
    assign n220_o = expoperationsel[1];
    assign n221_o = expoperationsel[1];
    assign n222_o = expoperationsel[1];
    assign n223_o = expoperationsel[1];
    assign n224_o = {n223_o, n222_o, n221_o, n220_o};
    assign n225_o = {n219_o, n218_o, n217_o, n216_o};
    assign n226_o = {n224_o, n225_o, n215_o};
    assign n227_o = expoperationsel[0];
    assign n228_o = {n226_o, n227_o};
    assign n229_o = newx[15:8];
    assign n231_o = {2'b00, n229_o};
    assign n232_o = exponentresultfar0_d2+exponentupdate;
    assign n233_o = {exponentresultfar1, fracresultfar1};
    assign n235_o = selectclosepath_d2 == 1'b1;
    always @*
        case (n235_o)
            1'b1: n236_o = resultbeforeroundclose;
            default: n236_o = resultbeforeroundfar;
        endcase
    assign n238_o = selectclosepath_d2 == 1'b1;
    always @*
        case (n238_o)
            1'b1: n239_o = roundclose;
            default: n239_o = roundfar;
        endcase
    assign n240_o = selectclosepath_d2 & resultcloseiszero;
    assign fpsub_8_8_f300_uid2_finalroundadd_n242 = fpsub_8_8_f300_uid2_finalroundadd_r; // (signal)
    intadder_18_f300_uid13 fpsub_8_8_f300_uid2_finalroundadd(
        .clk(clk),
        .x(resultbeforeround),
        .y(n241_o),
        .cin(round),
        .r(fpsub_8_8_f300_uid2_finalroundadd_r));
    assign n245_o = resultrounded[17:16];
    assign n246_o = ~zerofromclose_d1;
    assign n248_o = {n246_o, 1'b0};
    assign n250_o = underflowoverflow == 2'b01;
    assign n253_o = underflowoverflow == 2'b10;
    assign n255_o = underflowoverflow == 2'b11;
    assign n256_o = n253_o | n255_o;
    assign n257_o = ~zerofromclose_d1;
    assign n259_o = {1'b0, n257_o};
    assign n260_o = {n256_o, n250_o};
    always @*
        case (n260_o)
            2'b10: n261_o = 2'b00;
            2'b01: n261_o = n248_o;
            default: n261_o = n259_o;
        endcase
    assign n262_o = resultrounded[15:0];
    assign n263_o = {syncressign_d3, n262_o};
    assign n264_o = resultnoexn[18:17];
    assign n266_o = syncexnxy_d3 == 4'b0101;
    assign n268_o = {1'b1, synceffsub_d3};
    assign n270_o = syncexnxy_d3 == 4'b1010;
    assign n273_o = syncexnxy_d3 == 4'b1110;
    assign n274_o = syncexnxy_d3[3:2];
    assign n275_o = {n273_o, n270_o, n266_o};
    always @*
        case (n275_o)
            3'b100: n276_o = 2'b11;
            3'b010: n276_o = n268_o;
            3'b001: n276_o = n264_o;
            default: n276_o = n274_o;
        endcase
    assign n277_o = resultnoexn[16];
    assign n279_o = syncexnxy_d3 == 4'b0101;
    assign n280_o = syncx_d3[16];
    assign n281_o = n280_o & syncsigny_d3;
    assign n283_o = syncexnxy_d3 == 4'b0000;
    assign n284_o = syncx_d3[16];
    assign n285_o = {n283_o, n279_o};
    always @*
        case (n285_o)
            2'b10: n286_o = n281_o;
            2'b01: n286_o = n277_o;
            default: n286_o = n284_o;
        endcase
    assign n287_o = resultnoexn[15:0];
    assign n289_o = syncexnxy_d3 == 4'b0101;
    assign n290_o = syncx_d3[15:0];
    always @*
        case (n289_o)
            1'b1: n291_o = n287_o;
            default: n291_o = n290_o;
        endcase
    assign n292_o = {exnr, sgnr};
    assign n293_o = {n292_o, expsigr};
    always @(posedge clk)
        n294_q <= newx;
    always @(posedge clk)
        n295_q <= newx_d1;
    always @(posedge clk)
        n296_q <= effsub;
    always @(posedge clk)
        n297_q <= effsub_d1;
    always @(posedge clk)
        n298_q <= selectclosepath;
    always @(posedge clk)
        n299_q <= selectclosepath_d1;
    always @(posedge clk)
        n300_q <= exponentresultfar0;
    always @(posedge clk)
        n301_q <= exponentresultfar0_d1;
    always @(posedge clk)
        n302_q <= zerofromclose;
    always @(posedge clk)
        n303_q <= synceffsub;
    always @(posedge clk)
        n304_q <= synceffsub_d1;
    always @(posedge clk)
        n305_q <= synceffsub_d2;
    always @(posedge clk)
        n306_q <= syncx;
    always @(posedge clk)
        n307_q <= syncx_d1;
    always @(posedge clk)
        n308_q <= syncx_d2;
    always @(posedge clk)
        n309_q <= syncsigny;
    always @(posedge clk)
        n310_q <= syncsigny_d1;
    always @(posedge clk)
        n311_q <= syncsigny_d2;
    always @(posedge clk)
        n312_q <= syncressign;
    always @(posedge clk)
        n313_q <= syncressign_d1;
    always @(posedge clk)
        n314_q <= syncressign_d2;
    assign n315_o = {n261_o, n263_o};
    always @(posedge clk)
        n316_q <= syncexnxy;
    always @(posedge clk)
        n317_q <= syncexnxy_d1;
    always @(posedge clk)
        n318_q <= syncexnxy_d2;
endmodule

