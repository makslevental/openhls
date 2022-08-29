module intadder_10_f300_uid1333
  (input wire  clk,
   input wire  [9:0] x,
   input wire  [9:0] y,
   input wire  cin,
   output wire [9:0] r);
  wire [9:0] rtmp;
  wire [9:0] y_d1;
  wire [9:0] y_d2;
  wire [9:0] n443_o;
  wire [9:0] n444_o;
  wire [9:0] n445_o;
  reg [9:0] n446_q;
  reg [9:0] n447_q;
  assign r = rtmp;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:243:8  */
  assign rtmp = n445_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:244:8  */
  assign y_d1 = n446_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:244:14  */
  assign y_d2 = n447_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:253:14  */
  assign n443_o = x + y_d2;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:253:21  */
  assign n444_o = {9'b0, cin};  //  uext
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:253:21  */
  assign n445_o = n443_o + n444_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:248:10  */
  always @(posedge clk)
    n446_q <= y;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:248:10  */
  always @(posedge clk)
    n447_q <= y_d1;
endmodule

module intadder_7_f300_uid10
  (input wire  clk,
   input wire  [6:0] x,
   input wire  [6:0] y,
   input wire  cin,
   output wire [6:0] r);
  wire [6:0] rtmp;
  wire [6:0] x_d1;
  wire [6:0] x_d2;
  wire [6:0] y_d1;
  wire [6:0] y_d2;
  wire [6:0] n429_o;
  wire [6:0] n430_o;
  wire [6:0] n431_o;
  reg [6:0] n432_q;
  reg [6:0] n433_q;
  reg [6:0] n434_q;
  reg [6:0] n435_q;
  assign r = rtmp;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:196:8  */
  assign rtmp = n431_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:197:8  */
  assign x_d1 = n432_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:197:14  */
  assign x_d2 = n433_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:198:8  */
  assign y_d1 = n434_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:198:14  */
  assign y_d2 = n435_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:209:17  */
  assign n429_o = x_d2 + y_d2;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:209:24  */
  assign n430_o = {6'b0, cin};  //  uext
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:209:24  */
  assign n431_o = n429_o + n430_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:202:10  */
  always @(posedge clk)
    n432_q <= x;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:202:10  */
  always @(posedge clk)
    n433_q <= x_d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:202:10  */
  always @(posedge clk)
    n434_q <= y;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:202:10  */
  always @(posedge clk)
    n435_q <= y_d1;
endmodule

module rightshiftersticky4_by_max_6_f300_uid8
  (input wire  clk,
   input wire  [3:0] x,
   input wire  [2:0] s,
   output wire [5:0] r,
   output wire sticky);
  wire [2:0] ps;
  wire [2:0] ps_d1;
  wire [2:0] ps_d2;
  wire [5:0] xpadded;
  wire [5:0] level3;
  wire [5:0] level3_d1;
  wire stk2;
  wire [5:0] level2;
  wire [5:0] level2_d1;
  wire stk1;
  wire stk1_d1;
  wire [5:0] level1;
  wire [5:0] level1_d1;
  wire [5:0] level1_d2;
  wire stk0;
  wire [5:0] level0;
  wire [5:0] n368_o;
  wire [3:0] n370_o;
  wire n372_o;
  wire n373_o;
  wire n374_o;
  wire n375_o;
  wire n377_o;
  wire n378_o;
  wire [5:0] n379_o;
  wire [1:0] n380_o;
  wire [5:0] n382_o;
  wire [1:0] n384_o;
  wire n386_o;
  wire n387_o;
  wire n388_o;
  wire n389_o;
  wire n390_o;
  wire n392_o;
  wire n393_o;
  wire [5:0] n394_o;
  wire [3:0] n395_o;
  wire [5:0] n397_o;
  wire n399_o;
  wire n401_o;
  wire n402_o;
  wire n403_o;
  wire n404_o;
  wire n405_o;
  wire n407_o;
  wire n408_o;
  wire [5:0] n409_o;
  wire [4:0] n410_o;
  wire [5:0] n412_o;
  reg [2:0] n413_q;
  reg [2:0] n414_q;
  reg [5:0] n415_q;
  reg [5:0] n416_q;
  reg n417_q;
  reg [5:0] n418_q;
  reg [5:0] n419_q;
  assign r = level0;
  assign sticky = stk0;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:131:8  */
  assign ps = s; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:131:12  */
  assign ps_d1 = n413_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:131:19  */
  assign ps_d2 = n414_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:132:8  */
  assign xpadded = n368_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:133:8  */
  assign level3 = xpadded; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:133:16  */
  assign level3_d1 = n415_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:134:8  */
  assign stk2 = n375_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:135:8  */
  assign level2 = n379_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:135:16  */
  assign level2_d1 = n416_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:136:8  */
  assign stk1 = n390_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:136:14  */
  assign stk1_d1 = n417_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:137:8  */
  assign level1 = n394_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:137:16  */
  assign level1_d1 = n418_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:137:27  */
  assign level1_d2 = n419_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:138:8  */
  assign stk0 = n405_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:139:8  */
  assign level0 = n409_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:154:16  */
  assign n368_o = {x, 2'b00};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:156:31  */
  assign n370_o = level3_d1[3:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:156:43  */
  assign n372_o = n370_o != 4'b0000;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:156:61  */
  assign n373_o = ps_d1[2];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:156:52  */
  assign n374_o = n372_o & n373_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:156:16  */
  assign n375_o = n374_o ? 1'b1 : 1'b0;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:157:30  */
  assign n377_o = ps[2];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:157:33  */
  assign n378_o = ~n377_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:157:22  */
  assign n379_o = n378_o ? level3 : n382_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:157:74  */
  assign n380_o = level3[5:4];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:157:66  */
  assign n382_o = {4'b0000, n380_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:158:31  */
  assign n384_o = level2_d1[1:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:158:43  */
  assign n386_o = n384_o != 2'b00;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:158:59  */
  assign n387_o = ps_d1[1];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:158:50  */
  assign n388_o = n386_o & n387_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:158:68  */
  assign n389_o = n388_o | stk2;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:158:16  */
  assign n390_o = n389_o ? 1'b1 : 1'b0;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:159:30  */
  assign n392_o = ps[1];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:159:33  */
  assign n393_o = ~n392_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:159:22  */
  assign n394_o = n393_o ? level2 : n397_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:159:74  */
  assign n395_o = level2[5:2];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:159:66  */
  assign n397_o = {2'b00, n395_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:160:31  */
  assign n399_o = level1_d2[0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:160:43  */
  assign n401_o = n399_o != 1'b0;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:160:58  */
  assign n402_o = ps_d2[0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:160:49  */
  assign n403_o = n401_o & n402_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:160:67  */
  assign n404_o = n403_o | stk1_d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:160:16  */
  assign n405_o = n404_o ? 1'b1 : 1'b0;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:161:30  */
  assign n407_o = ps[0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:161:33  */
  assign n408_o = ~n407_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:161:22  */
  assign n409_o = n408_o ? level1 : n412_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:161:74  */
  assign n410_o = level1[5:1];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:161:66  */
  assign n412_o = {1'b0, n410_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:143:10  */
  always @(posedge clk)
    n413_q <= ps;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:143:10  */
  always @(posedge clk)
    n414_q <= ps_d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:143:10  */
  always @(posedge clk)
    n415_q <= level3;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:143:10  */
  always @(posedge clk)
    n416_q <= level2;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:143:10  */
  always @(posedge clk)
    n417_q <= stk1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:143:10  */
  always @(posedge clk)
    n418_q <= level1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:143:10  */
  always @(posedge clk)
    n419_q <= level1_d1;
endmodule

module normalizer_z_5_5_5_f300_uid6
  (input wire  clk,
   input wire  [4:0] x,
   output wire [2:0] count,
   output wire [4:0] r);
  wire [4:0] level3;
  wire [4:0] level3_d1;
  wire count2;
  wire [4:0] level2;
  wire count1;
  wire [4:0] level1;
  wire [4:0] level1_d1;
  wire count0;
  wire count0_d1;
  wire [4:0] level0;
  wire [2:0] scount;
  wire [3:0] n317_o;
  wire n319_o;
  wire n320_o;
  wire n322_o;
  wire [4:0] n323_o;
  wire n324_o;
  wire [4:0] n326_o;
  wire [1:0] n328_o;
  wire n330_o;
  wire n331_o;
  wire n333_o;
  wire [4:0] n334_o;
  wire [2:0] n335_o;
  wire [4:0] n337_o;
  wire n339_o;
  wire n341_o;
  wire n342_o;
  wire n344_o;
  wire [4:0] n345_o;
  wire [3:0] n346_o;
  wire [4:0] n348_o;
  wire [1:0] n349_o;
  wire [2:0] n350_o;
  reg [4:0] n351_q;
  reg [4:0] n352_q;
  reg n353_q;
  assign count = scount;
  assign r = level0;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:69:8  */
  assign level3 = x; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:88:22  */
  assign level3_d1 = n351_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:70:8  */
  assign count2 = n320_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:91:19  */
  assign level2 = n323_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:72:8  */
  assign count1 = n331_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:73:8  */
  assign level1 = n334_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:94:22  */
  assign level1_d1 = n352_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:74:8  */
  assign count0 = n342_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:74:16  */
  assign count0_d1 = n353_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:75:8  */
  assign level0 = n345_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:76:8  */
  assign scount = n350_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:87:31  */
  assign n317_o = level3_d1[4:1];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:87:44  */
  assign n319_o = n317_o == 4'b0000;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:87:17  */
  assign n320_o = n319_o ? 1'b1 : 1'b0;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:88:46  */
  assign n322_o = ~count2;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:88:35  */
  assign n323_o = n322_o ? level3_d1 : n326_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:88:65  */
  assign n324_o = level3_d1[0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:88:78  */
  assign n326_o = {n324_o, 4'b0000};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:90:28  */
  assign n328_o = level2[4:3];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:90:41  */
  assign n330_o = n328_o == 2'b00;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:90:17  */
  assign n331_o = n330_o ? 1'b1 : 1'b0;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:91:43  */
  assign n333_o = ~count1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:91:32  */
  assign n334_o = n333_o ? level2 : n337_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:91:59  */
  assign n335_o = level2[2:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:91:72  */
  assign n337_o = {n335_o, 2'b00};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:93:28  */
  assign n339_o = level1[4];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:93:41  */
  assign n341_o = n339_o == 1'b0;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:93:17  */
  assign n342_o = n341_o ? 1'b1 : 1'b0;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:94:49  */
  assign n344_o = ~count0_d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:94:35  */
  assign n345_o = n344_o ? level1_d1 : n348_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:94:68  */
  assign n346_o = level1_d1[3:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:94:81  */
  assign n348_o = {n346_o, 1'b0};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:97:21  */
  assign n349_o = {count2, count1};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:97:30  */
  assign n350_o = {n349_o, count0};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:80:10  */
  always @(posedge clk)
    n351_q <= level3;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:80:10  */
  always @(posedge clk)
    n352_q <= level1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:80:10  */
  always @(posedge clk)
    n353_q <= count0;
endmodule

module intdualsub_6_f300_uid4
  (input wire  clk,
   input wire  [5:0] x,
   input wire  [5:0] y,
   output wire [5:0] xmy,
   output wire [5:0] ymx);
  wire [5:0] temprxmy;
  wire [5:0] temprymx;
  wire [5:0] n297_o;
  wire [5:0] n298_o;
  wire [5:0] n301_o;
  wire [5:0] n302_o;
  wire [5:0] n303_o;
  wire [5:0] n306_o;
  assign xmy = temprxmy;
  assign ymx = temprymx;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:31:8  */
  assign temprxmy = n301_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:32:8  */
  assign temprymx = n306_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:34:21  */
  assign n297_o = ~y;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:34:18  */
  assign n298_o = x + n297_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:34:28  */
  assign n301_o = n298_o + 6'b000001;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:35:21  */
  assign n302_o = ~x;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:35:18  */
  assign n303_o = y + n302_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:35:28  */
  assign n306_o = n303_o + 6'b000001;
endmodule

module fadd #(parameter ID=1)
  (input wire  clk,
   input wire  [10:0] X,
   input wire  [10:0] Y,
   output wire [10:0] R);
  wire [10:0] inx;
  wire [10:0] iny;
  wire exceptionxsuperiory;
  wire exceptionxequaly;
  wire [5:0] signedexponentx;
  wire [5:0] signedexponenty;
  wire [5:0] exponentdifferencexy;
  wire [4:0] exponentdifferenceyx;
  wire swap;
  wire [10:0] newx;
  wire [10:0] newx_d1;
  wire [10:0] newy;
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
  wire [5:0] fracxclose1;
  wire [5:0] fracyclose1;
  wire [5:0] fracrclosexmy;
  wire [5:0] fracrcloseymx;
  wire fracsignclose;
  wire [4:0] fracrclose1;
  wire ressign;
  wire [2:0] nzerosnew;
  wire [4:0] shiftedfrac;
  wire roundclose0;
  wire resultcloseiszero0;
  wire [6:0] exponentresultclose;
  wire [6:0] exponentresultclose_d1;
  wire [9:0] resultbeforeroundclose;
  wire roundclose;
  wire resultcloseiszero;
  wire [3:0] fracnewy;
  wire [5:0] shiftedfracy;
  wire sticky;
  wire [6:0] fracyfar;
  wire [6:0] effsubvector;
  wire [6:0] fracyfarxorop;
  wire [6:0] fracxfar;
  wire cinaddfar;
  wire [6:0] fracresultfar0;
  wire [6:0] fracresultfarnormstage;
  wire [1:0] fracleadingbits;
  wire [2:0] fracresultfar1;
  wire fracresultroundbit;
  wire fracresultstickybit;
  wire roundfar1;
  wire [1:0] expoperationsel;
  wire [6:0] exponentupdate;
  wire [6:0] exponentresultfar0;
  wire [6:0] exponentresultfar0_d1;
  wire [6:0] exponentresultfar0_d2;
  wire [6:0] exponentresultfar1;
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
  wire [10:0] n50_o;
  wire [10:0] n51_o;
  wire [4:0] n52_o;
  wire [4:0] n53_o;
  wire n54_o;
  wire n55_o;
  wire n56_o;
  wire [2:0] n57_o;
  wire n58_o;
  wire [2:0] n59_o;
  wire n61_o;
  wire n62_o;
  wire n63_o;
  wire [3:0] n64_o;
  wire n66_o;
  wire n67_o;
  wire [1:0] n69_o;
  wire [1:0] n70_o;
  wire [3:0] n71_o;
  wire n72_o;
  wire [2:0] n73_o;
  wire [4:0] n75_o;
  wire [5:0] n77_o;
  wire n78_o;
  wire [2:0] n79_o;
  wire [4:0] n81_o;
  wire [5:0] n83_o;
  wire n85_o;
  wire [2:0] n86_o;
  wire [5:0] n88_o;
  reg [5:0] n89_o;
  wire [5:0] fpadd_5_3_f300_uid2_dualsubclose_n90;
  wire [5:0] fpadd_5_3_f300_uid2_dualsubclose_n91;
  wire [5:0] fpadd_5_3_f300_uid2_dualsubclose_xmy;
  wire [5:0] fpadd_5_3_f300_uid2_dualsubclose_ymx;
  wire n96_o;
  wire [4:0] n97_o;
  wire n98_o;
  wire [4:0] n99_o;
  wire [4:0] n100_o;
  wire n103_o;
  wire n104_o;
  wire n105_o;
  wire n106_o;
  wire n107_o;
  wire n108_o;
  wire [2:0] norm_n109;
  wire [4:0] norm_n110;
  wire [2:0] norm_count;
  wire [4:0] norm_r;
  wire n115_o;
  wire n116_o;
  wire n117_o;
  wire n120_o;
  wire n121_o;
  wire [4:0] n123_o;
  wire [6:0] n125_o;
  wire [6:0] n127_o;
  wire [6:0] n128_o;
  wire [2:0] n129_o;
  wire [9:0] n130_o;
  wire [2:0] n131_o;
  wire [3:0] n133_o;
  wire [5:0] rightshiftercomponent_n134;
  wire rightshiftercomponent_n135;
  wire [5:0] rightshiftercomponent_r;
  wire rightshiftercomponent_sticky;
  wire [6:0] n141_o;
  wire [3:0] n142_o;
  wire [2:0] n143_o;
  wire [6:0] n144_o;
  wire [6:0] n145_o;
  wire [2:0] n146_o;
  wire [4:0] n148_o;
  wire [6:0] n150_o;
  wire n151_o;
  wire n152_o;
  wire [6:0] fpadd_5_3_f300_uid2_fracaddfar_n153;
  wire [6:0] fpadd_5_3_f300_uid2_fracaddfar_r;
  wire [1:0] n156_o;
  wire [2:0] n157_o;
  wire n159_o;
  wire [2:0] n160_o;
  wire [2:0] n161_o;
  wire n163_o;
  wire [2:0] n164_o;
  wire [2:0] n165_o;
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
  wire n204_o;
  wire [3:0] n205_o;
  wire [1:0] n206_o;
  wire [5:0] n207_o;
  wire n208_o;
  wire [6:0] n209_o;
  wire [4:0] n210_o;
  wire [6:0] n212_o;
  wire [6:0] n213_o;
  wire [9:0] n214_o;
  wire n216_o;
  reg [9:0] n217_o;
  wire n219_o;
  reg n220_o;
  wire n221_o;
  localparam [9:0] n222_o = 10'b0000000000;
  wire [9:0] fpadd_5_3_f300_uid2_finalroundadd_n223;
  wire [9:0] fpadd_5_3_f300_uid2_finalroundadd_r;
  wire [1:0] n226_o;
  wire n227_o;
  wire [1:0] n229_o;
  wire n231_o;
  wire n234_o;
  wire n236_o;
  wire n237_o;
  wire n238_o;
  wire [1:0] n240_o;
  wire [1:0] n241_o;
  reg [1:0] n242_o;
  wire [7:0] n243_o;
  wire [8:0] n244_o;
  wire [1:0] n245_o;
  wire n247_o;
  wire [1:0] n249_o;
  wire n251_o;
  wire n254_o;
  wire [1:0] n255_o;
  wire [2:0] n256_o;
  reg [1:0] n257_o;
  wire n258_o;
  wire n260_o;
  wire n261_o;
  wire n262_o;
  wire n264_o;
  wire n265_o;
  wire [1:0] n266_o;
  reg n267_o;
  wire [7:0] n268_o;
  wire n270_o;
  wire [7:0] n271_o;
  reg [7:0] n272_o;
  wire [2:0] n273_o;
  wire [10:0] n274_o;
  reg [10:0] n275_q;
  reg n276_q;
  reg n277_q;
  reg n278_q;
  reg n279_q;
  reg [6:0] n280_q;
  reg [6:0] n281_q;
  reg [6:0] n282_q;
  reg n283_q;
  reg n284_q;
  reg n285_q;
  reg [10:0] n286_q;
  reg [10:0] n287_q;
  reg n288_q;
  reg n289_q;
  reg n290_q;
  reg n291_q;
  wire [10:0] n292_o;
  reg [3:0] n293_q;
  reg [3:0] n294_q;
  assign R = n274_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:326:8  */
  assign inx = X; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:327:8  */
  assign iny = Y; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:328:8  */
  assign exceptionxsuperiory = n28_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:329:8  */
  assign exceptionxequaly = n34_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:330:8  */
  assign signedexponentx = n38_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:331:8  */
  assign signedexponenty = n41_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:332:8  */
  assign exponentdifferencexy = n42_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:333:8  */
  assign exponentdifferenceyx = n45_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:334:8  */
  assign swap = n49_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:335:8  */
  assign newx = n50_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:335:14  */
  assign newx_d1 = n275_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:336:8  */
  assign newy = n51_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:337:8  */
  assign exponentdifference = n52_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:338:8  */
  assign shiftedout = n56_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:339:8  */
  assign shiftval = n59_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:340:8  */
  assign effsub = n63_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:340:16  */
  assign effsub_d1 = n276_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:340:27  */
  assign effsub_d2 = n277_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:341:8  */
  assign selectclosepath = n67_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:341:25  */
  assign selectclosepath_d1 = n278_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:341:45  */
  assign selectclosepath_d2 = n279_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:342:8  */
  assign sdexnxy = n71_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:343:8  */
  assign pipesigny = n72_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:344:8  */
  assign fracxclose1 = n77_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:345:8  */
  assign fracyclose1 = n89_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:346:8  */
  assign fracrclosexmy = fpadd_5_3_f300_uid2_dualsubclose_n90; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:347:8  */
  assign fracrcloseymx = fpadd_5_3_f300_uid2_dualsubclose_n91; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:348:8  */
  assign fracsignclose = n96_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:349:8  */
  assign fracrclose1 = n99_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:350:8  */
  assign ressign = n105_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:351:8  */
  assign nzerosnew = norm_n109; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:352:8  */
  assign shiftedfrac = norm_n110; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:353:8  */
  assign roundclose0 = n117_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:354:8  */
  assign resultcloseiszero0 = n121_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:355:8  */
  assign exponentresultclose = n128_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:463:52  */
  assign exponentresultclose_d1 = n280_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:356:8  */
  assign resultbeforeroundclose = n130_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:357:8  */
  assign roundclose = roundclose0; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:358:8  */
  assign resultcloseiszero = resultcloseiszero0; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:359:8  */
  assign fracnewy = n133_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:360:8  */
  assign shiftedfracy = rightshiftercomponent_n134; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:361:8  */
  assign sticky = rightshiftercomponent_n135; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:362:8  */
  assign fracyfar = n141_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:363:8  */
  assign effsubvector = n144_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:364:8  */
  assign fracyfarxorop = n145_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:365:8  */
  assign fracxfar = n150_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:366:8  */
  assign cinaddfar = n152_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:367:8  */
  assign fracresultfar0 = fpadd_5_3_f300_uid2_fracaddfar_n153; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:368:8  */
  assign fracresultfarnormstage = fracresultfar0; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:369:8  */
  assign fracleadingbits = n156_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:370:8  */
  assign fracresultfar1 = n160_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:371:8  */
  assign fracresultroundbit = n169_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:372:8  */
  assign fracresultstickybit = n177_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:373:8  */
  assign roundfar1 = n189_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:374:8  */
  assign expoperationsel = n193_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:375:8  */
  assign exponentupdate = n209_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:376:8  */
  assign exponentresultfar0 = n212_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:376:28  */
  assign exponentresultfar0_d1 = n281_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:376:51  */
  assign exponentresultfar0_d2 = n282_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:377:8  */
  assign exponentresultfar1 = n213_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:378:8  */
  assign resultbeforeroundfar = n214_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:379:8  */
  assign roundfar = roundfar1; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:380:8  */
  assign resultbeforeround = n217_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:381:8  */
  assign round = n220_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:382:8  */
  assign zerofromclose = n221_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:382:23  */
  assign zerofromclose_d1 = n283_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:383:8  */
  assign resultrounded = fpadd_5_3_f300_uid2_finalroundadd_n223; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:384:8  */
  assign synceffsub = effsub; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:384:20  */
  assign synceffsub_d1 = n284_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:384:35  */
  assign synceffsub_d2 = n285_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:385:8  */
  assign syncx = newx; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:385:15  */
  assign syncx_d1 = n286_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:385:25  */
  assign syncx_d2 = n287_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:386:8  */
  assign syncsigny = pipesigny; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:386:19  */
  assign syncsigny_d1 = n288_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:386:33  */
  assign syncsigny_d2 = n289_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:387:8  */
  assign syncressign = ressign; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:387:21  */
  assign syncressign_d1 = n290_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:387:37  */
  assign syncressign_d2 = n291_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:388:8  */
  assign underflowoverflow = n226_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:389:8  */
  assign resultnoexn = n292_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:390:8  */
  assign syncexnxy = sdexnxy; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:390:19  */
  assign syncexnxy_d1 = n293_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:390:33  */
  assign syncexnxy_d2 = n294_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:391:8  */
  assign exnr = n257_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:392:8  */
  assign sgnr = n267_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:393:8  */
  assign expsigr = n272_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:422:39  */
  assign n25_o = inx[10:9];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:422:59  */
  assign n26_o = iny[10:9];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:422:53  */
  assign n27_o = $unsigned(n25_o) >= $unsigned(n26_o);
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:422:31  */
  assign n28_o = n27_o ? 1'b1 : 1'b0;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:423:36  */
  assign n31_o = inx[10:9];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:423:55  */
  assign n32_o = iny[10:9];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:423:50  */
  assign n33_o = n31_o == n32_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:423:28  */
  assign n34_o = n33_o ? 1'b1 : 1'b0;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:424:32  */
  assign n36_o = inx[7:3];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:424:27  */
  assign n38_o = {1'b0, n36_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:425:32  */
  assign n39_o = iny[7:3];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:425:27  */
  assign n41_o = {1'b0, n39_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:426:44  */
  assign n42_o = signedexponentx - signedexponenty;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:427:43  */
  assign n43_o = signedexponenty[4:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:427:73  */
  assign n44_o = signedexponentx[4:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:427:56  */
  assign n45_o = n43_o - n44_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:428:54  */
  assign n46_o = exponentdifferencexy[5];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:428:30  */
  assign n47_o = exceptionxequaly & n46_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:428:63  */
  assign n48_o = ~exceptionxsuperiory;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:428:59  */
  assign n49_o = n47_o | n48_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:429:16  */
  assign n50_o = swap ? iny : inx;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:430:16  */
  assign n51_o = swap ? inx : iny;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:431:47  */
  assign n52_o = swap ? exponentdifferenceyx : n53_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:431:88  */
  assign n53_o = exponentdifferencexy[4:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:432:36  */
  assign n54_o = exponentdifference[4];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:432:61  */
  assign n55_o = exponentdifference[3];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:432:40  */
  assign n56_o = n54_o | n55_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:433:34  */
  assign n57_o = exponentdifference[2:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:433:62  */
  assign n58_o = ~shiftedout;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:433:47  */
  assign n59_o = n58_o ? n57_o : 3'b110;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:435:18  */
  assign n61_o = newx[8];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:435:30  */
  assign n62_o = newy[8];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:435:22  */
  assign n63_o = n61_o ^ n62_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:436:53  */
  assign n64_o = exponentdifference[4:1];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:436:66  */
  assign n66_o = n64_o == 4'b0000;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:436:30  */
  assign n67_o = n66_o ? effsub : 1'b0;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:437:19  */
  assign n69_o = newx[10:9];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:437:39  */
  assign n70_o = newy[10:9];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:437:33  */
  assign n71_o = {n69_o, n70_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:438:21  */
  assign n72_o = newy[8];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:441:30  */
  assign n73_o = newx[2:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:441:24  */
  assign n75_o = {2'b01, n73_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:441:43  */
  assign n77_o = {n75_o, 1'b0};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:442:27  */
  assign n78_o = exponentdifference[0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:443:31  */
  assign n79_o = newy[2:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:443:25  */
  assign n81_o = {2'b01, n79_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:443:44  */
  assign n83_o = {n81_o, 1'b0};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:443:50  */
  assign n85_o = n78_o == 1'b0;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:444:31  */
  assign n86_o = newy[2:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:444:25  */
  assign n88_o = {3'b001, n86_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:442:4  */
  always @*
    case (n85_o)
      1'b1: n89_o = n83_o;
      default: n89_o = n88_o;
    endcase
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:449:25  */
  assign fpadd_5_3_f300_uid2_dualsubclose_n90 = fpadd_5_3_f300_uid2_dualsubclose_xmy; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:450:25  */
  assign fpadd_5_3_f300_uid2_dualsubclose_n91 = fpadd_5_3_f300_uid2_dualsubclose_ymx; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:445:4  */
  intdualsub_6_f300_uid4 fpadd_5_3_f300_uid2_dualsubclose (
    .clk(clk),
    .x(fracxclose1),
    .y(fracyclose1),
    .xmy(fpadd_5_3_f300_uid2_dualsubclose_xmy),
    .ymx(fpadd_5_3_f300_uid2_dualsubclose_ymx));
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:451:34  */
  assign n96_o = fracrclosexmy[5];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:452:32  */
  assign n97_o = fracrclosexmy[4:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:452:63  */
  assign n98_o = ~fracsignclose;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:452:45  */
  assign n99_o = n98_o ? n97_o : n100_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:452:86  */
  assign n100_o = fracrcloseymx[4:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:453:60  */
  assign n103_o = fracrclose1 == 5'b00000;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:453:44  */
  assign n104_o = selectclosepath & n103_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:453:19  */
  assign n105_o = n104_o ? 1'b0 : n108_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:454:18  */
  assign n106_o = newx[8];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:454:43  */
  assign n107_o = selectclosepath & fracsignclose;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:454:22  */
  assign n108_o = n106_o ^ n107_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:458:27  */
  assign norm_n109 = norm_count; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:459:23  */
  assign norm_n110 = norm_r; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:455:4  */
  normalizer_z_5_5_5_f300_uid6 norm (
    .clk(clk),
    .x(fracrclose1),
    .count(norm_count),
    .r(norm_r));
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:460:30  */
  assign n115_o = shiftedfrac[0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:460:49  */
  assign n116_o = shiftedfrac[1];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:460:34  */
  assign n117_o = n115_o & n116_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:461:45  */
  assign n120_o = nzerosnew == 3'b111;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:461:30  */
  assign n121_o = n120_o ? 1'b1 : 1'b0;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:462:42  */
  assign n123_o = newx_d1[7:3];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:462:33  */
  assign n125_o = {2'b00, n123_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:462:86  */
  assign n127_o = {4'b0000, nzerosnew};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:462:56  */
  assign n128_o = n125_o - n127_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:463:78  */
  assign n129_o = shiftedfrac[3:1];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:463:65  */
  assign n130_o = {exponentresultclose_d1, n129_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:468:26  */
  assign n131_o = newy[2:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:468:20  */
  assign n133_o = {1'b1, n131_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:473:23  */
  assign rightshiftercomponent_n134 = rightshiftercomponent_r; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:474:28  */
  assign rightshiftercomponent_n135 = rightshiftercomponent_sticky; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:469:4  */
  rightshiftersticky4_by_max_6_f300_uid8 rightshiftercomponent (
    .clk(clk),
    .x(fracnewy),
    .s(shiftval),
    .r(rightshiftercomponent_r),
    .sticky(rightshiftercomponent_sticky));
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:475:20  */
  assign n141_o = {1'b0, shiftedfracy};
  assign n142_o = {effsub, effsub, effsub, effsub};
  assign n143_o = {effsub, effsub, effsub};
  assign n144_o = {n142_o, n143_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:477:30  */
  assign n145_o = fracyfar ^ effsubvector;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:478:28  */
  assign n146_o = newx[2:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:478:21  */
  assign n148_o = {2'b01, n146_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:478:42  */
  assign n150_o = {n148_o, 2'b00};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:479:31  */
  assign n151_o = ~sticky;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:479:27  */
  assign n152_o = effsub_d2 & n151_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:485:23  */
  assign fpadd_5_3_f300_uid2_fracaddfar_n153 = fpadd_5_3_f300_uid2_fracaddfar_r; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:480:4  */
  intadder_7_f300_uid10 fpadd_5_3_f300_uid2_fracaddfar (
    .clk(clk),
    .x(fracxfar),
    .y(fracyfarxorop),
    .cin(cinaddfar),
    .r(fpadd_5_3_f300_uid2_fracaddfar_r));
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:488:45  */
  assign n156_o = fracresultfarnormstage[6:5];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:490:34  */
  assign n157_o = fracresultfarnormstage[3:1];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:490:69  */
  assign n159_o = fracleadingbits == 2'b00;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:490:48  */
  assign n160_o = n159_o ? n157_o : n164_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:491:34  */
  assign n161_o = fracresultfarnormstage[4:2];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:491:69  */
  assign n163_o = fracleadingbits == 2'b01;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:491:7  */
  assign n164_o = n163_o ? n161_o : n165_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:492:34  */
  assign n165_o = fracresultfarnormstage[5:3];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:494:34  */
  assign n166_o = fracresultfarnormstage[0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:494:63  */
  assign n168_o = fracleadingbits == 2'b00;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:494:42  */
  assign n169_o = n168_o ? n166_o : n173_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:495:34  */
  assign n170_o = fracresultfarnormstage[1];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:495:62  */
  assign n172_o = fracleadingbits == 2'b01;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:495:7  */
  assign n173_o = n172_o ? n170_o : n174_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:496:34  */
  assign n174_o = fracresultfarnormstage[2];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:498:47  */
  assign n176_o = fracleadingbits == 2'b00;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:498:26  */
  assign n177_o = n176_o ? sticky : n182_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:499:34  */
  assign n178_o = fracresultfarnormstage[0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:499:38  */
  assign n179_o = n178_o | sticky;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:499:72  */
  assign n181_o = fracleadingbits == 2'b01;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:499:7  */
  assign n182_o = n181_o ? n179_o : n186_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:500:34  */
  assign n183_o = fracresultfarnormstage[1];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:500:63  */
  assign n184_o = fracresultfarnormstage[0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:500:38  */
  assign n185_o = n183_o | n184_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:500:67  */
  assign n186_o = n185_o | sticky;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:501:78  */
  assign n187_o = fracresultfar1[0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:501:61  */
  assign n188_o = fracresultstickybit | n187_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:501:36  */
  assign n189_o = fracresultroundbit & n188_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:502:49  */
  assign n192_o = fracleadingbits == 2'b00;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:502:28  */
  assign n193_o = n192_o ? 2'b11 : n197_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:503:49  */
  assign n196_o = fracleadingbits == 2'b01;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:503:16  */
  assign n197_o = n196_o ? 2'b00 : 2'b01;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:505:52  */
  assign n199_o = expoperationsel[1];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:505:52  */
  assign n200_o = expoperationsel[1];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:505:52  */
  assign n201_o = expoperationsel[1];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:505:52  */
  assign n202_o = expoperationsel[1];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:505:52  */
  assign n203_o = expoperationsel[1];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:505:52  */
  assign n204_o = expoperationsel[1];
  assign n205_o = {n204_o, n203_o, n202_o, n201_o};
  assign n206_o = {n200_o, n199_o};
  assign n207_o = {n205_o, n206_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:505:74  */
  assign n208_o = expoperationsel[0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:505:57  */
  assign n209_o = {n207_o, n208_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:506:36  */
  assign n210_o = newx[7:3];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:506:29  */
  assign n212_o = {2'b00, n210_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:507:48  */
  assign n213_o = exponentresultfar0_d2 + exponentupdate;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:508:47  */
  assign n214_o = {exponentresultfar1, fracresultfar1};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:513:48  */
  assign n216_o = selectclosepath_d2 == 1'b1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:512:4  */
  always @*
    case (n216_o)
      1'b1: n217_o = resultbeforeroundclose;
      default: n217_o = resultbeforeroundfar;
    endcase
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:516:24  */
  assign n219_o = selectclosepath_d2 == 1'b1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:515:4  */
  always @*
    case (n219_o)
      1'b1: n220_o = roundclose;
      default: n220_o = roundfar;
    endcase
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:518:40  */
  assign n221_o = selectclosepath_d1 & resultcloseiszero;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:526:23  */
  assign fpadd_5_3_f300_uid2_finalroundadd_n223 = fpadd_5_3_f300_uid2_finalroundadd_r; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:521:4  */
  intadder_10_f300_uid1333 fpadd_5_3_f300_uid2_finalroundadd (
    .clk(clk),
    .x(resultbeforeround),
    .y(n222_o),
    .cin(round),
    .r(fpadd_5_3_f300_uid2_finalroundadd_r));
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:531:38  */
  assign n226_o = resultrounded[9:8];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:533:35  */
  assign n227_o = ~zerofromclose_d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:533:57  */
  assign n229_o = {n227_o, 1'b0};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:533:63  */
  assign n231_o = underflowoverflow == 2'b01;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:534:39  */
  assign n234_o = underflowoverflow == 2'b10;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:534:49  */
  assign n236_o = underflowoverflow == 2'b11;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:534:49  */
  assign n237_o = n234_o | n236_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:535:41  */
  assign n238_o = ~zerofromclose_d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:535:38  */
  assign n240_o = {1'b0, n238_o};
  assign n241_o = {n237_o, n231_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:532:4  */
  always @*
    case (n241_o)
      2'b10: n242_o = 2'b00;
      2'b01: n242_o = n229_o;
      default: n242_o = n240_o;
    endcase
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:536:61  */
  assign n243_o = resultrounded[7:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:536:46  */
  assign n244_o = {syncressign_d2, n243_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:540:26  */
  assign n245_o = resultnoexn[10:9];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:540:40  */
  assign n247_o = syncexnxy_d2 == 4'b0101;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:541:19  */
  assign n249_o = {1'b1, synceffsub_d2};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:541:44  */
  assign n251_o = syncexnxy_d2 == 4'b1010;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:542:41  */
  assign n254_o = syncexnxy_d2 == 4'b1110;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:543:27  */
  assign n255_o = syncexnxy_d2[3:2];
  assign n256_o = {n254_o, n251_o, n247_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:539:4  */
  always @*
    case (n256_o)
      3'b100: n257_o = 2'b11;
      3'b010: n257_o = n249_o;
      3'b001: n257_o = n245_o;
      default: n257_o = n255_o;
    endcase
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:546:26  */
  assign n258_o = resultnoexn[8];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:546:38  */
  assign n260_o = syncexnxy_d2 == 4'b0101;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:547:23  */
  assign n261_o = syncx_d2[8];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:547:27  */
  assign n262_o = n261_o & syncsigny_d2;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:547:44  */
  assign n264_o = syncexnxy_d2 == 4'b0000;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:548:23  */
  assign n265_o = syncx_d2[8];
  assign n266_o = {n264_o, n260_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:545:4  */
  always @*
    case (n266_o)
      2'b10: n267_o = n262_o;
      2'b01: n267_o = n258_o;
      default: n267_o = n265_o;
    endcase
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:551:29  */
  assign n268_o = resultnoexn[7:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:551:44  */
  assign n270_o = syncexnxy_d2 == 4'b0101;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:552:26  */
  assign n271_o = syncx_d2[7:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:550:4  */
  always @*
    case (n270_o)
      1'b1: n272_o = n268_o;
      default: n272_o = n271_o;
    endcase
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:553:14  */
  assign n273_o = {exnr, sgnr};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:553:21  */
  assign n274_o = {n273_o, expsigr};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:397:10  */
  always @(posedge clk)
    n275_q <= newx;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:397:10  */
  always @(posedge clk)
    n276_q <= effsub;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:397:10  */
  always @(posedge clk)
    n277_q <= effsub_d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:397:10  */
  always @(posedge clk)
    n278_q <= selectclosepath;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:397:10  */
  always @(posedge clk)
    n279_q <= selectclosepath_d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:397:10  */
  always @(posedge clk)
    n280_q <= exponentresultclose;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:397:10  */
  always @(posedge clk)
    n281_q <= exponentresultfar0;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:397:10  */
  always @(posedge clk)
    n282_q <= exponentresultfar0_d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:397:10  */
  always @(posedge clk)
    n283_q <= zerofromclose;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:397:10  */
  always @(posedge clk)
    n284_q <= synceffsub;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:397:10  */
  always @(posedge clk)
    n285_q <= synceffsub_d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:397:10  */
  always @(posedge clk)
    n286_q <= syncx;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:397:10  */
  always @(posedge clk)
    n287_q <= syncx_d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:397:10  */
  always @(posedge clk)
    n288_q <= syncsigny;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:397:10  */
  always @(posedge clk)
    n289_q <= syncsigny_d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:397:10  */
  always @(posedge clk)
    n290_q <= syncressign;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:397:10  */
  always @(posedge clk)
    n291_q <= syncressign_d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:397:10  */
  assign n292_o = {n242_o, n244_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:397:10  */
  always @(posedge clk)
    n293_q <= syncexnxy;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_5_3.vhdl:397:10  */
  always @(posedge clk)
    n294_q <= syncexnxy_d1;
endmodule

