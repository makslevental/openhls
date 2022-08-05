module intadder_13_f350_uid58
  (input  clk,
   input  rst,
   input  [12:0] x,
   input  [12:0] y,
   input  cin,
   output [12:0] r);
  wire [12:0] n841_o;
  wire [12:0] n842_o;
  wire [12:0] n843_o;
  assign r = n843_o;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:337:12  */
  assign n841_o = x + y;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:337:16  */
  assign n842_o = {12'b0, cin};  //  uext
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:337:16  */
  assign n843_o = n841_o + n842_o;
endmodule

module compressor_3_2
  (input  [2:0] x0,
   output [1:0] r);
  wire [2:0] x;
  wire n811_o;
  wire n814_o;
  wire n817_o;
  wire n820_o;
  wire n823_o;
  wire n826_o;
  wire n829_o;
  wire n832_o;
  wire [7:0] n834_o;
  reg [1:0] n835_o;
  assign r = n835_o;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:288:8  */
  assign x = x0; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:292:12  */
  assign n811_o = x == 3'b000;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:293:12  */
  assign n814_o = x == 3'b001;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:294:12  */
  assign n817_o = x == 3'b010;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:295:12  */
  assign n820_o = x == 3'b011;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:296:12  */
  assign n823_o = x == 3'b100;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:297:12  */
  assign n826_o = x == 3'b101;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:298:12  */
  assign n829_o = x == 3'b110;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:299:12  */
  assign n832_o = x == 3'b111;
  assign n834_o = {n832_o, n829_o, n826_o, n823_o, n820_o, n817_o, n814_o, n811_o};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:291:4  */
  always @*
    case (n834_o)
      8'b10000000: n835_o <= 2'b11;
      8'b01000000: n835_o <= 2'b10;
      8'b00100000: n835_o <= 2'b10;
      8'b00010000: n835_o <= 2'b01;
      8'b00001000: n835_o <= 2'b10;
      8'b00000100: n835_o <= 2'b01;
      8'b00000010: n835_o <= 2'b01;
      8'b00000001: n835_o <= 2'b00;
      default: n835_o <= 2'bXX;
    endcase
endmodule

module compressor_13_3
  (input  [2:0] x0,
   input  x1,
   output [2:0] r);
  wire [3:0] x;
  wire [3:0] n756_o;
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
  wire [15:0] n806_o;
  reg [2:0] n807_o;
  assign r = n807_o;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:242:8  */
  assign x = n756_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:244:11  */
  assign n756_o = {x1, x0};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:246:13  */
  assign n759_o = x == 4'b0000;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:247:13  */
  assign n762_o = x == 4'b0001;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:248:13  */
  assign n765_o = x == 4'b0010;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:249:13  */
  assign n768_o = x == 4'b0011;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:250:13  */
  assign n771_o = x == 4'b0100;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:251:13  */
  assign n774_o = x == 4'b0101;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:252:13  */
  assign n777_o = x == 4'b0110;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:253:13  */
  assign n780_o = x == 4'b0111;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:254:13  */
  assign n783_o = x == 4'b1000;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:255:13  */
  assign n786_o = x == 4'b1001;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:256:13  */
  assign n789_o = x == 4'b1010;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:257:13  */
  assign n792_o = x == 4'b1011;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:258:13  */
  assign n795_o = x == 4'b1100;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:259:13  */
  assign n798_o = x == 4'b1101;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:260:13  */
  assign n801_o = x == 4'b1110;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:261:13  */
  assign n804_o = x == 4'b1111;
  assign n806_o = {n804_o, n801_o, n798_o, n795_o, n792_o, n789_o, n786_o, n783_o, n780_o, n777_o, n774_o, n771_o, n768_o, n765_o, n762_o, n759_o};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:245:4  */
  always @*
    case (n806_o)
      16'b1000000000000000: n807_o <= 3'b101;
      16'b0100000000000000: n807_o <= 3'b100;
      16'b0010000000000000: n807_o <= 3'b100;
      16'b0001000000000000: n807_o <= 3'b011;
      16'b0000100000000000: n807_o <= 3'b100;
      16'b0000010000000000: n807_o <= 3'b011;
      16'b0000001000000000: n807_o <= 3'b011;
      16'b0000000100000000: n807_o <= 3'b010;
      16'b0000000010000000: n807_o <= 3'b011;
      16'b0000000001000000: n807_o <= 3'b010;
      16'b0000000000100000: n807_o <= 3'b010;
      16'b0000000000010000: n807_o <= 3'b001;
      16'b0000000000001000: n807_o <= 3'b010;
      16'b0000000000000100: n807_o <= 3'b001;
      16'b0000000000000010: n807_o <= 3'b001;
      16'b0000000000000001: n807_o <= 3'b000;
      default: n807_o <= 3'bXXX;
    endcase
endmodule

module compressor_23_3
  (input  [2:0] x0,
   input  [1:0] x1,
   output [2:0] r);
  wire [4:0] x;
  wire [4:0] n655_o;
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
  wire [31:0] n753_o;
  reg [2:0] n754_o;
  assign r = n754_o;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:179:8  */
  assign x = n655_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:181:11  */
  assign n655_o = {x1, x0};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:183:13  */
  assign n658_o = x == 5'b00000;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:184:13  */
  assign n661_o = x == 5'b00001;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:185:13  */
  assign n664_o = x == 5'b00010;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:186:13  */
  assign n667_o = x == 5'b00011;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:187:13  */
  assign n670_o = x == 5'b00100;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:188:13  */
  assign n673_o = x == 5'b00101;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:189:13  */
  assign n676_o = x == 5'b00110;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:190:13  */
  assign n679_o = x == 5'b00111;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:191:13  */
  assign n682_o = x == 5'b01000;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:192:13  */
  assign n685_o = x == 5'b01001;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:193:13  */
  assign n688_o = x == 5'b01010;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:194:13  */
  assign n691_o = x == 5'b01011;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:195:13  */
  assign n694_o = x == 5'b01100;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:196:13  */
  assign n697_o = x == 5'b01101;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:197:13  */
  assign n700_o = x == 5'b01110;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:198:13  */
  assign n703_o = x == 5'b01111;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:199:13  */
  assign n706_o = x == 5'b10000;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:200:13  */
  assign n709_o = x == 5'b10001;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:201:13  */
  assign n712_o = x == 5'b10010;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:202:13  */
  assign n715_o = x == 5'b10011;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:203:13  */
  assign n718_o = x == 5'b10100;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:204:13  */
  assign n721_o = x == 5'b10101;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:205:13  */
  assign n724_o = x == 5'b10110;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:206:13  */
  assign n727_o = x == 5'b10111;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:207:13  */
  assign n730_o = x == 5'b11000;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:208:13  */
  assign n733_o = x == 5'b11001;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:209:13  */
  assign n736_o = x == 5'b11010;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:210:13  */
  assign n739_o = x == 5'b11011;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:211:13  */
  assign n742_o = x == 5'b11100;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:212:13  */
  assign n745_o = x == 5'b11101;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:213:13  */
  assign n748_o = x == 5'b11110;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:214:13  */
  assign n751_o = x == 5'b11111;
  assign n753_o = {n751_o, n748_o, n745_o, n742_o, n739_o, n736_o, n733_o, n730_o, n727_o, n724_o, n721_o, n718_o, n715_o, n712_o, n709_o, n706_o, n703_o, n700_o, n697_o, n694_o, n691_o, n688_o, n685_o, n682_o, n679_o, n676_o, n673_o, n670_o, n667_o, n664_o, n661_o, n658_o};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:182:4  */
  always @*
    case (n753_o)
      32'b10000000000000000000000000000000: n754_o <= 3'b111;
      32'b01000000000000000000000000000000: n754_o <= 3'b110;
      32'b00100000000000000000000000000000: n754_o <= 3'b110;
      32'b00010000000000000000000000000000: n754_o <= 3'b101;
      32'b00001000000000000000000000000000: n754_o <= 3'b110;
      32'b00000100000000000000000000000000: n754_o <= 3'b101;
      32'b00000010000000000000000000000000: n754_o <= 3'b101;
      32'b00000001000000000000000000000000: n754_o <= 3'b100;
      32'b00000000100000000000000000000000: n754_o <= 3'b101;
      32'b00000000010000000000000000000000: n754_o <= 3'b100;
      32'b00000000001000000000000000000000: n754_o <= 3'b100;
      32'b00000000000100000000000000000000: n754_o <= 3'b011;
      32'b00000000000010000000000000000000: n754_o <= 3'b100;
      32'b00000000000001000000000000000000: n754_o <= 3'b011;
      32'b00000000000000100000000000000000: n754_o <= 3'b011;
      32'b00000000000000010000000000000000: n754_o <= 3'b010;
      32'b00000000000000001000000000000000: n754_o <= 3'b101;
      32'b00000000000000000100000000000000: n754_o <= 3'b100;
      32'b00000000000000000010000000000000: n754_o <= 3'b100;
      32'b00000000000000000001000000000000: n754_o <= 3'b011;
      32'b00000000000000000000100000000000: n754_o <= 3'b100;
      32'b00000000000000000000010000000000: n754_o <= 3'b011;
      32'b00000000000000000000001000000000: n754_o <= 3'b011;
      32'b00000000000000000000000100000000: n754_o <= 3'b010;
      32'b00000000000000000000000010000000: n754_o <= 3'b011;
      32'b00000000000000000000000001000000: n754_o <= 3'b010;
      32'b00000000000000000000000000100000: n754_o <= 3'b010;
      32'b00000000000000000000000000010000: n754_o <= 3'b001;
      32'b00000000000000000000000000001000: n754_o <= 3'b010;
      32'b00000000000000000000000000000100: n754_o <= 3'b001;
      32'b00000000000000000000000000000010: n754_o <= 3'b001;
      32'b00000000000000000000000000000001: n754_o <= 3'b000;
      default: n754_o <= 3'bXXX;
    endcase
endmodule

module compressor_14_3
  (input  [3:0] x0,
   input  x1,
   output [2:0] r);
  wire [4:0] x;
  wire [4:0] n554_o;
  wire n557_o;
  wire n560_o;
  wire n563_o;
  wire n566_o;
  wire n569_o;
  wire n572_o;
  wire n575_o;
  wire n578_o;
  wire n581_o;
  wire n584_o;
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
  wire [31:0] n652_o;
  reg [2:0] n653_o;
  assign r = n653_o;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:116:8  */
  assign x = n554_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:118:11  */
  assign n554_o = {x1, x0};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:120:13  */
  assign n557_o = x == 5'b00000;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:121:13  */
  assign n560_o = x == 5'b00001;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:122:13  */
  assign n563_o = x == 5'b00010;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:123:13  */
  assign n566_o = x == 5'b00011;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:124:13  */
  assign n569_o = x == 5'b00100;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:125:13  */
  assign n572_o = x == 5'b00101;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:126:13  */
  assign n575_o = x == 5'b00110;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:127:13  */
  assign n578_o = x == 5'b00111;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:128:13  */
  assign n581_o = x == 5'b01000;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:129:13  */
  assign n584_o = x == 5'b01001;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:130:13  */
  assign n587_o = x == 5'b01010;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:131:13  */
  assign n590_o = x == 5'b01011;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:132:13  */
  assign n593_o = x == 5'b01100;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:133:13  */
  assign n596_o = x == 5'b01101;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:134:13  */
  assign n599_o = x == 5'b01110;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:135:13  */
  assign n602_o = x == 5'b01111;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:136:13  */
  assign n605_o = x == 5'b10000;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:137:13  */
  assign n608_o = x == 5'b10001;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:138:13  */
  assign n611_o = x == 5'b10010;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:139:13  */
  assign n614_o = x == 5'b10011;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:140:13  */
  assign n617_o = x == 5'b10100;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:141:13  */
  assign n620_o = x == 5'b10101;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:142:13  */
  assign n623_o = x == 5'b10110;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:143:13  */
  assign n626_o = x == 5'b10111;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:144:13  */
  assign n629_o = x == 5'b11000;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:145:13  */
  assign n632_o = x == 5'b11001;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:146:13  */
  assign n635_o = x == 5'b11010;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:147:13  */
  assign n638_o = x == 5'b11011;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:148:13  */
  assign n641_o = x == 5'b11100;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:149:13  */
  assign n644_o = x == 5'b11101;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:150:13  */
  assign n647_o = x == 5'b11110;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:151:13  */
  assign n650_o = x == 5'b11111;
  assign n652_o = {n650_o, n647_o, n644_o, n641_o, n638_o, n635_o, n632_o, n629_o, n626_o, n623_o, n620_o, n617_o, n614_o, n611_o, n608_o, n605_o, n602_o, n599_o, n596_o, n593_o, n590_o, n587_o, n584_o, n581_o, n578_o, n575_o, n572_o, n569_o, n566_o, n563_o, n560_o, n557_o};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:119:4  */
  always @*
    case (n652_o)
      32'b10000000000000000000000000000000: n653_o <= 3'b110;
      32'b01000000000000000000000000000000: n653_o <= 3'b101;
      32'b00100000000000000000000000000000: n653_o <= 3'b101;
      32'b00010000000000000000000000000000: n653_o <= 3'b100;
      32'b00001000000000000000000000000000: n653_o <= 3'b101;
      32'b00000100000000000000000000000000: n653_o <= 3'b100;
      32'b00000010000000000000000000000000: n653_o <= 3'b100;
      32'b00000001000000000000000000000000: n653_o <= 3'b011;
      32'b00000000100000000000000000000000: n653_o <= 3'b101;
      32'b00000000010000000000000000000000: n653_o <= 3'b100;
      32'b00000000001000000000000000000000: n653_o <= 3'b100;
      32'b00000000000100000000000000000000: n653_o <= 3'b011;
      32'b00000000000010000000000000000000: n653_o <= 3'b100;
      32'b00000000000001000000000000000000: n653_o <= 3'b011;
      32'b00000000000000100000000000000000: n653_o <= 3'b011;
      32'b00000000000000010000000000000000: n653_o <= 3'b010;
      32'b00000000000000001000000000000000: n653_o <= 3'b100;
      32'b00000000000000000100000000000000: n653_o <= 3'b011;
      32'b00000000000000000010000000000000: n653_o <= 3'b011;
      32'b00000000000000000001000000000000: n653_o <= 3'b010;
      32'b00000000000000000000100000000000: n653_o <= 3'b011;
      32'b00000000000000000000010000000000: n653_o <= 3'b010;
      32'b00000000000000000000001000000000: n653_o <= 3'b010;
      32'b00000000000000000000000100000000: n653_o <= 3'b001;
      32'b00000000000000000000000010000000: n653_o <= 3'b011;
      32'b00000000000000000000000001000000: n653_o <= 3'b010;
      32'b00000000000000000000000000100000: n653_o <= 3'b010;
      32'b00000000000000000000000000010000: n653_o <= 3'b001;
      32'b00000000000000000000000000001000: n653_o <= 3'b010;
      32'b00000000000000000000000000000100: n653_o <= 3'b001;
      32'b00000000000000000000000000000010: n653_o <= 3'b001;
      32'b00000000000000000000000000000001: n653_o <= 3'b000;
      default: n653_o <= 3'bXXX;
    endcase
endmodule

module smallmulttablep3x3r6xuyu_f350_uid9
  (input  clk,
   input  rst,
   input  [5:0] x,
   output [5:0] y);
  wire [5:0] tableout;
  wire n360_o;
  wire n363_o;
  wire n366_o;
  wire n369_o;
  wire n372_o;
  wire n375_o;
  wire n378_o;
  wire n381_o;
  wire n384_o;
  wire n387_o;
  wire n390_o;
  wire n393_o;
  wire n396_o;
  wire n399_o;
  wire n402_o;
  wire n405_o;
  wire n408_o;
  wire n411_o;
  wire n414_o;
  wire n417_o;
  wire n420_o;
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
  wire [63:0] n551_o;
  reg [5:0] n552_o;
  assign y = tableout;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:17:8  */
  assign tableout = n552_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:25:13  */
  assign n360_o = x == 6'b000000;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:26:13  */
  assign n363_o = x == 6'b000001;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:27:13  */
  assign n366_o = x == 6'b000010;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:28:13  */
  assign n369_o = x == 6'b000011;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:29:13  */
  assign n372_o = x == 6'b000100;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:30:13  */
  assign n375_o = x == 6'b000101;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:31:13  */
  assign n378_o = x == 6'b000110;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:32:13  */
  assign n381_o = x == 6'b000111;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:33:13  */
  assign n384_o = x == 6'b001000;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:34:13  */
  assign n387_o = x == 6'b001001;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:35:13  */
  assign n390_o = x == 6'b001010;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:36:13  */
  assign n393_o = x == 6'b001011;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:37:13  */
  assign n396_o = x == 6'b001100;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:38:13  */
  assign n399_o = x == 6'b001101;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:39:13  */
  assign n402_o = x == 6'b001110;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:40:13  */
  assign n405_o = x == 6'b001111;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:41:13  */
  assign n408_o = x == 6'b010000;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:42:13  */
  assign n411_o = x == 6'b010001;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:43:13  */
  assign n414_o = x == 6'b010010;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:44:13  */
  assign n417_o = x == 6'b010011;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:45:13  */
  assign n420_o = x == 6'b010100;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:46:13  */
  assign n423_o = x == 6'b010101;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:47:13  */
  assign n426_o = x == 6'b010110;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:48:13  */
  assign n429_o = x == 6'b010111;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:49:13  */
  assign n432_o = x == 6'b011000;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:50:13  */
  assign n435_o = x == 6'b011001;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:51:13  */
  assign n438_o = x == 6'b011010;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:52:13  */
  assign n441_o = x == 6'b011011;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:53:13  */
  assign n444_o = x == 6'b011100;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:54:13  */
  assign n447_o = x == 6'b011101;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:55:13  */
  assign n450_o = x == 6'b011110;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:56:13  */
  assign n453_o = x == 6'b011111;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:57:13  */
  assign n456_o = x == 6'b100000;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:58:13  */
  assign n459_o = x == 6'b100001;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:59:13  */
  assign n462_o = x == 6'b100010;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:60:13  */
  assign n465_o = x == 6'b100011;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:61:13  */
  assign n468_o = x == 6'b100100;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:62:13  */
  assign n471_o = x == 6'b100101;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:63:13  */
  assign n474_o = x == 6'b100110;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:64:13  */
  assign n477_o = x == 6'b100111;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:65:13  */
  assign n480_o = x == 6'b101000;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:66:13  */
  assign n483_o = x == 6'b101001;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:67:13  */
  assign n486_o = x == 6'b101010;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:68:13  */
  assign n489_o = x == 6'b101011;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:69:13  */
  assign n492_o = x == 6'b101100;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:70:13  */
  assign n495_o = x == 6'b101101;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:71:13  */
  assign n498_o = x == 6'b101110;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:72:13  */
  assign n501_o = x == 6'b101111;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:73:13  */
  assign n504_o = x == 6'b110000;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:74:13  */
  assign n507_o = x == 6'b110001;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:75:13  */
  assign n510_o = x == 6'b110010;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:76:13  */
  assign n513_o = x == 6'b110011;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:77:13  */
  assign n516_o = x == 6'b110100;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:78:13  */
  assign n519_o = x == 6'b110101;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:79:13  */
  assign n522_o = x == 6'b110110;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:80:13  */
  assign n525_o = x == 6'b110111;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:81:13  */
  assign n528_o = x == 6'b111000;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:82:13  */
  assign n531_o = x == 6'b111001;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:83:13  */
  assign n534_o = x == 6'b111010;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:84:13  */
  assign n537_o = x == 6'b111011;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:85:13  */
  assign n540_o = x == 6'b111100;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:86:13  */
  assign n543_o = x == 6'b111101;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:87:13  */
  assign n546_o = x == 6'b111110;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:88:13  */
  assign n549_o = x == 6'b111111;
  assign n551_o = {n549_o, n546_o, n543_o, n540_o, n537_o, n534_o, n531_o, n528_o, n525_o, n522_o, n519_o, n516_o, n513_o, n510_o, n507_o, n504_o, n501_o, n498_o, n495_o, n492_o, n489_o, n486_o, n483_o, n480_o, n477_o, n474_o, n471_o, n468_o, n465_o, n462_o, n459_o, n456_o, n453_o, n450_o, n447_o, n444_o, n441_o, n438_o, n435_o, n432_o, n429_o, n426_o, n423_o, n420_o, n417_o, n414_o, n411_o, n408_o, n405_o, n402_o, n399_o, n396_o, n393_o, n390_o, n387_o, n384_o, n381_o, n378_o, n375_o, n372_o, n369_o, n366_o, n363_o, n360_o};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:24:3  */
  always @*
    case (n551_o)
      64'b1000000000000000000000000000000000000000000000000000000000000000: n552_o <= 6'b110001;
      64'b0100000000000000000000000000000000000000000000000000000000000000: n552_o <= 6'b101010;
      64'b0010000000000000000000000000000000000000000000000000000000000000: n552_o <= 6'b100011;
      64'b0001000000000000000000000000000000000000000000000000000000000000: n552_o <= 6'b011100;
      64'b0000100000000000000000000000000000000000000000000000000000000000: n552_o <= 6'b010101;
      64'b0000010000000000000000000000000000000000000000000000000000000000: n552_o <= 6'b001110;
      64'b0000001000000000000000000000000000000000000000000000000000000000: n552_o <= 6'b000111;
      64'b0000000100000000000000000000000000000000000000000000000000000000: n552_o <= 6'b000000;
      64'b0000000010000000000000000000000000000000000000000000000000000000: n552_o <= 6'b101010;
      64'b0000000001000000000000000000000000000000000000000000000000000000: n552_o <= 6'b100100;
      64'b0000000000100000000000000000000000000000000000000000000000000000: n552_o <= 6'b011110;
      64'b0000000000010000000000000000000000000000000000000000000000000000: n552_o <= 6'b011000;
      64'b0000000000001000000000000000000000000000000000000000000000000000: n552_o <= 6'b010010;
      64'b0000000000000100000000000000000000000000000000000000000000000000: n552_o <= 6'b001100;
      64'b0000000000000010000000000000000000000000000000000000000000000000: n552_o <= 6'b000110;
      64'b0000000000000001000000000000000000000000000000000000000000000000: n552_o <= 6'b000000;
      64'b0000000000000000100000000000000000000000000000000000000000000000: n552_o <= 6'b100011;
      64'b0000000000000000010000000000000000000000000000000000000000000000: n552_o <= 6'b011110;
      64'b0000000000000000001000000000000000000000000000000000000000000000: n552_o <= 6'b011001;
      64'b0000000000000000000100000000000000000000000000000000000000000000: n552_o <= 6'b010100;
      64'b0000000000000000000010000000000000000000000000000000000000000000: n552_o <= 6'b001111;
      64'b0000000000000000000001000000000000000000000000000000000000000000: n552_o <= 6'b001010;
      64'b0000000000000000000000100000000000000000000000000000000000000000: n552_o <= 6'b000101;
      64'b0000000000000000000000010000000000000000000000000000000000000000: n552_o <= 6'b000000;
      64'b0000000000000000000000001000000000000000000000000000000000000000: n552_o <= 6'b011100;
      64'b0000000000000000000000000100000000000000000000000000000000000000: n552_o <= 6'b011000;
      64'b0000000000000000000000000010000000000000000000000000000000000000: n552_o <= 6'b010100;
      64'b0000000000000000000000000001000000000000000000000000000000000000: n552_o <= 6'b010000;
      64'b0000000000000000000000000000100000000000000000000000000000000000: n552_o <= 6'b001100;
      64'b0000000000000000000000000000010000000000000000000000000000000000: n552_o <= 6'b001000;
      64'b0000000000000000000000000000001000000000000000000000000000000000: n552_o <= 6'b000100;
      64'b0000000000000000000000000000000100000000000000000000000000000000: n552_o <= 6'b000000;
      64'b0000000000000000000000000000000010000000000000000000000000000000: n552_o <= 6'b010101;
      64'b0000000000000000000000000000000001000000000000000000000000000000: n552_o <= 6'b010010;
      64'b0000000000000000000000000000000000100000000000000000000000000000: n552_o <= 6'b001111;
      64'b0000000000000000000000000000000000010000000000000000000000000000: n552_o <= 6'b001100;
      64'b0000000000000000000000000000000000001000000000000000000000000000: n552_o <= 6'b001001;
      64'b0000000000000000000000000000000000000100000000000000000000000000: n552_o <= 6'b000110;
      64'b0000000000000000000000000000000000000010000000000000000000000000: n552_o <= 6'b000011;
      64'b0000000000000000000000000000000000000001000000000000000000000000: n552_o <= 6'b000000;
      64'b0000000000000000000000000000000000000000100000000000000000000000: n552_o <= 6'b001110;
      64'b0000000000000000000000000000000000000000010000000000000000000000: n552_o <= 6'b001100;
      64'b0000000000000000000000000000000000000000001000000000000000000000: n552_o <= 6'b001010;
      64'b0000000000000000000000000000000000000000000100000000000000000000: n552_o <= 6'b001000;
      64'b0000000000000000000000000000000000000000000010000000000000000000: n552_o <= 6'b000110;
      64'b0000000000000000000000000000000000000000000001000000000000000000: n552_o <= 6'b000100;
      64'b0000000000000000000000000000000000000000000000100000000000000000: n552_o <= 6'b000010;
      64'b0000000000000000000000000000000000000000000000010000000000000000: n552_o <= 6'b000000;
      64'b0000000000000000000000000000000000000000000000001000000000000000: n552_o <= 6'b000111;
      64'b0000000000000000000000000000000000000000000000000100000000000000: n552_o <= 6'b000110;
      64'b0000000000000000000000000000000000000000000000000010000000000000: n552_o <= 6'b000101;
      64'b0000000000000000000000000000000000000000000000000001000000000000: n552_o <= 6'b000100;
      64'b0000000000000000000000000000000000000000000000000000100000000000: n552_o <= 6'b000011;
      64'b0000000000000000000000000000000000000000000000000000010000000000: n552_o <= 6'b000010;
      64'b0000000000000000000000000000000000000000000000000000001000000000: n552_o <= 6'b000001;
      64'b0000000000000000000000000000000000000000000000000000000100000000: n552_o <= 6'b000000;
      64'b0000000000000000000000000000000000000000000000000000000010000000: n552_o <= 6'b000000;
      64'b0000000000000000000000000000000000000000000000000000000001000000: n552_o <= 6'b000000;
      64'b0000000000000000000000000000000000000000000000000000000000100000: n552_o <= 6'b000000;
      64'b0000000000000000000000000000000000000000000000000000000000010000: n552_o <= 6'b000000;
      64'b0000000000000000000000000000000000000000000000000000000000001000: n552_o <= 6'b000000;
      64'b0000000000000000000000000000000000000000000000000000000000000100: n552_o <= 6'b000000;
      64'b0000000000000000000000000000000000000000000000000000000000000010: n552_o <= 6'b000000;
      64'b0000000000000000000000000000000000000000000000000000000000000001: n552_o <= 6'b000000;
      default: n552_o <= 6'bXXXXXX;
    endcase
endmodule

module intadder_14_f350_uid68
  (input  clk,
   input  rst,
   input  [13:0] x,
   input  [13:0] y,
   input  cin,
   output [13:0] r);
  wire [13:0] n350_o;
  wire [13:0] n351_o;
  wire [13:0] n352_o;
  assign r = n352_o;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:862:12  */
  assign n350_o = x + y;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:862:16  */
  assign n351_o = {13'b0, cin};  //  uext
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:862:16  */
  assign n352_o = n350_o + n351_o;
endmodule

module intmultiplier_usingdsp_7_7_14_unsigned_f350_uid4
  (input  clk,
   input  rst,
   input  [6:0] x,
   input  [6:0] y,
   output [13:0] r);
  wire [6:0] xx_m5;
  wire [6:0] yy_m5;
  wire [8:0] xp_m5b7;
  wire [8:0] yp_m5b7;
  wire [2:0] x_m5b7_0;
  wire [2:0] x_m5b7_1;
  wire [2:0] x_m5b7_2;
  wire [2:0] y_m5b7_0;
  wire [2:0] y_m5b7_1;
  wire [2:0] y_m5b7_2;
  wire [5:0] y0x0_7_m5;
  wire [5:0] pp7x0y0_m5;
  wire heap_bh6_w0_0;
  wire heap_bh6_w1_0;
  wire [5:0] y0x1_7_m5;
  wire [5:0] pp7x1y0_m5;
  wire heap_bh6_w1_1;
  wire heap_bh6_w2_0;
  wire heap_bh6_w3_0;
  wire heap_bh6_w4_0;
  wire [5:0] y0x2_7_m5;
  wire [5:0] pp7x2y0_m5;
  wire heap_bh6_w4_1;
  wire heap_bh6_w5_0;
  wire heap_bh6_w6_0;
  wire heap_bh6_w7_0;
  wire [5:0] y1x0_7_m5;
  wire [5:0] pp7x0y1_m5;
  wire heap_bh6_w1_2;
  wire heap_bh6_w2_1;
  wire heap_bh6_w3_1;
  wire heap_bh6_w4_2;
  wire [5:0] y1x1_7_m5;
  wire [5:0] pp7x1y1_m5;
  wire heap_bh6_w2_2;
  wire heap_bh6_w3_2;
  wire heap_bh6_w4_3;
  wire heap_bh6_w5_1;
  wire heap_bh6_w6_1;
  wire heap_bh6_w7_1;
  wire [5:0] y1x2_7_m5;
  wire [5:0] pp7x2y1_m5;
  wire heap_bh6_w5_2;
  wire heap_bh6_w6_2;
  wire heap_bh6_w7_2;
  wire heap_bh6_w8_0;
  wire heap_bh6_w9_0;
  wire heap_bh6_w10_0;
  wire [5:0] y2x0_7_m5;
  wire [5:0] pp7x0y2_m5;
  wire heap_bh6_w4_4;
  wire heap_bh6_w5_3;
  wire heap_bh6_w6_3;
  wire heap_bh6_w7_3;
  wire [5:0] y2x1_7_m5;
  wire [5:0] pp7x1y2_m5;
  wire heap_bh6_w5_4;
  wire heap_bh6_w6_4;
  wire heap_bh6_w7_4;
  wire heap_bh6_w8_1;
  wire heap_bh6_w9_1;
  wire heap_bh6_w10_1;
  wire [5:0] y2x2_7_m5;
  wire [5:0] pp7x2y2_m5;
  wire heap_bh6_w8_2;
  wire heap_bh6_w9_2;
  wire heap_bh6_w10_2;
  wire heap_bh6_w11_0;
  wire heap_bh6_w12_0;
  wire heap_bh6_w13_0;
  wire tempr_bh6_0;
  wire [3:0] compressorin_bh6_0_0;
  wire compressorin_bh6_0_1;
  wire [2:0] compressorout_bh6_0_0;
  wire heap_bh6_w4_5;
  wire heap_bh6_w5_5;
  wire heap_bh6_w6_5;
  wire [3:0] compressorin_bh6_1_2;
  wire compressorin_bh6_1_3;
  wire [2:0] compressorout_bh6_1_1;
  wire heap_bh6_w5_6;
  wire heap_bh6_w6_6;
  wire heap_bh6_w7_5;
  wire [3:0] compressorin_bh6_2_4;
  wire compressorin_bh6_2_5;
  wire [2:0] compressorout_bh6_2_2;
  wire heap_bh6_w6_7;
  wire heap_bh6_w7_6;
  wire heap_bh6_w8_3;
  wire [3:0] compressorin_bh6_3_6;
  wire compressorin_bh6_3_7;
  wire [2:0] compressorout_bh6_3_3;
  wire heap_bh6_w7_7;
  wire heap_bh6_w8_4;
  wire heap_bh6_w9_3;
  wire [2:0] compressorin_bh6_4_8;
  wire [1:0] compressorin_bh6_4_9;
  wire [2:0] compressorout_bh6_4_4;
  wire heap_bh6_w1_3;
  wire heap_bh6_w2_3;
  wire heap_bh6_w3_3;
  wire [2:0] compressorin_bh6_5_10;
  wire [1:0] compressorin_bh6_5_11;
  wire [2:0] compressorout_bh6_5_5;
  wire heap_bh6_w9_4;
  wire heap_bh6_w10_3;
  wire heap_bh6_w11_1;
  wire [2:0] compressorin_bh6_6_12;
  wire compressorin_bh6_6_13;
  wire [2:0] compressorout_bh6_6_6;
  wire heap_bh6_w3_4;
  wire heap_bh6_w4_6;
  wire heap_bh6_w5_7;
  wire tempr_bh6_1;
  wire [3:0] compressorin_bh6_7_14;
  wire compressorin_bh6_7_15;
  wire [2:0] compressorout_bh6_7_7;
  wire heap_bh6_w8_5;
  wire heap_bh6_w9_5;
  wire heap_bh6_w10_4;
  wire [2:0] compressorin_bh6_8_16;
  wire [1:0] compressorin_bh6_8_17;
  wire [2:0] compressorout_bh6_8_8;
  wire heap_bh6_w5_8;
  wire heap_bh6_w6_8;
  wire heap_bh6_w7_8;
  wire [2:0] compressorin_bh6_9_18;
  wire [1:0] compressorout_bh6_9_9;
  wire heap_bh6_w7_9;
  wire heap_bh6_w8_6;
  wire [2:0] compressorin_bh6_10_19;
  wire [1:0] compressorin_bh6_10_20;
  wire [2:0] compressorout_bh6_10_10;
  wire heap_bh6_w10_5;
  wire heap_bh6_w11_2;
  wire heap_bh6_w12_1;
  wire [12:0] finaladderin0_bh6;
  wire [12:0] finaladderin1_bh6;
  wire finaladdercin_bh6;
  wire [12:0] finaladderout_bh6;
  wire [14:0] compressionresult6;
  wire [8:0] n127_o;
  wire [8:0] n129_o;
  wire [2:0] n130_o;
  wire [2:0] n131_o;
  wire [2:0] n132_o;
  wire [2:0] n133_o;
  wire [2:0] n134_o;
  wire [2:0] n135_o;
  wire [5:0] n136_o;
  wire [5:0] pp_m5_7x0y0_tbl_n137;
  wire [5:0] pp_m5_7x0y0_tbl_y;
  wire n140_o;
  wire n141_o;
  wire [5:0] n142_o;
  wire [5:0] pp_m5_7x1y0_tbl_n143;
  wire [5:0] pp_m5_7x1y0_tbl_y;
  wire n146_o;
  wire n147_o;
  wire n148_o;
  wire n149_o;
  wire [5:0] n150_o;
  wire [5:0] pp_m5_7x2y0_tbl_n151;
  wire [5:0] pp_m5_7x2y0_tbl_y;
  wire n154_o;
  wire n155_o;
  wire n156_o;
  wire n157_o;
  wire [5:0] n158_o;
  wire [5:0] pp_m5_7x0y1_tbl_n159;
  wire [5:0] pp_m5_7x0y1_tbl_y;
  wire n162_o;
  wire n163_o;
  wire n164_o;
  wire n165_o;
  wire [5:0] n166_o;
  wire [5:0] pp_m5_7x1y1_tbl_n167;
  wire [5:0] pp_m5_7x1y1_tbl_y;
  wire n170_o;
  wire n171_o;
  wire n172_o;
  wire n173_o;
  wire n174_o;
  wire n175_o;
  wire [5:0] n176_o;
  wire [5:0] pp_m5_7x2y1_tbl_n177;
  wire [5:0] pp_m5_7x2y1_tbl_y;
  wire n180_o;
  wire n181_o;
  wire n182_o;
  wire n183_o;
  wire n184_o;
  wire n185_o;
  wire [5:0] n186_o;
  wire [5:0] pp_m5_7x0y2_tbl_n187;
  wire [5:0] pp_m5_7x0y2_tbl_y;
  wire n190_o;
  wire n191_o;
  wire n192_o;
  wire n193_o;
  wire [5:0] n194_o;
  wire [5:0] pp_m5_7x1y2_tbl_n195;
  wire [5:0] pp_m5_7x1y2_tbl_y;
  wire n198_o;
  wire n199_o;
  wire n200_o;
  wire n201_o;
  wire n202_o;
  wire n203_o;
  wire [5:0] n204_o;
  wire [5:0] pp_m5_7x2y2_tbl_n205;
  wire [5:0] pp_m5_7x2y2_tbl_y;
  wire n208_o;
  wire n209_o;
  wire n210_o;
  wire n211_o;
  wire n212_o;
  wire n213_o;
  wire [1:0] n214_o;
  wire [2:0] n215_o;
  wire [3:0] n216_o;
  wire [2:0] compressor_bh6_0_n217;
  wire [2:0] compressor_bh6_0_r;
  wire n220_o;
  wire n221_o;
  wire n222_o;
  wire [1:0] n223_o;
  wire [2:0] n224_o;
  wire [3:0] n225_o;
  wire [2:0] compressor_bh6_1_n226;
  wire [2:0] compressor_bh6_1_r;
  wire n229_o;
  wire n230_o;
  wire n231_o;
  wire [1:0] n232_o;
  wire [2:0] n233_o;
  wire [3:0] n234_o;
  wire [2:0] compressor_bh6_2_n235;
  wire [2:0] compressor_bh6_2_r;
  wire n238_o;
  wire n239_o;
  wire n240_o;
  wire [1:0] n241_o;
  wire [2:0] n242_o;
  wire [3:0] n243_o;
  wire [2:0] compressor_bh6_3_n244;
  wire [2:0] compressor_bh6_3_r;
  wire n247_o;
  wire n248_o;
  wire n249_o;
  wire [1:0] n250_o;
  wire [2:0] n251_o;
  wire [1:0] n252_o;
  wire [2:0] compressor_bh6_4_n253;
  wire [2:0] compressor_bh6_4_r;
  wire n256_o;
  wire n257_o;
  wire n258_o;
  wire [1:0] n259_o;
  wire [2:0] n260_o;
  wire [1:0] n261_o;
  wire [2:0] compressor_bh6_5_n262;
  wire [2:0] compressor_bh6_5_r;
  wire n265_o;
  wire n266_o;
  wire n267_o;
  wire [1:0] n268_o;
  wire [2:0] n269_o;
  wire [2:0] compressor_bh6_6_n270;
  wire [2:0] compressor_bh6_6_r;
  wire n273_o;
  wire n274_o;
  wire n275_o;
  wire [1:0] n276_o;
  wire [2:0] n277_o;
  wire [3:0] n278_o;
  wire [2:0] compressor_bh6_7_n279;
  wire [2:0] compressor_bh6_7_r;
  wire n282_o;
  wire n283_o;
  wire n284_o;
  wire [1:0] n285_o;
  wire [2:0] n286_o;
  wire [1:0] n287_o;
  wire [2:0] compressor_bh6_8_n288;
  wire [2:0] compressor_bh6_8_r;
  wire n291_o;
  wire n292_o;
  wire n293_o;
  wire [1:0] n294_o;
  wire [2:0] n295_o;
  wire [1:0] compressor_bh6_9_n296;
  wire [1:0] compressor_bh6_9_r;
  wire n299_o;
  wire n300_o;
  wire [1:0] n301_o;
  wire [2:0] n302_o;
  wire [1:0] n303_o;
  wire [2:0] compressor_bh6_10_n304;
  wire [2:0] compressor_bh6_10_r;
  wire n307_o;
  wire n308_o;
  wire n309_o;
  wire [1:0] n311_o;
  wire [2:0] n312_o;
  wire [3:0] n313_o;
  wire [4:0] n314_o;
  wire [5:0] n315_o;
  wire [6:0] n316_o;
  wire [7:0] n317_o;
  wire [8:0] n318_o;
  wire [9:0] n319_o;
  wire [10:0] n320_o;
  wire [11:0] n321_o;
  wire [12:0] n322_o;
  wire [2:0] n324_o;
  wire [3:0] n326_o;
  wire [4:0] n328_o;
  wire [5:0] n329_o;
  wire [6:0] n330_o;
  wire [7:0] n331_o;
  wire [8:0] n332_o;
  wire [9:0] n334_o;
  wire [10:0] n335_o;
  wire [11:0] n336_o;
  wire [12:0] n337_o;
  wire [12:0] adder_final6_0_n339;
  wire [12:0] adder_final6_0_r;
  wire [13:0] n342_o;
  wire [14:0] n343_o;
  wire [13:0] n344_o;
  assign r = n344_o;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:555:20  */
  assign xx_m5 = x; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:556:20  */
  assign yy_m5 = y; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:402:8  */
  assign xp_m5b7 = n127_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:403:8  */
  assign yp_m5b7 = n129_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:404:8  */
  assign x_m5b7_0 = n130_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:405:8  */
  assign x_m5b7_1 = n131_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:406:8  */
  assign x_m5b7_2 = n132_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:407:8  */
  assign y_m5b7_0 = n133_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:408:8  */
  assign y_m5b7_1 = n134_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:409:8  */
  assign y_m5b7_2 = n135_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:410:8  */
  assign y0x0_7_m5 = n136_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:411:8  */
  assign pp7x0y0_m5 = pp_m5_7x0y0_tbl_n137; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:412:8  */
  assign heap_bh6_w0_0 = n140_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:413:8  */
  assign heap_bh6_w1_0 = n141_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:414:8  */
  assign y0x1_7_m5 = n142_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:415:8  */
  assign pp7x1y0_m5 = pp_m5_7x1y0_tbl_n143; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:416:8  */
  assign heap_bh6_w1_1 = n146_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:417:8  */
  assign heap_bh6_w2_0 = n147_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:418:8  */
  assign heap_bh6_w3_0 = n148_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:419:8  */
  assign heap_bh6_w4_0 = n149_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:420:8  */
  assign y0x2_7_m5 = n150_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:421:8  */
  assign pp7x2y0_m5 = pp_m5_7x2y0_tbl_n151; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:422:8  */
  assign heap_bh6_w4_1 = n154_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:423:8  */
  assign heap_bh6_w5_0 = n155_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:424:8  */
  assign heap_bh6_w6_0 = n156_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:425:8  */
  assign heap_bh6_w7_0 = n157_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:426:8  */
  assign y1x0_7_m5 = n158_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:427:8  */
  assign pp7x0y1_m5 = pp_m5_7x0y1_tbl_n159; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:428:8  */
  assign heap_bh6_w1_2 = n162_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:429:8  */
  assign heap_bh6_w2_1 = n163_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:430:8  */
  assign heap_bh6_w3_1 = n164_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:431:8  */
  assign heap_bh6_w4_2 = n165_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:432:8  */
  assign y1x1_7_m5 = n166_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:433:8  */
  assign pp7x1y1_m5 = pp_m5_7x1y1_tbl_n167; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:434:8  */
  assign heap_bh6_w2_2 = n170_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:435:8  */
  assign heap_bh6_w3_2 = n171_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:436:8  */
  assign heap_bh6_w4_3 = n172_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:437:8  */
  assign heap_bh6_w5_1 = n173_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:438:8  */
  assign heap_bh6_w6_1 = n174_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:439:8  */
  assign heap_bh6_w7_1 = n175_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:440:8  */
  assign y1x2_7_m5 = n176_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:441:8  */
  assign pp7x2y1_m5 = pp_m5_7x2y1_tbl_n177; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:442:8  */
  assign heap_bh6_w5_2 = n180_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:443:8  */
  assign heap_bh6_w6_2 = n181_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:444:8  */
  assign heap_bh6_w7_2 = n182_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:445:8  */
  assign heap_bh6_w8_0 = n183_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:446:8  */
  assign heap_bh6_w9_0 = n184_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:447:8  */
  assign heap_bh6_w10_0 = n185_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:448:8  */
  assign y2x0_7_m5 = n186_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:449:8  */
  assign pp7x0y2_m5 = pp_m5_7x0y2_tbl_n187; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:450:8  */
  assign heap_bh6_w4_4 = n190_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:451:8  */
  assign heap_bh6_w5_3 = n191_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:452:8  */
  assign heap_bh6_w6_3 = n192_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:453:8  */
  assign heap_bh6_w7_3 = n193_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:454:8  */
  assign y2x1_7_m5 = n194_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:455:8  */
  assign pp7x1y2_m5 = pp_m5_7x1y2_tbl_n195; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:456:8  */
  assign heap_bh6_w5_4 = n198_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:457:8  */
  assign heap_bh6_w6_4 = n199_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:458:8  */
  assign heap_bh6_w7_4 = n200_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:459:8  */
  assign heap_bh6_w8_1 = n201_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:460:8  */
  assign heap_bh6_w9_1 = n202_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:461:8  */
  assign heap_bh6_w10_1 = n203_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:462:8  */
  assign y2x2_7_m5 = n204_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:463:8  */
  assign pp7x2y2_m5 = pp_m5_7x2y2_tbl_n205; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:464:8  */
  assign heap_bh6_w8_2 = n208_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:465:8  */
  assign heap_bh6_w9_2 = n209_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:466:8  */
  assign heap_bh6_w10_2 = n210_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:467:8  */
  assign heap_bh6_w11_0 = n211_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:468:8  */
  assign heap_bh6_w12_0 = n212_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:469:8  */
  assign heap_bh6_w13_0 = n213_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:470:8  */
  assign tempr_bh6_0 = heap_bh6_w0_0; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:471:8  */
  assign compressorin_bh6_0_0 = n216_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:472:8  */
  assign compressorin_bh6_0_1 = heap_bh6_w5_4; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:473:8  */
  assign compressorout_bh6_0_0 = compressor_bh6_0_n217; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:474:8  */
  assign heap_bh6_w4_5 = n220_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:475:8  */
  assign heap_bh6_w5_5 = n221_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:476:8  */
  assign heap_bh6_w6_5 = n222_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:477:8  */
  assign compressorin_bh6_1_2 = n225_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:478:8  */
  assign compressorin_bh6_1_3 = heap_bh6_w6_4; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:479:8  */
  assign compressorout_bh6_1_1 = compressor_bh6_1_n226; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:480:8  */
  assign heap_bh6_w5_6 = n229_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:481:8  */
  assign heap_bh6_w6_6 = n230_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:482:8  */
  assign heap_bh6_w7_5 = n231_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:483:8  */
  assign compressorin_bh6_2_4 = n234_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:484:8  */
  assign compressorin_bh6_2_5 = heap_bh6_w7_4; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:485:8  */
  assign compressorout_bh6_2_2 = compressor_bh6_2_n235; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:486:8  */
  assign heap_bh6_w6_7 = n238_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:487:8  */
  assign heap_bh6_w7_6 = n239_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:488:8  */
  assign heap_bh6_w8_3 = n240_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:489:8  */
  assign compressorin_bh6_3_6 = n243_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:490:8  */
  assign compressorin_bh6_3_7 = heap_bh6_w8_2; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:491:8  */
  assign compressorout_bh6_3_3 = compressor_bh6_3_n244; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:492:8  */
  assign heap_bh6_w7_7 = n247_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:493:8  */
  assign heap_bh6_w8_4 = n248_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:494:8  */
  assign heap_bh6_w9_3 = n249_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:495:8  */
  assign compressorin_bh6_4_8 = n251_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:496:8  */
  assign compressorin_bh6_4_9 = n252_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:497:8  */
  assign compressorout_bh6_4_4 = compressor_bh6_4_n253; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:498:8  */
  assign heap_bh6_w1_3 = n256_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:499:8  */
  assign heap_bh6_w2_3 = n257_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:500:8  */
  assign heap_bh6_w3_3 = n258_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:501:8  */
  assign compressorin_bh6_5_10 = n260_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:502:8  */
  assign compressorin_bh6_5_11 = n261_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:503:8  */
  assign compressorout_bh6_5_5 = compressor_bh6_5_n262; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:504:8  */
  assign heap_bh6_w9_4 = n265_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:505:8  */
  assign heap_bh6_w10_3 = n266_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:506:8  */
  assign heap_bh6_w11_1 = n267_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:507:8  */
  assign compressorin_bh6_6_12 = n269_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:508:8  */
  assign compressorin_bh6_6_13 = heap_bh6_w4_0; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:509:8  */
  assign compressorout_bh6_6_6 = compressor_bh6_6_n270; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:510:8  */
  assign heap_bh6_w3_4 = n273_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:511:8  */
  assign heap_bh6_w4_6 = n274_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:512:8  */
  assign heap_bh6_w5_7 = n275_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:513:8  */
  assign tempr_bh6_1 = heap_bh6_w1_3; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:514:8  */
  assign compressorin_bh6_7_14 = n278_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:515:8  */
  assign compressorin_bh6_7_15 = heap_bh6_w9_4; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:516:8  */
  assign compressorout_bh6_7_7 = compressor_bh6_7_n279; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:517:8  */
  assign heap_bh6_w8_5 = n282_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:518:8  */
  assign heap_bh6_w9_5 = n283_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:519:8  */
  assign heap_bh6_w10_4 = n284_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:520:8  */
  assign compressorin_bh6_8_16 = n286_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:521:8  */
  assign compressorin_bh6_8_17 = n287_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:522:8  */
  assign compressorout_bh6_8_8 = compressor_bh6_8_n288; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:523:8  */
  assign heap_bh6_w5_8 = n291_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:524:8  */
  assign heap_bh6_w6_8 = n292_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:525:8  */
  assign heap_bh6_w7_8 = n293_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:526:8  */
  assign compressorin_bh6_9_18 = n295_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:527:8  */
  assign compressorout_bh6_9_9 = compressor_bh6_9_n296; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:528:8  */
  assign heap_bh6_w7_9 = n299_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:529:8  */
  assign heap_bh6_w8_6 = n300_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:530:8  */
  assign compressorin_bh6_10_19 = n302_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:531:8  */
  assign compressorin_bh6_10_20 = n303_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:532:8  */
  assign compressorout_bh6_10_10 = compressor_bh6_10_n304; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:533:8  */
  assign heap_bh6_w10_5 = n307_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:534:8  */
  assign heap_bh6_w11_2 = n308_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:535:8  */
  assign heap_bh6_w12_1 = n309_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:536:8  */
  assign finaladderin0_bh6 = n322_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:537:8  */
  assign finaladderin1_bh6 = n337_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:538:8  */
  assign finaladdercin_bh6 = 1'b0; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:539:8  */
  assign finaladderout_bh6 = adder_final6_0_n339; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:540:8  */
  assign compressionresult6 = n343_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:555:33  */
  assign n127_o = {xx_m5, 2'b00};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:556:33  */
  assign n129_o = {yy_m5, 2'b00};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:557:23  */
  assign n130_o = xp_m5b7[2:0];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:558:23  */
  assign n131_o = xp_m5b7[5:3];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:559:23  */
  assign n132_o = xp_m5b7[8:6];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:560:23  */
  assign n133_o = yp_m5b7[2:0];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:561:23  */
  assign n134_o = yp_m5b7[5:3];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:562:23  */
  assign n135_o = yp_m5b7[8:6];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:565:26  */
  assign n136_o = {y_m5b7_0, x_m5b7_0};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:570:23  */
  assign pp_m5_7x0y0_tbl_n137 = pp_m5_7x0y0_tbl_y; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:566:4  */
  smallmulttablep3x3r6xuyu_f350_uid9 pp_m5_7x0y0_tbl (
    .clk(clk),
    .rst(rst),
    .x(y0x0_7_m5),
    .y(pp_m5_7x0y0_tbl_y));
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:572:31  */
  assign n140_o = pp7x0y0_m5[4];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:573:31  */
  assign n141_o = pp7x0y0_m5[5];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:575:26  */
  assign n142_o = {y_m5b7_0, x_m5b7_1};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:580:23  */
  assign pp_m5_7x1y0_tbl_n143 = pp_m5_7x1y0_tbl_y; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:576:4  */
  smallmulttablep3x3r6xuyu_f350_uid9 pp_m5_7x1y0_tbl (
    .clk(clk),
    .rst(rst),
    .x(y0x1_7_m5),
    .y(pp_m5_7x1y0_tbl_y));
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:582:31  */
  assign n146_o = pp7x1y0_m5[2];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:583:31  */
  assign n147_o = pp7x1y0_m5[3];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:584:31  */
  assign n148_o = pp7x1y0_m5[4];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:585:31  */
  assign n149_o = pp7x1y0_m5[5];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:587:26  */
  assign n150_o = {y_m5b7_0, x_m5b7_2};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:592:23  */
  assign pp_m5_7x2y0_tbl_n151 = pp_m5_7x2y0_tbl_y; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:588:4  */
  smallmulttablep3x3r6xuyu_f350_uid9 pp_m5_7x2y0_tbl (
    .clk(clk),
    .rst(rst),
    .x(y0x2_7_m5),
    .y(pp_m5_7x2y0_tbl_y));
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:594:31  */
  assign n154_o = pp7x2y0_m5[2];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:595:31  */
  assign n155_o = pp7x2y0_m5[3];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:596:31  */
  assign n156_o = pp7x2y0_m5[4];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:597:31  */
  assign n157_o = pp7x2y0_m5[5];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:600:26  */
  assign n158_o = {y_m5b7_1, x_m5b7_0};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:605:23  */
  assign pp_m5_7x0y1_tbl_n159 = pp_m5_7x0y1_tbl_y; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:601:4  */
  smallmulttablep3x3r6xuyu_f350_uid9 pp_m5_7x0y1_tbl (
    .clk(clk),
    .rst(rst),
    .x(y1x0_7_m5),
    .y(pp_m5_7x0y1_tbl_y));
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:607:31  */
  assign n162_o = pp7x0y1_m5[2];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:608:31  */
  assign n163_o = pp7x0y1_m5[3];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:609:31  */
  assign n164_o = pp7x0y1_m5[4];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:610:31  */
  assign n165_o = pp7x0y1_m5[5];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:612:26  */
  assign n166_o = {y_m5b7_1, x_m5b7_1};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:617:23  */
  assign pp_m5_7x1y1_tbl_n167 = pp_m5_7x1y1_tbl_y; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:613:4  */
  smallmulttablep3x3r6xuyu_f350_uid9 pp_m5_7x1y1_tbl (
    .clk(clk),
    .rst(rst),
    .x(y1x1_7_m5),
    .y(pp_m5_7x1y1_tbl_y));
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:619:31  */
  assign n170_o = pp7x1y1_m5[0];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:620:31  */
  assign n171_o = pp7x1y1_m5[1];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:621:31  */
  assign n172_o = pp7x1y1_m5[2];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:622:31  */
  assign n173_o = pp7x1y1_m5[3];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:623:31  */
  assign n174_o = pp7x1y1_m5[4];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:624:31  */
  assign n175_o = pp7x1y1_m5[5];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:626:26  */
  assign n176_o = {y_m5b7_1, x_m5b7_2};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:631:23  */
  assign pp_m5_7x2y1_tbl_n177 = pp_m5_7x2y1_tbl_y; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:627:4  */
  smallmulttablep3x3r6xuyu_f350_uid9 pp_m5_7x2y1_tbl (
    .clk(clk),
    .rst(rst),
    .x(y1x2_7_m5),
    .y(pp_m5_7x2y1_tbl_y));
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:633:31  */
  assign n180_o = pp7x2y1_m5[0];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:634:31  */
  assign n181_o = pp7x2y1_m5[1];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:635:31  */
  assign n182_o = pp7x2y1_m5[2];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:636:31  */
  assign n183_o = pp7x2y1_m5[3];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:637:31  */
  assign n184_o = pp7x2y1_m5[4];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:638:32  */
  assign n185_o = pp7x2y1_m5[5];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:641:26  */
  assign n186_o = {y_m5b7_2, x_m5b7_0};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:646:23  */
  assign pp_m5_7x0y2_tbl_n187 = pp_m5_7x0y2_tbl_y; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:642:4  */
  smallmulttablep3x3r6xuyu_f350_uid9 pp_m5_7x0y2_tbl (
    .clk(clk),
    .rst(rst),
    .x(y2x0_7_m5),
    .y(pp_m5_7x0y2_tbl_y));
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:648:31  */
  assign n190_o = pp7x0y2_m5[2];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:649:31  */
  assign n191_o = pp7x0y2_m5[3];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:650:31  */
  assign n192_o = pp7x0y2_m5[4];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:651:31  */
  assign n193_o = pp7x0y2_m5[5];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:653:26  */
  assign n194_o = {y_m5b7_2, x_m5b7_1};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:658:23  */
  assign pp_m5_7x1y2_tbl_n195 = pp_m5_7x1y2_tbl_y; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:654:4  */
  smallmulttablep3x3r6xuyu_f350_uid9 pp_m5_7x1y2_tbl (
    .clk(clk),
    .rst(rst),
    .x(y2x1_7_m5),
    .y(pp_m5_7x1y2_tbl_y));
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:660:31  */
  assign n198_o = pp7x1y2_m5[0];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:661:31  */
  assign n199_o = pp7x1y2_m5[1];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:662:31  */
  assign n200_o = pp7x1y2_m5[2];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:663:31  */
  assign n201_o = pp7x1y2_m5[3];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:664:31  */
  assign n202_o = pp7x1y2_m5[4];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:665:32  */
  assign n203_o = pp7x1y2_m5[5];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:667:26  */
  assign n204_o = {y_m5b7_2, x_m5b7_2};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:672:23  */
  assign pp_m5_7x2y2_tbl_n205 = pp_m5_7x2y2_tbl_y; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:668:4  */
  smallmulttablep3x3r6xuyu_f350_uid9 pp_m5_7x2y2_tbl (
    .clk(clk),
    .rst(rst),
    .x(y2x2_7_m5),
    .y(pp_m5_7x2y2_tbl_y));
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:674:31  */
  assign n208_o = pp7x2y2_m5[0];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:675:31  */
  assign n209_o = pp7x2y2_m5[1];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:676:32  */
  assign n210_o = pp7x2y2_m5[2];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:677:32  */
  assign n211_o = pp7x2y2_m5[3];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:678:32  */
  assign n212_o = pp7x2y2_m5[4];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:679:32  */
  assign n213_o = pp7x2y2_m5[5];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:694:42  */
  assign n214_o = {heap_bh6_w4_4, heap_bh6_w4_3};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:694:58  */
  assign n215_o = {n214_o, heap_bh6_w4_2};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:694:74  */
  assign n216_o = {n215_o, heap_bh6_w4_1};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:697:23  */
  assign compressor_bh6_0_n217 = compressor_bh6_0_r; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:696:7  */
  compressor_14_3 compressor_bh6_0 (
    .x0(compressorin_bh6_0_0),
    .x1(compressorin_bh6_0_1),
    .r(compressor_bh6_0_r));
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:700:42  */
  assign n220_o = compressorout_bh6_0_0[0];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:701:42  */
  assign n221_o = compressorout_bh6_0_0[1];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:702:42  */
  assign n222_o = compressorout_bh6_0_0[2];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:705:42  */
  assign n223_o = {heap_bh6_w5_3, heap_bh6_w5_2};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:705:58  */
  assign n224_o = {n223_o, heap_bh6_w5_1};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:705:74  */
  assign n225_o = {n224_o, heap_bh6_w5_0};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:708:23  */
  assign compressor_bh6_1_n226 = compressor_bh6_1_r; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:707:7  */
  compressor_14_3 compressor_bh6_1 (
    .x0(compressorin_bh6_1_2),
    .x1(compressorin_bh6_1_3),
    .r(compressor_bh6_1_r));
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:711:42  */
  assign n229_o = compressorout_bh6_1_1[0];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:712:42  */
  assign n230_o = compressorout_bh6_1_1[1];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:713:42  */
  assign n231_o = compressorout_bh6_1_1[2];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:716:42  */
  assign n232_o = {heap_bh6_w6_3, heap_bh6_w6_2};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:716:58  */
  assign n233_o = {n232_o, heap_bh6_w6_1};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:716:74  */
  assign n234_o = {n233_o, heap_bh6_w6_0};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:719:23  */
  assign compressor_bh6_2_n235 = compressor_bh6_2_r; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:718:7  */
  compressor_14_3 compressor_bh6_2 (
    .x0(compressorin_bh6_2_4),
    .x1(compressorin_bh6_2_5),
    .r(compressor_bh6_2_r));
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:722:42  */
  assign n238_o = compressorout_bh6_2_2[0];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:723:42  */
  assign n239_o = compressorout_bh6_2_2[1];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:724:42  */
  assign n240_o = compressorout_bh6_2_2[2];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:727:42  */
  assign n241_o = {heap_bh6_w7_3, heap_bh6_w7_2};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:727:58  */
  assign n242_o = {n241_o, heap_bh6_w7_1};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:727:74  */
  assign n243_o = {n242_o, heap_bh6_w7_0};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:730:23  */
  assign compressor_bh6_3_n244 = compressor_bh6_3_r; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:729:7  */
  compressor_14_3 compressor_bh6_3 (
    .x0(compressorin_bh6_3_6),
    .x1(compressorin_bh6_3_7),
    .r(compressor_bh6_3_r));
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:733:42  */
  assign n247_o = compressorout_bh6_3_3[0];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:734:42  */
  assign n248_o = compressorout_bh6_3_3[1];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:735:42  */
  assign n249_o = compressorout_bh6_3_3[2];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:738:42  */
  assign n250_o = {heap_bh6_w1_2, heap_bh6_w1_1};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:738:58  */
  assign n251_o = {n250_o, heap_bh6_w1_0};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:739:42  */
  assign n252_o = {heap_bh6_w2_2, heap_bh6_w2_1};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:741:23  */
  assign compressor_bh6_4_n253 = compressor_bh6_4_r; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:740:7  */
  compressor_23_3 compressor_bh6_4 (
    .x0(compressorin_bh6_4_8),
    .x1(compressorin_bh6_4_9),
    .r(compressor_bh6_4_r));
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:744:42  */
  assign n256_o = compressorout_bh6_4_4[0];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:745:42  */
  assign n257_o = compressorout_bh6_4_4[1];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:746:42  */
  assign n258_o = compressorout_bh6_4_4[2];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:749:43  */
  assign n259_o = {heap_bh6_w9_2, heap_bh6_w9_1};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:749:59  */
  assign n260_o = {n259_o, heap_bh6_w9_0};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:750:44  */
  assign n261_o = {heap_bh6_w10_2, heap_bh6_w10_1};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:752:23  */
  assign compressor_bh6_5_n262 = compressor_bh6_5_r; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:751:7  */
  compressor_23_3 compressor_bh6_5 (
    .x0(compressorin_bh6_5_10),
    .x1(compressorin_bh6_5_11),
    .r(compressor_bh6_5_r));
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:755:42  */
  assign n265_o = compressorout_bh6_5_5[0];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:756:43  */
  assign n266_o = compressorout_bh6_5_5[1];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:757:43  */
  assign n267_o = compressorout_bh6_5_5[2];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:760:43  */
  assign n268_o = {heap_bh6_w3_2, heap_bh6_w3_1};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:760:59  */
  assign n269_o = {n268_o, heap_bh6_w3_0};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:763:23  */
  assign compressor_bh6_6_n270 = compressor_bh6_6_r; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:762:7  */
  compressor_13_3 compressor_bh6_6 (
    .x0(compressorin_bh6_6_12),
    .x1(compressorin_bh6_6_13),
    .r(compressor_bh6_6_r));
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:766:42  */
  assign n273_o = compressorout_bh6_6_6[0];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:767:42  */
  assign n274_o = compressorout_bh6_6_6[1];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:768:42  */
  assign n275_o = compressorout_bh6_6_6[2];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:773:43  */
  assign n276_o = {heap_bh6_w8_1, heap_bh6_w8_0};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:773:59  */
  assign n277_o = {n276_o, heap_bh6_w8_4};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:773:75  */
  assign n278_o = {n277_o, heap_bh6_w8_3};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:776:23  */
  assign compressor_bh6_7_n279 = compressor_bh6_7_r; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:775:7  */
  compressor_14_3 compressor_bh6_7 (
    .x0(compressorin_bh6_7_14),
    .x1(compressorin_bh6_7_15),
    .r(compressor_bh6_7_r));
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:779:42  */
  assign n282_o = compressorout_bh6_7_7[0];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:780:42  */
  assign n283_o = compressorout_bh6_7_7[1];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:781:43  */
  assign n284_o = compressorout_bh6_7_7[2];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:784:43  */
  assign n285_o = {heap_bh6_w5_7, heap_bh6_w5_6};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:784:59  */
  assign n286_o = {n285_o, heap_bh6_w5_5};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:785:43  */
  assign n287_o = {heap_bh6_w6_7, heap_bh6_w6_6};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:787:23  */
  assign compressor_bh6_8_n288 = compressor_bh6_8_r; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:786:7  */
  compressor_23_3 compressor_bh6_8 (
    .x0(compressorin_bh6_8_16),
    .x1(compressorin_bh6_8_17),
    .r(compressor_bh6_8_r));
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:790:42  */
  assign n291_o = compressorout_bh6_8_8[0];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:791:42  */
  assign n292_o = compressorout_bh6_8_8[1];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:792:42  */
  assign n293_o = compressorout_bh6_8_8[2];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:795:43  */
  assign n294_o = {heap_bh6_w7_7, heap_bh6_w7_6};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:795:59  */
  assign n295_o = {n294_o, heap_bh6_w7_5};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:797:23  */
  assign compressor_bh6_9_n296 = compressor_bh6_9_r; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:796:7  */
  compressor_3_2 compressor_bh6_9 (
    .x0(compressorin_bh6_9_18),
    .r(compressor_bh6_9_r));
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:799:42  */
  assign n299_o = compressorout_bh6_9_9[0];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:800:42  */
  assign n300_o = compressorout_bh6_9_9[1];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:803:45  */
  assign n301_o = {heap_bh6_w10_0, heap_bh6_w10_3};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:803:62  */
  assign n302_o = {n301_o, heap_bh6_w10_4};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:804:45  */
  assign n303_o = {heap_bh6_w11_0, heap_bh6_w11_1};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:806:23  */
  assign compressor_bh6_10_n304 = compressor_bh6_10_r; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:805:7  */
  compressor_23_3 compressor_bh6_10 (
    .x0(compressorin_bh6_10_19),
    .x1(compressorin_bh6_10_20),
    .r(compressor_bh6_10_r));
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:809:45  */
  assign n307_o = compressorout_bh6_10_10[0];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:810:45  */
  assign n308_o = compressorout_bh6_10_10[1];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:811:45  */
  assign n309_o = compressorout_bh6_10_10[2];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:813:29  */
  assign n311_o = {1'b0, heap_bh6_w13_0};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:813:46  */
  assign n312_o = {n311_o, heap_bh6_w12_0};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:813:63  */
  assign n313_o = {n312_o, heap_bh6_w11_2};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:813:80  */
  assign n314_o = {n313_o, heap_bh6_w10_5};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:813:97  */
  assign n315_o = {n314_o, heap_bh6_w9_3};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:813:113  */
  assign n316_o = {n315_o, heap_bh6_w8_6};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:813:129  */
  assign n317_o = {n316_o, heap_bh6_w7_9};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:813:145  */
  assign n318_o = {n317_o, heap_bh6_w6_5};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:813:161  */
  assign n319_o = {n318_o, heap_bh6_w5_8};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:813:177  */
  assign n320_o = {n319_o, heap_bh6_w4_6};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:813:193  */
  assign n321_o = {n320_o, heap_bh6_w3_4};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:813:209  */
  assign n322_o = {n321_o, heap_bh6_w2_0};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:814:35  */
  assign n324_o = {2'b00, heap_bh6_w12_1};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:814:52  */
  assign n326_o = {n324_o, 1'b0};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:814:58  */
  assign n328_o = {n326_o, 1'b0};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:814:64  */
  assign n329_o = {n328_o, heap_bh6_w9_5};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:814:80  */
  assign n330_o = {n329_o, heap_bh6_w8_5};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:814:96  */
  assign n331_o = {n330_o, heap_bh6_w7_8};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:814:112  */
  assign n332_o = {n331_o, heap_bh6_w6_8};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:814:128  */
  assign n334_o = {n332_o, 1'b0};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:814:134  */
  assign n335_o = {n334_o, heap_bh6_w4_5};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:814:150  */
  assign n336_o = {n335_o, heap_bh6_w3_3};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:814:166  */
  assign n337_o = {n336_o, heap_bh6_w2_3};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:820:23  */
  assign adder_final6_0_n339 = adder_final6_0_r; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:816:7  */
  intadder_13_f350_uid58 adder_final6_0 (
    .clk(clk),
    .rst(rst),
    .x(finaladderin0_bh6),
    .y(finaladderin1_bh6),
    .cin(finaladdercin_bh6),
    .r(adder_final6_0_r));
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:824:44  */
  assign n342_o = {finaladderout_bh6, tempr_bh6_1};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:824:58  */
  assign n343_o = {n342_o, tempr_bh6_0};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:826:27  */
  assign n344_o = compressionresult6[13:0];
endmodule

(* USE_DSP = "yes" *) module fmul
  (input  clk,
   input  rst,
   input  [14:0] X,
   input  [14:0] Y,
   output [14:0] R);
  wire sign;
  wire sign_d1;
  wire [5:0] expx;
  wire [5:0] expy;
  wire [7:0] expsumpresub;
  wire [7:0] bias;
  wire [7:0] expsum;
  wire [7:0] expsum_d1;
  wire [6:0] sigx;
  wire [6:0] sigy;
  wire [13:0] sigprod;
  wire [3:0] excsel;
  wire [1:0] exc;
  wire [1:0] exc_d1;
  wire norm;
  wire norm_d1;
  wire [7:0] exppostnorm;
  wire [13:0] sigprodext;
  wire [13:0] sigprodext_d1;
  wire [13:0] expsig;
  wire sticky;
  wire guard;
  wire round;
  wire [13:0] expsigpostround;
  wire [1:0] excpostnorm;
  wire [1:0] finalexc;
  reg n10_q;
  reg [7:0] n11_q;
  reg [1:0] n12_q;
  reg n13_q;
  reg [13:0] n14_q;
  wire n15_o;
  wire n16_o;
  wire n17_o;
  wire [5:0] n18_o;
  wire [5:0] n19_o;
  wire [7:0] n21_o;
  wire [7:0] n23_o;
  wire [7:0] n24_o;
  wire [7:0] n26_o;
  wire [5:0] n27_o;
  wire [6:0] n29_o;
  wire [5:0] n30_o;
  wire [6:0] n32_o;
  wire [13:0] significandmultiplication_n33;
  wire [13:0] significandmultiplication_r;
  wire [1:0] n36_o;
  wire [1:0] n37_o;
  wire [3:0] n38_o;
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
  wire [2:0] n61_o;
  reg [1:0] n62_o;
  wire n63_o;
  wire [7:0] n65_o;
  wire [7:0] n66_o;
  wire [12:0] n67_o;
  wire [13:0] n69_o;
  wire [13:0] n70_o;
  wire [11:0] n71_o;
  wire [13:0] n73_o;
  wire [5:0] n74_o;
  wire [13:0] n75_o;
  wire n76_o;
  wire [6:0] n78_o;
  wire n80_o;
  wire n81_o;
  wire n83_o;
  wire n84_o;
  wire n85_o;
  wire n86_o;
  wire n87_o;
  wire n88_o;
  localparam [13:0] n89_o = 14'b00000000000000;
  wire [13:0] roundingadder_n90;
  wire [13:0] roundingadder_r;
  wire [1:0] n93_o;
  wire n96_o;
  wire n99_o;
  wire n102_o;
  wire n104_o;
  wire n105_o;
  wire [2:0] n107_o;
  reg [1:0] n108_o;
  wire n110_o;
  wire n112_o;
  wire n113_o;
  wire n115_o;
  wire n116_o;
  reg [1:0] n117_o;
  wire [2:0] n118_o;
  wire [11:0] n119_o;
  wire [14:0] n120_o;
  assign R = n120_o;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:905:8  */
  assign sign = n17_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:905:14  */
  assign sign_d1 = n10_q; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:906:8  */
  assign expx = n18_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:907:8  */
  assign expy = n19_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:908:8  */
  assign expsumpresub = n24_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:909:8  */
  assign bias = 8'b00011111; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:910:8  */
  assign expsum = n26_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:910:16  */
  assign expsum_d1 = n11_q; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:911:8  */
  assign sigx = n29_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:912:8  */
  assign sigy = n32_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:913:8  */
  assign sigprod = significandmultiplication_n33; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:914:8  */
  assign excsel = n38_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:915:8  */
  assign exc = n62_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:915:13  */
  assign exc_d1 = n12_q; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:916:8  */
  assign norm = n63_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:916:14  */
  assign norm_d1 = n13_q; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:917:8  */
  assign exppostnorm = n66_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:918:8  */
  assign sigprodext = n70_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:918:20  */
  assign sigprodext_d1 = n14_q; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:919:8  */
  assign expsig = n75_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:920:8  */
  assign sticky = n76_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:921:8  */
  assign guard = n81_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:922:8  */
  assign round = n88_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:923:8  */
  assign expsigpostround = roundingadder_n90; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:924:8  */
  assign excpostnorm = n108_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:925:8  */
  assign finalexc = n117_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:929:10  */
  always @(posedge clk)
    n10_q <= sign;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:929:10  */
  always @(posedge clk)
    n11_q <= expsum;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:929:10  */
  always @(posedge clk)
    n12_q <= exc;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:929:10  */
  always @(posedge clk)
    n13_q <= norm;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:929:10  */
  always @(posedge clk)
    n14_q <= sigprodext;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:937:13  */
  assign n15_o = X[12];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:937:23  */
  assign n16_o = Y[12];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:937:18  */
  assign n17_o = n15_o ^ n16_o;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:938:13  */
  assign n18_o = X[11:6];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:939:13  */
  assign n19_o = Y[11:6];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:940:26  */
  assign n21_o = {2'b00, expx};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:940:42  */
  assign n23_o = {2'b00, expy};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:940:34  */
  assign n24_o = n21_o + n23_o;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:942:27  */
  assign n26_o = expsumpresub - bias;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:944:19  */
  assign n27_o = X[5:0];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:944:16  */
  assign n29_o = {1'b1, n27_o};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:945:19  */
  assign n30_o = Y[5:0];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:945:16  */
  assign n32_o = {1'b1, n30_o};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:949:23  */
  assign significandmultiplication_n33 = significandmultiplication_r; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:946:4  */
  intmultiplier_usingdsp_7_7_14_unsigned_f350_uid4 significandmultiplication (
    .clk(clk),
    .rst(rst),
    .x(sigx),
    .y(sigy),
    .r(significandmultiplication_r));
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:953:15  */
  assign n36_o = X[14:13];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:953:33  */
  assign n37_o = Y[14:13];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:953:30  */
  assign n38_o = {n36_o, n37_o};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:955:16  */
  assign n41_o = excsel == 4'b0000;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:955:29  */
  assign n43_o = excsel == 4'b0001;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:955:29  */
  assign n44_o = n41_o | n43_o;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:955:38  */
  assign n46_o = excsel == 4'b0100;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:955:38  */
  assign n47_o = n44_o | n46_o;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:956:16  */
  assign n50_o = excsel == 4'b0101;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:957:16  */
  assign n53_o = excsel == 4'b0110;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:957:28  */
  assign n55_o = excsel == 4'b1001;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:957:28  */
  assign n56_o = n53_o | n55_o;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:957:37  */
  assign n58_o = excsel == 4'b1010;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:957:37  */
  assign n59_o = n56_o | n58_o;
  assign n61_o = {n59_o, n50_o, n47_o};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:954:4  */
  always @*
    case (n61_o)
      3'b100: n62_o <= 2'b10;
      3'b010: n62_o <= 2'b01;
      3'b001: n62_o <= 2'b00;
      default: n62_o <= 2'b11;
    endcase
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:959:19  */
  assign n63_o = sigprod[13];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:962:42  */
  assign n65_o = {7'b0000000, norm_d1};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:962:29  */
  assign n66_o = expsum_d1 + n65_o;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:964:25  */
  assign n67_o = sigprod[12:0];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:964:39  */
  assign n69_o = {n67_o, 1'b0};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:964:45  */
  assign n70_o = norm ? n69_o : n73_o;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:965:33  */
  assign n71_o = sigprod[11:0];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:965:47  */
  assign n73_o = {n71_o, 2'b00};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:967:41  */
  assign n74_o = sigprodext_d1[13:8];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:967:26  */
  assign n75_o = {exppostnorm, n74_o};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:968:27  */
  assign n76_o = sigprodext_d1[7];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:969:35  */
  assign n78_o = sigprodext_d1[6:0];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:969:47  */
  assign n80_o = n78_o == 7'b0000000;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:969:17  */
  assign n81_o = n80_o ? 1'b0 : 1'b1;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:970:54  */
  assign n83_o = sigprodext_d1[8];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:970:37  */
  assign n84_o = ~n83_o;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:970:33  */
  assign n85_o = guard & n84_o;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:970:77  */
  assign n86_o = sigprodext_d1[8];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:970:60  */
  assign n87_o = n85_o | n86_o;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:970:20  */
  assign n88_o = sticky & n87_o;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:975:23  */
  assign roundingadder_n90 = roundingadder_r; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:971:7  */
  intadder_14_f350_uid68 roundingadder (
    .clk(clk),
    .rst(rst),
    .x(expsig),
    .y(n89_o),
    .cin(round),
    .r(roundingadder_r));
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:978:24  */
  assign n93_o = expsigpostround[13:12];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:979:26  */
  assign n96_o = n93_o == 2'b00;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:980:49  */
  assign n99_o = n93_o == 2'b01;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:981:49  */
  assign n102_o = n93_o == 2'b11;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:981:58  */
  assign n104_o = n93_o == 2'b10;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:981:58  */
  assign n105_o = n102_o | n104_o;
  assign n107_o = {n105_o, n99_o, n96_o};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:978:4  */
  always @*
    case (n107_o)
      3'b100: n108_o <= 2'b00;
      3'b010: n108_o <= 2'b10;
      3'b001: n108_o <= 2'b01;
      default: n108_o <= 2'b11;
    endcase
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:984:23  */
  assign n110_o = exc_d1 == 2'b11;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:984:33  */
  assign n112_o = exc_d1 == 2'b10;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:984:33  */
  assign n113_o = n110_o | n112_o;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:984:38  */
  assign n115_o = exc_d1 == 2'b00;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:984:38  */
  assign n116_o = n113_o | n115_o;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:983:4  */
  always @*
    case (n116_o)
      1'b1: n117_o <= exc_d1;
      default: n117_o <= excpostnorm;
    endcase
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:986:18  */
  assign n118_o = {finalexc, sign_d1};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:986:45  */
  assign n119_o = expsigpostround[11:0];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_6_6.vhdl:986:28  */
  assign n120_o = {n118_o, n119_o};
endmodule

