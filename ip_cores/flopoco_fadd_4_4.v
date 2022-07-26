module _intadder_10_f300_uid13
  (input  clk,
   input  [9:0] x,
   input  [9:0] y,
   input  cin,
   output [9:0] r);
  wire [9:0] rtmp;
  wire [9:0] y_d1;
  wire [9:0] y_d2;
  reg [9:0] n439_q;
  reg [9:0] n440_q;
  wire [9:0] n441_o;
  wire [9:0] n442_o;
  wire [9:0] n443_o;
  assign r = rtmp;
  /* ip_cores/flopoco_fadd_4_4.vhdl:243:8  */
  assign rtmp = n443_o; // (signal)
  /* ip_cores/flopoco_fadd_4_4.vhdl:244:8  */
  assign y_d1 = n439_q; // (signal)
  /* ip_cores/flopoco_fadd_4_4.vhdl:244:14  */
  assign y_d2 = n440_q; // (signal)
  /* ip_cores/flopoco_fadd_4_4.vhdl:248:10  */
  always @(posedge clk)
    n439_q <= y;
  /* ip_cores/flopoco_fadd_4_4.vhdl:248:10  */
  always @(posedge clk)
    n440_q <= y_d1;
  /* ip_cores/flopoco_fadd_4_4.vhdl:253:14  */
  assign n441_o = x + y_d2;
  /* ip_cores/flopoco_fadd_4_4.vhdl:253:21  */
  assign n442_o = {9'b0, cin};  //  uext
  /* ip_cores/flopoco_fadd_4_4.vhdl:253:21  */
  assign n443_o = n441_o + n442_o;
endmodule

module intadder_8_f300_uid10
  (input  clk,
   input  [7:0] x,
   input  [7:0] y,
   input  cin,
   output [7:0] r);
  wire [7:0] rtmp;
  wire [7:0] x_d1;
  wire [7:0] x_d2;
  wire [7:0] y_d1;
  wire [7:0] y_d2;
  reg [7:0] n425_q;
  reg [7:0] n426_q;
  reg [7:0] n427_q;
  reg [7:0] n428_q;
  wire [7:0] n429_o;
  wire [7:0] n430_o;
  wire [7:0] n431_o;
  assign r = rtmp;
  /* ip_cores/flopoco_fadd_4_4.vhdl:196:8  */
  assign rtmp = n431_o; // (signal)
  /* ip_cores/flopoco_fadd_4_4.vhdl:197:8  */
  assign x_d1 = n425_q; // (signal)
  /* ip_cores/flopoco_fadd_4_4.vhdl:197:14  */
  assign x_d2 = n426_q; // (signal)
  /* ip_cores/flopoco_fadd_4_4.vhdl:198:8  */
  assign y_d1 = n427_q; // (signal)
  /* ip_cores/flopoco_fadd_4_4.vhdl:198:14  */
  assign y_d2 = n428_q; // (signal)
  /* ip_cores/flopoco_fadd_4_4.vhdl:202:10  */
  always @(posedge clk)
    n425_q <= x;
  /* ip_cores/flopoco_fadd_4_4.vhdl:202:10  */
  always @(posedge clk)
    n426_q <= x_d1;
  /* ip_cores/flopoco_fadd_4_4.vhdl:202:10  */
  always @(posedge clk)
    n427_q <= y;
  /* ip_cores/flopoco_fadd_4_4.vhdl:202:10  */
  always @(posedge clk)
    n428_q <= y_d1;
  /* ip_cores/flopoco_fadd_4_4.vhdl:209:17  */
  assign n429_o = x_d2 + y_d2;
  /* ip_cores/flopoco_fadd_4_4.vhdl:209:24  */
  assign n430_o = {7'b0, cin};  //  uext
  /* ip_cores/flopoco_fadd_4_4.vhdl:209:24  */
  assign n431_o = n429_o + n430_o;
endmodule

module rightshiftersticky5_by_max_7_f300_uid8
  (input  clk,
   input  [4:0] x,
   input  [2:0] s,
   output [6:0] r,
   output sticky);
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
  reg [2:0] n363_q;
  reg [2:0] n364_q;
  reg [6:0] n365_q;
  reg [6:0] n366_q;
  reg n367_q;
  reg [6:0] n368_q;
  reg [6:0] n369_q;
  wire [6:0] n371_o;
  wire [3:0] n373_o;
  wire n375_o;
  wire n376_o;
  wire n377_o;
  wire n378_o;
  wire n380_o;
  wire n381_o;
  wire [6:0] n382_o;
  wire [2:0] n383_o;
  wire [6:0] n385_o;
  wire [1:0] n387_o;
  wire n389_o;
  wire n390_o;
  wire n391_o;
  wire n392_o;
  wire n393_o;
  wire n395_o;
  wire n396_o;
  wire [6:0] n397_o;
  wire [4:0] n398_o;
  wire [6:0] n400_o;
  wire n402_o;
  wire n404_o;
  wire n405_o;
  wire n406_o;
  wire n407_o;
  wire n408_o;
  wire n410_o;
  wire n411_o;
  wire [6:0] n412_o;
  wire [5:0] n413_o;
  wire [6:0] n415_o;
  assign r = level0;
  assign sticky = stk0;
  /* ip_cores/flopoco_fadd_4_4.vhdl:131:8  */
  assign ps = s; // (signal)
  /* ip_cores/flopoco_fadd_4_4.vhdl:131:12  */
  assign ps_d1 = n363_q; // (signal)
  /* ip_cores/flopoco_fadd_4_4.vhdl:131:19  */
  assign ps_d2 = n364_q; // (signal)
  /* ip_cores/flopoco_fadd_4_4.vhdl:132:8  */
  assign xpadded = n371_o; // (signal)
  /* ip_cores/flopoco_fadd_4_4.vhdl:133:8  */
  assign level3 = xpadded; // (signal)
  /* ip_cores/flopoco_fadd_4_4.vhdl:133:16  */
  assign level3_d1 = n365_q; // (signal)
  /* ip_cores/flopoco_fadd_4_4.vhdl:134:8  */
  assign stk2 = n378_o; // (signal)
  /* ip_cores/flopoco_fadd_4_4.vhdl:135:8  */
  assign level2 = n382_o; // (signal)
  /* ip_cores/flopoco_fadd_4_4.vhdl:135:16  */
  assign level2_d1 = n366_q; // (signal)
  /* ip_cores/flopoco_fadd_4_4.vhdl:136:8  */
  assign stk1 = n393_o; // (signal)
  /* ip_cores/flopoco_fadd_4_4.vhdl:136:14  */
  assign stk1_d1 = n367_q; // (signal)
  /* ip_cores/flopoco_fadd_4_4.vhdl:137:8  */
  assign level1 = n397_o; // (signal)
  /* ip_cores/flopoco_fadd_4_4.vhdl:137:16  */
  assign level1_d1 = n368_q; // (signal)
  /* ip_cores/flopoco_fadd_4_4.vhdl:137:27  */
  assign level1_d2 = n369_q; // (signal)
  /* ip_cores/flopoco_fadd_4_4.vhdl:138:8  */
  assign stk0 = n408_o; // (signal)
  /* ip_cores/flopoco_fadd_4_4.vhdl:139:8  */
  assign level0 = n412_o; // (signal)
  /* ip_cores/flopoco_fadd_4_4.vhdl:143:10  */
  always @(posedge clk)
    n363_q <= ps;
  /* ip_cores/flopoco_fadd_4_4.vhdl:143:10  */
  always @(posedge clk)
    n364_q <= ps_d1;
  /* ip_cores/flopoco_fadd_4_4.vhdl:143:10  */
  always @(posedge clk)
    n365_q <= level3;
  /* ip_cores/flopoco_fadd_4_4.vhdl:143:10  */
  always @(posedge clk)
    n366_q <= level2;
  /* ip_cores/flopoco_fadd_4_4.vhdl:143:10  */
  always @(posedge clk)
    n367_q <= stk1;
  /* ip_cores/flopoco_fadd_4_4.vhdl:143:10  */
  always @(posedge clk)
    n368_q <= level1;
  /* ip_cores/flopoco_fadd_4_4.vhdl:143:10  */
  always @(posedge clk)
    n369_q <= level1_d1;
  /* ip_cores/flopoco_fadd_4_4.vhdl:154:16  */
  assign n371_o = {x, 2'b00};
  /* ip_cores/flopoco_fadd_4_4.vhdl:156:31  */
  assign n373_o = level3_d1[3:0];
  /* ip_cores/flopoco_fadd_4_4.vhdl:156:43  */
  assign n375_o = n373_o != 4'b0000;
  /* ip_cores/flopoco_fadd_4_4.vhdl:156:61  */
  assign n376_o = ps_d1[2];
  /* ip_cores/flopoco_fadd_4_4.vhdl:156:52  */
  assign n377_o = n375_o & n376_o;
  /* ip_cores/flopoco_fadd_4_4.vhdl:156:16  */
  assign n378_o = n377_o ? 1'b1 : 1'b0;
  /* ip_cores/flopoco_fadd_4_4.vhdl:157:30  */
  assign n380_o = ps[2];
  /* ip_cores/flopoco_fadd_4_4.vhdl:157:33  */
  assign n381_o = ~n380_o;
  /* ip_cores/flopoco_fadd_4_4.vhdl:157:22  */
  assign n382_o = n381_o ? level3 : n385_o;
  /* ip_cores/flopoco_fadd_4_4.vhdl:157:74  */
  assign n383_o = level3[6:4];
  /* ip_cores/flopoco_fadd_4_4.vhdl:157:66  */
  assign n385_o = {4'b0000, n383_o};
  /* ip_cores/flopoco_fadd_4_4.vhdl:158:31  */
  assign n387_o = level2_d1[1:0];
  /* ip_cores/flopoco_fadd_4_4.vhdl:158:43  */
  assign n389_o = n387_o != 2'b00;
  /* ip_cores/flopoco_fadd_4_4.vhdl:158:59  */
  assign n390_o = ps_d1[1];
  /* ip_cores/flopoco_fadd_4_4.vhdl:158:50  */
  assign n391_o = n389_o & n390_o;
  /* ip_cores/flopoco_fadd_4_4.vhdl:158:68  */
  assign n392_o = n391_o | stk2;
  /* ip_cores/flopoco_fadd_4_4.vhdl:158:16  */
  assign n393_o = n392_o ? 1'b1 : 1'b0;
  /* ip_cores/flopoco_fadd_4_4.vhdl:159:30  */
  assign n395_o = ps[1];
  /* ip_cores/flopoco_fadd_4_4.vhdl:159:33  */
  assign n396_o = ~n395_o;
  /* ip_cores/flopoco_fadd_4_4.vhdl:159:22  */
  assign n397_o = n396_o ? level2 : n400_o;
  /* ip_cores/flopoco_fadd_4_4.vhdl:159:74  */
  assign n398_o = level2[6:2];
  /* ip_cores/flopoco_fadd_4_4.vhdl:159:66  */
  assign n400_o = {2'b00, n398_o};
  /* ip_cores/flopoco_fadd_4_4.vhdl:160:31  */
  assign n402_o = level1_d2[0];
  /* ip_cores/flopoco_fadd_4_4.vhdl:160:43  */
  assign n404_o = n402_o != 1'b0;
  /* ip_cores/flopoco_fadd_4_4.vhdl:160:58  */
  assign n405_o = ps_d2[0];
  /* ip_cores/flopoco_fadd_4_4.vhdl:160:49  */
  assign n406_o = n404_o & n405_o;
  /* ip_cores/flopoco_fadd_4_4.vhdl:160:67  */
  assign n407_o = n406_o | stk1_d1;
  /* ip_cores/flopoco_fadd_4_4.vhdl:160:16  */
  assign n408_o = n407_o ? 1'b1 : 1'b0;
  /* ip_cores/flopoco_fadd_4_4.vhdl:161:30  */
  assign n410_o = ps[0];
  /* ip_cores/flopoco_fadd_4_4.vhdl:161:33  */
  assign n411_o = ~n410_o;
  /* ip_cores/flopoco_fadd_4_4.vhdl:161:22  */
  assign n412_o = n411_o ? level1 : n415_o;
  /* ip_cores/flopoco_fadd_4_4.vhdl:161:74  */
  assign n413_o = level1[6:1];
  /* ip_cores/flopoco_fadd_4_4.vhdl:161:66  */
  assign n415_o = {1'b0, n413_o};
endmodule

module normalizer_z_6_6_6_f300_uid6
  (input  clk,
   input  [5:0] x,
   output [2:0] count,
   output [5:0] r);
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
  reg [5:0] n312_q;
  reg [5:0] n313_q;
  reg n314_q;
  wire [3:0] n316_o;
  wire n318_o;
  wire n319_o;
  wire n321_o;
  wire [5:0] n322_o;
  wire [1:0] n323_o;
  wire [5:0] n325_o;
  wire [1:0] n327_o;
  wire n329_o;
  wire n330_o;
  wire n332_o;
  wire [5:0] n333_o;
  wire [3:0] n334_o;
  wire [5:0] n336_o;
  wire n338_o;
  wire n340_o;
  wire n341_o;
  wire n343_o;
  wire [5:0] n344_o;
  wire [4:0] n345_o;
  wire [5:0] n347_o;
  wire [1:0] n348_o;
  wire [2:0] n349_o;
  assign count = scount;
  assign r = level0;
  /* ip_cores/flopoco_fadd_4_4.vhdl:69:8  */
  assign level3 = x; // (signal)
  /* ip_cores/flopoco_fadd_4_4.vhdl:88:22  */
  assign level3_d1 = n312_q; // (signal)
  /* ip_cores/flopoco_fadd_4_4.vhdl:70:8  */
  assign count2 = n319_o; // (signal)
  /* ip_cores/flopoco_fadd_4_4.vhdl:91:19  */
  assign level2 = n322_o; // (signal)
  /* ip_cores/flopoco_fadd_4_4.vhdl:72:8  */
  assign count1 = n330_o; // (signal)
  /* ip_cores/flopoco_fadd_4_4.vhdl:73:8  */
  assign level1 = n333_o; // (signal)
  /* ip_cores/flopoco_fadd_4_4.vhdl:94:22  */
  assign level1_d1 = n313_q; // (signal)
  /* ip_cores/flopoco_fadd_4_4.vhdl:74:8  */
  assign count0 = n341_o; // (signal)
  /* ip_cores/flopoco_fadd_4_4.vhdl:74:16  */
  assign count0_d1 = n314_q; // (signal)
  /* ip_cores/flopoco_fadd_4_4.vhdl:75:8  */
  assign level0 = n344_o; // (signal)
  /* ip_cores/flopoco_fadd_4_4.vhdl:76:8  */
  assign scount = n349_o; // (signal)
  /* ip_cores/flopoco_fadd_4_4.vhdl:80:10  */
  always @(posedge clk)
    n312_q <= level3;
  /* ip_cores/flopoco_fadd_4_4.vhdl:80:10  */
  always @(posedge clk)
    n313_q <= level1;
  /* ip_cores/flopoco_fadd_4_4.vhdl:80:10  */
  always @(posedge clk)
    n314_q <= count0;
  /* ip_cores/flopoco_fadd_4_4.vhdl:87:31  */
  assign n316_o = level3_d1[5:2];
  /* ip_cores/flopoco_fadd_4_4.vhdl:87:44  */
  assign n318_o = n316_o == 4'b0000;
  /* ip_cores/flopoco_fadd_4_4.vhdl:87:17  */
  assign n319_o = n318_o ? 1'b1 : 1'b0;
  /* ip_cores/flopoco_fadd_4_4.vhdl:88:46  */
  assign n321_o = ~count2;
  /* ip_cores/flopoco_fadd_4_4.vhdl:88:35  */
  assign n322_o = n321_o ? level3_d1 : n325_o;
  /* ip_cores/flopoco_fadd_4_4.vhdl:88:65  */
  assign n323_o = level3_d1[1:0];
  /* ip_cores/flopoco_fadd_4_4.vhdl:88:78  */
  assign n325_o = {n323_o, 4'b0000};
  /* ip_cores/flopoco_fadd_4_4.vhdl:90:28  */
  assign n327_o = level2[5:4];
  /* ip_cores/flopoco_fadd_4_4.vhdl:90:41  */
  assign n329_o = n327_o == 2'b00;
  /* ip_cores/flopoco_fadd_4_4.vhdl:90:17  */
  assign n330_o = n329_o ? 1'b1 : 1'b0;
  /* ip_cores/flopoco_fadd_4_4.vhdl:91:43  */
  assign n332_o = ~count1;
  /* ip_cores/flopoco_fadd_4_4.vhdl:91:32  */
  assign n333_o = n332_o ? level2 : n336_o;
  /* ip_cores/flopoco_fadd_4_4.vhdl:91:59  */
  assign n334_o = level2[3:0];
  /* ip_cores/flopoco_fadd_4_4.vhdl:91:72  */
  assign n336_o = {n334_o, 2'b00};
  /* ip_cores/flopoco_fadd_4_4.vhdl:93:28  */
  assign n338_o = level1[5];
  /* ip_cores/flopoco_fadd_4_4.vhdl:93:41  */
  assign n340_o = n338_o == 1'b0;
  /* ip_cores/flopoco_fadd_4_4.vhdl:93:17  */
  assign n341_o = n340_o ? 1'b1 : 1'b0;
  /* ip_cores/flopoco_fadd_4_4.vhdl:94:49  */
  assign n343_o = ~count0_d1;
  /* ip_cores/flopoco_fadd_4_4.vhdl:94:35  */
  assign n344_o = n343_o ? level1_d1 : n347_o;
  /* ip_cores/flopoco_fadd_4_4.vhdl:94:68  */
  assign n345_o = level1_d1[4:0];
  /* ip_cores/flopoco_fadd_4_4.vhdl:94:81  */
  assign n347_o = {n345_o, 1'b0};
  /* ip_cores/flopoco_fadd_4_4.vhdl:97:21  */
  assign n348_o = {count2, count1};
  /* ip_cores/flopoco_fadd_4_4.vhdl:97:30  */
  assign n349_o = {n348_o, count0};
endmodule

module intdualsub_7_f300_uid4
  (input  clk,
   input  [6:0] x,
   input  [6:0] y,
   output [6:0] xmy,
   output [6:0] ymx);
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
  /* ip_cores/flopoco_fadd_4_4.vhdl:31:8  */
  assign temprxmy = n297_o; // (signal)
  /* ip_cores/flopoco_fadd_4_4.vhdl:32:8  */
  assign temprymx = n302_o; // (signal)
  /* ip_cores/flopoco_fadd_4_4.vhdl:34:21  */
  assign n293_o = ~y;
  /* ip_cores/flopoco_fadd_4_4.vhdl:34:18  */
  assign n294_o = x + n293_o;
  /* ip_cores/flopoco_fadd_4_4.vhdl:34:28  */
  assign n297_o = n294_o + 7'b0000001;
  /* ip_cores/flopoco_fadd_4_4.vhdl:35:21  */
  assign n298_o = ~x;
  /* ip_cores/flopoco_fadd_4_4.vhdl:35:18  */
  assign n299_o = y + n298_o;
  /* ip_cores/flopoco_fadd_4_4.vhdl:35:28  */
  assign n302_o = n299_o + 7'b0000001;
endmodule

module fadd
  (input  clk,
   input  [10:0] X,
   input  [10:0] Y,
   output [10:0] R);
  wire [10:0] inx;
  wire [10:0] iny;
  wire exceptionxsuperiory;
  wire exceptionxequaly;
  wire [4:0] signedexponentx;
  wire [4:0] signedexponenty;
  wire [4:0] exponentdifferencexy;
  wire [3:0] exponentdifferenceyx;
  wire swap;
  wire [10:0] newx;
  wire [10:0] newx_d1;
  wire [10:0] newy;
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
  wire [5:0] exponentresultclose;
  wire [5:0] exponentresultclose_d1;
  wire [9:0] resultbeforeroundclose;
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
  wire [5:0] exponentupdate;
  wire [5:0] exponentresultfar0;
  wire [5:0] exponentresultfar0_d1;
  wire [5:0] exponentresultfar0_d2;
  wire [5:0] exponentresultfar1;
  wire [9:0] resultbeforeroundfar;
  wire roundfar;
  wire [9:0] resultbeforeround;
  wire round;
  wire zerofromclose;
  wire zerofromclose_d1;
  wire [9:0] resultrounded;
  wire synceffsub;
  wire synceffsub_d1;
  wire synceffsub_d2;
  wire [10:0] syncx;
  wire [10:0] syncx_d1;
  wire [10:0] syncx_d2;
  wire syncsigny;
  wire syncsigny_d1;
  wire syncsigny_d2;
  wire syncressign;
  wire syncressign_d1;
  wire syncressign_d2;
  wire [1:0] underflowoverflow;
  wire [10:0] resultnoexn;
  wire [3:0] syncexnxy;
  wire [3:0] syncexnxy_d1;
  wire [3:0] syncexnxy_d2;
  wire [1:0] exnr;
  wire sgnr;
  wire [7:0] expsigr;
  reg [10:0] n24_q;
  reg n25_q;
  reg n26_q;
  reg n27_q;
  reg n28_q;
  reg [5:0] n29_q;
  reg [5:0] n30_q;
  reg [5:0] n31_q;
  reg n32_q;
  reg n33_q;
  reg n34_q;
  reg [10:0] n35_q;
  reg [10:0] n36_q;
  reg n37_q;
  reg n38_q;
  reg n39_q;
  reg n40_q;
  reg [3:0] n41_q;
  reg [3:0] n42_q;
  wire [1:0] n44_o;
  wire [1:0] n45_o;
  wire n46_o;
  wire n47_o;
  wire [1:0] n50_o;
  wire [1:0] n51_o;
  wire n52_o;
  wire n53_o;
  wire [3:0] n55_o;
  wire [4:0] n57_o;
  wire [3:0] n58_o;
  wire [4:0] n60_o;
  wire [4:0] n61_o;
  wire [3:0] n62_o;
  wire [3:0] n63_o;
  wire [3:0] n64_o;
  wire n65_o;
  wire n66_o;
  wire n67_o;
  wire n68_o;
  wire [10:0] n69_o;
  wire [10:0] n70_o;
  wire [3:0] n71_o;
  wire [3:0] n72_o;
  wire n73_o;
  wire [2:0] n74_o;
  wire n75_o;
  wire [2:0] n76_o;
  wire n78_o;
  wire n79_o;
  wire n80_o;
  wire [2:0] n81_o;
  wire n83_o;
  wire n84_o;
  wire [1:0] n86_o;
  wire [1:0] n87_o;
  wire [3:0] n88_o;
  wire n89_o;
  wire [3:0] n90_o;
  wire [5:0] n92_o;
  wire [6:0] n94_o;
  wire n95_o;
  wire [3:0] n96_o;
  wire [5:0] n98_o;
  wire [6:0] n100_o;
  wire n102_o;
  wire [3:0] n103_o;
  wire [6:0] n105_o;
  reg [6:0] n106_o;
  wire [6:0] fpadd_4_4_f300_uid2_dualsubclose_n107;
  wire [6:0] fpadd_4_4_f300_uid2_dualsubclose_n108;
  wire [6:0] fpadd_4_4_f300_uid2_dualsubclose_xmy;
  wire [6:0] fpadd_4_4_f300_uid2_dualsubclose_ymx;
  wire n113_o;
  wire [5:0] n114_o;
  wire n115_o;
  wire [5:0] n116_o;
  wire [5:0] n117_o;
  wire n120_o;
  wire n121_o;
  wire n122_o;
  wire n123_o;
  wire n124_o;
  wire n125_o;
  wire [2:0] norm_n126;
  wire [5:0] norm_n127;
  wire [2:0] norm_count;
  wire [5:0] norm_r;
  wire n132_o;
  wire n133_o;
  wire n134_o;
  wire n137_o;
  wire n138_o;
  wire [3:0] n140_o;
  wire [5:0] n142_o;
  wire [5:0] n144_o;
  wire [5:0] n145_o;
  wire [3:0] n146_o;
  wire [9:0] n147_o;
  wire [3:0] n148_o;
  wire [4:0] n150_o;
  wire [6:0] rightshiftercomponent_n151;
  wire rightshiftercomponent_n152;
  wire [6:0] rightshiftercomponent_r;
  wire rightshiftercomponent_sticky;
  wire [7:0] n158_o;
  wire [3:0] n159_o;
  wire [3:0] n160_o;
  wire [7:0] n161_o;
  wire [7:0] n162_o;
  wire [3:0] n163_o;
  wire [5:0] n165_o;
  wire [7:0] n167_o;
  wire n168_o;
  wire n169_o;
  wire [7:0] fpadd_4_4_f300_uid2_fracaddfar_n170;
  wire [7:0] fpadd_4_4_f300_uid2_fracaddfar_r;
  wire [1:0] n173_o;
  wire [3:0] n174_o;
  wire n176_o;
  wire [3:0] n177_o;
  wire [3:0] n178_o;
  wire n180_o;
  wire [3:0] n181_o;
  wire [3:0] n182_o;
  wire n183_o;
  wire n185_o;
  wire n186_o;
  wire n187_o;
  wire n189_o;
  wire n190_o;
  wire n191_o;
  wire n193_o;
  wire n194_o;
  wire n195_o;
  wire n196_o;
  wire n198_o;
  wire n199_o;
  wire n200_o;
  wire n201_o;
  wire n202_o;
  wire n203_o;
  wire n204_o;
  wire n205_o;
  wire n206_o;
  wire n209_o;
  wire [1:0] n210_o;
  wire n213_o;
  wire [1:0] n214_o;
  wire n216_o;
  wire n217_o;
  wire n218_o;
  wire n219_o;
  wire n220_o;
  wire [3:0] n221_o;
  wire [4:0] n222_o;
  wire n223_o;
  wire [5:0] n224_o;
  wire [3:0] n225_o;
  wire [5:0] n227_o;
  wire [5:0] n228_o;
  wire [9:0] n229_o;
  wire n231_o;
  reg [9:0] n232_o;
  wire n234_o;
  reg n235_o;
  wire n236_o;
  localparam [9:0] n237_o = 10'b0000000000;
  wire [9:0] fpadd_4_4_f300_uid2_finalroundadd_n238;
  wire [9:0] fpadd_4_4_f300_uid2_finalroundadd_r;
  wire [1:0] n241_o;
  wire n242_o;
  wire [1:0] n244_o;
  wire n246_o;
  wire n249_o;
  wire n251_o;
  wire n252_o;
  wire n253_o;
  wire [1:0] n255_o;
  wire [1:0] n256_o;
  reg [1:0] n257_o;
  wire [7:0] n258_o;
  wire [8:0] n259_o;
  wire [1:0] n260_o;
  wire n262_o;
  wire [1:0] n264_o;
  wire n266_o;
  wire n269_o;
  wire [1:0] n270_o;
  wire [2:0] n271_o;
  reg [1:0] n272_o;
  wire n273_o;
  wire n275_o;
  wire n276_o;
  wire n277_o;
  wire n279_o;
  wire n280_o;
  wire [1:0] n281_o;
  reg n282_o;
  wire [7:0] n283_o;
  wire n285_o;
  wire [7:0] n286_o;
  reg [7:0] n287_o;
  wire [2:0] n288_o;
  wire [10:0] n289_o;
  wire [10:0] n290_o;
  assign R = n289_o;
  /* ip_cores/flopoco_fadd_4_4.vhdl:327:8  */
  assign inx = X; // (signal)
  /* ip_cores/flopoco_fadd_4_4.vhdl:328:8  */
  assign iny = Y; // (signal)
  /* ip_cores/flopoco_fadd_4_4.vhdl:329:8  */
  assign exceptionxsuperiory = n47_o; // (signal)
  /* ip_cores/flopoco_fadd_4_4.vhdl:330:8  */
  assign exceptionxequaly = n53_o; // (signal)
  /* ip_cores/flopoco_fadd_4_4.vhdl:331:8  */
  assign signedexponentx = n57_o; // (signal)
  /* ip_cores/flopoco_fadd_4_4.vhdl:332:8  */
  assign signedexponenty = n60_o; // (signal)
  /* ip_cores/flopoco_fadd_4_4.vhdl:333:8  */
  assign exponentdifferencexy = n61_o; // (signal)
  /* ip_cores/flopoco_fadd_4_4.vhdl:334:8  */
  assign exponentdifferenceyx = n64_o; // (signal)
  /* ip_cores/flopoco_fadd_4_4.vhdl:335:8  */
  assign swap = n68_o; // (signal)
  /* ip_cores/flopoco_fadd_4_4.vhdl:336:8  */
  assign newx = n69_o; // (signal)
  /* ip_cores/flopoco_fadd_4_4.vhdl:336:14  */
  assign newx_d1 = n24_q; // (signal)
  /* ip_cores/flopoco_fadd_4_4.vhdl:337:8  */
  assign newy = n70_o; // (signal)
  /* ip_cores/flopoco_fadd_4_4.vhdl:338:8  */
  assign exponentdifference = n71_o; // (signal)
  /* ip_cores/flopoco_fadd_4_4.vhdl:339:8  */
  assign shiftedout = n73_o; // (signal)
  /* ip_cores/flopoco_fadd_4_4.vhdl:340:8  */
  assign shiftval = n76_o; // (signal)
  /* ip_cores/flopoco_fadd_4_4.vhdl:341:8  */
  assign effsub = n80_o; // (signal)
  /* ip_cores/flopoco_fadd_4_4.vhdl:341:16  */
  assign effsub_d1 = n25_q; // (signal)
  /* ip_cores/flopoco_fadd_4_4.vhdl:341:27  */
  assign effsub_d2 = n26_q; // (signal)
  /* ip_cores/flopoco_fadd_4_4.vhdl:342:8  */
  assign selectclosepath = n84_o; // (signal)
  /* ip_cores/flopoco_fadd_4_4.vhdl:342:25  */
  assign selectclosepath_d1 = n27_q; // (signal)
  /* ip_cores/flopoco_fadd_4_4.vhdl:342:45  */
  assign selectclosepath_d2 = n28_q; // (signal)
  /* ip_cores/flopoco_fadd_4_4.vhdl:343:8  */
  assign sdexnxy = n88_o; // (signal)
  /* ip_cores/flopoco_fadd_4_4.vhdl:344:8  */
  assign pipesigny = n89_o; // (signal)
  /* ip_cores/flopoco_fadd_4_4.vhdl:345:8  */
  assign fracxclose1 = n94_o; // (signal)
  /* ip_cores/flopoco_fadd_4_4.vhdl:346:8  */
  assign fracyclose1 = n106_o; // (signal)
  /* ip_cores/flopoco_fadd_4_4.vhdl:347:8  */
  assign fracrclosexmy = fpadd_4_4_f300_uid2_dualsubclose_n107; // (signal)
  /* ip_cores/flopoco_fadd_4_4.vhdl:348:8  */
  assign fracrcloseymx = fpadd_4_4_f300_uid2_dualsubclose_n108; // (signal)
  /* ip_cores/flopoco_fadd_4_4.vhdl:349:8  */
  assign fracsignclose = n113_o; // (signal)
  /* ip_cores/flopoco_fadd_4_4.vhdl:350:8  */
  assign fracrclose1 = n116_o; // (signal)
  /* ip_cores/flopoco_fadd_4_4.vhdl:351:8  */
  assign ressign = n122_o; // (signal)
  /* ip_cores/flopoco_fadd_4_4.vhdl:352:8  */
  assign nzerosnew = norm_n126; // (signal)
  /* ip_cores/flopoco_fadd_4_4.vhdl:353:8  */
  assign shiftedfrac = norm_n127; // (signal)
  /* ip_cores/flopoco_fadd_4_4.vhdl:354:8  */
  assign roundclose0 = n134_o; // (signal)
  /* ip_cores/flopoco_fadd_4_4.vhdl:355:8  */
  assign resultcloseiszero0 = n138_o; // (signal)
  /* ip_cores/flopoco_fadd_4_4.vhdl:356:8  */
  assign exponentresultclose = n145_o; // (signal)
  /* ip_cores/flopoco_fadd_4_4.vhdl:464:52  */
  assign exponentresultclose_d1 = n29_q; // (signal)
  /* ip_cores/flopoco_fadd_4_4.vhdl:357:8  */
  assign resultbeforeroundclose = n147_o; // (signal)
  /* ip_cores/flopoco_fadd_4_4.vhdl:358:8  */
  assign roundclose = roundclose0; // (signal)
  /* ip_cores/flopoco_fadd_4_4.vhdl:359:8  */
  assign resultcloseiszero = resultcloseiszero0; // (signal)
  /* ip_cores/flopoco_fadd_4_4.vhdl:360:8  */
  assign fracnewy = n150_o; // (signal)
  /* ip_cores/flopoco_fadd_4_4.vhdl:361:8  */
  assign shiftedfracy = rightshiftercomponent_n151; // (signal)
  /* ip_cores/flopoco_fadd_4_4.vhdl:362:8  */
  assign sticky = rightshiftercomponent_n152; // (signal)
  /* ip_cores/flopoco_fadd_4_4.vhdl:363:8  */
  assign fracyfar = n158_o; // (signal)
  /* ip_cores/flopoco_fadd_4_4.vhdl:364:8  */
  assign effsubvector = n161_o; // (signal)
  /* ip_cores/flopoco_fadd_4_4.vhdl:365:8  */
  assign fracyfarxorop = n162_o; // (signal)
  /* ip_cores/flopoco_fadd_4_4.vhdl:366:8  */
  assign fracxfar = n167_o; // (signal)
  /* ip_cores/flopoco_fadd_4_4.vhdl:367:8  */
  assign cinaddfar = n169_o; // (signal)
  /* ip_cores/flopoco_fadd_4_4.vhdl:368:8  */
  assign fracresultfar0 = fpadd_4_4_f300_uid2_fracaddfar_n170; // (signal)
  /* ip_cores/flopoco_fadd_4_4.vhdl:369:8  */
  assign fracresultfarnormstage = fracresultfar0; // (signal)
  /* ip_cores/flopoco_fadd_4_4.vhdl:370:8  */
  assign fracleadingbits = n173_o; // (signal)
  /* ip_cores/flopoco_fadd_4_4.vhdl:371:8  */
  assign fracresultfar1 = n177_o; // (signal)
  /* ip_cores/flopoco_fadd_4_4.vhdl:372:8  */
  assign fracresultroundbit = n186_o; // (signal)
  /* ip_cores/flopoco_fadd_4_4.vhdl:373:8  */
  assign fracresultstickybit = n194_o; // (signal)
  /* ip_cores/flopoco_fadd_4_4.vhdl:374:8  */
  assign roundfar1 = n206_o; // (signal)
  /* ip_cores/flopoco_fadd_4_4.vhdl:375:8  */
  assign expoperationsel = n210_o; // (signal)
  /* ip_cores/flopoco_fadd_4_4.vhdl:376:8  */
  assign exponentupdate = n224_o; // (signal)
  /* ip_cores/flopoco_fadd_4_4.vhdl:377:8  */
  assign exponentresultfar0 = n227_o; // (signal)
  /* ip_cores/flopoco_fadd_4_4.vhdl:377:28  */
  assign exponentresultfar0_d1 = n30_q; // (signal)
  /* ip_cores/flopoco_fadd_4_4.vhdl:377:51  */
  assign exponentresultfar0_d2 = n31_q; // (signal)
  /* ip_cores/flopoco_fadd_4_4.vhdl:378:8  */
  assign exponentresultfar1 = n228_o; // (signal)
  /* ip_cores/flopoco_fadd_4_4.vhdl:379:8  */
  assign resultbeforeroundfar = n229_o; // (signal)
  /* ip_cores/flopoco_fadd_4_4.vhdl:380:8  */
  assign roundfar = roundfar1; // (signal)
  /* ip_cores/flopoco_fadd_4_4.vhdl:381:8  */
  assign resultbeforeround = n232_o; // (signal)
  /* ip_cores/flopoco_fadd_4_4.vhdl:382:8  */
  assign round = n235_o; // (signal)
  /* ip_cores/flopoco_fadd_4_4.vhdl:383:8  */
  assign zerofromclose = n236_o; // (signal)
  /* ip_cores/flopoco_fadd_4_4.vhdl:383:23  */
  assign zerofromclose_d1 = n32_q; // (signal)
  /* ip_cores/flopoco_fadd_4_4.vhdl:384:8  */
  assign resultrounded = fpadd_4_4_f300_uid2_finalroundadd_n238; // (signal)
  /* ip_cores/flopoco_fadd_4_4.vhdl:385:8  */
  assign synceffsub = effsub; // (signal)
  /* ip_cores/flopoco_fadd_4_4.vhdl:385:20  */
  assign synceffsub_d1 = n33_q; // (signal)
  /* ip_cores/flopoco_fadd_4_4.vhdl:385:35  */
  assign synceffsub_d2 = n34_q; // (signal)
  /* ip_cores/flopoco_fadd_4_4.vhdl:386:8  */
  assign syncx = newx; // (signal)
  /* ip_cores/flopoco_fadd_4_4.vhdl:386:15  */
  assign syncx_d1 = n35_q; // (signal)
  /* ip_cores/flopoco_fadd_4_4.vhdl:386:25  */
  assign syncx_d2 = n36_q; // (signal)
  /* ip_cores/flopoco_fadd_4_4.vhdl:387:8  */
  assign syncsigny = pipesigny; // (signal)
  /* ip_cores/flopoco_fadd_4_4.vhdl:387:19  */
  assign syncsigny_d1 = n37_q; // (signal)
  /* ip_cores/flopoco_fadd_4_4.vhdl:387:33  */
  assign syncsigny_d2 = n38_q; // (signal)
  /* ip_cores/flopoco_fadd_4_4.vhdl:388:8  */
  assign syncressign = ressign; // (signal)
  /* ip_cores/flopoco_fadd_4_4.vhdl:388:21  */
  assign syncressign_d1 = n39_q; // (signal)
  /* ip_cores/flopoco_fadd_4_4.vhdl:388:37  */
  assign syncressign_d2 = n40_q; // (signal)
  /* ip_cores/flopoco_fadd_4_4.vhdl:389:8  */
  assign underflowoverflow = n241_o; // (signal)
  /* ip_cores/flopoco_fadd_4_4.vhdl:390:8  */
  assign resultnoexn = n290_o; // (signal)
  /* ip_cores/flopoco_fadd_4_4.vhdl:391:8  */
  assign syncexnxy = sdexnxy; // (signal)
  /* ip_cores/flopoco_fadd_4_4.vhdl:391:19  */
  assign syncexnxy_d1 = n41_q; // (signal)
  /* ip_cores/flopoco_fadd_4_4.vhdl:391:33  */
  assign syncexnxy_d2 = n42_q; // (signal)
  /* ip_cores/flopoco_fadd_4_4.vhdl:392:8  */
  assign exnr = n272_o; // (signal)
  /* ip_cores/flopoco_fadd_4_4.vhdl:393:8  */
  assign sgnr = n282_o; // (signal)
  /* ip_cores/flopoco_fadd_4_4.vhdl:394:8  */
  assign expsigr = n287_o; // (signal)
  /* ip_cores/flopoco_fadd_4_4.vhdl:398:10  */
  always @(posedge clk)
    n24_q <= newx;
  /* ip_cores/flopoco_fadd_4_4.vhdl:398:10  */
  always @(posedge clk)
    n25_q <= effsub;
  /* ip_cores/flopoco_fadd_4_4.vhdl:398:10  */
  always @(posedge clk)
    n26_q <= effsub_d1;
  /* ip_cores/flopoco_fadd_4_4.vhdl:398:10  */
  always @(posedge clk)
    n27_q <= selectclosepath;
  /* ip_cores/flopoco_fadd_4_4.vhdl:398:10  */
  always @(posedge clk)
    n28_q <= selectclosepath_d1;
  /* ip_cores/flopoco_fadd_4_4.vhdl:398:10  */
  always @(posedge clk)
    n29_q <= exponentresultclose;
  /* ip_cores/flopoco_fadd_4_4.vhdl:398:10  */
  always @(posedge clk)
    n30_q <= exponentresultfar0;
  /* ip_cores/flopoco_fadd_4_4.vhdl:398:10  */
  always @(posedge clk)
    n31_q <= exponentresultfar0_d1;
  /* ip_cores/flopoco_fadd_4_4.vhdl:398:10  */
  always @(posedge clk)
    n32_q <= zerofromclose;
  /* ip_cores/flopoco_fadd_4_4.vhdl:398:10  */
  always @(posedge clk)
    n33_q <= synceffsub;
  /* ip_cores/flopoco_fadd_4_4.vhdl:398:10  */
  always @(posedge clk)
    n34_q <= synceffsub_d1;
  /* ip_cores/flopoco_fadd_4_4.vhdl:398:10  */
  always @(posedge clk)
    n35_q <= syncx;
  /* ip_cores/flopoco_fadd_4_4.vhdl:398:10  */
  always @(posedge clk)
    n36_q <= syncx_d1;
  /* ip_cores/flopoco_fadd_4_4.vhdl:398:10  */
  always @(posedge clk)
    n37_q <= syncsigny;
  /* ip_cores/flopoco_fadd_4_4.vhdl:398:10  */
  always @(posedge clk)
    n38_q <= syncsigny_d1;
  /* ip_cores/flopoco_fadd_4_4.vhdl:398:10  */
  always @(posedge clk)
    n39_q <= syncressign;
  /* ip_cores/flopoco_fadd_4_4.vhdl:398:10  */
  always @(posedge clk)
    n40_q <= syncressign_d1;
  /* ip_cores/flopoco_fadd_4_4.vhdl:398:10  */
  always @(posedge clk)
    n41_q <= syncexnxy;
  /* ip_cores/flopoco_fadd_4_4.vhdl:398:10  */
  always @(posedge clk)
    n42_q <= syncexnxy_d1;
  /* ip_cores/flopoco_fadd_4_4.vhdl:423:39  */
  assign n44_o = inx[10:9];
  /* ip_cores/flopoco_fadd_4_4.vhdl:423:59  */
  assign n45_o = iny[10:9];
  /* ip_cores/flopoco_fadd_4_4.vhdl:423:53  */
  assign n46_o = $unsigned(n44_o) >= $unsigned(n45_o);
  /* ip_cores/flopoco_fadd_4_4.vhdl:423:31  */
  assign n47_o = n46_o ? 1'b1 : 1'b0;
  /* ip_cores/flopoco_fadd_4_4.vhdl:424:36  */
  assign n50_o = inx[10:9];
  /* ip_cores/flopoco_fadd_4_4.vhdl:424:55  */
  assign n51_o = iny[10:9];
  /* ip_cores/flopoco_fadd_4_4.vhdl:424:50  */
  assign n52_o = n50_o == n51_o;
  /* ip_cores/flopoco_fadd_4_4.vhdl:424:28  */
  assign n53_o = n52_o ? 1'b1 : 1'b0;
  /* ip_cores/flopoco_fadd_4_4.vhdl:425:32  */
  assign n55_o = inx[7:4];
  /* ip_cores/flopoco_fadd_4_4.vhdl:425:27  */
  assign n57_o = {1'b0, n55_o};
  /* ip_cores/flopoco_fadd_4_4.vhdl:426:32  */
  assign n58_o = iny[7:4];
  /* ip_cores/flopoco_fadd_4_4.vhdl:426:27  */
  assign n60_o = {1'b0, n58_o};
  /* ip_cores/flopoco_fadd_4_4.vhdl:427:44  */
  assign n61_o = signedexponentx - signedexponenty;
  /* ip_cores/flopoco_fadd_4_4.vhdl:428:43  */
  assign n62_o = signedexponenty[3:0];
  /* ip_cores/flopoco_fadd_4_4.vhdl:428:73  */
  assign n63_o = signedexponentx[3:0];
  /* ip_cores/flopoco_fadd_4_4.vhdl:428:56  */
  assign n64_o = n62_o - n63_o;
  /* ip_cores/flopoco_fadd_4_4.vhdl:429:54  */
  assign n65_o = exponentdifferencexy[4];
  /* ip_cores/flopoco_fadd_4_4.vhdl:429:30  */
  assign n66_o = exceptionxequaly & n65_o;
  /* ip_cores/flopoco_fadd_4_4.vhdl:429:63  */
  assign n67_o = ~exceptionxsuperiory;
  /* ip_cores/flopoco_fadd_4_4.vhdl:429:59  */
  assign n68_o = n66_o | n67_o;
  /* ip_cores/flopoco_fadd_4_4.vhdl:430:16  */
  assign n69_o = swap ? iny : inx;
  /* ip_cores/flopoco_fadd_4_4.vhdl:431:16  */
  assign n70_o = swap ? inx : iny;
  /* ip_cores/flopoco_fadd_4_4.vhdl:432:47  */
  assign n71_o = swap ? exponentdifferenceyx : n72_o;
  /* ip_cores/flopoco_fadd_4_4.vhdl:432:88  */
  assign n72_o = exponentdifferencexy[3:0];
  /* ip_cores/flopoco_fadd_4_4.vhdl:433:36  */
  assign n73_o = exponentdifference[3];
  /* ip_cores/flopoco_fadd_4_4.vhdl:434:34  */
  assign n74_o = exponentdifference[2:0];
  /* ip_cores/flopoco_fadd_4_4.vhdl:434:62  */
  assign n75_o = ~shiftedout;
  /* ip_cores/flopoco_fadd_4_4.vhdl:434:47  */
  assign n76_o = n75_o ? n74_o : 3'b111;
  /* ip_cores/flopoco_fadd_4_4.vhdl:436:18  */
  assign n78_o = newx[8];
  /* ip_cores/flopoco_fadd_4_4.vhdl:436:30  */
  assign n79_o = newy[8];
  /* ip_cores/flopoco_fadd_4_4.vhdl:436:22  */
  assign n80_o = n78_o ^ n79_o;
  /* ip_cores/flopoco_fadd_4_4.vhdl:437:53  */
  assign n81_o = exponentdifference[3:1];
  /* ip_cores/flopoco_fadd_4_4.vhdl:437:66  */
  assign n83_o = n81_o == 3'b000;
  /* ip_cores/flopoco_fadd_4_4.vhdl:437:30  */
  assign n84_o = n83_o ? effsub : 1'b0;
  /* ip_cores/flopoco_fadd_4_4.vhdl:438:19  */
  assign n86_o = newx[10:9];
  /* ip_cores/flopoco_fadd_4_4.vhdl:438:39  */
  assign n87_o = newy[10:9];
  /* ip_cores/flopoco_fadd_4_4.vhdl:438:33  */
  assign n88_o = {n86_o, n87_o};
  /* ip_cores/flopoco_fadd_4_4.vhdl:439:21  */
  assign n89_o = newy[8];
  /* ip_cores/flopoco_fadd_4_4.vhdl:442:30  */
  assign n90_o = newx[3:0];
  /* ip_cores/flopoco_fadd_4_4.vhdl:442:24  */
  assign n92_o = {2'b01, n90_o};
  /* ip_cores/flopoco_fadd_4_4.vhdl:442:43  */
  assign n94_o = {n92_o, 1'b0};
  /* ip_cores/flopoco_fadd_4_4.vhdl:443:27  */
  assign n95_o = exponentdifference[0];
  /* ip_cores/flopoco_fadd_4_4.vhdl:444:31  */
  assign n96_o = newy[3:0];
  /* ip_cores/flopoco_fadd_4_4.vhdl:444:25  */
  assign n98_o = {2'b01, n96_o};
  /* ip_cores/flopoco_fadd_4_4.vhdl:444:44  */
  assign n100_o = {n98_o, 1'b0};
  /* ip_cores/flopoco_fadd_4_4.vhdl:444:50  */
  assign n102_o = n95_o == 1'b0;
  /* ip_cores/flopoco_fadd_4_4.vhdl:445:31  */
  assign n103_o = newy[3:0];
  /* ip_cores/flopoco_fadd_4_4.vhdl:445:25  */
  assign n105_o = {3'b001, n103_o};
  /* ip_cores/flopoco_fadd_4_4.vhdl:443:4  */
  always @*
    case (n102_o)
      1'b1: n106_o <= n100_o;
      default: n106_o <= n105_o;
    endcase
  /* ip_cores/flopoco_fadd_4_4.vhdl:450:25  */
  assign fpadd_4_4_f300_uid2_dualsubclose_n107 = fpadd_4_4_f300_uid2_dualsubclose_xmy; // (signal)
  /* ip_cores/flopoco_fadd_4_4.vhdl:451:25  */
  assign fpadd_4_4_f300_uid2_dualsubclose_n108 = fpadd_4_4_f300_uid2_dualsubclose_ymx; // (signal)
  /* ip_cores/flopoco_fadd_4_4.vhdl:446:4  */
  intdualsub_7_f300_uid4 fpadd_4_4_f300_uid2_dualsubclose (
    .clk(clk),
    .x(fracxclose1),
    .y(fracyclose1),
    .xmy(fpadd_4_4_f300_uid2_dualsubclose_xmy),
    .ymx(fpadd_4_4_f300_uid2_dualsubclose_ymx));
  /* ip_cores/flopoco_fadd_4_4.vhdl:452:34  */
  assign n113_o = fracrclosexmy[6];
  /* ip_cores/flopoco_fadd_4_4.vhdl:453:32  */
  assign n114_o = fracrclosexmy[5:0];
  /* ip_cores/flopoco_fadd_4_4.vhdl:453:63  */
  assign n115_o = ~fracsignclose;
  /* ip_cores/flopoco_fadd_4_4.vhdl:453:45  */
  assign n116_o = n115_o ? n114_o : n117_o;
  /* ip_cores/flopoco_fadd_4_4.vhdl:453:86  */
  assign n117_o = fracrcloseymx[5:0];
  /* ip_cores/flopoco_fadd_4_4.vhdl:454:60  */
  assign n120_o = fracrclose1 == 6'b000000;
  /* ip_cores/flopoco_fadd_4_4.vhdl:454:44  */
  assign n121_o = selectclosepath & n120_o;
  /* ip_cores/flopoco_fadd_4_4.vhdl:454:19  */
  assign n122_o = n121_o ? 1'b0 : n125_o;
  /* ip_cores/flopoco_fadd_4_4.vhdl:455:18  */
  assign n123_o = newx[8];
  /* ip_cores/flopoco_fadd_4_4.vhdl:455:43  */
  assign n124_o = selectclosepath & fracsignclose;
  /* ip_cores/flopoco_fadd_4_4.vhdl:455:22  */
  assign n125_o = n123_o ^ n124_o;
  /* ip_cores/flopoco_fadd_4_4.vhdl:459:27  */
  assign norm_n126 = norm_count; // (signal)
  /* ip_cores/flopoco_fadd_4_4.vhdl:460:23  */
  assign norm_n127 = norm_r; // (signal)
  /* ip_cores/flopoco_fadd_4_4.vhdl:456:4  */
  normalizer_z_6_6_6_f300_uid6 norm (
    .clk(clk),
    .x(fracrclose1),
    .count(norm_count),
    .r(norm_r));
  /* ip_cores/flopoco_fadd_4_4.vhdl:461:30  */
  assign n132_o = shiftedfrac[0];
  /* ip_cores/flopoco_fadd_4_4.vhdl:461:49  */
  assign n133_o = shiftedfrac[1];
  /* ip_cores/flopoco_fadd_4_4.vhdl:461:34  */
  assign n134_o = n132_o & n133_o;
  /* ip_cores/flopoco_fadd_4_4.vhdl:462:45  */
  assign n137_o = nzerosnew == 3'b111;
  /* ip_cores/flopoco_fadd_4_4.vhdl:462:30  */
  assign n138_o = n137_o ? 1'b1 : 1'b0;
  /* ip_cores/flopoco_fadd_4_4.vhdl:463:42  */
  assign n140_o = newx_d1[7:4];
  /* ip_cores/flopoco_fadd_4_4.vhdl:463:33  */
  assign n142_o = {2'b00, n140_o};
  /* ip_cores/flopoco_fadd_4_4.vhdl:463:86  */
  assign n144_o = {3'b000, nzerosnew};
  /* ip_cores/flopoco_fadd_4_4.vhdl:463:56  */
  assign n145_o = n142_o - n144_o;
  /* ip_cores/flopoco_fadd_4_4.vhdl:464:78  */
  assign n146_o = shiftedfrac[4:1];
  /* ip_cores/flopoco_fadd_4_4.vhdl:464:65  */
  assign n147_o = {exponentresultclose_d1, n146_o};
  /* ip_cores/flopoco_fadd_4_4.vhdl:469:26  */
  assign n148_o = newy[3:0];
  /* ip_cores/flopoco_fadd_4_4.vhdl:469:20  */
  assign n150_o = {1'b1, n148_o};
  /* ip_cores/flopoco_fadd_4_4.vhdl:474:23  */
  assign rightshiftercomponent_n151 = rightshiftercomponent_r; // (signal)
  /* ip_cores/flopoco_fadd_4_4.vhdl:475:28  */
  assign rightshiftercomponent_n152 = rightshiftercomponent_sticky; // (signal)
  /* ip_cores/flopoco_fadd_4_4.vhdl:470:4  */
  rightshiftersticky5_by_max_7_f300_uid8 rightshiftercomponent (
    .clk(clk),
    .x(fracnewy),
    .s(shiftval),
    .r(rightshiftercomponent_r),
    .sticky(rightshiftercomponent_sticky));
  /* ip_cores/flopoco_fadd_4_4.vhdl:476:20  */
  assign n158_o = {1'b0, shiftedfracy};
  assign n159_o = {effsub, effsub, effsub, effsub};
  assign n160_o = {effsub, effsub, effsub, effsub};
  assign n161_o = {n159_o, n160_o};
  /* ip_cores/flopoco_fadd_4_4.vhdl:478:30  */
  assign n162_o = fracyfar ^ effsubvector;
  /* ip_cores/flopoco_fadd_4_4.vhdl:479:28  */
  assign n163_o = newx[3:0];
  /* ip_cores/flopoco_fadd_4_4.vhdl:479:21  */
  assign n165_o = {2'b01, n163_o};
  /* ip_cores/flopoco_fadd_4_4.vhdl:479:42  */
  assign n167_o = {n165_o, 2'b00};
  /* ip_cores/flopoco_fadd_4_4.vhdl:480:31  */
  assign n168_o = ~sticky;
  /* ip_cores/flopoco_fadd_4_4.vhdl:480:27  */
  assign n169_o = effsub_d2 & n168_o;
  /* ip_cores/flopoco_fadd_4_4.vhdl:486:23  */
  assign fpadd_4_4_f300_uid2_fracaddfar_n170 = fpadd_4_4_f300_uid2_fracaddfar_r; // (signal)
  /* ip_cores/flopoco_fadd_4_4.vhdl:481:4  */
  intadder_8_f300_uid10 fpadd_4_4_f300_uid2_fracaddfar (
    .clk(clk),
    .x(fracxfar),
    .y(fracyfarxorop),
    .cin(cinaddfar),
    .r(fpadd_4_4_f300_uid2_fracaddfar_r));
  /* ip_cores/flopoco_fadd_4_4.vhdl:489:45  */
  assign n173_o = fracresultfarnormstage[7:6];
  /* ip_cores/flopoco_fadd_4_4.vhdl:491:34  */
  assign n174_o = fracresultfarnormstage[4:1];
  /* ip_cores/flopoco_fadd_4_4.vhdl:491:69  */
  assign n176_o = fracleadingbits == 2'b00;
  /* ip_cores/flopoco_fadd_4_4.vhdl:491:48  */
  assign n177_o = n176_o ? n174_o : n181_o;
  /* ip_cores/flopoco_fadd_4_4.vhdl:492:34  */
  assign n178_o = fracresultfarnormstage[5:2];
  /* ip_cores/flopoco_fadd_4_4.vhdl:492:69  */
  assign n180_o = fracleadingbits == 2'b01;
  /* ip_cores/flopoco_fadd_4_4.vhdl:492:7  */
  assign n181_o = n180_o ? n178_o : n182_o;
  /* ip_cores/flopoco_fadd_4_4.vhdl:493:34  */
  assign n182_o = fracresultfarnormstage[6:3];
  /* ip_cores/flopoco_fadd_4_4.vhdl:495:34  */
  assign n183_o = fracresultfarnormstage[0];
  /* ip_cores/flopoco_fadd_4_4.vhdl:495:63  */
  assign n185_o = fracleadingbits == 2'b00;
  /* ip_cores/flopoco_fadd_4_4.vhdl:495:42  */
  assign n186_o = n185_o ? n183_o : n190_o;
  /* ip_cores/flopoco_fadd_4_4.vhdl:496:34  */
  assign n187_o = fracresultfarnormstage[1];
  /* ip_cores/flopoco_fadd_4_4.vhdl:496:62  */
  assign n189_o = fracleadingbits == 2'b01;
  /* ip_cores/flopoco_fadd_4_4.vhdl:496:7  */
  assign n190_o = n189_o ? n187_o : n191_o;
  /* ip_cores/flopoco_fadd_4_4.vhdl:497:34  */
  assign n191_o = fracresultfarnormstage[2];
  /* ip_cores/flopoco_fadd_4_4.vhdl:499:47  */
  assign n193_o = fracleadingbits == 2'b00;
  /* ip_cores/flopoco_fadd_4_4.vhdl:499:26  */
  assign n194_o = n193_o ? sticky : n199_o;
  /* ip_cores/flopoco_fadd_4_4.vhdl:500:34  */
  assign n195_o = fracresultfarnormstage[0];
  /* ip_cores/flopoco_fadd_4_4.vhdl:500:38  */
  assign n196_o = n195_o | sticky;
  /* ip_cores/flopoco_fadd_4_4.vhdl:500:72  */
  assign n198_o = fracleadingbits == 2'b01;
  /* ip_cores/flopoco_fadd_4_4.vhdl:500:7  */
  assign n199_o = n198_o ? n196_o : n203_o;
  /* ip_cores/flopoco_fadd_4_4.vhdl:501:34  */
  assign n200_o = fracresultfarnormstage[1];
  /* ip_cores/flopoco_fadd_4_4.vhdl:501:63  */
  assign n201_o = fracresultfarnormstage[0];
  /* ip_cores/flopoco_fadd_4_4.vhdl:501:38  */
  assign n202_o = n200_o | n201_o;
  /* ip_cores/flopoco_fadd_4_4.vhdl:501:67  */
  assign n203_o = n202_o | sticky;
  /* ip_cores/flopoco_fadd_4_4.vhdl:502:78  */
  assign n204_o = fracresultfar1[0];
  /* ip_cores/flopoco_fadd_4_4.vhdl:502:61  */
  assign n205_o = fracresultstickybit | n204_o;
  /* ip_cores/flopoco_fadd_4_4.vhdl:502:36  */
  assign n206_o = fracresultroundbit & n205_o;
  /* ip_cores/flopoco_fadd_4_4.vhdl:503:49  */
  assign n209_o = fracleadingbits == 2'b00;
  /* ip_cores/flopoco_fadd_4_4.vhdl:503:28  */
  assign n210_o = n209_o ? 2'b11 : n214_o;
  /* ip_cores/flopoco_fadd_4_4.vhdl:504:49  */
  assign n213_o = fracleadingbits == 2'b01;
  /* ip_cores/flopoco_fadd_4_4.vhdl:504:16  */
  assign n214_o = n213_o ? 2'b00 : 2'b01;
  /* ip_cores/flopoco_fadd_4_4.vhdl:506:52  */
  assign n216_o = expoperationsel[1];
  /* ip_cores/flopoco_fadd_4_4.vhdl:506:52  */
  assign n217_o = expoperationsel[1];
  /* ip_cores/flopoco_fadd_4_4.vhdl:506:52  */
  assign n218_o = expoperationsel[1];
  /* ip_cores/flopoco_fadd_4_4.vhdl:506:52  */
  assign n219_o = expoperationsel[1];
  /* ip_cores/flopoco_fadd_4_4.vhdl:506:52  */
  assign n220_o = expoperationsel[1];
  assign n221_o = {n220_o, n219_o, n218_o, n217_o};
  assign n222_o = {n221_o, n216_o};
  /* ip_cores/flopoco_fadd_4_4.vhdl:506:74  */
  assign n223_o = expoperationsel[0];
  /* ip_cores/flopoco_fadd_4_4.vhdl:506:57  */
  assign n224_o = {n222_o, n223_o};
  /* ip_cores/flopoco_fadd_4_4.vhdl:507:36  */
  assign n225_o = newx[7:4];
  /* ip_cores/flopoco_fadd_4_4.vhdl:507:29  */
  assign n227_o = {2'b00, n225_o};
  /* ip_cores/flopoco_fadd_4_4.vhdl:508:48  */
  assign n228_o = exponentresultfar0_d2 + exponentupdate;
  /* ip_cores/flopoco_fadd_4_4.vhdl:509:47  */
  assign n229_o = {exponentresultfar1, fracresultfar1};
  /* ip_cores/flopoco_fadd_4_4.vhdl:514:48  */
  assign n231_o = selectclosepath_d2 == 1'b1;
  /* ip_cores/flopoco_fadd_4_4.vhdl:513:4  */
  always @*
    case (n231_o)
      1'b1: n232_o <= resultbeforeroundclose;
      default: n232_o <= resultbeforeroundfar;
    endcase
  /* ip_cores/flopoco_fadd_4_4.vhdl:517:24  */
  assign n234_o = selectclosepath_d2 == 1'b1;
  /* ip_cores/flopoco_fadd_4_4.vhdl:516:4  */
  always @*
    case (n234_o)
      1'b1: n235_o <= roundclose;
      default: n235_o <= roundfar;
    endcase
  /* ip_cores/flopoco_fadd_4_4.vhdl:519:40  */
  assign n236_o = selectclosepath_d1 & resultcloseiszero;
  /* ip_cores/flopoco_fadd_4_4.vhdl:527:23  */
  assign fpadd_4_4_f300_uid2_finalroundadd_n238 = fpadd_4_4_f300_uid2_finalroundadd_r; // (signal)
  /* ip_cores/flopoco_fadd_4_4.vhdl:522:4  */
  intadder_10_f300_uid13 fpadd_4_4_f300_uid2_finalroundadd (
    .clk(clk),
    .x(resultbeforeround),
    .y(n237_o),
    .cin(round),
    .r(fpadd_4_4_f300_uid2_finalroundadd_r));
  /* ip_cores/flopoco_fadd_4_4.vhdl:532:38  */
  assign n241_o = resultrounded[9:8];
  /* ip_cores/flopoco_fadd_4_4.vhdl:534:35  */
  assign n242_o = ~zerofromclose_d1;
  /* ip_cores/flopoco_fadd_4_4.vhdl:534:57  */
  assign n244_o = {n242_o, 1'b0};
  /* ip_cores/flopoco_fadd_4_4.vhdl:534:63  */
  assign n246_o = underflowoverflow == 2'b01;
  /* ip_cores/flopoco_fadd_4_4.vhdl:535:39  */
  assign n249_o = underflowoverflow == 2'b10;
  /* ip_cores/flopoco_fadd_4_4.vhdl:535:49  */
  assign n251_o = underflowoverflow == 2'b11;
  /* ip_cores/flopoco_fadd_4_4.vhdl:535:49  */
  assign n252_o = n249_o | n251_o;
  /* ip_cores/flopoco_fadd_4_4.vhdl:536:41  */
  assign n253_o = ~zerofromclose_d1;
  /* ip_cores/flopoco_fadd_4_4.vhdl:536:38  */
  assign n255_o = {1'b0, n253_o};
  assign n256_o = {n252_o, n246_o};
  /* ip_cores/flopoco_fadd_4_4.vhdl:533:4  */
  always @*
    case (n256_o)
      2'b10: n257_o <= 2'b00;
      2'b01: n257_o <= n244_o;
      default: n257_o <= n255_o;
    endcase
  /* ip_cores/flopoco_fadd_4_4.vhdl:537:61  */
  assign n258_o = resultrounded[7:0];
  /* ip_cores/flopoco_fadd_4_4.vhdl:537:46  */
  assign n259_o = {syncressign_d2, n258_o};
  /* ip_cores/flopoco_fadd_4_4.vhdl:541:26  */
  assign n260_o = resultnoexn[10:9];
  /* ip_cores/flopoco_fadd_4_4.vhdl:541:40  */
  assign n262_o = syncexnxy_d2 == 4'b0101;
  /* ip_cores/flopoco_fadd_4_4.vhdl:542:19  */
  assign n264_o = {1'b1, synceffsub_d2};
  /* ip_cores/flopoco_fadd_4_4.vhdl:542:44  */
  assign n266_o = syncexnxy_d2 == 4'b1010;
  /* ip_cores/flopoco_fadd_4_4.vhdl:543:41  */
  assign n269_o = syncexnxy_d2 == 4'b1110;
  /* ip_cores/flopoco_fadd_4_4.vhdl:544:27  */
  assign n270_o = syncexnxy_d2[3:2];
  assign n271_o = {n269_o, n266_o, n262_o};
  /* ip_cores/flopoco_fadd_4_4.vhdl:540:4  */
  always @*
    case (n271_o)
      3'b100: n272_o <= 2'b11;
      3'b010: n272_o <= n264_o;
      3'b001: n272_o <= n260_o;
      default: n272_o <= n270_o;
    endcase
  /* ip_cores/flopoco_fadd_4_4.vhdl:547:26  */
  assign n273_o = resultnoexn[8];
  /* ip_cores/flopoco_fadd_4_4.vhdl:547:38  */
  assign n275_o = syncexnxy_d2 == 4'b0101;
  /* ip_cores/flopoco_fadd_4_4.vhdl:548:23  */
  assign n276_o = syncx_d2[8];
  /* ip_cores/flopoco_fadd_4_4.vhdl:548:27  */
  assign n277_o = n276_o & syncsigny_d2;
  /* ip_cores/flopoco_fadd_4_4.vhdl:548:44  */
  assign n279_o = syncexnxy_d2 == 4'b0000;
  /* ip_cores/flopoco_fadd_4_4.vhdl:549:23  */
  assign n280_o = syncx_d2[8];
  assign n281_o = {n279_o, n275_o};
  /* ip_cores/flopoco_fadd_4_4.vhdl:546:4  */
  always @*
    case (n281_o)
      2'b10: n282_o <= n277_o;
      2'b01: n282_o <= n273_o;
      default: n282_o <= n280_o;
    endcase
  /* ip_cores/flopoco_fadd_4_4.vhdl:552:29  */
  assign n283_o = resultnoexn[7:0];
  /* ip_cores/flopoco_fadd_4_4.vhdl:552:44  */
  assign n285_o = syncexnxy_d2 == 4'b0101;
  /* ip_cores/flopoco_fadd_4_4.vhdl:553:26  */
  assign n286_o = syncx_d2[7:0];
  /* ip_cores/flopoco_fadd_4_4.vhdl:551:4  */
  always @*
    case (n285_o)
      1'b1: n287_o <= n283_o;
      default: n287_o <= n286_o;
    endcase
  /* ip_cores/flopoco_fadd_4_4.vhdl:554:14  */
  assign n288_o = {exnr, sgnr};
  /* ip_cores/flopoco_fadd_4_4.vhdl:554:21  */
  assign n289_o = {n288_o, expsigr};
  assign n290_o = {n257_o, n259_o};
endmodule

