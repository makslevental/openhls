module intadder_16_f300_uid133
  (input  clk,
   input  [15:0] x,
   input  [15:0] y,
   input  cin,
   output [15:0] r);
  wire cin_1;
  wire cin_1_d1;
  wire [16:0] x_1;
  wire [16:0] x_1_d1;
  wire [16:0] y_1;
  wire [16:0] y_1_d1;
  wire [16:0] y_1_d2;
  wire [16:0] y_1_d3;
  wire [16:0] s_1;
  wire [15:0] r_1;
  wire [16:0] n497_o;
  wire [16:0] n499_o;
  wire [16:0] n500_o;
  wire [16:0] n501_o;
  wire [16:0] n502_o;
  wire [15:0] n503_o;
  reg n504_q;
  reg [16:0] n505_q;
  reg [16:0] n506_q;
  reg [16:0] n507_q;
  reg [16:0] n508_q;
  assign r = r_1;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:256:8  */
  assign cin_1 = cin; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:256:15  */
  assign cin_1_d1 = n504_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:257:8  */
  assign x_1 = n497_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:257:13  */
  assign x_1_d1 = n505_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:258:8  */
  assign y_1 = n499_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:258:13  */
  assign y_1_d1 = n506_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:258:21  */
  assign y_1_d2 = n507_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:258:29  */
  assign y_1_d3 = n508_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:259:8  */
  assign s_1 = n502_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:260:8  */
  assign r_1 = n503_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:273:15  */
  assign n497_o = {1'b0, x};
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:274:15  */
  assign n499_o = {1'b0, y};
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:275:18  */
  assign n500_o = x_1_d1 + y_1_d3;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:275:27  */
  assign n501_o = {16'b0, cin_1_d1};  //  uext
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:275:27  */
  assign n502_o = n500_o + n501_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:276:14  */
  assign n503_o = s_1[15:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:264:10  */
  always @(posedge clk)
    n504_q <= cin_1;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:264:10  */
  always @(posedge clk)
    n505_q <= x_1;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:264:10  */
  always @(posedge clk)
    n506_q <= y_1;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:264:10  */
  always @(posedge clk)
    n507_q <= y_1_d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:264:10  */
  always @(posedge clk)
    n508_q <= y_1_d2;
endmodule

module intadder_11_f300_uid10
  (input  clk,
   input  [10:0] x,
   input  [10:0] y,
   input  cin,
   output [10:0] r);
  wire [10:0] rtmp;
  wire [10:0] x_d1;
  wire [10:0] x_d2;
  wire [10:0] y_d1;
  wire [10:0] y_d2;
  wire [10:0] n479_o;
  wire [10:0] n480_o;
  wire [10:0] n481_o;
  reg [10:0] n482_q;
  reg [10:0] n483_q;
  reg [10:0] n484_q;
  reg [10:0] n485_q;
  assign r = rtmp;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:209:8  */
  assign rtmp = n481_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:210:8  */
  assign x_d1 = n482_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:210:14  */
  assign x_d2 = n483_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:211:8  */
  assign y_d1 = n484_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:211:14  */
  assign y_d2 = n485_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:222:17  */
  assign n479_o = x_d2 + y_d2;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:222:24  */
  assign n480_o = {10'b0, cin};  //  uext
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:222:24  */
  assign n481_o = n479_o + n480_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:215:10  */
  always @(posedge clk)
    n482_q <= x;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:215:10  */
  always @(posedge clk)
    n483_q <= x_d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:215:10  */
  always @(posedge clk)
    n484_q <= y;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:215:10  */
  always @(posedge clk)
    n485_q <= y_d1;
endmodule

module rightshiftersticky8_by_max_10_f300_uid8
  (input  clk,
   input  [7:0] x,
   input  [3:0] s,
   output [9:0] r,
   output sticky);
  wire [3:0] ps;
  wire [3:0] ps_d1;
  wire [3:0] ps_d2;
  wire [9:0] xpadded;
  wire [9:0] level4;
  wire [9:0] level4_d1;
  wire stk3;
  wire [9:0] level3;
  wire [9:0] level3_d1;
  wire stk2;
  wire stk2_d1;
  wire [9:0] level2;
  wire [9:0] level2_d1;
  wire [9:0] level2_d2;
  wire stk1;
  wire [9:0] level1;
  wire [9:0] level1_d1;
  wire [9:0] level1_d2;
  wire stk0;
  wire [9:0] level0;
  wire [9:0] n401_o;
  wire [7:0] n403_o;
  wire n405_o;
  wire n406_o;
  wire n407_o;
  wire n408_o;
  wire n410_o;
  wire n411_o;
  wire [9:0] n412_o;
  wire [1:0] n413_o;
  wire [9:0] n415_o;
  wire [3:0] n417_o;
  wire n419_o;
  wire n420_o;
  wire n421_o;
  wire n422_o;
  wire n423_o;
  wire n425_o;
  wire n426_o;
  wire [9:0] n427_o;
  wire [5:0] n428_o;
  wire [9:0] n430_o;
  wire [1:0] n432_o;
  wire n434_o;
  wire n435_o;
  wire n436_o;
  wire n437_o;
  wire n438_o;
  wire n440_o;
  wire n441_o;
  wire [9:0] n442_o;
  wire [7:0] n443_o;
  wire [9:0] n445_o;
  wire n447_o;
  wire n449_o;
  wire n450_o;
  wire n451_o;
  wire n452_o;
  wire n453_o;
  wire n455_o;
  wire n456_o;
  wire [9:0] n457_o;
  wire [8:0] n458_o;
  wire [9:0] n460_o;
  reg [3:0] n461_q;
  reg [3:0] n462_q;
  reg [9:0] n463_q;
  reg [9:0] n464_q;
  reg n465_q;
  reg [9:0] n466_q;
  reg [9:0] n467_q;
  reg [9:0] n468_q;
  reg [9:0] n469_q;
  assign r = level0;
  assign sticky = stk0;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:138:8  */
  assign ps = s; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:138:12  */
  assign ps_d1 = n461_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:138:19  */
  assign ps_d2 = n462_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:139:8  */
  assign xpadded = n401_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:140:8  */
  assign level4 = xpadded; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:140:16  */
  assign level4_d1 = n463_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:141:8  */
  assign stk3 = n408_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:142:8  */
  assign level3 = n412_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:142:16  */
  assign level3_d1 = n464_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:143:8  */
  assign stk2 = n423_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:143:14  */
  assign stk2_d1 = n465_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:144:8  */
  assign level2 = n427_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:144:16  */
  assign level2_d1 = n466_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:144:27  */
  assign level2_d2 = n467_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:145:8  */
  assign stk1 = n438_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:146:8  */
  assign level1 = n442_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:146:16  */
  assign level1_d1 = n468_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:146:27  */
  assign level1_d2 = n469_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:147:8  */
  assign stk0 = n453_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:148:8  */
  assign level0 = n457_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:165:16  */
  assign n401_o = {x, 2'b00};
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:167:31  */
  assign n403_o = level4_d1[7:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:167:43  */
  assign n405_o = n403_o != 8'b00000000;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:167:65  */
  assign n406_o = ps_d1[3];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:167:56  */
  assign n407_o = n405_o & n406_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:167:16  */
  assign n408_o = n407_o ? 1'b1 : 1'b0;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:168:30  */
  assign n410_o = ps[3];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:168:33  */
  assign n411_o = ~n410_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:168:22  */
  assign n412_o = n411_o ? level4 : n415_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:168:74  */
  assign n413_o = level4[9:8];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:168:66  */
  assign n415_o = {8'b00000000, n413_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:169:31  */
  assign n417_o = level3_d1[3:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:169:43  */
  assign n419_o = n417_o != 4'b0000;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:169:61  */
  assign n420_o = ps_d1[2];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:169:52  */
  assign n421_o = n419_o & n420_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:169:70  */
  assign n422_o = n421_o | stk3;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:169:16  */
  assign n423_o = n422_o ? 1'b1 : 1'b0;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:170:30  */
  assign n425_o = ps[2];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:170:33  */
  assign n426_o = ~n425_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:170:22  */
  assign n427_o = n426_o ? level3 : n430_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:170:74  */
  assign n428_o = level3[9:4];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:170:66  */
  assign n430_o = {4'b0000, n428_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:171:31  */
  assign n432_o = level2_d2[1:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:171:43  */
  assign n434_o = n432_o != 2'b00;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:171:59  */
  assign n435_o = ps_d2[1];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:171:50  */
  assign n436_o = n434_o & n435_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:171:68  */
  assign n437_o = n436_o | stk2_d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:171:16  */
  assign n438_o = n437_o ? 1'b1 : 1'b0;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:172:30  */
  assign n440_o = ps[1];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:172:33  */
  assign n441_o = ~n440_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:172:22  */
  assign n442_o = n441_o ? level2 : n445_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:172:74  */
  assign n443_o = level2[9:2];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:172:66  */
  assign n445_o = {2'b00, n443_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:173:31  */
  assign n447_o = level1_d2[0];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:173:43  */
  assign n449_o = n447_o != 1'b0;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:173:58  */
  assign n450_o = ps_d2[0];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:173:49  */
  assign n451_o = n449_o & n450_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:173:67  */
  assign n452_o = n451_o | stk1;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:173:16  */
  assign n453_o = n452_o ? 1'b1 : 1'b0;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:174:30  */
  assign n455_o = ps[0];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:174:33  */
  assign n456_o = ~n455_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:174:22  */
  assign n457_o = n456_o ? level1 : n460_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:174:74  */
  assign n458_o = level1[9:1];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:174:66  */
  assign n460_o = {1'b0, n458_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:152:10  */
  always @(posedge clk)
    n461_q <= ps;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:152:10  */
  always @(posedge clk)
    n462_q <= ps_d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:152:10  */
  always @(posedge clk)
    n463_q <= level4;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:152:10  */
  always @(posedge clk)
    n464_q <= level3;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:152:10  */
  always @(posedge clk)
    n465_q <= stk2;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:152:10  */
  always @(posedge clk)
    n466_q <= level2;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:152:10  */
  always @(posedge clk)
    n467_q <= level2_d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:152:10  */
  always @(posedge clk)
    n468_q <= level1;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:152:10  */
  always @(posedge clk)
    n469_q <= level1_d1;
endmodule

module normalizer_z_9_9_9_f300_uid6
  (input  clk,
   input  [8:0] x,
   output [3:0] count,
   output [8:0] r);
  wire [8:0] level4;
  wire [8:0] level4_d1;
  wire count3;
  wire count3_d1;
  wire [8:0] level3;
  wire count2;
  wire count2_d1;
  wire [8:0] level2;
  wire [8:0] level2_d1;
  wire count1;
  wire count1_d1;
  wire [8:0] level1;
  wire count0;
  wire [8:0] level0;
  wire [3:0] scount;
  wire [7:0] n334_o;
  wire n336_o;
  wire n337_o;
  wire n339_o;
  wire [8:0] n340_o;
  wire n341_o;
  wire [8:0] n343_o;
  wire [3:0] n345_o;
  wire n347_o;
  wire n348_o;
  wire n350_o;
  wire [8:0] n351_o;
  wire [4:0] n352_o;
  wire [8:0] n354_o;
  wire [1:0] n356_o;
  wire n358_o;
  wire n359_o;
  wire n361_o;
  wire [8:0] n362_o;
  wire [6:0] n363_o;
  wire [8:0] n365_o;
  wire n367_o;
  wire n369_o;
  wire n370_o;
  wire n372_o;
  wire [8:0] n373_o;
  wire [7:0] n374_o;
  wire [8:0] n376_o;
  wire [1:0] n377_o;
  wire [2:0] n378_o;
  wire [3:0] n379_o;
  reg [8:0] n380_q;
  reg n381_q;
  reg n382_q;
  reg [8:0] n383_q;
  reg n384_q;
  assign count = scount;
  assign r = level0;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:69:8  */
  assign level4 = x; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:92:22  */
  assign level4_d1 = n380_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:70:8  */
  assign count3 = n337_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:70:16  */
  assign count3_d1 = n381_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:95:19  */
  assign level3 = n340_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:72:8  */
  assign count2 = n348_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:72:16  */
  assign count2_d1 = n382_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:73:8  */
  assign level2 = n351_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:98:22  */
  assign level2_d1 = n383_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:74:8  */
  assign count1 = n359_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:74:16  */
  assign count1_d1 = n384_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:101:19  */
  assign level1 = n362_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:76:8  */
  assign count0 = n370_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:77:8  */
  assign level0 = n373_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:78:8  */
  assign scount = n379_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:91:31  */
  assign n334_o = level4_d1[8:1];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:91:44  */
  assign n336_o = n334_o == 8'b00000000;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:91:17  */
  assign n337_o = n336_o ? 1'b1 : 1'b0;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:92:46  */
  assign n339_o = ~count3;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:92:35  */
  assign n340_o = n339_o ? level4_d1 : n343_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:92:65  */
  assign n341_o = level4_d1[0];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:92:78  */
  assign n343_o = {n341_o, 8'b00000000};
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:94:28  */
  assign n345_o = level3[8:5];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:94:41  */
  assign n347_o = n345_o == 4'b0000;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:94:17  */
  assign n348_o = n347_o ? 1'b1 : 1'b0;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:95:43  */
  assign n350_o = ~count2;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:95:32  */
  assign n351_o = n350_o ? level3 : n354_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:95:59  */
  assign n352_o = level3[4:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:95:72  */
  assign n354_o = {n352_o, 4'b0000};
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:97:28  */
  assign n356_o = level2[8:7];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:97:41  */
  assign n358_o = n356_o == 2'b00;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:97:17  */
  assign n359_o = n358_o ? 1'b1 : 1'b0;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:98:49  */
  assign n361_o = ~count1_d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:98:35  */
  assign n362_o = n361_o ? level2_d1 : n365_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:98:68  */
  assign n363_o = level2_d1[6:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:98:81  */
  assign n365_o = {n363_o, 2'b00};
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:100:28  */
  assign n367_o = level1[8];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:100:41  */
  assign n369_o = n367_o == 1'b0;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:100:17  */
  assign n370_o = n369_o ? 1'b1 : 1'b0;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:101:43  */
  assign n372_o = ~count0;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:101:32  */
  assign n373_o = n372_o ? level1 : n376_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:101:59  */
  assign n374_o = level1[7:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:101:72  */
  assign n376_o = {n374_o, 1'b0};
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:104:24  */
  assign n377_o = {count3_d1, count2_d1};
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:104:36  */
  assign n378_o = {n377_o, count1_d1};
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:104:48  */
  assign n379_o = {n378_o, count0};
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:82:10  */
  always @(posedge clk)
    n380_q <= level4;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:82:10  */
  always @(posedge clk)
    n381_q <= count3;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:82:10  */
  always @(posedge clk)
    n382_q <= count2;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:82:10  */
  always @(posedge clk)
    n383_q <= level2;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:82:10  */
  always @(posedge clk)
    n384_q <= count1;
endmodule

module intdualsub_10_f300_uid4
  (input  clk,
   input  [9:0] x,
   input  [9:0] y,
   output [9:0] xmy,
   output [9:0] ymx);
  wire [9:0] temprxmy;
  wire [9:0] temprymx;
  wire [9:0] n312_o;
  wire [9:0] n313_o;
  wire [9:0] n316_o;
  wire [9:0] n317_o;
  wire [9:0] n318_o;
  wire [9:0] n321_o;
  assign xmy = temprxmy;
  assign ymx = temprymx;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:31:8  */
  assign temprxmy = n316_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:32:8  */
  assign temprymx = n321_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:34:21  */
  assign n312_o = ~y;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:34:18  */
  assign n313_o = x + n312_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:34:28  */
  assign n316_o = n313_o + 10'b0000000001;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:35:21  */
  assign n317_o = ~x;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:35:18  */
  assign n318_o = y + n317_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:35:28  */
  assign n321_o = n318_o + 10'b0000000001;
endmodule

module fadd #(parameter ID = 1)
  (input  clk,
   input  [16:0] X,
   input  [16:0] Y,
   output [16:0] R);
  wire [16:0] inx;
  wire [16:0] iny;
  wire exceptionxsuperiory;
  wire exceptionxequaly;
  wire [7:0] signedexponentx;
  wire [7:0] signedexponenty;
  wire [7:0] exponentdifferencexy;
  wire [6:0] exponentdifferenceyx;
  wire swap;
  wire [16:0] newx;
  wire [16:0] newx_d1;
  wire [16:0] newx_d2;
  wire [16:0] newy;
  wire [6:0] exponentdifference;
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
  wire [9:0] fracxclose1;
  wire [9:0] fracyclose1;
  wire [9:0] fracrclosexmy;
  wire [9:0] fracrcloseymx;
  wire fracsignclose;
  wire [8:0] fracrclose1;
  wire ressign;
  wire [3:0] nzerosnew;
  wire [8:0] shiftedfrac;
  wire roundclose0;
  wire resultcloseiszero0;
  wire [8:0] exponentresultclose;
  wire [15:0] resultbeforeroundclose;
  wire roundclose;
  wire resultcloseiszero;
  wire [7:0] fracnewy;
  wire [9:0] shiftedfracy;
  wire sticky;
  wire [10:0] fracyfar;
  wire [10:0] effsubvector;
  wire [10:0] fracyfarxorop;
  wire [10:0] fracxfar;
  wire cinaddfar;
  wire [10:0] fracresultfar0;
  wire [10:0] fracresultfarnormstage;
  wire [1:0] fracleadingbits;
  wire [6:0] fracresultfar1;
  wire fracresultroundbit;
  wire fracresultstickybit;
  wire roundfar1;
  wire [1:0] expoperationsel;
  wire [8:0] exponentupdate;
  wire [8:0] exponentresultfar0;
  wire [8:0] exponentresultfar0_d1;
  wire [8:0] exponentresultfar0_d2;
  wire [8:0] exponentresultfar1;
  wire [15:0] resultbeforeroundfar;
  wire roundfar;
  wire [15:0] resultbeforeround;
  wire round;
  wire zerofromclose;
  wire zerofromclose_d1;
  wire [15:0] resultrounded;
  wire synceffsub;
  wire synceffsub_d1;
  wire synceffsub_d2;
  wire synceffsub_d3;
  wire [16:0] syncx;
  wire [16:0] syncx_d1;
  wire [16:0] syncx_d2;
  wire [16:0] syncx_d3;
  wire syncsigny;
  wire syncsigny_d1;
  wire syncsigny_d2;
  wire syncsigny_d3;
  wire syncressign;
  wire syncressign_d1;
  wire syncressign_d2;
  wire syncressign_d3;
  wire [1:0] underflowoverflow;
  wire [16:0] resultnoexn;
  wire [3:0] syncexnxy;
  wire [3:0] syncexnxy_d1;
  wire [3:0] syncexnxy_d2;
  wire [3:0] syncexnxy_d3;
  wire [1:0] exnr;
  wire sgnr;
  wire [13:0] expsigr;
  wire [1:0] n30_o;
  wire [1:0] n31_o;
  wire n32_o;
  wire n33_o;
  wire [1:0] n36_o;
  wire [1:0] n37_o;
  wire n38_o;
  wire n39_o;
  wire [6:0] n41_o;
  wire [7:0] n43_o;
  wire [6:0] n44_o;
  wire [7:0] n46_o;
  wire [7:0] n47_o;
  wire [6:0] n48_o;
  wire [6:0] n49_o;
  wire [6:0] n50_o;
  wire n51_o;
  wire n52_o;
  wire n53_o;
  wire n54_o;
  wire [16:0] n55_o;
  wire [16:0] n56_o;
  wire [6:0] n57_o;
  wire [6:0] n58_o;
  wire n59_o;
  wire n60_o;
  wire n61_o;
  wire n62_o;
  wire n63_o;
  wire [3:0] n64_o;
  wire n65_o;
  wire [3:0] n66_o;
  wire n68_o;
  wire n69_o;
  wire n70_o;
  wire [5:0] n71_o;
  wire n73_o;
  wire n74_o;
  wire [1:0] n76_o;
  wire [1:0] n77_o;
  wire [3:0] n78_o;
  wire n79_o;
  wire [6:0] n80_o;
  wire [8:0] n82_o;
  wire [9:0] n84_o;
  wire n85_o;
  wire [6:0] n86_o;
  wire [8:0] n88_o;
  wire [9:0] n90_o;
  wire n92_o;
  wire [6:0] n93_o;
  wire [9:0] n95_o;
  reg [9:0] n96_o;
  wire [9:0] fpadd_7_7_f300_uid2_dualsubclose_n97;
  wire [9:0] fpadd_7_7_f300_uid2_dualsubclose_n98;
  wire [9:0] fpadd_7_7_f300_uid2_dualsubclose_xmy;
  wire [9:0] fpadd_7_7_f300_uid2_dualsubclose_ymx;
  wire n103_o;
  wire [8:0] n104_o;
  wire n105_o;
  wire [8:0] n106_o;
  wire [8:0] n107_o;
  wire n110_o;
  wire n111_o;
  wire n112_o;
  wire n113_o;
  wire n114_o;
  wire n115_o;
  wire [3:0] norm_n116;
  wire [8:0] norm_n117;
  wire [3:0] norm_count;
  wire [8:0] norm_r;
  wire n122_o;
  wire n123_o;
  wire n124_o;
  wire n127_o;
  wire n128_o;
  wire [6:0] n130_o;
  wire [8:0] n132_o;
  wire [8:0] n134_o;
  wire [8:0] n135_o;
  wire [6:0] n136_o;
  wire [15:0] n137_o;
  wire [6:0] n138_o;
  wire [7:0] n140_o;
  wire [9:0] rightshiftercomponent_n141;
  wire rightshiftercomponent_n142;
  wire [9:0] rightshiftercomponent_r;
  wire rightshiftercomponent_sticky;
  wire [10:0] n148_o;
  wire [3:0] n149_o;
  wire [3:0] n150_o;
  wire [2:0] n151_o;
  wire [10:0] n152_o;
  wire [10:0] n153_o;
  wire [6:0] n154_o;
  wire [8:0] n156_o;
  wire [10:0] n158_o;
  wire n159_o;
  wire n160_o;
  wire [10:0] fpadd_7_7_f300_uid2_fracaddfar_n161;
  wire [10:0] fpadd_7_7_f300_uid2_fracaddfar_r;
  wire [1:0] n164_o;
  wire [6:0] n165_o;
  wire n167_o;
  wire [6:0] n168_o;
  wire [6:0] n169_o;
  wire n171_o;
  wire [6:0] n172_o;
  wire [6:0] n173_o;
  wire n174_o;
  wire n176_o;
  wire n177_o;
  wire n178_o;
  wire n180_o;
  wire n181_o;
  wire n182_o;
  wire n184_o;
  wire n185_o;
  wire n186_o;
  wire n187_o;
  wire n189_o;
  wire n190_o;
  wire n191_o;
  wire n192_o;
  wire n193_o;
  wire n194_o;
  wire n195_o;
  wire n196_o;
  wire n197_o;
  wire n200_o;
  wire [1:0] n201_o;
  wire n204_o;
  wire [1:0] n205_o;
  wire n207_o;
  wire n208_o;
  wire n209_o;
  wire n210_o;
  wire n211_o;
  wire n212_o;
  wire n213_o;
  wire n214_o;
  wire [3:0] n215_o;
  wire [3:0] n216_o;
  wire [7:0] n217_o;
  wire n218_o;
  wire [8:0] n219_o;
  wire [6:0] n220_o;
  wire [8:0] n222_o;
  wire [8:0] n223_o;
  wire [15:0] n224_o;
  wire n226_o;
  reg [15:0] n227_o;
  wire n229_o;
  reg n230_o;
  wire n231_o;
  localparam [15:0] n232_o = 16'b0000000000000000;
  wire [15:0] fpadd_7_7_f300_uid2_finalroundadd_n233;
  wire [15:0] fpadd_7_7_f300_uid2_finalroundadd_r;
  wire [1:0] n236_o;
  wire n237_o;
  wire [1:0] n239_o;
  wire n241_o;
  wire n244_o;
  wire n246_o;
  wire n247_o;
  wire n248_o;
  wire [1:0] n250_o;
  wire [1:0] n251_o;
  reg [1:0] n252_o;
  wire [13:0] n253_o;
  wire [14:0] n254_o;
  wire [1:0] n255_o;
  wire n257_o;
  wire [1:0] n259_o;
  wire n261_o;
  wire n264_o;
  wire [1:0] n265_o;
  wire [2:0] n266_o;
  reg [1:0] n267_o;
  wire n268_o;
  wire n270_o;
  wire n271_o;
  wire n272_o;
  wire n274_o;
  wire n275_o;
  wire [1:0] n276_o;
  reg n277_o;
  wire [13:0] n278_o;
  wire n280_o;
  wire [13:0] n281_o;
  reg [13:0] n282_o;
  wire [2:0] n283_o;
  wire [16:0] n284_o;
  reg [16:0] n285_q;
  reg [16:0] n286_q;
  reg n287_q;
  reg n288_q;
  reg n289_q;
  reg n290_q;
  reg [8:0] n291_q;
  reg [8:0] n292_q;
  reg n293_q;
  reg n294_q;
  reg n295_q;
  reg n296_q;
  reg [16:0] n297_q;
  reg [16:0] n298_q;
  reg [16:0] n299_q;
  reg n300_q;
  reg n301_q;
  reg n302_q;
  reg n303_q;
  reg n304_q;
  reg n305_q;
  wire [16:0] n306_o;
  reg [3:0] n307_q;
  reg [3:0] n308_q;
  reg [3:0] n309_q;
  assign R = n284_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:349:8  */
  assign inx = X; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:350:8  */
  assign iny = Y; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:351:8  */
  assign exceptionxsuperiory = n33_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:352:8  */
  assign exceptionxequaly = n39_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:353:8  */
  assign signedexponentx = n43_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:354:8  */
  assign signedexponenty = n46_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:355:8  */
  assign exponentdifferencexy = n47_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:356:8  */
  assign exponentdifferenceyx = n50_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:357:8  */
  assign swap = n54_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:358:8  */
  assign newx = n55_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:358:14  */
  assign newx_d1 = n285_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:358:23  */
  assign newx_d2 = n286_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:359:8  */
  assign newy = n56_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:360:8  */
  assign exponentdifference = n57_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:361:8  */
  assign shiftedout = n63_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:362:8  */
  assign shiftval = n66_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:363:8  */
  assign effsub = n70_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:363:16  */
  assign effsub_d1 = n287_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:363:27  */
  assign effsub_d2 = n288_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:364:8  */
  assign selectclosepath = n74_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:364:25  */
  assign selectclosepath_d1 = n289_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:364:45  */
  assign selectclosepath_d2 = n290_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:365:8  */
  assign sdexnxy = n78_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:366:8  */
  assign pipesigny = n79_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:367:8  */
  assign fracxclose1 = n84_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:368:8  */
  assign fracyclose1 = n96_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:369:8  */
  assign fracrclosexmy = fpadd_7_7_f300_uid2_dualsubclose_n97; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:370:8  */
  assign fracrcloseymx = fpadd_7_7_f300_uid2_dualsubclose_n98; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:371:8  */
  assign fracsignclose = n103_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:372:8  */
  assign fracrclose1 = n106_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:373:8  */
  assign ressign = n112_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:374:8  */
  assign nzerosnew = norm_n116; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:375:8  */
  assign shiftedfrac = norm_n117; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:376:8  */
  assign roundclose0 = n124_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:377:8  */
  assign resultcloseiszero0 = n128_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:491:49  */
  assign exponentresultclose = n135_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:379:8  */
  assign resultbeforeroundclose = n137_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:380:8  */
  assign roundclose = roundclose0; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:381:8  */
  assign resultcloseiszero = resultcloseiszero0; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:382:8  */
  assign fracnewy = n140_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:383:8  */
  assign shiftedfracy = rightshiftercomponent_n141; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:384:8  */
  assign sticky = rightshiftercomponent_n142; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:385:8  */
  assign fracyfar = n148_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:386:8  */
  assign effsubvector = n152_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:387:8  */
  assign fracyfarxorop = n153_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:388:8  */
  assign fracxfar = n158_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:389:8  */
  assign cinaddfar = n160_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:390:8  */
  assign fracresultfar0 = fpadd_7_7_f300_uid2_fracaddfar_n161; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:391:8  */
  assign fracresultfarnormstage = fracresultfar0; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:392:8  */
  assign fracleadingbits = n164_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:393:8  */
  assign fracresultfar1 = n168_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:394:8  */
  assign fracresultroundbit = n177_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:395:8  */
  assign fracresultstickybit = n185_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:396:8  */
  assign roundfar1 = n197_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:397:8  */
  assign expoperationsel = n201_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:398:8  */
  assign exponentupdate = n219_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:399:8  */
  assign exponentresultfar0 = n222_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:399:28  */
  assign exponentresultfar0_d1 = n291_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:399:51  */
  assign exponentresultfar0_d2 = n292_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:400:8  */
  assign exponentresultfar1 = n223_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:401:8  */
  assign resultbeforeroundfar = n224_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:402:8  */
  assign roundfar = roundfar1; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:403:8  */
  assign resultbeforeround = n227_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:404:8  */
  assign round = n230_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:405:8  */
  assign zerofromclose = n231_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:405:23  */
  assign zerofromclose_d1 = n293_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:406:8  */
  assign resultrounded = fpadd_7_7_f300_uid2_finalroundadd_n233; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:407:8  */
  assign synceffsub = effsub; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:407:20  */
  assign synceffsub_d1 = n294_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:407:35  */
  assign synceffsub_d2 = n295_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:407:50  */
  assign synceffsub_d3 = n296_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:408:8  */
  assign syncx = newx; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:408:15  */
  assign syncx_d1 = n297_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:408:25  */
  assign syncx_d2 = n298_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:408:35  */
  assign syncx_d3 = n299_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:409:8  */
  assign syncsigny = pipesigny; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:409:19  */
  assign syncsigny_d1 = n300_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:409:33  */
  assign syncsigny_d2 = n301_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:409:47  */
  assign syncsigny_d3 = n302_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:410:8  */
  assign syncressign = ressign; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:410:21  */
  assign syncressign_d1 = n303_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:410:37  */
  assign syncressign_d2 = n304_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:410:53  */
  assign syncressign_d3 = n305_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:411:8  */
  assign underflowoverflow = n236_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:412:8  */
  assign resultnoexn = n306_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:413:8  */
  assign syncexnxy = sdexnxy; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:413:19  */
  assign syncexnxy_d1 = n307_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:413:33  */
  assign syncexnxy_d2 = n308_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:413:47  */
  assign syncexnxy_d3 = n309_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:414:8  */
  assign exnr = n267_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:415:8  */
  assign sgnr = n277_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:416:8  */
  assign expsigr = n282_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:450:39  */
  assign n30_o = inx[16:15];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:450:60  */
  assign n31_o = iny[16:15];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:450:54  */
  assign n32_o = $unsigned(n30_o) >= $unsigned(n31_o);
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:450:31  */
  assign n33_o = n32_o ? 1'b1 : 1'b0;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:451:36  */
  assign n36_o = inx[16:15];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:451:56  */
  assign n37_o = iny[16:15];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:451:51  */
  assign n38_o = n36_o == n37_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:451:28  */
  assign n39_o = n38_o ? 1'b1 : 1'b0;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:452:32  */
  assign n41_o = inx[13:7];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:452:27  */
  assign n43_o = {1'b0, n41_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:453:32  */
  assign n44_o = iny[13:7];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:453:27  */
  assign n46_o = {1'b0, n44_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:454:44  */
  assign n47_o = signedexponentx - signedexponenty;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:455:43  */
  assign n48_o = signedexponenty[6:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:455:73  */
  assign n49_o = signedexponentx[6:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:455:56  */
  assign n50_o = n48_o - n49_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:456:54  */
  assign n51_o = exponentdifferencexy[7];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:456:30  */
  assign n52_o = exceptionxequaly & n51_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:456:63  */
  assign n53_o = ~exceptionxsuperiory;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:456:59  */
  assign n54_o = n52_o | n53_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:457:16  */
  assign n55_o = swap ? iny : inx;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:458:16  */
  assign n56_o = swap ? inx : iny;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:459:47  */
  assign n57_o = swap ? exponentdifferenceyx : n58_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:459:88  */
  assign n58_o = exponentdifferencexy[6:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:460:36  */
  assign n59_o = exponentdifference[6];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:460:61  */
  assign n60_o = exponentdifference[5];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:460:40  */
  assign n61_o = n59_o | n60_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:460:86  */
  assign n62_o = exponentdifference[4];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:460:65  */
  assign n63_o = n61_o | n62_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:461:34  */
  assign n64_o = exponentdifference[3:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:461:62  */
  assign n65_o = ~shiftedout;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:461:47  */
  assign n66_o = n65_o ? n64_o : 4'b1010;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:463:18  */
  assign n68_o = newx[14];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:463:31  */
  assign n69_o = newy[14];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:463:23  */
  assign n70_o = n68_o ^ n69_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:464:53  */
  assign n71_o = exponentdifference[6:1];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:464:66  */
  assign n73_o = n71_o == 6'b000000;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:464:30  */
  assign n74_o = n73_o ? effsub : 1'b0;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:465:19  */
  assign n76_o = newx[16:15];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:465:40  */
  assign n77_o = newy[16:15];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:465:34  */
  assign n78_o = {n76_o, n77_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:466:21  */
  assign n79_o = newy[14];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:469:30  */
  assign n80_o = newx[6:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:469:24  */
  assign n82_o = {2'b01, n80_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:469:43  */
  assign n84_o = {n82_o, 1'b0};
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:470:27  */
  assign n85_o = exponentdifference[0];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:471:31  */
  assign n86_o = newy[6:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:471:25  */
  assign n88_o = {2'b01, n86_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:471:44  */
  assign n90_o = {n88_o, 1'b0};
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:471:50  */
  assign n92_o = n85_o == 1'b0;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:472:31  */
  assign n93_o = newy[6:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:472:25  */
  assign n95_o = {3'b001, n93_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:470:4  */
  always @*
    case (n92_o)
      1'b1: n96_o = n90_o;
      default: n96_o = n95_o;
    endcase
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:477:25  */
  assign fpadd_7_7_f300_uid2_dualsubclose_n97 = fpadd_7_7_f300_uid2_dualsubclose_xmy; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:478:25  */
  assign fpadd_7_7_f300_uid2_dualsubclose_n98 = fpadd_7_7_f300_uid2_dualsubclose_ymx; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:473:4  */
  intdualsub_10_f300_uid4 fpadd_7_7_f300_uid2_dualsubclose (
    .clk(clk),
    .x(fracxclose1),
    .y(fracyclose1),
    .xmy(fpadd_7_7_f300_uid2_dualsubclose_xmy),
    .ymx(fpadd_7_7_f300_uid2_dualsubclose_ymx));
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:479:34  */
  assign n103_o = fracrclosexmy[9];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:480:32  */
  assign n104_o = fracrclosexmy[8:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:480:63  */
  assign n105_o = ~fracsignclose;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:480:45  */
  assign n106_o = n105_o ? n104_o : n107_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:480:86  */
  assign n107_o = fracrcloseymx[8:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:481:60  */
  assign n110_o = fracrclose1 == 9'b000000000;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:481:44  */
  assign n111_o = selectclosepath & n110_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:481:19  */
  assign n112_o = n111_o ? 1'b0 : n115_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:482:18  */
  assign n113_o = newx[14];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:482:44  */
  assign n114_o = selectclosepath & fracsignclose;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:482:23  */
  assign n115_o = n113_o ^ n114_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:486:27  */
  assign norm_n116 = norm_count; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:487:23  */
  assign norm_n117 = norm_r; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:483:4  */
  normalizer_z_9_9_9_f300_uid6 norm (
    .clk(clk),
    .x(fracrclose1),
    .count(norm_count),
    .r(norm_r));
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:488:30  */
  assign n122_o = shiftedfrac[0];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:488:49  */
  assign n123_o = shiftedfrac[1];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:488:34  */
  assign n124_o = n122_o & n123_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:489:45  */
  assign n127_o = nzerosnew == 4'b1111;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:489:30  */
  assign n128_o = n127_o ? 1'b1 : 1'b0;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:490:42  */
  assign n130_o = newx_d2[13:7];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:490:33  */
  assign n132_o = {2'b00, n130_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:490:87  */
  assign n134_o = {5'b00000, nzerosnew};
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:490:57  */
  assign n135_o = n132_o - n134_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:491:75  */
  assign n136_o = shiftedfrac[7:1];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:491:62  */
  assign n137_o = {exponentresultclose, n136_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:496:26  */
  assign n138_o = newy[6:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:496:20  */
  assign n140_o = {1'b1, n138_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:501:23  */
  assign rightshiftercomponent_n141 = rightshiftercomponent_r; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:502:28  */
  assign rightshiftercomponent_n142 = rightshiftercomponent_sticky; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:497:4  */
  rightshiftersticky8_by_max_10_f300_uid8 rightshiftercomponent (
    .clk(clk),
    .x(fracnewy),
    .s(shiftval),
    .r(rightshiftercomponent_r),
    .sticky(rightshiftercomponent_sticky));
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:503:20  */
  assign n148_o = {1'b0, shiftedfracy};
  assign n149_o = {effsub, effsub, effsub, effsub};
  assign n150_o = {effsub, effsub, effsub, effsub};
  assign n151_o = {effsub, effsub, effsub};
  assign n152_o = {n149_o, n150_o, n151_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:505:30  */
  assign n153_o = fracyfar ^ effsubvector;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:506:28  */
  assign n154_o = newx[6:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:506:21  */
  assign n156_o = {2'b01, n154_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:506:42  */
  assign n158_o = {n156_o, 2'b00};
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:507:31  */
  assign n159_o = ~sticky;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:507:27  */
  assign n160_o = effsub_d2 & n159_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:513:23  */
  assign fpadd_7_7_f300_uid2_fracaddfar_n161 = fpadd_7_7_f300_uid2_fracaddfar_r; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:508:4  */
  intadder_11_f300_uid10 fpadd_7_7_f300_uid2_fracaddfar (
    .clk(clk),
    .x(fracxfar),
    .y(fracyfarxorop),
    .cin(cinaddfar),
    .r(fpadd_7_7_f300_uid2_fracaddfar_r));
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:516:45  */
  assign n164_o = fracresultfarnormstage[10:9];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:518:34  */
  assign n165_o = fracresultfarnormstage[7:1];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:518:69  */
  assign n167_o = fracleadingbits == 2'b00;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:518:48  */
  assign n168_o = n167_o ? n165_o : n172_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:519:34  */
  assign n169_o = fracresultfarnormstage[8:2];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:519:69  */
  assign n171_o = fracleadingbits == 2'b01;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:519:7  */
  assign n172_o = n171_o ? n169_o : n173_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:520:34  */
  assign n173_o = fracresultfarnormstage[9:3];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:522:34  */
  assign n174_o = fracresultfarnormstage[0];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:522:63  */
  assign n176_o = fracleadingbits == 2'b00;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:522:42  */
  assign n177_o = n176_o ? n174_o : n181_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:523:34  */
  assign n178_o = fracresultfarnormstage[1];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:523:62  */
  assign n180_o = fracleadingbits == 2'b01;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:523:7  */
  assign n181_o = n180_o ? n178_o : n182_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:524:34  */
  assign n182_o = fracresultfarnormstage[2];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:526:47  */
  assign n184_o = fracleadingbits == 2'b00;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:526:26  */
  assign n185_o = n184_o ? sticky : n190_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:527:34  */
  assign n186_o = fracresultfarnormstage[0];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:527:38  */
  assign n187_o = n186_o | sticky;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:527:72  */
  assign n189_o = fracleadingbits == 2'b01;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:527:7  */
  assign n190_o = n189_o ? n187_o : n194_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:528:34  */
  assign n191_o = fracresultfarnormstage[1];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:528:63  */
  assign n192_o = fracresultfarnormstage[0];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:528:38  */
  assign n193_o = n191_o | n192_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:528:67  */
  assign n194_o = n193_o | sticky;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:529:78  */
  assign n195_o = fracresultfar1[0];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:529:61  */
  assign n196_o = fracresultstickybit | n195_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:529:36  */
  assign n197_o = fracresultroundbit & n196_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:530:49  */
  assign n200_o = fracleadingbits == 2'b00;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:530:28  */
  assign n201_o = n200_o ? 2'b11 : n205_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:531:49  */
  assign n204_o = fracleadingbits == 2'b01;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:531:16  */
  assign n205_o = n204_o ? 2'b00 : 2'b01;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:533:52  */
  assign n207_o = expoperationsel[1];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:533:52  */
  assign n208_o = expoperationsel[1];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:533:52  */
  assign n209_o = expoperationsel[1];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:533:52  */
  assign n210_o = expoperationsel[1];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:533:52  */
  assign n211_o = expoperationsel[1];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:533:52  */
  assign n212_o = expoperationsel[1];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:533:52  */
  assign n213_o = expoperationsel[1];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:533:52  */
  assign n214_o = expoperationsel[1];
  assign n215_o = {n214_o, n213_o, n212_o, n211_o};
  assign n216_o = {n210_o, n209_o, n208_o, n207_o};
  assign n217_o = {n215_o, n216_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:533:74  */
  assign n218_o = expoperationsel[0];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:533:57  */
  assign n219_o = {n217_o, n218_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:534:36  */
  assign n220_o = newx[13:7];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:534:29  */
  assign n222_o = {2'b00, n220_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:535:48  */
  assign n223_o = exponentresultfar0_d2 + exponentupdate;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:536:47  */
  assign n224_o = {exponentresultfar1, fracresultfar1};
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:541:48  */
  assign n226_o = selectclosepath_d2 == 1'b1;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:540:4  */
  always @*
    case (n226_o)
      1'b1: n227_o = resultbeforeroundclose;
      default: n227_o = resultbeforeroundfar;
    endcase
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:544:24  */
  assign n229_o = selectclosepath_d2 == 1'b1;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:543:4  */
  always @*
    case (n229_o)
      1'b1: n230_o = roundclose;
      default: n230_o = roundfar;
    endcase
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:546:40  */
  assign n231_o = selectclosepath_d2 & resultcloseiszero;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:554:23  */
  assign fpadd_7_7_f300_uid2_finalroundadd_n233 = fpadd_7_7_f300_uid2_finalroundadd_r; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:549:4  */
  intadder_16_f300_uid133 fpadd_7_7_f300_uid2_finalroundadd (
    .clk(clk),
    .x(resultbeforeround),
    .y(n232_o),
    .cin(round),
    .r(fpadd_7_7_f300_uid2_finalroundadd_r));
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:559:38  */
  assign n236_o = resultrounded[15:14];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:561:36  */
  assign n237_o = ~zerofromclose_d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:561:58  */
  assign n239_o = {n237_o, 1'b0};
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:561:64  */
  assign n241_o = underflowoverflow == 2'b01;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:562:39  */
  assign n244_o = underflowoverflow == 2'b10;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:562:49  */
  assign n246_o = underflowoverflow == 2'b11;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:562:49  */
  assign n247_o = n244_o | n246_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:563:41  */
  assign n248_o = ~zerofromclose_d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:563:38  */
  assign n250_o = {1'b0, n248_o};
  assign n251_o = {n247_o, n241_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:560:4  */
  always @*
    case (n251_o)
      2'b10: n252_o = 2'b00;
      2'b01: n252_o = n239_o;
      default: n252_o = n250_o;
    endcase
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:564:62  */
  assign n253_o = resultrounded[13:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:564:47  */
  assign n254_o = {syncressign_d3, n253_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:568:26  */
  assign n255_o = resultnoexn[16:15];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:568:41  */
  assign n257_o = syncexnxy_d3 == 4'b0101;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:569:19  */
  assign n259_o = {1'b1, synceffsub_d3};
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:569:44  */
  assign n261_o = syncexnxy_d3 == 4'b1010;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:570:41  */
  assign n264_o = syncexnxy_d3 == 4'b1110;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:571:27  */
  assign n265_o = syncexnxy_d3[3:2];
  assign n266_o = {n264_o, n261_o, n257_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:567:4  */
  always @*
    case (n266_o)
      3'b100: n267_o = 2'b11;
      3'b010: n267_o = n259_o;
      3'b001: n267_o = n255_o;
      default: n267_o = n265_o;
    endcase
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:574:26  */
  assign n268_o = resultnoexn[14];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:574:39  */
  assign n270_o = syncexnxy_d3 == 4'b0101;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:575:23  */
  assign n271_o = syncx_d3[14];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:575:28  */
  assign n272_o = n271_o & syncsigny_d3;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:575:45  */
  assign n274_o = syncexnxy_d3 == 4'b0000;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:576:23  */
  assign n275_o = syncx_d3[14];
  assign n276_o = {n274_o, n270_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:573:4  */
  always @*
    case (n276_o)
      2'b10: n277_o = n272_o;
      2'b01: n277_o = n268_o;
      default: n277_o = n275_o;
    endcase
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:579:29  */
  assign n278_o = resultnoexn[13:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:579:45  */
  assign n280_o = syncexnxy_d3 == 4'b0101;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:580:26  */
  assign n281_o = syncx_d3[13:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:578:4  */
  always @*
    case (n280_o)
      1'b1: n282_o = n278_o;
      default: n282_o = n281_o;
    endcase
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:581:14  */
  assign n283_o = {exnr, sgnr};
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:581:21  */
  assign n284_o = {n283_o, expsigr};
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:420:10  */
  always @(posedge clk)
    n285_q <= newx;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:420:10  */
  always @(posedge clk)
    n286_q <= newx_d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:420:10  */
  always @(posedge clk)
    n287_q <= effsub;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:420:10  */
  always @(posedge clk)
    n288_q <= effsub_d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:420:10  */
  always @(posedge clk)
    n289_q <= selectclosepath;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:420:10  */
  always @(posedge clk)
    n290_q <= selectclosepath_d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:420:10  */
  always @(posedge clk)
    n291_q <= exponentresultfar0;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:420:10  */
  always @(posedge clk)
    n292_q <= exponentresultfar0_d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:420:10  */
  always @(posedge clk)
    n293_q <= zerofromclose;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:420:10  */
  always @(posedge clk)
    n294_q <= synceffsub;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:420:10  */
  always @(posedge clk)
    n295_q <= synceffsub_d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:420:10  */
  always @(posedge clk)
    n296_q <= synceffsub_d2;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:420:10  */
  always @(posedge clk)
    n297_q <= syncx;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:420:10  */
  always @(posedge clk)
    n298_q <= syncx_d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:420:10  */
  always @(posedge clk)
    n299_q <= syncx_d2;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:420:10  */
  always @(posedge clk)
    n300_q <= syncsigny;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:420:10  */
  always @(posedge clk)
    n301_q <= syncsigny_d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:420:10  */
  always @(posedge clk)
    n302_q <= syncsigny_d2;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:420:10  */
  always @(posedge clk)
    n303_q <= syncressign;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:420:10  */
  always @(posedge clk)
    n304_q <= syncressign_d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:420:10  */
  always @(posedge clk)
    n305_q <= syncressign_d2;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:420:10  */
  assign n306_o = {n252_o, n254_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:420:10  */
  always @(posedge clk)
    n307_q <= syncexnxy;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:420:10  */
  always @(posedge clk)
    n308_q <= syncexnxy_d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_7_7.vhdl:420:10  */
  always @(posedge clk)
    n309_q <= syncexnxy_d2;
endmodule

