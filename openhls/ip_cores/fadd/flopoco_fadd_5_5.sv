module intadder_12_f300_uid133
    (input wire clk,
        input wire[11:0] x,
        input wire[11:0] y,
        input wire cin,
        output wire[11:0] r);
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
    wire[12:0] n473_o;
    wire[12:0] n475_o;
    wire[12:0] n476_o;
    wire[12:0] n477_o;
    wire[12:0] n478_o;
    wire[11:0] n479_o;
    reg n480_q;
    reg[12:0] n481_q;
    reg[12:0] n482_q;
    reg[12:0] n483_q;
    reg[12:0] n484_q;
    assign r = r_1;
    assign cin_1 = cin; // (signal)
    assign cin_1_d1 = n480_q; // (signal)
    assign x_1 = n473_o; // (signal)
    assign x_1_d1 = n481_q; // (signal)
    assign y_1 = n475_o; // (signal)
    assign y_1_d1 = n482_q; // (signal)
    assign y_1_d2 = n483_q; // (signal)
    assign y_1_d3 = n484_q; // (signal)
    assign s_1 = n478_o; // (signal)
    assign r_1 = n479_o; // (signal)
    assign n473_o = {1'b0, x};
    assign n475_o = {1'b0, y};
    assign n476_o = x_1_d1+y_1_d3;
    assign n477_o = {12'b0, cin_1_d1};  //  uext
    assign n478_o = n476_o+n477_o;
    assign n479_o = s_1[11:0];
    always @(posedge clk)
        n480_q <= cin_1;
    always @(posedge clk)
        n481_q <= x_1;
    always @(posedge clk)
        n482_q <= y_1;
    always @(posedge clk)
        n483_q <= y_1_d1;
    always @(posedge clk)
        n484_q <= y_1_d2;
endmodule

module intadder_9_f300_uid10
    (input wire clk,
        input wire[8:0] x,
        input wire[8:0] y,
        input wire cin,
        output wire[8:0] r);
    wire[8:0] rtmp;
    wire[8:0] x_d1;
    wire[8:0] x_d2;
    wire[8:0] y_d1;
    wire[8:0] y_d2;
    wire[8:0] n455_o;
    wire[8:0] n456_o;
    wire[8:0] n457_o;
    reg[8:0] n458_q;
    reg[8:0] n459_q;
    reg[8:0] n460_q;
    reg[8:0] n461_q;
    assign r = rtmp;
    assign rtmp = n457_o; // (signal)
    assign x_d1 = n458_q; // (signal)
    assign x_d2 = n459_q; // (signal)
    assign y_d1 = n460_q; // (signal)
    assign y_d2 = n461_q; // (signal)
    assign n455_o = x_d2+y_d2;
    assign n456_o = {8'b0, cin};  //  uext
    assign n457_o = n455_o+n456_o;
    always @(posedge clk)
        n458_q <= x;
    always @(posedge clk)
        n459_q <= x_d1;
    always @(posedge clk)
        n460_q <= y;
    always @(posedge clk)
        n461_q <= y_d1;
endmodule

module rightshiftersticky6_by_max_8_f300_uid8
    (input wire clk,
        input wire[5:0] x,
        input wire[3:0] s,
        output wire[7:0] r,
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
    wire[7:0] n380_o;
    wire n383_o;
    wire n384_o;
    wire n385_o;
    wire n386_o;
    wire n388_o;
    wire n389_o;
    wire[7:0] n390_o;
    wire[3:0] n393_o;
    wire n395_o;
    wire n396_o;
    wire n397_o;
    wire n398_o;
    wire n399_o;
    wire n401_o;
    wire n402_o;
    wire[7:0] n403_o;
    wire[3:0] n404_o;
    wire[7:0] n406_o;
    wire[1:0] n408_o;
    wire n410_o;
    wire n411_o;
    wire n412_o;
    wire n413_o;
    wire n414_o;
    wire n416_o;
    wire n417_o;
    wire[7:0] n418_o;
    wire[5:0] n419_o;
    wire[7:0] n421_o;
    wire n423_o;
    wire n425_o;
    wire n426_o;
    wire n427_o;
    wire n428_o;
    wire n429_o;
    wire n431_o;
    wire n432_o;
    wire[7:0] n433_o;
    wire[6:0] n434_o;
    wire[7:0] n436_o;
    reg[3:0] n437_q;
    reg[3:0] n438_q;
    reg[7:0] n439_q;
    reg[7:0] n440_q;
    reg n441_q;
    reg[7:0] n442_q;
    reg[7:0] n443_q;
    reg[7:0] n444_q;
    reg[7:0] n445_q;
    assign r = level0;
    assign sticky = stk0;
    assign ps = s; // (signal)
    assign ps_d1 = n437_q; // (signal)
    assign ps_d2 = n438_q; // (signal)
    assign xpadded = n380_o; // (signal)
    assign level4 = xpadded; // (signal)
    assign level4_d1 = n439_q; // (signal)
    assign stk3 = n386_o; // (signal)
    assign level3 = n390_o; // (signal)
    assign level3_d1 = n440_q; // (signal)
    assign stk2 = n399_o; // (signal)
    assign stk2_d1 = n441_q; // (signal)
    assign level2 = n403_o; // (signal)
    assign level2_d1 = n442_q; // (signal)
    assign level2_d2 = n443_q; // (signal)
    assign stk1 = n414_o; // (signal)
    assign level1 = n418_o; // (signal)
    assign level1_d1 = n444_q; // (signal)
    assign level1_d2 = n445_q; // (signal)
    assign stk0 = n429_o; // (signal)
    assign level0 = n433_o; // (signal)
    assign n380_o = {x, 2'b00};
    assign n383_o = level4_d1 != 8'b00000000;
    assign n384_o = ps_d1[3];
    assign n385_o = n383_o & n384_o;
    assign n386_o = n385_o ? 1'b1 : 1'b0;
    assign n388_o = ps[3];
    assign n389_o = ~n388_o;
    assign n390_o = n389_o ? level4 : 8'b00000000;
    assign n393_o = level3_d1[3:0];
    assign n395_o = n393_o != 4'b0000;
    assign n396_o = ps_d1[2];
    assign n397_o = n395_o & n396_o;
    assign n398_o = n397_o | stk3;
    assign n399_o = n398_o ? 1'b1 : 1'b0;
    assign n401_o = ps[2];
    assign n402_o = ~n401_o;
    assign n403_o = n402_o ? level3 : n406_o;
    assign n404_o = level3[7:4];
    assign n406_o = {4'b0000, n404_o};
    assign n408_o = level2_d2[1:0];
    assign n410_o = n408_o != 2'b00;
    assign n411_o = ps_d2[1];
    assign n412_o = n410_o & n411_o;
    assign n413_o = n412_o | stk2_d1;
    assign n414_o = n413_o ? 1'b1 : 1'b0;
    assign n416_o = ps[1];
    assign n417_o = ~n416_o;
    assign n418_o = n417_o ? level2 : n421_o;
    assign n419_o = level2[7:2];
    assign n421_o = {2'b00, n419_o};
    assign n423_o = level1_d2[0];
    assign n425_o = n423_o != 1'b0;
    assign n426_o = ps_d2[0];
    assign n427_o = n425_o & n426_o;
    assign n428_o = n427_o | stk1;
    assign n429_o = n428_o ? 1'b1 : 1'b0;
    assign n431_o = ps[0];
    assign n432_o = ~n431_o;
    assign n433_o = n432_o ? level1 : n436_o;
    assign n434_o = level1[7:1];
    assign n436_o = {1'b0, n434_o};
    always @(posedge clk)
        n437_q <= ps;
    always @(posedge clk)
        n438_q <= ps_d1;
    always @(posedge clk)
        n439_q <= level4;
    always @(posedge clk)
        n440_q <= level3;
    always @(posedge clk)
        n441_q <= stk2;
    always @(posedge clk)
        n442_q <= level2;
    always @(posedge clk)
        n443_q <= level2_d1;
    always @(posedge clk)
        n444_q <= level1;
    always @(posedge clk)
        n445_q <= level1_d1;
endmodule

module normalizer_z_7_7_7_f300_uid6
    (input wire clk,
        input wire[6:0] x,
        output wire[2:0] count,
        output wire[6:0] r);
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
    wire[3:0] n327_o;
    wire n329_o;
    wire n330_o;
    wire n332_o;
    wire[6:0] n333_o;
    wire[2:0] n334_o;
    wire[6:0] n336_o;
    wire[1:0] n338_o;
    wire n340_o;
    wire n341_o;
    wire n343_o;
    wire[6:0] n344_o;
    wire[4:0] n345_o;
    wire[6:0] n347_o;
    wire n349_o;
    wire n351_o;
    wire n352_o;
    wire n354_o;
    wire[6:0] n355_o;
    wire[5:0] n356_o;
    wire[6:0] n358_o;
    wire[1:0] n359_o;
    wire[2:0] n360_o;
    reg[6:0] n361_q;
    reg[6:0] n362_q;
    reg n363_q;
    assign count = scount;
    assign r = level0;
    assign level3 = x; // (signal)
    assign level3_d1 = n361_q; // (signal)
    assign count2 = n330_o; // (signal)
    assign level2 = n333_o; // (signal)
    assign count1 = n341_o; // (signal)
    assign level1 = n344_o; // (signal)
    assign level1_d1 = n362_q; // (signal)
    assign count0 = n352_o; // (signal)
    assign count0_d1 = n363_q; // (signal)
    assign level0 = n355_o; // (signal)
    assign scount = n360_o; // (signal)
    assign n327_o = level3_d1[6:3];
    assign n329_o = n327_o == 4'b0000;
    assign n330_o = n329_o ? 1'b1 : 1'b0;
    assign n332_o = ~count2;
    assign n333_o = n332_o ? level3_d1 : n336_o;
    assign n334_o = level3_d1[2:0];
    assign n336_o = {n334_o, 4'b0000};
    assign n338_o = level2[6:5];
    assign n340_o = n338_o == 2'b00;
    assign n341_o = n340_o ? 1'b1 : 1'b0;
    assign n343_o = ~count1;
    assign n344_o = n343_o ? level2 : n347_o;
    assign n345_o = level2[4:0];
    assign n347_o = {n345_o, 2'b00};
    assign n349_o = level1[6];
    assign n351_o = n349_o == 1'b0;
    assign n352_o = n351_o ? 1'b1 : 1'b0;
    assign n354_o = ~count0_d1;
    assign n355_o = n354_o ? level1_d1 : n358_o;
    assign n356_o = level1_d1[5:0];
    assign n358_o = {n356_o, 1'b0};
    assign n359_o = {count2, count1};
    assign n360_o = {n359_o, count0};
    always @(posedge clk)
        n361_q <= level3;
    always @(posedge clk)
        n362_q <= level1;
    always @(posedge clk)
        n363_q <= count0;
endmodule

module intdualsub_8_f300_uid4
    (input wire clk,
        input wire[7:0] x,
        input wire[7:0] y,
        output wire[7:0] xmy,
        output wire[7:0] ymx);
    wire[7:0] temprxmy;
    wire[7:0] temprymx;
    wire[7:0] n307_o;
    wire[7:0] n308_o;
    wire[7:0] n311_o;
    wire[7:0] n312_o;
    wire[7:0] n313_o;
    wire[7:0] n316_o;
    assign xmy = temprxmy;
    assign ymx = temprymx;
    assign temprxmy = n311_o; // (signal)
    assign temprymx = n316_o; // (signal)
    assign n307_o = ~y;
    assign n308_o = x+n307_o;
    assign n311_o = n308_o+8'b00000001;
    assign n312_o = ~x;
    assign n313_o = y+n312_o;
    assign n316_o = n313_o+8'b00000001;
endmodule

module fadd#(parameter ID=1)
    (input wire clk,
        input wire[12:0] X,
        input wire[12:0] Y,
        output wire[12:0] R);
    wire[12:0] inx;
    wire[12:0] iny;
    wire exceptionxsuperiory;
    wire exceptionxequaly;
    wire[5:0] signedexponentx;
    wire[5:0] signedexponenty;
    wire[5:0] exponentdifferencexy;
    wire[4:0] exponentdifferenceyx;
    wire swap;
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
    wire[12:0] n56_o;
    wire[12:0] n57_o;
    wire[4:0] n58_o;
    wire[4:0] n59_o;
    wire n60_o;
    wire[3:0] n61_o;
    wire n62_o;
    wire[3:0] n63_o;
    wire n65_o;
    wire n66_o;
    wire n67_o;
    wire[3:0] n68_o;
    wire n70_o;
    wire n71_o;
    wire[1:0] n73_o;
    wire[1:0] n74_o;
    wire[3:0] n75_o;
    wire n76_o;
    wire[4:0] n77_o;
    wire[6:0] n79_o;
    wire[7:0] n81_o;
    wire n82_o;
    wire[4:0] n83_o;
    wire[6:0] n85_o;
    wire[7:0] n87_o;
    wire n89_o;
    wire[4:0] n90_o;
    wire[7:0] n92_o;
    reg[7:0] n93_o;
    wire[7:0] fpadd_5_5_f300_uid2_dualsubclose_n94;
    wire[7:0] fpadd_5_5_f300_uid2_dualsubclose_n95;
    wire[7:0] fpadd_5_5_f300_uid2_dualsubclose_xmy;
    wire[7:0] fpadd_5_5_f300_uid2_dualsubclose_ymx;
    wire n100_o;
    wire[6:0] n101_o;
    wire n102_o;
    wire[6:0] n103_o;
    wire[6:0] n104_o;
    wire n107_o;
    wire n108_o;
    wire n109_o;
    wire n110_o;
    wire n111_o;
    wire n112_o;
    wire[2:0] norm_n113;
    wire[6:0] norm_n114;
    wire[2:0] norm_count;
    wire[6:0] norm_r;
    wire n119_o;
    wire n120_o;
    wire n121_o;
    wire n124_o;
    wire n125_o;
    wire[4:0] n127_o;
    wire[6:0] n129_o;
    wire[6:0] n131_o;
    wire[6:0] n132_o;
    wire[4:0] n133_o;
    wire[11:0] n134_o;
    wire[4:0] n135_o;
    wire[5:0] n137_o;
    wire[7:0] rightshiftercomponent_n138;
    wire rightshiftercomponent_n139;
    wire[7:0] rightshiftercomponent_r;
    wire rightshiftercomponent_sticky;
    wire[8:0] n145_o;
    wire[3:0] n146_o;
    wire[3:0] n147_o;
    wire[8:0] n148_o;
    wire[8:0] n149_o;
    wire[4:0] n150_o;
    wire[6:0] n152_o;
    wire[8:0] n154_o;
    wire n155_o;
    wire n156_o;
    wire[8:0] fpadd_5_5_f300_uid2_fracaddfar_n157;
    wire[8:0] fpadd_5_5_f300_uid2_fracaddfar_r;
    wire[1:0] n160_o;
    wire[4:0] n161_o;
    wire n163_o;
    wire[4:0] n164_o;
    wire[4:0] n165_o;
    wire n167_o;
    wire[4:0] n168_o;
    wire[4:0] n169_o;
    wire n170_o;
    wire n172_o;
    wire n173_o;
    wire n174_o;
    wire n176_o;
    wire n177_o;
    wire n178_o;
    wire n180_o;
    wire n181_o;
    wire n182_o;
    wire n183_o;
    wire n185_o;
    wire n186_o;
    wire n187_o;
    wire n188_o;
    wire n189_o;
    wire n190_o;
    wire n191_o;
    wire n192_o;
    wire n193_o;
    wire n196_o;
    wire[1:0] n197_o;
    wire n200_o;
    wire[1:0] n201_o;
    wire n203_o;
    wire n204_o;
    wire n205_o;
    wire n206_o;
    wire n207_o;
    wire n208_o;
    wire[3:0] n209_o;
    wire[1:0] n210_o;
    wire[5:0] n211_o;
    wire n212_o;
    wire[6:0] n213_o;
    wire[4:0] n214_o;
    wire[6:0] n216_o;
    wire[6:0] n217_o;
    wire[11:0] n218_o;
    wire n220_o;
    reg[11:0] n221_o;
    wire n223_o;
    reg n224_o;
    wire n225_o;
    localparam [11:0] n226_o = 12'b000000000000;
    wire[11:0] fpadd_5_5_f300_uid2_finalroundadd_n227;
    wire[11:0] fpadd_5_5_f300_uid2_finalroundadd_r;
    wire[1:0] n230_o;
    wire n231_o;
    wire[1:0] n233_o;
    wire n235_o;
    wire n238_o;
    wire n240_o;
    wire n241_o;
    wire n242_o;
    wire[1:0] n244_o;
    wire[1:0] n245_o;
    reg[1:0] n246_o;
    wire[9:0] n247_o;
    wire[10:0] n248_o;
    wire[1:0] n249_o;
    wire n251_o;
    wire[1:0] n253_o;
    wire n255_o;
    wire n258_o;
    wire[1:0] n259_o;
    wire[2:0] n260_o;
    reg[1:0] n261_o;
    wire n262_o;
    wire n264_o;
    wire n265_o;
    wire n266_o;
    wire n268_o;
    wire n269_o;
    wire[1:0] n270_o;
    reg n271_o;
    wire[9:0] n272_o;
    wire n274_o;
    wire[9:0] n275_o;
    reg[9:0] n276_o;
    wire[2:0] n277_o;
    wire[12:0] n278_o;
    reg[12:0] n279_q;
    reg n280_q;
    reg n281_q;
    reg n282_q;
    reg n283_q;
    reg[6:0] n284_q;
    reg[6:0] n285_q;
    reg[6:0] n286_q;
    reg n287_q;
    reg n288_q;
    reg n289_q;
    reg n290_q;
    reg n291_q;
    reg[12:0] n292_q;
    reg[12:0] n293_q;
    reg[12:0] n294_q;
    reg n295_q;
    reg n296_q;
    reg n297_q;
    reg n298_q;
    reg n299_q;
    reg n300_q;
    wire[12:0] n301_o;
    reg[3:0] n302_q;
    reg[3:0] n303_q;
    reg[3:0] n304_q;
    assign R = n278_o;
    assign inx = X; // (signal)
    assign iny = Y; // (signal)
    assign exceptionxsuperiory = n34_o; // (signal)
    assign exceptionxequaly = n40_o; // (signal)
    assign signedexponentx = n44_o; // (signal)
    assign signedexponenty = n47_o; // (signal)
    assign exponentdifferencexy = n48_o; // (signal)
    assign exponentdifferenceyx = n51_o; // (signal)
    assign swap = n55_o; // (signal)
    assign newx = n56_o; // (signal)
    assign newx_d1 = n279_q; // (signal)
    assign newy = n57_o; // (signal)
    assign exponentdifference = n58_o; // (signal)
    assign shiftedout = n60_o; // (signal)
    assign shiftval = n63_o; // (signal)
    assign effsub = n67_o; // (signal)
    assign effsub_d1 = n280_q; // (signal)
    assign effsub_d2 = n281_q; // (signal)
    assign selectclosepath = n71_o; // (signal)
    assign selectclosepath_d1 = n282_q; // (signal)
    assign selectclosepath_d2 = n283_q; // (signal)
    assign sdexnxy = n75_o; // (signal)
    assign pipesigny = n76_o; // (signal)
    assign fracxclose1 = n81_o; // (signal)
    assign fracyclose1 = n93_o; // (signal)
    assign fracrclosexmy = fpadd_5_5_f300_uid2_dualsubclose_n94; // (signal)
    assign fracrcloseymx = fpadd_5_5_f300_uid2_dualsubclose_n95; // (signal)
    assign fracsignclose = n100_o; // (signal)
    assign fracrclose1 = n103_o; // (signal)
    assign ressign = n109_o; // (signal)
    assign nzerosnew = norm_n113; // (signal)
    assign shiftedfrac = norm_n114; // (signal)
    assign roundclose0 = n121_o; // (signal)
    assign resultcloseiszero0 = n125_o; // (signal)
    assign exponentresultclose = n132_o; // (signal)
    assign exponentresultclose_d1 = n284_q; // (signal)
    assign resultbeforeroundclose = n134_o; // (signal)
    assign roundclose = roundclose0; // (signal)
    assign resultcloseiszero = resultcloseiszero0; // (signal)
    assign fracnewy = n137_o; // (signal)
    assign shiftedfracy = rightshiftercomponent_n138; // (signal)
    assign sticky = rightshiftercomponent_n139; // (signal)
    assign fracyfar = n145_o; // (signal)
    assign effsubvector = n148_o; // (signal)
    assign fracyfarxorop = n149_o; // (signal)
    assign fracxfar = n154_o; // (signal)
    assign cinaddfar = n156_o; // (signal)
    assign fracresultfar0 = fpadd_5_5_f300_uid2_fracaddfar_n157; // (signal)
    assign fracresultfarnormstage = fracresultfar0; // (signal)
    assign fracleadingbits = n160_o; // (signal)
    assign fracresultfar1 = n164_o; // (signal)
    assign fracresultroundbit = n173_o; // (signal)
    assign fracresultstickybit = n181_o; // (signal)
    assign roundfar1 = n193_o; // (signal)
    assign expoperationsel = n197_o; // (signal)
    assign exponentupdate = n213_o; // (signal)
    assign exponentresultfar0 = n216_o; // (signal)
    assign exponentresultfar0_d1 = n285_q; // (signal)
    assign exponentresultfar0_d2 = n286_q; // (signal)
    assign exponentresultfar1 = n217_o; // (signal)
    assign resultbeforeroundfar = n218_o; // (signal)
    assign roundfar = roundfar1; // (signal)
    assign resultbeforeround = n221_o; // (signal)
    assign round = n224_o; // (signal)
    assign zerofromclose = n225_o; // (signal)
    assign zerofromclose_d1 = n287_q; // (signal)
    assign zerofromclose_d2 = n288_q; // (signal)
    assign resultrounded = fpadd_5_5_f300_uid2_finalroundadd_n227; // (signal)
    assign synceffsub = effsub; // (signal)
    assign synceffsub_d1 = n289_q; // (signal)
    assign synceffsub_d2 = n290_q; // (signal)
    assign synceffsub_d3 = n291_q; // (signal)
    assign syncx = newx; // (signal)
    assign syncx_d1 = n292_q; // (signal)
    assign syncx_d2 = n293_q; // (signal)
    assign syncx_d3 = n294_q; // (signal)
    assign syncsigny = pipesigny; // (signal)
    assign syncsigny_d1 = n295_q; // (signal)
    assign syncsigny_d2 = n296_q; // (signal)
    assign syncsigny_d3 = n297_q; // (signal)
    assign syncressign = ressign; // (signal)
    assign syncressign_d1 = n298_q; // (signal)
    assign syncressign_d2 = n299_q; // (signal)
    assign syncressign_d3 = n300_q; // (signal)
    assign underflowoverflow = n230_o; // (signal)
    assign resultnoexn = n301_o; // (signal)
    assign syncexnxy = sdexnxy; // (signal)
    assign syncexnxy_d1 = n302_q; // (signal)
    assign syncexnxy_d2 = n303_q; // (signal)
    assign syncexnxy_d3 = n304_q; // (signal)
    assign exnr = n261_o; // (signal)
    assign sgnr = n271_o; // (signal)
    assign expsigr = n276_o; // (signal)
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
    assign n56_o = swap ? iny : inx;
    assign n57_o = swap ? inx : iny;
    assign n58_o = swap ? exponentdifferenceyx : n59_o;
    assign n59_o = exponentdifferencexy[4:0];
    assign n60_o = exponentdifference[4];
    assign n61_o = exponentdifference[3:0];
    assign n62_o = ~shiftedout;
    assign n63_o = n62_o ? n61_o : 4'b1000;
    assign n65_o = newx[10];
    assign n66_o = newy[10];
    assign n67_o = n65_o ^ n66_o;
    assign n68_o = exponentdifference[4:1];
    assign n70_o = n68_o == 4'b0000;
    assign n71_o = n70_o ? effsub : 1'b0;
    assign n73_o = newx[12:11];
    assign n74_o = newy[12:11];
    assign n75_o = {n73_o, n74_o};
    assign n76_o = newy[10];
    assign n77_o = newx[4:0];
    assign n79_o = {2'b01, n77_o};
    assign n81_o = {n79_o, 1'b0};
    assign n82_o = exponentdifference[0];
    assign n83_o = newy[4:0];
    assign n85_o = {2'b01, n83_o};
    assign n87_o = {n85_o, 1'b0};
    assign n89_o = n82_o == 1'b0;
    assign n90_o = newy[4:0];
    assign n92_o = {3'b001, n90_o};
    always @*
        case (n89_o)
            1'b1: n93_o = n87_o;
            default: n93_o = n92_o;
        endcase
    assign fpadd_5_5_f300_uid2_dualsubclose_n94 = fpadd_5_5_f300_uid2_dualsubclose_xmy; // (signal)
    assign fpadd_5_5_f300_uid2_dualsubclose_n95 = fpadd_5_5_f300_uid2_dualsubclose_ymx; // (signal)
    intdualsub_8_f300_uid4 fpadd_5_5_f300_uid2_dualsubclose(
        .clk(clk),
        .x(fracxclose1),
        .y(fracyclose1),
        .xmy(fpadd_5_5_f300_uid2_dualsubclose_xmy),
        .ymx(fpadd_5_5_f300_uid2_dualsubclose_ymx));
    assign n100_o = fracrclosexmy[7];
    assign n101_o = fracrclosexmy[6:0];
    assign n102_o = ~fracsignclose;
    assign n103_o = n102_o ? n101_o : n104_o;
    assign n104_o = fracrcloseymx[6:0];
    assign n107_o = fracrclose1 == 7'b0000000;
    assign n108_o = selectclosepath & n107_o;
    assign n109_o = n108_o ? 1'b0 : n112_o;
    assign n110_o = newx[10];
    assign n111_o = selectclosepath & fracsignclose;
    assign n112_o = n110_o ^ n111_o;
    assign norm_n113 = norm_count; // (signal)
    assign norm_n114 = norm_r; // (signal)
    normalizer_z_7_7_7_f300_uid6 norm(
        .clk(clk),
        .x(fracrclose1),
        .count(norm_count),
        .r(norm_r));
    assign n119_o = shiftedfrac[0];
    assign n120_o = shiftedfrac[1];
    assign n121_o = n119_o & n120_o;
    assign n124_o = nzerosnew == 3'b111;
    assign n125_o = n124_o ? 1'b1 : 1'b0;
    assign n127_o = newx_d1[9:5];
    assign n129_o = {2'b00, n127_o};
    assign n131_o = {4'b0000, nzerosnew};
    assign n132_o = n129_o-n131_o;
    assign n133_o = shiftedfrac[5:1];
    assign n134_o = {exponentresultclose_d1, n133_o};
    assign n135_o = newy[4:0];
    assign n137_o = {1'b1, n135_o};
    assign rightshiftercomponent_n138 = rightshiftercomponent_r; // (signal)
    assign rightshiftercomponent_n139 = rightshiftercomponent_sticky; // (signal)
    rightshiftersticky6_by_max_8_f300_uid8 rightshiftercomponent(
        .clk(clk),
        .x(fracnewy),
        .s(shiftval),
        .r(rightshiftercomponent_r),
        .sticky(rightshiftercomponent_sticky));
    assign n145_o = {1'b0, shiftedfracy};
    assign n146_o = {effsub, effsub, effsub, effsub};
    assign n147_o = {effsub, effsub, effsub, effsub};
    assign n148_o = {n146_o, n147_o, effsub};
    assign n149_o = fracyfar ^ effsubvector;
    assign n150_o = newx[4:0];
    assign n152_o = {2'b01, n150_o};
    assign n154_o = {n152_o, 2'b00};
    assign n155_o = ~sticky;
    assign n156_o = effsub_d2 & n155_o;
    assign fpadd_5_5_f300_uid2_fracaddfar_n157 = fpadd_5_5_f300_uid2_fracaddfar_r; // (signal)
    intadder_9_f300_uid10 fpadd_5_5_f300_uid2_fracaddfar(
        .clk(clk),
        .x(fracxfar),
        .y(fracyfarxorop),
        .cin(cinaddfar),
        .r(fpadd_5_5_f300_uid2_fracaddfar_r));
    assign n160_o = fracresultfarnormstage[8:7];
    assign n161_o = fracresultfarnormstage[5:1];
    assign n163_o = fracleadingbits == 2'b00;
    assign n164_o = n163_o ? n161_o : n168_o;
    assign n165_o = fracresultfarnormstage[6:2];
    assign n167_o = fracleadingbits == 2'b01;
    assign n168_o = n167_o ? n165_o : n169_o;
    assign n169_o = fracresultfarnormstage[7:3];
    assign n170_o = fracresultfarnormstage[0];
    assign n172_o = fracleadingbits == 2'b00;
    assign n173_o = n172_o ? n170_o : n177_o;
    assign n174_o = fracresultfarnormstage[1];
    assign n176_o = fracleadingbits == 2'b01;
    assign n177_o = n176_o ? n174_o : n178_o;
    assign n178_o = fracresultfarnormstage[2];
    assign n180_o = fracleadingbits == 2'b00;
    assign n181_o = n180_o ? sticky : n186_o;
    assign n182_o = fracresultfarnormstage[0];
    assign n183_o = n182_o | sticky;
    assign n185_o = fracleadingbits == 2'b01;
    assign n186_o = n185_o ? n183_o : n190_o;
    assign n187_o = fracresultfarnormstage[1];
    assign n188_o = fracresultfarnormstage[0];
    assign n189_o = n187_o | n188_o;
    assign n190_o = n189_o | sticky;
    assign n191_o = fracresultfar1[0];
    assign n192_o = fracresultstickybit | n191_o;
    assign n193_o = fracresultroundbit & n192_o;
    assign n196_o = fracleadingbits == 2'b00;
    assign n197_o = n196_o ? 2'b11 : n201_o;
    assign n200_o = fracleadingbits == 2'b01;
    assign n201_o = n200_o ? 2'b00 : 2'b01;
    assign n203_o = expoperationsel[1];
    assign n204_o = expoperationsel[1];
    assign n205_o = expoperationsel[1];
    assign n206_o = expoperationsel[1];
    assign n207_o = expoperationsel[1];
    assign n208_o = expoperationsel[1];
    assign n209_o = {n208_o, n207_o, n206_o, n205_o};
    assign n210_o = {n204_o, n203_o};
    assign n211_o = {n209_o, n210_o};
    assign n212_o = expoperationsel[0];
    assign n213_o = {n211_o, n212_o};
    assign n214_o = newx[9:5];
    assign n216_o = {2'b00, n214_o};
    assign n217_o = exponentresultfar0_d2+exponentupdate;
    assign n218_o = {exponentresultfar1, fracresultfar1};
    assign n220_o = selectclosepath_d2 == 1'b1;
    always @*
        case (n220_o)
            1'b1: n221_o = resultbeforeroundclose;
            default: n221_o = resultbeforeroundfar;
        endcase
    assign n223_o = selectclosepath_d2 == 1'b1;
    always @*
        case (n223_o)
            1'b1: n224_o = roundclose;
            default: n224_o = roundfar;
        endcase
    assign n225_o = selectclosepath_d1 & resultcloseiszero;
    assign fpadd_5_5_f300_uid2_finalroundadd_n227 = fpadd_5_5_f300_uid2_finalroundadd_r; // (signal)
    intadder_12_f300_uid133 fpadd_5_5_f300_uid2_finalroundadd(
        .clk(clk),
        .x(resultbeforeround),
        .y(n226_o),
        .cin(round),
        .r(fpadd_5_5_f300_uid2_finalroundadd_r));
    assign n230_o = resultrounded[11:10];
    assign n231_o = ~zerofromclose_d2;
    assign n233_o = {n231_o, 1'b0};
    assign n235_o = underflowoverflow == 2'b01;
    assign n238_o = underflowoverflow == 2'b10;
    assign n240_o = underflowoverflow == 2'b11;
    assign n241_o = n238_o | n240_o;
    assign n242_o = ~zerofromclose_d2;
    assign n244_o = {1'b0, n242_o};
    assign n245_o = {n241_o, n235_o};
    always @*
        case (n245_o)
            2'b10: n246_o = 2'b00;
            2'b01: n246_o = n233_o;
            default: n246_o = n244_o;
        endcase
    assign n247_o = resultrounded[9:0];
    assign n248_o = {syncressign_d3, n247_o};
    assign n249_o = resultnoexn[12:11];
    assign n251_o = syncexnxy_d3 == 4'b0101;
    assign n253_o = {1'b1, synceffsub_d3};
    assign n255_o = syncexnxy_d3 == 4'b1010;
    assign n258_o = syncexnxy_d3 == 4'b1110;
    assign n259_o = syncexnxy_d3[3:2];
    assign n260_o = {n258_o, n255_o, n251_o};
    always @*
        case (n260_o)
            3'b100: n261_o = 2'b11;
            3'b010: n261_o = n253_o;
            3'b001: n261_o = n249_o;
            default: n261_o = n259_o;
        endcase
    assign n262_o = resultnoexn[10];
    assign n264_o = syncexnxy_d3 == 4'b0101;
    assign n265_o = syncx_d3[10];
    assign n266_o = n265_o & syncsigny_d3;
    assign n268_o = syncexnxy_d3 == 4'b0000;
    assign n269_o = syncx_d3[10];
    assign n270_o = {n268_o, n264_o};
    always @*
        case (n270_o)
            2'b10: n271_o = n266_o;
            2'b01: n271_o = n262_o;
            default: n271_o = n269_o;
        endcase
    assign n272_o = resultnoexn[9:0];
    assign n274_o = syncexnxy_d3 == 4'b0101;
    assign n275_o = syncx_d3[9:0];
    always @*
        case (n274_o)
            1'b1: n276_o = n272_o;
            default: n276_o = n275_o;
        endcase
    assign n277_o = {exnr, sgnr};
    assign n278_o = {n277_o, expsigr};
    always @(posedge clk)
        n279_q <= newx;
    always @(posedge clk)
        n280_q <= effsub;
    always @(posedge clk)
        n281_q <= effsub_d1;
    always @(posedge clk)
        n282_q <= selectclosepath;
    always @(posedge clk)
        n283_q <= selectclosepath_d1;
    always @(posedge clk)
        n284_q <= exponentresultclose;
    always @(posedge clk)
        n285_q <= exponentresultfar0;
    always @(posedge clk)
        n286_q <= exponentresultfar0_d1;
    always @(posedge clk)
        n287_q <= zerofromclose;
    always @(posedge clk)
        n288_q <= zerofromclose_d1;
    always @(posedge clk)
        n289_q <= synceffsub;
    always @(posedge clk)
        n290_q <= synceffsub_d1;
    always @(posedge clk)
        n291_q <= synceffsub_d2;
    always @(posedge clk)
        n292_q <= syncx;
    always @(posedge clk)
        n293_q <= syncx_d1;
    always @(posedge clk)
        n294_q <= syncx_d2;
    always @(posedge clk)
        n295_q <= syncsigny;
    always @(posedge clk)
        n296_q <= syncsigny_d1;
    always @(posedge clk)
        n297_q <= syncsigny_d2;
    always @(posedge clk)
        n298_q <= syncressign;
    always @(posedge clk)
        n299_q <= syncressign_d1;
    always @(posedge clk)
        n300_q <= syncressign_d2;
    assign n301_o = {n246_o, n248_o};
    always @(posedge clk)
        n302_q <= syncexnxy;
    always @(posedge clk)
        n303_q <= syncexnxy_d1;
    always @(posedge clk)
        n304_q <= syncexnxy_d2;
endmodule

