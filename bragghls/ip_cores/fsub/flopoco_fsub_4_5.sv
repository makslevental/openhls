module intadder_11_f300_uid1333333
  (input wire clk,
   input wire [10:0] x,
   input wire [10:0] y,
   input wire cin,
   output wire [10:0] r);
  wire [10:0] rtmp;
  wire [10:0] y_d1;
  wire [10:0] y_d2;
  wire [10:0] n455_o;
  wire [10:0] n456_o;
  wire [10:0] n457_o;
  reg [10:0] n458_q;
  reg [10:0] n459_q;
  assign r = rtmp;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:248:8  */
  assign rtmp = n457_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:249:8  */
  assign y_d1 = n458_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:249:14  */
  assign y_d2 = n459_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:258:14  */
  assign n455_o = x + y_d2;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:258:21  */
  assign n456_o = {10'b0, cin};  //  uext
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:258:21  */
  assign n457_o = n455_o + n456_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:253:10  */
  always @(posedge clk)
    n458_q <= y;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:253:10  */
  always @(posedge clk)
    n459_q <= y_d1;
endmodule

module intadder_9_f300_uid100000
  (input wire clk,
   input wire [8:0] x,
   input wire [8:0] y,
   input wire cin,
   output wire [8:0] r);
  wire [8:0] rtmp;
  wire [8:0] x_d1;
  wire [8:0] x_d2;
  wire [8:0] y_d1;
  wire [8:0] y_d2;
  wire [8:0] n441_o;
  wire [8:0] n442_o;
  wire [8:0] n443_o;
  reg [8:0] n444_q;
  reg [8:0] n445_q;
  reg [8:0] n446_q;
  reg [8:0] n447_q;
  assign r = rtmp;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:201:8  */
  assign rtmp = n443_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:202:8  */
  assign x_d1 = n444_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:202:14  */
  assign x_d2 = n445_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:203:8  */
  assign y_d1 = n446_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:203:14  */
  assign y_d2 = n447_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:214:17  */
  assign n441_o = x_d2 + y_d2;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:214:24  */
  assign n442_o = {8'b0, cin};  //  uext
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:214:24  */
  assign n443_o = n441_o + n442_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:207:10  */
  always @(posedge clk)
    n444_q <= x;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:207:10  */
  always @(posedge clk)
    n445_q <= x_d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:207:10  */
  always @(posedge clk)
    n446_q <= y;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:207:10  */
  always @(posedge clk)
    n447_q <= y_d1;
endmodule

module rightshiftersticky6_by_max_8_f300_uid88888888
  (input wire clk,
   input wire [5:0] x,
   input wire [3:0] s,
   output wire [7:0] r,
   output wire sticky);
  wire [3:0] ps;
  wire [3:0] ps_d1;
  wire [3:0] ps_d2;
  wire [7:0] xpadded;
  wire [7:0] level4;
  wire stk3;
  wire stk3_d1;
  wire [7:0] level3;
  wire [7:0] level3_d1;
  wire stk2;
  wire [7:0] level2;
  wire [7:0] level2_d1;
  wire stk1;
  wire stk1_d1;
  wire [7:0] level1;
  wire [7:0] level1_d1;
  wire [7:0] level1_d2;
  wire stk0;
  wire [7:0] level0;
  wire [7:0] n367_o;
  wire n370_o;
  wire n371_o;
  wire n372_o;
  wire n373_o;
  wire n375_o;
  wire n376_o;
  wire [7:0] n377_o;
  wire [3:0] n380_o;
  wire n382_o;
  wire n383_o;
  wire n384_o;
  wire n385_o;
  wire n386_o;
  wire n388_o;
  wire n389_o;
  wire [7:0] n390_o;
  wire [3:0] n391_o;
  wire [7:0] n393_o;
  wire [1:0] n395_o;
  wire n397_o;
  wire n398_o;
  wire n399_o;
  wire n400_o;
  wire n401_o;
  wire n403_o;
  wire n404_o;
  wire [7:0] n405_o;
  wire [5:0] n406_o;
  wire [7:0] n408_o;
  wire n410_o;
  wire n412_o;
  wire n413_o;
  wire n414_o;
  wire n415_o;
  wire n416_o;
  wire n418_o;
  wire n419_o;
  wire [7:0] n420_o;
  wire [6:0] n421_o;
  wire [7:0] n423_o;
  reg [3:0] n424_q;
  reg [3:0] n425_q;
  reg n426_q;
  reg [7:0] n427_q;
  reg [7:0] n428_q;
  reg n429_q;
  reg [7:0] n430_q;
  reg [7:0] n431_q;
  assign r = level0;
  assign sticky = stk0;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:131:8  */
  assign ps = s; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:131:12  */
  assign ps_d1 = n424_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:131:19  */
  assign ps_d2 = n425_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:132:8  */
  assign xpadded = n367_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:159:28  */
  assign level4 = xpadded; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:134:8  */
  assign stk3 = n373_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:134:14  */
  assign stk3_d1 = n426_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:135:8  */
  assign level3 = n377_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:135:16  */
  assign level3_d1 = n427_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:136:8  */
  assign stk2 = n386_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:137:8  */
  assign level2 = n390_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:137:16  */
  assign level2_d1 = n428_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:138:8  */
  assign stk1 = n401_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:138:14  */
  assign stk1_d1 = n429_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:139:8  */
  assign level1 = n405_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:139:16  */
  assign level1_d1 = n430_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:139:27  */
  assign level1_d2 = n431_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:140:8  */
  assign stk0 = n416_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:141:8  */
  assign level0 = n420_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:157:16  */
  assign n367_o = {x, 2'b00};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:159:40  */
  assign n370_o = level4 != 8'b00000000;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:159:59  */
  assign n371_o = ps[3];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:159:53  */
  assign n372_o = n370_o & n371_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:159:16  */
  assign n373_o = n372_o ? 1'b1 : 1'b0;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:160:30  */
  assign n375_o = ps[3];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:160:33  */
  assign n376_o = ~n375_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:160:22  */
  assign n377_o = n376_o ? level4 : 8'b00000000;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:161:31  */
  assign n380_o = level3_d1[3:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:161:43  */
  assign n382_o = n380_o != 4'b0000;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:161:61  */
  assign n383_o = ps_d1[2];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:161:52  */
  assign n384_o = n382_o & n383_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:161:70  */
  assign n385_o = n384_o | stk3_d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:161:16  */
  assign n386_o = n385_o ? 1'b1 : 1'b0;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:162:30  */
  assign n388_o = ps[2];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:162:33  */
  assign n389_o = ~n388_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:162:22  */
  assign n390_o = n389_o ? level3 : n393_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:162:74  */
  assign n391_o = level3[7:4];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:162:66  */
  assign n393_o = {4'b0000, n391_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:163:31  */
  assign n395_o = level2_d1[1:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:163:43  */
  assign n397_o = n395_o != 2'b00;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:163:59  */
  assign n398_o = ps_d1[1];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:163:50  */
  assign n399_o = n397_o & n398_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:163:68  */
  assign n400_o = n399_o | stk2;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:163:16  */
  assign n401_o = n400_o ? 1'b1 : 1'b0;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:164:30  */
  assign n403_o = ps[1];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:164:33  */
  assign n404_o = ~n403_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:164:22  */
  assign n405_o = n404_o ? level2 : n408_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:164:74  */
  assign n406_o = level2[7:2];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:164:66  */
  assign n408_o = {2'b00, n406_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:165:31  */
  assign n410_o = level1_d2[0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:165:43  */
  assign n412_o = n410_o != 1'b0;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:165:58  */
  assign n413_o = ps_d2[0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:165:49  */
  assign n414_o = n412_o & n413_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:165:67  */
  assign n415_o = n414_o | stk1_d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:165:16  */
  assign n416_o = n415_o ? 1'b1 : 1'b0;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:166:30  */
  assign n418_o = ps[0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:166:33  */
  assign n419_o = ~n418_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:166:22  */
  assign n420_o = n419_o ? level1 : n423_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:166:74  */
  assign n421_o = level1[7:1];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:166:66  */
  assign n423_o = {1'b0, n421_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:145:10  */
  always @(posedge clk)
    n424_q <= ps;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:145:10  */
  always @(posedge clk)
    n425_q <= ps_d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:145:10  */
  always @(posedge clk)
    n426_q <= stk3;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:145:10  */
  always @(posedge clk)
    n427_q <= level3;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:145:10  */
  always @(posedge clk)
    n428_q <= level2;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:145:10  */
  always @(posedge clk)
    n429_q <= stk1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:145:10  */
  always @(posedge clk)
    n430_q <= level1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:145:10  */
  always @(posedge clk)
    n431_q <= level1_d1;
endmodule

module normalizer_z_7_7_7_f300_uid666666666
  (input wire clk,
   input wire [6:0] x,
   output wire [2:0] count,
   output wire [6:0] r);
  wire [6:0] level3;
  wire [6:0] level3_d1;
  wire count2;
  wire [6:0] level2;
  wire count1;
  wire [6:0] level1;
  wire [6:0] level1_d1;
  wire count0;
  wire count0_d1;
  wire [6:0] level0;
  wire [2:0] scount;
  wire [3:0] n315_o;
  wire n317_o;
  wire n318_o;
  wire n320_o;
  wire [6:0] n321_o;
  wire [2:0] n322_o;
  wire [6:0] n324_o;
  wire [1:0] n326_o;
  wire n328_o;
  wire n329_o;
  wire n331_o;
  wire [6:0] n332_o;
  wire [4:0] n333_o;
  wire [6:0] n335_o;
  wire n337_o;
  wire n339_o;
  wire n340_o;
  wire n342_o;
  wire [6:0] n343_o;
  wire [5:0] n344_o;
  wire [6:0] n346_o;
  wire [1:0] n347_o;
  wire [2:0] n348_o;
  reg [6:0] n349_q;
  reg [6:0] n350_q;
  reg n351_q;
  assign count = scount;
  assign r = level0;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:69:8  */
  assign level3 = x; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:88:22  */
  assign level3_d1 = n349_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:70:8  */
  assign count2 = n318_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:91:19  */
  assign level2 = n321_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:72:8  */
  assign count1 = n329_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:73:8  */
  assign level1 = n332_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:94:22  */
  assign level1_d1 = n350_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:74:8  */
  assign count0 = n340_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:74:16  */
  assign count0_d1 = n351_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:75:8  */
  assign level0 = n343_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:76:8  */
  assign scount = n348_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:87:31  */
  assign n315_o = level3_d1[6:3];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:87:44  */
  assign n317_o = n315_o == 4'b0000;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:87:17  */
  assign n318_o = n317_o ? 1'b1 : 1'b0;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:88:46  */
  assign n320_o = ~count2;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:88:35  */
  assign n321_o = n320_o ? level3_d1 : n324_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:88:65  */
  assign n322_o = level3_d1[2:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:88:78  */
  assign n324_o = {n322_o, 4'b0000};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:90:28  */
  assign n326_o = level2[6:5];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:90:41  */
  assign n328_o = n326_o == 2'b00;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:90:17  */
  assign n329_o = n328_o ? 1'b1 : 1'b0;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:91:43  */
  assign n331_o = ~count1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:91:32  */
  assign n332_o = n331_o ? level2 : n335_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:91:59  */
  assign n333_o = level2[4:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:91:72  */
  assign n335_o = {n333_o, 2'b00};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:93:28  */
  assign n337_o = level1[6];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:93:41  */
  assign n339_o = n337_o == 1'b0;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:93:17  */
  assign n340_o = n339_o ? 1'b1 : 1'b0;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:94:49  */
  assign n342_o = ~count0_d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:94:35  */
  assign n343_o = n342_o ? level1_d1 : n346_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:94:68  */
  assign n344_o = level1_d1[5:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:94:81  */
  assign n346_o = {n344_o, 1'b0};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:97:21  */
  assign n347_o = {count2, count1};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:97:30  */
  assign n348_o = {n347_o, count0};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:80:10  */
  always @(posedge clk)
    n349_q <= level3;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:80:10  */
  always @(posedge clk)
    n350_q <= level1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:80:10  */
  always @(posedge clk)
    n351_q <= count0;
endmodule

module intdualsub_8_f300_uid444444444444
  (input wire clk,
   input wire [7:0] x,
   input wire [7:0] y,
   output wire [7:0] xmy,
   output wire [7:0] ymx);
  wire [7:0] temprxmy;
  wire [7:0] temprymx;
  wire [7:0] n295_o;
  wire [7:0] n296_o;
  wire [7:0] n299_o;
  wire [7:0] n300_o;
  wire [7:0] n301_o;
  wire [7:0] n304_o;
  assign xmy = temprxmy;
  assign ymx = temprymx;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:31:8  */
  assign temprxmy = n299_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:32:8  */
  assign temprymx = n304_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:34:21  */
  assign n295_o = ~y;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:34:18  */
  assign n296_o = x + n295_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:34:28  */
  assign n299_o = n296_o + 8'b00000001;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:35:21  */
  assign n300_o = ~x;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:35:18  */
  assign n301_o = y + n300_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:35:28  */
  assign n304_o = n301_o + 8'b00000001;
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
  wire [4:0] signedexponentx;
  wire [4:0] signedexponenty;
  wire [4:0] exponentdifferencexy;
  wire [3:0] exponentdifferenceyx;
  wire swap;
  wire [11:0] my;
  wire [11:0] newx;
  wire [11:0] newx_d1;
  wire [11:0] newy;
  wire [3:0] exponentdifference;
  wire [3:0] shiftval;
  wire effsub;
  wire effsub_d1;
  wire effsub_d2;
  wire selectclosepath;
  wire selectclosepath_d1;
  wire selectclosepath_d2;
  wire [3:0] sdexnxy;
  wire pipesigny;
  wire [7:0] fracxclose1;
  wire [7:0] fracyclose1;
  wire [7:0] fracrclosexmy;
  wire [7:0] fracrcloseymx;
  wire fracsignclose;
  wire [6:0] fracrclose1;
  wire ressign;
  wire [2:0] nzerosnew;
  wire [6:0] shiftedfrac;
  wire roundclose0;
  wire resultcloseiszero0;
  wire [5:0] exponentresultclose;
  wire [5:0] exponentresultclose_d1;
  wire [10:0] resultbeforeroundclose;
  wire roundclose;
  wire resultcloseiszero;
  wire [5:0] fracnewy;
  wire [7:0] shiftedfracy;
  wire sticky;
  wire [8:0] fracyfar;
  wire [8:0] effsubvector;
  wire [8:0] fracyfarxorop;
  wire [8:0] fracxfar;
  wire cinaddfar;
  wire [8:0] fracresultfar0;
  wire [8:0] fracresultfarnormstage;
  wire [1:0] fracleadingbits;
  wire [4:0] fracresultfar1;
  wire fracresultroundbit;
  wire fracresultstickybit;
  wire roundfar1;
  wire [1:0] expoperationsel;
  wire [5:0] exponentupdate;
  wire [5:0] exponentresultfar0;
  wire [5:0] exponentresultfar0_d1;
  wire [5:0] exponentresultfar0_d2;
  wire [5:0] exponentresultfar1;
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
  wire [8:0] n54_o;
  wire [11:0] n55_o;
  wire [11:0] n56_o;
  wire [11:0] n57_o;
  wire [3:0] n58_o;
  wire [3:0] n59_o;
  wire n61_o;
  wire n62_o;
  wire n63_o;
  wire [2:0] n64_o;
  wire n66_o;
  wire n67_o;
  wire [1:0] n69_o;
  wire [1:0] n70_o;
  wire [3:0] n71_o;
  wire n72_o;
  wire [4:0] n73_o;
  wire [6:0] n75_o;
  wire [7:0] n77_o;
  wire n78_o;
  wire [4:0] n79_o;
  wire [6:0] n81_o;
  wire [7:0] n83_o;
  wire n85_o;
  wire [4:0] n86_o;
  wire [7:0] n88_o;
  reg [7:0] n89_o;
  wire [7:0] fpsub_4_5_f300_uid2_dualsubclose_n90;
  wire [7:0] fpsub_4_5_f300_uid2_dualsubclose_n91;
  wire [7:0] fpsub_4_5_f300_uid2_dualsubclose_xmy;
  wire [7:0] fpsub_4_5_f300_uid2_dualsubclose_ymx;
  wire n96_o;
  wire [6:0] n97_o;
  wire n98_o;
  wire [6:0] n99_o;
  wire [6:0] n100_o;
  wire n103_o;
  wire n104_o;
  wire n105_o;
  wire n106_o;
  wire n107_o;
  wire n108_o;
  wire [2:0] norm_n109;
  wire [6:0] norm_n110;
  wire [2:0] norm_count;
  wire [6:0] norm_r;
  wire n115_o;
  wire n116_o;
  wire n117_o;
  wire n120_o;
  wire n121_o;
  wire [3:0] n123_o;
  wire [5:0] n125_o;
  wire [5:0] n127_o;
  wire [5:0] n128_o;
  wire [4:0] n129_o;
  wire [10:0] n130_o;
  wire [4:0] n131_o;
  wire [5:0] n133_o;
  wire [7:0] rightshiftercomponent_n134;
  wire rightshiftercomponent_n135;
  wire [7:0] rightshiftercomponent_r;
  wire rightshiftercomponent_sticky;
  wire [8:0] n141_o;
  wire [3:0] n142_o;
  wire [3:0] n143_o;
  wire [8:0] n144_o;
  wire [8:0] n145_o;
  wire [4:0] n146_o;
  wire [6:0] n148_o;
  wire [8:0] n150_o;
  wire n151_o;
  wire n152_o;
  wire [8:0] fpsub_4_5_f300_uid2_fracaddfar_n153;
  wire [8:0] fpsub_4_5_f300_uid2_fracaddfar_r;
  wire [1:0] n156_o;
  wire [4:0] n157_o;
  wire n159_o;
  wire [4:0] n160_o;
  wire [4:0] n161_o;
  wire n163_o;
  wire [4:0] n164_o;
  wire [4:0] n165_o;
  wire n166_o;
  wire n168_o;
  wire n169_o;
  wire n170_o;
  wire n172_o;
  wire n173_o;
  wire n174_o;
  wire n176_o;
  wire n177_o;
  wire n178_o;
  wire n179_o;
  wire n181_o;
  wire n182_o;
  wire n183_o;
  wire n184_o;
  wire n185_o;
  wire n186_o;
  wire n187_o;
  wire n188_o;
  wire n189_o;
  wire n192_o;
  wire [1:0] n193_o;
  wire n196_o;
  wire [1:0] n197_o;
  wire n199_o;
  wire n200_o;
  wire n201_o;
  wire n202_o;
  wire n203_o;
  wire [3:0] n204_o;
  wire [4:0] n205_o;
  wire n206_o;
  wire [5:0] n207_o;
  wire [3:0] n208_o;
  wire [5:0] n210_o;
  wire [5:0] n211_o;
  wire [10:0] n212_o;
  wire n214_o;
  reg [10:0] n215_o;
  wire n217_o;
  reg n218_o;
  wire n219_o;
  localparam [10:0] n220_o = 11'b00000000000;
  wire [10:0] fpsub_4_5_f300_uid2_finalroundadd_n221;
  wire [10:0] fpsub_4_5_f300_uid2_finalroundadd_r;
  wire [1:0] n224_o;
  wire n225_o;
  wire [1:0] n227_o;
  wire n229_o;
  wire n232_o;
  wire n234_o;
  wire n235_o;
  wire n236_o;
  wire [1:0] n238_o;
  wire [1:0] n239_o;
  reg [1:0] n240_o;
  wire [8:0] n241_o;
  wire [9:0] n242_o;
  wire [1:0] n243_o;
  wire n245_o;
  wire [1:0] n247_o;
  wire n249_o;
  wire n252_o;
  wire [1:0] n253_o;
  wire [2:0] n254_o;
  reg [1:0] n255_o;
  wire n256_o;
  wire n258_o;
  wire n259_o;
  wire n260_o;
  wire n262_o;
  wire n263_o;
  wire [1:0] n264_o;
  reg n265_o;
  wire [8:0] n266_o;
  wire n268_o;
  wire [8:0] n269_o;
  reg [8:0] n270_o;
  wire [2:0] n271_o;
  wire [11:0] n272_o;
  reg [11:0] n273_q;
  reg n274_q;
  reg n275_q;
  reg n276_q;
  reg n277_q;
  reg [5:0] n278_q;
  reg [5:0] n279_q;
  reg [5:0] n280_q;
  reg n281_q;
  reg n282_q;
  reg n283_q;
  reg [11:0] n284_q;
  reg [11:0] n285_q;
  reg n286_q;
  reg n287_q;
  reg n288_q;
  reg n289_q;
  wire [11:0] n290_o;
  reg [3:0] n291_q;
  reg [3:0] n292_q;
  assign R = n272_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:331:8  */
  assign inx = X; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:332:8  */
  assign iny = Y; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:333:8  */
  assign exceptionxsuperiory = n28_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:334:8  */
  assign exceptionxequaly = n34_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:335:8  */
  assign signedexponentx = n38_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:336:8  */
  assign signedexponenty = n41_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:337:8  */
  assign exponentdifferencexy = n42_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:338:8  */
  assign exponentdifferenceyx = n45_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:339:8  */
  assign swap = n49_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:340:8  */
  assign my = n55_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:341:8  */
  assign newx = n56_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:341:14  */
  assign newx_d1 = n273_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:342:8  */
  assign newy = n57_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:343:8  */
  assign exponentdifference = n58_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:345:8  */
  assign shiftval = exponentdifference; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:346:8  */
  assign effsub = n63_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:346:16  */
  assign effsub_d1 = n274_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:346:27  */
  assign effsub_d2 = n275_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:347:8  */
  assign selectclosepath = n67_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:347:25  */
  assign selectclosepath_d1 = n276_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:347:45  */
  assign selectclosepath_d2 = n277_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:348:8  */
  assign sdexnxy = n71_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:349:8  */
  assign pipesigny = n72_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:350:8  */
  assign fracxclose1 = n77_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:351:8  */
  assign fracyclose1 = n89_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:352:8  */
  assign fracrclosexmy = fpsub_4_5_f300_uid2_dualsubclose_n90; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:353:8  */
  assign fracrcloseymx = fpsub_4_5_f300_uid2_dualsubclose_n91; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:354:8  */
  assign fracsignclose = n96_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:355:8  */
  assign fracrclose1 = n99_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:356:8  */
  assign ressign = n105_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:357:8  */
  assign nzerosnew = norm_n109; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:358:8  */
  assign shiftedfrac = norm_n110; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:359:8  */
  assign roundclose0 = n117_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:360:8  */
  assign resultcloseiszero0 = n121_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:361:8  */
  assign exponentresultclose = n128_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:469:52  */
  assign exponentresultclose_d1 = n278_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:362:8  */
  assign resultbeforeroundclose = n130_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:363:8  */
  assign roundclose = roundclose0; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:364:8  */
  assign resultcloseiszero = resultcloseiszero0; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:365:8  */
  assign fracnewy = n133_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:366:8  */
  assign shiftedfracy = rightshiftercomponent_n134; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:367:8  */
  assign sticky = rightshiftercomponent_n135; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:368:8  */
  assign fracyfar = n141_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:369:8  */
  assign effsubvector = n144_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:370:8  */
  assign fracyfarxorop = n145_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:371:8  */
  assign fracxfar = n150_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:372:8  */
  assign cinaddfar = n152_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:373:8  */
  assign fracresultfar0 = fpsub_4_5_f300_uid2_fracaddfar_n153; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:374:8  */
  assign fracresultfarnormstage = fracresultfar0; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:375:8  */
  assign fracleadingbits = n156_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:376:8  */
  assign fracresultfar1 = n160_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:377:8  */
  assign fracresultroundbit = n169_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:378:8  */
  assign fracresultstickybit = n177_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:379:8  */
  assign roundfar1 = n189_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:380:8  */
  assign expoperationsel = n193_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:381:8  */
  assign exponentupdate = n207_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:382:8  */
  assign exponentresultfar0 = n210_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:382:28  */
  assign exponentresultfar0_d1 = n279_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:382:51  */
  assign exponentresultfar0_d2 = n280_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:383:8  */
  assign exponentresultfar1 = n211_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:384:8  */
  assign resultbeforeroundfar = n212_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:385:8  */
  assign roundfar = roundfar1; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:386:8  */
  assign resultbeforeround = n215_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:387:8  */
  assign round = n218_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:388:8  */
  assign zerofromclose = n219_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:388:23  */
  assign zerofromclose_d1 = n281_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:389:8  */
  assign resultrounded = fpsub_4_5_f300_uid2_finalroundadd_n221; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:390:8  */
  assign synceffsub = effsub; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:390:20  */
  assign synceffsub_d1 = n282_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:390:35  */
  assign synceffsub_d2 = n283_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:391:8  */
  assign syncx = newx; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:391:15  */
  assign syncx_d1 = n284_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:391:25  */
  assign syncx_d2 = n285_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:392:8  */
  assign syncsigny = pipesigny; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:392:19  */
  assign syncsigny_d1 = n286_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:392:33  */
  assign syncsigny_d2 = n287_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:393:8  */
  assign syncressign = ressign; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:393:21  */
  assign syncressign_d1 = n288_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:393:37  */
  assign syncressign_d2 = n289_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:394:8  */
  assign underflowoverflow = n224_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:395:8  */
  assign resultnoexn = n290_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:396:8  */
  assign syncexnxy = sdexnxy; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:396:19  */
  assign syncexnxy_d1 = n291_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:396:33  */
  assign syncexnxy_d2 = n292_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:397:8  */
  assign exnr = n255_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:398:8  */
  assign sgnr = n265_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:399:8  */
  assign expsigr = n270_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:428:39  */
  assign n25_o = inx[11:10];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:428:60  */
  assign n26_o = iny[11:10];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:428:54  */
  assign n27_o = $unsigned(n25_o) >= $unsigned(n26_o);
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:428:31  */
  assign n28_o = n27_o ? 1'b1 : 1'b0;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:429:36  */
  assign n31_o = inx[11:10];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:429:56  */
  assign n32_o = iny[11:10];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:429:51  */
  assign n33_o = n31_o == n32_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:429:28  */
  assign n34_o = n33_o ? 1'b1 : 1'b0;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:430:32  */
  assign n36_o = inx[8:5];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:430:27  */
  assign n38_o = {1'b0, n36_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:431:32  */
  assign n39_o = iny[8:5];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:431:27  */
  assign n41_o = {1'b0, n39_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:432:44  */
  assign n42_o = signedexponentx - signedexponenty;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:433:43  */
  assign n43_o = signedexponenty[3:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:433:73  */
  assign n44_o = signedexponentx[3:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:433:56  */
  assign n45_o = n43_o - n44_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:434:54  */
  assign n46_o = exponentdifferencexy[4];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:434:30  */
  assign n47_o = exceptionxequaly & n46_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:434:63  */
  assign n48_o = ~exceptionxsuperiory;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:434:59  */
  assign n49_o = n47_o | n48_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:435:13  */
  assign n50_o = iny[11:10];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:435:37  */
  assign n51_o = iny[9];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:435:30  */
  assign n52_o = ~n51_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:435:28  */
  assign n53_o = {n50_o, n52_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:435:47  */
  assign n54_o = iny[8:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:435:42  */
  assign n55_o = {n53_o, n54_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:436:15  */
  assign n56_o = swap ? my : inx;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:437:16  */
  assign n57_o = swap ? inx : my;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:438:47  */
  assign n58_o = swap ? exponentdifferenceyx : n59_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:438:88  */
  assign n59_o = exponentdifferencexy[3:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:441:18  */
  assign n61_o = newx[9];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:441:30  */
  assign n62_o = newy[9];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:441:22  */
  assign n63_o = n61_o ^ n62_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:442:53  */
  assign n64_o = exponentdifference[3:1];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:442:66  */
  assign n66_o = n64_o == 3'b000;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:442:30  */
  assign n67_o = n66_o ? effsub : 1'b0;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:443:19  */
  assign n69_o = newx[11:10];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:443:40  */
  assign n70_o = newy[11:10];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:443:34  */
  assign n71_o = {n69_o, n70_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:444:21  */
  assign n72_o = newy[9];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:447:30  */
  assign n73_o = newx[4:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:447:24  */
  assign n75_o = {2'b01, n73_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:447:43  */
  assign n77_o = {n75_o, 1'b0};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:448:27  */
  assign n78_o = exponentdifference[0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:449:31  */
  assign n79_o = newy[4:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:449:25  */
  assign n81_o = {2'b01, n79_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:449:44  */
  assign n83_o = {n81_o, 1'b0};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:449:50  */
  assign n85_o = n78_o == 1'b0;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:450:31  */
  assign n86_o = newy[4:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:450:25  */
  assign n88_o = {3'b001, n86_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:448:4  */
  always @*
    case (n85_o)
      1'b1: n89_o = n83_o;
      default: n89_o = n88_o;
    endcase
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:455:25  */
  assign fpsub_4_5_f300_uid2_dualsubclose_n90 = fpsub_4_5_f300_uid2_dualsubclose_xmy; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:456:25  */
  assign fpsub_4_5_f300_uid2_dualsubclose_n91 = fpsub_4_5_f300_uid2_dualsubclose_ymx; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:451:4  */
  intdualsub_8_f300_uid444444444444 fpsub_4_5_f300_uid2_dualsubclose (
    .clk(clk),
    .x(fracxclose1),
    .y(fracyclose1),
    .xmy(fpsub_4_5_f300_uid2_dualsubclose_xmy),
    .ymx(fpsub_4_5_f300_uid2_dualsubclose_ymx));
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:457:34  */
  assign n96_o = fracrclosexmy[7];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:458:32  */
  assign n97_o = fracrclosexmy[6:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:458:63  */
  assign n98_o = ~fracsignclose;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:458:45  */
  assign n99_o = n98_o ? n97_o : n100_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:458:86  */
  assign n100_o = fracrcloseymx[6:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:459:60  */
  assign n103_o = fracrclose1 == 7'b0000000;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:459:44  */
  assign n104_o = selectclosepath & n103_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:459:19  */
  assign n105_o = n104_o ? 1'b0 : n108_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:460:18  */
  assign n106_o = newx[9];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:460:43  */
  assign n107_o = selectclosepath & fracsignclose;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:460:22  */
  assign n108_o = n106_o ^ n107_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:464:27  */
  assign norm_n109 = norm_count; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:465:23  */
  assign norm_n110 = norm_r; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:461:4  */
  normalizer_z_7_7_7_f300_uid666666666 norm (
    .clk(clk),
    .x(fracrclose1),
    .count(norm_count),
    .r(norm_r));
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:466:30  */
  assign n115_o = shiftedfrac[0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:466:49  */
  assign n116_o = shiftedfrac[1];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:466:34  */
  assign n117_o = n115_o & n116_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:467:45  */
  assign n120_o = nzerosnew == 3'b111;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:467:30  */
  assign n121_o = n120_o ? 1'b1 : 1'b0;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:468:42  */
  assign n123_o = newx_d1[8:5];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:468:33  */
  assign n125_o = {2'b00, n123_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:468:86  */
  assign n127_o = {3'b000, nzerosnew};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:468:56  */
  assign n128_o = n125_o - n127_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:469:78  */
  assign n129_o = shiftedfrac[5:1];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:469:65  */
  assign n130_o = {exponentresultclose_d1, n129_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:474:26  */
  assign n131_o = newy[4:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:474:20  */
  assign n133_o = {1'b1, n131_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:479:23  */
  assign rightshiftercomponent_n134 = rightshiftercomponent_r; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:480:28  */
  assign rightshiftercomponent_n135 = rightshiftercomponent_sticky; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:475:4  */
  rightshiftersticky6_by_max_8_f300_uid88888888 rightshiftercomponent (
    .clk(clk),
    .x(fracnewy),
    .s(shiftval),
    .r(rightshiftercomponent_r),
    .sticky(rightshiftercomponent_sticky));
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:481:20  */
  assign n141_o = {1'b0, shiftedfracy};
  assign n142_o = {effsub, effsub, effsub, effsub};
  assign n143_o = {effsub, effsub, effsub, effsub};
  assign n144_o = {n142_o, n143_o, effsub};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:483:30  */
  assign n145_o = fracyfar ^ effsubvector;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:484:28  */
  assign n146_o = newx[4:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:484:21  */
  assign n148_o = {2'b01, n146_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:484:42  */
  assign n150_o = {n148_o, 2'b00};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:485:31  */
  assign n151_o = ~sticky;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:485:27  */
  assign n152_o = effsub_d2 & n151_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:491:23  */
  assign fpsub_4_5_f300_uid2_fracaddfar_n153 = fpsub_4_5_f300_uid2_fracaddfar_r; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:486:4  */
  intadder_9_f300_uid100000 fpsub_4_5_f300_uid2_fracaddfar (
    .clk(clk),
    .x(fracxfar),
    .y(fracyfarxorop),
    .cin(cinaddfar),
    .r(fpsub_4_5_f300_uid2_fracaddfar_r));
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:494:45  */
  assign n156_o = fracresultfarnormstage[8:7];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:496:34  */
  assign n157_o = fracresultfarnormstage[5:1];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:496:69  */
  assign n159_o = fracleadingbits == 2'b00;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:496:48  */
  assign n160_o = n159_o ? n157_o : n164_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:497:34  */
  assign n161_o = fracresultfarnormstage[6:2];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:497:69  */
  assign n163_o = fracleadingbits == 2'b01;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:497:7  */
  assign n164_o = n163_o ? n161_o : n165_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:498:34  */
  assign n165_o = fracresultfarnormstage[7:3];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:500:34  */
  assign n166_o = fracresultfarnormstage[0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:500:63  */
  assign n168_o = fracleadingbits == 2'b00;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:500:42  */
  assign n169_o = n168_o ? n166_o : n173_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:501:34  */
  assign n170_o = fracresultfarnormstage[1];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:501:62  */
  assign n172_o = fracleadingbits == 2'b01;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:501:7  */
  assign n173_o = n172_o ? n170_o : n174_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:502:34  */
  assign n174_o = fracresultfarnormstage[2];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:504:47  */
  assign n176_o = fracleadingbits == 2'b00;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:504:26  */
  assign n177_o = n176_o ? sticky : n182_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:505:34  */
  assign n178_o = fracresultfarnormstage[0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:505:38  */
  assign n179_o = n178_o | sticky;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:505:72  */
  assign n181_o = fracleadingbits == 2'b01;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:505:7  */
  assign n182_o = n181_o ? n179_o : n186_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:506:34  */
  assign n183_o = fracresultfarnormstage[1];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:506:63  */
  assign n184_o = fracresultfarnormstage[0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:506:38  */
  assign n185_o = n183_o | n184_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:506:67  */
  assign n186_o = n185_o | sticky;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:507:78  */
  assign n187_o = fracresultfar1[0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:507:61  */
  assign n188_o = fracresultstickybit | n187_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:507:36  */
  assign n189_o = fracresultroundbit & n188_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:508:49  */
  assign n192_o = fracleadingbits == 2'b00;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:508:28  */
  assign n193_o = n192_o ? 2'b11 : n197_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:509:49  */
  assign n196_o = fracleadingbits == 2'b01;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:509:16  */
  assign n197_o = n196_o ? 2'b00 : 2'b01;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:511:52  */
  assign n199_o = expoperationsel[1];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:511:52  */
  assign n200_o = expoperationsel[1];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:511:52  */
  assign n201_o = expoperationsel[1];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:511:52  */
  assign n202_o = expoperationsel[1];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:511:52  */
  assign n203_o = expoperationsel[1];
  assign n204_o = {n203_o, n202_o, n201_o, n200_o};
  assign n205_o = {n204_o, n199_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:511:74  */
  assign n206_o = expoperationsel[0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:511:57  */
  assign n207_o = {n205_o, n206_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:512:36  */
  assign n208_o = newx[8:5];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:512:29  */
  assign n210_o = {2'b00, n208_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:513:48  */
  assign n211_o = exponentresultfar0_d2 + exponentupdate;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:514:47  */
  assign n212_o = {exponentresultfar1, fracresultfar1};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:519:48  */
  assign n214_o = selectclosepath_d2 == 1'b1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:518:4  */
  always @*
    case (n214_o)
      1'b1: n215_o = resultbeforeroundclose;
      default: n215_o = resultbeforeroundfar;
    endcase
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:522:24  */
  assign n217_o = selectclosepath_d2 == 1'b1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:521:4  */
  always @*
    case (n217_o)
      1'b1: n218_o = roundclose;
      default: n218_o = roundfar;
    endcase
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:524:40  */
  assign n219_o = selectclosepath_d1 & resultcloseiszero;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:532:23  */
  assign fpsub_4_5_f300_uid2_finalroundadd_n221 = fpsub_4_5_f300_uid2_finalroundadd_r; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:527:4  */
  intadder_11_f300_uid1333333 fpsub_4_5_f300_uid2_finalroundadd (
    .clk(clk),
    .x(resultbeforeround),
    .y(n220_o),
    .cin(round),
    .r(fpsub_4_5_f300_uid2_finalroundadd_r));
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:537:38  */
  assign n224_o = resultrounded[10:9];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:539:36  */
  assign n225_o = ~zerofromclose_d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:539:58  */
  assign n227_o = {n225_o, 1'b0};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:539:64  */
  assign n229_o = underflowoverflow == 2'b01;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:540:39  */
  assign n232_o = underflowoverflow == 2'b10;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:540:49  */
  assign n234_o = underflowoverflow == 2'b11;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:540:49  */
  assign n235_o = n232_o | n234_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:541:41  */
  assign n236_o = ~zerofromclose_d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:541:38  */
  assign n238_o = {1'b0, n236_o};
  assign n239_o = {n235_o, n229_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:538:4  */
  always @*
    case (n239_o)
      2'b10: n240_o = 2'b00;
      2'b01: n240_o = n227_o;
      default: n240_o = n238_o;
    endcase
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:542:61  */
  assign n241_o = resultrounded[8:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:542:46  */
  assign n242_o = {syncressign_d2, n241_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:546:26  */
  assign n243_o = resultnoexn[11:10];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:546:41  */
  assign n245_o = syncexnxy_d2 == 4'b0101;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:547:19  */
  assign n247_o = {1'b1, synceffsub_d2};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:547:44  */
  assign n249_o = syncexnxy_d2 == 4'b1010;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:548:41  */
  assign n252_o = syncexnxy_d2 == 4'b1110;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:549:27  */
  assign n253_o = syncexnxy_d2[3:2];
  assign n254_o = {n252_o, n249_o, n245_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:545:4  */
  always @*
    case (n254_o)
      3'b100: n255_o = 2'b11;
      3'b010: n255_o = n247_o;
      3'b001: n255_o = n243_o;
      default: n255_o = n253_o;
    endcase
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:552:26  */
  assign n256_o = resultnoexn[9];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:552:38  */
  assign n258_o = syncexnxy_d2 == 4'b0101;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:553:23  */
  assign n259_o = syncx_d2[9];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:553:27  */
  assign n260_o = n259_o & syncsigny_d2;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:553:44  */
  assign n262_o = syncexnxy_d2 == 4'b0000;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:554:23  */
  assign n263_o = syncx_d2[9];
  assign n264_o = {n262_o, n258_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:551:4  */
  always @*
    case (n264_o)
      2'b10: n265_o = n260_o;
      2'b01: n265_o = n256_o;
      default: n265_o = n263_o;
    endcase
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:557:29  */
  assign n266_o = resultnoexn[8:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:557:44  */
  assign n268_o = syncexnxy_d2 == 4'b0101;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:558:26  */
  assign n269_o = syncx_d2[8:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:556:4  */
  always @*
    case (n268_o)
      1'b1: n270_o = n266_o;
      default: n270_o = n269_o;
    endcase
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:559:14  */
  assign n271_o = {exnr, sgnr};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:559:21  */
  assign n272_o = {n271_o, expsigr};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:403:10  */
  always @(posedge clk)
    n273_q <= newx;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:403:10  */
  always @(posedge clk)
    n274_q <= effsub;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:403:10  */
  always @(posedge clk)
    n275_q <= effsub_d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:403:10  */
  always @(posedge clk)
    n276_q <= selectclosepath;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:403:10  */
  always @(posedge clk)
    n277_q <= selectclosepath_d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:403:10  */
  always @(posedge clk)
    n278_q <= exponentresultclose;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:403:10  */
  always @(posedge clk)
    n279_q <= exponentresultfar0;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:403:10  */
  always @(posedge clk)
    n280_q <= exponentresultfar0_d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:403:10  */
  always @(posedge clk)
    n281_q <= zerofromclose;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:403:10  */
  always @(posedge clk)
    n282_q <= synceffsub;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:403:10  */
  always @(posedge clk)
    n283_q <= synceffsub_d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:403:10  */
  always @(posedge clk)
    n284_q <= syncx;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:403:10  */
  always @(posedge clk)
    n285_q <= syncx_d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:403:10  */
  always @(posedge clk)
    n286_q <= syncsigny;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:403:10  */
  always @(posedge clk)
    n287_q <= syncsigny_d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:403:10  */
  always @(posedge clk)
    n288_q <= syncressign;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:403:10  */
  always @(posedge clk)
    n289_q <= syncressign_d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:403:10  */
  assign n290_o = {n240_o, n242_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:403:10  */
  always @(posedge clk)
    n291_q <= syncexnxy;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_5.vhdl:403:10  */
  always @(posedge clk)
    n292_q <= syncexnxy_d1;
endmodule

