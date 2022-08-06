module intadder_53_f300_uid28
    (input clk,
        input rst,
        input[52:0] x,
        input[52:0] y,
        input cin,
        output[52:0] r);
    wire[52:0] n534_o;
    wire[52:0] n535_o;
    wire[52:0] n536_o;
    assign r = n536_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:231:12  */
    assign n534_o = x+y;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:231:16  */
    assign n535_o = {52'b0, cin};  //  uext
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:231:16  */
    assign n536_o = n534_o+n535_o;
endmodule

module lzcshifter_45_to_45_counting_64_f300_uid24
    (input clk,
        input rst,
        input[44:0] i,
        output[5:0] count,
        output[44:0] o);
    wire[44:0] level6;
    wire count5;
    wire count5_d1;
    wire[44:0] level5;
    wire count4;
    wire count4_d1;
    wire[44:0] level4;
    wire count3;
    wire count3_d1;
    wire[44:0] level3;
    wire[44:0] level3_d1;
    wire count2;
    wire[44:0] level2;
    wire count1;
    wire[44:0] level1;
    wire count0;
    wire[44:0] level0;
    wire[5:0] scount;
    reg n454_q;
    reg n455_q;
    reg n456_q;
    reg[44:0] n457_q;
    wire[31:0] n459_o;
    wire n461_o;
    wire n462_o;
    wire n464_o;
    wire[44:0] n465_o;
    wire[12:0] n466_o;
    wire[44:0] n468_o;
    wire[15:0] n470_o;
    wire n472_o;
    wire n473_o;
    wire n475_o;
    wire[44:0] n476_o;
    wire[28:0] n477_o;
    wire[44:0] n479_o;
    wire[7:0] n481_o;
    wire n483_o;
    wire n484_o;
    wire n486_o;
    wire[44:0] n487_o;
    wire[36:0] n488_o;
    wire[44:0] n490_o;
    wire[3:0] n492_o;
    wire n494_o;
    wire n495_o;
    wire n497_o;
    wire[44:0] n498_o;
    wire[40:0] n499_o;
    wire[44:0] n501_o;
    wire[1:0] n503_o;
    wire n505_o;
    wire n506_o;
    wire n508_o;
    wire[44:0] n509_o;
    wire[42:0] n510_o;
    wire[44:0] n512_o;
    wire n514_o;
    wire n516_o;
    wire n517_o;
    wire n519_o;
    wire[44:0] n520_o;
    wire[43:0] n521_o;
    wire[44:0] n523_o;
    wire[1:0] n524_o;
    wire[2:0] n525_o;
    wire[3:0] n526_o;
    wire[4:0] n527_o;
    wire[5:0] n528_o;
    assign count = scount;
    assign o = level0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:175:19  */
    assign level6 = i; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:150:8  */
    assign count5 = n462_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:150:16  */
    assign count5_d1 = n454_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:178:19  */
    assign level5 = n465_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:152:8  */
    assign count4 = n473_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:152:16  */
    assign count4_d1 = n455_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:181:19  */
    assign level4 = n476_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:154:8  */
    assign count3 = n484_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:154:16  */
    assign count3_d1 = n456_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:155:8  */
    assign level3 = n487_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:185:22  */
    assign level3_d1 = n457_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:156:8  */
    assign count2 = n495_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:188:19  */
    assign level2 = n498_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:158:8  */
    assign count1 = n506_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:191:19  */
    assign level1 = n509_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:160:8  */
    assign count0 = n517_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:161:8  */
    assign level0 = n520_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:162:8  */
    assign scount = n528_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:166:10  */
    always @(posedge clk)
        n454_q <= count5;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:166:10  */
    always @(posedge clk)
        n455_q <= count4;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:166:10  */
    always @(posedge clk)
        n456_q <= count3;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:166:10  */
    always @(posedge clk)
        n457_q <= level3;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:174:28  */
    assign n459_o = level6[44:13];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:174:43  */
    assign n461_o = n459_o == 32'b00000000000000000000000000000000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:174:17  */
    assign n462_o = n461_o ? 1'b1 : 1'b0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:175:44  */
    assign n464_o = ~count5;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:175:33  */
    assign n465_o = n464_o ? level6 : n468_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:175:60  */
    assign n466_o = level6[12:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:175:74  */
    assign n468_o = {n466_o, 32'b00000000000000000000000000000000};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:177:28  */
    assign n470_o = level5[44:29];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:177:43  */
    assign n472_o = n470_o == 16'b0000000000000000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:177:17  */
    assign n473_o = n472_o ? 1'b1 : 1'b0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:178:44  */
    assign n475_o = ~count4;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:178:33  */
    assign n476_o = n475_o ? level5 : n479_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:178:60  */
    assign n477_o = level5[28:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:178:74  */
    assign n479_o = {n477_o, 16'b0000000000000000};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:180:28  */
    assign n481_o = level4[44:37];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:180:43  */
    assign n483_o = n481_o == 8'b00000000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:180:17  */
    assign n484_o = n483_o ? 1'b1 : 1'b0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:181:44  */
    assign n486_o = ~count3;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:181:33  */
    assign n487_o = n486_o ? level4 : n490_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:181:60  */
    assign n488_o = level4[36:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:181:74  */
    assign n490_o = {n488_o, 8'b00000000};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:184:31  */
    assign n492_o = level3_d1[44:41];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:184:46  */
    assign n494_o = n492_o == 4'b0000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:184:17  */
    assign n495_o = n494_o ? 1'b1 : 1'b0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:185:47  */
    assign n497_o = ~count2;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:185:36  */
    assign n498_o = n497_o ? level3_d1 : n501_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:185:66  */
    assign n499_o = level3_d1[40:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:185:80  */
    assign n501_o = {n499_o, 4'b0000};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:187:28  */
    assign n503_o = level2[44:43];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:187:43  */
    assign n505_o = n503_o == 2'b00;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:187:17  */
    assign n506_o = n505_o ? 1'b1 : 1'b0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:188:44  */
    assign n508_o = ~count1;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:188:33  */
    assign n509_o = n508_o ? level2 : n512_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:188:60  */
    assign n510_o = level2[42:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:188:74  */
    assign n512_o = {n510_o, 2'b00};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:190:28  */
    assign n514_o = level1[44];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:190:43  */
    assign n516_o = n514_o == 1'b0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:190:17  */
    assign n517_o = n516_o ? 1'b1 : 1'b0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:191:44  */
    assign n519_o = ~count0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:191:33  */
    assign n520_o = n519_o ? level1 : n523_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:191:60  */
    assign n521_o = level1[43:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:191:74  */
    assign n523_o = {n521_o, 1'b0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:194:24  */
    assign n524_o = {count5_d1, count4_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:194:36  */
    assign n525_o = {n524_o, count3_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:194:48  */
    assign n526_o = {n525_o, count2};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:194:57  */
    assign n527_o = {n526_o, count1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:194:66  */
    assign n528_o = {n527_o, count0};
endmodule

module intadder_44_f300_uid16
    (input clk,
        input rst,
        input[43:0] x,
        input[43:0] y,
        input cin,
        output[43:0] r);
    wire[43:0] n441_o;
    wire[43:0] n442_o;
    wire[43:0] n443_o;
    assign r = n443_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:122:12  */
    assign n441_o = x+y;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:122:16  */
    assign n442_o = {43'b0, cin};  //  uext
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:122:16  */
    assign n443_o = n441_o+n442_o;
endmodule

module rightshifter_41_by_max_43_f300_uid12
    (input clk,
        input rst,
        input[40:0] x,
        input[5:0] s,
        output[83:0] r);
    wire[40:0] level0;
    wire[5:0] ps;
    wire[5:0] ps_d1;
    wire[41:0] level1;
    wire[43:0] level2;
    wire[47:0] level3;
    wire[55:0] level4;
    wire[55:0] level4_d1;
    wire[71:0] level5;
    wire[103:0] level6;
    reg[5:0] n397_q;
    reg[55:0] n398_q;
    wire[41:0] n400_o;
    wire n401_o;
    wire[41:0] n402_o;
    wire[41:0] n404_o;
    wire[43:0] n406_o;
    wire n407_o;
    wire[43:0] n408_o;
    wire[43:0] n410_o;
    wire[47:0] n412_o;
    wire n413_o;
    wire[47:0] n414_o;
    wire[47:0] n416_o;
    wire[55:0] n418_o;
    wire n419_o;
    wire[55:0] n420_o;
    wire[55:0] n422_o;
    wire[71:0] n424_o;
    wire n425_o;
    wire[71:0] n426_o;
    wire[71:0] n428_o;
    wire[103:0] n430_o;
    wire n431_o;
    wire[103:0] n432_o;
    wire[103:0] n434_o;
    wire[83:0] n435_o;
    assign r = n435_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:61:8  */
    assign level0 = x; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:62:8  */
    assign ps = s; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:62:12  */
    assign ps_d1 = n397_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:63:8  */
    assign level1 = n402_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:64:8  */
    assign level2 = n408_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:65:8  */
    assign level3 = n414_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:66:8  */
    assign level4 = n420_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:66:16  */
    assign level4_d1 = n398_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:67:8  */
    assign level5 = n426_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:68:8  */
    assign level6 = n432_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:72:10  */
    always @(posedge clk)
        n397_q <= ps;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:72:10  */
    always @(posedge clk)
        n398_q <= level4;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:79:34  */
    assign n400_o = {1'b0, level0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:79:50  */
    assign n401_o = ps[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:79:43  */
    assign n402_o = n401_o ? n400_o : n404_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:79:75  */
    assign n404_o = {level0, 1'b0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:80:34  */
    assign n406_o = {2'b00, level1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:80:50  */
    assign n407_o = ps[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:80:43  */
    assign n408_o = n407_o ? n406_o : n410_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:80:75  */
    assign n410_o = {level1, 2'b00};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:81:34  */
    assign n412_o = {4'b0000, level2};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:81:50  */
    assign n413_o = ps[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:81:43  */
    assign n414_o = n413_o ? n412_o : n416_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:81:75  */
    assign n416_o = {level2, 4'b0000};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:82:34  */
    assign n418_o = {8'b00000000, level3};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:82:50  */
    assign n419_o = ps[3];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:82:43  */
    assign n420_o = n419_o ? n418_o : n422_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:82:75  */
    assign n422_o = {level3, 8'b00000000};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:84:35  */
    assign n424_o = {16'b0000000000000000, level4_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:84:57  */
    assign n425_o = ps_d1[4];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:84:47  */
    assign n426_o = n425_o ? n424_o : n428_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:84:85  */
    assign n428_o = {level4_d1, 16'b0000000000000000};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:85:35  */
    assign n430_o = {32'b00000000000000000000000000000000, level5};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:85:54  */
    assign n431_o = ps_d1[5];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:85:44  */
    assign n432_o = n431_o ? n430_o : n434_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:85:79  */
    assign n434_o = {level5, 32'b00000000000000000000000000000000};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:86:15  */
    assign n435_o = level6[103:20];
endmodule

module intadder_53_f300_uid4
    (input clk,
        input rst,
        input[52:0] x,
        input[52:0] y,
        input cin,
        output[52:0] r);
    wire[52:0] n387_o;
    wire[52:0] n388_o;
    wire[52:0] n389_o;
    assign r = n389_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:34:12  */
    assign n387_o = x+y;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:34:16  */
    assign n388_o = {52'b0, cin};  //  uext
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:34:16  */
    assign n389_o = n387_o+n388_o;
endmodule

module fadd
    (input clk,
        input rst,
        input[52:0] X,
        input[52:0] Y,
        output[52:0] R);
    wire[51:0] excexpfracx;
    wire[51:0] excexpfracy;
    wire[10:0] exmey;
    wire[10:0] eymex;
    wire[52:0] addcmpop1;
    wire[52:0] addcmpop2;
    wire[52:0] cmpres;
    wire swap;
    wire[52:0] newx;
    wire[52:0] newx_d1;
    wire[52:0] newx_d2;
    wire[52:0] newx_d3;
    wire[52:0] newy;
    wire[9:0] expx;
    wire[9:0] expx_d1;
    wire[9:0] expx_d2;
    wire[9:0] expx_d3;
    wire[1:0] excx;
    wire[1:0] excy;
    wire signx;
    wire signx_d1;
    wire signy;
    wire effsub;
    wire effsub_d1;
    wire effsub_d2;
    wire effsub_d3;
    wire effsub_d4;
    wire effsub_d5;
    wire[5:0] sxsyexnxy;
    wire[5:0] sxsyexnxy_d1;
    wire[40:0] fracy;
    wire[40:0] fracy_d1;
    wire[1:0] excrt;
    wire[1:0] excrt_d1;
    wire[1:0] excrt_d2;
    wire[1:0] excrt_d3;
    wire[1:0] excrt_d4;
    wire[1:0] excrt_d5;
    wire signr;
    wire signr_d1;
    wire signr_d2;
    wire signr_d3;
    wire signr_d4;
    wire[10:0] expdiff;
    wire[10:0] expdiff_d1;
    wire shiftedout;
    wire shiftedout_d1;
    wire[5:0] shiftval;
    wire[83:0] shiftedfracy;
    wire[83:0] shiftedfracy_d1;
    wire sticky;
    wire[43:0] fracyfar;
    wire[43:0] effsubvector;
    wire[43:0] fracyfarxorop;
    wire[43:0] fracxfar;
    wire cinaddfar;
    wire[43:0] fracaddresult;
    wire[44:0] fracgrs;
    wire[11:0] extendedexpinc;
    wire[11:0] extendedexpinc_d1;
    wire[11:0] extendedexpinc_d2;
    wire[5:0] nzerosnew;
    wire[5:0] nzerosnew_d1;
    wire[44:0] shiftedfrac;
    wire[44:0] shiftedfrac_d1;
    wire[11:0] updatedexp;
    wire eqdiffsign;
    wire[52:0] expfrac;
    wire stk;
    wire stk_d1;
    wire rnd;
    wire rnd_d1;
    wire grd;
    wire grd_d1;
    wire lsb;
    wire lsb_d1;
    wire addtoroundbit;
    wire[52:0] roundedexpfrac;
    wire[1:0] upexc;
    wire[39:0] fracr;
    wire[9:0] expr;
    wire[3:0] exexpexc;
    wire[1:0] excrt2;
    wire[1:0] excr;
    wire signr2;
    wire[52:0] computedr;
    reg[52:0] n39_q;
    reg[52:0] n40_q;
    reg[52:0] n41_q;
    reg[9:0] n42_q;
    reg[9:0] n43_q;
    reg[9:0] n44_q;
    reg n45_q;
    reg n46_q;
    reg n47_q;
    reg n48_q;
    reg n49_q;
    reg n50_q;
    reg[5:0] n51_q;
    reg[40:0] n52_q;
    reg[1:0] n53_q;
    reg[1:0] n54_q;
    reg[1:0] n55_q;
    reg[1:0] n56_q;
    reg[1:0] n57_q;
    reg n58_q;
    reg n59_q;
    reg n60_q;
    reg n61_q;
    reg[10:0] n62_q;
    reg n63_q;
    reg[83:0] n64_q;
    reg[11:0] n65_q;
    reg[11:0] n66_q;
    reg[5:0] n67_q;
    reg[44:0] n68_q;
    reg n69_q;
    reg n70_q;
    reg n71_q;
    reg n72_q;
    wire[1:0] n73_o;
    wire[49:0] n74_o;
    wire[51:0] n75_o;
    wire[1:0] n76_o;
    wire[49:0] n77_o;
    wire[51:0] n78_o;
    wire[9:0] n79_o;
    wire[10:0] n81_o;
    wire[9:0] n82_o;
    wire[10:0] n84_o;
    wire[10:0] n85_o;
    wire[9:0] n86_o;
    wire[10:0] n88_o;
    wire[9:0] n89_o;
    wire[10:0] n91_o;
    wire[10:0] n92_o;
    wire[52:0] n94_o;
    wire[51:0] n95_o;
    wire[52:0] n97_o;
    localparam n98_o = 1'b1;
    wire[52:0] cmpadder_n99;
    wire[52:0] cmpadder_r;
    wire n102_o;
    wire n103_o;
    wire[52:0] n104_o;
    wire n105_o;
    wire[52:0] n106_o;
    wire[9:0] n107_o;
    wire[1:0] n108_o;
    wire[1:0] n109_o;
    wire n110_o;
    wire n111_o;
    wire n112_o;
    wire[1:0] n113_o;
    wire[3:0] n114_o;
    wire[5:0] n115_o;
    wire n119_o;
    wire[40:0] n120_o;
    wire[39:0] n121_o;
    wire[40:0] n123_o;
    wire n126_o;
    wire n128_o;
    wire n129_o;
    wire n131_o;
    wire n132_o;
    wire n134_o;
    wire n135_o;
    wire n138_o;
    wire n140_o;
    wire n141_o;
    wire n143_o;
    wire n144_o;
    wire n146_o;
    wire n147_o;
    wire n149_o;
    wire n150_o;
    wire n152_o;
    wire n153_o;
    wire n155_o;
    wire n156_o;
    wire n158_o;
    wire n159_o;
    wire n161_o;
    wire n162_o;
    wire n164_o;
    wire n165_o;
    wire n167_o;
    wire n168_o;
    wire n170_o;
    wire n171_o;
    wire n174_o;
    wire n176_o;
    wire n177_o;
    wire n179_o;
    wire n180_o;
    wire n182_o;
    wire n183_o;
    wire n185_o;
    wire n186_o;
    wire n188_o;
    wire n189_o;
    wire n191_o;
    wire n192_o;
    wire n194_o;
    wire n195_o;
    wire n197_o;
    wire n198_o;
    wire n200_o;
    wire n201_o;
    wire n203_o;
    wire n204_o;
    wire n206_o;
    wire n207_o;
    wire n209_o;
    wire n210_o;
    wire n212_o;
    wire n213_o;
    wire n215_o;
    wire n216_o;
    wire n218_o;
    wire n219_o;
    wire n221_o;
    wire n222_o;
    wire n224_o;
    wire n225_o;
    wire[2:0] n227_o;
    reg[1:0] n228_o;
    wire n231_o;
    wire n233_o;
    wire n234_o;
    wire n235_o;
    wire n236_o;
    wire[10:0] n237_o;
    wire n240_o;
    wire n241_o;
    wire[5:0] n243_o;
    wire n244_o;
    wire[5:0] n245_o;
    wire[83:0] rightshiftercomponent_n247;
    wire[83:0] rightshiftercomponent_r;
    wire[40:0] n251_o;
    wire n253_o;
    wire n254_o;
    wire[42:0] n256_o;
    wire[43:0] n258_o;
    wire[3:0] n259_o;
    wire[3:0] n260_o;
    wire[3:0] n261_o;
    wire[3:0] n262_o;
    wire[3:0] n263_o;
    wire[3:0] n264_o;
    wire[3:0] n265_o;
    wire[3:0] n266_o;
    wire[3:0] n267_o;
    wire[3:0] n268_o;
    wire[3:0] n269_o;
    wire[15:0] n270_o;
    wire[15:0] n271_o;
    wire[11:0] n272_o;
    wire[43:0] n273_o;
    wire[43:0] n274_o;
    wire[39:0] n275_o;
    wire[41:0] n277_o;
    wire[43:0] n279_o;
    wire n280_o;
    wire n281_o;
    wire[43:0] fracadder_n282;
    wire[43:0] fracadder_r;
    wire[44:0] n285_o;
    wire[11:0] n287_o;
    wire[11:0] n290_o;
    wire[5:0] lzc_component_n291;
    wire[44:0] lzc_component_n292;
    wire[5:0] lzc_component_count;
    wire[44:0] lzc_component_o;
    wire[11:0] n298_o;
    wire[11:0] n299_o;
    wire n302_o;
    wire n303_o;
    wire[40:0] n305_o;
    wire[52:0] n306_o;
    wire n307_o;
    wire n308_o;
    wire n309_o;
    wire n310_o;
    wire n311_o;
    wire n312_o;
    wire n314_o;
    wire n315_o;
    wire n316_o;
    wire n317_o;
    wire n318_o;
    wire n319_o;
    wire n320_o;
    localparam [52:0] n322_o = 53'b00000000000000000000000000000000000000000000000000000;
    wire[52:0] roundingadder_n323;
    wire[52:0] roundingadder_r;
    wire[1:0] n326_o;
    wire[39:0] n327_o;
    wire[9:0] n328_o;
    wire[3:0] n329_o;
    wire n332_o;
    wire n334_o;
    wire n335_o;
    wire n337_o;
    wire n338_o;
    wire n340_o;
    wire n341_o;
    wire n343_o;
    wire n344_o;
    wire n346_o;
    wire n347_o;
    wire n350_o;
    wire n353_o;
    wire n355_o;
    wire n356_o;
    wire n358_o;
    wire n359_o;
    wire n361_o;
    wire n362_o;
    wire n364_o;
    wire n365_o;
    wire[2:0] n367_o;
    reg[1:0] n368_o;
    wire n370_o;
    wire n372_o;
    wire n373_o;
    wire n374_o;
    wire[1:0] n375_o;
    wire n377_o;
    wire n378_o;
    wire[2:0] n379_o;
    wire[12:0] n380_o;
    wire[52:0] n381_o;
    assign R = computedr;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:297:8  */
    assign excexpfracx = n75_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:298:8  */
    assign excexpfracy = n78_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:299:8  */
    assign exmey = n85_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:300:8  */
    assign eymex = n92_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:301:8  */
    assign addcmpop1 = n94_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:302:8  */
    assign addcmpop2 = n97_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:303:8  */
    assign cmpres = cmpadder_n99; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:304:8  */
    assign swap = n102_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:305:8  */
    assign newx = n104_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:305:14  */
    assign newx_d1 = n39_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:305:23  */
    assign newx_d2 = n40_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:305:32  */
    assign newx_d3 = n41_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:306:8  */
    assign newy = n106_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:307:8  */
    assign expx = n107_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:307:14  */
    assign expx_d1 = n42_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:307:23  */
    assign expx_d2 = n43_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:307:32  */
    assign expx_d3 = n44_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:308:8  */
    assign excx = n108_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:309:8  */
    assign excy = n109_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:310:8  */
    assign signx = n110_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:310:15  */
    assign signx_d1 = n45_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:311:8  */
    assign signy = n111_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:312:8  */
    assign effsub = n112_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:312:16  */
    assign effsub_d1 = n46_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:312:27  */
    assign effsub_d2 = n47_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:312:38  */
    assign effsub_d3 = n48_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:312:49  */
    assign effsub_d4 = n49_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:312:60  */
    assign effsub_d5 = n50_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:313:8  */
    assign sxsyexnxy = n115_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:313:19  */
    assign sxsyexnxy_d1 = n51_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:315:8  */
    assign fracy = n120_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:315:15  */
    assign fracy_d1 = n52_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:316:8  */
    assign excrt = n228_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:316:15  */
    assign excrt_d1 = n53_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:316:25  */
    assign excrt_d2 = n54_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:316:35  */
    assign excrt_d3 = n55_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:316:45  */
    assign excrt_d4 = n56_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:316:55  */
    assign excrt_d5 = n57_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:317:8  */
    assign signr = n235_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:317:15  */
    assign signr_d1 = n58_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:317:25  */
    assign signr_d2 = n59_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:317:35  */
    assign signr_d3 = n60_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:317:45  */
    assign signr_d4 = n61_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:318:8  */
    assign expdiff = n237_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:318:17  */
    assign expdiff_d1 = n62_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:319:8  */
    assign shiftedout = n241_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:319:20  */
    assign shiftedout_d1 = n63_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:320:8  */
    assign shiftval = n245_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:321:8  */
    assign shiftedfracy = rightshiftercomponent_n247; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:321:22  */
    assign shiftedfracy_d1 = n64_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:322:8  */
    assign sticky = n254_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:323:8  */
    assign fracyfar = n258_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:324:8  */
    assign effsubvector = n273_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:325:8  */
    assign fracyfarxorop = n274_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:326:8  */
    assign fracxfar = n279_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:327:8  */
    assign cinaddfar = n281_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:328:8  */
    assign fracaddresult = fracadder_n282; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:329:8  */
    assign fracgrs = n285_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:330:8  */
    assign extendedexpinc = n290_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:330:24  */
    assign extendedexpinc_d1 = n65_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:330:43  */
    assign extendedexpinc_d2 = n66_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:331:8  */
    assign nzerosnew = lzc_component_n291; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:331:19  */
    assign nzerosnew_d1 = n67_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:332:8  */
    assign shiftedfrac = lzc_component_n292; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:332:21  */
    assign shiftedfrac_d1 = n68_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:333:8  */
    assign updatedexp = n299_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:334:8  */
    assign eqdiffsign = n303_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:335:8  */
    assign expfrac = n306_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:336:8  */
    assign stk = n309_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:336:13  */
    assign stk_d1 = n69_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:337:8  */
    assign rnd = n310_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:337:13  */
    assign rnd_d1 = n70_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:338:8  */
    assign grd = n311_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:338:13  */
    assign grd_d1 = n71_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:339:8  */
    assign lsb = n312_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:339:13  */
    assign lsb_d1 = n72_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:340:8  */
    assign addtoroundbit = n320_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:341:8  */
    assign roundedexpfrac = roundingadder_n323; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:342:8  */
    assign upexc = n326_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:343:8  */
    assign fracr = n327_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:344:8  */
    assign expr = n328_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:345:8  */
    assign exexpexc = n329_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:346:8  */
    assign excrt2 = n368_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:347:8  */
    assign excr = n375_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:348:8  */
    assign signr2 = n378_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:349:8  */
    assign computedr = n381_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:353:10  */
    always @(posedge clk)
        n39_q <= newx;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:353:10  */
    always @(posedge clk)
        n40_q <= newx_d1;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:353:10  */
    always @(posedge clk)
        n41_q <= newx_d2;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:353:10  */
    always @(posedge clk)
        n42_q <= expx;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:353:10  */
    always @(posedge clk)
        n43_q <= expx_d1;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:353:10  */
    always @(posedge clk)
        n44_q <= expx_d2;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:353:10  */
    always @(posedge clk)
        n45_q <= signx;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:353:10  */
    always @(posedge clk)
        n46_q <= effsub;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:353:10  */
    always @(posedge clk)
        n47_q <= effsub_d1;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:353:10  */
    always @(posedge clk)
        n48_q <= effsub_d2;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:353:10  */
    always @(posedge clk)
        n49_q <= effsub_d3;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:353:10  */
    always @(posedge clk)
        n50_q <= effsub_d4;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:353:10  */
    always @(posedge clk)
        n51_q <= sxsyexnxy;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:353:10  */
    always @(posedge clk)
        n52_q <= fracy;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:353:10  */
    always @(posedge clk)
        n53_q <= excrt;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:353:10  */
    always @(posedge clk)
        n54_q <= excrt_d1;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:353:10  */
    always @(posedge clk)
        n55_q <= excrt_d2;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:353:10  */
    always @(posedge clk)
        n56_q <= excrt_d3;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:353:10  */
    always @(posedge clk)
        n57_q <= excrt_d4;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:353:10  */
    always @(posedge clk)
        n58_q <= signr;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:353:10  */
    always @(posedge clk)
        n59_q <= signr_d1;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:353:10  */
    always @(posedge clk)
        n60_q <= signr_d2;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:353:10  */
    always @(posedge clk)
        n61_q <= signr_d3;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:353:10  */
    always @(posedge clk)
        n62_q <= expdiff;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:353:10  */
    always @(posedge clk)
        n63_q <= shiftedout;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:353:10  */
    always @(posedge clk)
        n64_q <= shiftedfracy;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:353:10  */
    always @(posedge clk)
        n65_q <= extendedexpinc;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:353:10  */
    always @(posedge clk)
        n66_q <= extendedexpinc_d1;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:353:10  */
    always @(posedge clk)
        n67_q <= nzerosnew;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:353:10  */
    always @(posedge clk)
        n68_q <= shiftedfrac;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:353:10  */
    always @(posedge clk)
        n69_q <= stk;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:353:10  */
    always @(posedge clk)
        n70_q <= rnd;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:353:10  */
    always @(posedge clk)
        n71_q <= grd;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:353:10  */
    always @(posedge clk)
        n72_q <= lsb;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:391:20  */
    assign n73_o = X[52:51];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:391:38  */
    assign n74_o = X[49:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:391:35  */
    assign n75_o = {n73_o, n74_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:392:20  */
    assign n76_o = Y[52:51];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:392:38  */
    assign n77_o = Y[49:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:392:35  */
    assign n78_o = {n76_o, n77_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:393:21  */
    assign n79_o = X[49:40];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:393:18  */
    assign n81_o = {1'b0, n79_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:393:47  */
    assign n82_o = Y[49:40];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:393:44  */
    assign n84_o = {1'b0, n82_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:393:37  */
    assign n85_o = n81_o-n84_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:394:21  */
    assign n86_o = Y[49:40];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:394:18  */
    assign n88_o = {1'b0, n86_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:394:47  */
    assign n89_o = X[49:40];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:394:44  */
    assign n91_o = {1'b0, n89_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:394:37  */
    assign n92_o = n88_o-n91_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:395:20  */
    assign n94_o = {1'b0, excexpfracx};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:396:22  */
    assign n95_o = ~excexpfracy;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:396:20  */
    assign n97_o = {1'b1, n95_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:401:23  */
    assign cmpadder_n99 = cmpadder_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:397:4  */
    intadder_53_f300_uid4 cmpadder(
        .clk(clk),
        .rst(rst),
        .x(addcmpop1),
        .y(addcmpop2),
        .cin(n98_o),
        .r(cmpadder_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:404:18  */
    assign n102_o = cmpres[52];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:405:24  */
    assign n103_o = ~swap;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:405:14  */
    assign n104_o = n103_o ? X : Y;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:406:24  */
    assign n105_o = ~swap;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:406:14  */
    assign n106_o = n105_o ? Y : X;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:407:15  */
    assign n107_o = newx[49:40];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:408:15  */
    assign n108_o = newx[52:51];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:409:15  */
    assign n109_o = newy[52:51];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:410:16  */
    assign n110_o = newx[50];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:411:16  */
    assign n111_o = newy[50];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:412:20  */
    assign n112_o = signx ^ signy;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:413:23  */
    assign n113_o = {signx, signy};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:413:31  */
    assign n114_o = {n113_o, excx};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:413:38  */
    assign n115_o = {n114_o, excy};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:415:66  */
    assign n119_o = excy == 2'b00;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:415:57  */
    assign n120_o = n119_o ? 41'b00000000000000000000000000000000000000000 : n123_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:415:88  */
    assign n121_o = newy[39:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:415:82  */
    assign n123_o = {1'b1, n121_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:417:18  */
    assign n126_o = sxsyexnxy == 6'b000000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:417:31  */
    assign n128_o = sxsyexnxy == 6'b010000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:417:31  */
    assign n129_o = n126_o | n128_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:417:40  */
    assign n131_o = sxsyexnxy == 6'b100000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:417:40  */
    assign n132_o = n129_o | n131_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:417:49  */
    assign n134_o = sxsyexnxy == 6'b110000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:417:49  */
    assign n135_o = n132_o | n134_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:418:12  */
    assign n138_o = sxsyexnxy == 6'b000101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:418:25  */
    assign n140_o = sxsyexnxy == 6'b010101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:418:25  */
    assign n141_o = n138_o | n140_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:418:34  */
    assign n143_o = sxsyexnxy == 6'b100101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:418:34  */
    assign n144_o = n141_o | n143_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:418:43  */
    assign n146_o = sxsyexnxy == 6'b110101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:418:43  */
    assign n147_o = n144_o | n146_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:418:52  */
    assign n149_o = sxsyexnxy == 6'b000100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:418:52  */
    assign n150_o = n147_o | n149_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:418:61  */
    assign n152_o = sxsyexnxy == 6'b010100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:418:61  */
    assign n153_o = n150_o | n152_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:418:70  */
    assign n155_o = sxsyexnxy == 6'b100100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:418:70  */
    assign n156_o = n153_o | n155_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:418:79  */
    assign n158_o = sxsyexnxy == 6'b110100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:418:79  */
    assign n159_o = n156_o | n158_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:418:88  */
    assign n161_o = sxsyexnxy == 6'b000001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:418:88  */
    assign n162_o = n159_o | n161_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:418:97  */
    assign n164_o = sxsyexnxy == 6'b010001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:418:97  */
    assign n165_o = n162_o | n164_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:418:106  */
    assign n167_o = sxsyexnxy == 6'b100001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:418:106  */
    assign n168_o = n165_o | n167_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:418:115  */
    assign n170_o = sxsyexnxy == 6'b110001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:418:115  */
    assign n171_o = n168_o | n170_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:419:12  */
    assign n174_o = sxsyexnxy == 6'b111010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:419:25  */
    assign n176_o = sxsyexnxy == 6'b001010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:419:25  */
    assign n177_o = n174_o | n176_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:419:34  */
    assign n179_o = sxsyexnxy == 6'b001000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:419:34  */
    assign n180_o = n177_o | n179_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:419:43  */
    assign n182_o = sxsyexnxy == 6'b011000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:419:43  */
    assign n183_o = n180_o | n182_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:419:52  */
    assign n185_o = sxsyexnxy == 6'b101000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:419:52  */
    assign n186_o = n183_o | n185_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:419:61  */
    assign n188_o = sxsyexnxy == 6'b111000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:419:61  */
    assign n189_o = n186_o | n188_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:419:70  */
    assign n191_o = sxsyexnxy == 6'b000010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:419:70  */
    assign n192_o = n189_o | n191_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:419:79  */
    assign n194_o = sxsyexnxy == 6'b010010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:419:79  */
    assign n195_o = n192_o | n194_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:419:88  */
    assign n197_o = sxsyexnxy == 6'b100010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:419:88  */
    assign n198_o = n195_o | n197_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:419:97  */
    assign n200_o = sxsyexnxy == 6'b110010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:419:97  */
    assign n201_o = n198_o | n200_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:419:106  */
    assign n203_o = sxsyexnxy == 6'b001001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:419:106  */
    assign n204_o = n201_o | n203_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:419:115  */
    assign n206_o = sxsyexnxy == 6'b011001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:419:115  */
    assign n207_o = n204_o | n206_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:419:124  */
    assign n209_o = sxsyexnxy == 6'b101001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:419:124  */
    assign n210_o = n207_o | n209_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:419:133  */
    assign n212_o = sxsyexnxy == 6'b111001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:419:133  */
    assign n213_o = n210_o | n212_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:419:142  */
    assign n215_o = sxsyexnxy == 6'b000110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:419:142  */
    assign n216_o = n213_o | n215_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:419:151  */
    assign n218_o = sxsyexnxy == 6'b010110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:419:151  */
    assign n219_o = n216_o | n218_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:419:160  */
    assign n221_o = sxsyexnxy == 6'b100110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:419:160  */
    assign n222_o = n219_o | n221_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:419:169  */
    assign n224_o = sxsyexnxy == 6'b110110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:419:169  */
    assign n225_o = n222_o | n224_o;
    assign n227_o = {n225_o, n171_o, n135_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:416:4  */
    always @*
        case (n227_o)
            3'b100: n228_o <= 2'b10;
            3'b010: n228_o <= 2'b01;
            3'b001: n228_o <= 2'b00;
            default: n228_o <= 2'b11;
        endcase
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:422:34  */
    assign n231_o = sxsyexnxy_d1 == 6'b100000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:422:59  */
    assign n233_o = sxsyexnxy_d1 == 6'b010000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:422:44  */
    assign n234_o = n231_o | n233_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:422:16  */
    assign n235_o = n234_o ? 1'b0 : signx_d1;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:424:31  */
    assign n236_o = ~swap;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:424:21  */
    assign n237_o = n236_o ? exmey : eymex;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:425:36  */
    assign n240_o = $unsigned(expdiff) > $unsigned(11'b00000101010);
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:425:22  */
    assign n241_o = n240_o ? 1'b1 : 1'b0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:427:26  */
    assign n243_o = expdiff_d1[5:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:427:57  */
    assign n244_o = ~shiftedout_d1;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:427:39  */
    assign n245_o = n244_o ? n243_o : 6'b101011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:431:23  */
    assign rightshiftercomponent_n247 = rightshiftercomponent_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:428:4  */
    rightshifter_41_by_max_43_f300_uid12 rightshiftercomponent(
        .clk(clk),
        .rst(rst),
        .x(fracy_d1),
        .s(shiftval),
        .r(rightshiftercomponent_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:436:39  */
    assign n251_o = shiftedfracy_d1[40:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:436:52  */
    assign n253_o = n251_o == 41'b00000000000000000000000000000000000000000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:436:18  */
    assign n254_o = n253_o ? 1'b0 : 1'b1;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:439:37  */
    assign n256_o = shiftedfracy_d1[83:41];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:439:20  */
    assign n258_o = {1'b0, n256_o};
    assign n259_o = {effsub_d3, effsub_d3, effsub_d3, effsub_d3};
    assign n260_o = {effsub_d3, effsub_d3, effsub_d3, effsub_d3};
    assign n261_o = {effsub_d3, effsub_d3, effsub_d3, effsub_d3};
    assign n262_o = {effsub_d3, effsub_d3, effsub_d3, effsub_d3};
    assign n263_o = {effsub_d3, effsub_d3, effsub_d3, effsub_d3};
    assign n264_o = {effsub_d3, effsub_d3, effsub_d3, effsub_d3};
    assign n265_o = {effsub_d3, effsub_d3, effsub_d3, effsub_d3};
    assign n266_o = {effsub_d3, effsub_d3, effsub_d3, effsub_d3};
    assign n267_o = {effsub_d3, effsub_d3, effsub_d3, effsub_d3};
    assign n268_o = {effsub_d3, effsub_d3, effsub_d3, effsub_d3};
    assign n269_o = {effsub_d3, effsub_d3, effsub_d3, effsub_d3};
    assign n270_o = {n259_o, n260_o, n261_o, n262_o};
    assign n271_o = {n263_o, n264_o, n265_o, n266_o};
    assign n272_o = {n267_o, n268_o, n269_o};
    assign n273_o = {n270_o, n271_o, n272_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:441:30  */
    assign n274_o = fracyfar ^ effsubvector;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:442:31  */
    assign n275_o = newx_d3[39:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:442:21  */
    assign n277_o = {2'b01, n275_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:442:46  */
    assign n279_o = {n277_o, 2'b00};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:443:31  */
    assign n280_o = ~sticky;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:443:27  */
    assign n281_o = effsub_d3 & n280_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:448:23  */
    assign fracadder_n282 = fracadder_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:444:4  */
    intadder_44_f300_uid16 fracadder(
        .clk(clk),
        .rst(rst),
        .x(fracxfar),
        .y(fracyfarxorop),
        .cin(cinaddfar),
        .r(fracadder_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:451:28  */
    assign n285_o = {fracaddresult, sticky};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:452:27  */
    assign n287_o = {2'b00, expx_d3};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:452:38  */
    assign n290_o = n287_o+12'b000000000001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:456:27  */
    assign lzc_component_n291 = lzc_component_count; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:458:23  */
    assign lzc_component_n292 = lzc_component_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:453:4  */
    lzcshifter_45_to_45_counting_64_f300_uid24 lzc_component(
        .clk(clk),
        .rst(rst),
        .i(fracgrs),
        .count(lzc_component_count),
        .o(lzc_component_o));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:461:48  */
    assign n298_o = {6'b000000, nzerosnew_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:461:36  */
    assign n299_o = extendedexpinc_d2-n298_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:462:39  */
    assign n302_o = nzerosnew_d1 == 6'b111111;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:462:22  */
    assign n303_o = n302_o ? 1'b1 : 1'b0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:463:41  */
    assign n305_o = shiftedfrac_d1[43:3];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:463:25  */
    assign n306_o = {updatedexp, n305_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:465:21  */
    assign n307_o = shiftedfrac[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:465:39  */
    assign n308_o = shiftedfrac[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:465:25  */
    assign n309_o = n307_o | n308_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:466:21  */
    assign n310_o = shiftedfrac[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:467:21  */
    assign n311_o = shiftedfrac[3];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:468:21  */
    assign n312_o = shiftedfrac[4];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:470:36  */
    assign n314_o = ~lsb_d1;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:470:41  */
    assign n315_o = n314_o & grd_d1;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:470:66  */
    assign n316_o = ~rnd_d1;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:470:56  */
    assign n317_o = n315_o & n316_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:470:81  */
    assign n318_o = ~stk_d1;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:470:71  */
    assign n319_o = n317_o & n318_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:470:24  */
    assign n320_o = n319_o ? 1'b0 : 1'b1;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:475:23  */
    assign roundingadder_n323 = roundingadder_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:471:4  */
    intadder_53_f300_uid28 roundingadder(
        .clk(clk),
        .rst(rst),
        .x(expfrac),
        .y(n322_o),
        .cin(addtoroundbit),
        .r(roundingadder_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:479:27  */
    assign n326_o = roundedexpfrac[52:51];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:480:27  */
    assign n327_o = roundedexpfrac[40:1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:481:26  */
    assign n328_o = roundedexpfrac[50:41];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:482:22  */
    assign n329_o = {upexc, excrt_d5};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:484:18  */
    assign n332_o = exexpexc == 4'b0000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:484:29  */
    assign n334_o = exexpexc == 4'b0100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:484:29  */
    assign n335_o = n332_o | n334_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:484:36  */
    assign n337_o = exexpexc == 4'b1000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:484:36  */
    assign n338_o = n335_o | n337_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:484:43  */
    assign n340_o = exexpexc == 4'b1100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:484:43  */
    assign n341_o = n338_o | n340_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:484:50  */
    assign n343_o = exexpexc == 4'b1001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:484:50  */
    assign n344_o = n341_o | n343_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:484:57  */
    assign n346_o = exexpexc == 4'b1101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:484:57  */
    assign n347_o = n344_o | n346_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:485:12  */
    assign n350_o = exexpexc == 4'b0001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:486:12  */
    assign n353_o = exexpexc == 4'b0010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:486:23  */
    assign n355_o = exexpexc == 4'b0110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:486:23  */
    assign n356_o = n353_o | n355_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:486:30  */
    assign n358_o = exexpexc == 4'b1010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:486:30  */
    assign n359_o = n356_o | n358_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:486:37  */
    assign n361_o = exexpexc == 4'b1110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:486:37  */
    assign n362_o = n359_o | n361_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:486:44  */
    assign n364_o = exexpexc == 4'b0101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:486:44  */
    assign n365_o = n362_o | n364_o;
    assign n367_o = {n365_o, n350_o, n347_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:483:4  */
    always @*
        case (n367_o)
            3'b100: n368_o <= 2'b10;
            3'b010: n368_o <= 2'b01;
            3'b001: n368_o <= 2'b00;
            default: n368_o <= 2'b11;
        endcase
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:488:38  */
    assign n370_o = eqdiffsign & effsub_d5;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:488:72  */
    assign n372_o = excrt_d5 == 2'b11;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:488:60  */
    assign n373_o = ~n372_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:488:56  */
    assign n374_o = n370_o & n373_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:488:17  */
    assign n375_o = n374_o ? 2'b00 : excrt2;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:489:39  */
    assign n377_o = eqdiffsign & effsub_d5;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:489:18  */
    assign n378_o = n377_o ? 1'b0 : signr_d4;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:490:22  */
    assign n379_o = {excr, signr2};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:490:31  */
    assign n380_o = {n379_o, expr};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fadd_10_40.vhdl:490:38  */
    assign n381_o = {n380_o, fracr};
endmodule

