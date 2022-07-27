module intadder_11_f400_uid20
  (input  clk,
   input  rst,
   input  ce,
   input  [10:0] x,
   input  [10:0] y,
   input  cin,
   output [10:0] r);
  wire [10:0] n441_o;
  wire [10:0] n442_o;
  wire [10:0] n443_o;
  assign r = n443_o;
  /* flopoco_fadd_4_4.vhdl:183:12  */
  assign n441_o = x + y;
  /* flopoco_fadd_4_4.vhdl:183:16  */
  assign n442_o = {10'b0, cin};  //  uext
  /* flopoco_fadd_4_4.vhdl:183:16  */
  assign n443_o = n441_o + n442_o;
endmodule

module lzcshifter_9_to_9_counting_16_f400_uid16
  (input  clk,
   input  rst,
   input  ce,
   input  [8:0] i,
   output [3:0] count,
   output [8:0] o);
  wire [8:0] level4;
  wire count3;
  wire count3_d1;
  wire [8:0] level3;
  wire count2;
  wire count2_d1;
  wire [8:0] level2;
  wire [8:0] level2_d1;
  wire count1;
  wire [8:0] level1;
  wire count0;
  wire [8:0] level0;
  wire [3:0] scount;
  wire n383_o;
  reg n384_q;
  wire n385_o;
  reg n386_q;
  wire [8:0] n387_o;
  reg [8:0] n388_q;
  wire [7:0] n390_o;
  wire n392_o;
  wire n393_o;
  wire n395_o;
  wire [8:0] n396_o;
  wire n397_o;
  wire [8:0] n399_o;
  wire [3:0] n401_o;
  wire n403_o;
  wire n404_o;
  wire n406_o;
  wire [8:0] n407_o;
  wire [4:0] n408_o;
  wire [8:0] n410_o;
  wire [1:0] n412_o;
  wire n414_o;
  wire n415_o;
  wire n417_o;
  wire [8:0] n418_o;
  wire [6:0] n419_o;
  wire [8:0] n421_o;
  wire n423_o;
  wire n425_o;
  wire n426_o;
  wire n428_o;
  wire [8:0] n429_o;
  wire [7:0] n430_o;
  wire [8:0] n432_o;
  wire [1:0] n433_o;
  wire [2:0] n434_o;
  wire [3:0] n435_o;
  assign count = scount;
  assign o = level0;
  /* flopoco_fadd_4_4.vhdl:131:19  */
  assign level4 = i; // (signal)
  /* flopoco_fadd_4_4.vhdl:109:8  */
  assign count3 = n393_o; // (signal)
  /* flopoco_fadd_4_4.vhdl:109:16  */
  assign count3_d1 = n384_q; // (signal)
  /* flopoco_fadd_4_4.vhdl:134:19  */
  assign level3 = n396_o; // (signal)
  /* flopoco_fadd_4_4.vhdl:111:8  */
  assign count2 = n404_o; // (signal)
  /* flopoco_fadd_4_4.vhdl:111:16  */
  assign count2_d1 = n386_q; // (signal)
  /* flopoco_fadd_4_4.vhdl:112:8  */
  assign level2 = n407_o; // (signal)
  /* flopoco_fadd_4_4.vhdl:138:22  */
  assign level2_d1 = n388_q; // (signal)
  /* flopoco_fadd_4_4.vhdl:113:8  */
  assign count1 = n415_o; // (signal)
  /* flopoco_fadd_4_4.vhdl:141:19  */
  assign level1 = n418_o; // (signal)
  /* flopoco_fadd_4_4.vhdl:115:8  */
  assign count0 = n426_o; // (signal)
  /* flopoco_fadd_4_4.vhdl:116:8  */
  assign level0 = n429_o; // (signal)
  /* flopoco_fadd_4_4.vhdl:117:8  */
  assign scount = n435_o; // (signal)
  /* flopoco_fadd_4_4.vhdl:121:10  */
  assign n383_o = ce ? count3 : count3_d1;
  /* flopoco_fadd_4_4.vhdl:121:10  */
  always @(posedge clk)
    n384_q <= n383_o;
  /* flopoco_fadd_4_4.vhdl:121:10  */
  assign n385_o = ce ? count2 : count2_d1;
  /* flopoco_fadd_4_4.vhdl:121:10  */
  always @(posedge clk)
    n386_q <= n385_o;
  /* flopoco_fadd_4_4.vhdl:121:10  */
  assign n387_o = ce ? level2 : level2_d1;
  /* flopoco_fadd_4_4.vhdl:121:10  */
  always @(posedge clk)
    n388_q <= n387_o;
  /* flopoco_fadd_4_4.vhdl:130:28  */
  assign n390_o = level4[8:1];
  /* flopoco_fadd_4_4.vhdl:130:41  */
  assign n392_o = n390_o == 8'b00000000;
  /* flopoco_fadd_4_4.vhdl:130:17  */
  assign n393_o = n392_o ? 1'b1 : 1'b0;
  /* flopoco_fadd_4_4.vhdl:131:43  */
  assign n395_o = ~count3;
  /* flopoco_fadd_4_4.vhdl:131:32  */
  assign n396_o = n395_o ? level4 : n399_o;
  /* flopoco_fadd_4_4.vhdl:131:59  */
  assign n397_o = level4[0];
  /* flopoco_fadd_4_4.vhdl:131:72  */
  assign n399_o = {n397_o, 8'b00000000};
  /* flopoco_fadd_4_4.vhdl:133:28  */
  assign n401_o = level3[8:5];
  /* flopoco_fadd_4_4.vhdl:133:41  */
  assign n403_o = n401_o == 4'b0000;
  /* flopoco_fadd_4_4.vhdl:133:17  */
  assign n404_o = n403_o ? 1'b1 : 1'b0;
  /* flopoco_fadd_4_4.vhdl:134:43  */
  assign n406_o = ~count2;
  /* flopoco_fadd_4_4.vhdl:134:32  */
  assign n407_o = n406_o ? level3 : n410_o;
  /* flopoco_fadd_4_4.vhdl:134:59  */
  assign n408_o = level3[4:0];
  /* flopoco_fadd_4_4.vhdl:134:72  */
  assign n410_o = {n408_o, 4'b0000};
  /* flopoco_fadd_4_4.vhdl:137:31  */
  assign n412_o = level2_d1[8:7];
  /* flopoco_fadd_4_4.vhdl:137:44  */
  assign n414_o = n412_o == 2'b00;
  /* flopoco_fadd_4_4.vhdl:137:17  */
  assign n415_o = n414_o ? 1'b1 : 1'b0;
  /* flopoco_fadd_4_4.vhdl:138:46  */
  assign n417_o = ~count1;
  /* flopoco_fadd_4_4.vhdl:138:35  */
  assign n418_o = n417_o ? level2_d1 : n421_o;
  /* flopoco_fadd_4_4.vhdl:138:65  */
  assign n419_o = level2_d1[6:0];
  /* flopoco_fadd_4_4.vhdl:138:78  */
  assign n421_o = {n419_o, 2'b00};
  /* flopoco_fadd_4_4.vhdl:140:28  */
  assign n423_o = level1[8];
  /* flopoco_fadd_4_4.vhdl:140:41  */
  assign n425_o = n423_o == 1'b0;
  /* flopoco_fadd_4_4.vhdl:140:17  */
  assign n426_o = n425_o ? 1'b1 : 1'b0;
  /* flopoco_fadd_4_4.vhdl:141:43  */
  assign n428_o = ~count0;
  /* flopoco_fadd_4_4.vhdl:141:32  */
  assign n429_o = n428_o ? level1 : n432_o;
  /* flopoco_fadd_4_4.vhdl:141:59  */
  assign n430_o = level1[7:0];
  /* flopoco_fadd_4_4.vhdl:141:72  */
  assign n432_o = {n430_o, 1'b0};
  /* flopoco_fadd_4_4.vhdl:144:24  */
  assign n433_o = {count3_d1, count2_d1};
  /* flopoco_fadd_4_4.vhdl:144:36  */
  assign n434_o = {n433_o, count1};
  /* flopoco_fadd_4_4.vhdl:144:45  */
  assign n435_o = {n434_o, count0};
endmodule

module intadder_8_f400_uid8
  (input  clk,
   input  rst,
   input  ce,
   input  [7:0] x,
   input  [7:0] y,
   input  cin,
   output [7:0] r);
  wire [7:0] n368_o;
  wire [7:0] n369_o;
  wire [7:0] n370_o;
  assign r = n370_o;
  /* flopoco_fadd_4_4.vhdl:81:12  */
  assign n368_o = x + y;
  /* flopoco_fadd_4_4.vhdl:81:16  */
  assign n369_o = {7'b0, cin};  //  uext
  /* flopoco_fadd_4_4.vhdl:81:16  */
  assign n370_o = n368_o + n369_o;
endmodule

module rightshifter_5_by_max_7_f400_uid4
  (input  clk,
   input  rst,
   input  ce,
   input  [4:0] x,
   input  [2:0] s,
   output [11:0] r);
  wire [4:0] level0;
  wire [2:0] ps;
  wire [5:0] level1;
  wire [7:0] level2;
  wire [11:0] level3;
  wire [5:0] n346_o;
  wire n347_o;
  wire [5:0] n348_o;
  wire [5:0] n350_o;
  wire [7:0] n352_o;
  wire n353_o;
  wire [7:0] n354_o;
  wire [7:0] n356_o;
  wire [11:0] n358_o;
  wire n359_o;
  wire [11:0] n360_o;
  wire [11:0] n362_o;
  assign r = level3;
  /* flopoco_fadd_4_4.vhdl:25:8  */
  assign level0 = x; // (signal)
  /* flopoco_fadd_4_4.vhdl:26:8  */
  assign ps = s; // (signal)
  /* flopoco_fadd_4_4.vhdl:27:8  */
  assign level1 = n348_o; // (signal)
  /* flopoco_fadd_4_4.vhdl:28:8  */
  assign level2 = n354_o; // (signal)
  /* flopoco_fadd_4_4.vhdl:43:15  */
  assign level3 = n360_o; // (signal)
  /* flopoco_fadd_4_4.vhdl:40:34  */
  assign n346_o = {1'b0, level0};
  /* flopoco_fadd_4_4.vhdl:40:50  */
  assign n347_o = ps[0];
  /* flopoco_fadd_4_4.vhdl:40:43  */
  assign n348_o = n347_o ? n346_o : n350_o;
  /* flopoco_fadd_4_4.vhdl:40:75  */
  assign n350_o = {level0, 1'b0};
  /* flopoco_fadd_4_4.vhdl:41:34  */
  assign n352_o = {2'b00, level1};
  /* flopoco_fadd_4_4.vhdl:41:50  */
  assign n353_o = ps[1];
  /* flopoco_fadd_4_4.vhdl:41:43  */
  assign n354_o = n353_o ? n352_o : n356_o;
  /* flopoco_fadd_4_4.vhdl:41:75  */
  assign n356_o = {level1, 2'b00};
  /* flopoco_fadd_4_4.vhdl:42:34  */
  assign n358_o = {4'b0000, level2};
  /* flopoco_fadd_4_4.vhdl:42:50  */
  assign n359_o = ps[2];
  /* flopoco_fadd_4_4.vhdl:42:43  */
  assign n360_o = n359_o ? n358_o : n362_o;
  /* flopoco_fadd_4_4.vhdl:42:75  */
  assign n362_o = {level2, 4'b0000};
endmodule

module fadd
  (input  clk,
   input  rst,
   input  ce,
   input  [10:0] X,
   input  [10:0] Y,
   output [10:0] R);
  wire [9:0] excexpfracx;
  wire [9:0] excexpfracy;
  wire [4:0] exmey;
  wire [4:0] eymex;
  wire swap;
  wire [10:0] newx;
  wire [10:0] newx_d1;
  wire [10:0] newy;
  wire [3:0] expx;
  wire [3:0] expx_d1;
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
  wire [4:0] fracy;
  wire [1:0] excrt;
  wire [1:0] excrt_d1;
  wire [1:0] excrt_d2;
  wire signr;
  wire signr_d1;
  wire [4:0] expdiff;
  wire shiftedout;
  wire [2:0] shiftval;
  wire [11:0] shiftedfracy;
  wire [11:0] shiftedfracy_d1;
  wire sticky;
  wire [7:0] fracyfar;
  wire [7:0] effsubvector;
  wire [7:0] fracyfarxorop;
  wire [7:0] fracxfar;
  wire cinaddfar;
  wire [7:0] fracaddresult;
  wire [8:0] fracgrs;
  wire [5:0] extendedexpinc;
  wire [5:0] extendedexpinc_d1;
  wire [3:0] nzerosnew;
  wire [8:0] shiftedfrac;
  wire [5:0] updatedexp;
  wire eqdiffsign;
  wire [10:0] expfrac;
  wire stk;
  wire rnd;
  wire grd;
  wire lsb;
  wire addtoroundbit;
  wire [10:0] roundedexpfrac;
  wire [1:0] upexc;
  wire [3:0] fracr;
  wire [3:0] expr;
  wire [3:0] exexpexc;
  wire [1:0] excrt2;
  wire [1:0] excr;
  wire signr2;
  wire [10:0] computedr;
  wire [10:0] n27_o;
  reg [10:0] n28_q;
  wire [3:0] n29_o;
  reg [3:0] n30_q;
  wire n31_o;
  reg n32_q;
  wire n33_o;
  reg n34_q;
  wire n35_o;
  reg n36_q;
  wire [5:0] n37_o;
  reg [5:0] n38_q;
  wire [1:0] n39_o;
  reg [1:0] n40_q;
  wire [1:0] n41_o;
  reg [1:0] n42_q;
  wire n43_o;
  reg n44_q;
  wire [11:0] n45_o;
  reg [11:0] n46_q;
  wire [5:0] n47_o;
  reg [5:0] n48_q;
  wire [1:0] n49_o;
  wire [7:0] n50_o;
  wire [9:0] n51_o;
  wire [1:0] n52_o;
  wire [7:0] n53_o;
  wire [9:0] n54_o;
  wire [3:0] n55_o;
  wire [4:0] n57_o;
  wire [3:0] n58_o;
  wire [4:0] n60_o;
  wire [4:0] n61_o;
  wire [3:0] n62_o;
  wire [4:0] n64_o;
  wire [3:0] n65_o;
  wire [4:0] n67_o;
  wire [4:0] n68_o;
  wire n70_o;
  wire n71_o;
  wire n73_o;
  wire [10:0] n74_o;
  wire n75_o;
  wire [10:0] n76_o;
  wire [3:0] n77_o;
  wire [1:0] n78_o;
  wire [1:0] n79_o;
  wire n80_o;
  wire n81_o;
  wire n82_o;
  wire [1:0] n83_o;
  wire [3:0] n84_o;
  wire [5:0] n85_o;
  wire n89_o;
  wire [4:0] n90_o;
  wire [3:0] n91_o;
  wire [4:0] n93_o;
  wire n96_o;
  wire n98_o;
  wire n99_o;
  wire n101_o;
  wire n102_o;
  wire n104_o;
  wire n105_o;
  wire n108_o;
  wire n110_o;
  wire n111_o;
  wire n113_o;
  wire n114_o;
  wire n116_o;
  wire n117_o;
  wire n119_o;
  wire n120_o;
  wire n122_o;
  wire n123_o;
  wire n125_o;
  wire n126_o;
  wire n128_o;
  wire n129_o;
  wire n131_o;
  wire n132_o;
  wire n134_o;
  wire n135_o;
  wire n137_o;
  wire n138_o;
  wire n140_o;
  wire n141_o;
  wire n144_o;
  wire n146_o;
  wire n147_o;
  wire n149_o;
  wire n150_o;
  wire n152_o;
  wire n153_o;
  wire n155_o;
  wire n156_o;
  wire n158_o;
  wire n159_o;
  wire n161_o;
  wire n162_o;
  wire n164_o;
  wire n165_o;
  wire n167_o;
  wire n168_o;
  wire n170_o;
  wire n171_o;
  wire n173_o;
  wire n174_o;
  wire n176_o;
  wire n177_o;
  wire n179_o;
  wire n180_o;
  wire n182_o;
  wire n183_o;
  wire n185_o;
  wire n186_o;
  wire n188_o;
  wire n189_o;
  wire n191_o;
  wire n192_o;
  wire n194_o;
  wire n195_o;
  wire [2:0] n197_o;
  reg [1:0] n198_o;
  wire n201_o;
  wire n203_o;
  wire n204_o;
  wire n205_o;
  wire n206_o;
  wire [4:0] n207_o;
  wire n210_o;
  wire n211_o;
  wire [2:0] n213_o;
  wire n214_o;
  wire [2:0] n215_o;
  wire [11:0] rightshiftercomponent_n217;
  wire [11:0] rightshiftercomponent_r;
  wire [4:0] n221_o;
  wire n223_o;
  wire n224_o;
  wire [6:0] n226_o;
  wire [7:0] n228_o;
  wire [3:0] n229_o;
  wire [3:0] n230_o;
  wire [7:0] n231_o;
  wire [7:0] n232_o;
  wire [3:0] n233_o;
  wire [5:0] n235_o;
  wire [7:0] n237_o;
  wire n238_o;
  wire n239_o;
  wire [7:0] fracadder_n240;
  wire [7:0] fracadder_r;
  wire [8:0] n243_o;
  wire [5:0] n245_o;
  wire [5:0] n248_o;
  wire [3:0] lzc_component_n249;
  wire [8:0] lzc_component_n250;
  wire [3:0] lzc_component_count;
  wire [8:0] lzc_component_o;
  wire [5:0] n256_o;
  wire [5:0] n257_o;
  wire n260_o;
  wire n261_o;
  wire [4:0] n263_o;
  wire [10:0] n264_o;
  wire n265_o;
  wire n266_o;
  wire n267_o;
  wire n268_o;
  wire n269_o;
  wire n270_o;
  wire n272_o;
  wire n273_o;
  wire n274_o;
  wire n275_o;
  wire n276_o;
  wire n277_o;
  wire n278_o;
  localparam [10:0] n280_o = 11'b00000000000;
  wire [10:0] roundingadder_n281;
  wire [10:0] roundingadder_r;
  wire [1:0] n284_o;
  wire [3:0] n285_o;
  wire [3:0] n286_o;
  wire [3:0] n287_o;
  wire n290_o;
  wire n292_o;
  wire n293_o;
  wire n295_o;
  wire n296_o;
  wire n298_o;
  wire n299_o;
  wire n301_o;
  wire n302_o;
  wire n304_o;
  wire n305_o;
  wire n308_o;
  wire n311_o;
  wire n313_o;
  wire n314_o;
  wire n316_o;
  wire n317_o;
  wire n319_o;
  wire n320_o;
  wire n322_o;
  wire n323_o;
  wire [2:0] n325_o;
  reg [1:0] n326_o;
  wire n328_o;
  wire n330_o;
  wire n331_o;
  wire n332_o;
  wire [1:0] n333_o;
  wire n335_o;
  wire n336_o;
  wire [2:0] n337_o;
  wire [6:0] n338_o;
  wire [10:0] n339_o;
  assign R = computedr;
  /* flopoco_fadd_4_4.vhdl:241:8  */
  assign excexpfracx = n51_o; // (signal)
  /* flopoco_fadd_4_4.vhdl:242:8  */
  assign excexpfracy = n54_o; // (signal)
  /* flopoco_fadd_4_4.vhdl:243:8  */
  assign exmey = n61_o; // (signal)
  /* flopoco_fadd_4_4.vhdl:244:8  */
  assign eymex = n68_o; // (signal)
  /* flopoco_fadd_4_4.vhdl:245:8  */
  assign swap = n71_o; // (signal)
  /* flopoco_fadd_4_4.vhdl:246:8  */
  assign newx = n74_o; // (signal)
  /* flopoco_fadd_4_4.vhdl:246:14  */
  assign newx_d1 = n28_q; // (signal)
  /* flopoco_fadd_4_4.vhdl:247:8  */
  assign newy = n76_o; // (signal)
  /* flopoco_fadd_4_4.vhdl:248:8  */
  assign expx = n77_o; // (signal)
  /* flopoco_fadd_4_4.vhdl:248:14  */
  assign expx_d1 = n30_q; // (signal)
  /* flopoco_fadd_4_4.vhdl:249:8  */
  assign excx = n78_o; // (signal)
  /* flopoco_fadd_4_4.vhdl:250:8  */
  assign excy = n79_o; // (signal)
  /* flopoco_fadd_4_4.vhdl:251:8  */
  assign signx = n80_o; // (signal)
  /* flopoco_fadd_4_4.vhdl:251:15  */
  assign signx_d1 = n32_q; // (signal)
  /* flopoco_fadd_4_4.vhdl:252:8  */
  assign signy = n81_o; // (signal)
  /* flopoco_fadd_4_4.vhdl:253:8  */
  assign effsub = n82_o; // (signal)
  /* flopoco_fadd_4_4.vhdl:253:16  */
  assign effsub_d1 = n34_q; // (signal)
  /* flopoco_fadd_4_4.vhdl:253:27  */
  assign effsub_d2 = n36_q; // (signal)
  /* flopoco_fadd_4_4.vhdl:254:8  */
  assign sxsyexnxy = n85_o; // (signal)
  /* flopoco_fadd_4_4.vhdl:254:19  */
  assign sxsyexnxy_d1 = n38_q; // (signal)
  /* flopoco_fadd_4_4.vhdl:256:8  */
  assign fracy = n90_o; // (signal)
  /* flopoco_fadd_4_4.vhdl:257:8  */
  assign excrt = n198_o; // (signal)
  /* flopoco_fadd_4_4.vhdl:257:15  */
  assign excrt_d1 = n40_q; // (signal)
  /* flopoco_fadd_4_4.vhdl:257:25  */
  assign excrt_d2 = n42_q; // (signal)
  /* flopoco_fadd_4_4.vhdl:258:8  */
  assign signr = n205_o; // (signal)
  /* flopoco_fadd_4_4.vhdl:258:15  */
  assign signr_d1 = n44_q; // (signal)
  /* flopoco_fadd_4_4.vhdl:259:8  */
  assign expdiff = n207_o; // (signal)
  /* flopoco_fadd_4_4.vhdl:260:8  */
  assign shiftedout = n211_o; // (signal)
  /* flopoco_fadd_4_4.vhdl:261:8  */
  assign shiftval = n215_o; // (signal)
  /* flopoco_fadd_4_4.vhdl:262:8  */
  assign shiftedfracy = rightshiftercomponent_n217; // (signal)
  /* flopoco_fadd_4_4.vhdl:262:22  */
  assign shiftedfracy_d1 = n46_q; // (signal)
  /* flopoco_fadd_4_4.vhdl:263:8  */
  assign sticky = n224_o; // (signal)
  /* flopoco_fadd_4_4.vhdl:264:8  */
  assign fracyfar = n228_o; // (signal)
  /* flopoco_fadd_4_4.vhdl:265:8  */
  assign effsubvector = n231_o; // (signal)
  /* flopoco_fadd_4_4.vhdl:266:8  */
  assign fracyfarxorop = n232_o; // (signal)
  /* flopoco_fadd_4_4.vhdl:267:8  */
  assign fracxfar = n237_o; // (signal)
  /* flopoco_fadd_4_4.vhdl:268:8  */
  assign cinaddfar = n239_o; // (signal)
  /* flopoco_fadd_4_4.vhdl:269:8  */
  assign fracaddresult = fracadder_n240; // (signal)
  /* flopoco_fadd_4_4.vhdl:270:8  */
  assign fracgrs = n243_o; // (signal)
  /* flopoco_fadd_4_4.vhdl:271:8  */
  assign extendedexpinc = n248_o; // (signal)
  /* flopoco_fadd_4_4.vhdl:271:24  */
  assign extendedexpinc_d1 = n48_q; // (signal)
  /* flopoco_fadd_4_4.vhdl:272:8  */
  assign nzerosnew = lzc_component_n249; // (signal)
  /* flopoco_fadd_4_4.vhdl:273:8  */
  assign shiftedfrac = lzc_component_n250; // (signal)
  /* flopoco_fadd_4_4.vhdl:274:8  */
  assign updatedexp = n257_o; // (signal)
  /* flopoco_fadd_4_4.vhdl:275:8  */
  assign eqdiffsign = n261_o; // (signal)
  /* flopoco_fadd_4_4.vhdl:276:8  */
  assign expfrac = n264_o; // (signal)
  /* flopoco_fadd_4_4.vhdl:277:8  */
  assign stk = n267_o; // (signal)
  /* flopoco_fadd_4_4.vhdl:278:8  */
  assign rnd = n268_o; // (signal)
  /* flopoco_fadd_4_4.vhdl:279:8  */
  assign grd = n269_o; // (signal)
  /* flopoco_fadd_4_4.vhdl:280:8  */
  assign lsb = n270_o; // (signal)
  /* flopoco_fadd_4_4.vhdl:281:8  */
  assign addtoroundbit = n278_o; // (signal)
  /* flopoco_fadd_4_4.vhdl:282:8  */
  assign roundedexpfrac = roundingadder_n281; // (signal)
  /* flopoco_fadd_4_4.vhdl:283:8  */
  assign upexc = n284_o; // (signal)
  /* flopoco_fadd_4_4.vhdl:284:8  */
  assign fracr = n285_o; // (signal)
  /* flopoco_fadd_4_4.vhdl:285:8  */
  assign expr = n286_o; // (signal)
  /* flopoco_fadd_4_4.vhdl:286:8  */
  assign exexpexc = n287_o; // (signal)
  /* flopoco_fadd_4_4.vhdl:287:8  */
  assign excrt2 = n326_o; // (signal)
  /* flopoco_fadd_4_4.vhdl:288:8  */
  assign excr = n333_o; // (signal)
  /* flopoco_fadd_4_4.vhdl:289:8  */
  assign signr2 = n336_o; // (signal)
  /* flopoco_fadd_4_4.vhdl:290:8  */
  assign computedr = n339_o; // (signal)
  /* flopoco_fadd_4_4.vhdl:294:10  */
  assign n27_o = ce ? newx : newx_d1;
  /* flopoco_fadd_4_4.vhdl:294:10  */
  always @(posedge clk)
    n28_q <= n27_o;
  /* flopoco_fadd_4_4.vhdl:294:10  */
  assign n29_o = ce ? expx : expx_d1;
  /* flopoco_fadd_4_4.vhdl:294:10  */
  always @(posedge clk)
    n30_q <= n29_o;
  /* flopoco_fadd_4_4.vhdl:294:10  */
  assign n31_o = ce ? signx : signx_d1;
  /* flopoco_fadd_4_4.vhdl:294:10  */
  always @(posedge clk)
    n32_q <= n31_o;
  /* flopoco_fadd_4_4.vhdl:294:10  */
  assign n33_o = ce ? effsub : effsub_d1;
  /* flopoco_fadd_4_4.vhdl:294:10  */
  always @(posedge clk)
    n34_q <= n33_o;
  /* flopoco_fadd_4_4.vhdl:294:10  */
  assign n35_o = ce ? effsub_d1 : effsub_d2;
  /* flopoco_fadd_4_4.vhdl:294:10  */
  always @(posedge clk)
    n36_q <= n35_o;
  /* flopoco_fadd_4_4.vhdl:294:10  */
  assign n37_o = ce ? sxsyexnxy : sxsyexnxy_d1;
  /* flopoco_fadd_4_4.vhdl:294:10  */
  always @(posedge clk)
    n38_q <= n37_o;
  /* flopoco_fadd_4_4.vhdl:294:10  */
  assign n39_o = ce ? excrt : excrt_d1;
  /* flopoco_fadd_4_4.vhdl:294:10  */
  always @(posedge clk)
    n40_q <= n39_o;
  /* flopoco_fadd_4_4.vhdl:294:10  */
  assign n41_o = ce ? excrt_d1 : excrt_d2;
  /* flopoco_fadd_4_4.vhdl:294:10  */
  always @(posedge clk)
    n42_q <= n41_o;
  /* flopoco_fadd_4_4.vhdl:294:10  */
  assign n43_o = ce ? signr : signr_d1;
  /* flopoco_fadd_4_4.vhdl:294:10  */
  always @(posedge clk)
    n44_q <= n43_o;
  /* flopoco_fadd_4_4.vhdl:294:10  */
  assign n45_o = ce ? shiftedfracy : shiftedfracy_d1;
  /* flopoco_fadd_4_4.vhdl:294:10  */
  always @(posedge clk)
    n46_q <= n45_o;
  /* flopoco_fadd_4_4.vhdl:294:10  */
  assign n47_o = ce ? extendedexpinc : extendedexpinc_d1;
  /* flopoco_fadd_4_4.vhdl:294:10  */
  always @(posedge clk)
    n48_q <= n47_o;
  /* flopoco_fadd_4_4.vhdl:311:20  */
  assign n49_o = X[10:9];
  /* flopoco_fadd_4_4.vhdl:311:37  */
  assign n50_o = X[7:0];
  /* flopoco_fadd_4_4.vhdl:311:34  */
  assign n51_o = {n49_o, n50_o};
  /* flopoco_fadd_4_4.vhdl:312:20  */
  assign n52_o = Y[10:9];
  /* flopoco_fadd_4_4.vhdl:312:37  */
  assign n53_o = Y[7:0];
  /* flopoco_fadd_4_4.vhdl:312:34  */
  assign n54_o = {n52_o, n53_o};
  /* flopoco_fadd_4_4.vhdl:313:21  */
  assign n55_o = X[7:4];
  /* flopoco_fadd_4_4.vhdl:313:18  */
  assign n57_o = {1'b0, n55_o};
  /* flopoco_fadd_4_4.vhdl:313:45  */
  assign n58_o = Y[7:4];
  /* flopoco_fadd_4_4.vhdl:313:42  */
  assign n60_o = {1'b0, n58_o};
  /* flopoco_fadd_4_4.vhdl:313:35  */
  assign n61_o = n57_o - n60_o;
  /* flopoco_fadd_4_4.vhdl:314:21  */
  assign n62_o = Y[7:4];
  /* flopoco_fadd_4_4.vhdl:314:18  */
  assign n64_o = {1'b0, n62_o};
  /* flopoco_fadd_4_4.vhdl:314:45  */
  assign n65_o = X[7:4];
  /* flopoco_fadd_4_4.vhdl:314:42  */
  assign n67_o = {1'b0, n65_o};
  /* flopoco_fadd_4_4.vhdl:314:35  */
  assign n68_o = n64_o - n67_o;
  /* flopoco_fadd_4_4.vhdl:315:33  */
  assign n70_o = $unsigned(excexpfracx) >= $unsigned(excexpfracy);
  /* flopoco_fadd_4_4.vhdl:315:16  */
  assign n71_o = n70_o ? 1'b0 : 1'b1;
  /* flopoco_fadd_4_4.vhdl:316:24  */
  assign n73_o = ~swap;
  /* flopoco_fadd_4_4.vhdl:316:14  */
  assign n74_o = n73_o ? X : Y;
  /* flopoco_fadd_4_4.vhdl:317:24  */
  assign n75_o = ~swap;
  /* flopoco_fadd_4_4.vhdl:317:14  */
  assign n76_o = n75_o ? Y : X;
  /* flopoco_fadd_4_4.vhdl:318:15  */
  assign n77_o = newx[7:4];
  /* flopoco_fadd_4_4.vhdl:319:15  */
  assign n78_o = newx[10:9];
  /* flopoco_fadd_4_4.vhdl:320:15  */
  assign n79_o = newy[10:9];
  /* flopoco_fadd_4_4.vhdl:321:16  */
  assign n80_o = newx[8];
  /* flopoco_fadd_4_4.vhdl:322:16  */
  assign n81_o = newy[8];
  /* flopoco_fadd_4_4.vhdl:323:20  */
  assign n82_o = signx ^ signy;
  /* flopoco_fadd_4_4.vhdl:324:23  */
  assign n83_o = {signx, signy};
  /* flopoco_fadd_4_4.vhdl:324:31  */
  assign n84_o = {n83_o, excx};
  /* flopoco_fadd_4_4.vhdl:324:38  */
  assign n85_o = {n84_o, excy};
  /* flopoco_fadd_4_4.vhdl:326:30  */
  assign n89_o = excy == 2'b00;
  /* flopoco_fadd_4_4.vhdl:326:21  */
  assign n90_o = n89_o ? 5'b00000 : n93_o;
  /* flopoco_fadd_4_4.vhdl:326:52  */
  assign n91_o = newy[3:0];
  /* flopoco_fadd_4_4.vhdl:326:46  */
  assign n93_o = {1'b1, n91_o};
  /* flopoco_fadd_4_4.vhdl:328:18  */
  assign n96_o = sxsyexnxy == 6'b000000;
  /* flopoco_fadd_4_4.vhdl:328:31  */
  assign n98_o = sxsyexnxy == 6'b010000;
  /* flopoco_fadd_4_4.vhdl:328:31  */
  assign n99_o = n96_o | n98_o;
  /* flopoco_fadd_4_4.vhdl:328:40  */
  assign n101_o = sxsyexnxy == 6'b100000;
  /* flopoco_fadd_4_4.vhdl:328:40  */
  assign n102_o = n99_o | n101_o;
  /* flopoco_fadd_4_4.vhdl:328:49  */
  assign n104_o = sxsyexnxy == 6'b110000;
  /* flopoco_fadd_4_4.vhdl:328:49  */
  assign n105_o = n102_o | n104_o;
  /* flopoco_fadd_4_4.vhdl:329:12  */
  assign n108_o = sxsyexnxy == 6'b000101;
  /* flopoco_fadd_4_4.vhdl:329:25  */
  assign n110_o = sxsyexnxy == 6'b010101;
  /* flopoco_fadd_4_4.vhdl:329:25  */
  assign n111_o = n108_o | n110_o;
  /* flopoco_fadd_4_4.vhdl:329:34  */
  assign n113_o = sxsyexnxy == 6'b100101;
  /* flopoco_fadd_4_4.vhdl:329:34  */
  assign n114_o = n111_o | n113_o;
  /* flopoco_fadd_4_4.vhdl:329:43  */
  assign n116_o = sxsyexnxy == 6'b110101;
  /* flopoco_fadd_4_4.vhdl:329:43  */
  assign n117_o = n114_o | n116_o;
  /* flopoco_fadd_4_4.vhdl:329:52  */
  assign n119_o = sxsyexnxy == 6'b000100;
  /* flopoco_fadd_4_4.vhdl:329:52  */
  assign n120_o = n117_o | n119_o;
  /* flopoco_fadd_4_4.vhdl:329:61  */
  assign n122_o = sxsyexnxy == 6'b010100;
  /* flopoco_fadd_4_4.vhdl:329:61  */
  assign n123_o = n120_o | n122_o;
  /* flopoco_fadd_4_4.vhdl:329:70  */
  assign n125_o = sxsyexnxy == 6'b100100;
  /* flopoco_fadd_4_4.vhdl:329:70  */
  assign n126_o = n123_o | n125_o;
  /* flopoco_fadd_4_4.vhdl:329:79  */
  assign n128_o = sxsyexnxy == 6'b110100;
  /* flopoco_fadd_4_4.vhdl:329:79  */
  assign n129_o = n126_o | n128_o;
  /* flopoco_fadd_4_4.vhdl:329:88  */
  assign n131_o = sxsyexnxy == 6'b000001;
  /* flopoco_fadd_4_4.vhdl:329:88  */
  assign n132_o = n129_o | n131_o;
  /* flopoco_fadd_4_4.vhdl:329:97  */
  assign n134_o = sxsyexnxy == 6'b010001;
  /* flopoco_fadd_4_4.vhdl:329:97  */
  assign n135_o = n132_o | n134_o;
  /* flopoco_fadd_4_4.vhdl:329:106  */
  assign n137_o = sxsyexnxy == 6'b100001;
  /* flopoco_fadd_4_4.vhdl:329:106  */
  assign n138_o = n135_o | n137_o;
  /* flopoco_fadd_4_4.vhdl:329:115  */
  assign n140_o = sxsyexnxy == 6'b110001;
  /* flopoco_fadd_4_4.vhdl:329:115  */
  assign n141_o = n138_o | n140_o;
  /* flopoco_fadd_4_4.vhdl:330:12  */
  assign n144_o = sxsyexnxy == 6'b111010;
  /* flopoco_fadd_4_4.vhdl:330:25  */
  assign n146_o = sxsyexnxy == 6'b001010;
  /* flopoco_fadd_4_4.vhdl:330:25  */
  assign n147_o = n144_o | n146_o;
  /* flopoco_fadd_4_4.vhdl:330:34  */
  assign n149_o = sxsyexnxy == 6'b001000;
  /* flopoco_fadd_4_4.vhdl:330:34  */
  assign n150_o = n147_o | n149_o;
  /* flopoco_fadd_4_4.vhdl:330:43  */
  assign n152_o = sxsyexnxy == 6'b011000;
  /* flopoco_fadd_4_4.vhdl:330:43  */
  assign n153_o = n150_o | n152_o;
  /* flopoco_fadd_4_4.vhdl:330:52  */
  assign n155_o = sxsyexnxy == 6'b101000;
  /* flopoco_fadd_4_4.vhdl:330:52  */
  assign n156_o = n153_o | n155_o;
  /* flopoco_fadd_4_4.vhdl:330:61  */
  assign n158_o = sxsyexnxy == 6'b111000;
  /* flopoco_fadd_4_4.vhdl:330:61  */
  assign n159_o = n156_o | n158_o;
  /* flopoco_fadd_4_4.vhdl:330:70  */
  assign n161_o = sxsyexnxy == 6'b000010;
  /* flopoco_fadd_4_4.vhdl:330:70  */
  assign n162_o = n159_o | n161_o;
  /* flopoco_fadd_4_4.vhdl:330:79  */
  assign n164_o = sxsyexnxy == 6'b010010;
  /* flopoco_fadd_4_4.vhdl:330:79  */
  assign n165_o = n162_o | n164_o;
  /* flopoco_fadd_4_4.vhdl:330:88  */
  assign n167_o = sxsyexnxy == 6'b100010;
  /* flopoco_fadd_4_4.vhdl:330:88  */
  assign n168_o = n165_o | n167_o;
  /* flopoco_fadd_4_4.vhdl:330:97  */
  assign n170_o = sxsyexnxy == 6'b110010;
  /* flopoco_fadd_4_4.vhdl:330:97  */
  assign n171_o = n168_o | n170_o;
  /* flopoco_fadd_4_4.vhdl:330:106  */
  assign n173_o = sxsyexnxy == 6'b001001;
  /* flopoco_fadd_4_4.vhdl:330:106  */
  assign n174_o = n171_o | n173_o;
  /* flopoco_fadd_4_4.vhdl:330:115  */
  assign n176_o = sxsyexnxy == 6'b011001;
  /* flopoco_fadd_4_4.vhdl:330:115  */
  assign n177_o = n174_o | n176_o;
  /* flopoco_fadd_4_4.vhdl:330:124  */
  assign n179_o = sxsyexnxy == 6'b101001;
  /* flopoco_fadd_4_4.vhdl:330:124  */
  assign n180_o = n177_o | n179_o;
  /* flopoco_fadd_4_4.vhdl:330:133  */
  assign n182_o = sxsyexnxy == 6'b111001;
  /* flopoco_fadd_4_4.vhdl:330:133  */
  assign n183_o = n180_o | n182_o;
  /* flopoco_fadd_4_4.vhdl:330:142  */
  assign n185_o = sxsyexnxy == 6'b000110;
  /* flopoco_fadd_4_4.vhdl:330:142  */
  assign n186_o = n183_o | n185_o;
  /* flopoco_fadd_4_4.vhdl:330:151  */
  assign n188_o = sxsyexnxy == 6'b010110;
  /* flopoco_fadd_4_4.vhdl:330:151  */
  assign n189_o = n186_o | n188_o;
  /* flopoco_fadd_4_4.vhdl:330:160  */
  assign n191_o = sxsyexnxy == 6'b100110;
  /* flopoco_fadd_4_4.vhdl:330:160  */
  assign n192_o = n189_o | n191_o;
  /* flopoco_fadd_4_4.vhdl:330:169  */
  assign n194_o = sxsyexnxy == 6'b110110;
  /* flopoco_fadd_4_4.vhdl:330:169  */
  assign n195_o = n192_o | n194_o;
  assign n197_o = {n195_o, n141_o, n105_o};
  /* flopoco_fadd_4_4.vhdl:327:4  */
  always @*
    case (n197_o)
      3'b100: n198_o <= 2'b10;
      3'b010: n198_o <= 2'b01;
      3'b001: n198_o <= 2'b00;
      default: n198_o <= 2'b11;
    endcase
  /* flopoco_fadd_4_4.vhdl:333:34  */
  assign n201_o = sxsyexnxy_d1 == 6'b100000;
  /* flopoco_fadd_4_4.vhdl:333:59  */
  assign n203_o = sxsyexnxy_d1 == 6'b010000;
  /* flopoco_fadd_4_4.vhdl:333:44  */
  assign n204_o = n201_o | n203_o;
  /* flopoco_fadd_4_4.vhdl:333:16  */
  assign n205_o = n204_o ? 1'b0 : signx_d1;
  /* flopoco_fadd_4_4.vhdl:335:31  */
  assign n206_o = ~swap;
  /* flopoco_fadd_4_4.vhdl:335:21  */
  assign n207_o = n206_o ? exmey : eymex;
  /* flopoco_fadd_4_4.vhdl:336:36  */
  assign n210_o = $unsigned(expdiff) > $unsigned(5'b00110);
  /* flopoco_fadd_4_4.vhdl:336:22  */
  assign n211_o = n210_o ? 1'b1 : 1'b0;
  /* flopoco_fadd_4_4.vhdl:337:23  */
  assign n213_o = expdiff[2:0];
  /* flopoco_fadd_4_4.vhdl:337:51  */
  assign n214_o = ~shiftedout;
  /* flopoco_fadd_4_4.vhdl:337:36  */
  assign n215_o = n214_o ? n213_o : 3'b111;
  /* flopoco_fadd_4_4.vhdl:342:23  */
  assign rightshiftercomponent_n217 = rightshiftercomponent_r; // (signal)
  /* flopoco_fadd_4_4.vhdl:338:4  */
  rightshifter_5_by_max_7_f400_uid4 rightshiftercomponent (
    .clk(clk),
    .rst(rst),
    .ce(ce),
    .x(fracy),
    .s(shiftval),
    .r(rightshiftercomponent_r));
  /* flopoco_fadd_4_4.vhdl:346:39  */
  assign n221_o = shiftedfracy_d1[4:0];
  /* flopoco_fadd_4_4.vhdl:346:51  */
  assign n223_o = n221_o == 5'b00000;
  /* flopoco_fadd_4_4.vhdl:346:18  */
  assign n224_o = n223_o ? 1'b0 : 1'b1;
  /* flopoco_fadd_4_4.vhdl:349:37  */
  assign n226_o = shiftedfracy_d1[11:5];
  /* flopoco_fadd_4_4.vhdl:349:20  */
  assign n228_o = {1'b0, n226_o};
  assign n229_o = {effsub_d1, effsub_d1, effsub_d1, effsub_d1};
  assign n230_o = {effsub_d1, effsub_d1, effsub_d1, effsub_d1};
  assign n231_o = {n229_o, n230_o};
  /* flopoco_fadd_4_4.vhdl:351:30  */
  assign n232_o = fracyfar ^ effsubvector;
  /* flopoco_fadd_4_4.vhdl:352:31  */
  assign n233_o = newx_d1[3:0];
  /* flopoco_fadd_4_4.vhdl:352:21  */
  assign n235_o = {2'b01, n233_o};
  /* flopoco_fadd_4_4.vhdl:352:45  */
  assign n237_o = {n235_o, 2'b00};
  /* flopoco_fadd_4_4.vhdl:353:31  */
  assign n238_o = ~sticky;
  /* flopoco_fadd_4_4.vhdl:353:27  */
  assign n239_o = effsub_d1 & n238_o;
  /* flopoco_fadd_4_4.vhdl:359:23  */
  assign fracadder_n240 = fracadder_r; // (signal)
  /* flopoco_fadd_4_4.vhdl:354:4  */
  intadder_8_f400_uid8 fracadder (
    .clk(clk),
    .rst(rst),
    .ce(ce),
    .x(fracxfar),
    .y(fracyfarxorop),
    .cin(cinaddfar),
    .r(fracadder_r));
  /* flopoco_fadd_4_4.vhdl:362:28  */
  assign n243_o = {fracaddresult, sticky};
  /* flopoco_fadd_4_4.vhdl:363:27  */
  assign n245_o = {2'b00, expx_d1};
  /* flopoco_fadd_4_4.vhdl:363:38  */
  assign n248_o = n245_o + 6'b000001;
  /* flopoco_fadd_4_4.vhdl:368:27  */
  assign lzc_component_n249 = lzc_component_count; // (signal)
  /* flopoco_fadd_4_4.vhdl:370:23  */
  assign lzc_component_n250 = lzc_component_o; // (signal)
  /* flopoco_fadd_4_4.vhdl:364:4  */
  lzcshifter_9_to_9_counting_16_f400_uid16 lzc_component (
    .clk(clk),
    .rst(rst),
    .ce(ce),
    .i(fracgrs),
    .count(lzc_component_count),
    .o(lzc_component_o));
  /* flopoco_fadd_4_4.vhdl:372:44  */
  assign n256_o = {2'b00, nzerosnew};
  /* flopoco_fadd_4_4.vhdl:372:36  */
  assign n257_o = extendedexpinc_d1 - n256_o;
  /* flopoco_fadd_4_4.vhdl:373:36  */
  assign n260_o = nzerosnew == 4'b1111;
  /* flopoco_fadd_4_4.vhdl:373:22  */
  assign n261_o = n260_o ? 1'b1 : 1'b0;
  /* flopoco_fadd_4_4.vhdl:374:38  */
  assign n263_o = shiftedfrac[7:3];
  /* flopoco_fadd_4_4.vhdl:374:25  */
  assign n264_o = {updatedexp, n263_o};
  /* flopoco_fadd_4_4.vhdl:376:21  */
  assign n265_o = shiftedfrac[1];
  /* flopoco_fadd_4_4.vhdl:376:39  */
  assign n266_o = shiftedfrac[0];
  /* flopoco_fadd_4_4.vhdl:376:25  */
  assign n267_o = n265_o | n266_o;
  /* flopoco_fadd_4_4.vhdl:377:21  */
  assign n268_o = shiftedfrac[2];
  /* flopoco_fadd_4_4.vhdl:378:21  */
  assign n269_o = shiftedfrac[3];
  /* flopoco_fadd_4_4.vhdl:379:21  */
  assign n270_o = shiftedfrac[4];
  /* flopoco_fadd_4_4.vhdl:380:33  */
  assign n272_o = ~lsb;
  /* flopoco_fadd_4_4.vhdl:380:38  */
  assign n273_o = n272_o & grd;
  /* flopoco_fadd_4_4.vhdl:380:57  */
  assign n274_o = ~rnd;
  /* flopoco_fadd_4_4.vhdl:380:50  */
  assign n275_o = n273_o & n274_o;
  /* flopoco_fadd_4_4.vhdl:380:69  */
  assign n276_o = ~stk;
  /* flopoco_fadd_4_4.vhdl:380:62  */
  assign n277_o = n275_o & n276_o;
  /* flopoco_fadd_4_4.vhdl:380:24  */
  assign n278_o = n277_o ? 1'b0 : 1'b1;
  /* flopoco_fadd_4_4.vhdl:386:23  */
  assign roundingadder_n281 = roundingadder_r; // (signal)
  /* flopoco_fadd_4_4.vhdl:381:4  */
  intadder_11_f400_uid20 roundingadder (
    .clk(clk),
    .rst(rst),
    .ce(ce),
    .x(expfrac),
    .y(n280_o),
    .cin(addtoroundbit),
    .r(roundingadder_r));
  /* flopoco_fadd_4_4.vhdl:390:27  */
  assign n284_o = roundedexpfrac[10:9];
  /* flopoco_fadd_4_4.vhdl:391:27  */
  assign n285_o = roundedexpfrac[4:1];
  /* flopoco_fadd_4_4.vhdl:392:26  */
  assign n286_o = roundedexpfrac[8:5];
  /* flopoco_fadd_4_4.vhdl:393:22  */
  assign n287_o = {upexc, excrt_d2};
  /* flopoco_fadd_4_4.vhdl:395:18  */
  assign n290_o = exexpexc == 4'b0000;
  /* flopoco_fadd_4_4.vhdl:395:29  */
  assign n292_o = exexpexc == 4'b0100;
  /* flopoco_fadd_4_4.vhdl:395:29  */
  assign n293_o = n290_o | n292_o;
  /* flopoco_fadd_4_4.vhdl:395:36  */
  assign n295_o = exexpexc == 4'b1000;
  /* flopoco_fadd_4_4.vhdl:395:36  */
  assign n296_o = n293_o | n295_o;
  /* flopoco_fadd_4_4.vhdl:395:43  */
  assign n298_o = exexpexc == 4'b1100;
  /* flopoco_fadd_4_4.vhdl:395:43  */
  assign n299_o = n296_o | n298_o;
  /* flopoco_fadd_4_4.vhdl:395:50  */
  assign n301_o = exexpexc == 4'b1001;
  /* flopoco_fadd_4_4.vhdl:395:50  */
  assign n302_o = n299_o | n301_o;
  /* flopoco_fadd_4_4.vhdl:395:57  */
  assign n304_o = exexpexc == 4'b1101;
  /* flopoco_fadd_4_4.vhdl:395:57  */
  assign n305_o = n302_o | n304_o;
  /* flopoco_fadd_4_4.vhdl:396:12  */
  assign n308_o = exexpexc == 4'b0001;
  /* flopoco_fadd_4_4.vhdl:397:12  */
  assign n311_o = exexpexc == 4'b0010;
  /* flopoco_fadd_4_4.vhdl:397:23  */
  assign n313_o = exexpexc == 4'b0110;
  /* flopoco_fadd_4_4.vhdl:397:23  */
  assign n314_o = n311_o | n313_o;
  /* flopoco_fadd_4_4.vhdl:397:30  */
  assign n316_o = exexpexc == 4'b1010;
  /* flopoco_fadd_4_4.vhdl:397:30  */
  assign n317_o = n314_o | n316_o;
  /* flopoco_fadd_4_4.vhdl:397:37  */
  assign n319_o = exexpexc == 4'b1110;
  /* flopoco_fadd_4_4.vhdl:397:37  */
  assign n320_o = n317_o | n319_o;
  /* flopoco_fadd_4_4.vhdl:397:44  */
  assign n322_o = exexpexc == 4'b0101;
  /* flopoco_fadd_4_4.vhdl:397:44  */
  assign n323_o = n320_o | n322_o;
  assign n325_o = {n323_o, n308_o, n305_o};
  /* flopoco_fadd_4_4.vhdl:394:4  */
  always @*
    case (n325_o)
      3'b100: n326_o <= 2'b10;
      3'b010: n326_o <= 2'b01;
      3'b001: n326_o <= 2'b00;
      default: n326_o <= 2'b11;
    endcase
  /* flopoco_fadd_4_4.vhdl:399:38  */
  assign n328_o = eqdiffsign & effsub_d2;
  /* flopoco_fadd_4_4.vhdl:399:72  */
  assign n330_o = excrt_d2 == 2'b11;
  /* flopoco_fadd_4_4.vhdl:399:60  */
  assign n331_o = ~n330_o;
  /* flopoco_fadd_4_4.vhdl:399:56  */
  assign n332_o = n328_o & n331_o;
  /* flopoco_fadd_4_4.vhdl:399:17  */
  assign n333_o = n332_o ? 2'b00 : excrt2;
  /* flopoco_fadd_4_4.vhdl:400:39  */
  assign n335_o = eqdiffsign & effsub_d2;
  /* flopoco_fadd_4_4.vhdl:400:18  */
  assign n336_o = n335_o ? 1'b0 : signr_d1;
  /* flopoco_fadd_4_4.vhdl:401:22  */
  assign n337_o = {excr, signr2};
  /* flopoco_fadd_4_4.vhdl:401:31  */
  assign n338_o = {n337_o, expr};
  /* flopoco_fadd_4_4.vhdl:401:38  */
  assign n339_o = {n338_o, fracr};
endmodule

