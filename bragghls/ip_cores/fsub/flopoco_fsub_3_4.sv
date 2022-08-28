module intadder_9_f300_uid1333
  (input wire clk,
   input wire [8:0] x,
   input wire [8:0] y,
   input wire cin,
   output wire [8:0] r);
  wire [8:0] rtmp;
  wire [8:0] y_d1;
  wire [8:0] y_d2;
  wire [8:0] n440_o;
  wire [8:0] n441_o;
  wire [8:0] n442_o;
  reg [8:0] n443_q;
  reg [8:0] n444_q;
  assign r = rtmp;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:247:8  */
  assign rtmp = n442_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:248:8  */
  assign y_d1 = n443_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:248:14  */
  assign y_d2 = n444_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:257:14  */
  assign n440_o = x + y_d2;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:257:21  */
  assign n441_o = {8'b0, cin};  //  uext
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:257:21  */
  assign n442_o = n440_o + n441_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:252:10  */
  always @(posedge clk)
    n443_q <= y;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:252:10  */
  always @(posedge clk)
    n444_q <= y_d1;
endmodule

module intadder_8_f300_uid1000
  (input  wire clk,
   input  wire [7:0] x,
   input  wire [7:0] y,
   input  wire cin,
   output wire [7:0] r);
  wire cin_1;
  wire cin_1_d1;
  wire [8:0] x_1;
  wire [8:0] x_1_d1;
  wire [8:0] x_1_d2;
  wire [8:0] y_1;
  wire [8:0] y_1_d1;
  wire [8:0] y_1_d2;
  wire [8:0] s_1;
  wire [7:0] r_1;
  wire [8:0] n421_o;
  wire [8:0] n423_o;
  wire [8:0] n424_o;
  wire [8:0] n425_o;
  wire [8:0] n426_o;
  wire [7:0] n427_o;
  reg n428_q;
  reg [8:0] n429_q;
  reg [8:0] n430_q;
  reg [8:0] n431_q;
  reg [8:0] n432_q;
  assign r = r_1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:193:8  */
  assign cin_1 = cin; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:193:15  */
  assign cin_1_d1 = n428_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:194:8  */
  assign x_1 = n421_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:194:13  */
  assign x_1_d1 = n429_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:194:21  */
  assign x_1_d2 = n430_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:195:8  */
  assign y_1 = n423_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:195:13  */
  assign y_1_d1 = n431_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:195:21  */
  assign y_1_d2 = n432_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:196:8  */
  assign s_1 = n426_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:197:8  */
  assign r_1 = n427_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:210:15  */
  assign n421_o = {1'b0, x};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:211:15  */
  assign n423_o = {1'b0, y};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:212:18  */
  assign n424_o = x_1_d2 + y_1_d2;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:212:27  */
  assign n425_o = {8'b0, cin_1_d1};  //  uext
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:212:27  */
  assign n426_o = n424_o + n425_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:213:14  */
  assign n427_o = s_1[7:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:201:10  */
  always @(posedge clk)
    n428_q <= cin_1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:201:10  */
  always @(posedge clk)
    n429_q <= x_1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:201:10  */
  always @(posedge clk)
    n430_q <= x_1_d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:201:10  */
  always @(posedge clk)
    n431_q <= y_1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:201:10  */
  always @(posedge clk)
    n432_q <= y_1_d1;
endmodule

module rightshiftersticky5_by_max_7_f300_uid88
  (input  wire clk,
   input  wire [4:0] x,
   input  wire [2:0] s,
   output wire [6:0] r,
   output wire sticky);
  wire [2:0] ps;
  wire [2:0] ps_d1;
  wire [6:0] xpadded;
  wire [6:0] level3;
  wire stk2;
  wire stk2_d1;
  wire [6:0] level2;
  wire [6:0] level2_d1;
  wire stk1;
  wire [6:0] level1;
  wire [6:0] level1_d1;
  wire stk0;
  wire [6:0] level0;
  wire [6:0] n361_o;
  wire [3:0] n363_o;
  wire n365_o;
  wire n366_o;
  wire n367_o;
  wire n368_o;
  wire n370_o;
  wire n371_o;
  wire [6:0] n372_o;
  wire [2:0] n373_o;
  wire [6:0] n375_o;
  wire [1:0] n377_o;
  wire n379_o;
  wire n380_o;
  wire n381_o;
  wire n382_o;
  wire n383_o;
  wire n385_o;
  wire n386_o;
  wire [6:0] n387_o;
  wire [4:0] n388_o;
  wire [6:0] n390_o;
  wire n392_o;
  wire n394_o;
  wire n395_o;
  wire n396_o;
  wire n397_o;
  wire n398_o;
  wire n400_o;
  wire n401_o;
  wire [6:0] n402_o;
  wire [5:0] n403_o;
  wire [6:0] n405_o;
  reg [2:0] n406_q;
  reg n407_q;
  reg [6:0] n408_q;
  reg [6:0] n409_q;
  assign r = level0;
  assign sticky = stk0;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:131:8  */
  assign ps = s; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:131:12  */
  assign ps_d1 = n406_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:132:8  */
  assign xpadded = n361_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:133:8  */
  assign level3 = xpadded; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:134:8  */
  assign stk2 = n368_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:134:14  */
  assign stk2_d1 = n407_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:135:8  */
  assign level2 = n372_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:135:16  */
  assign level2_d1 = n408_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:136:8  */
  assign stk1 = n383_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:137:8  */
  assign level1 = n387_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:137:16  */
  assign level1_d1 = n409_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:138:8  */
  assign stk0 = n398_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:139:8  */
  assign level0 = n402_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:151:16  */
  assign n361_o = {x, 2'b00};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:153:28  */
  assign n363_o = level3[3:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:153:40  */
  assign n365_o = n363_o != 4'b0000;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:153:55  */
  assign n366_o = ps[2];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:153:49  */
  assign n367_o = n365_o & n366_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:153:16  */
  assign n368_o = n367_o ? 1'b1 : 1'b0;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:154:30  */
  assign n370_o = ps[2];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:154:33  */
  assign n371_o = ~n370_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:154:22  */
  assign n372_o = n371_o ? level3 : n375_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:154:74  */
  assign n373_o = level3[6:4];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:154:66  */
  assign n375_o = {4'b0000, n373_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:155:31  */
  assign n377_o = level2_d1[1:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:155:43  */
  assign n379_o = n377_o != 2'b00;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:155:59  */
  assign n380_o = ps_d1[1];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:155:50  */
  assign n381_o = n379_o & n380_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:155:68  */
  assign n382_o = n381_o | stk2_d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:155:16  */
  assign n383_o = n382_o ? 1'b1 : 1'b0;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:156:30  */
  assign n385_o = ps[1];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:156:33  */
  assign n386_o = ~n385_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:156:22  */
  assign n387_o = n386_o ? level2 : n390_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:156:74  */
  assign n388_o = level2[6:2];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:156:66  */
  assign n390_o = {2'b00, n388_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:157:31  */
  assign n392_o = level1_d1[0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:157:43  */
  assign n394_o = n392_o != 1'b0;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:157:58  */
  assign n395_o = ps_d1[0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:157:49  */
  assign n396_o = n394_o & n395_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:157:67  */
  assign n397_o = n396_o | stk1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:157:16  */
  assign n398_o = n397_o ? 1'b1 : 1'b0;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:158:30  */
  assign n400_o = ps[0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:158:33  */
  assign n401_o = ~n400_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:158:22  */
  assign n402_o = n401_o ? level1 : n405_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:158:74  */
  assign n403_o = level1[6:1];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:158:66  */
  assign n405_o = {1'b0, n403_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:143:10  */
  always @(posedge clk)
    n406_q <= ps;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:143:10  */
  always @(posedge clk)
    n407_q <= stk2;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:143:10  */
  always @(posedge clk)
    n408_q <= level2;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:143:10  */
  always @(posedge clk)
    n409_q <= level1;
endmodule

module normalizer_z_6_6_6_f300_uid666
  (input  wire clk,
   input  wire [5:0] x,
   output wire [2:0] count,
   output wire [5:0] r);
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
  wire [3:0] n313_o;
  wire n315_o;
  wire n316_o;
  wire n318_o;
  wire [5:0] n319_o;
  wire [1:0] n320_o;
  wire [5:0] n322_o;
  wire [1:0] n324_o;
  wire n326_o;
  wire n327_o;
  wire n329_o;
  wire [5:0] n330_o;
  wire [3:0] n331_o;
  wire [5:0] n333_o;
  wire n335_o;
  wire n337_o;
  wire n338_o;
  wire n340_o;
  wire [5:0] n341_o;
  wire [4:0] n342_o;
  wire [5:0] n344_o;
  wire [1:0] n345_o;
  wire [2:0] n346_o;
  reg [5:0] n347_q;
  reg [5:0] n348_q;
  reg n349_q;
  assign count = scount;
  assign r = level0;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:69:8  */
  assign level3 = x; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:88:22  */
  assign level3_d1 = n347_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:70:8  */
  assign count2 = n316_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:91:19  */
  assign level2 = n319_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:72:8  */
  assign count1 = n327_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:73:8  */
  assign level1 = n330_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:94:22  */
  assign level1_d1 = n348_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:74:8  */
  assign count0 = n338_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:74:16  */
  assign count0_d1 = n349_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:75:8  */
  assign level0 = n341_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:76:8  */
  assign scount = n346_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:87:31  */
  assign n313_o = level3_d1[5:2];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:87:44  */
  assign n315_o = n313_o == 4'b0000;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:87:17  */
  assign n316_o = n315_o ? 1'b1 : 1'b0;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:88:46  */
  assign n318_o = ~count2;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:88:35  */
  assign n319_o = n318_o ? level3_d1 : n322_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:88:65  */
  assign n320_o = level3_d1[1:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:88:78  */
  assign n322_o = {n320_o, 4'b0000};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:90:28  */
  assign n324_o = level2[5:4];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:90:41  */
  assign n326_o = n324_o == 2'b00;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:90:17  */
  assign n327_o = n326_o ? 1'b1 : 1'b0;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:91:43  */
  assign n329_o = ~count1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:91:32  */
  assign n330_o = n329_o ? level2 : n333_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:91:59  */
  assign n331_o = level2[3:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:91:72  */
  assign n333_o = {n331_o, 2'b00};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:93:28  */
  assign n335_o = level1[5];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:93:41  */
  assign n337_o = n335_o == 1'b0;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:93:17  */
  assign n338_o = n337_o ? 1'b1 : 1'b0;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:94:49  */
  assign n340_o = ~count0_d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:94:35  */
  assign n341_o = n340_o ? level1_d1 : n344_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:94:68  */
  assign n342_o = level1_d1[4:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:94:81  */
  assign n344_o = {n342_o, 1'b0};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:97:21  */
  assign n345_o = {count2, count1};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:97:30  */
  assign n346_o = {n345_o, count0};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:80:10  */
  always @(posedge clk)
    n347_q <= level3;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:80:10  */
  always @(posedge clk)
    n348_q <= level1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:80:10  */
  always @(posedge clk)
    n349_q <= count0;
endmodule

module intdualsub_7_f300_uid444
  (input  wire clk,
   input  wire [6:0] x,
   input  wire [6:0] y,
   output wire [6:0] xmy,
   output wire [6:0] ymx);
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
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:31:8  */
  assign temprxmy = n297_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:32:8  */
  assign temprymx = n302_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:34:21  */
  assign n293_o = ~y;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:34:18  */
  assign n294_o = x + n293_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:34:28  */
  assign n297_o = n294_o + 7'b0000001;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:35:21  */
  assign n298_o = ~x;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:35:18  */
  assign n299_o = y + n298_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:35:28  */
  assign n302_o = n299_o + 7'b0000001;
endmodule

module fsub #(parameter ID=1)
  (input  wire clk,
   input  wire [9:0] X,
   input  wire [9:0] Y,
   output wire [9:0] R);
  wire [9:0] inx;
  wire [9:0] iny;
  wire exceptionxsuperiory;
  wire exceptionxequaly;
  wire [3:0] signedexponentx;
  wire [3:0] signedexponenty;
  wire [3:0] exponentdifferencexy;
  wire [2:0] exponentdifferenceyx;
  wire swap;
  wire [9:0] my;
  wire [9:0] newx;
  wire [9:0] newx_d1;
  wire [9:0] newy;
  wire [2:0] exponentdifference;
  wire [2:0] shiftval;
  wire effsub;
  wire effsub_d1;
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
  wire [4:0] exponentresultclose;
  wire [4:0] exponentresultclose_d1;
  wire [8:0] resultbeforeroundclose;
  wire roundclose;
  wire resultcloseiszero;
  wire [4:0] fracnewy;
  wire [6:0] shiftedfracy;
  wire sticky;
  wire sticky_d1;
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
  wire [4:0] exponentupdate;
  wire [4:0] exponentresultfar0;
  wire [4:0] exponentresultfar0_d1;
  wire [4:0] exponentresultfar0_d2;
  wire [4:0] exponentresultfar1;
  wire [8:0] resultbeforeroundfar;
  wire roundfar;
  wire [8:0] resultbeforeround;
  wire round;
  wire zerofromclose;
  wire zerofromclose_d1;
  wire [8:0] resultrounded;
  wire synceffsub;
  wire synceffsub_d1;
  wire synceffsub_d2;
  wire [9:0] syncx;
  wire [9:0] syncx_d1;
  wire [9:0] syncx_d2;
  wire syncsigny;
  wire syncsigny_d1;
  wire syncsigny_d2;
  wire syncressign;
  wire syncressign_d1;
  wire syncressign_d2;
  wire [1:0] underflowoverflow;
  wire [9:0] resultnoexn;
  wire [3:0] syncexnxy;
  wire [3:0] syncexnxy_d1;
  wire [3:0] syncexnxy_d2;
  wire [1:0] exnr;
  wire sgnr;
  wire [6:0] expsigr;
  wire [1:0] n25_o;
  wire [1:0] n26_o;
  wire n27_o;
  wire n28_o;
  wire [1:0] n31_o;
  wire [1:0] n32_o;
  wire n33_o;
  wire n34_o;
  wire [2:0] n36_o;
  wire [3:0] n38_o;
  wire [2:0] n39_o;
  wire [3:0] n41_o;
  wire [3:0] n42_o;
  wire [2:0] n43_o;
  wire [2:0] n44_o;
  wire [2:0] n45_o;
  wire n46_o;
  wire n47_o;
  wire n48_o;
  wire n49_o;
  wire [1:0] n50_o;
  wire n51_o;
  wire n52_o;
  wire [2:0] n53_o;
  wire [6:0] n54_o;
  wire [9:0] n55_o;
  wire [9:0] n56_o;
  wire [9:0] n57_o;
  wire [2:0] n58_o;
  wire [2:0] n59_o;
  wire n61_o;
  wire n62_o;
  wire n63_o;
  wire [1:0] n64_o;
  wire n66_o;
  wire n67_o;
  wire [1:0] n69_o;
  wire [1:0] n70_o;
  wire [3:0] n71_o;
  wire n72_o;
  wire [3:0] n73_o;
  wire [5:0] n75_o;
  wire [6:0] n77_o;
  wire n78_o;
  wire [3:0] n79_o;
  wire [5:0] n81_o;
  wire [6:0] n83_o;
  wire n85_o;
  wire [3:0] n86_o;
  wire [6:0] n88_o;
  reg [6:0] n89_o;
  wire [6:0] fpsub_3_4_f300_uid2_dualsubclose_n90;
  wire [6:0] fpsub_3_4_f300_uid2_dualsubclose_n91;
  wire [6:0] fpsub_3_4_f300_uid2_dualsubclose_xmy;
  wire [6:0] fpsub_3_4_f300_uid2_dualsubclose_ymx;
  wire n96_o;
  wire [5:0] n97_o;
  wire n98_o;
  wire [5:0] n99_o;
  wire [5:0] n100_o;
  wire n103_o;
  wire n104_o;
  wire n105_o;
  wire n106_o;
  wire n107_o;
  wire n108_o;
  wire [2:0] norm_n109;
  wire [5:0] norm_n110;
  wire [2:0] norm_count;
  wire [5:0] norm_r;
  wire n115_o;
  wire n116_o;
  wire n117_o;
  wire n120_o;
  wire n121_o;
  wire [2:0] n123_o;
  wire [4:0] n125_o;
  wire [4:0] n127_o;
  wire [4:0] n128_o;
  wire [3:0] n129_o;
  wire [8:0] n130_o;
  wire [3:0] n131_o;
  wire [4:0] n133_o;
  wire [6:0] rightshiftercomponent_n134;
  wire rightshiftercomponent_n135;
  wire [6:0] rightshiftercomponent_r;
  wire rightshiftercomponent_sticky;
  wire [7:0] n141_o;
  wire [3:0] n142_o;
  wire [3:0] n143_o;
  wire [7:0] n144_o;
  wire [7:0] n145_o;
  wire [3:0] n146_o;
  wire [5:0] n148_o;
  wire [7:0] n150_o;
  wire n151_o;
  wire n152_o;
  wire [7:0] fpsub_3_4_f300_uid2_fracaddfar_n153;
  wire [7:0] fpsub_3_4_f300_uid2_fracaddfar_r;
  wire [1:0] n156_o;
  wire [3:0] n157_o;
  wire n159_o;
  wire [3:0] n160_o;
  wire [3:0] n161_o;
  wire n163_o;
  wire [3:0] n164_o;
  wire [3:0] n165_o;
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
  wire [3:0] n203_o;
  wire n204_o;
  wire [4:0] n205_o;
  wire [2:0] n206_o;
  wire [4:0] n208_o;
  wire [4:0] n209_o;
  wire [8:0] n210_o;
  wire n212_o;
  reg [8:0] n213_o;
  wire n215_o;
  reg n216_o;
  wire n217_o;
  localparam [8:0] n218_o = 9'b000000000;
  wire [8:0] fpsub_3_4_f300_uid2_finalroundadd_n219;
  wire [8:0] fpsub_3_4_f300_uid2_finalroundadd_r;
  wire [1:0] n222_o;
  wire n223_o;
  wire [1:0] n225_o;
  wire n227_o;
  wire n230_o;
  wire n232_o;
  wire n233_o;
  wire n234_o;
  wire [1:0] n236_o;
  wire [1:0] n237_o;
  reg [1:0] n238_o;
  wire [6:0] n239_o;
  wire [7:0] n240_o;
  wire [1:0] n241_o;
  wire n243_o;
  wire [1:0] n245_o;
  wire n247_o;
  wire n250_o;
  wire [1:0] n251_o;
  wire [2:0] n252_o;
  reg [1:0] n253_o;
  wire n254_o;
  wire n256_o;
  wire n257_o;
  wire n258_o;
  wire n260_o;
  wire n261_o;
  wire [1:0] n262_o;
  reg n263_o;
  wire [6:0] n264_o;
  wire n266_o;
  wire [6:0] n267_o;
  reg [6:0] n268_o;
  wire [2:0] n269_o;
  wire [9:0] n270_o;
  reg [9:0] n271_q;
  reg n272_q;
  reg n273_q;
  reg n274_q;
  reg [4:0] n275_q;
  reg n276_q;
  reg [4:0] n277_q;
  reg [4:0] n278_q;
  reg n279_q;
  reg n280_q;
  reg n281_q;
  reg [9:0] n282_q;
  reg [9:0] n283_q;
  reg n284_q;
  reg n285_q;
  reg n286_q;
  reg n287_q;
  wire [9:0] n288_o;
  reg [3:0] n289_q;
  reg [3:0] n290_q;
  assign R = n270_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:330:8  */
  assign inx = X; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:331:8  */
  assign iny = Y; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:332:8  */
  assign exceptionxsuperiory = n28_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:333:8  */
  assign exceptionxequaly = n34_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:334:8  */
  assign signedexponentx = n38_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:335:8  */
  assign signedexponenty = n41_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:336:8  */
  assign exponentdifferencexy = n42_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:337:8  */
  assign exponentdifferenceyx = n45_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:338:8  */
  assign swap = n49_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:339:8  */
  assign my = n55_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:340:8  */
  assign newx = n56_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:340:14  */
  assign newx_d1 = n271_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:341:8  */
  assign newy = n57_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:342:8  */
  assign exponentdifference = n58_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:344:8  */
  assign shiftval = exponentdifference; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:345:8  */
  assign effsub = n63_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:345:16  */
  assign effsub_d1 = n272_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:346:8  */
  assign selectclosepath = n67_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:346:25  */
  assign selectclosepath_d1 = n273_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:346:45  */
  assign selectclosepath_d2 = n274_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:347:8  */
  assign sdexnxy = n71_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:348:8  */
  assign pipesigny = n72_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:349:8  */
  assign fracxclose1 = n77_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:350:8  */
  assign fracyclose1 = n89_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:351:8  */
  assign fracrclosexmy = fpsub_3_4_f300_uid2_dualsubclose_n90; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:352:8  */
  assign fracrcloseymx = fpsub_3_4_f300_uid2_dualsubclose_n91; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:353:8  */
  assign fracsignclose = n96_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:354:8  */
  assign fracrclose1 = n99_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:355:8  */
  assign ressign = n105_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:356:8  */
  assign nzerosnew = norm_n109; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:357:8  */
  assign shiftedfrac = norm_n110; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:358:8  */
  assign roundclose0 = n117_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:359:8  */
  assign resultcloseiszero0 = n121_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:360:8  */
  assign exponentresultclose = n128_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:468:52  */
  assign exponentresultclose_d1 = n275_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:361:8  */
  assign resultbeforeroundclose = n130_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:362:8  */
  assign roundclose = roundclose0; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:363:8  */
  assign resultcloseiszero = resultcloseiszero0; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:364:8  */
  assign fracnewy = n133_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:365:8  */
  assign shiftedfracy = rightshiftercomponent_n134; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:366:8  */
  assign sticky = rightshiftercomponent_n135; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:366:16  */
  assign sticky_d1 = n276_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:367:8  */
  assign fracyfar = n141_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:368:8  */
  assign effsubvector = n144_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:369:8  */
  assign fracyfarxorop = n145_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:370:8  */
  assign fracxfar = n150_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:371:8  */
  assign cinaddfar = n152_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:372:8  */
  assign fracresultfar0 = fpsub_3_4_f300_uid2_fracaddfar_n153; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:373:8  */
  assign fracresultfarnormstage = fracresultfar0; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:374:8  */
  assign fracleadingbits = n156_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:375:8  */
  assign fracresultfar1 = n160_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:376:8  */
  assign fracresultroundbit = n169_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:377:8  */
  assign fracresultstickybit = n177_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:378:8  */
  assign roundfar1 = n189_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:379:8  */
  assign expoperationsel = n193_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:380:8  */
  assign exponentupdate = n205_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:381:8  */
  assign exponentresultfar0 = n208_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:381:28  */
  assign exponentresultfar0_d1 = n277_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:381:51  */
  assign exponentresultfar0_d2 = n278_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:382:8  */
  assign exponentresultfar1 = n209_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:383:8  */
  assign resultbeforeroundfar = n210_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:384:8  */
  assign roundfar = roundfar1; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:385:8  */
  assign resultbeforeround = n213_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:386:8  */
  assign round = n216_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:387:8  */
  assign zerofromclose = n217_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:387:23  */
  assign zerofromclose_d1 = n279_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:388:8  */
  assign resultrounded = fpsub_3_4_f300_uid2_finalroundadd_n219; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:389:8  */
  assign synceffsub = effsub; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:389:20  */
  assign synceffsub_d1 = n280_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:389:35  */
  assign synceffsub_d2 = n281_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:390:8  */
  assign syncx = newx; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:390:15  */
  assign syncx_d1 = n282_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:390:25  */
  assign syncx_d2 = n283_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:391:8  */
  assign syncsigny = pipesigny; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:391:19  */
  assign syncsigny_d1 = n284_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:391:33  */
  assign syncsigny_d2 = n285_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:392:8  */
  assign syncressign = ressign; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:392:21  */
  assign syncressign_d1 = n286_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:392:37  */
  assign syncressign_d2 = n287_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:393:8  */
  assign underflowoverflow = n222_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:394:8  */
  assign resultnoexn = n288_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:395:8  */
  assign syncexnxy = sdexnxy; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:395:19  */
  assign syncexnxy_d1 = n289_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:395:33  */
  assign syncexnxy_d2 = n290_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:396:8  */
  assign exnr = n253_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:397:8  */
  assign sgnr = n263_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:398:8  */
  assign expsigr = n268_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:427:39  */
  assign n25_o = inx[9:8];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:427:58  */
  assign n26_o = iny[9:8];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:427:52  */
  assign n27_o = $unsigned(n25_o) >= $unsigned(n26_o);
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:427:31  */
  assign n28_o = n27_o ? 1'b1 : 1'b0;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:428:36  */
  assign n31_o = inx[9:8];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:428:54  */
  assign n32_o = iny[9:8];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:428:49  */
  assign n33_o = n31_o == n32_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:428:28  */
  assign n34_o = n33_o ? 1'b1 : 1'b0;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:429:32  */
  assign n36_o = inx[6:4];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:429:27  */
  assign n38_o = {1'b0, n36_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:430:32  */
  assign n39_o = iny[6:4];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:430:27  */
  assign n41_o = {1'b0, n39_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:431:44  */
  assign n42_o = signedexponentx - signedexponenty;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:432:43  */
  assign n43_o = signedexponenty[2:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:432:73  */
  assign n44_o = signedexponentx[2:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:432:56  */
  assign n45_o = n43_o - n44_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:433:54  */
  assign n46_o = exponentdifferencexy[3];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:433:30  */
  assign n47_o = exceptionxequaly & n46_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:433:63  */
  assign n48_o = ~exceptionxsuperiory;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:433:59  */
  assign n49_o = n47_o | n48_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:434:13  */
  assign n50_o = iny[9:8];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:434:35  */
  assign n51_o = iny[7];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:434:28  */
  assign n52_o = ~n51_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:434:26  */
  assign n53_o = {n50_o, n52_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:434:45  */
  assign n54_o = iny[6:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:434:40  */
  assign n55_o = {n53_o, n54_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:435:15  */
  assign n56_o = swap ? my : inx;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:436:16  */
  assign n57_o = swap ? inx : my;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:437:47  */
  assign n58_o = swap ? exponentdifferenceyx : n59_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:437:88  */
  assign n59_o = exponentdifferencexy[2:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:440:18  */
  assign n61_o = newx[7];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:440:30  */
  assign n62_o = newy[7];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:440:22  */
  assign n63_o = n61_o ^ n62_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:441:53  */
  assign n64_o = exponentdifference[2:1];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:441:66  */
  assign n66_o = n64_o == 2'b00;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:441:30  */
  assign n67_o = n66_o ? effsub : 1'b0;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:442:19  */
  assign n69_o = newx[9:8];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:442:38  */
  assign n70_o = newy[9:8];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:442:32  */
  assign n71_o = {n69_o, n70_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:443:21  */
  assign n72_o = newy[7];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:446:30  */
  assign n73_o = newx[3:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:446:24  */
  assign n75_o = {2'b01, n73_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:446:43  */
  assign n77_o = {n75_o, 1'b0};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:447:27  */
  assign n78_o = exponentdifference[0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:448:31  */
  assign n79_o = newy[3:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:448:25  */
  assign n81_o = {2'b01, n79_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:448:44  */
  assign n83_o = {n81_o, 1'b0};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:448:50  */
  assign n85_o = n78_o == 1'b0;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:449:31  */
  assign n86_o = newy[3:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:449:25  */
  assign n88_o = {3'b001, n86_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:447:4  */
  always @*
    case (n85_o)
      1'b1: n89_o = n83_o;
      default: n89_o = n88_o;
    endcase
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:454:25  */
  assign fpsub_3_4_f300_uid2_dualsubclose_n90 = fpsub_3_4_f300_uid2_dualsubclose_xmy; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:455:25  */
  assign fpsub_3_4_f300_uid2_dualsubclose_n91 = fpsub_3_4_f300_uid2_dualsubclose_ymx; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:450:4  */
  intdualsub_7_f300_uid444 fpsub_3_4_f300_uid2_dualsubclose (
    .clk(clk),
    .x(fracxclose1),
    .y(fracyclose1),
    .xmy(fpsub_3_4_f300_uid2_dualsubclose_xmy),
    .ymx(fpsub_3_4_f300_uid2_dualsubclose_ymx));
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:456:34  */
  assign n96_o = fracrclosexmy[6];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:457:32  */
  assign n97_o = fracrclosexmy[5:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:457:63  */
  assign n98_o = ~fracsignclose;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:457:45  */
  assign n99_o = n98_o ? n97_o : n100_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:457:86  */
  assign n100_o = fracrcloseymx[5:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:458:60  */
  assign n103_o = fracrclose1 == 6'b000000;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:458:44  */
  assign n104_o = selectclosepath & n103_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:458:19  */
  assign n105_o = n104_o ? 1'b0 : n108_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:459:18  */
  assign n106_o = newx[7];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:459:43  */
  assign n107_o = selectclosepath & fracsignclose;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:459:22  */
  assign n108_o = n106_o ^ n107_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:463:27  */
  assign norm_n109 = norm_count; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:464:23  */
  assign norm_n110 = norm_r; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:460:4  */
  normalizer_z_6_6_6_f300_uid666 norm (
    .clk(clk),
    .x(fracrclose1),
    .count(norm_count),
    .r(norm_r));
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:465:30  */
  assign n115_o = shiftedfrac[0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:465:49  */
  assign n116_o = shiftedfrac[1];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:465:34  */
  assign n117_o = n115_o & n116_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:466:45  */
  assign n120_o = nzerosnew == 3'b111;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:466:30  */
  assign n121_o = n120_o ? 1'b1 : 1'b0;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:467:42  */
  assign n123_o = newx_d1[6:4];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:467:33  */
  assign n125_o = {2'b00, n123_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:467:86  */
  assign n127_o = {2'b00, nzerosnew};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:467:56  */
  assign n128_o = n125_o - n127_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:468:78  */
  assign n129_o = shiftedfrac[4:1];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:468:65  */
  assign n130_o = {exponentresultclose_d1, n129_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:473:26  */
  assign n131_o = newy[3:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:473:20  */
  assign n133_o = {1'b1, n131_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:478:23  */
  assign rightshiftercomponent_n134 = rightshiftercomponent_r; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:479:28  */
  assign rightshiftercomponent_n135 = rightshiftercomponent_sticky; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:474:4  */
  rightshiftersticky5_by_max_7_f300_uid88 rightshiftercomponent (
    .clk(clk),
    .x(fracnewy),
    .s(shiftval),
    .r(rightshiftercomponent_r),
    .sticky(rightshiftercomponent_sticky));
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:480:20  */
  assign n141_o = {1'b0, shiftedfracy};
  assign n142_o = {effsub, effsub, effsub, effsub};
  assign n143_o = {effsub, effsub, effsub, effsub};
  assign n144_o = {n142_o, n143_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:482:30  */
  assign n145_o = fracyfar ^ effsubvector;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:483:28  */
  assign n146_o = newx[3:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:483:21  */
  assign n148_o = {2'b01, n146_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:483:42  */
  assign n150_o = {n148_o, 2'b00};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:484:31  */
  assign n151_o = ~sticky;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:484:27  */
  assign n152_o = effsub_d1 & n151_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:490:23  */
  assign fpsub_3_4_f300_uid2_fracaddfar_n153 = fpsub_3_4_f300_uid2_fracaddfar_r; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:485:4  */
  intadder_8_f300_uid1000 fpsub_3_4_f300_uid2_fracaddfar (
    .clk(clk),
    .x(fracxfar),
    .y(fracyfarxorop),
    .cin(cinaddfar),
    .r(fpsub_3_4_f300_uid2_fracaddfar_r));
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:493:45  */
  assign n156_o = fracresultfarnormstage[7:6];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:495:34  */
  assign n157_o = fracresultfarnormstage[4:1];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:495:69  */
  assign n159_o = fracleadingbits == 2'b00;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:495:48  */
  assign n160_o = n159_o ? n157_o : n164_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:496:34  */
  assign n161_o = fracresultfarnormstage[5:2];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:496:69  */
  assign n163_o = fracleadingbits == 2'b01;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:496:7  */
  assign n164_o = n163_o ? n161_o : n165_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:497:34  */
  assign n165_o = fracresultfarnormstage[6:3];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:499:34  */
  assign n166_o = fracresultfarnormstage[0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:499:63  */
  assign n168_o = fracleadingbits == 2'b00;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:499:42  */
  assign n169_o = n168_o ? n166_o : n173_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:500:34  */
  assign n170_o = fracresultfarnormstage[1];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:500:62  */
  assign n172_o = fracleadingbits == 2'b01;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:500:7  */
  assign n173_o = n172_o ? n170_o : n174_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:501:34  */
  assign n174_o = fracresultfarnormstage[2];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:503:47  */
  assign n176_o = fracleadingbits == 2'b00;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:503:26  */
  assign n177_o = n176_o ? sticky_d1 : n182_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:504:34  */
  assign n178_o = fracresultfarnormstage[0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:504:38  */
  assign n179_o = n178_o | sticky_d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:504:75  */
  assign n181_o = fracleadingbits == 2'b01;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:504:7  */
  assign n182_o = n181_o ? n179_o : n186_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:505:34  */
  assign n183_o = fracresultfarnormstage[1];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:505:63  */
  assign n184_o = fracresultfarnormstage[0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:505:38  */
  assign n185_o = n183_o | n184_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:505:67  */
  assign n186_o = n185_o | sticky_d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:506:78  */
  assign n187_o = fracresultfar1[0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:506:61  */
  assign n188_o = fracresultstickybit | n187_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:506:36  */
  assign n189_o = fracresultroundbit & n188_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:507:49  */
  assign n192_o = fracleadingbits == 2'b00;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:507:28  */
  assign n193_o = n192_o ? 2'b11 : n197_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:508:49  */
  assign n196_o = fracleadingbits == 2'b01;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:508:16  */
  assign n197_o = n196_o ? 2'b00 : 2'b01;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:510:52  */
  assign n199_o = expoperationsel[1];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:510:52  */
  assign n200_o = expoperationsel[1];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:510:52  */
  assign n201_o = expoperationsel[1];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:510:52  */
  assign n202_o = expoperationsel[1];
  assign n203_o = {n202_o, n201_o, n200_o, n199_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:510:74  */
  assign n204_o = expoperationsel[0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:510:57  */
  assign n205_o = {n203_o, n204_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:511:36  */
  assign n206_o = newx[6:4];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:511:29  */
  assign n208_o = {2'b00, n206_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:512:48  */
  assign n209_o = exponentresultfar0_d2 + exponentupdate;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:513:47  */
  assign n210_o = {exponentresultfar1, fracresultfar1};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:518:48  */
  assign n212_o = selectclosepath_d2 == 1'b1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:517:4  */
  always @*
    case (n212_o)
      1'b1: n213_o = resultbeforeroundclose;
      default: n213_o = resultbeforeroundfar;
    endcase
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:521:24  */
  assign n215_o = selectclosepath_d2 == 1'b1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:520:4  */
  always @*
    case (n215_o)
      1'b1: n216_o = roundclose;
      default: n216_o = roundfar;
    endcase
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:523:40  */
  assign n217_o = selectclosepath_d1 & resultcloseiszero;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:531:23  */
  assign fpsub_3_4_f300_uid2_finalroundadd_n219 = fpsub_3_4_f300_uid2_finalroundadd_r; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:526:4  */
  intadder_9_f300_uid1333 fpsub_3_4_f300_uid2_finalroundadd (
    .clk(clk),
    .x(resultbeforeround),
    .y(n218_o),
    .cin(round),
    .r(fpsub_3_4_f300_uid2_finalroundadd_r));
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:536:38  */
  assign n222_o = resultrounded[8:7];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:538:34  */
  assign n223_o = ~zerofromclose_d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:538:56  */
  assign n225_o = {n223_o, 1'b0};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:538:62  */
  assign n227_o = underflowoverflow == 2'b01;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:539:39  */
  assign n230_o = underflowoverflow == 2'b10;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:539:49  */
  assign n232_o = underflowoverflow == 2'b11;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:539:49  */
  assign n233_o = n230_o | n232_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:540:41  */
  assign n234_o = ~zerofromclose_d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:540:38  */
  assign n236_o = {1'b0, n234_o};
  assign n237_o = {n233_o, n227_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:537:4  */
  always @*
    case (n237_o)
      2'b10: n238_o = 2'b00;
      2'b01: n238_o = n225_o;
      default: n238_o = n236_o;
    endcase
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:541:61  */
  assign n239_o = resultrounded[6:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:541:46  */
  assign n240_o = {syncressign_d2, n239_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:545:26  */
  assign n241_o = resultnoexn[9:8];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:545:39  */
  assign n243_o = syncexnxy_d2 == 4'b0101;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:546:19  */
  assign n245_o = {1'b1, synceffsub_d2};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:546:44  */
  assign n247_o = syncexnxy_d2 == 4'b1010;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:547:41  */
  assign n250_o = syncexnxy_d2 == 4'b1110;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:548:27  */
  assign n251_o = syncexnxy_d2[3:2];
  assign n252_o = {n250_o, n247_o, n243_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:544:4  */
  always @*
    case (n252_o)
      3'b100: n253_o = 2'b11;
      3'b010: n253_o = n245_o;
      3'b001: n253_o = n241_o;
      default: n253_o = n251_o;
    endcase
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:551:26  */
  assign n254_o = resultnoexn[7];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:551:38  */
  assign n256_o = syncexnxy_d2 == 4'b0101;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:552:23  */
  assign n257_o = syncx_d2[7];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:552:27  */
  assign n258_o = n257_o & syncsigny_d2;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:552:44  */
  assign n260_o = syncexnxy_d2 == 4'b0000;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:553:23  */
  assign n261_o = syncx_d2[7];
  assign n262_o = {n260_o, n256_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:550:4  */
  always @*
    case (n262_o)
      2'b10: n263_o = n258_o;
      2'b01: n263_o = n254_o;
      default: n263_o = n261_o;
    endcase
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:556:29  */
  assign n264_o = resultnoexn[6:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:556:44  */
  assign n266_o = syncexnxy_d2 == 4'b0101;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:557:26  */
  assign n267_o = syncx_d2[6:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:555:4  */
  always @*
    case (n266_o)
      1'b1: n268_o = n264_o;
      default: n268_o = n267_o;
    endcase
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:558:14  */
  assign n269_o = {exnr, sgnr};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:558:21  */
  assign n270_o = {n269_o, expsigr};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:402:10  */
  always @(posedge clk)
    n271_q <= newx;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:402:10  */
  always @(posedge clk)
    n272_q <= effsub;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:402:10  */
  always @(posedge clk)
    n273_q <= selectclosepath;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:402:10  */
  always @(posedge clk)
    n274_q <= selectclosepath_d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:402:10  */
  always @(posedge clk)
    n275_q <= exponentresultclose;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:402:10  */
  always @(posedge clk)
    n276_q <= sticky;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:402:10  */
  always @(posedge clk)
    n277_q <= exponentresultfar0;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:402:10  */
  always @(posedge clk)
    n278_q <= exponentresultfar0_d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:402:10  */
  always @(posedge clk)
    n279_q <= zerofromclose;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:402:10  */
  always @(posedge clk)
    n280_q <= synceffsub;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:402:10  */
  always @(posedge clk)
    n281_q <= synceffsub_d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:402:10  */
  always @(posedge clk)
    n282_q <= syncx;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:402:10  */
  always @(posedge clk)
    n283_q <= syncx_d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:402:10  */
  always @(posedge clk)
    n284_q <= syncsigny;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:402:10  */
  always @(posedge clk)
    n285_q <= syncsigny_d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:402:10  */
  always @(posedge clk)
    n286_q <= syncressign;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:402:10  */
  always @(posedge clk)
    n287_q <= syncressign_d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:402:10  */
  assign n288_o = {n238_o, n240_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:402:10  */
  always @(posedge clk)
    n289_q <= syncexnxy;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_3_4.vhdl:402:10  */
  always @(posedge clk)
    n290_q <= syncexnxy_d1;
endmodule

