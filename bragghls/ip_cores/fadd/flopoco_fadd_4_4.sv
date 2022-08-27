module intadder_10_f300_uid133
    (input wire clk,
        input wire[9:0] x,
        input wire[9:0] y,
        input wire cin,
        output wire[9:0] r);
    wire[9:0] rtmp;
    wire[9:0] y_d1;
    wire[9:0] y_d2;
    wire[9:0] n439_o;
    wire[9:0] n440_o;
    wire[9:0] n441_o;
    reg[9:0] n442_q;
    reg[9:0] n443_q;
    assign r = rtmp;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:243:8  */
    assign rtmp = n441_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:244:8  */
    assign y_d1 = n442_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:244:14  */
    assign y_d2 = n443_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:253:14  */
    assign n439_o = x+y_d2;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:253:21  */
    assign n440_o = {9'b0, cin};  //  uext
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:253:21  */
    assign n441_o = n439_o+n440_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:248:10  */
    always @(posedge clk)
        n442_q <= y;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:248:10  */
    always @(posedge clk)
        n443_q <= y_d1;
endmodule

module intadder_8_f300_uid10
    (input wire clk,
        input wire[7:0] x,
        input wire[7:0] y,
        input wire cin,
        output wire[7:0] r);
    wire[7:0] rtmp;
    wire[7:0] x_d1;
    wire[7:0] x_d2;
    wire[7:0] y_d1;
    wire[7:0] y_d2;
    wire[7:0] n425_o;
    wire[7:0] n426_o;
    wire[7:0] n427_o;
    reg[7:0] n428_q;
    reg[7:0] n429_q;
    reg[7:0] n430_q;
    reg[7:0] n431_q;
    assign r = rtmp;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:196:8  */
    assign rtmp = n427_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:197:8  */
    assign x_d1 = n428_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:197:14  */
    assign x_d2 = n429_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:198:8  */
    assign y_d1 = n430_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:198:14  */
    assign y_d2 = n431_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:209:17  */
    assign n425_o = x_d2+y_d2;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:209:24  */
    assign n426_o = {7'b0, cin};  //  uext
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:209:24  */
    assign n427_o = n425_o+n426_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:202:10  */
    always @(posedge clk)
        n428_q <= x;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:202:10  */
    always @(posedge clk)
        n429_q <= x_d1;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:202:10  */
    always @(posedge clk)
        n430_q <= y;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:202:10  */
    always @(posedge clk)
        n431_q <= y_d1;
endmodule

module rightshiftersticky5_by_max_7_f300_uid8
    (input wire clk,
        input wire[4:0] x,
        input wire[2:0] s,
        output wire[6:0] r,
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
    wire[6:0] n364_o;
    wire[3:0] n366_o;
    wire n368_o;
    wire n369_o;
    wire n370_o;
    wire n371_o;
    wire n373_o;
    wire n374_o;
    wire[6:0] n375_o;
    wire[2:0] n376_o;
    wire[6:0] n378_o;
    wire[1:0] n380_o;
    wire n382_o;
    wire n383_o;
    wire n384_o;
    wire n385_o;
    wire n386_o;
    wire n388_o;
    wire n389_o;
    wire[6:0] n390_o;
    wire[4:0] n391_o;
    wire[6:0] n393_o;
    wire n395_o;
    wire n397_o;
    wire n398_o;
    wire n399_o;
    wire n400_o;
    wire n401_o;
    wire n403_o;
    wire n404_o;
    wire[6:0] n405_o;
    wire[5:0] n406_o;
    wire[6:0] n408_o;
    reg[2:0] n409_q;
    reg[2:0] n410_q;
    reg[6:0] n411_q;
    reg[6:0] n412_q;
    reg n413_q;
    reg[6:0] n414_q;
    reg[6:0] n415_q;
    assign r = level0;
    assign sticky = stk0;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:131:8  */
    assign ps = s; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:131:12  */
    assign ps_d1 = n409_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:131:19  */
    assign ps_d2 = n410_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:132:8  */
    assign xpadded = n364_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:133:8  */
    assign level3 = xpadded; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:133:16  */
    assign level3_d1 = n411_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:134:8  */
    assign stk2 = n371_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:135:8  */
    assign level2 = n375_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:135:16  */
    assign level2_d1 = n412_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:136:8  */
    assign stk1 = n386_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:136:14  */
    assign stk1_d1 = n413_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:137:8  */
    assign level1 = n390_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:137:16  */
    assign level1_d1 = n414_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:137:27  */
    assign level1_d2 = n415_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:138:8  */
    assign stk0 = n401_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:139:8  */
    assign level0 = n405_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:154:16  */
    assign n364_o = {x, 2'b00};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:156:31  */
    assign n366_o = level3_d1[3:0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:156:43  */
    assign n368_o = n366_o != 4'b0000;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:156:61  */
    assign n369_o = ps_d1[2];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:156:52  */
    assign n370_o = n368_o & n369_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:156:16  */
    assign n371_o = n370_o ? 1'b1 : 1'b0;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:157:30  */
    assign n373_o = ps[2];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:157:33  */
    assign n374_o = ~n373_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:157:22  */
    assign n375_o = n374_o ? level3 : n378_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:157:74  */
    assign n376_o = level3[6:4];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:157:66  */
    assign n378_o = {4'b0000, n376_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:158:31  */
    assign n380_o = level2_d1[1:0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:158:43  */
    assign n382_o = n380_o != 2'b00;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:158:59  */
    assign n383_o = ps_d1[1];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:158:50  */
    assign n384_o = n382_o & n383_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:158:68  */
    assign n385_o = n384_o | stk2;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:158:16  */
    assign n386_o = n385_o ? 1'b1 : 1'b0;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:159:30  */
    assign n388_o = ps[1];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:159:33  */
    assign n389_o = ~n388_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:159:22  */
    assign n390_o = n389_o ? level2 : n393_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:159:74  */
    assign n391_o = level2[6:2];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:159:66  */
    assign n393_o = {2'b00, n391_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:160:31  */
    assign n395_o = level1_d2[0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:160:43  */
    assign n397_o = n395_o != 1'b0;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:160:58  */
    assign n398_o = ps_d2[0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:160:49  */
    assign n399_o = n397_o & n398_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:160:67  */
    assign n400_o = n399_o | stk1_d1;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:160:16  */
    assign n401_o = n400_o ? 1'b1 : 1'b0;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:161:30  */
    assign n403_o = ps[0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:161:33  */
    assign n404_o = ~n403_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:161:22  */
    assign n405_o = n404_o ? level1 : n408_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:161:74  */
    assign n406_o = level1[6:1];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:161:66  */
    assign n408_o = {1'b0, n406_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:143:10  */
    always @(posedge clk)
        n409_q <= ps;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:143:10  */
    always @(posedge clk)
        n410_q <= ps_d1;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:143:10  */
    always @(posedge clk)
        n411_q <= level3;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:143:10  */
    always @(posedge clk)
        n412_q <= level2;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:143:10  */
    always @(posedge clk)
        n413_q <= stk1;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:143:10  */
    always @(posedge clk)
        n414_q <= level1;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:143:10  */
    always @(posedge clk)
        n415_q <= level1_d1;
endmodule

module normalizer_z_6_6_6_f300_uid6
    (input wire clk,
        input wire[5:0] x,
        output wire[2:0] count,
        output wire[5:0] r);
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
    wire[3:0] n313_o;
    wire n315_o;
    wire n316_o;
    wire n318_o;
    wire[5:0] n319_o;
    wire[1:0] n320_o;
    wire[5:0] n322_o;
    wire[1:0] n324_o;
    wire n326_o;
    wire n327_o;
    wire n329_o;
    wire[5:0] n330_o;
    wire[3:0] n331_o;
    wire[5:0] n333_o;
    wire n335_o;
    wire n337_o;
    wire n338_o;
    wire n340_o;
    wire[5:0] n341_o;
    wire[4:0] n342_o;
    wire[5:0] n344_o;
    wire[1:0] n345_o;
    wire[2:0] n346_o;
    reg[5:0] n347_q;
    reg[5:0] n348_q;
    reg n349_q;
    assign count = scount;
    assign r = level0;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:69:8  */
    assign level3 = x; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:88:22  */
    assign level3_d1 = n347_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:70:8  */
    assign count2 = n316_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:91:19  */
    assign level2 = n319_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:72:8  */
    assign count1 = n327_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:73:8  */
    assign level1 = n330_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:94:22  */
    assign level1_d1 = n348_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:74:8  */
    assign count0 = n338_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:74:16  */
    assign count0_d1 = n349_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:75:8  */
    assign level0 = n341_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:76:8  */
    assign scount = n346_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:87:31  */
    assign n313_o = level3_d1[5:2];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:87:44  */
    assign n315_o = n313_o == 4'b0000;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:87:17  */
    assign n316_o = n315_o ? 1'b1 : 1'b0;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:88:46  */
    assign n318_o = ~count2;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:88:35  */
    assign n319_o = n318_o ? level3_d1 : n322_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:88:65  */
    assign n320_o = level3_d1[1:0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:88:78  */
    assign n322_o = {n320_o, 4'b0000};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:90:28  */
    assign n324_o = level2[5:4];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:90:41  */
    assign n326_o = n324_o == 2'b00;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:90:17  */
    assign n327_o = n326_o ? 1'b1 : 1'b0;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:91:43  */
    assign n329_o = ~count1;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:91:32  */
    assign n330_o = n329_o ? level2 : n333_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:91:59  */
    assign n331_o = level2[3:0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:91:72  */
    assign n333_o = {n331_o, 2'b00};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:93:28  */
    assign n335_o = level1[5];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:93:41  */
    assign n337_o = n335_o == 1'b0;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:93:17  */
    assign n338_o = n337_o ? 1'b1 : 1'b0;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:94:49  */
    assign n340_o = ~count0_d1;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:94:35  */
    assign n341_o = n340_o ? level1_d1 : n344_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:94:68  */
    assign n342_o = level1_d1[4:0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:94:81  */
    assign n344_o = {n342_o, 1'b0};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:97:21  */
    assign n345_o = {count2, count1};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:97:30  */
    assign n346_o = {n345_o, count0};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:80:10  */
    always @(posedge clk)
        n347_q <= level3;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:80:10  */
    always @(posedge clk)
        n348_q <= level1;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:80:10  */
    always @(posedge clk)
        n349_q <= count0;
endmodule

module intdualsub_7_f300_uid4
    (input wire clk,
        input wire[6:0] x,
        input wire[6:0] y,
        output wire[6:0] xmy,
        output wire[6:0] ymx);
    wire[6:0] temprxmy;
    wire[6:0] temprymx;
    wire[6:0] n293_o;
    wire[6:0] n294_o;
    wire[6:0] n297_o;
    wire[6:0] n298_o;
    wire[6:0] n299_o;
    wire[6:0] n302_o;
    assign xmy = temprxmy;
    assign ymx = temprymx;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:31:8  */
    assign temprxmy = n297_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:32:8  */
    assign temprymx = n302_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:34:21  */
    assign n293_o = ~y;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:34:18  */
    assign n294_o = x+n293_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:34:28  */
    assign n297_o = n294_o+7'b0000001;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:35:21  */
    assign n298_o = ~x;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:35:18  */
    assign n299_o = y+n298_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:35:28  */
    assign n302_o = n299_o+7'b0000001;
endmodule

module fadd#(parameter ID=1)
    (input wire clk,
        input wire[10:0] X,
        input wire[10:0] Y,
        output wire[10:0] R);
    wire[10:0] inx;
    wire[10:0] iny;
    wire exceptionxsuperiory;
    wire exceptionxequaly;
    wire[4:0] signedexponentx;
    wire[4:0] signedexponenty;
    wire[4:0] exponentdifferencexy;
    wire[3:0] exponentdifferenceyx;
    wire swap;
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
    wire[10:0] n50_o;
    wire[10:0] n51_o;
    wire[3:0] n52_o;
    wire[3:0] n53_o;
    wire n54_o;
    wire[2:0] n55_o;
    wire n56_o;
    wire[2:0] n57_o;
    wire n59_o;
    wire n60_o;
    wire n61_o;
    wire[2:0] n62_o;
    wire n64_o;
    wire n65_o;
    wire[1:0] n67_o;
    wire[1:0] n68_o;
    wire[3:0] n69_o;
    wire n70_o;
    wire[3:0] n71_o;
    wire[5:0] n73_o;
    wire[6:0] n75_o;
    wire n76_o;
    wire[3:0] n77_o;
    wire[5:0] n79_o;
    wire[6:0] n81_o;
    wire n83_o;
    wire[3:0] n84_o;
    wire[6:0] n86_o;
    reg[6:0] n87_o;
    wire[6:0] fpadd_4_4_f300_uid2_dualsubclose_n88;
    wire[6:0] fpadd_4_4_f300_uid2_dualsubclose_n89;
    wire[6:0] fpadd_4_4_f300_uid2_dualsubclose_xmy;
    wire[6:0] fpadd_4_4_f300_uid2_dualsubclose_ymx;
    wire n94_o;
    wire[5:0] n95_o;
    wire n96_o;
    wire[5:0] n97_o;
    wire[5:0] n98_o;
    wire n101_o;
    wire n102_o;
    wire n103_o;
    wire n104_o;
    wire n105_o;
    wire n106_o;
    wire[2:0] norm_n107;
    wire[5:0] norm_n108;
    wire[2:0] norm_count;
    wire[5:0] norm_r;
    wire n113_o;
    wire n114_o;
    wire n115_o;
    wire n118_o;
    wire n119_o;
    wire[3:0] n121_o;
    wire[5:0] n123_o;
    wire[5:0] n125_o;
    wire[5:0] n126_o;
    wire[3:0] n127_o;
    wire[9:0] n128_o;
    wire[3:0] n129_o;
    wire[4:0] n131_o;
    wire[6:0] rightshiftercomponent_n132;
    wire rightshiftercomponent_n133;
    wire[6:0] rightshiftercomponent_r;
    wire rightshiftercomponent_sticky;
    wire[7:0] n139_o;
    wire[3:0] n140_o;
    wire[3:0] n141_o;
    wire[7:0] n142_o;
    wire[7:0] n143_o;
    wire[3:0] n144_o;
    wire[5:0] n146_o;
    wire[7:0] n148_o;
    wire n149_o;
    wire n150_o;
    wire[7:0] fpadd_4_4_f300_uid2_fracaddfar_n151;
    wire[7:0] fpadd_4_4_f300_uid2_fracaddfar_r;
    wire[1:0] n154_o;
    wire[3:0] n155_o;
    wire n157_o;
    wire[3:0] n158_o;
    wire[3:0] n159_o;
    wire n161_o;
    wire[3:0] n162_o;
    wire[3:0] n163_o;
    wire n164_o;
    wire n166_o;
    wire n167_o;
    wire n168_o;
    wire n170_o;
    wire n171_o;
    wire n172_o;
    wire n174_o;
    wire n175_o;
    wire n176_o;
    wire n177_o;
    wire n179_o;
    wire n180_o;
    wire n181_o;
    wire n182_o;
    wire n183_o;
    wire n184_o;
    wire n185_o;
    wire n186_o;
    wire n187_o;
    wire n190_o;
    wire[1:0] n191_o;
    wire n194_o;
    wire[1:0] n195_o;
    wire n197_o;
    wire n198_o;
    wire n199_o;
    wire n200_o;
    wire n201_o;
    wire[3:0] n202_o;
    wire[4:0] n203_o;
    wire n204_o;
    wire[5:0] n205_o;
    wire[3:0] n206_o;
    wire[5:0] n208_o;
    wire[5:0] n209_o;
    wire[9:0] n210_o;
    wire n212_o;
    reg[9:0] n213_o;
    wire n215_o;
    reg n216_o;
    wire n217_o;
    localparam [9:0] n218_o = 10'b0000000000;
    wire[9:0] fpadd_4_4_f300_uid2_finalroundadd_n219;
    wire[9:0] fpadd_4_4_f300_uid2_finalroundadd_r;
    wire[1:0] n222_o;
    wire n223_o;
    wire[1:0] n225_o;
    wire n227_o;
    wire n230_o;
    wire n232_o;
    wire n233_o;
    wire n234_o;
    wire[1:0] n236_o;
    wire[1:0] n237_o;
    reg[1:0] n238_o;
    wire[7:0] n239_o;
    wire[8:0] n240_o;
    wire[1:0] n241_o;
    wire n243_o;
    wire[1:0] n245_o;
    wire n247_o;
    wire n250_o;
    wire[1:0] n251_o;
    wire[2:0] n252_o;
    reg[1:0] n253_o;
    wire n254_o;
    wire n256_o;
    wire n257_o;
    wire n258_o;
    wire n260_o;
    wire n261_o;
    wire[1:0] n262_o;
    reg n263_o;
    wire[7:0] n264_o;
    wire n266_o;
    wire[7:0] n267_o;
    reg[7:0] n268_o;
    wire[2:0] n269_o;
    wire[10:0] n270_o;
    reg[10:0] n271_q;
    reg n272_q;
    reg n273_q;
    reg n274_q;
    reg n275_q;
    reg[5:0] n276_q;
    reg[5:0] n277_q;
    reg[5:0] n278_q;
    reg n279_q;
    reg n280_q;
    reg n281_q;
    reg[10:0] n282_q;
    reg[10:0] n283_q;
    reg n284_q;
    reg n285_q;
    reg n286_q;
    reg n287_q;
    wire[10:0] n288_o;
    reg[3:0] n289_q;
    reg[3:0] n290_q;
    assign R = n270_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:326:8  */
    assign inx = X; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:327:8  */
    assign iny = Y; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:328:8  */
    assign exceptionxsuperiory = n28_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:329:8  */
    assign exceptionxequaly = n34_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:330:8  */
    assign signedexponentx = n38_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:331:8  */
    assign signedexponenty = n41_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:332:8  */
    assign exponentdifferencexy = n42_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:333:8  */
    assign exponentdifferenceyx = n45_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:334:8  */
    assign swap = n49_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:335:8  */
    assign newx = n50_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:335:14  */
    assign newx_d1 = n271_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:336:8  */
    assign newy = n51_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:337:8  */
    assign exponentdifference = n52_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:338:8  */
    assign shiftedout = n54_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:339:8  */
    assign shiftval = n57_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:340:8  */
    assign effsub = n61_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:340:16  */
    assign effsub_d1 = n272_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:340:27  */
    assign effsub_d2 = n273_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:341:8  */
    assign selectclosepath = n65_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:341:25  */
    assign selectclosepath_d1 = n274_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:341:45  */
    assign selectclosepath_d2 = n275_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:342:8  */
    assign sdexnxy = n69_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:343:8  */
    assign pipesigny = n70_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:344:8  */
    assign fracxclose1 = n75_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:345:8  */
    assign fracyclose1 = n87_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:346:8  */
    assign fracrclosexmy = fpadd_4_4_f300_uid2_dualsubclose_n88; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:347:8  */
    assign fracrcloseymx = fpadd_4_4_f300_uid2_dualsubclose_n89; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:348:8  */
    assign fracsignclose = n94_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:349:8  */
    assign fracrclose1 = n97_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:350:8  */
    assign ressign = n103_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:351:8  */
    assign nzerosnew = norm_n107; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:352:8  */
    assign shiftedfrac = norm_n108; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:353:8  */
    assign roundclose0 = n115_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:354:8  */
    assign resultcloseiszero0 = n119_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:355:8  */
    assign exponentresultclose = n126_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:463:52  */
    assign exponentresultclose_d1 = n276_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:356:8  */
    assign resultbeforeroundclose = n128_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:357:8  */
    assign roundclose = roundclose0; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:358:8  */
    assign resultcloseiszero = resultcloseiszero0; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:359:8  */
    assign fracnewy = n131_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:360:8  */
    assign shiftedfracy = rightshiftercomponent_n132; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:361:8  */
    assign sticky = rightshiftercomponent_n133; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:362:8  */
    assign fracyfar = n139_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:363:8  */
    assign effsubvector = n142_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:364:8  */
    assign fracyfarxorop = n143_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:365:8  */
    assign fracxfar = n148_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:366:8  */
    assign cinaddfar = n150_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:367:8  */
    assign fracresultfar0 = fpadd_4_4_f300_uid2_fracaddfar_n151; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:368:8  */
    assign fracresultfarnormstage = fracresultfar0; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:369:8  */
    assign fracleadingbits = n154_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:370:8  */
    assign fracresultfar1 = n158_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:371:8  */
    assign fracresultroundbit = n167_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:372:8  */
    assign fracresultstickybit = n175_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:373:8  */
    assign roundfar1 = n187_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:374:8  */
    assign expoperationsel = n191_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:375:8  */
    assign exponentupdate = n205_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:376:8  */
    assign exponentresultfar0 = n208_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:376:28  */
    assign exponentresultfar0_d1 = n277_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:376:51  */
    assign exponentresultfar0_d2 = n278_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:377:8  */
    assign exponentresultfar1 = n209_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:378:8  */
    assign resultbeforeroundfar = n210_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:379:8  */
    assign roundfar = roundfar1; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:380:8  */
    assign resultbeforeround = n213_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:381:8  */
    assign round = n216_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:382:8  */
    assign zerofromclose = n217_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:382:23  */
    assign zerofromclose_d1 = n279_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:383:8  */
    assign resultrounded = fpadd_4_4_f300_uid2_finalroundadd_n219; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:384:8  */
    assign synceffsub = effsub; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:384:20  */
    assign synceffsub_d1 = n280_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:384:35  */
    assign synceffsub_d2 = n281_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:385:8  */
    assign syncx = newx; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:385:15  */
    assign syncx_d1 = n282_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:385:25  */
    assign syncx_d2 = n283_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:386:8  */
    assign syncsigny = pipesigny; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:386:19  */
    assign syncsigny_d1 = n284_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:386:33  */
    assign syncsigny_d2 = n285_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:387:8  */
    assign syncressign = ressign; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:387:21  */
    assign syncressign_d1 = n286_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:387:37  */
    assign syncressign_d2 = n287_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:388:8  */
    assign underflowoverflow = n222_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:389:8  */
    assign resultnoexn = n288_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:390:8  */
    assign syncexnxy = sdexnxy; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:390:19  */
    assign syncexnxy_d1 = n289_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:390:33  */
    assign syncexnxy_d2 = n290_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:391:8  */
    assign exnr = n253_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:392:8  */
    assign sgnr = n263_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:393:8  */
    assign expsigr = n268_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:422:39  */
    assign n25_o = inx[10:9];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:422:59  */
    assign n26_o = iny[10:9];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:422:53  */
    assign n27_o = $unsigned(n25_o) >= $unsigned(n26_o);
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:422:31  */
    assign n28_o = n27_o ? 1'b1 : 1'b0;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:423:36  */
    assign n31_o = inx[10:9];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:423:55  */
    assign n32_o = iny[10:9];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:423:50  */
    assign n33_o = n31_o == n32_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:423:28  */
    assign n34_o = n33_o ? 1'b1 : 1'b0;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:424:32  */
    assign n36_o = inx[7:4];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:424:27  */
    assign n38_o = {1'b0, n36_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:425:32  */
    assign n39_o = iny[7:4];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:425:27  */
    assign n41_o = {1'b0, n39_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:426:44  */
    assign n42_o = signedexponentx-signedexponenty;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:427:43  */
    assign n43_o = signedexponenty[3:0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:427:73  */
    assign n44_o = signedexponentx[3:0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:427:56  */
    assign n45_o = n43_o-n44_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:428:54  */
    assign n46_o = exponentdifferencexy[4];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:428:30  */
    assign n47_o = exceptionxequaly & n46_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:428:63  */
    assign n48_o = ~exceptionxsuperiory;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:428:59  */
    assign n49_o = n47_o | n48_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:429:16  */
    assign n50_o = swap ? iny : inx;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:430:16  */
    assign n51_o = swap ? inx : iny;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:431:47  */
    assign n52_o = swap ? exponentdifferenceyx : n53_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:431:88  */
    assign n53_o = exponentdifferencexy[3:0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:432:36  */
    assign n54_o = exponentdifference[3];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:433:34  */
    assign n55_o = exponentdifference[2:0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:433:62  */
    assign n56_o = ~shiftedout;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:433:47  */
    assign n57_o = n56_o ? n55_o : 3'b111;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:435:18  */
    assign n59_o = newx[8];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:435:30  */
    assign n60_o = newy[8];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:435:22  */
    assign n61_o = n59_o ^ n60_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:436:53  */
    assign n62_o = exponentdifference[3:1];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:436:66  */
    assign n64_o = n62_o == 3'b000;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:436:30  */
    assign n65_o = n64_o ? effsub : 1'b0;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:437:19  */
    assign n67_o = newx[10:9];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:437:39  */
    assign n68_o = newy[10:9];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:437:33  */
    assign n69_o = {n67_o, n68_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:438:21  */
    assign n70_o = newy[8];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:441:30  */
    assign n71_o = newx[3:0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:441:24  */
    assign n73_o = {2'b01, n71_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:441:43  */
    assign n75_o = {n73_o, 1'b0};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:442:27  */
    assign n76_o = exponentdifference[0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:443:31  */
    assign n77_o = newy[3:0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:443:25  */
    assign n79_o = {2'b01, n77_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:443:44  */
    assign n81_o = {n79_o, 1'b0};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:443:50  */
    assign n83_o = n76_o == 1'b0;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:444:31  */
    assign n84_o = newy[3:0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:444:25  */
    assign n86_o = {3'b001, n84_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:442:4  */
    always @*
        case (n83_o)
            1'b1: n87_o = n81_o;
            default: n87_o = n86_o;
        endcase
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:449:25  */
    assign fpadd_4_4_f300_uid2_dualsubclose_n88 = fpadd_4_4_f300_uid2_dualsubclose_xmy; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:450:25  */
    assign fpadd_4_4_f300_uid2_dualsubclose_n89 = fpadd_4_4_f300_uid2_dualsubclose_ymx; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:445:4  */
    intdualsub_7_f300_uid4 fpadd_4_4_f300_uid2_dualsubclose(
        .clk(clk),
        .x(fracxclose1),
        .y(fracyclose1),
        .xmy(fpadd_4_4_f300_uid2_dualsubclose_xmy),
        .ymx(fpadd_4_4_f300_uid2_dualsubclose_ymx));
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:451:34  */
    assign n94_o = fracrclosexmy[6];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:452:32  */
    assign n95_o = fracrclosexmy[5:0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:452:63  */
    assign n96_o = ~fracsignclose;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:452:45  */
    assign n97_o = n96_o ? n95_o : n98_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:452:86  */
    assign n98_o = fracrcloseymx[5:0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:453:60  */
    assign n101_o = fracrclose1 == 6'b000000;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:453:44  */
    assign n102_o = selectclosepath & n101_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:453:19  */
    assign n103_o = n102_o ? 1'b0 : n106_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:454:18  */
    assign n104_o = newx[8];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:454:43  */
    assign n105_o = selectclosepath & fracsignclose;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:454:22  */
    assign n106_o = n104_o ^ n105_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:458:27  */
    assign norm_n107 = norm_count; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:459:23  */
    assign norm_n108 = norm_r; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:455:4  */
    normalizer_z_6_6_6_f300_uid6 norm(
        .clk(clk),
        .x(fracrclose1),
        .count(norm_count),
        .r(norm_r));
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:460:30  */
    assign n113_o = shiftedfrac[0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:460:49  */
    assign n114_o = shiftedfrac[1];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:460:34  */
    assign n115_o = n113_o & n114_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:461:45  */
    assign n118_o = nzerosnew == 3'b111;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:461:30  */
    assign n119_o = n118_o ? 1'b1 : 1'b0;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:462:42  */
    assign n121_o = newx_d1[7:4];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:462:33  */
    assign n123_o = {2'b00, n121_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:462:86  */
    assign n125_o = {3'b000, nzerosnew};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:462:56  */
    assign n126_o = n123_o-n125_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:463:78  */
    assign n127_o = shiftedfrac[4:1];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:463:65  */
    assign n128_o = {exponentresultclose_d1, n127_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:468:26  */
    assign n129_o = newy[3:0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:468:20  */
    assign n131_o = {1'b1, n129_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:473:23  */
    assign rightshiftercomponent_n132 = rightshiftercomponent_r; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:474:28  */
    assign rightshiftercomponent_n133 = rightshiftercomponent_sticky; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:469:4  */
    rightshiftersticky5_by_max_7_f300_uid8 rightshiftercomponent(
        .clk(clk),
        .x(fracnewy),
        .s(shiftval),
        .r(rightshiftercomponent_r),
        .sticky(rightshiftercomponent_sticky));
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:475:20  */
    assign n139_o = {1'b0, shiftedfracy};
    assign n140_o = {effsub, effsub, effsub, effsub};
    assign n141_o = {effsub, effsub, effsub, effsub};
    assign n142_o = {n140_o, n141_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:477:30  */
    assign n143_o = fracyfar ^ effsubvector;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:478:28  */
    assign n144_o = newx[3:0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:478:21  */
    assign n146_o = {2'b01, n144_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:478:42  */
    assign n148_o = {n146_o, 2'b00};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:479:31  */
    assign n149_o = ~sticky;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:479:27  */
    assign n150_o = effsub_d2 & n149_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:485:23  */
    assign fpadd_4_4_f300_uid2_fracaddfar_n151 = fpadd_4_4_f300_uid2_fracaddfar_r; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:480:4  */
    intadder_8_f300_uid10 fpadd_4_4_f300_uid2_fracaddfar(
        .clk(clk),
        .x(fracxfar),
        .y(fracyfarxorop),
        .cin(cinaddfar),
        .r(fpadd_4_4_f300_uid2_fracaddfar_r));
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:488:45  */
    assign n154_o = fracresultfarnormstage[7:6];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:490:34  */
    assign n155_o = fracresultfarnormstage[4:1];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:490:69  */
    assign n157_o = fracleadingbits == 2'b00;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:490:48  */
    assign n158_o = n157_o ? n155_o : n162_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:491:34  */
    assign n159_o = fracresultfarnormstage[5:2];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:491:69  */
    assign n161_o = fracleadingbits == 2'b01;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:491:7  */
    assign n162_o = n161_o ? n159_o : n163_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:492:34  */
    assign n163_o = fracresultfarnormstage[6:3];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:494:34  */
    assign n164_o = fracresultfarnormstage[0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:494:63  */
    assign n166_o = fracleadingbits == 2'b00;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:494:42  */
    assign n167_o = n166_o ? n164_o : n171_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:495:34  */
    assign n168_o = fracresultfarnormstage[1];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:495:62  */
    assign n170_o = fracleadingbits == 2'b01;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:495:7  */
    assign n171_o = n170_o ? n168_o : n172_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:496:34  */
    assign n172_o = fracresultfarnormstage[2];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:498:47  */
    assign n174_o = fracleadingbits == 2'b00;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:498:26  */
    assign n175_o = n174_o ? sticky : n180_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:499:34  */
    assign n176_o = fracresultfarnormstage[0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:499:38  */
    assign n177_o = n176_o | sticky;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:499:72  */
    assign n179_o = fracleadingbits == 2'b01;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:499:7  */
    assign n180_o = n179_o ? n177_o : n184_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:500:34  */
    assign n181_o = fracresultfarnormstage[1];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:500:63  */
    assign n182_o = fracresultfarnormstage[0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:500:38  */
    assign n183_o = n181_o | n182_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:500:67  */
    assign n184_o = n183_o | sticky;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:501:78  */
    assign n185_o = fracresultfar1[0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:501:61  */
    assign n186_o = fracresultstickybit | n185_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:501:36  */
    assign n187_o = fracresultroundbit & n186_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:502:49  */
    assign n190_o = fracleadingbits == 2'b00;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:502:28  */
    assign n191_o = n190_o ? 2'b11 : n195_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:503:49  */
    assign n194_o = fracleadingbits == 2'b01;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:503:16  */
    assign n195_o = n194_o ? 2'b00 : 2'b01;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:505:52  */
    assign n197_o = expoperationsel[1];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:505:52  */
    assign n198_o = expoperationsel[1];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:505:52  */
    assign n199_o = expoperationsel[1];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:505:52  */
    assign n200_o = expoperationsel[1];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:505:52  */
    assign n201_o = expoperationsel[1];
    assign n202_o = {n201_o, n200_o, n199_o, n198_o};
    assign n203_o = {n202_o, n197_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:505:74  */
    assign n204_o = expoperationsel[0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:505:57  */
    assign n205_o = {n203_o, n204_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:506:36  */
    assign n206_o = newx[7:4];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:506:29  */
    assign n208_o = {2'b00, n206_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:507:48  */
    assign n209_o = exponentresultfar0_d2+exponentupdate;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:508:47  */
    assign n210_o = {exponentresultfar1, fracresultfar1};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:513:48  */
    assign n212_o = selectclosepath_d2 == 1'b1;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:512:4  */
    always @*
        case (n212_o)
            1'b1: n213_o = resultbeforeroundclose;
            default: n213_o = resultbeforeroundfar;
        endcase
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:516:24  */
    assign n215_o = selectclosepath_d2 == 1'b1;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:515:4  */
    always @*
        case (n215_o)
            1'b1: n216_o = roundclose;
            default: n216_o = roundfar;
        endcase
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:518:40  */
    assign n217_o = selectclosepath_d1 & resultcloseiszero;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:526:23  */
    assign fpadd_4_4_f300_uid2_finalroundadd_n219 = fpadd_4_4_f300_uid2_finalroundadd_r; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:521:4  */
    intadder_10_f300_uid133 fpadd_4_4_f300_uid2_finalroundadd(
        .clk(clk),
        .x(resultbeforeround),
        .y(n218_o),
        .cin(round),
        .r(fpadd_4_4_f300_uid2_finalroundadd_r));
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:531:38  */
    assign n222_o = resultrounded[9:8];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:533:35  */
    assign n223_o = ~zerofromclose_d1;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:533:57  */
    assign n225_o = {n223_o, 1'b0};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:533:63  */
    assign n227_o = underflowoverflow == 2'b01;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:534:39  */
    assign n230_o = underflowoverflow == 2'b10;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:534:49  */
    assign n232_o = underflowoverflow == 2'b11;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:534:49  */
    assign n233_o = n230_o | n232_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:535:41  */
    assign n234_o = ~zerofromclose_d1;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:535:38  */
    assign n236_o = {1'b0, n234_o};
    assign n237_o = {n233_o, n227_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:532:4  */
    always @*
        case (n237_o)
            2'b10: n238_o = 2'b00;
            2'b01: n238_o = n225_o;
            default: n238_o = n236_o;
        endcase
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:536:61  */
    assign n239_o = resultrounded[7:0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:536:46  */
    assign n240_o = {syncressign_d2, n239_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:540:26  */
    assign n241_o = resultnoexn[10:9];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:540:40  */
    assign n243_o = syncexnxy_d2 == 4'b0101;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:541:19  */
    assign n245_o = {1'b1, synceffsub_d2};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:541:44  */
    assign n247_o = syncexnxy_d2 == 4'b1010;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:542:41  */
    assign n250_o = syncexnxy_d2 == 4'b1110;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:543:27  */
    assign n251_o = syncexnxy_d2[3:2];
    assign n252_o = {n250_o, n247_o, n243_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:539:4  */
    always @*
        case (n252_o)
            3'b100: n253_o = 2'b11;
            3'b010: n253_o = n245_o;
            3'b001: n253_o = n241_o;
            default: n253_o = n251_o;
        endcase
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:546:26  */
    assign n254_o = resultnoexn[8];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:546:38  */
    assign n256_o = syncexnxy_d2 == 4'b0101;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:547:23  */
    assign n257_o = syncx_d2[8];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:547:27  */
    assign n258_o = n257_o & syncsigny_d2;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:547:44  */
    assign n260_o = syncexnxy_d2 == 4'b0000;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:548:23  */
    assign n261_o = syncx_d2[8];
    assign n262_o = {n260_o, n256_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:545:4  */
    always @*
        case (n262_o)
            2'b10: n263_o = n258_o;
            2'b01: n263_o = n254_o;
            default: n263_o = n261_o;
        endcase
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:551:29  */
    assign n264_o = resultnoexn[7:0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:551:44  */
    assign n266_o = syncexnxy_d2 == 4'b0101;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:552:26  */
    assign n267_o = syncx_d2[7:0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:550:4  */
    always @*
        case (n266_o)
            1'b1: n268_o = n264_o;
            default: n268_o = n267_o;
        endcase
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:553:14  */
    assign n269_o = {exnr, sgnr};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:553:21  */
    assign n270_o = {n269_o, expsigr};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:397:10  */
    always @(posedge clk)
        n271_q <= newx;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:397:10  */
    always @(posedge clk)
        n272_q <= effsub;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:397:10  */
    always @(posedge clk)
        n273_q <= effsub_d1;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:397:10  */
    always @(posedge clk)
        n274_q <= selectclosepath;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:397:10  */
    always @(posedge clk)
        n275_q <= selectclosepath_d1;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:397:10  */
    always @(posedge clk)
        n276_q <= exponentresultclose;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:397:10  */
    always @(posedge clk)
        n277_q <= exponentresultfar0;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:397:10  */
    always @(posedge clk)
        n278_q <= exponentresultfar0_d1;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:397:10  */
    always @(posedge clk)
        n279_q <= zerofromclose;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:397:10  */
    always @(posedge clk)
        n280_q <= synceffsub;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:397:10  */
    always @(posedge clk)
        n281_q <= synceffsub_d1;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:397:10  */
    always @(posedge clk)
        n282_q <= syncx;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:397:10  */
    always @(posedge clk)
        n283_q <= syncx_d1;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:397:10  */
    always @(posedge clk)
        n284_q <= syncsigny;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:397:10  */
    always @(posedge clk)
        n285_q <= syncsigny_d1;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:397:10  */
    always @(posedge clk)
        n286_q <= syncressign;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:397:10  */
    always @(posedge clk)
        n287_q <= syncressign_d1;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:397:10  */
    assign n288_o = {n238_o, n240_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:397:10  */
    always @(posedge clk)
        n289_q <= syncexnxy;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_4_4.vhdl:397:10  */
    always @(posedge clk)
        n290_q <= syncexnxy_d1;
endmodule

