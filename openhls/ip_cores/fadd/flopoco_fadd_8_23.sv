module intadder_33_f300_uid13
    (input wire clk,
        input wire[32:0] x,
        input wire[32:0] y,
        input wire cin,
        output wire[32:0] r);
    wire[32:0] rtmp;
    wire[32:0] y_d1;
    wire[32:0] y_d2;
    wire[32:0] y_d3;
    wire[32:0] n556_o;
    wire[32:0] n557_o;
    wire[32:0] n558_o;
    reg[32:0] n559_q;
    reg[32:0] n560_q;
    reg[32:0] n561_q;
    assign r = rtmp;
    assign rtmp = n558_o; // (signal)
    assign y_d1 = n559_q; // (signal)
    assign y_d2 = n560_q; // (signal)
    assign y_d3 = n561_q; // (signal)
    assign n556_o = x+y_d3;
    assign n557_o = {32'b0, cin};  //  uext
    assign n558_o = n556_o+n557_o;
    always @(posedge clk)
        n559_q <= y;
    always @(posedge clk)
        n560_q <= y_d1;
    always @(posedge clk)
        n561_q <= y_d2;
endmodule

module intadder_27_f300_uid10
    (input wire clk,
        input wire[26:0] x,
        input wire[26:0] y,
        input wire cin,
        output wire[26:0] r);
    wire[26:0] rtmp;
    wire[26:0] x_d1;
    wire[26:0] x_d2;
    wire[26:0] x_d3;
    wire[26:0] y_d1;
    wire[26:0] y_d2;
    wire[26:0] y_d3;
    wire[26:0] n539_o;
    wire[26:0] n540_o;
    wire[26:0] n541_o;
    reg[26:0] n542_q;
    reg[26:0] n543_q;
    reg[26:0] n544_q;
    reg[26:0] n545_q;
    reg[26:0] n546_q;
    reg[26:0] n547_q;
    assign r = rtmp;
    assign rtmp = n541_o; // (signal)
    assign x_d1 = n542_q; // (signal)
    assign x_d2 = n543_q; // (signal)
    assign x_d3 = n544_q; // (signal)
    assign y_d1 = n545_q; // (signal)
    assign y_d2 = n546_q; // (signal)
    assign y_d3 = n547_q; // (signal)
    assign n539_o = x_d3+y_d3;
    assign n540_o = {26'b0, cin};  //  uext
    assign n541_o = n539_o+n540_o;
    always @(posedge clk)
        n542_q <= x;
    always @(posedge clk)
        n543_q <= x_d1;
    always @(posedge clk)
        n544_q <= x_d2;
    always @(posedge clk)
        n545_q <= y;
    always @(posedge clk)
        n546_q <= y_d1;
    always @(posedge clk)
        n547_q <= y_d2;
endmodule

module rightshiftersticky24_by_max_26_f300_uid8
    (input wire clk,
        input wire[23:0] x,
        input wire[4:0] s,
        output wire[25:0] r,
        output wire sticky);
    wire[4:0] ps;
    wire[4:0] ps_d1;
    wire[4:0] ps_d2;
    wire[4:0] ps_d3;
    wire[25:0] xpadded;
    wire[25:0] level5;
    wire[25:0] level5_d1;
    wire stk4;
    wire[25:0] level4;
    wire[25:0] level4_d1;
    wire stk3;
    wire stk3_d1;
    wire[25:0] level3;
    wire[25:0] level3_d1;
    wire[25:0] level3_d2;
    wire stk2;
    wire[25:0] level2;
    wire[25:0] level2_d1;
    wire[25:0] level2_d2;
    wire stk1;
    wire stk1_d1;
    wire[25:0] level1;
    wire[25:0] level1_d1;
    wire[25:0] level1_d2;
    wire[25:0] level1_d3;
    wire stk0;
    wire[25:0] level0;
    wire[25:0] n439_o;
    wire[15:0] n441_o;
    wire n443_o;
    wire n444_o;
    wire n445_o;
    wire n446_o;
    wire n448_o;
    wire n449_o;
    wire[25:0] n450_o;
    wire[9:0] n451_o;
    wire[25:0] n453_o;
    wire[7:0] n455_o;
    wire n457_o;
    wire n458_o;
    wire n459_o;
    wire n460_o;
    wire n461_o;
    wire n463_o;
    wire n464_o;
    wire[25:0] n465_o;
    wire[17:0] n466_o;
    wire[25:0] n468_o;
    wire[3:0] n470_o;
    wire n472_o;
    wire n473_o;
    wire n474_o;
    wire n475_o;
    wire n476_o;
    wire n478_o;
    wire n479_o;
    wire[25:0] n480_o;
    wire[21:0] n481_o;
    wire[25:0] n483_o;
    wire[1:0] n485_o;
    wire n487_o;
    wire n488_o;
    wire n489_o;
    wire n490_o;
    wire n491_o;
    wire n493_o;
    wire n494_o;
    wire[25:0] n495_o;
    wire[23:0] n496_o;
    wire[25:0] n498_o;
    wire n500_o;
    wire n502_o;
    wire n503_o;
    wire n504_o;
    wire n505_o;
    wire n506_o;
    wire n508_o;
    wire n509_o;
    wire[25:0] n510_o;
    wire[24:0] n511_o;
    wire[25:0] n513_o;
    reg[4:0] n514_q;
    reg[4:0] n515_q;
    reg[4:0] n516_q;
    reg[25:0] n517_q;
    reg[25:0] n518_q;
    reg n519_q;
    reg[25:0] n520_q;
    reg[25:0] n521_q;
    reg[25:0] n522_q;
    reg[25:0] n523_q;
    reg n524_q;
    reg[25:0] n525_q;
    reg[25:0] n526_q;
    reg[25:0] n527_q;
    assign r = level0;
    assign sticky = stk0;
    assign ps = s; // (signal)
    assign ps_d1 = n514_q; // (signal)
    assign ps_d2 = n515_q; // (signal)
    assign ps_d3 = n516_q; // (signal)
    assign xpadded = n439_o; // (signal)
    assign level5 = xpadded; // (signal)
    assign level5_d1 = n517_q; // (signal)
    assign stk4 = n446_o; // (signal)
    assign level4 = n450_o; // (signal)
    assign level4_d1 = n518_q; // (signal)
    assign stk3 = n461_o; // (signal)
    assign stk3_d1 = n519_q; // (signal)
    assign level3 = n465_o; // (signal)
    assign level3_d1 = n520_q; // (signal)
    assign level3_d2 = n521_q; // (signal)
    assign stk2 = n476_o; // (signal)
    assign level2 = n480_o; // (signal)
    assign level2_d1 = n522_q; // (signal)
    assign level2_d2 = n523_q; // (signal)
    assign stk1 = n491_o; // (signal)
    assign stk1_d1 = n524_q; // (signal)
    assign level1 = n495_o; // (signal)
    assign level1_d1 = n525_q; // (signal)
    assign level1_d2 = n526_q; // (signal)
    assign level1_d3 = n527_q; // (signal)
    assign stk0 = n506_o; // (signal)
    assign level0 = n510_o; // (signal)
    assign n439_o = {x, 2'b00};
    assign n441_o = level5_d1[15:0];
    assign n443_o = n441_o != 16'b0000000000000000;
    assign n444_o = ps_d1[4];
    assign n445_o = n443_o & n444_o;
    assign n446_o = n445_o ? 1'b1 : 1'b0;
    assign n448_o = ps[4];
    assign n449_o = ~n448_o;
    assign n450_o = n449_o ? level5 : n453_o;
    assign n451_o = level5[25:16];
    assign n453_o = {16'b0000000000000000, n451_o};
    assign n455_o = level4_d1[7:0];
    assign n457_o = n455_o != 8'b00000000;
    assign n458_o = ps_d1[3];
    assign n459_o = n457_o & n458_o;
    assign n460_o = n459_o | stk4;
    assign n461_o = n460_o ? 1'b1 : 1'b0;
    assign n463_o = ps[3];
    assign n464_o = ~n463_o;
    assign n465_o = n464_o ? level4 : n468_o;
    assign n466_o = level4[25:8];
    assign n468_o = {8'b00000000, n466_o};
    assign n470_o = level3_d2[3:0];
    assign n472_o = n470_o != 4'b0000;
    assign n473_o = ps_d2[2];
    assign n474_o = n472_o & n473_o;
    assign n475_o = n474_o | stk3_d1;
    assign n476_o = n475_o ? 1'b1 : 1'b0;
    assign n478_o = ps[2];
    assign n479_o = ~n478_o;
    assign n480_o = n479_o ? level3 : n483_o;
    assign n481_o = level3[25:4];
    assign n483_o = {4'b0000, n481_o};
    assign n485_o = level2_d2[1:0];
    assign n487_o = n485_o != 2'b00;
    assign n488_o = ps_d2[1];
    assign n489_o = n487_o & n488_o;
    assign n490_o = n489_o | stk2;
    assign n491_o = n490_o ? 1'b1 : 1'b0;
    assign n493_o = ps[1];
    assign n494_o = ~n493_o;
    assign n495_o = n494_o ? level2 : n498_o;
    assign n496_o = level2[25:2];
    assign n498_o = {2'b00, n496_o};
    assign n500_o = level1_d3[0];
    assign n502_o = n500_o != 1'b0;
    assign n503_o = ps_d3[0];
    assign n504_o = n502_o & n503_o;
    assign n505_o = n504_o | stk1_d1;
    assign n506_o = n505_o ? 1'b1 : 1'b0;
    assign n508_o = ps[0];
    assign n509_o = ~n508_o;
    assign n510_o = n509_o ? level1 : n513_o;
    assign n511_o = level1[25:1];
    assign n513_o = {1'b0, n511_o};
    always @(posedge clk)
        n514_q <= ps;
    always @(posedge clk)
        n515_q <= ps_d1;
    always @(posedge clk)
        n516_q <= ps_d2;
    always @(posedge clk)
        n517_q <= level5;
    always @(posedge clk)
        n518_q <= level4;
    always @(posedge clk)
        n519_q <= stk3;
    always @(posedge clk)
        n520_q <= level3;
    always @(posedge clk)
        n521_q <= level3_d1;
    always @(posedge clk)
        n522_q <= level2;
    always @(posedge clk)
        n523_q <= level2_d1;
    always @(posedge clk)
        n524_q <= stk1;
    always @(posedge clk)
        n525_q <= level1;
    always @(posedge clk)
        n526_q <= level1_d1;
    always @(posedge clk)
        n527_q <= level1_d2;
endmodule

module normalizer_z_25_25_25_f300_uid6
    (input wire clk,
        input wire[24:0] x,
        output wire[4:0] count,
        output wire[24:0] r);
    wire[24:0] level5;
    wire[24:0] level5_d1;
    wire count4;
    wire count4_d1;
    wire count4_d2;
    wire[24:0] level4;
    wire count3;
    wire count3_d1;
    wire count3_d2;
    wire[24:0] level3;
    wire[24:0] level3_d1;
    wire count2;
    wire count2_d1;
    wire[24:0] level2;
    wire count1;
    wire count1_d1;
    wire[24:0] level1;
    wire[24:0] level1_d1;
    wire count0;
    wire[24:0] level0;
    wire[4:0] scount;
    wire[15:0] n351_o;
    wire n353_o;
    wire n354_o;
    wire n356_o;
    wire[24:0] n357_o;
    wire[8:0] n358_o;
    wire[24:0] n360_o;
    wire[7:0] n362_o;
    wire n364_o;
    wire n365_o;
    wire n367_o;
    wire[24:0] n368_o;
    wire[16:0] n369_o;
    wire[24:0] n371_o;
    wire[3:0] n373_o;
    wire n375_o;
    wire n376_o;
    wire n378_o;
    wire[24:0] n379_o;
    wire[20:0] n380_o;
    wire[24:0] n382_o;
    wire[1:0] n384_o;
    wire n386_o;
    wire n387_o;
    wire n389_o;
    wire[24:0] n390_o;
    wire[22:0] n391_o;
    wire[24:0] n393_o;
    wire n395_o;
    wire n397_o;
    wire n398_o;
    wire n400_o;
    wire[24:0] n401_o;
    wire[23:0] n402_o;
    wire[24:0] n404_o;
    wire[1:0] n405_o;
    wire[2:0] n406_o;
    wire[3:0] n407_o;
    wire[4:0] n408_o;
    reg[24:0] n409_q;
    reg n410_q;
    reg n411_q;
    reg n412_q;
    reg n413_q;
    reg[24:0] n414_q;
    reg n415_q;
    reg n416_q;
    reg[24:0] n417_q;
    assign count = scount;
    assign r = level0;
    assign level5 = x; // (signal)
    assign level5_d1 = n409_q; // (signal)
    assign count4 = n354_o; // (signal)
    assign count4_d1 = n410_q; // (signal)
    assign count4_d2 = n411_q; // (signal)
    assign level4 = n357_o; // (signal)
    assign count3 = n365_o; // (signal)
    assign count3_d1 = n412_q; // (signal)
    assign count3_d2 = n413_q; // (signal)
    assign level3 = n368_o; // (signal)
    assign level3_d1 = n414_q; // (signal)
    assign count2 = n376_o; // (signal)
    assign count2_d1 = n415_q; // (signal)
    assign level2 = n379_o; // (signal)
    assign count1 = n387_o; // (signal)
    assign count1_d1 = n416_q; // (signal)
    assign level1 = n390_o; // (signal)
    assign level1_d1 = n417_q; // (signal)
    assign count0 = n398_o; // (signal)
    assign level0 = n401_o; // (signal)
    assign scount = n408_o; // (signal)
    assign n351_o = level5_d1[24:9];
    assign n353_o = n351_o == 16'b0000000000000000;
    assign n354_o = n353_o ? 1'b1 : 1'b0;
    assign n356_o = ~count4;
    assign n357_o = n356_o ? level5_d1 : n360_o;
    assign n358_o = level5_d1[8:0];
    assign n360_o = {n358_o, 16'b0000000000000000};
    assign n362_o = level4[24:17];
    assign n364_o = n362_o == 8'b00000000;
    assign n365_o = n364_o ? 1'b1 : 1'b0;
    assign n367_o = ~count3;
    assign n368_o = n367_o ? level4 : n371_o;
    assign n369_o = level4[16:0];
    assign n371_o = {n369_o, 8'b00000000};
    assign n373_o = level3_d1[24:21];
    assign n375_o = n373_o == 4'b0000;
    assign n376_o = n375_o ? 1'b1 : 1'b0;
    assign n378_o = ~count2;
    assign n379_o = n378_o ? level3_d1 : n382_o;
    assign n380_o = level3_d1[20:0];
    assign n382_o = {n380_o, 4'b0000};
    assign n384_o = level2[24:23];
    assign n386_o = n384_o == 2'b00;
    assign n387_o = n386_o ? 1'b1 : 1'b0;
    assign n389_o = ~count1;
    assign n390_o = n389_o ? level2 : n393_o;
    assign n391_o = level2[22:0];
    assign n393_o = {n391_o, 2'b00};
    assign n395_o = level1_d1[24];
    assign n397_o = n395_o == 1'b0;
    assign n398_o = n397_o ? 1'b1 : 1'b0;
    assign n400_o = ~count0;
    assign n401_o = n400_o ? level1_d1 : n404_o;
    assign n402_o = level1_d1[23:0];
    assign n404_o = {n402_o, 1'b0};
    assign n405_o = {count4_d2, count3_d2};
    assign n406_o = {n405_o, count2_d1};
    assign n407_o = {n406_o, count1_d1};
    assign n408_o = {n407_o, count0};
    always @(posedge clk)
        n409_q <= level5;
    always @(posedge clk)
        n410_q <= count4;
    always @(posedge clk)
        n411_q <= count4_d1;
    always @(posedge clk)
        n412_q <= count3;
    always @(posedge clk)
        n413_q <= count3_d1;
    always @(posedge clk)
        n414_q <= level3;
    always @(posedge clk)
        n415_q <= count2;
    always @(posedge clk)
        n416_q <= count1;
    always @(posedge clk)
        n417_q <= level1;
endmodule

module intdualsub_26_f300_uid4
    (input wire clk,
        input wire[25:0] x,
        input wire[25:0] y,
        output wire[25:0] xmy,
        output wire[25:0] ymx);
    wire[25:0] temprxmy;
    wire[25:0] temprymx;
    wire[25:0] n325_o;
    wire[25:0] n326_o;
    wire[25:0] n329_o;
    wire[25:0] n330_o;
    wire[25:0] n331_o;
    wire[25:0] n334_o;
    assign xmy = temprxmy;
    assign ymx = temprymx;
    assign temprxmy = n329_o; // (signal)
    assign temprymx = n334_o; // (signal)
    assign n325_o = ~y;
    assign n326_o = x+n325_o;
    assign n329_o = n326_o+26'b00000000000000000000000001;
    assign n330_o = ~x;
    assign n331_o = y+n330_o;
    assign n334_o = n331_o+26'b00000000000000000000000001;
endmodule

module fadd#(parameter ID=1)
    (input wire clk,
        input wire[33:0] X,
        input wire[33:0] Y,
        output wire[33:0] R);
    wire[33:0] inx;
    wire[33:0] iny;
    wire exceptionxsuperiory;
    wire exceptionxequaly;
    wire[8:0] signedexponentx;
    wire[8:0] signedexponenty;
    wire[8:0] exponentdifferencexy;
    wire[7:0] exponentdifferenceyx;
    wire swap;
    wire[33:0] newx;
    wire[33:0] newx_d1;
    wire[33:0] newx_d2;
    wire[33:0] newx_d3;
    wire[33:0] newy;
    wire[7:0] exponentdifference;
    wire shiftedout;
    wire[4:0] shiftval;
    wire effsub;
    wire effsub_d1;
    wire effsub_d2;
    wire effsub_d3;
    wire selectclosepath;
    wire selectclosepath_d1;
    wire selectclosepath_d2;
    wire selectclosepath_d3;
    wire[3:0] sdexnxy;
    wire pipesigny;
    wire[25:0] fracxclose1;
    wire[25:0] fracyclose1;
    wire[25:0] fracrclosexmy;
    wire[25:0] fracrcloseymx;
    wire fracsignclose;
    wire[24:0] fracrclose1;
    wire ressign;
    wire[4:0] nzerosnew;
    wire[24:0] shiftedfrac;
    wire roundclose0;
    wire resultcloseiszero0;
    wire[9:0] exponentresultclose;
    wire[32:0] resultbeforeroundclose;
    wire roundclose;
    wire resultcloseiszero;
    wire[23:0] fracnewy;
    wire[25:0] shiftedfracy;
    wire sticky;
    wire[26:0] fracyfar;
    wire[26:0] effsubvector;
    wire[26:0] fracyfarxorop;
    wire[26:0] fracxfar;
    wire cinaddfar;
    wire[26:0] fracresultfar0;
    wire[26:0] fracresultfarnormstage;
    wire[1:0] fracleadingbits;
    wire[22:0] fracresultfar1;
    wire fracresultroundbit;
    wire fracresultstickybit;
    wire roundfar1;
    wire[1:0] expoperationsel;
    wire[9:0] exponentupdate;
    wire[9:0] exponentresultfar0;
    wire[9:0] exponentresultfar0_d1;
    wire[9:0] exponentresultfar0_d2;
    wire[9:0] exponentresultfar0_d3;
    wire[9:0] exponentresultfar1;
    wire[32:0] resultbeforeroundfar;
    wire roundfar;
    wire[32:0] resultbeforeround;
    wire round;
    wire zerofromclose;
    wire[32:0] resultrounded;
    wire synceffsub;
    wire synceffsub_d1;
    wire synceffsub_d2;
    wire synceffsub_d3;
    wire[33:0] syncx;
    wire[33:0] syncx_d1;
    wire[33:0] syncx_d2;
    wire[33:0] syncx_d3;
    wire syncsigny;
    wire syncsigny_d1;
    wire syncsigny_d2;
    wire syncsigny_d3;
    wire syncressign;
    wire syncressign_d1;
    wire syncressign_d2;
    wire syncressign_d3;
    wire[1:0] underflowoverflow;
    wire[33:0] resultnoexn;
    wire[3:0] syncexnxy;
    wire[3:0] syncexnxy_d1;
    wire[3:0] syncexnxy_d2;
    wire[3:0] syncexnxy_d3;
    wire[1:0] exnr;
    wire sgnr;
    wire[30:0] expsigr;
    wire[1:0] n33_o;
    wire[1:0] n34_o;
    wire n35_o;
    wire n36_o;
    wire[1:0] n39_o;
    wire[1:0] n40_o;
    wire n41_o;
    wire n42_o;
    wire[7:0] n44_o;
    wire[8:0] n46_o;
    wire[7:0] n47_o;
    wire[8:0] n49_o;
    wire[8:0] n50_o;
    wire[7:0] n51_o;
    wire[7:0] n52_o;
    wire[7:0] n53_o;
    wire n54_o;
    wire n55_o;
    wire n56_o;
    wire n57_o;
    wire[33:0] n58_o;
    wire[33:0] n59_o;
    wire[7:0] n60_o;
    wire[7:0] n61_o;
    wire n62_o;
    wire n63_o;
    wire n64_o;
    wire n65_o;
    wire n66_o;
    wire[4:0] n67_o;
    wire n68_o;
    wire[4:0] n69_o;
    wire n71_o;
    wire n72_o;
    wire n73_o;
    wire[6:0] n74_o;
    wire n76_o;
    wire n77_o;
    wire[1:0] n79_o;
    wire[1:0] n80_o;
    wire[3:0] n81_o;
    wire n82_o;
    wire[22:0] n83_o;
    wire[24:0] n85_o;
    wire[25:0] n87_o;
    wire n88_o;
    wire[22:0] n89_o;
    wire[24:0] n91_o;
    wire[25:0] n93_o;
    wire n95_o;
    wire[22:0] n96_o;
    wire[25:0] n98_o;
    reg[25:0] n99_o;
    wire[25:0] fpadd_8_23_f300_uid2_dualsubclose_n100;
    wire[25:0] fpadd_8_23_f300_uid2_dualsubclose_n101;
    wire[25:0] fpadd_8_23_f300_uid2_dualsubclose_xmy;
    wire[25:0] fpadd_8_23_f300_uid2_dualsubclose_ymx;
    wire n106_o;
    wire[24:0] n107_o;
    wire n108_o;
    wire[24:0] n109_o;
    wire[24:0] n110_o;
    wire n113_o;
    wire n114_o;
    wire n115_o;
    wire n116_o;
    wire n117_o;
    wire n118_o;
    wire[4:0] norm_n119;
    wire[24:0] norm_n120;
    wire[4:0] norm_count;
    wire[24:0] norm_r;
    wire n125_o;
    wire n126_o;
    wire n127_o;
    wire n130_o;
    wire n131_o;
    wire[7:0] n133_o;
    wire[9:0] n135_o;
    wire[9:0] n137_o;
    wire[9:0] n138_o;
    wire[22:0] n139_o;
    wire[32:0] n140_o;
    wire[22:0] n141_o;
    wire[23:0] n143_o;
    wire[25:0] rightshiftercomponent_n144;
    wire rightshiftercomponent_n145;
    wire[25:0] rightshiftercomponent_r;
    wire rightshiftercomponent_sticky;
    wire[26:0] n151_o;
    wire[3:0] n152_o;
    wire[3:0] n153_o;
    wire[3:0] n154_o;
    wire[3:0] n155_o;
    wire[3:0] n156_o;
    wire[3:0] n157_o;
    wire[2:0] n158_o;
    wire[15:0] n159_o;
    wire[10:0] n160_o;
    wire[26:0] n161_o;
    wire[26:0] n162_o;
    wire[22:0] n163_o;
    wire[24:0] n165_o;
    wire[26:0] n167_o;
    wire n168_o;
    wire n169_o;
    wire[26:0] fpadd_8_23_f300_uid2_fracaddfar_n170;
    wire[26:0] fpadd_8_23_f300_uid2_fracaddfar_r;
    wire[1:0] n173_o;
    wire[22:0] n174_o;
    wire n176_o;
    wire[22:0] n177_o;
    wire[22:0] n178_o;
    wire n180_o;
    wire[22:0] n181_o;
    wire[22:0] n182_o;
    wire n183_o;
    wire n185_o;
    wire n186_o;
    wire n187_o;
    wire n189_o;
    wire n190_o;
    wire n191_o;
    wire n193_o;
    wire n194_o;
    wire n195_o;
    wire n196_o;
    wire n198_o;
    wire n199_o;
    wire n200_o;
    wire n201_o;
    wire n202_o;
    wire n203_o;
    wire n204_o;
    wire n205_o;
    wire n206_o;
    wire n209_o;
    wire[1:0] n210_o;
    wire n213_o;
    wire[1:0] n214_o;
    wire n216_o;
    wire n217_o;
    wire n218_o;
    wire n219_o;
    wire n220_o;
    wire n221_o;
    wire n222_o;
    wire n223_o;
    wire n224_o;
    wire[3:0] n225_o;
    wire[3:0] n226_o;
    wire[8:0] n227_o;
    wire n228_o;
    wire[9:0] n229_o;
    wire[7:0] n230_o;
    wire[9:0] n232_o;
    wire[9:0] n233_o;
    wire[32:0] n234_o;
    wire n236_o;
    reg[32:0] n237_o;
    wire n239_o;
    reg n240_o;
    wire n241_o;
    localparam [32:0] n242_o = 33'b000000000000000000000000000000000;
    wire[32:0] fpadd_8_23_f300_uid2_finalroundadd_n243;
    wire[32:0] fpadd_8_23_f300_uid2_finalroundadd_r;
    wire[1:0] n246_o;
    wire n247_o;
    wire[1:0] n249_o;
    wire n251_o;
    wire n254_o;
    wire n256_o;
    wire n257_o;
    wire n258_o;
    wire[1:0] n260_o;
    wire[1:0] n261_o;
    reg[1:0] n262_o;
    wire[30:0] n263_o;
    wire[31:0] n264_o;
    wire[1:0] n265_o;
    wire n267_o;
    wire[1:0] n269_o;
    wire n271_o;
    wire n274_o;
    wire[1:0] n275_o;
    wire[2:0] n276_o;
    reg[1:0] n277_o;
    wire n278_o;
    wire n280_o;
    wire n281_o;
    wire n282_o;
    wire n284_o;
    wire n285_o;
    wire[1:0] n286_o;
    reg n287_o;
    wire[30:0] n288_o;
    wire n290_o;
    wire[30:0] n291_o;
    reg[30:0] n292_o;
    wire[2:0] n293_o;
    wire[33:0] n294_o;
    reg[33:0] n295_q;
    reg[33:0] n296_q;
    reg[33:0] n297_q;
    reg n298_q;
    reg n299_q;
    reg n300_q;
    reg n301_q;
    reg n302_q;
    reg n303_q;
    reg[9:0] n304_q;
    reg[9:0] n305_q;
    reg[9:0] n306_q;
    reg n307_q;
    reg n308_q;
    reg n309_q;
    reg[33:0] n310_q;
    reg[33:0] n311_q;
    reg[33:0] n312_q;
    reg n313_q;
    reg n314_q;
    reg n315_q;
    reg n316_q;
    reg n317_q;
    reg n318_q;
    wire[33:0] n319_o;
    reg[3:0] n320_q;
    reg[3:0] n321_q;
    reg[3:0] n322_q;
    assign R = n294_o;
    assign inx = X; // (signal)
    assign iny = Y; // (signal)
    assign exceptionxsuperiory = n36_o; // (signal)
    assign exceptionxequaly = n42_o; // (signal)
    assign signedexponentx = n46_o; // (signal)
    assign signedexponenty = n49_o; // (signal)
    assign exponentdifferencexy = n50_o; // (signal)
    assign exponentdifferenceyx = n53_o; // (signal)
    assign swap = n57_o; // (signal)
    assign newx = n58_o; // (signal)
    assign newx_d1 = n295_q; // (signal)
    assign newx_d2 = n296_q; // (signal)
    assign newx_d3 = n297_q; // (signal)
    assign newy = n59_o; // (signal)
    assign exponentdifference = n60_o; // (signal)
    assign shiftedout = n66_o; // (signal)
    assign shiftval = n69_o; // (signal)
    assign effsub = n73_o; // (signal)
    assign effsub_d1 = n298_q; // (signal)
    assign effsub_d2 = n299_q; // (signal)
    assign effsub_d3 = n300_q; // (signal)
    assign selectclosepath = n77_o; // (signal)
    assign selectclosepath_d1 = n301_q; // (signal)
    assign selectclosepath_d2 = n302_q; // (signal)
    assign selectclosepath_d3 = n303_q; // (signal)
    assign sdexnxy = n81_o; // (signal)
    assign pipesigny = n82_o; // (signal)
    assign fracxclose1 = n87_o; // (signal)
    assign fracyclose1 = n99_o; // (signal)
    assign fracrclosexmy = fpadd_8_23_f300_uid2_dualsubclose_n100; // (signal)
    assign fracrcloseymx = fpadd_8_23_f300_uid2_dualsubclose_n101; // (signal)
    assign fracsignclose = n106_o; // (signal)
    assign fracrclose1 = n109_o; // (signal)
    assign ressign = n115_o; // (signal)
    assign nzerosnew = norm_n119; // (signal)
    assign shiftedfrac = norm_n120; // (signal)
    assign roundclose0 = n127_o; // (signal)
    assign resultcloseiszero0 = n131_o; // (signal)
    assign exponentresultclose = n138_o; // (signal)
    assign resultbeforeroundclose = n140_o; // (signal)
    assign roundclose = roundclose0; // (signal)
    assign resultcloseiszero = resultcloseiszero0; // (signal)
    assign fracnewy = n143_o; // (signal)
    assign shiftedfracy = rightshiftercomponent_n144; // (signal)
    assign sticky = rightshiftercomponent_n145; // (signal)
    assign fracyfar = n151_o; // (signal)
    assign effsubvector = n161_o; // (signal)
    assign fracyfarxorop = n162_o; // (signal)
    assign fracxfar = n167_o; // (signal)
    assign cinaddfar = n169_o; // (signal)
    assign fracresultfar0 = fpadd_8_23_f300_uid2_fracaddfar_n170; // (signal)
    assign fracresultfarnormstage = fracresultfar0; // (signal)
    assign fracleadingbits = n173_o; // (signal)
    assign fracresultfar1 = n177_o; // (signal)
    assign fracresultroundbit = n186_o; // (signal)
    assign fracresultstickybit = n194_o; // (signal)
    assign roundfar1 = n206_o; // (signal)
    assign expoperationsel = n210_o; // (signal)
    assign exponentupdate = n229_o; // (signal)
    assign exponentresultfar0 = n232_o; // (signal)
    assign exponentresultfar0_d1 = n304_q; // (signal)
    assign exponentresultfar0_d2 = n305_q; // (signal)
    assign exponentresultfar0_d3 = n306_q; // (signal)
    assign exponentresultfar1 = n233_o; // (signal)
    assign resultbeforeroundfar = n234_o; // (signal)
    assign roundfar = roundfar1; // (signal)
    assign resultbeforeround = n237_o; // (signal)
    assign round = n240_o; // (signal)
    assign zerofromclose = n241_o; // (signal)
    assign resultrounded = fpadd_8_23_f300_uid2_finalroundadd_n243; // (signal)
    assign synceffsub = effsub; // (signal)
    assign synceffsub_d1 = n307_q; // (signal)
    assign synceffsub_d2 = n308_q; // (signal)
    assign synceffsub_d3 = n309_q; // (signal)
    assign syncx = newx; // (signal)
    assign syncx_d1 = n310_q; // (signal)
    assign syncx_d2 = n311_q; // (signal)
    assign syncx_d3 = n312_q; // (signal)
    assign syncsigny = pipesigny; // (signal)
    assign syncsigny_d1 = n313_q; // (signal)
    assign syncsigny_d2 = n314_q; // (signal)
    assign syncsigny_d3 = n315_q; // (signal)
    assign syncressign = ressign; // (signal)
    assign syncressign_d1 = n316_q; // (signal)
    assign syncressign_d2 = n317_q; // (signal)
    assign syncressign_d3 = n318_q; // (signal)
    assign underflowoverflow = n246_o; // (signal)
    assign resultnoexn = n319_o; // (signal)
    assign syncexnxy = sdexnxy; // (signal)
    assign syncexnxy_d1 = n320_q; // (signal)
    assign syncexnxy_d2 = n321_q; // (signal)
    assign syncexnxy_d3 = n322_q; // (signal)
    assign exnr = n277_o; // (signal)
    assign sgnr = n287_o; // (signal)
    assign expsigr = n292_o; // (signal)
    assign n33_o = inx[33:32];
    assign n34_o = iny[33:32];
    assign n35_o = $unsigned(n33_o) >= $unsigned(n34_o);
    assign n36_o = n35_o ? 1'b1 : 1'b0;
    assign n39_o = inx[33:32];
    assign n40_o = iny[33:32];
    assign n41_o = n39_o == n40_o;
    assign n42_o = n41_o ? 1'b1 : 1'b0;
    assign n44_o = inx[30:23];
    assign n46_o = {1'b0, n44_o};
    assign n47_o = iny[30:23];
    assign n49_o = {1'b0, n47_o};
    assign n50_o = signedexponentx-signedexponenty;
    assign n51_o = signedexponenty[7:0];
    assign n52_o = signedexponentx[7:0];
    assign n53_o = n51_o-n52_o;
    assign n54_o = exponentdifferencexy[8];
    assign n55_o = exceptionxequaly & n54_o;
    assign n56_o = ~exceptionxsuperiory;
    assign n57_o = n55_o | n56_o;
    assign n58_o = swap ? iny : inx;
    assign n59_o = swap ? inx : iny;
    assign n60_o = swap ? exponentdifferenceyx : n61_o;
    assign n61_o = exponentdifferencexy[7:0];
    assign n62_o = exponentdifference[7];
    assign n63_o = exponentdifference[6];
    assign n64_o = n62_o | n63_o;
    assign n65_o = exponentdifference[5];
    assign n66_o = n64_o | n65_o;
    assign n67_o = exponentdifference[4:0];
    assign n68_o = ~shiftedout;
    assign n69_o = n68_o ? n67_o : 5'b11010;
    assign n71_o = newx[31];
    assign n72_o = newy[31];
    assign n73_o = n71_o ^ n72_o;
    assign n74_o = exponentdifference[7:1];
    assign n76_o = n74_o == 7'b0000000;
    assign n77_o = n76_o ? effsub : 1'b0;
    assign n79_o = newx[33:32];
    assign n80_o = newy[33:32];
    assign n81_o = {n79_o, n80_o};
    assign n82_o = newy[31];
    assign n83_o = newx[22:0];
    assign n85_o = {2'b01, n83_o};
    assign n87_o = {n85_o, 1'b0};
    assign n88_o = exponentdifference[0];
    assign n89_o = newy[22:0];
    assign n91_o = {2'b01, n89_o};
    assign n93_o = {n91_o, 1'b0};
    assign n95_o = n88_o == 1'b0;
    assign n96_o = newy[22:0];
    assign n98_o = {3'b001, n96_o};
    always @*
        case (n95_o)
            1'b1: n99_o = n93_o;
            default: n99_o = n98_o;
        endcase
    assign fpadd_8_23_f300_uid2_dualsubclose_n100 = fpadd_8_23_f300_uid2_dualsubclose_xmy; // (signal)
    assign fpadd_8_23_f300_uid2_dualsubclose_n101 = fpadd_8_23_f300_uid2_dualsubclose_ymx; // (signal)
    intdualsub_26_f300_uid4 fpadd_8_23_f300_uid2_dualsubclose(
        .clk(clk),
        .x(fracxclose1),
        .y(fracyclose1),
        .xmy(fpadd_8_23_f300_uid2_dualsubclose_xmy),
        .ymx(fpadd_8_23_f300_uid2_dualsubclose_ymx));
    assign n106_o = fracrclosexmy[25];
    assign n107_o = fracrclosexmy[24:0];
    assign n108_o = ~fracsignclose;
    assign n109_o = n108_o ? n107_o : n110_o;
    assign n110_o = fracrcloseymx[24:0];
    assign n113_o = fracrclose1 == 25'b0000000000000000000000000;
    assign n114_o = selectclosepath & n113_o;
    assign n115_o = n114_o ? 1'b0 : n118_o;
    assign n116_o = newx[31];
    assign n117_o = selectclosepath & fracsignclose;
    assign n118_o = n116_o ^ n117_o;
    assign norm_n119 = norm_count; // (signal)
    assign norm_n120 = norm_r; // (signal)
    normalizer_z_25_25_25_f300_uid6 norm(
        .clk(clk),
        .x(fracrclose1),
        .count(norm_count),
        .r(norm_r));
    assign n125_o = shiftedfrac[0];
    assign n126_o = shiftedfrac[1];
    assign n127_o = n125_o & n126_o;
    assign n130_o = nzerosnew == 5'b11111;
    assign n131_o = n130_o ? 1'b1 : 1'b0;
    assign n133_o = newx_d3[30:23];
    assign n135_o = {2'b00, n133_o};
    assign n137_o = {5'b00000, nzerosnew};
    assign n138_o = n135_o-n137_o;
    assign n139_o = shiftedfrac[23:1];
    assign n140_o = {exponentresultclose, n139_o};
    assign n141_o = newy[22:0];
    assign n143_o = {1'b1, n141_o};
    assign rightshiftercomponent_n144 = rightshiftercomponent_r; // (signal)
    assign rightshiftercomponent_n145 = rightshiftercomponent_sticky; // (signal)
    rightshiftersticky24_by_max_26_f300_uid8 rightshiftercomponent(
        .clk(clk),
        .x(fracnewy),
        .s(shiftval),
        .r(rightshiftercomponent_r),
        .sticky(rightshiftercomponent_sticky));
    assign n151_o = {1'b0, shiftedfracy};
    assign n152_o = {effsub, effsub, effsub, effsub};
    assign n153_o = {effsub, effsub, effsub, effsub};
    assign n154_o = {effsub, effsub, effsub, effsub};
    assign n155_o = {effsub, effsub, effsub, effsub};
    assign n156_o = {effsub, effsub, effsub, effsub};
    assign n157_o = {effsub, effsub, effsub, effsub};
    assign n158_o = {effsub, effsub, effsub};
    assign n159_o = {n152_o, n153_o, n154_o, n155_o};
    assign n160_o = {n156_o, n157_o, n158_o};
    assign n161_o = {n159_o, n160_o};
    assign n162_o = fracyfar ^ effsubvector;
    assign n163_o = newx[22:0];
    assign n165_o = {2'b01, n163_o};
    assign n167_o = {n165_o, 2'b00};
    assign n168_o = ~sticky;
    assign n169_o = effsub_d3 & n168_o;
    assign fpadd_8_23_f300_uid2_fracaddfar_n170 = fpadd_8_23_f300_uid2_fracaddfar_r; // (signal)
    intadder_27_f300_uid10 fpadd_8_23_f300_uid2_fracaddfar(
        .clk(clk),
        .x(fracxfar),
        .y(fracyfarxorop),
        .cin(cinaddfar),
        .r(fpadd_8_23_f300_uid2_fracaddfar_r));
    assign n173_o = fracresultfarnormstage[26:25];
    assign n174_o = fracresultfarnormstage[23:1];
    assign n176_o = fracleadingbits == 2'b00;
    assign n177_o = n176_o ? n174_o : n181_o;
    assign n178_o = fracresultfarnormstage[24:2];
    assign n180_o = fracleadingbits == 2'b01;
    assign n181_o = n180_o ? n178_o : n182_o;
    assign n182_o = fracresultfarnormstage[25:3];
    assign n183_o = fracresultfarnormstage[0];
    assign n185_o = fracleadingbits == 2'b00;
    assign n186_o = n185_o ? n183_o : n190_o;
    assign n187_o = fracresultfarnormstage[1];
    assign n189_o = fracleadingbits == 2'b01;
    assign n190_o = n189_o ? n187_o : n191_o;
    assign n191_o = fracresultfarnormstage[2];
    assign n193_o = fracleadingbits == 2'b00;
    assign n194_o = n193_o ? sticky : n199_o;
    assign n195_o = fracresultfarnormstage[0];
    assign n196_o = n195_o | sticky;
    assign n198_o = fracleadingbits == 2'b01;
    assign n199_o = n198_o ? n196_o : n203_o;
    assign n200_o = fracresultfarnormstage[1];
    assign n201_o = fracresultfarnormstage[0];
    assign n202_o = n200_o | n201_o;
    assign n203_o = n202_o | sticky;
    assign n204_o = fracresultfar1[0];
    assign n205_o = fracresultstickybit | n204_o;
    assign n206_o = fracresultroundbit & n205_o;
    assign n209_o = fracleadingbits == 2'b00;
    assign n210_o = n209_o ? 2'b11 : n214_o;
    assign n213_o = fracleadingbits == 2'b01;
    assign n214_o = n213_o ? 2'b00 : 2'b01;
    assign n216_o = expoperationsel[1];
    assign n217_o = expoperationsel[1];
    assign n218_o = expoperationsel[1];
    assign n219_o = expoperationsel[1];
    assign n220_o = expoperationsel[1];
    assign n221_o = expoperationsel[1];
    assign n222_o = expoperationsel[1];
    assign n223_o = expoperationsel[1];
    assign n224_o = expoperationsel[1];
    assign n225_o = {n224_o, n223_o, n222_o, n221_o};
    assign n226_o = {n220_o, n219_o, n218_o, n217_o};
    assign n227_o = {n225_o, n226_o, n216_o};
    assign n228_o = expoperationsel[0];
    assign n229_o = {n227_o, n228_o};
    assign n230_o = newx[30:23];
    assign n232_o = {2'b00, n230_o};
    assign n233_o = exponentresultfar0_d3+exponentupdate;
    assign n234_o = {exponentresultfar1, fracresultfar1};
    assign n236_o = selectclosepath_d3 == 1'b1;
    always @*
        case (n236_o)
            1'b1: n237_o = resultbeforeroundclose;
            default: n237_o = resultbeforeroundfar;
        endcase
    assign n239_o = selectclosepath_d3 == 1'b1;
    always @*
        case (n239_o)
            1'b1: n240_o = roundclose;
            default: n240_o = roundfar;
        endcase
    assign n241_o = selectclosepath_d3 & resultcloseiszero;
    assign fpadd_8_23_f300_uid2_finalroundadd_n243 = fpadd_8_23_f300_uid2_finalroundadd_r; // (signal)
    intadder_33_f300_uid13 fpadd_8_23_f300_uid2_finalroundadd(
        .clk(clk),
        .x(resultbeforeround),
        .y(n242_o),
        .cin(round),
        .r(fpadd_8_23_f300_uid2_finalroundadd_r));
    assign n246_o = resultrounded[32:31];
    assign n247_o = ~zerofromclose;
    assign n249_o = {n247_o, 1'b0};
    assign n251_o = underflowoverflow == 2'b01;
    assign n254_o = underflowoverflow == 2'b10;
    assign n256_o = underflowoverflow == 2'b11;
    assign n257_o = n254_o | n256_o;
    assign n258_o = ~zerofromclose;
    assign n260_o = {1'b0, n258_o};
    assign n261_o = {n257_o, n251_o};
    always @*
        case (n261_o)
            2'b10: n262_o = 2'b00;
            2'b01: n262_o = n249_o;
            default: n262_o = n260_o;
        endcase
    assign n263_o = resultrounded[30:0];
    assign n264_o = {syncressign_d3, n263_o};
    assign n265_o = resultnoexn[33:32];
    assign n267_o = syncexnxy_d3 == 4'b0101;
    assign n269_o = {1'b1, synceffsub_d3};
    assign n271_o = syncexnxy_d3 == 4'b1010;
    assign n274_o = syncexnxy_d3 == 4'b1110;
    assign n275_o = syncexnxy_d3[3:2];
    assign n276_o = {n274_o, n271_o, n267_o};
    always @*
        case (n276_o)
            3'b100: n277_o = 2'b11;
            3'b010: n277_o = n269_o;
            3'b001: n277_o = n265_o;
            default: n277_o = n275_o;
        endcase
    assign n278_o = resultnoexn[31];
    assign n280_o = syncexnxy_d3 == 4'b0101;
    assign n281_o = syncx_d3[31];
    assign n282_o = n281_o & syncsigny_d3;
    assign n284_o = syncexnxy_d3 == 4'b0000;
    assign n285_o = syncx_d3[31];
    assign n286_o = {n284_o, n280_o};
    always @*
        case (n286_o)
            2'b10: n287_o = n282_o;
            2'b01: n287_o = n278_o;
            default: n287_o = n285_o;
        endcase
    assign n288_o = resultnoexn[30:0];
    assign n290_o = syncexnxy_d3 == 4'b0101;
    assign n291_o = syncx_d3[30:0];
    always @*
        case (n290_o)
            1'b1: n292_o = n288_o;
            default: n292_o = n291_o;
        endcase
    assign n293_o = {exnr, sgnr};
    assign n294_o = {n293_o, expsigr};
    always @(posedge clk)
        n295_q <= newx;
    always @(posedge clk)
        n296_q <= newx_d1;
    always @(posedge clk)
        n297_q <= newx_d2;
    always @(posedge clk)
        n298_q <= effsub;
    always @(posedge clk)
        n299_q <= effsub_d1;
    always @(posedge clk)
        n300_q <= effsub_d2;
    always @(posedge clk)
        n301_q <= selectclosepath;
    always @(posedge clk)
        n302_q <= selectclosepath_d1;
    always @(posedge clk)
        n303_q <= selectclosepath_d2;
    always @(posedge clk)
        n304_q <= exponentresultfar0;
    always @(posedge clk)
        n305_q <= exponentresultfar0_d1;
    always @(posedge clk)
        n306_q <= exponentresultfar0_d2;
    always @(posedge clk)
        n307_q <= synceffsub;
    always @(posedge clk)
        n308_q <= synceffsub_d1;
    always @(posedge clk)
        n309_q <= synceffsub_d2;
    always @(posedge clk)
        n310_q <= syncx;
    always @(posedge clk)
        n311_q <= syncx_d1;
    always @(posedge clk)
        n312_q <= syncx_d2;
    always @(posedge clk)
        n313_q <= syncsigny;
    always @(posedge clk)
        n314_q <= syncsigny_d1;
    always @(posedge clk)
        n315_q <= syncsigny_d2;
    always @(posedge clk)
        n316_q <= syncressign;
    always @(posedge clk)
        n317_q <= syncressign_d1;
    always @(posedge clk)
        n318_q <= syncressign_d2;
    assign n319_o = {n262_o, n264_o};
    always @(posedge clk)
        n320_q <= syncexnxy;
    always @(posedge clk)
        n321_q <= syncexnxy_d1;
    always @(posedge clk)
        n322_q <= syncexnxy_d2;
endmodule

