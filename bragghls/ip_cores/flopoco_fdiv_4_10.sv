module selfunctiontable_r8_f300_uid4
    (input clk,
        input rst,
        input[6:0] x,
        output[3:0] y);
    wire[3:0] tableout;
    wire n587_o;
    wire n590_o;
    wire n593_o;
    wire n596_o;
    wire n599_o;
    wire n602_o;
    wire n605_o;
    wire n608_o;
    wire n611_o;
    wire n614_o;
    wire n617_o;
    wire n620_o;
    wire n623_o;
    wire n626_o;
    wire n629_o;
    wire n632_o;
    wire n635_o;
    wire n638_o;
    wire n641_o;
    wire n644_o;
    wire n647_o;
    wire n650_o;
    wire n653_o;
    wire n656_o;
    wire n659_o;
    wire n662_o;
    wire n665_o;
    wire n668_o;
    wire n671_o;
    wire n674_o;
    wire n677_o;
    wire n680_o;
    wire n683_o;
    wire n686_o;
    wire n689_o;
    wire n692_o;
    wire n695_o;
    wire n698_o;
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
    wire n827_o;
    wire n830_o;
    wire n833_o;
    wire n836_o;
    wire n839_o;
    wire n842_o;
    wire n845_o;
    wire n848_o;
    wire n851_o;
    wire n854_o;
    wire n857_o;
    wire n860_o;
    wire n863_o;
    wire n866_o;
    wire n869_o;
    wire n872_o;
    wire n875_o;
    wire n878_o;
    wire n881_o;
    wire n884_o;
    wire n887_o;
    wire n890_o;
    wire n893_o;
    wire n896_o;
    wire n899_o;
    wire n902_o;
    wire n905_o;
    wire n908_o;
    wire n911_o;
    wire n914_o;
    wire n917_o;
    wire n920_o;
    wire n923_o;
    wire n926_o;
    wire n929_o;
    wire n932_o;
    wire n935_o;
    wire n938_o;
    wire n941_o;
    wire n944_o;
    wire n947_o;
    wire n950_o;
    wire n953_o;
    wire n956_o;
    wire n959_o;
    wire n962_o;
    wire n965_o;
    wire n968_o;
    wire[127:0] n970_o;
    reg[3:0] n971_o;
    assign y = tableout;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:17:8  */
    assign tableout = n971_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:25:11  */
    assign n587_o = x == 7'b0000000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:26:11  */
    assign n590_o = x == 7'b0000001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:27:11  */
    assign n593_o = x == 7'b0000010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:28:11  */
    assign n596_o = x == 7'b0000011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:29:11  */
    assign n599_o = x == 7'b0000100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:30:11  */
    assign n602_o = x == 7'b0000101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:31:11  */
    assign n605_o = x == 7'b0000110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:32:11  */
    assign n608_o = x == 7'b0000111;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:33:11  */
    assign n611_o = x == 7'b0001000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:34:11  */
    assign n614_o = x == 7'b0001001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:35:11  */
    assign n617_o = x == 7'b0001010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:36:11  */
    assign n620_o = x == 7'b0001011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:37:11  */
    assign n623_o = x == 7'b0001100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:38:11  */
    assign n626_o = x == 7'b0001101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:39:11  */
    assign n629_o = x == 7'b0001110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:40:11  */
    assign n632_o = x == 7'b0001111;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:41:11  */
    assign n635_o = x == 7'b0010000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:42:11  */
    assign n638_o = x == 7'b0010001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:43:11  */
    assign n641_o = x == 7'b0010010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:44:11  */
    assign n644_o = x == 7'b0010011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:45:11  */
    assign n647_o = x == 7'b0010100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:46:11  */
    assign n650_o = x == 7'b0010101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:47:11  */
    assign n653_o = x == 7'b0010110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:48:11  */
    assign n656_o = x == 7'b0010111;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:49:11  */
    assign n659_o = x == 7'b0011000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:50:11  */
    assign n662_o = x == 7'b0011001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:51:11  */
    assign n665_o = x == 7'b0011010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:52:11  */
    assign n668_o = x == 7'b0011011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:53:11  */
    assign n671_o = x == 7'b0011100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:54:11  */
    assign n674_o = x == 7'b0011101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:55:11  */
    assign n677_o = x == 7'b0011110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:56:11  */
    assign n680_o = x == 7'b0011111;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:57:11  */
    assign n683_o = x == 7'b0100000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:58:11  */
    assign n686_o = x == 7'b0100001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:59:11  */
    assign n689_o = x == 7'b0100010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:60:11  */
    assign n692_o = x == 7'b0100011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:61:11  */
    assign n695_o = x == 7'b0100100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:62:11  */
    assign n698_o = x == 7'b0100101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:63:11  */
    assign n701_o = x == 7'b0100110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:64:11  */
    assign n704_o = x == 7'b0100111;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:65:11  */
    assign n707_o = x == 7'b0101000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:66:11  */
    assign n710_o = x == 7'b0101001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:67:11  */
    assign n713_o = x == 7'b0101010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:68:11  */
    assign n716_o = x == 7'b0101011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:69:11  */
    assign n719_o = x == 7'b0101100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:70:11  */
    assign n722_o = x == 7'b0101101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:71:11  */
    assign n725_o = x == 7'b0101110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:72:11  */
    assign n728_o = x == 7'b0101111;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:73:11  */
    assign n731_o = x == 7'b0110000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:74:11  */
    assign n734_o = x == 7'b0110001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:75:11  */
    assign n737_o = x == 7'b0110010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:76:11  */
    assign n740_o = x == 7'b0110011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:77:11  */
    assign n743_o = x == 7'b0110100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:78:11  */
    assign n746_o = x == 7'b0110101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:79:11  */
    assign n749_o = x == 7'b0110110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:80:11  */
    assign n752_o = x == 7'b0110111;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:81:11  */
    assign n755_o = x == 7'b0111000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:82:11  */
    assign n758_o = x == 7'b0111001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:83:11  */
    assign n761_o = x == 7'b0111010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:84:11  */
    assign n764_o = x == 7'b0111011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:85:11  */
    assign n767_o = x == 7'b0111100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:86:11  */
    assign n770_o = x == 7'b0111101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:87:11  */
    assign n773_o = x == 7'b0111110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:88:11  */
    assign n776_o = x == 7'b0111111;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:89:11  */
    assign n779_o = x == 7'b1000000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:90:11  */
    assign n782_o = x == 7'b1000001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:91:11  */
    assign n785_o = x == 7'b1000010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:92:11  */
    assign n788_o = x == 7'b1000011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:93:11  */
    assign n791_o = x == 7'b1000100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:94:11  */
    assign n794_o = x == 7'b1000101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:95:11  */
    assign n797_o = x == 7'b1000110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:96:11  */
    assign n800_o = x == 7'b1000111;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:97:11  */
    assign n803_o = x == 7'b1001000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:98:11  */
    assign n806_o = x == 7'b1001001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:99:11  */
    assign n809_o = x == 7'b1001010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:100:11  */
    assign n812_o = x == 7'b1001011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:101:11  */
    assign n815_o = x == 7'b1001100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:102:11  */
    assign n818_o = x == 7'b1001101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:103:11  */
    assign n821_o = x == 7'b1001110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:104:11  */
    assign n824_o = x == 7'b1001111;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:105:11  */
    assign n827_o = x == 7'b1010000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:106:11  */
    assign n830_o = x == 7'b1010001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:107:11  */
    assign n833_o = x == 7'b1010010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:108:11  */
    assign n836_o = x == 7'b1010011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:109:11  */
    assign n839_o = x == 7'b1010100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:110:11  */
    assign n842_o = x == 7'b1010101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:111:11  */
    assign n845_o = x == 7'b1010110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:112:11  */
    assign n848_o = x == 7'b1010111;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:113:11  */
    assign n851_o = x == 7'b1011000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:114:11  */
    assign n854_o = x == 7'b1011001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:115:11  */
    assign n857_o = x == 7'b1011010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:116:11  */
    assign n860_o = x == 7'b1011011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:117:11  */
    assign n863_o = x == 7'b1011100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:118:11  */
    assign n866_o = x == 7'b1011101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:119:11  */
    assign n869_o = x == 7'b1011110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:120:11  */
    assign n872_o = x == 7'b1011111;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:121:11  */
    assign n875_o = x == 7'b1100000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:122:11  */
    assign n878_o = x == 7'b1100001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:123:11  */
    assign n881_o = x == 7'b1100010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:124:11  */
    assign n884_o = x == 7'b1100011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:125:11  */
    assign n887_o = x == 7'b1100100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:126:11  */
    assign n890_o = x == 7'b1100101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:127:11  */
    assign n893_o = x == 7'b1100110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:128:11  */
    assign n896_o = x == 7'b1100111;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:129:11  */
    assign n899_o = x == 7'b1101000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:130:11  */
    assign n902_o = x == 7'b1101001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:131:11  */
    assign n905_o = x == 7'b1101010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:132:11  */
    assign n908_o = x == 7'b1101011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:133:11  */
    assign n911_o = x == 7'b1101100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:134:11  */
    assign n914_o = x == 7'b1101101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:135:11  */
    assign n917_o = x == 7'b1101110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:136:11  */
    assign n920_o = x == 7'b1101111;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:137:11  */
    assign n923_o = x == 7'b1110000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:138:11  */
    assign n926_o = x == 7'b1110001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:139:11  */
    assign n929_o = x == 7'b1110010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:140:11  */
    assign n932_o = x == 7'b1110011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:141:11  */
    assign n935_o = x == 7'b1110100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:142:11  */
    assign n938_o = x == 7'b1110101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:143:11  */
    assign n941_o = x == 7'b1110110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:144:11  */
    assign n944_o = x == 7'b1110111;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:145:11  */
    assign n947_o = x == 7'b1111000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:146:11  */
    assign n950_o = x == 7'b1111001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:147:11  */
    assign n953_o = x == 7'b1111010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:148:11  */
    assign n956_o = x == 7'b1111011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:149:11  */
    assign n959_o = x == 7'b1111100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:150:11  */
    assign n962_o = x == 7'b1111101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:151:11  */
    assign n965_o = x == 7'b1111110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:152:11  */
    assign n968_o = x == 7'b1111111;
    assign n970_o = {n968_o, n965_o, n962_o, n959_o, n956_o, n953_o, n950_o, n947_o, n944_o, n941_o, n938_o, n935_o, n932_o, n929_o, n926_o, n923_o, n920_o, n917_o, n914_o, n911_o, n908_o, n905_o, n902_o, n899_o, n896_o, n893_o, n890_o, n887_o, n884_o, n881_o, n878_o, n875_o, n872_o, n869_o, n866_o, n863_o, n860_o, n857_o, n854_o, n851_o, n848_o, n845_o, n842_o, n839_o, n836_o, n833_o, n830_o, n827_o, n824_o, n821_o, n818_o, n815_o, n812_o, n809_o, n806_o, n803_o, n800_o, n797_o, n794_o, n791_o, n788_o, n785_o, n782_o, n779_o, n776_o, n773_o, n770_o, n767_o, n764_o, n761_o, n758_o, n755_o, n752_o, n749_o, n746_o, n743_o, n740_o, n737_o, n734_o, n731_o, n728_o, n725_o, n722_o, n719_o, n716_o, n713_o, n710_o, n707_o, n704_o, n701_o, n698_o, n695_o, n692_o, n689_o, n686_o, n683_o, n680_o, n677_o, n674_o, n671_o, n668_o, n665_o, n662_o, n659_o, n656_o, n653_o, n650_o, n647_o, n644_o, n641_o, n638_o, n635_o, n632_o, n629_o, n626_o, n623_o, n620_o, n617_o, n614_o, n611_o, n608_o, n605_o, n602_o, n599_o, n596_o, n593_o, n590_o, n587_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:24:3  */
    always @*
        case (n970_o)
            128'b10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000: n971_o <= 4'b1111;
            128'b01000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000: n971_o <= 4'b1111;
            128'b00100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000: n971_o <= 4'b1111;
            128'b00010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000: n971_o <= 4'b1111;
            128'b00001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000: n971_o <= 4'b1111;
            128'b00000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000: n971_o <= 4'b1111;
            128'b00000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000: n971_o <= 4'b1111;
            128'b00000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000: n971_o <= 4'b1111;
            128'b00000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000: n971_o <= 4'b1110;
            128'b00000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000: n971_o <= 4'b1110;
            128'b00000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000: n971_o <= 4'b1110;
            128'b00000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000: n971_o <= 4'b1110;
            128'b00000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000: n971_o <= 4'b1110;
            128'b00000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000: n971_o <= 4'b1110;
            128'b00000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000: n971_o <= 4'b1110;
            128'b00000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000: n971_o <= 4'b1110;
            128'b00000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000: n971_o <= 4'b1101;
            128'b00000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000: n971_o <= 4'b1101;
            128'b00000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000: n971_o <= 4'b1101;
            128'b00000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000: n971_o <= 4'b1101;
            128'b00000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000: n971_o <= 4'b1101;
            128'b00000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000: n971_o <= 4'b1101;
            128'b00000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000: n971_o <= 4'b1101;
            128'b00000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000: n971_o <= 4'b1100;
            128'b00000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000: n971_o <= 4'b1100;
            128'b00000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000: n971_o <= 4'b1100;
            128'b00000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000: n971_o <= 4'b1100;
            128'b00000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000: n971_o <= 4'b1100;
            128'b00000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000: n971_o <= 4'b1100;
            128'b00000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000: n971_o <= 4'b1100;
            128'b00000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000: n971_o <= 4'b1011;
            128'b00000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000: n971_o <= 4'b1011;
            128'b00000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000: n971_o <= 4'b1011;
            128'b00000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000: n971_o <= 4'b1011;
            128'b00000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000: n971_o <= 4'b1011;
            128'b00000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000: n971_o <= 4'b1011;
            128'b00000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000: n971_o <= 4'b1011;
            128'b00000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000: n971_o <= 4'b1011;
            128'b00000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000: n971_o <= 4'b1010;
            128'b00000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000: n971_o <= 4'b1010;
            128'b00000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000: n971_o <= 4'b1010;
            128'b00000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000: n971_o <= 4'b1010;
            128'b00000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000: n971_o <= 4'b1010;
            128'b00000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000: n971_o <= 4'b1001;
            128'b00000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000: n971_o <= 4'b1010;
            128'b00000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000: n971_o <= 4'b1010;
            128'b00000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000: n971_o <= 4'b1001;
            128'b00000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000: n971_o <= 4'b1001;
            128'b00000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000: n971_o <= 4'b1001;
            128'b00000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000: n971_o <= 4'b1001;
            128'b00000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000: n971_o <= 4'b1001;
            128'b00000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000: n971_o <= 4'b1001;
            128'b00000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000: n971_o <= 4'b1001;
            128'b00000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000: n971_o <= 4'b1001;
            128'b00000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000: n971_o <= 4'b1001;
            128'b00000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000: n971_o <= 4'b1001;
            128'b00000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000: n971_o <= 4'b1001;
            128'b00000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000: n971_o <= 4'b1001;
            128'b00000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000: n971_o <= 4'b1001;
            128'b00000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000: n971_o <= 4'b1001;
            128'b00000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000: n971_o <= 4'b1001;
            128'b00000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000: n971_o <= 4'b1001;
            128'b00000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000: n971_o <= 4'b1001;
            128'b00000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000: n971_o <= 4'b1001;
            128'b00000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000: n971_o <= 4'b0111;
            128'b00000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000: n971_o <= 4'b0111;
            128'b00000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000: n971_o <= 4'b0111;
            128'b00000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000: n971_o <= 4'b0111;
            128'b00000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000: n971_o <= 4'b0111;
            128'b00000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000: n971_o <= 4'b0111;
            128'b00000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000: n971_o <= 4'b0111;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000: n971_o <= 4'b0111;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000: n971_o <= 4'b0111;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000: n971_o <= 4'b0111;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000: n971_o <= 4'b0111;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000: n971_o <= 4'b0111;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000: n971_o <= 4'b0110;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000: n971_o <= 4'b0111;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000: n971_o <= 4'b0111;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000: n971_o <= 4'b0111;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000: n971_o <= 4'b0110;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000: n971_o <= 4'b0110;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000: n971_o <= 4'b0111;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000: n971_o <= 4'b0111;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000: n971_o <= 4'b0101;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000: n971_o <= 4'b0110;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000: n971_o <= 4'b0110;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000: n971_o <= 4'b0111;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000: n971_o <= 4'b0101;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000: n971_o <= 4'b0101;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000: n971_o <= 4'b0110;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000: n971_o <= 4'b0110;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000: n971_o <= 4'b0100;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000: n971_o <= 4'b0101;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000: n971_o <= 4'b0101;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000: n971_o <= 4'b0101;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000: n971_o <= 4'b0100;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000: n971_o <= 4'b0100;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000: n971_o <= 4'b0100;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000: n971_o <= 4'b0101;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000: n971_o <= 4'b0011;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000: n971_o <= 4'b0011;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000: n971_o <= 4'b0100;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000: n971_o <= 4'b0100;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000: n971_o <= 4'b0011;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000: n971_o <= 4'b0011;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000: n971_o <= 4'b0011;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000: n971_o <= 4'b0011;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000: n971_o <= 4'b0010;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000: n971_o <= 4'b0010;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000: n971_o <= 4'b0011;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000: n971_o <= 4'b0011;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000: n971_o <= 4'b0010;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000: n971_o <= 4'b0010;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000: n971_o <= 4'b0010;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000: n971_o <= 4'b0010;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000: n971_o <= 4'b0001;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000: n971_o <= 4'b0001;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000: n971_o <= 4'b0001;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000: n971_o <= 4'b0001;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000: n971_o <= 4'b0001;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000: n971_o <= 4'b0001;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000: n971_o <= 4'b0001;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000: n971_o <= 4'b0001;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000: n971_o <= 4'b0000;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100: n971_o <= 4'b0000;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010: n971_o <= 4'b0000;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001: n971_o <= 4'b0000;
            default: n971_o <= 4'bXXXX;
        endcase
endmodule

module fdiv
    (input clk,
        input rst,
        input[16:0] X,
        input[16:0] Y,
        output[16:0] R);
    wire[10:0] partialfx;
    wire[10:0] partialfy;
    wire[5:0] expr0;
    wire[5:0] expr0_d1;
    wire[5:0] expr0_d2;
    wire[5:0] expr0_d3;
    wire[5:0] expr0_d4;
    wire sr;
    wire sr_d1;
    wire sr_d2;
    wire sr_d3;
    wire sr_d4;
    wire sr_d5;
    wire[3:0] exnxy;
    wire[1:0] exnr0;
    wire[1:0] exnr0_d1;
    wire[1:0] exnr0_d2;
    wire[1:0] exnr0_d3;
    wire[1:0] exnr0_d4;
    wire[1:0] exnr0_d5;
    wire[12:0] fy;
    wire[12:0] fy_d1;
    wire[12:0] fy_d2;
    wire[13:0] fx;
    wire[15:0] w5;
    wire[6:0] sel5;
    wire[3:0] q5;
    wire[3:0] q5_d1;
    wire[3:0] q5_d2;
    wire[3:0] q5_d3;
    wire[16:0] w5pad;
    wire[16:0] w4fulla;
    wire[16:0] fydec4;
    wire[16:0] w4full;
    wire[15:0] w4;
    wire[15:0] w4_d1;
    wire[6:0] sel4;
    wire[3:0] q4;
    wire[3:0] q4_d1;
    wire[3:0] q4_d2;
    wire[16:0] w4pad;
    wire[16:0] w3fulla;
    wire[16:0] fydec3;
    wire[16:0] w3full;
    wire[15:0] w3;
    wire[6:0] sel3;
    wire[3:0] q3;
    wire[3:0] q3_d1;
    wire[3:0] q3_d2;
    wire[16:0] w3pad;
    wire[16:0] w2fulla;
    wire[16:0] fydec2;
    wire[16:0] w2full;
    wire[15:0] w2;
    wire[15:0] w2_d1;
    wire[6:0] sel2;
    wire[3:0] q2;
    wire[3:0] q2_d1;
    wire[16:0] w2pad;
    wire[16:0] w1fulla;
    wire[16:0] fydec1;
    wire[16:0] w1full;
    wire[15:0] w1;
    wire[6:0] sel1;
    wire[3:0] q1;
    wire[3:0] q1_d1;
    wire[16:0] w1pad;
    wire[16:0] w0fulla;
    wire[16:0] fydec0;
    wire[16:0] w0full;
    wire[15:0] w0;
    wire[15:0] w0_d1;
    wire[3:0] q0;
    wire[2:0] qp5;
    wire[2:0] qm5;
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
    wire[17:0] qp;
    wire[17:0] qm;
    wire[17:0] fr0;
    wire[17:0] fr0_d1;
    wire[15:0] fr;
    wire[13:0] frn1;
    wire[13:0] frn1_d1;
    wire[5:0] expr1;
    wire[5:0] expr1_d1;
    wire round;
    wire round_d1;
    wire[15:0] expfrac;
    wire[15:0] expfracr;
    wire[1:0] exnr;
    wire[1:0] exnrfinal;
    reg[5:0] n37_q;
    reg[5:0] n38_q;
    reg[5:0] n39_q;
    reg[5:0] n40_q;
    reg n41_q;
    reg n42_q;
    reg n43_q;
    reg n44_q;
    reg n45_q;
    reg[1:0] n46_q;
    reg[1:0] n47_q;
    reg[1:0] n48_q;
    reg[1:0] n49_q;
    reg[1:0] n50_q;
    reg[12:0] n51_q;
    reg[12:0] n52_q;
    reg[3:0] n53_q;
    reg[3:0] n54_q;
    reg[3:0] n55_q;
    reg[15:0] n56_q;
    reg[3:0] n57_q;
    reg[3:0] n58_q;
    reg[3:0] n59_q;
    reg[3:0] n60_q;
    reg[15:0] n61_q;
    reg[3:0] n62_q;
    reg[3:0] n63_q;
    reg[15:0] n64_q;
    reg[17:0] n65_q;
    reg[13:0] n66_q;
    reg[5:0] n67_q;
    reg n68_q;
    wire[9:0] n69_o;
    wire[10:0] n71_o;
    wire[9:0] n72_o;
    wire[10:0] n74_o;
    wire[3:0] n75_o;
    wire[5:0] n77_o;
    wire[3:0] n78_o;
    wire[5:0] n80_o;
    wire[5:0] n81_o;
    wire n82_o;
    wire n83_o;
    wire n84_o;
    wire[1:0] n85_o;
    wire[1:0] n86_o;
    wire[3:0] n87_o;
    wire n90_o;
    wire n93_o;
    wire n95_o;
    wire n96_o;
    wire n98_o;
    wire n99_o;
    wire n102_o;
    wire n104_o;
    wire n105_o;
    wire n107_o;
    wire n108_o;
    wire[2:0] n110_o;
    reg[1:0] n111_o;
    wire[1:0] n112_o;
    wire[11:0] n114_o;
    wire[12:0] n116_o;
    wire[12:0] n118_o;
    wire[12:0] n119_o;
    wire n121_o;
    wire[12:0] n123_o;
    wire[12:0] n125_o;
    wire[12:0] n126_o;
    wire n128_o;
    wire[12:0] n130_o;
    wire[1:0] n131_o;
    reg[12:0] n132_o;
    wire[1:0] n133_o;
    wire[12:0] n135_o;
    wire[13:0] n137_o;
    wire[11:0] n139_o;
    wire[13:0] n141_o;
    wire[13:0] n142_o;
    wire n144_o;
    wire[13:0] n146_o;
    wire[11:0] n148_o;
    wire[13:0] n150_o;
    wire[13:0] n151_o;
    wire n153_o;
    wire[11:0] n155_o;
    wire[13:0] n157_o;
    wire[1:0] n158_o;
    reg[13:0] n159_o;
    wire[15:0] n161_o;
    wire[4:0] n162_o;
    wire[1:0] n163_o;
    wire[6:0] n164_o;
    wire[3:0] selfunctiontable5_n165;
    wire[3:0] selfunctiontable5_y;
    wire[16:0] n169_o;
    wire[1:0] n170_o;
    wire[16:0] n172_o;
    wire[16:0] n173_o;
    wire n175_o;
    wire[16:0] n177_o;
    wire[16:0] n178_o;
    wire n180_o;
    wire[15:0] n182_o;
    wire[16:0] n184_o;
    wire[16:0] n185_o;
    wire n187_o;
    wire[2:0] n188_o;
    reg[16:0] n189_o;
    wire[2:0] n190_o;
    wire[14:0] n192_o;
    wire[16:0] n194_o;
    wire n196_o;
    wire n198_o;
    wire n199_o;
    wire n201_o;
    wire n202_o;
    wire n204_o;
    wire n205_o;
    wire[13:0] n207_o;
    wire[16:0] n209_o;
    wire n211_o;
    wire n213_o;
    wire n214_o;
    wire[1:0] n216_o;
    reg[16:0] n217_o;
    wire n218_o;
    wire[16:0] n219_o;
    wire n221_o;
    wire[16:0] n222_o;
    reg[16:0] n223_o;
    wire[13:0] n224_o;
    wire[15:0] n226_o;
    wire[4:0] n227_o;
    wire[1:0] n228_o;
    wire[6:0] n229_o;
    wire[3:0] selfunctiontable4_n230;
    wire[3:0] selfunctiontable4_y;
    wire[16:0] n234_o;
    wire[1:0] n235_o;
    wire[16:0] n237_o;
    wire[16:0] n238_o;
    wire n240_o;
    wire[16:0] n242_o;
    wire[16:0] n243_o;
    wire n245_o;
    wire[15:0] n247_o;
    wire[16:0] n249_o;
    wire[16:0] n250_o;
    wire n252_o;
    wire[2:0] n253_o;
    reg[16:0] n254_o;
    wire[2:0] n255_o;
    wire[14:0] n257_o;
    wire[16:0] n259_o;
    wire n261_o;
    wire n263_o;
    wire n264_o;
    wire n266_o;
    wire n267_o;
    wire n269_o;
    wire n270_o;
    wire[13:0] n272_o;
    wire[16:0] n274_o;
    wire n276_o;
    wire n278_o;
    wire n279_o;
    wire[1:0] n281_o;
    reg[16:0] n282_o;
    wire n283_o;
    wire[16:0] n284_o;
    wire n286_o;
    wire[16:0] n287_o;
    reg[16:0] n288_o;
    wire[13:0] n289_o;
    wire[15:0] n291_o;
    wire[4:0] n292_o;
    wire[1:0] n293_o;
    wire[6:0] n294_o;
    wire[3:0] selfunctiontable3_n295;
    wire[3:0] selfunctiontable3_y;
    wire[16:0] n299_o;
    wire[1:0] n300_o;
    wire[16:0] n302_o;
    wire[16:0] n303_o;
    wire n305_o;
    wire[16:0] n307_o;
    wire[16:0] n308_o;
    wire n310_o;
    wire[15:0] n312_o;
    wire[16:0] n314_o;
    wire[16:0] n315_o;
    wire n317_o;
    wire[2:0] n318_o;
    reg[16:0] n319_o;
    wire[2:0] n320_o;
    wire[14:0] n322_o;
    wire[16:0] n324_o;
    wire n326_o;
    wire n328_o;
    wire n329_o;
    wire n331_o;
    wire n332_o;
    wire n334_o;
    wire n335_o;
    wire[13:0] n337_o;
    wire[16:0] n339_o;
    wire n341_o;
    wire n343_o;
    wire n344_o;
    wire[1:0] n346_o;
    reg[16:0] n347_o;
    wire n348_o;
    wire[16:0] n349_o;
    wire n351_o;
    wire[16:0] n352_o;
    reg[16:0] n353_o;
    wire[13:0] n354_o;
    wire[15:0] n356_o;
    wire[4:0] n357_o;
    wire[1:0] n358_o;
    wire[6:0] n359_o;
    wire[3:0] selfunctiontable2_n360;
    wire[3:0] selfunctiontable2_y;
    wire[16:0] n364_o;
    wire[1:0] n365_o;
    wire[16:0] n367_o;
    wire[16:0] n368_o;
    wire n370_o;
    wire[16:0] n372_o;
    wire[16:0] n373_o;
    wire n375_o;
    wire[15:0] n377_o;
    wire[16:0] n379_o;
    wire[16:0] n380_o;
    wire n382_o;
    wire[2:0] n383_o;
    reg[16:0] n384_o;
    wire[2:0] n385_o;
    wire[14:0] n387_o;
    wire[16:0] n389_o;
    wire n391_o;
    wire n393_o;
    wire n394_o;
    wire n396_o;
    wire n397_o;
    wire n399_o;
    wire n400_o;
    wire[13:0] n402_o;
    wire[16:0] n404_o;
    wire n406_o;
    wire n408_o;
    wire n409_o;
    wire[1:0] n411_o;
    reg[16:0] n412_o;
    wire n413_o;
    wire[16:0] n414_o;
    wire n416_o;
    wire[16:0] n417_o;
    reg[16:0] n418_o;
    wire[13:0] n419_o;
    wire[15:0] n421_o;
    wire[4:0] n422_o;
    wire[1:0] n423_o;
    wire[6:0] n424_o;
    wire[3:0] selfunctiontable1_n425;
    wire[3:0] selfunctiontable1_y;
    wire[16:0] n429_o;
    wire[1:0] n430_o;
    wire[16:0] n432_o;
    wire[16:0] n433_o;
    wire n435_o;
    wire[16:0] n437_o;
    wire[16:0] n438_o;
    wire n440_o;
    wire[15:0] n442_o;
    wire[16:0] n444_o;
    wire[16:0] n445_o;
    wire n447_o;
    wire[2:0] n448_o;
    reg[16:0] n449_o;
    wire[2:0] n450_o;
    wire[14:0] n452_o;
    wire[16:0] n454_o;
    wire n456_o;
    wire n458_o;
    wire n459_o;
    wire n461_o;
    wire n462_o;
    wire n464_o;
    wire n465_o;
    wire[13:0] n467_o;
    wire[16:0] n469_o;
    wire n471_o;
    wire n473_o;
    wire n474_o;
    wire[1:0] n476_o;
    reg[16:0] n477_o;
    wire n478_o;
    wire[16:0] n479_o;
    wire n481_o;
    wire[16:0] n482_o;
    reg[16:0] n483_o;
    wire[13:0] n484_o;
    wire[15:0] n486_o;
    wire n489_o;
    wire[3:0] n490_o;
    wire n491_o;
    wire[3:0] n493_o;
    wire[2:0] n494_o;
    wire n495_o;
    wire[2:0] n497_o;
    wire[2:0] n498_o;
    wire n499_o;
    wire[2:0] n501_o;
    wire[2:0] n502_o;
    wire n503_o;
    wire[2:0] n505_o;
    wire[2:0] n506_o;
    wire n507_o;
    wire[2:0] n509_o;
    wire[2:0] n510_o;
    wire n511_o;
    wire[2:0] n513_o;
    wire[2:0] n514_o;
    wire n515_o;
    wire[2:0] n517_o;
    wire[5:0] n518_o;
    wire[8:0] n519_o;
    wire[11:0] n520_o;
    wire[14:0] n521_o;
    wire[17:0] n522_o;
    wire[1:0] n523_o;
    wire[4:0] n524_o;
    wire[7:0] n525_o;
    wire[10:0] n526_o;
    wire[13:0] n527_o;
    wire[16:0] n528_o;
    wire[17:0] n530_o;
    wire[17:0] n531_o;
    wire[14:0] n532_o;
    wire n533_o;
    wire n534_o;
    wire n535_o;
    wire n536_o;
    wire n537_o;
    wire[15:0] n538_o;
    wire n539_o;
    wire[12:0] n540_o;
    wire n541_o;
    wire n542_o;
    wire n543_o;
    wire[13:0] n544_o;
    wire n546_o;
    wire[13:0] n547_o;
    reg[13:0] n548_o;
    wire n549_o;
    wire[5:0] n551_o;
    wire[5:0] n552_o;
    wire n553_o;
    wire n554_o;
    wire n555_o;
    wire n556_o;
    wire n557_o;
    wire n558_o;
    wire n559_o;
    wire[9:0] n560_o;
    wire[15:0] n561_o;
    wire[15:0] n563_o;
    wire[15:0] n564_o;
    wire n566_o;
    wire[1:0] n567_o;
    wire[1:0] n569_o;
    wire n571_o;
    wire[1:0] n572_o;
    wire n575_o;
    reg[1:0] n576_o;
    wire[2:0] n577_o;
    wire[13:0] n578_o;
    wire[16:0] n579_o;
    assign R = n579_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:188:8  */
    assign partialfx = n71_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:189:8  */
    assign partialfy = n74_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:190:8  */
    assign expr0 = n81_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:190:15  */
    assign expr0_d1 = n37_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:190:25  */
    assign expr0_d2 = n38_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:190:35  */
    assign expr0_d3 = n39_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:190:45  */
    assign expr0_d4 = n40_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:191:8  */
    assign sr = n84_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:191:12  */
    assign sr_d1 = n41_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:191:19  */
    assign sr_d2 = n42_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:191:26  */
    assign sr_d3 = n43_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:191:33  */
    assign sr_d4 = n44_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:191:40  */
    assign sr_d5 = n45_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:192:8  */
    assign exnxy = n87_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:193:8  */
    assign exnr0 = n111_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:193:15  */
    assign exnr0_d1 = n46_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:193:25  */
    assign exnr0_d2 = n47_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:193:35  */
    assign exnr0_d3 = n48_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:193:45  */
    assign exnr0_d4 = n49_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:193:55  */
    assign exnr0_d5 = n50_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:194:8  */
    assign fy = n132_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:194:12  */
    assign fy_d1 = n51_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:194:19  */
    assign fy_d2 = n52_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:195:8  */
    assign fx = n159_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:196:8  */
    assign w5 = n161_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:197:8  */
    assign sel5 = n164_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:198:8  */
    assign q5 = selfunctiontable5_n165; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:198:12  */
    assign q5_d1 = n53_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:198:19  */
    assign q5_d2 = n54_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:198:26  */
    assign q5_d3 = n55_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:199:8  */
    assign w5pad = n169_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:200:8  */
    assign w4fulla = n189_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:201:8  */
    assign fydec4 = n217_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:202:8  */
    assign w4full = n223_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:203:8  */
    assign w4 = n226_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:203:12  */
    assign w4_d1 = n56_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:204:8  */
    assign sel4 = n229_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:205:8  */
    assign q4 = selfunctiontable4_n230; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:205:12  */
    assign q4_d1 = n57_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:205:19  */
    assign q4_d2 = n58_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:206:8  */
    assign w4pad = n234_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:207:8  */
    assign w3fulla = n254_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:208:8  */
    assign fydec3 = n282_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:209:8  */
    assign w3full = n288_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:210:8  */
    assign w3 = n291_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:211:8  */
    assign sel3 = n294_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:212:8  */
    assign q3 = selfunctiontable3_n295; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:212:12  */
    assign q3_d1 = n59_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:212:19  */
    assign q3_d2 = n60_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:213:8  */
    assign w3pad = n299_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:214:8  */
    assign w2fulla = n319_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:215:8  */
    assign fydec2 = n347_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:216:8  */
    assign w2full = n353_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:217:8  */
    assign w2 = n356_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:217:12  */
    assign w2_d1 = n61_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:218:8  */
    assign sel2 = n359_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:219:8  */
    assign q2 = selfunctiontable2_n360; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:219:12  */
    assign q2_d1 = n62_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:220:8  */
    assign w2pad = n364_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:221:8  */
    assign w1fulla = n384_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:222:8  */
    assign fydec1 = n412_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:223:8  */
    assign w1full = n418_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:224:8  */
    assign w1 = n421_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:225:8  */
    assign sel1 = n424_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:226:8  */
    assign q1 = selfunctiontable1_n425; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:226:12  */
    assign q1_d1 = n63_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:227:8  */
    assign w1pad = n429_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:228:8  */
    assign w0fulla = n449_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:229:8  */
    assign fydec0 = n477_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:230:8  */
    assign w0full = n483_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:231:8  */
    assign w0 = n486_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:231:12  */
    assign w0_d1 = n64_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:232:8  */
    assign q0 = n490_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:233:8  */
    assign qp5 = n494_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:234:8  */
    assign qm5 = n497_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:235:8  */
    assign qp4 = n498_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:236:8  */
    assign qm4 = n501_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:237:8  */
    assign qp3 = n502_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:238:8  */
    assign qm3 = n505_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:239:8  */
    assign qp2 = n506_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:240:8  */
    assign qm2 = n509_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:241:8  */
    assign qp1 = n510_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:242:8  */
    assign qm1 = n513_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:243:8  */
    assign qp0 = n514_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:244:8  */
    assign qm0 = n517_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:245:8  */
    assign qp = n522_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:246:8  */
    assign qm = n530_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:247:8  */
    assign fr0 = n531_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:247:13  */
    assign fr0_d1 = n65_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:248:8  */
    assign fr = n538_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:249:8  */
    assign frn1 = n548_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:249:14  */
    assign frn1_d1 = n66_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:250:8  */
    assign expr1 = n552_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:250:15  */
    assign expr1_d1 = n67_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:251:8  */
    assign round = n559_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:251:15  */
    assign round_d1 = n68_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:252:8  */
    assign expfrac = n561_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:253:8  */
    assign expfracr = n564_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:254:8  */
    assign exnr = n567_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:255:8  */
    assign exnrfinal = n576_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:259:10  */
    always @(posedge clk)
        n37_q <= expr0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:259:10  */
    always @(posedge clk)
        n38_q <= expr0_d1;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:259:10  */
    always @(posedge clk)
        n39_q <= expr0_d2;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:259:10  */
    always @(posedge clk)
        n40_q <= expr0_d3;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:259:10  */
    always @(posedge clk)
        n41_q <= sr;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:259:10  */
    always @(posedge clk)
        n42_q <= sr_d1;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:259:10  */
    always @(posedge clk)
        n43_q <= sr_d2;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:259:10  */
    always @(posedge clk)
        n44_q <= sr_d3;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:259:10  */
    always @(posedge clk)
        n45_q <= sr_d4;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:259:10  */
    always @(posedge clk)
        n46_q <= exnr0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:259:10  */
    always @(posedge clk)
        n47_q <= exnr0_d1;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:259:10  */
    always @(posedge clk)
        n48_q <= exnr0_d2;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:259:10  */
    always @(posedge clk)
        n49_q <= exnr0_d3;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:259:10  */
    always @(posedge clk)
        n50_q <= exnr0_d4;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:259:10  */
    always @(posedge clk)
        n51_q <= fy;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:259:10  */
    always @(posedge clk)
        n52_q <= fy_d1;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:259:10  */
    always @(posedge clk)
        n53_q <= q5;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:259:10  */
    always @(posedge clk)
        n54_q <= q5_d1;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:259:10  */
    always @(posedge clk)
        n55_q <= q5_d2;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:259:10  */
    always @(posedge clk)
        n56_q <= w4;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:259:10  */
    always @(posedge clk)
        n57_q <= q4;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:259:10  */
    always @(posedge clk)
        n58_q <= q4_d1;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:259:10  */
    always @(posedge clk)
        n59_q <= q3;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:259:10  */
    always @(posedge clk)
        n60_q <= q3_d1;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:259:10  */
    always @(posedge clk)
        n61_q <= w2;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:259:10  */
    always @(posedge clk)
        n62_q <= q2;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:259:10  */
    always @(posedge clk)
        n63_q <= q1;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:259:10  */
    always @(posedge clk)
        n64_q <= w0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:259:10  */
    always @(posedge clk)
        n65_q <= fr0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:259:10  */
    always @(posedge clk)
        n66_q <= frn1;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:259:10  */
    always @(posedge clk)
        n67_q <= expr1;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:259:10  */
    always @(posedge clk)
        n68_q <= round;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:294:24  */
    assign n69_o = X[9:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:294:21  */
    assign n71_o = {1'b1, n69_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:295:24  */
    assign n72_o = Y[9:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:295:21  */
    assign n74_o = {1'b1, n72_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:297:22  */
    assign n75_o = X[13:10];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:297:19  */
    assign n77_o = {2'b00, n75_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:297:49  */
    assign n78_o = Y[13:10];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:297:46  */
    assign n80_o = {2'b00, n78_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:297:38  */
    assign n81_o = n77_o-n80_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:298:11  */
    assign n82_o = X[14];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:298:21  */
    assign n83_o = Y[14];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:298:16  */
    assign n84_o = n82_o ^ n83_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:300:14  */
    assign n85_o = X[16:15];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:300:32  */
    assign n86_o = Y[16:15];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:300:29  */
    assign n87_o = {n85_o, n86_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:303:16  */
    assign n90_o = exnxy == 4'b0101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:304:16  */
    assign n93_o = exnxy == 4'b0001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:304:28  */
    assign n95_o = exnxy == 4'b0010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:304:28  */
    assign n96_o = n93_o | n95_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:304:37  */
    assign n98_o = exnxy == 4'b0110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:304:37  */
    assign n99_o = n96_o | n98_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:305:16  */
    assign n102_o = exnxy == 4'b0100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:305:28  */
    assign n104_o = exnxy == 4'b1000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:305:28  */
    assign n105_o = n102_o | n104_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:305:37  */
    assign n107_o = exnxy == 4'b1001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:305:37  */
    assign n108_o = n105_o | n107_o;
    assign n110_o = {n108_o, n99_o, n90_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:301:4  */
    always @*
        case (n110_o)
            3'b100: n111_o <= 2'b10;
            3'b010: n111_o <= 2'b00;
            3'b001: n111_o <= 2'b01;
            default: n111_o <= 2'b11;
        endcase
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:308:19  */
    assign n112_o = partialfy[9:8];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:310:15  */
    assign n114_o = {1'b0, partialfy};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:310:27  */
    assign n116_o = {n114_o, 1'b0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:310:47  */
    assign n118_o = {partialfy, 2'b00};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:310:34  */
    assign n119_o = n116_o+n118_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:310:55  */
    assign n121_o = n112_o == 2'b00;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:311:16  */
    assign n123_o = {2'b00, partialfy};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:311:42  */
    assign n125_o = {partialfy, 2'b00};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:311:29  */
    assign n126_o = n123_o+n125_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:311:50  */
    assign n128_o = n112_o == 2'b01;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:312:20  */
    assign n130_o = {partialfy, 2'b00};
    assign n131_o = {n128_o, n121_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:308:4  */
    always @*
        case (n131_o)
            2'b10: n132_o <= n126_o;
            2'b01: n132_o <= n119_o;
            default: n132_o <= n130_o;
        endcase
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:313:19  */
    assign n133_o = partialfy[9:8];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:315:16  */
    assign n135_o = {2'b00, partialfx};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:315:28  */
    assign n137_o = {n135_o, 1'b0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:315:42  */
    assign n139_o = {1'b0, partialfx};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:315:54  */
    assign n141_o = {n139_o, 2'b00};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:315:35  */
    assign n142_o = n137_o+n141_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:315:62  */
    assign n144_o = n133_o == 2'b00;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:316:17  */
    assign n146_o = {3'b000, partialfx};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:316:37  */
    assign n148_o = {1'b0, partialfx};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:316:49  */
    assign n150_o = {n148_o, 2'b00};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:316:30  */
    assign n151_o = n146_o+n150_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:316:57  */
    assign n153_o = n133_o == 2'b01;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:317:14  */
    assign n155_o = {1'b0, partialfx};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:317:26  */
    assign n157_o = {n155_o, 2'b00};
    assign n158_o = {n153_o, n144_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:313:4  */
    always @*
        case (n158_o)
            2'b10: n159_o <= n151_o;
            2'b01: n159_o <= n142_o;
            default: n159_o <= n157_o;
        endcase
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:318:16  */
    assign n161_o = {2'b00, fx};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:319:14  */
    assign n162_o = w5[15:11];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:319:33  */
    assign n163_o = fy[10:9];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:319:29  */
    assign n164_o = {n162_o, n163_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:324:23  */
    assign selfunctiontable5_n165 = selfunctiontable5_y; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:320:4  */
    selfunctiontable_r8_f300_uid4 selfunctiontable5(
        .clk(clk),
        .rst(rst),
        .x(sel5),
        .y(selfunctiontable5_y));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:325:16  */
    assign n169_o = {w5, 1'b0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:326:11  */
    assign n170_o = q5[1:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:328:23  */
    assign n172_o = {4'b0000, fy};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:328:13  */
    assign n173_o = w5pad-n172_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:328:49  */
    assign n175_o = n170_o == 2'b01;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:329:23  */
    assign n177_o = {4'b0000, fy};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:329:13  */
    assign n178_o = w5pad+n177_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:329:49  */
    assign n180_o = n170_o == 2'b11;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:330:22  */
    assign n182_o = {3'b000, fy};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:330:27  */
    assign n184_o = {n182_o, 1'b0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:330:13  */
    assign n185_o = w5pad+n184_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:330:43  */
    assign n187_o = n170_o == 2'b10;
    assign n188_o = {n187_o, n180_o, n175_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:326:4  */
    always @*
        case (n188_o)
            3'b100: n189_o <= n185_o;
            3'b010: n189_o <= n178_o;
            3'b001: n189_o <= n173_o;
            default: n189_o <= w5pad;
        endcase
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:332:11  */
    assign n190_o = q5[3:1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:334:13  */
    assign n192_o = {2'b00, fy};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:334:18  */
    assign n194_o = {n192_o, 2'b00};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:334:49  */
    assign n196_o = n190_o == 3'b001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:334:60  */
    assign n198_o = n190_o == 3'b010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:334:60  */
    assign n199_o = n196_o | n198_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:334:68  */
    assign n201_o = n190_o == 3'b110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:334:68  */
    assign n202_o = n199_o | n201_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:334:75  */
    assign n204_o = n190_o == 3'b101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:334:75  */
    assign n205_o = n202_o | n204_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:335:12  */
    assign n207_o = {1'b0, fy};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:335:17  */
    assign n209_o = {n207_o, 3'b000};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:335:49  */
    assign n211_o = n190_o == 3'b011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:335:59  */
    assign n213_o = n190_o == 3'b100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:335:59  */
    assign n214_o = n211_o | n213_o;
    assign n216_o = {n214_o, n205_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:332:4  */
    always @*
        case (n216_o)
            2'b10: n217_o <= n209_o;
            2'b01: n217_o <= n194_o;
            default: n217_o <= 17'b00000000000000000;
        endcase
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:337:11  */
    assign n218_o = q5[3];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:339:15  */
    assign n219_o = w4fulla-fydec4;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:339:41  */
    assign n221_o = n218_o == 1'b0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:340:15  */
    assign n222_o = w4fulla+fydec4;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:337:4  */
    always @*
        case (n221_o)
            1'b1: n223_o <= n219_o;
            default: n223_o <= n222_o;
        endcase
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:341:16  */
    assign n224_o = w4full[13:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:341:30  */
    assign n226_o = {n224_o, 2'b00};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:343:17  */
    assign n227_o = w4_d1[15:11];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:343:39  */
    assign n228_o = fy_d1[10:9];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:343:32  */
    assign n229_o = {n227_o, n228_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:348:23  */
    assign selfunctiontable4_n230 = selfunctiontable4_y; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:344:4  */
    selfunctiontable_r8_f300_uid4 selfunctiontable4(
        .clk(clk),
        .rst(rst),
        .x(sel4),
        .y(selfunctiontable4_y));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:349:19  */
    assign n234_o = {w4_d1, 1'b0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:350:11  */
    assign n235_o = q4[1:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:352:23  */
    assign n237_o = {4'b0000, fy_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:352:13  */
    assign n238_o = w4pad-n237_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:352:49  */
    assign n240_o = n235_o == 2'b01;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:353:23  */
    assign n242_o = {4'b0000, fy_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:353:13  */
    assign n243_o = w4pad+n242_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:353:49  */
    assign n245_o = n235_o == 2'b11;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:354:22  */
    assign n247_o = {3'b000, fy_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:354:30  */
    assign n249_o = {n247_o, 1'b0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:354:13  */
    assign n250_o = w4pad+n249_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:354:43  */
    assign n252_o = n235_o == 2'b10;
    assign n253_o = {n252_o, n245_o, n240_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:350:4  */
    always @*
        case (n253_o)
            3'b100: n254_o <= n250_o;
            3'b010: n254_o <= n243_o;
            3'b001: n254_o <= n238_o;
            default: n254_o <= w4pad;
        endcase
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:356:11  */
    assign n255_o = q4[3:1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:358:13  */
    assign n257_o = {2'b00, fy_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:358:21  */
    assign n259_o = {n257_o, 2'b00};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:358:49  */
    assign n261_o = n255_o == 3'b001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:358:60  */
    assign n263_o = n255_o == 3'b010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:358:60  */
    assign n264_o = n261_o | n263_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:358:68  */
    assign n266_o = n255_o == 3'b110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:358:68  */
    assign n267_o = n264_o | n266_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:358:75  */
    assign n269_o = n255_o == 3'b101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:358:75  */
    assign n270_o = n267_o | n269_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:359:12  */
    assign n272_o = {1'b0, fy_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:359:20  */
    assign n274_o = {n272_o, 3'b000};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:359:49  */
    assign n276_o = n255_o == 3'b011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:359:59  */
    assign n278_o = n255_o == 3'b100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:359:59  */
    assign n279_o = n276_o | n278_o;
    assign n281_o = {n279_o, n270_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:356:4  */
    always @*
        case (n281_o)
            2'b10: n282_o <= n274_o;
            2'b01: n282_o <= n259_o;
            default: n282_o <= 17'b00000000000000000;
        endcase
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:361:11  */
    assign n283_o = q4[3];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:363:15  */
    assign n284_o = w3fulla-fydec3;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:363:41  */
    assign n286_o = n283_o == 1'b0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:364:15  */
    assign n287_o = w3fulla+fydec3;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:361:4  */
    always @*
        case (n286_o)
            1'b1: n288_o <= n284_o;
            default: n288_o <= n287_o;
        endcase
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:365:16  */
    assign n289_o = w3full[13:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:365:30  */
    assign n291_o = {n289_o, 2'b00};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:366:14  */
    assign n292_o = w3[15:11];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:366:36  */
    assign n293_o = fy_d1[10:9];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:366:29  */
    assign n294_o = {n292_o, n293_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:371:23  */
    assign selfunctiontable3_n295 = selfunctiontable3_y; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:367:4  */
    selfunctiontable_r8_f300_uid4 selfunctiontable3(
        .clk(clk),
        .rst(rst),
        .x(sel3),
        .y(selfunctiontable3_y));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:372:16  */
    assign n299_o = {w3, 1'b0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:373:11  */
    assign n300_o = q3[1:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:375:23  */
    assign n302_o = {4'b0000, fy_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:375:13  */
    assign n303_o = w3pad-n302_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:375:49  */
    assign n305_o = n300_o == 2'b01;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:376:23  */
    assign n307_o = {4'b0000, fy_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:376:13  */
    assign n308_o = w3pad+n307_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:376:49  */
    assign n310_o = n300_o == 2'b11;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:377:22  */
    assign n312_o = {3'b000, fy_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:377:30  */
    assign n314_o = {n312_o, 1'b0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:377:13  */
    assign n315_o = w3pad+n314_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:377:43  */
    assign n317_o = n300_o == 2'b10;
    assign n318_o = {n317_o, n310_o, n305_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:373:4  */
    always @*
        case (n318_o)
            3'b100: n319_o <= n315_o;
            3'b010: n319_o <= n308_o;
            3'b001: n319_o <= n303_o;
            default: n319_o <= w3pad;
        endcase
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:379:11  */
    assign n320_o = q3[3:1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:381:13  */
    assign n322_o = {2'b00, fy_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:381:21  */
    assign n324_o = {n322_o, 2'b00};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:381:49  */
    assign n326_o = n320_o == 3'b001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:381:60  */
    assign n328_o = n320_o == 3'b010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:381:60  */
    assign n329_o = n326_o | n328_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:381:68  */
    assign n331_o = n320_o == 3'b110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:381:68  */
    assign n332_o = n329_o | n331_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:381:75  */
    assign n334_o = n320_o == 3'b101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:381:75  */
    assign n335_o = n332_o | n334_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:382:12  */
    assign n337_o = {1'b0, fy_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:382:20  */
    assign n339_o = {n337_o, 3'b000};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:382:49  */
    assign n341_o = n320_o == 3'b011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:382:59  */
    assign n343_o = n320_o == 3'b100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:382:59  */
    assign n344_o = n341_o | n343_o;
    assign n346_o = {n344_o, n335_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:379:4  */
    always @*
        case (n346_o)
            2'b10: n347_o <= n339_o;
            2'b01: n347_o <= n324_o;
            default: n347_o <= 17'b00000000000000000;
        endcase
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:384:11  */
    assign n348_o = q3[3];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:386:15  */
    assign n349_o = w2fulla-fydec2;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:386:41  */
    assign n351_o = n348_o == 1'b0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:387:15  */
    assign n352_o = w2fulla+fydec2;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:384:4  */
    always @*
        case (n351_o)
            1'b1: n353_o <= n349_o;
            default: n353_o <= n352_o;
        endcase
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:388:16  */
    assign n354_o = w2full[13:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:388:30  */
    assign n356_o = {n354_o, 2'b00};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:390:17  */
    assign n357_o = w2_d1[15:11];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:390:39  */
    assign n358_o = fy_d2[10:9];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:390:32  */
    assign n359_o = {n357_o, n358_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:395:23  */
    assign selfunctiontable2_n360 = selfunctiontable2_y; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:391:4  */
    selfunctiontable_r8_f300_uid4 selfunctiontable2(
        .clk(clk),
        .rst(rst),
        .x(sel2),
        .y(selfunctiontable2_y));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:396:19  */
    assign n364_o = {w2_d1, 1'b0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:397:11  */
    assign n365_o = q2[1:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:399:23  */
    assign n367_o = {4'b0000, fy_d2};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:399:13  */
    assign n368_o = w2pad-n367_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:399:49  */
    assign n370_o = n365_o == 2'b01;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:400:23  */
    assign n372_o = {4'b0000, fy_d2};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:400:13  */
    assign n373_o = w2pad+n372_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:400:49  */
    assign n375_o = n365_o == 2'b11;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:401:22  */
    assign n377_o = {3'b000, fy_d2};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:401:30  */
    assign n379_o = {n377_o, 1'b0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:401:13  */
    assign n380_o = w2pad+n379_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:401:43  */
    assign n382_o = n365_o == 2'b10;
    assign n383_o = {n382_o, n375_o, n370_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:397:4  */
    always @*
        case (n383_o)
            3'b100: n384_o <= n380_o;
            3'b010: n384_o <= n373_o;
            3'b001: n384_o <= n368_o;
            default: n384_o <= w2pad;
        endcase
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:403:11  */
    assign n385_o = q2[3:1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:405:13  */
    assign n387_o = {2'b00, fy_d2};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:405:21  */
    assign n389_o = {n387_o, 2'b00};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:405:49  */
    assign n391_o = n385_o == 3'b001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:405:60  */
    assign n393_o = n385_o == 3'b010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:405:60  */
    assign n394_o = n391_o | n393_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:405:68  */
    assign n396_o = n385_o == 3'b110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:405:68  */
    assign n397_o = n394_o | n396_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:405:75  */
    assign n399_o = n385_o == 3'b101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:405:75  */
    assign n400_o = n397_o | n399_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:406:12  */
    assign n402_o = {1'b0, fy_d2};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:406:20  */
    assign n404_o = {n402_o, 3'b000};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:406:49  */
    assign n406_o = n385_o == 3'b011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:406:59  */
    assign n408_o = n385_o == 3'b100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:406:59  */
    assign n409_o = n406_o | n408_o;
    assign n411_o = {n409_o, n400_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:403:4  */
    always @*
        case (n411_o)
            2'b10: n412_o <= n404_o;
            2'b01: n412_o <= n389_o;
            default: n412_o <= 17'b00000000000000000;
        endcase
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:408:11  */
    assign n413_o = q2[3];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:410:15  */
    assign n414_o = w1fulla-fydec1;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:410:41  */
    assign n416_o = n413_o == 1'b0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:411:15  */
    assign n417_o = w1fulla+fydec1;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:408:4  */
    always @*
        case (n416_o)
            1'b1: n418_o <= n414_o;
            default: n418_o <= n417_o;
        endcase
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:412:16  */
    assign n419_o = w1full[13:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:412:30  */
    assign n421_o = {n419_o, 2'b00};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:413:14  */
    assign n422_o = w1[15:11];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:413:36  */
    assign n423_o = fy_d2[10:9];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:413:29  */
    assign n424_o = {n422_o, n423_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:418:23  */
    assign selfunctiontable1_n425 = selfunctiontable1_y; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:414:4  */
    selfunctiontable_r8_f300_uid4 selfunctiontable1(
        .clk(clk),
        .rst(rst),
        .x(sel1),
        .y(selfunctiontable1_y));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:419:16  */
    assign n429_o = {w1, 1'b0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:420:11  */
    assign n430_o = q1[1:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:422:23  */
    assign n432_o = {4'b0000, fy_d2};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:422:13  */
    assign n433_o = w1pad-n432_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:422:49  */
    assign n435_o = n430_o == 2'b01;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:423:23  */
    assign n437_o = {4'b0000, fy_d2};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:423:13  */
    assign n438_o = w1pad+n437_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:423:49  */
    assign n440_o = n430_o == 2'b11;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:424:22  */
    assign n442_o = {3'b000, fy_d2};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:424:30  */
    assign n444_o = {n442_o, 1'b0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:424:13  */
    assign n445_o = w1pad+n444_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:424:43  */
    assign n447_o = n430_o == 2'b10;
    assign n448_o = {n447_o, n440_o, n435_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:420:4  */
    always @*
        case (n448_o)
            3'b100: n449_o <= n445_o;
            3'b010: n449_o <= n438_o;
            3'b001: n449_o <= n433_o;
            default: n449_o <= w1pad;
        endcase
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:426:11  */
    assign n450_o = q1[3:1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:428:13  */
    assign n452_o = {2'b00, fy_d2};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:428:21  */
    assign n454_o = {n452_o, 2'b00};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:428:49  */
    assign n456_o = n450_o == 3'b001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:428:60  */
    assign n458_o = n450_o == 3'b010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:428:60  */
    assign n459_o = n456_o | n458_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:428:68  */
    assign n461_o = n450_o == 3'b110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:428:68  */
    assign n462_o = n459_o | n461_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:428:75  */
    assign n464_o = n450_o == 3'b101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:428:75  */
    assign n465_o = n462_o | n464_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:429:12  */
    assign n467_o = {1'b0, fy_d2};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:429:20  */
    assign n469_o = {n467_o, 3'b000};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:429:49  */
    assign n471_o = n450_o == 3'b011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:429:59  */
    assign n473_o = n450_o == 3'b100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:429:59  */
    assign n474_o = n471_o | n473_o;
    assign n476_o = {n474_o, n465_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:426:4  */
    always @*
        case (n476_o)
            2'b10: n477_o <= n469_o;
            2'b01: n477_o <= n454_o;
            default: n477_o <= 17'b00000000000000000;
        endcase
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:431:11  */
    assign n478_o = q1[3];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:433:15  */
    assign n479_o = w0fulla-fydec0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:433:41  */
    assign n481_o = n478_o == 1'b0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:434:15  */
    assign n482_o = w0fulla+fydec0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:431:4  */
    always @*
        case (n481_o)
            1'b1: n483_o <= n479_o;
            default: n483_o <= n482_o;
        endcase
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:435:16  */
    assign n484_o = w0full[13:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:435:30  */
    assign n486_o = {n484_o, 2'b00};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:437:41  */
    assign n489_o = w0_d1 == 16'b0000000000000000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:437:29  */
    assign n490_o = n489_o ? 4'b0000 : n493_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:438:27  */
    assign n491_o = w0_d1[15];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:438:32  */
    assign n493_o = {n491_o, 3'b010};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:439:21  */
    assign n494_o = q5_d3[2:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:440:21  */
    assign n495_o = q5_d3[3];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:440:25  */
    assign n497_o = {n495_o, 2'b00};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:441:21  */
    assign n498_o = q4_d2[2:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:442:21  */
    assign n499_o = q4_d2[3];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:442:25  */
    assign n501_o = {n499_o, 2'b00};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:443:21  */
    assign n502_o = q3_d2[2:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:444:21  */
    assign n503_o = q3_d2[3];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:444:25  */
    assign n505_o = {n503_o, 2'b00};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:445:21  */
    assign n506_o = q2_d1[2:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:446:21  */
    assign n507_o = q2_d1[3];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:446:25  */
    assign n509_o = {n507_o, 2'b00};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:447:21  */
    assign n510_o = q1_d1[2:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:448:21  */
    assign n511_o = q1_d1[3];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:448:25  */
    assign n513_o = {n511_o, 2'b00};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:449:13  */
    assign n514_o = q0[2:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:450:13  */
    assign n515_o = q0[3];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:450:18  */
    assign n517_o = {n515_o, 2'b00};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:451:14  */
    assign n518_o = {qp5, qp4};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:451:20  */
    assign n519_o = {n518_o, qp3};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:451:26  */
    assign n520_o = {n519_o, qp2};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:451:32  */
    assign n521_o = {n520_o, qp1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:451:38  */
    assign n522_o = {n521_o, qp0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:452:13  */
    assign n523_o = qm5[1:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:452:26  */
    assign n524_o = {n523_o, qm4};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:452:32  */
    assign n525_o = {n524_o, qm3};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:452:38  */
    assign n526_o = {n525_o, qm2};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:452:44  */
    assign n527_o = {n526_o, qm1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:452:50  */
    assign n528_o = {n527_o, qm0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:452:56  */
    assign n530_o = {n528_o, 1'b0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:453:14  */
    assign n531_o = qp-qm;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:455:16  */
    assign n532_o = fr0_d1[17:3];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:455:39  */
    assign n533_o = fr0_d1[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:455:52  */
    assign n534_o = fr0_d1[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:455:43  */
    assign n535_o = n533_o | n534_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:455:65  */
    assign n536_o = fr0_d1[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:455:56  */
    assign n537_o = n535_o | n536_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:455:30  */
    assign n538_o = {n532_o, n537_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:457:11  */
    assign n539_o = fr[14];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:458:17  */
    assign n540_o = fr[14:2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:458:36  */
    assign n541_o = fr[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:458:45  */
    assign n542_o = fr[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:458:40  */
    assign n543_o = n541_o | n542_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:458:31  */
    assign n544_o = {n540_o, n543_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:458:50  */
    assign n546_o = n539_o == 1'b1;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:459:17  */
    assign n547_o = fr[13:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:457:4  */
    always @*
        case (n546_o)
            1'b1: n548_o <= n544_o;
            default: n548_o <= n547_o;
        endcase
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:460:57  */
    assign n549_o = fr[14];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:460:53  */
    assign n551_o = {5'b00011, n549_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:460:22  */
    assign n552_o = expr0_d4+n551_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:461:17  */
    assign n553_o = frn1[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:461:30  */
    assign n554_o = frn1[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:461:41  */
    assign n555_o = frn1[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:461:34  */
    assign n556_o = n554_o | n555_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:461:52  */
    assign n557_o = frn1[3];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:461:45  */
    assign n558_o = n556_o | n557_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:461:21  */
    assign n559_o = n553_o & n558_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:464:33  */
    assign n560_o = frn1_d1[12:3];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:464:24  */
    assign n561_o = {expr1_d1, n560_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:465:48  */
    assign n563_o = {15'b000000000000000, round_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:465:24  */
    assign n564_o = expfrac+n563_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:466:36  */
    assign n566_o = expfracr[15];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:466:23  */
    assign n567_o = n566_o ? 2'b00 : n572_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:467:37  */
    assign n569_o = expfracr[15:14];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:467:52  */
    assign n571_o = n569_o == 2'b01;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:467:12  */
    assign n572_o = n571_o ? 2'b10 : 2'b01;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:471:17  */
    assign n575_o = exnr0_d5 == 2'b01;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:469:4  */
    always @*
        case (n575_o)
            1'b1: n576_o <= exnr;
            default: n576_o <= exnr0_d5;
        endcase
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:473:19  */
    assign n577_o = {exnrfinal, sr_d5};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:473:37  */
    assign n578_o = expfracr[13:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_4_10.vhdl:473:27  */
    assign n579_o = {n577_o, n578_o};
endmodule

