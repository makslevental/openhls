module intadder_11_f300_uid1333333
  (input wire clk,
   input wire [10:0] x,
   input wire [10:0] y,
   input wire cin,
   output wire [10:0] r);
  wire [10:0] rtmp;
  wire [10:0] y_d1;
  wire [10:0] y_d2;
  wire [10:0] n449_o;
  wire [10:0] n450_o;
  wire [10:0] n451_o;
  reg [10:0] n452_q;
  reg [10:0] n453_q;
  assign r = rtmp;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:243:8  */
  assign rtmp = n451_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:244:8  */
  assign y_d1 = n452_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:244:14  */
  assign y_d2 = n453_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:253:14  */
  assign n449_o = x + y_d2;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:253:21  */
  assign n450_o = {10'b0, cin};  //  uext
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:253:21  */
  assign n451_o = n449_o + n450_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:248:10  */
  always @(posedge clk)
    n452_q <= y;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:248:10  */
  always @(posedge clk)
    n453_q <= y_d1;
endmodule

module intadder_8_f300_uid100000000000000
  (input wire clk,
   input wire [7:0] x,
   input wire [7:0] y,
   input wire cin,
   output wire [7:0] r);
  wire [7:0] rtmp;
  wire [7:0] x_d1;
  wire [7:0] x_d2;
  wire [7:0] y_d1;
  wire [7:0] y_d2;
  wire [7:0] n435_o;
  wire [7:0] n436_o;
  wire [7:0] n437_o;
  reg [7:0] n438_q;
  reg [7:0] n439_q;
  reg [7:0] n440_q;
  reg [7:0] n441_q;
  assign r = rtmp;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:196:8  */
  assign rtmp = n437_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:197:8  */
  assign x_d1 = n438_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:197:14  */
  assign x_d2 = n439_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:198:8  */
  assign y_d1 = n440_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:198:14  */
  assign y_d2 = n441_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:209:17  */
  assign n435_o = x_d2 + y_d2;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:209:24  */
  assign n436_o = {7'b0, cin};  //  uext
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:209:24  */
  assign n437_o = n435_o + n436_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:202:10  */
  always @(posedge clk)
    n438_q <= x;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:202:10  */
  always @(posedge clk)
    n439_q <= x_d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:202:10  */
  always @(posedge clk)
    n440_q <= y;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:202:10  */
  always @(posedge clk)
    n441_q <= y_d1;
endmodule

module rightshiftersticky5_by_max_7_f300_uid88888888888888
  (input wire clk,
   input wire [4:0] x,
   input wire [2:0] s,
   output wire [6:0] r,
   output wire sticky);
  wire [2:0] ps;
  wire [2:0] ps_d1;
  wire [2:0] ps_d2;
  wire [6:0] xpadded;
  wire [6:0] level3;
  wire [6:0] level3_d1;
  wire stk2;
  wire [6:0] level2;
  wire [6:0] level2_d1;
  wire stk1;
  wire stk1_d1;
  wire [6:0] level1;
  wire [6:0] level1_d1;
  wire [6:0] level1_d2;
  wire stk0;
  wire [6:0] level0;
  wire [6:0] n374_o;
  wire [3:0] n376_o;
  wire n378_o;
  wire n379_o;
  wire n380_o;
  wire n381_o;
  wire n383_o;
  wire n384_o;
  wire [6:0] n385_o;
  wire [2:0] n386_o;
  wire [6:0] n388_o;
  wire [1:0] n390_o;
  wire n392_o;
  wire n393_o;
  wire n394_o;
  wire n395_o;
  wire n396_o;
  wire n398_o;
  wire n399_o;
  wire [6:0] n400_o;
  wire [4:0] n401_o;
  wire [6:0] n403_o;
  wire n405_o;
  wire n407_o;
  wire n408_o;
  wire n409_o;
  wire n410_o;
  wire n411_o;
  wire n413_o;
  wire n414_o;
  wire [6:0] n415_o;
  wire [5:0] n416_o;
  wire [6:0] n418_o;
  reg [2:0] n419_q;
  reg [2:0] n420_q;
  reg [6:0] n421_q;
  reg [6:0] n422_q;
  reg n423_q;
  reg [6:0] n424_q;
  reg [6:0] n425_q;
  assign r = level0;
  assign sticky = stk0;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:131:8  */
  assign ps = s; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:131:12  */
  assign ps_d1 = n419_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:131:19  */
  assign ps_d2 = n420_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:132:8  */
  assign xpadded = n374_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:133:8  */
  assign level3 = xpadded; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:133:16  */
  assign level3_d1 = n421_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:134:8  */
  assign stk2 = n381_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:135:8  */
  assign level2 = n385_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:135:16  */
  assign level2_d1 = n422_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:136:8  */
  assign stk1 = n396_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:136:14  */
  assign stk1_d1 = n423_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:137:8  */
  assign level1 = n400_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:137:16  */
  assign level1_d1 = n424_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:137:27  */
  assign level1_d2 = n425_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:138:8  */
  assign stk0 = n411_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:139:8  */
  assign level0 = n415_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:154:16  */
  assign n374_o = {x, 2'b00};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:156:31  */
  assign n376_o = level3_d1[3:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:156:43  */
  assign n378_o = n376_o != 4'b0000;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:156:61  */
  assign n379_o = ps_d1[2];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:156:52  */
  assign n380_o = n378_o & n379_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:156:16  */
  assign n381_o = n380_o ? 1'b1 : 1'b0;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:157:30  */
  assign n383_o = ps[2];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:157:33  */
  assign n384_o = ~n383_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:157:22  */
  assign n385_o = n384_o ? level3 : n388_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:157:74  */
  assign n386_o = level3[6:4];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:157:66  */
  assign n388_o = {4'b0000, n386_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:158:31  */
  assign n390_o = level2_d1[1:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:158:43  */
  assign n392_o = n390_o != 2'b00;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:158:59  */
  assign n393_o = ps_d1[1];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:158:50  */
  assign n394_o = n392_o & n393_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:158:68  */
  assign n395_o = n394_o | stk2;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:158:16  */
  assign n396_o = n395_o ? 1'b1 : 1'b0;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:159:30  */
  assign n398_o = ps[1];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:159:33  */
  assign n399_o = ~n398_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:159:22  */
  assign n400_o = n399_o ? level2 : n403_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:159:74  */
  assign n401_o = level2[6:2];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:159:66  */
  assign n403_o = {2'b00, n401_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:160:31  */
  assign n405_o = level1_d2[0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:160:43  */
  assign n407_o = n405_o != 1'b0;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:160:58  */
  assign n408_o = ps_d2[0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:160:49  */
  assign n409_o = n407_o & n408_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:160:67  */
  assign n410_o = n409_o | stk1_d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:160:16  */
  assign n411_o = n410_o ? 1'b1 : 1'b0;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:161:30  */
  assign n413_o = ps[0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:161:33  */
  assign n414_o = ~n413_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:161:22  */
  assign n415_o = n414_o ? level1 : n418_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:161:74  */
  assign n416_o = level1[6:1];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:161:66  */
  assign n418_o = {1'b0, n416_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:143:10  */
  always @(posedge clk)
    n419_q <= ps;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:143:10  */
  always @(posedge clk)
    n420_q <= ps_d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:143:10  */
  always @(posedge clk)
    n421_q <= level3;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:143:10  */
  always @(posedge clk)
    n422_q <= level2;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:143:10  */
  always @(posedge clk)
    n423_q <= stk1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:143:10  */
  always @(posedge clk)
    n424_q <= level1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:143:10  */
  always @(posedge clk)
    n425_q <= level1_d1;
endmodule

module normalizer_z_6_6_6_f300_uid666666
  (input wire clk,
   input wire [5:0] x,
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
  wire [3:0] n323_o;
  wire n325_o;
  wire n326_o;
  wire n328_o;
  wire [5:0] n329_o;
  wire [1:0] n330_o;
  wire [5:0] n332_o;
  wire [1:0] n334_o;
  wire n336_o;
  wire n337_o;
  wire n339_o;
  wire [5:0] n340_o;
  wire [3:0] n341_o;
  wire [5:0] n343_o;
  wire n345_o;
  wire n347_o;
  wire n348_o;
  wire n350_o;
  wire [5:0] n351_o;
  wire [4:0] n352_o;
  wire [5:0] n354_o;
  wire [1:0] n355_o;
  wire [2:0] n356_o;
  reg [5:0] n357_q;
  reg [5:0] n358_q;
  reg n359_q;
  assign count = scount;
  assign r = level0;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:69:8  */
  assign level3 = x; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:88:22  */
  assign level3_d1 = n357_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:70:8  */
  assign count2 = n326_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:91:19  */
  assign level2 = n329_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:72:8  */
  assign count1 = n337_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:73:8  */
  assign level1 = n340_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:94:22  */
  assign level1_d1 = n358_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:74:8  */
  assign count0 = n348_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:74:16  */
  assign count0_d1 = n359_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:75:8  */
  assign level0 = n351_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:76:8  */
  assign scount = n356_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:87:31  */
  assign n323_o = level3_d1[5:2];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:87:44  */
  assign n325_o = n323_o == 4'b0000;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:87:17  */
  assign n326_o = n325_o ? 1'b1 : 1'b0;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:88:46  */
  assign n328_o = ~count2;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:88:35  */
  assign n329_o = n328_o ? level3_d1 : n332_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:88:65  */
  assign n330_o = level3_d1[1:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:88:78  */
  assign n332_o = {n330_o, 4'b0000};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:90:28  */
  assign n334_o = level2[5:4];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:90:41  */
  assign n336_o = n334_o == 2'b00;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:90:17  */
  assign n337_o = n336_o ? 1'b1 : 1'b0;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:91:43  */
  assign n339_o = ~count1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:91:32  */
  assign n340_o = n339_o ? level2 : n343_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:91:59  */
  assign n341_o = level2[3:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:91:72  */
  assign n343_o = {n341_o, 2'b00};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:93:28  */
  assign n345_o = level1[5];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:93:41  */
  assign n347_o = n345_o == 1'b0;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:93:17  */
  assign n348_o = n347_o ? 1'b1 : 1'b0;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:94:49  */
  assign n350_o = ~count0_d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:94:35  */
  assign n351_o = n350_o ? level1_d1 : n354_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:94:68  */
  assign n352_o = level1_d1[4:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:94:81  */
  assign n354_o = {n352_o, 1'b0};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:97:21  */
  assign n355_o = {count2, count1};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:97:30  */
  assign n356_o = {n355_o, count0};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:80:10  */
  always @(posedge clk)
    n357_q <= level3;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:80:10  */
  always @(posedge clk)
    n358_q <= level1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:80:10  */
  always @(posedge clk)
    n359_q <= count0;
endmodule

module intdualsub_7_f300_uid444444
  (input wire clk,
   input wire [6:0] x,
   input wire [6:0] y,
   output wire [6:0] xmy,
   output wire [6:0] ymx);
  wire [6:0] temprxmy;
  wire [6:0] temprymx;
  wire [6:0] n303_o;
  wire [6:0] n304_o;
  wire [6:0] n307_o;
  wire [6:0] n308_o;
  wire [6:0] n309_o;
  wire [6:0] n312_o;
  assign xmy = temprxmy;
  assign ymx = temprymx;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:31:8  */
  assign temprxmy = n307_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:32:8  */
  assign temprymx = n312_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:34:21  */
  assign n303_o = ~y;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:34:18  */
  assign n304_o = x + n303_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:34:28  */
  assign n307_o = n304_o + 7'b0000001;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:35:21  */
  assign n308_o = ~x;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:35:18  */
  assign n309_o = y + n308_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:35:28  */
  assign n312_o = n309_o + 7'b0000001;
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
  wire [5:0] signedexponentx;
  wire [5:0] signedexponenty;
  wire [5:0] exponentdifferencexy;
  wire [4:0] exponentdifferenceyx;
  wire swap;
  wire [11:0] my;
  wire [11:0] newx;
  wire [11:0] newx_d1;
  wire [11:0] newy;
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
  wire [6:0] exponentresultclose;
  wire [6:0] exponentresultclose_d1;
  wire [10:0] resultbeforeroundclose;
  wire roundclose;
  wire resultcloseiszero;
  wire [4:0] fracnewy;
  wire [6:0] shiftedfracy;
  wire sticky;
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
  wire [6:0] exponentupdate;
  wire [6:0] exponentresultfar0;
  wire [6:0] exponentresultfar0_d1;
  wire [6:0] exponentresultfar0_d2;
  wire [6:0] exponentresultfar1;
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
  wire [1:0] n50_o;
  wire n51_o;
  wire n52_o;
  wire [2:0] n53_o;
  wire [8:0] n54_o;
  wire [11:0] n55_o;
  wire [11:0] n56_o;
  wire [11:0] n57_o;
  wire [4:0] n58_o;
  wire [4:0] n59_o;
  wire n60_o;
  wire n61_o;
  wire n62_o;
  wire [2:0] n63_o;
  wire n64_o;
  wire [2:0] n65_o;
  wire n67_o;
  wire n68_o;
  wire n69_o;
  wire [3:0] n70_o;
  wire n72_o;
  wire n73_o;
  wire [1:0] n75_o;
  wire [1:0] n76_o;
  wire [3:0] n77_o;
  wire n78_o;
  wire [3:0] n79_o;
  wire [5:0] n81_o;
  wire [6:0] n83_o;
  wire n84_o;
  wire [3:0] n85_o;
  wire [5:0] n87_o;
  wire [6:0] n89_o;
  wire n91_o;
  wire [3:0] n92_o;
  wire [6:0] n94_o;
  reg [6:0] n95_o;
  wire [6:0] fpsub_5_4_f300_uid2_dualsubclose_n96;
  wire [6:0] fpsub_5_4_f300_uid2_dualsubclose_n97;
  wire [6:0] fpsub_5_4_f300_uid2_dualsubclose_xmy;
  wire [6:0] fpsub_5_4_f300_uid2_dualsubclose_ymx;
  wire n102_o;
  wire [5:0] n103_o;
  wire n104_o;
  wire [5:0] n105_o;
  wire [5:0] n106_o;
  wire n109_o;
  wire n110_o;
  wire n111_o;
  wire n112_o;
  wire n113_o;
  wire n114_o;
  wire [2:0] norm_n115;
  wire [5:0] norm_n116;
  wire [2:0] norm_count;
  wire [5:0] norm_r;
  wire n121_o;
  wire n122_o;
  wire n123_o;
  wire n126_o;
  wire n127_o;
  wire [4:0] n129_o;
  wire [6:0] n131_o;
  wire [6:0] n133_o;
  wire [6:0] n134_o;
  wire [3:0] n135_o;
  wire [10:0] n136_o;
  wire [3:0] n137_o;
  wire [4:0] n139_o;
  wire [6:0] rightshiftercomponent_n140;
  wire rightshiftercomponent_n141;
  wire [6:0] rightshiftercomponent_r;
  wire rightshiftercomponent_sticky;
  wire [7:0] n147_o;
  wire [3:0] n148_o;
  wire [3:0] n149_o;
  wire [7:0] n150_o;
  wire [7:0] n151_o;
  wire [3:0] n152_o;
  wire [5:0] n154_o;
  wire [7:0] n156_o;
  wire n157_o;
  wire n158_o;
  wire [7:0] fpsub_5_4_f300_uid2_fracaddfar_n159;
  wire [7:0] fpsub_5_4_f300_uid2_fracaddfar_r;
  wire [1:0] n162_o;
  wire [3:0] n163_o;
  wire n165_o;
  wire [3:0] n166_o;
  wire [3:0] n167_o;
  wire n169_o;
  wire [3:0] n170_o;
  wire [3:0] n171_o;
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
  wire [3:0] n211_o;
  wire [1:0] n212_o;
  wire [5:0] n213_o;
  wire n214_o;
  wire [6:0] n215_o;
  wire [4:0] n216_o;
  wire [6:0] n218_o;
  wire [6:0] n219_o;
  wire [10:0] n220_o;
  wire n222_o;
  reg [10:0] n223_o;
  wire n225_o;
  reg n226_o;
  wire n227_o;
  localparam [10:0] n228_o = 11'b00000000000;
  wire [10:0] fpsub_5_4_f300_uid2_finalroundadd_n229;
  wire [10:0] fpsub_5_4_f300_uid2_finalroundadd_r;
  wire [1:0] n232_o;
  wire n233_o;
  wire [1:0] n235_o;
  wire n237_o;
  wire n240_o;
  wire n242_o;
  wire n243_o;
  wire n244_o;
  wire [1:0] n246_o;
  wire [1:0] n247_o;
  reg [1:0] n248_o;
  wire [8:0] n249_o;
  wire [9:0] n250_o;
  wire [1:0] n251_o;
  wire n253_o;
  wire [1:0] n255_o;
  wire n257_o;
  wire n260_o;
  wire [1:0] n261_o;
  wire [2:0] n262_o;
  reg [1:0] n263_o;
  wire n264_o;
  wire n266_o;
  wire n267_o;
  wire n268_o;
  wire n270_o;
  wire n271_o;
  wire [1:0] n272_o;
  reg n273_o;
  wire [8:0] n274_o;
  wire n276_o;
  wire [8:0] n277_o;
  reg [8:0] n278_o;
  wire [2:0] n279_o;
  wire [11:0] n280_o;
  reg [11:0] n281_q;
  reg n282_q;
  reg n283_q;
  reg n284_q;
  reg n285_q;
  reg [6:0] n286_q;
  reg [6:0] n287_q;
  reg [6:0] n288_q;
  reg n289_q;
  reg n290_q;
  reg n291_q;
  reg [11:0] n292_q;
  reg [11:0] n293_q;
  reg n294_q;
  reg n295_q;
  reg n296_q;
  reg n297_q;
  wire [11:0] n298_o;
  reg [3:0] n299_q;
  reg [3:0] n300_q;
  assign R = n280_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:326:8  */
  assign inx = X; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:327:8  */
  assign iny = Y; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:328:8  */
  assign exceptionxsuperiory = n28_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:329:8  */
  assign exceptionxequaly = n34_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:330:8  */
  assign signedexponentx = n38_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:331:8  */
  assign signedexponenty = n41_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:332:8  */
  assign exponentdifferencexy = n42_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:333:8  */
  assign exponentdifferenceyx = n45_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:334:8  */
  assign swap = n49_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:335:8  */
  assign my = n55_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:336:8  */
  assign newx = n56_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:336:14  */
  assign newx_d1 = n281_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:337:8  */
  assign newy = n57_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:338:8  */
  assign exponentdifference = n58_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:339:8  */
  assign shiftedout = n62_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:340:8  */
  assign shiftval = n65_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:341:8  */
  assign effsub = n69_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:341:16  */
  assign effsub_d1 = n282_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:341:27  */
  assign effsub_d2 = n283_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:342:8  */
  assign selectclosepath = n73_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:342:25  */
  assign selectclosepath_d1 = n284_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:342:45  */
  assign selectclosepath_d2 = n285_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:343:8  */
  assign sdexnxy = n77_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:344:8  */
  assign pipesigny = n78_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:345:8  */
  assign fracxclose1 = n83_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:346:8  */
  assign fracyclose1 = n95_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:347:8  */
  assign fracrclosexmy = fpsub_5_4_f300_uid2_dualsubclose_n96; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:348:8  */
  assign fracrcloseymx = fpsub_5_4_f300_uid2_dualsubclose_n97; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:349:8  */
  assign fracsignclose = n102_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:350:8  */
  assign fracrclose1 = n105_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:351:8  */
  assign ressign = n111_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:352:8  */
  assign nzerosnew = norm_n115; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:353:8  */
  assign shiftedfrac = norm_n116; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:354:8  */
  assign roundclose0 = n123_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:355:8  */
  assign resultcloseiszero0 = n127_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:356:8  */
  assign exponentresultclose = n134_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:465:52  */
  assign exponentresultclose_d1 = n286_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:357:8  */
  assign resultbeforeroundclose = n136_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:358:8  */
  assign roundclose = roundclose0; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:359:8  */
  assign resultcloseiszero = resultcloseiszero0; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:360:8  */
  assign fracnewy = n139_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:361:8  */
  assign shiftedfracy = rightshiftercomponent_n140; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:362:8  */
  assign sticky = rightshiftercomponent_n141; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:363:8  */
  assign fracyfar = n147_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:364:8  */
  assign effsubvector = n150_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:365:8  */
  assign fracyfarxorop = n151_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:366:8  */
  assign fracxfar = n156_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:367:8  */
  assign cinaddfar = n158_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:368:8  */
  assign fracresultfar0 = fpsub_5_4_f300_uid2_fracaddfar_n159; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:369:8  */
  assign fracresultfarnormstage = fracresultfar0; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:370:8  */
  assign fracleadingbits = n162_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:371:8  */
  assign fracresultfar1 = n166_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:372:8  */
  assign fracresultroundbit = n175_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:373:8  */
  assign fracresultstickybit = n183_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:374:8  */
  assign roundfar1 = n195_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:375:8  */
  assign expoperationsel = n199_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:376:8  */
  assign exponentupdate = n215_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:377:8  */
  assign exponentresultfar0 = n218_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:377:28  */
  assign exponentresultfar0_d1 = n287_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:377:51  */
  assign exponentresultfar0_d2 = n288_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:378:8  */
  assign exponentresultfar1 = n219_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:379:8  */
  assign resultbeforeroundfar = n220_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:380:8  */
  assign roundfar = roundfar1; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:381:8  */
  assign resultbeforeround = n223_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:382:8  */
  assign round = n226_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:383:8  */
  assign zerofromclose = n227_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:383:23  */
  assign zerofromclose_d1 = n289_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:384:8  */
  assign resultrounded = fpsub_5_4_f300_uid2_finalroundadd_n229; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:385:8  */
  assign synceffsub = effsub; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:385:20  */
  assign synceffsub_d1 = n290_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:385:35  */
  assign synceffsub_d2 = n291_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:386:8  */
  assign syncx = newx; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:386:15  */
  assign syncx_d1 = n292_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:386:25  */
  assign syncx_d2 = n293_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:387:8  */
  assign syncsigny = pipesigny; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:387:19  */
  assign syncsigny_d1 = n294_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:387:33  */
  assign syncsigny_d2 = n295_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:388:8  */
  assign syncressign = ressign; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:388:21  */
  assign syncressign_d1 = n296_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:388:37  */
  assign syncressign_d2 = n297_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:389:8  */
  assign underflowoverflow = n232_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:390:8  */
  assign resultnoexn = n298_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:391:8  */
  assign syncexnxy = sdexnxy; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:391:19  */
  assign syncexnxy_d1 = n299_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:391:33  */
  assign syncexnxy_d2 = n300_q; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:392:8  */
  assign exnr = n263_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:393:8  */
  assign sgnr = n273_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:394:8  */
  assign expsigr = n278_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:423:39  */
  assign n25_o = inx[11:10];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:423:60  */
  assign n26_o = iny[11:10];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:423:54  */
  assign n27_o = $unsigned(n25_o) >= $unsigned(n26_o);
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:423:31  */
  assign n28_o = n27_o ? 1'b1 : 1'b0;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:424:36  */
  assign n31_o = inx[11:10];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:424:56  */
  assign n32_o = iny[11:10];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:424:51  */
  assign n33_o = n31_o == n32_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:424:28  */
  assign n34_o = n33_o ? 1'b1 : 1'b0;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:425:32  */
  assign n36_o = inx[8:4];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:425:27  */
  assign n38_o = {1'b0, n36_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:426:32  */
  assign n39_o = iny[8:4];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:426:27  */
  assign n41_o = {1'b0, n39_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:427:44  */
  assign n42_o = signedexponentx - signedexponenty;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:428:43  */
  assign n43_o = signedexponenty[4:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:428:73  */
  assign n44_o = signedexponentx[4:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:428:56  */
  assign n45_o = n43_o - n44_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:429:54  */
  assign n46_o = exponentdifferencexy[5];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:429:30  */
  assign n47_o = exceptionxequaly & n46_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:429:63  */
  assign n48_o = ~exceptionxsuperiory;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:429:59  */
  assign n49_o = n47_o | n48_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:430:13  */
  assign n50_o = iny[11:10];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:430:37  */
  assign n51_o = iny[9];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:430:30  */
  assign n52_o = ~n51_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:430:28  */
  assign n53_o = {n50_o, n52_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:430:47  */
  assign n54_o = iny[8:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:430:42  */
  assign n55_o = {n53_o, n54_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:431:15  */
  assign n56_o = swap ? my : inx;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:432:16  */
  assign n57_o = swap ? inx : my;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:433:47  */
  assign n58_o = swap ? exponentdifferenceyx : n59_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:433:88  */
  assign n59_o = exponentdifferencexy[4:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:434:36  */
  assign n60_o = exponentdifference[4];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:434:61  */
  assign n61_o = exponentdifference[3];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:434:40  */
  assign n62_o = n60_o | n61_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:435:34  */
  assign n63_o = exponentdifference[2:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:435:62  */
  assign n64_o = ~shiftedout;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:435:47  */
  assign n65_o = n64_o ? n63_o : 3'b111;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:437:18  */
  assign n67_o = newx[9];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:437:30  */
  assign n68_o = newy[9];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:437:22  */
  assign n69_o = n67_o ^ n68_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:438:53  */
  assign n70_o = exponentdifference[4:1];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:438:66  */
  assign n72_o = n70_o == 4'b0000;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:438:30  */
  assign n73_o = n72_o ? effsub : 1'b0;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:439:19  */
  assign n75_o = newx[11:10];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:439:40  */
  assign n76_o = newy[11:10];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:439:34  */
  assign n77_o = {n75_o, n76_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:440:21  */
  assign n78_o = newy[9];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:443:30  */
  assign n79_o = newx[3:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:443:24  */
  assign n81_o = {2'b01, n79_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:443:43  */
  assign n83_o = {n81_o, 1'b0};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:444:27  */
  assign n84_o = exponentdifference[0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:445:31  */
  assign n85_o = newy[3:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:445:25  */
  assign n87_o = {2'b01, n85_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:445:44  */
  assign n89_o = {n87_o, 1'b0};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:445:50  */
  assign n91_o = n84_o == 1'b0;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:446:31  */
  assign n92_o = newy[3:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:446:25  */
  assign n94_o = {3'b001, n92_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:444:4  */
  always @*
    case (n91_o)
      1'b1: n95_o = n89_o;
      default: n95_o = n94_o;
    endcase
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:451:25  */
  assign fpsub_5_4_f300_uid2_dualsubclose_n96 = fpsub_5_4_f300_uid2_dualsubclose_xmy; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:452:25  */
  assign fpsub_5_4_f300_uid2_dualsubclose_n97 = fpsub_5_4_f300_uid2_dualsubclose_ymx; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:447:4  */
  intdualsub_7_f300_uid444444 fpsub_5_4_f300_uid2_dualsubclose (
    .clk(clk),
    .x(fracxclose1),
    .y(fracyclose1),
    .xmy(fpsub_5_4_f300_uid2_dualsubclose_xmy),
    .ymx(fpsub_5_4_f300_uid2_dualsubclose_ymx));
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:453:34  */
  assign n102_o = fracrclosexmy[6];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:454:32  */
  assign n103_o = fracrclosexmy[5:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:454:63  */
  assign n104_o = ~fracsignclose;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:454:45  */
  assign n105_o = n104_o ? n103_o : n106_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:454:86  */
  assign n106_o = fracrcloseymx[5:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:455:60  */
  assign n109_o = fracrclose1 == 6'b000000;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:455:44  */
  assign n110_o = selectclosepath & n109_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:455:19  */
  assign n111_o = n110_o ? 1'b0 : n114_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:456:18  */
  assign n112_o = newx[9];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:456:43  */
  assign n113_o = selectclosepath & fracsignclose;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:456:22  */
  assign n114_o = n112_o ^ n113_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:460:27  */
  assign norm_n115 = norm_count; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:461:23  */
  assign norm_n116 = norm_r; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:457:4  */
  normalizer_z_6_6_6_f300_uid666666 norm (
    .clk(clk),
    .x(fracrclose1),
    .count(norm_count),
    .r(norm_r));
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:462:30  */
  assign n121_o = shiftedfrac[0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:462:49  */
  assign n122_o = shiftedfrac[1];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:462:34  */
  assign n123_o = n121_o & n122_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:463:45  */
  assign n126_o = nzerosnew == 3'b111;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:463:30  */
  assign n127_o = n126_o ? 1'b1 : 1'b0;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:464:42  */
  assign n129_o = newx_d1[8:4];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:464:33  */
  assign n131_o = {2'b00, n129_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:464:86  */
  assign n133_o = {4'b0000, nzerosnew};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:464:56  */
  assign n134_o = n131_o - n133_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:465:78  */
  assign n135_o = shiftedfrac[4:1];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:465:65  */
  assign n136_o = {exponentresultclose_d1, n135_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:470:26  */
  assign n137_o = newy[3:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:470:20  */
  assign n139_o = {1'b1, n137_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:475:23  */
  assign rightshiftercomponent_n140 = rightshiftercomponent_r; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:476:28  */
  assign rightshiftercomponent_n141 = rightshiftercomponent_sticky; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:471:4  */
  rightshiftersticky5_by_max_7_f300_uid88888888888888 rightshiftercomponent (
    .clk(clk),
    .x(fracnewy),
    .s(shiftval),
    .r(rightshiftercomponent_r),
    .sticky(rightshiftercomponent_sticky));
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:477:20  */
  assign n147_o = {1'b0, shiftedfracy};
  assign n148_o = {effsub, effsub, effsub, effsub};
  assign n149_o = {effsub, effsub, effsub, effsub};
  assign n150_o = {n148_o, n149_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:479:30  */
  assign n151_o = fracyfar ^ effsubvector;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:480:28  */
  assign n152_o = newx[3:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:480:21  */
  assign n154_o = {2'b01, n152_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:480:42  */
  assign n156_o = {n154_o, 2'b00};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:481:31  */
  assign n157_o = ~sticky;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:481:27  */
  assign n158_o = effsub_d2 & n157_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:487:23  */
  assign fpsub_5_4_f300_uid2_fracaddfar_n159 = fpsub_5_4_f300_uid2_fracaddfar_r; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:482:4  */
  intadder_8_f300_uid100000000000000 fpsub_5_4_f300_uid2_fracaddfar (
    .clk(clk),
    .x(fracxfar),
    .y(fracyfarxorop),
    .cin(cinaddfar),
    .r(fpsub_5_4_f300_uid2_fracaddfar_r));
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:490:45  */
  assign n162_o = fracresultfarnormstage[7:6];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:492:34  */
  assign n163_o = fracresultfarnormstage[4:1];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:492:69  */
  assign n165_o = fracleadingbits == 2'b00;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:492:48  */
  assign n166_o = n165_o ? n163_o : n170_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:493:34  */
  assign n167_o = fracresultfarnormstage[5:2];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:493:69  */
  assign n169_o = fracleadingbits == 2'b01;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:493:7  */
  assign n170_o = n169_o ? n167_o : n171_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:494:34  */
  assign n171_o = fracresultfarnormstage[6:3];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:496:34  */
  assign n172_o = fracresultfarnormstage[0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:496:63  */
  assign n174_o = fracleadingbits == 2'b00;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:496:42  */
  assign n175_o = n174_o ? n172_o : n179_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:497:34  */
  assign n176_o = fracresultfarnormstage[1];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:497:62  */
  assign n178_o = fracleadingbits == 2'b01;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:497:7  */
  assign n179_o = n178_o ? n176_o : n180_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:498:34  */
  assign n180_o = fracresultfarnormstage[2];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:500:47  */
  assign n182_o = fracleadingbits == 2'b00;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:500:26  */
  assign n183_o = n182_o ? sticky : n188_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:501:34  */
  assign n184_o = fracresultfarnormstage[0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:501:38  */
  assign n185_o = n184_o | sticky;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:501:72  */
  assign n187_o = fracleadingbits == 2'b01;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:501:7  */
  assign n188_o = n187_o ? n185_o : n192_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:502:34  */
  assign n189_o = fracresultfarnormstage[1];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:502:63  */
  assign n190_o = fracresultfarnormstage[0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:502:38  */
  assign n191_o = n189_o | n190_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:502:67  */
  assign n192_o = n191_o | sticky;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:503:78  */
  assign n193_o = fracresultfar1[0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:503:61  */
  assign n194_o = fracresultstickybit | n193_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:503:36  */
  assign n195_o = fracresultroundbit & n194_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:504:49  */
  assign n198_o = fracleadingbits == 2'b00;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:504:28  */
  assign n199_o = n198_o ? 2'b11 : n203_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:505:49  */
  assign n202_o = fracleadingbits == 2'b01;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:505:16  */
  assign n203_o = n202_o ? 2'b00 : 2'b01;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:507:52  */
  assign n205_o = expoperationsel[1];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:507:52  */
  assign n206_o = expoperationsel[1];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:507:52  */
  assign n207_o = expoperationsel[1];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:507:52  */
  assign n208_o = expoperationsel[1];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:507:52  */
  assign n209_o = expoperationsel[1];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:507:52  */
  assign n210_o = expoperationsel[1];
  assign n211_o = {n210_o, n209_o, n208_o, n207_o};
  assign n212_o = {n206_o, n205_o};
  assign n213_o = {n211_o, n212_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:507:74  */
  assign n214_o = expoperationsel[0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:507:57  */
  assign n215_o = {n213_o, n214_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:508:36  */
  assign n216_o = newx[8:4];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:508:29  */
  assign n218_o = {2'b00, n216_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:509:48  */
  assign n219_o = exponentresultfar0_d2 + exponentupdate;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:510:47  */
  assign n220_o = {exponentresultfar1, fracresultfar1};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:515:48  */
  assign n222_o = selectclosepath_d2 == 1'b1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:514:4  */
  always @*
    case (n222_o)
      1'b1: n223_o = resultbeforeroundclose;
      default: n223_o = resultbeforeroundfar;
    endcase
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:518:24  */
  assign n225_o = selectclosepath_d2 == 1'b1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:517:4  */
  always @*
    case (n225_o)
      1'b1: n226_o = roundclose;
      default: n226_o = roundfar;
    endcase
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:520:40  */
  assign n227_o = selectclosepath_d1 & resultcloseiszero;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:528:23  */
  assign fpsub_5_4_f300_uid2_finalroundadd_n229 = fpsub_5_4_f300_uid2_finalroundadd_r; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:523:4  */
  intadder_11_f300_uid1333333 fpsub_5_4_f300_uid2_finalroundadd (
    .clk(clk),
    .x(resultbeforeround),
    .y(n228_o),
    .cin(round),
    .r(fpsub_5_4_f300_uid2_finalroundadd_r));
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:533:38  */
  assign n232_o = resultrounded[10:9];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:535:36  */
  assign n233_o = ~zerofromclose_d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:535:58  */
  assign n235_o = {n233_o, 1'b0};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:535:64  */
  assign n237_o = underflowoverflow == 2'b01;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:536:39  */
  assign n240_o = underflowoverflow == 2'b10;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:536:49  */
  assign n242_o = underflowoverflow == 2'b11;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:536:49  */
  assign n243_o = n240_o | n242_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:537:41  */
  assign n244_o = ~zerofromclose_d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:537:38  */
  assign n246_o = {1'b0, n244_o};
  assign n247_o = {n243_o, n237_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:534:4  */
  always @*
    case (n247_o)
      2'b10: n248_o = 2'b00;
      2'b01: n248_o = n235_o;
      default: n248_o = n246_o;
    endcase
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:538:61  */
  assign n249_o = resultrounded[8:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:538:46  */
  assign n250_o = {syncressign_d2, n249_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:542:26  */
  assign n251_o = resultnoexn[11:10];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:542:41  */
  assign n253_o = syncexnxy_d2 == 4'b0101;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:543:19  */
  assign n255_o = {1'b1, synceffsub_d2};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:543:44  */
  assign n257_o = syncexnxy_d2 == 4'b1010;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:544:41  */
  assign n260_o = syncexnxy_d2 == 4'b1110;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:545:27  */
  assign n261_o = syncexnxy_d2[3:2];
  assign n262_o = {n260_o, n257_o, n253_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:541:4  */
  always @*
    case (n262_o)
      3'b100: n263_o = 2'b11;
      3'b010: n263_o = n255_o;
      3'b001: n263_o = n251_o;
      default: n263_o = n261_o;
    endcase
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:548:26  */
  assign n264_o = resultnoexn[9];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:548:38  */
  assign n266_o = syncexnxy_d2 == 4'b0101;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:549:23  */
  assign n267_o = syncx_d2[9];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:549:27  */
  assign n268_o = n267_o & syncsigny_d2;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:549:44  */
  assign n270_o = syncexnxy_d2 == 4'b0000;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:550:23  */
  assign n271_o = syncx_d2[9];
  assign n272_o = {n270_o, n266_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:547:4  */
  always @*
    case (n272_o)
      2'b10: n273_o = n268_o;
      2'b01: n273_o = n264_o;
      default: n273_o = n271_o;
    endcase
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:553:29  */
  assign n274_o = resultnoexn[8:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:553:44  */
  assign n276_o = syncexnxy_d2 == 4'b0101;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:554:26  */
  assign n277_o = syncx_d2[8:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:552:4  */
  always @*
    case (n276_o)
      1'b1: n278_o = n274_o;
      default: n278_o = n277_o;
    endcase
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:555:14  */
  assign n279_o = {exnr, sgnr};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:555:21  */
  assign n280_o = {n279_o, expsigr};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:398:10  */
  always @(posedge clk)
    n281_q <= newx;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:398:10  */
  always @(posedge clk)
    n282_q <= effsub;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:398:10  */
  always @(posedge clk)
    n283_q <= effsub_d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:398:10  */
  always @(posedge clk)
    n284_q <= selectclosepath;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:398:10  */
  always @(posedge clk)
    n285_q <= selectclosepath_d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:398:10  */
  always @(posedge clk)
    n286_q <= exponentresultclose;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:398:10  */
  always @(posedge clk)
    n287_q <= exponentresultfar0;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:398:10  */
  always @(posedge clk)
    n288_q <= exponentresultfar0_d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:398:10  */
  always @(posedge clk)
    n289_q <= zerofromclose;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:398:10  */
  always @(posedge clk)
    n290_q <= synceffsub;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:398:10  */
  always @(posedge clk)
    n291_q <= synceffsub_d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:398:10  */
  always @(posedge clk)
    n292_q <= syncx;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:398:10  */
  always @(posedge clk)
    n293_q <= syncx_d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:398:10  */
  always @(posedge clk)
    n294_q <= syncsigny;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:398:10  */
  always @(posedge clk)
    n295_q <= syncsigny_d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:398:10  */
  always @(posedge clk)
    n296_q <= syncressign;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:398:10  */
  always @(posedge clk)
    n297_q <= syncressign_d1;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:398:10  */
  assign n298_o = {n248_o, n250_o};
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:398:10  */
  always @(posedge clk)
    n299_q <= syncexnxy;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_5_4.vhdl:398:10  */
  always @(posedge clk)
    n300_q <= syncexnxy_d1;
endmodule

