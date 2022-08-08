module intadder_14_f300_uid60
    (input clk,
        input rst,
        input[13:0] x,
        input[13:0] y,
        input cin,
        output[13:0] r);
    wire[13:0] n833_o;
    wire[13:0] n834_o;
    wire[13:0] n835_o;
    assign r = n835_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:299:12  */
    assign n833_o = x+y;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:299:16  */
    assign n834_o = {13'b0, cin};  //  uext
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:299:16  */
    assign n835_o = n833_o+n834_o;
endmodule

module compressor_13_3
    (input[2:0] x0,
        input x1,
        output[2:0] r);
    wire[3:0] x;
    wire[3:0] n776_o;
    wire n779_o;
    wire n782_o;
    wire n785_o;
    wire n788_o;
    wire n791_o;
    wire n794_o;
    wire n797_o;
    wire n800_o;
    wire n803_o;
    wire n806_o;
    wire n809_o;
    wire n812_o;
    wire n815_o;
    wire n818_o;
    wire n821_o;
    wire n824_o;
    wire[15:0] n826_o;
    reg[2:0] n827_o;
    assign r = n827_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:242:8  */
    assign x = n776_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:244:11  */
    assign n776_o = {x1, x0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:246:13  */
    assign n779_o = x == 4'b0000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:247:13  */
    assign n782_o = x == 4'b0001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:248:13  */
    assign n785_o = x == 4'b0010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:249:13  */
    assign n788_o = x == 4'b0011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:250:13  */
    assign n791_o = x == 4'b0100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:251:13  */
    assign n794_o = x == 4'b0101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:252:13  */
    assign n797_o = x == 4'b0110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:253:13  */
    assign n800_o = x == 4'b0111;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:254:13  */
    assign n803_o = x == 4'b1000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:255:13  */
    assign n806_o = x == 4'b1001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:256:13  */
    assign n809_o = x == 4'b1010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:257:13  */
    assign n812_o = x == 4'b1011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:258:13  */
    assign n815_o = x == 4'b1100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:259:13  */
    assign n818_o = x == 4'b1101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:260:13  */
    assign n821_o = x == 4'b1110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:261:13  */
    assign n824_o = x == 4'b1111;
    assign n826_o = {n824_o, n821_o, n818_o, n815_o, n812_o, n809_o, n806_o, n803_o, n800_o, n797_o, n794_o, n791_o, n788_o, n785_o, n782_o, n779_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:245:4  */
    always @*
        case (n826_o)
            16'b1000000000000000: n827_o <= 3'b101;
            16'b0100000000000000: n827_o <= 3'b100;
            16'b0010000000000000: n827_o <= 3'b100;
            16'b0001000000000000: n827_o <= 3'b011;
            16'b0000100000000000: n827_o <= 3'b100;
            16'b0000010000000000: n827_o <= 3'b011;
            16'b0000001000000000: n827_o <= 3'b011;
            16'b0000000100000000: n827_o <= 3'b010;
            16'b0000000010000000: n827_o <= 3'b011;
            16'b0000000001000000: n827_o <= 3'b010;
            16'b0000000000100000: n827_o <= 3'b010;
            16'b0000000000010000: n827_o <= 3'b001;
            16'b0000000000001000: n827_o <= 3'b010;
            16'b0000000000000100: n827_o <= 3'b001;
            16'b0000000000000010: n827_o <= 3'b001;
            16'b0000000000000001: n827_o <= 3'b000;
            default: n827_o <= 3'bXXX;
        endcase
endmodule

module compressor_23_3
    (input[2:0] x0,
        input[1:0] x1,
        output[2:0] r);
    wire[4:0] x;
    wire[4:0] n675_o;
    wire n678_o;
    wire n681_o;
    wire n684_o;
    wire n687_o;
    wire n690_o;
    wire n693_o;
    wire n696_o;
    wire n699_o;
    wire n702_o;
    wire n705_o;
    wire n708_o;
    wire n711_o;
    wire n714_o;
    wire n717_o;
    wire n720_o;
    wire n723_o;
    wire n726_o;
    wire n729_o;
    wire n732_o;
    wire n735_o;
    wire n738_o;
    wire n741_o;
    wire n744_o;
    wire n747_o;
    wire n750_o;
    wire n753_o;
    wire n756_o;
    wire n759_o;
    wire n762_o;
    wire n765_o;
    wire n768_o;
    wire n771_o;
    wire[31:0] n773_o;
    reg[2:0] n774_o;
    assign r = n774_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:179:8  */
    assign x = n675_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:181:11  */
    assign n675_o = {x1, x0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:183:13  */
    assign n678_o = x == 5'b00000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:184:13  */
    assign n681_o = x == 5'b00001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:185:13  */
    assign n684_o = x == 5'b00010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:186:13  */
    assign n687_o = x == 5'b00011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:187:13  */
    assign n690_o = x == 5'b00100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:188:13  */
    assign n693_o = x == 5'b00101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:189:13  */
    assign n696_o = x == 5'b00110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:190:13  */
    assign n699_o = x == 5'b00111;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:191:13  */
    assign n702_o = x == 5'b01000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:192:13  */
    assign n705_o = x == 5'b01001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:193:13  */
    assign n708_o = x == 5'b01010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:194:13  */
    assign n711_o = x == 5'b01011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:195:13  */
    assign n714_o = x == 5'b01100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:196:13  */
    assign n717_o = x == 5'b01101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:197:13  */
    assign n720_o = x == 5'b01110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:198:13  */
    assign n723_o = x == 5'b01111;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:199:13  */
    assign n726_o = x == 5'b10000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:200:13  */
    assign n729_o = x == 5'b10001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:201:13  */
    assign n732_o = x == 5'b10010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:202:13  */
    assign n735_o = x == 5'b10011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:203:13  */
    assign n738_o = x == 5'b10100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:204:13  */
    assign n741_o = x == 5'b10101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:205:13  */
    assign n744_o = x == 5'b10110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:206:13  */
    assign n747_o = x == 5'b10111;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:207:13  */
    assign n750_o = x == 5'b11000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:208:13  */
    assign n753_o = x == 5'b11001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:209:13  */
    assign n756_o = x == 5'b11010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:210:13  */
    assign n759_o = x == 5'b11011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:211:13  */
    assign n762_o = x == 5'b11100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:212:13  */
    assign n765_o = x == 5'b11101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:213:13  */
    assign n768_o = x == 5'b11110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:214:13  */
    assign n771_o = x == 5'b11111;
    assign n773_o = {n771_o, n768_o, n765_o, n762_o, n759_o, n756_o, n753_o, n750_o, n747_o, n744_o, n741_o, n738_o, n735_o, n732_o, n729_o, n726_o, n723_o, n720_o, n717_o, n714_o, n711_o, n708_o, n705_o, n702_o, n699_o, n696_o, n693_o, n690_o, n687_o, n684_o, n681_o, n678_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:182:4  */
    always @*
        case (n773_o)
            32'b10000000000000000000000000000000: n774_o <= 3'b111;
            32'b01000000000000000000000000000000: n774_o <= 3'b110;
            32'b00100000000000000000000000000000: n774_o <= 3'b110;
            32'b00010000000000000000000000000000: n774_o <= 3'b101;
            32'b00001000000000000000000000000000: n774_o <= 3'b110;
            32'b00000100000000000000000000000000: n774_o <= 3'b101;
            32'b00000010000000000000000000000000: n774_o <= 3'b101;
            32'b00000001000000000000000000000000: n774_o <= 3'b100;
            32'b00000000100000000000000000000000: n774_o <= 3'b101;
            32'b00000000010000000000000000000000: n774_o <= 3'b100;
            32'b00000000001000000000000000000000: n774_o <= 3'b100;
            32'b00000000000100000000000000000000: n774_o <= 3'b011;
            32'b00000000000010000000000000000000: n774_o <= 3'b100;
            32'b00000000000001000000000000000000: n774_o <= 3'b011;
            32'b00000000000000100000000000000000: n774_o <= 3'b011;
            32'b00000000000000010000000000000000: n774_o <= 3'b010;
            32'b00000000000000001000000000000000: n774_o <= 3'b101;
            32'b00000000000000000100000000000000: n774_o <= 3'b100;
            32'b00000000000000000010000000000000: n774_o <= 3'b100;
            32'b00000000000000000001000000000000: n774_o <= 3'b011;
            32'b00000000000000000000100000000000: n774_o <= 3'b100;
            32'b00000000000000000000010000000000: n774_o <= 3'b011;
            32'b00000000000000000000001000000000: n774_o <= 3'b011;
            32'b00000000000000000000000100000000: n774_o <= 3'b010;
            32'b00000000000000000000000010000000: n774_o <= 3'b011;
            32'b00000000000000000000000001000000: n774_o <= 3'b010;
            32'b00000000000000000000000000100000: n774_o <= 3'b010;
            32'b00000000000000000000000000010000: n774_o <= 3'b001;
            32'b00000000000000000000000000001000: n774_o <= 3'b010;
            32'b00000000000000000000000000000100: n774_o <= 3'b001;
            32'b00000000000000000000000000000010: n774_o <= 3'b001;
            32'b00000000000000000000000000000001: n774_o <= 3'b000;
            default: n774_o <= 3'bXXX;
        endcase
endmodule

module compressor_14_3
    (input[3:0] x0,
        input x1,
        output[2:0] r);
    wire[4:0] x;
    wire[4:0] n574_o;
    wire n577_o;
    wire n580_o;
    wire n583_o;
    wire n586_o;
    wire n589_o;
    wire n592_o;
    wire n595_o;
    wire n598_o;
    wire n601_o;
    wire n604_o;
    wire n607_o;
    wire n610_o;
    wire n613_o;
    wire n616_o;
    wire n619_o;
    wire n622_o;
    wire n625_o;
    wire n628_o;
    wire n631_o;
    wire n634_o;
    wire n637_o;
    wire n640_o;
    wire n643_o;
    wire n646_o;
    wire n649_o;
    wire n652_o;
    wire n655_o;
    wire n658_o;
    wire n661_o;
    wire n664_o;
    wire n667_o;
    wire n670_o;
    wire[31:0] n672_o;
    reg[2:0] n673_o;
    assign r = n673_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:116:8  */
    assign x = n574_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:118:11  */
    assign n574_o = {x1, x0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:120:13  */
    assign n577_o = x == 5'b00000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:121:13  */
    assign n580_o = x == 5'b00001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:122:13  */
    assign n583_o = x == 5'b00010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:123:13  */
    assign n586_o = x == 5'b00011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:124:13  */
    assign n589_o = x == 5'b00100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:125:13  */
    assign n592_o = x == 5'b00101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:126:13  */
    assign n595_o = x == 5'b00110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:127:13  */
    assign n598_o = x == 5'b00111;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:128:13  */
    assign n601_o = x == 5'b01000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:129:13  */
    assign n604_o = x == 5'b01001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:130:13  */
    assign n607_o = x == 5'b01010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:131:13  */
    assign n610_o = x == 5'b01011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:132:13  */
    assign n613_o = x == 5'b01100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:133:13  */
    assign n616_o = x == 5'b01101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:134:13  */
    assign n619_o = x == 5'b01110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:135:13  */
    assign n622_o = x == 5'b01111;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:136:13  */
    assign n625_o = x == 5'b10000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:137:13  */
    assign n628_o = x == 5'b10001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:138:13  */
    assign n631_o = x == 5'b10010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:139:13  */
    assign n634_o = x == 5'b10011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:140:13  */
    assign n637_o = x == 5'b10100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:141:13  */
    assign n640_o = x == 5'b10101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:142:13  */
    assign n643_o = x == 5'b10110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:143:13  */
    assign n646_o = x == 5'b10111;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:144:13  */
    assign n649_o = x == 5'b11000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:145:13  */
    assign n652_o = x == 5'b11001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:146:13  */
    assign n655_o = x == 5'b11010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:147:13  */
    assign n658_o = x == 5'b11011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:148:13  */
    assign n661_o = x == 5'b11100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:149:13  */
    assign n664_o = x == 5'b11101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:150:13  */
    assign n667_o = x == 5'b11110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:151:13  */
    assign n670_o = x == 5'b11111;
    assign n672_o = {n670_o, n667_o, n664_o, n661_o, n658_o, n655_o, n652_o, n649_o, n646_o, n643_o, n640_o, n637_o, n634_o, n631_o, n628_o, n625_o, n622_o, n619_o, n616_o, n613_o, n610_o, n607_o, n604_o, n601_o, n598_o, n595_o, n592_o, n589_o, n586_o, n583_o, n580_o, n577_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:119:4  */
    always @*
        case (n672_o)
            32'b10000000000000000000000000000000: n673_o <= 3'b110;
            32'b01000000000000000000000000000000: n673_o <= 3'b101;
            32'b00100000000000000000000000000000: n673_o <= 3'b101;
            32'b00010000000000000000000000000000: n673_o <= 3'b100;
            32'b00001000000000000000000000000000: n673_o <= 3'b101;
            32'b00000100000000000000000000000000: n673_o <= 3'b100;
            32'b00000010000000000000000000000000: n673_o <= 3'b100;
            32'b00000001000000000000000000000000: n673_o <= 3'b011;
            32'b00000000100000000000000000000000: n673_o <= 3'b101;
            32'b00000000010000000000000000000000: n673_o <= 3'b100;
            32'b00000000001000000000000000000000: n673_o <= 3'b100;
            32'b00000000000100000000000000000000: n673_o <= 3'b011;
            32'b00000000000010000000000000000000: n673_o <= 3'b100;
            32'b00000000000001000000000000000000: n673_o <= 3'b011;
            32'b00000000000000100000000000000000: n673_o <= 3'b011;
            32'b00000000000000010000000000000000: n673_o <= 3'b010;
            32'b00000000000000001000000000000000: n673_o <= 3'b100;
            32'b00000000000000000100000000000000: n673_o <= 3'b011;
            32'b00000000000000000010000000000000: n673_o <= 3'b011;
            32'b00000000000000000001000000000000: n673_o <= 3'b010;
            32'b00000000000000000000100000000000: n673_o <= 3'b011;
            32'b00000000000000000000010000000000: n673_o <= 3'b010;
            32'b00000000000000000000001000000000: n673_o <= 3'b010;
            32'b00000000000000000000000100000000: n673_o <= 3'b001;
            32'b00000000000000000000000010000000: n673_o <= 3'b011;
            32'b00000000000000000000000001000000: n673_o <= 3'b010;
            32'b00000000000000000000000000100000: n673_o <= 3'b010;
            32'b00000000000000000000000000010000: n673_o <= 3'b001;
            32'b00000000000000000000000000001000: n673_o <= 3'b010;
            32'b00000000000000000000000000000100: n673_o <= 3'b001;
            32'b00000000000000000000000000000010: n673_o <= 3'b001;
            32'b00000000000000000000000000000001: n673_o <= 3'b000;
            default: n673_o <= 3'bXXX;
        endcase
endmodule

module smallmulttablep3x3r6xuyu_f300_uid9
    (input clk,
        input rst,
        input[5:0] x,
        output[5:0] y);
    wire[5:0] tableout;
    wire n380_o;
    wire n383_o;
    wire n386_o;
    wire n389_o;
    wire n392_o;
    wire n395_o;
    wire n398_o;
    wire n401_o;
    wire n404_o;
    wire n407_o;
    wire n410_o;
    wire n413_o;
    wire n416_o;
    wire n419_o;
    wire n422_o;
    wire n425_o;
    wire n428_o;
    wire n431_o;
    wire n434_o;
    wire n437_o;
    wire n440_o;
    wire n443_o;
    wire n446_o;
    wire n449_o;
    wire n452_o;
    wire n455_o;
    wire n458_o;
    wire n461_o;
    wire n464_o;
    wire n467_o;
    wire n470_o;
    wire n473_o;
    wire n476_o;
    wire n479_o;
    wire n482_o;
    wire n485_o;
    wire n488_o;
    wire n491_o;
    wire n494_o;
    wire n497_o;
    wire n500_o;
    wire n503_o;
    wire n506_o;
    wire n509_o;
    wire n512_o;
    wire n515_o;
    wire n518_o;
    wire n521_o;
    wire n524_o;
    wire n527_o;
    wire n530_o;
    wire n533_o;
    wire n536_o;
    wire n539_o;
    wire n542_o;
    wire n545_o;
    wire n548_o;
    wire n551_o;
    wire n554_o;
    wire n557_o;
    wire n560_o;
    wire n563_o;
    wire n566_o;
    wire n569_o;
    wire[63:0] n571_o;
    reg[5:0] n572_o;
    assign y = tableout;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:17:8  */
    assign tableout = n572_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:25:13  */
    assign n380_o = x == 6'b000000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:26:13  */
    assign n383_o = x == 6'b000001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:27:13  */
    assign n386_o = x == 6'b000010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:28:13  */
    assign n389_o = x == 6'b000011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:29:13  */
    assign n392_o = x == 6'b000100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:30:13  */
    assign n395_o = x == 6'b000101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:31:13  */
    assign n398_o = x == 6'b000110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:32:13  */
    assign n401_o = x == 6'b000111;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:33:13  */
    assign n404_o = x == 6'b001000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:34:13  */
    assign n407_o = x == 6'b001001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:35:13  */
    assign n410_o = x == 6'b001010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:36:13  */
    assign n413_o = x == 6'b001011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:37:13  */
    assign n416_o = x == 6'b001100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:38:13  */
    assign n419_o = x == 6'b001101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:39:13  */
    assign n422_o = x == 6'b001110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:40:13  */
    assign n425_o = x == 6'b001111;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:41:13  */
    assign n428_o = x == 6'b010000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:42:13  */
    assign n431_o = x == 6'b010001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:43:13  */
    assign n434_o = x == 6'b010010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:44:13  */
    assign n437_o = x == 6'b010011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:45:13  */
    assign n440_o = x == 6'b010100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:46:13  */
    assign n443_o = x == 6'b010101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:47:13  */
    assign n446_o = x == 6'b010110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:48:13  */
    assign n449_o = x == 6'b010111;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:49:13  */
    assign n452_o = x == 6'b011000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:50:13  */
    assign n455_o = x == 6'b011001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:51:13  */
    assign n458_o = x == 6'b011010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:52:13  */
    assign n461_o = x == 6'b011011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:53:13  */
    assign n464_o = x == 6'b011100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:54:13  */
    assign n467_o = x == 6'b011101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:55:13  */
    assign n470_o = x == 6'b011110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:56:13  */
    assign n473_o = x == 6'b011111;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:57:13  */
    assign n476_o = x == 6'b100000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:58:13  */
    assign n479_o = x == 6'b100001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:59:13  */
    assign n482_o = x == 6'b100010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:60:13  */
    assign n485_o = x == 6'b100011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:61:13  */
    assign n488_o = x == 6'b100100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:62:13  */
    assign n491_o = x == 6'b100101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:63:13  */
    assign n494_o = x == 6'b100110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:64:13  */
    assign n497_o = x == 6'b100111;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:65:13  */
    assign n500_o = x == 6'b101000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:66:13  */
    assign n503_o = x == 6'b101001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:67:13  */
    assign n506_o = x == 6'b101010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:68:13  */
    assign n509_o = x == 6'b101011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:69:13  */
    assign n512_o = x == 6'b101100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:70:13  */
    assign n515_o = x == 6'b101101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:71:13  */
    assign n518_o = x == 6'b101110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:72:13  */
    assign n521_o = x == 6'b101111;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:73:13  */
    assign n524_o = x == 6'b110000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:74:13  */
    assign n527_o = x == 6'b110001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:75:13  */
    assign n530_o = x == 6'b110010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:76:13  */
    assign n533_o = x == 6'b110011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:77:13  */
    assign n536_o = x == 6'b110100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:78:13  */
    assign n539_o = x == 6'b110101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:79:13  */
    assign n542_o = x == 6'b110110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:80:13  */
    assign n545_o = x == 6'b110111;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:81:13  */
    assign n548_o = x == 6'b111000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:82:13  */
    assign n551_o = x == 6'b111001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:83:13  */
    assign n554_o = x == 6'b111010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:84:13  */
    assign n557_o = x == 6'b111011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:85:13  */
    assign n560_o = x == 6'b111100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:86:13  */
    assign n563_o = x == 6'b111101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:87:13  */
    assign n566_o = x == 6'b111110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:88:13  */
    assign n569_o = x == 6'b111111;
    assign n571_o = {n569_o, n566_o, n563_o, n560_o, n557_o, n554_o, n551_o, n548_o, n545_o, n542_o, n539_o, n536_o, n533_o, n530_o, n527_o, n524_o, n521_o, n518_o, n515_o, n512_o, n509_o, n506_o, n503_o, n500_o, n497_o, n494_o, n491_o, n488_o, n485_o, n482_o, n479_o, n476_o, n473_o, n470_o, n467_o, n464_o, n461_o, n458_o, n455_o, n452_o, n449_o, n446_o, n443_o, n440_o, n437_o, n434_o, n431_o, n428_o, n425_o, n422_o, n419_o, n416_o, n413_o, n410_o, n407_o, n404_o, n401_o, n398_o, n395_o, n392_o, n389_o, n386_o, n383_o, n380_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:24:3  */
    always @*
        case (n571_o)
            64'b1000000000000000000000000000000000000000000000000000000000000000: n572_o <= 6'b110001;
            64'b0100000000000000000000000000000000000000000000000000000000000000: n572_o <= 6'b101010;
            64'b0010000000000000000000000000000000000000000000000000000000000000: n572_o <= 6'b100011;
            64'b0001000000000000000000000000000000000000000000000000000000000000: n572_o <= 6'b011100;
            64'b0000100000000000000000000000000000000000000000000000000000000000: n572_o <= 6'b010101;
            64'b0000010000000000000000000000000000000000000000000000000000000000: n572_o <= 6'b001110;
            64'b0000001000000000000000000000000000000000000000000000000000000000: n572_o <= 6'b000111;
            64'b0000000100000000000000000000000000000000000000000000000000000000: n572_o <= 6'b000000;
            64'b0000000010000000000000000000000000000000000000000000000000000000: n572_o <= 6'b101010;
            64'b0000000001000000000000000000000000000000000000000000000000000000: n572_o <= 6'b100100;
            64'b0000000000100000000000000000000000000000000000000000000000000000: n572_o <= 6'b011110;
            64'b0000000000010000000000000000000000000000000000000000000000000000: n572_o <= 6'b011000;
            64'b0000000000001000000000000000000000000000000000000000000000000000: n572_o <= 6'b010010;
            64'b0000000000000100000000000000000000000000000000000000000000000000: n572_o <= 6'b001100;
            64'b0000000000000010000000000000000000000000000000000000000000000000: n572_o <= 6'b000110;
            64'b0000000000000001000000000000000000000000000000000000000000000000: n572_o <= 6'b000000;
            64'b0000000000000000100000000000000000000000000000000000000000000000: n572_o <= 6'b100011;
            64'b0000000000000000010000000000000000000000000000000000000000000000: n572_o <= 6'b011110;
            64'b0000000000000000001000000000000000000000000000000000000000000000: n572_o <= 6'b011001;
            64'b0000000000000000000100000000000000000000000000000000000000000000: n572_o <= 6'b010100;
            64'b0000000000000000000010000000000000000000000000000000000000000000: n572_o <= 6'b001111;
            64'b0000000000000000000001000000000000000000000000000000000000000000: n572_o <= 6'b001010;
            64'b0000000000000000000000100000000000000000000000000000000000000000: n572_o <= 6'b000101;
            64'b0000000000000000000000010000000000000000000000000000000000000000: n572_o <= 6'b000000;
            64'b0000000000000000000000001000000000000000000000000000000000000000: n572_o <= 6'b011100;
            64'b0000000000000000000000000100000000000000000000000000000000000000: n572_o <= 6'b011000;
            64'b0000000000000000000000000010000000000000000000000000000000000000: n572_o <= 6'b010100;
            64'b0000000000000000000000000001000000000000000000000000000000000000: n572_o <= 6'b010000;
            64'b0000000000000000000000000000100000000000000000000000000000000000: n572_o <= 6'b001100;
            64'b0000000000000000000000000000010000000000000000000000000000000000: n572_o <= 6'b001000;
            64'b0000000000000000000000000000001000000000000000000000000000000000: n572_o <= 6'b000100;
            64'b0000000000000000000000000000000100000000000000000000000000000000: n572_o <= 6'b000000;
            64'b0000000000000000000000000000000010000000000000000000000000000000: n572_o <= 6'b010101;
            64'b0000000000000000000000000000000001000000000000000000000000000000: n572_o <= 6'b010010;
            64'b0000000000000000000000000000000000100000000000000000000000000000: n572_o <= 6'b001111;
            64'b0000000000000000000000000000000000010000000000000000000000000000: n572_o <= 6'b001100;
            64'b0000000000000000000000000000000000001000000000000000000000000000: n572_o <= 6'b001001;
            64'b0000000000000000000000000000000000000100000000000000000000000000: n572_o <= 6'b000110;
            64'b0000000000000000000000000000000000000010000000000000000000000000: n572_o <= 6'b000011;
            64'b0000000000000000000000000000000000000001000000000000000000000000: n572_o <= 6'b000000;
            64'b0000000000000000000000000000000000000000100000000000000000000000: n572_o <= 6'b001110;
            64'b0000000000000000000000000000000000000000010000000000000000000000: n572_o <= 6'b001100;
            64'b0000000000000000000000000000000000000000001000000000000000000000: n572_o <= 6'b001010;
            64'b0000000000000000000000000000000000000000000100000000000000000000: n572_o <= 6'b001000;
            64'b0000000000000000000000000000000000000000000010000000000000000000: n572_o <= 6'b000110;
            64'b0000000000000000000000000000000000000000000001000000000000000000: n572_o <= 6'b000100;
            64'b0000000000000000000000000000000000000000000000100000000000000000: n572_o <= 6'b000010;
            64'b0000000000000000000000000000000000000000000000010000000000000000: n572_o <= 6'b000000;
            64'b0000000000000000000000000000000000000000000000001000000000000000: n572_o <= 6'b000111;
            64'b0000000000000000000000000000000000000000000000000100000000000000: n572_o <= 6'b000110;
            64'b0000000000000000000000000000000000000000000000000010000000000000: n572_o <= 6'b000101;
            64'b0000000000000000000000000000000000000000000000000001000000000000: n572_o <= 6'b000100;
            64'b0000000000000000000000000000000000000000000000000000100000000000: n572_o <= 6'b000011;
            64'b0000000000000000000000000000000000000000000000000000010000000000: n572_o <= 6'b000010;
            64'b0000000000000000000000000000000000000000000000000000001000000000: n572_o <= 6'b000001;
            64'b0000000000000000000000000000000000000000000000000000000100000000: n572_o <= 6'b000000;
            64'b0000000000000000000000000000000000000000000000000000000010000000: n572_o <= 6'b000000;
            64'b0000000000000000000000000000000000000000000000000000000001000000: n572_o <= 6'b000000;
            64'b0000000000000000000000000000000000000000000000000000000000100000: n572_o <= 6'b000000;
            64'b0000000000000000000000000000000000000000000000000000000000010000: n572_o <= 6'b000000;
            64'b0000000000000000000000000000000000000000000000000000000000001000: n572_o <= 6'b000000;
            64'b0000000000000000000000000000000000000000000000000000000000000100: n572_o <= 6'b000000;
            64'b0000000000000000000000000000000000000000000000000000000000000010: n572_o <= 6'b000000;
            64'b0000000000000000000000000000000000000000000000000000000000000001: n572_o <= 6'b000000;
            default: n572_o <= 6'bXXXXXX;
        endcase
endmodule

module intadder_16_f300_uid70
    (input clk,
        input rst,
        input[15:0] x,
        input[15:0] y,
        input cin,
        output[15:0] r);
    wire[15:0] n370_o;
    wire[15:0] n371_o;
    wire[15:0] n372_o;
    assign r = n372_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:853:12  */
    assign n370_o = x+y;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:853:16  */
    assign n371_o = {15'b0, cin};  //  uext
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:853:16  */
    assign n372_o = n370_o+n371_o;
endmodule

module intmultiplier_usingdsp_8_8_16_unsigned_f300_uid4
    (input clk,
        input rst,
        input[7:0] x,
        input[7:0] y,
        output[15:0] r);
    wire[7:0] xx_m5;
    wire[7:0] yy_m5;
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
    wire[5:0] y0x1_7_m5;
    wire[5:0] pp7x1y0_m5;
    wire heap_bh6_w2_1;
    wire heap_bh6_w3_1;
    wire heap_bh6_w4_0;
    wire heap_bh6_w5_0;
    wire heap_bh6_w6_0;
    wire[5:0] y0x2_7_m5;
    wire[5:0] pp7x2y0_m5;
    wire heap_bh6_w5_1;
    wire heap_bh6_w6_1;
    wire heap_bh6_w7_0;
    wire heap_bh6_w8_0;
    wire heap_bh6_w9_0;
    wire[5:0] y1x0_7_m5;
    wire[5:0] pp7x0y1_m5;
    wire heap_bh6_w2_2;
    wire heap_bh6_w3_2;
    wire heap_bh6_w4_1;
    wire heap_bh6_w5_2;
    wire heap_bh6_w6_2;
    wire[5:0] y1x1_7_m5;
    wire[5:0] pp7x1y1_m5;
    wire heap_bh6_w4_2;
    wire heap_bh6_w5_3;
    wire heap_bh6_w6_3;
    wire heap_bh6_w7_1;
    wire heap_bh6_w8_1;
    wire heap_bh6_w9_1;
    wire[5:0] y1x2_7_m5;
    wire[5:0] pp7x2y1_m5;
    wire heap_bh6_w7_2;
    wire heap_bh6_w8_2;
    wire heap_bh6_w9_2;
    wire heap_bh6_w10_0;
    wire heap_bh6_w11_0;
    wire heap_bh6_w12_0;
    wire[5:0] y2x0_7_m5;
    wire[5:0] pp7x0y2_m5;
    wire heap_bh6_w5_4;
    wire heap_bh6_w6_4;
    wire heap_bh6_w7_3;
    wire heap_bh6_w8_3;
    wire heap_bh6_w9_3;
    wire[5:0] y2x1_7_m5;
    wire[5:0] pp7x1y2_m5;
    wire heap_bh6_w7_4;
    wire heap_bh6_w8_4;
    wire heap_bh6_w9_4;
    wire heap_bh6_w10_1;
    wire heap_bh6_w11_1;
    wire heap_bh6_w12_1;
    wire[5:0] y2x2_7_m5;
    wire[5:0] pp7x2y2_m5;
    wire heap_bh6_w10_2;
    wire heap_bh6_w11_2;
    wire heap_bh6_w12_2;
    wire heap_bh6_w13_0;
    wire heap_bh6_w14_0;
    wire heap_bh6_w15_0;
    wire[1:0] tempr_bh6_0;
    wire[3:0] compressorin_bh6_0_0;
    wire compressorin_bh6_0_1;
    wire[2:0] compressorout_bh6_0_0;
    wire heap_bh6_w5_5;
    wire heap_bh6_w6_5;
    wire heap_bh6_w7_5;
    wire[3:0] compressorin_bh6_1_2;
    wire compressorin_bh6_1_3;
    wire[2:0] compressorout_bh6_1_1;
    wire heap_bh6_w6_6;
    wire heap_bh6_w7_6;
    wire heap_bh6_w8_5;
    wire[3:0] compressorin_bh6_2_4;
    wire compressorin_bh6_2_5;
    wire[2:0] compressorout_bh6_2_2;
    wire heap_bh6_w7_7;
    wire heap_bh6_w8_6;
    wire heap_bh6_w9_5;
    wire[3:0] compressorin_bh6_3_6;
    wire compressorin_bh6_3_7;
    wire[2:0] compressorout_bh6_3_3;
    wire heap_bh6_w8_7;
    wire heap_bh6_w9_6;
    wire heap_bh6_w10_3;
    wire[3:0] compressorin_bh6_4_8;
    wire compressorin_bh6_4_9;
    wire[2:0] compressorout_bh6_4_4;
    wire heap_bh6_w9_7;
    wire heap_bh6_w10_4;
    wire heap_bh6_w11_3;
    wire[2:0] compressorin_bh6_5_10;
    wire[1:0] compressorin_bh6_5_11;
    wire[2:0] compressorout_bh6_5_5;
    wire heap_bh6_w2_3;
    wire heap_bh6_w3_3;
    wire heap_bh6_w4_3;
    wire[2:0] compressorin_bh6_6_12;
    wire[1:0] compressorin_bh6_6_13;
    wire[2:0] compressorout_bh6_6_6;
    wire heap_bh6_w11_4;
    wire heap_bh6_w12_3;
    wire heap_bh6_w13_1;
    wire[2:0] compressorin_bh6_7_14;
    wire compressorin_bh6_7_15;
    wire[2:0] compressorout_bh6_7_7;
    wire heap_bh6_w4_4;
    wire heap_bh6_w5_6;
    wire heap_bh6_w6_7;
    wire tempr_bh6_1;
    wire[3:0] compressorin_bh6_8_16;
    wire compressorin_bh6_8_17;
    wire[2:0] compressorout_bh6_8_8;
    wire heap_bh6_w10_5;
    wire heap_bh6_w11_5;
    wire heap_bh6_w12_4;
    wire[2:0] compressorin_bh6_9_18;
    wire[1:0] compressorin_bh6_9_19;
    wire[2:0] compressorout_bh6_9_9;
    wire heap_bh6_w6_8;
    wire heap_bh6_w7_8;
    wire heap_bh6_w8_8;
    wire[2:0] compressorin_bh6_10_20;
    wire[1:0] compressorin_bh6_10_21;
    wire[2:0] compressorout_bh6_10_10;
    wire heap_bh6_w8_9;
    wire heap_bh6_w9_8;
    wire heap_bh6_w10_6;
    wire[2:0] compressorin_bh6_11_22;
    wire[1:0] compressorin_bh6_11_23;
    wire[2:0] compressorout_bh6_11_11;
    wire heap_bh6_w12_5;
    wire heap_bh6_w13_2;
    wire heap_bh6_w14_1;
    wire[13:0] finaladderin0_bh6;
    wire[13:0] finaladderin1_bh6;
    wire finaladdercin_bh6;
    wire[13:0] finaladderout_bh6;
    wire[16:0] compressionresult6;
    wire[8:0] n127_o;
    wire[8:0] n129_o;
    wire[2:0] n130_o;
    wire[2:0] n131_o;
    wire[2:0] n132_o;
    wire[2:0] n133_o;
    wire[2:0] n134_o;
    wire[2:0] n135_o;
    wire[5:0] n136_o;
    wire[5:0] pp_m5_7x0y0_tbl_n137;
    wire[5:0] pp_m5_7x0y0_tbl_y;
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
    wire[5:0] n153_o;
    wire[5:0] pp_m5_7x2y0_tbl_n154;
    wire[5:0] pp_m5_7x2y0_tbl_y;
    wire n157_o;
    wire n158_o;
    wire n159_o;
    wire n160_o;
    wire n161_o;
    wire[5:0] n162_o;
    wire[5:0] pp_m5_7x0y1_tbl_n163;
    wire[5:0] pp_m5_7x0y1_tbl_y;
    wire n166_o;
    wire n167_o;
    wire n168_o;
    wire n169_o;
    wire n170_o;
    wire[5:0] n171_o;
    wire[5:0] pp_m5_7x1y1_tbl_n172;
    wire[5:0] pp_m5_7x1y1_tbl_y;
    wire n175_o;
    wire n176_o;
    wire n177_o;
    wire n178_o;
    wire n179_o;
    wire n180_o;
    wire[5:0] n181_o;
    wire[5:0] pp_m5_7x2y1_tbl_n182;
    wire[5:0] pp_m5_7x2y1_tbl_y;
    wire n185_o;
    wire n186_o;
    wire n187_o;
    wire n188_o;
    wire n189_o;
    wire n190_o;
    wire[5:0] n191_o;
    wire[5:0] pp_m5_7x0y2_tbl_n192;
    wire[5:0] pp_m5_7x0y2_tbl_y;
    wire n195_o;
    wire n196_o;
    wire n197_o;
    wire n198_o;
    wire n199_o;
    wire[5:0] n200_o;
    wire[5:0] pp_m5_7x1y2_tbl_n201;
    wire[5:0] pp_m5_7x1y2_tbl_y;
    wire n204_o;
    wire n205_o;
    wire n206_o;
    wire n207_o;
    wire n208_o;
    wire n209_o;
    wire[5:0] n210_o;
    wire[5:0] pp_m5_7x2y2_tbl_n211;
    wire[5:0] pp_m5_7x2y2_tbl_y;
    wire n214_o;
    wire n215_o;
    wire n216_o;
    wire n217_o;
    wire n218_o;
    wire n219_o;
    wire[1:0] n220_o;
    wire[1:0] n221_o;
    wire[2:0] n222_o;
    wire[3:0] n223_o;
    wire[2:0] compressor_bh6_0_n224;
    wire[2:0] compressor_bh6_0_r;
    wire n227_o;
    wire n228_o;
    wire n229_o;
    wire[1:0] n230_o;
    wire[2:0] n231_o;
    wire[3:0] n232_o;
    wire[2:0] compressor_bh6_1_n233;
    wire[2:0] compressor_bh6_1_r;
    wire n236_o;
    wire n237_o;
    wire n238_o;
    wire[1:0] n239_o;
    wire[2:0] n240_o;
    wire[3:0] n241_o;
    wire[2:0] compressor_bh6_2_n242;
    wire[2:0] compressor_bh6_2_r;
    wire n245_o;
    wire n246_o;
    wire n247_o;
    wire[1:0] n248_o;
    wire[2:0] n249_o;
    wire[3:0] n250_o;
    wire[2:0] compressor_bh6_3_n251;
    wire[2:0] compressor_bh6_3_r;
    wire n254_o;
    wire n255_o;
    wire n256_o;
    wire[1:0] n257_o;
    wire[2:0] n258_o;
    wire[3:0] n259_o;
    wire[2:0] compressor_bh6_4_n260;
    wire[2:0] compressor_bh6_4_r;
    wire n263_o;
    wire n264_o;
    wire n265_o;
    wire[1:0] n266_o;
    wire[2:0] n267_o;
    wire[1:0] n268_o;
    wire[2:0] compressor_bh6_5_n269;
    wire[2:0] compressor_bh6_5_r;
    wire n272_o;
    wire n273_o;
    wire n274_o;
    wire[1:0] n275_o;
    wire[2:0] n276_o;
    wire[1:0] n277_o;
    wire[2:0] compressor_bh6_6_n278;
    wire[2:0] compressor_bh6_6_r;
    wire n281_o;
    wire n282_o;
    wire n283_o;
    wire[1:0] n284_o;
    wire[2:0] n285_o;
    wire[2:0] compressor_bh6_7_n286;
    wire[2:0] compressor_bh6_7_r;
    wire n289_o;
    wire n290_o;
    wire n291_o;
    wire[1:0] n292_o;
    wire[2:0] n293_o;
    wire[3:0] n294_o;
    wire[2:0] compressor_bh6_8_n295;
    wire[2:0] compressor_bh6_8_r;
    wire n298_o;
    wire n299_o;
    wire n300_o;
    wire[1:0] n301_o;
    wire[2:0] n302_o;
    wire[1:0] n303_o;
    wire[2:0] compressor_bh6_9_n304;
    wire[2:0] compressor_bh6_9_r;
    wire n307_o;
    wire n308_o;
    wire n309_o;
    wire[1:0] n310_o;
    wire[2:0] n311_o;
    wire[1:0] n312_o;
    wire[2:0] compressor_bh6_10_n313;
    wire[2:0] compressor_bh6_10_r;
    wire n316_o;
    wire n317_o;
    wire n318_o;
    wire[1:0] n319_o;
    wire[2:0] n320_o;
    wire[1:0] n321_o;
    wire[2:0] compressor_bh6_11_n322;
    wire[2:0] compressor_bh6_11_r;
    wire n325_o;
    wire n326_o;
    wire n327_o;
    wire[1:0] n329_o;
    wire[2:0] n330_o;
    wire[3:0] n331_o;
    wire[4:0] n332_o;
    wire[5:0] n333_o;
    wire[6:0] n334_o;
    wire[7:0] n335_o;
    wire[8:0] n336_o;
    wire[9:0] n337_o;
    wire[10:0] n338_o;
    wire[11:0] n339_o;
    wire[12:0] n340_o;
    wire[13:0] n341_o;
    wire[2:0] n343_o;
    wire[3:0] n345_o;
    wire[4:0] n347_o;
    wire[5:0] n348_o;
    wire[6:0] n349_o;
    wire[7:0] n350_o;
    wire[8:0] n351_o;
    wire[9:0] n352_o;
    wire[10:0] n354_o;
    wire[11:0] n355_o;
    wire[12:0] n356_o;
    wire[13:0] n357_o;
    wire[13:0] adder_final6_0_n359;
    wire[13:0] adder_final6_0_r;
    wire[14:0] n362_o;
    wire[16:0] n363_o;
    wire[15:0] n364_o;
    assign r = n364_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:526:20  */
    assign xx_m5 = x; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:527:20  */
    assign yy_m5 = y; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:359:8  */
    assign xp_m5b7 = n127_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:360:8  */
    assign yp_m5b7 = n129_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:361:8  */
    assign x_m5b7_0 = n130_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:362:8  */
    assign x_m5b7_1 = n131_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:363:8  */
    assign x_m5b7_2 = n132_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:364:8  */
    assign y_m5b7_0 = n133_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:365:8  */
    assign y_m5b7_1 = n134_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:366:8  */
    assign y_m5b7_2 = n135_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:367:8  */
    assign y0x0_7_m5 = n136_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:368:8  */
    assign pp7x0y0_m5 = pp_m5_7x0y0_tbl_n137; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:369:8  */
    assign heap_bh6_w0_0 = n140_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:370:8  */
    assign heap_bh6_w1_0 = n141_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:371:8  */
    assign heap_bh6_w2_0 = n142_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:372:8  */
    assign heap_bh6_w3_0 = n143_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:373:8  */
    assign y0x1_7_m5 = n144_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:374:8  */
    assign pp7x1y0_m5 = pp_m5_7x1y0_tbl_n145; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:375:8  */
    assign heap_bh6_w2_1 = n148_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:376:8  */
    assign heap_bh6_w3_1 = n149_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:377:8  */
    assign heap_bh6_w4_0 = n150_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:378:8  */
    assign heap_bh6_w5_0 = n151_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:379:8  */
    assign heap_bh6_w6_0 = n152_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:380:8  */
    assign y0x2_7_m5 = n153_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:381:8  */
    assign pp7x2y0_m5 = pp_m5_7x2y0_tbl_n154; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:382:8  */
    assign heap_bh6_w5_1 = n157_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:383:8  */
    assign heap_bh6_w6_1 = n158_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:384:8  */
    assign heap_bh6_w7_0 = n159_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:385:8  */
    assign heap_bh6_w8_0 = n160_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:386:8  */
    assign heap_bh6_w9_0 = n161_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:387:8  */
    assign y1x0_7_m5 = n162_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:388:8  */
    assign pp7x0y1_m5 = pp_m5_7x0y1_tbl_n163; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:389:8  */
    assign heap_bh6_w2_2 = n166_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:390:8  */
    assign heap_bh6_w3_2 = n167_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:391:8  */
    assign heap_bh6_w4_1 = n168_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:392:8  */
    assign heap_bh6_w5_2 = n169_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:393:8  */
    assign heap_bh6_w6_2 = n170_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:394:8  */
    assign y1x1_7_m5 = n171_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:395:8  */
    assign pp7x1y1_m5 = pp_m5_7x1y1_tbl_n172; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:396:8  */
    assign heap_bh6_w4_2 = n175_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:397:8  */
    assign heap_bh6_w5_3 = n176_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:398:8  */
    assign heap_bh6_w6_3 = n177_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:399:8  */
    assign heap_bh6_w7_1 = n178_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:400:8  */
    assign heap_bh6_w8_1 = n179_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:401:8  */
    assign heap_bh6_w9_1 = n180_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:402:8  */
    assign y1x2_7_m5 = n181_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:403:8  */
    assign pp7x2y1_m5 = pp_m5_7x2y1_tbl_n182; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:404:8  */
    assign heap_bh6_w7_2 = n185_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:405:8  */
    assign heap_bh6_w8_2 = n186_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:406:8  */
    assign heap_bh6_w9_2 = n187_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:407:8  */
    assign heap_bh6_w10_0 = n188_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:408:8  */
    assign heap_bh6_w11_0 = n189_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:409:8  */
    assign heap_bh6_w12_0 = n190_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:410:8  */
    assign y2x0_7_m5 = n191_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:411:8  */
    assign pp7x0y2_m5 = pp_m5_7x0y2_tbl_n192; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:412:8  */
    assign heap_bh6_w5_4 = n195_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:413:8  */
    assign heap_bh6_w6_4 = n196_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:414:8  */
    assign heap_bh6_w7_3 = n197_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:415:8  */
    assign heap_bh6_w8_3 = n198_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:416:8  */
    assign heap_bh6_w9_3 = n199_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:417:8  */
    assign y2x1_7_m5 = n200_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:418:8  */
    assign pp7x1y2_m5 = pp_m5_7x1y2_tbl_n201; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:419:8  */
    assign heap_bh6_w7_4 = n204_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:420:8  */
    assign heap_bh6_w8_4 = n205_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:421:8  */
    assign heap_bh6_w9_4 = n206_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:422:8  */
    assign heap_bh6_w10_1 = n207_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:423:8  */
    assign heap_bh6_w11_1 = n208_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:424:8  */
    assign heap_bh6_w12_1 = n209_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:425:8  */
    assign y2x2_7_m5 = n210_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:426:8  */
    assign pp7x2y2_m5 = pp_m5_7x2y2_tbl_n211; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:427:8  */
    assign heap_bh6_w10_2 = n214_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:428:8  */
    assign heap_bh6_w11_2 = n215_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:429:8  */
    assign heap_bh6_w12_2 = n216_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:430:8  */
    assign heap_bh6_w13_0 = n217_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:431:8  */
    assign heap_bh6_w14_0 = n218_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:432:8  */
    assign heap_bh6_w15_0 = n219_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:433:8  */
    assign tempr_bh6_0 = n220_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:434:8  */
    assign compressorin_bh6_0_0 = n223_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:435:8  */
    assign compressorin_bh6_0_1 = heap_bh6_w6_4; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:436:8  */
    assign compressorout_bh6_0_0 = compressor_bh6_0_n224; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:437:8  */
    assign heap_bh6_w5_5 = n227_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:438:8  */
    assign heap_bh6_w6_5 = n228_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:439:8  */
    assign heap_bh6_w7_5 = n229_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:440:8  */
    assign compressorin_bh6_1_2 = n232_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:441:8  */
    assign compressorin_bh6_1_3 = heap_bh6_w7_4; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:442:8  */
    assign compressorout_bh6_1_1 = compressor_bh6_1_n233; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:443:8  */
    assign heap_bh6_w6_6 = n236_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:444:8  */
    assign heap_bh6_w7_6 = n237_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:445:8  */
    assign heap_bh6_w8_5 = n238_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:446:8  */
    assign compressorin_bh6_2_4 = n241_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:447:8  */
    assign compressorin_bh6_2_5 = heap_bh6_w8_4; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:448:8  */
    assign compressorout_bh6_2_2 = compressor_bh6_2_n242; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:449:8  */
    assign heap_bh6_w7_7 = n245_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:450:8  */
    assign heap_bh6_w8_6 = n246_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:451:8  */
    assign heap_bh6_w9_5 = n247_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:452:8  */
    assign compressorin_bh6_3_6 = n250_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:453:8  */
    assign compressorin_bh6_3_7 = heap_bh6_w9_4; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:454:8  */
    assign compressorout_bh6_3_3 = compressor_bh6_3_n251; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:455:8  */
    assign heap_bh6_w8_7 = n254_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:456:8  */
    assign heap_bh6_w9_6 = n255_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:457:8  */
    assign heap_bh6_w10_3 = n256_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:458:8  */
    assign compressorin_bh6_4_8 = n259_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:459:8  */
    assign compressorin_bh6_4_9 = heap_bh6_w10_2; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:460:8  */
    assign compressorout_bh6_4_4 = compressor_bh6_4_n260; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:461:8  */
    assign heap_bh6_w9_7 = n263_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:462:8  */
    assign heap_bh6_w10_4 = n264_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:463:8  */
    assign heap_bh6_w11_3 = n265_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:464:8  */
    assign compressorin_bh6_5_10 = n267_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:465:8  */
    assign compressorin_bh6_5_11 = n268_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:466:8  */
    assign compressorout_bh6_5_5 = compressor_bh6_5_n269; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:467:8  */
    assign heap_bh6_w2_3 = n272_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:468:8  */
    assign heap_bh6_w3_3 = n273_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:469:8  */
    assign heap_bh6_w4_3 = n274_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:470:8  */
    assign compressorin_bh6_6_12 = n276_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:471:8  */
    assign compressorin_bh6_6_13 = n277_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:472:8  */
    assign compressorout_bh6_6_6 = compressor_bh6_6_n278; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:473:8  */
    assign heap_bh6_w11_4 = n281_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:474:8  */
    assign heap_bh6_w12_3 = n282_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:475:8  */
    assign heap_bh6_w13_1 = n283_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:476:8  */
    assign compressorin_bh6_7_14 = n285_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:477:8  */
    assign compressorin_bh6_7_15 = heap_bh6_w5_0; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:478:8  */
    assign compressorout_bh6_7_7 = compressor_bh6_7_n286; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:479:8  */
    assign heap_bh6_w4_4 = n289_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:480:8  */
    assign heap_bh6_w5_6 = n290_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:481:8  */
    assign heap_bh6_w6_7 = n291_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:482:8  */
    assign tempr_bh6_1 = heap_bh6_w2_3; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:483:8  */
    assign compressorin_bh6_8_16 = n294_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:484:8  */
    assign compressorin_bh6_8_17 = heap_bh6_w11_4; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:485:8  */
    assign compressorout_bh6_8_8 = compressor_bh6_8_n295; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:486:8  */
    assign heap_bh6_w10_5 = n298_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:487:8  */
    assign heap_bh6_w11_5 = n299_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:488:8  */
    assign heap_bh6_w12_4 = n300_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:489:8  */
    assign compressorin_bh6_9_18 = n302_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:490:8  */
    assign compressorin_bh6_9_19 = n303_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:491:8  */
    assign compressorout_bh6_9_9 = compressor_bh6_9_n304; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:492:8  */
    assign heap_bh6_w6_8 = n307_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:493:8  */
    assign heap_bh6_w7_8 = n308_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:494:8  */
    assign heap_bh6_w8_8 = n309_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:495:8  */
    assign compressorin_bh6_10_20 = n311_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:496:8  */
    assign compressorin_bh6_10_21 = n312_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:497:8  */
    assign compressorout_bh6_10_10 = compressor_bh6_10_n313; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:498:8  */
    assign heap_bh6_w8_9 = n316_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:499:8  */
    assign heap_bh6_w9_8 = n317_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:500:8  */
    assign heap_bh6_w10_6 = n318_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:501:8  */
    assign compressorin_bh6_11_22 = n320_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:502:8  */
    assign compressorin_bh6_11_23 = n321_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:503:8  */
    assign compressorout_bh6_11_11 = compressor_bh6_11_n322; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:504:8  */
    assign heap_bh6_w12_5 = n325_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:505:8  */
    assign heap_bh6_w13_2 = n326_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:506:8  */
    assign heap_bh6_w14_1 = n327_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:507:8  */
    assign finaladderin0_bh6 = n341_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:508:8  */
    assign finaladderin1_bh6 = n357_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:509:8  */
    assign finaladdercin_bh6 = 1'b0; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:510:8  */
    assign finaladderout_bh6 = adder_final6_0_n359; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:511:8  */
    assign compressionresult6 = n363_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:526:33  */
    assign n127_o = {xx_m5, 1'b0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:527:33  */
    assign n129_o = {yy_m5, 1'b0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:528:23  */
    assign n130_o = xp_m5b7[2:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:529:23  */
    assign n131_o = xp_m5b7[5:3];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:530:23  */
    assign n132_o = xp_m5b7[8:6];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:531:23  */
    assign n133_o = yp_m5b7[2:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:532:23  */
    assign n134_o = yp_m5b7[5:3];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:533:23  */
    assign n135_o = yp_m5b7[8:6];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:536:26  */
    assign n136_o = {y_m5b7_0, x_m5b7_0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:541:23  */
    assign pp_m5_7x0y0_tbl_n137 = pp_m5_7x0y0_tbl_y; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:537:4  */
    smallmulttablep3x3r6xuyu_f300_uid9 pp_m5_7x0y0_tbl(
        .clk(clk),
        .rst(rst),
        .x(y0x0_7_m5),
        .y(pp_m5_7x0y0_tbl_y));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:543:31  */
    assign n140_o = pp7x0y0_m5[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:544:31  */
    assign n141_o = pp7x0y0_m5[3];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:545:31  */
    assign n142_o = pp7x0y0_m5[4];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:546:31  */
    assign n143_o = pp7x0y0_m5[5];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:548:26  */
    assign n144_o = {y_m5b7_0, x_m5b7_1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:553:23  */
    assign pp_m5_7x1y0_tbl_n145 = pp_m5_7x1y0_tbl_y; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:549:4  */
    smallmulttablep3x3r6xuyu_f300_uid9 pp_m5_7x1y0_tbl(
        .clk(clk),
        .rst(rst),
        .x(y0x1_7_m5),
        .y(pp_m5_7x1y0_tbl_y));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:555:31  */
    assign n148_o = pp7x1y0_m5[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:556:31  */
    assign n149_o = pp7x1y0_m5[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:557:31  */
    assign n150_o = pp7x1y0_m5[3];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:558:31  */
    assign n151_o = pp7x1y0_m5[4];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:559:31  */
    assign n152_o = pp7x1y0_m5[5];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:561:26  */
    assign n153_o = {y_m5b7_0, x_m5b7_2};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:566:23  */
    assign pp_m5_7x2y0_tbl_n154 = pp_m5_7x2y0_tbl_y; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:562:4  */
    smallmulttablep3x3r6xuyu_f300_uid9 pp_m5_7x2y0_tbl(
        .clk(clk),
        .rst(rst),
        .x(y0x2_7_m5),
        .y(pp_m5_7x2y0_tbl_y));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:568:31  */
    assign n157_o = pp7x2y0_m5[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:569:31  */
    assign n158_o = pp7x2y0_m5[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:570:31  */
    assign n159_o = pp7x2y0_m5[3];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:571:31  */
    assign n160_o = pp7x2y0_m5[4];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:572:31  */
    assign n161_o = pp7x2y0_m5[5];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:575:26  */
    assign n162_o = {y_m5b7_1, x_m5b7_0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:580:23  */
    assign pp_m5_7x0y1_tbl_n163 = pp_m5_7x0y1_tbl_y; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:576:4  */
    smallmulttablep3x3r6xuyu_f300_uid9 pp_m5_7x0y1_tbl(
        .clk(clk),
        .rst(rst),
        .x(y1x0_7_m5),
        .y(pp_m5_7x0y1_tbl_y));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:582:31  */
    assign n166_o = pp7x0y1_m5[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:583:31  */
    assign n167_o = pp7x0y1_m5[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:584:31  */
    assign n168_o = pp7x0y1_m5[3];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:585:31  */
    assign n169_o = pp7x0y1_m5[4];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:586:31  */
    assign n170_o = pp7x0y1_m5[5];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:588:26  */
    assign n171_o = {y_m5b7_1, x_m5b7_1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:593:23  */
    assign pp_m5_7x1y1_tbl_n172 = pp_m5_7x1y1_tbl_y; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:589:4  */
    smallmulttablep3x3r6xuyu_f300_uid9 pp_m5_7x1y1_tbl(
        .clk(clk),
        .rst(rst),
        .x(y1x1_7_m5),
        .y(pp_m5_7x1y1_tbl_y));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:595:31  */
    assign n175_o = pp7x1y1_m5[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:596:31  */
    assign n176_o = pp7x1y1_m5[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:597:31  */
    assign n177_o = pp7x1y1_m5[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:598:31  */
    assign n178_o = pp7x1y1_m5[3];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:599:31  */
    assign n179_o = pp7x1y1_m5[4];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:600:31  */
    assign n180_o = pp7x1y1_m5[5];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:602:26  */
    assign n181_o = {y_m5b7_1, x_m5b7_2};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:607:23  */
    assign pp_m5_7x2y1_tbl_n182 = pp_m5_7x2y1_tbl_y; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:603:4  */
    smallmulttablep3x3r6xuyu_f300_uid9 pp_m5_7x2y1_tbl(
        .clk(clk),
        .rst(rst),
        .x(y1x2_7_m5),
        .y(pp_m5_7x2y1_tbl_y));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:609:31  */
    assign n185_o = pp7x2y1_m5[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:610:31  */
    assign n186_o = pp7x2y1_m5[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:611:31  */
    assign n187_o = pp7x2y1_m5[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:612:32  */
    assign n188_o = pp7x2y1_m5[3];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:613:32  */
    assign n189_o = pp7x2y1_m5[4];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:614:32  */
    assign n190_o = pp7x2y1_m5[5];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:617:26  */
    assign n191_o = {y_m5b7_2, x_m5b7_0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:622:23  */
    assign pp_m5_7x0y2_tbl_n192 = pp_m5_7x0y2_tbl_y; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:618:4  */
    smallmulttablep3x3r6xuyu_f300_uid9 pp_m5_7x0y2_tbl(
        .clk(clk),
        .rst(rst),
        .x(y2x0_7_m5),
        .y(pp_m5_7x0y2_tbl_y));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:624:31  */
    assign n195_o = pp7x0y2_m5[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:625:31  */
    assign n196_o = pp7x0y2_m5[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:626:31  */
    assign n197_o = pp7x0y2_m5[3];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:627:31  */
    assign n198_o = pp7x0y2_m5[4];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:628:31  */
    assign n199_o = pp7x0y2_m5[5];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:630:26  */
    assign n200_o = {y_m5b7_2, x_m5b7_1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:635:23  */
    assign pp_m5_7x1y2_tbl_n201 = pp_m5_7x1y2_tbl_y; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:631:4  */
    smallmulttablep3x3r6xuyu_f300_uid9 pp_m5_7x1y2_tbl(
        .clk(clk),
        .rst(rst),
        .x(y2x1_7_m5),
        .y(pp_m5_7x1y2_tbl_y));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:637:31  */
    assign n204_o = pp7x1y2_m5[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:638:31  */
    assign n205_o = pp7x1y2_m5[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:639:31  */
    assign n206_o = pp7x1y2_m5[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:640:32  */
    assign n207_o = pp7x1y2_m5[3];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:641:32  */
    assign n208_o = pp7x1y2_m5[4];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:642:32  */
    assign n209_o = pp7x1y2_m5[5];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:644:26  */
    assign n210_o = {y_m5b7_2, x_m5b7_2};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:649:23  */
    assign pp_m5_7x2y2_tbl_n211 = pp_m5_7x2y2_tbl_y; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:645:4  */
    smallmulttablep3x3r6xuyu_f300_uid9 pp_m5_7x2y2_tbl(
        .clk(clk),
        .rst(rst),
        .x(y2x2_7_m5),
        .y(pp_m5_7x2y2_tbl_y));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:651:32  */
    assign n214_o = pp7x2y2_m5[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:652:32  */
    assign n215_o = pp7x2y2_m5[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:653:32  */
    assign n216_o = pp7x2y2_m5[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:654:32  */
    assign n217_o = pp7x2y2_m5[3];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:655:32  */
    assign n218_o = pp7x2y2_m5[4];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:656:32  */
    assign n219_o = pp7x2y2_m5[5];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:668:33  */
    assign n220_o = {heap_bh6_w1_0, heap_bh6_w0_0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:671:42  */
    assign n221_o = {heap_bh6_w5_4, heap_bh6_w5_3};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:671:58  */
    assign n222_o = {n221_o, heap_bh6_w5_2};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:671:74  */
    assign n223_o = {n222_o, heap_bh6_w5_1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:674:23  */
    assign compressor_bh6_0_n224 = compressor_bh6_0_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:673:7  */
    compressor_14_3 compressor_bh6_0(
        .x0(compressorin_bh6_0_0),
        .x1(compressorin_bh6_0_1),
        .r(compressor_bh6_0_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:677:42  */
    assign n227_o = compressorout_bh6_0_0[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:678:42  */
    assign n228_o = compressorout_bh6_0_0[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:679:42  */
    assign n229_o = compressorout_bh6_0_0[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:682:42  */
    assign n230_o = {heap_bh6_w6_3, heap_bh6_w6_2};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:682:58  */
    assign n231_o = {n230_o, heap_bh6_w6_1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:682:74  */
    assign n232_o = {n231_o, heap_bh6_w6_0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:685:23  */
    assign compressor_bh6_1_n233 = compressor_bh6_1_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:684:7  */
    compressor_14_3 compressor_bh6_1(
        .x0(compressorin_bh6_1_2),
        .x1(compressorin_bh6_1_3),
        .r(compressor_bh6_1_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:688:42  */
    assign n236_o = compressorout_bh6_1_1[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:689:42  */
    assign n237_o = compressorout_bh6_1_1[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:690:42  */
    assign n238_o = compressorout_bh6_1_1[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:693:42  */
    assign n239_o = {heap_bh6_w7_3, heap_bh6_w7_2};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:693:58  */
    assign n240_o = {n239_o, heap_bh6_w7_1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:693:74  */
    assign n241_o = {n240_o, heap_bh6_w7_0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:696:23  */
    assign compressor_bh6_2_n242 = compressor_bh6_2_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:695:7  */
    compressor_14_3 compressor_bh6_2(
        .x0(compressorin_bh6_2_4),
        .x1(compressorin_bh6_2_5),
        .r(compressor_bh6_2_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:699:42  */
    assign n245_o = compressorout_bh6_2_2[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:700:42  */
    assign n246_o = compressorout_bh6_2_2[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:701:42  */
    assign n247_o = compressorout_bh6_2_2[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:704:42  */
    assign n248_o = {heap_bh6_w8_3, heap_bh6_w8_2};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:704:58  */
    assign n249_o = {n248_o, heap_bh6_w8_1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:704:74  */
    assign n250_o = {n249_o, heap_bh6_w8_0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:707:23  */
    assign compressor_bh6_3_n251 = compressor_bh6_3_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:706:7  */
    compressor_14_3 compressor_bh6_3(
        .x0(compressorin_bh6_3_6),
        .x1(compressorin_bh6_3_7),
        .r(compressor_bh6_3_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:710:42  */
    assign n254_o = compressorout_bh6_3_3[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:711:42  */
    assign n255_o = compressorout_bh6_3_3[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:712:43  */
    assign n256_o = compressorout_bh6_3_3[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:715:42  */
    assign n257_o = {heap_bh6_w9_3, heap_bh6_w9_2};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:715:58  */
    assign n258_o = {n257_o, heap_bh6_w9_1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:715:74  */
    assign n259_o = {n258_o, heap_bh6_w9_0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:718:23  */
    assign compressor_bh6_4_n260 = compressor_bh6_4_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:717:7  */
    compressor_14_3 compressor_bh6_4(
        .x0(compressorin_bh6_4_8),
        .x1(compressorin_bh6_4_9),
        .r(compressor_bh6_4_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:721:42  */
    assign n263_o = compressorout_bh6_4_4[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:722:43  */
    assign n264_o = compressorout_bh6_4_4[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:723:43  */
    assign n265_o = compressorout_bh6_4_4[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:726:43  */
    assign n266_o = {heap_bh6_w2_2, heap_bh6_w2_1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:726:59  */
    assign n267_o = {n266_o, heap_bh6_w2_0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:727:43  */
    assign n268_o = {heap_bh6_w3_2, heap_bh6_w3_1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:729:23  */
    assign compressor_bh6_5_n269 = compressor_bh6_5_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:728:7  */
    compressor_23_3 compressor_bh6_5(
        .x0(compressorin_bh6_5_10),
        .x1(compressorin_bh6_5_11),
        .r(compressor_bh6_5_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:732:42  */
    assign n272_o = compressorout_bh6_5_5[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:733:42  */
    assign n273_o = compressorout_bh6_5_5[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:734:42  */
    assign n274_o = compressorout_bh6_5_5[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:737:44  */
    assign n275_o = {heap_bh6_w11_2, heap_bh6_w11_1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:737:61  */
    assign n276_o = {n275_o, heap_bh6_w11_0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:738:44  */
    assign n277_o = {heap_bh6_w12_2, heap_bh6_w12_1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:740:23  */
    assign compressor_bh6_6_n278 = compressor_bh6_6_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:739:7  */
    compressor_23_3 compressor_bh6_6(
        .x0(compressorin_bh6_6_12),
        .x1(compressorin_bh6_6_13),
        .r(compressor_bh6_6_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:743:43  */
    assign n281_o = compressorout_bh6_6_6[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:744:43  */
    assign n282_o = compressorout_bh6_6_6[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:745:43  */
    assign n283_o = compressorout_bh6_6_6[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:748:43  */
    assign n284_o = {heap_bh6_w4_2, heap_bh6_w4_1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:748:59  */
    assign n285_o = {n284_o, heap_bh6_w4_0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:751:23  */
    assign compressor_bh6_7_n286 = compressor_bh6_7_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:750:7  */
    compressor_13_3 compressor_bh6_7(
        .x0(compressorin_bh6_7_14),
        .x1(compressorin_bh6_7_15),
        .r(compressor_bh6_7_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:754:42  */
    assign n289_o = compressorout_bh6_7_7[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:755:42  */
    assign n290_o = compressorout_bh6_7_7[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:756:42  */
    assign n291_o = compressorout_bh6_7_7[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:761:44  */
    assign n292_o = {heap_bh6_w10_1, heap_bh6_w10_0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:761:61  */
    assign n293_o = {n292_o, heap_bh6_w10_4};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:761:78  */
    assign n294_o = {n293_o, heap_bh6_w10_3};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:764:23  */
    assign compressor_bh6_8_n295 = compressor_bh6_8_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:763:7  */
    compressor_14_3 compressor_bh6_8(
        .x0(compressorin_bh6_8_16),
        .x1(compressorin_bh6_8_17),
        .r(compressor_bh6_8_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:767:43  */
    assign n298_o = compressorout_bh6_8_8[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:768:43  */
    assign n299_o = compressorout_bh6_8_8[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:769:43  */
    assign n300_o = compressorout_bh6_8_8[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:772:43  */
    assign n301_o = {heap_bh6_w6_7, heap_bh6_w6_6};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:772:59  */
    assign n302_o = {n301_o, heap_bh6_w6_5};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:773:43  */
    assign n303_o = {heap_bh6_w7_7, heap_bh6_w7_6};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:775:23  */
    assign compressor_bh6_9_n304 = compressor_bh6_9_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:774:7  */
    compressor_23_3 compressor_bh6_9(
        .x0(compressorin_bh6_9_18),
        .x1(compressorin_bh6_9_19),
        .r(compressor_bh6_9_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:778:42  */
    assign n307_o = compressorout_bh6_9_9[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:779:42  */
    assign n308_o = compressorout_bh6_9_9[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:780:42  */
    assign n309_o = compressorout_bh6_9_9[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:783:44  */
    assign n310_o = {heap_bh6_w8_7, heap_bh6_w8_6};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:783:60  */
    assign n311_o = {n310_o, heap_bh6_w8_5};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:784:44  */
    assign n312_o = {heap_bh6_w9_7, heap_bh6_w9_6};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:786:23  */
    assign compressor_bh6_10_n313 = compressor_bh6_10_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:785:7  */
    compressor_23_3 compressor_bh6_10(
        .x0(compressorin_bh6_10_20),
        .x1(compressorin_bh6_10_21),
        .r(compressor_bh6_10_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:789:44  */
    assign n316_o = compressorout_bh6_10_10[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:790:44  */
    assign n317_o = compressorout_bh6_10_10[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:791:45  */
    assign n318_o = compressorout_bh6_10_10[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:794:45  */
    assign n319_o = {heap_bh6_w12_0, heap_bh6_w12_3};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:794:62  */
    assign n320_o = {n319_o, heap_bh6_w12_4};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:795:45  */
    assign n321_o = {heap_bh6_w13_0, heap_bh6_w13_1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:797:23  */
    assign compressor_bh6_11_n322 = compressor_bh6_11_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:796:7  */
    compressor_23_3 compressor_bh6_11(
        .x0(compressorin_bh6_11_22),
        .x1(compressorin_bh6_11_23),
        .r(compressor_bh6_11_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:800:45  */
    assign n325_o = compressorout_bh6_11_11[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:801:45  */
    assign n326_o = compressorout_bh6_11_11[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:802:45  */
    assign n327_o = compressorout_bh6_11_11[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:804:29  */
    assign n329_o = {1'b0, heap_bh6_w15_0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:804:46  */
    assign n330_o = {n329_o, heap_bh6_w14_0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:804:63  */
    assign n331_o = {n330_o, heap_bh6_w13_2};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:804:80  */
    assign n332_o = {n331_o, heap_bh6_w12_5};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:804:97  */
    assign n333_o = {n332_o, heap_bh6_w11_3};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:804:114  */
    assign n334_o = {n333_o, heap_bh6_w10_6};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:804:131  */
    assign n335_o = {n334_o, heap_bh6_w9_5};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:804:147  */
    assign n336_o = {n335_o, heap_bh6_w8_9};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:804:163  */
    assign n337_o = {n336_o, heap_bh6_w7_5};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:804:179  */
    assign n338_o = {n337_o, heap_bh6_w6_8};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:804:195  */
    assign n339_o = {n338_o, heap_bh6_w5_6};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:804:211  */
    assign n340_o = {n339_o, heap_bh6_w4_4};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:804:227  */
    assign n341_o = {n340_o, heap_bh6_w3_0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:805:35  */
    assign n343_o = {2'b00, heap_bh6_w14_1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:805:52  */
    assign n345_o = {n343_o, 1'b0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:805:58  */
    assign n347_o = {n345_o, 1'b0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:805:64  */
    assign n348_o = {n347_o, heap_bh6_w11_5};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:805:81  */
    assign n349_o = {n348_o, heap_bh6_w10_5};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:805:98  */
    assign n350_o = {n349_o, heap_bh6_w9_8};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:805:114  */
    assign n351_o = {n350_o, heap_bh6_w8_8};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:805:130  */
    assign n352_o = {n351_o, heap_bh6_w7_8};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:805:146  */
    assign n354_o = {n352_o, 1'b0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:805:152  */
    assign n355_o = {n354_o, heap_bh6_w5_5};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:805:168  */
    assign n356_o = {n355_o, heap_bh6_w4_3};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:805:184  */
    assign n357_o = {n356_o, heap_bh6_w3_3};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:811:23  */
    assign adder_final6_0_n359 = adder_final6_0_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:807:7  */
    intadder_14_f300_uid60 adder_final6_0(
        .clk(clk),
        .rst(rst),
        .x(finaladderin0_bh6),
        .y(finaladderin1_bh6),
        .cin(finaladdercin_bh6),
        .r(adder_final6_0_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:815:44  */
    assign n362_o = {finaladderout_bh6, tempr_bh6_1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:815:58  */
    assign n363_o = {n362_o, tempr_bh6_0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:817:27  */
    assign n364_o = compressionresult6[15:0];
endmodule

module fmul #(parameter ID = 1)
    (input clk,
        input rst,
        input[16:0] X,
        input[16:0] Y,
        output[16:0] R);
    wire sign;
    wire sign_d1;
    wire[6:0] expx;
    wire[6:0] expy;
    wire[8:0] expsumpresub;
    wire[8:0] bias;
    wire[8:0] expsum;
    wire[7:0] sigx;
    wire[7:0] sigy;
    wire[15:0] sigprod;
    wire[3:0] excsel;
    wire[1:0] exc;
    wire[1:0] exc_d1;
    wire norm;
    wire[8:0] exppostnorm;
    wire[15:0] sigprodext;
    wire[15:0] sigprodext_d1;
    wire[15:0] expsig;
    wire[15:0] expsig_d1;
    wire sticky;
    wire sticky_d1;
    wire guard;
    wire round;
    wire[15:0] expsigpostround;
    wire[1:0] excpostnorm;
    wire[1:0] finalexc;
    reg n10_q;
    reg[1:0] n11_q;
    reg[15:0] n12_q;
    reg[15:0] n13_q;
    reg n14_q;
    wire n15_o;
    wire n16_o;
    wire n17_o;
    wire[6:0] n18_o;
    wire[6:0] n19_o;
    wire[8:0] n21_o;
    wire[8:0] n23_o;
    wire[8:0] n24_o;
    wire[8:0] n26_o;
    wire[6:0] n27_o;
    wire[7:0] n29_o;
    wire[6:0] n30_o;
    wire[7:0] n32_o;
    wire[15:0] significandmultiplication_n33;
    wire[15:0] significandmultiplication_r;
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
    wire[8:0] n65_o;
    wire[8:0] n66_o;
    wire[14:0] n67_o;
    wire[15:0] n69_o;
    wire[15:0] n70_o;
    wire[13:0] n71_o;
    wire[15:0] n73_o;
    wire[6:0] n74_o;
    wire[15:0] n75_o;
    wire n76_o;
    wire[7:0] n78_o;
    wire n80_o;
    wire n81_o;
    wire n83_o;
    wire n84_o;
    wire n85_o;
    wire n86_o;
    wire n87_o;
    wire n88_o;
    localparam [15:0] n89_o = 16'b0000000000000000;
    wire[15:0] roundingadder_n90;
    wire[15:0] roundingadder_r;
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
    wire[13:0] n119_o;
    wire[16:0] n120_o;
    assign R = n120_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:896:8  */
    assign sign = n17_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:896:14  */
    assign sign_d1 = n10_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:897:8  */
    assign expx = n18_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:898:8  */
    assign expy = n19_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:899:8  */
    assign expsumpresub = n24_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:900:8  */
    assign bias = 9'b000111111; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:901:8  */
    assign expsum = n26_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:902:8  */
    assign sigx = n29_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:903:8  */
    assign sigy = n32_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:904:8  */
    assign sigprod = significandmultiplication_n33; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:905:8  */
    assign excsel = n38_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:906:8  */
    assign exc = n62_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:906:13  */
    assign exc_d1 = n11_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:907:8  */
    assign norm = n63_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:908:8  */
    assign exppostnorm = n66_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:909:8  */
    assign sigprodext = n70_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:909:20  */
    assign sigprodext_d1 = n12_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:910:8  */
    assign expsig = n75_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:910:16  */
    assign expsig_d1 = n13_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:911:8  */
    assign sticky = n76_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:911:16  */
    assign sticky_d1 = n14_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:912:8  */
    assign guard = n81_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:913:8  */
    assign round = n88_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:914:8  */
    assign expsigpostround = roundingadder_n90; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:915:8  */
    assign excpostnorm = n108_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:916:8  */
    assign finalexc = n117_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:920:10  */
    always @(posedge clk)
        n10_q <= sign;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:920:10  */
    always @(posedge clk)
        n11_q <= exc;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:920:10  */
    always @(posedge clk)
        n12_q <= sigprodext;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:920:10  */
    always @(posedge clk)
        n13_q <= expsig;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:920:10  */
    always @(posedge clk)
        n14_q <= sticky;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:928:13  */
    assign n15_o = X[14];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:928:23  */
    assign n16_o = Y[14];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:928:18  */
    assign n17_o = n15_o ^ n16_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:929:13  */
    assign n18_o = X[13:7];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:930:13  */
    assign n19_o = Y[13:7];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:931:26  */
    assign n21_o = {2'b00, expx};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:931:42  */
    assign n23_o = {2'b00, expy};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:931:34  */
    assign n24_o = n21_o+n23_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:933:27  */
    assign n26_o = expsumpresub-bias;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:935:19  */
    assign n27_o = X[6:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:935:16  */
    assign n29_o = {1'b1, n27_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:936:19  */
    assign n30_o = Y[6:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:936:16  */
    assign n32_o = {1'b1, n30_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:940:23  */
    assign significandmultiplication_n33 = significandmultiplication_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:937:4  */
    intmultiplier_usingdsp_8_8_16_unsigned_f300_uid4 significandmultiplication(
        .clk(clk),
        .rst(rst),
        .x(sigx),
        .y(sigy),
        .r(significandmultiplication_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:944:15  */
    assign n36_o = X[16:15];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:944:33  */
    assign n37_o = Y[16:15];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:944:30  */
    assign n38_o = {n36_o, n37_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:946:16  */
    assign n41_o = excsel == 4'b0000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:946:29  */
    assign n43_o = excsel == 4'b0001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:946:29  */
    assign n44_o = n41_o | n43_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:946:38  */
    assign n46_o = excsel == 4'b0100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:946:38  */
    assign n47_o = n44_o | n46_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:947:16  */
    assign n50_o = excsel == 4'b0101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:948:16  */
    assign n53_o = excsel == 4'b0110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:948:28  */
    assign n55_o = excsel == 4'b1001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:948:28  */
    assign n56_o = n53_o | n55_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:948:37  */
    assign n58_o = excsel == 4'b1010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:948:37  */
    assign n59_o = n56_o | n58_o;
    assign n61_o = {n59_o, n50_o, n47_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:945:4  */
    always @*
        case (n61_o)
            3'b100: n62_o <= 2'b10;
            3'b010: n62_o <= 2'b01;
            3'b001: n62_o <= 2'b00;
            default: n62_o <= 2'b11;
        endcase
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:950:19  */
    assign n63_o = sigprod[15];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:952:40  */
    assign n65_o = {8'b00000000, norm};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:952:26  */
    assign n66_o = expsum+n65_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:954:25  */
    assign n67_o = sigprod[14:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:954:39  */
    assign n69_o = {n67_o, 1'b0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:954:45  */
    assign n70_o = norm ? n69_o : n73_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:955:33  */
    assign n71_o = sigprod[13:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:955:47  */
    assign n73_o = {n71_o, 2'b00};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:956:38  */
    assign n74_o = sigprodext[15:9];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:956:26  */
    assign n75_o = {exppostnorm, n74_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:957:24  */
    assign n76_o = sigprodext[8];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:959:35  */
    assign n78_o = sigprodext_d1[7:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:959:47  */
    assign n80_o = n78_o == 8'b00000000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:959:17  */
    assign n81_o = n80_o ? 1'b0 : 1'b1;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:960:57  */
    assign n83_o = sigprodext_d1[9];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:960:40  */
    assign n84_o = ~n83_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:960:36  */
    assign n85_o = guard & n84_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:960:80  */
    assign n86_o = sigprodext_d1[9];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:960:63  */
    assign n87_o = n85_o | n86_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:960:23  */
    assign n88_o = sticky_d1 & n87_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:965:23  */
    assign roundingadder_n90 = roundingadder_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:961:7  */
    intadder_16_f300_uid70 roundingadder(
        .clk(clk),
        .rst(rst),
        .x(expsig_d1),
        .y(n89_o),
        .cin(round),
        .r(roundingadder_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:968:24  */
    assign n93_o = expsigpostround[15:14];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:969:26  */
    assign n96_o = n93_o == 2'b00;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:970:49  */
    assign n99_o = n93_o == 2'b01;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:971:49  */
    assign n102_o = n93_o == 2'b11;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:971:58  */
    assign n104_o = n93_o == 2'b10;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:971:58  */
    assign n105_o = n102_o | n104_o;
    assign n107_o = {n105_o, n99_o, n96_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:968:4  */
    always @*
        case (n107_o)
            3'b100: n108_o <= 2'b00;
            3'b010: n108_o <= 2'b10;
            3'b001: n108_o <= 2'b01;
            default: n108_o <= 2'b11;
        endcase
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:974:23  */
    assign n110_o = exc_d1 == 2'b11;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:974:33  */
    assign n112_o = exc_d1 == 2'b10;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:974:33  */
    assign n113_o = n110_o | n112_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:974:38  */
    assign n115_o = exc_d1 == 2'b00;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:974:38  */
    assign n116_o = n113_o | n115_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:973:4  */
    always @*
        case (n116_o)
            1'b1: n117_o <= exc_d1;
            default: n117_o <= excpostnorm;
        endcase
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:976:18  */
    assign n118_o = {finalexc, sign_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:976:45  */
    assign n119_o = expsigpostround[13:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_7_7.vhdl:976:28  */
    assign n120_o = {n118_o, n119_o};
endmodule

