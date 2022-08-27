module intadder_14_f300_uid1333
    (input clk,
        input[13:0] x,
        input[13:0] y,
        input cin,
        output[13:0] r);
    wire cin_1;
    wire cin_1_d1;
    wire[14:0] x_1;
    wire[14:0] x_1_d1;
    wire[14:0] y_1;
    wire[14:0] y_1_d1;
    wire[14:0] y_1_d2;
    wire[14:0] y_1_d3;
    wire[14:0] s_1;
    wire[13:0] r_1;
    wire[14:0] n497_o;
    wire[14:0] n499_o;
    wire[14:0] n500_o;
    wire[14:0] n501_o;
    wire[14:0] n502_o;
    wire[13:0] n503_o;
    reg n504_q;
    reg[14:0] n505_q;
    reg[14:0] n506_q;
    reg[14:0] n507_q;
    reg[14:0] n508_q;
    assign r = r_1;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:256:8  */
    assign cin_1 = cin; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:256:15  */
    assign cin_1_d1 = n504_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:257:8  */
    assign x_1 = n497_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:257:13  */
    assign x_1_d1 = n505_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:258:8  */
    assign y_1 = n499_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:258:13  */
    assign y_1_d1 = n506_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:258:21  */
    assign y_1_d2 = n507_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:258:29  */
    assign y_1_d3 = n508_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:259:8  */
    assign s_1 = n502_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:260:8  */
    assign r_1 = n503_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:273:15  */
    assign n497_o = {1'b0, x};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:274:15  */
    assign n499_o = {1'b0, y};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:275:18  */
    assign n500_o = x_1_d1+y_1_d3;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:275:27  */
    assign n501_o = {14'b0, cin_1_d1};  //  uext
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:275:27  */
    assign n502_o = n500_o+n501_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:276:14  */
    assign n503_o = s_1[13:0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:264:10  */
    always @(posedge clk)
        n504_q <= cin_1;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:264:10  */
    always @(posedge clk)
        n505_q <= x_1;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:264:10  */
    always @(posedge clk)
        n506_q <= y_1;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:264:10  */
    always @(posedge clk)
        n507_q <= y_1_d1;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:264:10  */
    always @(posedge clk)
        n508_q <= y_1_d2;
endmodule

module intadder_10_f300_uid1000
    (input clk,
        input[9:0] x,
        input[9:0] y,
        input cin,
        output[9:0] r);
    wire[9:0] rtmp;
    wire[9:0] x_d1;
    wire[9:0] x_d2;
    wire[9:0] y_d1;
    wire[9:0] y_d2;
    wire[9:0] n479_o;
    wire[9:0] n480_o;
    wire[9:0] n481_o;
    reg[9:0] n482_q;
    reg[9:0] n483_q;
    reg[9:0] n484_q;
    reg[9:0] n485_q;
    assign r = rtmp;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:209:8  */
    assign rtmp = n481_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:210:8  */
    assign x_d1 = n482_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:210:14  */
    assign x_d2 = n483_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:211:8  */
    assign y_d1 = n484_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:211:14  */
    assign y_d2 = n485_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:222:17  */
    assign n479_o = x_d2+y_d2;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:222:24  */
    assign n480_o = {9'b0, cin};  //  uext
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:222:24  */
    assign n481_o = n479_o+n480_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:215:10  */
    always @(posedge clk)
        n482_q <= x;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:215:10  */
    always @(posedge clk)
        n483_q <= x_d1;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:215:10  */
    always @(posedge clk)
        n484_q <= y;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:215:10  */
    always @(posedge clk)
        n485_q <= y_d1;
endmodule

module rightshiftersticky7_by_max_9_f300_uid88
    (input clk,
        input[6:0] x,
        input[3:0] s,
        output[8:0] r,
        output sticky);
    wire[3:0] ps;
    wire[3:0] ps_d1;
    wire[3:0] ps_d2;
    wire[8:0] xpadded;
    wire[8:0] level4;
    wire[8:0] level4_d1;
    wire stk3;
    wire[8:0] level3;
    wire[8:0] level3_d1;
    wire stk2;
    wire stk2_d1;
    wire[8:0] level2;
    wire[8:0] level2_d1;
    wire[8:0] level2_d2;
    wire stk1;
    wire[8:0] level1;
    wire[8:0] level1_d1;
    wire[8:0] level1_d2;
    wire stk0;
    wire[8:0] level0;
    wire[8:0] n401_o;
    wire[7:0] n403_o;
    wire n405_o;
    wire n406_o;
    wire n407_o;
    wire n408_o;
    wire n410_o;
    wire n411_o;
    wire[8:0] n412_o;
    wire n413_o;
    wire[8:0] n415_o;
    wire[3:0] n417_o;
    wire n419_o;
    wire n420_o;
    wire n421_o;
    wire n422_o;
    wire n423_o;
    wire n425_o;
    wire n426_o;
    wire[8:0] n427_o;
    wire[4:0] n428_o;
    wire[8:0] n430_o;
    wire[1:0] n432_o;
    wire n434_o;
    wire n435_o;
    wire n436_o;
    wire n437_o;
    wire n438_o;
    wire n440_o;
    wire n441_o;
    wire[8:0] n442_o;
    wire[6:0] n443_o;
    wire[8:0] n445_o;
    wire n447_o;
    wire n449_o;
    wire n450_o;
    wire n451_o;
    wire n452_o;
    wire n453_o;
    wire n455_o;
    wire n456_o;
    wire[8:0] n457_o;
    wire[7:0] n458_o;
    wire[8:0] n460_o;
    reg[3:0] n461_q;
    reg[3:0] n462_q;
    reg[8:0] n463_q;
    reg[8:0] n464_q;
    reg n465_q;
    reg[8:0] n466_q;
    reg[8:0] n467_q;
    reg[8:0] n468_q;
    reg[8:0] n469_q;
    assign r = level0;
    assign sticky = stk0;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:138:8  */
    assign ps = s; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:138:12  */
    assign ps_d1 = n461_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:138:19  */
    assign ps_d2 = n462_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:139:8  */
    assign xpadded = n401_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:140:8  */
    assign level4 = xpadded; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:140:16  */
    assign level4_d1 = n463_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:141:8  */
    assign stk3 = n408_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:142:8  */
    assign level3 = n412_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:142:16  */
    assign level3_d1 = n464_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:143:8  */
    assign stk2 = n423_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:143:14  */
    assign stk2_d1 = n465_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:144:8  */
    assign level2 = n427_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:144:16  */
    assign level2_d1 = n466_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:144:27  */
    assign level2_d2 = n467_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:145:8  */
    assign stk1 = n438_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:146:8  */
    assign level1 = n442_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:146:16  */
    assign level1_d1 = n468_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:146:27  */
    assign level1_d2 = n469_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:147:8  */
    assign stk0 = n453_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:148:8  */
    assign level0 = n457_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:165:16  */
    assign n401_o = {x, 2'b00};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:167:31  */
    assign n403_o = level4_d1[7:0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:167:43  */
    assign n405_o = n403_o != 8'b00000000;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:167:65  */
    assign n406_o = ps_d1[3];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:167:56  */
    assign n407_o = n405_o & n406_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:167:16  */
    assign n408_o = n407_o ? 1'b1 : 1'b0;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:168:30  */
    assign n410_o = ps[3];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:168:33  */
    assign n411_o = ~n410_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:168:22  */
    assign n412_o = n411_o ? level4 : n415_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:168:74  */
    assign n413_o = level4[8];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:168:66  */
    assign n415_o = {8'b00000000, n413_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:169:31  */
    assign n417_o = level3_d1[3:0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:169:43  */
    assign n419_o = n417_o != 4'b0000;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:169:61  */
    assign n420_o = ps_d1[2];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:169:52  */
    assign n421_o = n419_o & n420_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:169:70  */
    assign n422_o = n421_o | stk3;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:169:16  */
    assign n423_o = n422_o ? 1'b1 : 1'b0;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:170:30  */
    assign n425_o = ps[2];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:170:33  */
    assign n426_o = ~n425_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:170:22  */
    assign n427_o = n426_o ? level3 : n430_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:170:74  */
    assign n428_o = level3[8:4];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:170:66  */
    assign n430_o = {4'b0000, n428_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:171:31  */
    assign n432_o = level2_d2[1:0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:171:43  */
    assign n434_o = n432_o != 2'b00;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:171:59  */
    assign n435_o = ps_d2[1];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:171:50  */
    assign n436_o = n434_o & n435_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:171:68  */
    assign n437_o = n436_o | stk2_d1;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:171:16  */
    assign n438_o = n437_o ? 1'b1 : 1'b0;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:172:30  */
    assign n440_o = ps[1];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:172:33  */
    assign n441_o = ~n440_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:172:22  */
    assign n442_o = n441_o ? level2 : n445_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:172:74  */
    assign n443_o = level2[8:2];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:172:66  */
    assign n445_o = {2'b00, n443_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:173:31  */
    assign n447_o = level1_d2[0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:173:43  */
    assign n449_o = n447_o != 1'b0;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:173:58  */
    assign n450_o = ps_d2[0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:173:49  */
    assign n451_o = n449_o & n450_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:173:67  */
    assign n452_o = n451_o | stk1;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:173:16  */
    assign n453_o = n452_o ? 1'b1 : 1'b0;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:174:30  */
    assign n455_o = ps[0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:174:33  */
    assign n456_o = ~n455_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:174:22  */
    assign n457_o = n456_o ? level1 : n460_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:174:74  */
    assign n458_o = level1[8:1];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:174:66  */
    assign n460_o = {1'b0, n458_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:152:10  */
    always @(posedge clk)
        n461_q <= ps;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:152:10  */
    always @(posedge clk)
        n462_q <= ps_d1;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:152:10  */
    always @(posedge clk)
        n463_q <= level4;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:152:10  */
    always @(posedge clk)
        n464_q <= level3;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:152:10  */
    always @(posedge clk)
        n465_q <= stk2;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:152:10  */
    always @(posedge clk)
        n466_q <= level2;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:152:10  */
    always @(posedge clk)
        n467_q <= level2_d1;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:152:10  */
    always @(posedge clk)
        n468_q <= level1;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:152:10  */
    always @(posedge clk)
        n469_q <= level1_d1;
endmodule

module normalizer_z_8_8_8_f300_uid66
    (input clk,
        input[7:0] x,
        output[3:0] count,
        output[7:0] r);
    wire[7:0] level4;
    wire[7:0] level4_d1;
    wire count3;
    wire count3_d1;
    wire[7:0] level3;
    wire count2;
    wire count2_d1;
    wire[7:0] level2;
    wire[7:0] level2_d1;
    wire count1;
    wire count1_d1;
    wire[7:0] level1;
    wire count0;
    wire[7:0] level0;
    wire[3:0] scount;
    wire n338_o;
    wire n339_o;
    wire n341_o;
    wire[7:0] n342_o;
    wire[3:0] n345_o;
    wire n347_o;
    wire n348_o;
    wire n350_o;
    wire[7:0] n351_o;
    wire[3:0] n352_o;
    wire[7:0] n354_o;
    wire[1:0] n356_o;
    wire n358_o;
    wire n359_o;
    wire n361_o;
    wire[7:0] n362_o;
    wire[5:0] n363_o;
    wire[7:0] n365_o;
    wire n367_o;
    wire n369_o;
    wire n370_o;
    wire n372_o;
    wire[7:0] n373_o;
    wire[6:0] n374_o;
    wire[7:0] n376_o;
    wire[1:0] n377_o;
    wire[2:0] n378_o;
    wire[3:0] n379_o;
    reg[7:0] n380_q;
    reg n381_q;
    reg n382_q;
    reg[7:0] n383_q;
    reg n384_q;
    assign count = scount;
    assign r = level0;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:69:8  */
    assign level4 = x; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:92:22  */
    assign level4_d1 = n380_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:70:8  */
    assign count3 = n339_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:70:16  */
    assign count3_d1 = n381_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:95:19  */
    assign level3 = n342_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:72:8  */
    assign count2 = n348_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:72:16  */
    assign count2_d1 = n382_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:73:8  */
    assign level2 = n351_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:98:22  */
    assign level2_d1 = n383_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:74:8  */
    assign count1 = n359_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:74:16  */
    assign count1_d1 = n384_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:101:19  */
    assign level1 = n362_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:76:8  */
    assign count0 = n370_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:77:8  */
    assign level0 = n373_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:78:8  */
    assign scount = n379_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:91:44  */
    assign n338_o = level4_d1 == 8'b00000000;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:91:17  */
    assign n339_o = n338_o ? 1'b1 : 1'b0;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:92:46  */
    assign n341_o = ~count3;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:92:35  */
    assign n342_o = n341_o ? level4_d1 : 8'b00000000;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:94:28  */
    assign n345_o = level3[7:4];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:94:41  */
    assign n347_o = n345_o == 4'b0000;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:94:17  */
    assign n348_o = n347_o ? 1'b1 : 1'b0;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:95:43  */
    assign n350_o = ~count2;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:95:32  */
    assign n351_o = n350_o ? level3 : n354_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:95:59  */
    assign n352_o = level3[3:0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:95:72  */
    assign n354_o = {n352_o, 4'b0000};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:97:28  */
    assign n356_o = level2[7:6];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:97:41  */
    assign n358_o = n356_o == 2'b00;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:97:17  */
    assign n359_o = n358_o ? 1'b1 : 1'b0;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:98:49  */
    assign n361_o = ~count1_d1;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:98:35  */
    assign n362_o = n361_o ? level2_d1 : n365_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:98:68  */
    assign n363_o = level2_d1[5:0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:98:81  */
    assign n365_o = {n363_o, 2'b00};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:100:28  */
    assign n367_o = level1[7];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:100:41  */
    assign n369_o = n367_o == 1'b0;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:100:17  */
    assign n370_o = n369_o ? 1'b1 : 1'b0;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:101:43  */
    assign n372_o = ~count0;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:101:32  */
    assign n373_o = n372_o ? level1 : n376_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:101:59  */
    assign n374_o = level1[6:0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:101:72  */
    assign n376_o = {n374_o, 1'b0};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:104:24  */
    assign n377_o = {count3_d1, count2_d1};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:104:36  */
    assign n378_o = {n377_o, count1_d1};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:104:48  */
    assign n379_o = {n378_o, count0};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:82:10  */
    always @(posedge clk)
        n380_q <= level4;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:82:10  */
    always @(posedge clk)
        n381_q <= count3;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:82:10  */
    always @(posedge clk)
        n382_q <= count2;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:82:10  */
    always @(posedge clk)
        n383_q <= level2;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:82:10  */
    always @(posedge clk)
        n384_q <= count1;
endmodule

module intdualsub_9_f300_uid444
    (input clk,
        input[8:0] x,
        input[8:0] y,
        output[8:0] xmy,
        output[8:0] ymx);
    wire[8:0] temprxmy;
    wire[8:0] temprymx;
    wire[8:0] n315_o;
    wire[8:0] n316_o;
    wire[8:0] n319_o;
    wire[8:0] n320_o;
    wire[8:0] n321_o;
    wire[8:0] n324_o;
    assign xmy = temprxmy;
    assign ymx = temprymx;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:31:8  */
    assign temprxmy = n319_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:32:8  */
    assign temprymx = n324_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:34:21  */
    assign n315_o = ~y;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:34:18  */
    assign n316_o = x+n315_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:34:28  */
    assign n319_o = n316_o+9'b000000001;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:35:21  */
    assign n320_o = ~x;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:35:18  */
    assign n321_o = y+n320_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:35:28  */
    assign n324_o = n321_o+9'b000000001;
endmodule

module fsub#(parameter ID=1)
    (input clk,
        input[14:0] X,
        input[14:0] Y,
        output[14:0] R);
    wire[14:0] inx;
    wire[14:0] iny;
    wire exceptionxsuperiory;
    wire exceptionxequaly;
    wire[6:0] signedexponentx;
    wire[6:0] signedexponenty;
    wire[6:0] exponentdifferencexy;
    wire[5:0] exponentdifferenceyx;
    wire swap;
    wire[14:0] my;
    wire[14:0] newx;
    wire[14:0] newx_d1;
    wire[14:0] newx_d2;
    wire[14:0] newy;
    wire[5:0] exponentdifference;
    wire shiftedout;
    wire[3:0] shiftval;
    wire effsub;
    wire effsub_d1;
    wire effsub_d2;
    wire selectclosepath;
    wire selectclosepath_d1;
    wire selectclosepath_d2;
    wire[3:0] sdexnxy;
    wire pipesigny;
    wire[8:0] fracxclose1;
    wire[8:0] fracyclose1;
    wire[8:0] fracrclosexmy;
    wire[8:0] fracrcloseymx;
    wire fracsignclose;
    wire[7:0] fracrclose1;
    wire ressign;
    wire[3:0] nzerosnew;
    wire[7:0] shiftedfrac;
    wire roundclose0;
    wire resultcloseiszero0;
    wire[7:0] exponentresultclose;
    wire[13:0] resultbeforeroundclose;
    wire roundclose;
    wire resultcloseiszero;
    wire[6:0] fracnewy;
    wire[8:0] shiftedfracy;
    wire sticky;
    wire[9:0] fracyfar;
    wire[9:0] effsubvector;
    wire[9:0] fracyfarxorop;
    wire[9:0] fracxfar;
    wire cinaddfar;
    wire[9:0] fracresultfar0;
    wire[9:0] fracresultfarnormstage;
    wire[1:0] fracleadingbits;
    wire[5:0] fracresultfar1;
    wire fracresultroundbit;
    wire fracresultstickybit;
    wire roundfar1;
    wire[1:0] expoperationsel;
    wire[7:0] exponentupdate;
    wire[7:0] exponentresultfar0;
    wire[7:0] exponentresultfar0_d1;
    wire[7:0] exponentresultfar0_d2;
    wire[7:0] exponentresultfar1;
    wire[13:0] resultbeforeroundfar;
    wire roundfar;
    wire[13:0] resultbeforeround;
    wire round;
    wire zerofromclose;
    wire zerofromclose_d1;
    wire[13:0] resultrounded;
    wire synceffsub;
    wire synceffsub_d1;
    wire synceffsub_d2;
    wire synceffsub_d3;
    wire[14:0] syncx;
    wire[14:0] syncx_d1;
    wire[14:0] syncx_d2;
    wire[14:0] syncx_d3;
    wire syncsigny;
    wire syncsigny_d1;
    wire syncsigny_d2;
    wire syncsigny_d3;
    wire syncressign;
    wire syncressign_d1;
    wire syncressign_d2;
    wire syncressign_d3;
    wire[1:0] underflowoverflow;
    wire[14:0] resultnoexn;
    wire[3:0] syncexnxy;
    wire[3:0] syncexnxy_d1;
    wire[3:0] syncexnxy_d2;
    wire[3:0] syncexnxy_d3;
    wire[1:0] exnr;
    wire sgnr;
    wire[11:0] expsigr;
    wire[1:0] n30_o;
    wire[1:0] n31_o;
    wire n32_o;
    wire n33_o;
    wire[1:0] n36_o;
    wire[1:0] n37_o;
    wire n38_o;
    wire n39_o;
    wire[5:0] n41_o;
    wire[6:0] n43_o;
    wire[5:0] n44_o;
    wire[6:0] n46_o;
    wire[6:0] n47_o;
    wire[5:0] n48_o;
    wire[5:0] n49_o;
    wire[5:0] n50_o;
    wire n51_o;
    wire n52_o;
    wire n53_o;
    wire n54_o;
    wire[1:0] n55_o;
    wire n56_o;
    wire n57_o;
    wire[2:0] n58_o;
    wire[11:0] n59_o;
    wire[14:0] n60_o;
    wire[14:0] n61_o;
    wire[14:0] n62_o;
    wire[5:0] n63_o;
    wire[5:0] n64_o;
    wire n65_o;
    wire n66_o;
    wire n67_o;
    wire[3:0] n68_o;
    wire n69_o;
    wire[3:0] n70_o;
    wire n72_o;
    wire n73_o;
    wire n74_o;
    wire[4:0] n75_o;
    wire n77_o;
    wire n78_o;
    wire[1:0] n80_o;
    wire[1:0] n81_o;
    wire[3:0] n82_o;
    wire n83_o;
    wire[5:0] n84_o;
    wire[7:0] n86_o;
    wire[8:0] n88_o;
    wire n89_o;
    wire[5:0] n90_o;
    wire[7:0] n92_o;
    wire[8:0] n94_o;
    wire n96_o;
    wire[5:0] n97_o;
    wire[8:0] n99_o;
    reg[8:0] n100_o;
    wire[8:0] fpsub_6_6_f300_uid2_dualsubclose_n101;
    wire[8:0] fpsub_6_6_f300_uid2_dualsubclose_n102;
    wire[8:0] fpsub_6_6_f300_uid2_dualsubclose_xmy;
    wire[8:0] fpsub_6_6_f300_uid2_dualsubclose_ymx;
    wire n107_o;
    wire[7:0] n108_o;
    wire n109_o;
    wire[7:0] n110_o;
    wire[7:0] n111_o;
    wire n114_o;
    wire n115_o;
    wire n116_o;
    wire n117_o;
    wire n118_o;
    wire n119_o;
    wire[3:0] norm_n120;
    wire[7:0] norm_n121;
    wire[3:0] norm_count;
    wire[7:0] norm_r;
    wire n126_o;
    wire n127_o;
    wire n128_o;
    wire n131_o;
    wire n132_o;
    wire[5:0] n134_o;
    wire[7:0] n136_o;
    wire[7:0] n138_o;
    wire[7:0] n139_o;
    wire[5:0] n140_o;
    wire[13:0] n141_o;
    wire[5:0] n142_o;
    wire[6:0] n144_o;
    wire[8:0] rightshiftercomponent_n145;
    wire rightshiftercomponent_n146;
    wire[8:0] rightshiftercomponent_r;
    wire rightshiftercomponent_sticky;
    wire[9:0] n152_o;
    wire[3:0] n153_o;
    wire[3:0] n154_o;
    wire[1:0] n155_o;
    wire[9:0] n156_o;
    wire[9:0] n157_o;
    wire[5:0] n158_o;
    wire[7:0] n160_o;
    wire[9:0] n162_o;
    wire n163_o;
    wire n164_o;
    wire[9:0] fpsub_6_6_f300_uid2_fracaddfar_n165;
    wire[9:0] fpsub_6_6_f300_uid2_fracaddfar_r;
    wire[1:0] n168_o;
    wire[5:0] n169_o;
    wire n171_o;
    wire[5:0] n172_o;
    wire[5:0] n173_o;
    wire n175_o;
    wire[5:0] n176_o;
    wire[5:0] n177_o;
    wire n178_o;
    wire n180_o;
    wire n181_o;
    wire n182_o;
    wire n184_o;
    wire n185_o;
    wire n186_o;
    wire n188_o;
    wire n189_o;
    wire n190_o;
    wire n191_o;
    wire n193_o;
    wire n194_o;
    wire n195_o;
    wire n196_o;
    wire n197_o;
    wire n198_o;
    wire n199_o;
    wire n200_o;
    wire n201_o;
    wire n204_o;
    wire[1:0] n205_o;
    wire n208_o;
    wire[1:0] n209_o;
    wire n211_o;
    wire n212_o;
    wire n213_o;
    wire n214_o;
    wire n215_o;
    wire n216_o;
    wire n217_o;
    wire[3:0] n218_o;
    wire[2:0] n219_o;
    wire[6:0] n220_o;
    wire n221_o;
    wire[7:0] n222_o;
    wire[5:0] n223_o;
    wire[7:0] n225_o;
    wire[7:0] n226_o;
    wire[13:0] n227_o;
    wire n229_o;
    reg[13:0] n230_o;
    wire n232_o;
    reg n233_o;
    wire n234_o;
    localparam [13:0] n235_o = 14'b00000000000000;
    wire[13:0] fpsub_6_6_f300_uid2_finalroundadd_n236;
    wire[13:0] fpsub_6_6_f300_uid2_finalroundadd_r;
    wire[1:0] n239_o;
    wire n240_o;
    wire[1:0] n242_o;
    wire n244_o;
    wire n247_o;
    wire n249_o;
    wire n250_o;
    wire n251_o;
    wire[1:0] n253_o;
    wire[1:0] n254_o;
    reg[1:0] n255_o;
    wire[11:0] n256_o;
    wire[12:0] n257_o;
    wire[1:0] n258_o;
    wire n260_o;
    wire[1:0] n262_o;
    wire n264_o;
    wire n267_o;
    wire[1:0] n268_o;
    wire[2:0] n269_o;
    reg[1:0] n270_o;
    wire n271_o;
    wire n273_o;
    wire n274_o;
    wire n275_o;
    wire n277_o;
    wire n278_o;
    wire[1:0] n279_o;
    reg n280_o;
    wire[11:0] n281_o;
    wire n283_o;
    wire[11:0] n284_o;
    reg[11:0] n285_o;
    wire[2:0] n286_o;
    wire[14:0] n287_o;
    reg[14:0] n288_q;
    reg[14:0] n289_q;
    reg n290_q;
    reg n291_q;
    reg n292_q;
    reg n293_q;
    reg[7:0] n294_q;
    reg[7:0] n295_q;
    reg n296_q;
    reg n297_q;
    reg n298_q;
    reg n299_q;
    reg[14:0] n300_q;
    reg[14:0] n301_q;
    reg[14:0] n302_q;
    reg n303_q;
    reg n304_q;
    reg n305_q;
    reg n306_q;
    reg n307_q;
    reg n308_q;
    wire[14:0] n309_o;
    reg[3:0] n310_q;
    reg[3:0] n311_q;
    reg[3:0] n312_q;
    assign R = n287_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:349:8  */
    assign inx = X; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:350:8  */
    assign iny = Y; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:351:8  */
    assign exceptionxsuperiory = n33_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:352:8  */
    assign exceptionxequaly = n39_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:353:8  */
    assign signedexponentx = n43_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:354:8  */
    assign signedexponenty = n46_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:355:8  */
    assign exponentdifferencexy = n47_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:356:8  */
    assign exponentdifferenceyx = n50_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:357:8  */
    assign swap = n54_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:358:8  */
    assign my = n60_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:359:8  */
    assign newx = n61_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:359:14  */
    assign newx_d1 = n288_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:359:23  */
    assign newx_d2 = n289_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:360:8  */
    assign newy = n62_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:361:8  */
    assign exponentdifference = n63_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:362:8  */
    assign shiftedout = n67_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:363:8  */
    assign shiftval = n70_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:364:8  */
    assign effsub = n74_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:364:16  */
    assign effsub_d1 = n290_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:364:27  */
    assign effsub_d2 = n291_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:365:8  */
    assign selectclosepath = n78_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:365:25  */
    assign selectclosepath_d1 = n292_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:365:45  */
    assign selectclosepath_d2 = n293_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:366:8  */
    assign sdexnxy = n82_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:367:8  */
    assign pipesigny = n83_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:368:8  */
    assign fracxclose1 = n88_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:369:8  */
    assign fracyclose1 = n100_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:370:8  */
    assign fracrclosexmy = fpsub_6_6_f300_uid2_dualsubclose_n101; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:371:8  */
    assign fracrcloseymx = fpsub_6_6_f300_uid2_dualsubclose_n102; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:372:8  */
    assign fracsignclose = n107_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:373:8  */
    assign fracrclose1 = n110_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:374:8  */
    assign ressign = n116_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:375:8  */
    assign nzerosnew = norm_n120; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:376:8  */
    assign shiftedfrac = norm_n121; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:377:8  */
    assign roundclose0 = n128_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:378:8  */
    assign resultcloseiszero0 = n132_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:493:49  */
    assign exponentresultclose = n139_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:380:8  */
    assign resultbeforeroundclose = n141_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:381:8  */
    assign roundclose = roundclose0; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:382:8  */
    assign resultcloseiszero = resultcloseiszero0; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:383:8  */
    assign fracnewy = n144_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:384:8  */
    assign shiftedfracy = rightshiftercomponent_n145; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:385:8  */
    assign sticky = rightshiftercomponent_n146; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:386:8  */
    assign fracyfar = n152_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:387:8  */
    assign effsubvector = n156_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:388:8  */
    assign fracyfarxorop = n157_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:389:8  */
    assign fracxfar = n162_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:390:8  */
    assign cinaddfar = n164_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:391:8  */
    assign fracresultfar0 = fpsub_6_6_f300_uid2_fracaddfar_n165; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:392:8  */
    assign fracresultfarnormstage = fracresultfar0; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:393:8  */
    assign fracleadingbits = n168_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:394:8  */
    assign fracresultfar1 = n172_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:395:8  */
    assign fracresultroundbit = n181_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:396:8  */
    assign fracresultstickybit = n189_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:397:8  */
    assign roundfar1 = n201_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:398:8  */
    assign expoperationsel = n205_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:399:8  */
    assign exponentupdate = n222_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:400:8  */
    assign exponentresultfar0 = n225_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:400:28  */
    assign exponentresultfar0_d1 = n294_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:400:51  */
    assign exponentresultfar0_d2 = n295_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:401:8  */
    assign exponentresultfar1 = n226_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:402:8  */
    assign resultbeforeroundfar = n227_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:403:8  */
    assign roundfar = roundfar1; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:404:8  */
    assign resultbeforeround = n230_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:405:8  */
    assign round = n233_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:406:8  */
    assign zerofromclose = n234_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:406:23  */
    assign zerofromclose_d1 = n296_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:407:8  */
    assign resultrounded = fpsub_6_6_f300_uid2_finalroundadd_n236; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:408:8  */
    assign synceffsub = effsub; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:408:20  */
    assign synceffsub_d1 = n297_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:408:35  */
    assign synceffsub_d2 = n298_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:408:50  */
    assign synceffsub_d3 = n299_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:409:8  */
    assign syncx = newx; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:409:15  */
    assign syncx_d1 = n300_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:409:25  */
    assign syncx_d2 = n301_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:409:35  */
    assign syncx_d3 = n302_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:410:8  */
    assign syncsigny = pipesigny; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:410:19  */
    assign syncsigny_d1 = n303_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:410:33  */
    assign syncsigny_d2 = n304_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:410:47  */
    assign syncsigny_d3 = n305_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:411:8  */
    assign syncressign = ressign; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:411:21  */
    assign syncressign_d1 = n306_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:411:37  */
    assign syncressign_d2 = n307_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:411:53  */
    assign syncressign_d3 = n308_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:412:8  */
    assign underflowoverflow = n239_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:413:8  */
    assign resultnoexn = n309_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:414:8  */
    assign syncexnxy = sdexnxy; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:414:19  */
    assign syncexnxy_d1 = n310_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:414:33  */
    assign syncexnxy_d2 = n311_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:414:47  */
    assign syncexnxy_d3 = n312_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:415:8  */
    assign exnr = n270_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:416:8  */
    assign sgnr = n280_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:417:8  */
    assign expsigr = n285_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:451:39  */
    assign n30_o = inx[14:13];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:451:60  */
    assign n31_o = iny[14:13];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:451:54  */
    assign n32_o = $unsigned(n30_o) >= $unsigned(n31_o);
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:451:31  */
    assign n33_o = n32_o ? 1'b1 : 1'b0;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:452:36  */
    assign n36_o = inx[14:13];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:452:56  */
    assign n37_o = iny[14:13];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:452:51  */
    assign n38_o = n36_o == n37_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:452:28  */
    assign n39_o = n38_o ? 1'b1 : 1'b0;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:453:32  */
    assign n41_o = inx[11:6];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:453:27  */
    assign n43_o = {1'b0, n41_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:454:32  */
    assign n44_o = iny[11:6];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:454:27  */
    assign n46_o = {1'b0, n44_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:455:44  */
    assign n47_o = signedexponentx-signedexponenty;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:456:43  */
    assign n48_o = signedexponenty[5:0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:456:73  */
    assign n49_o = signedexponentx[5:0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:456:56  */
    assign n50_o = n48_o-n49_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:457:54  */
    assign n51_o = exponentdifferencexy[6];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:457:30  */
    assign n52_o = exceptionxequaly & n51_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:457:63  */
    assign n53_o = ~exceptionxsuperiory;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:457:59  */
    assign n54_o = n52_o | n53_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:458:13  */
    assign n55_o = iny[14:13];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:458:37  */
    assign n56_o = iny[12];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:458:30  */
    assign n57_o = ~n56_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:458:28  */
    assign n58_o = {n55_o, n57_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:458:48  */
    assign n59_o = iny[11:0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:458:43  */
    assign n60_o = {n58_o, n59_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:459:15  */
    assign n61_o = swap ? my : inx;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:460:16  */
    assign n62_o = swap ? inx : my;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:461:47  */
    assign n63_o = swap ? exponentdifferenceyx : n64_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:461:88  */
    assign n64_o = exponentdifferencexy[5:0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:462:36  */
    assign n65_o = exponentdifference[5];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:462:61  */
    assign n66_o = exponentdifference[4];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:462:40  */
    assign n67_o = n65_o | n66_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:463:34  */
    assign n68_o = exponentdifference[3:0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:463:62  */
    assign n69_o = ~shiftedout;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:463:47  */
    assign n70_o = n69_o ? n68_o : 4'b1001;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:465:18  */
    assign n72_o = newx[12];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:465:31  */
    assign n73_o = newy[12];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:465:23  */
    assign n74_o = n72_o ^ n73_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:466:53  */
    assign n75_o = exponentdifference[5:1];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:466:66  */
    assign n77_o = n75_o == 5'b00000;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:466:30  */
    assign n78_o = n77_o ? effsub : 1'b0;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:467:19  */
    assign n80_o = newx[14:13];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:467:40  */
    assign n81_o = newy[14:13];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:467:34  */
    assign n82_o = {n80_o, n81_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:468:21  */
    assign n83_o = newy[12];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:471:30  */
    assign n84_o = newx[5:0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:471:24  */
    assign n86_o = {2'b01, n84_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:471:43  */
    assign n88_o = {n86_o, 1'b0};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:472:27  */
    assign n89_o = exponentdifference[0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:473:31  */
    assign n90_o = newy[5:0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:473:25  */
    assign n92_o = {2'b01, n90_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:473:44  */
    assign n94_o = {n92_o, 1'b0};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:473:50  */
    assign n96_o = n89_o == 1'b0;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:474:31  */
    assign n97_o = newy[5:0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:474:25  */
    assign n99_o = {3'b001, n97_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:472:4  */
    always @*
        case (n96_o)
            1'b1: n100_o = n94_o;
            default: n100_o = n99_o;
        endcase
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:479:25  */
    assign fpsub_6_6_f300_uid2_dualsubclose_n101 = fpsub_6_6_f300_uid2_dualsubclose_xmy; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:480:25  */
    assign fpsub_6_6_f300_uid2_dualsubclose_n102 = fpsub_6_6_f300_uid2_dualsubclose_ymx; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:475:4  */
    intdualsub_9_f300_uid444 fpsub_6_6_f300_uid2_dualsubclose(
        .clk(clk),
        .x(fracxclose1),
        .y(fracyclose1),
        .xmy(fpsub_6_6_f300_uid2_dualsubclose_xmy),
        .ymx(fpsub_6_6_f300_uid2_dualsubclose_ymx));
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:481:34  */
    assign n107_o = fracrclosexmy[8];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:482:32  */
    assign n108_o = fracrclosexmy[7:0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:482:63  */
    assign n109_o = ~fracsignclose;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:482:45  */
    assign n110_o = n109_o ? n108_o : n111_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:482:86  */
    assign n111_o = fracrcloseymx[7:0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:483:60  */
    assign n114_o = fracrclose1 == 8'b00000000;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:483:44  */
    assign n115_o = selectclosepath & n114_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:483:19  */
    assign n116_o = n115_o ? 1'b0 : n119_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:484:18  */
    assign n117_o = newx[12];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:484:44  */
    assign n118_o = selectclosepath & fracsignclose;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:484:23  */
    assign n119_o = n117_o ^ n118_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:488:27  */
    assign norm_n120 = norm_count; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:489:23  */
    assign norm_n121 = norm_r; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:485:4  */
    normalizer_z_8_8_8_f300_uid66 norm(
        .clk(clk),
        .x(fracrclose1),
        .count(norm_count),
        .r(norm_r));
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:490:30  */
    assign n126_o = shiftedfrac[0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:490:49  */
    assign n127_o = shiftedfrac[1];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:490:34  */
    assign n128_o = n126_o & n127_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:491:45  */
    assign n131_o = nzerosnew == 4'b1111;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:491:30  */
    assign n132_o = n131_o ? 1'b1 : 1'b0;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:492:42  */
    assign n134_o = newx_d2[11:6];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:492:33  */
    assign n136_o = {2'b00, n134_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:492:87  */
    assign n138_o = {4'b0000, nzerosnew};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:492:57  */
    assign n139_o = n136_o-n138_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:493:75  */
    assign n140_o = shiftedfrac[6:1];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:493:62  */
    assign n141_o = {exponentresultclose, n140_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:498:26  */
    assign n142_o = newy[5:0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:498:20  */
    assign n144_o = {1'b1, n142_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:503:23  */
    assign rightshiftercomponent_n145 = rightshiftercomponent_r; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:504:28  */
    assign rightshiftercomponent_n146 = rightshiftercomponent_sticky; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:499:4  */
    rightshiftersticky7_by_max_9_f300_uid88 rightshiftercomponent(
        .clk(clk),
        .x(fracnewy),
        .s(shiftval),
        .r(rightshiftercomponent_r),
        .sticky(rightshiftercomponent_sticky));
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:505:20  */
    assign n152_o = {1'b0, shiftedfracy};
    assign n153_o = {effsub, effsub, effsub, effsub};
    assign n154_o = {effsub, effsub, effsub, effsub};
    assign n155_o = {effsub, effsub};
    assign n156_o = {n153_o, n154_o, n155_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:507:30  */
    assign n157_o = fracyfar ^ effsubvector;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:508:28  */
    assign n158_o = newx[5:0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:508:21  */
    assign n160_o = {2'b01, n158_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:508:42  */
    assign n162_o = {n160_o, 2'b00};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:509:31  */
    assign n163_o = ~sticky;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:509:27  */
    assign n164_o = effsub_d2 & n163_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:515:23  */
    assign fpsub_6_6_f300_uid2_fracaddfar_n165 = fpsub_6_6_f300_uid2_fracaddfar_r; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:510:4  */
    intadder_10_f300_uid1000 fpsub_6_6_f300_uid2_fracaddfar(
        .clk(clk),
        .x(fracxfar),
        .y(fracyfarxorop),
        .cin(cinaddfar),
        .r(fpsub_6_6_f300_uid2_fracaddfar_r));
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:518:45  */
    assign n168_o = fracresultfarnormstage[9:8];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:520:34  */
    assign n169_o = fracresultfarnormstage[6:1];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:520:69  */
    assign n171_o = fracleadingbits == 2'b00;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:520:48  */
    assign n172_o = n171_o ? n169_o : n176_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:521:34  */
    assign n173_o = fracresultfarnormstage[7:2];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:521:69  */
    assign n175_o = fracleadingbits == 2'b01;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:521:7  */
    assign n176_o = n175_o ? n173_o : n177_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:522:34  */
    assign n177_o = fracresultfarnormstage[8:3];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:524:34  */
    assign n178_o = fracresultfarnormstage[0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:524:63  */
    assign n180_o = fracleadingbits == 2'b00;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:524:42  */
    assign n181_o = n180_o ? n178_o : n185_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:525:34  */
    assign n182_o = fracresultfarnormstage[1];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:525:62  */
    assign n184_o = fracleadingbits == 2'b01;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:525:7  */
    assign n185_o = n184_o ? n182_o : n186_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:526:34  */
    assign n186_o = fracresultfarnormstage[2];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:528:47  */
    assign n188_o = fracleadingbits == 2'b00;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:528:26  */
    assign n189_o = n188_o ? sticky : n194_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:529:34  */
    assign n190_o = fracresultfarnormstage[0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:529:38  */
    assign n191_o = n190_o | sticky;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:529:72  */
    assign n193_o = fracleadingbits == 2'b01;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:529:7  */
    assign n194_o = n193_o ? n191_o : n198_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:530:34  */
    assign n195_o = fracresultfarnormstage[1];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:530:63  */
    assign n196_o = fracresultfarnormstage[0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:530:38  */
    assign n197_o = n195_o | n196_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:530:67  */
    assign n198_o = n197_o | sticky;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:531:78  */
    assign n199_o = fracresultfar1[0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:531:61  */
    assign n200_o = fracresultstickybit | n199_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:531:36  */
    assign n201_o = fracresultroundbit & n200_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:532:49  */
    assign n204_o = fracleadingbits == 2'b00;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:532:28  */
    assign n205_o = n204_o ? 2'b11 : n209_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:533:49  */
    assign n208_o = fracleadingbits == 2'b01;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:533:16  */
    assign n209_o = n208_o ? 2'b00 : 2'b01;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:535:52  */
    assign n211_o = expoperationsel[1];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:535:52  */
    assign n212_o = expoperationsel[1];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:535:52  */
    assign n213_o = expoperationsel[1];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:535:52  */
    assign n214_o = expoperationsel[1];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:535:52  */
    assign n215_o = expoperationsel[1];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:535:52  */
    assign n216_o = expoperationsel[1];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:535:52  */
    assign n217_o = expoperationsel[1];
    assign n218_o = {n217_o, n216_o, n215_o, n214_o};
    assign n219_o = {n213_o, n212_o, n211_o};
    assign n220_o = {n218_o, n219_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:535:74  */
    assign n221_o = expoperationsel[0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:535:57  */
    assign n222_o = {n220_o, n221_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:536:36  */
    assign n223_o = newx[11:6];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:536:29  */
    assign n225_o = {2'b00, n223_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:537:48  */
    assign n226_o = exponentresultfar0_d2+exponentupdate;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:538:47  */
    assign n227_o = {exponentresultfar1, fracresultfar1};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:543:48  */
    assign n229_o = selectclosepath_d2 == 1'b1;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:542:4  */
    always @*
        case (n229_o)
            1'b1: n230_o = resultbeforeroundclose;
            default: n230_o = resultbeforeroundfar;
        endcase
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:546:24  */
    assign n232_o = selectclosepath_d2 == 1'b1;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:545:4  */
    always @*
        case (n232_o)
            1'b1: n233_o = roundclose;
            default: n233_o = roundfar;
        endcase
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:548:40  */
    assign n234_o = selectclosepath_d2 & resultcloseiszero;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:556:23  */
    assign fpsub_6_6_f300_uid2_finalroundadd_n236 = fpsub_6_6_f300_uid2_finalroundadd_r; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:551:4  */
    intadder_14_f300_uid13 fpsub_6_6_f300_uid2_finalroundadd(
        .clk(clk),
        .x(resultbeforeround),
        .y(n235_o),
        .cin(round),
        .r(fpsub_6_6_f300_uid2_finalroundadd_r));
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:561:38  */
    assign n239_o = resultrounded[13:12];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:563:36  */
    assign n240_o = ~zerofromclose_d1;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:563:58  */
    assign n242_o = {n240_o, 1'b0};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:563:64  */
    assign n244_o = underflowoverflow == 2'b01;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:564:39  */
    assign n247_o = underflowoverflow == 2'b10;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:564:49  */
    assign n249_o = underflowoverflow == 2'b11;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:564:49  */
    assign n250_o = n247_o | n249_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:565:41  */
    assign n251_o = ~zerofromclose_d1;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:565:38  */
    assign n253_o = {1'b0, n251_o};
    assign n254_o = {n250_o, n244_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:562:4  */
    always @*
        case (n254_o)
            2'b10: n255_o = 2'b00;
            2'b01: n255_o = n242_o;
            default: n255_o = n253_o;
        endcase
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:566:62  */
    assign n256_o = resultrounded[11:0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:566:47  */
    assign n257_o = {syncressign_d3, n256_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:570:26  */
    assign n258_o = resultnoexn[14:13];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:570:41  */
    assign n260_o = syncexnxy_d3 == 4'b0101;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:571:19  */
    assign n262_o = {1'b1, synceffsub_d3};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:571:44  */
    assign n264_o = syncexnxy_d3 == 4'b1010;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:572:41  */
    assign n267_o = syncexnxy_d3 == 4'b1110;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:573:27  */
    assign n268_o = syncexnxy_d3[3:2];
    assign n269_o = {n267_o, n264_o, n260_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:569:4  */
    always @*
        case (n269_o)
            3'b100: n270_o = 2'b11;
            3'b010: n270_o = n262_o;
            3'b001: n270_o = n258_o;
            default: n270_o = n268_o;
        endcase
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:576:26  */
    assign n271_o = resultnoexn[12];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:576:39  */
    assign n273_o = syncexnxy_d3 == 4'b0101;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:577:23  */
    assign n274_o = syncx_d3[12];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:577:28  */
    assign n275_o = n274_o & syncsigny_d3;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:577:45  */
    assign n277_o = syncexnxy_d3 == 4'b0000;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:578:23  */
    assign n278_o = syncx_d3[12];
    assign n279_o = {n277_o, n273_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:575:4  */
    always @*
        case (n279_o)
            2'b10: n280_o = n275_o;
            2'b01: n280_o = n271_o;
            default: n280_o = n278_o;
        endcase
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:581:29  */
    assign n281_o = resultnoexn[11:0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:581:45  */
    assign n283_o = syncexnxy_d3 == 4'b0101;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:582:26  */
    assign n284_o = syncx_d3[11:0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:580:4  */
    always @*
        case (n283_o)
            1'b1: n285_o = n281_o;
            default: n285_o = n284_o;
        endcase
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:583:14  */
    assign n286_o = {exnr, sgnr};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:583:21  */
    assign n287_o = {n286_o, expsigr};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:421:10  */
    always @(posedge clk)
        n288_q <= newx;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:421:10  */
    always @(posedge clk)
        n289_q <= newx_d1;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:421:10  */
    always @(posedge clk)
        n290_q <= effsub;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:421:10  */
    always @(posedge clk)
        n291_q <= effsub_d1;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:421:10  */
    always @(posedge clk)
        n292_q <= selectclosepath;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:421:10  */
    always @(posedge clk)
        n293_q <= selectclosepath_d1;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:421:10  */
    always @(posedge clk)
        n294_q <= exponentresultfar0;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:421:10  */
    always @(posedge clk)
        n295_q <= exponentresultfar0_d1;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:421:10  */
    always @(posedge clk)
        n296_q <= zerofromclose;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:421:10  */
    always @(posedge clk)
        n297_q <= synceffsub;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:421:10  */
    always @(posedge clk)
        n298_q <= synceffsub_d1;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:421:10  */
    always @(posedge clk)
        n299_q <= synceffsub_d2;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:421:10  */
    always @(posedge clk)
        n300_q <= syncx;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:421:10  */
    always @(posedge clk)
        n301_q <= syncx_d1;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:421:10  */
    always @(posedge clk)
        n302_q <= syncx_d2;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:421:10  */
    always @(posedge clk)
        n303_q <= syncsigny;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:421:10  */
    always @(posedge clk)
        n304_q <= syncsigny_d1;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:421:10  */
    always @(posedge clk)
        n305_q <= syncsigny_d2;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:421:10  */
    always @(posedge clk)
        n306_q <= syncressign;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:421:10  */
    always @(posedge clk)
        n307_q <= syncressign_d1;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:421:10  */
    always @(posedge clk)
        n308_q <= syncressign_d2;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:421:10  */
    assign n309_o = {n255_o, n257_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:421:10  */
    always @(posedge clk)
        n310_q <= syncexnxy;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:421:10  */
    always @(posedge clk)
        n311_q <= syncexnxy_d1;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_6_6.vhdl:421:10  */
    always @(posedge clk)
        n312_q <= syncexnxy_d2;
endmodule

