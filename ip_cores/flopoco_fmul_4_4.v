module intadder_8_f400_uid32
  (input  clk,
   input  rst,
   input  ce,
   input  [7:0] x,
   input  [7:0] y,
   input  cin,
   output [7:0] r);
  wire [7:0] n597_o;
  wire [7:0] n598_o;
  wire [7:0] n599_o;
  assign r = n599_o;
  /* flopoco_fmul_4_4.vhdl:240:12  */
  assign n597_o = x + y;
  /* flopoco_fmul_4_4.vhdl:240:16  */
  assign n598_o = {7'b0, cin};  //  uext
  /* flopoco_fmul_4_4.vhdl:240:16  */
  assign n599_o = n597_o + n598_o;
endmodule

module compressor_13_3
  (input  [2:0] x0,
   input  x1,
   output [2:0] r);
  wire [3:0] x;
  wire [3:0] n540_o;
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
  wire [15:0] n590_o;
  reg [2:0] n591_o;
  assign r = n591_o;
  /* flopoco_fmul_4_4.vhdl:181:8  */
  assign x = n540_o; // (signal)
  /* flopoco_fmul_4_4.vhdl:183:11  */
  assign n540_o = {x1, x0};
  /* flopoco_fmul_4_4.vhdl:185:13  */
  assign n543_o = x == 4'b0000;
  /* flopoco_fmul_4_4.vhdl:186:13  */
  assign n546_o = x == 4'b0001;
  /* flopoco_fmul_4_4.vhdl:187:13  */
  assign n549_o = x == 4'b0010;
  /* flopoco_fmul_4_4.vhdl:188:13  */
  assign n552_o = x == 4'b0011;
  /* flopoco_fmul_4_4.vhdl:189:13  */
  assign n555_o = x == 4'b0100;
  /* flopoco_fmul_4_4.vhdl:190:13  */
  assign n558_o = x == 4'b0101;
  /* flopoco_fmul_4_4.vhdl:191:13  */
  assign n561_o = x == 4'b0110;
  /* flopoco_fmul_4_4.vhdl:192:13  */
  assign n564_o = x == 4'b0111;
  /* flopoco_fmul_4_4.vhdl:193:13  */
  assign n567_o = x == 4'b1000;
  /* flopoco_fmul_4_4.vhdl:194:13  */
  assign n570_o = x == 4'b1001;
  /* flopoco_fmul_4_4.vhdl:195:13  */
  assign n573_o = x == 4'b1010;
  /* flopoco_fmul_4_4.vhdl:196:13  */
  assign n576_o = x == 4'b1011;
  /* flopoco_fmul_4_4.vhdl:197:13  */
  assign n579_o = x == 4'b1100;
  /* flopoco_fmul_4_4.vhdl:198:13  */
  assign n582_o = x == 4'b1101;
  /* flopoco_fmul_4_4.vhdl:199:13  */
  assign n585_o = x == 4'b1110;
  /* flopoco_fmul_4_4.vhdl:200:13  */
  assign n588_o = x == 4'b1111;
  assign n590_o = {n588_o, n585_o, n582_o, n579_o, n576_o, n573_o, n570_o, n567_o, n564_o, n561_o, n558_o, n555_o, n552_o, n549_o, n546_o, n543_o};
  /* flopoco_fmul_4_4.vhdl:184:4  */
  always @*
    case (n590_o)
      16'b1000000000000000: n591_o <= 3'b101;
      16'b0100000000000000: n591_o <= 3'b100;
      16'b0010000000000000: n591_o <= 3'b100;
      16'b0001000000000000: n591_o <= 3'b011;
      16'b0000100000000000: n591_o <= 3'b100;
      16'b0000010000000000: n591_o <= 3'b011;
      16'b0000001000000000: n591_o <= 3'b011;
      16'b0000000100000000: n591_o <= 3'b010;
      16'b0000000010000000: n591_o <= 3'b011;
      16'b0000000001000000: n591_o <= 3'b010;
      16'b0000000000100000: n591_o <= 3'b010;
      16'b0000000000010000: n591_o <= 3'b001;
      16'b0000000000001000: n591_o <= 3'b010;
      16'b0000000000000100: n591_o <= 3'b001;
      16'b0000000000000010: n591_o <= 3'b001;
      16'b0000000000000001: n591_o <= 3'b000;
      default: n591_o <= 3'bXXX;
    endcase
endmodule

module compressor_23_3
  (input  [2:0] x0,
   input  [1:0] x1,
   output [2:0] r);
  wire [4:0] x;
  wire [4:0] n439_o;
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
  wire [31:0] n537_o;
  reg [2:0] n538_o;
  assign r = n538_o;
  /* flopoco_fmul_4_4.vhdl:118:8  */
  assign x = n439_o; // (signal)
  /* flopoco_fmul_4_4.vhdl:120:11  */
  assign n439_o = {x1, x0};
  /* flopoco_fmul_4_4.vhdl:122:13  */
  assign n442_o = x == 5'b00000;
  /* flopoco_fmul_4_4.vhdl:123:13  */
  assign n445_o = x == 5'b00001;
  /* flopoco_fmul_4_4.vhdl:124:13  */
  assign n448_o = x == 5'b00010;
  /* flopoco_fmul_4_4.vhdl:125:13  */
  assign n451_o = x == 5'b00011;
  /* flopoco_fmul_4_4.vhdl:126:13  */
  assign n454_o = x == 5'b00100;
  /* flopoco_fmul_4_4.vhdl:127:13  */
  assign n457_o = x == 5'b00101;
  /* flopoco_fmul_4_4.vhdl:128:13  */
  assign n460_o = x == 5'b00110;
  /* flopoco_fmul_4_4.vhdl:129:13  */
  assign n463_o = x == 5'b00111;
  /* flopoco_fmul_4_4.vhdl:130:13  */
  assign n466_o = x == 5'b01000;
  /* flopoco_fmul_4_4.vhdl:131:13  */
  assign n469_o = x == 5'b01001;
  /* flopoco_fmul_4_4.vhdl:132:13  */
  assign n472_o = x == 5'b01010;
  /* flopoco_fmul_4_4.vhdl:133:13  */
  assign n475_o = x == 5'b01011;
  /* flopoco_fmul_4_4.vhdl:134:13  */
  assign n478_o = x == 5'b01100;
  /* flopoco_fmul_4_4.vhdl:135:13  */
  assign n481_o = x == 5'b01101;
  /* flopoco_fmul_4_4.vhdl:136:13  */
  assign n484_o = x == 5'b01110;
  /* flopoco_fmul_4_4.vhdl:137:13  */
  assign n487_o = x == 5'b01111;
  /* flopoco_fmul_4_4.vhdl:138:13  */
  assign n490_o = x == 5'b10000;
  /* flopoco_fmul_4_4.vhdl:139:13  */
  assign n493_o = x == 5'b10001;
  /* flopoco_fmul_4_4.vhdl:140:13  */
  assign n496_o = x == 5'b10010;
  /* flopoco_fmul_4_4.vhdl:141:13  */
  assign n499_o = x == 5'b10011;
  /* flopoco_fmul_4_4.vhdl:142:13  */
  assign n502_o = x == 5'b10100;
  /* flopoco_fmul_4_4.vhdl:143:13  */
  assign n505_o = x == 5'b10101;
  /* flopoco_fmul_4_4.vhdl:144:13  */
  assign n508_o = x == 5'b10110;
  /* flopoco_fmul_4_4.vhdl:145:13  */
  assign n511_o = x == 5'b10111;
  /* flopoco_fmul_4_4.vhdl:146:13  */
  assign n514_o = x == 5'b11000;
  /* flopoco_fmul_4_4.vhdl:147:13  */
  assign n517_o = x == 5'b11001;
  /* flopoco_fmul_4_4.vhdl:148:13  */
  assign n520_o = x == 5'b11010;
  /* flopoco_fmul_4_4.vhdl:149:13  */
  assign n523_o = x == 5'b11011;
  /* flopoco_fmul_4_4.vhdl:150:13  */
  assign n526_o = x == 5'b11100;
  /* flopoco_fmul_4_4.vhdl:151:13  */
  assign n529_o = x == 5'b11101;
  /* flopoco_fmul_4_4.vhdl:152:13  */
  assign n532_o = x == 5'b11110;
  /* flopoco_fmul_4_4.vhdl:153:13  */
  assign n535_o = x == 5'b11111;
  assign n537_o = {n535_o, n532_o, n529_o, n526_o, n523_o, n520_o, n517_o, n514_o, n511_o, n508_o, n505_o, n502_o, n499_o, n496_o, n493_o, n490_o, n487_o, n484_o, n481_o, n478_o, n475_o, n472_o, n469_o, n466_o, n463_o, n460_o, n457_o, n454_o, n451_o, n448_o, n445_o, n442_o};
  /* flopoco_fmul_4_4.vhdl:121:4  */
  always @*
    case (n537_o)
      32'b10000000000000000000000000000000: n538_o <= 3'b111;
      32'b01000000000000000000000000000000: n538_o <= 3'b110;
      32'b00100000000000000000000000000000: n538_o <= 3'b110;
      32'b00010000000000000000000000000000: n538_o <= 3'b101;
      32'b00001000000000000000000000000000: n538_o <= 3'b110;
      32'b00000100000000000000000000000000: n538_o <= 3'b101;
      32'b00000010000000000000000000000000: n538_o <= 3'b101;
      32'b00000001000000000000000000000000: n538_o <= 3'b100;
      32'b00000000100000000000000000000000: n538_o <= 3'b101;
      32'b00000000010000000000000000000000: n538_o <= 3'b100;
      32'b00000000001000000000000000000000: n538_o <= 3'b100;
      32'b00000000000100000000000000000000: n538_o <= 3'b011;
      32'b00000000000010000000000000000000: n538_o <= 3'b100;
      32'b00000000000001000000000000000000: n538_o <= 3'b011;
      32'b00000000000000100000000000000000: n538_o <= 3'b011;
      32'b00000000000000010000000000000000: n538_o <= 3'b010;
      32'b00000000000000001000000000000000: n538_o <= 3'b101;
      32'b00000000000000000100000000000000: n538_o <= 3'b100;
      32'b00000000000000000010000000000000: n538_o <= 3'b100;
      32'b00000000000000000001000000000000: n538_o <= 3'b011;
      32'b00000000000000000000100000000000: n538_o <= 3'b100;
      32'b00000000000000000000010000000000: n538_o <= 3'b011;
      32'b00000000000000000000001000000000: n538_o <= 3'b011;
      32'b00000000000000000000000100000000: n538_o <= 3'b010;
      32'b00000000000000000000000010000000: n538_o <= 3'b011;
      32'b00000000000000000000000001000000: n538_o <= 3'b010;
      32'b00000000000000000000000000100000: n538_o <= 3'b010;
      32'b00000000000000000000000000010000: n538_o <= 3'b001;
      32'b00000000000000000000000000001000: n538_o <= 3'b010;
      32'b00000000000000000000000000000100: n538_o <= 3'b001;
      32'b00000000000000000000000000000010: n538_o <= 3'b001;
      32'b00000000000000000000000000000001: n538_o <= 3'b000;
      default: n538_o <= 3'bXXX;
    endcase
endmodule

module smallmulttablep3x3r6xuyu_f400_uid9
  (input  clk,
   input  rst,
   input  ce,
   input  [5:0] x,
   output [5:0] y);
  wire [5:0] tableout;
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
  wire n431_o;
  wire n434_o;
  wire [63:0] n436_o;
  reg [5:0] n437_o;
  assign y = tableout;
  /* flopoco_fmul_4_4.vhdl:17:8  */
  assign tableout = n437_o; // (signal)
  /* flopoco_fmul_4_4.vhdl:27:13  */
  assign n245_o = x == 6'b000000;
  /* flopoco_fmul_4_4.vhdl:28:13  */
  assign n248_o = x == 6'b000001;
  /* flopoco_fmul_4_4.vhdl:29:13  */
  assign n251_o = x == 6'b000010;
  /* flopoco_fmul_4_4.vhdl:30:13  */
  assign n254_o = x == 6'b000011;
  /* flopoco_fmul_4_4.vhdl:31:13  */
  assign n257_o = x == 6'b000100;
  /* flopoco_fmul_4_4.vhdl:32:13  */
  assign n260_o = x == 6'b000101;
  /* flopoco_fmul_4_4.vhdl:33:13  */
  assign n263_o = x == 6'b000110;
  /* flopoco_fmul_4_4.vhdl:34:13  */
  assign n266_o = x == 6'b000111;
  /* flopoco_fmul_4_4.vhdl:35:13  */
  assign n269_o = x == 6'b001000;
  /* flopoco_fmul_4_4.vhdl:36:13  */
  assign n272_o = x == 6'b001001;
  /* flopoco_fmul_4_4.vhdl:37:13  */
  assign n275_o = x == 6'b001010;
  /* flopoco_fmul_4_4.vhdl:38:13  */
  assign n278_o = x == 6'b001011;
  /* flopoco_fmul_4_4.vhdl:39:13  */
  assign n281_o = x == 6'b001100;
  /* flopoco_fmul_4_4.vhdl:40:13  */
  assign n284_o = x == 6'b001101;
  /* flopoco_fmul_4_4.vhdl:41:13  */
  assign n287_o = x == 6'b001110;
  /* flopoco_fmul_4_4.vhdl:42:13  */
  assign n290_o = x == 6'b001111;
  /* flopoco_fmul_4_4.vhdl:43:13  */
  assign n293_o = x == 6'b010000;
  /* flopoco_fmul_4_4.vhdl:44:13  */
  assign n296_o = x == 6'b010001;
  /* flopoco_fmul_4_4.vhdl:45:13  */
  assign n299_o = x == 6'b010010;
  /* flopoco_fmul_4_4.vhdl:46:13  */
  assign n302_o = x == 6'b010011;
  /* flopoco_fmul_4_4.vhdl:47:13  */
  assign n305_o = x == 6'b010100;
  /* flopoco_fmul_4_4.vhdl:48:13  */
  assign n308_o = x == 6'b010101;
  /* flopoco_fmul_4_4.vhdl:49:13  */
  assign n311_o = x == 6'b010110;
  /* flopoco_fmul_4_4.vhdl:50:13  */
  assign n314_o = x == 6'b010111;
  /* flopoco_fmul_4_4.vhdl:51:13  */
  assign n317_o = x == 6'b011000;
  /* flopoco_fmul_4_4.vhdl:52:13  */
  assign n320_o = x == 6'b011001;
  /* flopoco_fmul_4_4.vhdl:53:13  */
  assign n323_o = x == 6'b011010;
  /* flopoco_fmul_4_4.vhdl:54:13  */
  assign n326_o = x == 6'b011011;
  /* flopoco_fmul_4_4.vhdl:55:13  */
  assign n329_o = x == 6'b011100;
  /* flopoco_fmul_4_4.vhdl:56:13  */
  assign n332_o = x == 6'b011101;
  /* flopoco_fmul_4_4.vhdl:57:13  */
  assign n335_o = x == 6'b011110;
  /* flopoco_fmul_4_4.vhdl:58:13  */
  assign n338_o = x == 6'b011111;
  /* flopoco_fmul_4_4.vhdl:59:13  */
  assign n341_o = x == 6'b100000;
  /* flopoco_fmul_4_4.vhdl:60:13  */
  assign n344_o = x == 6'b100001;
  /* flopoco_fmul_4_4.vhdl:61:13  */
  assign n347_o = x == 6'b100010;
  /* flopoco_fmul_4_4.vhdl:62:13  */
  assign n350_o = x == 6'b100011;
  /* flopoco_fmul_4_4.vhdl:63:13  */
  assign n353_o = x == 6'b100100;
  /* flopoco_fmul_4_4.vhdl:64:13  */
  assign n356_o = x == 6'b100101;
  /* flopoco_fmul_4_4.vhdl:65:13  */
  assign n359_o = x == 6'b100110;
  /* flopoco_fmul_4_4.vhdl:66:13  */
  assign n362_o = x == 6'b100111;
  /* flopoco_fmul_4_4.vhdl:67:13  */
  assign n365_o = x == 6'b101000;
  /* flopoco_fmul_4_4.vhdl:68:13  */
  assign n368_o = x == 6'b101001;
  /* flopoco_fmul_4_4.vhdl:69:13  */
  assign n371_o = x == 6'b101010;
  /* flopoco_fmul_4_4.vhdl:70:13  */
  assign n374_o = x == 6'b101011;
  /* flopoco_fmul_4_4.vhdl:71:13  */
  assign n377_o = x == 6'b101100;
  /* flopoco_fmul_4_4.vhdl:72:13  */
  assign n380_o = x == 6'b101101;
  /* flopoco_fmul_4_4.vhdl:73:13  */
  assign n383_o = x == 6'b101110;
  /* flopoco_fmul_4_4.vhdl:74:13  */
  assign n386_o = x == 6'b101111;
  /* flopoco_fmul_4_4.vhdl:75:13  */
  assign n389_o = x == 6'b110000;
  /* flopoco_fmul_4_4.vhdl:76:13  */
  assign n392_o = x == 6'b110001;
  /* flopoco_fmul_4_4.vhdl:77:13  */
  assign n395_o = x == 6'b110010;
  /* flopoco_fmul_4_4.vhdl:78:13  */
  assign n398_o = x == 6'b110011;
  /* flopoco_fmul_4_4.vhdl:79:13  */
  assign n401_o = x == 6'b110100;
  /* flopoco_fmul_4_4.vhdl:80:13  */
  assign n404_o = x == 6'b110101;
  /* flopoco_fmul_4_4.vhdl:81:13  */
  assign n407_o = x == 6'b110110;
  /* flopoco_fmul_4_4.vhdl:82:13  */
  assign n410_o = x == 6'b110111;
  /* flopoco_fmul_4_4.vhdl:83:13  */
  assign n413_o = x == 6'b111000;
  /* flopoco_fmul_4_4.vhdl:84:13  */
  assign n416_o = x == 6'b111001;
  /* flopoco_fmul_4_4.vhdl:85:13  */
  assign n419_o = x == 6'b111010;
  /* flopoco_fmul_4_4.vhdl:86:13  */
  assign n422_o = x == 6'b111011;
  /* flopoco_fmul_4_4.vhdl:87:13  */
  assign n425_o = x == 6'b111100;
  /* flopoco_fmul_4_4.vhdl:88:13  */
  assign n428_o = x == 6'b111101;
  /* flopoco_fmul_4_4.vhdl:89:13  */
  assign n431_o = x == 6'b111110;
  /* flopoco_fmul_4_4.vhdl:90:13  */
  assign n434_o = x == 6'b111111;
  assign n436_o = {n434_o, n431_o, n428_o, n425_o, n422_o, n419_o, n416_o, n413_o, n410_o, n407_o, n404_o, n401_o, n398_o, n395_o, n392_o, n389_o, n386_o, n383_o, n380_o, n377_o, n374_o, n371_o, n368_o, n365_o, n362_o, n359_o, n356_o, n353_o, n350_o, n347_o, n344_o, n341_o, n338_o, n335_o, n332_o, n329_o, n326_o, n323_o, n320_o, n317_o, n314_o, n311_o, n308_o, n305_o, n302_o, n299_o, n296_o, n293_o, n290_o, n287_o, n284_o, n281_o, n278_o, n275_o, n272_o, n269_o, n266_o, n263_o, n260_o, n257_o, n254_o, n251_o, n248_o, n245_o};
  /* flopoco_fmul_4_4.vhdl:26:3  */
  always @*
    case (n436_o)
      64'b1000000000000000000000000000000000000000000000000000000000000000: n437_o <= 6'b110001;
      64'b0100000000000000000000000000000000000000000000000000000000000000: n437_o <= 6'b101010;
      64'b0010000000000000000000000000000000000000000000000000000000000000: n437_o <= 6'b100011;
      64'b0001000000000000000000000000000000000000000000000000000000000000: n437_o <= 6'b011100;
      64'b0000100000000000000000000000000000000000000000000000000000000000: n437_o <= 6'b010101;
      64'b0000010000000000000000000000000000000000000000000000000000000000: n437_o <= 6'b001110;
      64'b0000001000000000000000000000000000000000000000000000000000000000: n437_o <= 6'b000111;
      64'b0000000100000000000000000000000000000000000000000000000000000000: n437_o <= 6'b000000;
      64'b0000000010000000000000000000000000000000000000000000000000000000: n437_o <= 6'b101010;
      64'b0000000001000000000000000000000000000000000000000000000000000000: n437_o <= 6'b100100;
      64'b0000000000100000000000000000000000000000000000000000000000000000: n437_o <= 6'b011110;
      64'b0000000000010000000000000000000000000000000000000000000000000000: n437_o <= 6'b011000;
      64'b0000000000001000000000000000000000000000000000000000000000000000: n437_o <= 6'b010010;
      64'b0000000000000100000000000000000000000000000000000000000000000000: n437_o <= 6'b001100;
      64'b0000000000000010000000000000000000000000000000000000000000000000: n437_o <= 6'b000110;
      64'b0000000000000001000000000000000000000000000000000000000000000000: n437_o <= 6'b000000;
      64'b0000000000000000100000000000000000000000000000000000000000000000: n437_o <= 6'b100011;
      64'b0000000000000000010000000000000000000000000000000000000000000000: n437_o <= 6'b011110;
      64'b0000000000000000001000000000000000000000000000000000000000000000: n437_o <= 6'b011001;
      64'b0000000000000000000100000000000000000000000000000000000000000000: n437_o <= 6'b010100;
      64'b0000000000000000000010000000000000000000000000000000000000000000: n437_o <= 6'b001111;
      64'b0000000000000000000001000000000000000000000000000000000000000000: n437_o <= 6'b001010;
      64'b0000000000000000000000100000000000000000000000000000000000000000: n437_o <= 6'b000101;
      64'b0000000000000000000000010000000000000000000000000000000000000000: n437_o <= 6'b000000;
      64'b0000000000000000000000001000000000000000000000000000000000000000: n437_o <= 6'b011100;
      64'b0000000000000000000000000100000000000000000000000000000000000000: n437_o <= 6'b011000;
      64'b0000000000000000000000000010000000000000000000000000000000000000: n437_o <= 6'b010100;
      64'b0000000000000000000000000001000000000000000000000000000000000000: n437_o <= 6'b010000;
      64'b0000000000000000000000000000100000000000000000000000000000000000: n437_o <= 6'b001100;
      64'b0000000000000000000000000000010000000000000000000000000000000000: n437_o <= 6'b001000;
      64'b0000000000000000000000000000001000000000000000000000000000000000: n437_o <= 6'b000100;
      64'b0000000000000000000000000000000100000000000000000000000000000000: n437_o <= 6'b000000;
      64'b0000000000000000000000000000000010000000000000000000000000000000: n437_o <= 6'b010101;
      64'b0000000000000000000000000000000001000000000000000000000000000000: n437_o <= 6'b010010;
      64'b0000000000000000000000000000000000100000000000000000000000000000: n437_o <= 6'b001111;
      64'b0000000000000000000000000000000000010000000000000000000000000000: n437_o <= 6'b001100;
      64'b0000000000000000000000000000000000001000000000000000000000000000: n437_o <= 6'b001001;
      64'b0000000000000000000000000000000000000100000000000000000000000000: n437_o <= 6'b000110;
      64'b0000000000000000000000000000000000000010000000000000000000000000: n437_o <= 6'b000011;
      64'b0000000000000000000000000000000000000001000000000000000000000000: n437_o <= 6'b000000;
      64'b0000000000000000000000000000000000000000100000000000000000000000: n437_o <= 6'b001110;
      64'b0000000000000000000000000000000000000000010000000000000000000000: n437_o <= 6'b001100;
      64'b0000000000000000000000000000000000000000001000000000000000000000: n437_o <= 6'b001010;
      64'b0000000000000000000000000000000000000000000100000000000000000000: n437_o <= 6'b001000;
      64'b0000000000000000000000000000000000000000000010000000000000000000: n437_o <= 6'b000110;
      64'b0000000000000000000000000000000000000000000001000000000000000000: n437_o <= 6'b000100;
      64'b0000000000000000000000000000000000000000000000100000000000000000: n437_o <= 6'b000010;
      64'b0000000000000000000000000000000000000000000000010000000000000000: n437_o <= 6'b000000;
      64'b0000000000000000000000000000000000000000000000001000000000000000: n437_o <= 6'b000111;
      64'b0000000000000000000000000000000000000000000000000100000000000000: n437_o <= 6'b000110;
      64'b0000000000000000000000000000000000000000000000000010000000000000: n437_o <= 6'b000101;
      64'b0000000000000000000000000000000000000000000000000001000000000000: n437_o <= 6'b000100;
      64'b0000000000000000000000000000000000000000000000000000100000000000: n437_o <= 6'b000011;
      64'b0000000000000000000000000000000000000000000000000000010000000000: n437_o <= 6'b000010;
      64'b0000000000000000000000000000000000000000000000000000001000000000: n437_o <= 6'b000001;
      64'b0000000000000000000000000000000000000000000000000000000100000000: n437_o <= 6'b000000;
      64'b0000000000000000000000000000000000000000000000000000000010000000: n437_o <= 6'b000000;
      64'b0000000000000000000000000000000000000000000000000000000001000000: n437_o <= 6'b000000;
      64'b0000000000000000000000000000000000000000000000000000000000100000: n437_o <= 6'b000000;
      64'b0000000000000000000000000000000000000000000000000000000000010000: n437_o <= 6'b000000;
      64'b0000000000000000000000000000000000000000000000000000000000001000: n437_o <= 6'b000000;
      64'b0000000000000000000000000000000000000000000000000000000000000100: n437_o <= 6'b000000;
      64'b0000000000000000000000000000000000000000000000000000000000000010: n437_o <= 6'b000000;
      64'b0000000000000000000000000000000000000000000000000000000000000001: n437_o <= 6'b000000;
      default: n437_o <= 6'bXXXXXX;
    endcase
endmodule

module intadder_10_f400_uid42
  (input  clk,
   input  rst,
   input  ce,
   input  [9:0] x,
   input  [9:0] y,
   input  cin,
   output [9:0] r);
  wire [9:0] n235_o;
  wire [9:0] n236_o;
  wire [9:0] n237_o;
  assign r = n237_o;
  /* flopoco_fmul_4_4.vhdl:533:12  */
  assign n235_o = x + y;
  /* flopoco_fmul_4_4.vhdl:533:16  */
  assign n236_o = {9'b0, cin};  //  uext
  /* flopoco_fmul_4_4.vhdl:533:16  */
  assign n237_o = n235_o + n236_o;
endmodule

module intmultiplier_usingdsp_5_5_10_unsigned_f400_uid4
  (input  clk,
   input  rst,
   input  ce,
   input  [4:0] x,
   input  [4:0] y,
   output [9:0] r);
  wire [4:0] xx_m5;
  wire [4:0] yy_m5;
  wire [5:0] xp_m5b7;
  wire [5:0] yp_m5b7;
  wire [2:0] x_m5b7_0;
  wire [2:0] x_m5b7_1;
  wire [2:0] y_m5b7_0;
  wire [2:0] y_m5b7_1;
  wire [5:0] y0x0_7_m5;
  wire [5:0] pp7x0y0_m5;
  wire heap_bh6_w0_0;
  wire heap_bh6_w1_0;
  wire heap_bh6_w2_0;
  wire heap_bh6_w3_0;
  wire [5:0] y0x1_7_m5;
  wire [5:0] pp7x1y0_m5;
  wire heap_bh6_w2_1;
  wire heap_bh6_w3_1;
  wire heap_bh6_w4_0;
  wire heap_bh6_w5_0;
  wire heap_bh6_w6_0;
  wire [5:0] y1x0_7_m5;
  wire [5:0] pp7x0y1_m5;
  wire heap_bh6_w2_2;
  wire heap_bh6_w3_2;
  wire heap_bh6_w4_1;
  wire heap_bh6_w5_1;
  wire heap_bh6_w6_1;
  wire [5:0] y1x1_7_m5;
  wire [5:0] pp7x1y1_m5;
  wire heap_bh6_w4_2;
  wire heap_bh6_w5_2;
  wire heap_bh6_w6_2;
  wire heap_bh6_w7_0;
  wire heap_bh6_w8_0;
  wire heap_bh6_w9_0;
  wire [1:0] tempr_bh6_0;
  wire [2:0] compressorin_bh6_0_0;
  wire [1:0] compressorin_bh6_0_1;
  wire [2:0] compressorout_bh6_0_0;
  wire heap_bh6_w2_3;
  wire heap_bh6_w3_3;
  wire heap_bh6_w4_3;
  wire [2:0] compressorin_bh6_1_2;
  wire [1:0] compressorin_bh6_1_3;
  wire [2:0] compressorout_bh6_1_1;
  wire heap_bh6_w4_4;
  wire heap_bh6_w5_3;
  wire heap_bh6_w6_3;
  wire [2:0] compressorin_bh6_2_4;
  wire compressorin_bh6_2_5;
  wire [2:0] compressorout_bh6_2_2;
  wire heap_bh6_w6_4;
  wire heap_bh6_w7_1;
  wire heap_bh6_w8_1;
  wire [7:0] finaladderin0_bh6;
  wire [7:0] finaladderin1_bh6;
  wire finaladdercin_bh6;
  wire [7:0] finaladderout_bh6;
  wire tempr_bh6_1;
  wire [10:0] compressionresult6;
  wire [5:0] n137_o;
  wire [5:0] n139_o;
  wire [2:0] n140_o;
  wire [2:0] n141_o;
  wire [2:0] n142_o;
  wire [2:0] n143_o;
  wire [5:0] n144_o;
  wire [5:0] pp_m5_7x0y0_tbl_n145;
  wire [5:0] pp_m5_7x0y0_tbl_y;
  wire n148_o;
  wire n149_o;
  wire n150_o;
  wire n151_o;
  wire [5:0] n152_o;
  wire [5:0] pp_m5_7x1y0_tbl_n153;
  wire [5:0] pp_m5_7x1y0_tbl_y;
  wire n156_o;
  wire n157_o;
  wire n158_o;
  wire n159_o;
  wire n160_o;
  wire [5:0] n161_o;
  wire [5:0] pp_m5_7x0y1_tbl_n162;
  wire [5:0] pp_m5_7x0y1_tbl_y;
  wire n165_o;
  wire n166_o;
  wire n167_o;
  wire n168_o;
  wire n169_o;
  wire [5:0] n170_o;
  wire [5:0] pp_m5_7x1y1_tbl_n171;
  wire [5:0] pp_m5_7x1y1_tbl_y;
  wire n174_o;
  wire n175_o;
  wire n176_o;
  wire n177_o;
  wire n178_o;
  wire n179_o;
  wire [1:0] n180_o;
  wire [1:0] n181_o;
  wire [2:0] n182_o;
  wire [1:0] n183_o;
  wire [2:0] compressor_bh6_0_n184;
  wire [2:0] compressor_bh6_0_r;
  wire n187_o;
  wire n188_o;
  wire n189_o;
  wire [1:0] n190_o;
  wire [2:0] n191_o;
  wire [1:0] n192_o;
  wire [2:0] compressor_bh6_1_n193;
  wire [2:0] compressor_bh6_1_r;
  wire n196_o;
  wire n197_o;
  wire n198_o;
  wire [1:0] n199_o;
  wire [2:0] n200_o;
  wire [2:0] compressor_bh6_2_n201;
  wire [2:0] compressor_bh6_2_r;
  wire n204_o;
  wire n205_o;
  wire n206_o;
  wire [1:0] n208_o;
  wire [2:0] n209_o;
  wire [3:0] n210_o;
  wire [4:0] n211_o;
  wire [5:0] n212_o;
  wire [6:0] n213_o;
  wire [7:0] n214_o;
  wire [2:0] n216_o;
  wire [3:0] n218_o;
  wire [4:0] n219_o;
  wire [5:0] n220_o;
  wire [6:0] n221_o;
  wire [7:0] n222_o;
  wire [7:0] adder_final6_0_n224;
  wire [7:0] adder_final6_0_r;
  wire [8:0] n227_o;
  wire [10:0] n228_o;
  wire [9:0] n229_o;
  assign r = n229_o;
  /* flopoco_fmul_4_4.vhdl:369:20  */
  assign xx_m5 = x; // (signal)
  /* flopoco_fmul_4_4.vhdl:370:20  */
  assign yy_m5 = y; // (signal)
  /* flopoco_fmul_4_4.vhdl:294:8  */
  assign xp_m5b7 = n137_o; // (signal)
  /* flopoco_fmul_4_4.vhdl:295:8  */
  assign yp_m5b7 = n139_o; // (signal)
  /* flopoco_fmul_4_4.vhdl:296:8  */
  assign x_m5b7_0 = n140_o; // (signal)
  /* flopoco_fmul_4_4.vhdl:297:8  */
  assign x_m5b7_1 = n141_o; // (signal)
  /* flopoco_fmul_4_4.vhdl:298:8  */
  assign y_m5b7_0 = n142_o; // (signal)
  /* flopoco_fmul_4_4.vhdl:299:8  */
  assign y_m5b7_1 = n143_o; // (signal)
  /* flopoco_fmul_4_4.vhdl:300:8  */
  assign y0x0_7_m5 = n144_o; // (signal)
  /* flopoco_fmul_4_4.vhdl:301:8  */
  assign pp7x0y0_m5 = pp_m5_7x0y0_tbl_n145; // (signal)
  /* flopoco_fmul_4_4.vhdl:302:8  */
  assign heap_bh6_w0_0 = n148_o; // (signal)
  /* flopoco_fmul_4_4.vhdl:303:8  */
  assign heap_bh6_w1_0 = n149_o; // (signal)
  /* flopoco_fmul_4_4.vhdl:304:8  */
  assign heap_bh6_w2_0 = n150_o; // (signal)
  /* flopoco_fmul_4_4.vhdl:305:8  */
  assign heap_bh6_w3_0 = n151_o; // (signal)
  /* flopoco_fmul_4_4.vhdl:306:8  */
  assign y0x1_7_m5 = n152_o; // (signal)
  /* flopoco_fmul_4_4.vhdl:307:8  */
  assign pp7x1y0_m5 = pp_m5_7x1y0_tbl_n153; // (signal)
  /* flopoco_fmul_4_4.vhdl:308:8  */
  assign heap_bh6_w2_1 = n156_o; // (signal)
  /* flopoco_fmul_4_4.vhdl:309:8  */
  assign heap_bh6_w3_1 = n157_o; // (signal)
  /* flopoco_fmul_4_4.vhdl:310:8  */
  assign heap_bh6_w4_0 = n158_o; // (signal)
  /* flopoco_fmul_4_4.vhdl:311:8  */
  assign heap_bh6_w5_0 = n159_o; // (signal)
  /* flopoco_fmul_4_4.vhdl:312:8  */
  assign heap_bh6_w6_0 = n160_o; // (signal)
  /* flopoco_fmul_4_4.vhdl:313:8  */
  assign y1x0_7_m5 = n161_o; // (signal)
  /* flopoco_fmul_4_4.vhdl:314:8  */
  assign pp7x0y1_m5 = pp_m5_7x0y1_tbl_n162; // (signal)
  /* flopoco_fmul_4_4.vhdl:315:8  */
  assign heap_bh6_w2_2 = n165_o; // (signal)
  /* flopoco_fmul_4_4.vhdl:316:8  */
  assign heap_bh6_w3_2 = n166_o; // (signal)
  /* flopoco_fmul_4_4.vhdl:317:8  */
  assign heap_bh6_w4_1 = n167_o; // (signal)
  /* flopoco_fmul_4_4.vhdl:318:8  */
  assign heap_bh6_w5_1 = n168_o; // (signal)
  /* flopoco_fmul_4_4.vhdl:319:8  */
  assign heap_bh6_w6_1 = n169_o; // (signal)
  /* flopoco_fmul_4_4.vhdl:320:8  */
  assign y1x1_7_m5 = n170_o; // (signal)
  /* flopoco_fmul_4_4.vhdl:321:8  */
  assign pp7x1y1_m5 = pp_m5_7x1y1_tbl_n171; // (signal)
  /* flopoco_fmul_4_4.vhdl:322:8  */
  assign heap_bh6_w4_2 = n174_o; // (signal)
  /* flopoco_fmul_4_4.vhdl:323:8  */
  assign heap_bh6_w5_2 = n175_o; // (signal)
  /* flopoco_fmul_4_4.vhdl:324:8  */
  assign heap_bh6_w6_2 = n176_o; // (signal)
  /* flopoco_fmul_4_4.vhdl:325:8  */
  assign heap_bh6_w7_0 = n177_o; // (signal)
  /* flopoco_fmul_4_4.vhdl:326:8  */
  assign heap_bh6_w8_0 = n178_o; // (signal)
  /* flopoco_fmul_4_4.vhdl:327:8  */
  assign heap_bh6_w9_0 = n179_o; // (signal)
  /* flopoco_fmul_4_4.vhdl:328:8  */
  assign tempr_bh6_0 = n180_o; // (signal)
  /* flopoco_fmul_4_4.vhdl:329:8  */
  assign compressorin_bh6_0_0 = n182_o; // (signal)
  /* flopoco_fmul_4_4.vhdl:330:8  */
  assign compressorin_bh6_0_1 = n183_o; // (signal)
  /* flopoco_fmul_4_4.vhdl:331:8  */
  assign compressorout_bh6_0_0 = compressor_bh6_0_n184; // (signal)
  /* flopoco_fmul_4_4.vhdl:332:8  */
  assign heap_bh6_w2_3 = n187_o; // (signal)
  /* flopoco_fmul_4_4.vhdl:333:8  */
  assign heap_bh6_w3_3 = n188_o; // (signal)
  /* flopoco_fmul_4_4.vhdl:334:8  */
  assign heap_bh6_w4_3 = n189_o; // (signal)
  /* flopoco_fmul_4_4.vhdl:335:8  */
  assign compressorin_bh6_1_2 = n191_o; // (signal)
  /* flopoco_fmul_4_4.vhdl:336:8  */
  assign compressorin_bh6_1_3 = n192_o; // (signal)
  /* flopoco_fmul_4_4.vhdl:337:8  */
  assign compressorout_bh6_1_1 = compressor_bh6_1_n193; // (signal)
  /* flopoco_fmul_4_4.vhdl:338:8  */
  assign heap_bh6_w4_4 = n196_o; // (signal)
  /* flopoco_fmul_4_4.vhdl:339:8  */
  assign heap_bh6_w5_3 = n197_o; // (signal)
  /* flopoco_fmul_4_4.vhdl:340:8  */
  assign heap_bh6_w6_3 = n198_o; // (signal)
  /* flopoco_fmul_4_4.vhdl:341:8  */
  assign compressorin_bh6_2_4 = n200_o; // (signal)
  /* flopoco_fmul_4_4.vhdl:342:8  */
  assign compressorin_bh6_2_5 = heap_bh6_w7_0; // (signal)
  /* flopoco_fmul_4_4.vhdl:343:8  */
  assign compressorout_bh6_2_2 = compressor_bh6_2_n201; // (signal)
  /* flopoco_fmul_4_4.vhdl:344:8  */
  assign heap_bh6_w6_4 = n204_o; // (signal)
  /* flopoco_fmul_4_4.vhdl:345:8  */
  assign heap_bh6_w7_1 = n205_o; // (signal)
  /* flopoco_fmul_4_4.vhdl:346:8  */
  assign heap_bh6_w8_1 = n206_o; // (signal)
  /* flopoco_fmul_4_4.vhdl:347:8  */
  assign finaladderin0_bh6 = n214_o; // (signal)
  /* flopoco_fmul_4_4.vhdl:348:8  */
  assign finaladderin1_bh6 = n222_o; // (signal)
  /* flopoco_fmul_4_4.vhdl:349:8  */
  assign finaladdercin_bh6 = 1'b0; // (signal)
  /* flopoco_fmul_4_4.vhdl:350:8  */
  assign finaladderout_bh6 = adder_final6_0_n224; // (signal)
  /* flopoco_fmul_4_4.vhdl:351:8  */
  assign tempr_bh6_1 = heap_bh6_w2_3; // (signal)
  /* flopoco_fmul_4_4.vhdl:352:8  */
  assign compressionresult6 = n228_o; // (signal)
  /* flopoco_fmul_4_4.vhdl:369:33  */
  assign n137_o = {xx_m5, 1'b0};
  /* flopoco_fmul_4_4.vhdl:370:33  */
  assign n139_o = {yy_m5, 1'b0};
  /* flopoco_fmul_4_4.vhdl:371:23  */
  assign n140_o = xp_m5b7[2:0];
  /* flopoco_fmul_4_4.vhdl:372:23  */
  assign n141_o = xp_m5b7[5:3];
  /* flopoco_fmul_4_4.vhdl:373:23  */
  assign n142_o = yp_m5b7[2:0];
  /* flopoco_fmul_4_4.vhdl:374:23  */
  assign n143_o = yp_m5b7[5:3];
  /* flopoco_fmul_4_4.vhdl:377:26  */
  assign n144_o = {y_m5b7_0, x_m5b7_0};
  /* flopoco_fmul_4_4.vhdl:383:23  */
  assign pp_m5_7x0y0_tbl_n145 = pp_m5_7x0y0_tbl_y; // (signal)
  /* flopoco_fmul_4_4.vhdl:378:4  */
  smallmulttablep3x3r6xuyu_f400_uid9 pp_m5_7x0y0_tbl (
    .clk(clk),
    .rst(rst),
    .ce(ce),
    .x(y0x0_7_m5),
    .y(pp_m5_7x0y0_tbl_y));
  /* flopoco_fmul_4_4.vhdl:385:31  */
  assign n148_o = pp7x0y0_m5[2];
  /* flopoco_fmul_4_4.vhdl:386:31  */
  assign n149_o = pp7x0y0_m5[3];
  /* flopoco_fmul_4_4.vhdl:387:31  */
  assign n150_o = pp7x0y0_m5[4];
  /* flopoco_fmul_4_4.vhdl:388:31  */
  assign n151_o = pp7x0y0_m5[5];
  /* flopoco_fmul_4_4.vhdl:390:26  */
  assign n152_o = {y_m5b7_0, x_m5b7_1};
  /* flopoco_fmul_4_4.vhdl:396:23  */
  assign pp_m5_7x1y0_tbl_n153 = pp_m5_7x1y0_tbl_y; // (signal)
  /* flopoco_fmul_4_4.vhdl:391:4  */
  smallmulttablep3x3r6xuyu_f400_uid9 pp_m5_7x1y0_tbl (
    .clk(clk),
    .rst(rst),
    .ce(ce),
    .x(y0x1_7_m5),
    .y(pp_m5_7x1y0_tbl_y));
  /* flopoco_fmul_4_4.vhdl:398:31  */
  assign n156_o = pp7x1y0_m5[1];
  /* flopoco_fmul_4_4.vhdl:399:31  */
  assign n157_o = pp7x1y0_m5[2];
  /* flopoco_fmul_4_4.vhdl:400:31  */
  assign n158_o = pp7x1y0_m5[3];
  /* flopoco_fmul_4_4.vhdl:401:31  */
  assign n159_o = pp7x1y0_m5[4];
  /* flopoco_fmul_4_4.vhdl:402:31  */
  assign n160_o = pp7x1y0_m5[5];
  /* flopoco_fmul_4_4.vhdl:405:26  */
  assign n161_o = {y_m5b7_1, x_m5b7_0};
  /* flopoco_fmul_4_4.vhdl:411:23  */
  assign pp_m5_7x0y1_tbl_n162 = pp_m5_7x0y1_tbl_y; // (signal)
  /* flopoco_fmul_4_4.vhdl:406:4  */
  smallmulttablep3x3r6xuyu_f400_uid9 pp_m5_7x0y1_tbl (
    .clk(clk),
    .rst(rst),
    .ce(ce),
    .x(y1x0_7_m5),
    .y(pp_m5_7x0y1_tbl_y));
  /* flopoco_fmul_4_4.vhdl:413:31  */
  assign n165_o = pp7x0y1_m5[1];
  /* flopoco_fmul_4_4.vhdl:414:31  */
  assign n166_o = pp7x0y1_m5[2];
  /* flopoco_fmul_4_4.vhdl:415:31  */
  assign n167_o = pp7x0y1_m5[3];
  /* flopoco_fmul_4_4.vhdl:416:31  */
  assign n168_o = pp7x0y1_m5[4];
  /* flopoco_fmul_4_4.vhdl:417:31  */
  assign n169_o = pp7x0y1_m5[5];
  /* flopoco_fmul_4_4.vhdl:419:26  */
  assign n170_o = {y_m5b7_1, x_m5b7_1};
  /* flopoco_fmul_4_4.vhdl:425:23  */
  assign pp_m5_7x1y1_tbl_n171 = pp_m5_7x1y1_tbl_y; // (signal)
  /* flopoco_fmul_4_4.vhdl:420:4  */
  smallmulttablep3x3r6xuyu_f400_uid9 pp_m5_7x1y1_tbl (
    .clk(clk),
    .rst(rst),
    .ce(ce),
    .x(y1x1_7_m5),
    .y(pp_m5_7x1y1_tbl_y));
  /* flopoco_fmul_4_4.vhdl:427:31  */
  assign n174_o = pp7x1y1_m5[0];
  /* flopoco_fmul_4_4.vhdl:428:31  */
  assign n175_o = pp7x1y1_m5[1];
  /* flopoco_fmul_4_4.vhdl:429:31  */
  assign n176_o = pp7x1y1_m5[2];
  /* flopoco_fmul_4_4.vhdl:430:31  */
  assign n177_o = pp7x1y1_m5[3];
  /* flopoco_fmul_4_4.vhdl:431:31  */
  assign n178_o = pp7x1y1_m5[4];
  /* flopoco_fmul_4_4.vhdl:432:31  */
  assign n179_o = pp7x1y1_m5[5];
  /* flopoco_fmul_4_4.vhdl:444:33  */
  assign n180_o = {heap_bh6_w1_0, heap_bh6_w0_0};
  /* flopoco_fmul_4_4.vhdl:447:42  */
  assign n181_o = {heap_bh6_w2_2, heap_bh6_w2_1};
  /* flopoco_fmul_4_4.vhdl:447:58  */
  assign n182_o = {n181_o, heap_bh6_w2_0};
  /* flopoco_fmul_4_4.vhdl:448:42  */
  assign n183_o = {heap_bh6_w3_2, heap_bh6_w3_1};
  /* flopoco_fmul_4_4.vhdl:450:23  */
  assign compressor_bh6_0_n184 = compressor_bh6_0_r; // (signal)
  /* flopoco_fmul_4_4.vhdl:449:7  */
  compressor_23_3 compressor_bh6_0 (
    .x0(compressorin_bh6_0_0),
    .x1(compressorin_bh6_0_1),
    .r(compressor_bh6_0_r));
  /* flopoco_fmul_4_4.vhdl:453:42  */
  assign n187_o = compressorout_bh6_0_0[0];
  /* flopoco_fmul_4_4.vhdl:454:42  */
  assign n188_o = compressorout_bh6_0_0[1];
  /* flopoco_fmul_4_4.vhdl:455:42  */
  assign n189_o = compressorout_bh6_0_0[2];
  /* flopoco_fmul_4_4.vhdl:458:42  */
  assign n190_o = {heap_bh6_w4_2, heap_bh6_w4_1};
  /* flopoco_fmul_4_4.vhdl:458:58  */
  assign n191_o = {n190_o, heap_bh6_w4_0};
  /* flopoco_fmul_4_4.vhdl:459:42  */
  assign n192_o = {heap_bh6_w5_2, heap_bh6_w5_1};
  /* flopoco_fmul_4_4.vhdl:461:23  */
  assign compressor_bh6_1_n193 = compressor_bh6_1_r; // (signal)
  /* flopoco_fmul_4_4.vhdl:460:7  */
  compressor_23_3 compressor_bh6_1 (
    .x0(compressorin_bh6_1_2),
    .x1(compressorin_bh6_1_3),
    .r(compressor_bh6_1_r));
  /* flopoco_fmul_4_4.vhdl:464:42  */
  assign n196_o = compressorout_bh6_1_1[0];
  /* flopoco_fmul_4_4.vhdl:465:42  */
  assign n197_o = compressorout_bh6_1_1[1];
  /* flopoco_fmul_4_4.vhdl:466:42  */
  assign n198_o = compressorout_bh6_1_1[2];
  /* flopoco_fmul_4_4.vhdl:469:42  */
  assign n199_o = {heap_bh6_w6_2, heap_bh6_w6_1};
  /* flopoco_fmul_4_4.vhdl:469:58  */
  assign n200_o = {n199_o, heap_bh6_w6_0};
  /* flopoco_fmul_4_4.vhdl:472:23  */
  assign compressor_bh6_2_n201 = compressor_bh6_2_r; // (signal)
  /* flopoco_fmul_4_4.vhdl:471:7  */
  compressor_13_3 compressor_bh6_2 (
    .x0(compressorin_bh6_2_4),
    .x1(compressorin_bh6_2_5),
    .r(compressor_bh6_2_r));
  /* flopoco_fmul_4_4.vhdl:475:42  */
  assign n204_o = compressorout_bh6_2_2[0];
  /* flopoco_fmul_4_4.vhdl:476:42  */
  assign n205_o = compressorout_bh6_2_2[1];
  /* flopoco_fmul_4_4.vhdl:477:42  */
  assign n206_o = compressorout_bh6_2_2[2];
  /* flopoco_fmul_4_4.vhdl:479:29  */
  assign n208_o = {1'b0, heap_bh6_w9_0};
  /* flopoco_fmul_4_4.vhdl:479:45  */
  assign n209_o = {n208_o, heap_bh6_w8_0};
  /* flopoco_fmul_4_4.vhdl:479:61  */
  assign n210_o = {n209_o, heap_bh6_w7_1};
  /* flopoco_fmul_4_4.vhdl:479:77  */
  assign n211_o = {n210_o, heap_bh6_w6_4};
  /* flopoco_fmul_4_4.vhdl:479:93  */
  assign n212_o = {n211_o, heap_bh6_w5_0};
  /* flopoco_fmul_4_4.vhdl:479:109  */
  assign n213_o = {n212_o, heap_bh6_w4_4};
  /* flopoco_fmul_4_4.vhdl:479:125  */
  assign n214_o = {n213_o, heap_bh6_w3_0};
  /* flopoco_fmul_4_4.vhdl:480:35  */
  assign n216_o = {2'b00, heap_bh6_w8_1};
  /* flopoco_fmul_4_4.vhdl:480:51  */
  assign n218_o = {n216_o, 1'b0};
  /* flopoco_fmul_4_4.vhdl:480:57  */
  assign n219_o = {n218_o, heap_bh6_w6_3};
  /* flopoco_fmul_4_4.vhdl:480:73  */
  assign n220_o = {n219_o, heap_bh6_w5_3};
  /* flopoco_fmul_4_4.vhdl:480:89  */
  assign n221_o = {n220_o, heap_bh6_w4_3};
  /* flopoco_fmul_4_4.vhdl:480:105  */
  assign n222_o = {n221_o, heap_bh6_w3_3};
  /* flopoco_fmul_4_4.vhdl:487:23  */
  assign adder_final6_0_n224 = adder_final6_0_r; // (signal)
  /* flopoco_fmul_4_4.vhdl:482:7  */
  intadder_8_f400_uid32 adder_final6_0 (
    .clk(clk),
    .rst(rst),
    .ce(ce),
    .x(finaladderin0_bh6),
    .y(finaladderin1_bh6),
    .cin(finaladdercin_bh6),
    .r(adder_final6_0_r));
  /* flopoco_fmul_4_4.vhdl:493:44  */
  assign n227_o = {finaladderout_bh6, tempr_bh6_1};
  /* flopoco_fmul_4_4.vhdl:493:58  */
  assign n228_o = {n227_o, tempr_bh6_0};
  /* flopoco_fmul_4_4.vhdl:495:27  */
  assign n229_o = compressionresult6[9:0];
endmodule

module fmul
  (input  clk,
   input  rst,
   input  ce,
   input  [10:0] X,
   input  [10:0] Y,
   output [10:0] R);
  wire sign;
  wire sign_d1;
  wire [3:0] expx;
  wire [3:0] expy;
  wire [5:0] expsumpresub;
  wire [5:0] bias;
  wire [5:0] expsum;
  wire [5:0] expsum_d1;
  wire [4:0] sigx;
  wire [4:0] sigy;
  wire [9:0] sigprod;
  wire [3:0] excsel;
  wire [1:0] exc;
  wire [1:0] exc_d1;
  wire norm;
  wire norm_d1;
  wire [5:0] exppostnorm;
  wire [9:0] sigprodext;
  wire [9:0] sigprodext_d1;
  wire [9:0] expsig;
  wire sticky;
  wire guard;
  wire round;
  wire [9:0] expsigpostround;
  wire [1:0] excpostnorm;
  wire [1:0] finalexc;
  wire n15_o;
  reg n16_q;
  wire [5:0] n17_o;
  reg [5:0] n18_q;
  wire [1:0] n19_o;
  reg [1:0] n20_q;
  wire n21_o;
  reg n22_q;
  wire [9:0] n23_o;
  reg [9:0] n24_q;
  wire n25_o;
  wire n26_o;
  wire n27_o;
  wire [3:0] n28_o;
  wire [3:0] n29_o;
  wire [5:0] n31_o;
  wire [5:0] n33_o;
  wire [5:0] n34_o;
  wire [5:0] n36_o;
  wire [3:0] n37_o;
  wire [4:0] n39_o;
  wire [3:0] n40_o;
  wire [4:0] n42_o;
  wire [9:0] significandmultiplication_n43;
  wire [9:0] significandmultiplication_r;
  wire [1:0] n46_o;
  wire [1:0] n47_o;
  wire [3:0] n48_o;
  wire n51_o;
  wire n53_o;
  wire n54_o;
  wire n56_o;
  wire n57_o;
  wire n60_o;
  wire n63_o;
  wire n65_o;
  wire n66_o;
  wire n68_o;
  wire n69_o;
  wire [2:0] n71_o;
  reg [1:0] n72_o;
  wire n73_o;
  wire [5:0] n75_o;
  wire [5:0] n76_o;
  wire [8:0] n77_o;
  wire [9:0] n79_o;
  wire [9:0] n80_o;
  wire [7:0] n81_o;
  wire [9:0] n83_o;
  wire [3:0] n84_o;
  wire [9:0] n85_o;
  wire n86_o;
  wire [4:0] n88_o;
  wire n90_o;
  wire n91_o;
  wire n93_o;
  wire n94_o;
  wire n95_o;
  wire n96_o;
  wire n97_o;
  wire n98_o;
  localparam [9:0] n99_o = 10'b0000000000;
  wire [9:0] roundingadder_n100;
  wire [9:0] roundingadder_r;
  wire [1:0] n103_o;
  wire n106_o;
  wire n109_o;
  wire n112_o;
  wire n114_o;
  wire n115_o;
  wire [2:0] n117_o;
  reg [1:0] n118_o;
  wire n120_o;
  wire n122_o;
  wire n123_o;
  wire n125_o;
  wire n126_o;
  reg [1:0] n127_o;
  wire [2:0] n128_o;
  wire [7:0] n129_o;
  wire [10:0] n130_o;
  assign R = n130_o;
  /* flopoco_fmul_4_4.vhdl:576:8  */
  assign sign = n27_o; // (signal)
  /* flopoco_fmul_4_4.vhdl:576:14  */
  assign sign_d1 = n16_q; // (signal)
  /* flopoco_fmul_4_4.vhdl:577:8  */
  assign expx = n28_o; // (signal)
  /* flopoco_fmul_4_4.vhdl:578:8  */
  assign expy = n29_o; // (signal)
  /* flopoco_fmul_4_4.vhdl:579:8  */
  assign expsumpresub = n34_o; // (signal)
  /* flopoco_fmul_4_4.vhdl:580:8  */
  assign bias = 6'b000111; // (signal)
  /* flopoco_fmul_4_4.vhdl:581:8  */
  assign expsum = n36_o; // (signal)
  /* flopoco_fmul_4_4.vhdl:581:16  */
  assign expsum_d1 = n18_q; // (signal)
  /* flopoco_fmul_4_4.vhdl:582:8  */
  assign sigx = n39_o; // (signal)
  /* flopoco_fmul_4_4.vhdl:583:8  */
  assign sigy = n42_o; // (signal)
  /* flopoco_fmul_4_4.vhdl:584:8  */
  assign sigprod = significandmultiplication_n43; // (signal)
  /* flopoco_fmul_4_4.vhdl:585:8  */
  assign excsel = n48_o; // (signal)
  /* flopoco_fmul_4_4.vhdl:586:8  */
  assign exc = n72_o; // (signal)
  /* flopoco_fmul_4_4.vhdl:586:13  */
  assign exc_d1 = n20_q; // (signal)
  /* flopoco_fmul_4_4.vhdl:587:8  */
  assign norm = n73_o; // (signal)
  /* flopoco_fmul_4_4.vhdl:587:14  */
  assign norm_d1 = n22_q; // (signal)
  /* flopoco_fmul_4_4.vhdl:588:8  */
  assign exppostnorm = n76_o; // (signal)
  /* flopoco_fmul_4_4.vhdl:589:8  */
  assign sigprodext = n80_o; // (signal)
  /* flopoco_fmul_4_4.vhdl:589:20  */
  assign sigprodext_d1 = n24_q; // (signal)
  /* flopoco_fmul_4_4.vhdl:590:8  */
  assign expsig = n85_o; // (signal)
  /* flopoco_fmul_4_4.vhdl:591:8  */
  assign sticky = n86_o; // (signal)
  /* flopoco_fmul_4_4.vhdl:592:8  */
  assign guard = n91_o; // (signal)
  /* flopoco_fmul_4_4.vhdl:593:8  */
  assign round = n98_o; // (signal)
  /* flopoco_fmul_4_4.vhdl:594:8  */
  assign expsigpostround = roundingadder_n100; // (signal)
  /* flopoco_fmul_4_4.vhdl:595:8  */
  assign excpostnorm = n118_o; // (signal)
  /* flopoco_fmul_4_4.vhdl:596:8  */
  assign finalexc = n127_o; // (signal)
  /* flopoco_fmul_4_4.vhdl:600:10  */
  assign n15_o = ce ? sign : sign_d1;
  /* flopoco_fmul_4_4.vhdl:600:10  */
  always @(posedge clk)
    n16_q <= n15_o;
  /* flopoco_fmul_4_4.vhdl:600:10  */
  assign n17_o = ce ? expsum : expsum_d1;
  /* flopoco_fmul_4_4.vhdl:600:10  */
  always @(posedge clk)
    n18_q <= n17_o;
  /* flopoco_fmul_4_4.vhdl:600:10  */
  assign n19_o = ce ? exc : exc_d1;
  /* flopoco_fmul_4_4.vhdl:600:10  */
  always @(posedge clk)
    n20_q <= n19_o;
  /* flopoco_fmul_4_4.vhdl:600:10  */
  assign n21_o = ce ? norm : norm_d1;
  /* flopoco_fmul_4_4.vhdl:600:10  */
  always @(posedge clk)
    n22_q <= n21_o;
  /* flopoco_fmul_4_4.vhdl:600:10  */
  assign n23_o = ce ? sigprodext : sigprodext_d1;
  /* flopoco_fmul_4_4.vhdl:600:10  */
  always @(posedge clk)
    n24_q <= n23_o;
  /* flopoco_fmul_4_4.vhdl:610:13  */
  assign n25_o = X[8];
  /* flopoco_fmul_4_4.vhdl:610:22  */
  assign n26_o = Y[8];
  /* flopoco_fmul_4_4.vhdl:610:17  */
  assign n27_o = n25_o ^ n26_o;
  /* flopoco_fmul_4_4.vhdl:611:13  */
  assign n28_o = X[7:4];
  /* flopoco_fmul_4_4.vhdl:612:13  */
  assign n29_o = Y[7:4];
  /* flopoco_fmul_4_4.vhdl:613:26  */
  assign n31_o = {2'b00, expx};
  /* flopoco_fmul_4_4.vhdl:613:42  */
  assign n33_o = {2'b00, expy};
  /* flopoco_fmul_4_4.vhdl:613:34  */
  assign n34_o = n31_o + n33_o;
  /* flopoco_fmul_4_4.vhdl:615:27  */
  assign n36_o = expsumpresub - bias;
  /* flopoco_fmul_4_4.vhdl:617:19  */
  assign n37_o = X[3:0];
  /* flopoco_fmul_4_4.vhdl:617:16  */
  assign n39_o = {1'b1, n37_o};
  /* flopoco_fmul_4_4.vhdl:618:19  */
  assign n40_o = Y[3:0];
  /* flopoco_fmul_4_4.vhdl:618:16  */
  assign n42_o = {1'b1, n40_o};
  /* flopoco_fmul_4_4.vhdl:623:23  */
  assign significandmultiplication_n43 = significandmultiplication_r; // (signal)
  /* flopoco_fmul_4_4.vhdl:619:4  */
  intmultiplier_usingdsp_5_5_10_unsigned_f400_uid4 significandmultiplication (
    .clk(clk),
    .rst(rst),
    .ce(ce),
    .x(sigx),
    .y(sigy),
    .r(significandmultiplication_r));
  /* flopoco_fmul_4_4.vhdl:627:15  */
  assign n46_o = X[10:9];
  /* flopoco_fmul_4_4.vhdl:627:32  */
  assign n47_o = Y[10:9];
  /* flopoco_fmul_4_4.vhdl:627:29  */
  assign n48_o = {n46_o, n47_o};
  /* flopoco_fmul_4_4.vhdl:629:16  */
  assign n51_o = excsel == 4'b0000;
  /* flopoco_fmul_4_4.vhdl:629:29  */
  assign n53_o = excsel == 4'b0001;
  /* flopoco_fmul_4_4.vhdl:629:29  */
  assign n54_o = n51_o | n53_o;
  /* flopoco_fmul_4_4.vhdl:629:38  */
  assign n56_o = excsel == 4'b0100;
  /* flopoco_fmul_4_4.vhdl:629:38  */
  assign n57_o = n54_o | n56_o;
  /* flopoco_fmul_4_4.vhdl:630:16  */
  assign n60_o = excsel == 4'b0101;
  /* flopoco_fmul_4_4.vhdl:631:16  */
  assign n63_o = excsel == 4'b0110;
  /* flopoco_fmul_4_4.vhdl:631:28  */
  assign n65_o = excsel == 4'b1001;
  /* flopoco_fmul_4_4.vhdl:631:28  */
  assign n66_o = n63_o | n65_o;
  /* flopoco_fmul_4_4.vhdl:631:37  */
  assign n68_o = excsel == 4'b1010;
  /* flopoco_fmul_4_4.vhdl:631:37  */
  assign n69_o = n66_o | n68_o;
  assign n71_o = {n69_o, n60_o, n57_o};
  /* flopoco_fmul_4_4.vhdl:628:4  */
  always @*
    case (n71_o)
      3'b100: n72_o <= 2'b10;
      3'b010: n72_o <= 2'b01;
      3'b001: n72_o <= 2'b00;
      default: n72_o <= 2'b11;
    endcase
  /* flopoco_fmul_4_4.vhdl:633:19  */
  assign n73_o = sigprod[9];
  /* flopoco_fmul_4_4.vhdl:636:40  */
  assign n75_o = {5'b00000, norm_d1};
  /* flopoco_fmul_4_4.vhdl:636:29  */
  assign n76_o = expsum_d1 + n75_o;
  /* flopoco_fmul_4_4.vhdl:638:25  */
  assign n77_o = sigprod[8:0];
  /* flopoco_fmul_4_4.vhdl:638:38  */
  assign n79_o = {n77_o, 1'b0};
  /* flopoco_fmul_4_4.vhdl:638:44  */
  assign n80_o = norm ? n79_o : n83_o;
  /* flopoco_fmul_4_4.vhdl:639:33  */
  assign n81_o = sigprod[7:0];
  /* flopoco_fmul_4_4.vhdl:639:46  */
  assign n83_o = {n81_o, 2'b00};
  /* flopoco_fmul_4_4.vhdl:641:41  */
  assign n84_o = sigprodext_d1[9:6];
  /* flopoco_fmul_4_4.vhdl:641:26  */
  assign n85_o = {exppostnorm, n84_o};
  /* flopoco_fmul_4_4.vhdl:642:27  */
  assign n86_o = sigprodext_d1[5];
  /* flopoco_fmul_4_4.vhdl:643:35  */
  assign n88_o = sigprodext_d1[4:0];
  /* flopoco_fmul_4_4.vhdl:643:47  */
  assign n90_o = n88_o == 5'b00000;
  /* flopoco_fmul_4_4.vhdl:643:17  */
  assign n91_o = n90_o ? 1'b0 : 1'b1;
  /* flopoco_fmul_4_4.vhdl:644:54  */
  assign n93_o = sigprodext_d1[6];
  /* flopoco_fmul_4_4.vhdl:644:37  */
  assign n94_o = ~n93_o;
  /* flopoco_fmul_4_4.vhdl:644:33  */
  assign n95_o = guard & n94_o;
  /* flopoco_fmul_4_4.vhdl:644:77  */
  assign n96_o = sigprodext_d1[6];
  /* flopoco_fmul_4_4.vhdl:644:60  */
  assign n97_o = n95_o | n96_o;
  /* flopoco_fmul_4_4.vhdl:644:20  */
  assign n98_o = sticky & n97_o;
  /* flopoco_fmul_4_4.vhdl:650:23  */
  assign roundingadder_n100 = roundingadder_r; // (signal)
  /* flopoco_fmul_4_4.vhdl:645:7  */
  intadder_10_f400_uid42 roundingadder (
    .clk(clk),
    .rst(rst),
    .ce(ce),
    .x(expsig),
    .y(n99_o),
    .cin(round),
    .r(roundingadder_r));
  /* flopoco_fmul_4_4.vhdl:653:24  */
  assign n103_o = expsigpostround[9:8];
  /* flopoco_fmul_4_4.vhdl:654:26  */
  assign n106_o = n103_o == 2'b00;
  /* flopoco_fmul_4_4.vhdl:655:49  */
  assign n109_o = n103_o == 2'b01;
  /* flopoco_fmul_4_4.vhdl:656:49  */
  assign n112_o = n103_o == 2'b11;
  /* flopoco_fmul_4_4.vhdl:656:58  */
  assign n114_o = n103_o == 2'b10;
  /* flopoco_fmul_4_4.vhdl:656:58  */
  assign n115_o = n112_o | n114_o;
  assign n117_o = {n115_o, n109_o, n106_o};
  /* flopoco_fmul_4_4.vhdl:653:4  */
  always @*
    case (n117_o)
      3'b100: n118_o <= 2'b00;
      3'b010: n118_o <= 2'b10;
      3'b001: n118_o <= 2'b01;
      default: n118_o <= 2'b11;
    endcase
  /* flopoco_fmul_4_4.vhdl:659:23  */
  assign n120_o = exc_d1 == 2'b11;
  /* flopoco_fmul_4_4.vhdl:659:33  */
  assign n122_o = exc_d1 == 2'b10;
  /* flopoco_fmul_4_4.vhdl:659:33  */
  assign n123_o = n120_o | n122_o;
  /* flopoco_fmul_4_4.vhdl:659:38  */
  assign n125_o = exc_d1 == 2'b00;
  /* flopoco_fmul_4_4.vhdl:659:38  */
  assign n126_o = n123_o | n125_o;
  /* flopoco_fmul_4_4.vhdl:658:4  */
  always @*
    case (n126_o)
      1'b1: n127_o <= exc_d1;
      default: n127_o <= excpostnorm;
    endcase
  /* flopoco_fmul_4_4.vhdl:661:18  */
  assign n128_o = {finalexc, sign_d1};
  /* flopoco_fmul_4_4.vhdl:661:45  */
  assign n129_o = expsigpostround[7:0];
  /* flopoco_fmul_4_4.vhdl:661:28  */
  assign n130_o = {n128_o, n129_o};
endmodule

