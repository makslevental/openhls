(* use_dsp = "yes" *) module intadder_14_f300_uid133
  (input wire clk,
   input wire [13:0] x,
   input wire [13:0] y,
   input wire cin,
   output wire [13:0] r);
  wire cin_1;
  wire cin_1_d1;
  wire [14:0] x_1;
  wire [14:0] x_1_d1;
  wire [14:0] y_1;
  wire [14:0] y_1_d1;
  wire [14:0] y_1_d2;
  wire [14:0] y_1_d3;
  wire [14:0] s_1;
  wire [13:0] r_1;
  wire [14:0] n491_o;
  wire [14:0] n493_o;
  wire [14:0] n494_o;
  wire [14:0] n495_o;
  wire [14:0] n496_o;
  wire [13:0] n497_o;
  reg n498_q;
  reg [14:0] n499_q;
  reg [14:0] n500_q;
  reg [14:0] n501_q;
  reg [14:0] n502_q;
  assign r = r_1;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:256:8  */
  assign cin_1 = cin; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:256:15  */
  assign cin_1_d1 = n498_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:257:8  */
  assign x_1 = n491_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:257:13  */
  assign x_1_d1 = n499_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:258:8  */
  assign y_1 = n493_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:258:13  */
  assign y_1_d1 = n500_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:258:21  */
  assign y_1_d2 = n501_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:258:29  */
  assign y_1_d3 = n502_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:259:8  */
  assign s_1 = n496_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:260:8  */
  assign r_1 = n497_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:273:15  */
  assign n491_o = {1'b0, x};
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:274:15  */
  assign n493_o = {1'b0, y};
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:275:18  */
  assign n494_o = x_1_d1 + y_1_d3;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:275:27  */
  assign n495_o = {14'b0, cin_1_d1};  //  uext
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:275:27  */
  assign n496_o = n494_o + n495_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:276:14  */
  assign n497_o = s_1[13:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:264:10  */
  always @(posedge clk)
    n498_q <= cin_1;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:264:10  */
  always @(posedge clk)
    n499_q <= x_1;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:264:10  */
  always @(posedge clk)
    n500_q <= y_1;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:264:10  */
  always @(posedge clk)
    n501_q <= y_1_d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:264:10  */
  always @(posedge clk)
    n502_q <= y_1_d2;
endmodule

(* use_dsp = "yes" *) module intadder_10_f300_uid10
  (input wire clk,
   input wire [9:0] x,
   input wire [9:0] y,
   input wire cin,
   output wire [9:0] r);
  wire [9:0] rtmp;
  wire [9:0] x_d1;
  wire [9:0] x_d2;
  wire [9:0] y_d1;
  wire [9:0] y_d2;
  wire [9:0] n473_o;
  wire [9:0] n474_o;
  wire [9:0] n475_o;
  reg [9:0] n476_q;
  reg [9:0] n477_q;
  reg [9:0] n478_q;
  reg [9:0] n479_q;
  assign r = rtmp;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:209:8  */
  assign rtmp = n475_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:210:8  */
  assign x_d1 = n476_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:210:14  */
  assign x_d2 = n477_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:211:8  */
  assign y_d1 = n478_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:211:14  */
  assign y_d2 = n479_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:222:17  */
  assign n473_o = x_d2 + y_d2;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:222:24  */
  assign n474_o = {9'b0, cin};  //  uext
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:222:24  */
  assign n475_o = n473_o + n474_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:215:10  */
  always @(posedge clk)
    n476_q <= x;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:215:10  */
  always @(posedge clk)
    n477_q <= x_d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:215:10  */
  always @(posedge clk)
    n478_q <= y;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:215:10  */
  always @(posedge clk)
    n479_q <= y_d1;
endmodule

module rightshiftersticky7_by_max_9_f300_uid8
  (input wire clk,
   input wire [6:0] x,
   input wire [3:0] s,
   output wire [8:0] r,
   output wire sticky);
  wire [3:0] ps;
  wire [3:0] ps_d1;
  wire [3:0] ps_d2;
  wire [8:0] xpadded;
  wire [8:0] level4;
  wire [8:0] level4_d1;
  wire stk3;
  wire [8:0] level3;
  wire [8:0] level3_d1;
  wire stk2;
  wire stk2_d1;
  wire [8:0] level2;
  wire [8:0] level2_d1;
  wire [8:0] level2_d2;
  wire stk1;
  wire [8:0] level1;
  wire [8:0] level1_d1;
  wire [8:0] level1_d2;
  wire stk0;
  wire [8:0] level0;
  wire [8:0] n395_o;
  wire [7:0] n397_o;
  wire n399_o;
  wire n400_o;
  wire n401_o;
  wire n402_o;
  wire n404_o;
  wire n405_o;
  wire [8:0] n406_o;
  wire n407_o;
  wire [8:0] n409_o;
  wire [3:0] n411_o;
  wire n413_o;
  wire n414_o;
  wire n415_o;
  wire n416_o;
  wire n417_o;
  wire n419_o;
  wire n420_o;
  wire [8:0] n421_o;
  wire [4:0] n422_o;
  wire [8:0] n424_o;
  wire [1:0] n426_o;
  wire n428_o;
  wire n429_o;
  wire n430_o;
  wire n431_o;
  wire n432_o;
  wire n434_o;
  wire n435_o;
  wire [8:0] n436_o;
  wire [6:0] n437_o;
  wire [8:0] n439_o;
  wire n441_o;
  wire n443_o;
  wire n444_o;
  wire n445_o;
  wire n446_o;
  wire n447_o;
  wire n449_o;
  wire n450_o;
  wire [8:0] n451_o;
  wire [7:0] n452_o;
  wire [8:0] n454_o;
  reg [3:0] n455_q;
  reg [3:0] n456_q;
  reg [8:0] n457_q;
  reg [8:0] n458_q;
  reg n459_q;
  reg [8:0] n460_q;
  reg [8:0] n461_q;
  reg [8:0] n462_q;
  reg [8:0] n463_q;
  assign r = level0;
  assign sticky = stk0;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:138:8  */
  assign ps = s; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:138:12  */
  assign ps_d1 = n455_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:138:19  */
  assign ps_d2 = n456_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:139:8  */
  assign xpadded = n395_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:140:8  */
  assign level4 = xpadded; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:140:16  */
  assign level4_d1 = n457_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:141:8  */
  assign stk3 = n402_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:142:8  */
  assign level3 = n406_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:142:16  */
  assign level3_d1 = n458_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:143:8  */
  assign stk2 = n417_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:143:14  */
  assign stk2_d1 = n459_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:144:8  */
  assign level2 = n421_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:144:16  */
  assign level2_d1 = n460_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:144:27  */
  assign level2_d2 = n461_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:145:8  */
  assign stk1 = n432_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:146:8  */
  assign level1 = n436_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:146:16  */
  assign level1_d1 = n462_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:146:27  */
  assign level1_d2 = n463_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:147:8  */
  assign stk0 = n447_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:148:8  */
  assign level0 = n451_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:165:16  */
  assign n395_o = {x, 2'b00};
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:167:31  */
  assign n397_o = level4_d1[7:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:167:43  */
  assign n399_o = n397_o != 8'b00000000;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:167:65  */
  assign n400_o = ps_d1[3];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:167:56  */
  assign n401_o = n399_o & n400_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:167:16  */
  assign n402_o = n401_o ? 1'b1 : 1'b0;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:168:30  */
  assign n404_o = ps[3];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:168:33  */
  assign n405_o = ~n404_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:168:22  */
  assign n406_o = n405_o ? level4 : n409_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:168:74  */
  assign n407_o = level4[8];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:168:66  */
  assign n409_o = {8'b00000000, n407_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:169:31  */
  assign n411_o = level3_d1[3:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:169:43  */
  assign n413_o = n411_o != 4'b0000;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:169:61  */
  assign n414_o = ps_d1[2];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:169:52  */
  assign n415_o = n413_o & n414_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:169:70  */
  assign n416_o = n415_o | stk3;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:169:16  */
  assign n417_o = n416_o ? 1'b1 : 1'b0;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:170:30  */
  assign n419_o = ps[2];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:170:33  */
  assign n420_o = ~n419_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:170:22  */
  assign n421_o = n420_o ? level3 : n424_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:170:74  */
  assign n422_o = level3[8:4];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:170:66  */
  assign n424_o = {4'b0000, n422_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:171:31  */
  assign n426_o = level2_d2[1:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:171:43  */
  assign n428_o = n426_o != 2'b00;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:171:59  */
  assign n429_o = ps_d2[1];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:171:50  */
  assign n430_o = n428_o & n429_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:171:68  */
  assign n431_o = n430_o | stk2_d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:171:16  */
  assign n432_o = n431_o ? 1'b1 : 1'b0;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:172:30  */
  assign n434_o = ps[1];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:172:33  */
  assign n435_o = ~n434_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:172:22  */
  assign n436_o = n435_o ? level2 : n439_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:172:74  */
  assign n437_o = level2[8:2];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:172:66  */
  assign n439_o = {2'b00, n437_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:173:31  */
  assign n441_o = level1_d2[0];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:173:43  */
  assign n443_o = n441_o != 1'b0;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:173:58  */
  assign n444_o = ps_d2[0];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:173:49  */
  assign n445_o = n443_o & n444_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:173:67  */
  assign n446_o = n445_o | stk1;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:173:16  */
  assign n447_o = n446_o ? 1'b1 : 1'b0;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:174:30  */
  assign n449_o = ps[0];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:174:33  */
  assign n450_o = ~n449_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:174:22  */
  assign n451_o = n450_o ? level1 : n454_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:174:74  */
  assign n452_o = level1[8:1];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:174:66  */
  assign n454_o = {1'b0, n452_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:152:10  */
  always @(posedge clk)
    n455_q <= ps;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:152:10  */
  always @(posedge clk)
    n456_q <= ps_d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:152:10  */
  always @(posedge clk)
    n457_q <= level4;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:152:10  */
  always @(posedge clk)
    n458_q <= level3;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:152:10  */
  always @(posedge clk)
    n459_q <= stk2;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:152:10  */
  always @(posedge clk)
    n460_q <= level2;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:152:10  */
  always @(posedge clk)
    n461_q <= level2_d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:152:10  */
  always @(posedge clk)
    n462_q <= level1;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:152:10  */
  always @(posedge clk)
    n463_q <= level1_d1;
endmodule

module normalizer_z_8_8_8_f300_uid6
  (input wire clk,
   input wire [7:0] x,
   output wire [3:0] count,
   output wire [7:0] r);
  wire [7:0] level4;
  wire [7:0] level4_d1;
  wire count3;
  wire count3_d1;
  wire [7:0] level3;
  wire count2;
  wire count2_d1;
  wire [7:0] level2;
  wire [7:0] level2_d1;
  wire count1;
  wire count1_d1;
  wire [7:0] level1;
  wire count0;
  wire [7:0] level0;
  wire [3:0] scount;
  wire n332_o;
  wire n333_o;
  wire n335_o;
  wire [7:0] n336_o;
  wire [3:0] n339_o;
  wire n341_o;
  wire n342_o;
  wire n344_o;
  wire [7:0] n345_o;
  wire [3:0] n346_o;
  wire [7:0] n348_o;
  wire [1:0] n350_o;
  wire n352_o;
  wire n353_o;
  wire n355_o;
  wire [7:0] n356_o;
  wire [5:0] n357_o;
  wire [7:0] n359_o;
  wire n361_o;
  wire n363_o;
  wire n364_o;
  wire n366_o;
  wire [7:0] n367_o;
  wire [6:0] n368_o;
  wire [7:0] n370_o;
  wire [1:0] n371_o;
  wire [2:0] n372_o;
  wire [3:0] n373_o;
  reg [7:0] n374_q;
  reg n375_q;
  reg n376_q;
  reg [7:0] n377_q;
  reg n378_q;
  assign count = scount;
  assign r = level0;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:69:8  */
  assign level4 = x; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:92:22  */
  assign level4_d1 = n374_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:70:8  */
  assign count3 = n333_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:70:16  */
  assign count3_d1 = n375_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:95:19  */
  assign level3 = n336_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:72:8  */
  assign count2 = n342_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:72:16  */
  assign count2_d1 = n376_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:73:8  */
  assign level2 = n345_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:98:22  */
  assign level2_d1 = n377_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:74:8  */
  assign count1 = n353_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:74:16  */
  assign count1_d1 = n378_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:101:19  */
  assign level1 = n356_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:76:8  */
  assign count0 = n364_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:77:8  */
  assign level0 = n367_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:78:8  */
  assign scount = n373_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:91:44  */
  assign n332_o = level4_d1 == 8'b00000000;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:91:17  */
  assign n333_o = n332_o ? 1'b1 : 1'b0;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:92:46  */
  assign n335_o = ~count3;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:92:35  */
  assign n336_o = n335_o ? level4_d1 : 8'b00000000;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:94:28  */
  assign n339_o = level3[7:4];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:94:41  */
  assign n341_o = n339_o == 4'b0000;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:94:17  */
  assign n342_o = n341_o ? 1'b1 : 1'b0;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:95:43  */
  assign n344_o = ~count2;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:95:32  */
  assign n345_o = n344_o ? level3 : n348_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:95:59  */
  assign n346_o = level3[3:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:95:72  */
  assign n348_o = {n346_o, 4'b0000};
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:97:28  */
  assign n350_o = level2[7:6];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:97:41  */
  assign n352_o = n350_o == 2'b00;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:97:17  */
  assign n353_o = n352_o ? 1'b1 : 1'b0;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:98:49  */
  assign n355_o = ~count1_d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:98:35  */
  assign n356_o = n355_o ? level2_d1 : n359_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:98:68  */
  assign n357_o = level2_d1[5:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:98:81  */
  assign n359_o = {n357_o, 2'b00};
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:100:28  */
  assign n361_o = level1[7];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:100:41  */
  assign n363_o = n361_o == 1'b0;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:100:17  */
  assign n364_o = n363_o ? 1'b1 : 1'b0;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:101:43  */
  assign n366_o = ~count0;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:101:32  */
  assign n367_o = n366_o ? level1 : n370_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:101:59  */
  assign n368_o = level1[6:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:101:72  */
  assign n370_o = {n368_o, 1'b0};
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:104:24  */
  assign n371_o = {count3_d1, count2_d1};
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:104:36  */
  assign n372_o = {n371_o, count1_d1};
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:104:48  */
  assign n373_o = {n372_o, count0};
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:82:10  */
  always @(posedge clk)
    n374_q <= level4;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:82:10  */
  always @(posedge clk)
    n375_q <= count3;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:82:10  */
  always @(posedge clk)
    n376_q <= count2;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:82:10  */
  always @(posedge clk)
    n377_q <= level2;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:82:10  */
  always @(posedge clk)
    n378_q <= count1;
endmodule

module intdualsub_9_f300_uid4
  (input wire clk,
   input wire [8:0] x,
   input wire [8:0] y,
   output wire [8:0] xmy,
   output wire [8:0] ymx);
  wire [8:0] temprxmy;
  wire [8:0] temprymx;
  wire [8:0] n309_o;
  wire [8:0] n310_o;
  wire [8:0] n313_o;
  wire [8:0] n314_o;
  wire [8:0] n315_o;
  wire [8:0] n318_o;
  assign xmy = temprxmy;
  assign ymx = temprymx;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:31:8  */
  assign temprxmy = n313_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:32:8  */
  assign temprymx = n318_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:34:21  */
  assign n309_o = ~y;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:34:18  */
  assign n310_o = x + n309_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:34:28  */
  assign n313_o = n310_o + 9'b000000001;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:35:21  */
  assign n314_o = ~x;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:35:18  */
  assign n315_o = y + n314_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:35:28  */
  assign n318_o = n315_o + 9'b000000001;
endmodule

module fadd #(parameter ID = 1)
  (input wire clk,
   input wire [14:0] X,
   input wire [14:0] Y,
   output wire [14:0] R);
  wire [14:0] inx;
  wire [14:0] iny;
  wire exceptionxsuperiory;
  wire exceptionxequaly;
  wire [6:0] signedexponentx;
  wire [6:0] signedexponenty;
  wire [6:0] exponentdifferencexy;
  wire [5:0] exponentdifferenceyx;
  wire swap;
  wire [14:0] newx;
  wire [14:0] newx_d1;
  wire [14:0] newx_d2;
  wire [14:0] newy;
  wire [5:0] exponentdifference;
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
  wire [8:0] fracxclose1;
  wire [8:0] fracyclose1;
  wire [8:0] fracrclosexmy;
  wire [8:0] fracrcloseymx;
  wire fracsignclose;
  wire [7:0] fracrclose1;
  wire ressign;
  wire [3:0] nzerosnew;
  wire [7:0] shiftedfrac;
  wire roundclose0;
  wire resultcloseiszero0;
  wire [7:0] exponentresultclose;
  wire [13:0] resultbeforeroundclose;
  wire roundclose;
  wire resultcloseiszero;
  wire [6:0] fracnewy;
  wire [8:0] shiftedfracy;
  wire sticky;
  wire [9:0] fracyfar;
  wire [9:0] effsubvector;
  wire [9:0] fracyfarxorop;
  wire [9:0] fracxfar;
  wire cinaddfar;
  wire [9:0] fracresultfar0;
  wire [9:0] fracresultfarnormstage;
  wire [1:0] fracleadingbits;
  wire [5:0] fracresultfar1;
  wire fracresultroundbit;
  wire fracresultstickybit;
  wire roundfar1;
  wire [1:0] expoperationsel;
  wire [7:0] exponentupdate;
  wire [7:0] exponentresultfar0;
  wire [7:0] exponentresultfar0_d1;
  wire [7:0] exponentresultfar0_d2;
  wire [7:0] exponentresultfar1;
  wire [13:0] resultbeforeroundfar;
  wire roundfar;
  wire [13:0] resultbeforeround;
  wire round;
  wire zerofromclose;
  wire zerofromclose_d1;
  wire [13:0] resultrounded;
  wire synceffsub;
  wire synceffsub_d1;
  wire synceffsub_d2;
  wire synceffsub_d3;
  wire [14:0] syncx;
  wire [14:0] syncx_d1;
  wire [14:0] syncx_d2;
  wire [14:0] syncx_d3;
  wire syncsigny;
  wire syncsigny_d1;
  wire syncsigny_d2;
  wire syncsigny_d3;
  wire syncressign;
  wire syncressign_d1;
  wire syncressign_d2;
  wire syncressign_d3;
  wire [1:0] underflowoverflow;
  wire [14:0] resultnoexn;
  wire [3:0] syncexnxy;
  wire [3:0] syncexnxy_d1;
  wire [3:0] syncexnxy_d2;
  wire [3:0] syncexnxy_d3;
  wire [1:0] exnr;
  wire sgnr;
  wire [11:0] expsigr;
  wire [1:0] n30_o;
  wire [1:0] n31_o;
  wire n32_o;
  wire n33_o;
  wire [1:0] n36_o;
  wire [1:0] n37_o;
  wire n38_o;
  wire n39_o;
  wire [5:0] n41_o;
  wire [6:0] n43_o;
  wire [5:0] n44_o;
  wire [6:0] n46_o;
  wire [6:0] n47_o;
  wire [5:0] n48_o;
  wire [5:0] n49_o;
  wire [5:0] n50_o;
  wire n51_o;
  wire n52_o;
  wire n53_o;
  wire n54_o;
  wire [14:0] n55_o;
  wire [14:0] n56_o;
  wire [5:0] n57_o;
  wire [5:0] n58_o;
  wire n59_o;
  wire n60_o;
  wire n61_o;
  wire [3:0] n62_o;
  wire n63_o;
  wire [3:0] n64_o;
  wire n66_o;
  wire n67_o;
  wire n68_o;
  wire [4:0] n69_o;
  wire n71_o;
  wire n72_o;
  wire [1:0] n74_o;
  wire [1:0] n75_o;
  wire [3:0] n76_o;
  wire n77_o;
  wire [5:0] n78_o;
  wire [7:0] n80_o;
  wire [8:0] n82_o;
  wire n83_o;
  wire [5:0] n84_o;
  wire [7:0] n86_o;
  wire [8:0] n88_o;
  wire n90_o;
  wire [5:0] n91_o;
  wire [8:0] n93_o;
  reg [8:0] n94_o;
  wire [8:0] fpadd_6_6_f300_uid2_dualsubclose_n95;
  wire [8:0] fpadd_6_6_f300_uid2_dualsubclose_n96;
  wire [8:0] fpadd_6_6_f300_uid2_dualsubclose_xmy;
  wire [8:0] fpadd_6_6_f300_uid2_dualsubclose_ymx;
  wire n101_o;
  wire [7:0] n102_o;
  wire n103_o;
  wire [7:0] n104_o;
  wire [7:0] n105_o;
  wire n108_o;
  wire n109_o;
  wire n110_o;
  wire n111_o;
  wire n112_o;
  wire n113_o;
  wire [3:0] norm_n114;
  wire [7:0] norm_n115;
  wire [3:0] norm_count;
  wire [7:0] norm_r;
  wire n120_o;
  wire n121_o;
  wire n122_o;
  wire n125_o;
  wire n126_o;
  wire [5:0] n128_o;
  wire [7:0] n130_o;
  wire [7:0] n132_o;
  wire [7:0] n133_o;
  wire [5:0] n134_o;
  wire [13:0] n135_o;
  wire [5:0] n136_o;
  wire [6:0] n138_o;
  wire [8:0] rightshiftercomponent_n139;
  wire rightshiftercomponent_n140;
  wire [8:0] rightshiftercomponent_r;
  wire rightshiftercomponent_sticky;
  wire [9:0] n146_o;
  wire [3:0] n147_o;
  wire [3:0] n148_o;
  wire [1:0] n149_o;
  wire [9:0] n150_o;
  wire [9:0] n151_o;
  wire [5:0] n152_o;
  wire [7:0] n154_o;
  wire [9:0] n156_o;
  wire n157_o;
  wire n158_o;
  wire [9:0] fpadd_6_6_f300_uid2_fracaddfar_n159;
  wire [9:0] fpadd_6_6_f300_uid2_fracaddfar_r;
  wire [1:0] n162_o;
  wire [5:0] n163_o;
  wire n165_o;
  wire [5:0] n166_o;
  wire [5:0] n167_o;
  wire n169_o;
  wire [5:0] n170_o;
  wire [5:0] n171_o;
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
  wire n211_o;
  wire [3:0] n212_o;
  wire [2:0] n213_o;
  wire [6:0] n214_o;
  wire n215_o;
  wire [7:0] n216_o;
  wire [5:0] n217_o;
  wire [7:0] n219_o;
  wire [7:0] n220_o;
  wire [13:0] n221_o;
  wire n223_o;
  reg [13:0] n224_o;
  wire n226_o;
  reg n227_o;
  wire n228_o;
  localparam [13:0] n229_o = 14'b00000000000000;
  wire [13:0] fpadd_6_6_f300_uid2_finalroundadd_n230;
  wire [13:0] fpadd_6_6_f300_uid2_finalroundadd_r;
  wire [1:0] n233_o;
  wire n234_o;
  wire [1:0] n236_o;
  wire n238_o;
  wire n241_o;
  wire n243_o;
  wire n244_o;
  wire n245_o;
  wire [1:0] n247_o;
  wire [1:0] n248_o;
  reg [1:0] n249_o;
  wire [11:0] n250_o;
  wire [12:0] n251_o;
  wire [1:0] n252_o;
  wire n254_o;
  wire [1:0] n256_o;
  wire n258_o;
  wire n261_o;
  wire [1:0] n262_o;
  wire [2:0] n263_o;
  reg [1:0] n264_o;
  wire n265_o;
  wire n267_o;
  wire n268_o;
  wire n269_o;
  wire n271_o;
  wire n272_o;
  wire [1:0] n273_o;
  reg n274_o;
  wire [11:0] n275_o;
  wire n277_o;
  wire [11:0] n278_o;
  reg [11:0] n279_o;
  wire [2:0] n280_o;
  wire [14:0] n281_o;
  reg [14:0] n282_q;
  reg [14:0] n283_q;
  reg n284_q;
  reg n285_q;
  reg n286_q;
  reg n287_q;
  reg [7:0] n288_q;
  reg [7:0] n289_q;
  reg n290_q;
  reg n291_q;
  reg n292_q;
  reg n293_q;
  reg [14:0] n294_q;
  reg [14:0] n295_q;
  reg [14:0] n296_q;
  reg n297_q;
  reg n298_q;
  reg n299_q;
  reg n300_q;
  reg n301_q;
  reg n302_q;
  wire [14:0] n303_o;
  reg [3:0] n304_q;
  reg [3:0] n305_q;
  reg [3:0] n306_q;
  assign R = n281_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:349:8  */
  assign inx = X; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:350:8  */
  assign iny = Y; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:351:8  */
  assign exceptionxsuperiory = n33_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:352:8  */
  assign exceptionxequaly = n39_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:353:8  */
  assign signedexponentx = n43_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:354:8  */
  assign signedexponenty = n46_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:355:8  */
  assign exponentdifferencexy = n47_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:356:8  */
  assign exponentdifferenceyx = n50_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:357:8  */
  assign swap = n54_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:358:8  */
  assign newx = n55_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:358:14  */
  assign newx_d1 = n282_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:358:23  */
  assign newx_d2 = n283_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:359:8  */
  assign newy = n56_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:360:8  */
  assign exponentdifference = n57_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:361:8  */
  assign shiftedout = n61_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:362:8  */
  assign shiftval = n64_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:363:8  */
  assign effsub = n68_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:363:16  */
  assign effsub_d1 = n284_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:363:27  */
  assign effsub_d2 = n285_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:364:8  */
  assign selectclosepath = n72_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:364:25  */
  assign selectclosepath_d1 = n286_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:364:45  */
  assign selectclosepath_d2 = n287_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:365:8  */
  assign sdexnxy = n76_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:366:8  */
  assign pipesigny = n77_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:367:8  */
  assign fracxclose1 = n82_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:368:8  */
  assign fracyclose1 = n94_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:369:8  */
  assign fracrclosexmy = fpadd_6_6_f300_uid2_dualsubclose_n95; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:370:8  */
  assign fracrcloseymx = fpadd_6_6_f300_uid2_dualsubclose_n96; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:371:8  */
  assign fracsignclose = n101_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:372:8  */
  assign fracrclose1 = n104_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:373:8  */
  assign ressign = n110_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:374:8  */
  assign nzerosnew = norm_n114; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:375:8  */
  assign shiftedfrac = norm_n115; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:376:8  */
  assign roundclose0 = n122_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:377:8  */
  assign resultcloseiszero0 = n126_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:491:49  */
  assign exponentresultclose = n133_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:379:8  */
  assign resultbeforeroundclose = n135_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:380:8  */
  assign roundclose = roundclose0; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:381:8  */
  assign resultcloseiszero = resultcloseiszero0; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:382:8  */
  assign fracnewy = n138_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:383:8  */
  assign shiftedfracy = rightshiftercomponent_n139; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:384:8  */
  assign sticky = rightshiftercomponent_n140; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:385:8  */
  assign fracyfar = n146_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:386:8  */
  assign effsubvector = n150_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:387:8  */
  assign fracyfarxorop = n151_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:388:8  */
  assign fracxfar = n156_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:389:8  */
  assign cinaddfar = n158_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:390:8  */
  assign fracresultfar0 = fpadd_6_6_f300_uid2_fracaddfar_n159; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:391:8  */
  assign fracresultfarnormstage = fracresultfar0; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:392:8  */
  assign fracleadingbits = n162_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:393:8  */
  assign fracresultfar1 = n166_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:394:8  */
  assign fracresultroundbit = n175_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:395:8  */
  assign fracresultstickybit = n183_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:396:8  */
  assign roundfar1 = n195_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:397:8  */
  assign expoperationsel = n199_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:398:8  */
  assign exponentupdate = n216_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:399:8  */
  assign exponentresultfar0 = n219_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:399:28  */
  assign exponentresultfar0_d1 = n288_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:399:51  */
  assign exponentresultfar0_d2 = n289_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:400:8  */
  assign exponentresultfar1 = n220_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:401:8  */
  assign resultbeforeroundfar = n221_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:402:8  */
  assign roundfar = roundfar1; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:403:8  */
  assign resultbeforeround = n224_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:404:8  */
  assign round = n227_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:405:8  */
  assign zerofromclose = n228_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:405:23  */
  assign zerofromclose_d1 = n290_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:406:8  */
  assign resultrounded = fpadd_6_6_f300_uid2_finalroundadd_n230; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:407:8  */
  assign synceffsub = effsub; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:407:20  */
  assign synceffsub_d1 = n291_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:407:35  */
  assign synceffsub_d2 = n292_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:407:50  */
  assign synceffsub_d3 = n293_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:408:8  */
  assign syncx = newx; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:408:15  */
  assign syncx_d1 = n294_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:408:25  */
  assign syncx_d2 = n295_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:408:35  */
  assign syncx_d3 = n296_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:409:8  */
  assign syncsigny = pipesigny; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:409:19  */
  assign syncsigny_d1 = n297_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:409:33  */
  assign syncsigny_d2 = n298_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:409:47  */
  assign syncsigny_d3 = n299_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:410:8  */
  assign syncressign = ressign; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:410:21  */
  assign syncressign_d1 = n300_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:410:37  */
  assign syncressign_d2 = n301_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:410:53  */
  assign syncressign_d3 = n302_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:411:8  */
  assign underflowoverflow = n233_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:412:8  */
  assign resultnoexn = n303_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:413:8  */
  assign syncexnxy = sdexnxy; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:413:19  */
  assign syncexnxy_d1 = n304_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:413:33  */
  assign syncexnxy_d2 = n305_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:413:47  */
  assign syncexnxy_d3 = n306_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:414:8  */
  assign exnr = n264_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:415:8  */
  assign sgnr = n274_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:416:8  */
  assign expsigr = n279_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:450:39  */
  assign n30_o = inx[14:13];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:450:60  */
  assign n31_o = iny[14:13];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:450:54  */
  assign n32_o = $unsigned(n30_o) >= $unsigned(n31_o);
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:450:31  */
  assign n33_o = n32_o ? 1'b1 : 1'b0;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:451:36  */
  assign n36_o = inx[14:13];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:451:56  */
  assign n37_o = iny[14:13];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:451:51  */
  assign n38_o = n36_o == n37_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:451:28  */
  assign n39_o = n38_o ? 1'b1 : 1'b0;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:452:32  */
  assign n41_o = inx[11:6];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:452:27  */
  assign n43_o = {1'b0, n41_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:453:32  */
  assign n44_o = iny[11:6];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:453:27  */
  assign n46_o = {1'b0, n44_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:454:44  */
  assign n47_o = signedexponentx - signedexponenty;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:455:43  */
  assign n48_o = signedexponenty[5:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:455:73  */
  assign n49_o = signedexponentx[5:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:455:56  */
  assign n50_o = n48_o - n49_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:456:54  */
  assign n51_o = exponentdifferencexy[6];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:456:30  */
  assign n52_o = exceptionxequaly & n51_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:456:63  */
  assign n53_o = ~exceptionxsuperiory;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:456:59  */
  assign n54_o = n52_o | n53_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:457:16  */
  assign n55_o = swap ? iny : inx;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:458:16  */
  assign n56_o = swap ? inx : iny;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:459:47  */
  assign n57_o = swap ? exponentdifferenceyx : n58_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:459:88  */
  assign n58_o = exponentdifferencexy[5:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:460:36  */
  assign n59_o = exponentdifference[5];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:460:61  */
  assign n60_o = exponentdifference[4];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:460:40  */
  assign n61_o = n59_o | n60_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:461:34  */
  assign n62_o = exponentdifference[3:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:461:62  */
  assign n63_o = ~shiftedout;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:461:47  */
  assign n64_o = n63_o ? n62_o : 4'b1001;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:463:18  */
  assign n66_o = newx[12];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:463:31  */
  assign n67_o = newy[12];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:463:23  */
  assign n68_o = n66_o ^ n67_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:464:53  */
  assign n69_o = exponentdifference[5:1];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:464:66  */
  assign n71_o = n69_o == 5'b00000;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:464:30  */
  assign n72_o = n71_o ? effsub : 1'b0;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:465:19  */
  assign n74_o = newx[14:13];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:465:40  */
  assign n75_o = newy[14:13];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:465:34  */
  assign n76_o = {n74_o, n75_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:466:21  */
  assign n77_o = newy[12];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:469:30  */
  assign n78_o = newx[5:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:469:24  */
  assign n80_o = {2'b01, n78_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:469:43  */
  assign n82_o = {n80_o, 1'b0};
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:470:27  */
  assign n83_o = exponentdifference[0];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:471:31  */
  assign n84_o = newy[5:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:471:25  */
  assign n86_o = {2'b01, n84_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:471:44  */
  assign n88_o = {n86_o, 1'b0};
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:471:50  */
  assign n90_o = n83_o == 1'b0;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:472:31  */
  assign n91_o = newy[5:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:472:25  */
  assign n93_o = {3'b001, n91_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:470:4  */
  always @*
    case (n90_o)
      1'b1: n94_o = n88_o;
      default: n94_o = n93_o;
    endcase
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:477:25  */
  assign fpadd_6_6_f300_uid2_dualsubclose_n95 = fpadd_6_6_f300_uid2_dualsubclose_xmy; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:478:25  */
  assign fpadd_6_6_f300_uid2_dualsubclose_n96 = fpadd_6_6_f300_uid2_dualsubclose_ymx; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:473:4  */
  intdualsub_9_f300_uid4 fpadd_6_6_f300_uid2_dualsubclose (
    .clk(clk),
    .x(fracxclose1),
    .y(fracyclose1),
    .xmy(fpadd_6_6_f300_uid2_dualsubclose_xmy),
    .ymx(fpadd_6_6_f300_uid2_dualsubclose_ymx));
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:479:34  */
  assign n101_o = fracrclosexmy[8];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:480:32  */
  assign n102_o = fracrclosexmy[7:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:480:63  */
  assign n103_o = ~fracsignclose;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:480:45  */
  assign n104_o = n103_o ? n102_o : n105_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:480:86  */
  assign n105_o = fracrcloseymx[7:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:481:60  */
  assign n108_o = fracrclose1 == 8'b00000000;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:481:44  */
  assign n109_o = selectclosepath & n108_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:481:19  */
  assign n110_o = n109_o ? 1'b0 : n113_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:482:18  */
  assign n111_o = newx[12];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:482:44  */
  assign n112_o = selectclosepath & fracsignclose;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:482:23  */
  assign n113_o = n111_o ^ n112_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:486:27  */
  assign norm_n114 = norm_count; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:487:23  */
  assign norm_n115 = norm_r; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:483:4  */
  normalizer_z_8_8_8_f300_uid6 norm (
    .clk(clk),
    .x(fracrclose1),
    .count(norm_count),
    .r(norm_r));
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:488:30  */
  assign n120_o = shiftedfrac[0];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:488:49  */
  assign n121_o = shiftedfrac[1];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:488:34  */
  assign n122_o = n120_o & n121_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:489:45  */
  assign n125_o = nzerosnew == 4'b1111;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:489:30  */
  assign n126_o = n125_o ? 1'b1 : 1'b0;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:490:42  */
  assign n128_o = newx_d2[11:6];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:490:33  */
  assign n130_o = {2'b00, n128_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:490:87  */
  assign n132_o = {4'b0000, nzerosnew};
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:490:57  */
  assign n133_o = n130_o - n132_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:491:75  */
  assign n134_o = shiftedfrac[6:1];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:491:62  */
  assign n135_o = {exponentresultclose, n134_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:496:26  */
  assign n136_o = newy[5:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:496:20  */
  assign n138_o = {1'b1, n136_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:501:23  */
  assign rightshiftercomponent_n139 = rightshiftercomponent_r; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:502:28  */
  assign rightshiftercomponent_n140 = rightshiftercomponent_sticky; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:497:4  */
  rightshiftersticky7_by_max_9_f300_uid8 rightshiftercomponent (
    .clk(clk),
    .x(fracnewy),
    .s(shiftval),
    .r(rightshiftercomponent_r),
    .sticky(rightshiftercomponent_sticky));
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:503:20  */
  assign n146_o = {1'b0, shiftedfracy};
  assign n147_o = {effsub, effsub, effsub, effsub};
  assign n148_o = {effsub, effsub, effsub, effsub};
  assign n149_o = {effsub, effsub};
  assign n150_o = {n147_o, n148_o, n149_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:505:30  */
  assign n151_o = fracyfar ^ effsubvector;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:506:28  */
  assign n152_o = newx[5:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:506:21  */
  assign n154_o = {2'b01, n152_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:506:42  */
  assign n156_o = {n154_o, 2'b00};
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:507:31  */
  assign n157_o = ~sticky;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:507:27  */
  assign n158_o = effsub_d2 & n157_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:513:23  */
  assign fpadd_6_6_f300_uid2_fracaddfar_n159 = fpadd_6_6_f300_uid2_fracaddfar_r; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:508:4  */
  intadder_10_f300_uid10 fpadd_6_6_f300_uid2_fracaddfar (
    .clk(clk),
    .x(fracxfar),
    .y(fracyfarxorop),
    .cin(cinaddfar),
    .r(fpadd_6_6_f300_uid2_fracaddfar_r));
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:516:45  */
  assign n162_o = fracresultfarnormstage[9:8];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:518:34  */
  assign n163_o = fracresultfarnormstage[6:1];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:518:69  */
  assign n165_o = fracleadingbits == 2'b00;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:518:48  */
  assign n166_o = n165_o ? n163_o : n170_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:519:34  */
  assign n167_o = fracresultfarnormstage[7:2];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:519:69  */
  assign n169_o = fracleadingbits == 2'b01;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:519:7  */
  assign n170_o = n169_o ? n167_o : n171_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:520:34  */
  assign n171_o = fracresultfarnormstage[8:3];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:522:34  */
  assign n172_o = fracresultfarnormstage[0];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:522:63  */
  assign n174_o = fracleadingbits == 2'b00;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:522:42  */
  assign n175_o = n174_o ? n172_o : n179_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:523:34  */
  assign n176_o = fracresultfarnormstage[1];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:523:62  */
  assign n178_o = fracleadingbits == 2'b01;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:523:7  */
  assign n179_o = n178_o ? n176_o : n180_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:524:34  */
  assign n180_o = fracresultfarnormstage[2];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:526:47  */
  assign n182_o = fracleadingbits == 2'b00;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:526:26  */
  assign n183_o = n182_o ? sticky : n188_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:527:34  */
  assign n184_o = fracresultfarnormstage[0];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:527:38  */
  assign n185_o = n184_o | sticky;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:527:72  */
  assign n187_o = fracleadingbits == 2'b01;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:527:7  */
  assign n188_o = n187_o ? n185_o : n192_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:528:34  */
  assign n189_o = fracresultfarnormstage[1];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:528:63  */
  assign n190_o = fracresultfarnormstage[0];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:528:38  */
  assign n191_o = n189_o | n190_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:528:67  */
  assign n192_o = n191_o | sticky;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:529:78  */
  assign n193_o = fracresultfar1[0];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:529:61  */
  assign n194_o = fracresultstickybit | n193_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:529:36  */
  assign n195_o = fracresultroundbit & n194_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:530:49  */
  assign n198_o = fracleadingbits == 2'b00;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:530:28  */
  assign n199_o = n198_o ? 2'b11 : n203_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:531:49  */
  assign n202_o = fracleadingbits == 2'b01;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:531:16  */
  assign n203_o = n202_o ? 2'b00 : 2'b01;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:533:52  */
  assign n205_o = expoperationsel[1];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:533:52  */
  assign n206_o = expoperationsel[1];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:533:52  */
  assign n207_o = expoperationsel[1];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:533:52  */
  assign n208_o = expoperationsel[1];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:533:52  */
  assign n209_o = expoperationsel[1];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:533:52  */
  assign n210_o = expoperationsel[1];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:533:52  */
  assign n211_o = expoperationsel[1];
  assign n212_o = {n211_o, n210_o, n209_o, n208_o};
  assign n213_o = {n207_o, n206_o, n205_o};
  assign n214_o = {n212_o, n213_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:533:74  */
  assign n215_o = expoperationsel[0];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:533:57  */
  assign n216_o = {n214_o, n215_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:534:36  */
  assign n217_o = newx[11:6];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:534:29  */
  assign n219_o = {2'b00, n217_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:535:48  */
  assign n220_o = exponentresultfar0_d2 + exponentupdate;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:536:47  */
  assign n221_o = {exponentresultfar1, fracresultfar1};
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:541:48  */
  assign n223_o = selectclosepath_d2 == 1'b1;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:540:4  */
  always @*
    case (n223_o)
      1'b1: n224_o = resultbeforeroundclose;
      default: n224_o = resultbeforeroundfar;
    endcase
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:544:24  */
  assign n226_o = selectclosepath_d2 == 1'b1;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:543:4  */
  always @*
    case (n226_o)
      1'b1: n227_o = roundclose;
      default: n227_o = roundfar;
    endcase
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:546:40  */
  assign n228_o = selectclosepath_d2 & resultcloseiszero;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:554:23  */
  assign fpadd_6_6_f300_uid2_finalroundadd_n230 = fpadd_6_6_f300_uid2_finalroundadd_r; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:549:4  */
  intadder_14_f300_uid133 fpadd_6_6_f300_uid2_finalroundadd (
    .clk(clk),
    .x(resultbeforeround),
    .y(n229_o),
    .cin(round),
    .r(fpadd_6_6_f300_uid2_finalroundadd_r));
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:559:38  */
  assign n233_o = resultrounded[13:12];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:561:36  */
  assign n234_o = ~zerofromclose_d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:561:58  */
  assign n236_o = {n234_o, 1'b0};
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:561:64  */
  assign n238_o = underflowoverflow == 2'b01;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:562:39  */
  assign n241_o = underflowoverflow == 2'b10;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:562:49  */
  assign n243_o = underflowoverflow == 2'b11;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:562:49  */
  assign n244_o = n241_o | n243_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:563:41  */
  assign n245_o = ~zerofromclose_d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:563:38  */
  assign n247_o = {1'b0, n245_o};
  assign n248_o = {n244_o, n238_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:560:4  */
  always @*
    case (n248_o)
      2'b10: n249_o = 2'b00;
      2'b01: n249_o = n236_o;
      default: n249_o = n247_o;
    endcase
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:564:62  */
  assign n250_o = resultrounded[11:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:564:47  */
  assign n251_o = {syncressign_d3, n250_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:568:26  */
  assign n252_o = resultnoexn[14:13];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:568:41  */
  assign n254_o = syncexnxy_d3 == 4'b0101;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:569:19  */
  assign n256_o = {1'b1, synceffsub_d3};
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:569:44  */
  assign n258_o = syncexnxy_d3 == 4'b1010;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:570:41  */
  assign n261_o = syncexnxy_d3 == 4'b1110;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:571:27  */
  assign n262_o = syncexnxy_d3[3:2];
  assign n263_o = {n261_o, n258_o, n254_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:567:4  */
  always @*
    case (n263_o)
      3'b100: n264_o = 2'b11;
      3'b010: n264_o = n256_o;
      3'b001: n264_o = n252_o;
      default: n264_o = n262_o;
    endcase
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:574:26  */
  assign n265_o = resultnoexn[12];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:574:39  */
  assign n267_o = syncexnxy_d3 == 4'b0101;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:575:23  */
  assign n268_o = syncx_d3[12];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:575:28  */
  assign n269_o = n268_o & syncsigny_d3;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:575:45  */
  assign n271_o = syncexnxy_d3 == 4'b0000;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:576:23  */
  assign n272_o = syncx_d3[12];
  assign n273_o = {n271_o, n267_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:573:4  */
  always @*
    case (n273_o)
      2'b10: n274_o = n269_o;
      2'b01: n274_o = n265_o;
      default: n274_o = n272_o;
    endcase
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:579:29  */
  assign n275_o = resultnoexn[11:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:579:45  */
  assign n277_o = syncexnxy_d3 == 4'b0101;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:580:26  */
  assign n278_o = syncx_d3[11:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:578:4  */
  always @*
    case (n277_o)
      1'b1: n279_o = n275_o;
      default: n279_o = n278_o;
    endcase
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:581:14  */
  assign n280_o = {exnr, sgnr};
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:581:21  */
  assign n281_o = {n280_o, expsigr};
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:420:10  */
  always @(posedge clk)
    n282_q <= newx;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:420:10  */
  always @(posedge clk)
    n283_q <= newx_d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:420:10  */
  always @(posedge clk)
    n284_q <= effsub;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:420:10  */
  always @(posedge clk)
    n285_q <= effsub_d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:420:10  */
  always @(posedge clk)
    n286_q <= selectclosepath;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:420:10  */
  always @(posedge clk)
    n287_q <= selectclosepath_d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:420:10  */
  always @(posedge clk)
    n288_q <= exponentresultfar0;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:420:10  */
  always @(posedge clk)
    n289_q <= exponentresultfar0_d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:420:10  */
  always @(posedge clk)
    n290_q <= zerofromclose;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:420:10  */
  always @(posedge clk)
    n291_q <= synceffsub;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:420:10  */
  always @(posedge clk)
    n292_q <= synceffsub_d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:420:10  */
  always @(posedge clk)
    n293_q <= synceffsub_d2;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:420:10  */
  always @(posedge clk)
    n294_q <= syncx;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:420:10  */
  always @(posedge clk)
    n295_q <= syncx_d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:420:10  */
  always @(posedge clk)
    n296_q <= syncx_d2;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:420:10  */
  always @(posedge clk)
    n297_q <= syncsigny;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:420:10  */
  always @(posedge clk)
    n298_q <= syncsigny_d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:420:10  */
  always @(posedge clk)
    n299_q <= syncsigny_d2;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:420:10  */
  always @(posedge clk)
    n300_q <= syncressign;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:420:10  */
  always @(posedge clk)
    n301_q <= syncressign_d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:420:10  */
  always @(posedge clk)
    n302_q <= syncressign_d2;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:420:10  */
  assign n303_o = {n249_o, n251_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:420:10  */
  always @(posedge clk)
    n304_q <= syncexnxy;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:420:10  */
  always @(posedge clk)
    n305_q <= syncexnxy_d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_6_6.vhdl:420:10  */
  always @(posedge clk)
    n306_q <= syncexnxy_d2;
endmodule

