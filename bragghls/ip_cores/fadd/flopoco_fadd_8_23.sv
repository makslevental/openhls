module intadder_33_f300_uid13
    (input wire clk,
        input wire[32:0] x,
        input wire[32:0] y,
        input wire cin,
        output wire[32:0] r);
    wire[32:0] rtmp;
    wire[32:0] y_d1;
    wire[32:0] y_d2;
    wire[32:0] y_d3;
    wire[32:0] n556_o;
    wire[32:0] n557_o;
    wire[32:0] n558_o;
    reg[32:0] n559_q;
    reg[32:0] n560_q;
    reg[32:0] n561_q;
    assign r = rtmp;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:276:8  */
    assign rtmp = n558_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:277:8  */
    assign y_d1 = n559_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:277:14  */
    assign y_d2 = n560_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:277:20  */
    assign y_d3 = n561_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:287:14  */
    assign n556_o = x+y_d3;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:287:21  */
    assign n557_o = {32'b0, cin};  //  uext
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:287:21  */
    assign n558_o = n556_o+n557_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:281:10  */
    always @(posedge clk)
        n559_q <= y;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:281:10  */
    always @(posedge clk)
        n560_q <= y_d1;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:281:10  */
    always @(posedge clk)
        n561_q <= y_d2;
endmodule

module intadder_27_f300_uid10
    (input wire clk,
        input wire[26:0] x,
        input wire[26:0] y,
        input wire cin,
        output wire[26:0] r);
    wire[26:0] rtmp;
    wire[26:0] x_d1;
    wire[26:0] x_d2;
    wire[26:0] x_d3;
    wire[26:0] y_d1;
    wire[26:0] y_d2;
    wire[26:0] y_d3;
    wire[26:0] n539_o;
    wire[26:0] n540_o;
    wire[26:0] n541_o;
    reg[26:0] n542_q;
    reg[26:0] n543_q;
    reg[26:0] n544_q;
    reg[26:0] n545_q;
    reg[26:0] n546_q;
    reg[26:0] n547_q;
    assign r = rtmp;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:227:8  */
    assign rtmp = n541_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:228:8  */
    assign x_d1 = n542_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:228:14  */
    assign x_d2 = n543_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:228:20  */
    assign x_d3 = n544_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:229:8  */
    assign y_d1 = n545_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:229:14  */
    assign y_d2 = n546_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:229:20  */
    assign y_d3 = n547_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:242:17  */
    assign n539_o = x_d3+y_d3;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:242:24  */
    assign n540_o = {26'b0, cin};  //  uext
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:242:24  */
    assign n541_o = n539_o+n540_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:233:10  */
    always @(posedge clk)
        n542_q <= x;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:233:10  */
    always @(posedge clk)
        n543_q <= x_d1;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:233:10  */
    always @(posedge clk)
        n544_q <= x_d2;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:233:10  */
    always @(posedge clk)
        n545_q <= y;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:233:10  */
    always @(posedge clk)
        n546_q <= y_d1;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:233:10  */
    always @(posedge clk)
        n547_q <= y_d2;
endmodule

module rightshiftersticky24_by_max_26_f300_uid8
    (input wire clk,
        input wire[23:0] x,
        input wire[4:0] s,
        output wire[25:0] r,
        output wire sticky);
    wire[4:0] ps;
    wire[4:0] ps_d1;
    wire[4:0] ps_d2;
    wire[4:0] ps_d3;
    wire[25:0] xpadded;
    wire[25:0] level5;
    wire[25:0] level5_d1;
    wire stk4;
    wire[25:0] level4;
    wire[25:0] level4_d1;
    wire stk3;
    wire stk3_d1;
    wire[25:0] level3;
    wire[25:0] level3_d1;
    wire[25:0] level3_d2;
    wire stk2;
    wire[25:0] level2;
    wire[25:0] level2_d1;
    wire[25:0] level2_d2;
    wire stk1;
    wire stk1_d1;
    wire[25:0] level1;
    wire[25:0] level1_d1;
    wire[25:0] level1_d2;
    wire[25:0] level1_d3;
    wire stk0;
    wire[25:0] level0;
    wire[25:0] n439_o;
    wire[15:0] n441_o;
    wire n443_o;
    wire n444_o;
    wire n445_o;
    wire n446_o;
    wire n448_o;
    wire n449_o;
    wire[25:0] n450_o;
    wire[9:0] n451_o;
    wire[25:0] n453_o;
    wire[7:0] n455_o;
    wire n457_o;
    wire n458_o;
    wire n459_o;
    wire n460_o;
    wire n461_o;
    wire n463_o;
    wire n464_o;
    wire[25:0] n465_o;
    wire[17:0] n466_o;
    wire[25:0] n468_o;
    wire[3:0] n470_o;
    wire n472_o;
    wire n473_o;
    wire n474_o;
    wire n475_o;
    wire n476_o;
    wire n478_o;
    wire n479_o;
    wire[25:0] n480_o;
    wire[21:0] n481_o;
    wire[25:0] n483_o;
    wire[1:0] n485_o;
    wire n487_o;
    wire n488_o;
    wire n489_o;
    wire n490_o;
    wire n491_o;
    wire n493_o;
    wire n494_o;
    wire[25:0] n495_o;
    wire[23:0] n496_o;
    wire[25:0] n498_o;
    wire n500_o;
    wire n502_o;
    wire n503_o;
    wire n504_o;
    wire n505_o;
    wire n506_o;
    wire n508_o;
    wire n509_o;
    wire[25:0] n510_o;
    wire[24:0] n511_o;
    wire[25:0] n513_o;
    reg[4:0] n514_q;
    reg[4:0] n515_q;
    reg[4:0] n516_q;
    reg[25:0] n517_q;
    reg[25:0] n518_q;
    reg n519_q;
    reg[25:0] n520_q;
    reg[25:0] n521_q;
    reg[25:0] n522_q;
    reg[25:0] n523_q;
    reg n524_q;
    reg[25:0] n525_q;
    reg[25:0] n526_q;
    reg[25:0] n527_q;
    assign r = level0;
    assign sticky = stk0;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:147:8  */
    assign ps = s; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:147:12  */
    assign ps_d1 = n514_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:147:19  */
    assign ps_d2 = n515_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:147:26  */
    assign ps_d3 = n516_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:148:8  */
    assign xpadded = n439_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:149:8  */
    assign level5 = xpadded; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:149:16  */
    assign level5_d1 = n517_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:150:8  */
    assign stk4 = n446_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:151:8  */
    assign level4 = n450_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:151:16  */
    assign level4_d1 = n518_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:152:8  */
    assign stk3 = n461_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:152:14  */
    assign stk3_d1 = n519_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:153:8  */
    assign level3 = n465_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:153:16  */
    assign level3_d1 = n520_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:153:27  */
    assign level3_d2 = n521_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:154:8  */
    assign stk2 = n476_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:155:8  */
    assign level2 = n480_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:155:16  */
    assign level2_d1 = n522_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:155:27  */
    assign level2_d2 = n523_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:156:8  */
    assign stk1 = n491_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:156:14  */
    assign stk1_d1 = n524_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:157:8  */
    assign level1 = n495_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:157:16  */
    assign level1_d1 = n525_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:157:27  */
    assign level1_d2 = n526_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:157:38  */
    assign level1_d3 = n527_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:158:8  */
    assign stk0 = n506_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:159:8  */
    assign level0 = n510_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:181:16  */
    assign n439_o = {x, 2'b00};
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:183:31  */
    assign n441_o = level5_d1[15:0];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:183:44  */
    assign n443_o = n441_o != 16'b0000000000000000;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:183:74  */
    assign n444_o = ps_d1[4];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:183:65  */
    assign n445_o = n443_o & n444_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:183:16  */
    assign n446_o = n445_o ? 1'b1 : 1'b0;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:184:30  */
    assign n448_o = ps[4];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:184:33  */
    assign n449_o = ~n448_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:184:22  */
    assign n450_o = n449_o ? level5 : n453_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:184:75  */
    assign n451_o = level5[25:16];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:184:67  */
    assign n453_o = {16'b0000000000000000, n451_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:185:31  */
    assign n455_o = level4_d1[7:0];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:185:43  */
    assign n457_o = n455_o != 8'b00000000;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:185:65  */
    assign n458_o = ps_d1[3];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:185:56  */
    assign n459_o = n457_o & n458_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:185:74  */
    assign n460_o = n459_o | stk4;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:185:16  */
    assign n461_o = n460_o ? 1'b1 : 1'b0;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:186:30  */
    assign n463_o = ps[3];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:186:33  */
    assign n464_o = ~n463_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:186:22  */
    assign n465_o = n464_o ? level4 : n468_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:186:74  */
    assign n466_o = level4[25:8];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:186:66  */
    assign n468_o = {8'b00000000, n466_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:187:31  */
    assign n470_o = level3_d2[3:0];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:187:43  */
    assign n472_o = n470_o != 4'b0000;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:187:61  */
    assign n473_o = ps_d2[2];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:187:52  */
    assign n474_o = n472_o & n473_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:187:70  */
    assign n475_o = n474_o | stk3_d1;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:187:16  */
    assign n476_o = n475_o ? 1'b1 : 1'b0;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:188:30  */
    assign n478_o = ps[2];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:188:33  */
    assign n479_o = ~n478_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:188:22  */
    assign n480_o = n479_o ? level3 : n483_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:188:74  */
    assign n481_o = level3[25:4];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:188:66  */
    assign n483_o = {4'b0000, n481_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:189:31  */
    assign n485_o = level2_d2[1:0];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:189:43  */
    assign n487_o = n485_o != 2'b00;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:189:59  */
    assign n488_o = ps_d2[1];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:189:50  */
    assign n489_o = n487_o & n488_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:189:68  */
    assign n490_o = n489_o | stk2;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:189:16  */
    assign n491_o = n490_o ? 1'b1 : 1'b0;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:190:30  */
    assign n493_o = ps[1];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:190:33  */
    assign n494_o = ~n493_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:190:22  */
    assign n495_o = n494_o ? level2 : n498_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:190:74  */
    assign n496_o = level2[25:2];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:190:66  */
    assign n498_o = {2'b00, n496_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:191:31  */
    assign n500_o = level1_d3[0];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:191:43  */
    assign n502_o = n500_o != 1'b0;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:191:58  */
    assign n503_o = ps_d3[0];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:191:49  */
    assign n504_o = n502_o & n503_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:191:67  */
    assign n505_o = n504_o | stk1_d1;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:191:16  */
    assign n506_o = n505_o ? 1'b1 : 1'b0;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:192:30  */
    assign n508_o = ps[0];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:192:33  */
    assign n509_o = ~n508_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:192:22  */
    assign n510_o = n509_o ? level1 : n513_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:192:74  */
    assign n511_o = level1[25:1];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:192:66  */
    assign n513_o = {1'b0, n511_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:163:10  */
    always @(posedge clk)
        n514_q <= ps;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:163:10  */
    always @(posedge clk)
        n515_q <= ps_d1;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:163:10  */
    always @(posedge clk)
        n516_q <= ps_d2;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:163:10  */
    always @(posedge clk)
        n517_q <= level5;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:163:10  */
    always @(posedge clk)
        n518_q <= level4;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:163:10  */
    always @(posedge clk)
        n519_q <= stk3;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:163:10  */
    always @(posedge clk)
        n520_q <= level3;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:163:10  */
    always @(posedge clk)
        n521_q <= level3_d1;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:163:10  */
    always @(posedge clk)
        n522_q <= level2;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:163:10  */
    always @(posedge clk)
        n523_q <= level2_d1;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:163:10  */
    always @(posedge clk)
        n524_q <= stk1;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:163:10  */
    always @(posedge clk)
        n525_q <= level1;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:163:10  */
    always @(posedge clk)
        n526_q <= level1_d1;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:163:10  */
    always @(posedge clk)
        n527_q <= level1_d2;
endmodule

module normalizer_z_25_25_25_f300_uid6
    (input wire clk,
        input wire[24:0] x,
        output wire[4:0] count,
        output wire[24:0] r);
    wire[24:0] level5;
    wire[24:0] level5_d1;
    wire count4;
    wire count4_d1;
    wire count4_d2;
    wire[24:0] level4;
    wire count3;
    wire count3_d1;
    wire count3_d2;
    wire[24:0] level3;
    wire[24:0] level3_d1;
    wire count2;
    wire count2_d1;
    wire[24:0] level2;
    wire count1;
    wire count1_d1;
    wire[24:0] level1;
    wire[24:0] level1_d1;
    wire count0;
    wire[24:0] level0;
    wire[4:0] scount;
    wire[15:0] n351_o;
    wire n353_o;
    wire n354_o;
    wire n356_o;
    wire[24:0] n357_o;
    wire[8:0] n358_o;
    wire[24:0] n360_o;
    wire[7:0] n362_o;
    wire n364_o;
    wire n365_o;
    wire n367_o;
    wire[24:0] n368_o;
    wire[16:0] n369_o;
    wire[24:0] n371_o;
    wire[3:0] n373_o;
    wire n375_o;
    wire n376_o;
    wire n378_o;
    wire[24:0] n379_o;
    wire[20:0] n380_o;
    wire[24:0] n382_o;
    wire[1:0] n384_o;
    wire n386_o;
    wire n387_o;
    wire n389_o;
    wire[24:0] n390_o;
    wire[22:0] n391_o;
    wire[24:0] n393_o;
    wire n395_o;
    wire n397_o;
    wire n398_o;
    wire n400_o;
    wire[24:0] n401_o;
    wire[23:0] n402_o;
    wire[24:0] n404_o;
    wire[1:0] n405_o;
    wire[2:0] n406_o;
    wire[3:0] n407_o;
    wire[4:0] n408_o;
    reg[24:0] n409_q;
    reg n410_q;
    reg n411_q;
    reg n412_q;
    reg n413_q;
    reg[24:0] n414_q;
    reg n415_q;
    reg n416_q;
    reg[24:0] n417_q;
    assign count = scount;
    assign r = level0;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:69:8  */
    assign level5 = x; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:98:22  */
    assign level5_d1 = n409_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:70:8  */
    assign count4 = n354_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:70:16  */
    assign count4_d1 = n410_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:70:27  */
    assign count4_d2 = n411_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:101:19  */
    assign level4 = n357_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:72:8  */
    assign count3 = n365_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:72:16  */
    assign count3_d1 = n412_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:72:27  */
    assign count3_d2 = n413_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:73:8  */
    assign level3 = n368_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:104:22  */
    assign level3_d1 = n414_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:74:8  */
    assign count2 = n376_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:74:16  */
    assign count2_d1 = n415_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:107:19  */
    assign level2 = n379_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:76:8  */
    assign count1 = n387_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:76:16  */
    assign count1_d1 = n416_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:77:8  */
    assign level1 = n390_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:110:22  */
    assign level1_d1 = n417_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:78:8  */
    assign count0 = n398_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:79:8  */
    assign level0 = n401_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:80:8  */
    assign scount = n408_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:97:31  */
    assign n351_o = level5_d1[24:9];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:97:45  */
    assign n353_o = n351_o == 16'b0000000000000000;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:97:17  */
    assign n354_o = n353_o ? 1'b1 : 1'b0;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:98:47  */
    assign n356_o = ~count4;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:98:36  */
    assign n357_o = n356_o ? level5_d1 : n360_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:98:66  */
    assign n358_o = level5_d1[8:0];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:98:79  */
    assign n360_o = {n358_o, 16'b0000000000000000};
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:100:28  */
    assign n362_o = level4[24:17];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:100:43  */
    assign n364_o = n362_o == 8'b00000000;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:100:17  */
    assign n365_o = n364_o ? 1'b1 : 1'b0;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:101:44  */
    assign n367_o = ~count3;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:101:33  */
    assign n368_o = n367_o ? level4 : n371_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:101:60  */
    assign n369_o = level4[16:0];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:101:74  */
    assign n371_o = {n369_o, 8'b00000000};
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:103:31  */
    assign n373_o = level3_d1[24:21];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:103:46  */
    assign n375_o = n373_o == 4'b0000;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:103:17  */
    assign n376_o = n375_o ? 1'b1 : 1'b0;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:104:47  */
    assign n378_o = ~count2;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:104:36  */
    assign n379_o = n378_o ? level3_d1 : n382_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:104:66  */
    assign n380_o = level3_d1[20:0];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:104:80  */
    assign n382_o = {n380_o, 4'b0000};
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:106:28  */
    assign n384_o = level2[24:23];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:106:43  */
    assign n386_o = n384_o == 2'b00;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:106:17  */
    assign n387_o = n386_o ? 1'b1 : 1'b0;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:107:44  */
    assign n389_o = ~count1;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:107:33  */
    assign n390_o = n389_o ? level2 : n393_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:107:60  */
    assign n391_o = level2[22:0];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:107:74  */
    assign n393_o = {n391_o, 2'b00};
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:109:31  */
    assign n395_o = level1_d1[24];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:109:46  */
    assign n397_o = n395_o == 1'b0;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:109:17  */
    assign n398_o = n397_o ? 1'b1 : 1'b0;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:110:47  */
    assign n400_o = ~count0;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:110:36  */
    assign n401_o = n400_o ? level1_d1 : n404_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:110:66  */
    assign n402_o = level1_d1[23:0];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:110:80  */
    assign n404_o = {n402_o, 1'b0};
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:113:24  */
    assign n405_o = {count4_d2, count3_d2};
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:113:36  */
    assign n406_o = {n405_o, count2_d1};
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:113:48  */
    assign n407_o = {n406_o, count1_d1};
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:113:60  */
    assign n408_o = {n407_o, count0};
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:84:10  */
    always @(posedge clk)
        n409_q <= level5;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:84:10  */
    always @(posedge clk)
        n410_q <= count4;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:84:10  */
    always @(posedge clk)
        n411_q <= count4_d1;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:84:10  */
    always @(posedge clk)
        n412_q <= count3;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:84:10  */
    always @(posedge clk)
        n413_q <= count3_d1;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:84:10  */
    always @(posedge clk)
        n414_q <= level3;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:84:10  */
    always @(posedge clk)
        n415_q <= count2;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:84:10  */
    always @(posedge clk)
        n416_q <= count1;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:84:10  */
    always @(posedge clk)
        n417_q <= level1;
endmodule

module intdualsub_26_f300_uid4
    (input wire clk,
        input wire[25:0] x,
        input wire[25:0] y,
        output wire[25:0] xmy,
        output wire[25:0] ymx);
    wire[25:0] temprxmy;
    wire[25:0] temprymx;
    wire[25:0] n325_o;
    wire[25:0] n326_o;
    wire[25:0] n329_o;
    wire[25:0] n330_o;
    wire[25:0] n331_o;
    wire[25:0] n334_o;
    assign xmy = temprxmy;
    assign ymx = temprymx;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:31:8  */
    assign temprxmy = n329_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:32:8  */
    assign temprymx = n334_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:34:21  */
    assign n325_o = ~y;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:34:18  */
    assign n326_o = x+n325_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:34:28  */
    assign n329_o = n326_o+26'b00000000000000000000000001;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:35:21  */
    assign n330_o = ~x;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:35:18  */
    assign n331_o = y+n330_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:35:28  */
    assign n334_o = n331_o+26'b00000000000000000000000001;
endmodule

module fadd#(parameter ID=1)
    (input wire clk,
        input wire[33:0] X,
        input wire[33:0] Y,
        output wire[33:0] R);
    wire[33:0] inx;
    wire[33:0] iny;
    wire exceptionxsuperiory;
    wire exceptionxequaly;
    wire[8:0] signedexponentx;
    wire[8:0] signedexponenty;
    wire[8:0] exponentdifferencexy;
    wire[7:0] exponentdifferenceyx;
    wire swap;
    wire[33:0] newx;
    wire[33:0] newx_d1;
    wire[33:0] newx_d2;
    wire[33:0] newx_d3;
    wire[33:0] newy;
    wire[7:0] exponentdifference;
    wire shiftedout;
    wire[4:0] shiftval;
    wire effsub;
    wire effsub_d1;
    wire effsub_d2;
    wire effsub_d3;
    wire selectclosepath;
    wire selectclosepath_d1;
    wire selectclosepath_d2;
    wire selectclosepath_d3;
    wire[3:0] sdexnxy;
    wire pipesigny;
    wire[25:0] fracxclose1;
    wire[25:0] fracyclose1;
    wire[25:0] fracrclosexmy;
    wire[25:0] fracrcloseymx;
    wire fracsignclose;
    wire[24:0] fracrclose1;
    wire ressign;
    wire[4:0] nzerosnew;
    wire[24:0] shiftedfrac;
    wire roundclose0;
    wire resultcloseiszero0;
    wire[9:0] exponentresultclose;
    wire[32:0] resultbeforeroundclose;
    wire roundclose;
    wire resultcloseiszero;
    wire[23:0] fracnewy;
    wire[25:0] shiftedfracy;
    wire sticky;
    wire[26:0] fracyfar;
    wire[26:0] effsubvector;
    wire[26:0] fracyfarxorop;
    wire[26:0] fracxfar;
    wire cinaddfar;
    wire[26:0] fracresultfar0;
    wire[26:0] fracresultfarnormstage;
    wire[1:0] fracleadingbits;
    wire[22:0] fracresultfar1;
    wire fracresultroundbit;
    wire fracresultstickybit;
    wire roundfar1;
    wire[1:0] expoperationsel;
    wire[9:0] exponentupdate;
    wire[9:0] exponentresultfar0;
    wire[9:0] exponentresultfar0_d1;
    wire[9:0] exponentresultfar0_d2;
    wire[9:0] exponentresultfar0_d3;
    wire[9:0] exponentresultfar1;
    wire[32:0] resultbeforeroundfar;
    wire roundfar;
    wire[32:0] resultbeforeround;
    wire round;
    wire zerofromclose;
    wire[32:0] resultrounded;
    wire synceffsub;
    wire synceffsub_d1;
    wire synceffsub_d2;
    wire synceffsub_d3;
    wire[33:0] syncx;
    wire[33:0] syncx_d1;
    wire[33:0] syncx_d2;
    wire[33:0] syncx_d3;
    wire syncsigny;
    wire syncsigny_d1;
    wire syncsigny_d2;
    wire syncsigny_d3;
    wire syncressign;
    wire syncressign_d1;
    wire syncressign_d2;
    wire syncressign_d3;
    wire[1:0] underflowoverflow;
    wire[33:0] resultnoexn;
    wire[3:0] syncexnxy;
    wire[3:0] syncexnxy_d1;
    wire[3:0] syncexnxy_d2;
    wire[3:0] syncexnxy_d3;
    wire[1:0] exnr;
    wire sgnr;
    wire[30:0] expsigr;
    wire[1:0] n33_o;
    wire[1:0] n34_o;
    wire n35_o;
    wire n36_o;
    wire[1:0] n39_o;
    wire[1:0] n40_o;
    wire n41_o;
    wire n42_o;
    wire[7:0] n44_o;
    wire[8:0] n46_o;
    wire[7:0] n47_o;
    wire[8:0] n49_o;
    wire[8:0] n50_o;
    wire[7:0] n51_o;
    wire[7:0] n52_o;
    wire[7:0] n53_o;
    wire n54_o;
    wire n55_o;
    wire n56_o;
    wire n57_o;
    wire[33:0] n58_o;
    wire[33:0] n59_o;
    wire[7:0] n60_o;
    wire[7:0] n61_o;
    wire n62_o;
    wire n63_o;
    wire n64_o;
    wire n65_o;
    wire n66_o;
    wire[4:0] n67_o;
    wire n68_o;
    wire[4:0] n69_o;
    wire n71_o;
    wire n72_o;
    wire n73_o;
    wire[6:0] n74_o;
    wire n76_o;
    wire n77_o;
    wire[1:0] n79_o;
    wire[1:0] n80_o;
    wire[3:0] n81_o;
    wire n82_o;
    wire[22:0] n83_o;
    wire[24:0] n85_o;
    wire[25:0] n87_o;
    wire n88_o;
    wire[22:0] n89_o;
    wire[24:0] n91_o;
    wire[25:0] n93_o;
    wire n95_o;
    wire[22:0] n96_o;
    wire[25:0] n98_o;
    reg[25:0] n99_o;
    wire[25:0] fpadd_8_23_f300_uid2_dualsubclose_n100;
    wire[25:0] fpadd_8_23_f300_uid2_dualsubclose_n101;
    wire[25:0] fpadd_8_23_f300_uid2_dualsubclose_xmy;
    wire[25:0] fpadd_8_23_f300_uid2_dualsubclose_ymx;
    wire n106_o;
    wire[24:0] n107_o;
    wire n108_o;
    wire[24:0] n109_o;
    wire[24:0] n110_o;
    wire n113_o;
    wire n114_o;
    wire n115_o;
    wire n116_o;
    wire n117_o;
    wire n118_o;
    wire[4:0] norm_n119;
    wire[24:0] norm_n120;
    wire[4:0] norm_count;
    wire[24:0] norm_r;
    wire n125_o;
    wire n126_o;
    wire n127_o;
    wire n130_o;
    wire n131_o;
    wire[7:0] n133_o;
    wire[9:0] n135_o;
    wire[9:0] n137_o;
    wire[9:0] n138_o;
    wire[22:0] n139_o;
    wire[32:0] n140_o;
    wire[22:0] n141_o;
    wire[23:0] n143_o;
    wire[25:0] rightshiftercomponent_n144;
    wire rightshiftercomponent_n145;
    wire[25:0] rightshiftercomponent_r;
    wire rightshiftercomponent_sticky;
    wire[26:0] n151_o;
    wire[3:0] n152_o;
    wire[3:0] n153_o;
    wire[3:0] n154_o;
    wire[3:0] n155_o;
    wire[3:0] n156_o;
    wire[3:0] n157_o;
    wire[2:0] n158_o;
    wire[15:0] n159_o;
    wire[10:0] n160_o;
    wire[26:0] n161_o;
    wire[26:0] n162_o;
    wire[22:0] n163_o;
    wire[24:0] n165_o;
    wire[26:0] n167_o;
    wire n168_o;
    wire n169_o;
    wire[26:0] fpadd_8_23_f300_uid2_fracaddfar_n170;
    wire[26:0] fpadd_8_23_f300_uid2_fracaddfar_r;
    wire[1:0] n173_o;
    wire[22:0] n174_o;
    wire n176_o;
    wire[22:0] n177_o;
    wire[22:0] n178_o;
    wire n180_o;
    wire[22:0] n181_o;
    wire[22:0] n182_o;
    wire n183_o;
    wire n185_o;
    wire n186_o;
    wire n187_o;
    wire n189_o;
    wire n190_o;
    wire n191_o;
    wire n193_o;
    wire n194_o;
    wire n195_o;
    wire n196_o;
    wire n198_o;
    wire n199_o;
    wire n200_o;
    wire n201_o;
    wire n202_o;
    wire n203_o;
    wire n204_o;
    wire n205_o;
    wire n206_o;
    wire n209_o;
    wire[1:0] n210_o;
    wire n213_o;
    wire[1:0] n214_o;
    wire n216_o;
    wire n217_o;
    wire n218_o;
    wire n219_o;
    wire n220_o;
    wire n221_o;
    wire n222_o;
    wire n223_o;
    wire n224_o;
    wire[3:0] n225_o;
    wire[3:0] n226_o;
    wire[8:0] n227_o;
    wire n228_o;
    wire[9:0] n229_o;
    wire[7:0] n230_o;
    wire[9:0] n232_o;
    wire[9:0] n233_o;
    wire[32:0] n234_o;
    wire n236_o;
    reg[32:0] n237_o;
    wire n239_o;
    reg n240_o;
    wire n241_o;
    localparam [32:0] n242_o = 33'b000000000000000000000000000000000;
    wire[32:0] fpadd_8_23_f300_uid2_finalroundadd_n243;
    wire[32:0] fpadd_8_23_f300_uid2_finalroundadd_r;
    wire[1:0] n246_o;
    wire n247_o;
    wire[1:0] n249_o;
    wire n251_o;
    wire n254_o;
    wire n256_o;
    wire n257_o;
    wire n258_o;
    wire[1:0] n260_o;
    wire[1:0] n261_o;
    reg[1:0] n262_o;
    wire[30:0] n263_o;
    wire[31:0] n264_o;
    wire[1:0] n265_o;
    wire n267_o;
    wire[1:0] n269_o;
    wire n271_o;
    wire n274_o;
    wire[1:0] n275_o;
    wire[2:0] n276_o;
    reg[1:0] n277_o;
    wire n278_o;
    wire n280_o;
    wire n281_o;
    wire n282_o;
    wire n284_o;
    wire n285_o;
    wire[1:0] n286_o;
    reg n287_o;
    wire[30:0] n288_o;
    wire n290_o;
    wire[30:0] n291_o;
    reg[30:0] n292_o;
    wire[2:0] n293_o;
    wire[33:0] n294_o;
    reg[33:0] n295_q;
    reg[33:0] n296_q;
    reg[33:0] n297_q;
    reg n298_q;
    reg n299_q;
    reg n300_q;
    reg n301_q;
    reg n302_q;
    reg n303_q;
    reg[9:0] n304_q;
    reg[9:0] n305_q;
    reg[9:0] n306_q;
    reg n307_q;
    reg n308_q;
    reg n309_q;
    reg[33:0] n310_q;
    reg[33:0] n311_q;
    reg[33:0] n312_q;
    reg n313_q;
    reg n314_q;
    reg n315_q;
    reg n316_q;
    reg n317_q;
    reg n318_q;
    wire[33:0] n319_o;
    reg[3:0] n320_q;
    reg[3:0] n321_q;
    reg[3:0] n322_q;
    assign R = n294_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:360:8  */
    assign inx = X; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:361:8  */
    assign iny = Y; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:362:8  */
    assign exceptionxsuperiory = n36_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:363:8  */
    assign exceptionxequaly = n42_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:364:8  */
    assign signedexponentx = n46_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:365:8  */
    assign signedexponenty = n49_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:366:8  */
    assign exponentdifferencexy = n50_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:367:8  */
    assign exponentdifferenceyx = n53_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:368:8  */
    assign swap = n57_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:369:8  */
    assign newx = n58_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:369:14  */
    assign newx_d1 = n295_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:369:23  */
    assign newx_d2 = n296_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:369:32  */
    assign newx_d3 = n297_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:370:8  */
    assign newy = n59_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:371:8  */
    assign exponentdifference = n60_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:372:8  */
    assign shiftedout = n66_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:373:8  */
    assign shiftval = n69_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:374:8  */
    assign effsub = n73_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:374:16  */
    assign effsub_d1 = n298_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:374:27  */
    assign effsub_d2 = n299_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:374:38  */
    assign effsub_d3 = n300_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:375:8  */
    assign selectclosepath = n77_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:375:25  */
    assign selectclosepath_d1 = n301_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:375:45  */
    assign selectclosepath_d2 = n302_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:375:65  */
    assign selectclosepath_d3 = n303_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:376:8  */
    assign sdexnxy = n81_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:377:8  */
    assign pipesigny = n82_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:378:8  */
    assign fracxclose1 = n87_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:379:8  */
    assign fracyclose1 = n99_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:380:8  */
    assign fracrclosexmy = fpadd_8_23_f300_uid2_dualsubclose_n100; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:381:8  */
    assign fracrcloseymx = fpadd_8_23_f300_uid2_dualsubclose_n101; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:382:8  */
    assign fracsignclose = n106_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:383:8  */
    assign fracrclose1 = n109_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:384:8  */
    assign ressign = n115_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:385:8  */
    assign nzerosnew = norm_n119; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:386:8  */
    assign shiftedfrac = norm_n120; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:387:8  */
    assign roundclose0 = n127_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:388:8  */
    assign resultcloseiszero0 = n131_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:505:49  */
    assign exponentresultclose = n138_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:390:8  */
    assign resultbeforeroundclose = n140_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:391:8  */
    assign roundclose = roundclose0; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:392:8  */
    assign resultcloseiszero = resultcloseiszero0; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:393:8  */
    assign fracnewy = n143_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:394:8  */
    assign shiftedfracy = rightshiftercomponent_n144; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:395:8  */
    assign sticky = rightshiftercomponent_n145; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:396:8  */
    assign fracyfar = n151_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:397:8  */
    assign effsubvector = n161_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:398:8  */
    assign fracyfarxorop = n162_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:399:8  */
    assign fracxfar = n167_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:400:8  */
    assign cinaddfar = n169_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:401:8  */
    assign fracresultfar0 = fpadd_8_23_f300_uid2_fracaddfar_n170; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:402:8  */
    assign fracresultfarnormstage = fracresultfar0; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:403:8  */
    assign fracleadingbits = n173_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:404:8  */
    assign fracresultfar1 = n177_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:405:8  */
    assign fracresultroundbit = n186_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:406:8  */
    assign fracresultstickybit = n194_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:407:8  */
    assign roundfar1 = n206_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:408:8  */
    assign expoperationsel = n210_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:409:8  */
    assign exponentupdate = n229_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:410:8  */
    assign exponentresultfar0 = n232_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:410:28  */
    assign exponentresultfar0_d1 = n304_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:410:51  */
    assign exponentresultfar0_d2 = n305_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:410:74  */
    assign exponentresultfar0_d3 = n306_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:411:8  */
    assign exponentresultfar1 = n233_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:412:8  */
    assign resultbeforeroundfar = n234_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:413:8  */
    assign roundfar = roundfar1; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:414:8  */
    assign resultbeforeround = n237_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:415:8  */
    assign round = n240_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:416:8  */
    assign zerofromclose = n241_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:417:8  */
    assign resultrounded = fpadd_8_23_f300_uid2_finalroundadd_n243; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:418:8  */
    assign synceffsub = effsub; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:418:20  */
    assign synceffsub_d1 = n307_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:418:35  */
    assign synceffsub_d2 = n308_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:418:50  */
    assign synceffsub_d3 = n309_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:419:8  */
    assign syncx = newx; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:419:15  */
    assign syncx_d1 = n310_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:419:25  */
    assign syncx_d2 = n311_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:419:35  */
    assign syncx_d3 = n312_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:420:8  */
    assign syncsigny = pipesigny; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:420:19  */
    assign syncsigny_d1 = n313_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:420:33  */
    assign syncsigny_d2 = n314_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:420:47  */
    assign syncsigny_d3 = n315_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:421:8  */
    assign syncressign = ressign; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:421:21  */
    assign syncressign_d1 = n316_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:421:37  */
    assign syncressign_d2 = n317_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:421:53  */
    assign syncressign_d3 = n318_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:422:8  */
    assign underflowoverflow = n246_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:423:8  */
    assign resultnoexn = n319_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:424:8  */
    assign syncexnxy = sdexnxy; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:424:19  */
    assign syncexnxy_d1 = n320_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:424:33  */
    assign syncexnxy_d2 = n321_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:424:47  */
    assign syncexnxy_d3 = n322_q; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:425:8  */
    assign exnr = n277_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:426:8  */
    assign sgnr = n287_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:427:8  */
    assign expsigr = n292_o; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:464:39  */
    assign n33_o = inx[33:32];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:464:60  */
    assign n34_o = iny[33:32];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:464:54  */
    assign n35_o = $unsigned(n33_o) >= $unsigned(n34_o);
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:464:31  */
    assign n36_o = n35_o ? 1'b1 : 1'b0;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:465:36  */
    assign n39_o = inx[33:32];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:465:56  */
    assign n40_o = iny[33:32];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:465:51  */
    assign n41_o = n39_o == n40_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:465:28  */
    assign n42_o = n41_o ? 1'b1 : 1'b0;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:466:32  */
    assign n44_o = inx[30:23];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:466:27  */
    assign n46_o = {1'b0, n44_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:467:32  */
    assign n47_o = iny[30:23];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:467:27  */
    assign n49_o = {1'b0, n47_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:468:44  */
    assign n50_o = signedexponentx-signedexponenty;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:469:43  */
    assign n51_o = signedexponenty[7:0];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:469:73  */
    assign n52_o = signedexponentx[7:0];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:469:56  */
    assign n53_o = n51_o-n52_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:470:54  */
    assign n54_o = exponentdifferencexy[8];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:470:30  */
    assign n55_o = exceptionxequaly & n54_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:470:63  */
    assign n56_o = ~exceptionxsuperiory;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:470:59  */
    assign n57_o = n55_o | n56_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:471:16  */
    assign n58_o = swap ? iny : inx;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:472:16  */
    assign n59_o = swap ? inx : iny;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:473:47  */
    assign n60_o = swap ? exponentdifferenceyx : n61_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:473:88  */
    assign n61_o = exponentdifferencexy[7:0];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:474:36  */
    assign n62_o = exponentdifference[7];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:474:61  */
    assign n63_o = exponentdifference[6];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:474:40  */
    assign n64_o = n62_o | n63_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:474:86  */
    assign n65_o = exponentdifference[5];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:474:65  */
    assign n66_o = n64_o | n65_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:475:34  */
    assign n67_o = exponentdifference[4:0];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:475:62  */
    assign n68_o = ~shiftedout;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:475:47  */
    assign n69_o = n68_o ? n67_o : 5'b11010;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:477:18  */
    assign n71_o = newx[31];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:477:31  */
    assign n72_o = newy[31];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:477:23  */
    assign n73_o = n71_o ^ n72_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:478:53  */
    assign n74_o = exponentdifference[7:1];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:478:66  */
    assign n76_o = n74_o == 7'b0000000;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:478:30  */
    assign n77_o = n76_o ? effsub : 1'b0;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:479:19  */
    assign n79_o = newx[33:32];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:479:40  */
    assign n80_o = newy[33:32];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:479:34  */
    assign n81_o = {n79_o, n80_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:480:21  */
    assign n82_o = newy[31];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:483:30  */
    assign n83_o = newx[22:0];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:483:24  */
    assign n85_o = {2'b01, n83_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:483:44  */
    assign n87_o = {n85_o, 1'b0};
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:484:27  */
    assign n88_o = exponentdifference[0];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:485:31  */
    assign n89_o = newy[22:0];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:485:25  */
    assign n91_o = {2'b01, n89_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:485:45  */
    assign n93_o = {n91_o, 1'b0};
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:485:51  */
    assign n95_o = n88_o == 1'b0;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:486:31  */
    assign n96_o = newy[22:0];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:486:25  */
    assign n98_o = {3'b001, n96_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:484:4  */
    always @*
        case (n95_o)
            1'b1: n99_o = n93_o;
            default: n99_o = n98_o;
        endcase
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:491:25  */
    assign fpadd_8_23_f300_uid2_dualsubclose_n100 = fpadd_8_23_f300_uid2_dualsubclose_xmy; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:492:25  */
    assign fpadd_8_23_f300_uid2_dualsubclose_n101 = fpadd_8_23_f300_uid2_dualsubclose_ymx; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:487:4  */
    intdualsub_26_f300_uid4 fpadd_8_23_f300_uid2_dualsubclose(
        .clk(clk),
        .x(fracxclose1),
        .y(fracyclose1),
        .xmy(fpadd_8_23_f300_uid2_dualsubclose_xmy),
        .ymx(fpadd_8_23_f300_uid2_dualsubclose_ymx));
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:493:34  */
    assign n106_o = fracrclosexmy[25];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:494:32  */
    assign n107_o = fracrclosexmy[24:0];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:494:64  */
    assign n108_o = ~fracsignclose;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:494:46  */
    assign n109_o = n108_o ? n107_o : n110_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:494:87  */
    assign n110_o = fracrcloseymx[24:0];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:495:60  */
    assign n113_o = fracrclose1 == 25'b0000000000000000000000000;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:495:44  */
    assign n114_o = selectclosepath & n113_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:495:19  */
    assign n115_o = n114_o ? 1'b0 : n118_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:496:18  */
    assign n116_o = newx[31];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:496:44  */
    assign n117_o = selectclosepath & fracsignclose;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:496:23  */
    assign n118_o = n116_o ^ n117_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:500:27  */
    assign norm_n119 = norm_count; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:501:23  */
    assign norm_n120 = norm_r; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:497:4  */
    normalizer_z_25_25_25_f300_uid6 norm(
        .clk(clk),
        .x(fracrclose1),
        .count(norm_count),
        .r(norm_r));
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:502:30  */
    assign n125_o = shiftedfrac[0];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:502:49  */
    assign n126_o = shiftedfrac[1];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:502:34  */
    assign n127_o = n125_o & n126_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:503:45  */
    assign n130_o = nzerosnew == 5'b11111;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:503:30  */
    assign n131_o = n130_o ? 1'b1 : 1'b0;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:504:42  */
    assign n133_o = newx_d3[30:23];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:504:33  */
    assign n135_o = {2'b00, n133_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:504:88  */
    assign n137_o = {5'b00000, nzerosnew};
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:504:58  */
    assign n138_o = n135_o-n137_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:505:75  */
    assign n139_o = shiftedfrac[23:1];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:505:62  */
    assign n140_o = {exponentresultclose, n139_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:510:26  */
    assign n141_o = newy[22:0];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:510:20  */
    assign n143_o = {1'b1, n141_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:515:23  */
    assign rightshiftercomponent_n144 = rightshiftercomponent_r; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:516:28  */
    assign rightshiftercomponent_n145 = rightshiftercomponent_sticky; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:511:4  */
    rightshiftersticky24_by_max_26_f300_uid8 rightshiftercomponent(
        .clk(clk),
        .x(fracnewy),
        .s(shiftval),
        .r(rightshiftercomponent_r),
        .sticky(rightshiftercomponent_sticky));
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:517:20  */
    assign n151_o = {1'b0, shiftedfracy};
    assign n152_o = {effsub, effsub, effsub, effsub};
    assign n153_o = {effsub, effsub, effsub, effsub};
    assign n154_o = {effsub, effsub, effsub, effsub};
    assign n155_o = {effsub, effsub, effsub, effsub};
    assign n156_o = {effsub, effsub, effsub, effsub};
    assign n157_o = {effsub, effsub, effsub, effsub};
    assign n158_o = {effsub, effsub, effsub};
    assign n159_o = {n152_o, n153_o, n154_o, n155_o};
    assign n160_o = {n156_o, n157_o, n158_o};
    assign n161_o = {n159_o, n160_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:519:30  */
    assign n162_o = fracyfar ^ effsubvector;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:520:28  */
    assign n163_o = newx[22:0];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:520:21  */
    assign n165_o = {2'b01, n163_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:520:43  */
    assign n167_o = {n165_o, 2'b00};
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:521:31  */
    assign n168_o = ~sticky;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:521:27  */
    assign n169_o = effsub_d3 & n168_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:527:23  */
    assign fpadd_8_23_f300_uid2_fracaddfar_n170 = fpadd_8_23_f300_uid2_fracaddfar_r; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:522:4  */
    intadder_27_f300_uid10 fpadd_8_23_f300_uid2_fracaddfar(
        .clk(clk),
        .x(fracxfar),
        .y(fracyfarxorop),
        .cin(cinaddfar),
        .r(fpadd_8_23_f300_uid2_fracaddfar_r));
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:530:45  */
    assign n173_o = fracresultfarnormstage[26:25];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:532:34  */
    assign n174_o = fracresultfarnormstage[23:1];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:532:70  */
    assign n176_o = fracleadingbits == 2'b00;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:532:49  */
    assign n177_o = n176_o ? n174_o : n181_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:533:34  */
    assign n178_o = fracresultfarnormstage[24:2];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:533:70  */
    assign n180_o = fracleadingbits == 2'b01;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:533:7  */
    assign n181_o = n180_o ? n178_o : n182_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:534:34  */
    assign n182_o = fracresultfarnormstage[25:3];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:536:34  */
    assign n183_o = fracresultfarnormstage[0];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:536:63  */
    assign n185_o = fracleadingbits == 2'b00;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:536:42  */
    assign n186_o = n185_o ? n183_o : n190_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:537:34  */
    assign n187_o = fracresultfarnormstage[1];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:537:62  */
    assign n189_o = fracleadingbits == 2'b01;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:537:7  */
    assign n190_o = n189_o ? n187_o : n191_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:538:34  */
    assign n191_o = fracresultfarnormstage[2];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:540:47  */
    assign n193_o = fracleadingbits == 2'b00;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:540:26  */
    assign n194_o = n193_o ? sticky : n199_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:541:34  */
    assign n195_o = fracresultfarnormstage[0];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:541:38  */
    assign n196_o = n195_o | sticky;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:541:72  */
    assign n198_o = fracleadingbits == 2'b01;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:541:7  */
    assign n199_o = n198_o ? n196_o : n203_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:542:34  */
    assign n200_o = fracresultfarnormstage[1];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:542:63  */
    assign n201_o = fracresultfarnormstage[0];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:542:38  */
    assign n202_o = n200_o | n201_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:542:67  */
    assign n203_o = n202_o | sticky;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:543:78  */
    assign n204_o = fracresultfar1[0];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:543:61  */
    assign n205_o = fracresultstickybit | n204_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:543:36  */
    assign n206_o = fracresultroundbit & n205_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:544:49  */
    assign n209_o = fracleadingbits == 2'b00;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:544:28  */
    assign n210_o = n209_o ? 2'b11 : n214_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:545:49  */
    assign n213_o = fracleadingbits == 2'b01;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:545:16  */
    assign n214_o = n213_o ? 2'b00 : 2'b01;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:547:52  */
    assign n216_o = expoperationsel[1];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:547:52  */
    assign n217_o = expoperationsel[1];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:547:52  */
    assign n218_o = expoperationsel[1];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:547:52  */
    assign n219_o = expoperationsel[1];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:547:52  */
    assign n220_o = expoperationsel[1];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:547:52  */
    assign n221_o = expoperationsel[1];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:547:52  */
    assign n222_o = expoperationsel[1];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:547:52  */
    assign n223_o = expoperationsel[1];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:547:52  */
    assign n224_o = expoperationsel[1];
    assign n225_o = {n224_o, n223_o, n222_o, n221_o};
    assign n226_o = {n220_o, n219_o, n218_o, n217_o};
    assign n227_o = {n225_o, n226_o, n216_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:547:74  */
    assign n228_o = expoperationsel[0];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:547:57  */
    assign n229_o = {n227_o, n228_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:548:36  */
    assign n230_o = newx[30:23];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:548:29  */
    assign n232_o = {2'b00, n230_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:549:48  */
    assign n233_o = exponentresultfar0_d3+exponentupdate;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:550:47  */
    assign n234_o = {exponentresultfar1, fracresultfar1};
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:555:48  */
    assign n236_o = selectclosepath_d3 == 1'b1;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:554:4  */
    always @*
        case (n236_o)
            1'b1: n237_o = resultbeforeroundclose;
            default: n237_o = resultbeforeroundfar;
        endcase
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:558:24  */
    assign n239_o = selectclosepath_d3 == 1'b1;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:557:4  */
    always @*
        case (n239_o)
            1'b1: n240_o = roundclose;
            default: n240_o = roundfar;
        endcase
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:560:40  */
    assign n241_o = selectclosepath_d3 & resultcloseiszero;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:568:23  */
    assign fpadd_8_23_f300_uid2_finalroundadd_n243 = fpadd_8_23_f300_uid2_finalroundadd_r; // (signal)
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:563:4  */
    intadder_33_f300_uid13 fpadd_8_23_f300_uid2_finalroundadd(
        .clk(clk),
        .x(resultbeforeround),
        .y(n242_o),
        .cin(round),
        .r(fpadd_8_23_f300_uid2_finalroundadd_r));
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:573:38  */
    assign n246_o = resultrounded[32:31];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:575:36  */
    assign n247_o = ~zerofromclose;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:575:55  */
    assign n249_o = {n247_o, 1'b0};
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:575:61  */
    assign n251_o = underflowoverflow == 2'b01;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:576:39  */
    assign n254_o = underflowoverflow == 2'b10;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:576:49  */
    assign n256_o = underflowoverflow == 2'b11;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:576:49  */
    assign n257_o = n254_o | n256_o;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:577:41  */
    assign n258_o = ~zerofromclose;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:577:38  */
    assign n260_o = {1'b0, n258_o};
    assign n261_o = {n257_o, n251_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:574:4  */
    always @*
        case (n261_o)
            2'b10: n262_o = 2'b00;
            2'b01: n262_o = n249_o;
            default: n262_o = n260_o;
        endcase
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:578:62  */
    assign n263_o = resultrounded[30:0];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:578:47  */
    assign n264_o = {syncressign_d3, n263_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:582:26  */
    assign n265_o = resultnoexn[33:32];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:582:41  */
    assign n267_o = syncexnxy_d3 == 4'b0101;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:583:19  */
    assign n269_o = {1'b1, synceffsub_d3};
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:583:44  */
    assign n271_o = syncexnxy_d3 == 4'b1010;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:584:41  */
    assign n274_o = syncexnxy_d3 == 4'b1110;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:585:27  */
    assign n275_o = syncexnxy_d3[3:2];
    assign n276_o = {n274_o, n271_o, n267_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:581:4  */
    always @*
        case (n276_o)
            3'b100: n277_o = 2'b11;
            3'b010: n277_o = n269_o;
            3'b001: n277_o = n265_o;
            default: n277_o = n275_o;
        endcase
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:588:26  */
    assign n278_o = resultnoexn[31];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:588:39  */
    assign n280_o = syncexnxy_d3 == 4'b0101;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:589:23  */
    assign n281_o = syncx_d3[31];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:589:28  */
    assign n282_o = n281_o & syncsigny_d3;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:589:45  */
    assign n284_o = syncexnxy_d3 == 4'b0000;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:590:23  */
    assign n285_o = syncx_d3[31];
    assign n286_o = {n284_o, n280_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:587:4  */
    always @*
        case (n286_o)
            2'b10: n287_o = n282_o;
            2'b01: n287_o = n278_o;
            default: n287_o = n285_o;
        endcase
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:593:29  */
    assign n288_o = resultnoexn[30:0];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:593:45  */
    assign n290_o = syncexnxy_d3 == 4'b0101;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:594:26  */
    assign n291_o = syncx_d3[30:0];
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:592:4  */
    always @*
        case (n290_o)
            1'b1: n292_o = n288_o;
            default: n292_o = n291_o;
        endcase
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:595:14  */
    assign n293_o = {exnr, sgnr};
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:595:21  */
    assign n294_o = {n293_o, expsigr};
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:431:10  */
    always @(posedge clk)
        n295_q <= newx;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:431:10  */
    always @(posedge clk)
        n296_q <= newx_d1;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:431:10  */
    always @(posedge clk)
        n297_q <= newx_d2;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:431:10  */
    always @(posedge clk)
        n298_q <= effsub;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:431:10  */
    always @(posedge clk)
        n299_q <= effsub_d1;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:431:10  */
    always @(posedge clk)
        n300_q <= effsub_d2;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:431:10  */
    always @(posedge clk)
        n301_q <= selectclosepath;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:431:10  */
    always @(posedge clk)
        n302_q <= selectclosepath_d1;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:431:10  */
    always @(posedge clk)
        n303_q <= selectclosepath_d2;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:431:10  */
    always @(posedge clk)
        n304_q <= exponentresultfar0;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:431:10  */
    always @(posedge clk)
        n305_q <= exponentresultfar0_d1;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:431:10  */
    always @(posedge clk)
        n306_q <= exponentresultfar0_d2;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:431:10  */
    always @(posedge clk)
        n307_q <= synceffsub;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:431:10  */
    always @(posedge clk)
        n308_q <= synceffsub_d1;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:431:10  */
    always @(posedge clk)
        n309_q <= synceffsub_d2;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:431:10  */
    always @(posedge clk)
        n310_q <= syncx;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:431:10  */
    always @(posedge clk)
        n311_q <= syncx_d1;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:431:10  */
    always @(posedge clk)
        n312_q <= syncx_d2;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:431:10  */
    always @(posedge clk)
        n313_q <= syncsigny;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:431:10  */
    always @(posedge clk)
        n314_q <= syncsigny_d1;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:431:10  */
    always @(posedge clk)
        n315_q <= syncsigny_d2;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:431:10  */
    always @(posedge clk)
        n316_q <= syncressign;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:431:10  */
    always @(posedge clk)
        n317_q <= syncressign_d1;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:431:10  */
    always @(posedge clk)
        n318_q <= syncressign_d2;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:431:10  */
    assign n319_o = {n262_o, n264_o};
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:431:10  */
    always @(posedge clk)
        n320_q <= syncexnxy;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:431:10  */
    always @(posedge clk)
        n321_q <= syncexnxy_d1;
    /* /home/mlevental/dev_projects/bragghls/scripts/../scripts/ip_cores/flopoco_fadd_8_23.vhdl:431:10  */
    always @(posedge clk)
        n322_q <= syncexnxy_d2;
endmodule

