module intadder_9_f300_uid32
    (input clk,
        input rst,
        input[8:0] x,
        input[8:0] y,
        input cin,
        output[8:0] r);
    wire[8:0] n538_o;
    wire[8:0] n539_o;
    wire[8:0] n540_o;
    assign r = n540_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:189:12  */
    assign n538_o = x+y;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:189:16  */
    assign n539_o = {8'b0, cin};  //  uext
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:189:16  */
    assign n540_o = n538_o+n539_o;
endmodule

module compressor_23_3
    (input[2:0] x0,
        input[1:0] x1,
        output[2:0] r);
    wire[4:0] x;
    wire[4:0] n433_o;
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
    wire[31:0] n531_o;
    reg[2:0] n532_o;
    assign r = n532_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:116:8  */
    assign x = n433_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:118:11  */
    assign n433_o = {x1, x0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:120:13  */
    assign n436_o = x == 5'b00000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:121:13  */
    assign n439_o = x == 5'b00001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:122:13  */
    assign n442_o = x == 5'b00010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:123:13  */
    assign n445_o = x == 5'b00011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:124:13  */
    assign n448_o = x == 5'b00100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:125:13  */
    assign n451_o = x == 5'b00101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:126:13  */
    assign n454_o = x == 5'b00110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:127:13  */
    assign n457_o = x == 5'b00111;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:128:13  */
    assign n460_o = x == 5'b01000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:129:13  */
    assign n463_o = x == 5'b01001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:130:13  */
    assign n466_o = x == 5'b01010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:131:13  */
    assign n469_o = x == 5'b01011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:132:13  */
    assign n472_o = x == 5'b01100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:133:13  */
    assign n475_o = x == 5'b01101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:134:13  */
    assign n478_o = x == 5'b01110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:135:13  */
    assign n481_o = x == 5'b01111;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:136:13  */
    assign n484_o = x == 5'b10000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:137:13  */
    assign n487_o = x == 5'b10001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:138:13  */
    assign n490_o = x == 5'b10010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:139:13  */
    assign n493_o = x == 5'b10011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:140:13  */
    assign n496_o = x == 5'b10100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:141:13  */
    assign n499_o = x == 5'b10101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:142:13  */
    assign n502_o = x == 5'b10110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:143:13  */
    assign n505_o = x == 5'b10111;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:144:13  */
    assign n508_o = x == 5'b11000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:145:13  */
    assign n511_o = x == 5'b11001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:146:13  */
    assign n514_o = x == 5'b11010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:147:13  */
    assign n517_o = x == 5'b11011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:148:13  */
    assign n520_o = x == 5'b11100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:149:13  */
    assign n523_o = x == 5'b11101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:150:13  */
    assign n526_o = x == 5'b11110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:151:13  */
    assign n529_o = x == 5'b11111;
    assign n531_o = {n529_o, n526_o, n523_o, n520_o, n517_o, n514_o, n511_o, n508_o, n505_o, n502_o, n499_o, n496_o, n493_o, n490_o, n487_o, n484_o, n481_o, n478_o, n475_o, n472_o, n469_o, n466_o, n463_o, n460_o, n457_o, n454_o, n451_o, n448_o, n445_o, n442_o, n439_o, n436_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:119:4  */
    always @*
        case (n531_o)
            32'b10000000000000000000000000000000: n532_o <= 3'b111;
            32'b01000000000000000000000000000000: n532_o <= 3'b110;
            32'b00100000000000000000000000000000: n532_o <= 3'b110;
            32'b00010000000000000000000000000000: n532_o <= 3'b101;
            32'b00001000000000000000000000000000: n532_o <= 3'b110;
            32'b00000100000000000000000000000000: n532_o <= 3'b101;
            32'b00000010000000000000000000000000: n532_o <= 3'b101;
            32'b00000001000000000000000000000000: n532_o <= 3'b100;
            32'b00000000100000000000000000000000: n532_o <= 3'b101;
            32'b00000000010000000000000000000000: n532_o <= 3'b100;
            32'b00000000001000000000000000000000: n532_o <= 3'b100;
            32'b00000000000100000000000000000000: n532_o <= 3'b011;
            32'b00000000000010000000000000000000: n532_o <= 3'b100;
            32'b00000000000001000000000000000000: n532_o <= 3'b011;
            32'b00000000000000100000000000000000: n532_o <= 3'b011;
            32'b00000000000000010000000000000000: n532_o <= 3'b010;
            32'b00000000000000001000000000000000: n532_o <= 3'b101;
            32'b00000000000000000100000000000000: n532_o <= 3'b100;
            32'b00000000000000000010000000000000: n532_o <= 3'b100;
            32'b00000000000000000001000000000000: n532_o <= 3'b011;
            32'b00000000000000000000100000000000: n532_o <= 3'b100;
            32'b00000000000000000000010000000000: n532_o <= 3'b011;
            32'b00000000000000000000001000000000: n532_o <= 3'b011;
            32'b00000000000000000000000100000000: n532_o <= 3'b010;
            32'b00000000000000000000000010000000: n532_o <= 3'b011;
            32'b00000000000000000000000001000000: n532_o <= 3'b010;
            32'b00000000000000000000000000100000: n532_o <= 3'b010;
            32'b00000000000000000000000000010000: n532_o <= 3'b001;
            32'b00000000000000000000000000001000: n532_o <= 3'b010;
            32'b00000000000000000000000000000100: n532_o <= 3'b001;
            32'b00000000000000000000000000000010: n532_o <= 3'b001;
            32'b00000000000000000000000000000001: n532_o <= 3'b000;
            default: n532_o <= 3'bXXX;
        endcase
endmodule

module smallmulttablep3x3r6xuyu_f300_uid9
    (input clk,
        input rst,
        input[5:0] x,
        output[5:0] y);
    wire[5:0] tableout;
    wire n239_o;
    wire n242_o;
    wire n245_o;
    wire n248_o;
    wire n251_o;
    wire n254_o;
    wire n257_o;
    wire n260_o;
    wire n263_o;
    wire n266_o;
    wire n269_o;
    wire n272_o;
    wire n275_o;
    wire n278_o;
    wire n281_o;
    wire n284_o;
    wire n287_o;
    wire n290_o;
    wire n293_o;
    wire n296_o;
    wire n299_o;
    wire n302_o;
    wire n305_o;
    wire n308_o;
    wire n311_o;
    wire n314_o;
    wire n317_o;
    wire n320_o;
    wire n323_o;
    wire n326_o;
    wire n329_o;
    wire n332_o;
    wire n335_o;
    wire n338_o;
    wire n341_o;
    wire n344_o;
    wire n347_o;
    wire n350_o;
    wire n353_o;
    wire n356_o;
    wire n359_o;
    wire n362_o;
    wire n365_o;
    wire n368_o;
    wire n371_o;
    wire n374_o;
    wire n377_o;
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
    wire[63:0] n430_o;
    reg[5:0] n431_o;
    assign y = tableout;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:17:8  */
    assign tableout = n431_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:25:13  */
    assign n239_o = x == 6'b000000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:26:13  */
    assign n242_o = x == 6'b000001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:27:13  */
    assign n245_o = x == 6'b000010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:28:13  */
    assign n248_o = x == 6'b000011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:29:13  */
    assign n251_o = x == 6'b000100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:30:13  */
    assign n254_o = x == 6'b000101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:31:13  */
    assign n257_o = x == 6'b000110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:32:13  */
    assign n260_o = x == 6'b000111;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:33:13  */
    assign n263_o = x == 6'b001000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:34:13  */
    assign n266_o = x == 6'b001001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:35:13  */
    assign n269_o = x == 6'b001010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:36:13  */
    assign n272_o = x == 6'b001011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:37:13  */
    assign n275_o = x == 6'b001100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:38:13  */
    assign n278_o = x == 6'b001101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:39:13  */
    assign n281_o = x == 6'b001110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:40:13  */
    assign n284_o = x == 6'b001111;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:41:13  */
    assign n287_o = x == 6'b010000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:42:13  */
    assign n290_o = x == 6'b010001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:43:13  */
    assign n293_o = x == 6'b010010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:44:13  */
    assign n296_o = x == 6'b010011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:45:13  */
    assign n299_o = x == 6'b010100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:46:13  */
    assign n302_o = x == 6'b010101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:47:13  */
    assign n305_o = x == 6'b010110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:48:13  */
    assign n308_o = x == 6'b010111;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:49:13  */
    assign n311_o = x == 6'b011000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:50:13  */
    assign n314_o = x == 6'b011001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:51:13  */
    assign n317_o = x == 6'b011010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:52:13  */
    assign n320_o = x == 6'b011011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:53:13  */
    assign n323_o = x == 6'b011100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:54:13  */
    assign n326_o = x == 6'b011101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:55:13  */
    assign n329_o = x == 6'b011110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:56:13  */
    assign n332_o = x == 6'b011111;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:57:13  */
    assign n335_o = x == 6'b100000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:58:13  */
    assign n338_o = x == 6'b100001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:59:13  */
    assign n341_o = x == 6'b100010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:60:13  */
    assign n344_o = x == 6'b100011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:61:13  */
    assign n347_o = x == 6'b100100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:62:13  */
    assign n350_o = x == 6'b100101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:63:13  */
    assign n353_o = x == 6'b100110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:64:13  */
    assign n356_o = x == 6'b100111;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:65:13  */
    assign n359_o = x == 6'b101000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:66:13  */
    assign n362_o = x == 6'b101001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:67:13  */
    assign n365_o = x == 6'b101010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:68:13  */
    assign n368_o = x == 6'b101011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:69:13  */
    assign n371_o = x == 6'b101100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:70:13  */
    assign n374_o = x == 6'b101101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:71:13  */
    assign n377_o = x == 6'b101110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:72:13  */
    assign n380_o = x == 6'b101111;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:73:13  */
    assign n383_o = x == 6'b110000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:74:13  */
    assign n386_o = x == 6'b110001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:75:13  */
    assign n389_o = x == 6'b110010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:76:13  */
    assign n392_o = x == 6'b110011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:77:13  */
    assign n395_o = x == 6'b110100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:78:13  */
    assign n398_o = x == 6'b110101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:79:13  */
    assign n401_o = x == 6'b110110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:80:13  */
    assign n404_o = x == 6'b110111;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:81:13  */
    assign n407_o = x == 6'b111000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:82:13  */
    assign n410_o = x == 6'b111001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:83:13  */
    assign n413_o = x == 6'b111010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:84:13  */
    assign n416_o = x == 6'b111011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:85:13  */
    assign n419_o = x == 6'b111100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:86:13  */
    assign n422_o = x == 6'b111101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:87:13  */
    assign n425_o = x == 6'b111110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:88:13  */
    assign n428_o = x == 6'b111111;
    assign n430_o = {n428_o, n425_o, n422_o, n419_o, n416_o, n413_o, n410_o, n407_o, n404_o, n401_o, n398_o, n395_o, n392_o, n389_o, n386_o, n383_o, n380_o, n377_o, n374_o, n371_o, n368_o, n365_o, n362_o, n359_o, n356_o, n353_o, n350_o, n347_o, n344_o, n341_o, n338_o, n335_o, n332_o, n329_o, n326_o, n323_o, n320_o, n317_o, n314_o, n311_o, n308_o, n305_o, n302_o, n299_o, n296_o, n293_o, n290_o, n287_o, n284_o, n281_o, n278_o, n275_o, n272_o, n269_o, n266_o, n263_o, n260_o, n257_o, n254_o, n251_o, n248_o, n245_o, n242_o, n239_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:24:3  */
    always @*
        case (n430_o)
            64'b1000000000000000000000000000000000000000000000000000000000000000: n431_o <= 6'b110001;
            64'b0100000000000000000000000000000000000000000000000000000000000000: n431_o <= 6'b101010;
            64'b0010000000000000000000000000000000000000000000000000000000000000: n431_o <= 6'b100011;
            64'b0001000000000000000000000000000000000000000000000000000000000000: n431_o <= 6'b011100;
            64'b0000100000000000000000000000000000000000000000000000000000000000: n431_o <= 6'b010101;
            64'b0000010000000000000000000000000000000000000000000000000000000000: n431_o <= 6'b001110;
            64'b0000001000000000000000000000000000000000000000000000000000000000: n431_o <= 6'b000111;
            64'b0000000100000000000000000000000000000000000000000000000000000000: n431_o <= 6'b000000;
            64'b0000000010000000000000000000000000000000000000000000000000000000: n431_o <= 6'b101010;
            64'b0000000001000000000000000000000000000000000000000000000000000000: n431_o <= 6'b100100;
            64'b0000000000100000000000000000000000000000000000000000000000000000: n431_o <= 6'b011110;
            64'b0000000000010000000000000000000000000000000000000000000000000000: n431_o <= 6'b011000;
            64'b0000000000001000000000000000000000000000000000000000000000000000: n431_o <= 6'b010010;
            64'b0000000000000100000000000000000000000000000000000000000000000000: n431_o <= 6'b001100;
            64'b0000000000000010000000000000000000000000000000000000000000000000: n431_o <= 6'b000110;
            64'b0000000000000001000000000000000000000000000000000000000000000000: n431_o <= 6'b000000;
            64'b0000000000000000100000000000000000000000000000000000000000000000: n431_o <= 6'b100011;
            64'b0000000000000000010000000000000000000000000000000000000000000000: n431_o <= 6'b011110;
            64'b0000000000000000001000000000000000000000000000000000000000000000: n431_o <= 6'b011001;
            64'b0000000000000000000100000000000000000000000000000000000000000000: n431_o <= 6'b010100;
            64'b0000000000000000000010000000000000000000000000000000000000000000: n431_o <= 6'b001111;
            64'b0000000000000000000001000000000000000000000000000000000000000000: n431_o <= 6'b001010;
            64'b0000000000000000000000100000000000000000000000000000000000000000: n431_o <= 6'b000101;
            64'b0000000000000000000000010000000000000000000000000000000000000000: n431_o <= 6'b000000;
            64'b0000000000000000000000001000000000000000000000000000000000000000: n431_o <= 6'b011100;
            64'b0000000000000000000000000100000000000000000000000000000000000000: n431_o <= 6'b011000;
            64'b0000000000000000000000000010000000000000000000000000000000000000: n431_o <= 6'b010100;
            64'b0000000000000000000000000001000000000000000000000000000000000000: n431_o <= 6'b010000;
            64'b0000000000000000000000000000100000000000000000000000000000000000: n431_o <= 6'b001100;
            64'b0000000000000000000000000000010000000000000000000000000000000000: n431_o <= 6'b001000;
            64'b0000000000000000000000000000001000000000000000000000000000000000: n431_o <= 6'b000100;
            64'b0000000000000000000000000000000100000000000000000000000000000000: n431_o <= 6'b000000;
            64'b0000000000000000000000000000000010000000000000000000000000000000: n431_o <= 6'b010101;
            64'b0000000000000000000000000000000001000000000000000000000000000000: n431_o <= 6'b010010;
            64'b0000000000000000000000000000000000100000000000000000000000000000: n431_o <= 6'b001111;
            64'b0000000000000000000000000000000000010000000000000000000000000000: n431_o <= 6'b001100;
            64'b0000000000000000000000000000000000001000000000000000000000000000: n431_o <= 6'b001001;
            64'b0000000000000000000000000000000000000100000000000000000000000000: n431_o <= 6'b000110;
            64'b0000000000000000000000000000000000000010000000000000000000000000: n431_o <= 6'b000011;
            64'b0000000000000000000000000000000000000001000000000000000000000000: n431_o <= 6'b000000;
            64'b0000000000000000000000000000000000000000100000000000000000000000: n431_o <= 6'b001110;
            64'b0000000000000000000000000000000000000000010000000000000000000000: n431_o <= 6'b001100;
            64'b0000000000000000000000000000000000000000001000000000000000000000: n431_o <= 6'b001010;
            64'b0000000000000000000000000000000000000000000100000000000000000000: n431_o <= 6'b001000;
            64'b0000000000000000000000000000000000000000000010000000000000000000: n431_o <= 6'b000110;
            64'b0000000000000000000000000000000000000000000001000000000000000000: n431_o <= 6'b000100;
            64'b0000000000000000000000000000000000000000000000100000000000000000: n431_o <= 6'b000010;
            64'b0000000000000000000000000000000000000000000000010000000000000000: n431_o <= 6'b000000;
            64'b0000000000000000000000000000000000000000000000001000000000000000: n431_o <= 6'b000111;
            64'b0000000000000000000000000000000000000000000000000100000000000000: n431_o <= 6'b000110;
            64'b0000000000000000000000000000000000000000000000000010000000000000: n431_o <= 6'b000101;
            64'b0000000000000000000000000000000000000000000000000001000000000000: n431_o <= 6'b000100;
            64'b0000000000000000000000000000000000000000000000000000100000000000: n431_o <= 6'b000011;
            64'b0000000000000000000000000000000000000000000000000000010000000000: n431_o <= 6'b000010;
            64'b0000000000000000000000000000000000000000000000000000001000000000: n431_o <= 6'b000001;
            64'b0000000000000000000000000000000000000000000000000000000100000000: n431_o <= 6'b000000;
            64'b0000000000000000000000000000000000000000000000000000000010000000: n431_o <= 6'b000000;
            64'b0000000000000000000000000000000000000000000000000000000001000000: n431_o <= 6'b000000;
            64'b0000000000000000000000000000000000000000000000000000000000100000: n431_o <= 6'b000000;
            64'b0000000000000000000000000000000000000000000000000000000000010000: n431_o <= 6'b000000;
            64'b0000000000000000000000000000000000000000000000000000000000001000: n431_o <= 6'b000000;
            64'b0000000000000000000000000000000000000000000000000000000000000100: n431_o <= 6'b000000;
            64'b0000000000000000000000000000000000000000000000000000000000000010: n431_o <= 6'b000000;
            64'b0000000000000000000000000000000000000000000000000000000000000001: n431_o <= 6'b000000;
            default: n431_o <= 6'bXXXXXX;
        endcase
endmodule

module intadder_12_f300_uid42
    (input clk,
        input rst,
        input[11:0] x,
        input[11:0] y,
        input cin,
        output[11:0] r);
    wire[11:0] n229_o;
    wire[11:0] n230_o;
    wire[11:0] n231_o;
    assign r = n231_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:475:12  */
    assign n229_o = x+y;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:475:16  */
    assign n230_o = {11'b0, cin};  //  uext
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:475:16  */
    assign n231_o = n229_o+n230_o;
endmodule

module intmultiplier_usingdsp_6_6_12_unsigned_f300_uid4
    (input clk,
        input rst,
        input[5:0] x,
        input[5:0] y,
        output[11:0] r);
    wire[5:0] xx_m5;
    wire[5:0] yy_m5;
    wire[5:0] xp_m5b7;
    wire[5:0] yp_m5b7;
    wire[2:0] x_m5b7_0;
    wire[2:0] x_m5b7_1;
    wire[2:0] y_m5b7_0;
    wire[2:0] y_m5b7_1;
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
    wire[5:0] y1x0_7_m5;
    wire[5:0] pp7x0y1_m5;
    wire heap_bh6_w3_2;
    wire heap_bh6_w4_2;
    wire heap_bh6_w5_2;
    wire heap_bh6_w6_1;
    wire heap_bh6_w7_1;
    wire heap_bh6_w8_1;
    wire[5:0] y1x1_7_m5;
    wire[5:0] pp7x1y1_m5;
    wire heap_bh6_w6_2;
    wire heap_bh6_w7_2;
    wire heap_bh6_w8_2;
    wire heap_bh6_w9_0;
    wire heap_bh6_w10_0;
    wire heap_bh6_w11_0;
    wire[2:0] tempr_bh6_0;
    wire[2:0] compressorin_bh6_0_0;
    wire[1:0] compressorin_bh6_0_1;
    wire[2:0] compressorout_bh6_0_0;
    wire heap_bh6_w3_3;
    wire heap_bh6_w4_3;
    wire heap_bh6_w5_3;
    wire[2:0] compressorin_bh6_1_2;
    wire[1:0] compressorin_bh6_1_3;
    wire[2:0] compressorout_bh6_1_1;
    wire heap_bh6_w5_4;
    wire heap_bh6_w6_3;
    wire heap_bh6_w7_3;
    wire[2:0] compressorin_bh6_2_4;
    wire[1:0] compressorin_bh6_2_5;
    wire[2:0] compressorout_bh6_2_2;
    wire heap_bh6_w7_4;
    wire heap_bh6_w8_3;
    wire heap_bh6_w9_1;
    wire[8:0] finaladderin0_bh6;
    wire[8:0] finaladderin1_bh6;
    wire finaladdercin_bh6;
    wire[8:0] finaladderout_bh6;
    wire tempr_bh6_1;
    wire[12:0] compressionresult6;
    wire[2:0] n128_o;
    wire[2:0] n129_o;
    wire[2:0] n130_o;
    wire[2:0] n131_o;
    wire[5:0] n132_o;
    wire[5:0] pp_m5_7x0y0_tbl_n133;
    wire[5:0] pp_m5_7x0y0_tbl_y;
    wire n136_o;
    wire n137_o;
    wire n138_o;
    wire n139_o;
    wire n140_o;
    wire n141_o;
    wire[5:0] n142_o;
    wire[5:0] pp_m5_7x1y0_tbl_n143;
    wire[5:0] pp_m5_7x1y0_tbl_y;
    wire n146_o;
    wire n147_o;
    wire n148_o;
    wire n149_o;
    wire n150_o;
    wire n151_o;
    wire[5:0] n152_o;
    wire[5:0] pp_m5_7x0y1_tbl_n153;
    wire[5:0] pp_m5_7x0y1_tbl_y;
    wire n156_o;
    wire n157_o;
    wire n158_o;
    wire n159_o;
    wire n160_o;
    wire n161_o;
    wire[5:0] n162_o;
    wire[5:0] pp_m5_7x1y1_tbl_n163;
    wire[5:0] pp_m5_7x1y1_tbl_y;
    wire n166_o;
    wire n167_o;
    wire n168_o;
    wire n169_o;
    wire n170_o;
    wire n171_o;
    wire[1:0] n172_o;
    wire[2:0] n173_o;
    wire[1:0] n174_o;
    wire[2:0] n175_o;
    wire[1:0] n176_o;
    wire[2:0] compressor_bh6_0_n177;
    wire[2:0] compressor_bh6_0_r;
    wire n180_o;
    wire n181_o;
    wire n182_o;
    wire[1:0] n183_o;
    wire[2:0] n184_o;
    wire[1:0] n185_o;
    wire[2:0] compressor_bh6_1_n186;
    wire[2:0] compressor_bh6_1_r;
    wire n189_o;
    wire n190_o;
    wire n191_o;
    wire[1:0] n192_o;
    wire[2:0] n193_o;
    wire[1:0] n194_o;
    wire[2:0] compressor_bh6_2_n195;
    wire[2:0] compressor_bh6_2_r;
    wire n198_o;
    wire n199_o;
    wire n200_o;
    wire[1:0] n202_o;
    wire[2:0] n203_o;
    wire[3:0] n204_o;
    wire[4:0] n205_o;
    wire[5:0] n206_o;
    wire[6:0] n207_o;
    wire[7:0] n208_o;
    wire[8:0] n209_o;
    wire[3:0] n211_o;
    wire[4:0] n212_o;
    wire[5:0] n213_o;
    wire[6:0] n214_o;
    wire[7:0] n215_o;
    wire[8:0] n216_o;
    wire[8:0] adder_final6_0_n218;
    wire[8:0] adder_final6_0_r;
    wire[9:0] n221_o;
    wire[12:0] n222_o;
    wire[11:0] n223_o;
    assign r = n223_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:314:33  */
    assign xx_m5 = x; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:315:33  */
    assign yy_m5 = y; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:237:8  */
    assign xp_m5b7 = xx_m5; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:238:8  */
    assign yp_m5b7 = yy_m5; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:239:8  */
    assign x_m5b7_0 = n128_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:240:8  */
    assign x_m5b7_1 = n129_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:241:8  */
    assign y_m5b7_0 = n130_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:242:8  */
    assign y_m5b7_1 = n131_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:243:8  */
    assign y0x0_7_m5 = n132_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:244:8  */
    assign pp7x0y0_m5 = pp_m5_7x0y0_tbl_n133; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:245:8  */
    assign heap_bh6_w0_0 = n136_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:246:8  */
    assign heap_bh6_w1_0 = n137_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:247:8  */
    assign heap_bh6_w2_0 = n138_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:248:8  */
    assign heap_bh6_w3_0 = n139_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:249:8  */
    assign heap_bh6_w4_0 = n140_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:250:8  */
    assign heap_bh6_w5_0 = n141_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:251:8  */
    assign y0x1_7_m5 = n142_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:252:8  */
    assign pp7x1y0_m5 = pp_m5_7x1y0_tbl_n143; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:253:8  */
    assign heap_bh6_w3_1 = n146_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:254:8  */
    assign heap_bh6_w4_1 = n147_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:255:8  */
    assign heap_bh6_w5_1 = n148_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:256:8  */
    assign heap_bh6_w6_0 = n149_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:257:8  */
    assign heap_bh6_w7_0 = n150_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:258:8  */
    assign heap_bh6_w8_0 = n151_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:259:8  */
    assign y1x0_7_m5 = n152_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:260:8  */
    assign pp7x0y1_m5 = pp_m5_7x0y1_tbl_n153; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:261:8  */
    assign heap_bh6_w3_2 = n156_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:262:8  */
    assign heap_bh6_w4_2 = n157_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:263:8  */
    assign heap_bh6_w5_2 = n158_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:264:8  */
    assign heap_bh6_w6_1 = n159_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:265:8  */
    assign heap_bh6_w7_1 = n160_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:266:8  */
    assign heap_bh6_w8_1 = n161_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:267:8  */
    assign y1x1_7_m5 = n162_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:268:8  */
    assign pp7x1y1_m5 = pp_m5_7x1y1_tbl_n163; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:269:8  */
    assign heap_bh6_w6_2 = n166_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:270:8  */
    assign heap_bh6_w7_2 = n167_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:271:8  */
    assign heap_bh6_w8_2 = n168_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:272:8  */
    assign heap_bh6_w9_0 = n169_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:273:8  */
    assign heap_bh6_w10_0 = n170_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:274:8  */
    assign heap_bh6_w11_0 = n171_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:275:8  */
    assign tempr_bh6_0 = n173_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:276:8  */
    assign compressorin_bh6_0_0 = n175_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:277:8  */
    assign compressorin_bh6_0_1 = n176_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:278:8  */
    assign compressorout_bh6_0_0 = compressor_bh6_0_n177; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:279:8  */
    assign heap_bh6_w3_3 = n180_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:280:8  */
    assign heap_bh6_w4_3 = n181_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:281:8  */
    assign heap_bh6_w5_3 = n182_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:282:8  */
    assign compressorin_bh6_1_2 = n184_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:283:8  */
    assign compressorin_bh6_1_3 = n185_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:284:8  */
    assign compressorout_bh6_1_1 = compressor_bh6_1_n186; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:285:8  */
    assign heap_bh6_w5_4 = n189_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:286:8  */
    assign heap_bh6_w6_3 = n190_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:287:8  */
    assign heap_bh6_w7_3 = n191_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:288:8  */
    assign compressorin_bh6_2_4 = n193_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:289:8  */
    assign compressorin_bh6_2_5 = n194_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:290:8  */
    assign compressorout_bh6_2_2 = compressor_bh6_2_n195; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:291:8  */
    assign heap_bh6_w7_4 = n198_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:292:8  */
    assign heap_bh6_w8_3 = n199_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:293:8  */
    assign heap_bh6_w9_1 = n200_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:294:8  */
    assign finaladderin0_bh6 = n209_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:295:8  */
    assign finaladderin1_bh6 = n216_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:296:8  */
    assign finaladdercin_bh6 = 1'b0; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:297:8  */
    assign finaladderout_bh6 = adder_final6_0_n218; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:298:8  */
    assign tempr_bh6_1 = heap_bh6_w3_3; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:299:8  */
    assign compressionresult6 = n222_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:316:23  */
    assign n128_o = xp_m5b7[2:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:317:23  */
    assign n129_o = xp_m5b7[5:3];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:318:23  */
    assign n130_o = yp_m5b7[2:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:319:23  */
    assign n131_o = yp_m5b7[5:3];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:322:26  */
    assign n132_o = {y_m5b7_0, x_m5b7_0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:327:23  */
    assign pp_m5_7x0y0_tbl_n133 = pp_m5_7x0y0_tbl_y; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:323:4  */
    smallmulttablep3x3r6xuyu_f300_uid9 pp_m5_7x0y0_tbl(
        .clk(clk),
        .rst(rst),
        .x(y0x0_7_m5),
        .y(pp_m5_7x0y0_tbl_y));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:329:31  */
    assign n136_o = pp7x0y0_m5[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:330:31  */
    assign n137_o = pp7x0y0_m5[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:331:31  */
    assign n138_o = pp7x0y0_m5[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:332:31  */
    assign n139_o = pp7x0y0_m5[3];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:333:31  */
    assign n140_o = pp7x0y0_m5[4];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:334:31  */
    assign n141_o = pp7x0y0_m5[5];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:336:26  */
    assign n142_o = {y_m5b7_0, x_m5b7_1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:341:23  */
    assign pp_m5_7x1y0_tbl_n143 = pp_m5_7x1y0_tbl_y; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:337:4  */
    smallmulttablep3x3r6xuyu_f300_uid9 pp_m5_7x1y0_tbl(
        .clk(clk),
        .rst(rst),
        .x(y0x1_7_m5),
        .y(pp_m5_7x1y0_tbl_y));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:343:31  */
    assign n146_o = pp7x1y0_m5[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:344:31  */
    assign n147_o = pp7x1y0_m5[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:345:31  */
    assign n148_o = pp7x1y0_m5[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:346:31  */
    assign n149_o = pp7x1y0_m5[3];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:347:31  */
    assign n150_o = pp7x1y0_m5[4];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:348:31  */
    assign n151_o = pp7x1y0_m5[5];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:351:26  */
    assign n152_o = {y_m5b7_1, x_m5b7_0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:356:23  */
    assign pp_m5_7x0y1_tbl_n153 = pp_m5_7x0y1_tbl_y; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:352:4  */
    smallmulttablep3x3r6xuyu_f300_uid9 pp_m5_7x0y1_tbl(
        .clk(clk),
        .rst(rst),
        .x(y1x0_7_m5),
        .y(pp_m5_7x0y1_tbl_y));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:358:31  */
    assign n156_o = pp7x0y1_m5[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:359:31  */
    assign n157_o = pp7x0y1_m5[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:360:31  */
    assign n158_o = pp7x0y1_m5[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:361:31  */
    assign n159_o = pp7x0y1_m5[3];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:362:31  */
    assign n160_o = pp7x0y1_m5[4];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:363:31  */
    assign n161_o = pp7x0y1_m5[5];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:365:26  */
    assign n162_o = {y_m5b7_1, x_m5b7_1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:370:23  */
    assign pp_m5_7x1y1_tbl_n163 = pp_m5_7x1y1_tbl_y; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:366:4  */
    smallmulttablep3x3r6xuyu_f300_uid9 pp_m5_7x1y1_tbl(
        .clk(clk),
        .rst(rst),
        .x(y1x1_7_m5),
        .y(pp_m5_7x1y1_tbl_y));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:372:31  */
    assign n166_o = pp7x1y1_m5[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:373:31  */
    assign n167_o = pp7x1y1_m5[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:374:31  */
    assign n168_o = pp7x1y1_m5[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:375:31  */
    assign n169_o = pp7x1y1_m5[3];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:376:32  */
    assign n170_o = pp7x1y1_m5[4];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:377:32  */
    assign n171_o = pp7x1y1_m5[5];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:389:33  */
    assign n172_o = {heap_bh6_w2_0, heap_bh6_w1_0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:389:49  */
    assign n173_o = {n172_o, heap_bh6_w0_0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:392:42  */
    assign n174_o = {heap_bh6_w3_2, heap_bh6_w3_1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:392:58  */
    assign n175_o = {n174_o, heap_bh6_w3_0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:393:42  */
    assign n176_o = {heap_bh6_w4_2, heap_bh6_w4_1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:395:23  */
    assign compressor_bh6_0_n177 = compressor_bh6_0_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:394:7  */
    compressor_23_3 compressor_bh6_0(
        .x0(compressorin_bh6_0_0),
        .x1(compressorin_bh6_0_1),
        .r(compressor_bh6_0_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:398:42  */
    assign n180_o = compressorout_bh6_0_0[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:399:42  */
    assign n181_o = compressorout_bh6_0_0[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:400:42  */
    assign n182_o = compressorout_bh6_0_0[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:403:42  */
    assign n183_o = {heap_bh6_w5_2, heap_bh6_w5_1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:403:58  */
    assign n184_o = {n183_o, heap_bh6_w5_0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:404:42  */
    assign n185_o = {heap_bh6_w6_2, heap_bh6_w6_1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:406:23  */
    assign compressor_bh6_1_n186 = compressor_bh6_1_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:405:7  */
    compressor_23_3 compressor_bh6_1(
        .x0(compressorin_bh6_1_2),
        .x1(compressorin_bh6_1_3),
        .r(compressor_bh6_1_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:409:42  */
    assign n189_o = compressorout_bh6_1_1[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:410:42  */
    assign n190_o = compressorout_bh6_1_1[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:411:42  */
    assign n191_o = compressorout_bh6_1_1[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:414:42  */
    assign n192_o = {heap_bh6_w7_2, heap_bh6_w7_1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:414:58  */
    assign n193_o = {n192_o, heap_bh6_w7_0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:415:42  */
    assign n194_o = {heap_bh6_w8_2, heap_bh6_w8_1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:417:23  */
    assign compressor_bh6_2_n195 = compressor_bh6_2_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:416:7  */
    compressor_23_3 compressor_bh6_2(
        .x0(compressorin_bh6_2_4),
        .x1(compressorin_bh6_2_5),
        .r(compressor_bh6_2_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:420:42  */
    assign n198_o = compressorout_bh6_2_2[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:421:42  */
    assign n199_o = compressorout_bh6_2_2[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:422:42  */
    assign n200_o = compressorout_bh6_2_2[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:424:29  */
    assign n202_o = {1'b0, heap_bh6_w11_0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:424:46  */
    assign n203_o = {n202_o, heap_bh6_w10_0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:424:63  */
    assign n204_o = {n203_o, heap_bh6_w9_0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:424:79  */
    assign n205_o = {n204_o, heap_bh6_w8_0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:424:95  */
    assign n206_o = {n205_o, heap_bh6_w7_4};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:424:111  */
    assign n207_o = {n206_o, heap_bh6_w6_0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:424:127  */
    assign n208_o = {n207_o, heap_bh6_w5_4};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:424:143  */
    assign n209_o = {n208_o, heap_bh6_w4_0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:425:41  */
    assign n211_o = {3'b000, heap_bh6_w9_1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:425:57  */
    assign n212_o = {n211_o, heap_bh6_w8_3};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:425:73  */
    assign n213_o = {n212_o, heap_bh6_w7_3};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:425:89  */
    assign n214_o = {n213_o, heap_bh6_w6_3};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:425:105  */
    assign n215_o = {n214_o, heap_bh6_w5_3};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:425:121  */
    assign n216_o = {n215_o, heap_bh6_w4_3};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:431:23  */
    assign adder_final6_0_n218 = adder_final6_0_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:427:7  */
    intadder_9_f300_uid32 adder_final6_0(
        .clk(clk),
        .rst(rst),
        .x(finaladderin0_bh6),
        .y(finaladderin1_bh6),
        .cin(finaladdercin_bh6),
        .r(adder_final6_0_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:437:44  */
    assign n221_o = {finaladderout_bh6, tempr_bh6_1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:437:58  */
    assign n222_o = {n221_o, tempr_bh6_0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:439:27  */
    assign n223_o = compressionresult6[11:0];
endmodule

module fmul
    (input clk,
        input rst,
        input[12:0] X,
        input[12:0] Y,
        output[12:0] R);
    wire sign;
    wire sign_d1;
    wire[4:0] expx;
    wire[4:0] expy;
    wire[6:0] expsumpresub;
    wire[6:0] bias;
    wire[6:0] expsum;
    wire[5:0] sigx;
    wire[5:0] sigy;
    wire[11:0] sigprod;
    wire[3:0] excsel;
    wire[1:0] exc;
    wire[1:0] exc_d1;
    wire norm;
    wire[6:0] exppostnorm;
    wire[11:0] sigprodext;
    wire[11:0] sigprodext_d1;
    wire[11:0] expsig;
    wire[11:0] expsig_d1;
    wire sticky;
    wire sticky_d1;
    wire guard;
    wire round;
    wire[11:0] expsigpostround;
    wire[1:0] excpostnorm;
    wire[1:0] finalexc;
    reg n10_q;
    reg[1:0] n11_q;
    reg[11:0] n12_q;
    reg[11:0] n13_q;
    reg n14_q;
    wire n15_o;
    wire n16_o;
    wire n17_o;
    wire[4:0] n18_o;
    wire[4:0] n19_o;
    wire[6:0] n21_o;
    wire[6:0] n23_o;
    wire[6:0] n24_o;
    wire[6:0] n26_o;
    wire[4:0] n27_o;
    wire[5:0] n29_o;
    wire[4:0] n30_o;
    wire[5:0] n32_o;
    wire[11:0] significandmultiplication_n33;
    wire[11:0] significandmultiplication_r;
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
    wire[6:0] n65_o;
    wire[6:0] n66_o;
    wire[10:0] n67_o;
    wire[11:0] n69_o;
    wire[11:0] n70_o;
    wire[9:0] n71_o;
    wire[11:0] n73_o;
    wire[4:0] n74_o;
    wire[11:0] n75_o;
    wire n76_o;
    wire[5:0] n78_o;
    wire n80_o;
    wire n81_o;
    wire n83_o;
    wire n84_o;
    wire n85_o;
    wire n86_o;
    wire n87_o;
    wire n88_o;
    localparam [11:0] n89_o = 12'b000000000000;
    wire[11:0] roundingadder_n90;
    wire[11:0] roundingadder_r;
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
    wire[9:0] n119_o;
    wire[12:0] n120_o;
    assign R = n120_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:518:8  */
    assign sign = n17_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:518:14  */
    assign sign_d1 = n10_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:519:8  */
    assign expx = n18_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:520:8  */
    assign expy = n19_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:521:8  */
    assign expsumpresub = n24_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:522:8  */
    assign bias = 7'b0001111; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:523:8  */
    assign expsum = n26_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:524:8  */
    assign sigx = n29_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:525:8  */
    assign sigy = n32_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:526:8  */
    assign sigprod = significandmultiplication_n33; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:527:8  */
    assign excsel = n38_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:528:8  */
    assign exc = n62_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:528:13  */
    assign exc_d1 = n11_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:529:8  */
    assign norm = n63_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:530:8  */
    assign exppostnorm = n66_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:531:8  */
    assign sigprodext = n70_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:531:20  */
    assign sigprodext_d1 = n12_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:532:8  */
    assign expsig = n75_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:532:16  */
    assign expsig_d1 = n13_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:533:8  */
    assign sticky = n76_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:533:16  */
    assign sticky_d1 = n14_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:534:8  */
    assign guard = n81_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:535:8  */
    assign round = n88_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:536:8  */
    assign expsigpostround = roundingadder_n90; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:537:8  */
    assign excpostnorm = n108_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:538:8  */
    assign finalexc = n117_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:542:10  */
    always @(posedge clk)
        n10_q <= sign;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:542:10  */
    always @(posedge clk)
        n11_q <= exc;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:542:10  */
    always @(posedge clk)
        n12_q <= sigprodext;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:542:10  */
    always @(posedge clk)
        n13_q <= expsig;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:542:10  */
    always @(posedge clk)
        n14_q <= sticky;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:550:13  */
    assign n15_o = X[10];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:550:23  */
    assign n16_o = Y[10];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:550:18  */
    assign n17_o = n15_o ^ n16_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:551:13  */
    assign n18_o = X[9:5];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:552:13  */
    assign n19_o = Y[9:5];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:553:26  */
    assign n21_o = {2'b00, expx};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:553:42  */
    assign n23_o = {2'b00, expy};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:553:34  */
    assign n24_o = n21_o+n23_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:555:27  */
    assign n26_o = expsumpresub-bias;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:557:19  */
    assign n27_o = X[4:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:557:16  */
    assign n29_o = {1'b1, n27_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:558:19  */
    assign n30_o = Y[4:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:558:16  */
    assign n32_o = {1'b1, n30_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:562:23  */
    assign significandmultiplication_n33 = significandmultiplication_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:559:4  */
    intmultiplier_usingdsp_6_6_12_unsigned_f300_uid4 significandmultiplication(
        .clk(clk),
        .rst(rst),
        .x(sigx),
        .y(sigy),
        .r(significandmultiplication_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:566:15  */
    assign n36_o = X[12:11];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:566:33  */
    assign n37_o = Y[12:11];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:566:30  */
    assign n38_o = {n36_o, n37_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:568:16  */
    assign n41_o = excsel == 4'b0000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:568:29  */
    assign n43_o = excsel == 4'b0001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:568:29  */
    assign n44_o = n41_o | n43_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:568:38  */
    assign n46_o = excsel == 4'b0100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:568:38  */
    assign n47_o = n44_o | n46_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:569:16  */
    assign n50_o = excsel == 4'b0101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:570:16  */
    assign n53_o = excsel == 4'b0110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:570:28  */
    assign n55_o = excsel == 4'b1001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:570:28  */
    assign n56_o = n53_o | n55_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:570:37  */
    assign n58_o = excsel == 4'b1010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:570:37  */
    assign n59_o = n56_o | n58_o;
    assign n61_o = {n59_o, n50_o, n47_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:567:4  */
    always @*
        case (n61_o)
            3'b100: n62_o <= 2'b10;
            3'b010: n62_o <= 2'b01;
            3'b001: n62_o <= 2'b00;
            default: n62_o <= 2'b11;
        endcase
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:572:19  */
    assign n63_o = sigprod[11];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:574:38  */
    assign n65_o = {6'b000000, norm};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:574:26  */
    assign n66_o = expsum+n65_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:576:25  */
    assign n67_o = sigprod[10:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:576:39  */
    assign n69_o = {n67_o, 1'b0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:576:45  */
    assign n70_o = norm ? n69_o : n73_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:577:33  */
    assign n71_o = sigprod[9:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:577:46  */
    assign n73_o = {n71_o, 2'b00};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:578:38  */
    assign n74_o = sigprodext[11:7];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:578:26  */
    assign n75_o = {exppostnorm, n74_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:579:24  */
    assign n76_o = sigprodext[6];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:581:35  */
    assign n78_o = sigprodext_d1[5:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:581:47  */
    assign n80_o = n78_o == 6'b000000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:581:17  */
    assign n81_o = n80_o ? 1'b0 : 1'b1;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:582:57  */
    assign n83_o = sigprodext_d1[7];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:582:40  */
    assign n84_o = ~n83_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:582:36  */
    assign n85_o = guard & n84_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:582:80  */
    assign n86_o = sigprodext_d1[7];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:582:63  */
    assign n87_o = n85_o | n86_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:582:23  */
    assign n88_o = sticky_d1 & n87_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:587:23  */
    assign roundingadder_n90 = roundingadder_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:583:7  */
    intadder_12_f300_uid42 roundingadder(
        .clk(clk),
        .rst(rst),
        .x(expsig_d1),
        .y(n89_o),
        .cin(round),
        .r(roundingadder_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:590:24  */
    assign n93_o = expsigpostround[11:10];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:591:26  */
    assign n96_o = n93_o == 2'b00;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:592:49  */
    assign n99_o = n93_o == 2'b01;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:593:49  */
    assign n102_o = n93_o == 2'b11;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:593:58  */
    assign n104_o = n93_o == 2'b10;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:593:58  */
    assign n105_o = n102_o | n104_o;
    assign n107_o = {n105_o, n99_o, n96_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:590:4  */
    always @*
        case (n107_o)
            3'b100: n108_o <= 2'b00;
            3'b010: n108_o <= 2'b10;
            3'b001: n108_o <= 2'b01;
            default: n108_o <= 2'b11;
        endcase
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:596:23  */
    assign n110_o = exc_d1 == 2'b11;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:596:33  */
    assign n112_o = exc_d1 == 2'b10;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:596:33  */
    assign n113_o = n110_o | n112_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:596:38  */
    assign n115_o = exc_d1 == 2'b00;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:596:38  */
    assign n116_o = n113_o | n115_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:595:4  */
    always @*
        case (n116_o)
            1'b1: n117_o <= exc_d1;
            default: n117_o <= excpostnorm;
        endcase
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:598:18  */
    assign n118_o = {finalexc, sign_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:598:45  */
    assign n119_o = expsigpostround[9:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:598:28  */
    assign n120_o = {n118_o, n119_o};
endmodule

