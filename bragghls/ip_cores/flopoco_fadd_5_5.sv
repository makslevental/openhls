module intadder_13_f400_uid20
  (input  clk,
   input  rst,
   input  [12:0] x,
   input  [12:0] y,
   input  cin,
   output [12:0] r);
  wire [12:0] n420_o;
  wire [12:0] n421_o;
  wire [12:0] n422_o;
  assign r = n422_o;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:177:12  */
  assign n420_o = x + y;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:177:16  */
  assign n421_o = {12'b0, cin};  //  uext
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:177:16  */
  assign n422_o = n420_o + n421_o;
endmodule

module lzcshifter_10_to_10_counting_16_f400_uid16
  (input  clk,
   input  rst,
   input  [9:0] i,
   output [3:0] count,
   output [9:0] o);
  wire [9:0] level4;
  wire count3;
  wire count3_d1;
  wire [9:0] level3;
  wire count2;
  wire count2_d1;
  wire [9:0] level2;
  wire [9:0] level2_d1;
  wire count1;
  wire [9:0] level1;
  wire count0;
  wire [9:0] level0;
  wire [3:0] scount;
  reg n365_q;
  reg n366_q;
  reg [9:0] n367_q;
  wire [7:0] n369_o;
  wire n371_o;
  wire n372_o;
  wire n374_o;
  wire [9:0] n375_o;
  wire [1:0] n376_o;
  wire [9:0] n378_o;
  wire [3:0] n380_o;
  wire n382_o;
  wire n383_o;
  wire n385_o;
  wire [9:0] n386_o;
  wire [5:0] n387_o;
  wire [9:0] n389_o;
  wire [1:0] n391_o;
  wire n393_o;
  wire n394_o;
  wire n396_o;
  wire [9:0] n397_o;
  wire [7:0] n398_o;
  wire [9:0] n400_o;
  wire n402_o;
  wire n404_o;
  wire n405_o;
  wire n407_o;
  wire [9:0] n408_o;
  wire [8:0] n409_o;
  wire [9:0] n411_o;
  wire [1:0] n412_o;
  wire [2:0] n413_o;
  wire [3:0] n414_o;
  assign count = scount;
  assign o = level0;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:127:19  */
  assign level4 = i; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:107:8  */
  assign count3 = n372_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:107:16  */
  assign count3_d1 = n365_q; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:130:19  */
  assign level3 = n375_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:109:8  */
  assign count2 = n383_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:109:16  */
  assign count2_d1 = n366_q; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:110:8  */
  assign level2 = n386_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:134:22  */
  assign level2_d1 = n367_q; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:111:8  */
  assign count1 = n394_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:137:19  */
  assign level1 = n397_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:113:8  */
  assign count0 = n405_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:114:8  */
  assign level0 = n408_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:115:8  */
  assign scount = n414_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:119:10  */
  always @(posedge clk)
    n365_q <= count3;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:119:10  */
  always @(posedge clk)
    n366_q <= count2;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:119:10  */
  always @(posedge clk)
    n367_q <= level2;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:126:28  */
  assign n369_o = level4[9:2];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:126:41  */
  assign n371_o = n369_o == 8'b00000000;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:126:17  */
  assign n372_o = n371_o ? 1'b1 : 1'b0;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:127:43  */
  assign n374_o = ~count3;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:127:32  */
  assign n375_o = n374_o ? level4 : n378_o;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:127:59  */
  assign n376_o = level4[1:0];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:127:72  */
  assign n378_o = {n376_o, 8'b00000000};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:129:28  */
  assign n380_o = level3[9:6];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:129:41  */
  assign n382_o = n380_o == 4'b0000;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:129:17  */
  assign n383_o = n382_o ? 1'b1 : 1'b0;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:130:43  */
  assign n385_o = ~count2;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:130:32  */
  assign n386_o = n385_o ? level3 : n389_o;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:130:59  */
  assign n387_o = level3[5:0];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:130:72  */
  assign n389_o = {n387_o, 4'b0000};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:133:31  */
  assign n391_o = level2_d1[9:8];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:133:44  */
  assign n393_o = n391_o == 2'b00;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:133:17  */
  assign n394_o = n393_o ? 1'b1 : 1'b0;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:134:46  */
  assign n396_o = ~count1;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:134:35  */
  assign n397_o = n396_o ? level2_d1 : n400_o;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:134:65  */
  assign n398_o = level2_d1[7:0];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:134:78  */
  assign n400_o = {n398_o, 2'b00};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:136:28  */
  assign n402_o = level1[9];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:136:41  */
  assign n404_o = n402_o == 1'b0;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:136:17  */
  assign n405_o = n404_o ? 1'b1 : 1'b0;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:137:43  */
  assign n407_o = ~count0;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:137:32  */
  assign n408_o = n407_o ? level1 : n411_o;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:137:59  */
  assign n409_o = level1[8:0];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:137:72  */
  assign n411_o = {n409_o, 1'b0};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:140:24  */
  assign n412_o = {count3_d1, count2_d1};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:140:36  */
  assign n413_o = {n412_o, count1};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:140:45  */
  assign n414_o = {n413_o, count0};
endmodule

module intadder_9_f400_uid8
  (input  clk,
   input  rst,
   input  [8:0] x,
   input  [8:0] y,
   input  cin,
   output [8:0] r);
  wire [8:0] n353_o;
  wire [8:0] n354_o;
  wire [8:0] n355_o;
  assign r = n355_o;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:79:12  */
  assign n353_o = x + y;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:79:16  */
  assign n354_o = {8'b0, cin};  //  uext
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:79:16  */
  assign n355_o = n353_o + n354_o;
endmodule

module rightshifter_6_by_max_8_f400_uid4
  (input  clk,
   input  rst,
   input  [5:0] x,
   input  [3:0] s,
   output [13:0] r);
  wire [5:0] level0;
  wire [3:0] ps;
  wire [6:0] level1;
  wire [8:0] level2;
  wire [12:0] level3;
  wire [20:0] level4;
  wire [6:0] n324_o;
  wire n325_o;
  wire [6:0] n326_o;
  wire [6:0] n328_o;
  wire [8:0] n330_o;
  wire n331_o;
  wire [8:0] n332_o;
  wire [8:0] n334_o;
  wire [12:0] n336_o;
  wire n337_o;
  wire [12:0] n338_o;
  wire [12:0] n340_o;
  wire [20:0] n342_o;
  wire n343_o;
  wire [20:0] n344_o;
  wire [20:0] n346_o;
  wire [13:0] n347_o;
  assign r = n347_o;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:25:8  */
  assign level0 = x; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:26:8  */
  assign ps = s; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:27:8  */
  assign level1 = n326_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:28:8  */
  assign level2 = n332_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:29:8  */
  assign level3 = n338_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:30:8  */
  assign level4 = n344_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:39:34  */
  assign n324_o = {1'b0, level0};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:39:50  */
  assign n325_o = ps[0];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:39:43  */
  assign n326_o = n325_o ? n324_o : n328_o;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:39:75  */
  assign n328_o = {level0, 1'b0};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:40:34  */
  assign n330_o = {2'b00, level1};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:40:50  */
  assign n331_o = ps[1];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:40:43  */
  assign n332_o = n331_o ? n330_o : n334_o;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:40:75  */
  assign n334_o = {level1, 2'b00};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:41:34  */
  assign n336_o = {4'b0000, level2};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:41:50  */
  assign n337_o = ps[2];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:41:43  */
  assign n338_o = n337_o ? n336_o : n340_o;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:41:75  */
  assign n340_o = {level2, 4'b0000};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:42:34  */
  assign n342_o = {8'b00000000, level3};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:42:50  */
  assign n343_o = ps[3];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:42:43  */
  assign n344_o = n343_o ? n342_o : n346_o;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:42:75  */
  assign n346_o = {level3, 8'b00000000};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:43:15  */
  assign n347_o = level4[20:7];
endmodule

(* USE_DSP = "yes" *) module fmul
  (input  clk,
   input  rst,
   input  [12:0] X,
   input  [12:0] Y,
   output [12:0] R);
  wire [11:0] excexpfracx;
  wire [11:0] excexpfracy;
  wire [5:0] exmey;
  wire [5:0] eymex;
  wire swap;
  wire [12:0] newx;
  wire [12:0] newx_d1;
  wire [12:0] newy;
  wire [4:0] expx;
  wire [4:0] expx_d1;
  wire [1:0] excx;
  wire [1:0] excy;
  wire signx;
  wire signx_d1;
  wire signy;
  wire effsub;
  wire effsub_d1;
  wire effsub_d2;
  wire [5:0] sxsyexnxy;
  wire [5:0] sxsyexnxy_d1;
  wire [5:0] fracy;
  wire [1:0] excrt;
  wire [1:0] excrt_d1;
  wire [1:0] excrt_d2;
  wire signr;
  wire signr_d1;
  wire [5:0] expdiff;
  wire shiftedout;
  wire [3:0] shiftval;
  wire [13:0] shiftedfracy;
  wire [13:0] shiftedfracy_d1;
  wire sticky;
  wire [8:0] fracyfar;
  wire [8:0] effsubvector;
  wire [8:0] fracyfarxorop;
  wire [8:0] fracxfar;
  wire cinaddfar;
  wire [8:0] fracaddresult;
  wire [9:0] fracgrs;
  wire [6:0] extendedexpinc;
  wire [6:0] extendedexpinc_d1;
  wire [3:0] nzerosnew;
  wire [9:0] shiftedfrac;
  wire [6:0] updatedexp;
  wire eqdiffsign;
  wire [12:0] expfrac;
  wire stk;
  wire rnd;
  wire grd;
  wire lsb;
  wire addtoroundbit;
  wire [12:0] roundedexpfrac;
  wire [1:0] upexc;
  wire [4:0] fracr;
  wire [4:0] expr;
  wire [3:0] exexpexc;
  wire [1:0] excrt2;
  wire [1:0] excr;
  wire signr2;
  wire [12:0] computedr;
  reg [12:0] n16_q;
  reg [4:0] n17_q;
  reg n18_q;
  reg n19_q;
  reg n20_q;
  reg [5:0] n21_q;
  reg [1:0] n22_q;
  reg [1:0] n23_q;
  reg n24_q;
  reg [13:0] n25_q;
  reg [6:0] n26_q;
  wire [1:0] n27_o;
  wire [9:0] n28_o;
  wire [11:0] n29_o;
  wire [1:0] n30_o;
  wire [9:0] n31_o;
  wire [11:0] n32_o;
  wire [4:0] n33_o;
  wire [5:0] n35_o;
  wire [4:0] n36_o;
  wire [5:0] n38_o;
  wire [5:0] n39_o;
  wire [4:0] n40_o;
  wire [5:0] n42_o;
  wire [4:0] n43_o;
  wire [5:0] n45_o;
  wire [5:0] n46_o;
  wire n48_o;
  wire n49_o;
  wire n51_o;
  wire [12:0] n52_o;
  wire n53_o;
  wire [12:0] n54_o;
  wire [4:0] n55_o;
  wire [1:0] n56_o;
  wire [1:0] n57_o;
  wire n58_o;
  wire n59_o;
  wire n60_o;
  wire [1:0] n61_o;
  wire [3:0] n62_o;
  wire [5:0] n63_o;
  wire n67_o;
  wire [5:0] n68_o;
  wire [4:0] n69_o;
  wire [5:0] n71_o;
  wire n74_o;
  wire n76_o;
  wire n77_o;
  wire n79_o;
  wire n80_o;
  wire n82_o;
  wire n83_o;
  wire n86_o;
  wire n88_o;
  wire n89_o;
  wire n91_o;
  wire n92_o;
  wire n94_o;
  wire n95_o;
  wire n97_o;
  wire n98_o;
  wire n100_o;
  wire n101_o;
  wire n103_o;
  wire n104_o;
  wire n106_o;
  wire n107_o;
  wire n109_o;
  wire n110_o;
  wire n112_o;
  wire n113_o;
  wire n115_o;
  wire n116_o;
  wire n118_o;
  wire n119_o;
  wire n122_o;
  wire n124_o;
  wire n125_o;
  wire n127_o;
  wire n128_o;
  wire n130_o;
  wire n131_o;
  wire n133_o;
  wire n134_o;
  wire n136_o;
  wire n137_o;
  wire n139_o;
  wire n140_o;
  wire n142_o;
  wire n143_o;
  wire n145_o;
  wire n146_o;
  wire n148_o;
  wire n149_o;
  wire n151_o;
  wire n152_o;
  wire n154_o;
  wire n155_o;
  wire n157_o;
  wire n158_o;
  wire n160_o;
  wire n161_o;
  wire n163_o;
  wire n164_o;
  wire n166_o;
  wire n167_o;
  wire n169_o;
  wire n170_o;
  wire n172_o;
  wire n173_o;
  wire [2:0] n175_o;
  reg [1:0] n176_o;
  wire n179_o;
  wire n181_o;
  wire n182_o;
  wire n183_o;
  wire n184_o;
  wire [5:0] n185_o;
  wire n188_o;
  wire n189_o;
  wire [3:0] n191_o;
  wire n192_o;
  wire [3:0] n193_o;
  wire [13:0] rightshiftercomponent_n195;
  wire [13:0] rightshiftercomponent_r;
  wire [5:0] n199_o;
  wire n201_o;
  wire n202_o;
  wire [7:0] n204_o;
  wire [8:0] n206_o;
  wire [3:0] n207_o;
  wire [3:0] n208_o;
  wire [8:0] n209_o;
  wire [8:0] n210_o;
  wire [4:0] n211_o;
  wire [6:0] n213_o;
  wire [8:0] n215_o;
  wire n216_o;
  wire n217_o;
  wire [8:0] fracadder_n218;
  wire [8:0] fracadder_r;
  wire [9:0] n221_o;
  wire [6:0] n223_o;
  wire [6:0] n226_o;
  wire [3:0] lzc_component_n227;
  wire [9:0] lzc_component_n228;
  wire [3:0] lzc_component_count;
  wire [9:0] lzc_component_o;
  wire [6:0] n234_o;
  wire [6:0] n235_o;
  wire n238_o;
  wire n239_o;
  wire [5:0] n241_o;
  wire [12:0] n242_o;
  wire n243_o;
  wire n244_o;
  wire n245_o;
  wire n246_o;
  wire n247_o;
  wire n248_o;
  wire n250_o;
  wire n251_o;
  wire n252_o;
  wire n253_o;
  wire n254_o;
  wire n255_o;
  wire n256_o;
  localparam [12:0] n258_o = 13'b0000000000000;
  wire [12:0] roundingadder_n259;
  wire [12:0] roundingadder_r;
  wire [1:0] n262_o;
  wire [4:0] n263_o;
  wire [4:0] n264_o;
  wire [3:0] n265_o;
  wire n268_o;
  wire n270_o;
  wire n271_o;
  wire n273_o;
  wire n274_o;
  wire n276_o;
  wire n277_o;
  wire n279_o;
  wire n280_o;
  wire n282_o;
  wire n283_o;
  wire n286_o;
  wire n289_o;
  wire n291_o;
  wire n292_o;
  wire n294_o;
  wire n295_o;
  wire n297_o;
  wire n298_o;
  wire n300_o;
  wire n301_o;
  wire [2:0] n303_o;
  reg [1:0] n304_o;
  wire n306_o;
  wire n308_o;
  wire n309_o;
  wire n310_o;
  wire [1:0] n311_o;
  wire n313_o;
  wire n314_o;
  wire [2:0] n315_o;
  wire [7:0] n316_o;
  wire [12:0] n317_o;
  assign R = computedr;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:235:8  */
  assign excexpfracx = n29_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:236:8  */
  assign excexpfracy = n32_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:237:8  */
  assign exmey = n39_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:238:8  */
  assign eymex = n46_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:239:8  */
  assign swap = n49_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:240:8  */
  assign newx = n52_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:240:14  */
  assign newx_d1 = n16_q; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:241:8  */
  assign newy = n54_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:242:8  */
  assign expx = n55_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:242:14  */
  assign expx_d1 = n17_q; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:243:8  */
  assign excx = n56_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:244:8  */
  assign excy = n57_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:245:8  */
  assign signx = n58_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:245:15  */
  assign signx_d1 = n18_q; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:246:8  */
  assign signy = n59_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:247:8  */
  assign effsub = n60_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:247:16  */
  assign effsub_d1 = n19_q; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:247:27  */
  assign effsub_d2 = n20_q; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:248:8  */
  assign sxsyexnxy = n63_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:248:19  */
  assign sxsyexnxy_d1 = n21_q; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:250:8  */
  assign fracy = n68_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:251:8  */
  assign excrt = n176_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:251:15  */
  assign excrt_d1 = n22_q; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:251:25  */
  assign excrt_d2 = n23_q; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:252:8  */
  assign signr = n183_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:252:15  */
  assign signr_d1 = n24_q; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:253:8  */
  assign expdiff = n185_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:254:8  */
  assign shiftedout = n189_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:255:8  */
  assign shiftval = n193_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:256:8  */
  assign shiftedfracy = rightshiftercomponent_n195; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:256:22  */
  assign shiftedfracy_d1 = n25_q; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:257:8  */
  assign sticky = n202_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:258:8  */
  assign fracyfar = n206_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:259:8  */
  assign effsubvector = n209_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:260:8  */
  assign fracyfarxorop = n210_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:261:8  */
  assign fracxfar = n215_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:262:8  */
  assign cinaddfar = n217_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:263:8  */
  assign fracaddresult = fracadder_n218; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:264:8  */
  assign fracgrs = n221_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:265:8  */
  assign extendedexpinc = n226_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:265:24  */
  assign extendedexpinc_d1 = n26_q; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:266:8  */
  assign nzerosnew = lzc_component_n227; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:267:8  */
  assign shiftedfrac = lzc_component_n228; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:268:8  */
  assign updatedexp = n235_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:269:8  */
  assign eqdiffsign = n239_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:270:8  */
  assign expfrac = n242_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:271:8  */
  assign stk = n245_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:272:8  */
  assign rnd = n246_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:273:8  */
  assign grd = n247_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:274:8  */
  assign lsb = n248_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:275:8  */
  assign addtoroundbit = n256_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:276:8  */
  assign roundedexpfrac = roundingadder_n259; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:277:8  */
  assign upexc = n262_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:278:8  */
  assign fracr = n263_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:279:8  */
  assign expr = n264_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:280:8  */
  assign exexpexc = n265_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:281:8  */
  assign excrt2 = n304_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:282:8  */
  assign excr = n311_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:283:8  */
  assign signr2 = n314_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:284:8  */
  assign computedr = n317_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:288:10  */
  always @(posedge clk)
    n16_q <= newx;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:288:10  */
  always @(posedge clk)
    n17_q <= expx;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:288:10  */
  always @(posedge clk)
    n18_q <= signx;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:288:10  */
  always @(posedge clk)
    n19_q <= effsub;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:288:10  */
  always @(posedge clk)
    n20_q <= effsub_d1;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:288:10  */
  always @(posedge clk)
    n21_q <= sxsyexnxy;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:288:10  */
  always @(posedge clk)
    n22_q <= excrt;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:288:10  */
  always @(posedge clk)
    n23_q <= excrt_d1;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:288:10  */
  always @(posedge clk)
    n24_q <= signr;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:288:10  */
  always @(posedge clk)
    n25_q <= shiftedfracy;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:288:10  */
  always @(posedge clk)
    n26_q <= extendedexpinc;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:303:20  */
  assign n27_o = X[12:11];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:303:38  */
  assign n28_o = X[9:0];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:303:35  */
  assign n29_o = {n27_o, n28_o};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:304:20  */
  assign n30_o = Y[12:11];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:304:38  */
  assign n31_o = Y[9:0];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:304:35  */
  assign n32_o = {n30_o, n31_o};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:305:21  */
  assign n33_o = X[9:5];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:305:18  */
  assign n35_o = {1'b0, n33_o};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:305:45  */
  assign n36_o = Y[9:5];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:305:42  */
  assign n38_o = {1'b0, n36_o};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:305:35  */
  assign n39_o = n35_o - n38_o;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:306:21  */
  assign n40_o = Y[9:5];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:306:18  */
  assign n42_o = {1'b0, n40_o};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:306:45  */
  assign n43_o = X[9:5];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:306:42  */
  assign n45_o = {1'b0, n43_o};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:306:35  */
  assign n46_o = n42_o - n45_o;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:307:33  */
  assign n48_o = $unsigned(excexpfracx) >= $unsigned(excexpfracy);
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:307:16  */
  assign n49_o = n48_o ? 1'b0 : 1'b1;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:308:24  */
  assign n51_o = ~swap;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:308:14  */
  assign n52_o = n51_o ? X : Y;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:309:24  */
  assign n53_o = ~swap;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:309:14  */
  assign n54_o = n53_o ? Y : X;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:310:15  */
  assign n55_o = newx[9:5];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:311:15  */
  assign n56_o = newx[12:11];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:312:15  */
  assign n57_o = newy[12:11];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:313:16  */
  assign n58_o = newx[10];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:314:16  */
  assign n59_o = newy[10];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:315:20  */
  assign n60_o = signx ^ signy;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:316:23  */
  assign n61_o = {signx, signy};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:316:31  */
  assign n62_o = {n61_o, excx};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:316:38  */
  assign n63_o = {n62_o, excy};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:318:31  */
  assign n67_o = excy == 2'b00;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:318:22  */
  assign n68_o = n67_o ? 6'b000000 : n71_o;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:318:53  */
  assign n69_o = newy[4:0];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:318:47  */
  assign n71_o = {1'b1, n69_o};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:320:18  */
  assign n74_o = sxsyexnxy == 6'b000000;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:320:31  */
  assign n76_o = sxsyexnxy == 6'b010000;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:320:31  */
  assign n77_o = n74_o | n76_o;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:320:40  */
  assign n79_o = sxsyexnxy == 6'b100000;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:320:40  */
  assign n80_o = n77_o | n79_o;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:320:49  */
  assign n82_o = sxsyexnxy == 6'b110000;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:320:49  */
  assign n83_o = n80_o | n82_o;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:321:12  */
  assign n86_o = sxsyexnxy == 6'b000101;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:321:25  */
  assign n88_o = sxsyexnxy == 6'b010101;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:321:25  */
  assign n89_o = n86_o | n88_o;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:321:34  */
  assign n91_o = sxsyexnxy == 6'b100101;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:321:34  */
  assign n92_o = n89_o | n91_o;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:321:43  */
  assign n94_o = sxsyexnxy == 6'b110101;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:321:43  */
  assign n95_o = n92_o | n94_o;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:321:52  */
  assign n97_o = sxsyexnxy == 6'b000100;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:321:52  */
  assign n98_o = n95_o | n97_o;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:321:61  */
  assign n100_o = sxsyexnxy == 6'b010100;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:321:61  */
  assign n101_o = n98_o | n100_o;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:321:70  */
  assign n103_o = sxsyexnxy == 6'b100100;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:321:70  */
  assign n104_o = n101_o | n103_o;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:321:79  */
  assign n106_o = sxsyexnxy == 6'b110100;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:321:79  */
  assign n107_o = n104_o | n106_o;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:321:88  */
  assign n109_o = sxsyexnxy == 6'b000001;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:321:88  */
  assign n110_o = n107_o | n109_o;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:321:97  */
  assign n112_o = sxsyexnxy == 6'b010001;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:321:97  */
  assign n113_o = n110_o | n112_o;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:321:106  */
  assign n115_o = sxsyexnxy == 6'b100001;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:321:106  */
  assign n116_o = n113_o | n115_o;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:321:115  */
  assign n118_o = sxsyexnxy == 6'b110001;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:321:115  */
  assign n119_o = n116_o | n118_o;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:322:12  */
  assign n122_o = sxsyexnxy == 6'b111010;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:322:25  */
  assign n124_o = sxsyexnxy == 6'b001010;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:322:25  */
  assign n125_o = n122_o | n124_o;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:322:34  */
  assign n127_o = sxsyexnxy == 6'b001000;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:322:34  */
  assign n128_o = n125_o | n127_o;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:322:43  */
  assign n130_o = sxsyexnxy == 6'b011000;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:322:43  */
  assign n131_o = n128_o | n130_o;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:322:52  */
  assign n133_o = sxsyexnxy == 6'b101000;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:322:52  */
  assign n134_o = n131_o | n133_o;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:322:61  */
  assign n136_o = sxsyexnxy == 6'b111000;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:322:61  */
  assign n137_o = n134_o | n136_o;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:322:70  */
  assign n139_o = sxsyexnxy == 6'b000010;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:322:70  */
  assign n140_o = n137_o | n139_o;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:322:79  */
  assign n142_o = sxsyexnxy == 6'b010010;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:322:79  */
  assign n143_o = n140_o | n142_o;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:322:88  */
  assign n145_o = sxsyexnxy == 6'b100010;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:322:88  */
  assign n146_o = n143_o | n145_o;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:322:97  */
  assign n148_o = sxsyexnxy == 6'b110010;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:322:97  */
  assign n149_o = n146_o | n148_o;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:322:106  */
  assign n151_o = sxsyexnxy == 6'b001001;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:322:106  */
  assign n152_o = n149_o | n151_o;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:322:115  */
  assign n154_o = sxsyexnxy == 6'b011001;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:322:115  */
  assign n155_o = n152_o | n154_o;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:322:124  */
  assign n157_o = sxsyexnxy == 6'b101001;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:322:124  */
  assign n158_o = n155_o | n157_o;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:322:133  */
  assign n160_o = sxsyexnxy == 6'b111001;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:322:133  */
  assign n161_o = n158_o | n160_o;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:322:142  */
  assign n163_o = sxsyexnxy == 6'b000110;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:322:142  */
  assign n164_o = n161_o | n163_o;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:322:151  */
  assign n166_o = sxsyexnxy == 6'b010110;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:322:151  */
  assign n167_o = n164_o | n166_o;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:322:160  */
  assign n169_o = sxsyexnxy == 6'b100110;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:322:160  */
  assign n170_o = n167_o | n169_o;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:322:169  */
  assign n172_o = sxsyexnxy == 6'b110110;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:322:169  */
  assign n173_o = n170_o | n172_o;
  assign n175_o = {n173_o, n119_o, n83_o};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:319:4  */
  always @*
    case (n175_o)
      3'b100: n176_o <= 2'b10;
      3'b010: n176_o <= 2'b01;
      3'b001: n176_o <= 2'b00;
      default: n176_o <= 2'b11;
    endcase
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:325:34  */
  assign n179_o = sxsyexnxy_d1 == 6'b100000;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:325:59  */
  assign n181_o = sxsyexnxy_d1 == 6'b010000;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:325:44  */
  assign n182_o = n179_o | n181_o;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:325:16  */
  assign n183_o = n182_o ? 1'b0 : signx_d1;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:327:31  */
  assign n184_o = ~swap;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:327:21  */
  assign n185_o = n184_o ? exmey : eymex;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:328:36  */
  assign n188_o = $unsigned(expdiff) > $unsigned(6'b000111);
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:328:22  */
  assign n189_o = n188_o ? 1'b1 : 1'b0;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:329:23  */
  assign n191_o = expdiff[3:0];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:329:51  */
  assign n192_o = ~shiftedout;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:329:36  */
  assign n193_o = n192_o ? n191_o : 4'b1000;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:333:23  */
  assign rightshiftercomponent_n195 = rightshiftercomponent_r; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:330:4  */
  rightshifter_6_by_max_8_f400_uid4 rightshiftercomponent (
    .clk(clk),
    .rst(rst),
    .x(fracy),
    .s(shiftval),
    .r(rightshiftercomponent_r));
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:337:39  */
  assign n199_o = shiftedfracy_d1[5:0];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:337:51  */
  assign n201_o = n199_o == 6'b000000;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:337:18  */
  assign n202_o = n201_o ? 1'b0 : 1'b1;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:340:37  */
  assign n204_o = shiftedfracy_d1[13:6];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:340:20  */
  assign n206_o = {1'b0, n204_o};
  assign n207_o = {effsub_d1, effsub_d1, effsub_d1, effsub_d1};
  assign n208_o = {effsub_d1, effsub_d1, effsub_d1, effsub_d1};
  assign n209_o = {n207_o, n208_o, effsub_d1};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:342:30  */
  assign n210_o = fracyfar ^ effsubvector;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:343:31  */
  assign n211_o = newx_d1[4:0];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:343:21  */
  assign n213_o = {2'b01, n211_o};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:343:45  */
  assign n215_o = {n213_o, 2'b00};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:344:31  */
  assign n216_o = ~sticky;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:344:27  */
  assign n217_o = effsub_d1 & n216_o;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:349:23  */
  assign fracadder_n218 = fracadder_r; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:345:4  */
  intadder_9_f400_uid8 fracadder (
    .clk(clk),
    .rst(rst),
    .x(fracxfar),
    .y(fracyfarxorop),
    .cin(cinaddfar),
    .r(fracadder_r));
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:352:28  */
  assign n221_o = {fracaddresult, sticky};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:353:27  */
  assign n223_o = {2'b00, expx_d1};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:353:38  */
  assign n226_o = n223_o + 7'b0000001;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:357:27  */
  assign lzc_component_n227 = lzc_component_count; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:359:23  */
  assign lzc_component_n228 = lzc_component_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:354:4  */
  lzcshifter_10_to_10_counting_16_f400_uid16 lzc_component (
    .clk(clk),
    .rst(rst),
    .i(fracgrs),
    .count(lzc_component_count),
    .o(lzc_component_o));
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:361:45  */
  assign n234_o = {3'b000, nzerosnew};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:361:36  */
  assign n235_o = extendedexpinc_d1 - n234_o;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:362:36  */
  assign n238_o = nzerosnew == 4'b1111;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:362:22  */
  assign n239_o = n238_o ? 1'b1 : 1'b0;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:363:38  */
  assign n241_o = shiftedfrac[8:3];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:363:25  */
  assign n242_o = {updatedexp, n241_o};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:365:21  */
  assign n243_o = shiftedfrac[1];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:365:39  */
  assign n244_o = shiftedfrac[0];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:365:25  */
  assign n245_o = n243_o | n244_o;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:366:21  */
  assign n246_o = shiftedfrac[2];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:367:21  */
  assign n247_o = shiftedfrac[3];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:368:21  */
  assign n248_o = shiftedfrac[4];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:369:33  */
  assign n250_o = ~lsb;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:369:38  */
  assign n251_o = n250_o & grd;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:369:57  */
  assign n252_o = ~rnd;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:369:50  */
  assign n253_o = n251_o & n252_o;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:369:69  */
  assign n254_o = ~stk;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:369:62  */
  assign n255_o = n253_o & n254_o;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:369:24  */
  assign n256_o = n255_o ? 1'b0 : 1'b1;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:374:23  */
  assign roundingadder_n259 = roundingadder_r; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:370:4  */
  intadder_13_f400_uid20 roundingadder (
    .clk(clk),
    .rst(rst),
    .x(expfrac),
    .y(n258_o),
    .cin(addtoroundbit),
    .r(roundingadder_r));
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:378:27  */
  assign n262_o = roundedexpfrac[12:11];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:379:27  */
  assign n263_o = roundedexpfrac[5:1];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:380:26  */
  assign n264_o = roundedexpfrac[10:6];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:381:22  */
  assign n265_o = {upexc, excrt_d2};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:383:18  */
  assign n268_o = exexpexc == 4'b0000;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:383:29  */
  assign n270_o = exexpexc == 4'b0100;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:383:29  */
  assign n271_o = n268_o | n270_o;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:383:36  */
  assign n273_o = exexpexc == 4'b1000;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:383:36  */
  assign n274_o = n271_o | n273_o;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:383:43  */
  assign n276_o = exexpexc == 4'b1100;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:383:43  */
  assign n277_o = n274_o | n276_o;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:383:50  */
  assign n279_o = exexpexc == 4'b1001;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:383:50  */
  assign n280_o = n277_o | n279_o;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:383:57  */
  assign n282_o = exexpexc == 4'b1101;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:383:57  */
  assign n283_o = n280_o | n282_o;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:384:12  */
  assign n286_o = exexpexc == 4'b0001;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:385:12  */
  assign n289_o = exexpexc == 4'b0010;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:385:23  */
  assign n291_o = exexpexc == 4'b0110;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:385:23  */
  assign n292_o = n289_o | n291_o;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:385:30  */
  assign n294_o = exexpexc == 4'b1010;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:385:30  */
  assign n295_o = n292_o | n294_o;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:385:37  */
  assign n297_o = exexpexc == 4'b1110;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:385:37  */
  assign n298_o = n295_o | n297_o;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:385:44  */
  assign n300_o = exexpexc == 4'b0101;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:385:44  */
  assign n301_o = n298_o | n300_o;
  assign n303_o = {n301_o, n286_o, n283_o};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:382:4  */
  always @*
    case (n303_o)
      3'b100: n304_o <= 2'b10;
      3'b010: n304_o <= 2'b01;
      3'b001: n304_o <= 2'b00;
      default: n304_o <= 2'b11;
    endcase
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:387:38  */
  assign n306_o = eqdiffsign & effsub_d2;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:387:72  */
  assign n308_o = excrt_d2 == 2'b11;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:387:60  */
  assign n309_o = ~n308_o;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:387:56  */
  assign n310_o = n306_o & n309_o;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:387:17  */
  assign n311_o = n310_o ? 2'b00 : excrt2;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:388:39  */
  assign n313_o = eqdiffsign & effsub_d2;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:388:18  */
  assign n314_o = n313_o ? 1'b0 : signr_d1;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:389:22  */
  assign n315_o = {excr, signr2};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:389:31  */
  assign n316_o = {n315_o, expr};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fadd_5_5.vhdl:389:38  */
  assign n317_o = {n316_o, fracr};
endmodule

