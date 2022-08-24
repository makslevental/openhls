module intadder_18_f300_uid133
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
  wire [18:0] n500_o;
  wire [18:0] n502_o;
  wire [18:0] n503_o;
  wire [18:0] n504_o;
  wire [18:0] n505_o;
  wire [17:0] n506_o;
  reg n507_q;
  reg [18:0] n508_q;
  reg [18:0] n509_q;
  reg [18:0] n510_q;
  reg [18:0] n511_q;
  assign r = r_1;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:256:8  */
  assign cin_1 = cin; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:256:15  */
  assign cin_1_d1 = n507_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:257:8  */
  assign x_1 = n500_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:257:13  */
  assign x_1_d1 = n508_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:258:8  */
  assign y_1 = n502_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:258:13  */
  assign y_1_d1 = n509_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:258:21  */
  assign y_1_d2 = n510_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:258:29  */
  assign y_1_d3 = n511_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:259:8  */
  assign s_1 = n505_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:260:8  */
  assign r_1 = n506_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:273:15  */
  assign n500_o = {1'b0, x};
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:274:15  */
  assign n502_o = {1'b0, y};
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:275:18  */
  assign n503_o = x_1_d1 + y_1_d3;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:275:27  */
  assign n504_o = {18'b0, cin_1_d1};  //  uext
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:275:27  */
  assign n505_o = n503_o + n504_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:276:14  */
  assign n506_o = s_1[17:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:264:10  */
  always @(posedge clk)
    n507_q <= cin_1;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:264:10  */
  always @(posedge clk)
    n508_q <= x_1;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:264:10  */
  always @(posedge clk)
    n509_q <= y_1;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:264:10  */
  always @(posedge clk)
    n510_q <= y_1_d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:264:10  */
  always @(posedge clk)
    n511_q <= y_1_d2;
endmodule

module intadder_12_f300_uid10
  (input wire clk,
   input wire [11:0] x,
   input wire [11:0] y,
   input wire cin,
   output wire [11:0] r);
  wire [11:0] rtmp;
  wire [11:0] x_d1;
  wire [11:0] x_d2;
  wire [11:0] y_d1;
  wire [11:0] y_d2;
  wire [11:0] n482_o;
  wire [11:0] n483_o;
  wire [11:0] n484_o;
  reg [11:0] n485_q;
  reg [11:0] n486_q;
  reg [11:0] n487_q;
  reg [11:0] n488_q;
  assign r = rtmp;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:209:8  */
  assign rtmp = n484_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:210:8  */
  assign x_d1 = n485_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:210:14  */
  assign x_d2 = n486_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:211:8  */
  assign y_d1 = n487_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:211:14  */
  assign y_d2 = n488_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:222:17  */
  assign n482_o = x_d2 + y_d2;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:222:24  */
  assign n483_o = {11'b0, cin};  //  uext
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:222:24  */
  assign n484_o = n482_o + n483_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:215:10  */
  always @(posedge clk)
    n485_q <= x;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:215:10  */
  always @(posedge clk)
    n486_q <= x_d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:215:10  */
  always @(posedge clk)
    n487_q <= y;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:215:10  */
  always @(posedge clk)
    n488_q <= y_d1;
endmodule

module rightshiftersticky9_by_max_11_f300_uid8
  (input wire clk,
   input wire [8:0] x,
   input wire [3:0] s,
   output wire [10:0] r,
   output wire sticky);
  wire [3:0] ps;
  wire [3:0] ps_d1;
  wire [3:0] ps_d2;
  wire [10:0] xpadded;
  wire [10:0] level4;
  wire [10:0] level4_d1;
  wire stk3;
  wire [10:0] level3;
  wire [10:0] level3_d1;
  wire stk2;
  wire stk2_d1;
  wire [10:0] level2;
  wire [10:0] level2_d1;
  wire [10:0] level2_d2;
  wire stk1;
  wire [10:0] level1;
  wire [10:0] level1_d1;
  wire [10:0] level1_d2;
  wire stk0;
  wire [10:0] level0;
  wire [10:0] n404_o;
  wire [7:0] n406_o;
  wire n408_o;
  wire n409_o;
  wire n410_o;
  wire n411_o;
  wire n413_o;
  wire n414_o;
  wire [10:0] n415_o;
  wire [2:0] n416_o;
  wire [10:0] n418_o;
  wire [3:0] n420_o;
  wire n422_o;
  wire n423_o;
  wire n424_o;
  wire n425_o;
  wire n426_o;
  wire n428_o;
  wire n429_o;
  wire [10:0] n430_o;
  wire [6:0] n431_o;
  wire [10:0] n433_o;
  wire [1:0] n435_o;
  wire n437_o;
  wire n438_o;
  wire n439_o;
  wire n440_o;
  wire n441_o;
  wire n443_o;
  wire n444_o;
  wire [10:0] n445_o;
  wire [8:0] n446_o;
  wire [10:0] n448_o;
  wire n450_o;
  wire n452_o;
  wire n453_o;
  wire n454_o;
  wire n455_o;
  wire n456_o;
  wire n458_o;
  wire n459_o;
  wire [10:0] n460_o;
  wire [9:0] n461_o;
  wire [10:0] n463_o;
  reg [3:0] n464_q;
  reg [3:0] n465_q;
  reg [10:0] n466_q;
  reg [10:0] n467_q;
  reg n468_q;
  reg [10:0] n469_q;
  reg [10:0] n470_q;
  reg [10:0] n471_q;
  reg [10:0] n472_q;
  assign r = level0;
  assign sticky = stk0;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:138:8  */
  assign ps = s; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:138:12  */
  assign ps_d1 = n464_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:138:19  */
  assign ps_d2 = n465_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:139:8  */
  assign xpadded = n404_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:140:8  */
  assign level4 = xpadded; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:140:16  */
  assign level4_d1 = n466_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:141:8  */
  assign stk3 = n411_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:142:8  */
  assign level3 = n415_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:142:16  */
  assign level3_d1 = n467_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:143:8  */
  assign stk2 = n426_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:143:14  */
  assign stk2_d1 = n468_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:144:8  */
  assign level2 = n430_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:144:16  */
  assign level2_d1 = n469_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:144:27  */
  assign level2_d2 = n470_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:145:8  */
  assign stk1 = n441_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:146:8  */
  assign level1 = n445_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:146:16  */
  assign level1_d1 = n471_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:146:27  */
  assign level1_d2 = n472_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:147:8  */
  assign stk0 = n456_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:148:8  */
  assign level0 = n460_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:165:16  */
  assign n404_o = {x, 2'b00};
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:167:31  */
  assign n406_o = level4_d1[7:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:167:43  */
  assign n408_o = n406_o != 8'b00000000;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:167:65  */
  assign n409_o = ps_d1[3];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:167:56  */
  assign n410_o = n408_o & n409_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:167:16  */
  assign n411_o = n410_o ? 1'b1 : 1'b0;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:168:30  */
  assign n413_o = ps[3];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:168:33  */
  assign n414_o = ~n413_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:168:22  */
  assign n415_o = n414_o ? level4 : n418_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:168:74  */
  assign n416_o = level4[10:8];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:168:66  */
  assign n418_o = {8'b00000000, n416_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:169:31  */
  assign n420_o = level3_d1[3:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:169:43  */
  assign n422_o = n420_o != 4'b0000;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:169:61  */
  assign n423_o = ps_d1[2];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:169:52  */
  assign n424_o = n422_o & n423_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:169:70  */
  assign n425_o = n424_o | stk3;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:169:16  */
  assign n426_o = n425_o ? 1'b1 : 1'b0;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:170:30  */
  assign n428_o = ps[2];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:170:33  */
  assign n429_o = ~n428_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:170:22  */
  assign n430_o = n429_o ? level3 : n433_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:170:74  */
  assign n431_o = level3[10:4];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:170:66  */
  assign n433_o = {4'b0000, n431_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:171:31  */
  assign n435_o = level2_d2[1:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:171:43  */
  assign n437_o = n435_o != 2'b00;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:171:59  */
  assign n438_o = ps_d2[1];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:171:50  */
  assign n439_o = n437_o & n438_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:171:68  */
  assign n440_o = n439_o | stk2_d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:171:16  */
  assign n441_o = n440_o ? 1'b1 : 1'b0;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:172:30  */
  assign n443_o = ps[1];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:172:33  */
  assign n444_o = ~n443_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:172:22  */
  assign n445_o = n444_o ? level2 : n448_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:172:74  */
  assign n446_o = level2[10:2];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:172:66  */
  assign n448_o = {2'b00, n446_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:173:31  */
  assign n450_o = level1_d2[0];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:173:43  */
  assign n452_o = n450_o != 1'b0;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:173:58  */
  assign n453_o = ps_d2[0];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:173:49  */
  assign n454_o = n452_o & n453_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:173:67  */
  assign n455_o = n454_o | stk1;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:173:16  */
  assign n456_o = n455_o ? 1'b1 : 1'b0;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:174:30  */
  assign n458_o = ps[0];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:174:33  */
  assign n459_o = ~n458_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:174:22  */
  assign n460_o = n459_o ? level1 : n463_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:174:74  */
  assign n461_o = level1[10:1];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:174:66  */
  assign n463_o = {1'b0, n461_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:152:10  */
  always @(posedge clk)
    n464_q <= ps;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:152:10  */
  always @(posedge clk)
    n465_q <= ps_d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:152:10  */
  always @(posedge clk)
    n466_q <= level4;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:152:10  */
  always @(posedge clk)
    n467_q <= level3;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:152:10  */
  always @(posedge clk)
    n468_q <= stk2;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:152:10  */
  always @(posedge clk)
    n469_q <= level2;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:152:10  */
  always @(posedge clk)
    n470_q <= level2_d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:152:10  */
  always @(posedge clk)
    n471_q <= level1;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:152:10  */
  always @(posedge clk)
    n472_q <= level1_d1;
endmodule

module normalizer_z_10_10_10_f300_uid6
  (input wire clk,
   input wire [9:0] x,
   output wire [3:0] count,
   output wire [9:0] r);
  wire [9:0] level4;
  wire [9:0] level4_d1;
  wire count3;
  wire count3_d1;
  wire [9:0] level3;
  wire count2;
  wire count2_d1;
  wire [9:0] level2;
  wire [9:0] level2_d1;
  wire count1;
  wire count1_d1;
  wire [9:0] level1;
  wire count0;
  wire [9:0] level0;
  wire [3:0] scount;
  wire [7:0] n337_o;
  wire n339_o;
  wire n340_o;
  wire n342_o;
  wire [9:0] n343_o;
  wire [1:0] n344_o;
  wire [9:0] n346_o;
  wire [3:0] n348_o;
  wire n350_o;
  wire n351_o;
  wire n353_o;
  wire [9:0] n354_o;
  wire [5:0] n355_o;
  wire [9:0] n357_o;
  wire [1:0] n359_o;
  wire n361_o;
  wire n362_o;
  wire n364_o;
  wire [9:0] n365_o;
  wire [7:0] n366_o;
  wire [9:0] n368_o;
  wire n370_o;
  wire n372_o;
  wire n373_o;
  wire n375_o;
  wire [9:0] n376_o;
  wire [8:0] n377_o;
  wire [9:0] n379_o;
  wire [1:0] n380_o;
  wire [2:0] n381_o;
  wire [3:0] n382_o;
  reg [9:0] n383_q;
  reg n384_q;
  reg n385_q;
  reg [9:0] n386_q;
  reg n387_q;
  assign count = scount;
  assign r = level0;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:69:8  */
  assign level4 = x; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:92:22  */
  assign level4_d1 = n383_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:70:8  */
  assign count3 = n340_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:70:16  */
  assign count3_d1 = n384_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:95:19  */
  assign level3 = n343_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:72:8  */
  assign count2 = n351_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:72:16  */
  assign count2_d1 = n385_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:73:8  */
  assign level2 = n354_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:98:22  */
  assign level2_d1 = n386_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:74:8  */
  assign count1 = n362_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:74:16  */
  assign count1_d1 = n387_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:101:19  */
  assign level1 = n365_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:76:8  */
  assign count0 = n373_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:77:8  */
  assign level0 = n376_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:78:8  */
  assign scount = n382_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:91:31  */
  assign n337_o = level4_d1[9:2];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:91:44  */
  assign n339_o = n337_o == 8'b00000000;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:91:17  */
  assign n340_o = n339_o ? 1'b1 : 1'b0;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:92:46  */
  assign n342_o = ~count3;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:92:35  */
  assign n343_o = n342_o ? level4_d1 : n346_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:92:65  */
  assign n344_o = level4_d1[1:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:92:78  */
  assign n346_o = {n344_o, 8'b00000000};
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:94:28  */
  assign n348_o = level3[9:6];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:94:41  */
  assign n350_o = n348_o == 4'b0000;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:94:17  */
  assign n351_o = n350_o ? 1'b1 : 1'b0;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:95:43  */
  assign n353_o = ~count2;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:95:32  */
  assign n354_o = n353_o ? level3 : n357_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:95:59  */
  assign n355_o = level3[5:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:95:72  */
  assign n357_o = {n355_o, 4'b0000};
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:97:28  */
  assign n359_o = level2[9:8];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:97:41  */
  assign n361_o = n359_o == 2'b00;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:97:17  */
  assign n362_o = n361_o ? 1'b1 : 1'b0;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:98:49  */
  assign n364_o = ~count1_d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:98:35  */
  assign n365_o = n364_o ? level2_d1 : n368_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:98:68  */
  assign n366_o = level2_d1[7:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:98:81  */
  assign n368_o = {n366_o, 2'b00};
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:100:28  */
  assign n370_o = level1[9];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:100:41  */
  assign n372_o = n370_o == 1'b0;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:100:17  */
  assign n373_o = n372_o ? 1'b1 : 1'b0;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:101:43  */
  assign n375_o = ~count0;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:101:32  */
  assign n376_o = n375_o ? level1 : n379_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:101:59  */
  assign n377_o = level1[8:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:101:72  */
  assign n379_o = {n377_o, 1'b0};
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:104:24  */
  assign n380_o = {count3_d1, count2_d1};
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:104:36  */
  assign n381_o = {n380_o, count1_d1};
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:104:48  */
  assign n382_o = {n381_o, count0};
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:82:10  */
  always @(posedge clk)
    n383_q <= level4;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:82:10  */
  always @(posedge clk)
    n384_q <= count3;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:82:10  */
  always @(posedge clk)
    n385_q <= count2;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:82:10  */
  always @(posedge clk)
    n386_q <= level2;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:82:10  */
  always @(posedge clk)
    n387_q <= count1;
endmodule

module intdualsub_11_f300_uid4
  (input wire clk,
   input wire [10:0] x,
   input wire [10:0] y,
   output wire [10:0] xmy,
   output wire [10:0] ymx);
  wire [10:0] temprxmy;
  wire [10:0] temprymx;
  wire [10:0] n315_o;
  wire [10:0] n316_o;
  wire [10:0] n319_o;
  wire [10:0] n320_o;
  wire [10:0] n321_o;
  wire [10:0] n324_o;
  assign xmy = temprxmy;
  assign ymx = temprymx;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:31:8  */
  assign temprxmy = n319_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:32:8  */
  assign temprymx = n324_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:34:21  */
  assign n315_o = ~y;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:34:18  */
  assign n316_o = x + n315_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:34:28  */
  assign n319_o = n316_o + 11'b00000000001;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:35:21  */
  assign n320_o = ~x;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:35:18  */
  assign n321_o = y + n320_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:35:28  */
  assign n324_o = n321_o + 11'b00000000001;
endmodule

module fadd #(parameter ID = 1)
  (input wire clk,
   input wire [18:0] X,
   input wire [18:0] Y,
   output wire [18:0] R);
  wire [18:0] inx;
  wire [18:0] iny;
  wire exceptionxsuperiory;
  wire exceptionxequaly;
  wire [8:0] signedexponentx;
  wire [8:0] signedexponenty;
  wire [8:0] exponentdifferencexy;
  wire [7:0] exponentdifferenceyx;
  wire swap;
  wire [18:0] newx;
  wire [18:0] newx_d1;
  wire [18:0] newx_d2;
  wire [18:0] newy;
  wire [7:0] exponentdifference;
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
  wire [10:0] fracxclose1;
  wire [10:0] fracyclose1;
  wire [10:0] fracrclosexmy;
  wire [10:0] fracrcloseymx;
  wire fracsignclose;
  wire [9:0] fracrclose1;
  wire ressign;
  wire [3:0] nzerosnew;
  wire [9:0] shiftedfrac;
  wire roundclose0;
  wire resultcloseiszero0;
  wire [9:0] exponentresultclose;
  wire [17:0] resultbeforeroundclose;
  wire roundclose;
  wire resultcloseiszero;
  wire [8:0] fracnewy;
  wire [10:0] shiftedfracy;
  wire sticky;
  wire [11:0] fracyfar;
  wire [11:0] effsubvector;
  wire [11:0] fracyfarxorop;
  wire [11:0] fracxfar;
  wire cinaddfar;
  wire [11:0] fracresultfar0;
  wire [11:0] fracresultfarnormstage;
  wire [1:0] fracleadingbits;
  wire [7:0] fracresultfar1;
  wire fracresultroundbit;
  wire fracresultstickybit;
  wire roundfar1;
  wire [1:0] expoperationsel;
  wire [9:0] exponentupdate;
  wire [9:0] exponentresultfar0;
  wire [9:0] exponentresultfar0_d1;
  wire [9:0] exponentresultfar0_d2;
  wire [9:0] exponentresultfar1;
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
  wire [7:0] n41_o;
  wire [8:0] n43_o;
  wire [7:0] n44_o;
  wire [8:0] n46_o;
  wire [8:0] n47_o;
  wire [7:0] n48_o;
  wire [7:0] n49_o;
  wire [7:0] n50_o;
  wire n51_o;
  wire n52_o;
  wire n53_o;
  wire n54_o;
  wire [18:0] n55_o;
  wire [18:0] n56_o;
  wire [7:0] n57_o;
  wire [7:0] n58_o;
  wire n59_o;
  wire n60_o;
  wire n61_o;
  wire n62_o;
  wire n63_o;
  wire n64_o;
  wire n65_o;
  wire [3:0] n66_o;
  wire n67_o;
  wire [3:0] n68_o;
  wire n70_o;
  wire n71_o;
  wire n72_o;
  wire [6:0] n73_o;
  wire n75_o;
  wire n76_o;
  wire [1:0] n78_o;
  wire [1:0] n79_o;
  wire [3:0] n80_o;
  wire n81_o;
  wire [7:0] n82_o;
  wire [9:0] n84_o;
  wire [10:0] n86_o;
  wire n87_o;
  wire [7:0] n88_o;
  wire [9:0] n90_o;
  wire [10:0] n92_o;
  wire n94_o;
  wire [7:0] n95_o;
  wire [10:0] n97_o;
  reg [10:0] n98_o;
  wire [10:0] fpadd_8_8_f300_uid2_dualsubclose_n99;
  wire [10:0] fpadd_8_8_f300_uid2_dualsubclose_n100;
  wire [10:0] fpadd_8_8_f300_uid2_dualsubclose_xmy;
  wire [10:0] fpadd_8_8_f300_uid2_dualsubclose_ymx;
  wire n105_o;
  wire [9:0] n106_o;
  wire n107_o;
  wire [9:0] n108_o;
  wire [9:0] n109_o;
  wire n112_o;
  wire n113_o;
  wire n114_o;
  wire n115_o;
  wire n116_o;
  wire n117_o;
  wire [3:0] norm_n118;
  wire [9:0] norm_n119;
  wire [3:0] norm_count;
  wire [9:0] norm_r;
  wire n124_o;
  wire n125_o;
  wire n126_o;
  wire n129_o;
  wire n130_o;
  wire [7:0] n132_o;
  wire [9:0] n134_o;
  wire [9:0] n136_o;
  wire [9:0] n137_o;
  wire [7:0] n138_o;
  wire [17:0] n139_o;
  wire [7:0] n140_o;
  wire [8:0] n142_o;
  wire [10:0] rightshiftercomponent_n143;
  wire rightshiftercomponent_n144;
  wire [10:0] rightshiftercomponent_r;
  wire rightshiftercomponent_sticky;
  wire [11:0] n150_o;
  wire [3:0] n151_o;
  wire [3:0] n152_o;
  wire [3:0] n153_o;
  wire [11:0] n154_o;
  wire [11:0] n155_o;
  wire [7:0] n156_o;
  wire [9:0] n158_o;
  wire [11:0] n160_o;
  wire n161_o;
  wire n162_o;
  wire [11:0] fpadd_8_8_f300_uid2_fracaddfar_n163;
  wire [11:0] fpadd_8_8_f300_uid2_fracaddfar_r;
  wire [1:0] n166_o;
  wire [7:0] n167_o;
  wire n169_o;
  wire [7:0] n170_o;
  wire [7:0] n171_o;
  wire n173_o;
  wire [7:0] n174_o;
  wire [7:0] n175_o;
  wire n176_o;
  wire n178_o;
  wire n179_o;
  wire n180_o;
  wire n182_o;
  wire n183_o;
  wire n184_o;
  wire n186_o;
  wire n187_o;
  wire n188_o;
  wire n189_o;
  wire n191_o;
  wire n192_o;
  wire n193_o;
  wire n194_o;
  wire n195_o;
  wire n196_o;
  wire n197_o;
  wire n198_o;
  wire n199_o;
  wire n202_o;
  wire [1:0] n203_o;
  wire n206_o;
  wire [1:0] n207_o;
  wire n209_o;
  wire n210_o;
  wire n211_o;
  wire n212_o;
  wire n213_o;
  wire n214_o;
  wire n215_o;
  wire n216_o;
  wire n217_o;
  wire [3:0] n218_o;
  wire [3:0] n219_o;
  wire [8:0] n220_o;
  wire n221_o;
  wire [9:0] n222_o;
  wire [7:0] n223_o;
  wire [9:0] n225_o;
  wire [9:0] n226_o;
  wire [17:0] n227_o;
  wire n229_o;
  reg [17:0] n230_o;
  wire n232_o;
  reg n233_o;
  wire n234_o;
  localparam [17:0] n235_o = 18'b000000000000000000;
  wire [17:0] fpadd_8_8_f300_uid2_finalroundadd_n236;
  wire [17:0] fpadd_8_8_f300_uid2_finalroundadd_r;
  wire [1:0] n239_o;
  wire n240_o;
  wire [1:0] n242_o;
  wire n244_o;
  wire n247_o;
  wire n249_o;
  wire n250_o;
  wire n251_o;
  wire [1:0] n253_o;
  wire [1:0] n254_o;
  reg [1:0] n255_o;
  wire [15:0] n256_o;
  wire [16:0] n257_o;
  wire [1:0] n258_o;
  wire n260_o;
  wire [1:0] n262_o;
  wire n264_o;
  wire n267_o;
  wire [1:0] n268_o;
  wire [2:0] n269_o;
  reg [1:0] n270_o;
  wire n271_o;
  wire n273_o;
  wire n274_o;
  wire n275_o;
  wire n277_o;
  wire n278_o;
  wire [1:0] n279_o;
  reg n280_o;
  wire [15:0] n281_o;
  wire n283_o;
  wire [15:0] n284_o;
  reg [15:0] n285_o;
  wire [2:0] n286_o;
  wire [18:0] n287_o;
  reg [18:0] n288_q;
  reg [18:0] n289_q;
  reg n290_q;
  reg n291_q;
  reg n292_q;
  reg n293_q;
  reg [9:0] n294_q;
  reg [9:0] n295_q;
  reg n296_q;
  reg n297_q;
  reg n298_q;
  reg n299_q;
  reg [18:0] n300_q;
  reg [18:0] n301_q;
  reg [18:0] n302_q;
  reg n303_q;
  reg n304_q;
  reg n305_q;
  reg n306_q;
  reg n307_q;
  reg n308_q;
  wire [18:0] n309_o;
  reg [3:0] n310_q;
  reg [3:0] n311_q;
  reg [3:0] n312_q;
  assign R = n287_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:349:8  */
  assign inx = X; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:350:8  */
  assign iny = Y; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:351:8  */
  assign exceptionxsuperiory = n33_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:352:8  */
  assign exceptionxequaly = n39_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:353:8  */
  assign signedexponentx = n43_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:354:8  */
  assign signedexponenty = n46_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:355:8  */
  assign exponentdifferencexy = n47_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:356:8  */
  assign exponentdifferenceyx = n50_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:357:8  */
  assign swap = n54_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:358:8  */
  assign newx = n55_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:358:14  */
  assign newx_d1 = n288_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:358:23  */
  assign newx_d2 = n289_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:359:8  */
  assign newy = n56_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:360:8  */
  assign exponentdifference = n57_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:361:8  */
  assign shiftedout = n65_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:362:8  */
  assign shiftval = n68_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:363:8  */
  assign effsub = n72_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:363:16  */
  assign effsub_d1 = n290_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:363:27  */
  assign effsub_d2 = n291_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:364:8  */
  assign selectclosepath = n76_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:364:25  */
  assign selectclosepath_d1 = n292_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:364:45  */
  assign selectclosepath_d2 = n293_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:365:8  */
  assign sdexnxy = n80_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:366:8  */
  assign pipesigny = n81_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:367:8  */
  assign fracxclose1 = n86_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:368:8  */
  assign fracyclose1 = n98_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:369:8  */
  assign fracrclosexmy = fpadd_8_8_f300_uid2_dualsubclose_n99; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:370:8  */
  assign fracrcloseymx = fpadd_8_8_f300_uid2_dualsubclose_n100; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:371:8  */
  assign fracsignclose = n105_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:372:8  */
  assign fracrclose1 = n108_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:373:8  */
  assign ressign = n114_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:374:8  */
  assign nzerosnew = norm_n118; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:375:8  */
  assign shiftedfrac = norm_n119; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:376:8  */
  assign roundclose0 = n126_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:377:8  */
  assign resultcloseiszero0 = n130_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:491:49  */
  assign exponentresultclose = n137_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:379:8  */
  assign resultbeforeroundclose = n139_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:380:8  */
  assign roundclose = roundclose0; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:381:8  */
  assign resultcloseiszero = resultcloseiszero0; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:382:8  */
  assign fracnewy = n142_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:383:8  */
  assign shiftedfracy = rightshiftercomponent_n143; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:384:8  */
  assign sticky = rightshiftercomponent_n144; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:385:8  */
  assign fracyfar = n150_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:386:8  */
  assign effsubvector = n154_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:387:8  */
  assign fracyfarxorop = n155_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:388:8  */
  assign fracxfar = n160_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:389:8  */
  assign cinaddfar = n162_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:390:8  */
  assign fracresultfar0 = fpadd_8_8_f300_uid2_fracaddfar_n163; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:391:8  */
  assign fracresultfarnormstage = fracresultfar0; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:392:8  */
  assign fracleadingbits = n166_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:393:8  */
  assign fracresultfar1 = n170_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:394:8  */
  assign fracresultroundbit = n179_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:395:8  */
  assign fracresultstickybit = n187_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:396:8  */
  assign roundfar1 = n199_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:397:8  */
  assign expoperationsel = n203_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:398:8  */
  assign exponentupdate = n222_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:399:8  */
  assign exponentresultfar0 = n225_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:399:28  */
  assign exponentresultfar0_d1 = n294_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:399:51  */
  assign exponentresultfar0_d2 = n295_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:400:8  */
  assign exponentresultfar1 = n226_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:401:8  */
  assign resultbeforeroundfar = n227_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:402:8  */
  assign roundfar = roundfar1; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:403:8  */
  assign resultbeforeround = n230_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:404:8  */
  assign round = n233_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:405:8  */
  assign zerofromclose = n234_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:405:23  */
  assign zerofromclose_d1 = n296_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:406:8  */
  assign resultrounded = fpadd_8_8_f300_uid2_finalroundadd_n236; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:407:8  */
  assign synceffsub = effsub; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:407:20  */
  assign synceffsub_d1 = n297_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:407:35  */
  assign synceffsub_d2 = n298_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:407:50  */
  assign synceffsub_d3 = n299_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:408:8  */
  assign syncx = newx; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:408:15  */
  assign syncx_d1 = n300_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:408:25  */
  assign syncx_d2 = n301_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:408:35  */
  assign syncx_d3 = n302_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:409:8  */
  assign syncsigny = pipesigny; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:409:19  */
  assign syncsigny_d1 = n303_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:409:33  */
  assign syncsigny_d2 = n304_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:409:47  */
  assign syncsigny_d3 = n305_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:410:8  */
  assign syncressign = ressign; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:410:21  */
  assign syncressign_d1 = n306_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:410:37  */
  assign syncressign_d2 = n307_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:410:53  */
  assign syncressign_d3 = n308_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:411:8  */
  assign underflowoverflow = n239_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:412:8  */
  assign resultnoexn = n309_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:413:8  */
  assign syncexnxy = sdexnxy; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:413:19  */
  assign syncexnxy_d1 = n310_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:413:33  */
  assign syncexnxy_d2 = n311_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:413:47  */
  assign syncexnxy_d3 = n312_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:414:8  */
  assign exnr = n270_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:415:8  */
  assign sgnr = n280_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:416:8  */
  assign expsigr = n285_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:450:39  */
  assign n30_o = inx[18:17];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:450:60  */
  assign n31_o = iny[18:17];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:450:54  */
  assign n32_o = $unsigned(n30_o) >= $unsigned(n31_o);
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:450:31  */
  assign n33_o = n32_o ? 1'b1 : 1'b0;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:451:36  */
  assign n36_o = inx[18:17];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:451:56  */
  assign n37_o = iny[18:17];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:451:51  */
  assign n38_o = n36_o == n37_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:451:28  */
  assign n39_o = n38_o ? 1'b1 : 1'b0;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:452:32  */
  assign n41_o = inx[15:8];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:452:27  */
  assign n43_o = {1'b0, n41_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:453:32  */
  assign n44_o = iny[15:8];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:453:27  */
  assign n46_o = {1'b0, n44_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:454:44  */
  assign n47_o = signedexponentx - signedexponenty;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:455:43  */
  assign n48_o = signedexponenty[7:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:455:73  */
  assign n49_o = signedexponentx[7:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:455:56  */
  assign n50_o = n48_o - n49_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:456:54  */
  assign n51_o = exponentdifferencexy[8];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:456:30  */
  assign n52_o = exceptionxequaly & n51_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:456:63  */
  assign n53_o = ~exceptionxsuperiory;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:456:59  */
  assign n54_o = n52_o | n53_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:457:16  */
  assign n55_o = swap ? iny : inx;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:458:16  */
  assign n56_o = swap ? inx : iny;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:459:47  */
  assign n57_o = swap ? exponentdifferenceyx : n58_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:459:88  */
  assign n58_o = exponentdifferencexy[7:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:460:36  */
  assign n59_o = exponentdifference[7];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:460:61  */
  assign n60_o = exponentdifference[6];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:460:40  */
  assign n61_o = n59_o | n60_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:460:86  */
  assign n62_o = exponentdifference[5];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:460:65  */
  assign n63_o = n61_o | n62_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:460:111  */
  assign n64_o = exponentdifference[4];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:460:90  */
  assign n65_o = n63_o | n64_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:461:34  */
  assign n66_o = exponentdifference[3:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:461:62  */
  assign n67_o = ~shiftedout;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:461:47  */
  assign n68_o = n67_o ? n66_o : 4'b1011;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:463:18  */
  assign n70_o = newx[16];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:463:31  */
  assign n71_o = newy[16];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:463:23  */
  assign n72_o = n70_o ^ n71_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:464:53  */
  assign n73_o = exponentdifference[7:1];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:464:66  */
  assign n75_o = n73_o == 7'b0000000;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:464:30  */
  assign n76_o = n75_o ? effsub : 1'b0;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:465:19  */
  assign n78_o = newx[18:17];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:465:40  */
  assign n79_o = newy[18:17];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:465:34  */
  assign n80_o = {n78_o, n79_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:466:21  */
  assign n81_o = newy[16];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:469:30  */
  assign n82_o = newx[7:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:469:24  */
  assign n84_o = {2'b01, n82_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:469:43  */
  assign n86_o = {n84_o, 1'b0};
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:470:27  */
  assign n87_o = exponentdifference[0];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:471:31  */
  assign n88_o = newy[7:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:471:25  */
  assign n90_o = {2'b01, n88_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:471:44  */
  assign n92_o = {n90_o, 1'b0};
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:471:50  */
  assign n94_o = n87_o == 1'b0;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:472:31  */
  assign n95_o = newy[7:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:472:25  */
  assign n97_o = {3'b001, n95_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:470:4  */
  always @*
    case (n94_o)
      1'b1: n98_o = n92_o;
      default: n98_o = n97_o;
    endcase
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:477:25  */
  assign fpadd_8_8_f300_uid2_dualsubclose_n99 = fpadd_8_8_f300_uid2_dualsubclose_xmy; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:478:25  */
  assign fpadd_8_8_f300_uid2_dualsubclose_n100 = fpadd_8_8_f300_uid2_dualsubclose_ymx; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:473:4  */
  intdualsub_11_f300_uid4 fpadd_8_8_f300_uid2_dualsubclose (
    .clk(clk),
    .x(fracxclose1),
    .y(fracyclose1),
    .xmy(fpadd_8_8_f300_uid2_dualsubclose_xmy),
    .ymx(fpadd_8_8_f300_uid2_dualsubclose_ymx));
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:479:34  */
  assign n105_o = fracrclosexmy[10];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:480:32  */
  assign n106_o = fracrclosexmy[9:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:480:63  */
  assign n107_o = ~fracsignclose;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:480:45  */
  assign n108_o = n107_o ? n106_o : n109_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:480:86  */
  assign n109_o = fracrcloseymx[9:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:481:60  */
  assign n112_o = fracrclose1 == 10'b0000000000;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:481:44  */
  assign n113_o = selectclosepath & n112_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:481:19  */
  assign n114_o = n113_o ? 1'b0 : n117_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:482:18  */
  assign n115_o = newx[16];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:482:44  */
  assign n116_o = selectclosepath & fracsignclose;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:482:23  */
  assign n117_o = n115_o ^ n116_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:486:27  */
  assign norm_n118 = norm_count; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:487:23  */
  assign norm_n119 = norm_r; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:483:4  */
  normalizer_z_10_10_10_f300_uid6 norm (
    .clk(clk),
    .x(fracrclose1),
    .count(norm_count),
    .r(norm_r));
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:488:30  */
  assign n124_o = shiftedfrac[0];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:488:49  */
  assign n125_o = shiftedfrac[1];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:488:34  */
  assign n126_o = n124_o & n125_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:489:45  */
  assign n129_o = nzerosnew == 4'b1111;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:489:30  */
  assign n130_o = n129_o ? 1'b1 : 1'b0;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:490:42  */
  assign n132_o = newx_d2[15:8];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:490:33  */
  assign n134_o = {2'b00, n132_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:490:87  */
  assign n136_o = {6'b000000, nzerosnew};
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:490:57  */
  assign n137_o = n134_o - n136_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:491:75  */
  assign n138_o = shiftedfrac[8:1];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:491:62  */
  assign n139_o = {exponentresultclose, n138_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:496:26  */
  assign n140_o = newy[7:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:496:20  */
  assign n142_o = {1'b1, n140_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:501:23  */
  assign rightshiftercomponent_n143 = rightshiftercomponent_r; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:502:28  */
  assign rightshiftercomponent_n144 = rightshiftercomponent_sticky; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:497:4  */
  rightshiftersticky9_by_max_11_f300_uid8 rightshiftercomponent (
    .clk(clk),
    .x(fracnewy),
    .s(shiftval),
    .r(rightshiftercomponent_r),
    .sticky(rightshiftercomponent_sticky));
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:503:20  */
  assign n150_o = {1'b0, shiftedfracy};
  assign n151_o = {effsub, effsub, effsub, effsub};
  assign n152_o = {effsub, effsub, effsub, effsub};
  assign n153_o = {effsub, effsub, effsub, effsub};
  assign n154_o = {n151_o, n152_o, n153_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:505:30  */
  assign n155_o = fracyfar ^ effsubvector;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:506:28  */
  assign n156_o = newx[7:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:506:21  */
  assign n158_o = {2'b01, n156_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:506:42  */
  assign n160_o = {n158_o, 2'b00};
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:507:31  */
  assign n161_o = ~sticky;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:507:27  */
  assign n162_o = effsub_d2 & n161_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:513:23  */
  assign fpadd_8_8_f300_uid2_fracaddfar_n163 = fpadd_8_8_f300_uid2_fracaddfar_r; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:508:4  */
  intadder_12_f300_uid10 fpadd_8_8_f300_uid2_fracaddfar (
    .clk(clk),
    .x(fracxfar),
    .y(fracyfarxorop),
    .cin(cinaddfar),
    .r(fpadd_8_8_f300_uid2_fracaddfar_r));
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:516:45  */
  assign n166_o = fracresultfarnormstage[11:10];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:518:34  */
  assign n167_o = fracresultfarnormstage[8:1];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:518:69  */
  assign n169_o = fracleadingbits == 2'b00;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:518:48  */
  assign n170_o = n169_o ? n167_o : n174_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:519:34  */
  assign n171_o = fracresultfarnormstage[9:2];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:519:69  */
  assign n173_o = fracleadingbits == 2'b01;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:519:7  */
  assign n174_o = n173_o ? n171_o : n175_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:520:34  */
  assign n175_o = fracresultfarnormstage[10:3];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:522:34  */
  assign n176_o = fracresultfarnormstage[0];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:522:63  */
  assign n178_o = fracleadingbits == 2'b00;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:522:42  */
  assign n179_o = n178_o ? n176_o : n183_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:523:34  */
  assign n180_o = fracresultfarnormstage[1];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:523:62  */
  assign n182_o = fracleadingbits == 2'b01;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:523:7  */
  assign n183_o = n182_o ? n180_o : n184_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:524:34  */
  assign n184_o = fracresultfarnormstage[2];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:526:47  */
  assign n186_o = fracleadingbits == 2'b00;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:526:26  */
  assign n187_o = n186_o ? sticky : n192_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:527:34  */
  assign n188_o = fracresultfarnormstage[0];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:527:38  */
  assign n189_o = n188_o | sticky;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:527:72  */
  assign n191_o = fracleadingbits == 2'b01;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:527:7  */
  assign n192_o = n191_o ? n189_o : n196_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:528:34  */
  assign n193_o = fracresultfarnormstage[1];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:528:63  */
  assign n194_o = fracresultfarnormstage[0];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:528:38  */
  assign n195_o = n193_o | n194_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:528:67  */
  assign n196_o = n195_o | sticky;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:529:78  */
  assign n197_o = fracresultfar1[0];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:529:61  */
  assign n198_o = fracresultstickybit | n197_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:529:36  */
  assign n199_o = fracresultroundbit & n198_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:530:49  */
  assign n202_o = fracleadingbits == 2'b00;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:530:28  */
  assign n203_o = n202_o ? 2'b11 : n207_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:531:49  */
  assign n206_o = fracleadingbits == 2'b01;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:531:16  */
  assign n207_o = n206_o ? 2'b00 : 2'b01;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:533:52  */
  assign n209_o = expoperationsel[1];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:533:52  */
  assign n210_o = expoperationsel[1];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:533:52  */
  assign n211_o = expoperationsel[1];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:533:52  */
  assign n212_o = expoperationsel[1];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:533:52  */
  assign n213_o = expoperationsel[1];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:533:52  */
  assign n214_o = expoperationsel[1];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:533:52  */
  assign n215_o = expoperationsel[1];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:533:52  */
  assign n216_o = expoperationsel[1];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:533:52  */
  assign n217_o = expoperationsel[1];
  assign n218_o = {n217_o, n216_o, n215_o, n214_o};
  assign n219_o = {n213_o, n212_o, n211_o, n210_o};
  assign n220_o = {n218_o, n219_o, n209_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:533:74  */
  assign n221_o = expoperationsel[0];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:533:57  */
  assign n222_o = {n220_o, n221_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:534:36  */
  assign n223_o = newx[15:8];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:534:29  */
  assign n225_o = {2'b00, n223_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:535:48  */
  assign n226_o = exponentresultfar0_d2 + exponentupdate;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:536:47  */
  assign n227_o = {exponentresultfar1, fracresultfar1};
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:541:48  */
  assign n229_o = selectclosepath_d2 == 1'b1;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:540:4  */
  always @*
    case (n229_o)
      1'b1: n230_o = resultbeforeroundclose;
      default: n230_o = resultbeforeroundfar;
    endcase
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:544:24  */
  assign n232_o = selectclosepath_d2 == 1'b1;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:543:4  */
  always @*
    case (n232_o)
      1'b1: n233_o = roundclose;
      default: n233_o = roundfar;
    endcase
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:546:40  */
  assign n234_o = selectclosepath_d2 & resultcloseiszero;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:554:23  */
  assign fpadd_8_8_f300_uid2_finalroundadd_n236 = fpadd_8_8_f300_uid2_finalroundadd_r; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:549:4  */
  intadder_18_f300_uid133 fpadd_8_8_f300_uid2_finalroundadd (
    .clk(clk),
    .x(resultbeforeround),
    .y(n235_o),
    .cin(round),
    .r(fpadd_8_8_f300_uid2_finalroundadd_r));
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:559:38  */
  assign n239_o = resultrounded[17:16];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:561:36  */
  assign n240_o = ~zerofromclose_d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:561:58  */
  assign n242_o = {n240_o, 1'b0};
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:561:64  */
  assign n244_o = underflowoverflow == 2'b01;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:562:39  */
  assign n247_o = underflowoverflow == 2'b10;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:562:49  */
  assign n249_o = underflowoverflow == 2'b11;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:562:49  */
  assign n250_o = n247_o | n249_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:563:41  */
  assign n251_o = ~zerofromclose_d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:563:38  */
  assign n253_o = {1'b0, n251_o};
  assign n254_o = {n250_o, n244_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:560:4  */
  always @*
    case (n254_o)
      2'b10: n255_o = 2'b00;
      2'b01: n255_o = n242_o;
      default: n255_o = n253_o;
    endcase
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:564:62  */
  assign n256_o = resultrounded[15:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:564:47  */
  assign n257_o = {syncressign_d3, n256_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:568:26  */
  assign n258_o = resultnoexn[18:17];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:568:41  */
  assign n260_o = syncexnxy_d3 == 4'b0101;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:569:19  */
  assign n262_o = {1'b1, synceffsub_d3};
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:569:44  */
  assign n264_o = syncexnxy_d3 == 4'b1010;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:570:41  */
  assign n267_o = syncexnxy_d3 == 4'b1110;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:571:27  */
  assign n268_o = syncexnxy_d3[3:2];
  assign n269_o = {n267_o, n264_o, n260_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:567:4  */
  always @*
    case (n269_o)
      3'b100: n270_o = 2'b11;
      3'b010: n270_o = n262_o;
      3'b001: n270_o = n258_o;
      default: n270_o = n268_o;
    endcase
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:574:26  */
  assign n271_o = resultnoexn[16];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:574:39  */
  assign n273_o = syncexnxy_d3 == 4'b0101;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:575:23  */
  assign n274_o = syncx_d3[16];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:575:28  */
  assign n275_o = n274_o & syncsigny_d3;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:575:45  */
  assign n277_o = syncexnxy_d3 == 4'b0000;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:576:23  */
  assign n278_o = syncx_d3[16];
  assign n279_o = {n277_o, n273_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:573:4  */
  always @*
    case (n279_o)
      2'b10: n280_o = n275_o;
      2'b01: n280_o = n271_o;
      default: n280_o = n278_o;
    endcase
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:579:29  */
  assign n281_o = resultnoexn[15:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:579:45  */
  assign n283_o = syncexnxy_d3 == 4'b0101;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:580:26  */
  assign n284_o = syncx_d3[15:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:578:4  */
  always @*
    case (n283_o)
      1'b1: n285_o = n281_o;
      default: n285_o = n284_o;
    endcase
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:581:14  */
  assign n286_o = {exnr, sgnr};
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:581:21  */
  assign n287_o = {n286_o, expsigr};
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:420:10  */
  always @(posedge clk)
    n288_q <= newx;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:420:10  */
  always @(posedge clk)
    n289_q <= newx_d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:420:10  */
  always @(posedge clk)
    n290_q <= effsub;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:420:10  */
  always @(posedge clk)
    n291_q <= effsub_d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:420:10  */
  always @(posedge clk)
    n292_q <= selectclosepath;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:420:10  */
  always @(posedge clk)
    n293_q <= selectclosepath_d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:420:10  */
  always @(posedge clk)
    n294_q <= exponentresultfar0;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:420:10  */
  always @(posedge clk)
    n295_q <= exponentresultfar0_d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:420:10  */
  always @(posedge clk)
    n296_q <= zerofromclose;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:420:10  */
  always @(posedge clk)
    n297_q <= synceffsub;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:420:10  */
  always @(posedge clk)
    n298_q <= synceffsub_d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:420:10  */
  always @(posedge clk)
    n299_q <= synceffsub_d2;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:420:10  */
  always @(posedge clk)
    n300_q <= syncx;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:420:10  */
  always @(posedge clk)
    n301_q <= syncx_d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:420:10  */
  always @(posedge clk)
    n302_q <= syncx_d2;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:420:10  */
  always @(posedge clk)
    n303_q <= syncsigny;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:420:10  */
  always @(posedge clk)
    n304_q <= syncsigny_d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:420:10  */
  always @(posedge clk)
    n305_q <= syncsigny_d2;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:420:10  */
  always @(posedge clk)
    n306_q <= syncressign;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:420:10  */
  always @(posedge clk)
    n307_q <= syncressign_d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:420:10  */
  always @(posedge clk)
    n308_q <= syncressign_d2;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:420:10  */
  assign n309_o = {n255_o, n257_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:420:10  */
  always @(posedge clk)
    n310_q <= syncexnxy;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:420:10  */
  always @(posedge clk)
    n311_q <= syncexnxy_d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_8.vhdl:420:10  */
  always @(posedge clk)
    n312_q <= syncexnxy_d2;
endmodule

