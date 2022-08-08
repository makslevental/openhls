module selfunctiontable_r8_f300_uid4
    (input clk,
        input rst,
        input[6:0] x,
        output[3:0] y);
    wire[3:0] tableout;
    wire n423_o;
    wire n426_o;
    wire n429_o;
    wire n432_o;
    wire n435_o;
    wire n438_o;
    wire n441_o;
    wire n444_o;
    wire n447_o;
    wire n450_o;
    wire n453_o;
    wire n456_o;
    wire n459_o;
    wire n462_o;
    wire n465_o;
    wire n468_o;
    wire n471_o;
    wire n474_o;
    wire n477_o;
    wire n480_o;
    wire n483_o;
    wire n486_o;
    wire n489_o;
    wire n492_o;
    wire n495_o;
    wire n498_o;
    wire n501_o;
    wire n504_o;
    wire n507_o;
    wire n510_o;
    wire n513_o;
    wire n516_o;
    wire n519_o;
    wire n522_o;
    wire n525_o;
    wire n528_o;
    wire n531_o;
    wire n534_o;
    wire n537_o;
    wire n540_o;
    wire n543_o;
    wire n546_o;
    wire n549_o;
    wire n552_o;
    wire n555_o;
    wire n558_o;
    wire n561_o;
    wire n564_o;
    wire n567_o;
    wire n570_o;
    wire n573_o;
    wire n576_o;
    wire n579_o;
    wire n582_o;
    wire n585_o;
    wire n588_o;
    wire n591_o;
    wire n594_o;
    wire n597_o;
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
    wire n774_o;
    wire n777_o;
    wire n780_o;
    wire n783_o;
    wire n786_o;
    wire n789_o;
    wire n792_o;
    wire n795_o;
    wire n798_o;
    wire n801_o;
    wire n804_o;
    wire[127:0] n806_o;
    reg[3:0] n807_o;
    assign y = tableout;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:17:8  */
    assign tableout = n807_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:25:11  */
    assign n423_o = x == 7'b0000000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:26:11  */
    assign n426_o = x == 7'b0000001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:27:11  */
    assign n429_o = x == 7'b0000010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:28:11  */
    assign n432_o = x == 7'b0000011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:29:11  */
    assign n435_o = x == 7'b0000100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:30:11  */
    assign n438_o = x == 7'b0000101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:31:11  */
    assign n441_o = x == 7'b0000110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:32:11  */
    assign n444_o = x == 7'b0000111;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:33:11  */
    assign n447_o = x == 7'b0001000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:34:11  */
    assign n450_o = x == 7'b0001001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:35:11  */
    assign n453_o = x == 7'b0001010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:36:11  */
    assign n456_o = x == 7'b0001011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:37:11  */
    assign n459_o = x == 7'b0001100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:38:11  */
    assign n462_o = x == 7'b0001101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:39:11  */
    assign n465_o = x == 7'b0001110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:40:11  */
    assign n468_o = x == 7'b0001111;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:41:11  */
    assign n471_o = x == 7'b0010000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:42:11  */
    assign n474_o = x == 7'b0010001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:43:11  */
    assign n477_o = x == 7'b0010010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:44:11  */
    assign n480_o = x == 7'b0010011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:45:11  */
    assign n483_o = x == 7'b0010100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:46:11  */
    assign n486_o = x == 7'b0010101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:47:11  */
    assign n489_o = x == 7'b0010110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:48:11  */
    assign n492_o = x == 7'b0010111;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:49:11  */
    assign n495_o = x == 7'b0011000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:50:11  */
    assign n498_o = x == 7'b0011001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:51:11  */
    assign n501_o = x == 7'b0011010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:52:11  */
    assign n504_o = x == 7'b0011011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:53:11  */
    assign n507_o = x == 7'b0011100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:54:11  */
    assign n510_o = x == 7'b0011101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:55:11  */
    assign n513_o = x == 7'b0011110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:56:11  */
    assign n516_o = x == 7'b0011111;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:57:11  */
    assign n519_o = x == 7'b0100000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:58:11  */
    assign n522_o = x == 7'b0100001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:59:11  */
    assign n525_o = x == 7'b0100010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:60:11  */
    assign n528_o = x == 7'b0100011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:61:11  */
    assign n531_o = x == 7'b0100100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:62:11  */
    assign n534_o = x == 7'b0100101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:63:11  */
    assign n537_o = x == 7'b0100110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:64:11  */
    assign n540_o = x == 7'b0100111;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:65:11  */
    assign n543_o = x == 7'b0101000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:66:11  */
    assign n546_o = x == 7'b0101001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:67:11  */
    assign n549_o = x == 7'b0101010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:68:11  */
    assign n552_o = x == 7'b0101011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:69:11  */
    assign n555_o = x == 7'b0101100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:70:11  */
    assign n558_o = x == 7'b0101101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:71:11  */
    assign n561_o = x == 7'b0101110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:72:11  */
    assign n564_o = x == 7'b0101111;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:73:11  */
    assign n567_o = x == 7'b0110000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:74:11  */
    assign n570_o = x == 7'b0110001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:75:11  */
    assign n573_o = x == 7'b0110010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:76:11  */
    assign n576_o = x == 7'b0110011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:77:11  */
    assign n579_o = x == 7'b0110100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:78:11  */
    assign n582_o = x == 7'b0110101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:79:11  */
    assign n585_o = x == 7'b0110110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:80:11  */
    assign n588_o = x == 7'b0110111;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:81:11  */
    assign n591_o = x == 7'b0111000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:82:11  */
    assign n594_o = x == 7'b0111001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:83:11  */
    assign n597_o = x == 7'b0111010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:84:11  */
    assign n600_o = x == 7'b0111011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:85:11  */
    assign n603_o = x == 7'b0111100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:86:11  */
    assign n606_o = x == 7'b0111101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:87:11  */
    assign n609_o = x == 7'b0111110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:88:11  */
    assign n612_o = x == 7'b0111111;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:89:11  */
    assign n615_o = x == 7'b1000000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:90:11  */
    assign n618_o = x == 7'b1000001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:91:11  */
    assign n621_o = x == 7'b1000010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:92:11  */
    assign n624_o = x == 7'b1000011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:93:11  */
    assign n627_o = x == 7'b1000100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:94:11  */
    assign n630_o = x == 7'b1000101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:95:11  */
    assign n633_o = x == 7'b1000110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:96:11  */
    assign n636_o = x == 7'b1000111;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:97:11  */
    assign n639_o = x == 7'b1001000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:98:11  */
    assign n642_o = x == 7'b1001001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:99:11  */
    assign n645_o = x == 7'b1001010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:100:11  */
    assign n648_o = x == 7'b1001011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:101:11  */
    assign n651_o = x == 7'b1001100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:102:11  */
    assign n654_o = x == 7'b1001101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:103:11  */
    assign n657_o = x == 7'b1001110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:104:11  */
    assign n660_o = x == 7'b1001111;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:105:11  */
    assign n663_o = x == 7'b1010000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:106:11  */
    assign n666_o = x == 7'b1010001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:107:11  */
    assign n669_o = x == 7'b1010010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:108:11  */
    assign n672_o = x == 7'b1010011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:109:11  */
    assign n675_o = x == 7'b1010100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:110:11  */
    assign n678_o = x == 7'b1010101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:111:11  */
    assign n681_o = x == 7'b1010110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:112:11  */
    assign n684_o = x == 7'b1010111;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:113:11  */
    assign n687_o = x == 7'b1011000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:114:11  */
    assign n690_o = x == 7'b1011001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:115:11  */
    assign n693_o = x == 7'b1011010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:116:11  */
    assign n696_o = x == 7'b1011011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:117:11  */
    assign n699_o = x == 7'b1011100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:118:11  */
    assign n702_o = x == 7'b1011101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:119:11  */
    assign n705_o = x == 7'b1011110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:120:11  */
    assign n708_o = x == 7'b1011111;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:121:11  */
    assign n711_o = x == 7'b1100000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:122:11  */
    assign n714_o = x == 7'b1100001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:123:11  */
    assign n717_o = x == 7'b1100010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:124:11  */
    assign n720_o = x == 7'b1100011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:125:11  */
    assign n723_o = x == 7'b1100100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:126:11  */
    assign n726_o = x == 7'b1100101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:127:11  */
    assign n729_o = x == 7'b1100110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:128:11  */
    assign n732_o = x == 7'b1100111;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:129:11  */
    assign n735_o = x == 7'b1101000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:130:11  */
    assign n738_o = x == 7'b1101001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:131:11  */
    assign n741_o = x == 7'b1101010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:132:11  */
    assign n744_o = x == 7'b1101011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:133:11  */
    assign n747_o = x == 7'b1101100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:134:11  */
    assign n750_o = x == 7'b1101101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:135:11  */
    assign n753_o = x == 7'b1101110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:136:11  */
    assign n756_o = x == 7'b1101111;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:137:11  */
    assign n759_o = x == 7'b1110000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:138:11  */
    assign n762_o = x == 7'b1110001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:139:11  */
    assign n765_o = x == 7'b1110010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:140:11  */
    assign n768_o = x == 7'b1110011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:141:11  */
    assign n771_o = x == 7'b1110100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:142:11  */
    assign n774_o = x == 7'b1110101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:143:11  */
    assign n777_o = x == 7'b1110110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:144:11  */
    assign n780_o = x == 7'b1110111;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:145:11  */
    assign n783_o = x == 7'b1111000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:146:11  */
    assign n786_o = x == 7'b1111001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:147:11  */
    assign n789_o = x == 7'b1111010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:148:11  */
    assign n792_o = x == 7'b1111011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:149:11  */
    assign n795_o = x == 7'b1111100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:150:11  */
    assign n798_o = x == 7'b1111101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:151:11  */
    assign n801_o = x == 7'b1111110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:152:11  */
    assign n804_o = x == 7'b1111111;
    assign n806_o = {n804_o, n801_o, n798_o, n795_o, n792_o, n789_o, n786_o, n783_o, n780_o, n777_o, n774_o, n771_o, n768_o, n765_o, n762_o, n759_o, n756_o, n753_o, n750_o, n747_o, n744_o, n741_o, n738_o, n735_o, n732_o, n729_o, n726_o, n723_o, n720_o, n717_o, n714_o, n711_o, n708_o, n705_o, n702_o, n699_o, n696_o, n693_o, n690_o, n687_o, n684_o, n681_o, n678_o, n675_o, n672_o, n669_o, n666_o, n663_o, n660_o, n657_o, n654_o, n651_o, n648_o, n645_o, n642_o, n639_o, n636_o, n633_o, n630_o, n627_o, n624_o, n621_o, n618_o, n615_o, n612_o, n609_o, n606_o, n603_o, n600_o, n597_o, n594_o, n591_o, n588_o, n585_o, n582_o, n579_o, n576_o, n573_o, n570_o, n567_o, n564_o, n561_o, n558_o, n555_o, n552_o, n549_o, n546_o, n543_o, n540_o, n537_o, n534_o, n531_o, n528_o, n525_o, n522_o, n519_o, n516_o, n513_o, n510_o, n507_o, n504_o, n501_o, n498_o, n495_o, n492_o, n489_o, n486_o, n483_o, n480_o, n477_o, n474_o, n471_o, n468_o, n465_o, n462_o, n459_o, n456_o, n453_o, n450_o, n447_o, n444_o, n441_o, n438_o, n435_o, n432_o, n429_o, n426_o, n423_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:24:3  */
    always @*
        case (n806_o)
            128'b10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000: n807_o <= 4'b1111;
            128'b01000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000: n807_o <= 4'b1111;
            128'b00100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000: n807_o <= 4'b1111;
            128'b00010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000: n807_o <= 4'b1111;
            128'b00001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000: n807_o <= 4'b1111;
            128'b00000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000: n807_o <= 4'b1111;
            128'b00000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000: n807_o <= 4'b1111;
            128'b00000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000: n807_o <= 4'b1111;
            128'b00000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000: n807_o <= 4'b1110;
            128'b00000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000: n807_o <= 4'b1110;
            128'b00000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000: n807_o <= 4'b1110;
            128'b00000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000: n807_o <= 4'b1110;
            128'b00000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000: n807_o <= 4'b1110;
            128'b00000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000: n807_o <= 4'b1110;
            128'b00000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000: n807_o <= 4'b1110;
            128'b00000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000: n807_o <= 4'b1110;
            128'b00000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000: n807_o <= 4'b1101;
            128'b00000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000: n807_o <= 4'b1101;
            128'b00000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000: n807_o <= 4'b1101;
            128'b00000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000: n807_o <= 4'b1101;
            128'b00000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000: n807_o <= 4'b1101;
            128'b00000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000: n807_o <= 4'b1101;
            128'b00000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000: n807_o <= 4'b1101;
            128'b00000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000: n807_o <= 4'b1100;
            128'b00000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000: n807_o <= 4'b1100;
            128'b00000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000: n807_o <= 4'b1100;
            128'b00000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000: n807_o <= 4'b1100;
            128'b00000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000: n807_o <= 4'b1100;
            128'b00000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000: n807_o <= 4'b1100;
            128'b00000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000: n807_o <= 4'b1100;
            128'b00000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000: n807_o <= 4'b1011;
            128'b00000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000: n807_o <= 4'b1011;
            128'b00000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000: n807_o <= 4'b1011;
            128'b00000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000: n807_o <= 4'b1011;
            128'b00000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000: n807_o <= 4'b1011;
            128'b00000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000: n807_o <= 4'b1011;
            128'b00000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000: n807_o <= 4'b1011;
            128'b00000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000: n807_o <= 4'b1011;
            128'b00000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000: n807_o <= 4'b1010;
            128'b00000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000: n807_o <= 4'b1010;
            128'b00000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000: n807_o <= 4'b1010;
            128'b00000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000: n807_o <= 4'b1010;
            128'b00000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000: n807_o <= 4'b1010;
            128'b00000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000: n807_o <= 4'b1001;
            128'b00000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000: n807_o <= 4'b1010;
            128'b00000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000: n807_o <= 4'b1010;
            128'b00000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000: n807_o <= 4'b1001;
            128'b00000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000: n807_o <= 4'b1001;
            128'b00000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000: n807_o <= 4'b1001;
            128'b00000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000: n807_o <= 4'b1001;
            128'b00000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000: n807_o <= 4'b1001;
            128'b00000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000: n807_o <= 4'b1001;
            128'b00000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000: n807_o <= 4'b1001;
            128'b00000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000: n807_o <= 4'b1001;
            128'b00000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000: n807_o <= 4'b1001;
            128'b00000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000: n807_o <= 4'b1001;
            128'b00000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000: n807_o <= 4'b1001;
            128'b00000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000: n807_o <= 4'b1001;
            128'b00000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000: n807_o <= 4'b1001;
            128'b00000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000: n807_o <= 4'b1001;
            128'b00000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000: n807_o <= 4'b1001;
            128'b00000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000: n807_o <= 4'b1001;
            128'b00000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000: n807_o <= 4'b1001;
            128'b00000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000: n807_o <= 4'b1001;
            128'b00000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000: n807_o <= 4'b0111;
            128'b00000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000: n807_o <= 4'b0111;
            128'b00000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000: n807_o <= 4'b0111;
            128'b00000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000: n807_o <= 4'b0111;
            128'b00000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000: n807_o <= 4'b0111;
            128'b00000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000: n807_o <= 4'b0111;
            128'b00000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000: n807_o <= 4'b0111;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000: n807_o <= 4'b0111;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000: n807_o <= 4'b0111;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000: n807_o <= 4'b0111;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000: n807_o <= 4'b0111;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000: n807_o <= 4'b0111;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000: n807_o <= 4'b0110;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000: n807_o <= 4'b0111;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000: n807_o <= 4'b0111;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000: n807_o <= 4'b0111;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000: n807_o <= 4'b0110;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000: n807_o <= 4'b0110;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000: n807_o <= 4'b0111;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000: n807_o <= 4'b0111;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000: n807_o <= 4'b0101;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000: n807_o <= 4'b0110;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000: n807_o <= 4'b0110;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000: n807_o <= 4'b0111;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000: n807_o <= 4'b0101;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000: n807_o <= 4'b0101;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000: n807_o <= 4'b0110;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000: n807_o <= 4'b0110;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000: n807_o <= 4'b0100;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000: n807_o <= 4'b0101;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000: n807_o <= 4'b0101;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000: n807_o <= 4'b0101;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000: n807_o <= 4'b0100;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000: n807_o <= 4'b0100;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000: n807_o <= 4'b0100;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000: n807_o <= 4'b0101;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000: n807_o <= 4'b0011;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000: n807_o <= 4'b0011;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000: n807_o <= 4'b0100;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000: n807_o <= 4'b0100;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000: n807_o <= 4'b0011;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000: n807_o <= 4'b0011;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000: n807_o <= 4'b0011;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000: n807_o <= 4'b0011;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000: n807_o <= 4'b0010;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000: n807_o <= 4'b0010;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000: n807_o <= 4'b0011;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000: n807_o <= 4'b0011;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000: n807_o <= 4'b0010;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000: n807_o <= 4'b0010;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000: n807_o <= 4'b0010;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000: n807_o <= 4'b0010;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000: n807_o <= 4'b0001;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000: n807_o <= 4'b0001;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000: n807_o <= 4'b0001;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000: n807_o <= 4'b0001;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000: n807_o <= 4'b0001;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000: n807_o <= 4'b0001;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000: n807_o <= 4'b0001;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000: n807_o <= 4'b0001;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000: n807_o <= 4'b0000;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100: n807_o <= 4'b0000;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010: n807_o <= 4'b0000;
            128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001: n807_o <= 4'b0000;
            default: n807_o <= 4'bXXXX;
        endcase
endmodule

module fdiv
    (input clk,
        input rst,
        input[12:0] X,
        input[12:0] Y,
        output[12:0] R);
    wire[5:0] partialfx;
    wire[5:0] partialfy;
    wire[6:0] expr0;
    wire[6:0] expr0_d1;
    wire[6:0] expr0_d2;
    wire[6:0] expr0_d3;
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
    wire[7:0] fy;
    wire[7:0] fy_d1;
    wire[8:0] fx;
    wire[10:0] w3;
    wire[6:0] sel3;
    wire[3:0] q3;
    wire[3:0] q3_d1;
    wire[3:0] q3_d2;
    wire[11:0] w3pad;
    wire[11:0] w2fulla;
    wire[11:0] fydec2;
    wire[11:0] w2full;
    wire[10:0] w2;
    wire[10:0] w2_d1;
    wire[6:0] sel2;
    wire[3:0] q2;
    wire[3:0] q2_d1;
    wire[11:0] w2pad;
    wire[11:0] w1fulla;
    wire[11:0] fydec1;
    wire[11:0] w1full;
    wire[10:0] w1;
    wire[6:0] sel1;
    wire[3:0] q1;
    wire[3:0] q1_d1;
    wire[11:0] w1pad;
    wire[11:0] w0fulla;
    wire[11:0] fydec0;
    wire[11:0] w0full;
    wire[10:0] w0;
    wire[10:0] w0_d1;
    wire[3:0] q0;
    wire[2:0] qp3;
    wire[2:0] qm3;
    wire[2:0] qp2;
    wire[2:0] qm2;
    wire[2:0] qp1;
    wire[2:0] qm1;
    wire[2:0] qp0;
    wire[2:0] qm0;
    wire[11:0] qp;
    wire[11:0] qm;
    wire[11:0] fr0;
    wire[11:0] fr0_d1;
    wire[10:0] fr;
    wire[8:0] frn1;
    wire[8:0] frn1_d1;
    wire[6:0] expr1;
    wire[6:0] expr1_d1;
    wire round;
    wire round_d1;
    wire[11:0] expfrac;
    wire[11:0] expfracr;
    wire[1:0] exnr;
    wire[1:0] exnrfinal;
    reg[6:0] n27_q;
    reg[6:0] n28_q;
    reg[6:0] n29_q;
    reg n30_q;
    reg n31_q;
    reg n32_q;
    reg n33_q;
    reg[1:0] n34_q;
    reg[1:0] n35_q;
    reg[1:0] n36_q;
    reg[1:0] n37_q;
    reg[7:0] n38_q;
    reg[3:0] n39_q;
    reg[3:0] n40_q;
    reg[10:0] n41_q;
    reg[3:0] n42_q;
    reg[3:0] n43_q;
    reg[10:0] n44_q;
    reg[11:0] n45_q;
    reg[8:0] n46_q;
    reg[6:0] n47_q;
    reg n48_q;
    wire[4:0] n49_o;
    wire[5:0] n51_o;
    wire[4:0] n52_o;
    wire[5:0] n54_o;
    wire[4:0] n55_o;
    wire[6:0] n57_o;
    wire[4:0] n58_o;
    wire[6:0] n60_o;
    wire[6:0] n61_o;
    wire n62_o;
    wire n63_o;
    wire n64_o;
    wire[1:0] n65_o;
    wire[1:0] n66_o;
    wire[3:0] n67_o;
    wire n70_o;
    wire n73_o;
    wire n75_o;
    wire n76_o;
    wire n78_o;
    wire n79_o;
    wire n82_o;
    wire n84_o;
    wire n85_o;
    wire n87_o;
    wire n88_o;
    wire[2:0] n90_o;
    reg[1:0] n91_o;
    wire[1:0] n92_o;
    wire[6:0] n94_o;
    wire[7:0] n96_o;
    wire[7:0] n98_o;
    wire[7:0] n99_o;
    wire n101_o;
    wire[7:0] n103_o;
    wire[7:0] n105_o;
    wire[7:0] n106_o;
    wire n108_o;
    wire[7:0] n110_o;
    wire[1:0] n111_o;
    reg[7:0] n112_o;
    wire[1:0] n113_o;
    wire[7:0] n115_o;
    wire[8:0] n117_o;
    wire[6:0] n119_o;
    wire[8:0] n121_o;
    wire[8:0] n122_o;
    wire n124_o;
    wire[8:0] n126_o;
    wire[6:0] n128_o;
    wire[8:0] n130_o;
    wire[8:0] n131_o;
    wire n133_o;
    wire[6:0] n135_o;
    wire[8:0] n137_o;
    wire[1:0] n138_o;
    reg[8:0] n139_o;
    wire[10:0] n141_o;
    wire[4:0] n142_o;
    wire[1:0] n143_o;
    wire[6:0] n144_o;
    wire[3:0] selfunctiontable3_n145;
    wire[3:0] selfunctiontable3_y;
    wire[11:0] n149_o;
    wire[1:0] n150_o;
    wire[11:0] n152_o;
    wire[11:0] n153_o;
    wire n155_o;
    wire[11:0] n157_o;
    wire[11:0] n158_o;
    wire n160_o;
    wire[10:0] n162_o;
    wire[11:0] n164_o;
    wire[11:0] n165_o;
    wire n167_o;
    wire[2:0] n168_o;
    reg[11:0] n169_o;
    wire[2:0] n170_o;
    wire[9:0] n172_o;
    wire[11:0] n174_o;
    wire n176_o;
    wire n178_o;
    wire n179_o;
    wire n181_o;
    wire n182_o;
    wire n184_o;
    wire n185_o;
    wire[8:0] n187_o;
    wire[11:0] n189_o;
    wire n191_o;
    wire n193_o;
    wire n194_o;
    wire[1:0] n196_o;
    reg[11:0] n197_o;
    wire n198_o;
    wire[11:0] n199_o;
    wire n201_o;
    wire[11:0] n202_o;
    reg[11:0] n203_o;
    wire[8:0] n204_o;
    wire[10:0] n206_o;
    wire[4:0] n207_o;
    wire[1:0] n208_o;
    wire[6:0] n209_o;
    wire[3:0] selfunctiontable2_n210;
    wire[3:0] selfunctiontable2_y;
    wire[11:0] n214_o;
    wire[1:0] n215_o;
    wire[11:0] n217_o;
    wire[11:0] n218_o;
    wire n220_o;
    wire[11:0] n222_o;
    wire[11:0] n223_o;
    wire n225_o;
    wire[10:0] n227_o;
    wire[11:0] n229_o;
    wire[11:0] n230_o;
    wire n232_o;
    wire[2:0] n233_o;
    reg[11:0] n234_o;
    wire[2:0] n235_o;
    wire[9:0] n237_o;
    wire[11:0] n239_o;
    wire n241_o;
    wire n243_o;
    wire n244_o;
    wire n246_o;
    wire n247_o;
    wire n249_o;
    wire n250_o;
    wire[8:0] n252_o;
    wire[11:0] n254_o;
    wire n256_o;
    wire n258_o;
    wire n259_o;
    wire[1:0] n261_o;
    reg[11:0] n262_o;
    wire n263_o;
    wire[11:0] n264_o;
    wire n266_o;
    wire[11:0] n267_o;
    reg[11:0] n268_o;
    wire[8:0] n269_o;
    wire[10:0] n271_o;
    wire[4:0] n272_o;
    wire[1:0] n273_o;
    wire[6:0] n274_o;
    wire[3:0] selfunctiontable1_n275;
    wire[3:0] selfunctiontable1_y;
    wire[11:0] n279_o;
    wire[1:0] n280_o;
    wire[11:0] n282_o;
    wire[11:0] n283_o;
    wire n285_o;
    wire[11:0] n287_o;
    wire[11:0] n288_o;
    wire n290_o;
    wire[10:0] n292_o;
    wire[11:0] n294_o;
    wire[11:0] n295_o;
    wire n297_o;
    wire[2:0] n298_o;
    reg[11:0] n299_o;
    wire[2:0] n300_o;
    wire[9:0] n302_o;
    wire[11:0] n304_o;
    wire n306_o;
    wire n308_o;
    wire n309_o;
    wire n311_o;
    wire n312_o;
    wire n314_o;
    wire n315_o;
    wire[8:0] n317_o;
    wire[11:0] n319_o;
    wire n321_o;
    wire n323_o;
    wire n324_o;
    wire[1:0] n326_o;
    reg[11:0] n327_o;
    wire n328_o;
    wire[11:0] n329_o;
    wire n331_o;
    wire[11:0] n332_o;
    reg[11:0] n333_o;
    wire[8:0] n334_o;
    wire[10:0] n336_o;
    wire n339_o;
    wire[3:0] n340_o;
    wire n341_o;
    wire[3:0] n343_o;
    wire[2:0] n344_o;
    wire n345_o;
    wire[2:0] n347_o;
    wire[2:0] n348_o;
    wire n349_o;
    wire[2:0] n351_o;
    wire[2:0] n352_o;
    wire n353_o;
    wire[2:0] n355_o;
    wire[2:0] n356_o;
    wire n357_o;
    wire[2:0] n359_o;
    wire[5:0] n360_o;
    wire[8:0] n361_o;
    wire[11:0] n362_o;
    wire[1:0] n363_o;
    wire[4:0] n364_o;
    wire[7:0] n365_o;
    wire[10:0] n366_o;
    wire[11:0] n368_o;
    wire[11:0] n369_o;
    wire[9:0] n370_o;
    wire n371_o;
    wire n372_o;
    wire n373_o;
    wire[10:0] n374_o;
    wire n375_o;
    wire[7:0] n376_o;
    wire n377_o;
    wire n378_o;
    wire n379_o;
    wire[8:0] n380_o;
    wire n382_o;
    wire[8:0] n383_o;
    reg[8:0] n384_o;
    wire n385_o;
    wire[6:0] n387_o;
    wire[6:0] n388_o;
    wire n389_o;
    wire n390_o;
    wire n391_o;
    wire n392_o;
    wire n393_o;
    wire n394_o;
    wire n395_o;
    wire[4:0] n396_o;
    wire[11:0] n397_o;
    wire[11:0] n399_o;
    wire[11:0] n400_o;
    wire n402_o;
    wire[1:0] n403_o;
    wire[1:0] n405_o;
    wire n407_o;
    wire[1:0] n408_o;
    wire n411_o;
    reg[1:0] n412_o;
    wire[2:0] n413_o;
    wire[9:0] n414_o;
    wire[12:0] n415_o;
    assign R = n415_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:188:8  */
    assign partialfx = n51_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:189:8  */
    assign partialfy = n54_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:190:8  */
    assign expr0 = n61_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:190:15  */
    assign expr0_d1 = n27_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:190:25  */
    assign expr0_d2 = n28_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:190:35  */
    assign expr0_d3 = n29_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:191:8  */
    assign sr = n64_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:191:12  */
    assign sr_d1 = n30_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:191:19  */
    assign sr_d2 = n31_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:191:26  */
    assign sr_d3 = n32_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:191:33  */
    assign sr_d4 = n33_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:192:8  */
    assign exnxy = n67_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:193:8  */
    assign exnr0 = n91_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:193:15  */
    assign exnr0_d1 = n34_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:193:25  */
    assign exnr0_d2 = n35_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:193:35  */
    assign exnr0_d3 = n36_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:193:45  */
    assign exnr0_d4 = n37_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:194:8  */
    assign fy = n112_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:194:12  */
    assign fy_d1 = n38_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:195:8  */
    assign fx = n139_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:196:8  */
    assign w3 = n141_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:197:8  */
    assign sel3 = n144_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:198:8  */
    assign q3 = selfunctiontable3_n145; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:198:12  */
    assign q3_d1 = n39_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:198:19  */
    assign q3_d2 = n40_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:199:8  */
    assign w3pad = n149_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:200:8  */
    assign w2fulla = n169_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:201:8  */
    assign fydec2 = n197_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:202:8  */
    assign w2full = n203_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:203:8  */
    assign w2 = n206_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:203:12  */
    assign w2_d1 = n41_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:204:8  */
    assign sel2 = n209_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:205:8  */
    assign q2 = selfunctiontable2_n210; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:205:12  */
    assign q2_d1 = n42_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:206:8  */
    assign w2pad = n214_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:207:8  */
    assign w1fulla = n234_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:208:8  */
    assign fydec1 = n262_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:209:8  */
    assign w1full = n268_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:210:8  */
    assign w1 = n271_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:211:8  */
    assign sel1 = n274_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:212:8  */
    assign q1 = selfunctiontable1_n275; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:212:12  */
    assign q1_d1 = n43_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:213:8  */
    assign w1pad = n279_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:214:8  */
    assign w0fulla = n299_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:215:8  */
    assign fydec0 = n327_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:216:8  */
    assign w0full = n333_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:217:8  */
    assign w0 = n336_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:217:12  */
    assign w0_d1 = n44_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:218:8  */
    assign q0 = n340_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:219:8  */
    assign qp3 = n344_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:220:8  */
    assign qm3 = n347_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:221:8  */
    assign qp2 = n348_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:222:8  */
    assign qm2 = n351_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:223:8  */
    assign qp1 = n352_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:224:8  */
    assign qm1 = n355_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:225:8  */
    assign qp0 = n356_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:226:8  */
    assign qm0 = n359_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:227:8  */
    assign qp = n362_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:228:8  */
    assign qm = n368_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:229:8  */
    assign fr0 = n369_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:229:13  */
    assign fr0_d1 = n45_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:230:8  */
    assign fr = n374_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:231:8  */
    assign frn1 = n384_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:231:14  */
    assign frn1_d1 = n46_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:232:8  */
    assign expr1 = n388_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:232:15  */
    assign expr1_d1 = n47_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:233:8  */
    assign round = n395_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:233:15  */
    assign round_d1 = n48_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:234:8  */
    assign expfrac = n397_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:235:8  */
    assign expfracr = n400_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:236:8  */
    assign exnr = n403_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:237:8  */
    assign exnrfinal = n412_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:241:10  */
    always @(posedge clk)
        n27_q <= expr0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:241:10  */
    always @(posedge clk)
        n28_q <= expr0_d1;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:241:10  */
    always @(posedge clk)
        n29_q <= expr0_d2;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:241:10  */
    always @(posedge clk)
        n30_q <= sr;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:241:10  */
    always @(posedge clk)
        n31_q <= sr_d1;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:241:10  */
    always @(posedge clk)
        n32_q <= sr_d2;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:241:10  */
    always @(posedge clk)
        n33_q <= sr_d3;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:241:10  */
    always @(posedge clk)
        n34_q <= exnr0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:241:10  */
    always @(posedge clk)
        n35_q <= exnr0_d1;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:241:10  */
    always @(posedge clk)
        n36_q <= exnr0_d2;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:241:10  */
    always @(posedge clk)
        n37_q <= exnr0_d3;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:241:10  */
    always @(posedge clk)
        n38_q <= fy;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:241:10  */
    always @(posedge clk)
        n39_q <= q3;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:241:10  */
    always @(posedge clk)
        n40_q <= q3_d1;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:241:10  */
    always @(posedge clk)
        n41_q <= w2;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:241:10  */
    always @(posedge clk)
        n42_q <= q2;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:241:10  */
    always @(posedge clk)
        n43_q <= q1;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:241:10  */
    always @(posedge clk)
        n44_q <= w0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:241:10  */
    always @(posedge clk)
        n45_q <= fr0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:241:10  */
    always @(posedge clk)
        n46_q <= frn1;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:241:10  */
    always @(posedge clk)
        n47_q <= expr1;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:241:10  */
    always @(posedge clk)
        n48_q <= round;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:266:24  */
    assign n49_o = X[4:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:266:21  */
    assign n51_o = {1'b1, n49_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:267:24  */
    assign n52_o = Y[4:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:267:21  */
    assign n54_o = {1'b1, n52_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:269:22  */
    assign n55_o = X[9:5];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:269:19  */
    assign n57_o = {2'b00, n55_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:269:47  */
    assign n58_o = Y[9:5];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:269:44  */
    assign n60_o = {2'b00, n58_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:269:36  */
    assign n61_o = n57_o-n60_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:270:11  */
    assign n62_o = X[10];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:270:21  */
    assign n63_o = Y[10];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:270:16  */
    assign n64_o = n62_o ^ n63_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:272:14  */
    assign n65_o = X[12:11];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:272:32  */
    assign n66_o = Y[12:11];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:272:29  */
    assign n67_o = {n65_o, n66_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:275:16  */
    assign n70_o = exnxy == 4'b0101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:276:16  */
    assign n73_o = exnxy == 4'b0001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:276:28  */
    assign n75_o = exnxy == 4'b0010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:276:28  */
    assign n76_o = n73_o | n75_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:276:37  */
    assign n78_o = exnxy == 4'b0110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:276:37  */
    assign n79_o = n76_o | n78_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:277:16  */
    assign n82_o = exnxy == 4'b0100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:277:28  */
    assign n84_o = exnxy == 4'b1000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:277:28  */
    assign n85_o = n82_o | n84_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:277:37  */
    assign n87_o = exnxy == 4'b1001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:277:37  */
    assign n88_o = n85_o | n87_o;
    assign n90_o = {n88_o, n79_o, n70_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:273:4  */
    always @*
        case (n90_o)
            3'b100: n91_o <= 2'b10;
            3'b010: n91_o <= 2'b00;
            3'b001: n91_o <= 2'b01;
            default: n91_o <= 2'b11;
        endcase
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:280:19  */
    assign n92_o = partialfy[4:3];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:282:15  */
    assign n94_o = {1'b0, partialfy};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:282:27  */
    assign n96_o = {n94_o, 1'b0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:282:47  */
    assign n98_o = {partialfy, 2'b00};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:282:34  */
    assign n99_o = n96_o+n98_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:282:55  */
    assign n101_o = n92_o == 2'b00;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:283:16  */
    assign n103_o = {2'b00, partialfy};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:283:42  */
    assign n105_o = {partialfy, 2'b00};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:283:29  */
    assign n106_o = n103_o+n105_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:283:50  */
    assign n108_o = n92_o == 2'b01;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:284:20  */
    assign n110_o = {partialfy, 2'b00};
    assign n111_o = {n108_o, n101_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:280:4  */
    always @*
        case (n111_o)
            2'b10: n112_o <= n106_o;
            2'b01: n112_o <= n99_o;
            default: n112_o <= n110_o;
        endcase
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:285:19  */
    assign n113_o = partialfy[4:3];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:287:16  */
    assign n115_o = {2'b00, partialfx};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:287:28  */
    assign n117_o = {n115_o, 1'b0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:287:42  */
    assign n119_o = {1'b0, partialfx};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:287:54  */
    assign n121_o = {n119_o, 2'b00};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:287:35  */
    assign n122_o = n117_o+n121_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:287:62  */
    assign n124_o = n113_o == 2'b00;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:288:17  */
    assign n126_o = {3'b000, partialfx};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:288:37  */
    assign n128_o = {1'b0, partialfx};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:288:49  */
    assign n130_o = {n128_o, 2'b00};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:288:30  */
    assign n131_o = n126_o+n130_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:288:57  */
    assign n133_o = n113_o == 2'b01;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:289:14  */
    assign n135_o = {1'b0, partialfx};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:289:26  */
    assign n137_o = {n135_o, 2'b00};
    assign n138_o = {n133_o, n124_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:285:4  */
    always @*
        case (n138_o)
            2'b10: n139_o <= n131_o;
            2'b01: n139_o <= n122_o;
            default: n139_o <= n137_o;
        endcase
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:290:16  */
    assign n141_o = {2'b00, fx};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:291:14  */
    assign n142_o = w3[10:6];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:291:32  */
    assign n143_o = fy[5:4];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:291:28  */
    assign n144_o = {n142_o, n143_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:296:23  */
    assign selfunctiontable3_n145 = selfunctiontable3_y; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:292:4  */
    selfunctiontable_r8_f300_uid4 selfunctiontable3(
        .clk(clk),
        .rst(rst),
        .x(sel3),
        .y(selfunctiontable3_y));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:297:16  */
    assign n149_o = {w3, 1'b0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:298:11  */
    assign n150_o = q3[1:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:300:23  */
    assign n152_o = {4'b0000, fy};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:300:13  */
    assign n153_o = w3pad-n152_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:300:49  */
    assign n155_o = n150_o == 2'b01;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:301:23  */
    assign n157_o = {4'b0000, fy};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:301:13  */
    assign n158_o = w3pad+n157_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:301:49  */
    assign n160_o = n150_o == 2'b11;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:302:22  */
    assign n162_o = {3'b000, fy};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:302:27  */
    assign n164_o = {n162_o, 1'b0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:302:13  */
    assign n165_o = w3pad+n164_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:302:43  */
    assign n167_o = n150_o == 2'b10;
    assign n168_o = {n167_o, n160_o, n155_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:298:4  */
    always @*
        case (n168_o)
            3'b100: n169_o <= n165_o;
            3'b010: n169_o <= n158_o;
            3'b001: n169_o <= n153_o;
            default: n169_o <= w3pad;
        endcase
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:304:11  */
    assign n170_o = q3[3:1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:306:13  */
    assign n172_o = {2'b00, fy};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:306:18  */
    assign n174_o = {n172_o, 2'b00};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:306:49  */
    assign n176_o = n170_o == 3'b001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:306:60  */
    assign n178_o = n170_o == 3'b010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:306:60  */
    assign n179_o = n176_o | n178_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:306:68  */
    assign n181_o = n170_o == 3'b110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:306:68  */
    assign n182_o = n179_o | n181_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:306:75  */
    assign n184_o = n170_o == 3'b101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:306:75  */
    assign n185_o = n182_o | n184_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:307:12  */
    assign n187_o = {1'b0, fy};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:307:17  */
    assign n189_o = {n187_o, 3'b000};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:307:49  */
    assign n191_o = n170_o == 3'b011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:307:59  */
    assign n193_o = n170_o == 3'b100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:307:59  */
    assign n194_o = n191_o | n193_o;
    assign n196_o = {n194_o, n185_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:304:4  */
    always @*
        case (n196_o)
            2'b10: n197_o <= n189_o;
            2'b01: n197_o <= n174_o;
            default: n197_o <= 12'b000000000000;
        endcase
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:309:11  */
    assign n198_o = q3[3];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:311:15  */
    assign n199_o = w2fulla-fydec2;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:311:41  */
    assign n201_o = n198_o == 1'b0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:312:15  */
    assign n202_o = w2fulla+fydec2;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:309:4  */
    always @*
        case (n201_o)
            1'b1: n203_o <= n199_o;
            default: n203_o <= n202_o;
        endcase
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:313:16  */
    assign n204_o = w2full[8:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:313:29  */
    assign n206_o = {n204_o, 2'b00};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:315:17  */
    assign n207_o = w2_d1[10:6];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:315:38  */
    assign n208_o = fy_d1[5:4];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:315:31  */
    assign n209_o = {n207_o, n208_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:320:23  */
    assign selfunctiontable2_n210 = selfunctiontable2_y; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:316:4  */
    selfunctiontable_r8_f300_uid4 selfunctiontable2(
        .clk(clk),
        .rst(rst),
        .x(sel2),
        .y(selfunctiontable2_y));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:321:19  */
    assign n214_o = {w2_d1, 1'b0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:322:11  */
    assign n215_o = q2[1:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:324:23  */
    assign n217_o = {4'b0000, fy_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:324:13  */
    assign n218_o = w2pad-n217_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:324:49  */
    assign n220_o = n215_o == 2'b01;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:325:23  */
    assign n222_o = {4'b0000, fy_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:325:13  */
    assign n223_o = w2pad+n222_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:325:49  */
    assign n225_o = n215_o == 2'b11;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:326:22  */
    assign n227_o = {3'b000, fy_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:326:30  */
    assign n229_o = {n227_o, 1'b0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:326:13  */
    assign n230_o = w2pad+n229_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:326:43  */
    assign n232_o = n215_o == 2'b10;
    assign n233_o = {n232_o, n225_o, n220_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:322:4  */
    always @*
        case (n233_o)
            3'b100: n234_o <= n230_o;
            3'b010: n234_o <= n223_o;
            3'b001: n234_o <= n218_o;
            default: n234_o <= w2pad;
        endcase
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:328:11  */
    assign n235_o = q2[3:1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:330:13  */
    assign n237_o = {2'b00, fy_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:330:21  */
    assign n239_o = {n237_o, 2'b00};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:330:49  */
    assign n241_o = n235_o == 3'b001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:330:60  */
    assign n243_o = n235_o == 3'b010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:330:60  */
    assign n244_o = n241_o | n243_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:330:68  */
    assign n246_o = n235_o == 3'b110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:330:68  */
    assign n247_o = n244_o | n246_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:330:75  */
    assign n249_o = n235_o == 3'b101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:330:75  */
    assign n250_o = n247_o | n249_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:331:12  */
    assign n252_o = {1'b0, fy_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:331:20  */
    assign n254_o = {n252_o, 3'b000};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:331:49  */
    assign n256_o = n235_o == 3'b011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:331:59  */
    assign n258_o = n235_o == 3'b100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:331:59  */
    assign n259_o = n256_o | n258_o;
    assign n261_o = {n259_o, n250_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:328:4  */
    always @*
        case (n261_o)
            2'b10: n262_o <= n254_o;
            2'b01: n262_o <= n239_o;
            default: n262_o <= 12'b000000000000;
        endcase
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:333:11  */
    assign n263_o = q2[3];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:335:15  */
    assign n264_o = w1fulla-fydec1;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:335:41  */
    assign n266_o = n263_o == 1'b0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:336:15  */
    assign n267_o = w1fulla+fydec1;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:333:4  */
    always @*
        case (n266_o)
            1'b1: n268_o <= n264_o;
            default: n268_o <= n267_o;
        endcase
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:337:16  */
    assign n269_o = w1full[8:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:337:29  */
    assign n271_o = {n269_o, 2'b00};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:338:14  */
    assign n272_o = w1[10:6];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:338:35  */
    assign n273_o = fy_d1[5:4];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:338:28  */
    assign n274_o = {n272_o, n273_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:343:23  */
    assign selfunctiontable1_n275 = selfunctiontable1_y; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:339:4  */
    selfunctiontable_r8_f300_uid4 selfunctiontable1(
        .clk(clk),
        .rst(rst),
        .x(sel1),
        .y(selfunctiontable1_y));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:344:16  */
    assign n279_o = {w1, 1'b0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:345:11  */
    assign n280_o = q1[1:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:347:23  */
    assign n282_o = {4'b0000, fy_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:347:13  */
    assign n283_o = w1pad-n282_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:347:49  */
    assign n285_o = n280_o == 2'b01;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:348:23  */
    assign n287_o = {4'b0000, fy_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:348:13  */
    assign n288_o = w1pad+n287_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:348:49  */
    assign n290_o = n280_o == 2'b11;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:349:22  */
    assign n292_o = {3'b000, fy_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:349:30  */
    assign n294_o = {n292_o, 1'b0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:349:13  */
    assign n295_o = w1pad+n294_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:349:43  */
    assign n297_o = n280_o == 2'b10;
    assign n298_o = {n297_o, n290_o, n285_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:345:4  */
    always @*
        case (n298_o)
            3'b100: n299_o <= n295_o;
            3'b010: n299_o <= n288_o;
            3'b001: n299_o <= n283_o;
            default: n299_o <= w1pad;
        endcase
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:351:11  */
    assign n300_o = q1[3:1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:353:13  */
    assign n302_o = {2'b00, fy_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:353:21  */
    assign n304_o = {n302_o, 2'b00};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:353:49  */
    assign n306_o = n300_o == 3'b001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:353:60  */
    assign n308_o = n300_o == 3'b010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:353:60  */
    assign n309_o = n306_o | n308_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:353:68  */
    assign n311_o = n300_o == 3'b110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:353:68  */
    assign n312_o = n309_o | n311_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:353:75  */
    assign n314_o = n300_o == 3'b101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:353:75  */
    assign n315_o = n312_o | n314_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:354:12  */
    assign n317_o = {1'b0, fy_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:354:20  */
    assign n319_o = {n317_o, 3'b000};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:354:49  */
    assign n321_o = n300_o == 3'b011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:354:59  */
    assign n323_o = n300_o == 3'b100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:354:59  */
    assign n324_o = n321_o | n323_o;
    assign n326_o = {n324_o, n315_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:351:4  */
    always @*
        case (n326_o)
            2'b10: n327_o <= n319_o;
            2'b01: n327_o <= n304_o;
            default: n327_o <= 12'b000000000000;
        endcase
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:356:11  */
    assign n328_o = q1[3];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:358:15  */
    assign n329_o = w0fulla-fydec0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:358:41  */
    assign n331_o = n328_o == 1'b0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:359:15  */
    assign n332_o = w0fulla+fydec0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:356:4  */
    always @*
        case (n331_o)
            1'b1: n333_o <= n329_o;
            default: n333_o <= n332_o;
        endcase
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:360:16  */
    assign n334_o = w0full[8:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:360:29  */
    assign n336_o = {n334_o, 2'b00};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:362:41  */
    assign n339_o = w0_d1 == 11'b00000000000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:362:29  */
    assign n340_o = n339_o ? 4'b0000 : n343_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:363:27  */
    assign n341_o = w0_d1[10];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:363:32  */
    assign n343_o = {n341_o, 3'b010};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:364:21  */
    assign n344_o = q3_d2[2:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:365:21  */
    assign n345_o = q3_d2[3];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:365:25  */
    assign n347_o = {n345_o, 2'b00};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:366:21  */
    assign n348_o = q2_d1[2:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:367:21  */
    assign n349_o = q2_d1[3];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:367:25  */
    assign n351_o = {n349_o, 2'b00};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:368:21  */
    assign n352_o = q1_d1[2:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:369:21  */
    assign n353_o = q1_d1[3];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:369:25  */
    assign n355_o = {n353_o, 2'b00};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:370:13  */
    assign n356_o = q0[2:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:371:13  */
    assign n357_o = q0[3];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:371:18  */
    assign n359_o = {n357_o, 2'b00};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:372:14  */
    assign n360_o = {qp3, qp2};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:372:20  */
    assign n361_o = {n360_o, qp1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:372:26  */
    assign n362_o = {n361_o, qp0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:373:13  */
    assign n363_o = qm3[1:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:373:26  */
    assign n364_o = {n363_o, qm2};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:373:32  */
    assign n365_o = {n364_o, qm1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:373:38  */
    assign n366_o = {n365_o, qm0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:373:44  */
    assign n368_o = {n366_o, 1'b0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:374:14  */
    assign n369_o = qp-qm;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:376:16  */
    assign n370_o = fr0_d1[11:2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:376:39  */
    assign n371_o = fr0_d1[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:376:52  */
    assign n372_o = fr0_d1[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:376:43  */
    assign n373_o = n371_o | n372_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:376:30  */
    assign n374_o = {n370_o, n373_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:378:11  */
    assign n375_o = fr[9];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:379:17  */
    assign n376_o = fr[9:2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:379:35  */
    assign n377_o = fr[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:379:44  */
    assign n378_o = fr[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:379:39  */
    assign n379_o = n377_o | n378_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:379:30  */
    assign n380_o = {n376_o, n379_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:379:49  */
    assign n382_o = n375_o == 1'b1;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:380:17  */
    assign n383_o = fr[8:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:378:4  */
    always @*
        case (n382_o)
            1'b1: n384_o <= n380_o;
            default: n384_o <= n383_o;
        endcase
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:381:57  */
    assign n385_o = fr[9];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:381:53  */
    assign n387_o = {6'b000111, n385_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:381:22  */
    assign n388_o = expr0_d3+n387_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:382:17  */
    assign n389_o = frn1[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:382:30  */
    assign n390_o = frn1[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:382:41  */
    assign n391_o = frn1[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:382:34  */
    assign n392_o = n390_o | n391_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:382:52  */
    assign n393_o = frn1[3];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:382:45  */
    assign n394_o = n392_o | n393_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:382:21  */
    assign n395_o = n389_o & n394_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:385:33  */
    assign n396_o = frn1_d1[7:3];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:385:24  */
    assign n397_o = {expr1_d1, n396_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:386:48  */
    assign n399_o = {11'b00000000000, round_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:386:24  */
    assign n400_o = expfrac+n399_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:387:36  */
    assign n402_o = expfracr[11];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:387:23  */
    assign n403_o = n402_o ? 2'b00 : n408_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:388:37  */
    assign n405_o = expfracr[11:10];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:388:52  */
    assign n407_o = n405_o == 2'b01;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:388:12  */
    assign n408_o = n407_o ? 2'b10 : 2'b01;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:392:17  */
    assign n411_o = exnr0_d4 == 2'b01;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:390:4  */
    always @*
        case (n411_o)
            1'b1: n412_o <= exnr;
            default: n412_o <= exnr0_d4;
        endcase
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:394:19  */
    assign n413_o = {exnrfinal, sr_d4};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:394:37  */
    assign n414_o = expfracr[9:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fdiv_5_5.vhdl:394:27  */
    assign n415_o = {n413_o, n414_o};
endmodule

