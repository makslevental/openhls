module intadder_9_f300_uid1333
  (input wire clk,
   input wire [8:0] x,
   input wire [8:0] y,
   input wire cin,
   output wire [8:0] r);
  wire [8:0] rtmp;
  wire [8:0] y_d1;
  wire [8:0] y_d2;
  wire [8:0] n440_o;
  wire [8:0] n441_o;
  wire [8:0] n442_o;
  reg [8:0] n443_q;
  reg [8:0] n444_q;
  assign r = rtmp;
  assign rtmp = n442_o; // (signal)
  assign y_d1 = n443_q; // (signal)
  assign y_d2 = n444_q; // (signal)
  assign n440_o = x + y_d2;
  assign n441_o = {8'b0, cin};  //  uext
  assign n442_o = n440_o + n441_o;
  always @(posedge clk)
    n443_q <= y;
  always @(posedge clk)
    n444_q <= y_d1;
endmodule

module intadder_8_f300_uid1000
  (input  wire clk,
   input  wire [7:0] x,
   input  wire [7:0] y,
   input  wire cin,
   output wire [7:0] r);
  wire cin_1;
  wire cin_1_d1;
  wire [8:0] x_1;
  wire [8:0] x_1_d1;
  wire [8:0] x_1_d2;
  wire [8:0] y_1;
  wire [8:0] y_1_d1;
  wire [8:0] y_1_d2;
  wire [8:0] s_1;
  wire [7:0] r_1;
  wire [8:0] n421_o;
  wire [8:0] n423_o;
  wire [8:0] n424_o;
  wire [8:0] n425_o;
  wire [8:0] n426_o;
  wire [7:0] n427_o;
  reg n428_q;
  reg [8:0] n429_q;
  reg [8:0] n430_q;
  reg [8:0] n431_q;
  reg [8:0] n432_q;
  assign r = r_1;
  assign cin_1 = cin; // (signal)
  assign cin_1_d1 = n428_q; // (signal)
  assign x_1 = n421_o; // (signal)
  assign x_1_d1 = n429_q; // (signal)
  assign x_1_d2 = n430_q; // (signal)
  assign y_1 = n423_o; // (signal)
  assign y_1_d1 = n431_q; // (signal)
  assign y_1_d2 = n432_q; // (signal)
  assign s_1 = n426_o; // (signal)
  assign r_1 = n427_o; // (signal)
  assign n421_o = {1'b0, x};
  assign n423_o = {1'b0, y};
  assign n424_o = x_1_d2 + y_1_d2;
  assign n425_o = {8'b0, cin_1_d1};  //  uext
  assign n426_o = n424_o + n425_o;
  assign n427_o = s_1[7:0];
  always @(posedge clk)
    n428_q <= cin_1;
  always @(posedge clk)
    n429_q <= x_1;
  always @(posedge clk)
    n430_q <= x_1_d1;
  always @(posedge clk)
    n431_q <= y_1;
  always @(posedge clk)
    n432_q <= y_1_d1;
endmodule

module rightshiftersticky5_by_max_7_f300_uid88
  (input  wire clk,
   input  wire [4:0] x,
   input  wire [2:0] s,
   output wire [6:0] r,
   output wire sticky);
  wire [2:0] ps;
  wire [2:0] ps_d1;
  wire [6:0] xpadded;
  wire [6:0] level3;
  wire stk2;
  wire stk2_d1;
  wire [6:0] level2;
  wire [6:0] level2_d1;
  wire stk1;
  wire [6:0] level1;
  wire [6:0] level1_d1;
  wire stk0;
  wire [6:0] level0;
  wire [6:0] n361_o;
  wire [3:0] n363_o;
  wire n365_o;
  wire n366_o;
  wire n367_o;
  wire n368_o;
  wire n370_o;
  wire n371_o;
  wire [6:0] n372_o;
  wire [2:0] n373_o;
  wire [6:0] n375_o;
  wire [1:0] n377_o;
  wire n379_o;
  wire n380_o;
  wire n381_o;
  wire n382_o;
  wire n383_o;
  wire n385_o;
  wire n386_o;
  wire [6:0] n387_o;
  wire [4:0] n388_o;
  wire [6:0] n390_o;
  wire n392_o;
  wire n394_o;
  wire n395_o;
  wire n396_o;
  wire n397_o;
  wire n398_o;
  wire n400_o;
  wire n401_o;
  wire [6:0] n402_o;
  wire [5:0] n403_o;
  wire [6:0] n405_o;
  reg [2:0] n406_q;
  reg n407_q;
  reg [6:0] n408_q;
  reg [6:0] n409_q;
  assign r = level0;
  assign sticky = stk0;
  assign ps = s; // (signal)
  assign ps_d1 = n406_q; // (signal)
  assign xpadded = n361_o; // (signal)
  assign level3 = xpadded; // (signal)
  assign stk2 = n368_o; // (signal)
  assign stk2_d1 = n407_q; // (signal)
  assign level2 = n372_o; // (signal)
  assign level2_d1 = n408_q; // (signal)
  assign stk1 = n383_o; // (signal)
  assign level1 = n387_o; // (signal)
  assign level1_d1 = n409_q; // (signal)
  assign stk0 = n398_o; // (signal)
  assign level0 = n402_o; // (signal)
  assign n361_o = {x, 2'b00};
  assign n363_o = level3[3:0];
  assign n365_o = n363_o != 4'b0000;
  assign n366_o = ps[2];
  assign n367_o = n365_o & n366_o;
  assign n368_o = n367_o ? 1'b1 : 1'b0;
  assign n370_o = ps[2];
  assign n371_o = ~n370_o;
  assign n372_o = n371_o ? level3 : n375_o;
  assign n373_o = level3[6:4];
  assign n375_o = {4'b0000, n373_o};
  assign n377_o = level2_d1[1:0];
  assign n379_o = n377_o != 2'b00;
  assign n380_o = ps_d1[1];
  assign n381_o = n379_o & n380_o;
  assign n382_o = n381_o | stk2_d1;
  assign n383_o = n382_o ? 1'b1 : 1'b0;
  assign n385_o = ps[1];
  assign n386_o = ~n385_o;
  assign n387_o = n386_o ? level2 : n390_o;
  assign n388_o = level2[6:2];
  assign n390_o = {2'b00, n388_o};
  assign n392_o = level1_d1[0];
  assign n394_o = n392_o != 1'b0;
  assign n395_o = ps_d1[0];
  assign n396_o = n394_o & n395_o;
  assign n397_o = n396_o | stk1;
  assign n398_o = n397_o ? 1'b1 : 1'b0;
  assign n400_o = ps[0];
  assign n401_o = ~n400_o;
  assign n402_o = n401_o ? level1 : n405_o;
  assign n403_o = level1[6:1];
  assign n405_o = {1'b0, n403_o};
  always @(posedge clk)
    n406_q <= ps;
  always @(posedge clk)
    n407_q <= stk2;
  always @(posedge clk)
    n408_q <= level2;
  always @(posedge clk)
    n409_q <= level1;
endmodule

module normalizer_z_6_6_6_f300_uid666
  (input  wire clk,
   input  wire [5:0] x,
   output wire [2:0] count,
   output wire [5:0] r);
  wire [5:0] level3;
  wire [5:0] level3_d1;
  wire count2;
  wire [5:0] level2;
  wire count1;
  wire [5:0] level1;
  wire [5:0] level1_d1;
  wire count0;
  wire count0_d1;
  wire [5:0] level0;
  wire [2:0] scount;
  wire [3:0] n313_o;
  wire n315_o;
  wire n316_o;
  wire n318_o;
  wire [5:0] n319_o;
  wire [1:0] n320_o;
  wire [5:0] n322_o;
  wire [1:0] n324_o;
  wire n326_o;
  wire n327_o;
  wire n329_o;
  wire [5:0] n330_o;
  wire [3:0] n331_o;
  wire [5:0] n333_o;
  wire n335_o;
  wire n337_o;
  wire n338_o;
  wire n340_o;
  wire [5:0] n341_o;
  wire [4:0] n342_o;
  wire [5:0] n344_o;
  wire [1:0] n345_o;
  wire [2:0] n346_o;
  reg [5:0] n347_q;
  reg [5:0] n348_q;
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
  assign n313_o = level3_d1[5:2];
  assign n315_o = n313_o == 4'b0000;
  assign n316_o = n315_o ? 1'b1 : 1'b0;
  assign n318_o = ~count2;
  assign n319_o = n318_o ? level3_d1 : n322_o;
  assign n320_o = level3_d1[1:0];
  assign n322_o = {n320_o, 4'b0000};
  assign n324_o = level2[5:4];
  assign n326_o = n324_o == 2'b00;
  assign n327_o = n326_o ? 1'b1 : 1'b0;
  assign n329_o = ~count1;
  assign n330_o = n329_o ? level2 : n333_o;
  assign n331_o = level2[3:0];
  assign n333_o = {n331_o, 2'b00};
  assign n335_o = level1[5];
  assign n337_o = n335_o == 1'b0;
  assign n338_o = n337_o ? 1'b1 : 1'b0;
  assign n340_o = ~count0_d1;
  assign n341_o = n340_o ? level1_d1 : n344_o;
  assign n342_o = level1_d1[4:0];
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

module intdualsub_7_f300_uid444
  (input  wire clk,
   input  wire [6:0] x,
   input  wire [6:0] y,
   output wire [6:0] xmy,
   output wire [6:0] ymx);
  wire [6:0] temprxmy;
  wire [6:0] temprymx;
  wire [6:0] n293_o;
  wire [6:0] n294_o;
  wire [6:0] n297_o;
  wire [6:0] n298_o;
  wire [6:0] n299_o;
  wire [6:0] n302_o;
  assign xmy = temprxmy;
  assign ymx = temprymx;
  assign temprxmy = n297_o; // (signal)
  assign temprymx = n302_o; // (signal)
  assign n293_o = ~y;
  assign n294_o = x + n293_o;
  assign n297_o = n294_o + 7'b0000001;
  assign n298_o = ~x;
  assign n299_o = y + n298_o;
  assign n302_o = n299_o + 7'b0000001;
endmodule

module fsub #(parameter ID=1)
  (input  wire clk,
   input  wire [9:0] X,
   input  wire [9:0] Y,
   output wire [9:0] R);
  wire [9:0] inx;
  wire [9:0] iny;
  wire exceptionxsuperiory;
  wire exceptionxequaly;
  wire [3:0] signedexponentx;
  wire [3:0] signedexponenty;
  wire [3:0] exponentdifferencexy;
  wire [2:0] exponentdifferenceyx;
  wire swap;
  wire [9:0] my;
  wire [9:0] newx;
  wire [9:0] newx_d1;
  wire [9:0] newy;
  wire [2:0] exponentdifference;
  wire [2:0] shiftval;
  wire effsub;
  wire effsub_d1;
  wire selectclosepath;
  wire selectclosepath_d1;
  wire selectclosepath_d2;
  wire [3:0] sdexnxy;
  wire pipesigny;
  wire [6:0] fracxclose1;
  wire [6:0] fracyclose1;
  wire [6:0] fracrclosexmy;
  wire [6:0] fracrcloseymx;
  wire fracsignclose;
  wire [5:0] fracrclose1;
  wire ressign;
  wire [2:0] nzerosnew;
  wire [5:0] shiftedfrac;
  wire roundclose0;
  wire resultcloseiszero0;
  wire [4:0] exponentresultclose;
  wire [4:0] exponentresultclose_d1;
  wire [8:0] resultbeforeroundclose;
  wire roundclose;
  wire resultcloseiszero;
  wire [4:0] fracnewy;
  wire [6:0] shiftedfracy;
  wire sticky;
  wire sticky_d1;
  wire [7:0] fracyfar;
  wire [7:0] effsubvector;
  wire [7:0] fracyfarxorop;
  wire [7:0] fracxfar;
  wire cinaddfar;
  wire [7:0] fracresultfar0;
  wire [7:0] fracresultfarnormstage;
  wire [1:0] fracleadingbits;
  wire [3:0] fracresultfar1;
  wire fracresultroundbit;
  wire fracresultstickybit;
  wire roundfar1;
  wire [1:0] expoperationsel;
  wire [4:0] exponentupdate;
  wire [4:0] exponentresultfar0;
  wire [4:0] exponentresultfar0_d1;
  wire [4:0] exponentresultfar0_d2;
  wire [4:0] exponentresultfar1;
  wire [8:0] resultbeforeroundfar;
  wire roundfar;
  wire [8:0] resultbeforeround;
  wire round;
  wire zerofromclose;
  wire zerofromclose_d1;
  wire [8:0] resultrounded;
  wire synceffsub;
  wire synceffsub_d1;
  wire synceffsub_d2;
  wire [9:0] syncx;
  wire [9:0] syncx_d1;
  wire [9:0] syncx_d2;
  wire syncsigny;
  wire syncsigny_d1;
  wire syncsigny_d2;
  wire syncressign;
  wire syncressign_d1;
  wire syncressign_d2;
  wire [1:0] underflowoverflow;
  wire [9:0] resultnoexn;
  wire [3:0] syncexnxy;
  wire [3:0] syncexnxy_d1;
  wire [3:0] syncexnxy_d2;
  wire [1:0] exnr;
  wire sgnr;
  wire [6:0] expsigr;
  wire [1:0] n25_o;
  wire [1:0] n26_o;
  wire n27_o;
  wire n28_o;
  wire [1:0] n31_o;
  wire [1:0] n32_o;
  wire n33_o;
  wire n34_o;
  wire [2:0] n36_o;
  wire [3:0] n38_o;
  wire [2:0] n39_o;
  wire [3:0] n41_o;
  wire [3:0] n42_o;
  wire [2:0] n43_o;
  wire [2:0] n44_o;
  wire [2:0] n45_o;
  wire n46_o;
  wire n47_o;
  wire n48_o;
  wire n49_o;
  wire [1:0] n50_o;
  wire n51_o;
  wire n52_o;
  wire [2:0] n53_o;
  wire [6:0] n54_o;
  wire [9:0] n55_o;
  wire [9:0] n56_o;
  wire [9:0] n57_o;
  wire [2:0] n58_o;
  wire [2:0] n59_o;
  wire n61_o;
  wire n62_o;
  wire n63_o;
  wire [1:0] n64_o;
  wire n66_o;
  wire n67_o;
  wire [1:0] n69_o;
  wire [1:0] n70_o;
  wire [3:0] n71_o;
  wire n72_o;
  wire [3:0] n73_o;
  wire [5:0] n75_o;
  wire [6:0] n77_o;
  wire n78_o;
  wire [3:0] n79_o;
  wire [5:0] n81_o;
  wire [6:0] n83_o;
  wire n85_o;
  wire [3:0] n86_o;
  wire [6:0] n88_o;
  reg [6:0] n89_o;
  wire [6:0] fpsub_3_4_f300_uid2_dualsubclose_n90;
  wire [6:0] fpsub_3_4_f300_uid2_dualsubclose_n91;
  wire [6:0] fpsub_3_4_f300_uid2_dualsubclose_xmy;
  wire [6:0] fpsub_3_4_f300_uid2_dualsubclose_ymx;
  wire n96_o;
  wire [5:0] n97_o;
  wire n98_o;
  wire [5:0] n99_o;
  wire [5:0] n100_o;
  wire n103_o;
  wire n104_o;
  wire n105_o;
  wire n106_o;
  wire n107_o;
  wire n108_o;
  wire [2:0] norm_n109;
  wire [5:0] norm_n110;
  wire [2:0] norm_count;
  wire [5:0] norm_r;
  wire n115_o;
  wire n116_o;
  wire n117_o;
  wire n120_o;
  wire n121_o;
  wire [2:0] n123_o;
  wire [4:0] n125_o;
  wire [4:0] n127_o;
  wire [4:0] n128_o;
  wire [3:0] n129_o;
  wire [8:0] n130_o;
  wire [3:0] n131_o;
  wire [4:0] n133_o;
  wire [6:0] rightshiftercomponent_n134;
  wire rightshiftercomponent_n135;
  wire [6:0] rightshiftercomponent_r;
  wire rightshiftercomponent_sticky;
  wire [7:0] n141_o;
  wire [3:0] n142_o;
  wire [3:0] n143_o;
  wire [7:0] n144_o;
  wire [7:0] n145_o;
  wire [3:0] n146_o;
  wire [5:0] n148_o;
  wire [7:0] n150_o;
  wire n151_o;
  wire n152_o;
  wire [7:0] fpsub_3_4_f300_uid2_fracaddfar_n153;
  wire [7:0] fpsub_3_4_f300_uid2_fracaddfar_r;
  wire [1:0] n156_o;
  wire [3:0] n157_o;
  wire n159_o;
  wire [3:0] n160_o;
  wire [3:0] n161_o;
  wire n163_o;
  wire [3:0] n164_o;
  wire [3:0] n165_o;
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
  wire [3:0] n203_o;
  wire n204_o;
  wire [4:0] n205_o;
  wire [2:0] n206_o;
  wire [4:0] n208_o;
  wire [4:0] n209_o;
  wire [8:0] n210_o;
  wire n212_o;
  reg [8:0] n213_o;
  wire n215_o;
  reg n216_o;
  wire n217_o;
  localparam [8:0] n218_o = 9'b000000000;
  wire [8:0] fpsub_3_4_f300_uid2_finalroundadd_n219;
  wire [8:0] fpsub_3_4_f300_uid2_finalroundadd_r;
  wire [1:0] n222_o;
  wire n223_o;
  wire [1:0] n225_o;
  wire n227_o;
  wire n230_o;
  wire n232_o;
  wire n233_o;
  wire n234_o;
  wire [1:0] n236_o;
  wire [1:0] n237_o;
  reg [1:0] n238_o;
  wire [6:0] n239_o;
  wire [7:0] n240_o;
  wire [1:0] n241_o;
  wire n243_o;
  wire [1:0] n245_o;
  wire n247_o;
  wire n250_o;
  wire [1:0] n251_o;
  wire [2:0] n252_o;
  reg [1:0] n253_o;
  wire n254_o;
  wire n256_o;
  wire n257_o;
  wire n258_o;
  wire n260_o;
  wire n261_o;
  wire [1:0] n262_o;
  reg n263_o;
  wire [6:0] n264_o;
  wire n266_o;
  wire [6:0] n267_o;
  reg [6:0] n268_o;
  wire [2:0] n269_o;
  wire [9:0] n270_o;
  reg [9:0] n271_q;
  reg n272_q;
  reg n273_q;
  reg n274_q;
  reg [4:0] n275_q;
  reg n276_q;
  reg [4:0] n277_q;
  reg [4:0] n278_q;
  reg n279_q;
  reg n280_q;
  reg n281_q;
  reg [9:0] n282_q;
  reg [9:0] n283_q;
  reg n284_q;
  reg n285_q;
  reg n286_q;
  reg n287_q;
  wire [9:0] n288_o;
  reg [3:0] n289_q;
  reg [3:0] n290_q;
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
  assign my = n55_o; // (signal)
  assign newx = n56_o; // (signal)
  assign newx_d1 = n271_q; // (signal)
  assign newy = n57_o; // (signal)
  assign exponentdifference = n58_o; // (signal)
  assign shiftval = exponentdifference; // (signal)
  assign effsub = n63_o; // (signal)
  assign effsub_d1 = n272_q; // (signal)
  assign selectclosepath = n67_o; // (signal)
  assign selectclosepath_d1 = n273_q; // (signal)
  assign selectclosepath_d2 = n274_q; // (signal)
  assign sdexnxy = n71_o; // (signal)
  assign pipesigny = n72_o; // (signal)
  assign fracxclose1 = n77_o; // (signal)
  assign fracyclose1 = n89_o; // (signal)
  assign fracrclosexmy = fpsub_3_4_f300_uid2_dualsubclose_n90; // (signal)
  assign fracrcloseymx = fpsub_3_4_f300_uid2_dualsubclose_n91; // (signal)
  assign fracsignclose = n96_o; // (signal)
  assign fracrclose1 = n99_o; // (signal)
  assign ressign = n105_o; // (signal)
  assign nzerosnew = norm_n109; // (signal)
  assign shiftedfrac = norm_n110; // (signal)
  assign roundclose0 = n117_o; // (signal)
  assign resultcloseiszero0 = n121_o; // (signal)
  assign exponentresultclose = n128_o; // (signal)
  assign exponentresultclose_d1 = n275_q; // (signal)
  assign resultbeforeroundclose = n130_o; // (signal)
  assign roundclose = roundclose0; // (signal)
  assign resultcloseiszero = resultcloseiszero0; // (signal)
  assign fracnewy = n133_o; // (signal)
  assign shiftedfracy = rightshiftercomponent_n134; // (signal)
  assign sticky = rightshiftercomponent_n135; // (signal)
  assign sticky_d1 = n276_q; // (signal)
  assign fracyfar = n141_o; // (signal)
  assign effsubvector = n144_o; // (signal)
  assign fracyfarxorop = n145_o; // (signal)
  assign fracxfar = n150_o; // (signal)
  assign cinaddfar = n152_o; // (signal)
  assign fracresultfar0 = fpsub_3_4_f300_uid2_fracaddfar_n153; // (signal)
  assign fracresultfarnormstage = fracresultfar0; // (signal)
  assign fracleadingbits = n156_o; // (signal)
  assign fracresultfar1 = n160_o; // (signal)
  assign fracresultroundbit = n169_o; // (signal)
  assign fracresultstickybit = n177_o; // (signal)
  assign roundfar1 = n189_o; // (signal)
  assign expoperationsel = n193_o; // (signal)
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
  assign resultrounded = fpsub_3_4_f300_uid2_finalroundadd_n219; // (signal)
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
  assign n36_o = inx[6:4];
  assign n38_o = {1'b0, n36_o};
  assign n39_o = iny[6:4];
  assign n41_o = {1'b0, n39_o};
  assign n42_o = signedexponentx - signedexponenty;
  assign n43_o = signedexponenty[2:0];
  assign n44_o = signedexponentx[2:0];
  assign n45_o = n43_o - n44_o;
  assign n46_o = exponentdifferencexy[3];
  assign n47_o = exceptionxequaly & n46_o;
  assign n48_o = ~exceptionxsuperiory;
  assign n49_o = n47_o | n48_o;
  assign n50_o = iny[9:8];
  assign n51_o = iny[7];
  assign n52_o = ~n51_o;
  assign n53_o = {n50_o, n52_o};
  assign n54_o = iny[6:0];
  assign n55_o = {n53_o, n54_o};
  assign n56_o = swap ? my : inx;
  assign n57_o = swap ? inx : my;
  assign n58_o = swap ? exponentdifferenceyx : n59_o;
  assign n59_o = exponentdifferencexy[2:0];
  assign n61_o = newx[7];
  assign n62_o = newy[7];
  assign n63_o = n61_o ^ n62_o;
  assign n64_o = exponentdifference[2:1];
  assign n66_o = n64_o == 2'b00;
  assign n67_o = n66_o ? effsub : 1'b0;
  assign n69_o = newx[9:8];
  assign n70_o = newy[9:8];
  assign n71_o = {n69_o, n70_o};
  assign n72_o = newy[7];
  assign n73_o = newx[3:0];
  assign n75_o = {2'b01, n73_o};
  assign n77_o = {n75_o, 1'b0};
  assign n78_o = exponentdifference[0];
  assign n79_o = newy[3:0];
  assign n81_o = {2'b01, n79_o};
  assign n83_o = {n81_o, 1'b0};
  assign n85_o = n78_o == 1'b0;
  assign n86_o = newy[3:0];
  assign n88_o = {3'b001, n86_o};
  always @*
    case (n85_o)
      1'b1: n89_o = n83_o;
      default: n89_o = n88_o;
    endcase
  assign fpsub_3_4_f300_uid2_dualsubclose_n90 = fpsub_3_4_f300_uid2_dualsubclose_xmy; // (signal)
  assign fpsub_3_4_f300_uid2_dualsubclose_n91 = fpsub_3_4_f300_uid2_dualsubclose_ymx; // (signal)
  intdualsub_7_f300_uid444 fpsub_3_4_f300_uid2_dualsubclose (
    .clk(clk),
    .x(fracxclose1),
    .y(fracyclose1),
    .xmy(fpsub_3_4_f300_uid2_dualsubclose_xmy),
    .ymx(fpsub_3_4_f300_uid2_dualsubclose_ymx));
  assign n96_o = fracrclosexmy[6];
  assign n97_o = fracrclosexmy[5:0];
  assign n98_o = ~fracsignclose;
  assign n99_o = n98_o ? n97_o : n100_o;
  assign n100_o = fracrcloseymx[5:0];
  assign n103_o = fracrclose1 == 6'b000000;
  assign n104_o = selectclosepath & n103_o;
  assign n105_o = n104_o ? 1'b0 : n108_o;
  assign n106_o = newx[7];
  assign n107_o = selectclosepath & fracsignclose;
  assign n108_o = n106_o ^ n107_o;
  assign norm_n109 = norm_count; // (signal)
  assign norm_n110 = norm_r; // (signal)
  normalizer_z_6_6_6_f300_uid666 norm (
    .clk(clk),
    .x(fracrclose1),
    .count(norm_count),
    .r(norm_r));
  assign n115_o = shiftedfrac[0];
  assign n116_o = shiftedfrac[1];
  assign n117_o = n115_o & n116_o;
  assign n120_o = nzerosnew == 3'b111;
  assign n121_o = n120_o ? 1'b1 : 1'b0;
  assign n123_o = newx_d1[6:4];
  assign n125_o = {2'b00, n123_o};
  assign n127_o = {2'b00, nzerosnew};
  assign n128_o = n125_o - n127_o;
  assign n129_o = shiftedfrac[4:1];
  assign n130_o = {exponentresultclose_d1, n129_o};
  assign n131_o = newy[3:0];
  assign n133_o = {1'b1, n131_o};
  assign rightshiftercomponent_n134 = rightshiftercomponent_r; // (signal)
  assign rightshiftercomponent_n135 = rightshiftercomponent_sticky; // (signal)
  rightshiftersticky5_by_max_7_f300_uid88 rightshiftercomponent (
    .clk(clk),
    .x(fracnewy),
    .s(shiftval),
    .r(rightshiftercomponent_r),
    .sticky(rightshiftercomponent_sticky));
  assign n141_o = {1'b0, shiftedfracy};
  assign n142_o = {effsub, effsub, effsub, effsub};
  assign n143_o = {effsub, effsub, effsub, effsub};
  assign n144_o = {n142_o, n143_o};
  assign n145_o = fracyfar ^ effsubvector;
  assign n146_o = newx[3:0];
  assign n148_o = {2'b01, n146_o};
  assign n150_o = {n148_o, 2'b00};
  assign n151_o = ~sticky;
  assign n152_o = effsub_d1 & n151_o;
  assign fpsub_3_4_f300_uid2_fracaddfar_n153 = fpsub_3_4_f300_uid2_fracaddfar_r; // (signal)
  intadder_8_f300_uid1000 fpsub_3_4_f300_uid2_fracaddfar (
    .clk(clk),
    .x(fracxfar),
    .y(fracyfarxorop),
    .cin(cinaddfar),
    .r(fpsub_3_4_f300_uid2_fracaddfar_r));
  assign n156_o = fracresultfarnormstage[7:6];
  assign n157_o = fracresultfarnormstage[4:1];
  assign n159_o = fracleadingbits == 2'b00;
  assign n160_o = n159_o ? n157_o : n164_o;
  assign n161_o = fracresultfarnormstage[5:2];
  assign n163_o = fracleadingbits == 2'b01;
  assign n164_o = n163_o ? n161_o : n165_o;
  assign n165_o = fracresultfarnormstage[6:3];
  assign n166_o = fracresultfarnormstage[0];
  assign n168_o = fracleadingbits == 2'b00;
  assign n169_o = n168_o ? n166_o : n173_o;
  assign n170_o = fracresultfarnormstage[1];
  assign n172_o = fracleadingbits == 2'b01;
  assign n173_o = n172_o ? n170_o : n174_o;
  assign n174_o = fracresultfarnormstage[2];
  assign n176_o = fracleadingbits == 2'b00;
  assign n177_o = n176_o ? sticky_d1 : n182_o;
  assign n178_o = fracresultfarnormstage[0];
  assign n179_o = n178_o | sticky_d1;
  assign n181_o = fracleadingbits == 2'b01;
  assign n182_o = n181_o ? n179_o : n186_o;
  assign n183_o = fracresultfarnormstage[1];
  assign n184_o = fracresultfarnormstage[0];
  assign n185_o = n183_o | n184_o;
  assign n186_o = n185_o | sticky_d1;
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
  assign n203_o = {n202_o, n201_o, n200_o, n199_o};
  assign n204_o = expoperationsel[0];
  assign n205_o = {n203_o, n204_o};
  assign n206_o = newx[6:4];
  assign n208_o = {2'b00, n206_o};
  assign n209_o = exponentresultfar0_d2 + exponentupdate;
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
  assign fpsub_3_4_f300_uid2_finalroundadd_n219 = fpsub_3_4_f300_uid2_finalroundadd_r; // (signal)
  intadder_9_f300_uid1333 fpsub_3_4_f300_uid2_finalroundadd (
    .clk(clk),
    .x(resultbeforeround),
    .y(n218_o),
    .cin(round),
    .r(fpsub_3_4_f300_uid2_finalroundadd_r));
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
    n273_q <= selectclosepath;
  always @(posedge clk)
    n274_q <= selectclosepath_d1;
  always @(posedge clk)
    n275_q <= exponentresultclose;
  always @(posedge clk)
    n276_q <= sticky;
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

