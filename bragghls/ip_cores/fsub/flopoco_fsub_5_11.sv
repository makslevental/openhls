module intadder_18_f300_uid13456789
  (input wire clk,
   input wire [17:0] x,
   input wire [17:0] y,
   input wire cin,
   output wire [17:0] r);
  wire cin_1;
  wire cin_1_d1;
  wire [18:0] x_1;
  wire [18:0] x_1_d1;
  wire [18:0] y_1;
  wire [18:0] y_1_d1;
  wire [18:0] y_1_d2;
  wire [18:0] y_1_d3;
  wire [18:0] s_1;
  wire [17:0] r_1;
  wire [18:0] n498_o;
  wire [18:0] n500_o;
  wire [18:0] n501_o;
  wire [18:0] n502_o;
  wire [18:0] n503_o;
  wire [17:0] n504_o;
  reg n505_q;
  reg [18:0] n506_q;
  reg [18:0] n507_q;
  reg [18:0] n508_q;
  reg [18:0] n509_q;
  assign r = r_1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:256:8  */
  assign cin_1 = cin; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:256:15  */
  assign cin_1_d1 = n505_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:257:8  */
  assign x_1 = n498_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:257:13  */
  assign x_1_d1 = n506_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:258:8  */
  assign y_1 = n500_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:258:13  */
  assign y_1_d1 = n507_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:258:21  */
  assign y_1_d2 = n508_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:258:29  */
  assign y_1_d3 = n509_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:259:8  */
  assign s_1 = n503_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:260:8  */
  assign r_1 = n504_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:273:15  */
  assign n498_o = {1'b0, x};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:274:15  */
  assign n500_o = {1'b0, y};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:275:18  */
  assign n501_o = x_1_d1 + y_1_d3;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:275:27  */
  assign n502_o = {18'b0, cin_1_d1};  //  uext
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:275:27  */
  assign n503_o = n501_o + n502_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:276:14  */
  assign n504_o = s_1[17:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:264:10  */
  always @(posedge clk)
    n505_q <= cin_1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:264:10  */
  always @(posedge clk)
    n506_q <= x_1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:264:10  */
  always @(posedge clk)
    n507_q <= y_1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:264:10  */
  always @(posedge clk)
    n508_q <= y_1_d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:264:10  */
  always @(posedge clk)
    n509_q <= y_1_d2;
endmodule

module intadder_15_f300_uid10123
  (input wire clk,
   input wire [14:0] x,
   input wire [14:0] y,
   input wire cin,
   output wire [14:0] r);
  wire [14:0] rtmp;
  wire [14:0] x_d1;
  wire [14:0] x_d2;
  wire [14:0] y_d1;
  wire [14:0] y_d2;
  wire [14:0] n480_o;
  wire [14:0] n481_o;
  wire [14:0] n482_o;
  reg [14:0] n483_q;
  reg [14:0] n484_q;
  reg [14:0] n485_q;
  reg [14:0] n486_q;
  assign r = rtmp;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:209:8  */
  assign rtmp = n482_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:210:8  */
  assign x_d1 = n483_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:210:14  */
  assign x_d2 = n484_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:211:8  */
  assign y_d1 = n485_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:211:14  */
  assign y_d2 = n486_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:222:17  */
  assign n480_o = x_d2 + y_d2;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:222:24  */
  assign n481_o = {14'b0, cin};  //  uext
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:222:24  */
  assign n482_o = n480_o + n481_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:215:10  */
  always @(posedge clk)
    n483_q <= x;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:215:10  */
  always @(posedge clk)
    n484_q <= x_d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:215:10  */
  always @(posedge clk)
    n485_q <= y;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:215:10  */
  always @(posedge clk)
    n486_q <= y_d1;
endmodule

module rightshiftersticky12_by_max_14_f300_uid8123
  (input wire clk,
   input wire [11:0] x,
   input wire [3:0] s,
   output wire [13:0] r,
   output wire sticky);
  wire [3:0] ps;
  wire [3:0] ps_d1;
  wire [3:0] ps_d2;
  wire [13:0] xpadded;
  wire [13:0] level4;
  wire [13:0] level4_d1;
  wire stk3;
  wire [13:0] level3;
  wire [13:0] level3_d1;
  wire stk2;
  wire stk2_d1;
  wire [13:0] level2;
  wire [13:0] level2_d1;
  wire [13:0] level2_d2;
  wire stk1;
  wire [13:0] level1;
  wire [13:0] level1_d1;
  wire [13:0] level1_d2;
  wire stk0;
  wire [13:0] level0;
  wire [13:0] n402_o;
  wire [7:0] n404_o;
  wire n406_o;
  wire n407_o;
  wire n408_o;
  wire n409_o;
  wire n411_o;
  wire n412_o;
  wire [13:0] n413_o;
  wire [5:0] n414_o;
  wire [13:0] n416_o;
  wire [3:0] n418_o;
  wire n420_o;
  wire n421_o;
  wire n422_o;
  wire n423_o;
  wire n424_o;
  wire n426_o;
  wire n427_o;
  wire [13:0] n428_o;
  wire [9:0] n429_o;
  wire [13:0] n431_o;
  wire [1:0] n433_o;
  wire n435_o;
  wire n436_o;
  wire n437_o;
  wire n438_o;
  wire n439_o;
  wire n441_o;
  wire n442_o;
  wire [13:0] n443_o;
  wire [11:0] n444_o;
  wire [13:0] n446_o;
  wire n448_o;
  wire n450_o;
  wire n451_o;
  wire n452_o;
  wire n453_o;
  wire n454_o;
  wire n456_o;
  wire n457_o;
  wire [13:0] n458_o;
  wire [12:0] n459_o;
  wire [13:0] n461_o;
  reg [3:0] n462_q;
  reg [3:0] n463_q;
  reg [13:0] n464_q;
  reg [13:0] n465_q;
  reg n466_q;
  reg [13:0] n467_q;
  reg [13:0] n468_q;
  reg [13:0] n469_q;
  reg [13:0] n470_q;
  assign r = level0;
  assign sticky = stk0;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:138:8  */
  assign ps = s; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:138:12  */
  assign ps_d1 = n462_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:138:19  */
  assign ps_d2 = n463_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:139:8  */
  assign xpadded = n402_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:140:8  */
  assign level4 = xpadded; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:140:16  */
  assign level4_d1 = n464_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:141:8  */
  assign stk3 = n409_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:142:8  */
  assign level3 = n413_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:142:16  */
  assign level3_d1 = n465_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:143:8  */
  assign stk2 = n424_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:143:14  */
  assign stk2_d1 = n466_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:144:8  */
  assign level2 = n428_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:144:16  */
  assign level2_d1 = n467_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:144:27  */
  assign level2_d2 = n468_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:145:8  */
  assign stk1 = n439_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:146:8  */
  assign level1 = n443_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:146:16  */
  assign level1_d1 = n469_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:146:27  */
  assign level1_d2 = n470_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:147:8  */
  assign stk0 = n454_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:148:8  */
  assign level0 = n458_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:165:16  */
  assign n402_o = {x, 2'b00};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:167:31  */
  assign n404_o = level4_d1[7:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:167:43  */
  assign n406_o = n404_o != 8'b00000000;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:167:65  */
  assign n407_o = ps_d1[3];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:167:56  */
  assign n408_o = n406_o & n407_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:167:16  */
  assign n409_o = n408_o ? 1'b1 : 1'b0;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:168:30  */
  assign n411_o = ps[3];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:168:33  */
  assign n412_o = ~n411_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:168:22  */
  assign n413_o = n412_o ? level4 : n416_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:168:74  */
  assign n414_o = level4[13:8];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:168:66  */
  assign n416_o = {8'b00000000, n414_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:169:31  */
  assign n418_o = level3_d1[3:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:169:43  */
  assign n420_o = n418_o != 4'b0000;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:169:61  */
  assign n421_o = ps_d1[2];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:169:52  */
  assign n422_o = n420_o & n421_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:169:70  */
  assign n423_o = n422_o | stk3;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:169:16  */
  assign n424_o = n423_o ? 1'b1 : 1'b0;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:170:30  */
  assign n426_o = ps[2];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:170:33  */
  assign n427_o = ~n426_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:170:22  */
  assign n428_o = n427_o ? level3 : n431_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:170:74  */
  assign n429_o = level3[13:4];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:170:66  */
  assign n431_o = {4'b0000, n429_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:171:31  */
  assign n433_o = level2_d2[1:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:171:43  */
  assign n435_o = n433_o != 2'b00;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:171:59  */
  assign n436_o = ps_d2[1];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:171:50  */
  assign n437_o = n435_o & n436_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:171:68  */
  assign n438_o = n437_o | stk2_d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:171:16  */
  assign n439_o = n438_o ? 1'b1 : 1'b0;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:172:30  */
  assign n441_o = ps[1];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:172:33  */
  assign n442_o = ~n441_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:172:22  */
  assign n443_o = n442_o ? level2 : n446_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:172:74  */
  assign n444_o = level2[13:2];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:172:66  */
  assign n446_o = {2'b00, n444_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:173:31  */
  assign n448_o = level1_d2[0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:173:43  */
  assign n450_o = n448_o != 1'b0;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:173:58  */
  assign n451_o = ps_d2[0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:173:49  */
  assign n452_o = n450_o & n451_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:173:67  */
  assign n453_o = n452_o | stk1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:173:16  */
  assign n454_o = n453_o ? 1'b1 : 1'b0;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:174:30  */
  assign n456_o = ps[0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:174:33  */
  assign n457_o = ~n456_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:174:22  */
  assign n458_o = n457_o ? level1 : n461_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:174:74  */
  assign n459_o = level1[13:1];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:174:66  */
  assign n461_o = {1'b0, n459_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:152:10  */
  always @(posedge clk)
    n462_q <= ps;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:152:10  */
  always @(posedge clk)
    n463_q <= ps_d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:152:10  */
  always @(posedge clk)
    n464_q <= level4;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:152:10  */
  always @(posedge clk)
    n465_q <= level3;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:152:10  */
  always @(posedge clk)
    n466_q <= stk2;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:152:10  */
  always @(posedge clk)
    n467_q <= level2;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:152:10  */
  always @(posedge clk)
    n468_q <= level2_d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:152:10  */
  always @(posedge clk)
    n469_q <= level1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:152:10  */
  always @(posedge clk)
    n470_q <= level1_d1;
endmodule

module normalizer_z_13_13_13_f300_uid6123
  (input wire clk,
   input wire [12:0] x,
   output wire [3:0] count,
   output wire [12:0] r);
  wire [12:0] level4;
  wire [12:0] level4_d1;
  wire count3;
  wire count3_d1;
  wire [12:0] level3;
  wire count2;
  wire count2_d1;
  wire [12:0] level2;
  wire [12:0] level2_d1;
  wire count1;
  wire count1_d1;
  wire [12:0] level1;
  wire count0;
  wire [12:0] level0;
  wire [3:0] scount;
  wire [7:0] n335_o;
  wire n337_o;
  wire n338_o;
  wire n340_o;
  wire [12:0] n341_o;
  wire [4:0] n342_o;
  wire [12:0] n344_o;
  wire [3:0] n346_o;
  wire n348_o;
  wire n349_o;
  wire n351_o;
  wire [12:0] n352_o;
  wire [8:0] n353_o;
  wire [12:0] n355_o;
  wire [1:0] n357_o;
  wire n359_o;
  wire n360_o;
  wire n362_o;
  wire [12:0] n363_o;
  wire [10:0] n364_o;
  wire [12:0] n366_o;
  wire n368_o;
  wire n370_o;
  wire n371_o;
  wire n373_o;
  wire [12:0] n374_o;
  wire [11:0] n375_o;
  wire [12:0] n377_o;
  wire [1:0] n378_o;
  wire [2:0] n379_o;
  wire [3:0] n380_o;
  reg [12:0] n381_q;
  reg n382_q;
  reg n383_q;
  reg [12:0] n384_q;
  reg n385_q;
  assign count = scount;
  assign r = level0;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:69:8  */
  assign level4 = x; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:92:22  */
  assign level4_d1 = n381_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:70:8  */
  assign count3 = n338_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:70:16  */
  assign count3_d1 = n382_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:95:19  */
  assign level3 = n341_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:72:8  */
  assign count2 = n349_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:72:16  */
  assign count2_d1 = n383_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:73:8  */
  assign level2 = n352_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:98:22  */
  assign level2_d1 = n384_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:74:8  */
  assign count1 = n360_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:74:16  */
  assign count1_d1 = n385_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:101:19  */
  assign level1 = n363_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:76:8  */
  assign count0 = n371_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:77:8  */
  assign level0 = n374_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:78:8  */
  assign scount = n380_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:91:31  */
  assign n335_o = level4_d1[12:5];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:91:45  */
  assign n337_o = n335_o == 8'b00000000;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:91:17  */
  assign n338_o = n337_o ? 1'b1 : 1'b0;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:92:47  */
  assign n340_o = ~count3;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:92:36  */
  assign n341_o = n340_o ? level4_d1 : n344_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:92:66  */
  assign n342_o = level4_d1[4:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:92:79  */
  assign n344_o = {n342_o, 8'b00000000};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:94:28  */
  assign n346_o = level3[12:9];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:94:42  */
  assign n348_o = n346_o == 4'b0000;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:94:17  */
  assign n349_o = n348_o ? 1'b1 : 1'b0;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:95:44  */
  assign n351_o = ~count2;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:95:33  */
  assign n352_o = n351_o ? level3 : n355_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:95:60  */
  assign n353_o = level3[8:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:95:73  */
  assign n355_o = {n353_o, 4'b0000};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:97:28  */
  assign n357_o = level2[12:11];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:97:43  */
  assign n359_o = n357_o == 2'b00;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:97:17  */
  assign n360_o = n359_o ? 1'b1 : 1'b0;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:98:50  */
  assign n362_o = ~count1_d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:98:36  */
  assign n363_o = n362_o ? level2_d1 : n366_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:98:69  */
  assign n364_o = level2_d1[10:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:98:83  */
  assign n366_o = {n364_o, 2'b00};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:100:28  */
  assign n368_o = level1[12];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:100:43  */
  assign n370_o = n368_o == 1'b0;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:100:17  */
  assign n371_o = n370_o ? 1'b1 : 1'b0;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:101:44  */
  assign n373_o = ~count0;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:101:33  */
  assign n374_o = n373_o ? level1 : n377_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:101:60  */
  assign n375_o = level1[11:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:101:74  */
  assign n377_o = {n375_o, 1'b0};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:104:24  */
  assign n378_o = {count3_d1, count2_d1};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:104:36  */
  assign n379_o = {n378_o, count1_d1};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:104:48  */
  assign n380_o = {n379_o, count0};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:82:10  */
  always @(posedge clk)
    n381_q <= level4;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:82:10  */
  always @(posedge clk)
    n382_q <= count3;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:82:10  */
  always @(posedge clk)
    n383_q <= count2;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:82:10  */
  always @(posedge clk)
    n384_q <= level2;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:82:10  */
  always @(posedge clk)
    n385_q <= count1;
endmodule

module intdualsub_14_f300_uid4123
  (input wire clk,
   input wire [13:0] x,
   input wire [13:0] y,
   output wire [13:0] xmy,
   output wire [13:0] ymx);
  wire [13:0] temprxmy;
  wire [13:0] temprymx;
  wire [13:0] n313_o;
  wire [13:0] n314_o;
  wire [13:0] n317_o;
  wire [13:0] n318_o;
  wire [13:0] n319_o;
  wire [13:0] n322_o;
  assign xmy = temprxmy;
  assign ymx = temprymx;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:31:8  */
  assign temprxmy = n317_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:32:8  */
  assign temprymx = n322_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:34:21  */
  assign n313_o = ~y;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:34:18  */
  assign n314_o = x + n313_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:34:28  */
  assign n317_o = n314_o + 14'b00000000000001;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:35:21  */
  assign n318_o = ~x;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:35:18  */
  assign n319_o = y + n318_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:35:28  */
  assign n322_o = n319_o + 14'b00000000000001;
endmodule

module fsub#(parameter ID=1)
  (input wire clk,
   input wire [18:0] X,
   input wire [18:0] Y,
   output wire [18:0] R);
  wire [18:0] inx;
  wire [18:0] iny;
  wire exceptionxsuperiory;
  wire exceptionxequaly;
  wire [5:0] signedexponentx;
  wire [5:0] signedexponenty;
  wire [5:0] exponentdifferencexy;
  wire [4:0] exponentdifferenceyx;
  wire swap;
  wire [18:0] my;
  wire [18:0] newx;
  wire [18:0] newx_d1;
  wire [18:0] newx_d2;
  wire [18:0] newy;
  wire [4:0] exponentdifference;
  wire shiftedout;
  wire [3:0] shiftval;
  wire effsub;
  wire effsub_d1;
  wire effsub_d2;
  wire selectclosepath;
  wire selectclosepath_d1;
  wire selectclosepath_d2;
  wire [3:0] sdexnxy;
  wire pipesigny;
  wire [13:0] fracxclose1;
  wire [13:0] fracyclose1;
  wire [13:0] fracrclosexmy;
  wire [13:0] fracrcloseymx;
  wire fracsignclose;
  wire [12:0] fracrclose1;
  wire ressign;
  wire [3:0] nzerosnew;
  wire [12:0] shiftedfrac;
  wire roundclose0;
  wire resultcloseiszero0;
  wire [6:0] exponentresultclose;
  wire [17:0] resultbeforeroundclose;
  wire roundclose;
  wire resultcloseiszero;
  wire [11:0] fracnewy;
  wire [13:0] shiftedfracy;
  wire sticky;
  wire [14:0] fracyfar;
  wire [14:0] effsubvector;
  wire [14:0] fracyfarxorop;
  wire [14:0] fracxfar;
  wire cinaddfar;
  wire [14:0] fracresultfar0;
  wire [14:0] fracresultfarnormstage;
  wire [1:0] fracleadingbits;
  wire [10:0] fracresultfar1;
  wire fracresultroundbit;
  wire fracresultstickybit;
  wire roundfar1;
  wire [1:0] expoperationsel;
  wire [6:0] exponentupdate;
  wire [6:0] exponentresultfar0;
  wire [6:0] exponentresultfar0_d1;
  wire [6:0] exponentresultfar0_d2;
  wire [6:0] exponentresultfar1;
  wire [17:0] resultbeforeroundfar;
  wire roundfar;
  wire [17:0] resultbeforeround;
  wire round;
  wire zerofromclose;
  wire zerofromclose_d1;
  wire [17:0] resultrounded;
  wire synceffsub;
  wire synceffsub_d1;
  wire synceffsub_d2;
  wire synceffsub_d3;
  wire [18:0] syncx;
  wire [18:0] syncx_d1;
  wire [18:0] syncx_d2;
  wire [18:0] syncx_d3;
  wire syncsigny;
  wire syncsigny_d1;
  wire syncsigny_d2;
  wire syncsigny_d3;
  wire syncressign;
  wire syncressign_d1;
  wire syncressign_d2;
  wire syncressign_d3;
  wire [1:0] underflowoverflow;
  wire [18:0] resultnoexn;
  wire [3:0] syncexnxy;
  wire [3:0] syncexnxy_d1;
  wire [3:0] syncexnxy_d2;
  wire [3:0] syncexnxy_d3;
  wire [1:0] exnr;
  wire sgnr;
  wire [15:0] expsigr;
  wire [1:0] n30_o;
  wire [1:0] n31_o;
  wire n32_o;
  wire n33_o;
  wire [1:0] n36_o;
  wire [1:0] n37_o;
  wire n38_o;
  wire n39_o;
  wire [4:0] n41_o;
  wire [5:0] n43_o;
  wire [4:0] n44_o;
  wire [5:0] n46_o;
  wire [5:0] n47_o;
  wire [4:0] n48_o;
  wire [4:0] n49_o;
  wire [4:0] n50_o;
  wire n51_o;
  wire n52_o;
  wire n53_o;
  wire n54_o;
  wire [1:0] n55_o;
  wire n56_o;
  wire n57_o;
  wire [2:0] n58_o;
  wire [15:0] n59_o;
  wire [18:0] n60_o;
  wire [18:0] n61_o;
  wire [18:0] n62_o;
  wire [4:0] n63_o;
  wire [4:0] n64_o;
  wire n65_o;
  wire [3:0] n66_o;
  wire n67_o;
  wire [3:0] n68_o;
  wire n70_o;
  wire n71_o;
  wire n72_o;
  wire [3:0] n73_o;
  wire n75_o;
  wire n76_o;
  wire [1:0] n78_o;
  wire [1:0] n79_o;
  wire [3:0] n80_o;
  wire n81_o;
  wire [10:0] n82_o;
  wire [12:0] n84_o;
  wire [13:0] n86_o;
  wire n87_o;
  wire [10:0] n88_o;
  wire [12:0] n90_o;
  wire [13:0] n92_o;
  wire n94_o;
  wire [10:0] n95_o;
  wire [13:0] n97_o;
  reg [13:0] n98_o;
  wire [13:0] fpsub_5_11_f300_uid2_dualsubclose_n99;
  wire [13:0] fpsub_5_11_f300_uid2_dualsubclose_n100;
  wire [13:0] fpsub_5_11_f300_uid2_dualsubclose_xmy;
  wire [13:0] fpsub_5_11_f300_uid2_dualsubclose_ymx;
  wire n105_o;
  wire [12:0] n106_o;
  wire n107_o;
  wire [12:0] n108_o;
  wire [12:0] n109_o;
  wire n112_o;
  wire n113_o;
  wire n114_o;
  wire n115_o;
  wire n116_o;
  wire n117_o;
  wire [3:0] norm_n118;
  wire [12:0] norm_n119;
  wire [3:0] norm_count;
  wire [12:0] norm_r;
  wire n124_o;
  wire n125_o;
  wire n126_o;
  wire n129_o;
  wire n130_o;
  wire [4:0] n132_o;
  wire [6:0] n134_o;
  wire [6:0] n136_o;
  wire [6:0] n137_o;
  wire [10:0] n138_o;
  wire [17:0] n139_o;
  wire [10:0] n140_o;
  wire [11:0] n142_o;
  wire [13:0] rightshiftercomponent_n143;
  wire rightshiftercomponent_n144;
  wire [13:0] rightshiftercomponent_r;
  wire rightshiftercomponent_sticky;
  wire [14:0] n150_o;
  wire [3:0] n151_o;
  wire [3:0] n152_o;
  wire [3:0] n153_o;
  wire [2:0] n154_o;
  wire [14:0] n155_o;
  wire [14:0] n156_o;
  wire [10:0] n157_o;
  wire [12:0] n159_o;
  wire [14:0] n161_o;
  wire n162_o;
  wire n163_o;
  wire [14:0] fpsub_5_11_f300_uid2_fracaddfar_n164;
  wire [14:0] fpsub_5_11_f300_uid2_fracaddfar_r;
  wire [1:0] n167_o;
  wire [10:0] n168_o;
  wire n170_o;
  wire [10:0] n171_o;
  wire [10:0] n172_o;
  wire n174_o;
  wire [10:0] n175_o;
  wire [10:0] n176_o;
  wire n177_o;
  wire n179_o;
  wire n180_o;
  wire n181_o;
  wire n183_o;
  wire n184_o;
  wire n185_o;
  wire n187_o;
  wire n188_o;
  wire n189_o;
  wire n190_o;
  wire n192_o;
  wire n193_o;
  wire n194_o;
  wire n195_o;
  wire n196_o;
  wire n197_o;
  wire n198_o;
  wire n199_o;
  wire n200_o;
  wire n203_o;
  wire [1:0] n204_o;
  wire n207_o;
  wire [1:0] n208_o;
  wire n210_o;
  wire n211_o;
  wire n212_o;
  wire n213_o;
  wire n214_o;
  wire n215_o;
  wire [3:0] n216_o;
  wire [1:0] n217_o;
  wire [5:0] n218_o;
  wire n219_o;
  wire [6:0] n220_o;
  wire [4:0] n221_o;
  wire [6:0] n223_o;
  wire [6:0] n224_o;
  wire [17:0] n225_o;
  wire n227_o;
  reg [17:0] n228_o;
  wire n230_o;
  reg n231_o;
  wire n232_o;
  localparam [17:0] n233_o = 18'b000000000000000000;
  wire [17:0] fpsub_5_11_f300_uid2_finalroundadd_n234;
  wire [17:0] fpsub_5_11_f300_uid2_finalroundadd_r;
  wire [1:0] n237_o;
  wire n238_o;
  wire [1:0] n240_o;
  wire n242_o;
  wire n245_o;
  wire n247_o;
  wire n248_o;
  wire n249_o;
  wire [1:0] n251_o;
  wire [1:0] n252_o;
  reg [1:0] n253_o;
  wire [15:0] n254_o;
  wire [16:0] n255_o;
  wire [1:0] n256_o;
  wire n258_o;
  wire [1:0] n260_o;
  wire n262_o;
  wire n265_o;
  wire [1:0] n266_o;
  wire [2:0] n267_o;
  reg [1:0] n268_o;
  wire n269_o;
  wire n271_o;
  wire n272_o;
  wire n273_o;
  wire n275_o;
  wire n276_o;
  wire [1:0] n277_o;
  reg n278_o;
  wire [15:0] n279_o;
  wire n281_o;
  wire [15:0] n282_o;
  reg [15:0] n283_o;
  wire [2:0] n284_o;
  wire [18:0] n285_o;
  reg [18:0] n286_q;
  reg [18:0] n287_q;
  reg n288_q;
  reg n289_q;
  reg n290_q;
  reg n291_q;
  reg [6:0] n292_q;
  reg [6:0] n293_q;
  reg n294_q;
  reg n295_q;
  reg n296_q;
  reg n297_q;
  reg [18:0] n298_q;
  reg [18:0] n299_q;
  reg [18:0] n300_q;
  reg n301_q;
  reg n302_q;
  reg n303_q;
  reg n304_q;
  reg n305_q;
  reg n306_q;
  wire [18:0] n307_o;
  reg [3:0] n308_q;
  reg [3:0] n309_q;
  reg [3:0] n310_q;
  assign R = n285_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:349:8  */
  assign inx = X; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:350:8  */
  assign iny = Y; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:351:8  */
  assign exceptionxsuperiory = n33_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:352:8  */
  assign exceptionxequaly = n39_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:353:8  */
  assign signedexponentx = n43_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:354:8  */
  assign signedexponenty = n46_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:355:8  */
  assign exponentdifferencexy = n47_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:356:8  */
  assign exponentdifferenceyx = n50_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:357:8  */
  assign swap = n54_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:358:8  */
  assign my = n60_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:359:8  */
  assign newx = n61_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:359:14  */
  assign newx_d1 = n286_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:359:23  */
  assign newx_d2 = n287_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:360:8  */
  assign newy = n62_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:361:8  */
  assign exponentdifference = n63_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:362:8  */
  assign shiftedout = n65_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:363:8  */
  assign shiftval = n68_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:364:8  */
  assign effsub = n72_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:364:16  */
  assign effsub_d1 = n288_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:364:27  */
  assign effsub_d2 = n289_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:365:8  */
  assign selectclosepath = n76_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:365:25  */
  assign selectclosepath_d1 = n290_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:365:45  */
  assign selectclosepath_d2 = n291_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:366:8  */
  assign sdexnxy = n80_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:367:8  */
  assign pipesigny = n81_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:368:8  */
  assign fracxclose1 = n86_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:369:8  */
  assign fracyclose1 = n98_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:370:8  */
  assign fracrclosexmy = fpsub_5_11_f300_uid2_dualsubclose_n99; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:371:8  */
  assign fracrcloseymx = fpsub_5_11_f300_uid2_dualsubclose_n100; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:372:8  */
  assign fracsignclose = n105_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:373:8  */
  assign fracrclose1 = n108_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:374:8  */
  assign ressign = n114_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:375:8  */
  assign nzerosnew = norm_n118; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:376:8  */
  assign shiftedfrac = norm_n119; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:377:8  */
  assign roundclose0 = n126_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:378:8  */
  assign resultcloseiszero0 = n130_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:493:49  */
  assign exponentresultclose = n137_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:380:8  */
  assign resultbeforeroundclose = n139_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:381:8  */
  assign roundclose = roundclose0; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:382:8  */
  assign resultcloseiszero = resultcloseiszero0; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:383:8  */
  assign fracnewy = n142_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:384:8  */
  assign shiftedfracy = rightshiftercomponent_n143; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:385:8  */
  assign sticky = rightshiftercomponent_n144; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:386:8  */
  assign fracyfar = n150_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:387:8  */
  assign effsubvector = n155_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:388:8  */
  assign fracyfarxorop = n156_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:389:8  */
  assign fracxfar = n161_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:390:8  */
  assign cinaddfar = n163_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:391:8  */
  assign fracresultfar0 = fpsub_5_11_f300_uid2_fracaddfar_n164; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:392:8  */
  assign fracresultfarnormstage = fracresultfar0; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:393:8  */
  assign fracleadingbits = n167_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:394:8  */
  assign fracresultfar1 = n171_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:395:8  */
  assign fracresultroundbit = n180_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:396:8  */
  assign fracresultstickybit = n188_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:397:8  */
  assign roundfar1 = n200_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:398:8  */
  assign expoperationsel = n204_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:399:8  */
  assign exponentupdate = n220_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:400:8  */
  assign exponentresultfar0 = n223_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:400:28  */
  assign exponentresultfar0_d1 = n292_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:400:51  */
  assign exponentresultfar0_d2 = n293_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:401:8  */
  assign exponentresultfar1 = n224_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:402:8  */
  assign resultbeforeroundfar = n225_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:403:8  */
  assign roundfar = roundfar1; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:404:8  */
  assign resultbeforeround = n228_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:405:8  */
  assign round = n231_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:406:8  */
  assign zerofromclose = n232_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:406:23  */
  assign zerofromclose_d1 = n294_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:407:8  */
  assign resultrounded = fpsub_5_11_f300_uid2_finalroundadd_n234; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:408:8  */
  assign synceffsub = effsub; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:408:20  */
  assign synceffsub_d1 = n295_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:408:35  */
  assign synceffsub_d2 = n296_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:408:50  */
  assign synceffsub_d3 = n297_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:409:8  */
  assign syncx = newx; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:409:15  */
  assign syncx_d1 = n298_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:409:25  */
  assign syncx_d2 = n299_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:409:35  */
  assign syncx_d3 = n300_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:410:8  */
  assign syncsigny = pipesigny; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:410:19  */
  assign syncsigny_d1 = n301_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:410:33  */
  assign syncsigny_d2 = n302_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:410:47  */
  assign syncsigny_d3 = n303_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:411:8  */
  assign syncressign = ressign; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:411:21  */
  assign syncressign_d1 = n304_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:411:37  */
  assign syncressign_d2 = n305_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:411:53  */
  assign syncressign_d3 = n306_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:412:8  */
  assign underflowoverflow = n237_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:413:8  */
  assign resultnoexn = n307_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:414:8  */
  assign syncexnxy = sdexnxy; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:414:19  */
  assign syncexnxy_d1 = n308_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:414:33  */
  assign syncexnxy_d2 = n309_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:414:47  */
  assign syncexnxy_d3 = n310_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:415:8  */
  assign exnr = n268_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:416:8  */
  assign sgnr = n278_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:417:8  */
  assign expsigr = n283_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:451:39  */
  assign n30_o = inx[18:17];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:451:60  */
  assign n31_o = iny[18:17];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:451:54  */
  assign n32_o = $unsigned(n30_o) >= $unsigned(n31_o);
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:451:31  */
  assign n33_o = n32_o ? 1'b1 : 1'b0;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:452:36  */
  assign n36_o = inx[18:17];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:452:56  */
  assign n37_o = iny[18:17];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:452:51  */
  assign n38_o = n36_o == n37_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:452:28  */
  assign n39_o = n38_o ? 1'b1 : 1'b0;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:453:32  */
  assign n41_o = inx[15:11];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:453:27  */
  assign n43_o = {1'b0, n41_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:454:32  */
  assign n44_o = iny[15:11];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:454:27  */
  assign n46_o = {1'b0, n44_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:455:44  */
  assign n47_o = signedexponentx - signedexponenty;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:456:43  */
  assign n48_o = signedexponenty[4:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:456:73  */
  assign n49_o = signedexponentx[4:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:456:56  */
  assign n50_o = n48_o - n49_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:457:54  */
  assign n51_o = exponentdifferencexy[5];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:457:30  */
  assign n52_o = exceptionxequaly & n51_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:457:63  */
  assign n53_o = ~exceptionxsuperiory;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:457:59  */
  assign n54_o = n52_o | n53_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:458:13  */
  assign n55_o = iny[18:17];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:458:37  */
  assign n56_o = iny[16];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:458:30  */
  assign n57_o = ~n56_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:458:28  */
  assign n58_o = {n55_o, n57_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:458:48  */
  assign n59_o = iny[15:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:458:43  */
  assign n60_o = {n58_o, n59_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:459:15  */
  assign n61_o = swap ? my : inx;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:460:16  */
  assign n62_o = swap ? inx : my;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:461:47  */
  assign n63_o = swap ? exponentdifferenceyx : n64_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:461:88  */
  assign n64_o = exponentdifferencexy[4:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:462:36  */
  assign n65_o = exponentdifference[4];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:463:34  */
  assign n66_o = exponentdifference[3:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:463:62  */
  assign n67_o = ~shiftedout;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:463:47  */
  assign n68_o = n67_o ? n66_o : 4'b1110;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:465:18  */
  assign n70_o = newx[16];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:465:31  */
  assign n71_o = newy[16];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:465:23  */
  assign n72_o = n70_o ^ n71_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:466:53  */
  assign n73_o = exponentdifference[4:1];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:466:66  */
  assign n75_o = n73_o == 4'b0000;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:466:30  */
  assign n76_o = n75_o ? effsub : 1'b0;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:467:19  */
  assign n78_o = newx[18:17];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:467:40  */
  assign n79_o = newy[18:17];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:467:34  */
  assign n80_o = {n78_o, n79_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:468:21  */
  assign n81_o = newy[16];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:471:30  */
  assign n82_o = newx[10:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:471:24  */
  assign n84_o = {2'b01, n82_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:471:44  */
  assign n86_o = {n84_o, 1'b0};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:472:27  */
  assign n87_o = exponentdifference[0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:473:31  */
  assign n88_o = newy[10:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:473:25  */
  assign n90_o = {2'b01, n88_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:473:45  */
  assign n92_o = {n90_o, 1'b0};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:473:51  */
  assign n94_o = n87_o == 1'b0;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:474:31  */
  assign n95_o = newy[10:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:474:25  */
  assign n97_o = {3'b001, n95_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:472:4  */
  always @*
    case (n94_o)
      1'b1: n98_o = n92_o;
      default: n98_o = n97_o;
    endcase
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:479:25  */
  assign fpsub_5_11_f300_uid2_dualsubclose_n99 = fpsub_5_11_f300_uid2_dualsubclose_xmy; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:480:25  */
  assign fpsub_5_11_f300_uid2_dualsubclose_n100 = fpsub_5_11_f300_uid2_dualsubclose_ymx; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:475:4  */
  intdualsub_14_f300_uid4123 fpsub_5_11_f300_uid2_dualsubclose (
    .clk(clk),
    .x(fracxclose1),
    .y(fracyclose1),
    .xmy(fpsub_5_11_f300_uid2_dualsubclose_xmy),
    .ymx(fpsub_5_11_f300_uid2_dualsubclose_ymx));
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:481:34  */
  assign n105_o = fracrclosexmy[13];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:482:32  */
  assign n106_o = fracrclosexmy[12:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:482:64  */
  assign n107_o = ~fracsignclose;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:482:46  */
  assign n108_o = n107_o ? n106_o : n109_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:482:87  */
  assign n109_o = fracrcloseymx[12:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:483:60  */
  assign n112_o = fracrclose1 == 13'b0000000000000;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:483:44  */
  assign n113_o = selectclosepath & n112_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:483:19  */
  assign n114_o = n113_o ? 1'b0 : n117_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:484:18  */
  assign n115_o = newx[16];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:484:44  */
  assign n116_o = selectclosepath & fracsignclose;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:484:23  */
  assign n117_o = n115_o ^ n116_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:488:27  */
  assign norm_n118 = norm_count; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:489:23  */
  assign norm_n119 = norm_r; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:485:4  */
  normalizer_z_13_13_13_f300_uid6123 norm (
    .clk(clk),
    .x(fracrclose1),
    .count(norm_count),
    .r(norm_r));
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:490:30  */
  assign n124_o = shiftedfrac[0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:490:49  */
  assign n125_o = shiftedfrac[1];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:490:34  */
  assign n126_o = n124_o & n125_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:491:45  */
  assign n129_o = nzerosnew == 4'b1111;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:491:30  */
  assign n130_o = n129_o ? 1'b1 : 1'b0;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:492:42  */
  assign n132_o = newx_d2[15:11];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:492:33  */
  assign n134_o = {2'b00, n132_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:492:88  */
  assign n136_o = {3'b000, nzerosnew};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:492:58  */
  assign n137_o = n134_o - n136_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:493:75  */
  assign n138_o = shiftedfrac[11:1];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:493:62  */
  assign n139_o = {exponentresultclose, n138_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:498:26  */
  assign n140_o = newy[10:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:498:20  */
  assign n142_o = {1'b1, n140_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:503:23  */
  assign rightshiftercomponent_n143 = rightshiftercomponent_r; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:504:28  */
  assign rightshiftercomponent_n144 = rightshiftercomponent_sticky; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:499:4  */
  rightshiftersticky12_by_max_14_f300_uid8123 rightshiftercomponent (
    .clk(clk),
    .x(fracnewy),
    .s(shiftval),
    .r(rightshiftercomponent_r),
    .sticky(rightshiftercomponent_sticky));
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:505:20  */
  assign n150_o = {1'b0, shiftedfracy};
  assign n151_o = {effsub, effsub, effsub, effsub};
  assign n152_o = {effsub, effsub, effsub, effsub};
  assign n153_o = {effsub, effsub, effsub, effsub};
  assign n154_o = {effsub, effsub, effsub};
  assign n155_o = {n151_o, n152_o, n153_o, n154_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:507:30  */
  assign n156_o = fracyfar ^ effsubvector;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:508:28  */
  assign n157_o = newx[10:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:508:21  */
  assign n159_o = {2'b01, n157_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:508:43  */
  assign n161_o = {n159_o, 2'b00};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:509:31  */
  assign n162_o = ~sticky;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:509:27  */
  assign n163_o = effsub_d2 & n162_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:515:23  */
  assign fpsub_5_11_f300_uid2_fracaddfar_n164 = fpsub_5_11_f300_uid2_fracaddfar_r; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:510:4  */
  intadder_15_f300_uid10123 fpsub_5_11_f300_uid2_fracaddfar (
    .clk(clk),
    .x(fracxfar),
    .y(fracyfarxorop),
    .cin(cinaddfar),
    .r(fpsub_5_11_f300_uid2_fracaddfar_r));
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:518:45  */
  assign n167_o = fracresultfarnormstage[14:13];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:520:34  */
  assign n168_o = fracresultfarnormstage[11:1];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:520:70  */
  assign n170_o = fracleadingbits == 2'b00;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:520:49  */
  assign n171_o = n170_o ? n168_o : n175_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:521:34  */
  assign n172_o = fracresultfarnormstage[12:2];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:521:70  */
  assign n174_o = fracleadingbits == 2'b01;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:521:7  */
  assign n175_o = n174_o ? n172_o : n176_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:522:34  */
  assign n176_o = fracresultfarnormstage[13:3];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:524:34  */
  assign n177_o = fracresultfarnormstage[0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:524:63  */
  assign n179_o = fracleadingbits == 2'b00;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:524:42  */
  assign n180_o = n179_o ? n177_o : n184_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:525:34  */
  assign n181_o = fracresultfarnormstage[1];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:525:62  */
  assign n183_o = fracleadingbits == 2'b01;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:525:7  */
  assign n184_o = n183_o ? n181_o : n185_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:526:34  */
  assign n185_o = fracresultfarnormstage[2];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:528:47  */
  assign n187_o = fracleadingbits == 2'b00;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:528:26  */
  assign n188_o = n187_o ? sticky : n193_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:529:34  */
  assign n189_o = fracresultfarnormstage[0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:529:38  */
  assign n190_o = n189_o | sticky;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:529:72  */
  assign n192_o = fracleadingbits == 2'b01;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:529:7  */
  assign n193_o = n192_o ? n190_o : n197_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:530:34  */
  assign n194_o = fracresultfarnormstage[1];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:530:63  */
  assign n195_o = fracresultfarnormstage[0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:530:38  */
  assign n196_o = n194_o | n195_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:530:67  */
  assign n197_o = n196_o | sticky;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:531:78  */
  assign n198_o = fracresultfar1[0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:531:61  */
  assign n199_o = fracresultstickybit | n198_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:531:36  */
  assign n200_o = fracresultroundbit & n199_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:532:49  */
  assign n203_o = fracleadingbits == 2'b00;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:532:28  */
  assign n204_o = n203_o ? 2'b11 : n208_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:533:49  */
  assign n207_o = fracleadingbits == 2'b01;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:533:16  */
  assign n208_o = n207_o ? 2'b00 : 2'b01;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:535:52  */
  assign n210_o = expoperationsel[1];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:535:52  */
  assign n211_o = expoperationsel[1];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:535:52  */
  assign n212_o = expoperationsel[1];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:535:52  */
  assign n213_o = expoperationsel[1];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:535:52  */
  assign n214_o = expoperationsel[1];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:535:52  */
  assign n215_o = expoperationsel[1];
  assign n216_o = {n215_o, n214_o, n213_o, n212_o};
  assign n217_o = {n211_o, n210_o};
  assign n218_o = {n216_o, n217_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:535:74  */
  assign n219_o = expoperationsel[0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:535:57  */
  assign n220_o = {n218_o, n219_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:536:36  */
  assign n221_o = newx[15:11];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:536:29  */
  assign n223_o = {2'b00, n221_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:537:48  */
  assign n224_o = exponentresultfar0_d2 + exponentupdate;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:538:47  */
  assign n225_o = {exponentresultfar1, fracresultfar1};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:543:48  */
  assign n227_o = selectclosepath_d2 == 1'b1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:542:4  */
  always @*
    case (n227_o)
      1'b1: n228_o = resultbeforeroundclose;
      default: n228_o = resultbeforeroundfar;
    endcase
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:546:24  */
  assign n230_o = selectclosepath_d2 == 1'b1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:545:4  */
  always @*
    case (n230_o)
      1'b1: n231_o = roundclose;
      default: n231_o = roundfar;
    endcase
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:548:40  */
  assign n232_o = selectclosepath_d2 & resultcloseiszero;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:556:23  */
  assign fpsub_5_11_f300_uid2_finalroundadd_n234 = fpsub_5_11_f300_uid2_finalroundadd_r; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:551:4  */
  intadder_18_f300_uid13456789 fpsub_5_11_f300_uid2_finalroundadd (
    .clk(clk),
    .x(resultbeforeround),
    .y(n233_o),
    .cin(round),
    .r(fpsub_5_11_f300_uid2_finalroundadd_r));
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:561:38  */
  assign n237_o = resultrounded[17:16];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:563:36  */
  assign n238_o = ~zerofromclose_d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:563:58  */
  assign n240_o = {n238_o, 1'b0};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:563:64  */
  assign n242_o = underflowoverflow == 2'b01;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:564:39  */
  assign n245_o = underflowoverflow == 2'b10;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:564:49  */
  assign n247_o = underflowoverflow == 2'b11;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:564:49  */
  assign n248_o = n245_o | n247_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:565:41  */
  assign n249_o = ~zerofromclose_d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:565:38  */
  assign n251_o = {1'b0, n249_o};
  assign n252_o = {n248_o, n242_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:562:4  */
  always @*
    case (n252_o)
      2'b10: n253_o = 2'b00;
      2'b01: n253_o = n240_o;
      default: n253_o = n251_o;
    endcase
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:566:62  */
  assign n254_o = resultrounded[15:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:566:47  */
  assign n255_o = {syncressign_d3, n254_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:570:26  */
  assign n256_o = resultnoexn[18:17];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:570:41  */
  assign n258_o = syncexnxy_d3 == 4'b0101;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:571:19  */
  assign n260_o = {1'b1, synceffsub_d3};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:571:44  */
  assign n262_o = syncexnxy_d3 == 4'b1010;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:572:41  */
  assign n265_o = syncexnxy_d3 == 4'b1110;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:573:27  */
  assign n266_o = syncexnxy_d3[3:2];
  assign n267_o = {n265_o, n262_o, n258_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:569:4  */
  always @*
    case (n267_o)
      3'b100: n268_o = 2'b11;
      3'b010: n268_o = n260_o;
      3'b001: n268_o = n256_o;
      default: n268_o = n266_o;
    endcase
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:576:26  */
  assign n269_o = resultnoexn[16];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:576:39  */
  assign n271_o = syncexnxy_d3 == 4'b0101;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:577:23  */
  assign n272_o = syncx_d3[16];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:577:28  */
  assign n273_o = n272_o & syncsigny_d3;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:577:45  */
  assign n275_o = syncexnxy_d3 == 4'b0000;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:578:23  */
  assign n276_o = syncx_d3[16];
  assign n277_o = {n275_o, n271_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:575:4  */
  always @*
    case (n277_o)
      2'b10: n278_o = n273_o;
      2'b01: n278_o = n269_o;
      default: n278_o = n276_o;
    endcase
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:581:29  */
  assign n279_o = resultnoexn[15:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:581:45  */
  assign n281_o = syncexnxy_d3 == 4'b0101;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:582:26  */
  assign n282_o = syncx_d3[15:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:580:4  */
  always @*
    case (n281_o)
      1'b1: n283_o = n279_o;
      default: n283_o = n282_o;
    endcase
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:583:14  */
  assign n284_o = {exnr, sgnr};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:583:21  */
  assign n285_o = {n284_o, expsigr};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:421:10  */
  always @(posedge clk)
    n286_q <= newx;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:421:10  */
  always @(posedge clk)
    n287_q <= newx_d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:421:10  */
  always @(posedge clk)
    n288_q <= effsub;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:421:10  */
  always @(posedge clk)
    n289_q <= effsub_d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:421:10  */
  always @(posedge clk)
    n290_q <= selectclosepath;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:421:10  */
  always @(posedge clk)
    n291_q <= selectclosepath_d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:421:10  */
  always @(posedge clk)
    n292_q <= exponentresultfar0;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:421:10  */
  always @(posedge clk)
    n293_q <= exponentresultfar0_d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:421:10  */
  always @(posedge clk)
    n294_q <= zerofromclose;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:421:10  */
  always @(posedge clk)
    n295_q <= synceffsub;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:421:10  */
  always @(posedge clk)
    n296_q <= synceffsub_d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:421:10  */
  always @(posedge clk)
    n297_q <= synceffsub_d2;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:421:10  */
  always @(posedge clk)
    n298_q <= syncx;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:421:10  */
  always @(posedge clk)
    n299_q <= syncx_d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:421:10  */
  always @(posedge clk)
    n300_q <= syncx_d2;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:421:10  */
  always @(posedge clk)
    n301_q <= syncsigny;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:421:10  */
  always @(posedge clk)
    n302_q <= syncsigny_d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:421:10  */
  always @(posedge clk)
    n303_q <= syncsigny_d2;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:421:10  */
  always @(posedge clk)
    n304_q <= syncressign;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:421:10  */
  always @(posedge clk)
    n305_q <= syncressign_d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:421:10  */
  always @(posedge clk)
    n306_q <= syncressign_d2;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:421:10  */
  assign n307_o = {n253_o, n255_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:421:10  */
  always @(posedge clk)
    n308_q <= syncexnxy;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:421:10  */
  always @(posedge clk)
    n309_q <= syncexnxy_d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_11.vhdl:421:10  */
  always @(posedge clk)
    n310_q <= syncexnxy_d2;
endmodule

