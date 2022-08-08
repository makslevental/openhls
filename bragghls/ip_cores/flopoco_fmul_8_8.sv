module intadder_15_f300_uid64
    (input clk,
        input rst,
        input[14:0] x,
        input[14:0] y,
        input cin,
        output[14:0] r);
    wire[14:0] n884_o;
    wire[14:0] n885_o;
    wire[14:0] n886_o;
    assign r = n886_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:337:12  */
    assign n884_o = x+y;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:337:16  */
    assign n885_o = {14'b0, cin};  //  uext
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:337:16  */
    assign n886_o = n884_o+n885_o;
endmodule

module compressor_3_2
    (input[2:0] x0,
        output[1:0] r);
    wire[2:0] x;
    wire n854_o;
    wire n857_o;
    wire n860_o;
    wire n863_o;
    wire n866_o;
    wire n869_o;
    wire n872_o;
    wire n875_o;
    wire[7:0] n877_o;
    reg[1:0] n878_o;
    assign r = n878_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:288:8  */
    assign x = x0; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:292:12  */
    assign n854_o = x == 3'b000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:293:12  */
    assign n857_o = x == 3'b001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:294:12  */
    assign n860_o = x == 3'b010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:295:12  */
    assign n863_o = x == 3'b011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:296:12  */
    assign n866_o = x == 3'b100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:297:12  */
    assign n869_o = x == 3'b101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:298:12  */
    assign n872_o = x == 3'b110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:299:12  */
    assign n875_o = x == 3'b111;
    assign n877_o = {n875_o, n872_o, n869_o, n866_o, n863_o, n860_o, n857_o, n854_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:291:4  */
    always @*
        case (n877_o)
            8'b10000000: n878_o <= 2'b11;
            8'b01000000: n878_o <= 2'b10;
            8'b00100000: n878_o <= 2'b10;
            8'b00010000: n878_o <= 2'b01;
            8'b00001000: n878_o <= 2'b10;
            8'b00000100: n878_o <= 2'b01;
            8'b00000010: n878_o <= 2'b01;
            8'b00000001: n878_o <= 2'b00;
            default: n878_o <= 2'bXX;
        endcase
endmodule

module compressor_13_3
    (input[2:0] x0,
        input x1,
        output[2:0] r);
    wire[3:0] x;
    wire[3:0] n799_o;
    wire n802_o;
    wire n805_o;
    wire n808_o;
    wire n811_o;
    wire n814_o;
    wire n817_o;
    wire n820_o;
    wire n823_o;
    wire n826_o;
    wire n829_o;
    wire n832_o;
    wire n835_o;
    wire n838_o;
    wire n841_o;
    wire n844_o;
    wire n847_o;
    wire[15:0] n849_o;
    reg[2:0] n850_o;
    assign r = n850_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:242:8  */
    assign x = n799_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:244:11  */
    assign n799_o = {x1, x0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:246:13  */
    assign n802_o = x == 4'b0000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:247:13  */
    assign n805_o = x == 4'b0001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:248:13  */
    assign n808_o = x == 4'b0010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:249:13  */
    assign n811_o = x == 4'b0011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:250:13  */
    assign n814_o = x == 4'b0100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:251:13  */
    assign n817_o = x == 4'b0101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:252:13  */
    assign n820_o = x == 4'b0110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:253:13  */
    assign n823_o = x == 4'b0111;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:254:13  */
    assign n826_o = x == 4'b1000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:255:13  */
    assign n829_o = x == 4'b1001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:256:13  */
    assign n832_o = x == 4'b1010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:257:13  */
    assign n835_o = x == 4'b1011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:258:13  */
    assign n838_o = x == 4'b1100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:259:13  */
    assign n841_o = x == 4'b1101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:260:13  */
    assign n844_o = x == 4'b1110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:261:13  */
    assign n847_o = x == 4'b1111;
    assign n849_o = {n847_o, n844_o, n841_o, n838_o, n835_o, n832_o, n829_o, n826_o, n823_o, n820_o, n817_o, n814_o, n811_o, n808_o, n805_o, n802_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:245:4  */
    always @*
        case (n849_o)
            16'b1000000000000000: n850_o <= 3'b101;
            16'b0100000000000000: n850_o <= 3'b100;
            16'b0010000000000000: n850_o <= 3'b100;
            16'b0001000000000000: n850_o <= 3'b011;
            16'b0000100000000000: n850_o <= 3'b100;
            16'b0000010000000000: n850_o <= 3'b011;
            16'b0000001000000000: n850_o <= 3'b011;
            16'b0000000100000000: n850_o <= 3'b010;
            16'b0000000010000000: n850_o <= 3'b011;
            16'b0000000001000000: n850_o <= 3'b010;
            16'b0000000000100000: n850_o <= 3'b010;
            16'b0000000000010000: n850_o <= 3'b001;
            16'b0000000000001000: n850_o <= 3'b010;
            16'b0000000000000100: n850_o <= 3'b001;
            16'b0000000000000010: n850_o <= 3'b001;
            16'b0000000000000001: n850_o <= 3'b000;
            default: n850_o <= 3'bXXX;
        endcase
endmodule

module compressor_23_3
    (input[2:0] x0,
        input[1:0] x1,
        output[2:0] r);
    wire[4:0] x;
    wire[4:0] n698_o;
    wire n701_o;
    wire n704_o;
    wire n707_o;
    wire n710_o;
    wire n713_o;
    wire n716_o;
    wire n719_o;
    wire n722_o;
    wire n725_o;
    wire n728_o;
    wire n731_o;
    wire n734_o;
    wire n737_o;
    wire n740_o;
    wire n743_o;
    wire n746_o;
    wire n749_o;
    wire n752_o;
    wire n755_o;
    wire n758_o;
    wire n761_o;
    wire n764_o;
    wire n767_o;
    wire n770_o;
    wire n773_o;
    wire n776_o;
    wire n779_o;
    wire n782_o;
    wire n785_o;
    wire n788_o;
    wire n791_o;
    wire n794_o;
    wire[31:0] n796_o;
    reg[2:0] n797_o;
    assign r = n797_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:179:8  */
    assign x = n698_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:181:11  */
    assign n698_o = {x1, x0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:183:13  */
    assign n701_o = x == 5'b00000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:184:13  */
    assign n704_o = x == 5'b00001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:185:13  */
    assign n707_o = x == 5'b00010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:186:13  */
    assign n710_o = x == 5'b00011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:187:13  */
    assign n713_o = x == 5'b00100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:188:13  */
    assign n716_o = x == 5'b00101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:189:13  */
    assign n719_o = x == 5'b00110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:190:13  */
    assign n722_o = x == 5'b00111;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:191:13  */
    assign n725_o = x == 5'b01000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:192:13  */
    assign n728_o = x == 5'b01001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:193:13  */
    assign n731_o = x == 5'b01010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:194:13  */
    assign n734_o = x == 5'b01011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:195:13  */
    assign n737_o = x == 5'b01100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:196:13  */
    assign n740_o = x == 5'b01101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:197:13  */
    assign n743_o = x == 5'b01110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:198:13  */
    assign n746_o = x == 5'b01111;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:199:13  */
    assign n749_o = x == 5'b10000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:200:13  */
    assign n752_o = x == 5'b10001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:201:13  */
    assign n755_o = x == 5'b10010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:202:13  */
    assign n758_o = x == 5'b10011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:203:13  */
    assign n761_o = x == 5'b10100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:204:13  */
    assign n764_o = x == 5'b10101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:205:13  */
    assign n767_o = x == 5'b10110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:206:13  */
    assign n770_o = x == 5'b10111;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:207:13  */
    assign n773_o = x == 5'b11000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:208:13  */
    assign n776_o = x == 5'b11001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:209:13  */
    assign n779_o = x == 5'b11010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:210:13  */
    assign n782_o = x == 5'b11011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:211:13  */
    assign n785_o = x == 5'b11100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:212:13  */
    assign n788_o = x == 5'b11101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:213:13  */
    assign n791_o = x == 5'b11110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:214:13  */
    assign n794_o = x == 5'b11111;
    assign n796_o = {n794_o, n791_o, n788_o, n785_o, n782_o, n779_o, n776_o, n773_o, n770_o, n767_o, n764_o, n761_o, n758_o, n755_o, n752_o, n749_o, n746_o, n743_o, n740_o, n737_o, n734_o, n731_o, n728_o, n725_o, n722_o, n719_o, n716_o, n713_o, n710_o, n707_o, n704_o, n701_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:182:4  */
    always @*
        case (n796_o)
            32'b10000000000000000000000000000000: n797_o <= 3'b111;
            32'b01000000000000000000000000000000: n797_o <= 3'b110;
            32'b00100000000000000000000000000000: n797_o <= 3'b110;
            32'b00010000000000000000000000000000: n797_o <= 3'b101;
            32'b00001000000000000000000000000000: n797_o <= 3'b110;
            32'b00000100000000000000000000000000: n797_o <= 3'b101;
            32'b00000010000000000000000000000000: n797_o <= 3'b101;
            32'b00000001000000000000000000000000: n797_o <= 3'b100;
            32'b00000000100000000000000000000000: n797_o <= 3'b101;
            32'b00000000010000000000000000000000: n797_o <= 3'b100;
            32'b00000000001000000000000000000000: n797_o <= 3'b100;
            32'b00000000000100000000000000000000: n797_o <= 3'b011;
            32'b00000000000010000000000000000000: n797_o <= 3'b100;
            32'b00000000000001000000000000000000: n797_o <= 3'b011;
            32'b00000000000000100000000000000000: n797_o <= 3'b011;
            32'b00000000000000010000000000000000: n797_o <= 3'b010;
            32'b00000000000000001000000000000000: n797_o <= 3'b101;
            32'b00000000000000000100000000000000: n797_o <= 3'b100;
            32'b00000000000000000010000000000000: n797_o <= 3'b100;
            32'b00000000000000000001000000000000: n797_o <= 3'b011;
            32'b00000000000000000000100000000000: n797_o <= 3'b100;
            32'b00000000000000000000010000000000: n797_o <= 3'b011;
            32'b00000000000000000000001000000000: n797_o <= 3'b011;
            32'b00000000000000000000000100000000: n797_o <= 3'b010;
            32'b00000000000000000000000010000000: n797_o <= 3'b011;
            32'b00000000000000000000000001000000: n797_o <= 3'b010;
            32'b00000000000000000000000000100000: n797_o <= 3'b010;
            32'b00000000000000000000000000010000: n797_o <= 3'b001;
            32'b00000000000000000000000000001000: n797_o <= 3'b010;
            32'b00000000000000000000000000000100: n797_o <= 3'b001;
            32'b00000000000000000000000000000010: n797_o <= 3'b001;
            32'b00000000000000000000000000000001: n797_o <= 3'b000;
            default: n797_o <= 3'bXXX;
        endcase
endmodule

module compressor_14_3
    (input[3:0] x0,
        input x1,
        output[2:0] r);
    wire[4:0] x;
    wire[4:0] n597_o;
    wire n600_o;
    wire n603_o;
    wire n606_o;
    wire n609_o;
    wire n612_o;
    wire n615_o;
    wire n618_o;
    wire n621_o;
    wire n624_o;
    wire n627_o;
    wire n630_o;
    wire n633_o;
    wire n636_o;
    wire n639_o;
    wire n642_o;
    wire n645_o;
    wire n648_o;
    wire n651_o;
    wire n654_o;
    wire n657_o;
    wire n660_o;
    wire n663_o;
    wire n666_o;
    wire n669_o;
    wire n672_o;
    wire n675_o;
    wire n678_o;
    wire n681_o;
    wire n684_o;
    wire n687_o;
    wire n690_o;
    wire n693_o;
    wire[31:0] n695_o;
    reg[2:0] n696_o;
    assign r = n696_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:116:8  */
    assign x = n597_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:118:11  */
    assign n597_o = {x1, x0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:120:13  */
    assign n600_o = x == 5'b00000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:121:13  */
    assign n603_o = x == 5'b00001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:122:13  */
    assign n606_o = x == 5'b00010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:123:13  */
    assign n609_o = x == 5'b00011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:124:13  */
    assign n612_o = x == 5'b00100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:125:13  */
    assign n615_o = x == 5'b00101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:126:13  */
    assign n618_o = x == 5'b00110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:127:13  */
    assign n621_o = x == 5'b00111;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:128:13  */
    assign n624_o = x == 5'b01000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:129:13  */
    assign n627_o = x == 5'b01001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:130:13  */
    assign n630_o = x == 5'b01010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:131:13  */
    assign n633_o = x == 5'b01011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:132:13  */
    assign n636_o = x == 5'b01100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:133:13  */
    assign n639_o = x == 5'b01101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:134:13  */
    assign n642_o = x == 5'b01110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:135:13  */
    assign n645_o = x == 5'b01111;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:136:13  */
    assign n648_o = x == 5'b10000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:137:13  */
    assign n651_o = x == 5'b10001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:138:13  */
    assign n654_o = x == 5'b10010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:139:13  */
    assign n657_o = x == 5'b10011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:140:13  */
    assign n660_o = x == 5'b10100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:141:13  */
    assign n663_o = x == 5'b10101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:142:13  */
    assign n666_o = x == 5'b10110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:143:13  */
    assign n669_o = x == 5'b10111;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:144:13  */
    assign n672_o = x == 5'b11000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:145:13  */
    assign n675_o = x == 5'b11001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:146:13  */
    assign n678_o = x == 5'b11010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:147:13  */
    assign n681_o = x == 5'b11011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:148:13  */
    assign n684_o = x == 5'b11100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:149:13  */
    assign n687_o = x == 5'b11101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:150:13  */
    assign n690_o = x == 5'b11110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:151:13  */
    assign n693_o = x == 5'b11111;
    assign n695_o = {n693_o, n690_o, n687_o, n684_o, n681_o, n678_o, n675_o, n672_o, n669_o, n666_o, n663_o, n660_o, n657_o, n654_o, n651_o, n648_o, n645_o, n642_o, n639_o, n636_o, n633_o, n630_o, n627_o, n624_o, n621_o, n618_o, n615_o, n612_o, n609_o, n606_o, n603_o, n600_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:119:4  */
    always @*
        case (n695_o)
            32'b10000000000000000000000000000000: n696_o <= 3'b110;
            32'b01000000000000000000000000000000: n696_o <= 3'b101;
            32'b00100000000000000000000000000000: n696_o <= 3'b101;
            32'b00010000000000000000000000000000: n696_o <= 3'b100;
            32'b00001000000000000000000000000000: n696_o <= 3'b101;
            32'b00000100000000000000000000000000: n696_o <= 3'b100;
            32'b00000010000000000000000000000000: n696_o <= 3'b100;
            32'b00000001000000000000000000000000: n696_o <= 3'b011;
            32'b00000000100000000000000000000000: n696_o <= 3'b101;
            32'b00000000010000000000000000000000: n696_o <= 3'b100;
            32'b00000000001000000000000000000000: n696_o <= 3'b100;
            32'b00000000000100000000000000000000: n696_o <= 3'b011;
            32'b00000000000010000000000000000000: n696_o <= 3'b100;
            32'b00000000000001000000000000000000: n696_o <= 3'b011;
            32'b00000000000000100000000000000000: n696_o <= 3'b011;
            32'b00000000000000010000000000000000: n696_o <= 3'b010;
            32'b00000000000000001000000000000000: n696_o <= 3'b100;
            32'b00000000000000000100000000000000: n696_o <= 3'b011;
            32'b00000000000000000010000000000000: n696_o <= 3'b011;
            32'b00000000000000000001000000000000: n696_o <= 3'b010;
            32'b00000000000000000000100000000000: n696_o <= 3'b011;
            32'b00000000000000000000010000000000: n696_o <= 3'b010;
            32'b00000000000000000000001000000000: n696_o <= 3'b010;
            32'b00000000000000000000000100000000: n696_o <= 3'b001;
            32'b00000000000000000000000010000000: n696_o <= 3'b011;
            32'b00000000000000000000000001000000: n696_o <= 3'b010;
            32'b00000000000000000000000000100000: n696_o <= 3'b010;
            32'b00000000000000000000000000010000: n696_o <= 3'b001;
            32'b00000000000000000000000000001000: n696_o <= 3'b010;
            32'b00000000000000000000000000000100: n696_o <= 3'b001;
            32'b00000000000000000000000000000010: n696_o <= 3'b001;
            32'b00000000000000000000000000000001: n696_o <= 3'b000;
            default: n696_o <= 3'bXXX;
        endcase
endmodule

module smallmulttablep3x3r6xuyu_f300_uid9
    (input clk,
        input rst,
        input[5:0] x,
        output[5:0] y);
    wire[5:0] tableout;
    wire n403_o;
    wire n406_o;
    wire n409_o;
    wire n412_o;
    wire n415_o;
    wire n418_o;
    wire n421_o;
    wire n424_o;
    wire n427_o;
    wire n430_o;
    wire n433_o;
    wire n436_o;
    wire n439_o;
    wire n442_o;
    wire n445_o;
    wire n448_o;
    wire n451_o;
    wire n454_o;
    wire n457_o;
    wire n460_o;
    wire n463_o;
    wire n466_o;
    wire n469_o;
    wire n472_o;
    wire n475_o;
    wire n478_o;
    wire n481_o;
    wire n484_o;
    wire n487_o;
    wire n490_o;
    wire n493_o;
    wire n496_o;
    wire n499_o;
    wire n502_o;
    wire n505_o;
    wire n508_o;
    wire n511_o;
    wire n514_o;
    wire n517_o;
    wire n520_o;
    wire n523_o;
    wire n526_o;
    wire n529_o;
    wire n532_o;
    wire n535_o;
    wire n538_o;
    wire n541_o;
    wire n544_o;
    wire n547_o;
    wire n550_o;
    wire n553_o;
    wire n556_o;
    wire n559_o;
    wire n562_o;
    wire n565_o;
    wire n568_o;
    wire n571_o;
    wire n574_o;
    wire n577_o;
    wire n580_o;
    wire n583_o;
    wire n586_o;
    wire n589_o;
    wire n592_o;
    wire[63:0] n594_o;
    reg[5:0] n595_o;
    assign y = tableout;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:17:8  */
    assign tableout = n595_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:25:13  */
    assign n403_o = x == 6'b000000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:26:13  */
    assign n406_o = x == 6'b000001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:27:13  */
    assign n409_o = x == 6'b000010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:28:13  */
    assign n412_o = x == 6'b000011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:29:13  */
    assign n415_o = x == 6'b000100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:30:13  */
    assign n418_o = x == 6'b000101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:31:13  */
    assign n421_o = x == 6'b000110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:32:13  */
    assign n424_o = x == 6'b000111;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:33:13  */
    assign n427_o = x == 6'b001000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:34:13  */
    assign n430_o = x == 6'b001001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:35:13  */
    assign n433_o = x == 6'b001010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:36:13  */
    assign n436_o = x == 6'b001011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:37:13  */
    assign n439_o = x == 6'b001100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:38:13  */
    assign n442_o = x == 6'b001101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:39:13  */
    assign n445_o = x == 6'b001110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:40:13  */
    assign n448_o = x == 6'b001111;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:41:13  */
    assign n451_o = x == 6'b010000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:42:13  */
    assign n454_o = x == 6'b010001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:43:13  */
    assign n457_o = x == 6'b010010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:44:13  */
    assign n460_o = x == 6'b010011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:45:13  */
    assign n463_o = x == 6'b010100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:46:13  */
    assign n466_o = x == 6'b010101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:47:13  */
    assign n469_o = x == 6'b010110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:48:13  */
    assign n472_o = x == 6'b010111;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:49:13  */
    assign n475_o = x == 6'b011000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:50:13  */
    assign n478_o = x == 6'b011001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:51:13  */
    assign n481_o = x == 6'b011010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:52:13  */
    assign n484_o = x == 6'b011011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:53:13  */
    assign n487_o = x == 6'b011100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:54:13  */
    assign n490_o = x == 6'b011101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:55:13  */
    assign n493_o = x == 6'b011110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:56:13  */
    assign n496_o = x == 6'b011111;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:57:13  */
    assign n499_o = x == 6'b100000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:58:13  */
    assign n502_o = x == 6'b100001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:59:13  */
    assign n505_o = x == 6'b100010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:60:13  */
    assign n508_o = x == 6'b100011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:61:13  */
    assign n511_o = x == 6'b100100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:62:13  */
    assign n514_o = x == 6'b100101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:63:13  */
    assign n517_o = x == 6'b100110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:64:13  */
    assign n520_o = x == 6'b100111;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:65:13  */
    assign n523_o = x == 6'b101000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:66:13  */
    assign n526_o = x == 6'b101001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:67:13  */
    assign n529_o = x == 6'b101010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:68:13  */
    assign n532_o = x == 6'b101011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:69:13  */
    assign n535_o = x == 6'b101100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:70:13  */
    assign n538_o = x == 6'b101101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:71:13  */
    assign n541_o = x == 6'b101110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:72:13  */
    assign n544_o = x == 6'b101111;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:73:13  */
    assign n547_o = x == 6'b110000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:74:13  */
    assign n550_o = x == 6'b110001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:75:13  */
    assign n553_o = x == 6'b110010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:76:13  */
    assign n556_o = x == 6'b110011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:77:13  */
    assign n559_o = x == 6'b110100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:78:13  */
    assign n562_o = x == 6'b110101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:79:13  */
    assign n565_o = x == 6'b110110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:80:13  */
    assign n568_o = x == 6'b110111;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:81:13  */
    assign n571_o = x == 6'b111000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:82:13  */
    assign n574_o = x == 6'b111001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:83:13  */
    assign n577_o = x == 6'b111010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:84:13  */
    assign n580_o = x == 6'b111011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:85:13  */
    assign n583_o = x == 6'b111100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:86:13  */
    assign n586_o = x == 6'b111101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:87:13  */
    assign n589_o = x == 6'b111110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:88:13  */
    assign n592_o = x == 6'b111111;
    assign n594_o = {n592_o, n589_o, n586_o, n583_o, n580_o, n577_o, n574_o, n571_o, n568_o, n565_o, n562_o, n559_o, n556_o, n553_o, n550_o, n547_o, n544_o, n541_o, n538_o, n535_o, n532_o, n529_o, n526_o, n523_o, n520_o, n517_o, n514_o, n511_o, n508_o, n505_o, n502_o, n499_o, n496_o, n493_o, n490_o, n487_o, n484_o, n481_o, n478_o, n475_o, n472_o, n469_o, n466_o, n463_o, n460_o, n457_o, n454_o, n451_o, n448_o, n445_o, n442_o, n439_o, n436_o, n433_o, n430_o, n427_o, n424_o, n421_o, n418_o, n415_o, n412_o, n409_o, n406_o, n403_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:24:3  */
    always @*
        case (n594_o)
            64'b1000000000000000000000000000000000000000000000000000000000000000: n595_o <= 6'b110001;
            64'b0100000000000000000000000000000000000000000000000000000000000000: n595_o <= 6'b101010;
            64'b0010000000000000000000000000000000000000000000000000000000000000: n595_o <= 6'b100011;
            64'b0001000000000000000000000000000000000000000000000000000000000000: n595_o <= 6'b011100;
            64'b0000100000000000000000000000000000000000000000000000000000000000: n595_o <= 6'b010101;
            64'b0000010000000000000000000000000000000000000000000000000000000000: n595_o <= 6'b001110;
            64'b0000001000000000000000000000000000000000000000000000000000000000: n595_o <= 6'b000111;
            64'b0000000100000000000000000000000000000000000000000000000000000000: n595_o <= 6'b000000;
            64'b0000000010000000000000000000000000000000000000000000000000000000: n595_o <= 6'b101010;
            64'b0000000001000000000000000000000000000000000000000000000000000000: n595_o <= 6'b100100;
            64'b0000000000100000000000000000000000000000000000000000000000000000: n595_o <= 6'b011110;
            64'b0000000000010000000000000000000000000000000000000000000000000000: n595_o <= 6'b011000;
            64'b0000000000001000000000000000000000000000000000000000000000000000: n595_o <= 6'b010010;
            64'b0000000000000100000000000000000000000000000000000000000000000000: n595_o <= 6'b001100;
            64'b0000000000000010000000000000000000000000000000000000000000000000: n595_o <= 6'b000110;
            64'b0000000000000001000000000000000000000000000000000000000000000000: n595_o <= 6'b000000;
            64'b0000000000000000100000000000000000000000000000000000000000000000: n595_o <= 6'b100011;
            64'b0000000000000000010000000000000000000000000000000000000000000000: n595_o <= 6'b011110;
            64'b0000000000000000001000000000000000000000000000000000000000000000: n595_o <= 6'b011001;
            64'b0000000000000000000100000000000000000000000000000000000000000000: n595_o <= 6'b010100;
            64'b0000000000000000000010000000000000000000000000000000000000000000: n595_o <= 6'b001111;
            64'b0000000000000000000001000000000000000000000000000000000000000000: n595_o <= 6'b001010;
            64'b0000000000000000000000100000000000000000000000000000000000000000: n595_o <= 6'b000101;
            64'b0000000000000000000000010000000000000000000000000000000000000000: n595_o <= 6'b000000;
            64'b0000000000000000000000001000000000000000000000000000000000000000: n595_o <= 6'b011100;
            64'b0000000000000000000000000100000000000000000000000000000000000000: n595_o <= 6'b011000;
            64'b0000000000000000000000000010000000000000000000000000000000000000: n595_o <= 6'b010100;
            64'b0000000000000000000000000001000000000000000000000000000000000000: n595_o <= 6'b010000;
            64'b0000000000000000000000000000100000000000000000000000000000000000: n595_o <= 6'b001100;
            64'b0000000000000000000000000000010000000000000000000000000000000000: n595_o <= 6'b001000;
            64'b0000000000000000000000000000001000000000000000000000000000000000: n595_o <= 6'b000100;
            64'b0000000000000000000000000000000100000000000000000000000000000000: n595_o <= 6'b000000;
            64'b0000000000000000000000000000000010000000000000000000000000000000: n595_o <= 6'b010101;
            64'b0000000000000000000000000000000001000000000000000000000000000000: n595_o <= 6'b010010;
            64'b0000000000000000000000000000000000100000000000000000000000000000: n595_o <= 6'b001111;
            64'b0000000000000000000000000000000000010000000000000000000000000000: n595_o <= 6'b001100;
            64'b0000000000000000000000000000000000001000000000000000000000000000: n595_o <= 6'b001001;
            64'b0000000000000000000000000000000000000100000000000000000000000000: n595_o <= 6'b000110;
            64'b0000000000000000000000000000000000000010000000000000000000000000: n595_o <= 6'b000011;
            64'b0000000000000000000000000000000000000001000000000000000000000000: n595_o <= 6'b000000;
            64'b0000000000000000000000000000000000000000100000000000000000000000: n595_o <= 6'b001110;
            64'b0000000000000000000000000000000000000000010000000000000000000000: n595_o <= 6'b001100;
            64'b0000000000000000000000000000000000000000001000000000000000000000: n595_o <= 6'b001010;
            64'b0000000000000000000000000000000000000000000100000000000000000000: n595_o <= 6'b001000;
            64'b0000000000000000000000000000000000000000000010000000000000000000: n595_o <= 6'b000110;
            64'b0000000000000000000000000000000000000000000001000000000000000000: n595_o <= 6'b000100;
            64'b0000000000000000000000000000000000000000000000100000000000000000: n595_o <= 6'b000010;
            64'b0000000000000000000000000000000000000000000000010000000000000000: n595_o <= 6'b000000;
            64'b0000000000000000000000000000000000000000000000001000000000000000: n595_o <= 6'b000111;
            64'b0000000000000000000000000000000000000000000000000100000000000000: n595_o <= 6'b000110;
            64'b0000000000000000000000000000000000000000000000000010000000000000: n595_o <= 6'b000101;
            64'b0000000000000000000000000000000000000000000000000001000000000000: n595_o <= 6'b000100;
            64'b0000000000000000000000000000000000000000000000000000100000000000: n595_o <= 6'b000011;
            64'b0000000000000000000000000000000000000000000000000000010000000000: n595_o <= 6'b000010;
            64'b0000000000000000000000000000000000000000000000000000001000000000: n595_o <= 6'b000001;
            64'b0000000000000000000000000000000000000000000000000000000100000000: n595_o <= 6'b000000;
            64'b0000000000000000000000000000000000000000000000000000000010000000: n595_o <= 6'b000000;
            64'b0000000000000000000000000000000000000000000000000000000001000000: n595_o <= 6'b000000;
            64'b0000000000000000000000000000000000000000000000000000000000100000: n595_o <= 6'b000000;
            64'b0000000000000000000000000000000000000000000000000000000000010000: n595_o <= 6'b000000;
            64'b0000000000000000000000000000000000000000000000000000000000001000: n595_o <= 6'b000000;
            64'b0000000000000000000000000000000000000000000000000000000000000100: n595_o <= 6'b000000;
            64'b0000000000000000000000000000000000000000000000000000000000000010: n595_o <= 6'b000000;
            64'b0000000000000000000000000000000000000000000000000000000000000001: n595_o <= 6'b000000;
            default: n595_o <= 6'bXXXXXX;
        endcase
endmodule

module intadder_18_f300_uid74
    (input clk,
        input rst,
        input[17:0] x,
        input[17:0] y,
        input cin,
        output[17:0] r);
    wire[17:0] n393_o;
    wire[17:0] n394_o;
    wire[17:0] n395_o;
    assign r = n395_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:937:12  */
    assign n393_o = x+y;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:937:16  */
    assign n394_o = {17'b0, cin};  //  uext
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:937:16  */
    assign n395_o = n393_o+n394_o;
endmodule

module intmultiplier_usingdsp_9_9_18_unsigned_f300_uid4
    (input clk,
        input rst,
        input[8:0] x,
        input[8:0] y,
        output[17:0] r);
    wire[8:0] xx_m5;
    wire[8:0] yy_m5;
    wire[8:0] xp_m5b7;
    wire[8:0] yp_m5b7;
    wire[2:0] x_m5b7_0;
    wire[2:0] x_m5b7_1;
    wire[2:0] x_m5b7_2;
    wire[2:0] y_m5b7_0;
    wire[2:0] y_m5b7_1;
    wire[2:0] y_m5b7_2;
    wire[5:0] y0x0_7_m5;
    wire[5:0] pp7x0y0_m5;
    wire heap_bh6_w0_0;
    wire heap_bh6_w1_0;
    wire heap_bh6_w2_0;
    wire heap_bh6_w3_0;
    wire heap_bh6_w4_0;
    wire heap_bh6_w5_0;
    wire[5:0] y0x1_7_m5;
    wire[5:0] pp7x1y0_m5;
    wire heap_bh6_w3_1;
    wire heap_bh6_w4_1;
    wire heap_bh6_w5_1;
    wire heap_bh6_w6_0;
    wire heap_bh6_w7_0;
    wire heap_bh6_w8_0;
    wire[5:0] y0x2_7_m5;
    wire[5:0] pp7x2y0_m5;
    wire heap_bh6_w6_1;
    wire heap_bh6_w7_1;
    wire heap_bh6_w8_1;
    wire heap_bh6_w9_0;
    wire heap_bh6_w10_0;
    wire heap_bh6_w11_0;
    wire[5:0] y1x0_7_m5;
    wire[5:0] pp7x0y1_m5;
    wire heap_bh6_w3_2;
    wire heap_bh6_w4_2;
    wire heap_bh6_w5_2;
    wire heap_bh6_w6_2;
    wire heap_bh6_w7_2;
    wire heap_bh6_w8_2;
    wire[5:0] y1x1_7_m5;
    wire[5:0] pp7x1y1_m5;
    wire heap_bh6_w6_3;
    wire heap_bh6_w7_3;
    wire heap_bh6_w8_3;
    wire heap_bh6_w9_1;
    wire heap_bh6_w10_1;
    wire heap_bh6_w11_1;
    wire[5:0] y1x2_7_m5;
    wire[5:0] pp7x2y1_m5;
    wire heap_bh6_w9_2;
    wire heap_bh6_w10_2;
    wire heap_bh6_w11_2;
    wire heap_bh6_w12_0;
    wire heap_bh6_w13_0;
    wire heap_bh6_w14_0;
    wire[5:0] y2x0_7_m5;
    wire[5:0] pp7x0y2_m5;
    wire heap_bh6_w6_4;
    wire heap_bh6_w7_4;
    wire heap_bh6_w8_4;
    wire heap_bh6_w9_3;
    wire heap_bh6_w10_3;
    wire heap_bh6_w11_3;
    wire[5:0] y2x1_7_m5;
    wire[5:0] pp7x1y2_m5;
    wire heap_bh6_w9_4;
    wire heap_bh6_w10_4;
    wire heap_bh6_w11_4;
    wire heap_bh6_w12_1;
    wire heap_bh6_w13_1;
    wire heap_bh6_w14_1;
    wire[5:0] y2x2_7_m5;
    wire[5:0] pp7x2y2_m5;
    wire heap_bh6_w12_2;
    wire heap_bh6_w13_2;
    wire heap_bh6_w14_2;
    wire heap_bh6_w15_0;
    wire heap_bh6_w16_0;
    wire heap_bh6_w17_0;
    wire[2:0] tempr_bh6_0;
    wire[3:0] compressorin_bh6_0_0;
    wire compressorin_bh6_0_1;
    wire[2:0] compressorout_bh6_0_0;
    wire heap_bh6_w6_5;
    wire heap_bh6_w7_5;
    wire heap_bh6_w8_5;
    wire[3:0] compressorin_bh6_1_2;
    wire compressorin_bh6_1_3;
    wire[2:0] compressorout_bh6_1_1;
    wire heap_bh6_w7_6;
    wire heap_bh6_w8_6;
    wire heap_bh6_w9_5;
    wire[3:0] compressorin_bh6_2_4;
    wire compressorin_bh6_2_5;
    wire[2:0] compressorout_bh6_2_2;
    wire heap_bh6_w8_7;
    wire heap_bh6_w9_6;
    wire heap_bh6_w10_5;
    wire[3:0] compressorin_bh6_3_6;
    wire compressorin_bh6_3_7;
    wire[2:0] compressorout_bh6_3_3;
    wire heap_bh6_w9_7;
    wire heap_bh6_w10_6;
    wire heap_bh6_w11_5;
    wire[3:0] compressorin_bh6_4_8;
    wire compressorin_bh6_4_9;
    wire[2:0] compressorout_bh6_4_4;
    wire heap_bh6_w10_7;
    wire heap_bh6_w11_6;
    wire heap_bh6_w12_3;
    wire[3:0] compressorin_bh6_5_10;
    wire compressorin_bh6_5_11;
    wire[2:0] compressorout_bh6_5_5;
    wire heap_bh6_w11_7;
    wire heap_bh6_w12_4;
    wire heap_bh6_w13_3;
    wire[2:0] compressorin_bh6_6_12;
    wire[1:0] compressorin_bh6_6_13;
    wire[2:0] compressorout_bh6_6_6;
    wire heap_bh6_w3_3;
    wire heap_bh6_w4_3;
    wire heap_bh6_w5_3;
    wire[2:0] compressorin_bh6_7_14;
    wire[1:0] compressorin_bh6_7_15;
    wire[2:0] compressorout_bh6_7_7;
    wire heap_bh6_w13_4;
    wire heap_bh6_w14_3;
    wire heap_bh6_w15_1;
    wire[2:0] compressorin_bh6_8_16;
    wire compressorin_bh6_8_17;
    wire[2:0] compressorout_bh6_8_8;
    wire heap_bh6_w5_4;
    wire heap_bh6_w6_6;
    wire heap_bh6_w7_7;
    wire tempr_bh6_1;
    wire[3:0] compressorin_bh6_9_18;
    wire compressorin_bh6_9_19;
    wire[2:0] compressorout_bh6_9_9;
    wire heap_bh6_w12_5;
    wire heap_bh6_w13_5;
    wire heap_bh6_w14_4;
    wire[2:0] compressorin_bh6_10_20;
    wire[1:0] compressorin_bh6_10_21;
    wire[2:0] compressorout_bh6_10_10;
    wire heap_bh6_w7_8;
    wire heap_bh6_w8_8;
    wire heap_bh6_w9_8;
    wire[2:0] compressorin_bh6_11_22;
    wire[1:0] compressorin_bh6_11_23;
    wire[2:0] compressorout_bh6_11_11;
    wire heap_bh6_w9_9;
    wire heap_bh6_w10_8;
    wire heap_bh6_w11_8;
    wire[2:0] compressorin_bh6_12_24;
    wire[1:0] compressorout_bh6_12_12;
    wire heap_bh6_w11_9;
    wire heap_bh6_w12_6;
    wire[2:0] compressorin_bh6_13_25;
    wire[1:0] compressorin_bh6_13_26;
    wire[2:0] compressorout_bh6_13_13;
    wire heap_bh6_w14_5;
    wire heap_bh6_w15_2;
    wire heap_bh6_w16_1;
    wire[14:0] finaladderin0_bh6;
    wire[14:0] finaladderin1_bh6;
    wire finaladdercin_bh6;
    wire[14:0] finaladderout_bh6;
    wire[18:0] compressionresult6;
    wire[2:0] n128_o;
    wire[2:0] n129_o;
    wire[2:0] n130_o;
    wire[2:0] n131_o;
    wire[2:0] n132_o;
    wire[2:0] n133_o;
    wire[5:0] n134_o;
    wire[5:0] pp_m5_7x0y0_tbl_n135;
    wire[5:0] pp_m5_7x0y0_tbl_y;
    wire n138_o;
    wire n139_o;
    wire n140_o;
    wire n141_o;
    wire n142_o;
    wire n143_o;
    wire[5:0] n144_o;
    wire[5:0] pp_m5_7x1y0_tbl_n145;
    wire[5:0] pp_m5_7x1y0_tbl_y;
    wire n148_o;
    wire n149_o;
    wire n150_o;
    wire n151_o;
    wire n152_o;
    wire n153_o;
    wire[5:0] n154_o;
    wire[5:0] pp_m5_7x2y0_tbl_n155;
    wire[5:0] pp_m5_7x2y0_tbl_y;
    wire n158_o;
    wire n159_o;
    wire n160_o;
    wire n161_o;
    wire n162_o;
    wire n163_o;
    wire[5:0] n164_o;
    wire[5:0] pp_m5_7x0y1_tbl_n165;
    wire[5:0] pp_m5_7x0y1_tbl_y;
    wire n168_o;
    wire n169_o;
    wire n170_o;
    wire n171_o;
    wire n172_o;
    wire n173_o;
    wire[5:0] n174_o;
    wire[5:0] pp_m5_7x1y1_tbl_n175;
    wire[5:0] pp_m5_7x1y1_tbl_y;
    wire n178_o;
    wire n179_o;
    wire n180_o;
    wire n181_o;
    wire n182_o;
    wire n183_o;
    wire[5:0] n184_o;
    wire[5:0] pp_m5_7x2y1_tbl_n185;
    wire[5:0] pp_m5_7x2y1_tbl_y;
    wire n188_o;
    wire n189_o;
    wire n190_o;
    wire n191_o;
    wire n192_o;
    wire n193_o;
    wire[5:0] n194_o;
    wire[5:0] pp_m5_7x0y2_tbl_n195;
    wire[5:0] pp_m5_7x0y2_tbl_y;
    wire n198_o;
    wire n199_o;
    wire n200_o;
    wire n201_o;
    wire n202_o;
    wire n203_o;
    wire[5:0] n204_o;
    wire[5:0] pp_m5_7x1y2_tbl_n205;
    wire[5:0] pp_m5_7x1y2_tbl_y;
    wire n208_o;
    wire n209_o;
    wire n210_o;
    wire n211_o;
    wire n212_o;
    wire n213_o;
    wire[5:0] n214_o;
    wire[5:0] pp_m5_7x2y2_tbl_n215;
    wire[5:0] pp_m5_7x2y2_tbl_y;
    wire n218_o;
    wire n219_o;
    wire n220_o;
    wire n221_o;
    wire n222_o;
    wire n223_o;
    wire[1:0] n224_o;
    wire[2:0] n225_o;
    wire[1:0] n226_o;
    wire[2:0] n227_o;
    wire[3:0] n228_o;
    wire[2:0] compressor_bh6_0_n229;
    wire[2:0] compressor_bh6_0_r;
    wire n232_o;
    wire n233_o;
    wire n234_o;
    wire[1:0] n235_o;
    wire[2:0] n236_o;
    wire[3:0] n237_o;
    wire[2:0] compressor_bh6_1_n238;
    wire[2:0] compressor_bh6_1_r;
    wire n241_o;
    wire n242_o;
    wire n243_o;
    wire[1:0] n244_o;
    wire[2:0] n245_o;
    wire[3:0] n246_o;
    wire[2:0] compressor_bh6_2_n247;
    wire[2:0] compressor_bh6_2_r;
    wire n250_o;
    wire n251_o;
    wire n252_o;
    wire[1:0] n253_o;
    wire[2:0] n254_o;
    wire[3:0] n255_o;
    wire[2:0] compressor_bh6_3_n256;
    wire[2:0] compressor_bh6_3_r;
    wire n259_o;
    wire n260_o;
    wire n261_o;
    wire[1:0] n262_o;
    wire[2:0] n263_o;
    wire[3:0] n264_o;
    wire[2:0] compressor_bh6_4_n265;
    wire[2:0] compressor_bh6_4_r;
    wire n268_o;
    wire n269_o;
    wire n270_o;
    wire[1:0] n271_o;
    wire[2:0] n272_o;
    wire[3:0] n273_o;
    wire[2:0] compressor_bh6_5_n274;
    wire[2:0] compressor_bh6_5_r;
    wire n277_o;
    wire n278_o;
    wire n279_o;
    wire[1:0] n280_o;
    wire[2:0] n281_o;
    wire[1:0] n282_o;
    wire[2:0] compressor_bh6_6_n283;
    wire[2:0] compressor_bh6_6_r;
    wire n286_o;
    wire n287_o;
    wire n288_o;
    wire[1:0] n289_o;
    wire[2:0] n290_o;
    wire[1:0] n291_o;
    wire[2:0] compressor_bh6_7_n292;
    wire[2:0] compressor_bh6_7_r;
    wire n295_o;
    wire n296_o;
    wire n297_o;
    wire[1:0] n298_o;
    wire[2:0] n299_o;
    wire[2:0] compressor_bh6_8_n300;
    wire[2:0] compressor_bh6_8_r;
    wire n303_o;
    wire n304_o;
    wire n305_o;
    wire[1:0] n306_o;
    wire[2:0] n307_o;
    wire[3:0] n308_o;
    wire[2:0] compressor_bh6_9_n309;
    wire[2:0] compressor_bh6_9_r;
    wire n312_o;
    wire n313_o;
    wire n314_o;
    wire[1:0] n315_o;
    wire[2:0] n316_o;
    wire[1:0] n317_o;
    wire[2:0] compressor_bh6_10_n318;
    wire[2:0] compressor_bh6_10_r;
    wire n321_o;
    wire n322_o;
    wire n323_o;
    wire[1:0] n324_o;
    wire[2:0] n325_o;
    wire[1:0] n326_o;
    wire[2:0] compressor_bh6_11_n327;
    wire[2:0] compressor_bh6_11_r;
    wire n330_o;
    wire n331_o;
    wire n332_o;
    wire[1:0] n333_o;
    wire[2:0] n334_o;
    wire[1:0] compressor_bh6_12_n335;
    wire[1:0] compressor_bh6_12_r;
    wire n338_o;
    wire n339_o;
    wire[1:0] n340_o;
    wire[2:0] n341_o;
    wire[1:0] n342_o;
    wire[2:0] compressor_bh6_13_n343;
    wire[2:0] compressor_bh6_13_r;
    wire n346_o;
    wire n347_o;
    wire n348_o;
    wire[1:0] n350_o;
    wire[2:0] n351_o;
    wire[3:0] n352_o;
    wire[4:0] n353_o;
    wire[5:0] n354_o;
    wire[6:0] n355_o;
    wire[7:0] n356_o;
    wire[8:0] n357_o;
    wire[9:0] n358_o;
    wire[10:0] n359_o;
    wire[11:0] n360_o;
    wire[12:0] n361_o;
    wire[13:0] n362_o;
    wire[14:0] n363_o;
    wire[2:0] n365_o;
    wire[3:0] n367_o;
    wire[4:0] n369_o;
    wire[5:0] n370_o;
    wire[6:0] n371_o;
    wire[7:0] n372_o;
    wire[8:0] n373_o;
    wire[9:0] n374_o;
    wire[10:0] n375_o;
    wire[11:0] n377_o;
    wire[12:0] n378_o;
    wire[13:0] n379_o;
    wire[14:0] n380_o;
    wire[14:0] adder_final6_0_n382;
    wire[14:0] adder_final6_0_r;
    wire[15:0] n385_o;
    wire[18:0] n386_o;
    wire[17:0] n387_o;
    assign r = n387_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:585:33  */
    assign xx_m5 = x; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:586:33  */
    assign yy_m5 = y; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:402:8  */
    assign xp_m5b7 = xx_m5; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:403:8  */
    assign yp_m5b7 = yy_m5; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:404:8  */
    assign x_m5b7_0 = n128_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:405:8  */
    assign x_m5b7_1 = n129_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:406:8  */
    assign x_m5b7_2 = n130_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:407:8  */
    assign y_m5b7_0 = n131_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:408:8  */
    assign y_m5b7_1 = n132_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:409:8  */
    assign y_m5b7_2 = n133_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:410:8  */
    assign y0x0_7_m5 = n134_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:411:8  */
    assign pp7x0y0_m5 = pp_m5_7x0y0_tbl_n135; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:412:8  */
    assign heap_bh6_w0_0 = n138_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:413:8  */
    assign heap_bh6_w1_0 = n139_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:414:8  */
    assign heap_bh6_w2_0 = n140_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:415:8  */
    assign heap_bh6_w3_0 = n141_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:416:8  */
    assign heap_bh6_w4_0 = n142_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:417:8  */
    assign heap_bh6_w5_0 = n143_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:418:8  */
    assign y0x1_7_m5 = n144_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:419:8  */
    assign pp7x1y0_m5 = pp_m5_7x1y0_tbl_n145; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:420:8  */
    assign heap_bh6_w3_1 = n148_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:421:8  */
    assign heap_bh6_w4_1 = n149_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:422:8  */
    assign heap_bh6_w5_1 = n150_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:423:8  */
    assign heap_bh6_w6_0 = n151_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:424:8  */
    assign heap_bh6_w7_0 = n152_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:425:8  */
    assign heap_bh6_w8_0 = n153_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:426:8  */
    assign y0x2_7_m5 = n154_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:427:8  */
    assign pp7x2y0_m5 = pp_m5_7x2y0_tbl_n155; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:428:8  */
    assign heap_bh6_w6_1 = n158_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:429:8  */
    assign heap_bh6_w7_1 = n159_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:430:8  */
    assign heap_bh6_w8_1 = n160_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:431:8  */
    assign heap_bh6_w9_0 = n161_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:432:8  */
    assign heap_bh6_w10_0 = n162_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:433:8  */
    assign heap_bh6_w11_0 = n163_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:434:8  */
    assign y1x0_7_m5 = n164_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:435:8  */
    assign pp7x0y1_m5 = pp_m5_7x0y1_tbl_n165; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:436:8  */
    assign heap_bh6_w3_2 = n168_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:437:8  */
    assign heap_bh6_w4_2 = n169_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:438:8  */
    assign heap_bh6_w5_2 = n170_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:439:8  */
    assign heap_bh6_w6_2 = n171_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:440:8  */
    assign heap_bh6_w7_2 = n172_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:441:8  */
    assign heap_bh6_w8_2 = n173_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:442:8  */
    assign y1x1_7_m5 = n174_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:443:8  */
    assign pp7x1y1_m5 = pp_m5_7x1y1_tbl_n175; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:444:8  */
    assign heap_bh6_w6_3 = n178_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:445:8  */
    assign heap_bh6_w7_3 = n179_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:446:8  */
    assign heap_bh6_w8_3 = n180_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:447:8  */
    assign heap_bh6_w9_1 = n181_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:448:8  */
    assign heap_bh6_w10_1 = n182_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:449:8  */
    assign heap_bh6_w11_1 = n183_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:450:8  */
    assign y1x2_7_m5 = n184_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:451:8  */
    assign pp7x2y1_m5 = pp_m5_7x2y1_tbl_n185; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:452:8  */
    assign heap_bh6_w9_2 = n188_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:453:8  */
    assign heap_bh6_w10_2 = n189_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:454:8  */
    assign heap_bh6_w11_2 = n190_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:455:8  */
    assign heap_bh6_w12_0 = n191_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:456:8  */
    assign heap_bh6_w13_0 = n192_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:457:8  */
    assign heap_bh6_w14_0 = n193_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:458:8  */
    assign y2x0_7_m5 = n194_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:459:8  */
    assign pp7x0y2_m5 = pp_m5_7x0y2_tbl_n195; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:460:8  */
    assign heap_bh6_w6_4 = n198_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:461:8  */
    assign heap_bh6_w7_4 = n199_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:462:8  */
    assign heap_bh6_w8_4 = n200_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:463:8  */
    assign heap_bh6_w9_3 = n201_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:464:8  */
    assign heap_bh6_w10_3 = n202_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:465:8  */
    assign heap_bh6_w11_3 = n203_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:466:8  */
    assign y2x1_7_m5 = n204_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:467:8  */
    assign pp7x1y2_m5 = pp_m5_7x1y2_tbl_n205; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:468:8  */
    assign heap_bh6_w9_4 = n208_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:469:8  */
    assign heap_bh6_w10_4 = n209_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:470:8  */
    assign heap_bh6_w11_4 = n210_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:471:8  */
    assign heap_bh6_w12_1 = n211_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:472:8  */
    assign heap_bh6_w13_1 = n212_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:473:8  */
    assign heap_bh6_w14_1 = n213_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:474:8  */
    assign y2x2_7_m5 = n214_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:475:8  */
    assign pp7x2y2_m5 = pp_m5_7x2y2_tbl_n215; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:476:8  */
    assign heap_bh6_w12_2 = n218_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:477:8  */
    assign heap_bh6_w13_2 = n219_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:478:8  */
    assign heap_bh6_w14_2 = n220_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:479:8  */
    assign heap_bh6_w15_0 = n221_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:480:8  */
    assign heap_bh6_w16_0 = n222_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:481:8  */
    assign heap_bh6_w17_0 = n223_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:482:8  */
    assign tempr_bh6_0 = n225_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:483:8  */
    assign compressorin_bh6_0_0 = n228_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:484:8  */
    assign compressorin_bh6_0_1 = heap_bh6_w7_4; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:485:8  */
    assign compressorout_bh6_0_0 = compressor_bh6_0_n229; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:486:8  */
    assign heap_bh6_w6_5 = n232_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:487:8  */
    assign heap_bh6_w7_5 = n233_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:488:8  */
    assign heap_bh6_w8_5 = n234_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:489:8  */
    assign compressorin_bh6_1_2 = n237_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:490:8  */
    assign compressorin_bh6_1_3 = heap_bh6_w8_4; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:491:8  */
    assign compressorout_bh6_1_1 = compressor_bh6_1_n238; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:492:8  */
    assign heap_bh6_w7_6 = n241_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:493:8  */
    assign heap_bh6_w8_6 = n242_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:494:8  */
    assign heap_bh6_w9_5 = n243_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:495:8  */
    assign compressorin_bh6_2_4 = n246_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:496:8  */
    assign compressorin_bh6_2_5 = heap_bh6_w9_4; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:497:8  */
    assign compressorout_bh6_2_2 = compressor_bh6_2_n247; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:498:8  */
    assign heap_bh6_w8_7 = n250_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:499:8  */
    assign heap_bh6_w9_6 = n251_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:500:8  */
    assign heap_bh6_w10_5 = n252_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:501:8  */
    assign compressorin_bh6_3_6 = n255_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:502:8  */
    assign compressorin_bh6_3_7 = heap_bh6_w10_4; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:503:8  */
    assign compressorout_bh6_3_3 = compressor_bh6_3_n256; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:504:8  */
    assign heap_bh6_w9_7 = n259_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:505:8  */
    assign heap_bh6_w10_6 = n260_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:506:8  */
    assign heap_bh6_w11_5 = n261_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:507:8  */
    assign compressorin_bh6_4_8 = n264_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:508:8  */
    assign compressorin_bh6_4_9 = heap_bh6_w11_4; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:509:8  */
    assign compressorout_bh6_4_4 = compressor_bh6_4_n265; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:510:8  */
    assign heap_bh6_w10_7 = n268_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:511:8  */
    assign heap_bh6_w11_6 = n269_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:512:8  */
    assign heap_bh6_w12_3 = n270_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:513:8  */
    assign compressorin_bh6_5_10 = n273_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:514:8  */
    assign compressorin_bh6_5_11 = heap_bh6_w12_2; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:515:8  */
    assign compressorout_bh6_5_5 = compressor_bh6_5_n274; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:516:8  */
    assign heap_bh6_w11_7 = n277_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:517:8  */
    assign heap_bh6_w12_4 = n278_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:518:8  */
    assign heap_bh6_w13_3 = n279_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:519:8  */
    assign compressorin_bh6_6_12 = n281_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:520:8  */
    assign compressorin_bh6_6_13 = n282_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:521:8  */
    assign compressorout_bh6_6_6 = compressor_bh6_6_n283; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:522:8  */
    assign heap_bh6_w3_3 = n286_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:523:8  */
    assign heap_bh6_w4_3 = n287_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:524:8  */
    assign heap_bh6_w5_3 = n288_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:525:8  */
    assign compressorin_bh6_7_14 = n290_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:526:8  */
    assign compressorin_bh6_7_15 = n291_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:527:8  */
    assign compressorout_bh6_7_7 = compressor_bh6_7_n292; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:528:8  */
    assign heap_bh6_w13_4 = n295_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:529:8  */
    assign heap_bh6_w14_3 = n296_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:530:8  */
    assign heap_bh6_w15_1 = n297_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:531:8  */
    assign compressorin_bh6_8_16 = n299_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:532:8  */
    assign compressorin_bh6_8_17 = heap_bh6_w6_0; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:533:8  */
    assign compressorout_bh6_8_8 = compressor_bh6_8_n300; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:534:8  */
    assign heap_bh6_w5_4 = n303_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:535:8  */
    assign heap_bh6_w6_6 = n304_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:536:8  */
    assign heap_bh6_w7_7 = n305_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:537:8  */
    assign tempr_bh6_1 = heap_bh6_w3_3; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:538:8  */
    assign compressorin_bh6_9_18 = n308_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:539:8  */
    assign compressorin_bh6_9_19 = heap_bh6_w13_4; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:540:8  */
    assign compressorout_bh6_9_9 = compressor_bh6_9_n309; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:541:8  */
    assign heap_bh6_w12_5 = n312_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:542:8  */
    assign heap_bh6_w13_5 = n313_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:543:8  */
    assign heap_bh6_w14_4 = n314_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:544:8  */
    assign compressorin_bh6_10_20 = n316_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:545:8  */
    assign compressorin_bh6_10_21 = n317_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:546:8  */
    assign compressorout_bh6_10_10 = compressor_bh6_10_n318; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:547:8  */
    assign heap_bh6_w7_8 = n321_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:548:8  */
    assign heap_bh6_w8_8 = n322_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:549:8  */
    assign heap_bh6_w9_8 = n323_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:550:8  */
    assign compressorin_bh6_11_22 = n325_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:551:8  */
    assign compressorin_bh6_11_23 = n326_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:552:8  */
    assign compressorout_bh6_11_11 = compressor_bh6_11_n327; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:553:8  */
    assign heap_bh6_w9_9 = n330_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:554:8  */
    assign heap_bh6_w10_8 = n331_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:555:8  */
    assign heap_bh6_w11_8 = n332_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:556:8  */
    assign compressorin_bh6_12_24 = n334_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:557:8  */
    assign compressorout_bh6_12_12 = compressor_bh6_12_n335; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:558:8  */
    assign heap_bh6_w11_9 = n338_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:559:8  */
    assign heap_bh6_w12_6 = n339_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:560:8  */
    assign compressorin_bh6_13_25 = n341_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:561:8  */
    assign compressorin_bh6_13_26 = n342_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:562:8  */
    assign compressorout_bh6_13_13 = compressor_bh6_13_n343; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:563:8  */
    assign heap_bh6_w14_5 = n346_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:564:8  */
    assign heap_bh6_w15_2 = n347_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:565:8  */
    assign heap_bh6_w16_1 = n348_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:566:8  */
    assign finaladderin0_bh6 = n363_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:567:8  */
    assign finaladderin1_bh6 = n380_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:568:8  */
    assign finaladdercin_bh6 = 1'b0; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:569:8  */
    assign finaladderout_bh6 = adder_final6_0_n382; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:570:8  */
    assign compressionresult6 = n386_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:587:23  */
    assign n128_o = xp_m5b7[2:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:588:23  */
    assign n129_o = xp_m5b7[5:3];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:589:23  */
    assign n130_o = xp_m5b7[8:6];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:590:23  */
    assign n131_o = yp_m5b7[2:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:591:23  */
    assign n132_o = yp_m5b7[5:3];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:592:23  */
    assign n133_o = yp_m5b7[8:6];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:595:26  */
    assign n134_o = {y_m5b7_0, x_m5b7_0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:600:23  */
    assign pp_m5_7x0y0_tbl_n135 = pp_m5_7x0y0_tbl_y; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:596:4  */
    smallmulttablep3x3r6xuyu_f300_uid9 pp_m5_7x0y0_tbl(
        .clk(clk),
        .rst(rst),
        .x(y0x0_7_m5),
        .y(pp_m5_7x0y0_tbl_y));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:602:31  */
    assign n138_o = pp7x0y0_m5[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:603:31  */
    assign n139_o = pp7x0y0_m5[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:604:31  */
    assign n140_o = pp7x0y0_m5[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:605:31  */
    assign n141_o = pp7x0y0_m5[3];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:606:31  */
    assign n142_o = pp7x0y0_m5[4];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:607:31  */
    assign n143_o = pp7x0y0_m5[5];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:609:26  */
    assign n144_o = {y_m5b7_0, x_m5b7_1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:614:23  */
    assign pp_m5_7x1y0_tbl_n145 = pp_m5_7x1y0_tbl_y; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:610:4  */
    smallmulttablep3x3r6xuyu_f300_uid9 pp_m5_7x1y0_tbl(
        .clk(clk),
        .rst(rst),
        .x(y0x1_7_m5),
        .y(pp_m5_7x1y0_tbl_y));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:616:31  */
    assign n148_o = pp7x1y0_m5[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:617:31  */
    assign n149_o = pp7x1y0_m5[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:618:31  */
    assign n150_o = pp7x1y0_m5[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:619:31  */
    assign n151_o = pp7x1y0_m5[3];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:620:31  */
    assign n152_o = pp7x1y0_m5[4];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:621:31  */
    assign n153_o = pp7x1y0_m5[5];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:623:26  */
    assign n154_o = {y_m5b7_0, x_m5b7_2};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:628:23  */
    assign pp_m5_7x2y0_tbl_n155 = pp_m5_7x2y0_tbl_y; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:624:4  */
    smallmulttablep3x3r6xuyu_f300_uid9 pp_m5_7x2y0_tbl(
        .clk(clk),
        .rst(rst),
        .x(y0x2_7_m5),
        .y(pp_m5_7x2y0_tbl_y));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:630:31  */
    assign n158_o = pp7x2y0_m5[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:631:31  */
    assign n159_o = pp7x2y0_m5[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:632:31  */
    assign n160_o = pp7x2y0_m5[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:633:31  */
    assign n161_o = pp7x2y0_m5[3];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:634:32  */
    assign n162_o = pp7x2y0_m5[4];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:635:32  */
    assign n163_o = pp7x2y0_m5[5];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:638:26  */
    assign n164_o = {y_m5b7_1, x_m5b7_0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:643:23  */
    assign pp_m5_7x0y1_tbl_n165 = pp_m5_7x0y1_tbl_y; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:639:4  */
    smallmulttablep3x3r6xuyu_f300_uid9 pp_m5_7x0y1_tbl(
        .clk(clk),
        .rst(rst),
        .x(y1x0_7_m5),
        .y(pp_m5_7x0y1_tbl_y));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:645:31  */
    assign n168_o = pp7x0y1_m5[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:646:31  */
    assign n169_o = pp7x0y1_m5[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:647:31  */
    assign n170_o = pp7x0y1_m5[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:648:31  */
    assign n171_o = pp7x0y1_m5[3];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:649:31  */
    assign n172_o = pp7x0y1_m5[4];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:650:31  */
    assign n173_o = pp7x0y1_m5[5];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:652:26  */
    assign n174_o = {y_m5b7_1, x_m5b7_1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:657:23  */
    assign pp_m5_7x1y1_tbl_n175 = pp_m5_7x1y1_tbl_y; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:653:4  */
    smallmulttablep3x3r6xuyu_f300_uid9 pp_m5_7x1y1_tbl(
        .clk(clk),
        .rst(rst),
        .x(y1x1_7_m5),
        .y(pp_m5_7x1y1_tbl_y));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:659:31  */
    assign n178_o = pp7x1y1_m5[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:660:31  */
    assign n179_o = pp7x1y1_m5[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:661:31  */
    assign n180_o = pp7x1y1_m5[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:662:31  */
    assign n181_o = pp7x1y1_m5[3];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:663:32  */
    assign n182_o = pp7x1y1_m5[4];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:664:32  */
    assign n183_o = pp7x1y1_m5[5];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:666:26  */
    assign n184_o = {y_m5b7_1, x_m5b7_2};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:671:23  */
    assign pp_m5_7x2y1_tbl_n185 = pp_m5_7x2y1_tbl_y; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:667:4  */
    smallmulttablep3x3r6xuyu_f300_uid9 pp_m5_7x2y1_tbl(
        .clk(clk),
        .rst(rst),
        .x(y1x2_7_m5),
        .y(pp_m5_7x2y1_tbl_y));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:673:31  */
    assign n188_o = pp7x2y1_m5[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:674:32  */
    assign n189_o = pp7x2y1_m5[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:675:32  */
    assign n190_o = pp7x2y1_m5[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:676:32  */
    assign n191_o = pp7x2y1_m5[3];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:677:32  */
    assign n192_o = pp7x2y1_m5[4];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:678:32  */
    assign n193_o = pp7x2y1_m5[5];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:681:26  */
    assign n194_o = {y_m5b7_2, x_m5b7_0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:686:23  */
    assign pp_m5_7x0y2_tbl_n195 = pp_m5_7x0y2_tbl_y; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:682:4  */
    smallmulttablep3x3r6xuyu_f300_uid9 pp_m5_7x0y2_tbl(
        .clk(clk),
        .rst(rst),
        .x(y2x0_7_m5),
        .y(pp_m5_7x0y2_tbl_y));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:688:31  */
    assign n198_o = pp7x0y2_m5[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:689:31  */
    assign n199_o = pp7x0y2_m5[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:690:31  */
    assign n200_o = pp7x0y2_m5[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:691:31  */
    assign n201_o = pp7x0y2_m5[3];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:692:32  */
    assign n202_o = pp7x0y2_m5[4];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:693:32  */
    assign n203_o = pp7x0y2_m5[5];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:695:26  */
    assign n204_o = {y_m5b7_2, x_m5b7_1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:700:23  */
    assign pp_m5_7x1y2_tbl_n205 = pp_m5_7x1y2_tbl_y; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:696:4  */
    smallmulttablep3x3r6xuyu_f300_uid9 pp_m5_7x1y2_tbl(
        .clk(clk),
        .rst(rst),
        .x(y2x1_7_m5),
        .y(pp_m5_7x1y2_tbl_y));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:702:31  */
    assign n208_o = pp7x1y2_m5[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:703:32  */
    assign n209_o = pp7x1y2_m5[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:704:32  */
    assign n210_o = pp7x1y2_m5[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:705:32  */
    assign n211_o = pp7x1y2_m5[3];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:706:32  */
    assign n212_o = pp7x1y2_m5[4];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:707:32  */
    assign n213_o = pp7x1y2_m5[5];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:709:26  */
    assign n214_o = {y_m5b7_2, x_m5b7_2};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:714:23  */
    assign pp_m5_7x2y2_tbl_n215 = pp_m5_7x2y2_tbl_y; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:710:4  */
    smallmulttablep3x3r6xuyu_f300_uid9 pp_m5_7x2y2_tbl(
        .clk(clk),
        .rst(rst),
        .x(y2x2_7_m5),
        .y(pp_m5_7x2y2_tbl_y));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:716:32  */
    assign n218_o = pp7x2y2_m5[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:717:32  */
    assign n219_o = pp7x2y2_m5[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:718:32  */
    assign n220_o = pp7x2y2_m5[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:719:32  */
    assign n221_o = pp7x2y2_m5[3];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:720:32  */
    assign n222_o = pp7x2y2_m5[4];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:721:32  */
    assign n223_o = pp7x2y2_m5[5];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:733:33  */
    assign n224_o = {heap_bh6_w2_0, heap_bh6_w1_0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:733:49  */
    assign n225_o = {n224_o, heap_bh6_w0_0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:736:42  */
    assign n226_o = {heap_bh6_w6_4, heap_bh6_w6_3};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:736:58  */
    assign n227_o = {n226_o, heap_bh6_w6_2};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:736:74  */
    assign n228_o = {n227_o, heap_bh6_w6_1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:739:23  */
    assign compressor_bh6_0_n229 = compressor_bh6_0_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:738:7  */
    compressor_14_3 compressor_bh6_0(
        .x0(compressorin_bh6_0_0),
        .x1(compressorin_bh6_0_1),
        .r(compressor_bh6_0_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:742:42  */
    assign n232_o = compressorout_bh6_0_0[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:743:42  */
    assign n233_o = compressorout_bh6_0_0[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:744:42  */
    assign n234_o = compressorout_bh6_0_0[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:747:42  */
    assign n235_o = {heap_bh6_w7_3, heap_bh6_w7_2};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:747:58  */
    assign n236_o = {n235_o, heap_bh6_w7_1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:747:74  */
    assign n237_o = {n236_o, heap_bh6_w7_0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:750:23  */
    assign compressor_bh6_1_n238 = compressor_bh6_1_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:749:7  */
    compressor_14_3 compressor_bh6_1(
        .x0(compressorin_bh6_1_2),
        .x1(compressorin_bh6_1_3),
        .r(compressor_bh6_1_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:753:42  */
    assign n241_o = compressorout_bh6_1_1[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:754:42  */
    assign n242_o = compressorout_bh6_1_1[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:755:42  */
    assign n243_o = compressorout_bh6_1_1[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:758:42  */
    assign n244_o = {heap_bh6_w8_3, heap_bh6_w8_2};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:758:58  */
    assign n245_o = {n244_o, heap_bh6_w8_1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:758:74  */
    assign n246_o = {n245_o, heap_bh6_w8_0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:761:23  */
    assign compressor_bh6_2_n247 = compressor_bh6_2_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:760:7  */
    compressor_14_3 compressor_bh6_2(
        .x0(compressorin_bh6_2_4),
        .x1(compressorin_bh6_2_5),
        .r(compressor_bh6_2_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:764:42  */
    assign n250_o = compressorout_bh6_2_2[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:765:42  */
    assign n251_o = compressorout_bh6_2_2[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:766:43  */
    assign n252_o = compressorout_bh6_2_2[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:769:42  */
    assign n253_o = {heap_bh6_w9_3, heap_bh6_w9_2};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:769:58  */
    assign n254_o = {n253_o, heap_bh6_w9_1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:769:74  */
    assign n255_o = {n254_o, heap_bh6_w9_0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:772:23  */
    assign compressor_bh6_3_n256 = compressor_bh6_3_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:771:7  */
    compressor_14_3 compressor_bh6_3(
        .x0(compressorin_bh6_3_6),
        .x1(compressorin_bh6_3_7),
        .r(compressor_bh6_3_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:775:42  */
    assign n259_o = compressorout_bh6_3_3[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:776:43  */
    assign n260_o = compressorout_bh6_3_3[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:777:43  */
    assign n261_o = compressorout_bh6_3_3[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:780:43  */
    assign n262_o = {heap_bh6_w10_3, heap_bh6_w10_2};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:780:60  */
    assign n263_o = {n262_o, heap_bh6_w10_1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:780:77  */
    assign n264_o = {n263_o, heap_bh6_w10_0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:783:23  */
    assign compressor_bh6_4_n265 = compressor_bh6_4_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:782:7  */
    compressor_14_3 compressor_bh6_4(
        .x0(compressorin_bh6_4_8),
        .x1(compressorin_bh6_4_9),
        .r(compressor_bh6_4_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:786:43  */
    assign n268_o = compressorout_bh6_4_4[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:787:43  */
    assign n269_o = compressorout_bh6_4_4[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:788:43  */
    assign n270_o = compressorout_bh6_4_4[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:791:44  */
    assign n271_o = {heap_bh6_w11_3, heap_bh6_w11_2};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:791:61  */
    assign n272_o = {n271_o, heap_bh6_w11_1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:791:78  */
    assign n273_o = {n272_o, heap_bh6_w11_0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:794:23  */
    assign compressor_bh6_5_n274 = compressor_bh6_5_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:793:7  */
    compressor_14_3 compressor_bh6_5(
        .x0(compressorin_bh6_5_10),
        .x1(compressorin_bh6_5_11),
        .r(compressor_bh6_5_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:797:43  */
    assign n277_o = compressorout_bh6_5_5[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:798:43  */
    assign n278_o = compressorout_bh6_5_5[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:799:43  */
    assign n279_o = compressorout_bh6_5_5[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:802:43  */
    assign n280_o = {heap_bh6_w3_2, heap_bh6_w3_1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:802:59  */
    assign n281_o = {n280_o, heap_bh6_w3_0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:803:43  */
    assign n282_o = {heap_bh6_w4_2, heap_bh6_w4_1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:805:23  */
    assign compressor_bh6_6_n283 = compressor_bh6_6_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:804:7  */
    compressor_23_3 compressor_bh6_6(
        .x0(compressorin_bh6_6_12),
        .x1(compressorin_bh6_6_13),
        .r(compressor_bh6_6_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:808:42  */
    assign n286_o = compressorout_bh6_6_6[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:809:42  */
    assign n287_o = compressorout_bh6_6_6[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:810:42  */
    assign n288_o = compressorout_bh6_6_6[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:813:44  */
    assign n289_o = {heap_bh6_w13_2, heap_bh6_w13_1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:813:61  */
    assign n290_o = {n289_o, heap_bh6_w13_0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:814:44  */
    assign n291_o = {heap_bh6_w14_2, heap_bh6_w14_1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:816:23  */
    assign compressor_bh6_7_n292 = compressor_bh6_7_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:815:7  */
    compressor_23_3 compressor_bh6_7(
        .x0(compressorin_bh6_7_14),
        .x1(compressorin_bh6_7_15),
        .r(compressor_bh6_7_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:819:43  */
    assign n295_o = compressorout_bh6_7_7[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:820:43  */
    assign n296_o = compressorout_bh6_7_7[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:821:43  */
    assign n297_o = compressorout_bh6_7_7[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:824:43  */
    assign n298_o = {heap_bh6_w5_2, heap_bh6_w5_1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:824:59  */
    assign n299_o = {n298_o, heap_bh6_w5_0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:827:23  */
    assign compressor_bh6_8_n300 = compressor_bh6_8_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:826:7  */
    compressor_13_3 compressor_bh6_8(
        .x0(compressorin_bh6_8_16),
        .x1(compressorin_bh6_8_17),
        .r(compressor_bh6_8_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:830:42  */
    assign n303_o = compressorout_bh6_8_8[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:831:42  */
    assign n304_o = compressorout_bh6_8_8[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:832:42  */
    assign n305_o = compressorout_bh6_8_8[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:837:44  */
    assign n306_o = {heap_bh6_w12_1, heap_bh6_w12_0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:837:61  */
    assign n307_o = {n306_o, heap_bh6_w12_4};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:837:78  */
    assign n308_o = {n307_o, heap_bh6_w12_3};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:840:23  */
    assign compressor_bh6_9_n309 = compressor_bh6_9_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:839:7  */
    compressor_14_3 compressor_bh6_9(
        .x0(compressorin_bh6_9_18),
        .x1(compressorin_bh6_9_19),
        .r(compressor_bh6_9_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:843:43  */
    assign n312_o = compressorout_bh6_9_9[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:844:43  */
    assign n313_o = compressorout_bh6_9_9[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:845:43  */
    assign n314_o = compressorout_bh6_9_9[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:848:44  */
    assign n315_o = {heap_bh6_w7_7, heap_bh6_w7_6};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:848:60  */
    assign n316_o = {n315_o, heap_bh6_w7_5};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:849:44  */
    assign n317_o = {heap_bh6_w8_7, heap_bh6_w8_6};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:851:23  */
    assign compressor_bh6_10_n318 = compressor_bh6_10_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:850:7  */
    compressor_23_3 compressor_bh6_10(
        .x0(compressorin_bh6_10_20),
        .x1(compressorin_bh6_10_21),
        .r(compressor_bh6_10_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:854:44  */
    assign n321_o = compressorout_bh6_10_10[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:855:44  */
    assign n322_o = compressorout_bh6_10_10[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:856:44  */
    assign n323_o = compressorout_bh6_10_10[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:859:44  */
    assign n324_o = {heap_bh6_w9_7, heap_bh6_w9_6};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:859:60  */
    assign n325_o = {n324_o, heap_bh6_w9_5};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:860:45  */
    assign n326_o = {heap_bh6_w10_7, heap_bh6_w10_6};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:862:23  */
    assign compressor_bh6_11_n327 = compressor_bh6_11_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:861:7  */
    compressor_23_3 compressor_bh6_11(
        .x0(compressorin_bh6_11_22),
        .x1(compressorin_bh6_11_23),
        .r(compressor_bh6_11_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:865:44  */
    assign n330_o = compressorout_bh6_11_11[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:866:45  */
    assign n331_o = compressorout_bh6_11_11[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:867:45  */
    assign n332_o = compressorout_bh6_11_11[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:870:45  */
    assign n333_o = {heap_bh6_w11_7, heap_bh6_w11_6};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:870:62  */
    assign n334_o = {n333_o, heap_bh6_w11_5};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:872:23  */
    assign compressor_bh6_12_n335 = compressor_bh6_12_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:871:7  */
    compressor_3_2 compressor_bh6_12(
        .x0(compressorin_bh6_12_24),
        .r(compressor_bh6_12_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:874:45  */
    assign n338_o = compressorout_bh6_12_12[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:875:45  */
    assign n339_o = compressorout_bh6_12_12[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:878:45  */
    assign n340_o = {heap_bh6_w14_0, heap_bh6_w14_3};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:878:62  */
    assign n341_o = {n340_o, heap_bh6_w14_4};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:879:45  */
    assign n342_o = {heap_bh6_w15_0, heap_bh6_w15_1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:881:23  */
    assign compressor_bh6_13_n343 = compressor_bh6_13_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:880:7  */
    compressor_23_3 compressor_bh6_13(
        .x0(compressorin_bh6_13_25),
        .x1(compressorin_bh6_13_26),
        .r(compressor_bh6_13_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:884:45  */
    assign n346_o = compressorout_bh6_13_13[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:885:45  */
    assign n347_o = compressorout_bh6_13_13[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:886:45  */
    assign n348_o = compressorout_bh6_13_13[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:888:29  */
    assign n350_o = {1'b0, heap_bh6_w17_0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:888:46  */
    assign n351_o = {n350_o, heap_bh6_w16_0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:888:63  */
    assign n352_o = {n351_o, heap_bh6_w15_2};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:888:80  */
    assign n353_o = {n352_o, heap_bh6_w14_5};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:888:97  */
    assign n354_o = {n353_o, heap_bh6_w13_3};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:888:114  */
    assign n355_o = {n354_o, heap_bh6_w12_6};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:888:131  */
    assign n356_o = {n355_o, heap_bh6_w11_9};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:888:148  */
    assign n357_o = {n356_o, heap_bh6_w10_5};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:888:165  */
    assign n358_o = {n357_o, heap_bh6_w9_9};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:888:181  */
    assign n359_o = {n358_o, heap_bh6_w8_5};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:888:197  */
    assign n360_o = {n359_o, heap_bh6_w7_8};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:888:213  */
    assign n361_o = {n360_o, heap_bh6_w6_6};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:888:229  */
    assign n362_o = {n361_o, heap_bh6_w5_4};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:888:245  */
    assign n363_o = {n362_o, heap_bh6_w4_0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:889:35  */
    assign n365_o = {2'b00, heap_bh6_w16_1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:889:52  */
    assign n367_o = {n365_o, 1'b0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:889:58  */
    assign n369_o = {n367_o, 1'b0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:889:64  */
    assign n370_o = {n369_o, heap_bh6_w13_5};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:889:81  */
    assign n371_o = {n370_o, heap_bh6_w12_5};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:889:98  */
    assign n372_o = {n371_o, heap_bh6_w11_8};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:889:115  */
    assign n373_o = {n372_o, heap_bh6_w10_8};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:889:132  */
    assign n374_o = {n373_o, heap_bh6_w9_8};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:889:148  */
    assign n375_o = {n374_o, heap_bh6_w8_8};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:889:164  */
    assign n377_o = {n375_o, 1'b0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:889:170  */
    assign n378_o = {n377_o, heap_bh6_w6_5};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:889:186  */
    assign n379_o = {n378_o, heap_bh6_w5_3};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:889:202  */
    assign n380_o = {n379_o, heap_bh6_w4_3};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:895:23  */
    assign adder_final6_0_n382 = adder_final6_0_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:891:7  */
    intadder_15_f300_uid64 adder_final6_0(
        .clk(clk),
        .rst(rst),
        .x(finaladderin0_bh6),
        .y(finaladderin1_bh6),
        .cin(finaladdercin_bh6),
        .r(adder_final6_0_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:899:44  */
    assign n385_o = {finaladderout_bh6, tempr_bh6_1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:899:58  */
    assign n386_o = {n385_o, tempr_bh6_0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:901:27  */
    assign n387_o = compressionresult6[17:0];
endmodule

module fmul #(parameter ID = 1)
    (input clk,
        input rst,
        input[18:0] X,
        input[18:0] Y,
        output[18:0] R);
    wire sign;
    wire sign_d1;
    wire[7:0] expx;
    wire[7:0] expy;
    wire[9:0] expsumpresub;
    wire[9:0] bias;
    wire[9:0] expsum;
    wire[8:0] sigx;
    wire[8:0] sigy;
    wire[17:0] sigprod;
    wire[3:0] excsel;
    wire[1:0] exc;
    wire[1:0] exc_d1;
    wire norm;
    wire[9:0] exppostnorm;
    wire[17:0] sigprodext;
    wire[17:0] sigprodext_d1;
    wire[17:0] expsig;
    wire[17:0] expsig_d1;
    wire sticky;
    wire sticky_d1;
    wire guard;
    wire round;
    wire[17:0] expsigpostround;
    wire[1:0] excpostnorm;
    wire[1:0] finalexc;
    reg n10_q;
    reg[1:0] n11_q;
    reg[17:0] n12_q;
    reg[17:0] n13_q;
    reg n14_q;
    wire n15_o;
    wire n16_o;
    wire n17_o;
    wire[7:0] n18_o;
    wire[7:0] n19_o;
    wire[9:0] n21_o;
    wire[9:0] n23_o;
    wire[9:0] n24_o;
    wire[9:0] n26_o;
    wire[7:0] n27_o;
    wire[8:0] n29_o;
    wire[7:0] n30_o;
    wire[8:0] n32_o;
    wire[17:0] significandmultiplication_n33;
    wire[17:0] significandmultiplication_r;
    wire[1:0] n36_o;
    wire[1:0] n37_o;
    wire[3:0] n38_o;
    wire n41_o;
    wire n43_o;
    wire n44_o;
    wire n46_o;
    wire n47_o;
    wire n50_o;
    wire n53_o;
    wire n55_o;
    wire n56_o;
    wire n58_o;
    wire n59_o;
    wire[2:0] n61_o;
    reg[1:0] n62_o;
    wire n63_o;
    wire[9:0] n65_o;
    wire[9:0] n66_o;
    wire[16:0] n67_o;
    wire[17:0] n69_o;
    wire[17:0] n70_o;
    wire[15:0] n71_o;
    wire[17:0] n73_o;
    wire[7:0] n74_o;
    wire[17:0] n75_o;
    wire n76_o;
    wire[8:0] n78_o;
    wire n80_o;
    wire n81_o;
    wire n83_o;
    wire n84_o;
    wire n85_o;
    wire n86_o;
    wire n87_o;
    wire n88_o;
    localparam [17:0] n89_o = 18'b000000000000000000;
    wire[17:0] roundingadder_n90;
    wire[17:0] roundingadder_r;
    wire[1:0] n93_o;
    wire n96_o;
    wire n99_o;
    wire n102_o;
    wire n104_o;
    wire n105_o;
    wire[2:0] n107_o;
    reg[1:0] n108_o;
    wire n110_o;
    wire n112_o;
    wire n113_o;
    wire n115_o;
    wire n116_o;
    reg[1:0] n117_o;
    wire[2:0] n118_o;
    wire[15:0] n119_o;
    wire[18:0] n120_o;
    assign R = n120_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:980:8  */
    assign sign = n17_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:980:14  */
    assign sign_d1 = n10_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:981:8  */
    assign expx = n18_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:982:8  */
    assign expy = n19_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:983:8  */
    assign expsumpresub = n24_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:984:8  */
    assign bias = 10'b0001111111; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:985:8  */
    assign expsum = n26_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:986:8  */
    assign sigx = n29_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:987:8  */
    assign sigy = n32_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:988:8  */
    assign sigprod = significandmultiplication_n33; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:989:8  */
    assign excsel = n38_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:990:8  */
    assign exc = n62_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:990:13  */
    assign exc_d1 = n11_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:991:8  */
    assign norm = n63_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:992:8  */
    assign exppostnorm = n66_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:993:8  */
    assign sigprodext = n70_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:993:20  */
    assign sigprodext_d1 = n12_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:994:8  */
    assign expsig = n75_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:994:16  */
    assign expsig_d1 = n13_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:995:8  */
    assign sticky = n76_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:995:16  */
    assign sticky_d1 = n14_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:996:8  */
    assign guard = n81_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:997:8  */
    assign round = n88_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:998:8  */
    assign expsigpostround = roundingadder_n90; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:999:8  */
    assign excpostnorm = n108_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:1000:8  */
    assign finalexc = n117_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:1004:10  */
    always @(posedge clk)
        n10_q <= sign;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:1004:10  */
    always @(posedge clk)
        n11_q <= exc;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:1004:10  */
    always @(posedge clk)
        n12_q <= sigprodext;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:1004:10  */
    always @(posedge clk)
        n13_q <= expsig;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:1004:10  */
    always @(posedge clk)
        n14_q <= sticky;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:1012:13  */
    assign n15_o = X[16];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:1012:23  */
    assign n16_o = Y[16];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:1012:18  */
    assign n17_o = n15_o ^ n16_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:1013:13  */
    assign n18_o = X[15:8];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:1014:13  */
    assign n19_o = Y[15:8];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:1015:26  */
    assign n21_o = {2'b00, expx};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:1015:42  */
    assign n23_o = {2'b00, expy};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:1015:34  */
    assign n24_o = n21_o+n23_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:1017:27  */
    assign n26_o = expsumpresub-bias;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:1019:19  */
    assign n27_o = X[7:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:1019:16  */
    assign n29_o = {1'b1, n27_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:1020:19  */
    assign n30_o = Y[7:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:1020:16  */
    assign n32_o = {1'b1, n30_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:1024:23  */
    assign significandmultiplication_n33 = significandmultiplication_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:1021:4  */
    intmultiplier_usingdsp_9_9_18_unsigned_f300_uid4 significandmultiplication(
        .clk(clk),
        .rst(rst),
        .x(sigx),
        .y(sigy),
        .r(significandmultiplication_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:1028:15  */
    assign n36_o = X[18:17];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:1028:33  */
    assign n37_o = Y[18:17];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:1028:30  */
    assign n38_o = {n36_o, n37_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:1030:16  */
    assign n41_o = excsel == 4'b0000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:1030:29  */
    assign n43_o = excsel == 4'b0001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:1030:29  */
    assign n44_o = n41_o | n43_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:1030:38  */
    assign n46_o = excsel == 4'b0100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:1030:38  */
    assign n47_o = n44_o | n46_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:1031:16  */
    assign n50_o = excsel == 4'b0101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:1032:16  */
    assign n53_o = excsel == 4'b0110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:1032:28  */
    assign n55_o = excsel == 4'b1001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:1032:28  */
    assign n56_o = n53_o | n55_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:1032:37  */
    assign n58_o = excsel == 4'b1010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:1032:37  */
    assign n59_o = n56_o | n58_o;
    assign n61_o = {n59_o, n50_o, n47_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:1029:4  */
    always @*
        case (n61_o)
            3'b100: n62_o <= 2'b10;
            3'b010: n62_o <= 2'b01;
            3'b001: n62_o <= 2'b00;
            default: n62_o <= 2'b11;
        endcase
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:1034:19  */
    assign n63_o = sigprod[17];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:1036:41  */
    assign n65_o = {9'b000000000, norm};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:1036:26  */
    assign n66_o = expsum+n65_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:1038:25  */
    assign n67_o = sigprod[16:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:1038:39  */
    assign n69_o = {n67_o, 1'b0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:1038:45  */
    assign n70_o = norm ? n69_o : n73_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:1039:33  */
    assign n71_o = sigprod[15:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:1039:47  */
    assign n73_o = {n71_o, 2'b00};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:1040:38  */
    assign n74_o = sigprodext[17:10];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:1040:26  */
    assign n75_o = {exppostnorm, n74_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:1041:24  */
    assign n76_o = sigprodext[9];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:1043:35  */
    assign n78_o = sigprodext_d1[8:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:1043:47  */
    assign n80_o = n78_o == 9'b000000000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:1043:17  */
    assign n81_o = n80_o ? 1'b0 : 1'b1;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:1044:57  */
    assign n83_o = sigprodext_d1[10];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:1044:40  */
    assign n84_o = ~n83_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:1044:36  */
    assign n85_o = guard & n84_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:1044:81  */
    assign n86_o = sigprodext_d1[10];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:1044:64  */
    assign n87_o = n85_o | n86_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:1044:23  */
    assign n88_o = sticky_d1 & n87_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:1049:23  */
    assign roundingadder_n90 = roundingadder_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:1045:7  */
    intadder_18_f300_uid74 roundingadder(
        .clk(clk),
        .rst(rst),
        .x(expsig_d1),
        .y(n89_o),
        .cin(round),
        .r(roundingadder_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:1052:24  */
    assign n93_o = expsigpostround[17:16];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:1053:26  */
    assign n96_o = n93_o == 2'b00;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:1054:49  */
    assign n99_o = n93_o == 2'b01;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:1055:49  */
    assign n102_o = n93_o == 2'b11;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:1055:58  */
    assign n104_o = n93_o == 2'b10;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:1055:58  */
    assign n105_o = n102_o | n104_o;
    assign n107_o = {n105_o, n99_o, n96_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:1052:4  */
    always @*
        case (n107_o)
            3'b100: n108_o <= 2'b00;
            3'b010: n108_o <= 2'b10;
            3'b001: n108_o <= 2'b01;
            default: n108_o <= 2'b11;
        endcase
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:1058:23  */
    assign n110_o = exc_d1 == 2'b11;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:1058:33  */
    assign n112_o = exc_d1 == 2'b10;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:1058:33  */
    assign n113_o = n110_o | n112_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:1058:38  */
    assign n115_o = exc_d1 == 2'b00;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:1058:38  */
    assign n116_o = n113_o | n115_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:1057:4  */
    always @*
        case (n116_o)
            1'b1: n117_o <= exc_d1;
            default: n117_o <= excpostnorm;
        endcase
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:1060:18  */
    assign n118_o = {finalexc, sign_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:1060:45  */
    assign n119_o = expsigpostround[15:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_8_8.vhdl:1060:28  */
    assign n120_o = {n118_o, n119_o};
endmodule

