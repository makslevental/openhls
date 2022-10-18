module intadder_18_f300_uid134567
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
  wire [18:0] n492_o;
  wire [18:0] n494_o;
  wire [18:0] n495_o;
  wire [18:0] n496_o;
  wire [18:0] n497_o;
  wire [17:0] n498_o;
  reg n499_q;
  reg [18:0] n500_q;
  reg [18:0] n501_q;
  reg [18:0] n502_q;
  reg [18:0] n503_q;
  assign r = r_1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:256:8  */
  assign cin_1 = cin; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:256:15  */
  assign cin_1_d1 = n499_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:257:8  */
  assign x_1 = n492_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:257:13  */
  assign x_1_d1 = n500_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:258:8  */
  assign y_1 = n494_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:258:13  */
  assign y_1_d1 = n501_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:258:21  */
  assign y_1_d2 = n502_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:258:29  */
  assign y_1_d3 = n503_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:259:8  */
  assign s_1 = n497_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:260:8  */
  assign r_1 = n498_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:273:15  */
  assign n492_o = {1'b0, x};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:274:15  */
  assign n494_o = {1'b0, y};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:275:18  */
  assign n495_o = x_1_d1 + y_1_d3;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:275:27  */
  assign n496_o = {18'b0, cin_1_d1};  //  uext
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:275:27  */
  assign n497_o = n495_o + n496_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:276:14  */
  assign n498_o = s_1[17:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:264:10  */
  always @(posedge clk)
    n499_q <= cin_1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:264:10  */
  always @(posedge clk)
    n500_q <= x_1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:264:10  */
  always @(posedge clk)
    n501_q <= y_1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:264:10  */
  always @(posedge clk)
    n502_q <= y_1_d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:264:10  */
  always @(posedge clk)
    n503_q <= y_1_d2;
endmodule

module intadder_15_f300_uid10
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
  wire [14:0] n474_o;
  wire [14:0] n475_o;
  wire [14:0] n476_o;
  reg [14:0] n477_q;
  reg [14:0] n478_q;
  reg [14:0] n479_q;
  reg [14:0] n480_q;
  assign r = rtmp;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:209:8  */
  assign rtmp = n476_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:210:8  */
  assign x_d1 = n477_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:210:14  */
  assign x_d2 = n478_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:211:8  */
  assign y_d1 = n479_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:211:14  */
  assign y_d2 = n480_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:222:17  */
  assign n474_o = x_d2 + y_d2;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:222:24  */
  assign n475_o = {14'b0, cin};  //  uext
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:222:24  */
  assign n476_o = n474_o + n475_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:215:10  */
  always @(posedge clk)
    n477_q <= x;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:215:10  */
  always @(posedge clk)
    n478_q <= x_d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:215:10  */
  always @(posedge clk)
    n479_q <= y;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:215:10  */
  always @(posedge clk)
    n480_q <= y_d1;
endmodule

module rightshiftersticky12_by_max_14_f300_uid8
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
  wire [13:0] n396_o;
  wire [7:0] n398_o;
  wire n400_o;
  wire n401_o;
  wire n402_o;
  wire n403_o;
  wire n405_o;
  wire n406_o;
  wire [13:0] n407_o;
  wire [5:0] n408_o;
  wire [13:0] n410_o;
  wire [3:0] n412_o;
  wire n414_o;
  wire n415_o;
  wire n416_o;
  wire n417_o;
  wire n418_o;
  wire n420_o;
  wire n421_o;
  wire [13:0] n422_o;
  wire [9:0] n423_o;
  wire [13:0] n425_o;
  wire [1:0] n427_o;
  wire n429_o;
  wire n430_o;
  wire n431_o;
  wire n432_o;
  wire n433_o;
  wire n435_o;
  wire n436_o;
  wire [13:0] n437_o;
  wire [11:0] n438_o;
  wire [13:0] n440_o;
  wire n442_o;
  wire n444_o;
  wire n445_o;
  wire n446_o;
  wire n447_o;
  wire n448_o;
  wire n450_o;
  wire n451_o;
  wire [13:0] n452_o;
  wire [12:0] n453_o;
  wire [13:0] n455_o;
  reg [3:0] n456_q;
  reg [3:0] n457_q;
  reg [13:0] n458_q;
  reg [13:0] n459_q;
  reg n460_q;
  reg [13:0] n461_q;
  reg [13:0] n462_q;
  reg [13:0] n463_q;
  reg [13:0] n464_q;
  assign r = level0;
  assign sticky = stk0;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:138:8  */
  assign ps = s; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:138:12  */
  assign ps_d1 = n456_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:138:19  */
  assign ps_d2 = n457_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:139:8  */
  assign xpadded = n396_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:140:8  */
  assign level4 = xpadded; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:140:16  */
  assign level4_d1 = n458_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:141:8  */
  assign stk3 = n403_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:142:8  */
  assign level3 = n407_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:142:16  */
  assign level3_d1 = n459_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:143:8  */
  assign stk2 = n418_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:143:14  */
  assign stk2_d1 = n460_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:144:8  */
  assign level2 = n422_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:144:16  */
  assign level2_d1 = n461_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:144:27  */
  assign level2_d2 = n462_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:145:8  */
  assign stk1 = n433_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:146:8  */
  assign level1 = n437_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:146:16  */
  assign level1_d1 = n463_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:146:27  */
  assign level1_d2 = n464_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:147:8  */
  assign stk0 = n448_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:148:8  */
  assign level0 = n452_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:165:16  */
  assign n396_o = {x, 2'b00};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:167:31  */
  assign n398_o = level4_d1[7:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:167:43  */
  assign n400_o = n398_o != 8'b00000000;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:167:65  */
  assign n401_o = ps_d1[3];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:167:56  */
  assign n402_o = n400_o & n401_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:167:16  */
  assign n403_o = n402_o ? 1'b1 : 1'b0;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:168:30  */
  assign n405_o = ps[3];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:168:33  */
  assign n406_o = ~n405_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:168:22  */
  assign n407_o = n406_o ? level4 : n410_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:168:74  */
  assign n408_o = level4[13:8];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:168:66  */
  assign n410_o = {8'b00000000, n408_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:169:31  */
  assign n412_o = level3_d1[3:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:169:43  */
  assign n414_o = n412_o != 4'b0000;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:169:61  */
  assign n415_o = ps_d1[2];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:169:52  */
  assign n416_o = n414_o & n415_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:169:70  */
  assign n417_o = n416_o | stk3;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:169:16  */
  assign n418_o = n417_o ? 1'b1 : 1'b0;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:170:30  */
  assign n420_o = ps[2];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:170:33  */
  assign n421_o = ~n420_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:170:22  */
  assign n422_o = n421_o ? level3 : n425_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:170:74  */
  assign n423_o = level3[13:4];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:170:66  */
  assign n425_o = {4'b0000, n423_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:171:31  */
  assign n427_o = level2_d2[1:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:171:43  */
  assign n429_o = n427_o != 2'b00;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:171:59  */
  assign n430_o = ps_d2[1];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:171:50  */
  assign n431_o = n429_o & n430_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:171:68  */
  assign n432_o = n431_o | stk2_d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:171:16  */
  assign n433_o = n432_o ? 1'b1 : 1'b0;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:172:30  */
  assign n435_o = ps[1];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:172:33  */
  assign n436_o = ~n435_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:172:22  */
  assign n437_o = n436_o ? level2 : n440_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:172:74  */
  assign n438_o = level2[13:2];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:172:66  */
  assign n440_o = {2'b00, n438_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:173:31  */
  assign n442_o = level1_d2[0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:173:43  */
  assign n444_o = n442_o != 1'b0;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:173:58  */
  assign n445_o = ps_d2[0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:173:49  */
  assign n446_o = n444_o & n445_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:173:67  */
  assign n447_o = n446_o | stk1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:173:16  */
  assign n448_o = n447_o ? 1'b1 : 1'b0;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:174:30  */
  assign n450_o = ps[0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:174:33  */
  assign n451_o = ~n450_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:174:22  */
  assign n452_o = n451_o ? level1 : n455_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:174:74  */
  assign n453_o = level1[13:1];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:174:66  */
  assign n455_o = {1'b0, n453_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:152:10  */
  always @(posedge clk)
    n456_q <= ps;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:152:10  */
  always @(posedge clk)
    n457_q <= ps_d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:152:10  */
  always @(posedge clk)
    n458_q <= level4;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:152:10  */
  always @(posedge clk)
    n459_q <= level3;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:152:10  */
  always @(posedge clk)
    n460_q <= stk2;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:152:10  */
  always @(posedge clk)
    n461_q <= level2;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:152:10  */
  always @(posedge clk)
    n462_q <= level2_d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:152:10  */
  always @(posedge clk)
    n463_q <= level1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:152:10  */
  always @(posedge clk)
    n464_q <= level1_d1;
endmodule

module normalizer_z_13_13_13_f300_uid6
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
  wire [7:0] n329_o;
  wire n331_o;
  wire n332_o;
  wire n334_o;
  wire [12:0] n335_o;
  wire [4:0] n336_o;
  wire [12:0] n338_o;
  wire [3:0] n340_o;
  wire n342_o;
  wire n343_o;
  wire n345_o;
  wire [12:0] n346_o;
  wire [8:0] n347_o;
  wire [12:0] n349_o;
  wire [1:0] n351_o;
  wire n353_o;
  wire n354_o;
  wire n356_o;
  wire [12:0] n357_o;
  wire [10:0] n358_o;
  wire [12:0] n360_o;
  wire n362_o;
  wire n364_o;
  wire n365_o;
  wire n367_o;
  wire [12:0] n368_o;
  wire [11:0] n369_o;
  wire [12:0] n371_o;
  wire [1:0] n372_o;
  wire [2:0] n373_o;
  wire [3:0] n374_o;
  reg [12:0] n375_q;
  reg n376_q;
  reg n377_q;
  reg [12:0] n378_q;
  reg n379_q;
  assign count = scount;
  assign r = level0;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:69:8  */
  assign level4 = x; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:92:22  */
  assign level4_d1 = n375_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:70:8  */
  assign count3 = n332_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:70:16  */
  assign count3_d1 = n376_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:95:19  */
  assign level3 = n335_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:72:8  */
  assign count2 = n343_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:72:16  */
  assign count2_d1 = n377_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:73:8  */
  assign level2 = n346_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:98:22  */
  assign level2_d1 = n378_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:74:8  */
  assign count1 = n354_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:74:16  */
  assign count1_d1 = n379_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:101:19  */
  assign level1 = n357_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:76:8  */
  assign count0 = n365_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:77:8  */
  assign level0 = n368_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:78:8  */
  assign scount = n374_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:91:31  */
  assign n329_o = level4_d1[12:5];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:91:45  */
  assign n331_o = n329_o == 8'b00000000;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:91:17  */
  assign n332_o = n331_o ? 1'b1 : 1'b0;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:92:47  */
  assign n334_o = ~count3;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:92:36  */
  assign n335_o = n334_o ? level4_d1 : n338_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:92:66  */
  assign n336_o = level4_d1[4:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:92:79  */
  assign n338_o = {n336_o, 8'b00000000};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:94:28  */
  assign n340_o = level3[12:9];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:94:42  */
  assign n342_o = n340_o == 4'b0000;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:94:17  */
  assign n343_o = n342_o ? 1'b1 : 1'b0;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:95:44  */
  assign n345_o = ~count2;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:95:33  */
  assign n346_o = n345_o ? level3 : n349_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:95:60  */
  assign n347_o = level3[8:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:95:73  */
  assign n349_o = {n347_o, 4'b0000};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:97:28  */
  assign n351_o = level2[12:11];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:97:43  */
  assign n353_o = n351_o == 2'b00;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:97:17  */
  assign n354_o = n353_o ? 1'b1 : 1'b0;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:98:50  */
  assign n356_o = ~count1_d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:98:36  */
  assign n357_o = n356_o ? level2_d1 : n360_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:98:69  */
  assign n358_o = level2_d1[10:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:98:83  */
  assign n360_o = {n358_o, 2'b00};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:100:28  */
  assign n362_o = level1[12];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:100:43  */
  assign n364_o = n362_o == 1'b0;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:100:17  */
  assign n365_o = n364_o ? 1'b1 : 1'b0;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:101:44  */
  assign n367_o = ~count0;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:101:33  */
  assign n368_o = n367_o ? level1 : n371_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:101:60  */
  assign n369_o = level1[11:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:101:74  */
  assign n371_o = {n369_o, 1'b0};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:104:24  */
  assign n372_o = {count3_d1, count2_d1};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:104:36  */
  assign n373_o = {n372_o, count1_d1};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:104:48  */
  assign n374_o = {n373_o, count0};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:82:10  */
  always @(posedge clk)
    n375_q <= level4;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:82:10  */
  always @(posedge clk)
    n376_q <= count3;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:82:10  */
  always @(posedge clk)
    n377_q <= count2;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:82:10  */
  always @(posedge clk)
    n378_q <= level2;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:82:10  */
  always @(posedge clk)
    n379_q <= count1;
endmodule

module intdualsub_14_f300_uid4
  (input wire clk,
   input wire [13:0] x,
   input wire [13:0] y,
   output wire [13:0] xmy,
   output wire [13:0] ymx);
  wire [13:0] temprxmy;
  wire [13:0] temprymx;
  wire [13:0] n307_o;
  wire [13:0] n308_o;
  wire [13:0] n311_o;
  wire [13:0] n312_o;
  wire [13:0] n313_o;
  wire [13:0] n316_o;
  assign xmy = temprxmy;
  assign ymx = temprymx;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:31:8  */
  assign temprxmy = n311_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:32:8  */
  assign temprymx = n316_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:34:21  */
  assign n307_o = ~y;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:34:18  */
  assign n308_o = x + n307_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:34:28  */
  assign n311_o = n308_o + 14'b00000000000001;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:35:21  */
  assign n312_o = ~x;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:35:18  */
  assign n313_o = y + n312_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:35:28  */
  assign n316_o = n313_o + 14'b00000000000001;
endmodule

module fadd#(parameter ID=1)
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
  wire [18:0] n55_o;
  wire [18:0] n56_o;
  wire [4:0] n57_o;
  wire [4:0] n58_o;
  wire n59_o;
  wire [3:0] n60_o;
  wire n61_o;
  wire [3:0] n62_o;
  wire n64_o;
  wire n65_o;
  wire n66_o;
  wire [3:0] n67_o;
  wire n69_o;
  wire n70_o;
  wire [1:0] n72_o;
  wire [1:0] n73_o;
  wire [3:0] n74_o;
  wire n75_o;
  wire [10:0] n76_o;
  wire [12:0] n78_o;
  wire [13:0] n80_o;
  wire n81_o;
  wire [10:0] n82_o;
  wire [12:0] n84_o;
  wire [13:0] n86_o;
  wire n88_o;
  wire [10:0] n89_o;
  wire [13:0] n91_o;
  reg [13:0] n92_o;
  wire [13:0] fpadd_5_11_f300_uid2_dualsubclose_n93;
  wire [13:0] fpadd_5_11_f300_uid2_dualsubclose_n94;
  wire [13:0] fpadd_5_11_f300_uid2_dualsubclose_xmy;
  wire [13:0] fpadd_5_11_f300_uid2_dualsubclose_ymx;
  wire n99_o;
  wire [12:0] n100_o;
  wire n101_o;
  wire [12:0] n102_o;
  wire [12:0] n103_o;
  wire n106_o;
  wire n107_o;
  wire n108_o;
  wire n109_o;
  wire n110_o;
  wire n111_o;
  wire [3:0] norm_n112;
  wire [12:0] norm_n113;
  wire [3:0] norm_count;
  wire [12:0] norm_r;
  wire n118_o;
  wire n119_o;
  wire n120_o;
  wire n123_o;
  wire n124_o;
  wire [4:0] n126_o;
  wire [6:0] n128_o;
  wire [6:0] n130_o;
  wire [6:0] n131_o;
  wire [10:0] n132_o;
  wire [17:0] n133_o;
  wire [10:0] n134_o;
  wire [11:0] n136_o;
  wire [13:0] rightshiftercomponent_n137;
  wire rightshiftercomponent_n138;
  wire [13:0] rightshiftercomponent_r;
  wire rightshiftercomponent_sticky;
  wire [14:0] n144_o;
  wire [3:0] n145_o;
  wire [3:0] n146_o;
  wire [3:0] n147_o;
  wire [2:0] n148_o;
  wire [14:0] n149_o;
  wire [14:0] n150_o;
  wire [10:0] n151_o;
  wire [12:0] n153_o;
  wire [14:0] n155_o;
  wire n156_o;
  wire n157_o;
  wire [14:0] fpadd_5_11_f300_uid2_fracaddfar_n158;
  wire [14:0] fpadd_5_11_f300_uid2_fracaddfar_r;
  wire [1:0] n161_o;
  wire [10:0] n162_o;
  wire n164_o;
  wire [10:0] n165_o;
  wire [10:0] n166_o;
  wire n168_o;
  wire [10:0] n169_o;
  wire [10:0] n170_o;
  wire n171_o;
  wire n173_o;
  wire n174_o;
  wire n175_o;
  wire n177_o;
  wire n178_o;
  wire n179_o;
  wire n181_o;
  wire n182_o;
  wire n183_o;
  wire n184_o;
  wire n186_o;
  wire n187_o;
  wire n188_o;
  wire n189_o;
  wire n190_o;
  wire n191_o;
  wire n192_o;
  wire n193_o;
  wire n194_o;
  wire n197_o;
  wire [1:0] n198_o;
  wire n201_o;
  wire [1:0] n202_o;
  wire n204_o;
  wire n205_o;
  wire n206_o;
  wire n207_o;
  wire n208_o;
  wire n209_o;
  wire [3:0] n210_o;
  wire [1:0] n211_o;
  wire [5:0] n212_o;
  wire n213_o;
  wire [6:0] n214_o;
  wire [4:0] n215_o;
  wire [6:0] n217_o;
  wire [6:0] n218_o;
  wire [17:0] n219_o;
  wire n221_o;
  reg [17:0] n222_o;
  wire n224_o;
  reg n225_o;
  wire n226_o;
  localparam [17:0] n227_o = 18'b000000000000000000;
  wire [17:0] fpadd_5_11_f300_uid2_finalroundadd_n228;
  wire [17:0] fpadd_5_11_f300_uid2_finalroundadd_r;
  wire [1:0] n231_o;
  wire n232_o;
  wire [1:0] n234_o;
  wire n236_o;
  wire n239_o;
  wire n241_o;
  wire n242_o;
  wire n243_o;
  wire [1:0] n245_o;
  wire [1:0] n246_o;
  reg [1:0] n247_o;
  wire [15:0] n248_o;
  wire [16:0] n249_o;
  wire [1:0] n250_o;
  wire n252_o;
  wire [1:0] n254_o;
  wire n256_o;
  wire n259_o;
  wire [1:0] n260_o;
  wire [2:0] n261_o;
  reg [1:0] n262_o;
  wire n263_o;
  wire n265_o;
  wire n266_o;
  wire n267_o;
  wire n269_o;
  wire n270_o;
  wire [1:0] n271_o;
  reg n272_o;
  wire [15:0] n273_o;
  wire n275_o;
  wire [15:0] n276_o;
  reg [15:0] n277_o;
  wire [2:0] n278_o;
  wire [18:0] n279_o;
  reg [18:0] n280_q;
  reg [18:0] n281_q;
  reg n282_q;
  reg n283_q;
  reg n284_q;
  reg n285_q;
  reg [6:0] n286_q;
  reg [6:0] n287_q;
  reg n288_q;
  reg n289_q;
  reg n290_q;
  reg n291_q;
  reg [18:0] n292_q;
  reg [18:0] n293_q;
  reg [18:0] n294_q;
  reg n295_q;
  reg n296_q;
  reg n297_q;
  reg n298_q;
  reg n299_q;
  reg n300_q;
  wire [18:0] n301_o;
  reg [3:0] n302_q;
  reg [3:0] n303_q;
  reg [3:0] n304_q;
  assign R = n279_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:349:8  */
  assign inx = X; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:350:8  */
  assign iny = Y; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:351:8  */
  assign exceptionxsuperiory = n33_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:352:8  */
  assign exceptionxequaly = n39_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:353:8  */
  assign signedexponentx = n43_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:354:8  */
  assign signedexponenty = n46_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:355:8  */
  assign exponentdifferencexy = n47_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:356:8  */
  assign exponentdifferenceyx = n50_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:357:8  */
  assign swap = n54_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:358:8  */
  assign newx = n55_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:358:14  */
  assign newx_d1 = n280_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:358:23  */
  assign newx_d2 = n281_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:359:8  */
  assign newy = n56_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:360:8  */
  assign exponentdifference = n57_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:361:8  */
  assign shiftedout = n59_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:362:8  */
  assign shiftval = n62_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:363:8  */
  assign effsub = n66_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:363:16  */
  assign effsub_d1 = n282_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:363:27  */
  assign effsub_d2 = n283_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:364:8  */
  assign selectclosepath = n70_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:364:25  */
  assign selectclosepath_d1 = n284_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:364:45  */
  assign selectclosepath_d2 = n285_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:365:8  */
  assign sdexnxy = n74_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:366:8  */
  assign pipesigny = n75_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:367:8  */
  assign fracxclose1 = n80_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:368:8  */
  assign fracyclose1 = n92_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:369:8  */
  assign fracrclosexmy = fpadd_5_11_f300_uid2_dualsubclose_n93; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:370:8  */
  assign fracrcloseymx = fpadd_5_11_f300_uid2_dualsubclose_n94; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:371:8  */
  assign fracsignclose = n99_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:372:8  */
  assign fracrclose1 = n102_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:373:8  */
  assign ressign = n108_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:374:8  */
  assign nzerosnew = norm_n112; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:375:8  */
  assign shiftedfrac = norm_n113; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:376:8  */
  assign roundclose0 = n120_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:377:8  */
  assign resultcloseiszero0 = n124_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:491:49  */
  assign exponentresultclose = n131_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:379:8  */
  assign resultbeforeroundclose = n133_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:380:8  */
  assign roundclose = roundclose0; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:381:8  */
  assign resultcloseiszero = resultcloseiszero0; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:382:8  */
  assign fracnewy = n136_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:383:8  */
  assign shiftedfracy = rightshiftercomponent_n137; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:384:8  */
  assign sticky = rightshiftercomponent_n138; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:385:8  */
  assign fracyfar = n144_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:386:8  */
  assign effsubvector = n149_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:387:8  */
  assign fracyfarxorop = n150_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:388:8  */
  assign fracxfar = n155_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:389:8  */
  assign cinaddfar = n157_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:390:8  */
  assign fracresultfar0 = fpadd_5_11_f300_uid2_fracaddfar_n158; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:391:8  */
  assign fracresultfarnormstage = fracresultfar0; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:392:8  */
  assign fracleadingbits = n161_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:393:8  */
  assign fracresultfar1 = n165_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:394:8  */
  assign fracresultroundbit = n174_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:395:8  */
  assign fracresultstickybit = n182_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:396:8  */
  assign roundfar1 = n194_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:397:8  */
  assign expoperationsel = n198_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:398:8  */
  assign exponentupdate = n214_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:399:8  */
  assign exponentresultfar0 = n217_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:399:28  */
  assign exponentresultfar0_d1 = n286_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:399:51  */
  assign exponentresultfar0_d2 = n287_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:400:8  */
  assign exponentresultfar1 = n218_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:401:8  */
  assign resultbeforeroundfar = n219_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:402:8  */
  assign roundfar = roundfar1; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:403:8  */
  assign resultbeforeround = n222_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:404:8  */
  assign round = n225_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:405:8  */
  assign zerofromclose = n226_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:405:23  */
  assign zerofromclose_d1 = n288_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:406:8  */
  assign resultrounded = fpadd_5_11_f300_uid2_finalroundadd_n228; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:407:8  */
  assign synceffsub = effsub; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:407:20  */
  assign synceffsub_d1 = n289_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:407:35  */
  assign synceffsub_d2 = n290_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:407:50  */
  assign synceffsub_d3 = n291_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:408:8  */
  assign syncx = newx; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:408:15  */
  assign syncx_d1 = n292_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:408:25  */
  assign syncx_d2 = n293_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:408:35  */
  assign syncx_d3 = n294_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:409:8  */
  assign syncsigny = pipesigny; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:409:19  */
  assign syncsigny_d1 = n295_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:409:33  */
  assign syncsigny_d2 = n296_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:409:47  */
  assign syncsigny_d3 = n297_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:410:8  */
  assign syncressign = ressign; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:410:21  */
  assign syncressign_d1 = n298_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:410:37  */
  assign syncressign_d2 = n299_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:410:53  */
  assign syncressign_d3 = n300_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:411:8  */
  assign underflowoverflow = n231_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:412:8  */
  assign resultnoexn = n301_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:413:8  */
  assign syncexnxy = sdexnxy; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:413:19  */
  assign syncexnxy_d1 = n302_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:413:33  */
  assign syncexnxy_d2 = n303_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:413:47  */
  assign syncexnxy_d3 = n304_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:414:8  */
  assign exnr = n262_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:415:8  */
  assign sgnr = n272_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:416:8  */
  assign expsigr = n277_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:450:39  */
  assign n30_o = inx[18:17];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:450:60  */
  assign n31_o = iny[18:17];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:450:54  */
  assign n32_o = $unsigned(n30_o) >= $unsigned(n31_o);
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:450:31  */
  assign n33_o = n32_o ? 1'b1 : 1'b0;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:451:36  */
  assign n36_o = inx[18:17];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:451:56  */
  assign n37_o = iny[18:17];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:451:51  */
  assign n38_o = n36_o == n37_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:451:28  */
  assign n39_o = n38_o ? 1'b1 : 1'b0;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:452:32  */
  assign n41_o = inx[15:11];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:452:27  */
  assign n43_o = {1'b0, n41_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:453:32  */
  assign n44_o = iny[15:11];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:453:27  */
  assign n46_o = {1'b0, n44_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:454:44  */
  assign n47_o = signedexponentx - signedexponenty;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:455:43  */
  assign n48_o = signedexponenty[4:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:455:73  */
  assign n49_o = signedexponentx[4:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:455:56  */
  assign n50_o = n48_o - n49_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:456:54  */
  assign n51_o = exponentdifferencexy[5];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:456:30  */
  assign n52_o = exceptionxequaly & n51_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:456:63  */
  assign n53_o = ~exceptionxsuperiory;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:456:59  */
  assign n54_o = n52_o | n53_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:457:16  */
  assign n55_o = swap ? iny : inx;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:458:16  */
  assign n56_o = swap ? inx : iny;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:459:47  */
  assign n57_o = swap ? exponentdifferenceyx : n58_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:459:88  */
  assign n58_o = exponentdifferencexy[4:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:460:36  */
  assign n59_o = exponentdifference[4];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:461:34  */
  assign n60_o = exponentdifference[3:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:461:62  */
  assign n61_o = ~shiftedout;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:461:47  */
  assign n62_o = n61_o ? n60_o : 4'b1110;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:463:18  */
  assign n64_o = newx[16];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:463:31  */
  assign n65_o = newy[16];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:463:23  */
  assign n66_o = n64_o ^ n65_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:464:53  */
  assign n67_o = exponentdifference[4:1];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:464:66  */
  assign n69_o = n67_o == 4'b0000;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:464:30  */
  assign n70_o = n69_o ? effsub : 1'b0;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:465:19  */
  assign n72_o = newx[18:17];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:465:40  */
  assign n73_o = newy[18:17];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:465:34  */
  assign n74_o = {n72_o, n73_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:466:21  */
  assign n75_o = newy[16];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:469:30  */
  assign n76_o = newx[10:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:469:24  */
  assign n78_o = {2'b01, n76_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:469:44  */
  assign n80_o = {n78_o, 1'b0};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:470:27  */
  assign n81_o = exponentdifference[0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:471:31  */
  assign n82_o = newy[10:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:471:25  */
  assign n84_o = {2'b01, n82_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:471:45  */
  assign n86_o = {n84_o, 1'b0};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:471:51  */
  assign n88_o = n81_o == 1'b0;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:472:31  */
  assign n89_o = newy[10:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:472:25  */
  assign n91_o = {3'b001, n89_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:470:4  */
  always @*
    case (n88_o)
      1'b1: n92_o = n86_o;
      default: n92_o = n91_o;
    endcase
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:477:25  */
  assign fpadd_5_11_f300_uid2_dualsubclose_n93 = fpadd_5_11_f300_uid2_dualsubclose_xmy; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:478:25  */
  assign fpadd_5_11_f300_uid2_dualsubclose_n94 = fpadd_5_11_f300_uid2_dualsubclose_ymx; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:473:4  */
  intdualsub_14_f300_uid4 fpadd_5_11_f300_uid2_dualsubclose (
    .clk(clk),
    .x(fracxclose1),
    .y(fracyclose1),
    .xmy(fpadd_5_11_f300_uid2_dualsubclose_xmy),
    .ymx(fpadd_5_11_f300_uid2_dualsubclose_ymx));
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:479:34  */
  assign n99_o = fracrclosexmy[13];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:480:32  */
  assign n100_o = fracrclosexmy[12:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:480:64  */
  assign n101_o = ~fracsignclose;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:480:46  */
  assign n102_o = n101_o ? n100_o : n103_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:480:87  */
  assign n103_o = fracrcloseymx[12:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:481:60  */
  assign n106_o = fracrclose1 == 13'b0000000000000;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:481:44  */
  assign n107_o = selectclosepath & n106_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:481:19  */
  assign n108_o = n107_o ? 1'b0 : n111_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:482:18  */
  assign n109_o = newx[16];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:482:44  */
  assign n110_o = selectclosepath & fracsignclose;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:482:23  */
  assign n111_o = n109_o ^ n110_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:486:27  */
  assign norm_n112 = norm_count; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:487:23  */
  assign norm_n113 = norm_r; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:483:4  */
  normalizer_z_13_13_13_f300_uid6 norm (
    .clk(clk),
    .x(fracrclose1),
    .count(norm_count),
    .r(norm_r));
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:488:30  */
  assign n118_o = shiftedfrac[0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:488:49  */
  assign n119_o = shiftedfrac[1];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:488:34  */
  assign n120_o = n118_o & n119_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:489:45  */
  assign n123_o = nzerosnew == 4'b1111;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:489:30  */
  assign n124_o = n123_o ? 1'b1 : 1'b0;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:490:42  */
  assign n126_o = newx_d2[15:11];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:490:33  */
  assign n128_o = {2'b00, n126_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:490:88  */
  assign n130_o = {3'b000, nzerosnew};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:490:58  */
  assign n131_o = n128_o - n130_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:491:75  */
  assign n132_o = shiftedfrac[11:1];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:491:62  */
  assign n133_o = {exponentresultclose, n132_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:496:26  */
  assign n134_o = newy[10:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:496:20  */
  assign n136_o = {1'b1, n134_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:501:23  */
  assign rightshiftercomponent_n137 = rightshiftercomponent_r; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:502:28  */
  assign rightshiftercomponent_n138 = rightshiftercomponent_sticky; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:497:4  */
  rightshiftersticky12_by_max_14_f300_uid8 rightshiftercomponent (
    .clk(clk),
    .x(fracnewy),
    .s(shiftval),
    .r(rightshiftercomponent_r),
    .sticky(rightshiftercomponent_sticky));
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:503:20  */
  assign n144_o = {1'b0, shiftedfracy};
  assign n145_o = {effsub, effsub, effsub, effsub};
  assign n146_o = {effsub, effsub, effsub, effsub};
  assign n147_o = {effsub, effsub, effsub, effsub};
  assign n148_o = {effsub, effsub, effsub};
  assign n149_o = {n145_o, n146_o, n147_o, n148_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:505:30  */
  assign n150_o = fracyfar ^ effsubvector;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:506:28  */
  assign n151_o = newx[10:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:506:21  */
  assign n153_o = {2'b01, n151_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:506:43  */
  assign n155_o = {n153_o, 2'b00};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:507:31  */
  assign n156_o = ~sticky;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:507:27  */
  assign n157_o = effsub_d2 & n156_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:513:23  */
  assign fpadd_5_11_f300_uid2_fracaddfar_n158 = fpadd_5_11_f300_uid2_fracaddfar_r; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:508:4  */
  intadder_15_f300_uid10 fpadd_5_11_f300_uid2_fracaddfar (
    .clk(clk),
    .x(fracxfar),
    .y(fracyfarxorop),
    .cin(cinaddfar),
    .r(fpadd_5_11_f300_uid2_fracaddfar_r));
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:516:45  */
  assign n161_o = fracresultfarnormstage[14:13];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:518:34  */
  assign n162_o = fracresultfarnormstage[11:1];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:518:70  */
  assign n164_o = fracleadingbits == 2'b00;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:518:49  */
  assign n165_o = n164_o ? n162_o : n169_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:519:34  */
  assign n166_o = fracresultfarnormstage[12:2];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:519:70  */
  assign n168_o = fracleadingbits == 2'b01;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:519:7  */
  assign n169_o = n168_o ? n166_o : n170_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:520:34  */
  assign n170_o = fracresultfarnormstage[13:3];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:522:34  */
  assign n171_o = fracresultfarnormstage[0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:522:63  */
  assign n173_o = fracleadingbits == 2'b00;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:522:42  */
  assign n174_o = n173_o ? n171_o : n178_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:523:34  */
  assign n175_o = fracresultfarnormstage[1];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:523:62  */
  assign n177_o = fracleadingbits == 2'b01;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:523:7  */
  assign n178_o = n177_o ? n175_o : n179_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:524:34  */
  assign n179_o = fracresultfarnormstage[2];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:526:47  */
  assign n181_o = fracleadingbits == 2'b00;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:526:26  */
  assign n182_o = n181_o ? sticky : n187_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:527:34  */
  assign n183_o = fracresultfarnormstage[0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:527:38  */
  assign n184_o = n183_o | sticky;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:527:72  */
  assign n186_o = fracleadingbits == 2'b01;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:527:7  */
  assign n187_o = n186_o ? n184_o : n191_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:528:34  */
  assign n188_o = fracresultfarnormstage[1];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:528:63  */
  assign n189_o = fracresultfarnormstage[0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:528:38  */
  assign n190_o = n188_o | n189_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:528:67  */
  assign n191_o = n190_o | sticky;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:529:78  */
  assign n192_o = fracresultfar1[0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:529:61  */
  assign n193_o = fracresultstickybit | n192_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:529:36  */
  assign n194_o = fracresultroundbit & n193_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:530:49  */
  assign n197_o = fracleadingbits == 2'b00;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:530:28  */
  assign n198_o = n197_o ? 2'b11 : n202_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:531:49  */
  assign n201_o = fracleadingbits == 2'b01;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:531:16  */
  assign n202_o = n201_o ? 2'b00 : 2'b01;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:533:52  */
  assign n204_o = expoperationsel[1];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:533:52  */
  assign n205_o = expoperationsel[1];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:533:52  */
  assign n206_o = expoperationsel[1];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:533:52  */
  assign n207_o = expoperationsel[1];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:533:52  */
  assign n208_o = expoperationsel[1];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:533:52  */
  assign n209_o = expoperationsel[1];
  assign n210_o = {n209_o, n208_o, n207_o, n206_o};
  assign n211_o = {n205_o, n204_o};
  assign n212_o = {n210_o, n211_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:533:74  */
  assign n213_o = expoperationsel[0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:533:57  */
  assign n214_o = {n212_o, n213_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:534:36  */
  assign n215_o = newx[15:11];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:534:29  */
  assign n217_o = {2'b00, n215_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:535:48  */
  assign n218_o = exponentresultfar0_d2 + exponentupdate;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:536:47  */
  assign n219_o = {exponentresultfar1, fracresultfar1};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:541:48  */
  assign n221_o = selectclosepath_d2 == 1'b1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:540:4  */
  always @*
    case (n221_o)
      1'b1: n222_o = resultbeforeroundclose;
      default: n222_o = resultbeforeroundfar;
    endcase
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:544:24  */
  assign n224_o = selectclosepath_d2 == 1'b1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:543:4  */
  always @*
    case (n224_o)
      1'b1: n225_o = roundclose;
      default: n225_o = roundfar;
    endcase
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:546:40  */
  assign n226_o = selectclosepath_d2 & resultcloseiszero;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:554:23  */
  assign fpadd_5_11_f300_uid2_finalroundadd_n228 = fpadd_5_11_f300_uid2_finalroundadd_r; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:549:4  */
  intadder_18_f300_uid134567 fpadd_5_11_f300_uid2_finalroundadd (
    .clk(clk),
    .x(resultbeforeround),
    .y(n227_o),
    .cin(round),
    .r(fpadd_5_11_f300_uid2_finalroundadd_r));
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:559:38  */
  assign n231_o = resultrounded[17:16];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:561:36  */
  assign n232_o = ~zerofromclose_d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:561:58  */
  assign n234_o = {n232_o, 1'b0};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:561:64  */
  assign n236_o = underflowoverflow == 2'b01;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:562:39  */
  assign n239_o = underflowoverflow == 2'b10;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:562:49  */
  assign n241_o = underflowoverflow == 2'b11;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:562:49  */
  assign n242_o = n239_o | n241_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:563:41  */
  assign n243_o = ~zerofromclose_d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:563:38  */
  assign n245_o = {1'b0, n243_o};
  assign n246_o = {n242_o, n236_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:560:4  */
  always @*
    case (n246_o)
      2'b10: n247_o = 2'b00;
      2'b01: n247_o = n234_o;
      default: n247_o = n245_o;
    endcase
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:564:62  */
  assign n248_o = resultrounded[15:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:564:47  */
  assign n249_o = {syncressign_d3, n248_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:568:26  */
  assign n250_o = resultnoexn[18:17];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:568:41  */
  assign n252_o = syncexnxy_d3 == 4'b0101;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:569:19  */
  assign n254_o = {1'b1, synceffsub_d3};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:569:44  */
  assign n256_o = syncexnxy_d3 == 4'b1010;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:570:41  */
  assign n259_o = syncexnxy_d3 == 4'b1110;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:571:27  */
  assign n260_o = syncexnxy_d3[3:2];
  assign n261_o = {n259_o, n256_o, n252_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:567:4  */
  always @*
    case (n261_o)
      3'b100: n262_o = 2'b11;
      3'b010: n262_o = n254_o;
      3'b001: n262_o = n250_o;
      default: n262_o = n260_o;
    endcase
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:574:26  */
  assign n263_o = resultnoexn[16];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:574:39  */
  assign n265_o = syncexnxy_d3 == 4'b0101;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:575:23  */
  assign n266_o = syncx_d3[16];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:575:28  */
  assign n267_o = n266_o & syncsigny_d3;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:575:45  */
  assign n269_o = syncexnxy_d3 == 4'b0000;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:576:23  */
  assign n270_o = syncx_d3[16];
  assign n271_o = {n269_o, n265_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:573:4  */
  always @*
    case (n271_o)
      2'b10: n272_o = n267_o;
      2'b01: n272_o = n263_o;
      default: n272_o = n270_o;
    endcase
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:579:29  */
  assign n273_o = resultnoexn[15:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:579:45  */
  assign n275_o = syncexnxy_d3 == 4'b0101;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:580:26  */
  assign n276_o = syncx_d3[15:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:578:4  */
  always @*
    case (n275_o)
      1'b1: n277_o = n273_o;
      default: n277_o = n276_o;
    endcase
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:581:14  */
  assign n278_o = {exnr, sgnr};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:581:21  */
  assign n279_o = {n278_o, expsigr};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:420:10  */
  always @(posedge clk)
    n280_q <= newx;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:420:10  */
  always @(posedge clk)
    n281_q <= newx_d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:420:10  */
  always @(posedge clk)
    n282_q <= effsub;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:420:10  */
  always @(posedge clk)
    n283_q <= effsub_d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:420:10  */
  always @(posedge clk)
    n284_q <= selectclosepath;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:420:10  */
  always @(posedge clk)
    n285_q <= selectclosepath_d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:420:10  */
  always @(posedge clk)
    n286_q <= exponentresultfar0;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:420:10  */
  always @(posedge clk)
    n287_q <= exponentresultfar0_d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:420:10  */
  always @(posedge clk)
    n288_q <= zerofromclose;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:420:10  */
  always @(posedge clk)
    n289_q <= synceffsub;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:420:10  */
  always @(posedge clk)
    n290_q <= synceffsub_d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:420:10  */
  always @(posedge clk)
    n291_q <= synceffsub_d2;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:420:10  */
  always @(posedge clk)
    n292_q <= syncx;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:420:10  */
  always @(posedge clk)
    n293_q <= syncx_d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:420:10  */
  always @(posedge clk)
    n294_q <= syncx_d2;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:420:10  */
  always @(posedge clk)
    n295_q <= syncsigny;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:420:10  */
  always @(posedge clk)
    n296_q <= syncsigny_d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:420:10  */
  always @(posedge clk)
    n297_q <= syncsigny_d2;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:420:10  */
  always @(posedge clk)
    n298_q <= syncressign;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:420:10  */
  always @(posedge clk)
    n299_q <= syncressign_d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:420:10  */
  always @(posedge clk)
    n300_q <= syncressign_d2;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:420:10  */
  assign n301_o = {n247_o, n249_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:420:10  */
  always @(posedge clk)
    n302_q <= syncexnxy;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:420:10  */
  always @(posedge clk)
    n303_q <= syncexnxy_d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_11.vhdl:420:10  */
  always @(posedge clk)
    n304_q <= syncexnxy_d2;
endmodule

