module intadder_8_f300_uid133
    (input wire clk,
        input wire[7:0] x,
        input wire[7:0] y,
        input wire cin,
        output wire[7:0] r);
    wire[7:0] rtmp;
    wire[7:0] y_d1;
    wire[7:0] y_d2;
    wire[7:0] n434_o;
    wire[7:0] n435_o;
    wire[7:0] n436_o;
    reg[7:0] n437_q;
    reg[7:0] n438_q;
    assign r = rtmp;
    assign rtmp = n436_o; // (signal)
    assign y_d1 = n437_q; // (signal)
    assign y_d2 = n438_q; // (signal)
    assign n434_o = x+y_d2;
    assign n435_o = {7'b0, cin};  //  uext
    assign n436_o = n434_o+n435_o;
    always @(posedge clk)
        n437_q <= y;
    always @(posedge clk)
        n438_q <= y_d1;
endmodule

module intadder_7_f300_uid10
    (input wire clk,
        input wire[6:0] x,
        input wire[6:0] y,
        input wire cin,
        output wire[6:0] r);
    wire cin_1;
    wire cin_1_d1;
    wire[7:0] x_1;
    wire[7:0] x_1_d1;
    wire[7:0] x_1_d2;
    wire[7:0] y_1;
    wire[7:0] y_1_d1;
    wire[7:0] y_1_d2;
    wire[7:0] s_1;
    wire[6:0] r_1;
    wire[7:0] n415_o;
    wire[7:0] n417_o;
    wire[7:0] n418_o;
    wire[7:0] n419_o;
    wire[7:0] n420_o;
    wire[6:0] n421_o;
    reg n422_q;
    reg[7:0] n423_q;
    reg[7:0] n424_q;
    reg[7:0] n425_q;
    reg[7:0] n426_q;
    assign r = r_1;
    assign cin_1 = cin; // (signal)
    assign cin_1_d1 = n422_q; // (signal)
    assign x_1 = n415_o; // (signal)
    assign x_1_d1 = n423_q; // (signal)
    assign x_1_d2 = n424_q; // (signal)
    assign y_1 = n417_o; // (signal)
    assign y_1_d1 = n425_q; // (signal)
    assign y_1_d2 = n426_q; // (signal)
    assign s_1 = n420_o; // (signal)
    assign r_1 = n421_o; // (signal)
    assign n415_o = {1'b0, x};
    assign n417_o = {1'b0, y};
    assign n418_o = x_1_d2+y_1_d2;
    assign n419_o = {7'b0, cin_1_d1};  //  uext
    assign n420_o = n418_o+n419_o;
    assign n421_o = s_1[6:0];
    always @(posedge clk)
        n422_q <= cin_1;
    always @(posedge clk)
        n423_q <= x_1;
    always @(posedge clk)
        n424_q <= x_1_d1;
    always @(posedge clk)
        n425_q <= y_1;
    always @(posedge clk)
        n426_q <= y_1_d1;
endmodule

module rightshiftersticky4_by_max_6_f300_uid8
    (input wire clk,
        input wire[3:0] x,
        input wire[2:0] s,
        output wire[5:0] r,
        output wire sticky);
    wire[2:0] ps;
    wire[2:0] ps_d1;
    wire[5:0] xpadded;
    wire[5:0] level3;
    wire stk2;
    wire stk2_d1;
    wire[5:0] level2;
    wire[5:0] level2_d1;
    wire stk1;
    wire[5:0] level1;
    wire[5:0] level1_d1;
    wire stk0;
    wire[5:0] level0;
    wire[5:0] n355_o;
    wire[3:0] n357_o;
    wire n359_o;
    wire n360_o;
    wire n361_o;
    wire n362_o;
    wire n364_o;
    wire n365_o;
    wire[5:0] n366_o;
    wire[1:0] n367_o;
    wire[5:0] n369_o;
    wire[1:0] n371_o;
    wire n373_o;
    wire n374_o;
    wire n375_o;
    wire n376_o;
    wire n377_o;
    wire n379_o;
    wire n380_o;
    wire[5:0] n381_o;
    wire[3:0] n382_o;
    wire[5:0] n384_o;
    wire n386_o;
    wire n388_o;
    wire n389_o;
    wire n390_o;
    wire n391_o;
    wire n392_o;
    wire n394_o;
    wire n395_o;
    wire[5:0] n396_o;
    wire[4:0] n397_o;
    wire[5:0] n399_o;
    reg[2:0] n400_q;
    reg n401_q;
    reg[5:0] n402_q;
    reg[5:0] n403_q;
    assign r = level0;
    assign sticky = stk0;
    assign ps = s; // (signal)
    assign ps_d1 = n400_q; // (signal)
    assign xpadded = n355_o; // (signal)
    assign level3 = xpadded; // (signal)
    assign stk2 = n362_o; // (signal)
    assign stk2_d1 = n401_q; // (signal)
    assign level2 = n366_o; // (signal)
    assign level2_d1 = n402_q; // (signal)
    assign stk1 = n377_o; // (signal)
    assign level1 = n381_o; // (signal)
    assign level1_d1 = n403_q; // (signal)
    assign stk0 = n392_o; // (signal)
    assign level0 = n396_o; // (signal)
    assign n355_o = {x, 2'b00};
    assign n357_o = level3[3:0];
    assign n359_o = n357_o != 4'b0000;
    assign n360_o = ps[2];
    assign n361_o = n359_o & n360_o;
    assign n362_o = n361_o ? 1'b1 : 1'b0;
    assign n364_o = ps[2];
    assign n365_o = ~n364_o;
    assign n366_o = n365_o ? level3 : n369_o;
    assign n367_o = level3[5:4];
    assign n369_o = {4'b0000, n367_o};
    assign n371_o = level2_d1[1:0];
    assign n373_o = n371_o != 2'b00;
    assign n374_o = ps_d1[1];
    assign n375_o = n373_o & n374_o;
    assign n376_o = n375_o | stk2_d1;
    assign n377_o = n376_o ? 1'b1 : 1'b0;
    assign n379_o = ps[1];
    assign n380_o = ~n379_o;
    assign n381_o = n380_o ? level2 : n384_o;
    assign n382_o = level2[5:2];
    assign n384_o = {2'b00, n382_o};
    assign n386_o = level1_d1[0];
    assign n388_o = n386_o != 1'b0;
    assign n389_o = ps_d1[0];
    assign n390_o = n388_o & n389_o;
    assign n391_o = n390_o | stk1;
    assign n392_o = n391_o ? 1'b1 : 1'b0;
    assign n394_o = ps[0];
    assign n395_o = ~n394_o;
    assign n396_o = n395_o ? level1 : n399_o;
    assign n397_o = level1[5:1];
    assign n399_o = {1'b0, n397_o};
    always @(posedge clk)
        n400_q <= ps;
    always @(posedge clk)
        n401_q <= stk2;
    always @(posedge clk)
        n402_q <= level2;
    always @(posedge clk)
        n403_q <= level1;
endmodule

module normalizer_z_5_5_5_f300_uid6
    (input wire clk,
        input wire[4:0] x,
        output wire[2:0] count,
        output wire[4:0] r);
    wire[4:0] level3;
    wire[4:0] level3_d1;
    wire count2;
    wire[4:0] level2;
    wire count1;
    wire[4:0] level1;
    wire[4:0] level1_d1;
    wire count0;
    wire count0_d1;
    wire[4:0] level0;
    wire[2:0] scount;
    wire[3:0] n307_o;
    wire n309_o;
    wire n310_o;
    wire n312_o;
    wire[4:0] n313_o;
    wire n314_o;
    wire[4:0] n316_o;
    wire[1:0] n318_o;
    wire n320_o;
    wire n321_o;
    wire n323_o;
    wire[4:0] n324_o;
    wire[2:0] n325_o;
    wire[4:0] n327_o;
    wire n329_o;
    wire n331_o;
    wire n332_o;
    wire n334_o;
    wire[4:0] n335_o;
    wire[3:0] n336_o;
    wire[4:0] n338_o;
    wire[1:0] n339_o;
    wire[2:0] n340_o;
    reg[4:0] n341_q;
    reg[4:0] n342_q;
    reg n343_q;
    assign count = scount;
    assign r = level0;
    assign level3 = x; // (signal)
    assign level3_d1 = n341_q; // (signal)
    assign count2 = n310_o; // (signal)
    assign level2 = n313_o; // (signal)
    assign count1 = n321_o; // (signal)
    assign level1 = n324_o; // (signal)
    assign level1_d1 = n342_q; // (signal)
    assign count0 = n332_o; // (signal)
    assign count0_d1 = n343_q; // (signal)
    assign level0 = n335_o; // (signal)
    assign scount = n340_o; // (signal)
    assign n307_o = level3_d1[4:1];
    assign n309_o = n307_o == 4'b0000;
    assign n310_o = n309_o ? 1'b1 : 1'b0;
    assign n312_o = ~count2;
    assign n313_o = n312_o ? level3_d1 : n316_o;
    assign n314_o = level3_d1[0];
    assign n316_o = {n314_o, 4'b0000};
    assign n318_o = level2[4:3];
    assign n320_o = n318_o == 2'b00;
    assign n321_o = n320_o ? 1'b1 : 1'b0;
    assign n323_o = ~count1;
    assign n324_o = n323_o ? level2 : n327_o;
    assign n325_o = level2[2:0];
    assign n327_o = {n325_o, 2'b00};
    assign n329_o = level1[4];
    assign n331_o = n329_o == 1'b0;
    assign n332_o = n331_o ? 1'b1 : 1'b0;
    assign n334_o = ~count0_d1;
    assign n335_o = n334_o ? level1_d1 : n338_o;
    assign n336_o = level1_d1[3:0];
    assign n338_o = {n336_o, 1'b0};
    assign n339_o = {count2, count1};
    assign n340_o = {n339_o, count0};
    always @(posedge clk)
        n341_q <= level3;
    always @(posedge clk)
        n342_q <= level1;
    always @(posedge clk)
        n343_q <= count0;
endmodule

module intdualsub_6_f300_uid4
    (input wire clk,
        input wire[5:0] x,
        input wire[5:0] y,
        output wire[5:0] xmy,
        output wire[5:0] ymx);
    wire[5:0] temprxmy;
    wire[5:0] temprymx;
    wire[5:0] n287_o;
    wire[5:0] n288_o;
    wire[5:0] n291_o;
    wire[5:0] n292_o;
    wire[5:0] n293_o;
    wire[5:0] n296_o;
    assign xmy = temprxmy;
    assign ymx = temprymx;
    assign temprxmy = n291_o; // (signal)
    assign temprymx = n296_o; // (signal)
    assign n287_o = ~y;
    assign n288_o = x+n287_o;
    assign n291_o = n288_o+6'b000001;
    assign n292_o = ~x;
    assign n293_o = y+n292_o;
    assign n296_o = n293_o+6'b000001;
endmodule

module fadd#(parameter ID=1)
    (input wire clk,
        input wire[8:0] X,
        input wire[8:0] Y,
        output wire[8:0] R);
    wire[8:0] inx;
    wire[8:0] iny;
    wire exceptionxsuperiory;
    wire exceptionxequaly;
    wire[3:0] signedexponentx;
    wire[3:0] signedexponenty;
    wire[3:0] exponentdifferencexy;
    wire[2:0] exponentdifferenceyx;
    wire swap;
    wire[8:0] newx;
    wire[8:0] newx_d1;
    wire[8:0] newy;
    wire[2:0] exponentdifference;
    wire[2:0] shiftval;
    wire effsub;
    wire effsub_d1;
    wire selectclosepath;
    wire selectclosepath_d1;
    wire selectclosepath_d2;
    wire[3:0] sdexnxy;
    wire pipesigny;
    wire[5:0] fracxclose1;
    wire[5:0] fracyclose1;
    wire[5:0] fracrclosexmy;
    wire[5:0] fracrcloseymx;
    wire fracsignclose;
    wire[4:0] fracrclose1;
    wire ressign;
    wire[2:0] nzerosnew;
    wire[4:0] shiftedfrac;
    wire roundclose0;
    wire resultcloseiszero0;
    wire[4:0] exponentresultclose;
    wire[4:0] exponentresultclose_d1;
    wire[7:0] resultbeforeroundclose;
    wire roundclose;
    wire resultcloseiszero;
    wire[3:0] fracnewy;
    wire[5:0] shiftedfracy;
    wire sticky;
    wire sticky_d1;
    wire[6:0] fracyfar;
    wire[6:0] effsubvector;
    wire[6:0] fracyfarxorop;
    wire[6:0] fracxfar;
    wire cinaddfar;
    wire[6:0] fracresultfar0;
    wire[6:0] fracresultfarnormstage;
    wire[1:0] fracleadingbits;
    wire[2:0] fracresultfar1;
    wire fracresultroundbit;
    wire fracresultstickybit;
    wire roundfar1;
    wire[1:0] expoperationsel;
    wire[4:0] exponentupdate;
    wire[4:0] exponentresultfar0;
    wire[4:0] exponentresultfar0_d1;
    wire[4:0] exponentresultfar0_d2;
    wire[4:0] exponentresultfar1;
    wire[7:0] resultbeforeroundfar;
    wire roundfar;
    wire[7:0] resultbeforeround;
    wire round;
    wire zerofromclose;
    wire zerofromclose_d1;
    wire[7:0] resultrounded;
    wire synceffsub;
    wire synceffsub_d1;
    wire synceffsub_d2;
    wire[8:0] syncx;
    wire[8:0] syncx_d1;
    wire[8:0] syncx_d2;
    wire syncsigny;
    wire syncsigny_d1;
    wire syncsigny_d2;
    wire syncressign;
    wire syncressign_d1;
    wire syncressign_d2;
    wire[1:0] underflowoverflow;
    wire[8:0] resultnoexn;
    wire[3:0] syncexnxy;
    wire[3:0] syncexnxy_d1;
    wire[3:0] syncexnxy_d2;
    wire[1:0] exnr;
    wire sgnr;
    wire[5:0] expsigr;
    wire[1:0] n25_o;
    wire[1:0] n26_o;
    wire n27_o;
    wire n28_o;
    wire[1:0] n31_o;
    wire[1:0] n32_o;
    wire n33_o;
    wire n34_o;
    wire[2:0] n36_o;
    wire[3:0] n38_o;
    wire[2:0] n39_o;
    wire[3:0] n41_o;
    wire[3:0] n42_o;
    wire[2:0] n43_o;
    wire[2:0] n44_o;
    wire[2:0] n45_o;
    wire n46_o;
    wire n47_o;
    wire n48_o;
    wire n49_o;
    wire[8:0] n50_o;
    wire[8:0] n51_o;
    wire[2:0] n52_o;
    wire[2:0] n53_o;
    wire n55_o;
    wire n56_o;
    wire n57_o;
    wire[1:0] n58_o;
    wire n60_o;
    wire n61_o;
    wire[1:0] n63_o;
    wire[1:0] n64_o;
    wire[3:0] n65_o;
    wire n66_o;
    wire[2:0] n67_o;
    wire[4:0] n69_o;
    wire[5:0] n71_o;
    wire n72_o;
    wire[2:0] n73_o;
    wire[4:0] n75_o;
    wire[5:0] n77_o;
    wire n79_o;
    wire[2:0] n80_o;
    wire[5:0] n82_o;
    reg[5:0] n83_o;
    wire[5:0] fpadd_3_3_f300_uid2_dualsubclose_n84;
    wire[5:0] fpadd_3_3_f300_uid2_dualsubclose_n85;
    wire[5:0] fpadd_3_3_f300_uid2_dualsubclose_xmy;
    wire[5:0] fpadd_3_3_f300_uid2_dualsubclose_ymx;
    wire n90_o;
    wire[4:0] n91_o;
    wire n92_o;
    wire[4:0] n93_o;
    wire[4:0] n94_o;
    wire n97_o;
    wire n98_o;
    wire n99_o;
    wire n100_o;
    wire n101_o;
    wire n102_o;
    wire[2:0] norm_n103;
    wire[4:0] norm_n104;
    wire[2:0] norm_count;
    wire[4:0] norm_r;
    wire n109_o;
    wire n110_o;
    wire n111_o;
    wire n114_o;
    wire n115_o;
    wire[2:0] n117_o;
    wire[4:0] n119_o;
    wire[4:0] n121_o;
    wire[4:0] n122_o;
    wire[2:0] n123_o;
    wire[7:0] n124_o;
    wire[2:0] n125_o;
    wire[3:0] n127_o;
    wire[5:0] rightshiftercomponent_n128;
    wire rightshiftercomponent_n129;
    wire[5:0] rightshiftercomponent_r;
    wire rightshiftercomponent_sticky;
    wire[6:0] n135_o;
    wire[3:0] n136_o;
    wire[2:0] n137_o;
    wire[6:0] n138_o;
    wire[6:0] n139_o;
    wire[2:0] n140_o;
    wire[4:0] n142_o;
    wire[6:0] n144_o;
    wire n145_o;
    wire n146_o;
    wire[6:0] fpadd_3_3_f300_uid2_fracaddfar_n147;
    wire[6:0] fpadd_3_3_f300_uid2_fracaddfar_r;
    wire[1:0] n150_o;
    wire[2:0] n151_o;
    wire n153_o;
    wire[2:0] n154_o;
    wire[2:0] n155_o;
    wire n157_o;
    wire[2:0] n158_o;
    wire[2:0] n159_o;
    wire n160_o;
    wire n162_o;
    wire n163_o;
    wire n164_o;
    wire n166_o;
    wire n167_o;
    wire n168_o;
    wire n170_o;
    wire n171_o;
    wire n172_o;
    wire n173_o;
    wire n175_o;
    wire n176_o;
    wire n177_o;
    wire n178_o;
    wire n179_o;
    wire n180_o;
    wire n181_o;
    wire n182_o;
    wire n183_o;
    wire n186_o;
    wire[1:0] n187_o;
    wire n190_o;
    wire[1:0] n191_o;
    wire n193_o;
    wire n194_o;
    wire n195_o;
    wire n196_o;
    wire[3:0] n197_o;
    wire n198_o;
    wire[4:0] n199_o;
    wire[2:0] n200_o;
    wire[4:0] n202_o;
    wire[4:0] n203_o;
    wire[7:0] n204_o;
    wire n206_o;
    reg[7:0] n207_o;
    wire n209_o;
    reg n210_o;
    wire n211_o;
    localparam [7:0] n212_o = 8'b00000000;
    wire[7:0] fpadd_3_3_f300_uid2_finalroundadd_n213;
    wire[7:0] fpadd_3_3_f300_uid2_finalroundadd_r;
    wire[1:0] n216_o;
    wire n217_o;
    wire[1:0] n219_o;
    wire n221_o;
    wire n224_o;
    wire n226_o;
    wire n227_o;
    wire n228_o;
    wire[1:0] n230_o;
    wire[1:0] n231_o;
    reg[1:0] n232_o;
    wire[5:0] n233_o;
    wire[6:0] n234_o;
    wire[1:0] n235_o;
    wire n237_o;
    wire[1:0] n239_o;
    wire n241_o;
    wire n244_o;
    wire[1:0] n245_o;
    wire[2:0] n246_o;
    reg[1:0] n247_o;
    wire n248_o;
    wire n250_o;
    wire n251_o;
    wire n252_o;
    wire n254_o;
    wire n255_o;
    wire[1:0] n256_o;
    reg n257_o;
    wire[5:0] n258_o;
    wire n260_o;
    wire[5:0] n261_o;
    reg[5:0] n262_o;
    wire[2:0] n263_o;
    wire[8:0] n264_o;
    reg[8:0] n265_q;
    reg n266_q;
    reg n267_q;
    reg n268_q;
    reg[4:0] n269_q;
    reg n270_q;
    reg[4:0] n271_q;
    reg[4:0] n272_q;
    reg n273_q;
    reg n274_q;
    reg n275_q;
    reg[8:0] n276_q;
    reg[8:0] n277_q;
    reg n278_q;
    reg n279_q;
    reg n280_q;
    reg n281_q;
    wire[8:0] n282_o;
    reg[3:0] n283_q;
    reg[3:0] n284_q;
    assign R = n264_o;
    assign inx = X; // (signal)
    assign iny = Y; // (signal)
    assign exceptionxsuperiory = n28_o; // (signal)
    assign exceptionxequaly = n34_o; // (signal)
    assign signedexponentx = n38_o; // (signal)
    assign signedexponenty = n41_o; // (signal)
    assign exponentdifferencexy = n42_o; // (signal)
    assign exponentdifferenceyx = n45_o; // (signal)
    assign swap = n49_o; // (signal)
    assign newx = n50_o; // (signal)
    assign newx_d1 = n265_q; // (signal)
    assign newy = n51_o; // (signal)
    assign exponentdifference = n52_o; // (signal)
    assign shiftval = exponentdifference; // (signal)
    assign effsub = n57_o; // (signal)
    assign effsub_d1 = n266_q; // (signal)
    assign selectclosepath = n61_o; // (signal)
    assign selectclosepath_d1 = n267_q; // (signal)
    assign selectclosepath_d2 = n268_q; // (signal)
    assign sdexnxy = n65_o; // (signal)
    assign pipesigny = n66_o; // (signal)
    assign fracxclose1 = n71_o; // (signal)
    assign fracyclose1 = n83_o; // (signal)
    assign fracrclosexmy = fpadd_3_3_f300_uid2_dualsubclose_n84; // (signal)
    assign fracrcloseymx = fpadd_3_3_f300_uid2_dualsubclose_n85; // (signal)
    assign fracsignclose = n90_o; // (signal)
    assign fracrclose1 = n93_o; // (signal)
    assign ressign = n99_o; // (signal)
    assign nzerosnew = norm_n103; // (signal)
    assign shiftedfrac = norm_n104; // (signal)
    assign roundclose0 = n111_o; // (signal)
    assign resultcloseiszero0 = n115_o; // (signal)
    assign exponentresultclose = n122_o; // (signal)
    assign exponentresultclose_d1 = n269_q; // (signal)
    assign resultbeforeroundclose = n124_o; // (signal)
    assign roundclose = roundclose0; // (signal)
    assign resultcloseiszero = resultcloseiszero0; // (signal)
    assign fracnewy = n127_o; // (signal)
    assign shiftedfracy = rightshiftercomponent_n128; // (signal)
    assign sticky = rightshiftercomponent_n129; // (signal)
    assign sticky_d1 = n270_q; // (signal)
    assign fracyfar = n135_o; // (signal)
    assign effsubvector = n138_o; // (signal)
    assign fracyfarxorop = n139_o; // (signal)
    assign fracxfar = n144_o; // (signal)
    assign cinaddfar = n146_o; // (signal)
    assign fracresultfar0 = fpadd_3_3_f300_uid2_fracaddfar_n147; // (signal)
    assign fracresultfarnormstage = fracresultfar0; // (signal)
    assign fracleadingbits = n150_o; // (signal)
    assign fracresultfar1 = n154_o; // (signal)
    assign fracresultroundbit = n163_o; // (signal)
    assign fracresultstickybit = n171_o; // (signal)
    assign roundfar1 = n183_o; // (signal)
    assign expoperationsel = n187_o; // (signal)
    assign exponentupdate = n199_o; // (signal)
    assign exponentresultfar0 = n202_o; // (signal)
    assign exponentresultfar0_d1 = n271_q; // (signal)
    assign exponentresultfar0_d2 = n272_q; // (signal)
    assign exponentresultfar1 = n203_o; // (signal)
    assign resultbeforeroundfar = n204_o; // (signal)
    assign roundfar = roundfar1; // (signal)
    assign resultbeforeround = n207_o; // (signal)
    assign round = n210_o; // (signal)
    assign zerofromclose = n211_o; // (signal)
    assign zerofromclose_d1 = n273_q; // (signal)
    assign resultrounded = fpadd_3_3_f300_uid2_finalroundadd_n213; // (signal)
    assign synceffsub = effsub; // (signal)
    assign synceffsub_d1 = n274_q; // (signal)
    assign synceffsub_d2 = n275_q; // (signal)
    assign syncx = newx; // (signal)
    assign syncx_d1 = n276_q; // (signal)
    assign syncx_d2 = n277_q; // (signal)
    assign syncsigny = pipesigny; // (signal)
    assign syncsigny_d1 = n278_q; // (signal)
    assign syncsigny_d2 = n279_q; // (signal)
    assign syncressign = ressign; // (signal)
    assign syncressign_d1 = n280_q; // (signal)
    assign syncressign_d2 = n281_q; // (signal)
    assign underflowoverflow = n216_o; // (signal)
    assign resultnoexn = n282_o; // (signal)
    assign syncexnxy = sdexnxy; // (signal)
    assign syncexnxy_d1 = n283_q; // (signal)
    assign syncexnxy_d2 = n284_q; // (signal)
    assign exnr = n247_o; // (signal)
    assign sgnr = n257_o; // (signal)
    assign expsigr = n262_o; // (signal)
    assign n25_o = inx[8:7];
    assign n26_o = iny[8:7];
    assign n27_o = $unsigned(n25_o) >= $unsigned(n26_o);
    assign n28_o = n27_o ? 1'b1 : 1'b0;
    assign n31_o = inx[8:7];
    assign n32_o = iny[8:7];
    assign n33_o = n31_o == n32_o;
    assign n34_o = n33_o ? 1'b1 : 1'b0;
    assign n36_o = inx[5:3];
    assign n38_o = {1'b0, n36_o};
    assign n39_o = iny[5:3];
    assign n41_o = {1'b0, n39_o};
    assign n42_o = signedexponentx-signedexponenty;
    assign n43_o = signedexponenty[2:0];
    assign n44_o = signedexponentx[2:0];
    assign n45_o = n43_o-n44_o;
    assign n46_o = exponentdifferencexy[3];
    assign n47_o = exceptionxequaly & n46_o;
    assign n48_o = ~exceptionxsuperiory;
    assign n49_o = n47_o | n48_o;
    assign n50_o = swap ? iny : inx;
    assign n51_o = swap ? inx : iny;
    assign n52_o = swap ? exponentdifferenceyx : n53_o;
    assign n53_o = exponentdifferencexy[2:0];
    assign n55_o = newx[6];
    assign n56_o = newy[6];
    assign n57_o = n55_o ^ n56_o;
    assign n58_o = exponentdifference[2:1];
    assign n60_o = n58_o == 2'b00;
    assign n61_o = n60_o ? effsub : 1'b0;
    assign n63_o = newx[8:7];
    assign n64_o = newy[8:7];
    assign n65_o = {n63_o, n64_o};
    assign n66_o = newy[6];
    assign n67_o = newx[2:0];
    assign n69_o = {2'b01, n67_o};
    assign n71_o = {n69_o, 1'b0};
    assign n72_o = exponentdifference[0];
    assign n73_o = newy[2:0];
    assign n75_o = {2'b01, n73_o};
    assign n77_o = {n75_o, 1'b0};
    assign n79_o = n72_o == 1'b0;
    assign n80_o = newy[2:0];
    assign n82_o = {3'b001, n80_o};
    always @*
        case (n79_o)
            1'b1: n83_o = n77_o;
            default: n83_o = n82_o;
        endcase
    assign fpadd_3_3_f300_uid2_dualsubclose_n84 = fpadd_3_3_f300_uid2_dualsubclose_xmy; // (signal)
    assign fpadd_3_3_f300_uid2_dualsubclose_n85 = fpadd_3_3_f300_uid2_dualsubclose_ymx; // (signal)
    intdualsub_6_f300_uid4 fpadd_3_3_f300_uid2_dualsubclose(
        .clk(clk),
        .x(fracxclose1),
        .y(fracyclose1),
        .xmy(fpadd_3_3_f300_uid2_dualsubclose_xmy),
        .ymx(fpadd_3_3_f300_uid2_dualsubclose_ymx));
    assign n90_o = fracrclosexmy[5];
    assign n91_o = fracrclosexmy[4:0];
    assign n92_o = ~fracsignclose;
    assign n93_o = n92_o ? n91_o : n94_o;
    assign n94_o = fracrcloseymx[4:0];
    assign n97_o = fracrclose1 == 5'b00000;
    assign n98_o = selectclosepath & n97_o;
    assign n99_o = n98_o ? 1'b0 : n102_o;
    assign n100_o = newx[6];
    assign n101_o = selectclosepath & fracsignclose;
    assign n102_o = n100_o ^ n101_o;
    assign norm_n103 = norm_count; // (signal)
    assign norm_n104 = norm_r; // (signal)
    normalizer_z_5_5_5_f300_uid6 norm(
        .clk(clk),
        .x(fracrclose1),
        .count(norm_count),
        .r(norm_r));
    assign n109_o = shiftedfrac[0];
    assign n110_o = shiftedfrac[1];
    assign n111_o = n109_o & n110_o;
    assign n114_o = nzerosnew == 3'b111;
    assign n115_o = n114_o ? 1'b1 : 1'b0;
    assign n117_o = newx_d1[5:3];
    assign n119_o = {2'b00, n117_o};
    assign n121_o = {2'b00, nzerosnew};
    assign n122_o = n119_o-n121_o;
    assign n123_o = shiftedfrac[3:1];
    assign n124_o = {exponentresultclose_d1, n123_o};
    assign n125_o = newy[2:0];
    assign n127_o = {1'b1, n125_o};
    assign rightshiftercomponent_n128 = rightshiftercomponent_r; // (signal)
    assign rightshiftercomponent_n129 = rightshiftercomponent_sticky; // (signal)
    rightshiftersticky4_by_max_6_f300_uid8 rightshiftercomponent(
        .clk(clk),
        .x(fracnewy),
        .s(shiftval),
        .r(rightshiftercomponent_r),
        .sticky(rightshiftercomponent_sticky));
    assign n135_o = {1'b0, shiftedfracy};
    assign n136_o = {effsub, effsub, effsub, effsub};
    assign n137_o = {effsub, effsub, effsub};
    assign n138_o = {n136_o, n137_o};
    assign n139_o = fracyfar ^ effsubvector;
    assign n140_o = newx[2:0];
    assign n142_o = {2'b01, n140_o};
    assign n144_o = {n142_o, 2'b00};
    assign n145_o = ~sticky;
    assign n146_o = effsub_d1 & n145_o;
    assign fpadd_3_3_f300_uid2_fracaddfar_n147 = fpadd_3_3_f300_uid2_fracaddfar_r; // (signal)
    intadder_7_f300_uid10 fpadd_3_3_f300_uid2_fracaddfar(
        .clk(clk),
        .x(fracxfar),
        .y(fracyfarxorop),
        .cin(cinaddfar),
        .r(fpadd_3_3_f300_uid2_fracaddfar_r));
    assign n150_o = fracresultfarnormstage[6:5];
    assign n151_o = fracresultfarnormstage[3:1];
    assign n153_o = fracleadingbits == 2'b00;
    assign n154_o = n153_o ? n151_o : n158_o;
    assign n155_o = fracresultfarnormstage[4:2];
    assign n157_o = fracleadingbits == 2'b01;
    assign n158_o = n157_o ? n155_o : n159_o;
    assign n159_o = fracresultfarnormstage[5:3];
    assign n160_o = fracresultfarnormstage[0];
    assign n162_o = fracleadingbits == 2'b00;
    assign n163_o = n162_o ? n160_o : n167_o;
    assign n164_o = fracresultfarnormstage[1];
    assign n166_o = fracleadingbits == 2'b01;
    assign n167_o = n166_o ? n164_o : n168_o;
    assign n168_o = fracresultfarnormstage[2];
    assign n170_o = fracleadingbits == 2'b00;
    assign n171_o = n170_o ? sticky_d1 : n176_o;
    assign n172_o = fracresultfarnormstage[0];
    assign n173_o = n172_o | sticky_d1;
    assign n175_o = fracleadingbits == 2'b01;
    assign n176_o = n175_o ? n173_o : n180_o;
    assign n177_o = fracresultfarnormstage[1];
    assign n178_o = fracresultfarnormstage[0];
    assign n179_o = n177_o | n178_o;
    assign n180_o = n179_o | sticky_d1;
    assign n181_o = fracresultfar1[0];
    assign n182_o = fracresultstickybit | n181_o;
    assign n183_o = fracresultroundbit & n182_o;
    assign n186_o = fracleadingbits == 2'b00;
    assign n187_o = n186_o ? 2'b11 : n191_o;
    assign n190_o = fracleadingbits == 2'b01;
    assign n191_o = n190_o ? 2'b00 : 2'b01;
    assign n193_o = expoperationsel[1];
    assign n194_o = expoperationsel[1];
    assign n195_o = expoperationsel[1];
    assign n196_o = expoperationsel[1];
    assign n197_o = {n196_o, n195_o, n194_o, n193_o};
    assign n198_o = expoperationsel[0];
    assign n199_o = {n197_o, n198_o};
    assign n200_o = newx[5:3];
    assign n202_o = {2'b00, n200_o};
    assign n203_o = exponentresultfar0_d2+exponentupdate;
    assign n204_o = {exponentresultfar1, fracresultfar1};
    assign n206_o = selectclosepath_d2 == 1'b1;
    always @*
        case (n206_o)
            1'b1: n207_o = resultbeforeroundclose;
            default: n207_o = resultbeforeroundfar;
        endcase
    assign n209_o = selectclosepath_d2 == 1'b1;
    always @*
        case (n209_o)
            1'b1: n210_o = roundclose;
            default: n210_o = roundfar;
        endcase
    assign n211_o = selectclosepath_d1 & resultcloseiszero;
    assign fpadd_3_3_f300_uid2_finalroundadd_n213 = fpadd_3_3_f300_uid2_finalroundadd_r; // (signal)
    intadder_8_f300_uid133 fpadd_3_3_f300_uid2_finalroundadd(
        .clk(clk),
        .x(resultbeforeround),
        .y(n212_o),
        .cin(round),
        .r(fpadd_3_3_f300_uid2_finalroundadd_r));
    assign n216_o = resultrounded[7:6];
    assign n217_o = ~zerofromclose_d1;
    assign n219_o = {n217_o, 1'b0};
    assign n221_o = underflowoverflow == 2'b01;
    assign n224_o = underflowoverflow == 2'b10;
    assign n226_o = underflowoverflow == 2'b11;
    assign n227_o = n224_o | n226_o;
    assign n228_o = ~zerofromclose_d1;
    assign n230_o = {1'b0, n228_o};
    assign n231_o = {n227_o, n221_o};
    always @*
        case (n231_o)
            2'b10: n232_o = 2'b00;
            2'b01: n232_o = n219_o;
            default: n232_o = n230_o;
        endcase
    assign n233_o = resultrounded[5:0];
    assign n234_o = {syncressign_d2, n233_o};
    assign n235_o = resultnoexn[8:7];
    assign n237_o = syncexnxy_d2 == 4'b0101;
    assign n239_o = {1'b1, synceffsub_d2};
    assign n241_o = syncexnxy_d2 == 4'b1010;
    assign n244_o = syncexnxy_d2 == 4'b1110;
    assign n245_o = syncexnxy_d2[3:2];
    assign n246_o = {n244_o, n241_o, n237_o};
    always @*
        case (n246_o)
            3'b100: n247_o = 2'b11;
            3'b010: n247_o = n239_o;
            3'b001: n247_o = n235_o;
            default: n247_o = n245_o;
        endcase
    assign n248_o = resultnoexn[6];
    assign n250_o = syncexnxy_d2 == 4'b0101;
    assign n251_o = syncx_d2[6];
    assign n252_o = n251_o & syncsigny_d2;
    assign n254_o = syncexnxy_d2 == 4'b0000;
    assign n255_o = syncx_d2[6];
    assign n256_o = {n254_o, n250_o};
    always @*
        case (n256_o)
            2'b10: n257_o = n252_o;
            2'b01: n257_o = n248_o;
            default: n257_o = n255_o;
        endcase
    assign n258_o = resultnoexn[5:0];
    assign n260_o = syncexnxy_d2 == 4'b0101;
    assign n261_o = syncx_d2[5:0];
    always @*
        case (n260_o)
            1'b1: n262_o = n258_o;
            default: n262_o = n261_o;
        endcase
    assign n263_o = {exnr, sgnr};
    assign n264_o = {n263_o, expsigr};
    always @(posedge clk)
        n265_q <= newx;
    always @(posedge clk)
        n266_q <= effsub;
    always @(posedge clk)
        n267_q <= selectclosepath;
    always @(posedge clk)
        n268_q <= selectclosepath_d1;
    always @(posedge clk)
        n269_q <= exponentresultclose;
    always @(posedge clk)
        n270_q <= sticky;
    always @(posedge clk)
        n271_q <= exponentresultfar0;
    always @(posedge clk)
        n272_q <= exponentresultfar0_d1;
    always @(posedge clk)
        n273_q <= zerofromclose;
    always @(posedge clk)
        n274_q <= synceffsub;
    always @(posedge clk)
        n275_q <= synceffsub_d1;
    always @(posedge clk)
        n276_q <= syncx;
    always @(posedge clk)
        n277_q <= syncx_d1;
    always @(posedge clk)
        n278_q <= syncsigny;
    always @(posedge clk)
        n279_q <= syncsigny_d1;
    always @(posedge clk)
        n280_q <= syncressign;
    always @(posedge clk)
        n281_q <= syncressign_d1;
    assign n282_o = {n232_o, n234_o};
    always @(posedge clk)
        n283_q <= syncexnxy;
    always @(posedge clk)
        n284_q <= syncexnxy_d1;
endmodule

