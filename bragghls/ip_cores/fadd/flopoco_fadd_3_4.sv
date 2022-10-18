module intadder_9_f300_uid133
    (input wire clk,
        input wire [8:0] x,
        input wire [8:0] y,
        input wire cin,
       output wire [8:0] r);
    wire[8:0] rtmp;
    wire[8:0] y_d1;
    wire[8:0] y_d2;
    wire[8:0] n434_o;
    wire[8:0] n435_o;
    wire[8:0] n436_o;
    reg[8:0] n437_q;
    reg[8:0] n438_q;
    assign r = rtmp;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:247:8  */
    assign rtmp = n436_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:248:8  */
    assign y_d1 = n437_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:248:14  */
    assign y_d2 = n438_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:257:14  */
    assign n434_o = x+y_d2;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:257:21  */
    assign n435_o = {8'b0, cin};  //  uext
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:257:21  */
    assign n436_o = n434_o+n435_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:252:10  */
    always @(posedge clk)
        n437_q <= y;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:252:10  */
    always @(posedge clk)
        n438_q <= y_d1;
endmodule

module intadder_8_f300_uid10
    (input wire clk,
        input wire [7:0] x,
        input wire [7:0] y,
        input wire cin,
       output wire [7:0] r);
    wire cin_1;
    wire cin_1_d1;
    wire[8:0] x_1;
    wire[8:0] x_1_d1;
    wire[8:0] x_1_d2;
    wire[8:0] y_1;
    wire[8:0] y_1_d1;
    wire[8:0] y_1_d2;
    wire[8:0] s_1;
    wire[7:0] r_1;
    wire[8:0] n415_o;
    wire[8:0] n417_o;
    wire[8:0] n418_o;
    wire[8:0] n419_o;
    wire[8:0] n420_o;
    wire[7:0] n421_o;
    reg n422_q;
    reg[8:0] n423_q;
    reg[8:0] n424_q;
    reg[8:0] n425_q;
    reg[8:0] n426_q;
    assign r = r_1;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:193:8  */
    assign cin_1 = cin; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:193:15  */
    assign cin_1_d1 = n422_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:194:8  */
    assign x_1 = n415_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:194:13  */
    assign x_1_d1 = n423_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:194:21  */
    assign x_1_d2 = n424_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:195:8  */
    assign y_1 = n417_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:195:13  */
    assign y_1_d1 = n425_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:195:21  */
    assign y_1_d2 = n426_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:196:8  */
    assign s_1 = n420_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:197:8  */
    assign r_1 = n421_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:210:15  */
    assign n415_o = {1'b0, x};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:211:15  */
    assign n417_o = {1'b0, y};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:212:18  */
    assign n418_o = x_1_d2+y_1_d2;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:212:27  */
    assign n419_o = {8'b0, cin_1_d1};  //  uext
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:212:27  */
    assign n420_o = n418_o+n419_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:213:14  */
    assign n421_o = s_1[7:0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:201:10  */
    always @(posedge clk)
        n422_q <= cin_1;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:201:10  */
    always @(posedge clk)
        n423_q <= x_1;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:201:10  */
    always @(posedge clk)
        n424_q <= x_1_d1;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:201:10  */
    always @(posedge clk)
        n425_q <= y_1;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:201:10  */
    always @(posedge clk)
        n426_q <= y_1_d1;
endmodule

module rightshiftersticky5_by_max_7_f300_uid8
    (input wire clk,
        input wire [4:0] x,
        input wire [2:0] s,
       output wire [6:0] r,
        output wire sticky);
    wire[2:0] ps;
    wire[2:0] ps_d1;
    wire[6:0] xpadded;
    wire[6:0] level3;
    wire stk2;
    wire stk2_d1;
    wire[6:0] level2;
    wire[6:0] level2_d1;
    wire stk1;
    wire[6:0] level1;
    wire[6:0] level1_d1;
    wire stk0;
    wire[6:0] level0;
    wire[6:0] n355_o;
    wire[3:0] n357_o;
    wire n359_o;
    wire n360_o;
    wire n361_o;
    wire n362_o;
    wire n364_o;
    wire n365_o;
    wire[6:0] n366_o;
    wire[2:0] n367_o;
    wire[6:0] n369_o;
    wire[1:0] n371_o;
    wire n373_o;
    wire n374_o;
    wire n375_o;
    wire n376_o;
    wire n377_o;
    wire n379_o;
    wire n380_o;
    wire[6:0] n381_o;
    wire[4:0] n382_o;
    wire[6:0] n384_o;
    wire n386_o;
    wire n388_o;
    wire n389_o;
    wire n390_o;
    wire n391_o;
    wire n392_o;
    wire n394_o;
    wire n395_o;
    wire[6:0] n396_o;
    wire[5:0] n397_o;
    wire[6:0] n399_o;
    reg[2:0] n400_q;
    reg n401_q;
    reg[6:0] n402_q;
    reg[6:0] n403_q;
    assign r = level0;
    assign sticky = stk0;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:131:8  */
    assign ps = s; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:131:12  */
    assign ps_d1 = n400_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:132:8  */
    assign xpadded = n355_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:133:8  */
    assign level3 = xpadded; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:134:8  */
    assign stk2 = n362_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:134:14  */
    assign stk2_d1 = n401_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:135:8  */
    assign level2 = n366_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:135:16  */
    assign level2_d1 = n402_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:136:8  */
    assign stk1 = n377_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:137:8  */
    assign level1 = n381_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:137:16  */
    assign level1_d1 = n403_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:138:8  */
    assign stk0 = n392_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:139:8  */
    assign level0 = n396_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:151:16  */
    assign n355_o = {x, 2'b00};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:153:28  */
    assign n357_o = level3[3:0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:153:40  */
    assign n359_o = n357_o != 4'b0000;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:153:55  */
    assign n360_o = ps[2];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:153:49  */
    assign n361_o = n359_o & n360_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:153:16  */
    assign n362_o = n361_o ? 1'b1 : 1'b0;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:154:30  */
    assign n364_o = ps[2];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:154:33  */
    assign n365_o = ~n364_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:154:22  */
    assign n366_o = n365_o ? level3 : n369_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:154:74  */
    assign n367_o = level3[6:4];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:154:66  */
    assign n369_o = {4'b0000, n367_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:155:31  */
    assign n371_o = level2_d1[1:0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:155:43  */
    assign n373_o = n371_o != 2'b00;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:155:59  */
    assign n374_o = ps_d1[1];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:155:50  */
    assign n375_o = n373_o & n374_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:155:68  */
    assign n376_o = n375_o | stk2_d1;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:155:16  */
    assign n377_o = n376_o ? 1'b1 : 1'b0;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:156:30  */
    assign n379_o = ps[1];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:156:33  */
    assign n380_o = ~n379_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:156:22  */
    assign n381_o = n380_o ? level2 : n384_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:156:74  */
    assign n382_o = level2[6:2];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:156:66  */
    assign n384_o = {2'b00, n382_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:157:31  */
    assign n386_o = level1_d1[0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:157:43  */
    assign n388_o = n386_o != 1'b0;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:157:58  */
    assign n389_o = ps_d1[0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:157:49  */
    assign n390_o = n388_o & n389_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:157:67  */
    assign n391_o = n390_o | stk1;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:157:16  */
    assign n392_o = n391_o ? 1'b1 : 1'b0;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:158:30  */
    assign n394_o = ps[0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:158:33  */
    assign n395_o = ~n394_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:158:22  */
    assign n396_o = n395_o ? level1 : n399_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:158:74  */
    assign n397_o = level1[6:1];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:158:66  */
    assign n399_o = {1'b0, n397_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:143:10  */
    always @(posedge clk)
        n400_q <= ps;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:143:10  */
    always @(posedge clk)
        n401_q <= stk2;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:143:10  */
    always @(posedge clk)
        n402_q <= level2;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:143:10  */
    always @(posedge clk)
        n403_q <= level1;
endmodule

module normalizer_z_6_6_6_f300_uid6
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
    wire[3:0] n307_o;
    wire n309_o;
    wire n310_o;
    wire n312_o;
    wire[5:0] n313_o;
    wire[1:0] n314_o;
    wire[5:0] n316_o;
    wire[1:0] n318_o;
    wire n320_o;
    wire n321_o;
    wire n323_o;
    wire[5:0] n324_o;
    wire[3:0] n325_o;
    wire[5:0] n327_o;
    wire n329_o;
    wire n331_o;
    wire n332_o;
    wire n334_o;
    wire[5:0] n335_o;
    wire[4:0] n336_o;
    wire[5:0] n338_o;
    wire[1:0] n339_o;
    wire[2:0] n340_o;
    reg[5:0] n341_q;
    reg[5:0] n342_q;
    reg n343_q;
    assign count = scount;
    assign r = level0;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:69:8  */
    assign level3 = x; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:88:22  */
    assign level3_d1 = n341_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:70:8  */
    assign count2 = n310_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:91:19  */
    assign level2 = n313_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:72:8  */
    assign count1 = n321_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:73:8  */
    assign level1 = n324_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:94:22  */
    assign level1_d1 = n342_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:74:8  */
    assign count0 = n332_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:74:16  */
    assign count0_d1 = n343_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:75:8  */
    assign level0 = n335_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:76:8  */
    assign scount = n340_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:87:31  */
    assign n307_o = level3_d1[5:2];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:87:44  */
    assign n309_o = n307_o == 4'b0000;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:87:17  */
    assign n310_o = n309_o ? 1'b1 : 1'b0;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:88:46  */
    assign n312_o = ~count2;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:88:35  */
    assign n313_o = n312_o ? level3_d1 : n316_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:88:65  */
    assign n314_o = level3_d1[1:0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:88:78  */
    assign n316_o = {n314_o, 4'b0000};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:90:28  */
    assign n318_o = level2[5:4];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:90:41  */
    assign n320_o = n318_o == 2'b00;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:90:17  */
    assign n321_o = n320_o ? 1'b1 : 1'b0;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:91:43  */
    assign n323_o = ~count1;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:91:32  */
    assign n324_o = n323_o ? level2 : n327_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:91:59  */
    assign n325_o = level2[3:0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:91:72  */
    assign n327_o = {n325_o, 2'b00};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:93:28  */
    assign n329_o = level1[5];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:93:41  */
    assign n331_o = n329_o == 1'b0;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:93:17  */
    assign n332_o = n331_o ? 1'b1 : 1'b0;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:94:49  */
    assign n334_o = ~count0_d1;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:94:35  */
    assign n335_o = n334_o ? level1_d1 : n338_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:94:68  */
    assign n336_o = level1_d1[4:0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:94:81  */
    assign n338_o = {n336_o, 1'b0};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:97:21  */
    assign n339_o = {count2, count1};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:97:30  */
    assign n340_o = {n339_o, count0};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:80:10  */
    always @(posedge clk)
        n341_q <= level3;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:80:10  */
    always @(posedge clk)
        n342_q <= level1;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:80:10  */
    always @(posedge clk)
        n343_q <= count0;
endmodule

module intdualsub_7_f300_uid4
    (input wire clk,
        input wire [6:0] x,
        input wire [6:0] y,
       output wire [6:0] xmy,
       output wire [6:0] ymx);
    wire[6:0] temprxmy;
    wire[6:0] temprymx;
    wire[6:0] n287_o;
    wire[6:0] n288_o;
    wire[6:0] n291_o;
    wire[6:0] n292_o;
    wire[6:0] n293_o;
    wire[6:0] n296_o;
    assign xmy = temprxmy;
    assign ymx = temprymx;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:31:8  */
    assign temprxmy = n291_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:32:8  */
    assign temprymx = n296_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:34:21  */
    assign n287_o = ~y;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:34:18  */
    assign n288_o = x+n287_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:34:28  */
    assign n291_o = n288_o+7'b0000001;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:35:21  */
    assign n292_o = ~x;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:35:18  */
    assign n293_o = y+n292_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:35:28  */
    assign n296_o = n293_o+7'b0000001;
endmodule

module fadd#(parameter ID=1)
    (input wire clk,
        input wire [9:0] X,
        input wire [9:0] Y,
       output wire [9:0] R);
    wire[9:0] inx;
    wire[9:0] iny;
    wire exceptionxsuperiory;
    wire exceptionxequaly;
    wire[3:0] signedexponentx;
    wire[3:0] signedexponenty;
    wire[3:0] exponentdifferencexy;
    wire[2:0] exponentdifferenceyx;
    wire swap;
    wire[9:0] newx;
    wire[9:0] newx_d1;
    wire[9:0] newy;
    wire[2:0] exponentdifference;
    wire[2:0] shiftval;
    wire effsub;
    wire effsub_d1;
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
    wire[4:0] exponentresultclose;
    wire[4:0] exponentresultclose_d1;
    wire[8:0] resultbeforeroundclose;
    wire roundclose;
    wire resultcloseiszero;
    wire[4:0] fracnewy;
    wire[6:0] shiftedfracy;
    wire sticky;
    wire sticky_d1;
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
    wire[4:0] exponentupdate;
    wire[4:0] exponentresultfar0;
    wire[4:0] exponentresultfar0_d1;
    wire[4:0] exponentresultfar0_d2;
    wire[4:0] exponentresultfar1;
    wire[8:0] resultbeforeroundfar;
    wire roundfar;
    wire[8:0] resultbeforeround;
    wire round;
    wire zerofromclose;
    wire zerofromclose_d1;
    wire[8:0] resultrounded;
    wire synceffsub;
    wire synceffsub_d1;
    wire synceffsub_d2;
    wire[9:0] syncx;
    wire[9:0] syncx_d1;
    wire[9:0] syncx_d2;
    wire syncsigny;
    wire syncsigny_d1;
    wire syncsigny_d2;
    wire syncressign;
    wire syncressign_d1;
    wire syncressign_d2;
    wire[1:0] underflowoverflow;
    wire[9:0] resultnoexn;
    wire[3:0] syncexnxy;
    wire[3:0] syncexnxy_d1;
    wire[3:0] syncexnxy_d2;
    wire[1:0] exnr;
    wire sgnr;
    wire[6:0] expsigr;
    wire[1:0] n25_o;
    wire[1:0] n26_o;
    wire n27_o;
    wire n28_o;
    wire[1:0] n31_o;
    wire[1:0] n32_o;
    wire n33_o;
    wire n34_o;
    wire[2:0] n36_o;
    wire[3:0] n38_o;
    wire[2:0] n39_o;
    wire[3:0] n41_o;
    wire[3:0] n42_o;
    wire[2:0] n43_o;
    wire[2:0] n44_o;
    wire[2:0] n45_o;
    wire n46_o;
    wire n47_o;
    wire n48_o;
    wire n49_o;
    wire[9:0] n50_o;
    wire[9:0] n51_o;
    wire[2:0] n52_o;
    wire[2:0] n53_o;
    wire n55_o;
    wire n56_o;
    wire n57_o;
    wire[1:0] n58_o;
    wire n60_o;
    wire n61_o;
    wire[1:0] n63_o;
    wire[1:0] n64_o;
    wire[3:0] n65_o;
    wire n66_o;
    wire[3:0] n67_o;
    wire[5:0] n69_o;
    wire[6:0] n71_o;
    wire n72_o;
    wire[3:0] n73_o;
    wire[5:0] n75_o;
    wire[6:0] n77_o;
    wire n79_o;
    wire[3:0] n80_o;
    wire[6:0] n82_o;
    reg[6:0] n83_o;
    wire[6:0] fpadd_3_4_f300_uid2_dualsubclose_n84;
    wire[6:0] fpadd_3_4_f300_uid2_dualsubclose_n85;
    wire[6:0] fpadd_3_4_f300_uid2_dualsubclose_xmy;
    wire[6:0] fpadd_3_4_f300_uid2_dualsubclose_ymx;
    wire n90_o;
    wire[5:0] n91_o;
    wire n92_o;
    wire[5:0] n93_o;
    wire[5:0] n94_o;
    wire n97_o;
    wire n98_o;
    wire n99_o;
    wire n100_o;
    wire n101_o;
    wire n102_o;
    wire[2:0] norm_n103;
    wire[5:0] norm_n104;
    wire[2:0] norm_count;
    wire[5:0] norm_r;
    wire n109_o;
    wire n110_o;
    wire n111_o;
    wire n114_o;
    wire n115_o;
    wire[2:0] n117_o;
    wire[4:0] n119_o;
    wire[4:0] n121_o;
    wire[4:0] n122_o;
    wire[3:0] n123_o;
    wire[8:0] n124_o;
    wire[3:0] n125_o;
    wire[4:0] n127_o;
    wire[6:0] rightshiftercomponent_n128;
    wire rightshiftercomponent_n129;
    wire[6:0] rightshiftercomponent_r;
    wire rightshiftercomponent_sticky;
    wire[7:0] n135_o;
    wire[3:0] n136_o;
    wire[3:0] n137_o;
    wire[7:0] n138_o;
    wire[7:0] n139_o;
    wire[3:0] n140_o;
    wire[5:0] n142_o;
    wire[7:0] n144_o;
    wire n145_o;
    wire n146_o;
    wire[7:0] fpadd_3_4_f300_uid2_fracaddfar_n147;
    wire[7:0] fpadd_3_4_f300_uid2_fracaddfar_r;
    wire[1:0] n150_o;
    wire[3:0] n151_o;
    wire n153_o;
    wire[3:0] n154_o;
    wire[3:0] n155_o;
    wire n157_o;
    wire[3:0] n158_o;
    wire[3:0] n159_o;
    wire n160_o;
    wire n162_o;
    wire n163_o;
    wire n164_o;
    wire n166_o;
    wire n167_o;
    wire n168_o;
    wire n170_o;
    wire n171_o;
    wire n172_o;
    wire n173_o;
    wire n175_o;
    wire n176_o;
    wire n177_o;
    wire n178_o;
    wire n179_o;
    wire n180_o;
    wire n181_o;
    wire n182_o;
    wire n183_o;
    wire n186_o;
    wire[1:0] n187_o;
    wire n190_o;
    wire[1:0] n191_o;
    wire n193_o;
    wire n194_o;
    wire n195_o;
    wire n196_o;
    wire[3:0] n197_o;
    wire n198_o;
    wire[4:0] n199_o;
    wire[2:0] n200_o;
    wire[4:0] n202_o;
    wire[4:0] n203_o;
    wire[8:0] n204_o;
    wire n206_o;
    reg[8:0] n207_o;
    wire n209_o;
    reg n210_o;
    wire n211_o;
    localparam [8:0] n212_o = 9'b000000000;
    wire[8:0] fpadd_3_4_f300_uid2_finalroundadd_n213;
    wire[8:0] fpadd_3_4_f300_uid2_finalroundadd_r;
    wire[1:0] n216_o;
    wire n217_o;
    wire[1:0] n219_o;
    wire n221_o;
    wire n224_o;
    wire n226_o;
    wire n227_o;
    wire n228_o;
    wire[1:0] n230_o;
    wire[1:0] n231_o;
    reg[1:0] n232_o;
    wire[6:0] n233_o;
    wire[7:0] n234_o;
    wire[1:0] n235_o;
    wire n237_o;
    wire[1:0] n239_o;
    wire n241_o;
    wire n244_o;
    wire[1:0] n245_o;
    wire[2:0] n246_o;
    reg[1:0] n247_o;
    wire n248_o;
    wire n250_o;
    wire n251_o;
    wire n252_o;
    wire n254_o;
    wire n255_o;
    wire[1:0] n256_o;
    reg n257_o;
    wire[6:0] n258_o;
    wire n260_o;
    wire[6:0] n261_o;
    reg[6:0] n262_o;
    wire[2:0] n263_o;
    wire[9:0] n264_o;
    reg[9:0] n265_q;
    reg n266_q;
    reg n267_q;
    reg n268_q;
    reg[4:0] n269_q;
    reg n270_q;
    reg[4:0] n271_q;
    reg[4:0] n272_q;
    reg n273_q;
    reg n274_q;
    reg n275_q;
    reg[9:0] n276_q;
    reg[9:0] n277_q;
    reg n278_q;
    reg n279_q;
    reg n280_q;
    reg n281_q;
    wire[9:0] n282_o;
    reg[3:0] n283_q;
    reg[3:0] n284_q;
    assign R = n264_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:330:8  */
    assign inx = X; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:331:8  */
    assign iny = Y; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:332:8  */
    assign exceptionxsuperiory = n28_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:333:8  */
    assign exceptionxequaly = n34_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:334:8  */
    assign signedexponentx = n38_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:335:8  */
    assign signedexponenty = n41_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:336:8  */
    assign exponentdifferencexy = n42_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:337:8  */
    assign exponentdifferenceyx = n45_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:338:8  */
    assign swap = n49_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:339:8  */
    assign newx = n50_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:339:14  */
    assign newx_d1 = n265_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:340:8  */
    assign newy = n51_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:341:8  */
    assign exponentdifference = n52_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:343:8  */
    assign shiftval = exponentdifference; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:344:8  */
    assign effsub = n57_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:344:16  */
    assign effsub_d1 = n266_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:345:8  */
    assign selectclosepath = n61_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:345:25  */
    assign selectclosepath_d1 = n267_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:345:45  */
    assign selectclosepath_d2 = n268_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:346:8  */
    assign sdexnxy = n65_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:347:8  */
    assign pipesigny = n66_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:348:8  */
    assign fracxclose1 = n71_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:349:8  */
    assign fracyclose1 = n83_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:350:8  */
    assign fracrclosexmy = fpadd_3_4_f300_uid2_dualsubclose_n84; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:351:8  */
    assign fracrcloseymx = fpadd_3_4_f300_uid2_dualsubclose_n85; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:352:8  */
    assign fracsignclose = n90_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:353:8  */
    assign fracrclose1 = n93_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:354:8  */
    assign ressign = n99_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:355:8  */
    assign nzerosnew = norm_n103; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:356:8  */
    assign shiftedfrac = norm_n104; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:357:8  */
    assign roundclose0 = n111_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:358:8  */
    assign resultcloseiszero0 = n115_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:359:8  */
    assign exponentresultclose = n122_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:466:52  */
    assign exponentresultclose_d1 = n269_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:360:8  */
    assign resultbeforeroundclose = n124_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:361:8  */
    assign roundclose = roundclose0; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:362:8  */
    assign resultcloseiszero = resultcloseiszero0; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:363:8  */
    assign fracnewy = n127_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:364:8  */
    assign shiftedfracy = rightshiftercomponent_n128; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:365:8  */
    assign sticky = rightshiftercomponent_n129; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:365:16  */
    assign sticky_d1 = n270_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:366:8  */
    assign fracyfar = n135_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:367:8  */
    assign effsubvector = n138_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:368:8  */
    assign fracyfarxorop = n139_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:369:8  */
    assign fracxfar = n144_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:370:8  */
    assign cinaddfar = n146_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:371:8  */
    assign fracresultfar0 = fpadd_3_4_f300_uid2_fracaddfar_n147; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:372:8  */
    assign fracresultfarnormstage = fracresultfar0; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:373:8  */
    assign fracleadingbits = n150_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:374:8  */
    assign fracresultfar1 = n154_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:375:8  */
    assign fracresultroundbit = n163_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:376:8  */
    assign fracresultstickybit = n171_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:377:8  */
    assign roundfar1 = n183_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:378:8  */
    assign expoperationsel = n187_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:379:8  */
    assign exponentupdate = n199_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:380:8  */
    assign exponentresultfar0 = n202_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:380:28  */
    assign exponentresultfar0_d1 = n271_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:380:51  */
    assign exponentresultfar0_d2 = n272_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:381:8  */
    assign exponentresultfar1 = n203_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:382:8  */
    assign resultbeforeroundfar = n204_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:383:8  */
    assign roundfar = roundfar1; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:384:8  */
    assign resultbeforeround = n207_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:385:8  */
    assign round = n210_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:386:8  */
    assign zerofromclose = n211_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:386:23  */
    assign zerofromclose_d1 = n273_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:387:8  */
    assign resultrounded = fpadd_3_4_f300_uid2_finalroundadd_n213; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:388:8  */
    assign synceffsub = effsub; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:388:20  */
    assign synceffsub_d1 = n274_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:388:35  */
    assign synceffsub_d2 = n275_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:389:8  */
    assign syncx = newx; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:389:15  */
    assign syncx_d1 = n276_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:389:25  */
    assign syncx_d2 = n277_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:390:8  */
    assign syncsigny = pipesigny; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:390:19  */
    assign syncsigny_d1 = n278_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:390:33  */
    assign syncsigny_d2 = n279_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:391:8  */
    assign syncressign = ressign; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:391:21  */
    assign syncressign_d1 = n280_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:391:37  */
    assign syncressign_d2 = n281_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:392:8  */
    assign underflowoverflow = n216_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:393:8  */
    assign resultnoexn = n282_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:394:8  */
    assign syncexnxy = sdexnxy; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:394:19  */
    assign syncexnxy_d1 = n283_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:394:33  */
    assign syncexnxy_d2 = n284_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:395:8  */
    assign exnr = n247_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:396:8  */
    assign sgnr = n257_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:397:8  */
    assign expsigr = n262_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:426:39  */
    assign n25_o = inx[9:8];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:426:58  */
    assign n26_o = iny[9:8];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:426:52  */
    assign n27_o = $unsigned(n25_o) >= $unsigned(n26_o);
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:426:31  */
    assign n28_o = n27_o ? 1'b1 : 1'b0;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:427:36  */
    assign n31_o = inx[9:8];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:427:54  */
    assign n32_o = iny[9:8];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:427:49  */
    assign n33_o = n31_o == n32_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:427:28  */
    assign n34_o = n33_o ? 1'b1 : 1'b0;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:428:32  */
    assign n36_o = inx[6:4];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:428:27  */
    assign n38_o = {1'b0, n36_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:429:32  */
    assign n39_o = iny[6:4];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:429:27  */
    assign n41_o = {1'b0, n39_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:430:44  */
    assign n42_o = signedexponentx-signedexponenty;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:431:43  */
    assign n43_o = signedexponenty[2:0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:431:73  */
    assign n44_o = signedexponentx[2:0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:431:56  */
    assign n45_o = n43_o-n44_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:432:54  */
    assign n46_o = exponentdifferencexy[3];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:432:30  */
    assign n47_o = exceptionxequaly & n46_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:432:63  */
    assign n48_o = ~exceptionxsuperiory;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:432:59  */
    assign n49_o = n47_o | n48_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:433:16  */
    assign n50_o = swap ? iny : inx;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:434:16  */
    assign n51_o = swap ? inx : iny;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:435:47  */
    assign n52_o = swap ? exponentdifferenceyx : n53_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:435:88  */
    assign n53_o = exponentdifferencexy[2:0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:438:18  */
    assign n55_o = newx[7];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:438:30  */
    assign n56_o = newy[7];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:438:22  */
    assign n57_o = n55_o ^ n56_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:439:53  */
    assign n58_o = exponentdifference[2:1];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:439:66  */
    assign n60_o = n58_o == 2'b00;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:439:30  */
    assign n61_o = n60_o ? effsub : 1'b0;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:440:19  */
    assign n63_o = newx[9:8];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:440:38  */
    assign n64_o = newy[9:8];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:440:32  */
    assign n65_o = {n63_o, n64_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:441:21  */
    assign n66_o = newy[7];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:444:30  */
    assign n67_o = newx[3:0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:444:24  */
    assign n69_o = {2'b01, n67_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:444:43  */
    assign n71_o = {n69_o, 1'b0};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:445:27  */
    assign n72_o = exponentdifference[0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:446:31  */
    assign n73_o = newy[3:0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:446:25  */
    assign n75_o = {2'b01, n73_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:446:44  */
    assign n77_o = {n75_o, 1'b0};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:446:50  */
    assign n79_o = n72_o == 1'b0;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:447:31  */
    assign n80_o = newy[3:0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:447:25  */
    assign n82_o = {3'b001, n80_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:445:4  */
    always @*
        case (n79_o)
            1'b1: n83_o = n77_o;
            default: n83_o = n82_o;
        endcase
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:452:25  */
    assign fpadd_3_4_f300_uid2_dualsubclose_n84 = fpadd_3_4_f300_uid2_dualsubclose_xmy; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:453:25  */
    assign fpadd_3_4_f300_uid2_dualsubclose_n85 = fpadd_3_4_f300_uid2_dualsubclose_ymx; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:448:4  */
    intdualsub_7_f300_uid4 fpadd_3_4_f300_uid2_dualsubclose(
        .clk(clk),
        .x(fracxclose1),
        .y(fracyclose1),
        .xmy(fpadd_3_4_f300_uid2_dualsubclose_xmy),
        .ymx(fpadd_3_4_f300_uid2_dualsubclose_ymx));
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:454:34  */
    assign n90_o = fracrclosexmy[6];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:455:32  */
    assign n91_o = fracrclosexmy[5:0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:455:63  */
    assign n92_o = ~fracsignclose;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:455:45  */
    assign n93_o = n92_o ? n91_o : n94_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:455:86  */
    assign n94_o = fracrcloseymx[5:0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:456:60  */
    assign n97_o = fracrclose1 == 6'b000000;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:456:44  */
    assign n98_o = selectclosepath & n97_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:456:19  */
    assign n99_o = n98_o ? 1'b0 : n102_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:457:18  */
    assign n100_o = newx[7];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:457:43  */
    assign n101_o = selectclosepath & fracsignclose;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:457:22  */
    assign n102_o = n100_o ^ n101_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:461:27  */
    assign norm_n103 = norm_count; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:462:23  */
    assign norm_n104 = norm_r; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:458:4  */
    normalizer_z_6_6_6_f300_uid6 norm(
        .clk(clk),
        .x(fracrclose1),
        .count(norm_count),
        .r(norm_r));
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:463:30  */
    assign n109_o = shiftedfrac[0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:463:49  */
    assign n110_o = shiftedfrac[1];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:463:34  */
    assign n111_o = n109_o & n110_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:464:45  */
    assign n114_o = nzerosnew == 3'b111;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:464:30  */
    assign n115_o = n114_o ? 1'b1 : 1'b0;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:465:42  */
    assign n117_o = newx_d1[6:4];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:465:33  */
    assign n119_o = {2'b00, n117_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:465:86  */
    assign n121_o = {2'b00, nzerosnew};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:465:56  */
    assign n122_o = n119_o-n121_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:466:78  */
    assign n123_o = shiftedfrac[4:1];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:466:65  */
    assign n124_o = {exponentresultclose_d1, n123_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:471:26  */
    assign n125_o = newy[3:0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:471:20  */
    assign n127_o = {1'b1, n125_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:476:23  */
    assign rightshiftercomponent_n128 = rightshiftercomponent_r; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:477:28  */
    assign rightshiftercomponent_n129 = rightshiftercomponent_sticky; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:472:4  */
    rightshiftersticky5_by_max_7_f300_uid8 rightshiftercomponent(
        .clk(clk),
        .x(fracnewy),
        .s(shiftval),
        .r(rightshiftercomponent_r),
        .sticky(rightshiftercomponent_sticky));
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:478:20  */
    assign n135_o = {1'b0, shiftedfracy};
    assign n136_o = {effsub, effsub, effsub, effsub};
    assign n137_o = {effsub, effsub, effsub, effsub};
    assign n138_o = {n136_o, n137_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:480:30  */
    assign n139_o = fracyfar ^ effsubvector;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:481:28  */
    assign n140_o = newx[3:0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:481:21  */
    assign n142_o = {2'b01, n140_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:481:42  */
    assign n144_o = {n142_o, 2'b00};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:482:31  */
    assign n145_o = ~sticky;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:482:27  */
    assign n146_o = effsub_d1 & n145_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:488:23  */
    assign fpadd_3_4_f300_uid2_fracaddfar_n147 = fpadd_3_4_f300_uid2_fracaddfar_r; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:483:4  */
    intadder_8_f300_uid10 fpadd_3_4_f300_uid2_fracaddfar(
        .clk(clk),
        .x(fracxfar),
        .y(fracyfarxorop),
        .cin(cinaddfar),
        .r(fpadd_3_4_f300_uid2_fracaddfar_r));
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:491:45  */
    assign n150_o = fracresultfarnormstage[7:6];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:493:34  */
    assign n151_o = fracresultfarnormstage[4:1];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:493:69  */
    assign n153_o = fracleadingbits == 2'b00;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:493:48  */
    assign n154_o = n153_o ? n151_o : n158_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:494:34  */
    assign n155_o = fracresultfarnormstage[5:2];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:494:69  */
    assign n157_o = fracleadingbits == 2'b01;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:494:7  */
    assign n158_o = n157_o ? n155_o : n159_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:495:34  */
    assign n159_o = fracresultfarnormstage[6:3];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:497:34  */
    assign n160_o = fracresultfarnormstage[0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:497:63  */
    assign n162_o = fracleadingbits == 2'b00;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:497:42  */
    assign n163_o = n162_o ? n160_o : n167_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:498:34  */
    assign n164_o = fracresultfarnormstage[1];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:498:62  */
    assign n166_o = fracleadingbits == 2'b01;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:498:7  */
    assign n167_o = n166_o ? n164_o : n168_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:499:34  */
    assign n168_o = fracresultfarnormstage[2];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:501:47  */
    assign n170_o = fracleadingbits == 2'b00;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:501:26  */
    assign n171_o = n170_o ? sticky_d1 : n176_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:502:34  */
    assign n172_o = fracresultfarnormstage[0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:502:38  */
    assign n173_o = n172_o | sticky_d1;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:502:75  */
    assign n175_o = fracleadingbits == 2'b01;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:502:7  */
    assign n176_o = n175_o ? n173_o : n180_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:503:34  */
    assign n177_o = fracresultfarnormstage[1];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:503:63  */
    assign n178_o = fracresultfarnormstage[0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:503:38  */
    assign n179_o = n177_o | n178_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:503:67  */
    assign n180_o = n179_o | sticky_d1;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:504:78  */
    assign n181_o = fracresultfar1[0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:504:61  */
    assign n182_o = fracresultstickybit | n181_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:504:36  */
    assign n183_o = fracresultroundbit & n182_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:505:49  */
    assign n186_o = fracleadingbits == 2'b00;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:505:28  */
    assign n187_o = n186_o ? 2'b11 : n191_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:506:49  */
    assign n190_o = fracleadingbits == 2'b01;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:506:16  */
    assign n191_o = n190_o ? 2'b00 : 2'b01;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:508:52  */
    assign n193_o = expoperationsel[1];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:508:52  */
    assign n194_o = expoperationsel[1];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:508:52  */
    assign n195_o = expoperationsel[1];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:508:52  */
    assign n196_o = expoperationsel[1];
    assign n197_o = {n196_o, n195_o, n194_o, n193_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:508:74  */
    assign n198_o = expoperationsel[0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:508:57  */
    assign n199_o = {n197_o, n198_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:509:36  */
    assign n200_o = newx[6:4];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:509:29  */
    assign n202_o = {2'b00, n200_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:510:48  */
    assign n203_o = exponentresultfar0_d2+exponentupdate;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:511:47  */
    assign n204_o = {exponentresultfar1, fracresultfar1};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:516:48  */
    assign n206_o = selectclosepath_d2 == 1'b1;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:515:4  */
    always @*
        case (n206_o)
            1'b1: n207_o = resultbeforeroundclose;
            default: n207_o = resultbeforeroundfar;
        endcase
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:519:24  */
    assign n209_o = selectclosepath_d2 == 1'b1;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:518:4  */
    always @*
        case (n209_o)
            1'b1: n210_o = roundclose;
            default: n210_o = roundfar;
        endcase
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:521:40  */
    assign n211_o = selectclosepath_d1 & resultcloseiszero;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:529:23  */
    assign fpadd_3_4_f300_uid2_finalroundadd_n213 = fpadd_3_4_f300_uid2_finalroundadd_r; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:524:4  */
    intadder_9_f300_uid133 fpadd_3_4_f300_uid2_finalroundadd(
        .clk(clk),
        .x(resultbeforeround),
        .y(n212_o),
        .cin(round),
        .r(fpadd_3_4_f300_uid2_finalroundadd_r));
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:534:38  */
    assign n216_o = resultrounded[8:7];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:536:34  */
    assign n217_o = ~zerofromclose_d1;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:536:56  */
    assign n219_o = {n217_o, 1'b0};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:536:62  */
    assign n221_o = underflowoverflow == 2'b01;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:537:39  */
    assign n224_o = underflowoverflow == 2'b10;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:537:49  */
    assign n226_o = underflowoverflow == 2'b11;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:537:49  */
    assign n227_o = n224_o | n226_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:538:41  */
    assign n228_o = ~zerofromclose_d1;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:538:38  */
    assign n230_o = {1'b0, n228_o};
    assign n231_o = {n227_o, n221_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:535:4  */
    always @*
        case (n231_o)
            2'b10: n232_o = 2'b00;
            2'b01: n232_o = n219_o;
            default: n232_o = n230_o;
        endcase
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:539:61  */
    assign n233_o = resultrounded[6:0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:539:46  */
    assign n234_o = {syncressign_d2, n233_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:543:26  */
    assign n235_o = resultnoexn[9:8];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:543:39  */
    assign n237_o = syncexnxy_d2 == 4'b0101;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:544:19  */
    assign n239_o = {1'b1, synceffsub_d2};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:544:44  */
    assign n241_o = syncexnxy_d2 == 4'b1010;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:545:41  */
    assign n244_o = syncexnxy_d2 == 4'b1110;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:546:27  */
    assign n245_o = syncexnxy_d2[3:2];
    assign n246_o = {n244_o, n241_o, n237_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:542:4  */
    always @*
        case (n246_o)
            3'b100: n247_o = 2'b11;
            3'b010: n247_o = n239_o;
            3'b001: n247_o = n235_o;
            default: n247_o = n245_o;
        endcase
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:549:26  */
    assign n248_o = resultnoexn[7];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:549:38  */
    assign n250_o = syncexnxy_d2 == 4'b0101;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:550:23  */
    assign n251_o = syncx_d2[7];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:550:27  */
    assign n252_o = n251_o & syncsigny_d2;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:550:44  */
    assign n254_o = syncexnxy_d2 == 4'b0000;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:551:23  */
    assign n255_o = syncx_d2[7];
    assign n256_o = {n254_o, n250_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:548:4  */
    always @*
        case (n256_o)
            2'b10: n257_o = n252_o;
            2'b01: n257_o = n248_o;
            default: n257_o = n255_o;
        endcase
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:554:29  */
    assign n258_o = resultnoexn[6:0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:554:44  */
    assign n260_o = syncexnxy_d2 == 4'b0101;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:555:26  */
    assign n261_o = syncx_d2[6:0];
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:553:4  */
    always @*
        case (n260_o)
            1'b1: n262_o = n258_o;
            default: n262_o = n261_o;
        endcase
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:556:14  */
    assign n263_o = {exnr, sgnr};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:556:21  */
    assign n264_o = {n263_o, expsigr};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:401:10  */
    always @(posedge clk)
        n265_q <= newx;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:401:10  */
    always @(posedge clk)
        n266_q <= effsub;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:401:10  */
    always @(posedge clk)
        n267_q <= selectclosepath;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:401:10  */
    always @(posedge clk)
        n268_q <= selectclosepath_d1;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:401:10  */
    always @(posedge clk)
        n269_q <= exponentresultclose;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:401:10  */
    always @(posedge clk)
        n270_q <= sticky;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:401:10  */
    always @(posedge clk)
        n271_q <= exponentresultfar0;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:401:10  */
    always @(posedge clk)
        n272_q <= exponentresultfar0_d1;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:401:10  */
    always @(posedge clk)
        n273_q <= zerofromclose;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:401:10  */
    always @(posedge clk)
        n274_q <= synceffsub;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:401:10  */
    always @(posedge clk)
        n275_q <= synceffsub_d1;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:401:10  */
    always @(posedge clk)
        n276_q <= syncx;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:401:10  */
    always @(posedge clk)
        n277_q <= syncx_d1;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:401:10  */
    always @(posedge clk)
        n278_q <= syncsigny;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:401:10  */
    always @(posedge clk)
        n279_q <= syncsigny_d1;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:401:10  */
    always @(posedge clk)
        n280_q <= syncressign;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:401:10  */
    always @(posedge clk)
        n281_q <= syncressign_d1;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:401:10  */
    assign n282_o = {n232_o, n234_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:401:10  */
    always @(posedge clk)
        n283_q <= syncexnxy;
    /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fadd_3_4.vhdl:401:10  */
    always @(posedge clk)
        n284_q <= syncexnxy_d1;
endmodule

