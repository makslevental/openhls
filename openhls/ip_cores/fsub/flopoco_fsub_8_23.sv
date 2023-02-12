module intadder_33_f300_uid1333
    (input wire clk,
        input wire [32:0] x,
        input wire [32:0] y,
        input wire cin,
       output wire [32:0] r);
    wire[32:0] rtmp;
    wire[32:0] y_d1;
    wire[32:0] y_d2;
    wire[32:0] y_d3;
    wire[32:0] n562_o;
    wire[32:0] n563_o;
    wire[32:0] n564_o;
    reg[32:0] n565_q;
    reg[32:0] n566_q;
    reg[32:0] n567_q;
    assign r = rtmp;
    assign rtmp = n564_o; // (signal)
    assign y_d1 = n565_q; // (signal)
    assign y_d2 = n566_q; // (signal)
    assign y_d3 = n567_q; // (signal)
    assign n562_o = x+y_d3;
    assign n563_o = {32'b0, cin};  //  uext
    assign n564_o = n562_o+n563_o;
    always @(posedge clk)
        n565_q <= y;
    always @(posedge clk)
        n566_q <= y_d1;
    always @(posedge clk)
        n567_q <= y_d2;
endmodule

module intadder_27_f300_uid1000
    (input wire clk,
        input wire [26:0] x,
        input wire [26:0] y,
        input wire cin,
       output wire [26:0] r);
    wire[26:0] rtmp;
    wire[26:0] x_d1;
    wire[26:0] x_d2;
    wire[26:0] x_d3;
    wire[26:0] y_d1;
    wire[26:0] y_d2;
    wire[26:0] y_d3;
    wire[26:0] n545_o;
    wire[26:0] n546_o;
    wire[26:0] n547_o;
    reg[26:0] n548_q;
    reg[26:0] n549_q;
    reg[26:0] n550_q;
    reg[26:0] n551_q;
    reg[26:0] n552_q;
    reg[26:0] n553_q;
    assign r = rtmp;
    assign rtmp = n547_o; // (signal)
    assign x_d1 = n548_q; // (signal)
    assign x_d2 = n549_q; // (signal)
    assign x_d3 = n550_q; // (signal)
    assign y_d1 = n551_q; // (signal)
    assign y_d2 = n552_q; // (signal)
    assign y_d3 = n553_q; // (signal)
    assign n545_o = x_d3+y_d3;
    assign n546_o = {26'b0, cin};  //  uext
    assign n547_o = n545_o+n546_o;
    always @(posedge clk)
        n548_q <= x;
    always @(posedge clk)
        n549_q <= x_d1;
    always @(posedge clk)
        n550_q <= x_d2;
    always @(posedge clk)
        n551_q <= y;
    always @(posedge clk)
        n552_q <= y_d1;
    always @(posedge clk)
        n553_q <= y_d2;
endmodule

module rightshiftersticky24_by_max_26_f300_uid8
    (input wire clk,
        input wire [23:0] x,
        input wire [4:0] s,
       output wire [25:0] r,
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
    wire[25:0] n445_o;
    wire[15:0] n447_o;
    wire n449_o;
    wire n450_o;
    wire n451_o;
    wire n452_o;
    wire n454_o;
    wire n455_o;
    wire[25:0] n456_o;
    wire[9:0] n457_o;
    wire[25:0] n459_o;
    wire[7:0] n461_o;
    wire n463_o;
    wire n464_o;
    wire n465_o;
    wire n466_o;
    wire n467_o;
    wire n469_o;
    wire n470_o;
    wire[25:0] n471_o;
    wire[17:0] n472_o;
    wire[25:0] n474_o;
    wire[3:0] n476_o;
    wire n478_o;
    wire n479_o;
    wire n480_o;
    wire n481_o;
    wire n482_o;
    wire n484_o;
    wire n485_o;
    wire[25:0] n486_o;
    wire[21:0] n487_o;
    wire[25:0] n489_o;
    wire[1:0] n491_o;
    wire n493_o;
    wire n494_o;
    wire n495_o;
    wire n496_o;
    wire n497_o;
    wire n499_o;
    wire n500_o;
    wire[25:0] n501_o;
    wire[23:0] n502_o;
    wire[25:0] n504_o;
    wire n506_o;
    wire n508_o;
    wire n509_o;
    wire n510_o;
    wire n511_o;
    wire n512_o;
    wire n514_o;
    wire n515_o;
    wire[25:0] n516_o;
    wire[24:0] n517_o;
    wire[25:0] n519_o;
    reg[4:0] n520_q;
    reg[4:0] n521_q;
    reg[4:0] n522_q;
    reg[25:0] n523_q;
    reg[25:0] n524_q;
    reg n525_q;
    reg[25:0] n526_q;
    reg[25:0] n527_q;
    reg[25:0] n528_q;
    reg[25:0] n529_q;
    reg n530_q;
    reg[25:0] n531_q;
    reg[25:0] n532_q;
    reg[25:0] n533_q;
    assign r = level0;
    assign sticky = stk0;
    assign ps = s; // (signal)
    assign ps_d1 = n520_q; // (signal)
    assign ps_d2 = n521_q; // (signal)
    assign ps_d3 = n522_q; // (signal)
    assign xpadded = n445_o; // (signal)
    assign level5 = xpadded; // (signal)
    assign level5_d1 = n523_q; // (signal)
    assign stk4 = n452_o; // (signal)
    assign level4 = n456_o; // (signal)
    assign level4_d1 = n524_q; // (signal)
    assign stk3 = n467_o; // (signal)
    assign stk3_d1 = n525_q; // (signal)
    assign level3 = n471_o; // (signal)
    assign level3_d1 = n526_q; // (signal)
    assign level3_d2 = n527_q; // (signal)
    assign stk2 = n482_o; // (signal)
    assign level2 = n486_o; // (signal)
    assign level2_d1 = n528_q; // (signal)
    assign level2_d2 = n529_q; // (signal)
    assign stk1 = n497_o; // (signal)
    assign stk1_d1 = n530_q; // (signal)
    assign level1 = n501_o; // (signal)
    assign level1_d1 = n531_q; // (signal)
    assign level1_d2 = n532_q; // (signal)
    assign level1_d3 = n533_q; // (signal)
    assign stk0 = n512_o; // (signal)
    assign level0 = n516_o; // (signal)
    assign n445_o = {x, 2'b00};
    assign n447_o = level5_d1[15:0];
    assign n449_o = n447_o != 16'b0000000000000000;
    assign n450_o = ps_d1[4];
    assign n451_o = n449_o & n450_o;
    assign n452_o = n451_o ? 1'b1 : 1'b0;
    assign n454_o = ps[4];
    assign n455_o = ~n454_o;
    assign n456_o = n455_o ? level5 : n459_o;
    assign n457_o = level5[25:16];
    assign n459_o = {16'b0000000000000000, n457_o};
    assign n461_o = level4_d1[7:0];
    assign n463_o = n461_o != 8'b00000000;
    assign n464_o = ps_d1[3];
    assign n465_o = n463_o & n464_o;
    assign n466_o = n465_o | stk4;
    assign n467_o = n466_o ? 1'b1 : 1'b0;
    assign n469_o = ps[3];
    assign n470_o = ~n469_o;
    assign n471_o = n470_o ? level4 : n474_o;
    assign n472_o = level4[25:8];
    assign n474_o = {8'b00000000, n472_o};
    assign n476_o = level3_d2[3:0];
    assign n478_o = n476_o != 4'b0000;
    assign n479_o = ps_d2[2];
    assign n480_o = n478_o & n479_o;
    assign n481_o = n480_o | stk3_d1;
    assign n482_o = n481_o ? 1'b1 : 1'b0;
    assign n484_o = ps[2];
    assign n485_o = ~n484_o;
    assign n486_o = n485_o ? level3 : n489_o;
    assign n487_o = level3[25:4];
    assign n489_o = {4'b0000, n487_o};
    assign n491_o = level2_d2[1:0];
    assign n493_o = n491_o != 2'b00;
    assign n494_o = ps_d2[1];
    assign n495_o = n493_o & n494_o;
    assign n496_o = n495_o | stk2;
    assign n497_o = n496_o ? 1'b1 : 1'b0;
    assign n499_o = ps[1];
    assign n500_o = ~n499_o;
    assign n501_o = n500_o ? level2 : n504_o;
    assign n502_o = level2[25:2];
    assign n504_o = {2'b00, n502_o};
    assign n506_o = level1_d3[0];
    assign n508_o = n506_o != 1'b0;
    assign n509_o = ps_d3[0];
    assign n510_o = n508_o & n509_o;
    assign n511_o = n510_o | stk1_d1;
    assign n512_o = n511_o ? 1'b1 : 1'b0;
    assign n514_o = ps[0];
    assign n515_o = ~n514_o;
    assign n516_o = n515_o ? level1 : n519_o;
    assign n517_o = level1[25:1];
    assign n519_o = {1'b0, n517_o};
    always @(posedge clk)
        n520_q <= ps;
    always @(posedge clk)
        n521_q <= ps_d1;
    always @(posedge clk)
        n522_q <= ps_d2;
    always @(posedge clk)
        n523_q <= level5;
    always @(posedge clk)
        n524_q <= level4;
    always @(posedge clk)
        n525_q <= stk3;
    always @(posedge clk)
        n526_q <= level3;
    always @(posedge clk)
        n527_q <= level3_d1;
    always @(posedge clk)
        n528_q <= level2;
    always @(posedge clk)
        n529_q <= level2_d1;
    always @(posedge clk)
        n530_q <= stk1;
    always @(posedge clk)
        n531_q <= level1;
    always @(posedge clk)
        n532_q <= level1_d1;
    always @(posedge clk)
        n533_q <= level1_d2;
endmodule

module normalizer_z_25_25_25_f300_uid6
    (input wire clk,
        input wire [24:0] x,
       output wire [4:0] count,
       output wire [24:0] r);
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
    wire[15:0] n357_o;
    wire n359_o;
    wire n360_o;
    wire n362_o;
    wire[24:0] n363_o;
    wire[8:0] n364_o;
    wire[24:0] n366_o;
    wire[7:0] n368_o;
    wire n370_o;
    wire n371_o;
    wire n373_o;
    wire[24:0] n374_o;
    wire[16:0] n375_o;
    wire[24:0] n377_o;
    wire[3:0] n379_o;
    wire n381_o;
    wire n382_o;
    wire n384_o;
    wire[24:0] n385_o;
    wire[20:0] n386_o;
    wire[24:0] n388_o;
    wire[1:0] n390_o;
    wire n392_o;
    wire n393_o;
    wire n395_o;
    wire[24:0] n396_o;
    wire[22:0] n397_o;
    wire[24:0] n399_o;
    wire n401_o;
    wire n403_o;
    wire n404_o;
    wire n406_o;
    wire[24:0] n407_o;
    wire[23:0] n408_o;
    wire[24:0] n410_o;
    wire[1:0] n411_o;
    wire[2:0] n412_o;
    wire[3:0] n413_o;
    wire[4:0] n414_o;
    reg[24:0] n415_q;
    reg n416_q;
    reg n417_q;
    reg n418_q;
    reg n419_q;
    reg[24:0] n420_q;
    reg n421_q;
    reg n422_q;
    reg[24:0] n423_q;
    assign count = scount;
    assign r = level0;
    assign level5 = x; // (signal)
    assign level5_d1 = n415_q; // (signal)
    assign count4 = n360_o; // (signal)
    assign count4_d1 = n416_q; // (signal)
    assign count4_d2 = n417_q; // (signal)
    assign level4 = n363_o; // (signal)
    assign count3 = n371_o; // (signal)
    assign count3_d1 = n418_q; // (signal)
    assign count3_d2 = n419_q; // (signal)
    assign level3 = n374_o; // (signal)
    assign level3_d1 = n420_q; // (signal)
    assign count2 = n382_o; // (signal)
    assign count2_d1 = n421_q; // (signal)
    assign level2 = n385_o; // (signal)
    assign count1 = n393_o; // (signal)
    assign count1_d1 = n422_q; // (signal)
    assign level1 = n396_o; // (signal)
    assign level1_d1 = n423_q; // (signal)
    assign count0 = n404_o; // (signal)
    assign level0 = n407_o; // (signal)
    assign scount = n414_o; // (signal)
    assign n357_o = level5_d1[24:9];
    assign n359_o = n357_o == 16'b0000000000000000;
    assign n360_o = n359_o ? 1'b1 : 1'b0;
    assign n362_o = ~count4;
    assign n363_o = n362_o ? level5_d1 : n366_o;
    assign n364_o = level5_d1[8:0];
    assign n366_o = {n364_o, 16'b0000000000000000};
    assign n368_o = level4[24:17];
    assign n370_o = n368_o == 8'b00000000;
    assign n371_o = n370_o ? 1'b1 : 1'b0;
    assign n373_o = ~count3;
    assign n374_o = n373_o ? level4 : n377_o;
    assign n375_o = level4[16:0];
    assign n377_o = {n375_o, 8'b00000000};
    assign n379_o = level3_d1[24:21];
    assign n381_o = n379_o == 4'b0000;
    assign n382_o = n381_o ? 1'b1 : 1'b0;
    assign n384_o = ~count2;
    assign n385_o = n384_o ? level3_d1 : n388_o;
    assign n386_o = level3_d1[20:0];
    assign n388_o = {n386_o, 4'b0000};
    assign n390_o = level2[24:23];
    assign n392_o = n390_o == 2'b00;
    assign n393_o = n392_o ? 1'b1 : 1'b0;
    assign n395_o = ~count1;
    assign n396_o = n395_o ? level2 : n399_o;
    assign n397_o = level2[22:0];
    assign n399_o = {n397_o, 2'b00};
    assign n401_o = level1_d1[24];
    assign n403_o = n401_o == 1'b0;
    assign n404_o = n403_o ? 1'b1 : 1'b0;
    assign n406_o = ~count0;
    assign n407_o = n406_o ? level1_d1 : n410_o;
    assign n408_o = level1_d1[23:0];
    assign n410_o = {n408_o, 1'b0};
    assign n411_o = {count4_d2, count3_d2};
    assign n412_o = {n411_o, count2_d1};
    assign n413_o = {n412_o, count1_d1};
    assign n414_o = {n413_o, count0};
    always @(posedge clk)
        n415_q <= level5;
    always @(posedge clk)
        n416_q <= count4;
    always @(posedge clk)
        n417_q <= count4_d1;
    always @(posedge clk)
        n418_q <= count3;
    always @(posedge clk)
        n419_q <= count3_d1;
    always @(posedge clk)
        n420_q <= level3;
    always @(posedge clk)
        n421_q <= count2;
    always @(posedge clk)
        n422_q <= count1;
    always @(posedge clk)
        n423_q <= level1;
endmodule

module intdualsub_26_f300_uid444
    (input wire clk,
        input wire [25:0] x,
        input wire [25:0] y,
       output wire [25:0] xmy,
       output wire [25:0] ymx);
    wire[25:0] temprxmy;
    wire[25:0] temprymx;
    wire[25:0] n331_o;
    wire[25:0] n332_o;
    wire[25:0] n335_o;
    wire[25:0] n336_o;
    wire[25:0] n337_o;
    wire[25:0] n340_o;
    assign xmy = temprxmy;
    assign ymx = temprymx;
    assign temprxmy = n335_o; // (signal)
    assign temprymx = n340_o; // (signal)
    assign n331_o = ~y;
    assign n332_o = x+n331_o;
    assign n335_o = n332_o+26'b00000000000000000000000001;
    assign n336_o = ~x;
    assign n337_o = y+n336_o;
    assign n340_o = n337_o+26'b00000000000000000000000001;
endmodule

module fsub#(parameter ID=1)
    (input wire clk,
        input wire [33:0] X,
        input wire [33:0] Y,
       output wire [33:0] R);
    wire[33:0] inx;
    wire[33:0] iny;
    wire exceptionxsuperiory;
    wire exceptionxequaly;
    wire[8:0] signedexponentx;
    wire[8:0] signedexponenty;
    wire[8:0] exponentdifferencexy;
    wire[7:0] exponentdifferenceyx;
    wire swap;
    wire[33:0] my;
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
    wire[1:0] n58_o;
    wire n59_o;
    wire n60_o;
    wire[2:0] n61_o;
    wire[30:0] n62_o;
    wire[33:0] n63_o;
    wire[33:0] n64_o;
    wire[33:0] n65_o;
    wire[7:0] n66_o;
    wire[7:0] n67_o;
    wire n68_o;
    wire n69_o;
    wire n70_o;
    wire n71_o;
    wire n72_o;
    wire[4:0] n73_o;
    wire n74_o;
    wire[4:0] n75_o;
    wire n77_o;
    wire n78_o;
    wire n79_o;
    wire[6:0] n80_o;
    wire n82_o;
    wire n83_o;
    wire[1:0] n85_o;
    wire[1:0] n86_o;
    wire[3:0] n87_o;
    wire n88_o;
    wire[22:0] n89_o;
    wire[24:0] n91_o;
    wire[25:0] n93_o;
    wire n94_o;
    wire[22:0] n95_o;
    wire[24:0] n97_o;
    wire[25:0] n99_o;
    wire n101_o;
    wire[22:0] n102_o;
    wire[25:0] n104_o;
    reg[25:0] n105_o;
    wire[25:0] fpsub_8_23_f300_uid2_dualsubclose_n106;
    wire[25:0] fpsub_8_23_f300_uid2_dualsubclose_n107;
    wire[25:0] fpsub_8_23_f300_uid2_dualsubclose_xmy;
    wire[25:0] fpsub_8_23_f300_uid2_dualsubclose_ymx;
    wire n112_o;
    wire[24:0] n113_o;
    wire n114_o;
    wire[24:0] n115_o;
    wire[24:0] n116_o;
    wire n119_o;
    wire n120_o;
    wire n121_o;
    wire n122_o;
    wire n123_o;
    wire n124_o;
    wire[4:0] norm_n125;
    wire[24:0] norm_n126;
    wire[4:0] norm_count;
    wire[24:0] norm_r;
    wire n131_o;
    wire n132_o;
    wire n133_o;
    wire n136_o;
    wire n137_o;
    wire[7:0] n139_o;
    wire[9:0] n141_o;
    wire[9:0] n143_o;
    wire[9:0] n144_o;
    wire[22:0] n145_o;
    wire[32:0] n146_o;
    wire[22:0] n147_o;
    wire[23:0] n149_o;
    wire[25:0] rightshiftercomponent_n150;
    wire rightshiftercomponent_n151;
    wire[25:0] rightshiftercomponent_r;
    wire rightshiftercomponent_sticky;
    wire[26:0] n157_o;
    wire[3:0] n158_o;
    wire[3:0] n159_o;
    wire[3:0] n160_o;
    wire[3:0] n161_o;
    wire[3:0] n162_o;
    wire[3:0] n163_o;
    wire[2:0] n164_o;
    wire[15:0] n165_o;
    wire[10:0] n166_o;
    wire[26:0] n167_o;
    wire[26:0] n168_o;
    wire[22:0] n169_o;
    wire[24:0] n171_o;
    wire[26:0] n173_o;
    wire n174_o;
    wire n175_o;
    wire[26:0] fpsub_8_23_f300_uid2_fracaddfar_n176;
    wire[26:0] fpsub_8_23_f300_uid2_fracaddfar_r;
    wire[1:0] n179_o;
    wire[22:0] n180_o;
    wire n182_o;
    wire[22:0] n183_o;
    wire[22:0] n184_o;
    wire n186_o;
    wire[22:0] n187_o;
    wire[22:0] n188_o;
    wire n189_o;
    wire n191_o;
    wire n192_o;
    wire n193_o;
    wire n195_o;
    wire n196_o;
    wire n197_o;
    wire n199_o;
    wire n200_o;
    wire n201_o;
    wire n202_o;
    wire n204_o;
    wire n205_o;
    wire n206_o;
    wire n207_o;
    wire n208_o;
    wire n209_o;
    wire n210_o;
    wire n211_o;
    wire n212_o;
    wire n215_o;
    wire[1:0] n216_o;
    wire n219_o;
    wire[1:0] n220_o;
    wire n222_o;
    wire n223_o;
    wire n224_o;
    wire n225_o;
    wire n226_o;
    wire n227_o;
    wire n228_o;
    wire n229_o;
    wire n230_o;
    wire[3:0] n231_o;
    wire[3:0] n232_o;
    wire[8:0] n233_o;
    wire n234_o;
    wire[9:0] n235_o;
    wire[7:0] n236_o;
    wire[9:0] n238_o;
    wire[9:0] n239_o;
    wire[32:0] n240_o;
    wire n242_o;
    reg[32:0] n243_o;
    wire n245_o;
    reg n246_o;
    wire n247_o;
    localparam [32:0] n248_o = 33'b000000000000000000000000000000000;
    wire[32:0] fpsub_8_23_f300_uid2_finalroundadd_n249;
    wire[32:0] fpsub_8_23_f300_uid2_finalroundadd_r;
    wire[1:0] n252_o;
    wire n253_o;
    wire[1:0] n255_o;
    wire n257_o;
    wire n260_o;
    wire n262_o;
    wire n263_o;
    wire n264_o;
    wire[1:0] n266_o;
    wire[1:0] n267_o;
    reg[1:0] n268_o;
    wire[30:0] n269_o;
    wire[31:0] n270_o;
    wire[1:0] n271_o;
    wire n273_o;
    wire[1:0] n275_o;
    wire n277_o;
    wire n280_o;
    wire[1:0] n281_o;
    wire[2:0] n282_o;
    reg[1:0] n283_o;
    wire n284_o;
    wire n286_o;
    wire n287_o;
    wire n288_o;
    wire n290_o;
    wire n291_o;
    wire[1:0] n292_o;
    reg n293_o;
    wire[30:0] n294_o;
    wire n296_o;
    wire[30:0] n297_o;
    reg[30:0] n298_o;
    wire[2:0] n299_o;
    wire[33:0] n300_o;
    reg[33:0] n301_q;
    reg[33:0] n302_q;
    reg[33:0] n303_q;
    reg n304_q;
    reg n305_q;
    reg n306_q;
    reg n307_q;
    reg n308_q;
    reg n309_q;
    reg[9:0] n310_q;
    reg[9:0] n311_q;
    reg[9:0] n312_q;
    reg n313_q;
    reg n314_q;
    reg n315_q;
    reg[33:0] n316_q;
    reg[33:0] n317_q;
    reg[33:0] n318_q;
    reg n319_q;
    reg n320_q;
    reg n321_q;
    reg n322_q;
    reg n323_q;
    reg n324_q;
    wire[33:0] n325_o;
    reg[3:0] n326_q;
    reg[3:0] n327_q;
    reg[3:0] n328_q;
    assign R = n300_o;
    assign inx = X; // (signal)
    assign iny = Y; // (signal)
    assign exceptionxsuperiory = n36_o; // (signal)
    assign exceptionxequaly = n42_o; // (signal)
    assign signedexponentx = n46_o; // (signal)
    assign signedexponenty = n49_o; // (signal)
    assign exponentdifferencexy = n50_o; // (signal)
    assign exponentdifferenceyx = n53_o; // (signal)
    assign swap = n57_o; // (signal)
    assign my = n63_o; // (signal)
    assign newx = n64_o; // (signal)
    assign newx_d1 = n301_q; // (signal)
    assign newx_d2 = n302_q; // (signal)
    assign newx_d3 = n303_q; // (signal)
    assign newy = n65_o; // (signal)
    assign exponentdifference = n66_o; // (signal)
    assign shiftedout = n72_o; // (signal)
    assign shiftval = n75_o; // (signal)
    assign effsub = n79_o; // (signal)
    assign effsub_d1 = n304_q; // (signal)
    assign effsub_d2 = n305_q; // (signal)
    assign effsub_d3 = n306_q; // (signal)
    assign selectclosepath = n83_o; // (signal)
    assign selectclosepath_d1 = n307_q; // (signal)
    assign selectclosepath_d2 = n308_q; // (signal)
    assign selectclosepath_d3 = n309_q; // (signal)
    assign sdexnxy = n87_o; // (signal)
    assign pipesigny = n88_o; // (signal)
    assign fracxclose1 = n93_o; // (signal)
    assign fracyclose1 = n105_o; // (signal)
    assign fracrclosexmy = fpsub_8_23_f300_uid2_dualsubclose_n106; // (signal)
    assign fracrcloseymx = fpsub_8_23_f300_uid2_dualsubclose_n107; // (signal)
    assign fracsignclose = n112_o; // (signal)
    assign fracrclose1 = n115_o; // (signal)
    assign ressign = n121_o; // (signal)
    assign nzerosnew = norm_n125; // (signal)
    assign shiftedfrac = norm_n126; // (signal)
    assign roundclose0 = n133_o; // (signal)
    assign resultcloseiszero0 = n137_o; // (signal)
    assign exponentresultclose = n144_o; // (signal)
    assign resultbeforeroundclose = n146_o; // (signal)
    assign roundclose = roundclose0; // (signal)
    assign resultcloseiszero = resultcloseiszero0; // (signal)
    assign fracnewy = n149_o; // (signal)
    assign shiftedfracy = rightshiftercomponent_n150; // (signal)
    assign sticky = rightshiftercomponent_n151; // (signal)
    assign fracyfar = n157_o; // (signal)
    assign effsubvector = n167_o; // (signal)
    assign fracyfarxorop = n168_o; // (signal)
    assign fracxfar = n173_o; // (signal)
    assign cinaddfar = n175_o; // (signal)
    assign fracresultfar0 = fpsub_8_23_f300_uid2_fracaddfar_n176; // (signal)
    assign fracresultfarnormstage = fracresultfar0; // (signal)
    assign fracleadingbits = n179_o; // (signal)
    assign fracresultfar1 = n183_o; // (signal)
    assign fracresultroundbit = n192_o; // (signal)
    assign fracresultstickybit = n200_o; // (signal)
    assign roundfar1 = n212_o; // (signal)
    assign expoperationsel = n216_o; // (signal)
    assign exponentupdate = n235_o; // (signal)
    assign exponentresultfar0 = n238_o; // (signal)
    assign exponentresultfar0_d1 = n310_q; // (signal)
    assign exponentresultfar0_d2 = n311_q; // (signal)
    assign exponentresultfar0_d3 = n312_q; // (signal)
    assign exponentresultfar1 = n239_o; // (signal)
    assign resultbeforeroundfar = n240_o; // (signal)
    assign roundfar = roundfar1; // (signal)
    assign resultbeforeround = n243_o; // (signal)
    assign round = n246_o; // (signal)
    assign zerofromclose = n247_o; // (signal)
    assign resultrounded = fpsub_8_23_f300_uid2_finalroundadd_n249; // (signal)
    assign synceffsub = effsub; // (signal)
    assign synceffsub_d1 = n313_q; // (signal)
    assign synceffsub_d2 = n314_q; // (signal)
    assign synceffsub_d3 = n315_q; // (signal)
    assign syncx = newx; // (signal)
    assign syncx_d1 = n316_q; // (signal)
    assign syncx_d2 = n317_q; // (signal)
    assign syncx_d3 = n318_q; // (signal)
    assign syncsigny = pipesigny; // (signal)
    assign syncsigny_d1 = n319_q; // (signal)
    assign syncsigny_d2 = n320_q; // (signal)
    assign syncsigny_d3 = n321_q; // (signal)
    assign syncressign = ressign; // (signal)
    assign syncressign_d1 = n322_q; // (signal)
    assign syncressign_d2 = n323_q; // (signal)
    assign syncressign_d3 = n324_q; // (signal)
    assign underflowoverflow = n252_o; // (signal)
    assign resultnoexn = n325_o; // (signal)
    assign syncexnxy = sdexnxy; // (signal)
    assign syncexnxy_d1 = n326_q; // (signal)
    assign syncexnxy_d2 = n327_q; // (signal)
    assign syncexnxy_d3 = n328_q; // (signal)
    assign exnr = n283_o; // (signal)
    assign sgnr = n293_o; // (signal)
    assign expsigr = n298_o; // (signal)
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
    assign n58_o = iny[33:32];
    assign n59_o = iny[31];
    assign n60_o = ~n59_o;
    assign n61_o = {n58_o, n60_o};
    assign n62_o = iny[30:0];
    assign n63_o = {n61_o, n62_o};
    assign n64_o = swap ? my : inx;
    assign n65_o = swap ? inx : my;
    assign n66_o = swap ? exponentdifferenceyx : n67_o;
    assign n67_o = exponentdifferencexy[7:0];
    assign n68_o = exponentdifference[7];
    assign n69_o = exponentdifference[6];
    assign n70_o = n68_o | n69_o;
    assign n71_o = exponentdifference[5];
    assign n72_o = n70_o | n71_o;
    assign n73_o = exponentdifference[4:0];
    assign n74_o = ~shiftedout;
    assign n75_o = n74_o ? n73_o : 5'b11010;
    assign n77_o = newx[31];
    assign n78_o = newy[31];
    assign n79_o = n77_o ^ n78_o;
    assign n80_o = exponentdifference[7:1];
    assign n82_o = n80_o == 7'b0000000;
    assign n83_o = n82_o ? effsub : 1'b0;
    assign n85_o = newx[33:32];
    assign n86_o = newy[33:32];
    assign n87_o = {n85_o, n86_o};
    assign n88_o = newy[31];
    assign n89_o = newx[22:0];
    assign n91_o = {2'b01, n89_o};
    assign n93_o = {n91_o, 1'b0};
    assign n94_o = exponentdifference[0];
    assign n95_o = newy[22:0];
    assign n97_o = {2'b01, n95_o};
    assign n99_o = {n97_o, 1'b0};
    assign n101_o = n94_o == 1'b0;
    assign n102_o = newy[22:0];
    assign n104_o = {3'b001, n102_o};
    always @*
        case (n101_o)
            1'b1: n105_o = n99_o;
            default: n105_o = n104_o;
        endcase
    assign fpsub_8_23_f300_uid2_dualsubclose_n106 = fpsub_8_23_f300_uid2_dualsubclose_xmy; // (signal)
    assign fpsub_8_23_f300_uid2_dualsubclose_n107 = fpsub_8_23_f300_uid2_dualsubclose_ymx; // (signal)
    intdualsub_26_f300_uid444 fpsub_8_23_f300_uid2_dualsubclose(
        .clk(clk),
        .x(fracxclose1),
        .y(fracyclose1),
        .xmy(fpsub_8_23_f300_uid2_dualsubclose_xmy),
        .ymx(fpsub_8_23_f300_uid2_dualsubclose_ymx));
    assign n112_o = fracrclosexmy[25];
    assign n113_o = fracrclosexmy[24:0];
    assign n114_o = ~fracsignclose;
    assign n115_o = n114_o ? n113_o : n116_o;
    assign n116_o = fracrcloseymx[24:0];
    assign n119_o = fracrclose1 == 25'b0000000000000000000000000;
    assign n120_o = selectclosepath & n119_o;
    assign n121_o = n120_o ? 1'b0 : n124_o;
    assign n122_o = newx[31];
    assign n123_o = selectclosepath & fracsignclose;
    assign n124_o = n122_o ^ n123_o;
    assign norm_n125 = norm_count; // (signal)
    assign norm_n126 = norm_r; // (signal)
    normalizer_z_25_25_25_f300_uid6 norm(
        .clk(clk),
        .x(fracrclose1),
        .count(norm_count),
        .r(norm_r));
    assign n131_o = shiftedfrac[0];
    assign n132_o = shiftedfrac[1];
    assign n133_o = n131_o & n132_o;
    assign n136_o = nzerosnew == 5'b11111;
    assign n137_o = n136_o ? 1'b1 : 1'b0;
    assign n139_o = newx_d3[30:23];
    assign n141_o = {2'b00, n139_o};
    assign n143_o = {5'b00000, nzerosnew};
    assign n144_o = n141_o-n143_o;
    assign n145_o = shiftedfrac[23:1];
    assign n146_o = {exponentresultclose, n145_o};
    assign n147_o = newy[22:0];
    assign n149_o = {1'b1, n147_o};
    assign rightshiftercomponent_n150 = rightshiftercomponent_r; // (signal)
    assign rightshiftercomponent_n151 = rightshiftercomponent_sticky; // (signal)
    rightshiftersticky24_by_max_26_f300_uid8 rightshiftercomponent(
        .clk(clk),
        .x(fracnewy),
        .s(shiftval),
        .r(rightshiftercomponent_r),
        .sticky(rightshiftercomponent_sticky));
    assign n157_o = {1'b0, shiftedfracy};
    assign n158_o = {effsub, effsub, effsub, effsub};
    assign n159_o = {effsub, effsub, effsub, effsub};
    assign n160_o = {effsub, effsub, effsub, effsub};
    assign n161_o = {effsub, effsub, effsub, effsub};
    assign n162_o = {effsub, effsub, effsub, effsub};
    assign n163_o = {effsub, effsub, effsub, effsub};
    assign n164_o = {effsub, effsub, effsub};
    assign n165_o = {n158_o, n159_o, n160_o, n161_o};
    assign n166_o = {n162_o, n163_o, n164_o};
    assign n167_o = {n165_o, n166_o};
    assign n168_o = fracyfar ^ effsubvector;
    assign n169_o = newx[22:0];
    assign n171_o = {2'b01, n169_o};
    assign n173_o = {n171_o, 2'b00};
    assign n174_o = ~sticky;
    assign n175_o = effsub_d3 & n174_o;
    assign fpsub_8_23_f300_uid2_fracaddfar_n176 = fpsub_8_23_f300_uid2_fracaddfar_r; // (signal)
    intadder_27_f300_uid1000 fpsub_8_23_f300_uid2_fracaddfar(
        .clk(clk),
        .x(fracxfar),
        .y(fracyfarxorop),
        .cin(cinaddfar),
        .r(fpsub_8_23_f300_uid2_fracaddfar_r));
    assign n179_o = fracresultfarnormstage[26:25];
    assign n180_o = fracresultfarnormstage[23:1];
    assign n182_o = fracleadingbits == 2'b00;
    assign n183_o = n182_o ? n180_o : n187_o;
    assign n184_o = fracresultfarnormstage[24:2];
    assign n186_o = fracleadingbits == 2'b01;
    assign n187_o = n186_o ? n184_o : n188_o;
    assign n188_o = fracresultfarnormstage[25:3];
    assign n189_o = fracresultfarnormstage[0];
    assign n191_o = fracleadingbits == 2'b00;
    assign n192_o = n191_o ? n189_o : n196_o;
    assign n193_o = fracresultfarnormstage[1];
    assign n195_o = fracleadingbits == 2'b01;
    assign n196_o = n195_o ? n193_o : n197_o;
    assign n197_o = fracresultfarnormstage[2];
    assign n199_o = fracleadingbits == 2'b00;
    assign n200_o = n199_o ? sticky : n205_o;
    assign n201_o = fracresultfarnormstage[0];
    assign n202_o = n201_o | sticky;
    assign n204_o = fracleadingbits == 2'b01;
    assign n205_o = n204_o ? n202_o : n209_o;
    assign n206_o = fracresultfarnormstage[1];
    assign n207_o = fracresultfarnormstage[0];
    assign n208_o = n206_o | n207_o;
    assign n209_o = n208_o | sticky;
    assign n210_o = fracresultfar1[0];
    assign n211_o = fracresultstickybit | n210_o;
    assign n212_o = fracresultroundbit & n211_o;
    assign n215_o = fracleadingbits == 2'b00;
    assign n216_o = n215_o ? 2'b11 : n220_o;
    assign n219_o = fracleadingbits == 2'b01;
    assign n220_o = n219_o ? 2'b00 : 2'b01;
    assign n222_o = expoperationsel[1];
    assign n223_o = expoperationsel[1];
    assign n224_o = expoperationsel[1];
    assign n225_o = expoperationsel[1];
    assign n226_o = expoperationsel[1];
    assign n227_o = expoperationsel[1];
    assign n228_o = expoperationsel[1];
    assign n229_o = expoperationsel[1];
    assign n230_o = expoperationsel[1];
    assign n231_o = {n230_o, n229_o, n228_o, n227_o};
    assign n232_o = {n226_o, n225_o, n224_o, n223_o};
    assign n233_o = {n231_o, n232_o, n222_o};
    assign n234_o = expoperationsel[0];
    assign n235_o = {n233_o, n234_o};
    assign n236_o = newx[30:23];
    assign n238_o = {2'b00, n236_o};
    assign n239_o = exponentresultfar0_d3+exponentupdate;
    assign n240_o = {exponentresultfar1, fracresultfar1};
    assign n242_o = selectclosepath_d3 == 1'b1;
    always @*
        case (n242_o)
            1'b1: n243_o = resultbeforeroundclose;
            default: n243_o = resultbeforeroundfar;
        endcase
    assign n245_o = selectclosepath_d3 == 1'b1;
    always @*
        case (n245_o)
            1'b1: n246_o = roundclose;
            default: n246_o = roundfar;
        endcase
    assign n247_o = selectclosepath_d3 & resultcloseiszero;
    assign fpsub_8_23_f300_uid2_finalroundadd_n249 = fpsub_8_23_f300_uid2_finalroundadd_r; // (signal)
    intadder_33_f300_uid13 fpsub_8_23_f300_uid2_finalroundadd(
        .clk(clk),
        .x(resultbeforeround),
        .y(n248_o),
        .cin(round),
        .r(fpsub_8_23_f300_uid2_finalroundadd_r));
    assign n252_o = resultrounded[32:31];
    assign n253_o = ~zerofromclose;
    assign n255_o = {n253_o, 1'b0};
    assign n257_o = underflowoverflow == 2'b01;
    assign n260_o = underflowoverflow == 2'b10;
    assign n262_o = underflowoverflow == 2'b11;
    assign n263_o = n260_o | n262_o;
    assign n264_o = ~zerofromclose;
    assign n266_o = {1'b0, n264_o};
    assign n267_o = {n263_o, n257_o};
    always @*
        case (n267_o)
            2'b10: n268_o = 2'b00;
            2'b01: n268_o = n255_o;
            default: n268_o = n266_o;
        endcase
    assign n269_o = resultrounded[30:0];
    assign n270_o = {syncressign_d3, n269_o};
    assign n271_o = resultnoexn[33:32];
    assign n273_o = syncexnxy_d3 == 4'b0101;
    assign n275_o = {1'b1, synceffsub_d3};
    assign n277_o = syncexnxy_d3 == 4'b1010;
    assign n280_o = syncexnxy_d3 == 4'b1110;
    assign n281_o = syncexnxy_d3[3:2];
    assign n282_o = {n280_o, n277_o, n273_o};
    always @*
        case (n282_o)
            3'b100: n283_o = 2'b11;
            3'b010: n283_o = n275_o;
            3'b001: n283_o = n271_o;
            default: n283_o = n281_o;
        endcase
    assign n284_o = resultnoexn[31];
    assign n286_o = syncexnxy_d3 == 4'b0101;
    assign n287_o = syncx_d3[31];
    assign n288_o = n287_o & syncsigny_d3;
    assign n290_o = syncexnxy_d3 == 4'b0000;
    assign n291_o = syncx_d3[31];
    assign n292_o = {n290_o, n286_o};
    always @*
        case (n292_o)
            2'b10: n293_o = n288_o;
            2'b01: n293_o = n284_o;
            default: n293_o = n291_o;
        endcase
    assign n294_o = resultnoexn[30:0];
    assign n296_o = syncexnxy_d3 == 4'b0101;
    assign n297_o = syncx_d3[30:0];
    always @*
        case (n296_o)
            1'b1: n298_o = n294_o;
            default: n298_o = n297_o;
        endcase
    assign n299_o = {exnr, sgnr};
    assign n300_o = {n299_o, expsigr};
    always @(posedge clk)
        n301_q <= newx;
    always @(posedge clk)
        n302_q <= newx_d1;
    always @(posedge clk)
        n303_q <= newx_d2;
    always @(posedge clk)
        n304_q <= effsub;
    always @(posedge clk)
        n305_q <= effsub_d1;
    always @(posedge clk)
        n306_q <= effsub_d2;
    always @(posedge clk)
        n307_q <= selectclosepath;
    always @(posedge clk)
        n308_q <= selectclosepath_d1;
    always @(posedge clk)
        n309_q <= selectclosepath_d2;
    always @(posedge clk)
        n310_q <= exponentresultfar0;
    always @(posedge clk)
        n311_q <= exponentresultfar0_d1;
    always @(posedge clk)
        n312_q <= exponentresultfar0_d2;
    always @(posedge clk)
        n313_q <= synceffsub;
    always @(posedge clk)
        n314_q <= synceffsub_d1;
    always @(posedge clk)
        n315_q <= synceffsub_d2;
    always @(posedge clk)
        n316_q <= syncx;
    always @(posedge clk)
        n317_q <= syncx_d1;
    always @(posedge clk)
        n318_q <= syncx_d2;
    always @(posedge clk)
        n319_q <= syncsigny;
    always @(posedge clk)
        n320_q <= syncsigny_d1;
    always @(posedge clk)
        n321_q <= syncsigny_d2;
    always @(posedge clk)
        n322_q <= syncressign;
    always @(posedge clk)
        n323_q <= syncressign_d1;
    always @(posedge clk)
        n324_q <= syncressign_d2;
    assign n325_o = {n268_o, n270_o};
    always @(posedge clk)
        n326_q <= syncexnxy;
    always @(posedge clk)
        n327_q <= syncexnxy_d1;
    always @(posedge clk)
        n328_q <= syncexnxy_d2;
endmodule

