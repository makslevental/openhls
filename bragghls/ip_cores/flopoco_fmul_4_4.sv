module intadder_8_f400_uid32
    (input clk,
        input rst,
        input[7:0] x,
        input[7:0] y,
        input cin,
        output[7:0] r);
    wire[7:0] n587_o;
    wire[7:0] n588_o;
    wire[7:0] n589_o;
    assign r = n589_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:236:12  */
    assign n587_o = x+y;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:236:16  */
    assign n588_o = {7'b0, cin};  //  uext
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:236:16  */
    assign n589_o = n587_o+n588_o;
endmodule

module compressor_13_3
    (input[2:0] x0,
        input x1,
        output[2:0] r);
    wire[3:0] x;
    wire[3:0] n530_o;
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
    wire n572_o;
    wire n575_o;
    wire n578_o;
    wire[15:0] n580_o;
    reg[2:0] n581_o;
    assign r = n581_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:179:8  */
    assign x = n530_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:181:11  */
    assign n530_o = {x1, x0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:183:13  */
    assign n533_o = x == 4'b0000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:184:13  */
    assign n536_o = x == 4'b0001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:185:13  */
    assign n539_o = x == 4'b0010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:186:13  */
    assign n542_o = x == 4'b0011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:187:13  */
    assign n545_o = x == 4'b0100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:188:13  */
    assign n548_o = x == 4'b0101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:189:13  */
    assign n551_o = x == 4'b0110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:190:13  */
    assign n554_o = x == 4'b0111;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:191:13  */
    assign n557_o = x == 4'b1000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:192:13  */
    assign n560_o = x == 4'b1001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:193:13  */
    assign n563_o = x == 4'b1010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:194:13  */
    assign n566_o = x == 4'b1011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:195:13  */
    assign n569_o = x == 4'b1100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:196:13  */
    assign n572_o = x == 4'b1101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:197:13  */
    assign n575_o = x == 4'b1110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:198:13  */
    assign n578_o = x == 4'b1111;
    assign n580_o = {n578_o, n575_o, n572_o, n569_o, n566_o, n563_o, n560_o, n557_o, n554_o, n551_o, n548_o, n545_o, n542_o, n539_o, n536_o, n533_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:182:4  */
    always @*
        case (n580_o)
            16'b1000000000000000: n581_o <= 3'b101;
            16'b0100000000000000: n581_o <= 3'b100;
            16'b0010000000000000: n581_o <= 3'b100;
            16'b0001000000000000: n581_o <= 3'b011;
            16'b0000100000000000: n581_o <= 3'b100;
            16'b0000010000000000: n581_o <= 3'b011;
            16'b0000001000000000: n581_o <= 3'b011;
            16'b0000000100000000: n581_o <= 3'b010;
            16'b0000000010000000: n581_o <= 3'b011;
            16'b0000000001000000: n581_o <= 3'b010;
            16'b0000000000100000: n581_o <= 3'b010;
            16'b0000000000010000: n581_o <= 3'b001;
            16'b0000000000001000: n581_o <= 3'b010;
            16'b0000000000000100: n581_o <= 3'b001;
            16'b0000000000000010: n581_o <= 3'b001;
            16'b0000000000000001: n581_o <= 3'b000;
            default: n581_o <= 3'bXXX;
        endcase
endmodule

module compressor_23_3
    (input[2:0] x0,
        input[1:0] x1,
        output[2:0] r);
    wire[4:0] x;
    wire[4:0] n429_o;
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
    wire[31:0] n527_o;
    reg[2:0] n528_o;
    assign r = n528_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:116:8  */
    assign x = n429_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:118:11  */
    assign n429_o = {x1, x0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:120:13  */
    assign n432_o = x == 5'b00000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:121:13  */
    assign n435_o = x == 5'b00001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:122:13  */
    assign n438_o = x == 5'b00010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:123:13  */
    assign n441_o = x == 5'b00011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:124:13  */
    assign n444_o = x == 5'b00100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:125:13  */
    assign n447_o = x == 5'b00101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:126:13  */
    assign n450_o = x == 5'b00110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:127:13  */
    assign n453_o = x == 5'b00111;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:128:13  */
    assign n456_o = x == 5'b01000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:129:13  */
    assign n459_o = x == 5'b01001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:130:13  */
    assign n462_o = x == 5'b01010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:131:13  */
    assign n465_o = x == 5'b01011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:132:13  */
    assign n468_o = x == 5'b01100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:133:13  */
    assign n471_o = x == 5'b01101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:134:13  */
    assign n474_o = x == 5'b01110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:135:13  */
    assign n477_o = x == 5'b01111;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:136:13  */
    assign n480_o = x == 5'b10000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:137:13  */
    assign n483_o = x == 5'b10001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:138:13  */
    assign n486_o = x == 5'b10010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:139:13  */
    assign n489_o = x == 5'b10011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:140:13  */
    assign n492_o = x == 5'b10100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:141:13  */
    assign n495_o = x == 5'b10101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:142:13  */
    assign n498_o = x == 5'b10110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:143:13  */
    assign n501_o = x == 5'b10111;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:144:13  */
    assign n504_o = x == 5'b11000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:145:13  */
    assign n507_o = x == 5'b11001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:146:13  */
    assign n510_o = x == 5'b11010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:147:13  */
    assign n513_o = x == 5'b11011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:148:13  */
    assign n516_o = x == 5'b11100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:149:13  */
    assign n519_o = x == 5'b11101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:150:13  */
    assign n522_o = x == 5'b11110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:151:13  */
    assign n525_o = x == 5'b11111;
    assign n527_o = {n525_o, n522_o, n519_o, n516_o, n513_o, n510_o, n507_o, n504_o, n501_o, n498_o, n495_o, n492_o, n489_o, n486_o, n483_o, n480_o, n477_o, n474_o, n471_o, n468_o, n465_o, n462_o, n459_o, n456_o, n453_o, n450_o, n447_o, n444_o, n441_o, n438_o, n435_o, n432_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:119:4  */
    always @*
        case (n527_o)
            32'b10000000000000000000000000000000: n528_o <= 3'b111;
            32'b01000000000000000000000000000000: n528_o <= 3'b110;
            32'b00100000000000000000000000000000: n528_o <= 3'b110;
            32'b00010000000000000000000000000000: n528_o <= 3'b101;
            32'b00001000000000000000000000000000: n528_o <= 3'b110;
            32'b00000100000000000000000000000000: n528_o <= 3'b101;
            32'b00000010000000000000000000000000: n528_o <= 3'b101;
            32'b00000001000000000000000000000000: n528_o <= 3'b100;
            32'b00000000100000000000000000000000: n528_o <= 3'b101;
            32'b00000000010000000000000000000000: n528_o <= 3'b100;
            32'b00000000001000000000000000000000: n528_o <= 3'b100;
            32'b00000000000100000000000000000000: n528_o <= 3'b011;
            32'b00000000000010000000000000000000: n528_o <= 3'b100;
            32'b00000000000001000000000000000000: n528_o <= 3'b011;
            32'b00000000000000100000000000000000: n528_o <= 3'b011;
            32'b00000000000000010000000000000000: n528_o <= 3'b010;
            32'b00000000000000001000000000000000: n528_o <= 3'b101;
            32'b00000000000000000100000000000000: n528_o <= 3'b100;
            32'b00000000000000000010000000000000: n528_o <= 3'b100;
            32'b00000000000000000001000000000000: n528_o <= 3'b011;
            32'b00000000000000000000100000000000: n528_o <= 3'b100;
            32'b00000000000000000000010000000000: n528_o <= 3'b011;
            32'b00000000000000000000001000000000: n528_o <= 3'b011;
            32'b00000000000000000000000100000000: n528_o <= 3'b010;
            32'b00000000000000000000000010000000: n528_o <= 3'b011;
            32'b00000000000000000000000001000000: n528_o <= 3'b010;
            32'b00000000000000000000000000100000: n528_o <= 3'b010;
            32'b00000000000000000000000000010000: n528_o <= 3'b001;
            32'b00000000000000000000000000001000: n528_o <= 3'b010;
            32'b00000000000000000000000000000100: n528_o <= 3'b001;
            32'b00000000000000000000000000000010: n528_o <= 3'b001;
            32'b00000000000000000000000000000001: n528_o <= 3'b000;
            default: n528_o <= 3'bXXX;
        endcase
endmodule

module smallmulttablep3x3r6xuyu_f400_uid9
    (input clk,
        input rst,
        input[5:0] x,
        output[5:0] y);
    wire[5:0] tableout;
    wire n235_o;
    wire n238_o;
    wire n241_o;
    wire n244_o;
    wire n247_o;
    wire n250_o;
    wire n253_o;
    wire n256_o;
    wire n259_o;
    wire n262_o;
    wire n265_o;
    wire n268_o;
    wire n271_o;
    wire n274_o;
    wire n277_o;
    wire n280_o;
    wire n283_o;
    wire n286_o;
    wire n289_o;
    wire n292_o;
    wire n295_o;
    wire n298_o;
    wire n301_o;
    wire n304_o;
    wire n307_o;
    wire n310_o;
    wire n313_o;
    wire n316_o;
    wire n319_o;
    wire n322_o;
    wire n325_o;
    wire n328_o;
    wire n331_o;
    wire n334_o;
    wire n337_o;
    wire n340_o;
    wire n343_o;
    wire n346_o;
    wire n349_o;
    wire n352_o;
    wire n355_o;
    wire n358_o;
    wire n361_o;
    wire n364_o;
    wire n367_o;
    wire n370_o;
    wire n373_o;
    wire n376_o;
    wire n379_o;
    wire n382_o;
    wire n385_o;
    wire n388_o;
    wire n391_o;
    wire n394_o;
    wire n397_o;
    wire n400_o;
    wire n403_o;
    wire n406_o;
    wire n409_o;
    wire n412_o;
    wire n415_o;
    wire n418_o;
    wire n421_o;
    wire n424_o;
    wire[63:0] n426_o;
    reg[5:0] n427_o;
    assign y = tableout;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:17:8  */
    assign tableout = n427_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:25:13  */
    assign n235_o = x == 6'b000000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:26:13  */
    assign n238_o = x == 6'b000001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:27:13  */
    assign n241_o = x == 6'b000010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:28:13  */
    assign n244_o = x == 6'b000011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:29:13  */
    assign n247_o = x == 6'b000100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:30:13  */
    assign n250_o = x == 6'b000101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:31:13  */
    assign n253_o = x == 6'b000110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:32:13  */
    assign n256_o = x == 6'b000111;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:33:13  */
    assign n259_o = x == 6'b001000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:34:13  */
    assign n262_o = x == 6'b001001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:35:13  */
    assign n265_o = x == 6'b001010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:36:13  */
    assign n268_o = x == 6'b001011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:37:13  */
    assign n271_o = x == 6'b001100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:38:13  */
    assign n274_o = x == 6'b001101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:39:13  */
    assign n277_o = x == 6'b001110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:40:13  */
    assign n280_o = x == 6'b001111;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:41:13  */
    assign n283_o = x == 6'b010000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:42:13  */
    assign n286_o = x == 6'b010001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:43:13  */
    assign n289_o = x == 6'b010010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:44:13  */
    assign n292_o = x == 6'b010011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:45:13  */
    assign n295_o = x == 6'b010100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:46:13  */
    assign n298_o = x == 6'b010101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:47:13  */
    assign n301_o = x == 6'b010110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:48:13  */
    assign n304_o = x == 6'b010111;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:49:13  */
    assign n307_o = x == 6'b011000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:50:13  */
    assign n310_o = x == 6'b011001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:51:13  */
    assign n313_o = x == 6'b011010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:52:13  */
    assign n316_o = x == 6'b011011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:53:13  */
    assign n319_o = x == 6'b011100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:54:13  */
    assign n322_o = x == 6'b011101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:55:13  */
    assign n325_o = x == 6'b011110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:56:13  */
    assign n328_o = x == 6'b011111;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:57:13  */
    assign n331_o = x == 6'b100000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:58:13  */
    assign n334_o = x == 6'b100001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:59:13  */
    assign n337_o = x == 6'b100010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:60:13  */
    assign n340_o = x == 6'b100011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:61:13  */
    assign n343_o = x == 6'b100100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:62:13  */
    assign n346_o = x == 6'b100101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:63:13  */
    assign n349_o = x == 6'b100110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:64:13  */
    assign n352_o = x == 6'b100111;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:65:13  */
    assign n355_o = x == 6'b101000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:66:13  */
    assign n358_o = x == 6'b101001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:67:13  */
    assign n361_o = x == 6'b101010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:68:13  */
    assign n364_o = x == 6'b101011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:69:13  */
    assign n367_o = x == 6'b101100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:70:13  */
    assign n370_o = x == 6'b101101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:71:13  */
    assign n373_o = x == 6'b101110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:72:13  */
    assign n376_o = x == 6'b101111;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:73:13  */
    assign n379_o = x == 6'b110000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:74:13  */
    assign n382_o = x == 6'b110001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:75:13  */
    assign n385_o = x == 6'b110010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:76:13  */
    assign n388_o = x == 6'b110011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:77:13  */
    assign n391_o = x == 6'b110100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:78:13  */
    assign n394_o = x == 6'b110101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:79:13  */
    assign n397_o = x == 6'b110110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:80:13  */
    assign n400_o = x == 6'b110111;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:81:13  */
    assign n403_o = x == 6'b111000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:82:13  */
    assign n406_o = x == 6'b111001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:83:13  */
    assign n409_o = x == 6'b111010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:84:13  */
    assign n412_o = x == 6'b111011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:85:13  */
    assign n415_o = x == 6'b111100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:86:13  */
    assign n418_o = x == 6'b111101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:87:13  */
    assign n421_o = x == 6'b111110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:88:13  */
    assign n424_o = x == 6'b111111;
    assign n426_o = {n424_o, n421_o, n418_o, n415_o, n412_o, n409_o, n406_o, n403_o, n400_o, n397_o, n394_o, n391_o, n388_o, n385_o, n382_o, n379_o, n376_o, n373_o, n370_o, n367_o, n364_o, n361_o, n358_o, n355_o, n352_o, n349_o, n346_o, n343_o, n340_o, n337_o, n334_o, n331_o, n328_o, n325_o, n322_o, n319_o, n316_o, n313_o, n310_o, n307_o, n304_o, n301_o, n298_o, n295_o, n292_o, n289_o, n286_o, n283_o, n280_o, n277_o, n274_o, n271_o, n268_o, n265_o, n262_o, n259_o, n256_o, n253_o, n250_o, n247_o, n244_o, n241_o, n238_o, n235_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:24:3  */
    always @*
        case (n426_o)
            64'b1000000000000000000000000000000000000000000000000000000000000000: n427_o <= 6'b110001;
            64'b0100000000000000000000000000000000000000000000000000000000000000: n427_o <= 6'b101010;
            64'b0010000000000000000000000000000000000000000000000000000000000000: n427_o <= 6'b100011;
            64'b0001000000000000000000000000000000000000000000000000000000000000: n427_o <= 6'b011100;
            64'b0000100000000000000000000000000000000000000000000000000000000000: n427_o <= 6'b010101;
            64'b0000010000000000000000000000000000000000000000000000000000000000: n427_o <= 6'b001110;
            64'b0000001000000000000000000000000000000000000000000000000000000000: n427_o <= 6'b000111;
            64'b0000000100000000000000000000000000000000000000000000000000000000: n427_o <= 6'b000000;
            64'b0000000010000000000000000000000000000000000000000000000000000000: n427_o <= 6'b101010;
            64'b0000000001000000000000000000000000000000000000000000000000000000: n427_o <= 6'b100100;
            64'b0000000000100000000000000000000000000000000000000000000000000000: n427_o <= 6'b011110;
            64'b0000000000010000000000000000000000000000000000000000000000000000: n427_o <= 6'b011000;
            64'b0000000000001000000000000000000000000000000000000000000000000000: n427_o <= 6'b010010;
            64'b0000000000000100000000000000000000000000000000000000000000000000: n427_o <= 6'b001100;
            64'b0000000000000010000000000000000000000000000000000000000000000000: n427_o <= 6'b000110;
            64'b0000000000000001000000000000000000000000000000000000000000000000: n427_o <= 6'b000000;
            64'b0000000000000000100000000000000000000000000000000000000000000000: n427_o <= 6'b100011;
            64'b0000000000000000010000000000000000000000000000000000000000000000: n427_o <= 6'b011110;
            64'b0000000000000000001000000000000000000000000000000000000000000000: n427_o <= 6'b011001;
            64'b0000000000000000000100000000000000000000000000000000000000000000: n427_o <= 6'b010100;
            64'b0000000000000000000010000000000000000000000000000000000000000000: n427_o <= 6'b001111;
            64'b0000000000000000000001000000000000000000000000000000000000000000: n427_o <= 6'b001010;
            64'b0000000000000000000000100000000000000000000000000000000000000000: n427_o <= 6'b000101;
            64'b0000000000000000000000010000000000000000000000000000000000000000: n427_o <= 6'b000000;
            64'b0000000000000000000000001000000000000000000000000000000000000000: n427_o <= 6'b011100;
            64'b0000000000000000000000000100000000000000000000000000000000000000: n427_o <= 6'b011000;
            64'b0000000000000000000000000010000000000000000000000000000000000000: n427_o <= 6'b010100;
            64'b0000000000000000000000000001000000000000000000000000000000000000: n427_o <= 6'b010000;
            64'b0000000000000000000000000000100000000000000000000000000000000000: n427_o <= 6'b001100;
            64'b0000000000000000000000000000010000000000000000000000000000000000: n427_o <= 6'b001000;
            64'b0000000000000000000000000000001000000000000000000000000000000000: n427_o <= 6'b000100;
            64'b0000000000000000000000000000000100000000000000000000000000000000: n427_o <= 6'b000000;
            64'b0000000000000000000000000000000010000000000000000000000000000000: n427_o <= 6'b010101;
            64'b0000000000000000000000000000000001000000000000000000000000000000: n427_o <= 6'b010010;
            64'b0000000000000000000000000000000000100000000000000000000000000000: n427_o <= 6'b001111;
            64'b0000000000000000000000000000000000010000000000000000000000000000: n427_o <= 6'b001100;
            64'b0000000000000000000000000000000000001000000000000000000000000000: n427_o <= 6'b001001;
            64'b0000000000000000000000000000000000000100000000000000000000000000: n427_o <= 6'b000110;
            64'b0000000000000000000000000000000000000010000000000000000000000000: n427_o <= 6'b000011;
            64'b0000000000000000000000000000000000000001000000000000000000000000: n427_o <= 6'b000000;
            64'b0000000000000000000000000000000000000000100000000000000000000000: n427_o <= 6'b001110;
            64'b0000000000000000000000000000000000000000010000000000000000000000: n427_o <= 6'b001100;
            64'b0000000000000000000000000000000000000000001000000000000000000000: n427_o <= 6'b001010;
            64'b0000000000000000000000000000000000000000000100000000000000000000: n427_o <= 6'b001000;
            64'b0000000000000000000000000000000000000000000010000000000000000000: n427_o <= 6'b000110;
            64'b0000000000000000000000000000000000000000000001000000000000000000: n427_o <= 6'b000100;
            64'b0000000000000000000000000000000000000000000000100000000000000000: n427_o <= 6'b000010;
            64'b0000000000000000000000000000000000000000000000010000000000000000: n427_o <= 6'b000000;
            64'b0000000000000000000000000000000000000000000000001000000000000000: n427_o <= 6'b000111;
            64'b0000000000000000000000000000000000000000000000000100000000000000: n427_o <= 6'b000110;
            64'b0000000000000000000000000000000000000000000000000010000000000000: n427_o <= 6'b000101;
            64'b0000000000000000000000000000000000000000000000000001000000000000: n427_o <= 6'b000100;
            64'b0000000000000000000000000000000000000000000000000000100000000000: n427_o <= 6'b000011;
            64'b0000000000000000000000000000000000000000000000000000010000000000: n427_o <= 6'b000010;
            64'b0000000000000000000000000000000000000000000000000000001000000000: n427_o <= 6'b000001;
            64'b0000000000000000000000000000000000000000000000000000000100000000: n427_o <= 6'b000000;
            64'b0000000000000000000000000000000000000000000000000000000010000000: n427_o <= 6'b000000;
            64'b0000000000000000000000000000000000000000000000000000000001000000: n427_o <= 6'b000000;
            64'b0000000000000000000000000000000000000000000000000000000000100000: n427_o <= 6'b000000;
            64'b0000000000000000000000000000000000000000000000000000000000010000: n427_o <= 6'b000000;
            64'b0000000000000000000000000000000000000000000000000000000000001000: n427_o <= 6'b000000;
            64'b0000000000000000000000000000000000000000000000000000000000000100: n427_o <= 6'b000000;
            64'b0000000000000000000000000000000000000000000000000000000000000010: n427_o <= 6'b000000;
            64'b0000000000000000000000000000000000000000000000000000000000000001: n427_o <= 6'b000000;
            default: n427_o <= 6'bXXXXXX;
        endcase
endmodule

module intadder_10_f400_uid42
    (input clk,
        input rst,
        input[9:0] x,
        input[9:0] y,
        input cin,
        output[9:0] r);
    wire[9:0] n225_o;
    wire[9:0] n226_o;
    wire[9:0] n227_o;
    assign r = n227_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:520:12  */
    assign n225_o = x+y;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:520:16  */
    assign n226_o = {9'b0, cin};  //  uext
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:520:16  */
    assign n227_o = n225_o+n226_o;
endmodule

module intmultiplier_usingdsp_5_5_10_unsigned_f400_uid4
    (input clk,
        input rst,
        input[4:0] x,
        input[4:0] y,
        output[9:0] r);
    wire[4:0] xx_m5;
    wire[4:0] yy_m5;
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
    wire[5:0] y0x1_7_m5;
    wire[5:0] pp7x1y0_m5;
    wire heap_bh6_w2_1;
    wire heap_bh6_w3_1;
    wire heap_bh6_w4_0;
    wire heap_bh6_w5_0;
    wire heap_bh6_w6_0;
    wire[5:0] y1x0_7_m5;
    wire[5:0] pp7x0y1_m5;
    wire heap_bh6_w2_2;
    wire heap_bh6_w3_2;
    wire heap_bh6_w4_1;
    wire heap_bh6_w5_1;
    wire heap_bh6_w6_1;
    wire[5:0] y1x1_7_m5;
    wire[5:0] pp7x1y1_m5;
    wire heap_bh6_w4_2;
    wire heap_bh6_w5_2;
    wire heap_bh6_w6_2;
    wire heap_bh6_w7_0;
    wire heap_bh6_w8_0;
    wire heap_bh6_w9_0;
    wire[1:0] tempr_bh6_0;
    wire[2:0] compressorin_bh6_0_0;
    wire[1:0] compressorin_bh6_0_1;
    wire[2:0] compressorout_bh6_0_0;
    wire heap_bh6_w2_3;
    wire heap_bh6_w3_3;
    wire heap_bh6_w4_3;
    wire[2:0] compressorin_bh6_1_2;
    wire[1:0] compressorin_bh6_1_3;
    wire[2:0] compressorout_bh6_1_1;
    wire heap_bh6_w4_4;
    wire heap_bh6_w5_3;
    wire heap_bh6_w6_3;
    wire[2:0] compressorin_bh6_2_4;
    wire compressorin_bh6_2_5;
    wire[2:0] compressorout_bh6_2_2;
    wire heap_bh6_w6_4;
    wire heap_bh6_w7_1;
    wire heap_bh6_w8_1;
    wire[7:0] finaladderin0_bh6;
    wire[7:0] finaladderin1_bh6;
    wire finaladdercin_bh6;
    wire[7:0] finaladderout_bh6;
    wire tempr_bh6_1;
    wire[10:0] compressionresult6;
    wire[5:0] n127_o;
    wire[5:0] n129_o;
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
    wire[5:0] n142_o;
    wire[5:0] pp_m5_7x1y0_tbl_n143;
    wire[5:0] pp_m5_7x1y0_tbl_y;
    wire n146_o;
    wire n147_o;
    wire n148_o;
    wire n149_o;
    wire n150_o;
    wire[5:0] n151_o;
    wire[5:0] pp_m5_7x0y1_tbl_n152;
    wire[5:0] pp_m5_7x0y1_tbl_y;
    wire n155_o;
    wire n156_o;
    wire n157_o;
    wire n158_o;
    wire n159_o;
    wire[5:0] n160_o;
    wire[5:0] pp_m5_7x1y1_tbl_n161;
    wire[5:0] pp_m5_7x1y1_tbl_y;
    wire n164_o;
    wire n165_o;
    wire n166_o;
    wire n167_o;
    wire n168_o;
    wire n169_o;
    wire[1:0] n170_o;
    wire[1:0] n171_o;
    wire[2:0] n172_o;
    wire[1:0] n173_o;
    wire[2:0] compressor_bh6_0_n174;
    wire[2:0] compressor_bh6_0_r;
    wire n177_o;
    wire n178_o;
    wire n179_o;
    wire[1:0] n180_o;
    wire[2:0] n181_o;
    wire[1:0] n182_o;
    wire[2:0] compressor_bh6_1_n183;
    wire[2:0] compressor_bh6_1_r;
    wire n186_o;
    wire n187_o;
    wire n188_o;
    wire[1:0] n189_o;
    wire[2:0] n190_o;
    wire[2:0] compressor_bh6_2_n191;
    wire[2:0] compressor_bh6_2_r;
    wire n194_o;
    wire n195_o;
    wire n196_o;
    wire[1:0] n198_o;
    wire[2:0] n199_o;
    wire[3:0] n200_o;
    wire[4:0] n201_o;
    wire[5:0] n202_o;
    wire[6:0] n203_o;
    wire[7:0] n204_o;
    wire[2:0] n206_o;
    wire[3:0] n208_o;
    wire[4:0] n209_o;
    wire[5:0] n210_o;
    wire[6:0] n211_o;
    wire[7:0] n212_o;
    wire[7:0] adder_final6_0_n214;
    wire[7:0] adder_final6_0_r;
    wire[8:0] n217_o;
    wire[10:0] n218_o;
    wire[9:0] n219_o;
    assign r = n219_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:363:20  */
    assign xx_m5 = x; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:364:20  */
    assign yy_m5 = y; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:290:8  */
    assign xp_m5b7 = n127_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:291:8  */
    assign yp_m5b7 = n129_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:292:8  */
    assign x_m5b7_0 = n130_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:293:8  */
    assign x_m5b7_1 = n131_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:294:8  */
    assign y_m5b7_0 = n132_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:295:8  */
    assign y_m5b7_1 = n133_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:296:8  */
    assign y0x0_7_m5 = n134_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:297:8  */
    assign pp7x0y0_m5 = pp_m5_7x0y0_tbl_n135; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:298:8  */
    assign heap_bh6_w0_0 = n138_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:299:8  */
    assign heap_bh6_w1_0 = n139_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:300:8  */
    assign heap_bh6_w2_0 = n140_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:301:8  */
    assign heap_bh6_w3_0 = n141_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:302:8  */
    assign y0x1_7_m5 = n142_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:303:8  */
    assign pp7x1y0_m5 = pp_m5_7x1y0_tbl_n143; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:304:8  */
    assign heap_bh6_w2_1 = n146_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:305:8  */
    assign heap_bh6_w3_1 = n147_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:306:8  */
    assign heap_bh6_w4_0 = n148_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:307:8  */
    assign heap_bh6_w5_0 = n149_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:308:8  */
    assign heap_bh6_w6_0 = n150_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:309:8  */
    assign y1x0_7_m5 = n151_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:310:8  */
    assign pp7x0y1_m5 = pp_m5_7x0y1_tbl_n152; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:311:8  */
    assign heap_bh6_w2_2 = n155_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:312:8  */
    assign heap_bh6_w3_2 = n156_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:313:8  */
    assign heap_bh6_w4_1 = n157_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:314:8  */
    assign heap_bh6_w5_1 = n158_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:315:8  */
    assign heap_bh6_w6_1 = n159_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:316:8  */
    assign y1x1_7_m5 = n160_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:317:8  */
    assign pp7x1y1_m5 = pp_m5_7x1y1_tbl_n161; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:318:8  */
    assign heap_bh6_w4_2 = n164_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:319:8  */
    assign heap_bh6_w5_2 = n165_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:320:8  */
    assign heap_bh6_w6_2 = n166_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:321:8  */
    assign heap_bh6_w7_0 = n167_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:322:8  */
    assign heap_bh6_w8_0 = n168_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:323:8  */
    assign heap_bh6_w9_0 = n169_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:324:8  */
    assign tempr_bh6_0 = n170_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:325:8  */
    assign compressorin_bh6_0_0 = n172_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:326:8  */
    assign compressorin_bh6_0_1 = n173_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:327:8  */
    assign compressorout_bh6_0_0 = compressor_bh6_0_n174; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:328:8  */
    assign heap_bh6_w2_3 = n177_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:329:8  */
    assign heap_bh6_w3_3 = n178_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:330:8  */
    assign heap_bh6_w4_3 = n179_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:331:8  */
    assign compressorin_bh6_1_2 = n181_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:332:8  */
    assign compressorin_bh6_1_3 = n182_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:333:8  */
    assign compressorout_bh6_1_1 = compressor_bh6_1_n183; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:334:8  */
    assign heap_bh6_w4_4 = n186_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:335:8  */
    assign heap_bh6_w5_3 = n187_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:336:8  */
    assign heap_bh6_w6_3 = n188_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:337:8  */
    assign compressorin_bh6_2_4 = n190_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:338:8  */
    assign compressorin_bh6_2_5 = heap_bh6_w7_0; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:339:8  */
    assign compressorout_bh6_2_2 = compressor_bh6_2_n191; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:340:8  */
    assign heap_bh6_w6_4 = n194_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:341:8  */
    assign heap_bh6_w7_1 = n195_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:342:8  */
    assign heap_bh6_w8_1 = n196_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:343:8  */
    assign finaladderin0_bh6 = n204_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:344:8  */
    assign finaladderin1_bh6 = n212_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:345:8  */
    assign finaladdercin_bh6 = 1'b0; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:346:8  */
    assign finaladderout_bh6 = adder_final6_0_n214; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:347:8  */
    assign tempr_bh6_1 = heap_bh6_w2_3; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:348:8  */
    assign compressionresult6 = n218_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:363:33  */
    assign n127_o = {xx_m5, 1'b0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:364:33  */
    assign n129_o = {yy_m5, 1'b0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:365:23  */
    assign n130_o = xp_m5b7[2:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:366:23  */
    assign n131_o = xp_m5b7[5:3];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:367:23  */
    assign n132_o = yp_m5b7[2:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:368:23  */
    assign n133_o = yp_m5b7[5:3];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:371:26  */
    assign n134_o = {y_m5b7_0, x_m5b7_0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:376:23  */
    assign pp_m5_7x0y0_tbl_n135 = pp_m5_7x0y0_tbl_y; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:372:4  */
    smallmulttablep3x3r6xuyu_f400_uid9 pp_m5_7x0y0_tbl(
        .clk(clk),
        .rst(rst),
        .x(y0x0_7_m5),
        .y(pp_m5_7x0y0_tbl_y));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:378:31  */
    assign n138_o = pp7x0y0_m5[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:379:31  */
    assign n139_o = pp7x0y0_m5[3];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:380:31  */
    assign n140_o = pp7x0y0_m5[4];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:381:31  */
    assign n141_o = pp7x0y0_m5[5];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:383:26  */
    assign n142_o = {y_m5b7_0, x_m5b7_1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:388:23  */
    assign pp_m5_7x1y0_tbl_n143 = pp_m5_7x1y0_tbl_y; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:384:4  */
    smallmulttablep3x3r6xuyu_f400_uid9 pp_m5_7x1y0_tbl(
        .clk(clk),
        .rst(rst),
        .x(y0x1_7_m5),
        .y(pp_m5_7x1y0_tbl_y));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:390:31  */
    assign n146_o = pp7x1y0_m5[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:391:31  */
    assign n147_o = pp7x1y0_m5[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:392:31  */
    assign n148_o = pp7x1y0_m5[3];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:393:31  */
    assign n149_o = pp7x1y0_m5[4];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:394:31  */
    assign n150_o = pp7x1y0_m5[5];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:397:26  */
    assign n151_o = {y_m5b7_1, x_m5b7_0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:402:23  */
    assign pp_m5_7x0y1_tbl_n152 = pp_m5_7x0y1_tbl_y; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:398:4  */
    smallmulttablep3x3r6xuyu_f400_uid9 pp_m5_7x0y1_tbl(
        .clk(clk),
        .rst(rst),
        .x(y1x0_7_m5),
        .y(pp_m5_7x0y1_tbl_y));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:404:31  */
    assign n155_o = pp7x0y1_m5[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:405:31  */
    assign n156_o = pp7x0y1_m5[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:406:31  */
    assign n157_o = pp7x0y1_m5[3];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:407:31  */
    assign n158_o = pp7x0y1_m5[4];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:408:31  */
    assign n159_o = pp7x0y1_m5[5];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:410:26  */
    assign n160_o = {y_m5b7_1, x_m5b7_1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:415:23  */
    assign pp_m5_7x1y1_tbl_n161 = pp_m5_7x1y1_tbl_y; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:411:4  */
    smallmulttablep3x3r6xuyu_f400_uid9 pp_m5_7x1y1_tbl(
        .clk(clk),
        .rst(rst),
        .x(y1x1_7_m5),
        .y(pp_m5_7x1y1_tbl_y));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:417:31  */
    assign n164_o = pp7x1y1_m5[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:418:31  */
    assign n165_o = pp7x1y1_m5[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:419:31  */
    assign n166_o = pp7x1y1_m5[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:420:31  */
    assign n167_o = pp7x1y1_m5[3];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:421:31  */
    assign n168_o = pp7x1y1_m5[4];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:422:31  */
    assign n169_o = pp7x1y1_m5[5];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:434:33  */
    assign n170_o = {heap_bh6_w1_0, heap_bh6_w0_0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:437:42  */
    assign n171_o = {heap_bh6_w2_2, heap_bh6_w2_1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:437:58  */
    assign n172_o = {n171_o, heap_bh6_w2_0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:438:42  */
    assign n173_o = {heap_bh6_w3_2, heap_bh6_w3_1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:440:23  */
    assign compressor_bh6_0_n174 = compressor_bh6_0_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:439:7  */
    compressor_23_3 compressor_bh6_0(
        .x0(compressorin_bh6_0_0),
        .x1(compressorin_bh6_0_1),
        .r(compressor_bh6_0_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:443:42  */
    assign n177_o = compressorout_bh6_0_0[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:444:42  */
    assign n178_o = compressorout_bh6_0_0[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:445:42  */
    assign n179_o = compressorout_bh6_0_0[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:448:42  */
    assign n180_o = {heap_bh6_w4_2, heap_bh6_w4_1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:448:58  */
    assign n181_o = {n180_o, heap_bh6_w4_0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:449:42  */
    assign n182_o = {heap_bh6_w5_2, heap_bh6_w5_1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:451:23  */
    assign compressor_bh6_1_n183 = compressor_bh6_1_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:450:7  */
    compressor_23_3 compressor_bh6_1(
        .x0(compressorin_bh6_1_2),
        .x1(compressorin_bh6_1_3),
        .r(compressor_bh6_1_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:454:42  */
    assign n186_o = compressorout_bh6_1_1[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:455:42  */
    assign n187_o = compressorout_bh6_1_1[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:456:42  */
    assign n188_o = compressorout_bh6_1_1[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:459:42  */
    assign n189_o = {heap_bh6_w6_2, heap_bh6_w6_1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:459:58  */
    assign n190_o = {n189_o, heap_bh6_w6_0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:462:23  */
    assign compressor_bh6_2_n191 = compressor_bh6_2_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:461:7  */
    compressor_13_3 compressor_bh6_2(
        .x0(compressorin_bh6_2_4),
        .x1(compressorin_bh6_2_5),
        .r(compressor_bh6_2_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:465:42  */
    assign n194_o = compressorout_bh6_2_2[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:466:42  */
    assign n195_o = compressorout_bh6_2_2[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:467:42  */
    assign n196_o = compressorout_bh6_2_2[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:469:29  */
    assign n198_o = {1'b0, heap_bh6_w9_0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:469:45  */
    assign n199_o = {n198_o, heap_bh6_w8_0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:469:61  */
    assign n200_o = {n199_o, heap_bh6_w7_1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:469:77  */
    assign n201_o = {n200_o, heap_bh6_w6_4};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:469:93  */
    assign n202_o = {n201_o, heap_bh6_w5_0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:469:109  */
    assign n203_o = {n202_o, heap_bh6_w4_4};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:469:125  */
    assign n204_o = {n203_o, heap_bh6_w3_0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:470:35  */
    assign n206_o = {2'b00, heap_bh6_w8_1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:470:51  */
    assign n208_o = {n206_o, 1'b0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:470:57  */
    assign n209_o = {n208_o, heap_bh6_w6_3};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:470:73  */
    assign n210_o = {n209_o, heap_bh6_w5_3};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:470:89  */
    assign n211_o = {n210_o, heap_bh6_w4_3};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:470:105  */
    assign n212_o = {n211_o, heap_bh6_w3_3};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:476:23  */
    assign adder_final6_0_n214 = adder_final6_0_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:472:7  */
    intadder_8_f400_uid32 adder_final6_0(
        .clk(clk),
        .rst(rst),
        .x(finaladderin0_bh6),
        .y(finaladderin1_bh6),
        .cin(finaladdercin_bh6),
        .r(adder_final6_0_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:482:44  */
    assign n217_o = {finaladderout_bh6, tempr_bh6_1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:482:58  */
    assign n218_o = {n217_o, tempr_bh6_0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:484:27  */
    assign n219_o = compressionresult6[9:0];
endmodule

(* USE_DSP48 = "yes" *) module fmul
    #(parameter
        ID=1
    )(input clk,
    input rst,
    input[10:0] X,
    input[10:0] Y,
    output[10:0] R);
    wire sign;
    wire sign_d1;
    wire[3:0] expx;
    wire[3:0] expy;
    wire[5:0] expsumpresub;
    wire[5:0] bias;
    wire[5:0] expsum;
    wire[5:0] expsum_d1;
    wire[4:0] sigx;
    wire[4:0] sigy;
    wire[9:0] sigprod;
    wire[3:0] excsel;
    wire[1:0] exc;
    wire[1:0] exc_d1;
    wire norm;
    wire norm_d1;
    wire[5:0] exppostnorm;
    wire[9:0] sigprodext;
    wire[9:0] sigprodext_d1;
    wire[9:0] expsig;
    wire sticky;
    wire guard;
    wire round;
    wire[9:0] expsigpostround;
    wire[1:0] excpostnorm;
    wire[1:0] finalexc;
    reg n10_q;
    reg[5:0] n11_q;
    reg[1:0] n12_q;
    reg n13_q;
    reg[9:0] n14_q;
    wire n15_o;
    wire n16_o;
    wire n17_o;
    wire[3:0] n18_o;
    wire[3:0] n19_o;
    wire[5:0] n21_o;
    wire[5:0] n23_o;
    wire[5:0] n24_o;
    wire[5:0] n26_o;
    wire[3:0] n27_o;
    wire[4:0] n29_o;
    wire[3:0] n30_o;
    wire[4:0] n32_o;
    wire[9:0] significandmultiplication_n33;
    wire[9:0] significandmultiplication_r;
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
    wire[5:0] n65_o;
    wire[5:0] n66_o;
    wire[8:0] n67_o;
    wire[9:0] n69_o;
    wire[9:0] n70_o;
    wire[7:0] n71_o;
    wire[9:0] n73_o;
    wire[3:0] n74_o;
    wire[9:0] n75_o;
    wire n76_o;
    wire[4:0] n78_o;
    wire n80_o;
    wire n81_o;
    wire n83_o;
    wire n84_o;
    wire n85_o;
    wire n86_o;
    wire n87_o;
    wire n88_o;
    localparam [9:0] n89_o = 10'b0000000000;
    wire[9:0] roundingadder_n90;
    wire[9:0] roundingadder_r;
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
    wire[7:0] n119_o;
    wire[10:0] n120_o;
    assign R = n120_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:563:8  */
    assign sign = n17_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:563:14  */
    assign sign_d1 = n10_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:564:8  */
    assign expx = n18_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:565:8  */
    assign expy = n19_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:566:8  */
    assign expsumpresub = n24_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:567:8  */
    assign bias = 6'b000111; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:568:8  */
    assign expsum = n26_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:568:16  */
    assign expsum_d1 = n11_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:569:8  */
    assign sigx = n29_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:570:8  */
    assign sigy = n32_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:571:8  */
    assign sigprod = significandmultiplication_n33; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:572:8  */
    assign excsel = n38_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:573:8  */
    assign exc = n62_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:573:13  */
    assign exc_d1 = n12_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:574:8  */
    assign norm = n63_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:574:14  */
    assign norm_d1 = n13_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:575:8  */
    assign exppostnorm = n66_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:576:8  */
    assign sigprodext = n70_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:576:20  */
    assign sigprodext_d1 = n14_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:577:8  */
    assign expsig = n75_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:578:8  */
    assign sticky = n76_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:579:8  */
    assign guard = n81_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:580:8  */
    assign round = n88_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:581:8  */
    assign expsigpostround = roundingadder_n90; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:582:8  */
    assign excpostnorm = n108_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:583:8  */
    assign finalexc = n117_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:587:10  */
    always @(posedge clk)
        n10_q <= sign;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:587:10  */
    always @(posedge clk)
        n11_q <= expsum;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:587:10  */
    always @(posedge clk)
        n12_q <= exc;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:587:10  */
    always @(posedge clk)
        n13_q <= norm;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:587:10  */
    always @(posedge clk)
        n14_q <= sigprodext;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:595:13  */
    assign n15_o = X[8];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:595:22  */
    assign n16_o = Y[8];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:595:17  */
    assign n17_o = n15_o ^ n16_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:596:13  */
    assign n18_o = X[7:4];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:597:13  */
    assign n19_o = Y[7:4];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:598:26  */
    assign n21_o = {2'b00, expx};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:598:42  */
    assign n23_o = {2'b00, expy};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:598:34  */
    assign n24_o = n21_o+n23_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:600:27  */
    assign n26_o = expsumpresub-bias;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:602:19  */
    assign n27_o = X[3:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:602:16  */
    assign n29_o = {1'b1, n27_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:603:19  */
    assign n30_o = Y[3:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:603:16  */
    assign n32_o = {1'b1, n30_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:607:23  */
    assign significandmultiplication_n33 = significandmultiplication_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:604:4  */
    intmultiplier_usingdsp_5_5_10_unsigned_f400_uid4 significandmultiplication(
        .clk(clk),
        .rst(rst),
        .x(sigx),
        .y(sigy),
        .r(significandmultiplication_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:611:15  */
    assign n36_o = X[10:9];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:611:32  */
    assign n37_o = Y[10:9];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:611:29  */
    assign n38_o = {n36_o, n37_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:613:16  */
    assign n41_o = excsel == 4'b0000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:613:29  */
    assign n43_o = excsel == 4'b0001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:613:29  */
    assign n44_o = n41_o | n43_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:613:38  */
    assign n46_o = excsel == 4'b0100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:613:38  */
    assign n47_o = n44_o | n46_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:614:16  */
    assign n50_o = excsel == 4'b0101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:615:16  */
    assign n53_o = excsel == 4'b0110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:615:28  */
    assign n55_o = excsel == 4'b1001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:615:28  */
    assign n56_o = n53_o | n55_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:615:37  */
    assign n58_o = excsel == 4'b1010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:615:37  */
    assign n59_o = n56_o | n58_o;
    assign n61_o = {n59_o, n50_o, n47_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:612:4  */
    always @*
        case (n61_o)
            3'b100: n62_o <= 2'b10;
            3'b010: n62_o <= 2'b01;
            3'b001: n62_o <= 2'b00;
            default: n62_o <= 2'b11;
        endcase
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:617:19  */
    assign n63_o = sigprod[9];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:620:40  */
    assign n65_o = {5'b00000, norm_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:620:29  */
    assign n66_o = expsum_d1+n65_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:622:25  */
    assign n67_o = sigprod[8:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:622:38  */
    assign n69_o = {n67_o, 1'b0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:622:44  */
    assign n70_o = norm ? n69_o : n73_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:623:33  */
    assign n71_o = sigprod[7:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:623:46  */
    assign n73_o = {n71_o, 2'b00};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:625:41  */
    assign n74_o = sigprodext_d1[9:6];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:625:26  */
    assign n75_o = {exppostnorm, n74_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:626:27  */
    assign n76_o = sigprodext_d1[5];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:627:35  */
    assign n78_o = sigprodext_d1[4:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:627:47  */
    assign n80_o = n78_o == 5'b00000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:627:17  */
    assign n81_o = n80_o ? 1'b0 : 1'b1;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:628:54  */
    assign n83_o = sigprodext_d1[6];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:628:37  */
    assign n84_o = ~n83_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:628:33  */
    assign n85_o = guard & n84_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:628:77  */
    assign n86_o = sigprodext_d1[6];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:628:60  */
    assign n87_o = n85_o | n86_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:628:20  */
    assign n88_o = sticky & n87_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:633:23  */
    assign roundingadder_n90 = roundingadder_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:629:7  */
    intadder_10_f400_uid42 roundingadder(
        .clk(clk),
        .rst(rst),
        .x(expsig),
        .y(n89_o),
        .cin(round),
        .r(roundingadder_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:636:24  */
    assign n93_o = expsigpostround[9:8];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:637:26  */
    assign n96_o = n93_o == 2'b00;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:638:49  */
    assign n99_o = n93_o == 2'b01;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:639:49  */
    assign n102_o = n93_o == 2'b11;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:639:58  */
    assign n104_o = n93_o == 2'b10;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:639:58  */
    assign n105_o = n102_o | n104_o;
    assign n107_o = {n105_o, n99_o, n96_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:636:4  */
    always @*
        case (n107_o)
            3'b100: n108_o <= 2'b00;
            3'b010: n108_o <= 2'b10;
            3'b001: n108_o <= 2'b01;
            default: n108_o <= 2'b11;
        endcase
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:642:23  */
    assign n110_o = exc_d1 == 2'b11;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:642:33  */
    assign n112_o = exc_d1 == 2'b10;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:642:33  */
    assign n113_o = n110_o | n112_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:642:38  */
    assign n115_o = exc_d1 == 2'b00;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:642:38  */
    assign n116_o = n113_o | n115_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:641:4  */
    always @*
        case (n116_o)
            1'b1: n117_o <= exc_d1;
            default: n117_o <= excpostnorm;
        endcase
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:644:18  */
    assign n118_o = {finalexc, sign_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:644:45  */
    assign n119_o = expsigpostround[7:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_4_4.vhdl:644:28  */
    assign n120_o = {n118_o, n119_o};
endmodule

