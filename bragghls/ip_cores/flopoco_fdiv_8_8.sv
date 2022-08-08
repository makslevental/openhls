module selfunctiontable_r8_f300_uid4
    (input clk,
        input rst,
        input[6:0] x,
        output[3:0] y);
    wire[3:0] tableout;
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
    wire n673_o;
    wire n676_o;
    wire n679_o;
    wire n682_o;
    wire n685_o;
    wire n688_o;
    wire n691_o;
    wire n694_o;
    wire n697_o;
    wire n700_o;
    wire n703_o;
    wire n706_o;
    wire n709_o;
    wire n712_o;
    wire n715_o;
    wire n718_o;
    wire n721_o;
    wire n724_o;
    wire n727_o;
    wire n730_o;
    wire n733_o;
    wire n736_o;
    wire n739_o;
    wire n742_o;
    wire n745_o;
    wire n748_o;
    wire n751_o;
    wire n754_o;
    wire n757_o;
    wire n760_o;
    wire n763_o;
    wire n766_o;
    wire n769_o;
    wire n772_o;
    wire n775_o;
    wire n778_o;
    wire n781_o;
    wire n784_o;
    wire n787_o;
    wire n790_o;
    wire n793_o;
    wire n796_o;
    wire n799_o;
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
    wire n850_o;
    wire n853_o;
    wire n856_o;
    wire n859_o;
    wire n862_o;
    wire n865_o;
    wire n868_o;
    wire n871_o;
    wire n874_o;
    wire n877_o;
    wire[127:0] n879_o;
    reg[3:0] n880_o;
    assign y = tableout;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:17:8  */
    assign tableout = n880_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:25:11  */
    assign n496_o = x == 7'b0000000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:26:11  */
    assign n499_o = x == 7'b0000001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:27:11  */
    assign n502_o = x == 7'b0000010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:28:11  */
    assign n505_o = x == 7'b0000011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:29:11  */
    assign n508_o = x == 7'b0000100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:30:11  */
    assign n511_o = x == 7'b0000101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:31:11  */
    assign n514_o = x == 7'b0000110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:32:11  */
    assign n517_o = x == 7'b0000111;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:33:11  */
    assign n520_o = x == 7'b0001000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:34:11  */
    assign n523_o = x == 7'b0001001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:35:11  */
    assign n526_o = x == 7'b0001010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:36:11  */
    assign n529_o = x == 7'b0001011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:37:11  */
    assign n532_o = x == 7'b0001100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:38:11  */
    assign n535_o = x == 7'b0001101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:39:11  */
    assign n538_o = x == 7'b0001110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:40:11  */
    assign n541_o = x == 7'b0001111;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:41:11  */
    assign n544_o = x == 7'b0010000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:42:11  */
    assign n547_o = x == 7'b0010001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:43:11  */
    assign n550_o = x == 7'b0010010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:44:11  */
    assign n553_o = x == 7'b0010011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:45:11  */
    assign n556_o = x == 7'b0010100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:46:11  */
    assign n559_o = x == 7'b0010101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:47:11  */
    assign n562_o = x == 7'b0010110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:48:11  */
    assign n565_o = x == 7'b0010111;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:49:11  */
    assign n568_o = x == 7'b0011000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:50:11  */
    assign n571_o = x == 7'b0011001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:51:11  */
    assign n574_o = x == 7'b0011010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:52:11  */
    assign n577_o = x == 7'b0011011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:53:11  */
    assign n580_o = x == 7'b0011100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:54:11  */
    assign n583_o = x == 7'b0011101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:55:11  */
    assign n586_o = x == 7'b0011110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:56:11  */
    assign n589_o = x == 7'b0011111;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:57:11  */
    assign n592_o = x == 7'b0100000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:58:11  */
    assign n595_o = x == 7'b0100001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:59:11  */
    assign n598_o = x == 7'b0100010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:60:11  */
    assign n601_o = x == 7'b0100011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:61:11  */
    assign n604_o = x == 7'b0100100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:62:11  */
    assign n607_o = x == 7'b0100101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:63:11  */
    assign n610_o = x == 7'b0100110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:64:11  */
    assign n613_o = x == 7'b0100111;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:65:11  */
    assign n616_o = x == 7'b0101000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:66:11  */
    assign n619_o = x == 7'b0101001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:67:11  */
    assign n622_o = x == 7'b0101010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:68:11  */
    assign n625_o = x == 7'b0101011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:69:11  */
    assign n628_o = x == 7'b0101100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:70:11  */
    assign n631_o = x == 7'b0101101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:71:11  */
    assign n634_o = x == 7'b0101110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:72:11  */
    assign n637_o = x == 7'b0101111;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:73:11  */
    assign n640_o = x == 7'b0110000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:74:11  */
    assign n643_o = x == 7'b0110001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:75:11  */
    assign n646_o = x == 7'b0110010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:76:11  */
    assign n649_o = x == 7'b0110011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:77:11  */
    assign n652_o = x == 7'b0110100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:78:11  */
    assign n655_o = x == 7'b0110101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:79:11  */
    assign n658_o = x == 7'b0110110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:80:11  */
    assign n661_o = x == 7'b0110111;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:81:11  */
    assign n664_o = x == 7'b0111000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:82:11  */
    assign n667_o = x == 7'b0111001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:83:11  */
    assign n670_o = x == 7'b0111010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:84:11  */
    assign n673_o = x == 7'b0111011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:85:11  */
    assign n676_o = x == 7'b0111100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:86:11  */
    assign n679_o = x == 7'b0111101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:87:11  */
    assign n682_o = x == 7'b0111110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:88:11  */
    assign n685_o = x == 7'b0111111;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:89:11  */
    assign n688_o = x == 7'b1000000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:90:11  */
    assign n691_o = x == 7'b1000001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:91:11  */
    assign n694_o = x == 7'b1000010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:92:11  */
    assign n697_o = x == 7'b1000011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:93:11  */
    assign n700_o = x == 7'b1000100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:94:11  */
    assign n703_o = x == 7'b1000101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:95:11  */
    assign n706_o = x == 7'b1000110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:96:11  */
    assign n709_o = x == 7'b1000111;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:97:11  */
    assign n712_o = x == 7'b1001000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:98:11  */
    assign n715_o = x == 7'b1001001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:99:11  */
    assign n718_o = x == 7'b1001010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:100:11  */
    assign n721_o = x == 7'b1001011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:101:11  */
    assign n724_o = x == 7'b1001100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:102:11  */
    assign n727_o = x == 7'b1001101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:103:11  */
    assign n730_o = x == 7'b1001110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:104:11  */
    assign n733_o = x == 7'b1001111;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:105:11  */
    assign n736_o = x == 7'b1010000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:106:11  */
    assign n739_o = x == 7'b1010001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:107:11  */
    assign n742_o = x == 7'b1010010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:108:11  */
    assign n745_o = x == 7'b1010011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:109:11  */
    assign n748_o = x == 7'b1010100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:110:11  */
    assign n751_o = x == 7'b1010101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:111:11  */
    assign n754_o = x == 7'b1010110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:112:11  */
    assign n757_o = x == 7'b1010111;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:113:11  */
    assign n760_o = x == 7'b1011000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:114:11  */
    assign n763_o = x == 7'b1011001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:115:11  */
    assign n766_o = x == 7'b1011010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:116:11  */
    assign n769_o = x == 7'b1011011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:117:11  */
    assign n772_o = x == 7'b1011100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:118:11  */
    assign n775_o = x == 7'b1011101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:119:11  */
    assign n778_o = x == 7'b1011110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:120:11  */
    assign n781_o = x == 7'b1011111;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:121:11  */
    assign n784_o = x == 7'b1100000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:122:11  */
    assign n787_o = x == 7'b1100001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:123:11  */
    assign n790_o = x == 7'b1100010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:124:11  */
    assign n793_o = x == 7'b1100011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:125:11  */
    assign n796_o = x == 7'b1100100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:126:11  */
    assign n799_o = x == 7'b1100101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:127:11  */
    assign n802_o = x == 7'b1100110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:128:11  */
    assign n805_o = x == 7'b1100111;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:129:11  */
    assign n808_o = x == 7'b1101000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:130:11  */
    assign n811_o = x == 7'b1101001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:131:11  */
    assign n814_o = x == 7'b1101010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:132:11  */
    assign n817_o = x == 7'b1101011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:133:11  */
    assign n820_o = x == 7'b1101100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:134:11  */
    assign n823_o = x == 7'b1101101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:135:11  */
    assign n826_o = x == 7'b1101110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:136:11  */
    assign n829_o = x == 7'b1101111;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:137:11  */
    assign n832_o = x == 7'b1110000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:138:11  */
    assign n835_o = x == 7'b1110001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:139:11  */
    assign n838_o = x == 7'b1110010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:140:11  */
    assign n841_o = x == 7'b1110011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:141:11  */
    assign n844_o = x == 7'b1110100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:142:11  */
    assign n847_o = x == 7'b1110101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:143:11  */
    assign n850_o = x == 7'b1110110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:144:11  */
    assign n853_o = x == 7'b1110111;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:145:11  */
    assign n856_o = x == 7'b1111000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:146:11  */
    assign n859_o = x == 7'b1111001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:147:11  */
    assign n862_o = x == 7'b1111010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:148:11  */
    assign n865_o = x == 7'b1111011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:149:11  */
    assign n868_o = x == 7'b1111100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:150:11  */
    assign n871_o = x == 7'b1111101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:151:11  */
    assign n874_o = x == 7'b1111110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:152:11  */
    assign n877_o = x == 7'b1111111;
    assign n879_o = {n877_o, n874_o, n871_o, n868_o, n865_o, n862_o, n859_o, n856_o, n853_o, n850_o, n847_o, n844_o, n841_o, n838_o, n835_o, n832_o, n829_o, n826_o, n823_o, n820_o, n817_o, n814_o, n811_o, n808_o, n805_o, n802_o, n799_o, n796_o, n793_o, n790_o, n787_o, n784_o, n781_o, n778_o, n775_o, n772_o, n769_o, n766_o, n763_o, n760_o, n757_o, n754_o, n751_o, n748_o, n745_o, n742_o, n739_o, n736_o, n733_o, n730_o, n727_o, n724_o, n721_o, n718_o, n715_o, n712_o, n709_o, n706_o, n703_o, n700_o, n697_o, n694_o, n691_o, n688_o, n685_o, n682_o, n679_o, n676_o, n673_o, n670_o, n667_o, n664_o, n661_o, n658_o, n655_o, n652_o, n649_o, n646_o, n643_o, n640_o, n637_o, n634_o, n631_o, n628_o, n625_o, n622_o, n619_o, n616_o, n613_o, n610_o, n607_o, n604_o, n601_o, n598_o, n595_o, n592_o, n589_o, n586_o, n583_o, n580_o, n577_o, n574_o, n571_o, n568_o, n565_o, n562_o, n559_o, n556_o, n553_o, n550_o, n547_o, n544_o, n541_o, n538_o, n535_o, n532_o, n529_o, n526_o, n523_o, n520_o, n517_o, n514_o, n511_o, n508_o, n505_o, n502_o, n499_o, n496_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:24:3  */
    always @*
        case (n879_o)
            128'b10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000: n880_o <= 4'b1111;
            128'b01000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000: n880_o <= 4'b1111;
            128'b00100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000: n880_o <= 4'b1111;
            128'b00010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000: n880_o <= 4'b1111;
            128'b00001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000: n880_o <= 4'b1111;
            128'b00000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000: n880_o <= 4'b1111;
            128'b00000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000: n880_o <= 4'b1111;
            128'b00000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000: n880_o <= 4'b1111;
            128'b00000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000: n880_o <= 4'b1110;
            128'b00000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000: n880_o <= 4'b1110;
            128'b00000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000: n880_o <= 4'b1110;
            128'b00000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000: n880_o <= 4'b1110;
            128'b00000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000: n880_o <= 4'b1110;
            128'b00000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000: n880_o <= 4'b1110;
            128'b00000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000: n880_o <= 4'b1110;
            128'b00000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000: n880_o <= 4'b1110;
            128'b00000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000: n880_o <= 4'b1101;
            128'b00000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000: n880_o <= 4'b1101;
            128'b00000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000: n880_o <= 4'b1101;
            128'b00000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000: n880_o <= 4'b1101;
            128'b00000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000: n880_o <= 4'b1101;
            128'b00000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000: n880_o <= 4'b1101;
            128'b00000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000: n880_o <= 4'b1101;
            128'b00000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000: n880_o <= 4'b1100;
            128'b00000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000: n880_o <= 4'b1100;
            128'b00000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000: n880_o <= 4'b1100;
            128'b00000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000: n880_o <= 4'b1100;
            128'b00000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000: n880_o <= 4'b1100;
            128'b00000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000: n880_o <= 4'b1100;
            128'b00000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000: n880_o <= 4'b1100;
            128'b00000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000: n880_o <= 4'b1011;
            128'b00000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000: n880_o <= 4'b1011;
            128'b00000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000: n880_o <= 4'b1011;
            128'b00000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000: n880_o <= 4'b1011;
            128'b00000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000: n880_o <= 4'b1011;
            128'b00000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000: n880_o <= 4'b1011;
            128'b00000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000: n880_o <= 4'b1011;
            128'b00000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000: n880_o <= 4'b1011;
            128'b00000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000: n880_o <= 4'b1010;
            128'b00000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000: n880_o <= 4'b1010;
            128'b00000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000: n880_o <= 4'b1010;
            128'b00000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000: n880_o <= 4'b1010;
            128'b00000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000: n880_o <= 4'b1010;
            128'b00000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000: n880_o <= 4'b1001;
            128'b00000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000: n880_o <= 4'b1010;
            128'b00000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000: n880_o <= 4'b1010;
            128'b00000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000: n880_o <= 4'b1001;
            128'b00000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000: n880_o <= 4'b1001;
            128'b00000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000: n880_o <= 4'b1001;
            128'b00000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000: n880_o <= 4'b1001;
            128'b00000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000: n880_o <= 4'b1001;
            128'b00000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000: n880_o <= 4'b1001;
            128'b00000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000: n880_o <= 4'b1001;
            128'b00000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000: n880_o <= 4'b1001;
            128'b00000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000: n880_o <= 4'b1001;
            128'b00000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000: n880_o <= 4'b1001;
            128'b00000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000: n880_o <= 4'b1001;
            128'b00000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000: n880_o <= 4'b1001;
            128'b00000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000: n880_o <= 4'b1001;
            128'b00000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000: n880_o <= 4'b1001;
            128'b00000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000: n880_o <= 4'b1001;
            128'b00000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000: n880_o <= 4'b1001;
            128'b00000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000: n880_o <= 4'b1001;
            128'b00000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000: n880_o <= 4'b1001;
            128'b00000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000: n880_o <= 4'b0111;
            128'b00000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000: n880_o <= 4'b0111;
            128'b00000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000: n880_o <= 4'b0111;
            128'b00000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000: n880_o <= 4'b0111;
            128'b00000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000: n880_o <= 4'b0111;
            128'b00000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000: n880_o <= 4'b0111;
            128'b00000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000: n880_o <= 4'b0111;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000: n880_o <= 4'b0111;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000: n880_o <= 4'b0111;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000: n880_o <= 4'b0111;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000: n880_o <= 4'b0111;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000: n880_o <= 4'b0111;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000: n880_o <= 4'b0110;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000: n880_o <= 4'b0111;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000: n880_o <= 4'b0111;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000: n880_o <= 4'b0111;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000: n880_o <= 4'b0110;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000: n880_o <= 4'b0110;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000: n880_o <= 4'b0111;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000: n880_o <= 4'b0111;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000: n880_o <= 4'b0101;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000: n880_o <= 4'b0110;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000: n880_o <= 4'b0110;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000: n880_o <= 4'b0111;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000: n880_o <= 4'b0101;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000: n880_o <= 4'b0101;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000: n880_o <= 4'b0110;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000: n880_o <= 4'b0110;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000: n880_o <= 4'b0100;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000: n880_o <= 4'b0101;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000: n880_o <= 4'b0101;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000: n880_o <= 4'b0101;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000: n880_o <= 4'b0100;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000: n880_o <= 4'b0100;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000: n880_o <= 4'b0100;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000: n880_o <= 4'b0101;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000: n880_o <= 4'b0011;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000: n880_o <= 4'b0011;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000: n880_o <= 4'b0100;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000: n880_o <= 4'b0100;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000: n880_o <= 4'b0011;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000: n880_o <= 4'b0011;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000: n880_o <= 4'b0011;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000: n880_o <= 4'b0011;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000: n880_o <= 4'b0010;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000: n880_o <= 4'b0010;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000: n880_o <= 4'b0011;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000: n880_o <= 4'b0011;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000: n880_o <= 4'b0010;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000: n880_o <= 4'b0010;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000: n880_o <= 4'b0010;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000: n880_o <= 4'b0010;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000: n880_o <= 4'b0001;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000: n880_o <= 4'b0001;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000: n880_o <= 4'b0001;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000: n880_o <= 4'b0001;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000: n880_o <= 4'b0001;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000: n880_o <= 4'b0001;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000: n880_o <= 4'b0001;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000: n880_o <= 4'b0001;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000: n880_o <= 4'b0000;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100: n880_o <= 4'b0000;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010: n880_o <= 4'b0000;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001: n880_o <= 4'b0000;
            default: n880_o <= 4'bXXXX;
        endcase
endmodule

module fdiv #(parameter ID = 1)
    (input clk,
        input rst,
        input[18:0] X,
        input[18:0] Y,
        output[18:0] R);
    wire[8:0] partialfx;
    wire[8:0] partialfy;
    wire[9:0] expr0;
    wire[9:0] expr0_d1;
    wire[9:0] expr0_d2;
    wire[9:0] expr0_d3;
    wire sr;
    wire sr_d1;
    wire sr_d2;
    wire sr_d3;
    wire sr_d4;
    wire[3:0] exnxy;
    wire[1:0] exnr0;
    wire[1:0] exnr0_d1;
    wire[1:0] exnr0_d2;
    wire[1:0] exnr0_d3;
    wire[1:0] exnr0_d4;
    wire[10:0] fy;
    wire[10:0] fy_d1;
    wire[10:0] fy_d2;
    wire[11:0] fx;
    wire[13:0] w4;
    wire[6:0] sel4;
    wire[3:0] q4;
    wire[3:0] q4_d1;
    wire[3:0] q4_d2;
    wire[14:0] w4pad;
    wire[14:0] w3fulla;
    wire[14:0] fydec3;
    wire[14:0] w3full;
    wire[13:0] w3;
    wire[13:0] w3_d1;
    wire[6:0] sel3;
    wire[3:0] q3;
    wire[3:0] q3_d1;
    wire[14:0] w3pad;
    wire[14:0] w2fulla;
    wire[14:0] fydec2;
    wire[14:0] w2full;
    wire[13:0] w2;
    wire[6:0] sel2;
    wire[3:0] q2;
    wire[3:0] q2_d1;
    wire[14:0] w2pad;
    wire[14:0] w1fulla;
    wire[14:0] fydec1;
    wire[14:0] w1full;
    wire[13:0] w1;
    wire[13:0] w1_d1;
    wire[6:0] sel1;
    wire[3:0] q1;
    wire[14:0] w1pad;
    wire[14:0] w0fulla;
    wire[14:0] fydec0;
    wire[14:0] w0full;
    wire[13:0] w0;
    wire[3:0] q0;
    wire[2:0] qp4;
    wire[2:0] qm4;
    wire[2:0] qp3;
    wire[2:0] qm3;
    wire[2:0] qp2;
    wire[2:0] qm2;
    wire[2:0] qp1;
    wire[2:0] qm1;
    wire[2:0] qp0;
    wire[2:0] qm0;
    wire[14:0] qp;
    wire[14:0] qm;
    wire[14:0] fr0;
    wire[14:0] fr0_d1;
    wire[13:0] fr;
    wire[11:0] frn1;
    wire[11:0] frn1_d1;
    wire[9:0] expr1;
    wire[9:0] expr1_d1;
    wire round;
    wire round_d1;
    wire[17:0] expfrac;
    wire[17:0] expfracr;
    wire[1:0] exnr;
    wire[1:0] exnrfinal;
    reg[9:0] n28_q;
    reg[9:0] n29_q;
    reg[9:0] n30_q;
    reg n31_q;
    reg n32_q;
    reg n33_q;
    reg n34_q;
    reg[1:0] n35_q;
    reg[1:0] n36_q;
    reg[1:0] n37_q;
    reg[1:0] n38_q;
    reg[10:0] n39_q;
    reg[10:0] n40_q;
    reg[3:0] n41_q;
    reg[3:0] n42_q;
    reg[13:0] n43_q;
    reg[3:0] n44_q;
    reg[3:0] n45_q;
    reg[13:0] n46_q;
    reg[14:0] n47_q;
    reg[11:0] n48_q;
    reg[9:0] n49_q;
    reg n50_q;
    wire[7:0] n51_o;
    wire[8:0] n53_o;
    wire[7:0] n54_o;
    wire[8:0] n56_o;
    wire[7:0] n57_o;
    wire[9:0] n59_o;
    wire[7:0] n60_o;
    wire[9:0] n62_o;
    wire[9:0] n63_o;
    wire n64_o;
    wire n65_o;
    wire n66_o;
    wire[1:0] n67_o;
    wire[1:0] n68_o;
    wire[3:0] n69_o;
    wire n72_o;
    wire n75_o;
    wire n77_o;
    wire n78_o;
    wire n80_o;
    wire n81_o;
    wire n84_o;
    wire n86_o;
    wire n87_o;
    wire n89_o;
    wire n90_o;
    wire[2:0] n92_o;
    reg[1:0] n93_o;
    wire[1:0] n94_o;
    wire[9:0] n96_o;
    wire[10:0] n98_o;
    wire[10:0] n100_o;
    wire[10:0] n101_o;
    wire n103_o;
    wire[10:0] n105_o;
    wire[10:0] n107_o;
    wire[10:0] n108_o;
    wire n110_o;
    wire[10:0] n112_o;
    wire[1:0] n113_o;
    reg[10:0] n114_o;
    wire[1:0] n115_o;
    wire[10:0] n117_o;
    wire[11:0] n119_o;
    wire[9:0] n121_o;
    wire[11:0] n123_o;
    wire[11:0] n124_o;
    wire n126_o;
    wire[11:0] n128_o;
    wire[9:0] n130_o;
    wire[11:0] n132_o;
    wire[11:0] n133_o;
    wire n135_o;
    wire[9:0] n137_o;
    wire[11:0] n139_o;
    wire[1:0] n140_o;
    reg[11:0] n141_o;
    wire[13:0] n143_o;
    wire[4:0] n144_o;
    wire[1:0] n145_o;
    wire[6:0] n146_o;
    wire[3:0] selfunctiontable4_n147;
    wire[3:0] selfunctiontable4_y;
    wire[14:0] n151_o;
    wire[1:0] n152_o;
    wire[14:0] n154_o;
    wire[14:0] n155_o;
    wire n157_o;
    wire[14:0] n159_o;
    wire[14:0] n160_o;
    wire n162_o;
    wire[13:0] n164_o;
    wire[14:0] n166_o;
    wire[14:0] n167_o;
    wire n169_o;
    wire[2:0] n170_o;
    reg[14:0] n171_o;
    wire[2:0] n172_o;
    wire[12:0] n174_o;
    wire[14:0] n176_o;
    wire n178_o;
    wire n180_o;
    wire n181_o;
    wire n183_o;
    wire n184_o;
    wire n186_o;
    wire n187_o;
    wire[11:0] n189_o;
    wire[14:0] n191_o;
    wire n193_o;
    wire n195_o;
    wire n196_o;
    wire[1:0] n198_o;
    reg[14:0] n199_o;
    wire n200_o;
    wire[14:0] n201_o;
    wire n203_o;
    wire[14:0] n204_o;
    reg[14:0] n205_o;
    wire[11:0] n206_o;
    wire[13:0] n208_o;
    wire[4:0] n209_o;
    wire[1:0] n210_o;
    wire[6:0] n211_o;
    wire[3:0] selfunctiontable3_n212;
    wire[3:0] selfunctiontable3_y;
    wire[14:0] n216_o;
    wire[1:0] n217_o;
    wire[14:0] n219_o;
    wire[14:0] n220_o;
    wire n222_o;
    wire[14:0] n224_o;
    wire[14:0] n225_o;
    wire n227_o;
    wire[13:0] n229_o;
    wire[14:0] n231_o;
    wire[14:0] n232_o;
    wire n234_o;
    wire[2:0] n235_o;
    reg[14:0] n236_o;
    wire[2:0] n237_o;
    wire[12:0] n239_o;
    wire[14:0] n241_o;
    wire n243_o;
    wire n245_o;
    wire n246_o;
    wire n248_o;
    wire n249_o;
    wire n251_o;
    wire n252_o;
    wire[11:0] n254_o;
    wire[14:0] n256_o;
    wire n258_o;
    wire n260_o;
    wire n261_o;
    wire[1:0] n263_o;
    reg[14:0] n264_o;
    wire n265_o;
    wire[14:0] n266_o;
    wire n268_o;
    wire[14:0] n269_o;
    reg[14:0] n270_o;
    wire[11:0] n271_o;
    wire[13:0] n273_o;
    wire[4:0] n274_o;
    wire[1:0] n275_o;
    wire[6:0] n276_o;
    wire[3:0] selfunctiontable2_n277;
    wire[3:0] selfunctiontable2_y;
    wire[14:0] n281_o;
    wire[1:0] n282_o;
    wire[14:0] n284_o;
    wire[14:0] n285_o;
    wire n287_o;
    wire[14:0] n289_o;
    wire[14:0] n290_o;
    wire n292_o;
    wire[13:0] n294_o;
    wire[14:0] n296_o;
    wire[14:0] n297_o;
    wire n299_o;
    wire[2:0] n300_o;
    reg[14:0] n301_o;
    wire[2:0] n302_o;
    wire[12:0] n304_o;
    wire[14:0] n306_o;
    wire n308_o;
    wire n310_o;
    wire n311_o;
    wire n313_o;
    wire n314_o;
    wire n316_o;
    wire n317_o;
    wire[11:0] n319_o;
    wire[14:0] n321_o;
    wire n323_o;
    wire n325_o;
    wire n326_o;
    wire[1:0] n328_o;
    reg[14:0] n329_o;
    wire n330_o;
    wire[14:0] n331_o;
    wire n333_o;
    wire[14:0] n334_o;
    reg[14:0] n335_o;
    wire[11:0] n336_o;
    wire[13:0] n338_o;
    wire[4:0] n339_o;
    wire[1:0] n340_o;
    wire[6:0] n341_o;
    wire[3:0] selfunctiontable1_n342;
    wire[3:0] selfunctiontable1_y;
    wire[14:0] n346_o;
    wire[1:0] n347_o;
    wire[14:0] n349_o;
    wire[14:0] n350_o;
    wire n352_o;
    wire[14:0] n354_o;
    wire[14:0] n355_o;
    wire n357_o;
    wire[13:0] n359_o;
    wire[14:0] n361_o;
    wire[14:0] n362_o;
    wire n364_o;
    wire[2:0] n365_o;
    reg[14:0] n366_o;
    wire[2:0] n367_o;
    wire[12:0] n369_o;
    wire[14:0] n371_o;
    wire n373_o;
    wire n375_o;
    wire n376_o;
    wire n378_o;
    wire n379_o;
    wire n381_o;
    wire n382_o;
    wire[11:0] n384_o;
    wire[14:0] n386_o;
    wire n388_o;
    wire n390_o;
    wire n391_o;
    wire[1:0] n393_o;
    reg[14:0] n394_o;
    wire n395_o;
    wire[14:0] n396_o;
    wire n398_o;
    wire[14:0] n399_o;
    reg[14:0] n400_o;
    wire[11:0] n401_o;
    wire[13:0] n403_o;
    wire n406_o;
    wire[3:0] n407_o;
    wire n408_o;
    wire[3:0] n410_o;
    wire[2:0] n411_o;
    wire n412_o;
    wire[2:0] n414_o;
    wire[2:0] n415_o;
    wire n416_o;
    wire[2:0] n418_o;
    wire[2:0] n419_o;
    wire n420_o;
    wire[2:0] n422_o;
    wire[2:0] n423_o;
    wire n424_o;
    wire[2:0] n426_o;
    wire[2:0] n427_o;
    wire n428_o;
    wire[2:0] n430_o;
    wire[5:0] n431_o;
    wire[8:0] n432_o;
    wire[11:0] n433_o;
    wire[14:0] n434_o;
    wire[1:0] n435_o;
    wire[4:0] n436_o;
    wire[7:0] n437_o;
    wire[10:0] n438_o;
    wire[13:0] n439_o;
    wire[14:0] n441_o;
    wire[14:0] n442_o;
    wire[12:0] n443_o;
    wire n444_o;
    wire n445_o;
    wire n446_o;
    wire[13:0] n447_o;
    wire n448_o;
    wire[10:0] n449_o;
    wire n450_o;
    wire n451_o;
    wire n452_o;
    wire[11:0] n453_o;
    wire n455_o;
    wire[11:0] n456_o;
    reg[11:0] n457_o;
    wire n458_o;
    wire[9:0] n460_o;
    wire[9:0] n461_o;
    wire n462_o;
    wire n463_o;
    wire n464_o;
    wire n465_o;
    wire n466_o;
    wire n467_o;
    wire n468_o;
    wire[7:0] n469_o;
    wire[17:0] n470_o;
    wire[17:0] n472_o;
    wire[17:0] n473_o;
    wire n475_o;
    wire[1:0] n476_o;
    wire[1:0] n478_o;
    wire n480_o;
    wire[1:0] n481_o;
    wire n484_o;
    reg[1:0] n485_o;
    wire[2:0] n486_o;
    wire[15:0] n487_o;
    wire[18:0] n488_o;
    assign R = n488_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:188:8  */
    assign partialfx = n53_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:189:8  */
    assign partialfy = n56_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:190:8  */
    assign expr0 = n63_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:190:15  */
    assign expr0_d1 = n28_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:190:25  */
    assign expr0_d2 = n29_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:190:35  */
    assign expr0_d3 = n30_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:191:8  */
    assign sr = n66_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:191:12  */
    assign sr_d1 = n31_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:191:19  */
    assign sr_d2 = n32_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:191:26  */
    assign sr_d3 = n33_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:191:33  */
    assign sr_d4 = n34_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:192:8  */
    assign exnxy = n69_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:193:8  */
    assign exnr0 = n93_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:193:15  */
    assign exnr0_d1 = n35_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:193:25  */
    assign exnr0_d2 = n36_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:193:35  */
    assign exnr0_d3 = n37_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:193:45  */
    assign exnr0_d4 = n38_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:194:8  */
    assign fy = n114_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:194:12  */
    assign fy_d1 = n39_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:194:19  */
    assign fy_d2 = n40_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:195:8  */
    assign fx = n141_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:196:8  */
    assign w4 = n143_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:197:8  */
    assign sel4 = n146_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:198:8  */
    assign q4 = selfunctiontable4_n147; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:198:12  */
    assign q4_d1 = n41_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:198:19  */
    assign q4_d2 = n42_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:199:8  */
    assign w4pad = n151_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:200:8  */
    assign w3fulla = n171_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:201:8  */
    assign fydec3 = n199_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:202:8  */
    assign w3full = n205_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:203:8  */
    assign w3 = n208_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:203:12  */
    assign w3_d1 = n43_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:204:8  */
    assign sel3 = n211_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:205:8  */
    assign q3 = selfunctiontable3_n212; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:205:12  */
    assign q3_d1 = n44_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:206:8  */
    assign w3pad = n216_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:207:8  */
    assign w2fulla = n236_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:208:8  */
    assign fydec2 = n264_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:209:8  */
    assign w2full = n270_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:210:8  */
    assign w2 = n273_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:211:8  */
    assign sel2 = n276_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:212:8  */
    assign q2 = selfunctiontable2_n277; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:212:12  */
    assign q2_d1 = n45_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:213:8  */
    assign w2pad = n281_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:214:8  */
    assign w1fulla = n301_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:215:8  */
    assign fydec1 = n329_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:216:8  */
    assign w1full = n335_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:217:8  */
    assign w1 = n338_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:217:12  */
    assign w1_d1 = n46_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:218:8  */
    assign sel1 = n341_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:219:8  */
    assign q1 = selfunctiontable1_n342; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:220:8  */
    assign w1pad = n346_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:221:8  */
    assign w0fulla = n366_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:222:8  */
    assign fydec0 = n394_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:223:8  */
    assign w0full = n400_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:224:8  */
    assign w0 = n403_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:225:8  */
    assign q0 = n407_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:226:8  */
    assign qp4 = n411_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:227:8  */
    assign qm4 = n414_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:228:8  */
    assign qp3 = n415_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:229:8  */
    assign qm3 = n418_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:230:8  */
    assign qp2 = n419_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:231:8  */
    assign qm2 = n422_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:232:8  */
    assign qp1 = n423_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:233:8  */
    assign qm1 = n426_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:234:8  */
    assign qp0 = n427_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:235:8  */
    assign qm0 = n430_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:236:8  */
    assign qp = n434_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:237:8  */
    assign qm = n441_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:238:8  */
    assign fr0 = n442_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:238:13  */
    assign fr0_d1 = n47_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:239:8  */
    assign fr = n447_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:240:8  */
    assign frn1 = n457_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:240:14  */
    assign frn1_d1 = n48_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:241:8  */
    assign expr1 = n461_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:241:15  */
    assign expr1_d1 = n49_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:242:8  */
    assign round = n468_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:242:15  */
    assign round_d1 = n50_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:243:8  */
    assign expfrac = n470_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:244:8  */
    assign expfracr = n473_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:245:8  */
    assign exnr = n476_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:246:8  */
    assign exnrfinal = n485_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:250:10  */
    always @(posedge clk)
        n28_q <= expr0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:250:10  */
    always @(posedge clk)
        n29_q <= expr0_d1;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:250:10  */
    always @(posedge clk)
        n30_q <= expr0_d2;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:250:10  */
    always @(posedge clk)
        n31_q <= sr;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:250:10  */
    always @(posedge clk)
        n32_q <= sr_d1;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:250:10  */
    always @(posedge clk)
        n33_q <= sr_d2;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:250:10  */
    always @(posedge clk)
        n34_q <= sr_d3;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:250:10  */
    always @(posedge clk)
        n35_q <= exnr0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:250:10  */
    always @(posedge clk)
        n36_q <= exnr0_d1;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:250:10  */
    always @(posedge clk)
        n37_q <= exnr0_d2;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:250:10  */
    always @(posedge clk)
        n38_q <= exnr0_d3;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:250:10  */
    always @(posedge clk)
        n39_q <= fy;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:250:10  */
    always @(posedge clk)
        n40_q <= fy_d1;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:250:10  */
    always @(posedge clk)
        n41_q <= q4;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:250:10  */
    always @(posedge clk)
        n42_q <= q4_d1;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:250:10  */
    always @(posedge clk)
        n43_q <= w3;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:250:10  */
    always @(posedge clk)
        n44_q <= q3;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:250:10  */
    always @(posedge clk)
        n45_q <= q2;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:250:10  */
    always @(posedge clk)
        n46_q <= w1;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:250:10  */
    always @(posedge clk)
        n47_q <= fr0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:250:10  */
    always @(posedge clk)
        n48_q <= frn1;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:250:10  */
    always @(posedge clk)
        n49_q <= expr1;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:250:10  */
    always @(posedge clk)
        n50_q <= round;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:276:24  */
    assign n51_o = X[7:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:276:21  */
    assign n53_o = {1'b1, n51_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:277:24  */
    assign n54_o = Y[7:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:277:21  */
    assign n56_o = {1'b1, n54_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:279:22  */
    assign n57_o = X[15:8];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:279:19  */
    assign n59_o = {2'b00, n57_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:279:48  */
    assign n60_o = Y[15:8];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:279:45  */
    assign n62_o = {2'b00, n60_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:279:37  */
    assign n63_o = n59_o-n62_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:280:11  */
    assign n64_o = X[16];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:280:21  */
    assign n65_o = Y[16];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:280:16  */
    assign n66_o = n64_o ^ n65_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:282:14  */
    assign n67_o = X[18:17];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:282:32  */
    assign n68_o = Y[18:17];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:282:29  */
    assign n69_o = {n67_o, n68_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:285:16  */
    assign n72_o = exnxy == 4'b0101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:286:16  */
    assign n75_o = exnxy == 4'b0001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:286:28  */
    assign n77_o = exnxy == 4'b0010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:286:28  */
    assign n78_o = n75_o | n77_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:286:37  */
    assign n80_o = exnxy == 4'b0110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:286:37  */
    assign n81_o = n78_o | n80_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:287:16  */
    assign n84_o = exnxy == 4'b0100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:287:28  */
    assign n86_o = exnxy == 4'b1000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:287:28  */
    assign n87_o = n84_o | n86_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:287:37  */
    assign n89_o = exnxy == 4'b1001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:287:37  */
    assign n90_o = n87_o | n89_o;
    assign n92_o = {n90_o, n81_o, n72_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:283:4  */
    always @*
        case (n92_o)
            3'b100: n93_o <= 2'b10;
            3'b010: n93_o <= 2'b00;
            3'b001: n93_o <= 2'b01;
            default: n93_o <= 2'b11;
        endcase
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:290:19  */
    assign n94_o = partialfy[7:6];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:292:15  */
    assign n96_o = {1'b0, partialfy};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:292:27  */
    assign n98_o = {n96_o, 1'b0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:292:47  */
    assign n100_o = {partialfy, 2'b00};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:292:34  */
    assign n101_o = n98_o+n100_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:292:55  */
    assign n103_o = n94_o == 2'b00;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:293:16  */
    assign n105_o = {2'b00, partialfy};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:293:42  */
    assign n107_o = {partialfy, 2'b00};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:293:29  */
    assign n108_o = n105_o+n107_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:293:50  */
    assign n110_o = n94_o == 2'b01;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:294:20  */
    assign n112_o = {partialfy, 2'b00};
    assign n113_o = {n110_o, n103_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:290:4  */
    always @*
        case (n113_o)
            2'b10: n114_o <= n108_o;
            2'b01: n114_o <= n101_o;
            default: n114_o <= n112_o;
        endcase
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:295:19  */
    assign n115_o = partialfy[7:6];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:297:16  */
    assign n117_o = {2'b00, partialfx};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:297:28  */
    assign n119_o = {n117_o, 1'b0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:297:42  */
    assign n121_o = {1'b0, partialfx};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:297:54  */
    assign n123_o = {n121_o, 2'b00};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:297:35  */
    assign n124_o = n119_o+n123_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:297:62  */
    assign n126_o = n115_o == 2'b00;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:298:17  */
    assign n128_o = {3'b000, partialfx};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:298:37  */
    assign n130_o = {1'b0, partialfx};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:298:49  */
    assign n132_o = {n130_o, 2'b00};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:298:30  */
    assign n133_o = n128_o+n132_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:298:57  */
    assign n135_o = n115_o == 2'b01;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:299:14  */
    assign n137_o = {1'b0, partialfx};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:299:26  */
    assign n139_o = {n137_o, 2'b00};
    assign n140_o = {n135_o, n126_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:295:4  */
    always @*
        case (n140_o)
            2'b10: n141_o <= n133_o;
            2'b01: n141_o <= n124_o;
            default: n141_o <= n139_o;
        endcase
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:300:16  */
    assign n143_o = {2'b00, fx};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:301:14  */
    assign n144_o = w4[13:9];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:301:32  */
    assign n145_o = fy[8:7];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:301:28  */
    assign n146_o = {n144_o, n145_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:306:23  */
    assign selfunctiontable4_n147 = selfunctiontable4_y; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:302:4  */
    selfunctiontable_r8_f300_uid4 selfunctiontable4(
        .clk(clk),
        .rst(rst),
        .x(sel4),
        .y(selfunctiontable4_y));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:307:16  */
    assign n151_o = {w4, 1'b0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:308:11  */
    assign n152_o = q4[1:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:310:23  */
    assign n154_o = {4'b0000, fy};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:310:13  */
    assign n155_o = w4pad-n154_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:310:49  */
    assign n157_o = n152_o == 2'b01;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:311:23  */
    assign n159_o = {4'b0000, fy};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:311:13  */
    assign n160_o = w4pad+n159_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:311:49  */
    assign n162_o = n152_o == 2'b11;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:312:22  */
    assign n164_o = {3'b000, fy};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:312:27  */
    assign n166_o = {n164_o, 1'b0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:312:13  */
    assign n167_o = w4pad+n166_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:312:43  */
    assign n169_o = n152_o == 2'b10;
    assign n170_o = {n169_o, n162_o, n157_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:308:4  */
    always @*
        case (n170_o)
            3'b100: n171_o <= n167_o;
            3'b010: n171_o <= n160_o;
            3'b001: n171_o <= n155_o;
            default: n171_o <= w4pad;
        endcase
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:314:11  */
    assign n172_o = q4[3:1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:316:13  */
    assign n174_o = {2'b00, fy};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:316:18  */
    assign n176_o = {n174_o, 2'b00};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:316:49  */
    assign n178_o = n172_o == 3'b001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:316:60  */
    assign n180_o = n172_o == 3'b010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:316:60  */
    assign n181_o = n178_o | n180_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:316:68  */
    assign n183_o = n172_o == 3'b110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:316:68  */
    assign n184_o = n181_o | n183_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:316:75  */
    assign n186_o = n172_o == 3'b101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:316:75  */
    assign n187_o = n184_o | n186_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:317:12  */
    assign n189_o = {1'b0, fy};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:317:17  */
    assign n191_o = {n189_o, 3'b000};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:317:49  */
    assign n193_o = n172_o == 3'b011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:317:59  */
    assign n195_o = n172_o == 3'b100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:317:59  */
    assign n196_o = n193_o | n195_o;
    assign n198_o = {n196_o, n187_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:314:4  */
    always @*
        case (n198_o)
            2'b10: n199_o <= n191_o;
            2'b01: n199_o <= n176_o;
            default: n199_o <= 15'b000000000000000;
        endcase
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:319:11  */
    assign n200_o = q4[3];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:321:15  */
    assign n201_o = w3fulla-fydec3;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:321:41  */
    assign n203_o = n200_o == 1'b0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:322:15  */
    assign n204_o = w3fulla+fydec3;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:319:4  */
    always @*
        case (n203_o)
            1'b1: n205_o <= n201_o;
            default: n205_o <= n204_o;
        endcase
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:323:16  */
    assign n206_o = w3full[11:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:323:30  */
    assign n208_o = {n206_o, 2'b00};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:325:17  */
    assign n209_o = w3_d1[13:9];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:325:38  */
    assign n210_o = fy_d1[8:7];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:325:31  */
    assign n211_o = {n209_o, n210_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:330:23  */
    assign selfunctiontable3_n212 = selfunctiontable3_y; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:326:4  */
    selfunctiontable_r8_f300_uid4 selfunctiontable3(
        .clk(clk),
        .rst(rst),
        .x(sel3),
        .y(selfunctiontable3_y));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:331:19  */
    assign n216_o = {w3_d1, 1'b0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:332:11  */
    assign n217_o = q3[1:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:334:23  */
    assign n219_o = {4'b0000, fy_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:334:13  */
    assign n220_o = w3pad-n219_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:334:49  */
    assign n222_o = n217_o == 2'b01;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:335:23  */
    assign n224_o = {4'b0000, fy_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:335:13  */
    assign n225_o = w3pad+n224_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:335:49  */
    assign n227_o = n217_o == 2'b11;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:336:22  */
    assign n229_o = {3'b000, fy_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:336:30  */
    assign n231_o = {n229_o, 1'b0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:336:13  */
    assign n232_o = w3pad+n231_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:336:43  */
    assign n234_o = n217_o == 2'b10;
    assign n235_o = {n234_o, n227_o, n222_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:332:4  */
    always @*
        case (n235_o)
            3'b100: n236_o <= n232_o;
            3'b010: n236_o <= n225_o;
            3'b001: n236_o <= n220_o;
            default: n236_o <= w3pad;
        endcase
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:338:11  */
    assign n237_o = q3[3:1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:340:13  */
    assign n239_o = {2'b00, fy_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:340:21  */
    assign n241_o = {n239_o, 2'b00};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:340:49  */
    assign n243_o = n237_o == 3'b001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:340:60  */
    assign n245_o = n237_o == 3'b010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:340:60  */
    assign n246_o = n243_o | n245_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:340:68  */
    assign n248_o = n237_o == 3'b110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:340:68  */
    assign n249_o = n246_o | n248_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:340:75  */
    assign n251_o = n237_o == 3'b101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:340:75  */
    assign n252_o = n249_o | n251_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:341:12  */
    assign n254_o = {1'b0, fy_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:341:20  */
    assign n256_o = {n254_o, 3'b000};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:341:49  */
    assign n258_o = n237_o == 3'b011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:341:59  */
    assign n260_o = n237_o == 3'b100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:341:59  */
    assign n261_o = n258_o | n260_o;
    assign n263_o = {n261_o, n252_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:338:4  */
    always @*
        case (n263_o)
            2'b10: n264_o <= n256_o;
            2'b01: n264_o <= n241_o;
            default: n264_o <= 15'b000000000000000;
        endcase
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:343:11  */
    assign n265_o = q3[3];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:345:15  */
    assign n266_o = w2fulla-fydec2;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:345:41  */
    assign n268_o = n265_o == 1'b0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:346:15  */
    assign n269_o = w2fulla+fydec2;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:343:4  */
    always @*
        case (n268_o)
            1'b1: n270_o <= n266_o;
            default: n270_o <= n269_o;
        endcase
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:347:16  */
    assign n271_o = w2full[11:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:347:30  */
    assign n273_o = {n271_o, 2'b00};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:348:14  */
    assign n274_o = w2[13:9];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:348:35  */
    assign n275_o = fy_d1[8:7];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:348:28  */
    assign n276_o = {n274_o, n275_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:353:23  */
    assign selfunctiontable2_n277 = selfunctiontable2_y; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:349:4  */
    selfunctiontable_r8_f300_uid4 selfunctiontable2(
        .clk(clk),
        .rst(rst),
        .x(sel2),
        .y(selfunctiontable2_y));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:354:16  */
    assign n281_o = {w2, 1'b0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:355:11  */
    assign n282_o = q2[1:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:357:23  */
    assign n284_o = {4'b0000, fy_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:357:13  */
    assign n285_o = w2pad-n284_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:357:49  */
    assign n287_o = n282_o == 2'b01;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:358:23  */
    assign n289_o = {4'b0000, fy_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:358:13  */
    assign n290_o = w2pad+n289_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:358:49  */
    assign n292_o = n282_o == 2'b11;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:359:22  */
    assign n294_o = {3'b000, fy_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:359:30  */
    assign n296_o = {n294_o, 1'b0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:359:13  */
    assign n297_o = w2pad+n296_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:359:43  */
    assign n299_o = n282_o == 2'b10;
    assign n300_o = {n299_o, n292_o, n287_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:355:4  */
    always @*
        case (n300_o)
            3'b100: n301_o <= n297_o;
            3'b010: n301_o <= n290_o;
            3'b001: n301_o <= n285_o;
            default: n301_o <= w2pad;
        endcase
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:361:11  */
    assign n302_o = q2[3:1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:363:13  */
    assign n304_o = {2'b00, fy_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:363:21  */
    assign n306_o = {n304_o, 2'b00};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:363:49  */
    assign n308_o = n302_o == 3'b001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:363:60  */
    assign n310_o = n302_o == 3'b010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:363:60  */
    assign n311_o = n308_o | n310_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:363:68  */
    assign n313_o = n302_o == 3'b110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:363:68  */
    assign n314_o = n311_o | n313_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:363:75  */
    assign n316_o = n302_o == 3'b101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:363:75  */
    assign n317_o = n314_o | n316_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:364:12  */
    assign n319_o = {1'b0, fy_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:364:20  */
    assign n321_o = {n319_o, 3'b000};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:364:49  */
    assign n323_o = n302_o == 3'b011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:364:59  */
    assign n325_o = n302_o == 3'b100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:364:59  */
    assign n326_o = n323_o | n325_o;
    assign n328_o = {n326_o, n317_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:361:4  */
    always @*
        case (n328_o)
            2'b10: n329_o <= n321_o;
            2'b01: n329_o <= n306_o;
            default: n329_o <= 15'b000000000000000;
        endcase
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:366:11  */
    assign n330_o = q2[3];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:368:15  */
    assign n331_o = w1fulla-fydec1;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:368:41  */
    assign n333_o = n330_o == 1'b0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:369:15  */
    assign n334_o = w1fulla+fydec1;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:366:4  */
    always @*
        case (n333_o)
            1'b1: n335_o <= n331_o;
            default: n335_o <= n334_o;
        endcase
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:370:16  */
    assign n336_o = w1full[11:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:370:30  */
    assign n338_o = {n336_o, 2'b00};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:372:17  */
    assign n339_o = w1_d1[13:9];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:372:38  */
    assign n340_o = fy_d2[8:7];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:372:31  */
    assign n341_o = {n339_o, n340_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:377:23  */
    assign selfunctiontable1_n342 = selfunctiontable1_y; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:373:4  */
    selfunctiontable_r8_f300_uid4 selfunctiontable1(
        .clk(clk),
        .rst(rst),
        .x(sel1),
        .y(selfunctiontable1_y));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:378:19  */
    assign n346_o = {w1_d1, 1'b0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:379:11  */
    assign n347_o = q1[1:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:381:23  */
    assign n349_o = {4'b0000, fy_d2};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:381:13  */
    assign n350_o = w1pad-n349_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:381:49  */
    assign n352_o = n347_o == 2'b01;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:382:23  */
    assign n354_o = {4'b0000, fy_d2};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:382:13  */
    assign n355_o = w1pad+n354_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:382:49  */
    assign n357_o = n347_o == 2'b11;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:383:22  */
    assign n359_o = {3'b000, fy_d2};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:383:30  */
    assign n361_o = {n359_o, 1'b0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:383:13  */
    assign n362_o = w1pad+n361_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:383:43  */
    assign n364_o = n347_o == 2'b10;
    assign n365_o = {n364_o, n357_o, n352_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:379:4  */
    always @*
        case (n365_o)
            3'b100: n366_o <= n362_o;
            3'b010: n366_o <= n355_o;
            3'b001: n366_o <= n350_o;
            default: n366_o <= w1pad;
        endcase
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:385:11  */
    assign n367_o = q1[3:1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:387:13  */
    assign n369_o = {2'b00, fy_d2};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:387:21  */
    assign n371_o = {n369_o, 2'b00};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:387:49  */
    assign n373_o = n367_o == 3'b001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:387:60  */
    assign n375_o = n367_o == 3'b010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:387:60  */
    assign n376_o = n373_o | n375_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:387:68  */
    assign n378_o = n367_o == 3'b110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:387:68  */
    assign n379_o = n376_o | n378_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:387:75  */
    assign n381_o = n367_o == 3'b101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:387:75  */
    assign n382_o = n379_o | n381_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:388:12  */
    assign n384_o = {1'b0, fy_d2};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:388:20  */
    assign n386_o = {n384_o, 3'b000};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:388:49  */
    assign n388_o = n367_o == 3'b011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:388:59  */
    assign n390_o = n367_o == 3'b100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:388:59  */
    assign n391_o = n388_o | n390_o;
    assign n393_o = {n391_o, n382_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:385:4  */
    always @*
        case (n393_o)
            2'b10: n394_o <= n386_o;
            2'b01: n394_o <= n371_o;
            default: n394_o <= 15'b000000000000000;
        endcase
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:390:11  */
    assign n395_o = q1[3];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:392:15  */
    assign n396_o = w0fulla-fydec0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:392:41  */
    assign n398_o = n395_o == 1'b0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:393:15  */
    assign n399_o = w0fulla+fydec0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:390:4  */
    always @*
        case (n398_o)
            1'b1: n400_o <= n396_o;
            default: n400_o <= n399_o;
        endcase
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:394:16  */
    assign n401_o = w0full[11:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:394:30  */
    assign n403_o = {n401_o, 2'b00};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:395:38  */
    assign n406_o = w0 == 14'b00000000000000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:395:29  */
    assign n407_o = n406_o ? 4'b0000 : n410_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:396:24  */
    assign n408_o = w0[13];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:396:29  */
    assign n410_o = {n408_o, 3'b010};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:397:21  */
    assign n411_o = q4_d2[2:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:398:21  */
    assign n412_o = q4_d2[3];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:398:25  */
    assign n414_o = {n412_o, 2'b00};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:399:21  */
    assign n415_o = q3_d1[2:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:400:21  */
    assign n416_o = q3_d1[3];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:400:25  */
    assign n418_o = {n416_o, 2'b00};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:401:21  */
    assign n419_o = q2_d1[2:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:402:21  */
    assign n420_o = q2_d1[3];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:402:25  */
    assign n422_o = {n420_o, 2'b00};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:403:18  */
    assign n423_o = q1[2:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:404:18  */
    assign n424_o = q1[3];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:404:22  */
    assign n426_o = {n424_o, 2'b00};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:405:13  */
    assign n427_o = q0[2:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:406:13  */
    assign n428_o = q0[3];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:406:18  */
    assign n430_o = {n428_o, 2'b00};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:407:14  */
    assign n431_o = {qp4, qp3};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:407:20  */
    assign n432_o = {n431_o, qp2};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:407:26  */
    assign n433_o = {n432_o, qp1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:407:32  */
    assign n434_o = {n433_o, qp0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:408:13  */
    assign n435_o = qm4[1:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:408:26  */
    assign n436_o = {n435_o, qm3};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:408:32  */
    assign n437_o = {n436_o, qm2};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:408:38  */
    assign n438_o = {n437_o, qm1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:408:44  */
    assign n439_o = {n438_o, qm0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:408:50  */
    assign n441_o = {n439_o, 1'b0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:409:14  */
    assign n442_o = qp-qm;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:411:16  */
    assign n443_o = fr0_d1[14:2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:411:39  */
    assign n444_o = fr0_d1[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:411:52  */
    assign n445_o = fr0_d1[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:411:43  */
    assign n446_o = n444_o | n445_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:411:30  */
    assign n447_o = {n443_o, n446_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:413:11  */
    assign n448_o = fr[12];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:414:17  */
    assign n449_o = fr[12:2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:414:36  */
    assign n450_o = fr[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:414:45  */
    assign n451_o = fr[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:414:40  */
    assign n452_o = n450_o | n451_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:414:31  */
    assign n453_o = {n449_o, n452_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:414:50  */
    assign n455_o = n448_o == 1'b1;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:415:17  */
    assign n456_o = fr[11:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:413:4  */
    always @*
        case (n455_o)
            1'b1: n457_o <= n453_o;
            default: n457_o <= n456_o;
        endcase
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:416:57  */
    assign n458_o = fr[12];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:416:53  */
    assign n460_o = {9'b000111111, n458_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:416:22  */
    assign n461_o = expr0_d3+n460_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:417:17  */
    assign n462_o = frn1[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:417:30  */
    assign n463_o = frn1[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:417:41  */
    assign n464_o = frn1[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:417:34  */
    assign n465_o = n463_o | n464_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:417:52  */
    assign n466_o = frn1[3];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:417:45  */
    assign n467_o = n465_o | n466_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:417:21  */
    assign n468_o = n462_o & n467_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:420:33  */
    assign n469_o = frn1_d1[10:3];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:420:24  */
    assign n470_o = {expr1_d1, n469_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:421:48  */
    assign n472_o = {17'b00000000000000000, round_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:421:24  */
    assign n473_o = expfrac+n472_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:422:36  */
    assign n475_o = expfracr[17];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:422:23  */
    assign n476_o = n475_o ? 2'b00 : n481_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:423:37  */
    assign n478_o = expfracr[17:16];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:423:52  */
    assign n480_o = n478_o == 2'b01;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:423:12  */
    assign n481_o = n480_o ? 2'b10 : 2'b01;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:427:17  */
    assign n484_o = exnr0_d4 == 2'b01;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:425:4  */
    always @*
        case (n484_o)
            1'b1: n485_o <= exnr;
            default: n485_o <= exnr0_d4;
        endcase
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:429:19  */
    assign n486_o = {exnrfinal, sr_d4};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:429:37  */
    assign n487_o = expfracr[15:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_8_8.vhdl:429:27  */
    assign n488_o = {n486_o, n487_o};
endmodule

