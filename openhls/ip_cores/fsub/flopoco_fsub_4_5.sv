module intadder_11_f300_uid1333333
  (input wire clk,
   input wire [10:0] x,
   input wire [10:0] y,
   input wire cin,
   output wire [10:0] r);
  wire [10:0] rtmp;
  wire [10:0] y_d1;
  wire [10:0] y_d2;
  wire [10:0] n455_o;
  wire [10:0] n456_o;
  wire [10:0] n457_o;
  reg [10:0] n458_q;
  reg [10:0] n459_q;
  assign r = rtmp;
  assign rtmp = n457_o; // (signal)
  assign y_d1 = n458_q; // (signal)
  assign y_d2 = n459_q; // (signal)
  assign n455_o = x + y_d2;
  assign n456_o = {10'b0, cin};  //  uext
  assign n457_o = n455_o + n456_o;
  always @(posedge clk)
    n458_q <= y;
  always @(posedge clk)
    n459_q <= y_d1;
endmodule

module intadder_9_f300_uid100000
  (input wire clk,
   input wire [8:0] x,
   input wire [8:0] y,
   input wire cin,
   output wire [8:0] r);
  wire [8:0] rtmp;
  wire [8:0] x_d1;
  wire [8:0] x_d2;
  wire [8:0] y_d1;
  wire [8:0] y_d2;
  wire [8:0] n441_o;
  wire [8:0] n442_o;
  wire [8:0] n443_o;
  reg [8:0] n444_q;
  reg [8:0] n445_q;
  reg [8:0] n446_q;
  reg [8:0] n447_q;
  assign r = rtmp;
  assign rtmp = n443_o; // (signal)
  assign x_d1 = n444_q; // (signal)
  assign x_d2 = n445_q; // (signal)
  assign y_d1 = n446_q; // (signal)
  assign y_d2 = n447_q; // (signal)
  assign n441_o = x_d2 + y_d2;
  assign n442_o = {8'b0, cin};  //  uext
  assign n443_o = n441_o + n442_o;
  always @(posedge clk)
    n444_q <= x;
  always @(posedge clk)
    n445_q <= x_d1;
  always @(posedge clk)
    n446_q <= y;
  always @(posedge clk)
    n447_q <= y_d1;
endmodule

module rightshiftersticky6_by_max_8_f300_uid88888888
  (input wire clk,
   input wire [5:0] x,
   input wire [3:0] s,
   output wire [7:0] r,
   output wire sticky);
  wire [3:0] ps;
  wire [3:0] ps_d1;
  wire [3:0] ps_d2;
  wire [7:0] xpadded;
  wire [7:0] level4;
  wire stk3;
  wire stk3_d1;
  wire [7:0] level3;
  wire [7:0] level3_d1;
  wire stk2;
  wire [7:0] level2;
  wire [7:0] level2_d1;
  wire stk1;
  wire stk1_d1;
  wire [7:0] level1;
  wire [7:0] level1_d1;
  wire [7:0] level1_d2;
  wire stk0;
  wire [7:0] level0;
  wire [7:0] n367_o;
  wire n370_o;
  wire n371_o;
  wire n372_o;
  wire n373_o;
  wire n375_o;
  wire n376_o;
  wire [7:0] n377_o;
  wire [3:0] n380_o;
  wire n382_o;
  wire n383_o;
  wire n384_o;
  wire n385_o;
  wire n386_o;
  wire n388_o;
  wire n389_o;
  wire [7:0] n390_o;
  wire [3:0] n391_o;
  wire [7:0] n393_o;
  wire [1:0] n395_o;
  wire n397_o;
  wire n398_o;
  wire n399_o;
  wire n400_o;
  wire n401_o;
  wire n403_o;
  wire n404_o;
  wire [7:0] n405_o;
  wire [5:0] n406_o;
  wire [7:0] n408_o;
  wire n410_o;
  wire n412_o;
  wire n413_o;
  wire n414_o;
  wire n415_o;
  wire n416_o;
  wire n418_o;
  wire n419_o;
  wire [7:0] n420_o;
  wire [6:0] n421_o;
  wire [7:0] n423_o;
  reg [3:0] n424_q;
  reg [3:0] n425_q;
  reg n426_q;
  reg [7:0] n427_q;
  reg [7:0] n428_q;
  reg n429_q;
  reg [7:0] n430_q;
  reg [7:0] n431_q;
  assign r = level0;
  assign sticky = stk0;
  assign ps = s; // (signal)
  assign ps_d1 = n424_q; // (signal)
  assign ps_d2 = n425_q; // (signal)
  assign xpadded = n367_o; // (signal)
  assign level4 = xpadded; // (signal)
  assign stk3 = n373_o; // (signal)
  assign stk3_d1 = n426_q; // (signal)
  assign level3 = n377_o; // (signal)
  assign level3_d1 = n427_q; // (signal)
  assign stk2 = n386_o; // (signal)
  assign level2 = n390_o; // (signal)
  assign level2_d1 = n428_q; // (signal)
  assign stk1 = n401_o; // (signal)
  assign stk1_d1 = n429_q; // (signal)
  assign level1 = n405_o; // (signal)
  assign level1_d1 = n430_q; // (signal)
  assign level1_d2 = n431_q; // (signal)
  assign stk0 = n416_o; // (signal)
  assign level0 = n420_o; // (signal)
  assign n367_o = {x, 2'b00};
  assign n370_o = level4 != 8'b00000000;
  assign n371_o = ps[3];
  assign n372_o = n370_o & n371_o;
  assign n373_o = n372_o ? 1'b1 : 1'b0;
  assign n375_o = ps[3];
  assign n376_o = ~n375_o;
  assign n377_o = n376_o ? level4 : 8'b00000000;
  assign n380_o = level3_d1[3:0];
  assign n382_o = n380_o != 4'b0000;
  assign n383_o = ps_d1[2];
  assign n384_o = n382_o & n383_o;
  assign n385_o = n384_o | stk3_d1;
  assign n386_o = n385_o ? 1'b1 : 1'b0;
  assign n388_o = ps[2];
  assign n389_o = ~n388_o;
  assign n390_o = n389_o ? level3 : n393_o;
  assign n391_o = level3[7:4];
  assign n393_o = {4'b0000, n391_o};
  assign n395_o = level2_d1[1:0];
  assign n397_o = n395_o != 2'b00;
  assign n398_o = ps_d1[1];
  assign n399_o = n397_o & n398_o;
  assign n400_o = n399_o | stk2;
  assign n401_o = n400_o ? 1'b1 : 1'b0;
  assign n403_o = ps[1];
  assign n404_o = ~n403_o;
  assign n405_o = n404_o ? level2 : n408_o;
  assign n406_o = level2[7:2];
  assign n408_o = {2'b00, n406_o};
  assign n410_o = level1_d2[0];
  assign n412_o = n410_o != 1'b0;
  assign n413_o = ps_d2[0];
  assign n414_o = n412_o & n413_o;
  assign n415_o = n414_o | stk1_d1;
  assign n416_o = n415_o ? 1'b1 : 1'b0;
  assign n418_o = ps[0];
  assign n419_o = ~n418_o;
  assign n420_o = n419_o ? level1 : n423_o;
  assign n421_o = level1[7:1];
  assign n423_o = {1'b0, n421_o};
  always @(posedge clk)
    n424_q <= ps;
  always @(posedge clk)
    n425_q <= ps_d1;
  always @(posedge clk)
    n426_q <= stk3;
  always @(posedge clk)
    n427_q <= level3;
  always @(posedge clk)
    n428_q <= level2;
  always @(posedge clk)
    n429_q <= stk1;
  always @(posedge clk)
    n430_q <= level1;
  always @(posedge clk)
    n431_q <= level1_d1;
endmodule

module normalizer_z_7_7_7_f300_uid666666666
  (input wire clk,
   input wire [6:0] x,
   output wire [2:0] count,
   output wire [6:0] r);
  wire [6:0] level3;
  wire [6:0] level3_d1;
  wire count2;
  wire [6:0] level2;
  wire count1;
  wire [6:0] level1;
  wire [6:0] level1_d1;
  wire count0;
  wire count0_d1;
  wire [6:0] level0;
  wire [2:0] scount;
  wire [3:0] n315_o;
  wire n317_o;
  wire n318_o;
  wire n320_o;
  wire [6:0] n321_o;
  wire [2:0] n322_o;
  wire [6:0] n324_o;
  wire [1:0] n326_o;
  wire n328_o;
  wire n329_o;
  wire n331_o;
  wire [6:0] n332_o;
  wire [4:0] n333_o;
  wire [6:0] n335_o;
  wire n337_o;
  wire n339_o;
  wire n340_o;
  wire n342_o;
  wire [6:0] n343_o;
  wire [5:0] n344_o;
  wire [6:0] n346_o;
  wire [1:0] n347_o;
  wire [2:0] n348_o;
  reg [6:0] n349_q;
  reg [6:0] n350_q;
  reg n351_q;
  assign count = scount;
  assign r = level0;
  assign level3 = x; // (signal)
  assign level3_d1 = n349_q; // (signal)
  assign count2 = n318_o; // (signal)
  assign level2 = n321_o; // (signal)
  assign count1 = n329_o; // (signal)
  assign level1 = n332_o; // (signal)
  assign level1_d1 = n350_q; // (signal)
  assign count0 = n340_o; // (signal)
  assign count0_d1 = n351_q; // (signal)
  assign level0 = n343_o; // (signal)
  assign scount = n348_o; // (signal)
  assign n315_o = level3_d1[6:3];
  assign n317_o = n315_o == 4'b0000;
  assign n318_o = n317_o ? 1'b1 : 1'b0;
  assign n320_o = ~count2;
  assign n321_o = n320_o ? level3_d1 : n324_o;
  assign n322_o = level3_d1[2:0];
  assign n324_o = {n322_o, 4'b0000};
  assign n326_o = level2[6:5];
  assign n328_o = n326_o == 2'b00;
  assign n329_o = n328_o ? 1'b1 : 1'b0;
  assign n331_o = ~count1;
  assign n332_o = n331_o ? level2 : n335_o;
  assign n333_o = level2[4:0];
  assign n335_o = {n333_o, 2'b00};
  assign n337_o = level1[6];
  assign n339_o = n337_o == 1'b0;
  assign n340_o = n339_o ? 1'b1 : 1'b0;
  assign n342_o = ~count0_d1;
  assign n343_o = n342_o ? level1_d1 : n346_o;
  assign n344_o = level1_d1[5:0];
  assign n346_o = {n344_o, 1'b0};
  assign n347_o = {count2, count1};
  assign n348_o = {n347_o, count0};
  always @(posedge clk)
    n349_q <= level3;
  always @(posedge clk)
    n350_q <= level1;
  always @(posedge clk)
    n351_q <= count0;
endmodule

module intdualsub_8_f300_uid444444444444
  (input wire clk,
   input wire [7:0] x,
   input wire [7:0] y,
   output wire [7:0] xmy,
   output wire [7:0] ymx);
  wire [7:0] temprxmy;
  wire [7:0] temprymx;
  wire [7:0] n295_o;
  wire [7:0] n296_o;
  wire [7:0] n299_o;
  wire [7:0] n300_o;
  wire [7:0] n301_o;
  wire [7:0] n304_o;
  assign xmy = temprxmy;
  assign ymx = temprymx;
  assign temprxmy = n299_o; // (signal)
  assign temprymx = n304_o; // (signal)
  assign n295_o = ~y;
  assign n296_o = x + n295_o;
  assign n299_o = n296_o + 8'b00000001;
  assign n300_o = ~x;
  assign n301_o = y + n300_o;
  assign n304_o = n301_o + 8'b00000001;
endmodule

module fsub #(parameter ID=1)
  (input wire clk,
   input wire [11:0] X,
   input wire [11:0] Y,
   output wire [11:0] R);
  wire [11:0] inx;
  wire [11:0] iny;
  wire exceptionxsuperiory;
  wire exceptionxequaly;
  wire [4:0] signedexponentx;
  wire [4:0] signedexponenty;
  wire [4:0] exponentdifferencexy;
  wire [3:0] exponentdifferenceyx;
  wire swap;
  wire [11:0] my;
  wire [11:0] newx;
  wire [11:0] newx_d1;
  wire [11:0] newy;
  wire [3:0] exponentdifference;
  wire [3:0] shiftval;
  wire effsub;
  wire effsub_d1;
  wire effsub_d2;
  wire selectclosepath;
  wire selectclosepath_d1;
  wire selectclosepath_d2;
  wire [3:0] sdexnxy;
  wire pipesigny;
  wire [7:0] fracxclose1;
  wire [7:0] fracyclose1;
  wire [7:0] fracrclosexmy;
  wire [7:0] fracrcloseymx;
  wire fracsignclose;
  wire [6:0] fracrclose1;
  wire ressign;
  wire [2:0] nzerosnew;
  wire [6:0] shiftedfrac;
  wire roundclose0;
  wire resultcloseiszero0;
  wire [5:0] exponentresultclose;
  wire [5:0] exponentresultclose_d1;
  wire [10:0] resultbeforeroundclose;
  wire roundclose;
  wire resultcloseiszero;
  wire [5:0] fracnewy;
  wire [7:0] shiftedfracy;
  wire sticky;
  wire [8:0] fracyfar;
  wire [8:0] effsubvector;
  wire [8:0] fracyfarxorop;
  wire [8:0] fracxfar;
  wire cinaddfar;
  wire [8:0] fracresultfar0;
  wire [8:0] fracresultfarnormstage;
  wire [1:0] fracleadingbits;
  wire [4:0] fracresultfar1;
  wire fracresultroundbit;
  wire fracresultstickybit;
  wire roundfar1;
  wire [1:0] expoperationsel;
  wire [5:0] exponentupdate;
  wire [5:0] exponentresultfar0;
  wire [5:0] exponentresultfar0_d1;
  wire [5:0] exponentresultfar0_d2;
  wire [5:0] exponentresultfar1;
  wire [10:0] resultbeforeroundfar;
  wire roundfar;
  wire [10:0] resultbeforeround;
  wire round;
  wire zerofromclose;
  wire zerofromclose_d1;
  wire [10:0] resultrounded;
  wire synceffsub;
  wire synceffsub_d1;
  wire synceffsub_d2;
  wire [11:0] syncx;
  wire [11:0] syncx_d1;
  wire [11:0] syncx_d2;
  wire syncsigny;
  wire syncsigny_d1;
  wire syncsigny_d2;
  wire syncressign;
  wire syncressign_d1;
  wire syncressign_d2;
  wire [1:0] underflowoverflow;
  wire [11:0] resultnoexn;
  wire [3:0] syncexnxy;
  wire [3:0] syncexnxy_d1;
  wire [3:0] syncexnxy_d2;
  wire [1:0] exnr;
  wire sgnr;
  wire [8:0] expsigr;
  wire [1:0] n25_o;
  wire [1:0] n26_o;
  wire n27_o;
  wire n28_o;
  wire [1:0] n31_o;
  wire [1:0] n32_o;
  wire n33_o;
  wire n34_o;
  wire [3:0] n36_o;
  wire [4:0] n38_o;
  wire [3:0] n39_o;
  wire [4:0] n41_o;
  wire [4:0] n42_o;
  wire [3:0] n43_o;
  wire [3:0] n44_o;
  wire [3:0] n45_o;
  wire n46_o;
  wire n47_o;
  wire n48_o;
  wire n49_o;
  wire [1:0] n50_o;
  wire n51_o;
  wire n52_o;
  wire [2:0] n53_o;
  wire [8:0] n54_o;
  wire [11:0] n55_o;
  wire [11:0] n56_o;
  wire [11:0] n57_o;
  wire [3:0] n58_o;
  wire [3:0] n59_o;
  wire n61_o;
  wire n62_o;
  wire n63_o;
  wire [2:0] n64_o;
  wire n66_o;
  wire n67_o;
  wire [1:0] n69_o;
  wire [1:0] n70_o;
  wire [3:0] n71_o;
  wire n72_o;
  wire [4:0] n73_o;
  wire [6:0] n75_o;
  wire [7:0] n77_o;
  wire n78_o;
  wire [4:0] n79_o;
  wire [6:0] n81_o;
  wire [7:0] n83_o;
  wire n85_o;
  wire [4:0] n86_o;
  wire [7:0] n88_o;
  reg [7:0] n89_o;
  wire [7:0] fpsub_4_5_f300_uid2_dualsubclose_n90;
  wire [7:0] fpsub_4_5_f300_uid2_dualsubclose_n91;
  wire [7:0] fpsub_4_5_f300_uid2_dualsubclose_xmy;
  wire [7:0] fpsub_4_5_f300_uid2_dualsubclose_ymx;
  wire n96_o;
  wire [6:0] n97_o;
  wire n98_o;
  wire [6:0] n99_o;
  wire [6:0] n100_o;
  wire n103_o;
  wire n104_o;
  wire n105_o;
  wire n106_o;
  wire n107_o;
  wire n108_o;
  wire [2:0] norm_n109;
  wire [6:0] norm_n110;
  wire [2:0] norm_count;
  wire [6:0] norm_r;
  wire n115_o;
  wire n116_o;
  wire n117_o;
  wire n120_o;
  wire n121_o;
  wire [3:0] n123_o;
  wire [5:0] n125_o;
  wire [5:0] n127_o;
  wire [5:0] n128_o;
  wire [4:0] n129_o;
  wire [10:0] n130_o;
  wire [4:0] n131_o;
  wire [5:0] n133_o;
  wire [7:0] rightshiftercomponent_n134;
  wire rightshiftercomponent_n135;
  wire [7:0] rightshiftercomponent_r;
  wire rightshiftercomponent_sticky;
  wire [8:0] n141_o;
  wire [3:0] n142_o;
  wire [3:0] n143_o;
  wire [8:0] n144_o;
  wire [8:0] n145_o;
  wire [4:0] n146_o;
  wire [6:0] n148_o;
  wire [8:0] n150_o;
  wire n151_o;
  wire n152_o;
  wire [8:0] fpsub_4_5_f300_uid2_fracaddfar_n153;
  wire [8:0] fpsub_4_5_f300_uid2_fracaddfar_r;
  wire [1:0] n156_o;
  wire [4:0] n157_o;
  wire n159_o;
  wire [4:0] n160_o;
  wire [4:0] n161_o;
  wire n163_o;
  wire [4:0] n164_o;
  wire [4:0] n165_o;
  wire n166_o;
  wire n168_o;
  wire n169_o;
  wire n170_o;
  wire n172_o;
  wire n173_o;
  wire n174_o;
  wire n176_o;
  wire n177_o;
  wire n178_o;
  wire n179_o;
  wire n181_o;
  wire n182_o;
  wire n183_o;
  wire n184_o;
  wire n185_o;
  wire n186_o;
  wire n187_o;
  wire n188_o;
  wire n189_o;
  wire n192_o;
  wire [1:0] n193_o;
  wire n196_o;
  wire [1:0] n197_o;
  wire n199_o;
  wire n200_o;
  wire n201_o;
  wire n202_o;
  wire n203_o;
  wire [3:0] n204_o;
  wire [4:0] n205_o;
  wire n206_o;
  wire [5:0] n207_o;
  wire [3:0] n208_o;
  wire [5:0] n210_o;
  wire [5:0] n211_o;
  wire [10:0] n212_o;
  wire n214_o;
  reg [10:0] n215_o;
  wire n217_o;
  reg n218_o;
  wire n219_o;
  localparam [10:0] n220_o = 11'b00000000000;
  wire [10:0] fpsub_4_5_f300_uid2_finalroundadd_n221;
  wire [10:0] fpsub_4_5_f300_uid2_finalroundadd_r;
  wire [1:0] n224_o;
  wire n225_o;
  wire [1:0] n227_o;
  wire n229_o;
  wire n232_o;
  wire n234_o;
  wire n235_o;
  wire n236_o;
  wire [1:0] n238_o;
  wire [1:0] n239_o;
  reg [1:0] n240_o;
  wire [8:0] n241_o;
  wire [9:0] n242_o;
  wire [1:0] n243_o;
  wire n245_o;
  wire [1:0] n247_o;
  wire n249_o;
  wire n252_o;
  wire [1:0] n253_o;
  wire [2:0] n254_o;
  reg [1:0] n255_o;
  wire n256_o;
  wire n258_o;
  wire n259_o;
  wire n260_o;
  wire n262_o;
  wire n263_o;
  wire [1:0] n264_o;
  reg n265_o;
  wire [8:0] n266_o;
  wire n268_o;
  wire [8:0] n269_o;
  reg [8:0] n270_o;
  wire [2:0] n271_o;
  wire [11:0] n272_o;
  reg [11:0] n273_q;
  reg n274_q;
  reg n275_q;
  reg n276_q;
  reg n277_q;
  reg [5:0] n278_q;
  reg [5:0] n279_q;
  reg [5:0] n280_q;
  reg n281_q;
  reg n282_q;
  reg n283_q;
  reg [11:0] n284_q;
  reg [11:0] n285_q;
  reg n286_q;
  reg n287_q;
  reg n288_q;
  reg n289_q;
  wire [11:0] n290_o;
  reg [3:0] n291_q;
  reg [3:0] n292_q;
  assign R = n272_o;
  assign inx = X; // (signal)
  assign iny = Y; // (signal)
  assign exceptionxsuperiory = n28_o; // (signal)
  assign exceptionxequaly = n34_o; // (signal)
  assign signedexponentx = n38_o; // (signal)
  assign signedexponenty = n41_o; // (signal)
  assign exponentdifferencexy = n42_o; // (signal)
  assign exponentdifferenceyx = n45_o; // (signal)
  assign swap = n49_o; // (signal)
  assign my = n55_o; // (signal)
  assign newx = n56_o; // (signal)
  assign newx_d1 = n273_q; // (signal)
  assign newy = n57_o; // (signal)
  assign exponentdifference = n58_o; // (signal)
  assign shiftval = exponentdifference; // (signal)
  assign effsub = n63_o; // (signal)
  assign effsub_d1 = n274_q; // (signal)
  assign effsub_d2 = n275_q; // (signal)
  assign selectclosepath = n67_o; // (signal)
  assign selectclosepath_d1 = n276_q; // (signal)
  assign selectclosepath_d2 = n277_q; // (signal)
  assign sdexnxy = n71_o; // (signal)
  assign pipesigny = n72_o; // (signal)
  assign fracxclose1 = n77_o; // (signal)
  assign fracyclose1 = n89_o; // (signal)
  assign fracrclosexmy = fpsub_4_5_f300_uid2_dualsubclose_n90; // (signal)
  assign fracrcloseymx = fpsub_4_5_f300_uid2_dualsubclose_n91; // (signal)
  assign fracsignclose = n96_o; // (signal)
  assign fracrclose1 = n99_o; // (signal)
  assign ressign = n105_o; // (signal)
  assign nzerosnew = norm_n109; // (signal)
  assign shiftedfrac = norm_n110; // (signal)
  assign roundclose0 = n117_o; // (signal)
  assign resultcloseiszero0 = n121_o; // (signal)
  assign exponentresultclose = n128_o; // (signal)
  assign exponentresultclose_d1 = n278_q; // (signal)
  assign resultbeforeroundclose = n130_o; // (signal)
  assign roundclose = roundclose0; // (signal)
  assign resultcloseiszero = resultcloseiszero0; // (signal)
  assign fracnewy = n133_o; // (signal)
  assign shiftedfracy = rightshiftercomponent_n134; // (signal)
  assign sticky = rightshiftercomponent_n135; // (signal)
  assign fracyfar = n141_o; // (signal)
  assign effsubvector = n144_o; // (signal)
  assign fracyfarxorop = n145_o; // (signal)
  assign fracxfar = n150_o; // (signal)
  assign cinaddfar = n152_o; // (signal)
  assign fracresultfar0 = fpsub_4_5_f300_uid2_fracaddfar_n153; // (signal)
  assign fracresultfarnormstage = fracresultfar0; // (signal)
  assign fracleadingbits = n156_o; // (signal)
  assign fracresultfar1 = n160_o; // (signal)
  assign fracresultroundbit = n169_o; // (signal)
  assign fracresultstickybit = n177_o; // (signal)
  assign roundfar1 = n189_o; // (signal)
  assign expoperationsel = n193_o; // (signal)
  assign exponentupdate = n207_o; // (signal)
  assign exponentresultfar0 = n210_o; // (signal)
  assign exponentresultfar0_d1 = n279_q; // (signal)
  assign exponentresultfar0_d2 = n280_q; // (signal)
  assign exponentresultfar1 = n211_o; // (signal)
  assign resultbeforeroundfar = n212_o; // (signal)
  assign roundfar = roundfar1; // (signal)
  assign resultbeforeround = n215_o; // (signal)
  assign round = n218_o; // (signal)
  assign zerofromclose = n219_o; // (signal)
  assign zerofromclose_d1 = n281_q; // (signal)
  assign resultrounded = fpsub_4_5_f300_uid2_finalroundadd_n221; // (signal)
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
  assign underflowoverflow = n224_o; // (signal)
  assign resultnoexn = n290_o; // (signal)
  assign syncexnxy = sdexnxy; // (signal)
  assign syncexnxy_d1 = n291_q; // (signal)
  assign syncexnxy_d2 = n292_q; // (signal)
  assign exnr = n255_o; // (signal)
  assign sgnr = n265_o; // (signal)
  assign expsigr = n270_o; // (signal)
  assign n25_o = inx[11:10];
  assign n26_o = iny[11:10];
  assign n27_o = $unsigned(n25_o) >= $unsigned(n26_o);
  assign n28_o = n27_o ? 1'b1 : 1'b0;
  assign n31_o = inx[11:10];
  assign n32_o = iny[11:10];
  assign n33_o = n31_o == n32_o;
  assign n34_o = n33_o ? 1'b1 : 1'b0;
  assign n36_o = inx[8:5];
  assign n38_o = {1'b0, n36_o};
  assign n39_o = iny[8:5];
  assign n41_o = {1'b0, n39_o};
  assign n42_o = signedexponentx - signedexponenty;
  assign n43_o = signedexponenty[3:0];
  assign n44_o = signedexponentx[3:0];
  assign n45_o = n43_o - n44_o;
  assign n46_o = exponentdifferencexy[4];
  assign n47_o = exceptionxequaly & n46_o;
  assign n48_o = ~exceptionxsuperiory;
  assign n49_o = n47_o | n48_o;
  assign n50_o = iny[11:10];
  assign n51_o = iny[9];
  assign n52_o = ~n51_o;
  assign n53_o = {n50_o, n52_o};
  assign n54_o = iny[8:0];
  assign n55_o = {n53_o, n54_o};
  assign n56_o = swap ? my : inx;
  assign n57_o = swap ? inx : my;
  assign n58_o = swap ? exponentdifferenceyx : n59_o;
  assign n59_o = exponentdifferencexy[3:0];
  assign n61_o = newx[9];
  assign n62_o = newy[9];
  assign n63_o = n61_o ^ n62_o;
  assign n64_o = exponentdifference[3:1];
  assign n66_o = n64_o == 3'b000;
  assign n67_o = n66_o ? effsub : 1'b0;
  assign n69_o = newx[11:10];
  assign n70_o = newy[11:10];
  assign n71_o = {n69_o, n70_o};
  assign n72_o = newy[9];
  assign n73_o = newx[4:0];
  assign n75_o = {2'b01, n73_o};
  assign n77_o = {n75_o, 1'b0};
  assign n78_o = exponentdifference[0];
  assign n79_o = newy[4:0];
  assign n81_o = {2'b01, n79_o};
  assign n83_o = {n81_o, 1'b0};
  assign n85_o = n78_o == 1'b0;
  assign n86_o = newy[4:0];
  assign n88_o = {3'b001, n86_o};
  always @*
    case (n85_o)
      1'b1: n89_o = n83_o;
      default: n89_o = n88_o;
    endcase
  assign fpsub_4_5_f300_uid2_dualsubclose_n90 = fpsub_4_5_f300_uid2_dualsubclose_xmy; // (signal)
  assign fpsub_4_5_f300_uid2_dualsubclose_n91 = fpsub_4_5_f300_uid2_dualsubclose_ymx; // (signal)
  intdualsub_8_f300_uid444444444444 fpsub_4_5_f300_uid2_dualsubclose (
    .clk(clk),
    .x(fracxclose1),
    .y(fracyclose1),
    .xmy(fpsub_4_5_f300_uid2_dualsubclose_xmy),
    .ymx(fpsub_4_5_f300_uid2_dualsubclose_ymx));
  assign n96_o = fracrclosexmy[7];
  assign n97_o = fracrclosexmy[6:0];
  assign n98_o = ~fracsignclose;
  assign n99_o = n98_o ? n97_o : n100_o;
  assign n100_o = fracrcloseymx[6:0];
  assign n103_o = fracrclose1 == 7'b0000000;
  assign n104_o = selectclosepath & n103_o;
  assign n105_o = n104_o ? 1'b0 : n108_o;
  assign n106_o = newx[9];
  assign n107_o = selectclosepath & fracsignclose;
  assign n108_o = n106_o ^ n107_o;
  assign norm_n109 = norm_count; // (signal)
  assign norm_n110 = norm_r; // (signal)
  normalizer_z_7_7_7_f300_uid666666666 norm (
    .clk(clk),
    .x(fracrclose1),
    .count(norm_count),
    .r(norm_r));
  assign n115_o = shiftedfrac[0];
  assign n116_o = shiftedfrac[1];
  assign n117_o = n115_o & n116_o;
  assign n120_o = nzerosnew == 3'b111;
  assign n121_o = n120_o ? 1'b1 : 1'b0;
  assign n123_o = newx_d1[8:5];
  assign n125_o = {2'b00, n123_o};
  assign n127_o = {3'b000, nzerosnew};
  assign n128_o = n125_o - n127_o;
  assign n129_o = shiftedfrac[5:1];
  assign n130_o = {exponentresultclose_d1, n129_o};
  assign n131_o = newy[4:0];
  assign n133_o = {1'b1, n131_o};
  assign rightshiftercomponent_n134 = rightshiftercomponent_r; // (signal)
  assign rightshiftercomponent_n135 = rightshiftercomponent_sticky; // (signal)
  rightshiftersticky6_by_max_8_f300_uid88888888 rightshiftercomponent (
    .clk(clk),
    .x(fracnewy),
    .s(shiftval),
    .r(rightshiftercomponent_r),
    .sticky(rightshiftercomponent_sticky));
  assign n141_o = {1'b0, shiftedfracy};
  assign n142_o = {effsub, effsub, effsub, effsub};
  assign n143_o = {effsub, effsub, effsub, effsub};
  assign n144_o = {n142_o, n143_o, effsub};
  assign n145_o = fracyfar ^ effsubvector;
  assign n146_o = newx[4:0];
  assign n148_o = {2'b01, n146_o};
  assign n150_o = {n148_o, 2'b00};
  assign n151_o = ~sticky;
  assign n152_o = effsub_d2 & n151_o;
  assign fpsub_4_5_f300_uid2_fracaddfar_n153 = fpsub_4_5_f300_uid2_fracaddfar_r; // (signal)
  intadder_9_f300_uid100000 fpsub_4_5_f300_uid2_fracaddfar (
    .clk(clk),
    .x(fracxfar),
    .y(fracyfarxorop),
    .cin(cinaddfar),
    .r(fpsub_4_5_f300_uid2_fracaddfar_r));
  assign n156_o = fracresultfarnormstage[8:7];
  assign n157_o = fracresultfarnormstage[5:1];
  assign n159_o = fracleadingbits == 2'b00;
  assign n160_o = n159_o ? n157_o : n164_o;
  assign n161_o = fracresultfarnormstage[6:2];
  assign n163_o = fracleadingbits == 2'b01;
  assign n164_o = n163_o ? n161_o : n165_o;
  assign n165_o = fracresultfarnormstage[7:3];
  assign n166_o = fracresultfarnormstage[0];
  assign n168_o = fracleadingbits == 2'b00;
  assign n169_o = n168_o ? n166_o : n173_o;
  assign n170_o = fracresultfarnormstage[1];
  assign n172_o = fracleadingbits == 2'b01;
  assign n173_o = n172_o ? n170_o : n174_o;
  assign n174_o = fracresultfarnormstage[2];
  assign n176_o = fracleadingbits == 2'b00;
  assign n177_o = n176_o ? sticky : n182_o;
  assign n178_o = fracresultfarnormstage[0];
  assign n179_o = n178_o | sticky;
  assign n181_o = fracleadingbits == 2'b01;
  assign n182_o = n181_o ? n179_o : n186_o;
  assign n183_o = fracresultfarnormstage[1];
  assign n184_o = fracresultfarnormstage[0];
  assign n185_o = n183_o | n184_o;
  assign n186_o = n185_o | sticky;
  assign n187_o = fracresultfar1[0];
  assign n188_o = fracresultstickybit | n187_o;
  assign n189_o = fracresultroundbit & n188_o;
  assign n192_o = fracleadingbits == 2'b00;
  assign n193_o = n192_o ? 2'b11 : n197_o;
  assign n196_o = fracleadingbits == 2'b01;
  assign n197_o = n196_o ? 2'b00 : 2'b01;
  assign n199_o = expoperationsel[1];
  assign n200_o = expoperationsel[1];
  assign n201_o = expoperationsel[1];
  assign n202_o = expoperationsel[1];
  assign n203_o = expoperationsel[1];
  assign n204_o = {n203_o, n202_o, n201_o, n200_o};
  assign n205_o = {n204_o, n199_o};
  assign n206_o = expoperationsel[0];
  assign n207_o = {n205_o, n206_o};
  assign n208_o = newx[8:5];
  assign n210_o = {2'b00, n208_o};
  assign n211_o = exponentresultfar0_d2 + exponentupdate;
  assign n212_o = {exponentresultfar1, fracresultfar1};
  assign n214_o = selectclosepath_d2 == 1'b1;
  always @*
    case (n214_o)
      1'b1: n215_o = resultbeforeroundclose;
      default: n215_o = resultbeforeroundfar;
    endcase
  assign n217_o = selectclosepath_d2 == 1'b1;
  always @*
    case (n217_o)
      1'b1: n218_o = roundclose;
      default: n218_o = roundfar;
    endcase
  assign n219_o = selectclosepath_d1 & resultcloseiszero;
  assign fpsub_4_5_f300_uid2_finalroundadd_n221 = fpsub_4_5_f300_uid2_finalroundadd_r; // (signal)
  intadder_11_f300_uid1333333 fpsub_4_5_f300_uid2_finalroundadd (
    .clk(clk),
    .x(resultbeforeround),
    .y(n220_o),
    .cin(round),
    .r(fpsub_4_5_f300_uid2_finalroundadd_r));
  assign n224_o = resultrounded[10:9];
  assign n225_o = ~zerofromclose_d1;
  assign n227_o = {n225_o, 1'b0};
  assign n229_o = underflowoverflow == 2'b01;
  assign n232_o = underflowoverflow == 2'b10;
  assign n234_o = underflowoverflow == 2'b11;
  assign n235_o = n232_o | n234_o;
  assign n236_o = ~zerofromclose_d1;
  assign n238_o = {1'b0, n236_o};
  assign n239_o = {n235_o, n229_o};
  always @*
    case (n239_o)
      2'b10: n240_o = 2'b00;
      2'b01: n240_o = n227_o;
      default: n240_o = n238_o;
    endcase
  assign n241_o = resultrounded[8:0];
  assign n242_o = {syncressign_d2, n241_o};
  assign n243_o = resultnoexn[11:10];
  assign n245_o = syncexnxy_d2 == 4'b0101;
  assign n247_o = {1'b1, synceffsub_d2};
  assign n249_o = syncexnxy_d2 == 4'b1010;
  assign n252_o = syncexnxy_d2 == 4'b1110;
  assign n253_o = syncexnxy_d2[3:2];
  assign n254_o = {n252_o, n249_o, n245_o};
  always @*
    case (n254_o)
      3'b100: n255_o = 2'b11;
      3'b010: n255_o = n247_o;
      3'b001: n255_o = n243_o;
      default: n255_o = n253_o;
    endcase
  assign n256_o = resultnoexn[9];
  assign n258_o = syncexnxy_d2 == 4'b0101;
  assign n259_o = syncx_d2[9];
  assign n260_o = n259_o & syncsigny_d2;
  assign n262_o = syncexnxy_d2 == 4'b0000;
  assign n263_o = syncx_d2[9];
  assign n264_o = {n262_o, n258_o};
  always @*
    case (n264_o)
      2'b10: n265_o = n260_o;
      2'b01: n265_o = n256_o;
      default: n265_o = n263_o;
    endcase
  assign n266_o = resultnoexn[8:0];
  assign n268_o = syncexnxy_d2 == 4'b0101;
  assign n269_o = syncx_d2[8:0];
  always @*
    case (n268_o)
      1'b1: n270_o = n266_o;
      default: n270_o = n269_o;
    endcase
  assign n271_o = {exnr, sgnr};
  assign n272_o = {n271_o, expsigr};
  always @(posedge clk)
    n273_q <= newx;
  always @(posedge clk)
    n274_q <= effsub;
  always @(posedge clk)
    n275_q <= effsub_d1;
  always @(posedge clk)
    n276_q <= selectclosepath;
  always @(posedge clk)
    n277_q <= selectclosepath_d1;
  always @(posedge clk)
    n278_q <= exponentresultclose;
  always @(posedge clk)
    n279_q <= exponentresultfar0;
  always @(posedge clk)
    n280_q <= exponentresultfar0_d1;
  always @(posedge clk)
    n281_q <= zerofromclose;
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
  assign n290_o = {n240_o, n242_o};
  always @(posedge clk)
    n291_q <= syncexnxy;
  always @(posedge clk)
    n292_q <= syncexnxy_d1;
endmodule

