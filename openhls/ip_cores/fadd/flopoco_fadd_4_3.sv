module intadder_9_f300_uid133
    (input wire clk,
        input wire [8:0] x,
        input wire [8:0] y,
        input wire cin,
       output wire [8:0] r);
    wire[8:0] rtmp;
    wire[8:0] y_d1;
    wire[8:0] y_d2;
    wire[8:0] n439_o;
    wire[8:0] n440_o;
    wire[8:0] n441_o;
    reg[8:0] n442_q;
    reg[8:0] n443_q;
    assign r = rtmp;
    assign rtmp = n441_o; // (signal)
    assign y_d1 = n442_q; // (signal)
    assign y_d2 = n443_q; // (signal)
    assign n439_o = x+y_d2;
    assign n440_o = {8'b0, cin};  //  uext
    assign n441_o = n439_o+n440_o;
    always @(posedge clk)
        n442_q <= y;
    always @(posedge clk)
        n443_q <= y_d1;
endmodule

module intadder_7_f300_uid10
    (input wire clk,
        input wire [6:0] x,
        input wire [6:0] y,
        input wire cin,
       output wire [6:0] r);
    wire[6:0] rtmp;
    wire[6:0] x_d1;
    wire[6:0] x_d2;
    wire[6:0] y_d1;
    wire[6:0] y_d2;
    wire[6:0] n425_o;
    wire[6:0] n426_o;
    wire[6:0] n427_o;
    reg[6:0] n428_q;
    reg[6:0] n429_q;
    reg[6:0] n430_q;
    reg[6:0] n431_q;
    assign r = rtmp;
    assign rtmp = n427_o; // (signal)
    assign x_d1 = n428_q; // (signal)
    assign x_d2 = n429_q; // (signal)
    assign y_d1 = n430_q; // (signal)
    assign y_d2 = n431_q; // (signal)
    assign n425_o = x_d2+y_d2;
    assign n426_o = {6'b0, cin};  //  uext
    assign n427_o = n425_o+n426_o;
    always @(posedge clk)
        n428_q <= x;
    always @(posedge clk)
        n429_q <= x_d1;
    always @(posedge clk)
        n430_q <= y;
    always @(posedge clk)
        n431_q <= y_d1;
endmodule

module rightshiftersticky4_by_max_6_f300_uid8
    (input wire clk,
        input wire [3:0] x,
        input wire [2:0] s,
       output wire [5:0] r,
        output wire sticky);
    wire[2:0] ps;
    wire[2:0] ps_d1;
    wire[2:0] ps_d2;
    wire[5:0] xpadded;
    wire[5:0] level3;
    wire[5:0] level3_d1;
    wire stk2;
    wire[5:0] level2;
    wire[5:0] level2_d1;
    wire stk1;
    wire stk1_d1;
    wire[5:0] level1;
    wire[5:0] level1_d1;
    wire[5:0] level1_d2;
    wire stk0;
    wire[5:0] level0;
    wire[5:0] n364_o;
    wire[3:0] n366_o;
    wire n368_o;
    wire n369_o;
    wire n370_o;
    wire n371_o;
    wire n373_o;
    wire n374_o;
    wire[5:0] n375_o;
    wire[1:0] n376_o;
    wire[5:0] n378_o;
    wire[1:0] n380_o;
    wire n382_o;
    wire n383_o;
    wire n384_o;
    wire n385_o;
    wire n386_o;
    wire n388_o;
    wire n389_o;
    wire[5:0] n390_o;
    wire[3:0] n391_o;
    wire[5:0] n393_o;
    wire n395_o;
    wire n397_o;
    wire n398_o;
    wire n399_o;
    wire n400_o;
    wire n401_o;
    wire n403_o;
    wire n404_o;
    wire[5:0] n405_o;
    wire[4:0] n406_o;
    wire[5:0] n408_o;
    reg[2:0] n409_q;
    reg[2:0] n410_q;
    reg[5:0] n411_q;
    reg[5:0] n412_q;
    reg n413_q;
    reg[5:0] n414_q;
    reg[5:0] n415_q;
    assign r = level0;
    assign sticky = stk0;
    assign ps = s; // (signal)
    assign ps_d1 = n409_q; // (signal)
    assign ps_d2 = n410_q; // (signal)
    assign xpadded = n364_o; // (signal)
    assign level3 = xpadded; // (signal)
    assign level3_d1 = n411_q; // (signal)
    assign stk2 = n371_o; // (signal)
    assign level2 = n375_o; // (signal)
    assign level2_d1 = n412_q; // (signal)
    assign stk1 = n386_o; // (signal)
    assign stk1_d1 = n413_q; // (signal)
    assign level1 = n390_o; // (signal)
    assign level1_d1 = n414_q; // (signal)
    assign level1_d2 = n415_q; // (signal)
    assign stk0 = n401_o; // (signal)
    assign level0 = n405_o; // (signal)
    assign n364_o = {x, 2'b00};
    assign n366_o = level3_d1[3:0];
    assign n368_o = n366_o != 4'b0000;
    assign n369_o = ps_d1[2];
    assign n370_o = n368_o & n369_o;
    assign n371_o = n370_o ? 1'b1 : 1'b0;
    assign n373_o = ps[2];
    assign n374_o = ~n373_o;
    assign n375_o = n374_o ? level3 : n378_o;
    assign n376_o = level3[5:4];
    assign n378_o = {4'b0000, n376_o};
    assign n380_o = level2_d1[1:0];
    assign n382_o = n380_o != 2'b00;
    assign n383_o = ps_d1[1];
    assign n384_o = n382_o & n383_o;
    assign n385_o = n384_o | stk2;
    assign n386_o = n385_o ? 1'b1 : 1'b0;
    assign n388_o = ps[1];
    assign n389_o = ~n388_o;
    assign n390_o = n389_o ? level2 : n393_o;
    assign n391_o = level2[5:2];
    assign n393_o = {2'b00, n391_o};
    assign n395_o = level1_d2[0];
    assign n397_o = n395_o != 1'b0;
    assign n398_o = ps_d2[0];
    assign n399_o = n397_o & n398_o;
    assign n400_o = n399_o | stk1_d1;
    assign n401_o = n400_o ? 1'b1 : 1'b0;
    assign n403_o = ps[0];
    assign n404_o = ~n403_o;
    assign n405_o = n404_o ? level1 : n408_o;
    assign n406_o = level1[5:1];
    assign n408_o = {1'b0, n406_o};
    always @(posedge clk)
        n409_q <= ps;
    always @(posedge clk)
        n410_q <= ps_d1;
    always @(posedge clk)
        n411_q <= level3;
    always @(posedge clk)
        n412_q <= level2;
    always @(posedge clk)
        n413_q <= stk1;
    always @(posedge clk)
        n414_q <= level1;
    always @(posedge clk)
        n415_q <= level1_d1;
endmodule

module normalizer_z_5_5_5_f300_uid6
    (input wire clk,
        input wire [4:0] x,
       output wire [2:0] count,
       output wire [4:0] r);
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
    wire[3:0] n313_o;
    wire n315_o;
    wire n316_o;
    wire n318_o;
    wire[4:0] n319_o;
    wire n320_o;
    wire[4:0] n322_o;
    wire[1:0] n324_o;
    wire n326_o;
    wire n327_o;
    wire n329_o;
    wire[4:0] n330_o;
    wire[2:0] n331_o;
    wire[4:0] n333_o;
    wire n335_o;
    wire n337_o;
    wire n338_o;
    wire n340_o;
    wire[4:0] n341_o;
    wire[3:0] n342_o;
    wire[4:0] n344_o;
    wire[1:0] n345_o;
    wire[2:0] n346_o;
    reg[4:0] n347_q;
    reg[4:0] n348_q;
    reg n349_q;
    assign count = scount;
    assign r = level0;
    assign level3 = x; // (signal)
    assign level3_d1 = n347_q; // (signal)
    assign count2 = n316_o; // (signal)
    assign level2 = n319_o; // (signal)
    assign count1 = n327_o; // (signal)
    assign level1 = n330_o; // (signal)
    assign level1_d1 = n348_q; // (signal)
    assign count0 = n338_o; // (signal)
    assign count0_d1 = n349_q; // (signal)
    assign level0 = n341_o; // (signal)
    assign scount = n346_o; // (signal)
    assign n313_o = level3_d1[4:1];
    assign n315_o = n313_o == 4'b0000;
    assign n316_o = n315_o ? 1'b1 : 1'b0;
    assign n318_o = ~count2;
    assign n319_o = n318_o ? level3_d1 : n322_o;
    assign n320_o = level3_d1[0];
    assign n322_o = {n320_o, 4'b0000};
    assign n324_o = level2[4:3];
    assign n326_o = n324_o == 2'b00;
    assign n327_o = n326_o ? 1'b1 : 1'b0;
    assign n329_o = ~count1;
    assign n330_o = n329_o ? level2 : n333_o;
    assign n331_o = level2[2:0];
    assign n333_o = {n331_o, 2'b00};
    assign n335_o = level1[4];
    assign n337_o = n335_o == 1'b0;
    assign n338_o = n337_o ? 1'b1 : 1'b0;
    assign n340_o = ~count0_d1;
    assign n341_o = n340_o ? level1_d1 : n344_o;
    assign n342_o = level1_d1[3:0];
    assign n344_o = {n342_o, 1'b0};
    assign n345_o = {count2, count1};
    assign n346_o = {n345_o, count0};
    always @(posedge clk)
        n347_q <= level3;
    always @(posedge clk)
        n348_q <= level1;
    always @(posedge clk)
        n349_q <= count0;
endmodule

module intdualsub_6_f300_uid4
    (input wire clk,
        input wire [5:0] x,
        input wire [5:0] y,
       output wire [5:0] xmy,
       output wire [5:0] ymx);
    wire[5:0] temprxmy;
    wire[5:0] temprymx;
    wire[5:0] n293_o;
    wire[5:0] n294_o;
    wire[5:0] n297_o;
    wire[5:0] n298_o;
    wire[5:0] n299_o;
    wire[5:0] n302_o;
    assign xmy = temprxmy;
    assign ymx = temprymx;
    assign temprxmy = n297_o; // (signal)
    assign temprymx = n302_o; // (signal)
    assign n293_o = ~y;
    assign n294_o = x+n293_o;
    assign n297_o = n294_o+6'b000001;
    assign n298_o = ~x;
    assign n299_o = y+n298_o;
    assign n302_o = n299_o+6'b000001;
endmodule

module fadd#(parameter ID=1)
    (input wire clk,
        input wire [9:0] X,
        input wire [9:0] Y,
       output wire [9:0] R);
    wire[9:0] inx;
    wire[9:0] iny;
    wire exceptionxsuperiory;
    wire exceptionxequaly;
    wire[4:0] signedexponentx;
    wire[4:0] signedexponenty;
    wire[4:0] exponentdifferencexy;
    wire[3:0] exponentdifferenceyx;
    wire swap;
    wire[9:0] newx;
    wire[9:0] newx_d1;
    wire[9:0] newy;
    wire[3:0] exponentdifference;
    wire shiftedout;
    wire[2:0] shiftval;
    wire effsub;
    wire effsub_d1;
    wire effsub_d2;
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
    wire[5:0] exponentresultclose;
    wire[5:0] exponentresultclose_d1;
    wire[8:0] resultbeforeroundclose;
    wire roundclose;
    wire resultcloseiszero;
    wire[3:0] fracnewy;
    wire[5:0] shiftedfracy;
    wire sticky;
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
    wire[5:0] exponentupdate;
    wire[5:0] exponentresultfar0;
    wire[5:0] exponentresultfar0_d1;
    wire[5:0] exponentresultfar0_d2;
    wire[5:0] exponentresultfar1;
    wire[8:0] resultbeforeroundfar;
    wire roundfar;
    wire[8:0] resultbeforeround;
    wire round;
    wire zerofromclose;
    wire zerofromclose_d1;
    wire[8:0] resultrounded;
    wire synceffsub;
    wire synceffsub_d1;
    wire synceffsub_d2;
    wire[9:0] syncx;
    wire[9:0] syncx_d1;
    wire[9:0] syncx_d2;
    wire syncsigny;
    wire syncsigny_d1;
    wire syncsigny_d2;
    wire syncressign;
    wire syncressign_d1;
    wire syncressign_d2;
    wire[1:0] underflowoverflow;
    wire[9:0] resultnoexn;
    wire[3:0] syncexnxy;
    wire[3:0] syncexnxy_d1;
    wire[3:0] syncexnxy_d2;
    wire[1:0] exnr;
    wire sgnr;
    wire[6:0] expsigr;
    wire[1:0] n25_o;
    wire[1:0] n26_o;
    wire n27_o;
    wire n28_o;
    wire[1:0] n31_o;
    wire[1:0] n32_o;
    wire n33_o;
    wire n34_o;
    wire[3:0] n36_o;
    wire[4:0] n38_o;
    wire[3:0] n39_o;
    wire[4:0] n41_o;
    wire[4:0] n42_o;
    wire[3:0] n43_o;
    wire[3:0] n44_o;
    wire[3:0] n45_o;
    wire n46_o;
    wire n47_o;
    wire n48_o;
    wire n49_o;
    wire[9:0] n50_o;
    wire[9:0] n51_o;
    wire[3:0] n52_o;
    wire[3:0] n53_o;
    wire n54_o;
    wire[2:0] n55_o;
    wire n56_o;
    wire[2:0] n57_o;
    wire n59_o;
    wire n60_o;
    wire n61_o;
    wire[2:0] n62_o;
    wire n64_o;
    wire n65_o;
    wire[1:0] n67_o;
    wire[1:0] n68_o;
    wire[3:0] n69_o;
    wire n70_o;
    wire[2:0] n71_o;
    wire[4:0] n73_o;
    wire[5:0] n75_o;
    wire n76_o;
    wire[2:0] n77_o;
    wire[4:0] n79_o;
    wire[5:0] n81_o;
    wire n83_o;
    wire[2:0] n84_o;
    wire[5:0] n86_o;
    reg[5:0] n87_o;
    wire[5:0] fpadd_4_3_f300_uid2_dualsubclose_n88;
    wire[5:0] fpadd_4_3_f300_uid2_dualsubclose_n89;
    wire[5:0] fpadd_4_3_f300_uid2_dualsubclose_xmy;
    wire[5:0] fpadd_4_3_f300_uid2_dualsubclose_ymx;
    wire n94_o;
    wire[4:0] n95_o;
    wire n96_o;
    wire[4:0] n97_o;
    wire[4:0] n98_o;
    wire n101_o;
    wire n102_o;
    wire n103_o;
    wire n104_o;
    wire n105_o;
    wire n106_o;
    wire[2:0] norm_n107;
    wire[4:0] norm_n108;
    wire[2:0] norm_count;
    wire[4:0] norm_r;
    wire n113_o;
    wire n114_o;
    wire n115_o;
    wire n118_o;
    wire n119_o;
    wire[3:0] n121_o;
    wire[5:0] n123_o;
    wire[5:0] n125_o;
    wire[5:0] n126_o;
    wire[2:0] n127_o;
    wire[8:0] n128_o;
    wire[2:0] n129_o;
    wire[3:0] n131_o;
    wire[5:0] rightshiftercomponent_n132;
    wire rightshiftercomponent_n133;
    wire[5:0] rightshiftercomponent_r;
    wire rightshiftercomponent_sticky;
    wire[6:0] n139_o;
    wire[3:0] n140_o;
    wire[2:0] n141_o;
    wire[6:0] n142_o;
    wire[6:0] n143_o;
    wire[2:0] n144_o;
    wire[4:0] n146_o;
    wire[6:0] n148_o;
    wire n149_o;
    wire n150_o;
    wire[6:0] fpadd_4_3_f300_uid2_fracaddfar_n151;
    wire[6:0] fpadd_4_3_f300_uid2_fracaddfar_r;
    wire[1:0] n154_o;
    wire[2:0] n155_o;
    wire n157_o;
    wire[2:0] n158_o;
    wire[2:0] n159_o;
    wire n161_o;
    wire[2:0] n162_o;
    wire[2:0] n163_o;
    wire n164_o;
    wire n166_o;
    wire n167_o;
    wire n168_o;
    wire n170_o;
    wire n171_o;
    wire n172_o;
    wire n174_o;
    wire n175_o;
    wire n176_o;
    wire n177_o;
    wire n179_o;
    wire n180_o;
    wire n181_o;
    wire n182_o;
    wire n183_o;
    wire n184_o;
    wire n185_o;
    wire n186_o;
    wire n187_o;
    wire n190_o;
    wire[1:0] n191_o;
    wire n194_o;
    wire[1:0] n195_o;
    wire n197_o;
    wire n198_o;
    wire n199_o;
    wire n200_o;
    wire n201_o;
    wire[3:0] n202_o;
    wire[4:0] n203_o;
    wire n204_o;
    wire[5:0] n205_o;
    wire[3:0] n206_o;
    wire[5:0] n208_o;
    wire[5:0] n209_o;
    wire[8:0] n210_o;
    wire n212_o;
    reg[8:0] n213_o;
    wire n215_o;
    reg n216_o;
    wire n217_o;
    localparam [8:0] n218_o = 9'b000000000;
    wire[8:0] fpadd_4_3_f300_uid2_finalroundadd_n219;
    wire[8:0] fpadd_4_3_f300_uid2_finalroundadd_r;
    wire[1:0] n222_o;
    wire n223_o;
    wire[1:0] n225_o;
    wire n227_o;
    wire n230_o;
    wire n232_o;
    wire n233_o;
    wire n234_o;
    wire[1:0] n236_o;
    wire[1:0] n237_o;
    reg[1:0] n238_o;
    wire[6:0] n239_o;
    wire[7:0] n240_o;
    wire[1:0] n241_o;
    wire n243_o;
    wire[1:0] n245_o;
    wire n247_o;
    wire n250_o;
    wire[1:0] n251_o;
    wire[2:0] n252_o;
    reg[1:0] n253_o;
    wire n254_o;
    wire n256_o;
    wire n257_o;
    wire n258_o;
    wire n260_o;
    wire n261_o;
    wire[1:0] n262_o;
    reg n263_o;
    wire[6:0] n264_o;
    wire n266_o;
    wire[6:0] n267_o;
    reg[6:0] n268_o;
    wire[2:0] n269_o;
    wire[9:0] n270_o;
    reg[9:0] n271_q;
    reg n272_q;
    reg n273_q;
    reg n274_q;
    reg n275_q;
    reg[5:0] n276_q;
    reg[5:0] n277_q;
    reg[5:0] n278_q;
    reg n279_q;
    reg n280_q;
    reg n281_q;
    reg[9:0] n282_q;
    reg[9:0] n283_q;
    reg n284_q;
    reg n285_q;
    reg n286_q;
    reg n287_q;
    wire[9:0] n288_o;
    reg[3:0] n289_q;
    reg[3:0] n290_q;
    assign R = n270_o;
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
    assign newx_d1 = n271_q; // (signal)
    assign newy = n51_o; // (signal)
    assign exponentdifference = n52_o; // (signal)
    assign shiftedout = n54_o; // (signal)
    assign shiftval = n57_o; // (signal)
    assign effsub = n61_o; // (signal)
    assign effsub_d1 = n272_q; // (signal)
    assign effsub_d2 = n273_q; // (signal)
    assign selectclosepath = n65_o; // (signal)
    assign selectclosepath_d1 = n274_q; // (signal)
    assign selectclosepath_d2 = n275_q; // (signal)
    assign sdexnxy = n69_o; // (signal)
    assign pipesigny = n70_o; // (signal)
    assign fracxclose1 = n75_o; // (signal)
    assign fracyclose1 = n87_o; // (signal)
    assign fracrclosexmy = fpadd_4_3_f300_uid2_dualsubclose_n88; // (signal)
    assign fracrcloseymx = fpadd_4_3_f300_uid2_dualsubclose_n89; // (signal)
    assign fracsignclose = n94_o; // (signal)
    assign fracrclose1 = n97_o; // (signal)
    assign ressign = n103_o; // (signal)
    assign nzerosnew = norm_n107; // (signal)
    assign shiftedfrac = norm_n108; // (signal)
    assign roundclose0 = n115_o; // (signal)
    assign resultcloseiszero0 = n119_o; // (signal)
    assign exponentresultclose = n126_o; // (signal)
    assign exponentresultclose_d1 = n276_q; // (signal)
    assign resultbeforeroundclose = n128_o; // (signal)
    assign roundclose = roundclose0; // (signal)
    assign resultcloseiszero = resultcloseiszero0; // (signal)
    assign fracnewy = n131_o; // (signal)
    assign shiftedfracy = rightshiftercomponent_n132; // (signal)
    assign sticky = rightshiftercomponent_n133; // (signal)
    assign fracyfar = n139_o; // (signal)
    assign effsubvector = n142_o; // (signal)
    assign fracyfarxorop = n143_o; // (signal)
    assign fracxfar = n148_o; // (signal)
    assign cinaddfar = n150_o; // (signal)
    assign fracresultfar0 = fpadd_4_3_f300_uid2_fracaddfar_n151; // (signal)
    assign fracresultfarnormstage = fracresultfar0; // (signal)
    assign fracleadingbits = n154_o; // (signal)
    assign fracresultfar1 = n158_o; // (signal)
    assign fracresultroundbit = n167_o; // (signal)
    assign fracresultstickybit = n175_o; // (signal)
    assign roundfar1 = n187_o; // (signal)
    assign expoperationsel = n191_o; // (signal)
    assign exponentupdate = n205_o; // (signal)
    assign exponentresultfar0 = n208_o; // (signal)
    assign exponentresultfar0_d1 = n277_q; // (signal)
    assign exponentresultfar0_d2 = n278_q; // (signal)
    assign exponentresultfar1 = n209_o; // (signal)
    assign resultbeforeroundfar = n210_o; // (signal)
    assign roundfar = roundfar1; // (signal)
    assign resultbeforeround = n213_o; // (signal)
    assign round = n216_o; // (signal)
    assign zerofromclose = n217_o; // (signal)
    assign zerofromclose_d1 = n279_q; // (signal)
    assign resultrounded = fpadd_4_3_f300_uid2_finalroundadd_n219; // (signal)
    assign synceffsub = effsub; // (signal)
    assign synceffsub_d1 = n280_q; // (signal)
    assign synceffsub_d2 = n281_q; // (signal)
    assign syncx = newx; // (signal)
    assign syncx_d1 = n282_q; // (signal)
    assign syncx_d2 = n283_q; // (signal)
    assign syncsigny = pipesigny; // (signal)
    assign syncsigny_d1 = n284_q; // (signal)
    assign syncsigny_d2 = n285_q; // (signal)
    assign syncressign = ressign; // (signal)
    assign syncressign_d1 = n286_q; // (signal)
    assign syncressign_d2 = n287_q; // (signal)
    assign underflowoverflow = n222_o; // (signal)
    assign resultnoexn = n288_o; // (signal)
    assign syncexnxy = sdexnxy; // (signal)
    assign syncexnxy_d1 = n289_q; // (signal)
    assign syncexnxy_d2 = n290_q; // (signal)
    assign exnr = n253_o; // (signal)
    assign sgnr = n263_o; // (signal)
    assign expsigr = n268_o; // (signal)
    assign n25_o = inx[9:8];
    assign n26_o = iny[9:8];
    assign n27_o = $unsigned(n25_o) >= $unsigned(n26_o);
    assign n28_o = n27_o ? 1'b1 : 1'b0;
    assign n31_o = inx[9:8];
    assign n32_o = iny[9:8];
    assign n33_o = n31_o == n32_o;
    assign n34_o = n33_o ? 1'b1 : 1'b0;
    assign n36_o = inx[6:3];
    assign n38_o = {1'b0, n36_o};
    assign n39_o = iny[6:3];
    assign n41_o = {1'b0, n39_o};
    assign n42_o = signedexponentx-signedexponenty;
    assign n43_o = signedexponenty[3:0];
    assign n44_o = signedexponentx[3:0];
    assign n45_o = n43_o-n44_o;
    assign n46_o = exponentdifferencexy[4];
    assign n47_o = exceptionxequaly & n46_o;
    assign n48_o = ~exceptionxsuperiory;
    assign n49_o = n47_o | n48_o;
    assign n50_o = swap ? iny : inx;
    assign n51_o = swap ? inx : iny;
    assign n52_o = swap ? exponentdifferenceyx : n53_o;
    assign n53_o = exponentdifferencexy[3:0];
    assign n54_o = exponentdifference[3];
    assign n55_o = exponentdifference[2:0];
    assign n56_o = ~shiftedout;
    assign n57_o = n56_o ? n55_o : 3'b110;
    assign n59_o = newx[7];
    assign n60_o = newy[7];
    assign n61_o = n59_o ^ n60_o;
    assign n62_o = exponentdifference[3:1];
    assign n64_o = n62_o == 3'b000;
    assign n65_o = n64_o ? effsub : 1'b0;
    assign n67_o = newx[9:8];
    assign n68_o = newy[9:8];
    assign n69_o = {n67_o, n68_o};
    assign n70_o = newy[7];
    assign n71_o = newx[2:0];
    assign n73_o = {2'b01, n71_o};
    assign n75_o = {n73_o, 1'b0};
    assign n76_o = exponentdifference[0];
    assign n77_o = newy[2:0];
    assign n79_o = {2'b01, n77_o};
    assign n81_o = {n79_o, 1'b0};
    assign n83_o = n76_o == 1'b0;
    assign n84_o = newy[2:0];
    assign n86_o = {3'b001, n84_o};
    always @*
        case (n83_o)
            1'b1: n87_o = n81_o;
            default: n87_o = n86_o;
        endcase
    assign fpadd_4_3_f300_uid2_dualsubclose_n88 = fpadd_4_3_f300_uid2_dualsubclose_xmy; // (signal)
    assign fpadd_4_3_f300_uid2_dualsubclose_n89 = fpadd_4_3_f300_uid2_dualsubclose_ymx; // (signal)
    intdualsub_6_f300_uid4 fpadd_4_3_f300_uid2_dualsubclose(
        .clk(clk),
        .x(fracxclose1),
        .y(fracyclose1),
        .xmy(fpadd_4_3_f300_uid2_dualsubclose_xmy),
        .ymx(fpadd_4_3_f300_uid2_dualsubclose_ymx));
    assign n94_o = fracrclosexmy[5];
    assign n95_o = fracrclosexmy[4:0];
    assign n96_o = ~fracsignclose;
    assign n97_o = n96_o ? n95_o : n98_o;
    assign n98_o = fracrcloseymx[4:0];
    assign n101_o = fracrclose1 == 5'b00000;
    assign n102_o = selectclosepath & n101_o;
    assign n103_o = n102_o ? 1'b0 : n106_o;
    assign n104_o = newx[7];
    assign n105_o = selectclosepath & fracsignclose;
    assign n106_o = n104_o ^ n105_o;
    assign norm_n107 = norm_count; // (signal)
    assign norm_n108 = norm_r; // (signal)
    normalizer_z_5_5_5_f300_uid6 norm(
        .clk(clk),
        .x(fracrclose1),
        .count(norm_count),
        .r(norm_r));
    assign n113_o = shiftedfrac[0];
    assign n114_o = shiftedfrac[1];
    assign n115_o = n113_o & n114_o;
    assign n118_o = nzerosnew == 3'b111;
    assign n119_o = n118_o ? 1'b1 : 1'b0;
    assign n121_o = newx_d1[6:3];
    assign n123_o = {2'b00, n121_o};
    assign n125_o = {3'b000, nzerosnew};
    assign n126_o = n123_o-n125_o;
    assign n127_o = shiftedfrac[3:1];
    assign n128_o = {exponentresultclose_d1, n127_o};
    assign n129_o = newy[2:0];
    assign n131_o = {1'b1, n129_o};
    assign rightshiftercomponent_n132 = rightshiftercomponent_r; // (signal)
    assign rightshiftercomponent_n133 = rightshiftercomponent_sticky; // (signal)
    rightshiftersticky4_by_max_6_f300_uid8 rightshiftercomponent(
        .clk(clk),
        .x(fracnewy),
        .s(shiftval),
        .r(rightshiftercomponent_r),
        .sticky(rightshiftercomponent_sticky));
    assign n139_o = {1'b0, shiftedfracy};
    assign n140_o = {effsub, effsub, effsub, effsub};
    assign n141_o = {effsub, effsub, effsub};
    assign n142_o = {n140_o, n141_o};
    assign n143_o = fracyfar ^ effsubvector;
    assign n144_o = newx[2:0];
    assign n146_o = {2'b01, n144_o};
    assign n148_o = {n146_o, 2'b00};
    assign n149_o = ~sticky;
    assign n150_o = effsub_d2 & n149_o;
    assign fpadd_4_3_f300_uid2_fracaddfar_n151 = fpadd_4_3_f300_uid2_fracaddfar_r; // (signal)
    intadder_7_f300_uid10 fpadd_4_3_f300_uid2_fracaddfar(
        .clk(clk),
        .x(fracxfar),
        .y(fracyfarxorop),
        .cin(cinaddfar),
        .r(fpadd_4_3_f300_uid2_fracaddfar_r));
    assign n154_o = fracresultfarnormstage[6:5];
    assign n155_o = fracresultfarnormstage[3:1];
    assign n157_o = fracleadingbits == 2'b00;
    assign n158_o = n157_o ? n155_o : n162_o;
    assign n159_o = fracresultfarnormstage[4:2];
    assign n161_o = fracleadingbits == 2'b01;
    assign n162_o = n161_o ? n159_o : n163_o;
    assign n163_o = fracresultfarnormstage[5:3];
    assign n164_o = fracresultfarnormstage[0];
    assign n166_o = fracleadingbits == 2'b00;
    assign n167_o = n166_o ? n164_o : n171_o;
    assign n168_o = fracresultfarnormstage[1];
    assign n170_o = fracleadingbits == 2'b01;
    assign n171_o = n170_o ? n168_o : n172_o;
    assign n172_o = fracresultfarnormstage[2];
    assign n174_o = fracleadingbits == 2'b00;
    assign n175_o = n174_o ? sticky : n180_o;
    assign n176_o = fracresultfarnormstage[0];
    assign n177_o = n176_o | sticky;
    assign n179_o = fracleadingbits == 2'b01;
    assign n180_o = n179_o ? n177_o : n184_o;
    assign n181_o = fracresultfarnormstage[1];
    assign n182_o = fracresultfarnormstage[0];
    assign n183_o = n181_o | n182_o;
    assign n184_o = n183_o | sticky;
    assign n185_o = fracresultfar1[0];
    assign n186_o = fracresultstickybit | n185_o;
    assign n187_o = fracresultroundbit & n186_o;
    assign n190_o = fracleadingbits == 2'b00;
    assign n191_o = n190_o ? 2'b11 : n195_o;
    assign n194_o = fracleadingbits == 2'b01;
    assign n195_o = n194_o ? 2'b00 : 2'b01;
    assign n197_o = expoperationsel[1];
    assign n198_o = expoperationsel[1];
    assign n199_o = expoperationsel[1];
    assign n200_o = expoperationsel[1];
    assign n201_o = expoperationsel[1];
    assign n202_o = {n201_o, n200_o, n199_o, n198_o};
    assign n203_o = {n202_o, n197_o};
    assign n204_o = expoperationsel[0];
    assign n205_o = {n203_o, n204_o};
    assign n206_o = newx[6:3];
    assign n208_o = {2'b00, n206_o};
    assign n209_o = exponentresultfar0_d2+exponentupdate;
    assign n210_o = {exponentresultfar1, fracresultfar1};
    assign n212_o = selectclosepath_d2 == 1'b1;
    always @*
        case (n212_o)
            1'b1: n213_o = resultbeforeroundclose;
            default: n213_o = resultbeforeroundfar;
        endcase
    assign n215_o = selectclosepath_d2 == 1'b1;
    always @*
        case (n215_o)
            1'b1: n216_o = roundclose;
            default: n216_o = roundfar;
        endcase
    assign n217_o = selectclosepath_d1 & resultcloseiszero;
    assign fpadd_4_3_f300_uid2_finalroundadd_n219 = fpadd_4_3_f300_uid2_finalroundadd_r; // (signal)
    intadder_9_f300_uid133 fpadd_4_3_f300_uid2_finalroundadd(
        .clk(clk),
        .x(resultbeforeround),
        .y(n218_o),
        .cin(round),
        .r(fpadd_4_3_f300_uid2_finalroundadd_r));
    assign n222_o = resultrounded[8:7];
    assign n223_o = ~zerofromclose_d1;
    assign n225_o = {n223_o, 1'b0};
    assign n227_o = underflowoverflow == 2'b01;
    assign n230_o = underflowoverflow == 2'b10;
    assign n232_o = underflowoverflow == 2'b11;
    assign n233_o = n230_o | n232_o;
    assign n234_o = ~zerofromclose_d1;
    assign n236_o = {1'b0, n234_o};
    assign n237_o = {n233_o, n227_o};
    always @*
        case (n237_o)
            2'b10: n238_o = 2'b00;
            2'b01: n238_o = n225_o;
            default: n238_o = n236_o;
        endcase
    assign n239_o = resultrounded[6:0];
    assign n240_o = {syncressign_d2, n239_o};
    assign n241_o = resultnoexn[9:8];
    assign n243_o = syncexnxy_d2 == 4'b0101;
    assign n245_o = {1'b1, synceffsub_d2};
    assign n247_o = syncexnxy_d2 == 4'b1010;
    assign n250_o = syncexnxy_d2 == 4'b1110;
    assign n251_o = syncexnxy_d2[3:2];
    assign n252_o = {n250_o, n247_o, n243_o};
    always @*
        case (n252_o)
            3'b100: n253_o = 2'b11;
            3'b010: n253_o = n245_o;
            3'b001: n253_o = n241_o;
            default: n253_o = n251_o;
        endcase
    assign n254_o = resultnoexn[7];
    assign n256_o = syncexnxy_d2 == 4'b0101;
    assign n257_o = syncx_d2[7];
    assign n258_o = n257_o & syncsigny_d2;
    assign n260_o = syncexnxy_d2 == 4'b0000;
    assign n261_o = syncx_d2[7];
    assign n262_o = {n260_o, n256_o};
    always @*
        case (n262_o)
            2'b10: n263_o = n258_o;
            2'b01: n263_o = n254_o;
            default: n263_o = n261_o;
        endcase
    assign n264_o = resultnoexn[6:0];
    assign n266_o = syncexnxy_d2 == 4'b0101;
    assign n267_o = syncx_d2[6:0];
    always @*
        case (n266_o)
            1'b1: n268_o = n264_o;
            default: n268_o = n267_o;
        endcase
    assign n269_o = {exnr, sgnr};
    assign n270_o = {n269_o, expsigr};
    always @(posedge clk)
        n271_q <= newx;
    always @(posedge clk)
        n272_q <= effsub;
    always @(posedge clk)
        n273_q <= effsub_d1;
    always @(posedge clk)
        n274_q <= selectclosepath;
    always @(posedge clk)
        n275_q <= selectclosepath_d1;
    always @(posedge clk)
        n276_q <= exponentresultclose;
    always @(posedge clk)
        n277_q <= exponentresultfar0;
    always @(posedge clk)
        n278_q <= exponentresultfar0_d1;
    always @(posedge clk)
        n279_q <= zerofromclose;
    always @(posedge clk)
        n280_q <= synceffsub;
    always @(posedge clk)
        n281_q <= synceffsub_d1;
    always @(posedge clk)
        n282_q <= syncx;
    always @(posedge clk)
        n283_q <= syncx_d1;
    always @(posedge clk)
        n284_q <= syncsigny;
    always @(posedge clk)
        n285_q <= syncsigny_d1;
    always @(posedge clk)
        n286_q <= syncressign;
    always @(posedge clk)
        n287_q <= syncressign_d1;
    assign n288_o = {n238_o, n240_o};
    always @(posedge clk)
        n289_q <= syncexnxy;
    always @(posedge clk)
        n290_q <= syncexnxy_d1;
endmodule

