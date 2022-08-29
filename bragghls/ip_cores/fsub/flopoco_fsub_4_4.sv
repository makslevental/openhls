module intadder_10_f300_uid13333
    (input wire clk,
        input wire [9:0] x,
        input wire [9:0] y,
        input wire cin,
       output wire [9:0] r);
    wire[9:0] rtmp;
    wire[9:0] y_d1;
    wire[9:0] y_d2;
    wire[9:0] n445_o;
    wire[9:0] n446_o;
    wire[9:0] n447_o;
    reg[9:0] n448_q;
    reg[9:0] n449_q;
    assign r = rtmp;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:243:8  */
    assign rtmp = n447_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:244:8  */
    assign y_d1 = n448_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:244:14  */
    assign y_d2 = n449_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:253:14  */
    assign n445_o = x+y_d2;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:253:21  */
    assign n446_o = {9'b0, cin};  //  uext
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:253:21  */
    assign n447_o = n445_o+n446_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:248:10  */
    always @(posedge clk)
        n448_q <= y;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:248:10  */
    always @(posedge clk)
        n449_q <= y_d1;
endmodule

module intadder_8_f300_uid1000
    (input wire clk,
        input wire [7:0] x,
        input wire [7:0] y,
        input wire cin,
       output wire [7:0] r);
    wire[7:0] rtmp;
    wire[7:0] x_d1;
    wire[7:0] x_d2;
    wire[7:0] y_d1;
    wire[7:0] y_d2;
    wire[7:0] n431_o;
    wire[7:0] n432_o;
    wire[7:0] n433_o;
    reg[7:0] n434_q;
    reg[7:0] n435_q;
    reg[7:0] n436_q;
    reg[7:0] n437_q;
    assign r = rtmp;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:196:8  */
    assign rtmp = n433_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:197:8  */
    assign x_d1 = n434_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:197:14  */
    assign x_d2 = n435_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:198:8  */
    assign y_d1 = n436_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:198:14  */
    assign y_d2 = n437_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:209:17  */
    assign n431_o = x_d2+y_d2;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:209:24  */
    assign n432_o = {7'b0, cin};  //  uext
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:209:24  */
    assign n433_o = n431_o+n432_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:202:10  */
    always @(posedge clk)
        n434_q <= x;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:202:10  */
    always @(posedge clk)
        n435_q <= x_d1;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:202:10  */
    always @(posedge clk)
        n436_q <= y;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:202:10  */
    always @(posedge clk)
        n437_q <= y_d1;
endmodule

module rightshiftersticky5_by_max_7_f300_uid888
    (input wire clk,
        input wire [4:0] x,
        input wire [2:0] s,
       output wire [6:0] r,
        output wire sticky);
    wire[2:0] ps;
    wire[2:0] ps_d1;
    wire[2:0] ps_d2;
    wire[6:0] xpadded;
    wire[6:0] level3;
    wire[6:0] level3_d1;
    wire stk2;
    wire[6:0] level2;
    wire[6:0] level2_d1;
    wire stk1;
    wire stk1_d1;
    wire[6:0] level1;
    wire[6:0] level1_d1;
    wire[6:0] level1_d2;
    wire stk0;
    wire[6:0] level0;
    wire[6:0] n370_o;
    wire[3:0] n372_o;
    wire n374_o;
    wire n375_o;
    wire n376_o;
    wire n377_o;
    wire n379_o;
    wire n380_o;
    wire[6:0] n381_o;
    wire[2:0] n382_o;
    wire[6:0] n384_o;
    wire[1:0] n386_o;
    wire n388_o;
    wire n389_o;
    wire n390_o;
    wire n391_o;
    wire n392_o;
    wire n394_o;
    wire n395_o;
    wire[6:0] n396_o;
    wire[4:0] n397_o;
    wire[6:0] n399_o;
    wire n401_o;
    wire n403_o;
    wire n404_o;
    wire n405_o;
    wire n406_o;
    wire n407_o;
    wire n409_o;
    wire n410_o;
    wire[6:0] n411_o;
    wire[5:0] n412_o;
    wire[6:0] n414_o;
    reg[2:0] n415_q;
    reg[2:0] n416_q;
    reg[6:0] n417_q;
    reg[6:0] n418_q;
    reg n419_q;
    reg[6:0] n420_q;
    reg[6:0] n421_q;
    assign r = level0;
    assign sticky = stk0;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:131:8  */
    assign ps = s; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:131:12  */
    assign ps_d1 = n415_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:131:19  */
    assign ps_d2 = n416_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:132:8  */
    assign xpadded = n370_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:133:8  */
    assign level3 = xpadded; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:133:16  */
    assign level3_d1 = n417_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:134:8  */
    assign stk2 = n377_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:135:8  */
    assign level2 = n381_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:135:16  */
    assign level2_d1 = n418_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:136:8  */
    assign stk1 = n392_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:136:14  */
    assign stk1_d1 = n419_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:137:8  */
    assign level1 = n396_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:137:16  */
    assign level1_d1 = n420_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:137:27  */
    assign level1_d2 = n421_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:138:8  */
    assign stk0 = n407_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:139:8  */
    assign level0 = n411_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:154:16  */
    assign n370_o = {x, 2'b00};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:156:31  */
    assign n372_o = level3_d1[3:0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:156:43  */
    assign n374_o = n372_o != 4'b0000;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:156:61  */
    assign n375_o = ps_d1[2];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:156:52  */
    assign n376_o = n374_o & n375_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:156:16  */
    assign n377_o = n376_o ? 1'b1 : 1'b0;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:157:30  */
    assign n379_o = ps[2];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:157:33  */
    assign n380_o = ~n379_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:157:22  */
    assign n381_o = n380_o ? level3 : n384_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:157:74  */
    assign n382_o = level3[6:4];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:157:66  */
    assign n384_o = {4'b0000, n382_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:158:31  */
    assign n386_o = level2_d1[1:0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:158:43  */
    assign n388_o = n386_o != 2'b00;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:158:59  */
    assign n389_o = ps_d1[1];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:158:50  */
    assign n390_o = n388_o & n389_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:158:68  */
    assign n391_o = n390_o | stk2;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:158:16  */
    assign n392_o = n391_o ? 1'b1 : 1'b0;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:159:30  */
    assign n394_o = ps[1];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:159:33  */
    assign n395_o = ~n394_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:159:22  */
    assign n396_o = n395_o ? level2 : n399_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:159:74  */
    assign n397_o = level2[6:2];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:159:66  */
    assign n399_o = {2'b00, n397_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:160:31  */
    assign n401_o = level1_d2[0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:160:43  */
    assign n403_o = n401_o != 1'b0;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:160:58  */
    assign n404_o = ps_d2[0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:160:49  */
    assign n405_o = n403_o & n404_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:160:67  */
    assign n406_o = n405_o | stk1_d1;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:160:16  */
    assign n407_o = n406_o ? 1'b1 : 1'b0;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:161:30  */
    assign n409_o = ps[0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:161:33  */
    assign n410_o = ~n409_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:161:22  */
    assign n411_o = n410_o ? level1 : n414_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:161:74  */
    assign n412_o = level1[6:1];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:161:66  */
    assign n414_o = {1'b0, n412_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:143:10  */
    always @(posedge clk)
        n415_q <= ps;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:143:10  */
    always @(posedge clk)
        n416_q <= ps_d1;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:143:10  */
    always @(posedge clk)
        n417_q <= level3;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:143:10  */
    always @(posedge clk)
        n418_q <= level2;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:143:10  */
    always @(posedge clk)
        n419_q <= stk1;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:143:10  */
    always @(posedge clk)
        n420_q <= level1;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:143:10  */
    always @(posedge clk)
        n421_q <= level1_d1;
endmodule

module normalizer_z_6_6_6_f300_uid666
    (input wire clk,
        input wire [5:0] x,
       output wire [2:0] count,
       output wire [5:0] r);
    wire[5:0] level3;
    wire[5:0] level3_d1;
    wire count2;
    wire[5:0] level2;
    wire count1;
    wire[5:0] level1;
    wire[5:0] level1_d1;
    wire count0;
    wire count0_d1;
    wire[5:0] level0;
    wire[2:0] scount;
    wire[3:0] n319_o;
    wire n321_o;
    wire n322_o;
    wire n324_o;
    wire[5:0] n325_o;
    wire[1:0] n326_o;
    wire[5:0] n328_o;
    wire[1:0] n330_o;
    wire n332_o;
    wire n333_o;
    wire n335_o;
    wire[5:0] n336_o;
    wire[3:0] n337_o;
    wire[5:0] n339_o;
    wire n341_o;
    wire n343_o;
    wire n344_o;
    wire n346_o;
    wire[5:0] n347_o;
    wire[4:0] n348_o;
    wire[5:0] n350_o;
    wire[1:0] n351_o;
    wire[2:0] n352_o;
    reg[5:0] n353_q;
    reg[5:0] n354_q;
    reg n355_q;
    assign count = scount;
    assign r = level0;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:69:8  */
    assign level3 = x; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:88:22  */
    assign level3_d1 = n353_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:70:8  */
    assign count2 = n322_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:91:19  */
    assign level2 = n325_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:72:8  */
    assign count1 = n333_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:73:8  */
    assign level1 = n336_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:94:22  */
    assign level1_d1 = n354_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:74:8  */
    assign count0 = n344_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:74:16  */
    assign count0_d1 = n355_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:75:8  */
    assign level0 = n347_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:76:8  */
    assign scount = n352_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:87:31  */
    assign n319_o = level3_d1[5:2];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:87:44  */
    assign n321_o = n319_o == 4'b0000;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:87:17  */
    assign n322_o = n321_o ? 1'b1 : 1'b0;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:88:46  */
    assign n324_o = ~count2;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:88:35  */
    assign n325_o = n324_o ? level3_d1 : n328_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:88:65  */
    assign n326_o = level3_d1[1:0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:88:78  */
    assign n328_o = {n326_o, 4'b0000};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:90:28  */
    assign n330_o = level2[5:4];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:90:41  */
    assign n332_o = n330_o == 2'b00;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:90:17  */
    assign n333_o = n332_o ? 1'b1 : 1'b0;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:91:43  */
    assign n335_o = ~count1;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:91:32  */
    assign n336_o = n335_o ? level2 : n339_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:91:59  */
    assign n337_o = level2[3:0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:91:72  */
    assign n339_o = {n337_o, 2'b00};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:93:28  */
    assign n341_o = level1[5];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:93:41  */
    assign n343_o = n341_o == 1'b0;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:93:17  */
    assign n344_o = n343_o ? 1'b1 : 1'b0;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:94:49  */
    assign n346_o = ~count0_d1;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:94:35  */
    assign n347_o = n346_o ? level1_d1 : n350_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:94:68  */
    assign n348_o = level1_d1[4:0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:94:81  */
    assign n350_o = {n348_o, 1'b0};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:97:21  */
    assign n351_o = {count2, count1};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:97:30  */
    assign n352_o = {n351_o, count0};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:80:10  */
    always @(posedge clk)
        n353_q <= level3;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:80:10  */
    always @(posedge clk)
        n354_q <= level1;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:80:10  */
    always @(posedge clk)
        n355_q <= count0;
endmodule

module intdualsub_7_f300_uid444
    (input wire clk,
        input wire [6:0] x,
        input wire [6:0] y,
       output wire [6:0] xmy,
       output wire [6:0] ymx);
    wire[6:0] temprxmy;
    wire[6:0] temprymx;
    wire[6:0] n299_o;
    wire[6:0] n300_o;
    wire[6:0] n303_o;
    wire[6:0] n304_o;
    wire[6:0] n305_o;
    wire[6:0] n308_o;
    assign xmy = temprxmy;
    assign ymx = temprymx;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:31:8  */
    assign temprxmy = n303_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:32:8  */
    assign temprymx = n308_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:34:21  */
    assign n299_o = ~y;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:34:18  */
    assign n300_o = x+n299_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:34:28  */
    assign n303_o = n300_o+7'b0000001;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:35:21  */
    assign n304_o = ~x;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:35:18  */
    assign n305_o = y+n304_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:35:28  */
    assign n308_o = n305_o+7'b0000001;
endmodule

module fsub#(parameter ID=1)
    (input wire clk,
        input wire [10:0] X,
        input wire [10:0] Y,
       output wire [10:0] R);
    wire[10:0] inx;
    wire[10:0] iny;
    wire exceptionxsuperiory;
    wire exceptionxequaly;
    wire[4:0] signedexponentx;
    wire[4:0] signedexponenty;
    wire[4:0] exponentdifferencexy;
    wire[3:0] exponentdifferenceyx;
    wire swap;
    wire[10:0] my;
    wire[10:0] newx;
    wire[10:0] newx_d1;
    wire[10:0] newy;
    wire[3:0] exponentdifference;
    wire shiftedout;
    wire[2:0] shiftval;
    wire effsub;
    wire effsub_d1;
    wire effsub_d2;
    wire selectclosepath;
    wire selectclosepath_d1;
    wire selectclosepath_d2;
    wire[3:0] sdexnxy;
    wire pipesigny;
    wire[6:0] fracxclose1;
    wire[6:0] fracyclose1;
    wire[6:0] fracrclosexmy;
    wire[6:0] fracrcloseymx;
    wire fracsignclose;
    wire[5:0] fracrclose1;
    wire ressign;
    wire[2:0] nzerosnew;
    wire[5:0] shiftedfrac;
    wire roundclose0;
    wire resultcloseiszero0;
    wire[5:0] exponentresultclose;
    wire[5:0] exponentresultclose_d1;
    wire[9:0] resultbeforeroundclose;
    wire roundclose;
    wire resultcloseiszero;
    wire[4:0] fracnewy;
    wire[6:0] shiftedfracy;
    wire sticky;
    wire[7:0] fracyfar;
    wire[7:0] effsubvector;
    wire[7:0] fracyfarxorop;
    wire[7:0] fracxfar;
    wire cinaddfar;
    wire[7:0] fracresultfar0;
    wire[7:0] fracresultfarnormstage;
    wire[1:0] fracleadingbits;
    wire[3:0] fracresultfar1;
    wire fracresultroundbit;
    wire fracresultstickybit;
    wire roundfar1;
    wire[1:0] expoperationsel;
    wire[5:0] exponentupdate;
    wire[5:0] exponentresultfar0;
    wire[5:0] exponentresultfar0_d1;
    wire[5:0] exponentresultfar0_d2;
    wire[5:0] exponentresultfar1;
    wire[9:0] resultbeforeroundfar;
    wire roundfar;
    wire[9:0] resultbeforeround;
    wire round;
    wire zerofromclose;
    wire zerofromclose_d1;
    wire[9:0] resultrounded;
    wire synceffsub;
    wire synceffsub_d1;
    wire synceffsub_d2;
    wire[10:0] syncx;
    wire[10:0] syncx_d1;
    wire[10:0] syncx_d2;
    wire syncsigny;
    wire syncsigny_d1;
    wire syncsigny_d2;
    wire syncressign;
    wire syncressign_d1;
    wire syncressign_d2;
    wire[1:0] underflowoverflow;
    wire[10:0] resultnoexn;
    wire[3:0] syncexnxy;
    wire[3:0] syncexnxy_d1;
    wire[3:0] syncexnxy_d2;
    wire[1:0] exnr;
    wire sgnr;
    wire[7:0] expsigr;
    wire[1:0] n25_o;
    wire[1:0] n26_o;
    wire n27_o;
    wire n28_o;
    wire[1:0] n31_o;
    wire[1:0] n32_o;
    wire n33_o;
    wire n34_o;
    wire[3:0] n36_o;
    wire[4:0] n38_o;
    wire[3:0] n39_o;
    wire[4:0] n41_o;
    wire[4:0] n42_o;
    wire[3:0] n43_o;
    wire[3:0] n44_o;
    wire[3:0] n45_o;
    wire n46_o;
    wire n47_o;
    wire n48_o;
    wire n49_o;
    wire[1:0] n50_o;
    wire n51_o;
    wire n52_o;
    wire[2:0] n53_o;
    wire[7:0] n54_o;
    wire[10:0] n55_o;
    wire[10:0] n56_o;
    wire[10:0] n57_o;
    wire[3:0] n58_o;
    wire[3:0] n59_o;
    wire n60_o;
    wire[2:0] n61_o;
    wire n62_o;
    wire[2:0] n63_o;
    wire n65_o;
    wire n66_o;
    wire n67_o;
    wire[2:0] n68_o;
    wire n70_o;
    wire n71_o;
    wire[1:0] n73_o;
    wire[1:0] n74_o;
    wire[3:0] n75_o;
    wire n76_o;
    wire[3:0] n77_o;
    wire[5:0] n79_o;
    wire[6:0] n81_o;
    wire n82_o;
    wire[3:0] n83_o;
    wire[5:0] n85_o;
    wire[6:0] n87_o;
    wire n89_o;
    wire[3:0] n90_o;
    wire[6:0] n92_o;
    reg[6:0] n93_o;
    wire[6:0] fpsub_4_4_f300_uid2_dualsubclose_n94;
    wire[6:0] fpsub_4_4_f300_uid2_dualsubclose_n95;
    wire[6:0] fpsub_4_4_f300_uid2_dualsubclose_xmy;
    wire[6:0] fpsub_4_4_f300_uid2_dualsubclose_ymx;
    wire n100_o;
    wire[5:0] n101_o;
    wire n102_o;
    wire[5:0] n103_o;
    wire[5:0] n104_o;
    wire n107_o;
    wire n108_o;
    wire n109_o;
    wire n110_o;
    wire n111_o;
    wire n112_o;
    wire[2:0] norm_n113;
    wire[5:0] norm_n114;
    wire[2:0] norm_count;
    wire[5:0] norm_r;
    wire n119_o;
    wire n120_o;
    wire n121_o;
    wire n124_o;
    wire n125_o;
    wire[3:0] n127_o;
    wire[5:0] n129_o;
    wire[5:0] n131_o;
    wire[5:0] n132_o;
    wire[3:0] n133_o;
    wire[9:0] n134_o;
    wire[3:0] n135_o;
    wire[4:0] n137_o;
    wire[6:0] rightshiftercomponent_n138;
    wire rightshiftercomponent_n139;
    wire[6:0] rightshiftercomponent_r;
    wire rightshiftercomponent_sticky;
    wire[7:0] n145_o;
    wire[3:0] n146_o;
    wire[3:0] n147_o;
    wire[7:0] n148_o;
    wire[7:0] n149_o;
    wire[3:0] n150_o;
    wire[5:0] n152_o;
    wire[7:0] n154_o;
    wire n155_o;
    wire n156_o;
    wire[7:0] fpsub_4_4_f300_uid2_fracaddfar_n157;
    wire[7:0] fpsub_4_4_f300_uid2_fracaddfar_r;
    wire[1:0] n160_o;
    wire[3:0] n161_o;
    wire n163_o;
    wire[3:0] n164_o;
    wire[3:0] n165_o;
    wire n167_o;
    wire[3:0] n168_o;
    wire[3:0] n169_o;
    wire n170_o;
    wire n172_o;
    wire n173_o;
    wire n174_o;
    wire n176_o;
    wire n177_o;
    wire n178_o;
    wire n180_o;
    wire n181_o;
    wire n182_o;
    wire n183_o;
    wire n185_o;
    wire n186_o;
    wire n187_o;
    wire n188_o;
    wire n189_o;
    wire n190_o;
    wire n191_o;
    wire n192_o;
    wire n193_o;
    wire n196_o;
    wire[1:0] n197_o;
    wire n200_o;
    wire[1:0] n201_o;
    wire n203_o;
    wire n204_o;
    wire n205_o;
    wire n206_o;
    wire n207_o;
    wire[3:0] n208_o;
    wire[4:0] n209_o;
    wire n210_o;
    wire[5:0] n211_o;
    wire[3:0] n212_o;
    wire[5:0] n214_o;
    wire[5:0] n215_o;
    wire[9:0] n216_o;
    wire n218_o;
    reg[9:0] n219_o;
    wire n221_o;
    reg n222_o;
    wire n223_o;
    localparam [9:0] n224_o = 10'b0000000000;
    wire[9:0] fpsub_4_4_f300_uid2_finalroundadd_n225;
    wire[9:0] fpsub_4_4_f300_uid2_finalroundadd_r;
    wire[1:0] n228_o;
    wire n229_o;
    wire[1:0] n231_o;
    wire n233_o;
    wire n236_o;
    wire n238_o;
    wire n239_o;
    wire n240_o;
    wire[1:0] n242_o;
    wire[1:0] n243_o;
    reg[1:0] n244_o;
    wire[7:0] n245_o;
    wire[8:0] n246_o;
    wire[1:0] n247_o;
    wire n249_o;
    wire[1:0] n251_o;
    wire n253_o;
    wire n256_o;
    wire[1:0] n257_o;
    wire[2:0] n258_o;
    reg[1:0] n259_o;
    wire n260_o;
    wire n262_o;
    wire n263_o;
    wire n264_o;
    wire n266_o;
    wire n267_o;
    wire[1:0] n268_o;
    reg n269_o;
    wire[7:0] n270_o;
    wire n272_o;
    wire[7:0] n273_o;
    reg[7:0] n274_o;
    wire[2:0] n275_o;
    wire[10:0] n276_o;
    reg[10:0] n277_q;
    reg n278_q;
    reg n279_q;
    reg n280_q;
    reg n281_q;
    reg[5:0] n282_q;
    reg[5:0] n283_q;
    reg[5:0] n284_q;
    reg n285_q;
    reg n286_q;
    reg n287_q;
    reg[10:0] n288_q;
    reg[10:0] n289_q;
    reg n290_q;
    reg n291_q;
    reg n292_q;
    reg n293_q;
    wire[10:0] n294_o;
    reg[3:0] n295_q;
    reg[3:0] n296_q;
    assign R = n276_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:326:8  */
    assign inx = X; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:327:8  */
    assign iny = Y; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:328:8  */
    assign exceptionxsuperiory = n28_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:329:8  */
    assign exceptionxequaly = n34_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:330:8  */
    assign signedexponentx = n38_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:331:8  */
    assign signedexponenty = n41_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:332:8  */
    assign exponentdifferencexy = n42_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:333:8  */
    assign exponentdifferenceyx = n45_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:334:8  */
    assign swap = n49_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:335:8  */
    assign my = n55_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:336:8  */
    assign newx = n56_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:336:14  */
    assign newx_d1 = n277_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:337:8  */
    assign newy = n57_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:338:8  */
    assign exponentdifference = n58_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:339:8  */
    assign shiftedout = n60_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:340:8  */
    assign shiftval = n63_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:341:8  */
    assign effsub = n67_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:341:16  */
    assign effsub_d1 = n278_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:341:27  */
    assign effsub_d2 = n279_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:342:8  */
    assign selectclosepath = n71_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:342:25  */
    assign selectclosepath_d1 = n280_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:342:45  */
    assign selectclosepath_d2 = n281_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:343:8  */
    assign sdexnxy = n75_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:344:8  */
    assign pipesigny = n76_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:345:8  */
    assign fracxclose1 = n81_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:346:8  */
    assign fracyclose1 = n93_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:347:8  */
    assign fracrclosexmy = fpsub_4_4_f300_uid2_dualsubclose_n94; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:348:8  */
    assign fracrcloseymx = fpsub_4_4_f300_uid2_dualsubclose_n95; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:349:8  */
    assign fracsignclose = n100_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:350:8  */
    assign fracrclose1 = n103_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:351:8  */
    assign ressign = n109_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:352:8  */
    assign nzerosnew = norm_n113; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:353:8  */
    assign shiftedfrac = norm_n114; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:354:8  */
    assign roundclose0 = n121_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:355:8  */
    assign resultcloseiszero0 = n125_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:356:8  */
    assign exponentresultclose = n132_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:465:52  */
    assign exponentresultclose_d1 = n282_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:357:8  */
    assign resultbeforeroundclose = n134_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:358:8  */
    assign roundclose = roundclose0; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:359:8  */
    assign resultcloseiszero = resultcloseiszero0; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:360:8  */
    assign fracnewy = n137_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:361:8  */
    assign shiftedfracy = rightshiftercomponent_n138; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:362:8  */
    assign sticky = rightshiftercomponent_n139; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:363:8  */
    assign fracyfar = n145_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:364:8  */
    assign effsubvector = n148_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:365:8  */
    assign fracyfarxorop = n149_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:366:8  */
    assign fracxfar = n154_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:367:8  */
    assign cinaddfar = n156_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:368:8  */
    assign fracresultfar0 = fpsub_4_4_f300_uid2_fracaddfar_n157; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:369:8  */
    assign fracresultfarnormstage = fracresultfar0; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:370:8  */
    assign fracleadingbits = n160_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:371:8  */
    assign fracresultfar1 = n164_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:372:8  */
    assign fracresultroundbit = n173_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:373:8  */
    assign fracresultstickybit = n181_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:374:8  */
    assign roundfar1 = n193_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:375:8  */
    assign expoperationsel = n197_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:376:8  */
    assign exponentupdate = n211_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:377:8  */
    assign exponentresultfar0 = n214_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:377:28  */
    assign exponentresultfar0_d1 = n283_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:377:51  */
    assign exponentresultfar0_d2 = n284_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:378:8  */
    assign exponentresultfar1 = n215_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:379:8  */
    assign resultbeforeroundfar = n216_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:380:8  */
    assign roundfar = roundfar1; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:381:8  */
    assign resultbeforeround = n219_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:382:8  */
    assign round = n222_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:383:8  */
    assign zerofromclose = n223_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:383:23  */
    assign zerofromclose_d1 = n285_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:384:8  */
    assign resultrounded = fpsub_4_4_f300_uid2_finalroundadd_n225; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:385:8  */
    assign synceffsub = effsub; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:385:20  */
    assign synceffsub_d1 = n286_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:385:35  */
    assign synceffsub_d2 = n287_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:386:8  */
    assign syncx = newx; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:386:15  */
    assign syncx_d1 = n288_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:386:25  */
    assign syncx_d2 = n289_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:387:8  */
    assign syncsigny = pipesigny; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:387:19  */
    assign syncsigny_d1 = n290_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:387:33  */
    assign syncsigny_d2 = n291_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:388:8  */
    assign syncressign = ressign; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:388:21  */
    assign syncressign_d1 = n292_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:388:37  */
    assign syncressign_d2 = n293_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:389:8  */
    assign underflowoverflow = n228_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:390:8  */
    assign resultnoexn = n294_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:391:8  */
    assign syncexnxy = sdexnxy; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:391:19  */
    assign syncexnxy_d1 = n295_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:391:33  */
    assign syncexnxy_d2 = n296_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:392:8  */
    assign exnr = n259_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:393:8  */
    assign sgnr = n269_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:394:8  */
    assign expsigr = n274_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:423:39  */
    assign n25_o = inx[10:9];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:423:59  */
    assign n26_o = iny[10:9];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:423:53  */
    assign n27_o = $unsigned(n25_o) >= $unsigned(n26_o);
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:423:31  */
    assign n28_o = n27_o ? 1'b1 : 1'b0;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:424:36  */
    assign n31_o = inx[10:9];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:424:55  */
    assign n32_o = iny[10:9];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:424:50  */
    assign n33_o = n31_o == n32_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:424:28  */
    assign n34_o = n33_o ? 1'b1 : 1'b0;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:425:32  */
    assign n36_o = inx[7:4];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:425:27  */
    assign n38_o = {1'b0, n36_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:426:32  */
    assign n39_o = iny[7:4];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:426:27  */
    assign n41_o = {1'b0, n39_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:427:44  */
    assign n42_o = signedexponentx-signedexponenty;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:428:43  */
    assign n43_o = signedexponenty[3:0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:428:73  */
    assign n44_o = signedexponentx[3:0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:428:56  */
    assign n45_o = n43_o-n44_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:429:54  */
    assign n46_o = exponentdifferencexy[4];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:429:30  */
    assign n47_o = exceptionxequaly & n46_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:429:63  */
    assign n48_o = ~exceptionxsuperiory;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:429:59  */
    assign n49_o = n47_o | n48_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:430:13  */
    assign n50_o = iny[10:9];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:430:36  */
    assign n51_o = iny[8];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:430:29  */
    assign n52_o = ~n51_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:430:27  */
    assign n53_o = {n50_o, n52_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:430:46  */
    assign n54_o = iny[7:0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:430:41  */
    assign n55_o = {n53_o, n54_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:431:15  */
    assign n56_o = swap ? my : inx;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:432:16  */
    assign n57_o = swap ? inx : my;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:433:47  */
    assign n58_o = swap ? exponentdifferenceyx : n59_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:433:88  */
    assign n59_o = exponentdifferencexy[3:0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:434:36  */
    assign n60_o = exponentdifference[3];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:435:34  */
    assign n61_o = exponentdifference[2:0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:435:62  */
    assign n62_o = ~shiftedout;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:435:47  */
    assign n63_o = n62_o ? n61_o : 3'b111;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:437:18  */
    assign n65_o = newx[8];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:437:30  */
    assign n66_o = newy[8];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:437:22  */
    assign n67_o = n65_o ^ n66_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:438:53  */
    assign n68_o = exponentdifference[3:1];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:438:66  */
    assign n70_o = n68_o == 3'b000;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:438:30  */
    assign n71_o = n70_o ? effsub : 1'b0;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:439:19  */
    assign n73_o = newx[10:9];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:439:39  */
    assign n74_o = newy[10:9];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:439:33  */
    assign n75_o = {n73_o, n74_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:440:21  */
    assign n76_o = newy[8];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:443:30  */
    assign n77_o = newx[3:0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:443:24  */
    assign n79_o = {2'b01, n77_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:443:43  */
    assign n81_o = {n79_o, 1'b0};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:444:27  */
    assign n82_o = exponentdifference[0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:445:31  */
    assign n83_o = newy[3:0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:445:25  */
    assign n85_o = {2'b01, n83_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:445:44  */
    assign n87_o = {n85_o, 1'b0};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:445:50  */
    assign n89_o = n82_o == 1'b0;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:446:31  */
    assign n90_o = newy[3:0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:446:25  */
    assign n92_o = {3'b001, n90_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:444:4  */
    always @*
        case (n89_o)
            1'b1: n93_o = n87_o;
            default: n93_o = n92_o;
        endcase
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:451:25  */
    assign fpsub_4_4_f300_uid2_dualsubclose_n94 = fpsub_4_4_f300_uid2_dualsubclose_xmy; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:452:25  */
    assign fpsub_4_4_f300_uid2_dualsubclose_n95 = fpsub_4_4_f300_uid2_dualsubclose_ymx; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:447:4  */
    intdualsub_7_f300_uid444 fpsub_4_4_f300_uid2_dualsubclose(
        .clk(clk),
        .x(fracxclose1),
        .y(fracyclose1),
        .xmy(fpsub_4_4_f300_uid2_dualsubclose_xmy),
        .ymx(fpsub_4_4_f300_uid2_dualsubclose_ymx));
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:453:34  */
    assign n100_o = fracrclosexmy[6];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:454:32  */
    assign n101_o = fracrclosexmy[5:0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:454:63  */
    assign n102_o = ~fracsignclose;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:454:45  */
    assign n103_o = n102_o ? n101_o : n104_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:454:86  */
    assign n104_o = fracrcloseymx[5:0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:455:60  */
    assign n107_o = fracrclose1 == 6'b000000;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:455:44  */
    assign n108_o = selectclosepath & n107_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:455:19  */
    assign n109_o = n108_o ? 1'b0 : n112_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:456:18  */
    assign n110_o = newx[8];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:456:43  */
    assign n111_o = selectclosepath & fracsignclose;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:456:22  */
    assign n112_o = n110_o ^ n111_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:460:27  */
    assign norm_n113 = norm_count; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:461:23  */
    assign norm_n114 = norm_r; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:457:4  */
    normalizer_z_6_6_6_f300_uid666 norm(
        .clk(clk),
        .x(fracrclose1),
        .count(norm_count),
        .r(norm_r));
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:462:30  */
    assign n119_o = shiftedfrac[0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:462:49  */
    assign n120_o = shiftedfrac[1];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:462:34  */
    assign n121_o = n119_o & n120_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:463:45  */
    assign n124_o = nzerosnew == 3'b111;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:463:30  */
    assign n125_o = n124_o ? 1'b1 : 1'b0;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:464:42  */
    assign n127_o = newx_d1[7:4];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:464:33  */
    assign n129_o = {2'b00, n127_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:464:86  */
    assign n131_o = {3'b000, nzerosnew};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:464:56  */
    assign n132_o = n129_o-n131_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:465:78  */
    assign n133_o = shiftedfrac[4:1];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:465:65  */
    assign n134_o = {exponentresultclose_d1, n133_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:470:26  */
    assign n135_o = newy[3:0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:470:20  */
    assign n137_o = {1'b1, n135_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:475:23  */
    assign rightshiftercomponent_n138 = rightshiftercomponent_r; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:476:28  */
    assign rightshiftercomponent_n139 = rightshiftercomponent_sticky; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:471:4  */
    rightshiftersticky5_by_max_7_f300_uid888 rightshiftercomponent(
        .clk(clk),
        .x(fracnewy),
        .s(shiftval),
        .r(rightshiftercomponent_r),
        .sticky(rightshiftercomponent_sticky));
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:477:20  */
    assign n145_o = {1'b0, shiftedfracy};
    assign n146_o = {effsub, effsub, effsub, effsub};
    assign n147_o = {effsub, effsub, effsub, effsub};
    assign n148_o = {n146_o, n147_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:479:30  */
    assign n149_o = fracyfar ^ effsubvector;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:480:28  */
    assign n150_o = newx[3:0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:480:21  */
    assign n152_o = {2'b01, n150_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:480:42  */
    assign n154_o = {n152_o, 2'b00};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:481:31  */
    assign n155_o = ~sticky;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:481:27  */
    assign n156_o = effsub_d2 & n155_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:487:23  */
    assign fpsub_4_4_f300_uid2_fracaddfar_n157 = fpsub_4_4_f300_uid2_fracaddfar_r; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:482:4  */
    intadder_8_f300_uid1000 fpsub_4_4_f300_uid2_fracaddfar(
        .clk(clk),
        .x(fracxfar),
        .y(fracyfarxorop),
        .cin(cinaddfar),
        .r(fpsub_4_4_f300_uid2_fracaddfar_r));
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:490:45  */
    assign n160_o = fracresultfarnormstage[7:6];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:492:34  */
    assign n161_o = fracresultfarnormstage[4:1];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:492:69  */
    assign n163_o = fracleadingbits == 2'b00;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:492:48  */
    assign n164_o = n163_o ? n161_o : n168_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:493:34  */
    assign n165_o = fracresultfarnormstage[5:2];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:493:69  */
    assign n167_o = fracleadingbits == 2'b01;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:493:7  */
    assign n168_o = n167_o ? n165_o : n169_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:494:34  */
    assign n169_o = fracresultfarnormstage[6:3];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:496:34  */
    assign n170_o = fracresultfarnormstage[0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:496:63  */
    assign n172_o = fracleadingbits == 2'b00;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:496:42  */
    assign n173_o = n172_o ? n170_o : n177_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:497:34  */
    assign n174_o = fracresultfarnormstage[1];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:497:62  */
    assign n176_o = fracleadingbits == 2'b01;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:497:7  */
    assign n177_o = n176_o ? n174_o : n178_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:498:34  */
    assign n178_o = fracresultfarnormstage[2];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:500:47  */
    assign n180_o = fracleadingbits == 2'b00;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:500:26  */
    assign n181_o = n180_o ? sticky : n186_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:501:34  */
    assign n182_o = fracresultfarnormstage[0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:501:38  */
    assign n183_o = n182_o | sticky;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:501:72  */
    assign n185_o = fracleadingbits == 2'b01;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:501:7  */
    assign n186_o = n185_o ? n183_o : n190_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:502:34  */
    assign n187_o = fracresultfarnormstage[1];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:502:63  */
    assign n188_o = fracresultfarnormstage[0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:502:38  */
    assign n189_o = n187_o | n188_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:502:67  */
    assign n190_o = n189_o | sticky;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:503:78  */
    assign n191_o = fracresultfar1[0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:503:61  */
    assign n192_o = fracresultstickybit | n191_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:503:36  */
    assign n193_o = fracresultroundbit & n192_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:504:49  */
    assign n196_o = fracleadingbits == 2'b00;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:504:28  */
    assign n197_o = n196_o ? 2'b11 : n201_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:505:49  */
    assign n200_o = fracleadingbits == 2'b01;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:505:16  */
    assign n201_o = n200_o ? 2'b00 : 2'b01;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:507:52  */
    assign n203_o = expoperationsel[1];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:507:52  */
    assign n204_o = expoperationsel[1];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:507:52  */
    assign n205_o = expoperationsel[1];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:507:52  */
    assign n206_o = expoperationsel[1];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:507:52  */
    assign n207_o = expoperationsel[1];
    assign n208_o = {n207_o, n206_o, n205_o, n204_o};
    assign n209_o = {n208_o, n203_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:507:74  */
    assign n210_o = expoperationsel[0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:507:57  */
    assign n211_o = {n209_o, n210_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:508:36  */
    assign n212_o = newx[7:4];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:508:29  */
    assign n214_o = {2'b00, n212_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:509:48  */
    assign n215_o = exponentresultfar0_d2+exponentupdate;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:510:47  */
    assign n216_o = {exponentresultfar1, fracresultfar1};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:515:48  */
    assign n218_o = selectclosepath_d2 == 1'b1;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:514:4  */
    always @*
        case (n218_o)
            1'b1: n219_o = resultbeforeroundclose;
            default: n219_o = resultbeforeroundfar;
        endcase
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:518:24  */
    assign n221_o = selectclosepath_d2 == 1'b1;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:517:4  */
    always @*
        case (n221_o)
            1'b1: n222_o = roundclose;
            default: n222_o = roundfar;
        endcase
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:520:40  */
    assign n223_o = selectclosepath_d1 & resultcloseiszero;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:528:23  */
    assign fpsub_4_4_f300_uid2_finalroundadd_n225 = fpsub_4_4_f300_uid2_finalroundadd_r; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:523:4  */
    intadder_10_f300_uid13333 fpsub_4_4_f300_uid2_finalroundadd(
        .clk(clk),
        .x(resultbeforeround),
        .y(n224_o),
        .cin(round),
        .r(fpsub_4_4_f300_uid2_finalroundadd_r));
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:533:38  */
    assign n228_o = resultrounded[9:8];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:535:35  */
    assign n229_o = ~zerofromclose_d1;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:535:57  */
    assign n231_o = {n229_o, 1'b0};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:535:63  */
    assign n233_o = underflowoverflow == 2'b01;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:536:39  */
    assign n236_o = underflowoverflow == 2'b10;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:536:49  */
    assign n238_o = underflowoverflow == 2'b11;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:536:49  */
    assign n239_o = n236_o | n238_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:537:41  */
    assign n240_o = ~zerofromclose_d1;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:537:38  */
    assign n242_o = {1'b0, n240_o};
    assign n243_o = {n239_o, n233_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:534:4  */
    always @*
        case (n243_o)
            2'b10: n244_o = 2'b00;
            2'b01: n244_o = n231_o;
            default: n244_o = n242_o;
        endcase
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:538:61  */
    assign n245_o = resultrounded[7:0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:538:46  */
    assign n246_o = {syncressign_d2, n245_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:542:26  */
    assign n247_o = resultnoexn[10:9];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:542:40  */
    assign n249_o = syncexnxy_d2 == 4'b0101;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:543:19  */
    assign n251_o = {1'b1, synceffsub_d2};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:543:44  */
    assign n253_o = syncexnxy_d2 == 4'b1010;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:544:41  */
    assign n256_o = syncexnxy_d2 == 4'b1110;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:545:27  */
    assign n257_o = syncexnxy_d2[3:2];
    assign n258_o = {n256_o, n253_o, n249_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:541:4  */
    always @*
        case (n258_o)
            3'b100: n259_o = 2'b11;
            3'b010: n259_o = n251_o;
            3'b001: n259_o = n247_o;
            default: n259_o = n257_o;
        endcase
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:548:26  */
    assign n260_o = resultnoexn[8];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:548:38  */
    assign n262_o = syncexnxy_d2 == 4'b0101;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:549:23  */
    assign n263_o = syncx_d2[8];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:549:27  */
    assign n264_o = n263_o & syncsigny_d2;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:549:44  */
    assign n266_o = syncexnxy_d2 == 4'b0000;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:550:23  */
    assign n267_o = syncx_d2[8];
    assign n268_o = {n266_o, n262_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:547:4  */
    always @*
        case (n268_o)
            2'b10: n269_o = n264_o;
            2'b01: n269_o = n260_o;
            default: n269_o = n267_o;
        endcase
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:553:29  */
    assign n270_o = resultnoexn[7:0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:553:44  */
    assign n272_o = syncexnxy_d2 == 4'b0101;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:554:26  */
    assign n273_o = syncx_d2[7:0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:552:4  */
    always @*
        case (n272_o)
            1'b1: n274_o = n270_o;
            default: n274_o = n273_o;
        endcase
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:555:14  */
    assign n275_o = {exnr, sgnr};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:555:21  */
    assign n276_o = {n275_o, expsigr};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:398:10  */
    always @(posedge clk)
        n277_q <= newx;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:398:10  */
    always @(posedge clk)
        n278_q <= effsub;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:398:10  */
    always @(posedge clk)
        n279_q <= effsub_d1;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:398:10  */
    always @(posedge clk)
        n280_q <= selectclosepath;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:398:10  */
    always @(posedge clk)
        n281_q <= selectclosepath_d1;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:398:10  */
    always @(posedge clk)
        n282_q <= exponentresultclose;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:398:10  */
    always @(posedge clk)
        n283_q <= exponentresultfar0;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:398:10  */
    always @(posedge clk)
        n284_q <= exponentresultfar0_d1;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:398:10  */
    always @(posedge clk)
        n285_q <= zerofromclose;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:398:10  */
    always @(posedge clk)
        n286_q <= synceffsub;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:398:10  */
    always @(posedge clk)
        n287_q <= synceffsub_d1;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:398:10  */
    always @(posedge clk)
        n288_q <= syncx;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:398:10  */
    always @(posedge clk)
        n289_q <= syncx_d1;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:398:10  */
    always @(posedge clk)
        n290_q <= syncsigny;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:398:10  */
    always @(posedge clk)
        n291_q <= syncsigny_d1;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:398:10  */
    always @(posedge clk)
        n292_q <= syncressign;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:398:10  */
    always @(posedge clk)
        n293_q <= syncressign_d1;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:398:10  */
    assign n294_o = {n244_o, n246_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:398:10  */
    always @(posedge clk)
        n295_q <= syncexnxy;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_4_4.vhdl:398:10  */
    always @(posedge clk)
        n296_q <= syncexnxy_d1;
endmodule

