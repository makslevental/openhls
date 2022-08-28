module intadder_18_f300_uid1333
    (input wire clk,
        input wire [17:0] x,
        input wire [17:0] y,
        input wire cin,
       output wire [17:0] r);
    wire cin_1;
    wire cin_1_d1;
    wire[18:0] x_1;
    wire[18:0] x_1_d1;
    wire[18:0] y_1;
    wire[18:0] y_1_d1;
    wire[18:0] y_1_d2;
    wire[18:0] y_1_d3;
    wire[18:0] s_1;
    wire[17:0] r_1;
    wire[18:0] n506_o;
    wire[18:0] n508_o;
    wire[18:0] n509_o;
    wire[18:0] n510_o;
    wire[18:0] n511_o;
    wire[17:0] n512_o;
    reg n513_q;
    reg[18:0] n514_q;
    reg[18:0] n515_q;
    reg[18:0] n516_q;
    reg[18:0] n517_q;
    assign r = r_1;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:256:8  */
    assign cin_1 = cin; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:256:15  */
    assign cin_1_d1 = n513_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:257:8  */
    assign x_1 = n506_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:257:13  */
    assign x_1_d1 = n514_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:258:8  */
    assign y_1 = n508_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:258:13  */
    assign y_1_d1 = n515_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:258:21  */
    assign y_1_d2 = n516_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:258:29  */
    assign y_1_d3 = n517_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:259:8  */
    assign s_1 = n511_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:260:8  */
    assign r_1 = n512_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:273:15  */
    assign n506_o = {1'b0, x};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:274:15  */
    assign n508_o = {1'b0, y};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:275:18  */
    assign n509_o = x_1_d1+y_1_d3;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:275:27  */
    assign n510_o = {18'b0, cin_1_d1};  //  uext
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:275:27  */
    assign n511_o = n509_o+n510_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:276:14  */
    assign n512_o = s_1[17:0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:264:10  */
    always @(posedge clk)
        n513_q <= cin_1;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:264:10  */
    always @(posedge clk)
        n514_q <= x_1;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:264:10  */
    always @(posedge clk)
        n515_q <= y_1;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:264:10  */
    always @(posedge clk)
        n516_q <= y_1_d1;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:264:10  */
    always @(posedge clk)
        n517_q <= y_1_d2;
endmodule

module intadder_12_f300_uid1000
    (input wire clk,
        input wire [11:0] x,
        input wire [11:0] y,
        input wire cin,
       output wire [11:0] r);
    wire[11:0] rtmp;
    wire[11:0] x_d1;
    wire[11:0] x_d2;
    wire[11:0] y_d1;
    wire[11:0] y_d2;
    wire[11:0] n488_o;
    wire[11:0] n489_o;
    wire[11:0] n490_o;
    reg[11:0] n491_q;
    reg[11:0] n492_q;
    reg[11:0] n493_q;
    reg[11:0] n494_q;
    assign r = rtmp;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:209:8  */
    assign rtmp = n490_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:210:8  */
    assign x_d1 = n491_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:210:14  */
    assign x_d2 = n492_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:211:8  */
    assign y_d1 = n493_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:211:14  */
    assign y_d2 = n494_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:222:17  */
    assign n488_o = x_d2+y_d2;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:222:24  */
    assign n489_o = {11'b0, cin};  //  uext
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:222:24  */
    assign n490_o = n488_o+n489_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:215:10  */
    always @(posedge clk)
        n491_q <= x;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:215:10  */
    always @(posedge clk)
        n492_q <= x_d1;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:215:10  */
    always @(posedge clk)
        n493_q <= y;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:215:10  */
    always @(posedge clk)
        n494_q <= y_d1;
endmodule

module rightshiftersticky9_by_max_11_f300_uid88
    (input wire clk,
        input wire [8:0] x,
        input wire [3:0] s,
       output wire [10:0] r,
        output wire sticky);
    wire[3:0] ps;
    wire[3:0] ps_d1;
    wire[3:0] ps_d2;
    wire[10:0] xpadded;
    wire[10:0] level4;
    wire[10:0] level4_d1;
    wire stk3;
    wire[10:0] level3;
    wire[10:0] level3_d1;
    wire stk2;
    wire stk2_d1;
    wire[10:0] level2;
    wire[10:0] level2_d1;
    wire[10:0] level2_d2;
    wire stk1;
    wire[10:0] level1;
    wire[10:0] level1_d1;
    wire[10:0] level1_d2;
    wire stk0;
    wire[10:0] level0;
    wire[10:0] n410_o;
    wire[7:0] n412_o;
    wire n414_o;
    wire n415_o;
    wire n416_o;
    wire n417_o;
    wire n419_o;
    wire n420_o;
    wire[10:0] n421_o;
    wire[2:0] n422_o;
    wire[10:0] n424_o;
    wire[3:0] n426_o;
    wire n428_o;
    wire n429_o;
    wire n430_o;
    wire n431_o;
    wire n432_o;
    wire n434_o;
    wire n435_o;
    wire[10:0] n436_o;
    wire[6:0] n437_o;
    wire[10:0] n439_o;
    wire[1:0] n441_o;
    wire n443_o;
    wire n444_o;
    wire n445_o;
    wire n446_o;
    wire n447_o;
    wire n449_o;
    wire n450_o;
    wire[10:0] n451_o;
    wire[8:0] n452_o;
    wire[10:0] n454_o;
    wire n456_o;
    wire n458_o;
    wire n459_o;
    wire n460_o;
    wire n461_o;
    wire n462_o;
    wire n464_o;
    wire n465_o;
    wire[10:0] n466_o;
    wire[9:0] n467_o;
    wire[10:0] n469_o;
    reg[3:0] n470_q;
    reg[3:0] n471_q;
    reg[10:0] n472_q;
    reg[10:0] n473_q;
    reg n474_q;
    reg[10:0] n475_q;
    reg[10:0] n476_q;
    reg[10:0] n477_q;
    reg[10:0] n478_q;
    assign r = level0;
    assign sticky = stk0;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:138:8  */
    assign ps = s; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:138:12  */
    assign ps_d1 = n470_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:138:19  */
    assign ps_d2 = n471_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:139:8  */
    assign xpadded = n410_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:140:8  */
    assign level4 = xpadded; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:140:16  */
    assign level4_d1 = n472_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:141:8  */
    assign stk3 = n417_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:142:8  */
    assign level3 = n421_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:142:16  */
    assign level3_d1 = n473_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:143:8  */
    assign stk2 = n432_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:143:14  */
    assign stk2_d1 = n474_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:144:8  */
    assign level2 = n436_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:144:16  */
    assign level2_d1 = n475_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:144:27  */
    assign level2_d2 = n476_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:145:8  */
    assign stk1 = n447_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:146:8  */
    assign level1 = n451_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:146:16  */
    assign level1_d1 = n477_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:146:27  */
    assign level1_d2 = n478_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:147:8  */
    assign stk0 = n462_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:148:8  */
    assign level0 = n466_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:165:16  */
    assign n410_o = {x, 2'b00};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:167:31  */
    assign n412_o = level4_d1[7:0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:167:43  */
    assign n414_o = n412_o != 8'b00000000;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:167:65  */
    assign n415_o = ps_d1[3];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:167:56  */
    assign n416_o = n414_o & n415_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:167:16  */
    assign n417_o = n416_o ? 1'b1 : 1'b0;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:168:30  */
    assign n419_o = ps[3];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:168:33  */
    assign n420_o = ~n419_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:168:22  */
    assign n421_o = n420_o ? level4 : n424_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:168:74  */
    assign n422_o = level4[10:8];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:168:66  */
    assign n424_o = {8'b00000000, n422_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:169:31  */
    assign n426_o = level3_d1[3:0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:169:43  */
    assign n428_o = n426_o != 4'b0000;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:169:61  */
    assign n429_o = ps_d1[2];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:169:52  */
    assign n430_o = n428_o & n429_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:169:70  */
    assign n431_o = n430_o | stk3;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:169:16  */
    assign n432_o = n431_o ? 1'b1 : 1'b0;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:170:30  */
    assign n434_o = ps[2];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:170:33  */
    assign n435_o = ~n434_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:170:22  */
    assign n436_o = n435_o ? level3 : n439_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:170:74  */
    assign n437_o = level3[10:4];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:170:66  */
    assign n439_o = {4'b0000, n437_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:171:31  */
    assign n441_o = level2_d2[1:0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:171:43  */
    assign n443_o = n441_o != 2'b00;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:171:59  */
    assign n444_o = ps_d2[1];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:171:50  */
    assign n445_o = n443_o & n444_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:171:68  */
    assign n446_o = n445_o | stk2_d1;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:171:16  */
    assign n447_o = n446_o ? 1'b1 : 1'b0;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:172:30  */
    assign n449_o = ps[1];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:172:33  */
    assign n450_o = ~n449_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:172:22  */
    assign n451_o = n450_o ? level2 : n454_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:172:74  */
    assign n452_o = level2[10:2];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:172:66  */
    assign n454_o = {2'b00, n452_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:173:31  */
    assign n456_o = level1_d2[0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:173:43  */
    assign n458_o = n456_o != 1'b0;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:173:58  */
    assign n459_o = ps_d2[0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:173:49  */
    assign n460_o = n458_o & n459_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:173:67  */
    assign n461_o = n460_o | stk1;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:173:16  */
    assign n462_o = n461_o ? 1'b1 : 1'b0;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:174:30  */
    assign n464_o = ps[0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:174:33  */
    assign n465_o = ~n464_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:174:22  */
    assign n466_o = n465_o ? level1 : n469_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:174:74  */
    assign n467_o = level1[10:1];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:174:66  */
    assign n469_o = {1'b0, n467_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:152:10  */
    always @(posedge clk)
        n470_q <= ps;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:152:10  */
    always @(posedge clk)
        n471_q <= ps_d1;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:152:10  */
    always @(posedge clk)
        n472_q <= level4;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:152:10  */
    always @(posedge clk)
        n473_q <= level3;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:152:10  */
    always @(posedge clk)
        n474_q <= stk2;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:152:10  */
    always @(posedge clk)
        n475_q <= level2;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:152:10  */
    always @(posedge clk)
        n476_q <= level2_d1;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:152:10  */
    always @(posedge clk)
        n477_q <= level1;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:152:10  */
    always @(posedge clk)
        n478_q <= level1_d1;
endmodule

module normalizer_z_10_10_10_f300_uid66
    (input wire clk,
        input wire [9:0] x,
       output wire [3:0] count,
       output wire [9:0] r);
    wire[9:0] level4;
    wire[9:0] level4_d1;
    wire count3;
    wire count3_d1;
    wire[9:0] level3;
    wire count2;
    wire count2_d1;
    wire[9:0] level2;
    wire[9:0] level2_d1;
    wire count1;
    wire count1_d1;
    wire[9:0] level1;
    wire count0;
    wire[9:0] level0;
    wire[3:0] scount;
    wire[7:0] n343_o;
    wire n345_o;
    wire n346_o;
    wire n348_o;
    wire[9:0] n349_o;
    wire[1:0] n350_o;
    wire[9:0] n352_o;
    wire[3:0] n354_o;
    wire n356_o;
    wire n357_o;
    wire n359_o;
    wire[9:0] n360_o;
    wire[5:0] n361_o;
    wire[9:0] n363_o;
    wire[1:0] n365_o;
    wire n367_o;
    wire n368_o;
    wire n370_o;
    wire[9:0] n371_o;
    wire[7:0] n372_o;
    wire[9:0] n374_o;
    wire n376_o;
    wire n378_o;
    wire n379_o;
    wire n381_o;
    wire[9:0] n382_o;
    wire[8:0] n383_o;
    wire[9:0] n385_o;
    wire[1:0] n386_o;
    wire[2:0] n387_o;
    wire[3:0] n388_o;
    reg[9:0] n389_q;
    reg n390_q;
    reg n391_q;
    reg[9:0] n392_q;
    reg n393_q;
    assign count = scount;
    assign r = level0;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:69:8  */
    assign level4 = x; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:92:22  */
    assign level4_d1 = n389_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:70:8  */
    assign count3 = n346_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:70:16  */
    assign count3_d1 = n390_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:95:19  */
    assign level3 = n349_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:72:8  */
    assign count2 = n357_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:72:16  */
    assign count2_d1 = n391_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:73:8  */
    assign level2 = n360_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:98:22  */
    assign level2_d1 = n392_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:74:8  */
    assign count1 = n368_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:74:16  */
    assign count1_d1 = n393_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:101:19  */
    assign level1 = n371_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:76:8  */
    assign count0 = n379_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:77:8  */
    assign level0 = n382_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:78:8  */
    assign scount = n388_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:91:31  */
    assign n343_o = level4_d1[9:2];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:91:44  */
    assign n345_o = n343_o == 8'b00000000;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:91:17  */
    assign n346_o = n345_o ? 1'b1 : 1'b0;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:92:46  */
    assign n348_o = ~count3;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:92:35  */
    assign n349_o = n348_o ? level4_d1 : n352_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:92:65  */
    assign n350_o = level4_d1[1:0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:92:78  */
    assign n352_o = {n350_o, 8'b00000000};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:94:28  */
    assign n354_o = level3[9:6];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:94:41  */
    assign n356_o = n354_o == 4'b0000;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:94:17  */
    assign n357_o = n356_o ? 1'b1 : 1'b0;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:95:43  */
    assign n359_o = ~count2;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:95:32  */
    assign n360_o = n359_o ? level3 : n363_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:95:59  */
    assign n361_o = level3[5:0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:95:72  */
    assign n363_o = {n361_o, 4'b0000};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:97:28  */
    assign n365_o = level2[9:8];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:97:41  */
    assign n367_o = n365_o == 2'b00;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:97:17  */
    assign n368_o = n367_o ? 1'b1 : 1'b0;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:98:49  */
    assign n370_o = ~count1_d1;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:98:35  */
    assign n371_o = n370_o ? level2_d1 : n374_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:98:68  */
    assign n372_o = level2_d1[7:0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:98:81  */
    assign n374_o = {n372_o, 2'b00};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:100:28  */
    assign n376_o = level1[9];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:100:41  */
    assign n378_o = n376_o == 1'b0;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:100:17  */
    assign n379_o = n378_o ? 1'b1 : 1'b0;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:101:43  */
    assign n381_o = ~count0;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:101:32  */
    assign n382_o = n381_o ? level1 : n385_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:101:59  */
    assign n383_o = level1[8:0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:101:72  */
    assign n385_o = {n383_o, 1'b0};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:104:24  */
    assign n386_o = {count3_d1, count2_d1};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:104:36  */
    assign n387_o = {n386_o, count1_d1};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:104:48  */
    assign n388_o = {n387_o, count0};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:82:10  */
    always @(posedge clk)
        n389_q <= level4;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:82:10  */
    always @(posedge clk)
        n390_q <= count3;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:82:10  */
    always @(posedge clk)
        n391_q <= count2;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:82:10  */
    always @(posedge clk)
        n392_q <= level2;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:82:10  */
    always @(posedge clk)
        n393_q <= count1;
endmodule

module intdualsub_11_f300_uid444
    (input wire clk,
        input wire [10:0] x,
        input wire [10:0] y,
       output wire [10:0] xmy,
       output wire [10:0] ymx);
    wire[10:0] temprxmy;
    wire[10:0] temprymx;
    wire[10:0] n321_o;
    wire[10:0] n322_o;
    wire[10:0] n325_o;
    wire[10:0] n326_o;
    wire[10:0] n327_o;
    wire[10:0] n330_o;
    assign xmy = temprxmy;
    assign ymx = temprymx;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:31:8  */
    assign temprxmy = n325_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:32:8  */
    assign temprymx = n330_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:34:21  */
    assign n321_o = ~y;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:34:18  */
    assign n322_o = x+n321_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:34:28  */
    assign n325_o = n322_o+11'b00000000001;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:35:21  */
    assign n326_o = ~x;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:35:18  */
    assign n327_o = y+n326_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:35:28  */
    assign n330_o = n327_o+11'b00000000001;
endmodule

module fsub#(parameter ID=1)
    (input wire clk,
        input wire [18:0] X,
        input wire [18:0] Y,
       output wire [18:0] R);
    wire[18:0] inx;
    wire[18:0] iny;
    wire exceptionxsuperiory;
    wire exceptionxequaly;
    wire[8:0] signedexponentx;
    wire[8:0] signedexponenty;
    wire[8:0] exponentdifferencexy;
    wire[7:0] exponentdifferenceyx;
    wire swap;
    wire[18:0] my;
    wire[18:0] newx;
    wire[18:0] newx_d1;
    wire[18:0] newx_d2;
    wire[18:0] newy;
    wire[7:0] exponentdifference;
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
    wire[10:0] fracxclose1;
    wire[10:0] fracyclose1;
    wire[10:0] fracrclosexmy;
    wire[10:0] fracrcloseymx;
    wire fracsignclose;
    wire[9:0] fracrclose1;
    wire ressign;
    wire[3:0] nzerosnew;
    wire[9:0] shiftedfrac;
    wire roundclose0;
    wire resultcloseiszero0;
    wire[9:0] exponentresultclose;
    wire[17:0] resultbeforeroundclose;
    wire roundclose;
    wire resultcloseiszero;
    wire[8:0] fracnewy;
    wire[10:0] shiftedfracy;
    wire sticky;
    wire[11:0] fracyfar;
    wire[11:0] effsubvector;
    wire[11:0] fracyfarxorop;
    wire[11:0] fracxfar;
    wire cinaddfar;
    wire[11:0] fracresultfar0;
    wire[11:0] fracresultfarnormstage;
    wire[1:0] fracleadingbits;
    wire[7:0] fracresultfar1;
    wire fracresultroundbit;
    wire fracresultstickybit;
    wire roundfar1;
    wire[1:0] expoperationsel;
    wire[9:0] exponentupdate;
    wire[9:0] exponentresultfar0;
    wire[9:0] exponentresultfar0_d1;
    wire[9:0] exponentresultfar0_d2;
    wire[9:0] exponentresultfar1;
    wire[17:0] resultbeforeroundfar;
    wire roundfar;
    wire[17:0] resultbeforeround;
    wire round;
    wire zerofromclose;
    wire zerofromclose_d1;
    wire[17:0] resultrounded;
    wire synceffsub;
    wire synceffsub_d1;
    wire synceffsub_d2;
    wire synceffsub_d3;
    wire[18:0] syncx;
    wire[18:0] syncx_d1;
    wire[18:0] syncx_d2;
    wire[18:0] syncx_d3;
    wire syncsigny;
    wire syncsigny_d1;
    wire syncsigny_d2;
    wire syncsigny_d3;
    wire syncressign;
    wire syncressign_d1;
    wire syncressign_d2;
    wire syncressign_d3;
    wire[1:0] underflowoverflow;
    wire[18:0] resultnoexn;
    wire[3:0] syncexnxy;
    wire[3:0] syncexnxy_d1;
    wire[3:0] syncexnxy_d2;
    wire[3:0] syncexnxy_d3;
    wire[1:0] exnr;
    wire sgnr;
    wire[15:0] expsigr;
    wire[1:0] n30_o;
    wire[1:0] n31_o;
    wire n32_o;
    wire n33_o;
    wire[1:0] n36_o;
    wire[1:0] n37_o;
    wire n38_o;
    wire n39_o;
    wire[7:0] n41_o;
    wire[8:0] n43_o;
    wire[7:0] n44_o;
    wire[8:0] n46_o;
    wire[8:0] n47_o;
    wire[7:0] n48_o;
    wire[7:0] n49_o;
    wire[7:0] n50_o;
    wire n51_o;
    wire n52_o;
    wire n53_o;
    wire n54_o;
    wire[1:0] n55_o;
    wire n56_o;
    wire n57_o;
    wire[2:0] n58_o;
    wire[15:0] n59_o;
    wire[18:0] n60_o;
    wire[18:0] n61_o;
    wire[18:0] n62_o;
    wire[7:0] n63_o;
    wire[7:0] n64_o;
    wire n65_o;
    wire n66_o;
    wire n67_o;
    wire n68_o;
    wire n69_o;
    wire n70_o;
    wire n71_o;
    wire[3:0] n72_o;
    wire n73_o;
    wire[3:0] n74_o;
    wire n76_o;
    wire n77_o;
    wire n78_o;
    wire[6:0] n79_o;
    wire n81_o;
    wire n82_o;
    wire[1:0] n84_o;
    wire[1:0] n85_o;
    wire[3:0] n86_o;
    wire n87_o;
    wire[7:0] n88_o;
    wire[9:0] n90_o;
    wire[10:0] n92_o;
    wire n93_o;
    wire[7:0] n94_o;
    wire[9:0] n96_o;
    wire[10:0] n98_o;
    wire n100_o;
    wire[7:0] n101_o;
    wire[10:0] n103_o;
    reg[10:0] n104_o;
    wire[10:0] fpsub_8_8_f300_uid2_dualsubclose_n105;
    wire[10:0] fpsub_8_8_f300_uid2_dualsubclose_n106;
    wire[10:0] fpsub_8_8_f300_uid2_dualsubclose_xmy;
    wire[10:0] fpsub_8_8_f300_uid2_dualsubclose_ymx;
    wire n111_o;
    wire[9:0] n112_o;
    wire n113_o;
    wire[9:0] n114_o;
    wire[9:0] n115_o;
    wire n118_o;
    wire n119_o;
    wire n120_o;
    wire n121_o;
    wire n122_o;
    wire n123_o;
    wire[3:0] norm_n124;
    wire[9:0] norm_n125;
    wire[3:0] norm_count;
    wire[9:0] norm_r;
    wire n130_o;
    wire n131_o;
    wire n132_o;
    wire n135_o;
    wire n136_o;
    wire[7:0] n138_o;
    wire[9:0] n140_o;
    wire[9:0] n142_o;
    wire[9:0] n143_o;
    wire[7:0] n144_o;
    wire[17:0] n145_o;
    wire[7:0] n146_o;
    wire[8:0] n148_o;
    wire[10:0] rightshiftercomponent_n149;
    wire rightshiftercomponent_n150;
    wire[10:0] rightshiftercomponent_r;
    wire rightshiftercomponent_sticky;
    wire[11:0] n156_o;
    wire[3:0] n157_o;
    wire[3:0] n158_o;
    wire[3:0] n159_o;
    wire[11:0] n160_o;
    wire[11:0] n161_o;
    wire[7:0] n162_o;
    wire[9:0] n164_o;
    wire[11:0] n166_o;
    wire n167_o;
    wire n168_o;
    wire[11:0] fpsub_8_8_f300_uid2_fracaddfar_n169;
    wire[11:0] fpsub_8_8_f300_uid2_fracaddfar_r;
    wire[1:0] n172_o;
    wire[7:0] n173_o;
    wire n175_o;
    wire[7:0] n176_o;
    wire[7:0] n177_o;
    wire n179_o;
    wire[7:0] n180_o;
    wire[7:0] n181_o;
    wire n182_o;
    wire n184_o;
    wire n185_o;
    wire n186_o;
    wire n188_o;
    wire n189_o;
    wire n190_o;
    wire n192_o;
    wire n193_o;
    wire n194_o;
    wire n195_o;
    wire n197_o;
    wire n198_o;
    wire n199_o;
    wire n200_o;
    wire n201_o;
    wire n202_o;
    wire n203_o;
    wire n204_o;
    wire n205_o;
    wire n208_o;
    wire[1:0] n209_o;
    wire n212_o;
    wire[1:0] n213_o;
    wire n215_o;
    wire n216_o;
    wire n217_o;
    wire n218_o;
    wire n219_o;
    wire n220_o;
    wire n221_o;
    wire n222_o;
    wire n223_o;
    wire[3:0] n224_o;
    wire[3:0] n225_o;
    wire[8:0] n226_o;
    wire n227_o;
    wire[9:0] n228_o;
    wire[7:0] n229_o;
    wire[9:0] n231_o;
    wire[9:0] n232_o;
    wire[17:0] n233_o;
    wire n235_o;
    reg[17:0] n236_o;
    wire n238_o;
    reg n239_o;
    wire n240_o;
    localparam [17:0] n241_o = 18'b000000000000000000;
    wire[17:0] fpsub_8_8_f300_uid2_finalroundadd_n242;
    wire[17:0] fpsub_8_8_f300_uid2_finalroundadd_r;
    wire[1:0] n245_o;
    wire n246_o;
    wire[1:0] n248_o;
    wire n250_o;
    wire n253_o;
    wire n255_o;
    wire n256_o;
    wire n257_o;
    wire[1:0] n259_o;
    wire[1:0] n260_o;
    reg[1:0] n261_o;
    wire[15:0] n262_o;
    wire[16:0] n263_o;
    wire[1:0] n264_o;
    wire n266_o;
    wire[1:0] n268_o;
    wire n270_o;
    wire n273_o;
    wire[1:0] n274_o;
    wire[2:0] n275_o;
    reg[1:0] n276_o;
    wire n277_o;
    wire n279_o;
    wire n280_o;
    wire n281_o;
    wire n283_o;
    wire n284_o;
    wire[1:0] n285_o;
    reg n286_o;
    wire[15:0] n287_o;
    wire n289_o;
    wire[15:0] n290_o;
    reg[15:0] n291_o;
    wire[2:0] n292_o;
    wire[18:0] n293_o;
    reg[18:0] n294_q;
    reg[18:0] n295_q;
    reg n296_q;
    reg n297_q;
    reg n298_q;
    reg n299_q;
    reg[9:0] n300_q;
    reg[9:0] n301_q;
    reg n302_q;
    reg n303_q;
    reg n304_q;
    reg n305_q;
    reg[18:0] n306_q;
    reg[18:0] n307_q;
    reg[18:0] n308_q;
    reg n309_q;
    reg n310_q;
    reg n311_q;
    reg n312_q;
    reg n313_q;
    reg n314_q;
    wire[18:0] n315_o;
    reg[3:0] n316_q;
    reg[3:0] n317_q;
    reg[3:0] n318_q;
    assign R = n293_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:349:8  */
    assign inx = X; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:350:8  */
    assign iny = Y; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:351:8  */
    assign exceptionxsuperiory = n33_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:352:8  */
    assign exceptionxequaly = n39_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:353:8  */
    assign signedexponentx = n43_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:354:8  */
    assign signedexponenty = n46_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:355:8  */
    assign exponentdifferencexy = n47_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:356:8  */
    assign exponentdifferenceyx = n50_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:357:8  */
    assign swap = n54_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:358:8  */
    assign my = n60_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:359:8  */
    assign newx = n61_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:359:14  */
    assign newx_d1 = n294_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:359:23  */
    assign newx_d2 = n295_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:360:8  */
    assign newy = n62_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:361:8  */
    assign exponentdifference = n63_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:362:8  */
    assign shiftedout = n71_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:363:8  */
    assign shiftval = n74_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:364:8  */
    assign effsub = n78_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:364:16  */
    assign effsub_d1 = n296_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:364:27  */
    assign effsub_d2 = n297_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:365:8  */
    assign selectclosepath = n82_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:365:25  */
    assign selectclosepath_d1 = n298_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:365:45  */
    assign selectclosepath_d2 = n299_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:366:8  */
    assign sdexnxy = n86_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:367:8  */
    assign pipesigny = n87_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:368:8  */
    assign fracxclose1 = n92_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:369:8  */
    assign fracyclose1 = n104_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:370:8  */
    assign fracrclosexmy = fpsub_8_8_f300_uid2_dualsubclose_n105; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:371:8  */
    assign fracrcloseymx = fpsub_8_8_f300_uid2_dualsubclose_n106; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:372:8  */
    assign fracsignclose = n111_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:373:8  */
    assign fracrclose1 = n114_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:374:8  */
    assign ressign = n120_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:375:8  */
    assign nzerosnew = norm_n124; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:376:8  */
    assign shiftedfrac = norm_n125; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:377:8  */
    assign roundclose0 = n132_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:378:8  */
    assign resultcloseiszero0 = n136_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:493:49  */
    assign exponentresultclose = n143_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:380:8  */
    assign resultbeforeroundclose = n145_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:381:8  */
    assign roundclose = roundclose0; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:382:8  */
    assign resultcloseiszero = resultcloseiszero0; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:383:8  */
    assign fracnewy = n148_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:384:8  */
    assign shiftedfracy = rightshiftercomponent_n149; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:385:8  */
    assign sticky = rightshiftercomponent_n150; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:386:8  */
    assign fracyfar = n156_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:387:8  */
    assign effsubvector = n160_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:388:8  */
    assign fracyfarxorop = n161_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:389:8  */
    assign fracxfar = n166_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:390:8  */
    assign cinaddfar = n168_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:391:8  */
    assign fracresultfar0 = fpsub_8_8_f300_uid2_fracaddfar_n169; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:392:8  */
    assign fracresultfarnormstage = fracresultfar0; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:393:8  */
    assign fracleadingbits = n172_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:394:8  */
    assign fracresultfar1 = n176_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:395:8  */
    assign fracresultroundbit = n185_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:396:8  */
    assign fracresultstickybit = n193_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:397:8  */
    assign roundfar1 = n205_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:398:8  */
    assign expoperationsel = n209_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:399:8  */
    assign exponentupdate = n228_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:400:8  */
    assign exponentresultfar0 = n231_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:400:28  */
    assign exponentresultfar0_d1 = n300_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:400:51  */
    assign exponentresultfar0_d2 = n301_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:401:8  */
    assign exponentresultfar1 = n232_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:402:8  */
    assign resultbeforeroundfar = n233_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:403:8  */
    assign roundfar = roundfar1; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:404:8  */
    assign resultbeforeround = n236_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:405:8  */
    assign round = n239_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:406:8  */
    assign zerofromclose = n240_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:406:23  */
    assign zerofromclose_d1 = n302_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:407:8  */
    assign resultrounded = fpsub_8_8_f300_uid2_finalroundadd_n242; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:408:8  */
    assign synceffsub = effsub; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:408:20  */
    assign synceffsub_d1 = n303_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:408:35  */
    assign synceffsub_d2 = n304_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:408:50  */
    assign synceffsub_d3 = n305_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:409:8  */
    assign syncx = newx; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:409:15  */
    assign syncx_d1 = n306_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:409:25  */
    assign syncx_d2 = n307_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:409:35  */
    assign syncx_d3 = n308_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:410:8  */
    assign syncsigny = pipesigny; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:410:19  */
    assign syncsigny_d1 = n309_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:410:33  */
    assign syncsigny_d2 = n310_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:410:47  */
    assign syncsigny_d3 = n311_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:411:8  */
    assign syncressign = ressign; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:411:21  */
    assign syncressign_d1 = n312_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:411:37  */
    assign syncressign_d2 = n313_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:411:53  */
    assign syncressign_d3 = n314_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:412:8  */
    assign underflowoverflow = n245_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:413:8  */
    assign resultnoexn = n315_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:414:8  */
    assign syncexnxy = sdexnxy; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:414:19  */
    assign syncexnxy_d1 = n316_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:414:33  */
    assign syncexnxy_d2 = n317_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:414:47  */
    assign syncexnxy_d3 = n318_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:415:8  */
    assign exnr = n276_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:416:8  */
    assign sgnr = n286_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:417:8  */
    assign expsigr = n291_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:451:39  */
    assign n30_o = inx[18:17];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:451:60  */
    assign n31_o = iny[18:17];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:451:54  */
    assign n32_o = $unsigned(n30_o) >= $unsigned(n31_o);
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:451:31  */
    assign n33_o = n32_o ? 1'b1 : 1'b0;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:452:36  */
    assign n36_o = inx[18:17];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:452:56  */
    assign n37_o = iny[18:17];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:452:51  */
    assign n38_o = n36_o == n37_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:452:28  */
    assign n39_o = n38_o ? 1'b1 : 1'b0;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:453:32  */
    assign n41_o = inx[15:8];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:453:27  */
    assign n43_o = {1'b0, n41_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:454:32  */
    assign n44_o = iny[15:8];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:454:27  */
    assign n46_o = {1'b0, n44_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:455:44  */
    assign n47_o = signedexponentx-signedexponenty;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:456:43  */
    assign n48_o = signedexponenty[7:0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:456:73  */
    assign n49_o = signedexponentx[7:0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:456:56  */
    assign n50_o = n48_o-n49_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:457:54  */
    assign n51_o = exponentdifferencexy[8];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:457:30  */
    assign n52_o = exceptionxequaly & n51_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:457:63  */
    assign n53_o = ~exceptionxsuperiory;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:457:59  */
    assign n54_o = n52_o | n53_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:458:13  */
    assign n55_o = iny[18:17];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:458:37  */
    assign n56_o = iny[16];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:458:30  */
    assign n57_o = ~n56_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:458:28  */
    assign n58_o = {n55_o, n57_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:458:48  */
    assign n59_o = iny[15:0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:458:43  */
    assign n60_o = {n58_o, n59_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:459:15  */
    assign n61_o = swap ? my : inx;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:460:16  */
    assign n62_o = swap ? inx : my;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:461:47  */
    assign n63_o = swap ? exponentdifferenceyx : n64_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:461:88  */
    assign n64_o = exponentdifferencexy[7:0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:462:36  */
    assign n65_o = exponentdifference[7];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:462:61  */
    assign n66_o = exponentdifference[6];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:462:40  */
    assign n67_o = n65_o | n66_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:462:86  */
    assign n68_o = exponentdifference[5];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:462:65  */
    assign n69_o = n67_o | n68_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:462:111  */
    assign n70_o = exponentdifference[4];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:462:90  */
    assign n71_o = n69_o | n70_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:463:34  */
    assign n72_o = exponentdifference[3:0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:463:62  */
    assign n73_o = ~shiftedout;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:463:47  */
    assign n74_o = n73_o ? n72_o : 4'b1011;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:465:18  */
    assign n76_o = newx[16];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:465:31  */
    assign n77_o = newy[16];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:465:23  */
    assign n78_o = n76_o ^ n77_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:466:53  */
    assign n79_o = exponentdifference[7:1];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:466:66  */
    assign n81_o = n79_o == 7'b0000000;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:466:30  */
    assign n82_o = n81_o ? effsub : 1'b0;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:467:19  */
    assign n84_o = newx[18:17];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:467:40  */
    assign n85_o = newy[18:17];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:467:34  */
    assign n86_o = {n84_o, n85_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:468:21  */
    assign n87_o = newy[16];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:471:30  */
    assign n88_o = newx[7:0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:471:24  */
    assign n90_o = {2'b01, n88_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:471:43  */
    assign n92_o = {n90_o, 1'b0};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:472:27  */
    assign n93_o = exponentdifference[0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:473:31  */
    assign n94_o = newy[7:0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:473:25  */
    assign n96_o = {2'b01, n94_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:473:44  */
    assign n98_o = {n96_o, 1'b0};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:473:50  */
    assign n100_o = n93_o == 1'b0;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:474:31  */
    assign n101_o = newy[7:0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:474:25  */
    assign n103_o = {3'b001, n101_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:472:4  */
    always @*
        case (n100_o)
            1'b1: n104_o = n98_o;
            default: n104_o = n103_o;
        endcase
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:479:25  */
    assign fpsub_8_8_f300_uid2_dualsubclose_n105 = fpsub_8_8_f300_uid2_dualsubclose_xmy; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:480:25  */
    assign fpsub_8_8_f300_uid2_dualsubclose_n106 = fpsub_8_8_f300_uid2_dualsubclose_ymx; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:475:4  */
    intdualsub_11_f300_uid444 fpsub_8_8_f300_uid2_dualsubclose(
        .clk(clk),
        .x(fracxclose1),
        .y(fracyclose1),
        .xmy(fpsub_8_8_f300_uid2_dualsubclose_xmy),
        .ymx(fpsub_8_8_f300_uid2_dualsubclose_ymx));
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:481:34  */
    assign n111_o = fracrclosexmy[10];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:482:32  */
    assign n112_o = fracrclosexmy[9:0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:482:63  */
    assign n113_o = ~fracsignclose;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:482:45  */
    assign n114_o = n113_o ? n112_o : n115_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:482:86  */
    assign n115_o = fracrcloseymx[9:0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:483:60  */
    assign n118_o = fracrclose1 == 10'b0000000000;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:483:44  */
    assign n119_o = selectclosepath & n118_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:483:19  */
    assign n120_o = n119_o ? 1'b0 : n123_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:484:18  */
    assign n121_o = newx[16];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:484:44  */
    assign n122_o = selectclosepath & fracsignclose;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:484:23  */
    assign n123_o = n121_o ^ n122_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:488:27  */
    assign norm_n124 = norm_count; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:489:23  */
    assign norm_n125 = norm_r; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:485:4  */
    normalizer_z_10_10_10_f300_uid66 norm(
        .clk(clk),
        .x(fracrclose1),
        .count(norm_count),
        .r(norm_r));
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:490:30  */
    assign n130_o = shiftedfrac[0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:490:49  */
    assign n131_o = shiftedfrac[1];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:490:34  */
    assign n132_o = n130_o & n131_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:491:45  */
    assign n135_o = nzerosnew == 4'b1111;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:491:30  */
    assign n136_o = n135_o ? 1'b1 : 1'b0;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:492:42  */
    assign n138_o = newx_d2[15:8];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:492:33  */
    assign n140_o = {2'b00, n138_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:492:87  */
    assign n142_o = {6'b000000, nzerosnew};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:492:57  */
    assign n143_o = n140_o-n142_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:493:75  */
    assign n144_o = shiftedfrac[8:1];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:493:62  */
    assign n145_o = {exponentresultclose, n144_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:498:26  */
    assign n146_o = newy[7:0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:498:20  */
    assign n148_o = {1'b1, n146_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:503:23  */
    assign rightshiftercomponent_n149 = rightshiftercomponent_r; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:504:28  */
    assign rightshiftercomponent_n150 = rightshiftercomponent_sticky; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:499:4  */
    rightshiftersticky9_by_max_11_f300_uid88 rightshiftercomponent(
        .clk(clk),
        .x(fracnewy),
        .s(shiftval),
        .r(rightshiftercomponent_r),
        .sticky(rightshiftercomponent_sticky));
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:505:20  */
    assign n156_o = {1'b0, shiftedfracy};
    assign n157_o = {effsub, effsub, effsub, effsub};
    assign n158_o = {effsub, effsub, effsub, effsub};
    assign n159_o = {effsub, effsub, effsub, effsub};
    assign n160_o = {n157_o, n158_o, n159_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:507:30  */
    assign n161_o = fracyfar ^ effsubvector;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:508:28  */
    assign n162_o = newx[7:0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:508:21  */
    assign n164_o = {2'b01, n162_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:508:42  */
    assign n166_o = {n164_o, 2'b00};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:509:31  */
    assign n167_o = ~sticky;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:509:27  */
    assign n168_o = effsub_d2 & n167_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:515:23  */
    assign fpsub_8_8_f300_uid2_fracaddfar_n169 = fpsub_8_8_f300_uid2_fracaddfar_r; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:510:4  */
    intadder_12_f300_uid1000 fpsub_8_8_f300_uid2_fracaddfar(
        .clk(clk),
        .x(fracxfar),
        .y(fracyfarxorop),
        .cin(cinaddfar),
        .r(fpsub_8_8_f300_uid2_fracaddfar_r));
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:518:45  */
    assign n172_o = fracresultfarnormstage[11:10];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:520:34  */
    assign n173_o = fracresultfarnormstage[8:1];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:520:69  */
    assign n175_o = fracleadingbits == 2'b00;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:520:48  */
    assign n176_o = n175_o ? n173_o : n180_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:521:34  */
    assign n177_o = fracresultfarnormstage[9:2];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:521:69  */
    assign n179_o = fracleadingbits == 2'b01;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:521:7  */
    assign n180_o = n179_o ? n177_o : n181_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:522:34  */
    assign n181_o = fracresultfarnormstage[10:3];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:524:34  */
    assign n182_o = fracresultfarnormstage[0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:524:63  */
    assign n184_o = fracleadingbits == 2'b00;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:524:42  */
    assign n185_o = n184_o ? n182_o : n189_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:525:34  */
    assign n186_o = fracresultfarnormstage[1];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:525:62  */
    assign n188_o = fracleadingbits == 2'b01;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:525:7  */
    assign n189_o = n188_o ? n186_o : n190_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:526:34  */
    assign n190_o = fracresultfarnormstage[2];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:528:47  */
    assign n192_o = fracleadingbits == 2'b00;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:528:26  */
    assign n193_o = n192_o ? sticky : n198_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:529:34  */
    assign n194_o = fracresultfarnormstage[0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:529:38  */
    assign n195_o = n194_o | sticky;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:529:72  */
    assign n197_o = fracleadingbits == 2'b01;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:529:7  */
    assign n198_o = n197_o ? n195_o : n202_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:530:34  */
    assign n199_o = fracresultfarnormstage[1];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:530:63  */
    assign n200_o = fracresultfarnormstage[0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:530:38  */
    assign n201_o = n199_o | n200_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:530:67  */
    assign n202_o = n201_o | sticky;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:531:78  */
    assign n203_o = fracresultfar1[0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:531:61  */
    assign n204_o = fracresultstickybit | n203_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:531:36  */
    assign n205_o = fracresultroundbit & n204_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:532:49  */
    assign n208_o = fracleadingbits == 2'b00;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:532:28  */
    assign n209_o = n208_o ? 2'b11 : n213_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:533:49  */
    assign n212_o = fracleadingbits == 2'b01;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:533:16  */
    assign n213_o = n212_o ? 2'b00 : 2'b01;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:535:52  */
    assign n215_o = expoperationsel[1];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:535:52  */
    assign n216_o = expoperationsel[1];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:535:52  */
    assign n217_o = expoperationsel[1];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:535:52  */
    assign n218_o = expoperationsel[1];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:535:52  */
    assign n219_o = expoperationsel[1];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:535:52  */
    assign n220_o = expoperationsel[1];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:535:52  */
    assign n221_o = expoperationsel[1];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:535:52  */
    assign n222_o = expoperationsel[1];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:535:52  */
    assign n223_o = expoperationsel[1];
    assign n224_o = {n223_o, n222_o, n221_o, n220_o};
    assign n225_o = {n219_o, n218_o, n217_o, n216_o};
    assign n226_o = {n224_o, n225_o, n215_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:535:74  */
    assign n227_o = expoperationsel[0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:535:57  */
    assign n228_o = {n226_o, n227_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:536:36  */
    assign n229_o = newx[15:8];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:536:29  */
    assign n231_o = {2'b00, n229_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:537:48  */
    assign n232_o = exponentresultfar0_d2+exponentupdate;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:538:47  */
    assign n233_o = {exponentresultfar1, fracresultfar1};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:543:48  */
    assign n235_o = selectclosepath_d2 == 1'b1;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:542:4  */
    always @*
        case (n235_o)
            1'b1: n236_o = resultbeforeroundclose;
            default: n236_o = resultbeforeroundfar;
        endcase
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:546:24  */
    assign n238_o = selectclosepath_d2 == 1'b1;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:545:4  */
    always @*
        case (n238_o)
            1'b1: n239_o = roundclose;
            default: n239_o = roundfar;
        endcase
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:548:40  */
    assign n240_o = selectclosepath_d2 & resultcloseiszero;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:556:23  */
    assign fpsub_8_8_f300_uid2_finalroundadd_n242 = fpsub_8_8_f300_uid2_finalroundadd_r; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:551:4  */
    intadder_18_f300_uid13 fpsub_8_8_f300_uid2_finalroundadd(
        .clk(clk),
        .x(resultbeforeround),
        .y(n241_o),
        .cin(round),
        .r(fpsub_8_8_f300_uid2_finalroundadd_r));
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:561:38  */
    assign n245_o = resultrounded[17:16];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:563:36  */
    assign n246_o = ~zerofromclose_d1;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:563:58  */
    assign n248_o = {n246_o, 1'b0};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:563:64  */
    assign n250_o = underflowoverflow == 2'b01;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:564:39  */
    assign n253_o = underflowoverflow == 2'b10;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:564:49  */
    assign n255_o = underflowoverflow == 2'b11;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:564:49  */
    assign n256_o = n253_o | n255_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:565:41  */
    assign n257_o = ~zerofromclose_d1;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:565:38  */
    assign n259_o = {1'b0, n257_o};
    assign n260_o = {n256_o, n250_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:562:4  */
    always @*
        case (n260_o)
            2'b10: n261_o = 2'b00;
            2'b01: n261_o = n248_o;
            default: n261_o = n259_o;
        endcase
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:566:62  */
    assign n262_o = resultrounded[15:0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:566:47  */
    assign n263_o = {syncressign_d3, n262_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:570:26  */
    assign n264_o = resultnoexn[18:17];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:570:41  */
    assign n266_o = syncexnxy_d3 == 4'b0101;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:571:19  */
    assign n268_o = {1'b1, synceffsub_d3};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:571:44  */
    assign n270_o = syncexnxy_d3 == 4'b1010;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:572:41  */
    assign n273_o = syncexnxy_d3 == 4'b1110;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:573:27  */
    assign n274_o = syncexnxy_d3[3:2];
    assign n275_o = {n273_o, n270_o, n266_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:569:4  */
    always @*
        case (n275_o)
            3'b100: n276_o = 2'b11;
            3'b010: n276_o = n268_o;
            3'b001: n276_o = n264_o;
            default: n276_o = n274_o;
        endcase
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:576:26  */
    assign n277_o = resultnoexn[16];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:576:39  */
    assign n279_o = syncexnxy_d3 == 4'b0101;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:577:23  */
    assign n280_o = syncx_d3[16];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:577:28  */
    assign n281_o = n280_o & syncsigny_d3;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:577:45  */
    assign n283_o = syncexnxy_d3 == 4'b0000;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:578:23  */
    assign n284_o = syncx_d3[16];
    assign n285_o = {n283_o, n279_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:575:4  */
    always @*
        case (n285_o)
            2'b10: n286_o = n281_o;
            2'b01: n286_o = n277_o;
            default: n286_o = n284_o;
        endcase
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:581:29  */
    assign n287_o = resultnoexn[15:0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:581:45  */
    assign n289_o = syncexnxy_d3 == 4'b0101;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:582:26  */
    assign n290_o = syncx_d3[15:0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:580:4  */
    always @*
        case (n289_o)
            1'b1: n291_o = n287_o;
            default: n291_o = n290_o;
        endcase
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:583:14  */
    assign n292_o = {exnr, sgnr};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:583:21  */
    assign n293_o = {n292_o, expsigr};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:421:10  */
    always @(posedge clk)
        n294_q <= newx;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:421:10  */
    always @(posedge clk)
        n295_q <= newx_d1;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:421:10  */
    always @(posedge clk)
        n296_q <= effsub;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:421:10  */
    always @(posedge clk)
        n297_q <= effsub_d1;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:421:10  */
    always @(posedge clk)
        n298_q <= selectclosepath;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:421:10  */
    always @(posedge clk)
        n299_q <= selectclosepath_d1;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:421:10  */
    always @(posedge clk)
        n300_q <= exponentresultfar0;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:421:10  */
    always @(posedge clk)
        n301_q <= exponentresultfar0_d1;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:421:10  */
    always @(posedge clk)
        n302_q <= zerofromclose;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:421:10  */
    always @(posedge clk)
        n303_q <= synceffsub;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:421:10  */
    always @(posedge clk)
        n304_q <= synceffsub_d1;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:421:10  */
    always @(posedge clk)
        n305_q <= synceffsub_d2;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:421:10  */
    always @(posedge clk)
        n306_q <= syncx;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:421:10  */
    always @(posedge clk)
        n307_q <= syncx_d1;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:421:10  */
    always @(posedge clk)
        n308_q <= syncx_d2;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:421:10  */
    always @(posedge clk)
        n309_q <= syncsigny;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:421:10  */
    always @(posedge clk)
        n310_q <= syncsigny_d1;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:421:10  */
    always @(posedge clk)
        n311_q <= syncsigny_d2;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:421:10  */
    always @(posedge clk)
        n312_q <= syncressign;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:421:10  */
    always @(posedge clk)
        n313_q <= syncressign_d1;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:421:10  */
    always @(posedge clk)
        n314_q <= syncressign_d2;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:421:10  */
    assign n315_o = {n261_o, n263_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:421:10  */
    always @(posedge clk)
        n316_q <= syncexnxy;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:421:10  */
    always @(posedge clk)
        n317_q <= syncexnxy_d1;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fsub_8_8.vhdl:421:10  */
    always @(posedge clk)
        n318_q <= syncexnxy_d2;
endmodule

