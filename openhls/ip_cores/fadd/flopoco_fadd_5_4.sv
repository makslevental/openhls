module intadder_11_f300_uid1333
  (input wire clk,
   input wire [10:0] x,
   input wire [10:0] y,
   input wire cin,
   output wire [10:0] r);
  wire [10:0] rtmp;
  wire [10:0] y_d1;
  wire [10:0] y_d2;
  wire [10:0] n443_o;
  wire [10:0] n444_o;
  wire [10:0] n445_o;
  reg [10:0] n446_q;
  reg [10:0] n447_q;
  assign r = rtmp;
  assign rtmp = n445_o; // (signal)
  assign y_d1 = n446_q; // (signal)
  assign y_d2 = n447_q; // (signal)
  assign n443_o = x + y_d2;
  assign n444_o = {10'b0, cin};  //  uext
  assign n445_o = n443_o + n444_o;
  always @(posedge clk)
    n446_q <= y;
  always @(posedge clk)
    n447_q <= y_d1;
endmodule

module intadder_8_f300_uid10
  (input wire clk,
   input wire [7:0] x,
   input wire [7:0] y,
   input wire cin,
   output wire [7:0] r);
  wire [7:0] rtmp;
  wire [7:0] x_d1;
  wire [7:0] x_d2;
  wire [7:0] y_d1;
  wire [7:0] y_d2;
  wire [7:0] n429_o;
  wire [7:0] n430_o;
  wire [7:0] n431_o;
  reg [7:0] n432_q;
  reg [7:0] n433_q;
  reg [7:0] n434_q;
  reg [7:0] n435_q;
  assign r = rtmp;
  assign rtmp = n431_o; // (signal)
  assign x_d1 = n432_q; // (signal)
  assign x_d2 = n433_q; // (signal)
  assign y_d1 = n434_q; // (signal)
  assign y_d2 = n435_q; // (signal)
  assign n429_o = x_d2 + y_d2;
  assign n430_o = {7'b0, cin};  //  uext
  assign n431_o = n429_o + n430_o;
  always @(posedge clk)
    n432_q <= x;
  always @(posedge clk)
    n433_q <= x_d1;
  always @(posedge clk)
    n434_q <= y;
  always @(posedge clk)
    n435_q <= y_d1;
endmodule

module rightshiftersticky5_by_max_7_f300_uid8
  (input wire clk,
   input wire [4:0] x,
   input wire [2:0] s,
   output wire [6:0] r,
   output wire sticky);
  wire [2:0] ps;
  wire [2:0] ps_d1;
  wire [2:0] ps_d2;
  wire [6:0] xpadded;
  wire [6:0] level3;
  wire [6:0] level3_d1;
  wire stk2;
  wire [6:0] level2;
  wire [6:0] level2_d1;
  wire stk1;
  wire stk1_d1;
  wire [6:0] level1;
  wire [6:0] level1_d1;
  wire [6:0] level1_d2;
  wire stk0;
  wire [6:0] level0;
  wire [6:0] n368_o;
  wire [3:0] n370_o;
  wire n372_o;
  wire n373_o;
  wire n374_o;
  wire n375_o;
  wire n377_o;
  wire n378_o;
  wire [6:0] n379_o;
  wire [2:0] n380_o;
  wire [6:0] n382_o;
  wire [1:0] n384_o;
  wire n386_o;
  wire n387_o;
  wire n388_o;
  wire n389_o;
  wire n390_o;
  wire n392_o;
  wire n393_o;
  wire [6:0] n394_o;
  wire [4:0] n395_o;
  wire [6:0] n397_o;
  wire n399_o;
  wire n401_o;
  wire n402_o;
  wire n403_o;
  wire n404_o;
  wire n405_o;
  wire n407_o;
  wire n408_o;
  wire [6:0] n409_o;
  wire [5:0] n410_o;
  wire [6:0] n412_o;
  reg [2:0] n413_q;
  reg [2:0] n414_q;
  reg [6:0] n415_q;
  reg [6:0] n416_q;
  reg n417_q;
  reg [6:0] n418_q;
  reg [6:0] n419_q;
  assign r = level0;
  assign sticky = stk0;
  assign ps = s; // (signal)
  assign ps_d1 = n413_q; // (signal)
  assign ps_d2 = n414_q; // (signal)
  assign xpadded = n368_o; // (signal)
  assign level3 = xpadded; // (signal)
  assign level3_d1 = n415_q; // (signal)
  assign stk2 = n375_o; // (signal)
  assign level2 = n379_o; // (signal)
  assign level2_d1 = n416_q; // (signal)
  assign stk1 = n390_o; // (signal)
  assign stk1_d1 = n417_q; // (signal)
  assign level1 = n394_o; // (signal)
  assign level1_d1 = n418_q; // (signal)
  assign level1_d2 = n419_q; // (signal)
  assign stk0 = n405_o; // (signal)
  assign level0 = n409_o; // (signal)
  assign n368_o = {x, 2'b00};
  assign n370_o = level3_d1[3:0];
  assign n372_o = n370_o != 4'b0000;
  assign n373_o = ps_d1[2];
  assign n374_o = n372_o & n373_o;
  assign n375_o = n374_o ? 1'b1 : 1'b0;
  assign n377_o = ps[2];
  assign n378_o = ~n377_o;
  assign n379_o = n378_o ? level3 : n382_o;
  assign n380_o = level3[6:4];
  assign n382_o = {4'b0000, n380_o};
  assign n384_o = level2_d1[1:0];
  assign n386_o = n384_o != 2'b00;
  assign n387_o = ps_d1[1];
  assign n388_o = n386_o & n387_o;
  assign n389_o = n388_o | stk2;
  assign n390_o = n389_o ? 1'b1 : 1'b0;
  assign n392_o = ps[1];
  assign n393_o = ~n392_o;
  assign n394_o = n393_o ? level2 : n397_o;
  assign n395_o = level2[6:2];
  assign n397_o = {2'b00, n395_o};
  assign n399_o = level1_d2[0];
  assign n401_o = n399_o != 1'b0;
  assign n402_o = ps_d2[0];
  assign n403_o = n401_o & n402_o;
  assign n404_o = n403_o | stk1_d1;
  assign n405_o = n404_o ? 1'b1 : 1'b0;
  assign n407_o = ps[0];
  assign n408_o = ~n407_o;
  assign n409_o = n408_o ? level1 : n412_o;
  assign n410_o = level1[6:1];
  assign n412_o = {1'b0, n410_o};
  always @(posedge clk)
    n413_q <= ps;
  always @(posedge clk)
    n414_q <= ps_d1;
  always @(posedge clk)
    n415_q <= level3;
  always @(posedge clk)
    n416_q <= level2;
  always @(posedge clk)
    n417_q <= stk1;
  always @(posedge clk)
    n418_q <= level1;
  always @(posedge clk)
    n419_q <= level1_d1;
endmodule

module normalizer_z_6_6_6_f300_uid6
  (input wire clk,
   input wire [5:0] x,
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
  wire [3:0] n317_o;
  wire n319_o;
  wire n320_o;
  wire n322_o;
  wire [5:0] n323_o;
  wire [1:0] n324_o;
  wire [5:0] n326_o;
  wire [1:0] n328_o;
  wire n330_o;
  wire n331_o;
  wire n333_o;
  wire [5:0] n334_o;
  wire [3:0] n335_o;
  wire [5:0] n337_o;
  wire n339_o;
  wire n341_o;
  wire n342_o;
  wire n344_o;
  wire [5:0] n345_o;
  wire [4:0] n346_o;
  wire [5:0] n348_o;
  wire [1:0] n349_o;
  wire [2:0] n350_o;
  reg [5:0] n351_q;
  reg [5:0] n352_q;
  reg n353_q;
  assign count = scount;
  assign r = level0;
  assign level3 = x; // (signal)
  assign level3_d1 = n351_q; // (signal)
  assign count2 = n320_o; // (signal)
  assign level2 = n323_o; // (signal)
  assign count1 = n331_o; // (signal)
  assign level1 = n334_o; // (signal)
  assign level1_d1 = n352_q; // (signal)
  assign count0 = n342_o; // (signal)
  assign count0_d1 = n353_q; // (signal)
  assign level0 = n345_o; // (signal)
  assign scount = n350_o; // (signal)
  assign n317_o = level3_d1[5:2];
  assign n319_o = n317_o == 4'b0000;
  assign n320_o = n319_o ? 1'b1 : 1'b0;
  assign n322_o = ~count2;
  assign n323_o = n322_o ? level3_d1 : n326_o;
  assign n324_o = level3_d1[1:0];
  assign n326_o = {n324_o, 4'b0000};
  assign n328_o = level2[5:4];
  assign n330_o = n328_o == 2'b00;
  assign n331_o = n330_o ? 1'b1 : 1'b0;
  assign n333_o = ~count1;
  assign n334_o = n333_o ? level2 : n337_o;
  assign n335_o = level2[3:0];
  assign n337_o = {n335_o, 2'b00};
  assign n339_o = level1[5];
  assign n341_o = n339_o == 1'b0;
  assign n342_o = n341_o ? 1'b1 : 1'b0;
  assign n344_o = ~count0_d1;
  assign n345_o = n344_o ? level1_d1 : n348_o;
  assign n346_o = level1_d1[4:0];
  assign n348_o = {n346_o, 1'b0};
  assign n349_o = {count2, count1};
  assign n350_o = {n349_o, count0};
  always @(posedge clk)
    n351_q <= level3;
  always @(posedge clk)
    n352_q <= level1;
  always @(posedge clk)
    n353_q <= count0;
endmodule

module intdualsub_7_f300_uid4
  (input wire clk,
   input wire [6:0] x,
   input wire [6:0] y,
   output wire [6:0] xmy,
   output wire [6:0] ymx);
  wire [6:0] temprxmy;
  wire [6:0] temprymx;
  wire [6:0] n297_o;
  wire [6:0] n298_o;
  wire [6:0] n301_o;
  wire [6:0] n302_o;
  wire [6:0] n303_o;
  wire [6:0] n306_o;
  assign xmy = temprxmy;
  assign ymx = temprymx;
  assign temprxmy = n301_o; // (signal)
  assign temprymx = n306_o; // (signal)
  assign n297_o = ~y;
  assign n298_o = x + n297_o;
  assign n301_o = n298_o + 7'b0000001;
  assign n302_o = ~x;
  assign n303_o = y + n302_o;
  assign n306_o = n303_o + 7'b0000001;
endmodule

module fadd #(parameter ID=1)
  (input wire clk,
   input wire [11:0] X,
   input wire [11:0] Y,
   output wire [11:0] R);
  wire [11:0] inx;
  wire [11:0] iny;
  wire exceptionxsuperiory;
  wire exceptionxequaly;
  wire [5:0] signedexponentx;
  wire [5:0] signedexponenty;
  wire [5:0] exponentdifferencexy;
  wire [4:0] exponentdifferenceyx;
  wire swap;
  wire [11:0] newx;
  wire [11:0] newx_d1;
  wire [11:0] newy;
  wire [4:0] exponentdifference;
  wire shiftedout;
  wire [2:0] shiftval;
  wire effsub;
  wire effsub_d1;
  wire effsub_d2;
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
  wire [6:0] exponentresultclose;
  wire [6:0] exponentresultclose_d1;
  wire [10:0] resultbeforeroundclose;
  wire roundclose;
  wire resultcloseiszero;
  wire [4:0] fracnewy;
  wire [6:0] shiftedfracy;
  wire sticky;
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
  wire [6:0] exponentupdate;
  wire [6:0] exponentresultfar0;
  wire [6:0] exponentresultfar0_d1;
  wire [6:0] exponentresultfar0_d2;
  wire [6:0] exponentresultfar1;
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
  wire [4:0] n36_o;
  wire [5:0] n38_o;
  wire [4:0] n39_o;
  wire [5:0] n41_o;
  wire [5:0] n42_o;
  wire [4:0] n43_o;
  wire [4:0] n44_o;
  wire [4:0] n45_o;
  wire n46_o;
  wire n47_o;
  wire n48_o;
  wire n49_o;
  wire [11:0] n50_o;
  wire [11:0] n51_o;
  wire [4:0] n52_o;
  wire [4:0] n53_o;
  wire n54_o;
  wire n55_o;
  wire n56_o;
  wire [2:0] n57_o;
  wire n58_o;
  wire [2:0] n59_o;
  wire n61_o;
  wire n62_o;
  wire n63_o;
  wire [3:0] n64_o;
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
  wire [6:0] fpadd_5_4_f300_uid2_dualsubclose_n90;
  wire [6:0] fpadd_5_4_f300_uid2_dualsubclose_n91;
  wire [6:0] fpadd_5_4_f300_uid2_dualsubclose_xmy;
  wire [6:0] fpadd_5_4_f300_uid2_dualsubclose_ymx;
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
  wire [4:0] n123_o;
  wire [6:0] n125_o;
  wire [6:0] n127_o;
  wire [6:0] n128_o;
  wire [3:0] n129_o;
  wire [10:0] n130_o;
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
  wire [7:0] fpadd_5_4_f300_uid2_fracaddfar_n153;
  wire [7:0] fpadd_5_4_f300_uid2_fracaddfar_r;
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
  wire n203_o;
  wire n204_o;
  wire [3:0] n205_o;
  wire [1:0] n206_o;
  wire [5:0] n207_o;
  wire n208_o;
  wire [6:0] n209_o;
  wire [4:0] n210_o;
  wire [6:0] n212_o;
  wire [6:0] n213_o;
  wire [10:0] n214_o;
  wire n216_o;
  reg [10:0] n217_o;
  wire n219_o;
  reg n220_o;
  wire n221_o;
  localparam [10:0] n222_o = 11'b00000000000;
  wire [10:0] fpadd_5_4_f300_uid2_finalroundadd_n223;
  wire [10:0] fpadd_5_4_f300_uid2_finalroundadd_r;
  wire [1:0] n226_o;
  wire n227_o;
  wire [1:0] n229_o;
  wire n231_o;
  wire n234_o;
  wire n236_o;
  wire n237_o;
  wire n238_o;
  wire [1:0] n240_o;
  wire [1:0] n241_o;
  reg [1:0] n242_o;
  wire [8:0] n243_o;
  wire [9:0] n244_o;
  wire [1:0] n245_o;
  wire n247_o;
  wire [1:0] n249_o;
  wire n251_o;
  wire n254_o;
  wire [1:0] n255_o;
  wire [2:0] n256_o;
  reg [1:0] n257_o;
  wire n258_o;
  wire n260_o;
  wire n261_o;
  wire n262_o;
  wire n264_o;
  wire n265_o;
  wire [1:0] n266_o;
  reg n267_o;
  wire [8:0] n268_o;
  wire n270_o;
  wire [8:0] n271_o;
  reg [8:0] n272_o;
  wire [2:0] n273_o;
  wire [11:0] n274_o;
  reg [11:0] n275_q;
  reg n276_q;
  reg n277_q;
  reg n278_q;
  reg n279_q;
  reg [6:0] n280_q;
  reg [6:0] n281_q;
  reg [6:0] n282_q;
  reg n283_q;
  reg n284_q;
  reg n285_q;
  reg [11:0] n286_q;
  reg [11:0] n287_q;
  reg n288_q;
  reg n289_q;
  reg n290_q;
  reg n291_q;
  wire [11:0] n292_o;
  reg [3:0] n293_q;
  reg [3:0] n294_q;
  assign R = n274_o;
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
  assign newx_d1 = n275_q; // (signal)
  assign newy = n51_o; // (signal)
  assign exponentdifference = n52_o; // (signal)
  assign shiftedout = n56_o; // (signal)
  assign shiftval = n59_o; // (signal)
  assign effsub = n63_o; // (signal)
  assign effsub_d1 = n276_q; // (signal)
  assign effsub_d2 = n277_q; // (signal)
  assign selectclosepath = n67_o; // (signal)
  assign selectclosepath_d1 = n278_q; // (signal)
  assign selectclosepath_d2 = n279_q; // (signal)
  assign sdexnxy = n71_o; // (signal)
  assign pipesigny = n72_o; // (signal)
  assign fracxclose1 = n77_o; // (signal)
  assign fracyclose1 = n89_o; // (signal)
  assign fracrclosexmy = fpadd_5_4_f300_uid2_dualsubclose_n90; // (signal)
  assign fracrcloseymx = fpadd_5_4_f300_uid2_dualsubclose_n91; // (signal)
  assign fracsignclose = n96_o; // (signal)
  assign fracrclose1 = n99_o; // (signal)
  assign ressign = n105_o; // (signal)
  assign nzerosnew = norm_n109; // (signal)
  assign shiftedfrac = norm_n110; // (signal)
  assign roundclose0 = n117_o; // (signal)
  assign resultcloseiszero0 = n121_o; // (signal)
  assign exponentresultclose = n128_o; // (signal)
  assign exponentresultclose_d1 = n280_q; // (signal)
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
  assign fracresultfar0 = fpadd_5_4_f300_uid2_fracaddfar_n153; // (signal)
  assign fracresultfarnormstage = fracresultfar0; // (signal)
  assign fracleadingbits = n156_o; // (signal)
  assign fracresultfar1 = n160_o; // (signal)
  assign fracresultroundbit = n169_o; // (signal)
  assign fracresultstickybit = n177_o; // (signal)
  assign roundfar1 = n189_o; // (signal)
  assign expoperationsel = n193_o; // (signal)
  assign exponentupdate = n209_o; // (signal)
  assign exponentresultfar0 = n212_o; // (signal)
  assign exponentresultfar0_d1 = n281_q; // (signal)
  assign exponentresultfar0_d2 = n282_q; // (signal)
  assign exponentresultfar1 = n213_o; // (signal)
  assign resultbeforeroundfar = n214_o; // (signal)
  assign roundfar = roundfar1; // (signal)
  assign resultbeforeround = n217_o; // (signal)
  assign round = n220_o; // (signal)
  assign zerofromclose = n221_o; // (signal)
  assign zerofromclose_d1 = n283_q; // (signal)
  assign resultrounded = fpadd_5_4_f300_uid2_finalroundadd_n223; // (signal)
  assign synceffsub = effsub; // (signal)
  assign synceffsub_d1 = n284_q; // (signal)
  assign synceffsub_d2 = n285_q; // (signal)
  assign syncx = newx; // (signal)
  assign syncx_d1 = n286_q; // (signal)
  assign syncx_d2 = n287_q; // (signal)
  assign syncsigny = pipesigny; // (signal)
  assign syncsigny_d1 = n288_q; // (signal)
  assign syncsigny_d2 = n289_q; // (signal)
  assign syncressign = ressign; // (signal)
  assign syncressign_d1 = n290_q; // (signal)
  assign syncressign_d2 = n291_q; // (signal)
  assign underflowoverflow = n226_o; // (signal)
  assign resultnoexn = n292_o; // (signal)
  assign syncexnxy = sdexnxy; // (signal)
  assign syncexnxy_d1 = n293_q; // (signal)
  assign syncexnxy_d2 = n294_q; // (signal)
  assign exnr = n257_o; // (signal)
  assign sgnr = n267_o; // (signal)
  assign expsigr = n272_o; // (signal)
  assign n25_o = inx[11:10];
  assign n26_o = iny[11:10];
  assign n27_o = $unsigned(n25_o) >= $unsigned(n26_o);
  assign n28_o = n27_o ? 1'b1 : 1'b0;
  assign n31_o = inx[11:10];
  assign n32_o = iny[11:10];
  assign n33_o = n31_o == n32_o;
  assign n34_o = n33_o ? 1'b1 : 1'b0;
  assign n36_o = inx[8:4];
  assign n38_o = {1'b0, n36_o};
  assign n39_o = iny[8:4];
  assign n41_o = {1'b0, n39_o};
  assign n42_o = signedexponentx - signedexponenty;
  assign n43_o = signedexponenty[4:0];
  assign n44_o = signedexponentx[4:0];
  assign n45_o = n43_o - n44_o;
  assign n46_o = exponentdifferencexy[5];
  assign n47_o = exceptionxequaly & n46_o;
  assign n48_o = ~exceptionxsuperiory;
  assign n49_o = n47_o | n48_o;
  assign n50_o = swap ? iny : inx;
  assign n51_o = swap ? inx : iny;
  assign n52_o = swap ? exponentdifferenceyx : n53_o;
  assign n53_o = exponentdifferencexy[4:0];
  assign n54_o = exponentdifference[4];
  assign n55_o = exponentdifference[3];
  assign n56_o = n54_o | n55_o;
  assign n57_o = exponentdifference[2:0];
  assign n58_o = ~shiftedout;
  assign n59_o = n58_o ? n57_o : 3'b111;
  assign n61_o = newx[9];
  assign n62_o = newy[9];
  assign n63_o = n61_o ^ n62_o;
  assign n64_o = exponentdifference[4:1];
  assign n66_o = n64_o == 4'b0000;
  assign n67_o = n66_o ? effsub : 1'b0;
  assign n69_o = newx[11:10];
  assign n70_o = newy[11:10];
  assign n71_o = {n69_o, n70_o};
  assign n72_o = newy[9];
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
  assign fpadd_5_4_f300_uid2_dualsubclose_n90 = fpadd_5_4_f300_uid2_dualsubclose_xmy; // (signal)
  assign fpadd_5_4_f300_uid2_dualsubclose_n91 = fpadd_5_4_f300_uid2_dualsubclose_ymx; // (signal)
  intdualsub_7_f300_uid4 fpadd_5_4_f300_uid2_dualsubclose (
    .clk(clk),
    .x(fracxclose1),
    .y(fracyclose1),
    .xmy(fpadd_5_4_f300_uid2_dualsubclose_xmy),
    .ymx(fpadd_5_4_f300_uid2_dualsubclose_ymx));
  assign n96_o = fracrclosexmy[6];
  assign n97_o = fracrclosexmy[5:0];
  assign n98_o = ~fracsignclose;
  assign n99_o = n98_o ? n97_o : n100_o;
  assign n100_o = fracrcloseymx[5:0];
  assign n103_o = fracrclose1 == 6'b000000;
  assign n104_o = selectclosepath & n103_o;
  assign n105_o = n104_o ? 1'b0 : n108_o;
  assign n106_o = newx[9];
  assign n107_o = selectclosepath & fracsignclose;
  assign n108_o = n106_o ^ n107_o;
  assign norm_n109 = norm_count; // (signal)
  assign norm_n110 = norm_r; // (signal)
  normalizer_z_6_6_6_f300_uid6 norm (
    .clk(clk),
    .x(fracrclose1),
    .count(norm_count),
    .r(norm_r));
  assign n115_o = shiftedfrac[0];
  assign n116_o = shiftedfrac[1];
  assign n117_o = n115_o & n116_o;
  assign n120_o = nzerosnew == 3'b111;
  assign n121_o = n120_o ? 1'b1 : 1'b0;
  assign n123_o = newx_d1[8:4];
  assign n125_o = {2'b00, n123_o};
  assign n127_o = {4'b0000, nzerosnew};
  assign n128_o = n125_o - n127_o;
  assign n129_o = shiftedfrac[4:1];
  assign n130_o = {exponentresultclose_d1, n129_o};
  assign n131_o = newy[3:0];
  assign n133_o = {1'b1, n131_o};
  assign rightshiftercomponent_n134 = rightshiftercomponent_r; // (signal)
  assign rightshiftercomponent_n135 = rightshiftercomponent_sticky; // (signal)
  rightshiftersticky5_by_max_7_f300_uid8 rightshiftercomponent (
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
  assign n152_o = effsub_d2 & n151_o;
  assign fpadd_5_4_f300_uid2_fracaddfar_n153 = fpadd_5_4_f300_uid2_fracaddfar_r; // (signal)
  intadder_8_f300_uid10 fpadd_5_4_f300_uid2_fracaddfar (
    .clk(clk),
    .x(fracxfar),
    .y(fracyfarxorop),
    .cin(cinaddfar),
    .r(fpadd_5_4_f300_uid2_fracaddfar_r));
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
  assign n204_o = expoperationsel[1];
  assign n205_o = {n204_o, n203_o, n202_o, n201_o};
  assign n206_o = {n200_o, n199_o};
  assign n207_o = {n205_o, n206_o};
  assign n208_o = expoperationsel[0];
  assign n209_o = {n207_o, n208_o};
  assign n210_o = newx[8:4];
  assign n212_o = {2'b00, n210_o};
  assign n213_o = exponentresultfar0_d2 + exponentupdate;
  assign n214_o = {exponentresultfar1, fracresultfar1};
  assign n216_o = selectclosepath_d2 == 1'b1;
  always @*
    case (n216_o)
      1'b1: n217_o = resultbeforeroundclose;
      default: n217_o = resultbeforeroundfar;
    endcase
  assign n219_o = selectclosepath_d2 == 1'b1;
  always @*
    case (n219_o)
      1'b1: n220_o = roundclose;
      default: n220_o = roundfar;
    endcase
  assign n221_o = selectclosepath_d1 & resultcloseiszero;
  assign fpadd_5_4_f300_uid2_finalroundadd_n223 = fpadd_5_4_f300_uid2_finalroundadd_r; // (signal)
  intadder_11_f300_uid1333 fpadd_5_4_f300_uid2_finalroundadd (
    .clk(clk),
    .x(resultbeforeround),
    .y(n222_o),
    .cin(round),
    .r(fpadd_5_4_f300_uid2_finalroundadd_r));
  assign n226_o = resultrounded[10:9];
  assign n227_o = ~zerofromclose_d1;
  assign n229_o = {n227_o, 1'b0};
  assign n231_o = underflowoverflow == 2'b01;
  assign n234_o = underflowoverflow == 2'b10;
  assign n236_o = underflowoverflow == 2'b11;
  assign n237_o = n234_o | n236_o;
  assign n238_o = ~zerofromclose_d1;
  assign n240_o = {1'b0, n238_o};
  assign n241_o = {n237_o, n231_o};
  always @*
    case (n241_o)
      2'b10: n242_o = 2'b00;
      2'b01: n242_o = n229_o;
      default: n242_o = n240_o;
    endcase
  assign n243_o = resultrounded[8:0];
  assign n244_o = {syncressign_d2, n243_o};
  assign n245_o = resultnoexn[11:10];
  assign n247_o = syncexnxy_d2 == 4'b0101;
  assign n249_o = {1'b1, synceffsub_d2};
  assign n251_o = syncexnxy_d2 == 4'b1010;
  assign n254_o = syncexnxy_d2 == 4'b1110;
  assign n255_o = syncexnxy_d2[3:2];
  assign n256_o = {n254_o, n251_o, n247_o};
  always @*
    case (n256_o)
      3'b100: n257_o = 2'b11;
      3'b010: n257_o = n249_o;
      3'b001: n257_o = n245_o;
      default: n257_o = n255_o;
    endcase
  assign n258_o = resultnoexn[9];
  assign n260_o = syncexnxy_d2 == 4'b0101;
  assign n261_o = syncx_d2[9];
  assign n262_o = n261_o & syncsigny_d2;
  assign n264_o = syncexnxy_d2 == 4'b0000;
  assign n265_o = syncx_d2[9];
  assign n266_o = {n264_o, n260_o};
  always @*
    case (n266_o)
      2'b10: n267_o = n262_o;
      2'b01: n267_o = n258_o;
      default: n267_o = n265_o;
    endcase
  assign n268_o = resultnoexn[8:0];
  assign n270_o = syncexnxy_d2 == 4'b0101;
  assign n271_o = syncx_d2[8:0];
  always @*
    case (n270_o)
      1'b1: n272_o = n268_o;
      default: n272_o = n271_o;
    endcase
  assign n273_o = {exnr, sgnr};
  assign n274_o = {n273_o, expsigr};
  always @(posedge clk)
    n275_q <= newx;
  always @(posedge clk)
    n276_q <= effsub;
  always @(posedge clk)
    n277_q <= effsub_d1;
  always @(posedge clk)
    n278_q <= selectclosepath;
  always @(posedge clk)
    n279_q <= selectclosepath_d1;
  always @(posedge clk)
    n280_q <= exponentresultclose;
  always @(posedge clk)
    n281_q <= exponentresultfar0;
  always @(posedge clk)
    n282_q <= exponentresultfar0_d1;
  always @(posedge clk)
    n283_q <= zerofromclose;
  always @(posedge clk)
    n284_q <= synceffsub;
  always @(posedge clk)
    n285_q <= synceffsub_d1;
  always @(posedge clk)
    n286_q <= syncx;
  always @(posedge clk)
    n287_q <= syncx_d1;
  always @(posedge clk)
    n288_q <= syncsigny;
  always @(posedge clk)
    n289_q <= syncsigny_d1;
  always @(posedge clk)
    n290_q <= syncressign;
  always @(posedge clk)
    n291_q <= syncressign_d1;
  assign n292_o = {n242_o, n244_o};
  always @(posedge clk)
    n293_q <= syncexnxy;
  always @(posedge clk)
    n294_q <= syncexnxy_d1;
endmodule

