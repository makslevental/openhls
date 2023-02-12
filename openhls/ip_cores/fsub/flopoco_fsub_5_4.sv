module intadder_11_f300_uid1333333
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

module intadder_8_f300_uid100000000000000
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
  wire [7:0] n435_o;
  wire [7:0] n436_o;
  wire [7:0] n437_o;
  reg [7:0] n438_q;
  reg [7:0] n439_q;
  reg [7:0] n440_q;
  reg [7:0] n441_q;
  assign r = rtmp;
  assign rtmp = n437_o; // (signal)
  assign x_d1 = n438_q; // (signal)
  assign x_d2 = n439_q; // (signal)
  assign y_d1 = n440_q; // (signal)
  assign y_d2 = n441_q; // (signal)
  assign n435_o = x_d2 + y_d2;
  assign n436_o = {7'b0, cin};  //  uext
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

module rightshiftersticky5_by_max_7_f300_uid88888888888888
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
  wire [6:0] n374_o;
  wire [3:0] n376_o;
  wire n378_o;
  wire n379_o;
  wire n380_o;
  wire n381_o;
  wire n383_o;
  wire n384_o;
  wire [6:0] n385_o;
  wire [2:0] n386_o;
  wire [6:0] n388_o;
  wire [1:0] n390_o;
  wire n392_o;
  wire n393_o;
  wire n394_o;
  wire n395_o;
  wire n396_o;
  wire n398_o;
  wire n399_o;
  wire [6:0] n400_o;
  wire [4:0] n401_o;
  wire [6:0] n403_o;
  wire n405_o;
  wire n407_o;
  wire n408_o;
  wire n409_o;
  wire n410_o;
  wire n411_o;
  wire n413_o;
  wire n414_o;
  wire [6:0] n415_o;
  wire [5:0] n416_o;
  wire [6:0] n418_o;
  reg [2:0] n419_q;
  reg [2:0] n420_q;
  reg [6:0] n421_q;
  reg [6:0] n422_q;
  reg n423_q;
  reg [6:0] n424_q;
  reg [6:0] n425_q;
  assign r = level0;
  assign sticky = stk0;
  assign ps = s; // (signal)
  assign ps_d1 = n419_q; // (signal)
  assign ps_d2 = n420_q; // (signal)
  assign xpadded = n374_o; // (signal)
  assign level3 = xpadded; // (signal)
  assign level3_d1 = n421_q; // (signal)
  assign stk2 = n381_o; // (signal)
  assign level2 = n385_o; // (signal)
  assign level2_d1 = n422_q; // (signal)
  assign stk1 = n396_o; // (signal)
  assign stk1_d1 = n423_q; // (signal)
  assign level1 = n400_o; // (signal)
  assign level1_d1 = n424_q; // (signal)
  assign level1_d2 = n425_q; // (signal)
  assign stk0 = n411_o; // (signal)
  assign level0 = n415_o; // (signal)
  assign n374_o = {x, 2'b00};
  assign n376_o = level3_d1[3:0];
  assign n378_o = n376_o != 4'b0000;
  assign n379_o = ps_d1[2];
  assign n380_o = n378_o & n379_o;
  assign n381_o = n380_o ? 1'b1 : 1'b0;
  assign n383_o = ps[2];
  assign n384_o = ~n383_o;
  assign n385_o = n384_o ? level3 : n388_o;
  assign n386_o = level3[6:4];
  assign n388_o = {4'b0000, n386_o};
  assign n390_o = level2_d1[1:0];
  assign n392_o = n390_o != 2'b00;
  assign n393_o = ps_d1[1];
  assign n394_o = n392_o & n393_o;
  assign n395_o = n394_o | stk2;
  assign n396_o = n395_o ? 1'b1 : 1'b0;
  assign n398_o = ps[1];
  assign n399_o = ~n398_o;
  assign n400_o = n399_o ? level2 : n403_o;
  assign n401_o = level2[6:2];
  assign n403_o = {2'b00, n401_o};
  assign n405_o = level1_d2[0];
  assign n407_o = n405_o != 1'b0;
  assign n408_o = ps_d2[0];
  assign n409_o = n407_o & n408_o;
  assign n410_o = n409_o | stk1_d1;
  assign n411_o = n410_o ? 1'b1 : 1'b0;
  assign n413_o = ps[0];
  assign n414_o = ~n413_o;
  assign n415_o = n414_o ? level1 : n418_o;
  assign n416_o = level1[6:1];
  assign n418_o = {1'b0, n416_o};
  always @(posedge clk)
    n419_q <= ps;
  always @(posedge clk)
    n420_q <= ps_d1;
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

module normalizer_z_6_6_6_f300_uid666666
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
  wire [3:0] n323_o;
  wire n325_o;
  wire n326_o;
  wire n328_o;
  wire [5:0] n329_o;
  wire [1:0] n330_o;
  wire [5:0] n332_o;
  wire [1:0] n334_o;
  wire n336_o;
  wire n337_o;
  wire n339_o;
  wire [5:0] n340_o;
  wire [3:0] n341_o;
  wire [5:0] n343_o;
  wire n345_o;
  wire n347_o;
  wire n348_o;
  wire n350_o;
  wire [5:0] n351_o;
  wire [4:0] n352_o;
  wire [5:0] n354_o;
  wire [1:0] n355_o;
  wire [2:0] n356_o;
  reg [5:0] n357_q;
  reg [5:0] n358_q;
  reg n359_q;
  assign count = scount;
  assign r = level0;
  assign level3 = x; // (signal)
  assign level3_d1 = n357_q; // (signal)
  assign count2 = n326_o; // (signal)
  assign level2 = n329_o; // (signal)
  assign count1 = n337_o; // (signal)
  assign level1 = n340_o; // (signal)
  assign level1_d1 = n358_q; // (signal)
  assign count0 = n348_o; // (signal)
  assign count0_d1 = n359_q; // (signal)
  assign level0 = n351_o; // (signal)
  assign scount = n356_o; // (signal)
  assign n323_o = level3_d1[5:2];
  assign n325_o = n323_o == 4'b0000;
  assign n326_o = n325_o ? 1'b1 : 1'b0;
  assign n328_o = ~count2;
  assign n329_o = n328_o ? level3_d1 : n332_o;
  assign n330_o = level3_d1[1:0];
  assign n332_o = {n330_o, 4'b0000};
  assign n334_o = level2[5:4];
  assign n336_o = n334_o == 2'b00;
  assign n337_o = n336_o ? 1'b1 : 1'b0;
  assign n339_o = ~count1;
  assign n340_o = n339_o ? level2 : n343_o;
  assign n341_o = level2[3:0];
  assign n343_o = {n341_o, 2'b00};
  assign n345_o = level1[5];
  assign n347_o = n345_o == 1'b0;
  assign n348_o = n347_o ? 1'b1 : 1'b0;
  assign n350_o = ~count0_d1;
  assign n351_o = n350_o ? level1_d1 : n354_o;
  assign n352_o = level1_d1[4:0];
  assign n354_o = {n352_o, 1'b0};
  assign n355_o = {count2, count1};
  assign n356_o = {n355_o, count0};
  always @(posedge clk)
    n357_q <= level3;
  always @(posedge clk)
    n358_q <= level1;
  always @(posedge clk)
    n359_q <= count0;
endmodule

module intdualsub_7_f300_uid444444
  (input wire clk,
   input wire [6:0] x,
   input wire [6:0] y,
   output wire [6:0] xmy,
   output wire [6:0] ymx);
  wire [6:0] temprxmy;
  wire [6:0] temprymx;
  wire [6:0] n303_o;
  wire [6:0] n304_o;
  wire [6:0] n307_o;
  wire [6:0] n308_o;
  wire [6:0] n309_o;
  wire [6:0] n312_o;
  assign xmy = temprxmy;
  assign ymx = temprymx;
  assign temprxmy = n307_o; // (signal)
  assign temprymx = n312_o; // (signal)
  assign n303_o = ~y;
  assign n304_o = x + n303_o;
  assign n307_o = n304_o + 7'b0000001;
  assign n308_o = ~x;
  assign n309_o = y + n308_o;
  assign n312_o = n309_o + 7'b0000001;
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
  wire [5:0] signedexponentx;
  wire [5:0] signedexponenty;
  wire [5:0] exponentdifferencexy;
  wire [4:0] exponentdifferenceyx;
  wire swap;
  wire [11:0] my;
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
  wire [1:0] n50_o;
  wire n51_o;
  wire n52_o;
  wire [2:0] n53_o;
  wire [8:0] n54_o;
  wire [11:0] n55_o;
  wire [11:0] n56_o;
  wire [11:0] n57_o;
  wire [4:0] n58_o;
  wire [4:0] n59_o;
  wire n60_o;
  wire n61_o;
  wire n62_o;
  wire [2:0] n63_o;
  wire n64_o;
  wire [2:0] n65_o;
  wire n67_o;
  wire n68_o;
  wire n69_o;
  wire [3:0] n70_o;
  wire n72_o;
  wire n73_o;
  wire [1:0] n75_o;
  wire [1:0] n76_o;
  wire [3:0] n77_o;
  wire n78_o;
  wire [3:0] n79_o;
  wire [5:0] n81_o;
  wire [6:0] n83_o;
  wire n84_o;
  wire [3:0] n85_o;
  wire [5:0] n87_o;
  wire [6:0] n89_o;
  wire n91_o;
  wire [3:0] n92_o;
  wire [6:0] n94_o;
  reg [6:0] n95_o;
  wire [6:0] fpsub_5_4_f300_uid2_dualsubclose_n96;
  wire [6:0] fpsub_5_4_f300_uid2_dualsubclose_n97;
  wire [6:0] fpsub_5_4_f300_uid2_dualsubclose_xmy;
  wire [6:0] fpsub_5_4_f300_uid2_dualsubclose_ymx;
  wire n102_o;
  wire [5:0] n103_o;
  wire n104_o;
  wire [5:0] n105_o;
  wire [5:0] n106_o;
  wire n109_o;
  wire n110_o;
  wire n111_o;
  wire n112_o;
  wire n113_o;
  wire n114_o;
  wire [2:0] norm_n115;
  wire [5:0] norm_n116;
  wire [2:0] norm_count;
  wire [5:0] norm_r;
  wire n121_o;
  wire n122_o;
  wire n123_o;
  wire n126_o;
  wire n127_o;
  wire [4:0] n129_o;
  wire [6:0] n131_o;
  wire [6:0] n133_o;
  wire [6:0] n134_o;
  wire [3:0] n135_o;
  wire [10:0] n136_o;
  wire [3:0] n137_o;
  wire [4:0] n139_o;
  wire [6:0] rightshiftercomponent_n140;
  wire rightshiftercomponent_n141;
  wire [6:0] rightshiftercomponent_r;
  wire rightshiftercomponent_sticky;
  wire [7:0] n147_o;
  wire [3:0] n148_o;
  wire [3:0] n149_o;
  wire [7:0] n150_o;
  wire [7:0] n151_o;
  wire [3:0] n152_o;
  wire [5:0] n154_o;
  wire [7:0] n156_o;
  wire n157_o;
  wire n158_o;
  wire [7:0] fpsub_5_4_f300_uid2_fracaddfar_n159;
  wire [7:0] fpsub_5_4_f300_uid2_fracaddfar_r;
  wire [1:0] n162_o;
  wire [3:0] n163_o;
  wire n165_o;
  wire [3:0] n166_o;
  wire [3:0] n167_o;
  wire n169_o;
  wire [3:0] n170_o;
  wire [3:0] n171_o;
  wire n172_o;
  wire n174_o;
  wire n175_o;
  wire n176_o;
  wire n178_o;
  wire n179_o;
  wire n180_o;
  wire n182_o;
  wire n183_o;
  wire n184_o;
  wire n185_o;
  wire n187_o;
  wire n188_o;
  wire n189_o;
  wire n190_o;
  wire n191_o;
  wire n192_o;
  wire n193_o;
  wire n194_o;
  wire n195_o;
  wire n198_o;
  wire [1:0] n199_o;
  wire n202_o;
  wire [1:0] n203_o;
  wire n205_o;
  wire n206_o;
  wire n207_o;
  wire n208_o;
  wire n209_o;
  wire n210_o;
  wire [3:0] n211_o;
  wire [1:0] n212_o;
  wire [5:0] n213_o;
  wire n214_o;
  wire [6:0] n215_o;
  wire [4:0] n216_o;
  wire [6:0] n218_o;
  wire [6:0] n219_o;
  wire [10:0] n220_o;
  wire n222_o;
  reg [10:0] n223_o;
  wire n225_o;
  reg n226_o;
  wire n227_o;
  localparam [10:0] n228_o = 11'b00000000000;
  wire [10:0] fpsub_5_4_f300_uid2_finalroundadd_n229;
  wire [10:0] fpsub_5_4_f300_uid2_finalroundadd_r;
  wire [1:0] n232_o;
  wire n233_o;
  wire [1:0] n235_o;
  wire n237_o;
  wire n240_o;
  wire n242_o;
  wire n243_o;
  wire n244_o;
  wire [1:0] n246_o;
  wire [1:0] n247_o;
  reg [1:0] n248_o;
  wire [8:0] n249_o;
  wire [9:0] n250_o;
  wire [1:0] n251_o;
  wire n253_o;
  wire [1:0] n255_o;
  wire n257_o;
  wire n260_o;
  wire [1:0] n261_o;
  wire [2:0] n262_o;
  reg [1:0] n263_o;
  wire n264_o;
  wire n266_o;
  wire n267_o;
  wire n268_o;
  wire n270_o;
  wire n271_o;
  wire [1:0] n272_o;
  reg n273_o;
  wire [8:0] n274_o;
  wire n276_o;
  wire [8:0] n277_o;
  reg [8:0] n278_o;
  wire [2:0] n279_o;
  wire [11:0] n280_o;
  reg [11:0] n281_q;
  reg n282_q;
  reg n283_q;
  reg n284_q;
  reg n285_q;
  reg [6:0] n286_q;
  reg [6:0] n287_q;
  reg [6:0] n288_q;
  reg n289_q;
  reg n290_q;
  reg n291_q;
  reg [11:0] n292_q;
  reg [11:0] n293_q;
  reg n294_q;
  reg n295_q;
  reg n296_q;
  reg n297_q;
  wire [11:0] n298_o;
  reg [3:0] n299_q;
  reg [3:0] n300_q;
  assign R = n280_o;
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
  assign newx_d1 = n281_q; // (signal)
  assign newy = n57_o; // (signal)
  assign exponentdifference = n58_o; // (signal)
  assign shiftedout = n62_o; // (signal)
  assign shiftval = n65_o; // (signal)
  assign effsub = n69_o; // (signal)
  assign effsub_d1 = n282_q; // (signal)
  assign effsub_d2 = n283_q; // (signal)
  assign selectclosepath = n73_o; // (signal)
  assign selectclosepath_d1 = n284_q; // (signal)
  assign selectclosepath_d2 = n285_q; // (signal)
  assign sdexnxy = n77_o; // (signal)
  assign pipesigny = n78_o; // (signal)
  assign fracxclose1 = n83_o; // (signal)
  assign fracyclose1 = n95_o; // (signal)
  assign fracrclosexmy = fpsub_5_4_f300_uid2_dualsubclose_n96; // (signal)
  assign fracrcloseymx = fpsub_5_4_f300_uid2_dualsubclose_n97; // (signal)
  assign fracsignclose = n102_o; // (signal)
  assign fracrclose1 = n105_o; // (signal)
  assign ressign = n111_o; // (signal)
  assign nzerosnew = norm_n115; // (signal)
  assign shiftedfrac = norm_n116; // (signal)
  assign roundclose0 = n123_o; // (signal)
  assign resultcloseiszero0 = n127_o; // (signal)
  assign exponentresultclose = n134_o; // (signal)
  assign exponentresultclose_d1 = n286_q; // (signal)
  assign resultbeforeroundclose = n136_o; // (signal)
  assign roundclose = roundclose0; // (signal)
  assign resultcloseiszero = resultcloseiszero0; // (signal)
  assign fracnewy = n139_o; // (signal)
  assign shiftedfracy = rightshiftercomponent_n140; // (signal)
  assign sticky = rightshiftercomponent_n141; // (signal)
  assign fracyfar = n147_o; // (signal)
  assign effsubvector = n150_o; // (signal)
  assign fracyfarxorop = n151_o; // (signal)
  assign fracxfar = n156_o; // (signal)
  assign cinaddfar = n158_o; // (signal)
  assign fracresultfar0 = fpsub_5_4_f300_uid2_fracaddfar_n159; // (signal)
  assign fracresultfarnormstage = fracresultfar0; // (signal)
  assign fracleadingbits = n162_o; // (signal)
  assign fracresultfar1 = n166_o; // (signal)
  assign fracresultroundbit = n175_o; // (signal)
  assign fracresultstickybit = n183_o; // (signal)
  assign roundfar1 = n195_o; // (signal)
  assign expoperationsel = n199_o; // (signal)
  assign exponentupdate = n215_o; // (signal)
  assign exponentresultfar0 = n218_o; // (signal)
  assign exponentresultfar0_d1 = n287_q; // (signal)
  assign exponentresultfar0_d2 = n288_q; // (signal)
  assign exponentresultfar1 = n219_o; // (signal)
  assign resultbeforeroundfar = n220_o; // (signal)
  assign roundfar = roundfar1; // (signal)
  assign resultbeforeround = n223_o; // (signal)
  assign round = n226_o; // (signal)
  assign zerofromclose = n227_o; // (signal)
  assign zerofromclose_d1 = n289_q; // (signal)
  assign resultrounded = fpsub_5_4_f300_uid2_finalroundadd_n229; // (signal)
  assign synceffsub = effsub; // (signal)
  assign synceffsub_d1 = n290_q; // (signal)
  assign synceffsub_d2 = n291_q; // (signal)
  assign syncx = newx; // (signal)
  assign syncx_d1 = n292_q; // (signal)
  assign syncx_d2 = n293_q; // (signal)
  assign syncsigny = pipesigny; // (signal)
  assign syncsigny_d1 = n294_q; // (signal)
  assign syncsigny_d2 = n295_q; // (signal)
  assign syncressign = ressign; // (signal)
  assign syncressign_d1 = n296_q; // (signal)
  assign syncressign_d2 = n297_q; // (signal)
  assign underflowoverflow = n232_o; // (signal)
  assign resultnoexn = n298_o; // (signal)
  assign syncexnxy = sdexnxy; // (signal)
  assign syncexnxy_d1 = n299_q; // (signal)
  assign syncexnxy_d2 = n300_q; // (signal)
  assign exnr = n263_o; // (signal)
  assign sgnr = n273_o; // (signal)
  assign expsigr = n278_o; // (signal)
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
  assign n50_o = iny[11:10];
  assign n51_o = iny[9];
  assign n52_o = ~n51_o;
  assign n53_o = {n50_o, n52_o};
  assign n54_o = iny[8:0];
  assign n55_o = {n53_o, n54_o};
  assign n56_o = swap ? my : inx;
  assign n57_o = swap ? inx : my;
  assign n58_o = swap ? exponentdifferenceyx : n59_o;
  assign n59_o = exponentdifferencexy[4:0];
  assign n60_o = exponentdifference[4];
  assign n61_o = exponentdifference[3];
  assign n62_o = n60_o | n61_o;
  assign n63_o = exponentdifference[2:0];
  assign n64_o = ~shiftedout;
  assign n65_o = n64_o ? n63_o : 3'b111;
  assign n67_o = newx[9];
  assign n68_o = newy[9];
  assign n69_o = n67_o ^ n68_o;
  assign n70_o = exponentdifference[4:1];
  assign n72_o = n70_o == 4'b0000;
  assign n73_o = n72_o ? effsub : 1'b0;
  assign n75_o = newx[11:10];
  assign n76_o = newy[11:10];
  assign n77_o = {n75_o, n76_o};
  assign n78_o = newy[9];
  assign n79_o = newx[3:0];
  assign n81_o = {2'b01, n79_o};
  assign n83_o = {n81_o, 1'b0};
  assign n84_o = exponentdifference[0];
  assign n85_o = newy[3:0];
  assign n87_o = {2'b01, n85_o};
  assign n89_o = {n87_o, 1'b0};
  assign n91_o = n84_o == 1'b0;
  assign n92_o = newy[3:0];
  assign n94_o = {3'b001, n92_o};
  always @*
    case (n91_o)
      1'b1: n95_o = n89_o;
      default: n95_o = n94_o;
    endcase
  assign fpsub_5_4_f300_uid2_dualsubclose_n96 = fpsub_5_4_f300_uid2_dualsubclose_xmy; // (signal)
  assign fpsub_5_4_f300_uid2_dualsubclose_n97 = fpsub_5_4_f300_uid2_dualsubclose_ymx; // (signal)
  intdualsub_7_f300_uid444444 fpsub_5_4_f300_uid2_dualsubclose (
    .clk(clk),
    .x(fracxclose1),
    .y(fracyclose1),
    .xmy(fpsub_5_4_f300_uid2_dualsubclose_xmy),
    .ymx(fpsub_5_4_f300_uid2_dualsubclose_ymx));
  assign n102_o = fracrclosexmy[6];
  assign n103_o = fracrclosexmy[5:0];
  assign n104_o = ~fracsignclose;
  assign n105_o = n104_o ? n103_o : n106_o;
  assign n106_o = fracrcloseymx[5:0];
  assign n109_o = fracrclose1 == 6'b000000;
  assign n110_o = selectclosepath & n109_o;
  assign n111_o = n110_o ? 1'b0 : n114_o;
  assign n112_o = newx[9];
  assign n113_o = selectclosepath & fracsignclose;
  assign n114_o = n112_o ^ n113_o;
  assign norm_n115 = norm_count; // (signal)
  assign norm_n116 = norm_r; // (signal)
  normalizer_z_6_6_6_f300_uid666666 norm (
    .clk(clk),
    .x(fracrclose1),
    .count(norm_count),
    .r(norm_r));
  assign n121_o = shiftedfrac[0];
  assign n122_o = shiftedfrac[1];
  assign n123_o = n121_o & n122_o;
  assign n126_o = nzerosnew == 3'b111;
  assign n127_o = n126_o ? 1'b1 : 1'b0;
  assign n129_o = newx_d1[8:4];
  assign n131_o = {2'b00, n129_o};
  assign n133_o = {4'b0000, nzerosnew};
  assign n134_o = n131_o - n133_o;
  assign n135_o = shiftedfrac[4:1];
  assign n136_o = {exponentresultclose_d1, n135_o};
  assign n137_o = newy[3:0];
  assign n139_o = {1'b1, n137_o};
  assign rightshiftercomponent_n140 = rightshiftercomponent_r; // (signal)
  assign rightshiftercomponent_n141 = rightshiftercomponent_sticky; // (signal)
  rightshiftersticky5_by_max_7_f300_uid88888888888888 rightshiftercomponent (
    .clk(clk),
    .x(fracnewy),
    .s(shiftval),
    .r(rightshiftercomponent_r),
    .sticky(rightshiftercomponent_sticky));
  assign n147_o = {1'b0, shiftedfracy};
  assign n148_o = {effsub, effsub, effsub, effsub};
  assign n149_o = {effsub, effsub, effsub, effsub};
  assign n150_o = {n148_o, n149_o};
  assign n151_o = fracyfar ^ effsubvector;
  assign n152_o = newx[3:0];
  assign n154_o = {2'b01, n152_o};
  assign n156_o = {n154_o, 2'b00};
  assign n157_o = ~sticky;
  assign n158_o = effsub_d2 & n157_o;
  assign fpsub_5_4_f300_uid2_fracaddfar_n159 = fpsub_5_4_f300_uid2_fracaddfar_r; // (signal)
  intadder_8_f300_uid100000000000000 fpsub_5_4_f300_uid2_fracaddfar (
    .clk(clk),
    .x(fracxfar),
    .y(fracyfarxorop),
    .cin(cinaddfar),
    .r(fpsub_5_4_f300_uid2_fracaddfar_r));
  assign n162_o = fracresultfarnormstage[7:6];
  assign n163_o = fracresultfarnormstage[4:1];
  assign n165_o = fracleadingbits == 2'b00;
  assign n166_o = n165_o ? n163_o : n170_o;
  assign n167_o = fracresultfarnormstage[5:2];
  assign n169_o = fracleadingbits == 2'b01;
  assign n170_o = n169_o ? n167_o : n171_o;
  assign n171_o = fracresultfarnormstage[6:3];
  assign n172_o = fracresultfarnormstage[0];
  assign n174_o = fracleadingbits == 2'b00;
  assign n175_o = n174_o ? n172_o : n179_o;
  assign n176_o = fracresultfarnormstage[1];
  assign n178_o = fracleadingbits == 2'b01;
  assign n179_o = n178_o ? n176_o : n180_o;
  assign n180_o = fracresultfarnormstage[2];
  assign n182_o = fracleadingbits == 2'b00;
  assign n183_o = n182_o ? sticky : n188_o;
  assign n184_o = fracresultfarnormstage[0];
  assign n185_o = n184_o | sticky;
  assign n187_o = fracleadingbits == 2'b01;
  assign n188_o = n187_o ? n185_o : n192_o;
  assign n189_o = fracresultfarnormstage[1];
  assign n190_o = fracresultfarnormstage[0];
  assign n191_o = n189_o | n190_o;
  assign n192_o = n191_o | sticky;
  assign n193_o = fracresultfar1[0];
  assign n194_o = fracresultstickybit | n193_o;
  assign n195_o = fracresultroundbit & n194_o;
  assign n198_o = fracleadingbits == 2'b00;
  assign n199_o = n198_o ? 2'b11 : n203_o;
  assign n202_o = fracleadingbits == 2'b01;
  assign n203_o = n202_o ? 2'b00 : 2'b01;
  assign n205_o = expoperationsel[1];
  assign n206_o = expoperationsel[1];
  assign n207_o = expoperationsel[1];
  assign n208_o = expoperationsel[1];
  assign n209_o = expoperationsel[1];
  assign n210_o = expoperationsel[1];
  assign n211_o = {n210_o, n209_o, n208_o, n207_o};
  assign n212_o = {n206_o, n205_o};
  assign n213_o = {n211_o, n212_o};
  assign n214_o = expoperationsel[0];
  assign n215_o = {n213_o, n214_o};
  assign n216_o = newx[8:4];
  assign n218_o = {2'b00, n216_o};
  assign n219_o = exponentresultfar0_d2 + exponentupdate;
  assign n220_o = {exponentresultfar1, fracresultfar1};
  assign n222_o = selectclosepath_d2 == 1'b1;
  always @*
    case (n222_o)
      1'b1: n223_o = resultbeforeroundclose;
      default: n223_o = resultbeforeroundfar;
    endcase
  assign n225_o = selectclosepath_d2 == 1'b1;
  always @*
    case (n225_o)
      1'b1: n226_o = roundclose;
      default: n226_o = roundfar;
    endcase
  assign n227_o = selectclosepath_d1 & resultcloseiszero;
  assign fpsub_5_4_f300_uid2_finalroundadd_n229 = fpsub_5_4_f300_uid2_finalroundadd_r; // (signal)
  intadder_11_f300_uid1333333 fpsub_5_4_f300_uid2_finalroundadd (
    .clk(clk),
    .x(resultbeforeround),
    .y(n228_o),
    .cin(round),
    .r(fpsub_5_4_f300_uid2_finalroundadd_r));
  assign n232_o = resultrounded[10:9];
  assign n233_o = ~zerofromclose_d1;
  assign n235_o = {n233_o, 1'b0};
  assign n237_o = underflowoverflow == 2'b01;
  assign n240_o = underflowoverflow == 2'b10;
  assign n242_o = underflowoverflow == 2'b11;
  assign n243_o = n240_o | n242_o;
  assign n244_o = ~zerofromclose_d1;
  assign n246_o = {1'b0, n244_o};
  assign n247_o = {n243_o, n237_o};
  always @*
    case (n247_o)
      2'b10: n248_o = 2'b00;
      2'b01: n248_o = n235_o;
      default: n248_o = n246_o;
    endcase
  assign n249_o = resultrounded[8:0];
  assign n250_o = {syncressign_d2, n249_o};
  assign n251_o = resultnoexn[11:10];
  assign n253_o = syncexnxy_d2 == 4'b0101;
  assign n255_o = {1'b1, synceffsub_d2};
  assign n257_o = syncexnxy_d2 == 4'b1010;
  assign n260_o = syncexnxy_d2 == 4'b1110;
  assign n261_o = syncexnxy_d2[3:2];
  assign n262_o = {n260_o, n257_o, n253_o};
  always @*
    case (n262_o)
      3'b100: n263_o = 2'b11;
      3'b010: n263_o = n255_o;
      3'b001: n263_o = n251_o;
      default: n263_o = n261_o;
    endcase
  assign n264_o = resultnoexn[9];
  assign n266_o = syncexnxy_d2 == 4'b0101;
  assign n267_o = syncx_d2[9];
  assign n268_o = n267_o & syncsigny_d2;
  assign n270_o = syncexnxy_d2 == 4'b0000;
  assign n271_o = syncx_d2[9];
  assign n272_o = {n270_o, n266_o};
  always @*
    case (n272_o)
      2'b10: n273_o = n268_o;
      2'b01: n273_o = n264_o;
      default: n273_o = n271_o;
    endcase
  assign n274_o = resultnoexn[8:0];
  assign n276_o = syncexnxy_d2 == 4'b0101;
  assign n277_o = syncx_d2[8:0];
  always @*
    case (n276_o)
      1'b1: n278_o = n274_o;
      default: n278_o = n277_o;
    endcase
  assign n279_o = {exnr, sgnr};
  assign n280_o = {n279_o, expsigr};
  always @(posedge clk)
    n281_q <= newx;
  always @(posedge clk)
    n282_q <= effsub;
  always @(posedge clk)
    n283_q <= effsub_d1;
  always @(posedge clk)
    n284_q <= selectclosepath;
  always @(posedge clk)
    n285_q <= selectclosepath_d1;
  always @(posedge clk)
    n286_q <= exponentresultclose;
  always @(posedge clk)
    n287_q <= exponentresultfar0;
  always @(posedge clk)
    n288_q <= exponentresultfar0_d1;
  always @(posedge clk)
    n289_q <= zerofromclose;
  always @(posedge clk)
    n290_q <= synceffsub;
  always @(posedge clk)
    n291_q <= synceffsub_d1;
  always @(posedge clk)
    n292_q <= syncx;
  always @(posedge clk)
    n293_q <= syncx_d1;
  always @(posedge clk)
    n294_q <= syncsigny;
  always @(posedge clk)
    n295_q <= syncsigny_d1;
  always @(posedge clk)
    n296_q <= syncressign;
  always @(posedge clk)
    n297_q <= syncressign_d1;
  assign n298_o = {n248_o, n250_o};
  always @(posedge clk)
    n299_q <= syncexnxy;
  always @(posedge clk)
    n300_q <= syncexnxy_d1;
endmodule

