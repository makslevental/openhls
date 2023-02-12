module intadder_9_f300_uid13333
  (input  wire clk,
   input  wire [8:0] x,
   input  wire [8:0] y,
   input wire cin,
   output wire [8:0] r);
  wire [8:0] rtmp;
  wire [8:0] y_d1;
  wire [8:0] y_d2;
  wire [8:0] n445_o;
  wire [8:0] n446_o;
  wire [8:0] n447_o;
  reg [8:0] n448_q;
  reg [8:0] n449_q;
  assign r = rtmp;
  assign rtmp = n447_o; // (signal)
  assign y_d1 = n448_q; // (signal)
  assign y_d2 = n449_q; // (signal)
  assign n445_o = x + y_d2;
  assign n446_o = {8'b0, cin};  //  uext
  assign n447_o = n445_o + n446_o;
  always @(posedge clk)
    n448_q <= y;
  always @(posedge clk)
    n449_q <= y_d1;
endmodule

module intadder_7_f300_uid100000
  (input  wire clk,
   input  wire [6:0] x,
   input  wire [6:0] y,
   input wire cin,
   output wire [6:0] r);
  wire [6:0] rtmp;
  wire [6:0] x_d1;
  wire [6:0] x_d2;
  wire [6:0] y_d1;
  wire [6:0] y_d2;
  wire [6:0] n431_o;
  wire [6:0] n432_o;
  wire [6:0] n433_o;
  reg [6:0] n434_q;
  reg [6:0] n435_q;
  reg [6:0] n436_q;
  reg [6:0] n437_q;
  assign r = rtmp;
  assign rtmp = n433_o; // (signal)
  assign x_d1 = n434_q; // (signal)
  assign x_d2 = n435_q; // (signal)
  assign y_d1 = n436_q; // (signal)
  assign y_d2 = n437_q; // (signal)
  assign n431_o = x_d2 + y_d2;
  assign n432_o = {6'b0, cin};  //  uext
  assign n433_o = n431_o + n432_o;
  always @(posedge clk)
    n434_q <= x;
  always @(posedge clk)
    n435_q <= x_d1;
  always @(posedge clk)
    n436_q <= y;
  always @(posedge clk)
    n437_q <= y_d1;
endmodule

module rightshiftersticky4_by_max_6_f300_uid8888
  (input  wire clk,
   input  wire [3:0] x,
   input  wire [2:0] s,
   output wire [5:0] r,
   output wire sticky);
  wire [2:0] ps;
  wire [2:0] ps_d1;
  wire [2:0] ps_d2;
  wire [5:0] xpadded;
  wire [5:0] level3;
  wire [5:0] level3_d1;
  wire stk2;
  wire [5:0] level2;
  wire [5:0] level2_d1;
  wire stk1;
  wire stk1_d1;
  wire [5:0] level1;
  wire [5:0] level1_d1;
  wire [5:0] level1_d2;
  wire stk0;
  wire [5:0] level0;
  wire [5:0] n370_o;
  wire [3:0] n372_o;
  wire n374_o;
  wire n375_o;
  wire n376_o;
  wire n377_o;
  wire n379_o;
  wire n380_o;
  wire [5:0] n381_o;
  wire [1:0] n382_o;
  wire [5:0] n384_o;
  wire [1:0] n386_o;
  wire n388_o;
  wire n389_o;
  wire n390_o;
  wire n391_o;
  wire n392_o;
  wire n394_o;
  wire n395_o;
  wire [5:0] n396_o;
  wire [3:0] n397_o;
  wire [5:0] n399_o;
  wire n401_o;
  wire n403_o;
  wire n404_o;
  wire n405_o;
  wire n406_o;
  wire n407_o;
  wire n409_o;
  wire n410_o;
  wire [5:0] n411_o;
  wire [4:0] n412_o;
  wire [5:0] n414_o;
  reg [2:0] n415_q;
  reg [2:0] n416_q;
  reg [5:0] n417_q;
  reg [5:0] n418_q;
  reg n419_q;
  reg [5:0] n420_q;
  reg [5:0] n421_q;
  assign r = level0;
  assign sticky = stk0;
  assign ps = s; // (signal)
  assign ps_d1 = n415_q; // (signal)
  assign ps_d2 = n416_q; // (signal)
  assign xpadded = n370_o; // (signal)
  assign level3 = xpadded; // (signal)
  assign level3_d1 = n417_q; // (signal)
  assign stk2 = n377_o; // (signal)
  assign level2 = n381_o; // (signal)
  assign level2_d1 = n418_q; // (signal)
  assign stk1 = n392_o; // (signal)
  assign stk1_d1 = n419_q; // (signal)
  assign level1 = n396_o; // (signal)
  assign level1_d1 = n420_q; // (signal)
  assign level1_d2 = n421_q; // (signal)
  assign stk0 = n407_o; // (signal)
  assign level0 = n411_o; // (signal)
  assign n370_o = {x, 2'b00};
  assign n372_o = level3_d1[3:0];
  assign n374_o = n372_o != 4'b0000;
  assign n375_o = ps_d1[2];
  assign n376_o = n374_o & n375_o;
  assign n377_o = n376_o ? 1'b1 : 1'b0;
  assign n379_o = ps[2];
  assign n380_o = ~n379_o;
  assign n381_o = n380_o ? level3 : n384_o;
  assign n382_o = level3[5:4];
  assign n384_o = {4'b0000, n382_o};
  assign n386_o = level2_d1[1:0];
  assign n388_o = n386_o != 2'b00;
  assign n389_o = ps_d1[1];
  assign n390_o = n388_o & n389_o;
  assign n391_o = n390_o | stk2;
  assign n392_o = n391_o ? 1'b1 : 1'b0;
  assign n394_o = ps[1];
  assign n395_o = ~n394_o;
  assign n396_o = n395_o ? level2 : n399_o;
  assign n397_o = level2[5:2];
  assign n399_o = {2'b00, n397_o};
  assign n401_o = level1_d2[0];
  assign n403_o = n401_o != 1'b0;
  assign n404_o = ps_d2[0];
  assign n405_o = n403_o & n404_o;
  assign n406_o = n405_o | stk1_d1;
  assign n407_o = n406_o ? 1'b1 : 1'b0;
  assign n409_o = ps[0];
  assign n410_o = ~n409_o;
  assign n411_o = n410_o ? level1 : n414_o;
  assign n412_o = level1[5:1];
  assign n414_o = {1'b0, n412_o};
  always @(posedge clk)
    n415_q <= ps;
  always @(posedge clk)
    n416_q <= ps_d1;
  always @(posedge clk)
    n417_q <= level3;
  always @(posedge clk)
    n418_q <= level2;
  always @(posedge clk)
    n419_q <= stk1;
  always @(posedge clk)
    n420_q <= level1;
  always @(posedge clk)
    n421_q <= level1_d1;
endmodule

module normalizer_z_5_5_5_f300_uid6666
  (input  wire clk,
   input  wire [4:0] x,
   output wire [2:0] count,
   output wire [4:0] r);
  wire [4:0] level3;
  wire [4:0] level3_d1;
  wire count2;
  wire [4:0] level2;
  wire count1;
  wire [4:0] level1;
  wire [4:0] level1_d1;
  wire count0;
  wire count0_d1;
  wire [4:0] level0;
  wire [2:0] scount;
  wire [3:0] n319_o;
  wire n321_o;
  wire n322_o;
  wire n324_o;
  wire [4:0] n325_o;
  wire n326_o;
  wire [4:0] n328_o;
  wire [1:0] n330_o;
  wire n332_o;
  wire n333_o;
  wire n335_o;
  wire [4:0] n336_o;
  wire [2:0] n337_o;
  wire [4:0] n339_o;
  wire n341_o;
  wire n343_o;
  wire n344_o;
  wire n346_o;
  wire [4:0] n347_o;
  wire [3:0] n348_o;
  wire [4:0] n350_o;
  wire [1:0] n351_o;
  wire [2:0] n352_o;
  reg [4:0] n353_q;
  reg [4:0] n354_q;
  reg n355_q;
  assign count = scount;
  assign r = level0;
  assign level3 = x; // (signal)
  assign level3_d1 = n353_q; // (signal)
  assign count2 = n322_o; // (signal)
  assign level2 = n325_o; // (signal)
  assign count1 = n333_o; // (signal)
  assign level1 = n336_o; // (signal)
  assign level1_d1 = n354_q; // (signal)
  assign count0 = n344_o; // (signal)
  assign count0_d1 = n355_q; // (signal)
  assign level0 = n347_o; // (signal)
  assign scount = n352_o; // (signal)
  assign n319_o = level3_d1[4:1];
  assign n321_o = n319_o == 4'b0000;
  assign n322_o = n321_o ? 1'b1 : 1'b0;
  assign n324_o = ~count2;
  assign n325_o = n324_o ? level3_d1 : n328_o;
  assign n326_o = level3_d1[0];
  assign n328_o = {n326_o, 4'b0000};
  assign n330_o = level2[4:3];
  assign n332_o = n330_o == 2'b00;
  assign n333_o = n332_o ? 1'b1 : 1'b0;
  assign n335_o = ~count1;
  assign n336_o = n335_o ? level2 : n339_o;
  assign n337_o = level2[2:0];
  assign n339_o = {n337_o, 2'b00};
  assign n341_o = level1[4];
  assign n343_o = n341_o == 1'b0;
  assign n344_o = n343_o ? 1'b1 : 1'b0;
  assign n346_o = ~count0_d1;
  assign n347_o = n346_o ? level1_d1 : n350_o;
  assign n348_o = level1_d1[3:0];
  assign n350_o = {n348_o, 1'b0};
  assign n351_o = {count2, count1};
  assign n352_o = {n351_o, count0};
  always @(posedge clk)
    n353_q <= level3;
  always @(posedge clk)
    n354_q <= level1;
  always @(posedge clk)
    n355_q <= count0;
endmodule

module intdualsub_6_f300_uid44444
  (input  wire clk,
   input  wire [5:0] x,
   input  wire [5:0] y,
   output wire [5:0] xmy,
   output wire [5:0] ymx);
  wire [5:0] temprxmy;
  wire [5:0] temprymx;
  wire [5:0] n299_o;
  wire [5:0] n300_o;
  wire [5:0] n303_o;
  wire [5:0] n304_o;
  wire [5:0] n305_o;
  wire [5:0] n308_o;
  assign xmy = temprxmy;
  assign ymx = temprymx;
  assign temprxmy = n303_o; // (signal)
  assign temprymx = n308_o; // (signal)
  assign n299_o = ~y;
  assign n300_o = x + n299_o;
  assign n303_o = n300_o + 6'b000001;
  assign n304_o = ~x;
  assign n305_o = y + n304_o;
  assign n308_o = n305_o + 6'b000001;
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
  wire [4:0] signedexponentx;
  wire [4:0] signedexponenty;
  wire [4:0] exponentdifferencexy;
  wire [3:0] exponentdifferenceyx;
  wire swap;
  wire [9:0] my;
  wire [9:0] newx;
  wire [9:0] newx_d1;
  wire [9:0] newy;
  wire [3:0] exponentdifference;
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
  wire [5:0] fracxclose1;
  wire [5:0] fracyclose1;
  wire [5:0] fracrclosexmy;
  wire [5:0] fracrcloseymx;
  wire fracsignclose;
  wire [4:0] fracrclose1;
  wire ressign;
  wire [2:0] nzerosnew;
  wire [4:0] shiftedfrac;
  wire roundclose0;
  wire resultcloseiszero0;
  wire [5:0] exponentresultclose;
  wire [5:0] exponentresultclose_d1;
  wire [8:0] resultbeforeroundclose;
  wire roundclose;
  wire resultcloseiszero;
  wire [3:0] fracnewy;
  wire [5:0] shiftedfracy;
  wire sticky;
  wire [6:0] fracyfar;
  wire [6:0] effsubvector;
  wire [6:0] fracyfarxorop;
  wire [6:0] fracxfar;
  wire cinaddfar;
  wire [6:0] fracresultfar0;
  wire [6:0] fracresultfarnormstage;
  wire [1:0] fracleadingbits;
  wire [2:0] fracresultfar1;
  wire fracresultroundbit;
  wire fracresultstickybit;
  wire roundfar1;
  wire [1:0] expoperationsel;
  wire [5:0] exponentupdate;
  wire [5:0] exponentresultfar0;
  wire [5:0] exponentresultfar0_d1;
  wire [5:0] exponentresultfar0_d2;
  wire [5:0] exponentresultfar1;
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
  wire [6:0] n54_o;
  wire [9:0] n55_o;
  wire [9:0] n56_o;
  wire [9:0] n57_o;
  wire [3:0] n58_o;
  wire [3:0] n59_o;
  wire n60_o;
  wire [2:0] n61_o;
  wire n62_o;
  wire [2:0] n63_o;
  wire n65_o;
  wire n66_o;
  wire n67_o;
  wire [2:0] n68_o;
  wire n70_o;
  wire n71_o;
  wire [1:0] n73_o;
  wire [1:0] n74_o;
  wire [3:0] n75_o;
  wire n76_o;
  wire [2:0] n77_o;
  wire [4:0] n79_o;
  wire [5:0] n81_o;
  wire n82_o;
  wire [2:0] n83_o;
  wire [4:0] n85_o;
  wire [5:0] n87_o;
  wire n89_o;
  wire [2:0] n90_o;
  wire [5:0] n92_o;
  reg [5:0] n93_o;
  wire [5:0] fpsub_4_3_f300_uid2_dualsubclose_n94;
  wire [5:0] fpsub_4_3_f300_uid2_dualsubclose_n95;
  wire [5:0] fpsub_4_3_f300_uid2_dualsubclose_xmy;
  wire [5:0] fpsub_4_3_f300_uid2_dualsubclose_ymx;
  wire n100_o;
  wire [4:0] n101_o;
  wire n102_o;
  wire [4:0] n103_o;
  wire [4:0] n104_o;
  wire n107_o;
  wire n108_o;
  wire n109_o;
  wire n110_o;
  wire n111_o;
  wire n112_o;
  wire [2:0] norm_n113;
  wire [4:0] norm_n114;
  wire [2:0] norm_count;
  wire [4:0] norm_r;
  wire n119_o;
  wire n120_o;
  wire n121_o;
  wire n124_o;
  wire n125_o;
  wire [3:0] n127_o;
  wire [5:0] n129_o;
  wire [5:0] n131_o;
  wire [5:0] n132_o;
  wire [2:0] n133_o;
  wire [8:0] n134_o;
  wire [2:0] n135_o;
  wire [3:0] n137_o;
  wire [5:0] rightshiftercomponent_n138;
  wire rightshiftercomponent_n139;
  wire [5:0] rightshiftercomponent_r;
  wire rightshiftercomponent_sticky;
  wire [6:0] n145_o;
  wire [3:0] n146_o;
  wire [2:0] n147_o;
  wire [6:0] n148_o;
  wire [6:0] n149_o;
  wire [2:0] n150_o;
  wire [4:0] n152_o;
  wire [6:0] n154_o;
  wire n155_o;
  wire n156_o;
  wire [6:0] fpsub_4_3_f300_uid2_fracaddfar_n157;
  wire [6:0] fpsub_4_3_f300_uid2_fracaddfar_r;
  wire [1:0] n160_o;
  wire [2:0] n161_o;
  wire n163_o;
  wire [2:0] n164_o;
  wire [2:0] n165_o;
  wire n167_o;
  wire [2:0] n168_o;
  wire [2:0] n169_o;
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
  wire [1:0] n197_o;
  wire n200_o;
  wire [1:0] n201_o;
  wire n203_o;
  wire n204_o;
  wire n205_o;
  wire n206_o;
  wire n207_o;
  wire [3:0] n208_o;
  wire [4:0] n209_o;
  wire n210_o;
  wire [5:0] n211_o;
  wire [3:0] n212_o;
  wire [5:0] n214_o;
  wire [5:0] n215_o;
  wire [8:0] n216_o;
  wire n218_o;
  reg [8:0] n219_o;
  wire n221_o;
  reg n222_o;
  wire n223_o;
  localparam [8:0] n224_o = 9'b000000000;
  wire [8:0] fpsub_4_3_f300_uid2_finalroundadd_n225;
  wire [8:0] fpsub_4_3_f300_uid2_finalroundadd_r;
  wire [1:0] n228_o;
  wire n229_o;
  wire [1:0] n231_o;
  wire n233_o;
  wire n236_o;
  wire n238_o;
  wire n239_o;
  wire n240_o;
  wire [1:0] n242_o;
  wire [1:0] n243_o;
  reg [1:0] n244_o;
  wire [6:0] n245_o;
  wire [7:0] n246_o;
  wire [1:0] n247_o;
  wire n249_o;
  wire [1:0] n251_o;
  wire n253_o;
  wire n256_o;
  wire [1:0] n257_o;
  wire [2:0] n258_o;
  reg [1:0] n259_o;
  wire n260_o;
  wire n262_o;
  wire n263_o;
  wire n264_o;
  wire n266_o;
  wire n267_o;
  wire [1:0] n268_o;
  reg n269_o;
  wire [6:0] n270_o;
  wire n272_o;
  wire [6:0] n273_o;
  reg [6:0] n274_o;
  wire [2:0] n275_o;
  wire [9:0] n276_o;
  reg [9:0] n277_q;
  reg n278_q;
  reg n279_q;
  reg n280_q;
  reg n281_q;
  reg [5:0] n282_q;
  reg [5:0] n283_q;
  reg [5:0] n284_q;
  reg n285_q;
  reg n286_q;
  reg n287_q;
  reg [9:0] n288_q;
  reg [9:0] n289_q;
  reg n290_q;
  reg n291_q;
  reg n292_q;
  reg n293_q;
  wire [9:0] n294_o;
  reg [3:0] n295_q;
  reg [3:0] n296_q;
  assign R = n276_o;
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
  assign newx_d1 = n277_q; // (signal)
  assign newy = n57_o; // (signal)
  assign exponentdifference = n58_o; // (signal)
  assign shiftedout = n60_o; // (signal)
  assign shiftval = n63_o; // (signal)
  assign effsub = n67_o; // (signal)
  assign effsub_d1 = n278_q; // (signal)
  assign effsub_d2 = n279_q; // (signal)
  assign selectclosepath = n71_o; // (signal)
  assign selectclosepath_d1 = n280_q; // (signal)
  assign selectclosepath_d2 = n281_q; // (signal)
  assign sdexnxy = n75_o; // (signal)
  assign pipesigny = n76_o; // (signal)
  assign fracxclose1 = n81_o; // (signal)
  assign fracyclose1 = n93_o; // (signal)
  assign fracrclosexmy = fpsub_4_3_f300_uid2_dualsubclose_n94; // (signal)
  assign fracrcloseymx = fpsub_4_3_f300_uid2_dualsubclose_n95; // (signal)
  assign fracsignclose = n100_o; // (signal)
  assign fracrclose1 = n103_o; // (signal)
  assign ressign = n109_o; // (signal)
  assign nzerosnew = norm_n113; // (signal)
  assign shiftedfrac = norm_n114; // (signal)
  assign roundclose0 = n121_o; // (signal)
  assign resultcloseiszero0 = n125_o; // (signal)
  assign exponentresultclose = n132_o; // (signal)
  assign exponentresultclose_d1 = n282_q; // (signal)
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
  assign fracresultfar0 = fpsub_4_3_f300_uid2_fracaddfar_n157; // (signal)
  assign fracresultfarnormstage = fracresultfar0; // (signal)
  assign fracleadingbits = n160_o; // (signal)
  assign fracresultfar1 = n164_o; // (signal)
  assign fracresultroundbit = n173_o; // (signal)
  assign fracresultstickybit = n181_o; // (signal)
  assign roundfar1 = n193_o; // (signal)
  assign expoperationsel = n197_o; // (signal)
  assign exponentupdate = n211_o; // (signal)
  assign exponentresultfar0 = n214_o; // (signal)
  assign exponentresultfar0_d1 = n283_q; // (signal)
  assign exponentresultfar0_d2 = n284_q; // (signal)
  assign exponentresultfar1 = n215_o; // (signal)
  assign resultbeforeroundfar = n216_o; // (signal)
  assign roundfar = roundfar1; // (signal)
  assign resultbeforeround = n219_o; // (signal)
  assign round = n222_o; // (signal)
  assign zerofromclose = n223_o; // (signal)
  assign zerofromclose_d1 = n285_q; // (signal)
  assign resultrounded = fpsub_4_3_f300_uid2_finalroundadd_n225; // (signal)
  assign synceffsub = effsub; // (signal)
  assign synceffsub_d1 = n286_q; // (signal)
  assign synceffsub_d2 = n287_q; // (signal)
  assign syncx = newx; // (signal)
  assign syncx_d1 = n288_q; // (signal)
  assign syncx_d2 = n289_q; // (signal)
  assign syncsigny = pipesigny; // (signal)
  assign syncsigny_d1 = n290_q; // (signal)
  assign syncsigny_d2 = n291_q; // (signal)
  assign syncressign = ressign; // (signal)
  assign syncressign_d1 = n292_q; // (signal)
  assign syncressign_d2 = n293_q; // (signal)
  assign underflowoverflow = n228_o; // (signal)
  assign resultnoexn = n294_o; // (signal)
  assign syncexnxy = sdexnxy; // (signal)
  assign syncexnxy_d1 = n295_q; // (signal)
  assign syncexnxy_d2 = n296_q; // (signal)
  assign exnr = n259_o; // (signal)
  assign sgnr = n269_o; // (signal)
  assign expsigr = n274_o; // (signal)
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
  assign n42_o = signedexponentx - signedexponenty;
  assign n43_o = signedexponenty[3:0];
  assign n44_o = signedexponentx[3:0];
  assign n45_o = n43_o - n44_o;
  assign n46_o = exponentdifferencexy[4];
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
  assign n59_o = exponentdifferencexy[3:0];
  assign n60_o = exponentdifference[3];
  assign n61_o = exponentdifference[2:0];
  assign n62_o = ~shiftedout;
  assign n63_o = n62_o ? n61_o : 3'b110;
  assign n65_o = newx[7];
  assign n66_o = newy[7];
  assign n67_o = n65_o ^ n66_o;
  assign n68_o = exponentdifference[3:1];
  assign n70_o = n68_o == 3'b000;
  assign n71_o = n70_o ? effsub : 1'b0;
  assign n73_o = newx[9:8];
  assign n74_o = newy[9:8];
  assign n75_o = {n73_o, n74_o};
  assign n76_o = newy[7];
  assign n77_o = newx[2:0];
  assign n79_o = {2'b01, n77_o};
  assign n81_o = {n79_o, 1'b0};
  assign n82_o = exponentdifference[0];
  assign n83_o = newy[2:0];
  assign n85_o = {2'b01, n83_o};
  assign n87_o = {n85_o, 1'b0};
  assign n89_o = n82_o == 1'b0;
  assign n90_o = newy[2:0];
  assign n92_o = {3'b001, n90_o};
  always @*
    case (n89_o)
      1'b1: n93_o = n87_o;
      default: n93_o = n92_o;
    endcase
  assign fpsub_4_3_f300_uid2_dualsubclose_n94 = fpsub_4_3_f300_uid2_dualsubclose_xmy; // (signal)
  assign fpsub_4_3_f300_uid2_dualsubclose_n95 = fpsub_4_3_f300_uid2_dualsubclose_ymx; // (signal)
  intdualsub_6_f300_uid44444 fpsub_4_3_f300_uid2_dualsubclose (
    .clk(clk),
    .x(fracxclose1),
    .y(fracyclose1),
    .xmy(fpsub_4_3_f300_uid2_dualsubclose_xmy),
    .ymx(fpsub_4_3_f300_uid2_dualsubclose_ymx));
  assign n100_o = fracrclosexmy[5];
  assign n101_o = fracrclosexmy[4:0];
  assign n102_o = ~fracsignclose;
  assign n103_o = n102_o ? n101_o : n104_o;
  assign n104_o = fracrcloseymx[4:0];
  assign n107_o = fracrclose1 == 5'b00000;
  assign n108_o = selectclosepath & n107_o;
  assign n109_o = n108_o ? 1'b0 : n112_o;
  assign n110_o = newx[7];
  assign n111_o = selectclosepath & fracsignclose;
  assign n112_o = n110_o ^ n111_o;
  assign norm_n113 = norm_count; // (signal)
  assign norm_n114 = norm_r; // (signal)
  normalizer_z_5_5_5_f300_uid6666 norm (
    .clk(clk),
    .x(fracrclose1),
    .count(norm_count),
    .r(norm_r));
  assign n119_o = shiftedfrac[0];
  assign n120_o = shiftedfrac[1];
  assign n121_o = n119_o & n120_o;
  assign n124_o = nzerosnew == 3'b111;
  assign n125_o = n124_o ? 1'b1 : 1'b0;
  assign n127_o = newx_d1[6:3];
  assign n129_o = {2'b00, n127_o};
  assign n131_o = {3'b000, nzerosnew};
  assign n132_o = n129_o - n131_o;
  assign n133_o = shiftedfrac[3:1];
  assign n134_o = {exponentresultclose_d1, n133_o};
  assign n135_o = newy[2:0];
  assign n137_o = {1'b1, n135_o};
  assign rightshiftercomponent_n138 = rightshiftercomponent_r; // (signal)
  assign rightshiftercomponent_n139 = rightshiftercomponent_sticky; // (signal)
  rightshiftersticky4_by_max_6_f300_uid8888 rightshiftercomponent (
    .clk(clk),
    .x(fracnewy),
    .s(shiftval),
    .r(rightshiftercomponent_r),
    .sticky(rightshiftercomponent_sticky));
  assign n145_o = {1'b0, shiftedfracy};
  assign n146_o = {effsub, effsub, effsub, effsub};
  assign n147_o = {effsub, effsub, effsub};
  assign n148_o = {n146_o, n147_o};
  assign n149_o = fracyfar ^ effsubvector;
  assign n150_o = newx[2:0];
  assign n152_o = {2'b01, n150_o};
  assign n154_o = {n152_o, 2'b00};
  assign n155_o = ~sticky;
  assign n156_o = effsub_d2 & n155_o;
  assign fpsub_4_3_f300_uid2_fracaddfar_n157 = fpsub_4_3_f300_uid2_fracaddfar_r; // (signal)
  intadder_7_f300_uid100000 fpsub_4_3_f300_uid2_fracaddfar (
    .clk(clk),
    .x(fracxfar),
    .y(fracyfarxorop),
    .cin(cinaddfar),
    .r(fpsub_4_3_f300_uid2_fracaddfar_r));
  assign n160_o = fracresultfarnormstage[6:5];
  assign n161_o = fracresultfarnormstage[3:1];
  assign n163_o = fracleadingbits == 2'b00;
  assign n164_o = n163_o ? n161_o : n168_o;
  assign n165_o = fracresultfarnormstage[4:2];
  assign n167_o = fracleadingbits == 2'b01;
  assign n168_o = n167_o ? n165_o : n169_o;
  assign n169_o = fracresultfarnormstage[5:3];
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
  assign n208_o = {n207_o, n206_o, n205_o, n204_o};
  assign n209_o = {n208_o, n203_o};
  assign n210_o = expoperationsel[0];
  assign n211_o = {n209_o, n210_o};
  assign n212_o = newx[6:3];
  assign n214_o = {2'b00, n212_o};
  assign n215_o = exponentresultfar0_d2 + exponentupdate;
  assign n216_o = {exponentresultfar1, fracresultfar1};
  assign n218_o = selectclosepath_d2 == 1'b1;
  always @*
    case (n218_o)
      1'b1: n219_o = resultbeforeroundclose;
      default: n219_o = resultbeforeroundfar;
    endcase
  assign n221_o = selectclosepath_d2 == 1'b1;
  always @*
    case (n221_o)
      1'b1: n222_o = roundclose;
      default: n222_o = roundfar;
    endcase
  assign n223_o = selectclosepath_d1 & resultcloseiszero;
  assign fpsub_4_3_f300_uid2_finalroundadd_n225 = fpsub_4_3_f300_uid2_finalroundadd_r; // (signal)
  intadder_9_f300_uid13333 fpsub_4_3_f300_uid2_finalroundadd (
    .clk(clk),
    .x(resultbeforeround),
    .y(n224_o),
    .cin(round),
    .r(fpsub_4_3_f300_uid2_finalroundadd_r));
  assign n228_o = resultrounded[8:7];
  assign n229_o = ~zerofromclose_d1;
  assign n231_o = {n229_o, 1'b0};
  assign n233_o = underflowoverflow == 2'b01;
  assign n236_o = underflowoverflow == 2'b10;
  assign n238_o = underflowoverflow == 2'b11;
  assign n239_o = n236_o | n238_o;
  assign n240_o = ~zerofromclose_d1;
  assign n242_o = {1'b0, n240_o};
  assign n243_o = {n239_o, n233_o};
  always @*
    case (n243_o)
      2'b10: n244_o = 2'b00;
      2'b01: n244_o = n231_o;
      default: n244_o = n242_o;
    endcase
  assign n245_o = resultrounded[6:0];
  assign n246_o = {syncressign_d2, n245_o};
  assign n247_o = resultnoexn[9:8];
  assign n249_o = syncexnxy_d2 == 4'b0101;
  assign n251_o = {1'b1, synceffsub_d2};
  assign n253_o = syncexnxy_d2 == 4'b1010;
  assign n256_o = syncexnxy_d2 == 4'b1110;
  assign n257_o = syncexnxy_d2[3:2];
  assign n258_o = {n256_o, n253_o, n249_o};
  always @*
    case (n258_o)
      3'b100: n259_o = 2'b11;
      3'b010: n259_o = n251_o;
      3'b001: n259_o = n247_o;
      default: n259_o = n257_o;
    endcase
  assign n260_o = resultnoexn[7];
  assign n262_o = syncexnxy_d2 == 4'b0101;
  assign n263_o = syncx_d2[7];
  assign n264_o = n263_o & syncsigny_d2;
  assign n266_o = syncexnxy_d2 == 4'b0000;
  assign n267_o = syncx_d2[7];
  assign n268_o = {n266_o, n262_o};
  always @*
    case (n268_o)
      2'b10: n269_o = n264_o;
      2'b01: n269_o = n260_o;
      default: n269_o = n267_o;
    endcase
  assign n270_o = resultnoexn[6:0];
  assign n272_o = syncexnxy_d2 == 4'b0101;
  assign n273_o = syncx_d2[6:0];
  always @*
    case (n272_o)
      1'b1: n274_o = n270_o;
      default: n274_o = n273_o;
    endcase
  assign n275_o = {exnr, sgnr};
  assign n276_o = {n275_o, expsigr};
  always @(posedge clk)
    n277_q <= newx;
  always @(posedge clk)
    n278_q <= effsub;
  always @(posedge clk)
    n279_q <= effsub_d1;
  always @(posedge clk)
    n280_q <= selectclosepath;
  always @(posedge clk)
    n281_q <= selectclosepath_d1;
  always @(posedge clk)
    n282_q <= exponentresultclose;
  always @(posedge clk)
    n283_q <= exponentresultfar0;
  always @(posedge clk)
    n284_q <= exponentresultfar0_d1;
  always @(posedge clk)
    n285_q <= zerofromclose;
  always @(posedge clk)
    n286_q <= synceffsub;
  always @(posedge clk)
    n287_q <= synceffsub_d1;
  always @(posedge clk)
    n288_q <= syncx;
  always @(posedge clk)
    n289_q <= syncx_d1;
  always @(posedge clk)
    n290_q <= syncsigny;
  always @(posedge clk)
    n291_q <= syncsigny_d1;
  always @(posedge clk)
    n292_q <= syncressign;
  always @(posedge clk)
    n293_q <= syncressign_d1;
  assign n294_o = {n244_o, n246_o};
  always @(posedge clk)
    n295_q <= syncexnxy;
  always @(posedge clk)
    n296_q <= syncexnxy_d1;
endmodule

