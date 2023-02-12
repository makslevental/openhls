module intadder_11_f300_uid1333
  (input wire clk,
   input wire [10:0] x,
   input wire [10:0] y,
   input wire cin,
   output wire [10:0] r);
  wire [10:0] rtmp;
  wire [10:0] y_d1;
  wire [10:0] y_d2;
  wire [10:0] n449_o;
  wire [10:0] n450_o;
  wire [10:0] n451_o;
  reg [10:0] n452_q;
  reg [10:0] n453_q;
  assign r = rtmp;
  assign rtmp = n451_o; // (signal)
  assign y_d1 = n452_q; // (signal)
  assign y_d2 = n453_q; // (signal)
  assign n449_o = x + y_d2;
  assign n450_o = {10'b0, cin};  //  uext
  assign n451_o = n449_o + n450_o;
  always @(posedge clk)
    n452_q <= y;
  always @(posedge clk)
    n453_q <= y_d1;
endmodule

module intadder_9_f300_uid10
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
  wire [8:0] n435_o;
  wire [8:0] n436_o;
  wire [8:0] n437_o;
  reg [8:0] n438_q;
  reg [8:0] n439_q;
  reg [8:0] n440_q;
  reg [8:0] n441_q;
  assign r = rtmp;
  assign rtmp = n437_o; // (signal)
  assign x_d1 = n438_q; // (signal)
  assign x_d2 = n439_q; // (signal)
  assign y_d1 = n440_q; // (signal)
  assign y_d2 = n441_q; // (signal)
  assign n435_o = x_d2 + y_d2;
  assign n436_o = {8'b0, cin};  //  uext
  assign n437_o = n435_o + n436_o;
  always @(posedge clk)
    n438_q <= x;
  always @(posedge clk)
    n439_q <= x_d1;
  always @(posedge clk)
    n440_q <= y;
  always @(posedge clk)
    n441_q <= y_d1;
endmodule

module rightshiftersticky6_by_max_8_f300_uid8
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
  wire [7:0] n361_o;
  wire n364_o;
  wire n365_o;
  wire n366_o;
  wire n367_o;
  wire n369_o;
  wire n370_o;
  wire [7:0] n371_o;
  wire [3:0] n374_o;
  wire n376_o;
  wire n377_o;
  wire n378_o;
  wire n379_o;
  wire n380_o;
  wire n382_o;
  wire n383_o;
  wire [7:0] n384_o;
  wire [3:0] n385_o;
  wire [7:0] n387_o;
  wire [1:0] n389_o;
  wire n391_o;
  wire n392_o;
  wire n393_o;
  wire n394_o;
  wire n395_o;
  wire n397_o;
  wire n398_o;
  wire [7:0] n399_o;
  wire [5:0] n400_o;
  wire [7:0] n402_o;
  wire n404_o;
  wire n406_o;
  wire n407_o;
  wire n408_o;
  wire n409_o;
  wire n410_o;
  wire n412_o;
  wire n413_o;
  wire [7:0] n414_o;
  wire [6:0] n415_o;
  wire [7:0] n417_o;
  reg [3:0] n418_q;
  reg [3:0] n419_q;
  reg n420_q;
  reg [7:0] n421_q;
  reg [7:0] n422_q;
  reg n423_q;
  reg [7:0] n424_q;
  reg [7:0] n425_q;
  assign r = level0;
  assign sticky = stk0;
  assign ps = s; // (signal)
  assign ps_d1 = n418_q; // (signal)
  assign ps_d2 = n419_q; // (signal)
  assign xpadded = n361_o; // (signal)
  assign level4 = xpadded; // (signal)
  assign stk3 = n367_o; // (signal)
  assign stk3_d1 = n420_q; // (signal)
  assign level3 = n371_o; // (signal)
  assign level3_d1 = n421_q; // (signal)
  assign stk2 = n380_o; // (signal)
  assign level2 = n384_o; // (signal)
  assign level2_d1 = n422_q; // (signal)
  assign stk1 = n395_o; // (signal)
  assign stk1_d1 = n423_q; // (signal)
  assign level1 = n399_o; // (signal)
  assign level1_d1 = n424_q; // (signal)
  assign level1_d2 = n425_q; // (signal)
  assign stk0 = n410_o; // (signal)
  assign level0 = n414_o; // (signal)
  assign n361_o = {x, 2'b00};
  assign n364_o = level4 != 8'b00000000;
  assign n365_o = ps[3];
  assign n366_o = n364_o & n365_o;
  assign n367_o = n366_o ? 1'b1 : 1'b0;
  assign n369_o = ps[3];
  assign n370_o = ~n369_o;
  assign n371_o = n370_o ? level4 : 8'b00000000;
  assign n374_o = level3_d1[3:0];
  assign n376_o = n374_o != 4'b0000;
  assign n377_o = ps_d1[2];
  assign n378_o = n376_o & n377_o;
  assign n379_o = n378_o | stk3_d1;
  assign n380_o = n379_o ? 1'b1 : 1'b0;
  assign n382_o = ps[2];
  assign n383_o = ~n382_o;
  assign n384_o = n383_o ? level3 : n387_o;
  assign n385_o = level3[7:4];
  assign n387_o = {4'b0000, n385_o};
  assign n389_o = level2_d1[1:0];
  assign n391_o = n389_o != 2'b00;
  assign n392_o = ps_d1[1];
  assign n393_o = n391_o & n392_o;
  assign n394_o = n393_o | stk2;
  assign n395_o = n394_o ? 1'b1 : 1'b0;
  assign n397_o = ps[1];
  assign n398_o = ~n397_o;
  assign n399_o = n398_o ? level2 : n402_o;
  assign n400_o = level2[7:2];
  assign n402_o = {2'b00, n400_o};
  assign n404_o = level1_d2[0];
  assign n406_o = n404_o != 1'b0;
  assign n407_o = ps_d2[0];
  assign n408_o = n406_o & n407_o;
  assign n409_o = n408_o | stk1_d1;
  assign n410_o = n409_o ? 1'b1 : 1'b0;
  assign n412_o = ps[0];
  assign n413_o = ~n412_o;
  assign n414_o = n413_o ? level1 : n417_o;
  assign n415_o = level1[7:1];
  assign n417_o = {1'b0, n415_o};
  always @(posedge clk)
    n418_q <= ps;
  always @(posedge clk)
    n419_q <= ps_d1;
  always @(posedge clk)
    n420_q <= stk3;
  always @(posedge clk)
    n421_q <= level3;
  always @(posedge clk)
    n422_q <= level2;
  always @(posedge clk)
    n423_q <= stk1;
  always @(posedge clk)
    n424_q <= level1;
  always @(posedge clk)
    n425_q <= level1_d1;
endmodule

module normalizer_z_7_7_7_f300_uid6
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
  wire [3:0] n309_o;
  wire n311_o;
  wire n312_o;
  wire n314_o;
  wire [6:0] n315_o;
  wire [2:0] n316_o;
  wire [6:0] n318_o;
  wire [1:0] n320_o;
  wire n322_o;
  wire n323_o;
  wire n325_o;
  wire [6:0] n326_o;
  wire [4:0] n327_o;
  wire [6:0] n329_o;
  wire n331_o;
  wire n333_o;
  wire n334_o;
  wire n336_o;
  wire [6:0] n337_o;
  wire [5:0] n338_o;
  wire [6:0] n340_o;
  wire [1:0] n341_o;
  wire [2:0] n342_o;
  reg [6:0] n343_q;
  reg [6:0] n344_q;
  reg n345_q;
  assign count = scount;
  assign r = level0;
  assign level3 = x; // (signal)
  assign level3_d1 = n343_q; // (signal)
  assign count2 = n312_o; // (signal)
  assign level2 = n315_o; // (signal)
  assign count1 = n323_o; // (signal)
  assign level1 = n326_o; // (signal)
  assign level1_d1 = n344_q; // (signal)
  assign count0 = n334_o; // (signal)
  assign count0_d1 = n345_q; // (signal)
  assign level0 = n337_o; // (signal)
  assign scount = n342_o; // (signal)
  assign n309_o = level3_d1[6:3];
  assign n311_o = n309_o == 4'b0000;
  assign n312_o = n311_o ? 1'b1 : 1'b0;
  assign n314_o = ~count2;
  assign n315_o = n314_o ? level3_d1 : n318_o;
  assign n316_o = level3_d1[2:0];
  assign n318_o = {n316_o, 4'b0000};
  assign n320_o = level2[6:5];
  assign n322_o = n320_o == 2'b00;
  assign n323_o = n322_o ? 1'b1 : 1'b0;
  assign n325_o = ~count1;
  assign n326_o = n325_o ? level2 : n329_o;
  assign n327_o = level2[4:0];
  assign n329_o = {n327_o, 2'b00};
  assign n331_o = level1[6];
  assign n333_o = n331_o == 1'b0;
  assign n334_o = n333_o ? 1'b1 : 1'b0;
  assign n336_o = ~count0_d1;
  assign n337_o = n336_o ? level1_d1 : n340_o;
  assign n338_o = level1_d1[5:0];
  assign n340_o = {n338_o, 1'b0};
  assign n341_o = {count2, count1};
  assign n342_o = {n341_o, count0};
  always @(posedge clk)
    n343_q <= level3;
  always @(posedge clk)
    n344_q <= level1;
  always @(posedge clk)
    n345_q <= count0;
endmodule

module intdualsub_8_f300_uid4
  (input wire clk,
   input wire [7:0] x,
   input wire [7:0] y,
   output wire [7:0] xmy,
   output wire [7:0] ymx);
  wire [7:0] temprxmy;
  wire [7:0] temprymx;
  wire [7:0] n289_o;
  wire [7:0] n290_o;
  wire [7:0] n293_o;
  wire [7:0] n294_o;
  wire [7:0] n295_o;
  wire [7:0] n298_o;
  assign xmy = temprxmy;
  assign ymx = temprymx;
  assign temprxmy = n293_o; // (signal)
  assign temprymx = n298_o; // (signal)
  assign n289_o = ~y;
  assign n290_o = x + n289_o;
  assign n293_o = n290_o + 8'b00000001;
  assign n294_o = ~x;
  assign n295_o = y + n294_o;
  assign n298_o = n295_o + 8'b00000001;
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
  wire [4:0] signedexponentx;
  wire [4:0] signedexponenty;
  wire [4:0] exponentdifferencexy;
  wire [3:0] exponentdifferenceyx;
  wire swap;
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
  wire [11:0] n50_o;
  wire [11:0] n51_o;
  wire [3:0] n52_o;
  wire [3:0] n53_o;
  wire n55_o;
  wire n56_o;
  wire n57_o;
  wire [2:0] n58_o;
  wire n60_o;
  wire n61_o;
  wire [1:0] n63_o;
  wire [1:0] n64_o;
  wire [3:0] n65_o;
  wire n66_o;
  wire [4:0] n67_o;
  wire [6:0] n69_o;
  wire [7:0] n71_o;
  wire n72_o;
  wire [4:0] n73_o;
  wire [6:0] n75_o;
  wire [7:0] n77_o;
  wire n79_o;
  wire [4:0] n80_o;
  wire [7:0] n82_o;
  reg [7:0] n83_o;
  wire [7:0] fpadd_4_5_f300_uid2_dualsubclose_n84;
  wire [7:0] fpadd_4_5_f300_uid2_dualsubclose_n85;
  wire [7:0] fpadd_4_5_f300_uid2_dualsubclose_xmy;
  wire [7:0] fpadd_4_5_f300_uid2_dualsubclose_ymx;
  wire n90_o;
  wire [6:0] n91_o;
  wire n92_o;
  wire [6:0] n93_o;
  wire [6:0] n94_o;
  wire n97_o;
  wire n98_o;
  wire n99_o;
  wire n100_o;
  wire n101_o;
  wire n102_o;
  wire [2:0] norm_n103;
  wire [6:0] norm_n104;
  wire [2:0] norm_count;
  wire [6:0] norm_r;
  wire n109_o;
  wire n110_o;
  wire n111_o;
  wire n114_o;
  wire n115_o;
  wire [3:0] n117_o;
  wire [5:0] n119_o;
  wire [5:0] n121_o;
  wire [5:0] n122_o;
  wire [4:0] n123_o;
  wire [10:0] n124_o;
  wire [4:0] n125_o;
  wire [5:0] n127_o;
  wire [7:0] rightshiftercomponent_n128;
  wire rightshiftercomponent_n129;
  wire [7:0] rightshiftercomponent_r;
  wire rightshiftercomponent_sticky;
  wire [8:0] n135_o;
  wire [3:0] n136_o;
  wire [3:0] n137_o;
  wire [8:0] n138_o;
  wire [8:0] n139_o;
  wire [4:0] n140_o;
  wire [6:0] n142_o;
  wire [8:0] n144_o;
  wire n145_o;
  wire n146_o;
  wire [8:0] fpadd_4_5_f300_uid2_fracaddfar_n147;
  wire [8:0] fpadd_4_5_f300_uid2_fracaddfar_r;
  wire [1:0] n150_o;
  wire [4:0] n151_o;
  wire n153_o;
  wire [4:0] n154_o;
  wire [4:0] n155_o;
  wire n157_o;
  wire [4:0] n158_o;
  wire [4:0] n159_o;
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
  wire [1:0] n187_o;
  wire n190_o;
  wire [1:0] n191_o;
  wire n193_o;
  wire n194_o;
  wire n195_o;
  wire n196_o;
  wire n197_o;
  wire [3:0] n198_o;
  wire [4:0] n199_o;
  wire n200_o;
  wire [5:0] n201_o;
  wire [3:0] n202_o;
  wire [5:0] n204_o;
  wire [5:0] n205_o;
  wire [10:0] n206_o;
  wire n208_o;
  reg [10:0] n209_o;
  wire n211_o;
  reg n212_o;
  wire n213_o;
  localparam [10:0] n214_o = 11'b00000000000;
  wire [10:0] fpadd_4_5_f300_uid2_finalroundadd_n215;
  wire [10:0] fpadd_4_5_f300_uid2_finalroundadd_r;
  wire [1:0] n218_o;
  wire n219_o;
  wire [1:0] n221_o;
  wire n223_o;
  wire n226_o;
  wire n228_o;
  wire n229_o;
  wire n230_o;
  wire [1:0] n232_o;
  wire [1:0] n233_o;
  reg [1:0] n234_o;
  wire [8:0] n235_o;
  wire [9:0] n236_o;
  wire [1:0] n237_o;
  wire n239_o;
  wire [1:0] n241_o;
  wire n243_o;
  wire n246_o;
  wire [1:0] n247_o;
  wire [2:0] n248_o;
  reg [1:0] n249_o;
  wire n250_o;
  wire n252_o;
  wire n253_o;
  wire n254_o;
  wire n256_o;
  wire n257_o;
  wire [1:0] n258_o;
  reg n259_o;
  wire [8:0] n260_o;
  wire n262_o;
  wire [8:0] n263_o;
  reg [8:0] n264_o;
  wire [2:0] n265_o;
  wire [11:0] n266_o;
  reg [11:0] n267_q;
  reg n268_q;
  reg n269_q;
  reg n270_q;
  reg n271_q;
  reg [5:0] n272_q;
  reg [5:0] n273_q;
  reg [5:0] n274_q;
  reg n275_q;
  reg n276_q;
  reg n277_q;
  reg [11:0] n278_q;
  reg [11:0] n279_q;
  reg n280_q;
  reg n281_q;
  reg n282_q;
  reg n283_q;
  wire [11:0] n284_o;
  reg [3:0] n285_q;
  reg [3:0] n286_q;
  assign R = n266_o;
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
  assign newx_d1 = n267_q; // (signal)
  assign newy = n51_o; // (signal)
  assign exponentdifference = n52_o; // (signal)
  assign shiftval = exponentdifference; // (signal)
  assign effsub = n57_o; // (signal)
  assign effsub_d1 = n268_q; // (signal)
  assign effsub_d2 = n269_q; // (signal)
  assign selectclosepath = n61_o; // (signal)
  assign selectclosepath_d1 = n270_q; // (signal)
  assign selectclosepath_d2 = n271_q; // (signal)
  assign sdexnxy = n65_o; // (signal)
  assign pipesigny = n66_o; // (signal)
  assign fracxclose1 = n71_o; // (signal)
  assign fracyclose1 = n83_o; // (signal)
  assign fracrclosexmy = fpadd_4_5_f300_uid2_dualsubclose_n84; // (signal)
  assign fracrcloseymx = fpadd_4_5_f300_uid2_dualsubclose_n85; // (signal)
  assign fracsignclose = n90_o; // (signal)
  assign fracrclose1 = n93_o; // (signal)
  assign ressign = n99_o; // (signal)
  assign nzerosnew = norm_n103; // (signal)
  assign shiftedfrac = norm_n104; // (signal)
  assign roundclose0 = n111_o; // (signal)
  assign resultcloseiszero0 = n115_o; // (signal)
  assign exponentresultclose = n122_o; // (signal)
  assign exponentresultclose_d1 = n272_q; // (signal)
  assign resultbeforeroundclose = n124_o; // (signal)
  assign roundclose = roundclose0; // (signal)
  assign resultcloseiszero = resultcloseiszero0; // (signal)
  assign fracnewy = n127_o; // (signal)
  assign shiftedfracy = rightshiftercomponent_n128; // (signal)
  assign sticky = rightshiftercomponent_n129; // (signal)
  assign fracyfar = n135_o; // (signal)
  assign effsubvector = n138_o; // (signal)
  assign fracyfarxorop = n139_o; // (signal)
  assign fracxfar = n144_o; // (signal)
  assign cinaddfar = n146_o; // (signal)
  assign fracresultfar0 = fpadd_4_5_f300_uid2_fracaddfar_n147; // (signal)
  assign fracresultfarnormstage = fracresultfar0; // (signal)
  assign fracleadingbits = n150_o; // (signal)
  assign fracresultfar1 = n154_o; // (signal)
  assign fracresultroundbit = n163_o; // (signal)
  assign fracresultstickybit = n171_o; // (signal)
  assign roundfar1 = n183_o; // (signal)
  assign expoperationsel = n187_o; // (signal)
  assign exponentupdate = n201_o; // (signal)
  assign exponentresultfar0 = n204_o; // (signal)
  assign exponentresultfar0_d1 = n273_q; // (signal)
  assign exponentresultfar0_d2 = n274_q; // (signal)
  assign exponentresultfar1 = n205_o; // (signal)
  assign resultbeforeroundfar = n206_o; // (signal)
  assign roundfar = roundfar1; // (signal)
  assign resultbeforeround = n209_o; // (signal)
  assign round = n212_o; // (signal)
  assign zerofromclose = n213_o; // (signal)
  assign zerofromclose_d1 = n275_q; // (signal)
  assign resultrounded = fpadd_4_5_f300_uid2_finalroundadd_n215; // (signal)
  assign synceffsub = effsub; // (signal)
  assign synceffsub_d1 = n276_q; // (signal)
  assign synceffsub_d2 = n277_q; // (signal)
  assign syncx = newx; // (signal)
  assign syncx_d1 = n278_q; // (signal)
  assign syncx_d2 = n279_q; // (signal)
  assign syncsigny = pipesigny; // (signal)
  assign syncsigny_d1 = n280_q; // (signal)
  assign syncsigny_d2 = n281_q; // (signal)
  assign syncressign = ressign; // (signal)
  assign syncressign_d1 = n282_q; // (signal)
  assign syncressign_d2 = n283_q; // (signal)
  assign underflowoverflow = n218_o; // (signal)
  assign resultnoexn = n284_o; // (signal)
  assign syncexnxy = sdexnxy; // (signal)
  assign syncexnxy_d1 = n285_q; // (signal)
  assign syncexnxy_d2 = n286_q; // (signal)
  assign exnr = n249_o; // (signal)
  assign sgnr = n259_o; // (signal)
  assign expsigr = n264_o; // (signal)
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
  assign n50_o = swap ? iny : inx;
  assign n51_o = swap ? inx : iny;
  assign n52_o = swap ? exponentdifferenceyx : n53_o;
  assign n53_o = exponentdifferencexy[3:0];
  assign n55_o = newx[9];
  assign n56_o = newy[9];
  assign n57_o = n55_o ^ n56_o;
  assign n58_o = exponentdifference[3:1];
  assign n60_o = n58_o == 3'b000;
  assign n61_o = n60_o ? effsub : 1'b0;
  assign n63_o = newx[11:10];
  assign n64_o = newy[11:10];
  assign n65_o = {n63_o, n64_o};
  assign n66_o = newy[9];
  assign n67_o = newx[4:0];
  assign n69_o = {2'b01, n67_o};
  assign n71_o = {n69_o, 1'b0};
  assign n72_o = exponentdifference[0];
  assign n73_o = newy[4:0];
  assign n75_o = {2'b01, n73_o};
  assign n77_o = {n75_o, 1'b0};
  assign n79_o = n72_o == 1'b0;
  assign n80_o = newy[4:0];
  assign n82_o = {3'b001, n80_o};
  always @*
    case (n79_o)
      1'b1: n83_o = n77_o;
      default: n83_o = n82_o;
    endcase
  assign fpadd_4_5_f300_uid2_dualsubclose_n84 = fpadd_4_5_f300_uid2_dualsubclose_xmy; // (signal)
  assign fpadd_4_5_f300_uid2_dualsubclose_n85 = fpadd_4_5_f300_uid2_dualsubclose_ymx; // (signal)
  intdualsub_8_f300_uid4 fpadd_4_5_f300_uid2_dualsubclose (
    .clk(clk),
    .x(fracxclose1),
    .y(fracyclose1),
    .xmy(fpadd_4_5_f300_uid2_dualsubclose_xmy),
    .ymx(fpadd_4_5_f300_uid2_dualsubclose_ymx));
  assign n90_o = fracrclosexmy[7];
  assign n91_o = fracrclosexmy[6:0];
  assign n92_o = ~fracsignclose;
  assign n93_o = n92_o ? n91_o : n94_o;
  assign n94_o = fracrcloseymx[6:0];
  assign n97_o = fracrclose1 == 7'b0000000;
  assign n98_o = selectclosepath & n97_o;
  assign n99_o = n98_o ? 1'b0 : n102_o;
  assign n100_o = newx[9];
  assign n101_o = selectclosepath & fracsignclose;
  assign n102_o = n100_o ^ n101_o;
  assign norm_n103 = norm_count; // (signal)
  assign norm_n104 = norm_r; // (signal)
  normalizer_z_7_7_7_f300_uid6 norm (
    .clk(clk),
    .x(fracrclose1),
    .count(norm_count),
    .r(norm_r));
  assign n109_o = shiftedfrac[0];
  assign n110_o = shiftedfrac[1];
  assign n111_o = n109_o & n110_o;
  assign n114_o = nzerosnew == 3'b111;
  assign n115_o = n114_o ? 1'b1 : 1'b0;
  assign n117_o = newx_d1[8:5];
  assign n119_o = {2'b00, n117_o};
  assign n121_o = {3'b000, nzerosnew};
  assign n122_o = n119_o - n121_o;
  assign n123_o = shiftedfrac[5:1];
  assign n124_o = {exponentresultclose_d1, n123_o};
  assign n125_o = newy[4:0];
  assign n127_o = {1'b1, n125_o};
  assign rightshiftercomponent_n128 = rightshiftercomponent_r; // (signal)
  assign rightshiftercomponent_n129 = rightshiftercomponent_sticky; // (signal)
  rightshiftersticky6_by_max_8_f300_uid8 rightshiftercomponent (
    .clk(clk),
    .x(fracnewy),
    .s(shiftval),
    .r(rightshiftercomponent_r),
    .sticky(rightshiftercomponent_sticky));
  assign n135_o = {1'b0, shiftedfracy};
  assign n136_o = {effsub, effsub, effsub, effsub};
  assign n137_o = {effsub, effsub, effsub, effsub};
  assign n138_o = {n136_o, n137_o, effsub};
  assign n139_o = fracyfar ^ effsubvector;
  assign n140_o = newx[4:0];
  assign n142_o = {2'b01, n140_o};
  assign n144_o = {n142_o, 2'b00};
  assign n145_o = ~sticky;
  assign n146_o = effsub_d2 & n145_o;
  assign fpadd_4_5_f300_uid2_fracaddfar_n147 = fpadd_4_5_f300_uid2_fracaddfar_r; // (signal)
  intadder_9_f300_uid10 fpadd_4_5_f300_uid2_fracaddfar (
    .clk(clk),
    .x(fracxfar),
    .y(fracyfarxorop),
    .cin(cinaddfar),
    .r(fpadd_4_5_f300_uid2_fracaddfar_r));
  assign n150_o = fracresultfarnormstage[8:7];
  assign n151_o = fracresultfarnormstage[5:1];
  assign n153_o = fracleadingbits == 2'b00;
  assign n154_o = n153_o ? n151_o : n158_o;
  assign n155_o = fracresultfarnormstage[6:2];
  assign n157_o = fracleadingbits == 2'b01;
  assign n158_o = n157_o ? n155_o : n159_o;
  assign n159_o = fracresultfarnormstage[7:3];
  assign n160_o = fracresultfarnormstage[0];
  assign n162_o = fracleadingbits == 2'b00;
  assign n163_o = n162_o ? n160_o : n167_o;
  assign n164_o = fracresultfarnormstage[1];
  assign n166_o = fracleadingbits == 2'b01;
  assign n167_o = n166_o ? n164_o : n168_o;
  assign n168_o = fracresultfarnormstage[2];
  assign n170_o = fracleadingbits == 2'b00;
  assign n171_o = n170_o ? sticky : n176_o;
  assign n172_o = fracresultfarnormstage[0];
  assign n173_o = n172_o | sticky;
  assign n175_o = fracleadingbits == 2'b01;
  assign n176_o = n175_o ? n173_o : n180_o;
  assign n177_o = fracresultfarnormstage[1];
  assign n178_o = fracresultfarnormstage[0];
  assign n179_o = n177_o | n178_o;
  assign n180_o = n179_o | sticky;
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
  assign n197_o = expoperationsel[1];
  assign n198_o = {n197_o, n196_o, n195_o, n194_o};
  assign n199_o = {n198_o, n193_o};
  assign n200_o = expoperationsel[0];
  assign n201_o = {n199_o, n200_o};
  assign n202_o = newx[8:5];
  assign n204_o = {2'b00, n202_o};
  assign n205_o = exponentresultfar0_d2 + exponentupdate;
  assign n206_o = {exponentresultfar1, fracresultfar1};
  assign n208_o = selectclosepath_d2 == 1'b1;
  always @*
    case (n208_o)
      1'b1: n209_o = resultbeforeroundclose;
      default: n209_o = resultbeforeroundfar;
    endcase
  assign n211_o = selectclosepath_d2 == 1'b1;
  always @*
    case (n211_o)
      1'b1: n212_o = roundclose;
      default: n212_o = roundfar;
    endcase
  assign n213_o = selectclosepath_d1 & resultcloseiszero;
  assign fpadd_4_5_f300_uid2_finalroundadd_n215 = fpadd_4_5_f300_uid2_finalroundadd_r; // (signal)
  intadder_11_f300_uid1333 fpadd_4_5_f300_uid2_finalroundadd (
    .clk(clk),
    .x(resultbeforeround),
    .y(n214_o),
    .cin(round),
    .r(fpadd_4_5_f300_uid2_finalroundadd_r));
  assign n218_o = resultrounded[10:9];
  assign n219_o = ~zerofromclose_d1;
  assign n221_o = {n219_o, 1'b0};
  assign n223_o = underflowoverflow == 2'b01;
  assign n226_o = underflowoverflow == 2'b10;
  assign n228_o = underflowoverflow == 2'b11;
  assign n229_o = n226_o | n228_o;
  assign n230_o = ~zerofromclose_d1;
  assign n232_o = {1'b0, n230_o};
  assign n233_o = {n229_o, n223_o};
  always @*
    case (n233_o)
      2'b10: n234_o = 2'b00;
      2'b01: n234_o = n221_o;
      default: n234_o = n232_o;
    endcase
  assign n235_o = resultrounded[8:0];
  assign n236_o = {syncressign_d2, n235_o};
  assign n237_o = resultnoexn[11:10];
  assign n239_o = syncexnxy_d2 == 4'b0101;
  assign n241_o = {1'b1, synceffsub_d2};
  assign n243_o = syncexnxy_d2 == 4'b1010;
  assign n246_o = syncexnxy_d2 == 4'b1110;
  assign n247_o = syncexnxy_d2[3:2];
  assign n248_o = {n246_o, n243_o, n239_o};
  always @*
    case (n248_o)
      3'b100: n249_o = 2'b11;
      3'b010: n249_o = n241_o;
      3'b001: n249_o = n237_o;
      default: n249_o = n247_o;
    endcase
  assign n250_o = resultnoexn[9];
  assign n252_o = syncexnxy_d2 == 4'b0101;
  assign n253_o = syncx_d2[9];
  assign n254_o = n253_o & syncsigny_d2;
  assign n256_o = syncexnxy_d2 == 4'b0000;
  assign n257_o = syncx_d2[9];
  assign n258_o = {n256_o, n252_o};
  always @*
    case (n258_o)
      2'b10: n259_o = n254_o;
      2'b01: n259_o = n250_o;
      default: n259_o = n257_o;
    endcase
  assign n260_o = resultnoexn[8:0];
  assign n262_o = syncexnxy_d2 == 4'b0101;
  assign n263_o = syncx_d2[8:0];
  always @*
    case (n262_o)
      1'b1: n264_o = n260_o;
      default: n264_o = n263_o;
    endcase
  assign n265_o = {exnr, sgnr};
  assign n266_o = {n265_o, expsigr};
  always @(posedge clk)
    n267_q <= newx;
  always @(posedge clk)
    n268_q <= effsub;
  always @(posedge clk)
    n269_q <= effsub_d1;
  always @(posedge clk)
    n270_q <= selectclosepath;
  always @(posedge clk)
    n271_q <= selectclosepath_d1;
  always @(posedge clk)
    n272_q <= exponentresultclose;
  always @(posedge clk)
    n273_q <= exponentresultfar0;
  always @(posedge clk)
    n274_q <= exponentresultfar0_d1;
  always @(posedge clk)
    n275_q <= zerofromclose;
  always @(posedge clk)
    n276_q <= synceffsub;
  always @(posedge clk)
    n277_q <= synceffsub_d1;
  always @(posedge clk)
    n278_q <= syncx;
  always @(posedge clk)
    n279_q <= syncx_d1;
  always @(posedge clk)
    n280_q <= syncsigny;
  always @(posedge clk)
    n281_q <= syncsigny_d1;
  always @(posedge clk)
    n282_q <= syncressign;
  always @(posedge clk)
    n283_q <= syncressign_d1;
  assign n284_o = {n234_o, n236_o};
  always @(posedge clk)
    n285_q <= syncexnxy;
  always @(posedge clk)
    n286_q <= syncexnxy_d1;
endmodule

