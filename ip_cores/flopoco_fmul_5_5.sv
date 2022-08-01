module intadder_9_f600_uid32
  (input  clk,
   input  rst,
   input  [8:0] x,
   input  [8:0] y,
   input  cin,
   output [8:0] r);
  wire [8:0] n578_o;
  wire [8:0] n579_o;
  wire [8:0] n580_o;
  assign r = n580_o;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:189:12  */
  assign n578_o = x + y;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:189:16  */
  assign n579_o = {8'b0, cin};  //  uext
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:189:16  */
  assign n580_o = n578_o + n579_o;
endmodule

module compressor_23_3
  (input  [2:0] x0,
   input  [1:0] x1,
   output [2:0] r);
  wire [4:0] x;
  wire [4:0] n473_o;
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
  wire [31:0] n571_o;
  reg [2:0] n572_o;
  assign r = n572_o;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:116:8  */
  assign x = n473_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:118:11  */
  assign n473_o = {x1, x0};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:120:13  */
  assign n476_o = x == 5'b00000;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:121:13  */
  assign n479_o = x == 5'b00001;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:122:13  */
  assign n482_o = x == 5'b00010;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:123:13  */
  assign n485_o = x == 5'b00011;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:124:13  */
  assign n488_o = x == 5'b00100;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:125:13  */
  assign n491_o = x == 5'b00101;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:126:13  */
  assign n494_o = x == 5'b00110;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:127:13  */
  assign n497_o = x == 5'b00111;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:128:13  */
  assign n500_o = x == 5'b01000;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:129:13  */
  assign n503_o = x == 5'b01001;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:130:13  */
  assign n506_o = x == 5'b01010;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:131:13  */
  assign n509_o = x == 5'b01011;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:132:13  */
  assign n512_o = x == 5'b01100;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:133:13  */
  assign n515_o = x == 5'b01101;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:134:13  */
  assign n518_o = x == 5'b01110;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:135:13  */
  assign n521_o = x == 5'b01111;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:136:13  */
  assign n524_o = x == 5'b10000;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:137:13  */
  assign n527_o = x == 5'b10001;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:138:13  */
  assign n530_o = x == 5'b10010;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:139:13  */
  assign n533_o = x == 5'b10011;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:140:13  */
  assign n536_o = x == 5'b10100;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:141:13  */
  assign n539_o = x == 5'b10101;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:142:13  */
  assign n542_o = x == 5'b10110;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:143:13  */
  assign n545_o = x == 5'b10111;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:144:13  */
  assign n548_o = x == 5'b11000;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:145:13  */
  assign n551_o = x == 5'b11001;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:146:13  */
  assign n554_o = x == 5'b11010;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:147:13  */
  assign n557_o = x == 5'b11011;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:148:13  */
  assign n560_o = x == 5'b11100;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:149:13  */
  assign n563_o = x == 5'b11101;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:150:13  */
  assign n566_o = x == 5'b11110;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:151:13  */
  assign n569_o = x == 5'b11111;
  assign n571_o = {n569_o, n566_o, n563_o, n560_o, n557_o, n554_o, n551_o, n548_o, n545_o, n542_o, n539_o, n536_o, n533_o, n530_o, n527_o, n524_o, n521_o, n518_o, n515_o, n512_o, n509_o, n506_o, n503_o, n500_o, n497_o, n494_o, n491_o, n488_o, n485_o, n482_o, n479_o, n476_o};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:119:4  */
  always @*
    case (n571_o)
      32'b10000000000000000000000000000000: n572_o <= 3'b111;
      32'b01000000000000000000000000000000: n572_o <= 3'b110;
      32'b00100000000000000000000000000000: n572_o <= 3'b110;
      32'b00010000000000000000000000000000: n572_o <= 3'b101;
      32'b00001000000000000000000000000000: n572_o <= 3'b110;
      32'b00000100000000000000000000000000: n572_o <= 3'b101;
      32'b00000010000000000000000000000000: n572_o <= 3'b101;
      32'b00000001000000000000000000000000: n572_o <= 3'b100;
      32'b00000000100000000000000000000000: n572_o <= 3'b101;
      32'b00000000010000000000000000000000: n572_o <= 3'b100;
      32'b00000000001000000000000000000000: n572_o <= 3'b100;
      32'b00000000000100000000000000000000: n572_o <= 3'b011;
      32'b00000000000010000000000000000000: n572_o <= 3'b100;
      32'b00000000000001000000000000000000: n572_o <= 3'b011;
      32'b00000000000000100000000000000000: n572_o <= 3'b011;
      32'b00000000000000010000000000000000: n572_o <= 3'b010;
      32'b00000000000000001000000000000000: n572_o <= 3'b101;
      32'b00000000000000000100000000000000: n572_o <= 3'b100;
      32'b00000000000000000010000000000000: n572_o <= 3'b100;
      32'b00000000000000000001000000000000: n572_o <= 3'b011;
      32'b00000000000000000000100000000000: n572_o <= 3'b100;
      32'b00000000000000000000010000000000: n572_o <= 3'b011;
      32'b00000000000000000000001000000000: n572_o <= 3'b011;
      32'b00000000000000000000000100000000: n572_o <= 3'b010;
      32'b00000000000000000000000010000000: n572_o <= 3'b011;
      32'b00000000000000000000000001000000: n572_o <= 3'b010;
      32'b00000000000000000000000000100000: n572_o <= 3'b010;
      32'b00000000000000000000000000010000: n572_o <= 3'b001;
      32'b00000000000000000000000000001000: n572_o <= 3'b010;
      32'b00000000000000000000000000000100: n572_o <= 3'b001;
      32'b00000000000000000000000000000010: n572_o <= 3'b001;
      32'b00000000000000000000000000000001: n572_o <= 3'b000;
      default: n572_o <= 3'bXXX;
    endcase
endmodule

module smallmulttablep3x3r6xuyu_f600_uid9
  (input  clk,
   input  rst,
   input  [5:0] x,
   output [5:0] y);
  wire [5:0] tableout;
  wire n279_o;
  wire n282_o;
  wire n285_o;
  wire n288_o;
  wire n291_o;
  wire n294_o;
  wire n297_o;
  wire n300_o;
  wire n303_o;
  wire n306_o;
  wire n309_o;
  wire n312_o;
  wire n315_o;
  wire n318_o;
  wire n321_o;
  wire n324_o;
  wire n327_o;
  wire n330_o;
  wire n333_o;
  wire n336_o;
  wire n339_o;
  wire n342_o;
  wire n345_o;
  wire n348_o;
  wire n351_o;
  wire n354_o;
  wire n357_o;
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
  wire [63:0] n470_o;
  reg [5:0] n471_o;
  assign y = tableout;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:17:8  */
  assign tableout = n471_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:25:13  */
  assign n279_o = x == 6'b000000;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:26:13  */
  assign n282_o = x == 6'b000001;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:27:13  */
  assign n285_o = x == 6'b000010;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:28:13  */
  assign n288_o = x == 6'b000011;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:29:13  */
  assign n291_o = x == 6'b000100;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:30:13  */
  assign n294_o = x == 6'b000101;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:31:13  */
  assign n297_o = x == 6'b000110;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:32:13  */
  assign n300_o = x == 6'b000111;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:33:13  */
  assign n303_o = x == 6'b001000;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:34:13  */
  assign n306_o = x == 6'b001001;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:35:13  */
  assign n309_o = x == 6'b001010;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:36:13  */
  assign n312_o = x == 6'b001011;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:37:13  */
  assign n315_o = x == 6'b001100;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:38:13  */
  assign n318_o = x == 6'b001101;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:39:13  */
  assign n321_o = x == 6'b001110;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:40:13  */
  assign n324_o = x == 6'b001111;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:41:13  */
  assign n327_o = x == 6'b010000;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:42:13  */
  assign n330_o = x == 6'b010001;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:43:13  */
  assign n333_o = x == 6'b010010;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:44:13  */
  assign n336_o = x == 6'b010011;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:45:13  */
  assign n339_o = x == 6'b010100;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:46:13  */
  assign n342_o = x == 6'b010101;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:47:13  */
  assign n345_o = x == 6'b010110;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:48:13  */
  assign n348_o = x == 6'b010111;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:49:13  */
  assign n351_o = x == 6'b011000;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:50:13  */
  assign n354_o = x == 6'b011001;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:51:13  */
  assign n357_o = x == 6'b011010;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:52:13  */
  assign n360_o = x == 6'b011011;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:53:13  */
  assign n363_o = x == 6'b011100;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:54:13  */
  assign n366_o = x == 6'b011101;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:55:13  */
  assign n369_o = x == 6'b011110;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:56:13  */
  assign n372_o = x == 6'b011111;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:57:13  */
  assign n375_o = x == 6'b100000;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:58:13  */
  assign n378_o = x == 6'b100001;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:59:13  */
  assign n381_o = x == 6'b100010;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:60:13  */
  assign n384_o = x == 6'b100011;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:61:13  */
  assign n387_o = x == 6'b100100;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:62:13  */
  assign n390_o = x == 6'b100101;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:63:13  */
  assign n393_o = x == 6'b100110;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:64:13  */
  assign n396_o = x == 6'b100111;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:65:13  */
  assign n399_o = x == 6'b101000;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:66:13  */
  assign n402_o = x == 6'b101001;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:67:13  */
  assign n405_o = x == 6'b101010;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:68:13  */
  assign n408_o = x == 6'b101011;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:69:13  */
  assign n411_o = x == 6'b101100;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:70:13  */
  assign n414_o = x == 6'b101101;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:71:13  */
  assign n417_o = x == 6'b101110;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:72:13  */
  assign n420_o = x == 6'b101111;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:73:13  */
  assign n423_o = x == 6'b110000;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:74:13  */
  assign n426_o = x == 6'b110001;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:75:13  */
  assign n429_o = x == 6'b110010;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:76:13  */
  assign n432_o = x == 6'b110011;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:77:13  */
  assign n435_o = x == 6'b110100;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:78:13  */
  assign n438_o = x == 6'b110101;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:79:13  */
  assign n441_o = x == 6'b110110;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:80:13  */
  assign n444_o = x == 6'b110111;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:81:13  */
  assign n447_o = x == 6'b111000;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:82:13  */
  assign n450_o = x == 6'b111001;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:83:13  */
  assign n453_o = x == 6'b111010;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:84:13  */
  assign n456_o = x == 6'b111011;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:85:13  */
  assign n459_o = x == 6'b111100;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:86:13  */
  assign n462_o = x == 6'b111101;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:87:13  */
  assign n465_o = x == 6'b111110;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:88:13  */
  assign n468_o = x == 6'b111111;
  assign n470_o = {n468_o, n465_o, n462_o, n459_o, n456_o, n453_o, n450_o, n447_o, n444_o, n441_o, n438_o, n435_o, n432_o, n429_o, n426_o, n423_o, n420_o, n417_o, n414_o, n411_o, n408_o, n405_o, n402_o, n399_o, n396_o, n393_o, n390_o, n387_o, n384_o, n381_o, n378_o, n375_o, n372_o, n369_o, n366_o, n363_o, n360_o, n357_o, n354_o, n351_o, n348_o, n345_o, n342_o, n339_o, n336_o, n333_o, n330_o, n327_o, n324_o, n321_o, n318_o, n315_o, n312_o, n309_o, n306_o, n303_o, n300_o, n297_o, n294_o, n291_o, n288_o, n285_o, n282_o, n279_o};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:24:3  */
  always @*
    case (n470_o)
      64'b1000000000000000000000000000000000000000000000000000000000000000: n471_o <= 6'b110001;
      64'b0100000000000000000000000000000000000000000000000000000000000000: n471_o <= 6'b101010;
      64'b0010000000000000000000000000000000000000000000000000000000000000: n471_o <= 6'b100011;
      64'b0001000000000000000000000000000000000000000000000000000000000000: n471_o <= 6'b011100;
      64'b0000100000000000000000000000000000000000000000000000000000000000: n471_o <= 6'b010101;
      64'b0000010000000000000000000000000000000000000000000000000000000000: n471_o <= 6'b001110;
      64'b0000001000000000000000000000000000000000000000000000000000000000: n471_o <= 6'b000111;
      64'b0000000100000000000000000000000000000000000000000000000000000000: n471_o <= 6'b000000;
      64'b0000000010000000000000000000000000000000000000000000000000000000: n471_o <= 6'b101010;
      64'b0000000001000000000000000000000000000000000000000000000000000000: n471_o <= 6'b100100;
      64'b0000000000100000000000000000000000000000000000000000000000000000: n471_o <= 6'b011110;
      64'b0000000000010000000000000000000000000000000000000000000000000000: n471_o <= 6'b011000;
      64'b0000000000001000000000000000000000000000000000000000000000000000: n471_o <= 6'b010010;
      64'b0000000000000100000000000000000000000000000000000000000000000000: n471_o <= 6'b001100;
      64'b0000000000000010000000000000000000000000000000000000000000000000: n471_o <= 6'b000110;
      64'b0000000000000001000000000000000000000000000000000000000000000000: n471_o <= 6'b000000;
      64'b0000000000000000100000000000000000000000000000000000000000000000: n471_o <= 6'b100011;
      64'b0000000000000000010000000000000000000000000000000000000000000000: n471_o <= 6'b011110;
      64'b0000000000000000001000000000000000000000000000000000000000000000: n471_o <= 6'b011001;
      64'b0000000000000000000100000000000000000000000000000000000000000000: n471_o <= 6'b010100;
      64'b0000000000000000000010000000000000000000000000000000000000000000: n471_o <= 6'b001111;
      64'b0000000000000000000001000000000000000000000000000000000000000000: n471_o <= 6'b001010;
      64'b0000000000000000000000100000000000000000000000000000000000000000: n471_o <= 6'b000101;
      64'b0000000000000000000000010000000000000000000000000000000000000000: n471_o <= 6'b000000;
      64'b0000000000000000000000001000000000000000000000000000000000000000: n471_o <= 6'b011100;
      64'b0000000000000000000000000100000000000000000000000000000000000000: n471_o <= 6'b011000;
      64'b0000000000000000000000000010000000000000000000000000000000000000: n471_o <= 6'b010100;
      64'b0000000000000000000000000001000000000000000000000000000000000000: n471_o <= 6'b010000;
      64'b0000000000000000000000000000100000000000000000000000000000000000: n471_o <= 6'b001100;
      64'b0000000000000000000000000000010000000000000000000000000000000000: n471_o <= 6'b001000;
      64'b0000000000000000000000000000001000000000000000000000000000000000: n471_o <= 6'b000100;
      64'b0000000000000000000000000000000100000000000000000000000000000000: n471_o <= 6'b000000;
      64'b0000000000000000000000000000000010000000000000000000000000000000: n471_o <= 6'b010101;
      64'b0000000000000000000000000000000001000000000000000000000000000000: n471_o <= 6'b010010;
      64'b0000000000000000000000000000000000100000000000000000000000000000: n471_o <= 6'b001111;
      64'b0000000000000000000000000000000000010000000000000000000000000000: n471_o <= 6'b001100;
      64'b0000000000000000000000000000000000001000000000000000000000000000: n471_o <= 6'b001001;
      64'b0000000000000000000000000000000000000100000000000000000000000000: n471_o <= 6'b000110;
      64'b0000000000000000000000000000000000000010000000000000000000000000: n471_o <= 6'b000011;
      64'b0000000000000000000000000000000000000001000000000000000000000000: n471_o <= 6'b000000;
      64'b0000000000000000000000000000000000000000100000000000000000000000: n471_o <= 6'b001110;
      64'b0000000000000000000000000000000000000000010000000000000000000000: n471_o <= 6'b001100;
      64'b0000000000000000000000000000000000000000001000000000000000000000: n471_o <= 6'b001010;
      64'b0000000000000000000000000000000000000000000100000000000000000000: n471_o <= 6'b001000;
      64'b0000000000000000000000000000000000000000000010000000000000000000: n471_o <= 6'b000110;
      64'b0000000000000000000000000000000000000000000001000000000000000000: n471_o <= 6'b000100;
      64'b0000000000000000000000000000000000000000000000100000000000000000: n471_o <= 6'b000010;
      64'b0000000000000000000000000000000000000000000000010000000000000000: n471_o <= 6'b000000;
      64'b0000000000000000000000000000000000000000000000001000000000000000: n471_o <= 6'b000111;
      64'b0000000000000000000000000000000000000000000000000100000000000000: n471_o <= 6'b000110;
      64'b0000000000000000000000000000000000000000000000000010000000000000: n471_o <= 6'b000101;
      64'b0000000000000000000000000000000000000000000000000001000000000000: n471_o <= 6'b000100;
      64'b0000000000000000000000000000000000000000000000000000100000000000: n471_o <= 6'b000011;
      64'b0000000000000000000000000000000000000000000000000000010000000000: n471_o <= 6'b000010;
      64'b0000000000000000000000000000000000000000000000000000001000000000: n471_o <= 6'b000001;
      64'b0000000000000000000000000000000000000000000000000000000100000000: n471_o <= 6'b000000;
      64'b0000000000000000000000000000000000000000000000000000000010000000: n471_o <= 6'b000000;
      64'b0000000000000000000000000000000000000000000000000000000001000000: n471_o <= 6'b000000;
      64'b0000000000000000000000000000000000000000000000000000000000100000: n471_o <= 6'b000000;
      64'b0000000000000000000000000000000000000000000000000000000000010000: n471_o <= 6'b000000;
      64'b0000000000000000000000000000000000000000000000000000000000001000: n471_o <= 6'b000000;
      64'b0000000000000000000000000000000000000000000000000000000000000100: n471_o <= 6'b000000;
      64'b0000000000000000000000000000000000000000000000000000000000000010: n471_o <= 6'b000000;
      64'b0000000000000000000000000000000000000000000000000000000000000001: n471_o <= 6'b000000;
      default: n471_o <= 6'bXXXXXX;
    endcase
endmodule

module intadder_12_f600_uid42
  (input  clk,
   input  rst,
   input  [11:0] x,
   input  [11:0] y,
   input  cin,
   output [11:0] r);
  wire [11:0] n269_o;
  wire [11:0] n270_o;
  wire [11:0] n271_o;
  assign r = n271_o;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:493:12  */
  assign n269_o = x + y;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:493:16  */
  assign n270_o = {11'b0, cin};  //  uext
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:493:16  */
  assign n271_o = n269_o + n270_o;
endmodule

module intmultiplier_usingdsp_6_6_12_unsigned_f600_uid4
  (input  clk,
   input  rst,
   input  [5:0] x,
   input  [5:0] y,
   output [11:0] r);
  wire [5:0] xx_m5;
  wire [5:0] yy_m5;
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
  wire heap_bh6_w4_0;
  wire heap_bh6_w4_0_d1;
  wire heap_bh6_w5_0;
  wire [5:0] y0x1_7_m5;
  wire [5:0] pp7x1y0_m5;
  wire heap_bh6_w3_1;
  wire heap_bh6_w4_1;
  wire heap_bh6_w5_1;
  wire heap_bh6_w6_0;
  wire heap_bh6_w6_0_d1;
  wire heap_bh6_w7_0;
  wire heap_bh6_w8_0;
  wire heap_bh6_w8_0_d1;
  wire [5:0] y1x0_7_m5;
  wire [5:0] pp7x0y1_m5;
  wire heap_bh6_w3_2;
  wire heap_bh6_w4_2;
  wire heap_bh6_w5_2;
  wire heap_bh6_w6_1;
  wire heap_bh6_w7_1;
  wire heap_bh6_w8_1;
  wire [5:0] y1x1_7_m5;
  wire [5:0] pp7x1y1_m5;
  wire heap_bh6_w6_2;
  wire heap_bh6_w7_2;
  wire heap_bh6_w8_2;
  wire heap_bh6_w9_0;
  wire heap_bh6_w9_0_d1;
  wire heap_bh6_w10_0;
  wire heap_bh6_w10_0_d1;
  wire heap_bh6_w11_0;
  wire heap_bh6_w11_0_d1;
  wire [2:0] tempr_bh6_0;
  wire [2:0] tempr_bh6_0_d1;
  wire [2:0] compressorin_bh6_0_0;
  wire [1:0] compressorin_bh6_0_1;
  wire [2:0] compressorout_bh6_0_0;
  wire heap_bh6_w3_3;
  wire heap_bh6_w4_3;
  wire heap_bh6_w4_3_d1;
  wire heap_bh6_w5_3;
  wire heap_bh6_w5_3_d1;
  wire [2:0] compressorin_bh6_1_2;
  wire [1:0] compressorin_bh6_1_3;
  wire [2:0] compressorout_bh6_1_1;
  wire heap_bh6_w5_4;
  wire heap_bh6_w5_4_d1;
  wire heap_bh6_w6_3;
  wire heap_bh6_w6_3_d1;
  wire heap_bh6_w7_3;
  wire heap_bh6_w7_3_d1;
  wire [2:0] compressorin_bh6_2_4;
  wire [1:0] compressorin_bh6_2_5;
  wire [2:0] compressorout_bh6_2_2;
  wire heap_bh6_w7_4;
  wire heap_bh6_w7_4_d1;
  wire heap_bh6_w8_3;
  wire heap_bh6_w8_3_d1;
  wire heap_bh6_w9_1;
  wire heap_bh6_w9_1_d1;
  wire [8:0] finaladderin0_bh6;
  wire [8:0] finaladderin1_bh6;
  wire finaladdercin_bh6;
  wire [8:0] finaladderout_bh6;
  wire tempr_bh6_1;
  wire tempr_bh6_1_d1;
  wire [12:0] compressionresult6;
  reg n150_q;
  reg n151_q;
  reg n152_q;
  reg n153_q;
  reg n154_q;
  reg n155_q;
  reg [2:0] n156_q;
  reg n157_q;
  reg n158_q;
  reg n159_q;
  reg n160_q;
  reg n161_q;
  reg n162_q;
  reg n163_q;
  reg n164_q;
  reg n165_q;
  wire [2:0] n168_o;
  wire [2:0] n169_o;
  wire [2:0] n170_o;
  wire [2:0] n171_o;
  wire [5:0] n172_o;
  wire [5:0] pp_m5_7x0y0_tbl_n173;
  wire [5:0] pp_m5_7x0y0_tbl_y;
  wire n176_o;
  wire n177_o;
  wire n178_o;
  wire n179_o;
  wire n180_o;
  wire n181_o;
  wire [5:0] n182_o;
  wire [5:0] pp_m5_7x1y0_tbl_n183;
  wire [5:0] pp_m5_7x1y0_tbl_y;
  wire n186_o;
  wire n187_o;
  wire n188_o;
  wire n189_o;
  wire n190_o;
  wire n191_o;
  wire [5:0] n192_o;
  wire [5:0] pp_m5_7x0y1_tbl_n193;
  wire [5:0] pp_m5_7x0y1_tbl_y;
  wire n196_o;
  wire n197_o;
  wire n198_o;
  wire n199_o;
  wire n200_o;
  wire n201_o;
  wire [5:0] n202_o;
  wire [5:0] pp_m5_7x1y1_tbl_n203;
  wire [5:0] pp_m5_7x1y1_tbl_y;
  wire n206_o;
  wire n207_o;
  wire n208_o;
  wire n209_o;
  wire n210_o;
  wire n211_o;
  wire [1:0] n212_o;
  wire [2:0] n213_o;
  wire [1:0] n214_o;
  wire [2:0] n215_o;
  wire [1:0] n216_o;
  wire [2:0] compressor_bh6_0_n217;
  wire [2:0] compressor_bh6_0_r;
  wire n220_o;
  wire n221_o;
  wire n222_o;
  wire [1:0] n223_o;
  wire [2:0] n224_o;
  wire [1:0] n225_o;
  wire [2:0] compressor_bh6_1_n226;
  wire [2:0] compressor_bh6_1_r;
  wire n229_o;
  wire n230_o;
  wire n231_o;
  wire [1:0] n232_o;
  wire [2:0] n233_o;
  wire [1:0] n234_o;
  wire [2:0] compressor_bh6_2_n235;
  wire [2:0] compressor_bh6_2_r;
  wire n238_o;
  wire n239_o;
  wire n240_o;
  wire [1:0] n242_o;
  wire [2:0] n243_o;
  wire [3:0] n244_o;
  wire [4:0] n245_o;
  wire [5:0] n246_o;
  wire [6:0] n247_o;
  wire [7:0] n248_o;
  wire [8:0] n249_o;
  wire [3:0] n251_o;
  wire [4:0] n252_o;
  wire [5:0] n253_o;
  wire [6:0] n254_o;
  wire [7:0] n255_o;
  wire [8:0] n256_o;
  wire [8:0] adder_final6_0_n258;
  wire [8:0] adder_final6_0_r;
  wire [9:0] n261_o;
  wire [12:0] n262_o;
  wire [11:0] n263_o;
  assign r = n263_o;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:330:33  */
  assign xx_m5 = x; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:331:33  */
  assign yy_m5 = y; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:237:8  */
  assign xp_m5b7 = xx_m5; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:238:8  */
  assign yp_m5b7 = yy_m5; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:239:8  */
  assign x_m5b7_0 = n168_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:240:8  */
  assign x_m5b7_1 = n169_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:241:8  */
  assign y_m5b7_0 = n170_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:242:8  */
  assign y_m5b7_1 = n171_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:243:8  */
  assign y0x0_7_m5 = n172_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:244:8  */
  assign pp7x0y0_m5 = pp_m5_7x0y0_tbl_n173; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:245:8  */
  assign heap_bh6_w0_0 = n176_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:246:8  */
  assign heap_bh6_w1_0 = n177_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:247:8  */
  assign heap_bh6_w2_0 = n178_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:248:8  */
  assign heap_bh6_w3_0 = n179_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:249:8  */
  assign heap_bh6_w4_0 = n180_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:249:23  */
  assign heap_bh6_w4_0_d1 = n150_q; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:250:8  */
  assign heap_bh6_w5_0 = n181_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:251:8  */
  assign y0x1_7_m5 = n182_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:252:8  */
  assign pp7x1y0_m5 = pp_m5_7x1y0_tbl_n183; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:253:8  */
  assign heap_bh6_w3_1 = n186_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:254:8  */
  assign heap_bh6_w4_1 = n187_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:255:8  */
  assign heap_bh6_w5_1 = n188_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:256:8  */
  assign heap_bh6_w6_0 = n189_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:256:23  */
  assign heap_bh6_w6_0_d1 = n151_q; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:257:8  */
  assign heap_bh6_w7_0 = n190_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:258:8  */
  assign heap_bh6_w8_0 = n191_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:258:23  */
  assign heap_bh6_w8_0_d1 = n152_q; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:259:8  */
  assign y1x0_7_m5 = n192_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:260:8  */
  assign pp7x0y1_m5 = pp_m5_7x0y1_tbl_n193; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:261:8  */
  assign heap_bh6_w3_2 = n196_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:262:8  */
  assign heap_bh6_w4_2 = n197_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:263:8  */
  assign heap_bh6_w5_2 = n198_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:264:8  */
  assign heap_bh6_w6_1 = n199_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:265:8  */
  assign heap_bh6_w7_1 = n200_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:266:8  */
  assign heap_bh6_w8_1 = n201_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:267:8  */
  assign y1x1_7_m5 = n202_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:268:8  */
  assign pp7x1y1_m5 = pp_m5_7x1y1_tbl_n203; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:269:8  */
  assign heap_bh6_w6_2 = n206_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:270:8  */
  assign heap_bh6_w7_2 = n207_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:271:8  */
  assign heap_bh6_w8_2 = n208_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:272:8  */
  assign heap_bh6_w9_0 = n209_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:272:23  */
  assign heap_bh6_w9_0_d1 = n153_q; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:273:8  */
  assign heap_bh6_w10_0 = n210_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:273:24  */
  assign heap_bh6_w10_0_d1 = n154_q; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:274:8  */
  assign heap_bh6_w11_0 = n211_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:274:24  */
  assign heap_bh6_w11_0_d1 = n155_q; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:275:8  */
  assign tempr_bh6_0 = n213_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:275:21  */
  assign tempr_bh6_0_d1 = n156_q; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:276:8  */
  assign compressorin_bh6_0_0 = n215_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:277:8  */
  assign compressorin_bh6_0_1 = n216_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:278:8  */
  assign compressorout_bh6_0_0 = compressor_bh6_0_n217; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:279:8  */
  assign heap_bh6_w3_3 = n220_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:280:8  */
  assign heap_bh6_w4_3 = n221_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:280:23  */
  assign heap_bh6_w4_3_d1 = n157_q; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:281:8  */
  assign heap_bh6_w5_3 = n222_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:281:23  */
  assign heap_bh6_w5_3_d1 = n158_q; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:282:8  */
  assign compressorin_bh6_1_2 = n224_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:283:8  */
  assign compressorin_bh6_1_3 = n225_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:284:8  */
  assign compressorout_bh6_1_1 = compressor_bh6_1_n226; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:285:8  */
  assign heap_bh6_w5_4 = n229_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:285:23  */
  assign heap_bh6_w5_4_d1 = n159_q; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:286:8  */
  assign heap_bh6_w6_3 = n230_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:286:23  */
  assign heap_bh6_w6_3_d1 = n160_q; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:287:8  */
  assign heap_bh6_w7_3 = n231_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:287:23  */
  assign heap_bh6_w7_3_d1 = n161_q; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:288:8  */
  assign compressorin_bh6_2_4 = n233_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:289:8  */
  assign compressorin_bh6_2_5 = n234_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:290:8  */
  assign compressorout_bh6_2_2 = compressor_bh6_2_n235; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:291:8  */
  assign heap_bh6_w7_4 = n238_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:291:23  */
  assign heap_bh6_w7_4_d1 = n162_q; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:292:8  */
  assign heap_bh6_w8_3 = n239_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:292:23  */
  assign heap_bh6_w8_3_d1 = n163_q; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:293:8  */
  assign heap_bh6_w9_1 = n240_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:293:23  */
  assign heap_bh6_w9_1_d1 = n164_q; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:294:8  */
  assign finaladderin0_bh6 = n249_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:295:8  */
  assign finaladderin1_bh6 = n256_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:296:8  */
  assign finaladdercin_bh6 = 1'b0; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:297:8  */
  assign finaladderout_bh6 = adder_final6_0_n258; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:298:8  */
  assign tempr_bh6_1 = heap_bh6_w3_3; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:298:21  */
  assign tempr_bh6_1_d1 = n165_q; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:299:8  */
  assign compressionresult6 = n262_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:307:10  */
  always @(posedge clk)
    n150_q <= heap_bh6_w4_0;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:307:10  */
  always @(posedge clk)
    n151_q <= heap_bh6_w6_0;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:307:10  */
  always @(posedge clk)
    n152_q <= heap_bh6_w8_0;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:307:10  */
  always @(posedge clk)
    n153_q <= heap_bh6_w9_0;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:307:10  */
  always @(posedge clk)
    n154_q <= heap_bh6_w10_0;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:307:10  */
  always @(posedge clk)
    n155_q <= heap_bh6_w11_0;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:307:10  */
  always @(posedge clk)
    n156_q <= tempr_bh6_0;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:307:10  */
  always @(posedge clk)
    n157_q <= heap_bh6_w4_3;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:307:10  */
  always @(posedge clk)
    n158_q <= heap_bh6_w5_3;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:307:10  */
  always @(posedge clk)
    n159_q <= heap_bh6_w5_4;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:307:10  */
  always @(posedge clk)
    n160_q <= heap_bh6_w6_3;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:307:10  */
  always @(posedge clk)
    n161_q <= heap_bh6_w7_3;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:307:10  */
  always @(posedge clk)
    n162_q <= heap_bh6_w7_4;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:307:10  */
  always @(posedge clk)
    n163_q <= heap_bh6_w8_3;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:307:10  */
  always @(posedge clk)
    n164_q <= heap_bh6_w9_1;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:307:10  */
  always @(posedge clk)
    n165_q <= tempr_bh6_1;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:332:23  */
  assign n168_o = xp_m5b7[2:0];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:333:23  */
  assign n169_o = xp_m5b7[5:3];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:334:23  */
  assign n170_o = yp_m5b7[2:0];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:335:23  */
  assign n171_o = yp_m5b7[5:3];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:338:26  */
  assign n172_o = {y_m5b7_0, x_m5b7_0};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:343:23  */
  assign pp_m5_7x0y0_tbl_n173 = pp_m5_7x0y0_tbl_y; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:339:4  */
  smallmulttablep3x3r6xuyu_f600_uid9 pp_m5_7x0y0_tbl (
    .clk(clk),
    .rst(rst),
    .x(y0x0_7_m5),
    .y(pp_m5_7x0y0_tbl_y));
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:345:31  */
  assign n176_o = pp7x0y0_m5[0];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:346:31  */
  assign n177_o = pp7x0y0_m5[1];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:347:31  */
  assign n178_o = pp7x0y0_m5[2];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:348:31  */
  assign n179_o = pp7x0y0_m5[3];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:349:31  */
  assign n180_o = pp7x0y0_m5[4];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:350:31  */
  assign n181_o = pp7x0y0_m5[5];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:352:26  */
  assign n182_o = {y_m5b7_0, x_m5b7_1};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:357:23  */
  assign pp_m5_7x1y0_tbl_n183 = pp_m5_7x1y0_tbl_y; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:353:4  */
  smallmulttablep3x3r6xuyu_f600_uid9 pp_m5_7x1y0_tbl (
    .clk(clk),
    .rst(rst),
    .x(y0x1_7_m5),
    .y(pp_m5_7x1y0_tbl_y));
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:359:31  */
  assign n186_o = pp7x1y0_m5[0];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:360:31  */
  assign n187_o = pp7x1y0_m5[1];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:361:31  */
  assign n188_o = pp7x1y0_m5[2];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:362:31  */
  assign n189_o = pp7x1y0_m5[3];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:363:31  */
  assign n190_o = pp7x1y0_m5[4];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:364:31  */
  assign n191_o = pp7x1y0_m5[5];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:367:26  */
  assign n192_o = {y_m5b7_1, x_m5b7_0};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:372:23  */
  assign pp_m5_7x0y1_tbl_n193 = pp_m5_7x0y1_tbl_y; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:368:4  */
  smallmulttablep3x3r6xuyu_f600_uid9 pp_m5_7x0y1_tbl (
    .clk(clk),
    .rst(rst),
    .x(y1x0_7_m5),
    .y(pp_m5_7x0y1_tbl_y));
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:374:31  */
  assign n196_o = pp7x0y1_m5[0];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:375:31  */
  assign n197_o = pp7x0y1_m5[1];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:376:31  */
  assign n198_o = pp7x0y1_m5[2];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:377:31  */
  assign n199_o = pp7x0y1_m5[3];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:378:31  */
  assign n200_o = pp7x0y1_m5[4];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:379:31  */
  assign n201_o = pp7x0y1_m5[5];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:381:26  */
  assign n202_o = {y_m5b7_1, x_m5b7_1};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:386:23  */
  assign pp_m5_7x1y1_tbl_n203 = pp_m5_7x1y1_tbl_y; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:382:4  */
  smallmulttablep3x3r6xuyu_f600_uid9 pp_m5_7x1y1_tbl (
    .clk(clk),
    .rst(rst),
    .x(y1x1_7_m5),
    .y(pp_m5_7x1y1_tbl_y));
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:388:31  */
  assign n206_o = pp7x1y1_m5[0];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:389:31  */
  assign n207_o = pp7x1y1_m5[1];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:390:31  */
  assign n208_o = pp7x1y1_m5[2];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:391:31  */
  assign n209_o = pp7x1y1_m5[3];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:392:32  */
  assign n210_o = pp7x1y1_m5[4];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:393:32  */
  assign n211_o = pp7x1y1_m5[5];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:405:33  */
  assign n212_o = {heap_bh6_w2_0, heap_bh6_w1_0};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:405:49  */
  assign n213_o = {n212_o, heap_bh6_w0_0};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:408:42  */
  assign n214_o = {heap_bh6_w3_2, heap_bh6_w3_1};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:408:58  */
  assign n215_o = {n214_o, heap_bh6_w3_0};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:409:42  */
  assign n216_o = {heap_bh6_w4_2, heap_bh6_w4_1};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:411:23  */
  assign compressor_bh6_0_n217 = compressor_bh6_0_r; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:410:7  */
  compressor_23_3 compressor_bh6_0 (
    .x0(compressorin_bh6_0_0),
    .x1(compressorin_bh6_0_1),
    .r(compressor_bh6_0_r));
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:414:42  */
  assign n220_o = compressorout_bh6_0_0[0];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:415:42  */
  assign n221_o = compressorout_bh6_0_0[1];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:416:42  */
  assign n222_o = compressorout_bh6_0_0[2];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:419:42  */
  assign n223_o = {heap_bh6_w5_2, heap_bh6_w5_1};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:419:58  */
  assign n224_o = {n223_o, heap_bh6_w5_0};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:420:42  */
  assign n225_o = {heap_bh6_w6_2, heap_bh6_w6_1};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:422:23  */
  assign compressor_bh6_1_n226 = compressor_bh6_1_r; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:421:7  */
  compressor_23_3 compressor_bh6_1 (
    .x0(compressorin_bh6_1_2),
    .x1(compressorin_bh6_1_3),
    .r(compressor_bh6_1_r));
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:425:42  */
  assign n229_o = compressorout_bh6_1_1[0];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:426:42  */
  assign n230_o = compressorout_bh6_1_1[1];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:427:42  */
  assign n231_o = compressorout_bh6_1_1[2];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:430:42  */
  assign n232_o = {heap_bh6_w7_2, heap_bh6_w7_1};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:430:58  */
  assign n233_o = {n232_o, heap_bh6_w7_0};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:431:42  */
  assign n234_o = {heap_bh6_w8_2, heap_bh6_w8_1};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:433:23  */
  assign compressor_bh6_2_n235 = compressor_bh6_2_r; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:432:7  */
  compressor_23_3 compressor_bh6_2 (
    .x0(compressorin_bh6_2_4),
    .x1(compressorin_bh6_2_5),
    .r(compressor_bh6_2_r));
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:436:42  */
  assign n238_o = compressorout_bh6_2_2[0];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:437:42  */
  assign n239_o = compressorout_bh6_2_2[1];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:438:42  */
  assign n240_o = compressorout_bh6_2_2[2];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:441:29  */
  assign n242_o = {1'b0, heap_bh6_w11_0_d1};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:441:49  */
  assign n243_o = {n242_o, heap_bh6_w10_0_d1};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:441:69  */
  assign n244_o = {n243_o, heap_bh6_w9_0_d1};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:441:88  */
  assign n245_o = {n244_o, heap_bh6_w8_0_d1};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:441:107  */
  assign n246_o = {n245_o, heap_bh6_w7_4_d1};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:441:126  */
  assign n247_o = {n246_o, heap_bh6_w6_0_d1};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:441:145  */
  assign n248_o = {n247_o, heap_bh6_w5_4_d1};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:441:164  */
  assign n249_o = {n248_o, heap_bh6_w4_0_d1};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:442:41  */
  assign n251_o = {3'b000, heap_bh6_w9_1_d1};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:442:60  */
  assign n252_o = {n251_o, heap_bh6_w8_3_d1};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:442:79  */
  assign n253_o = {n252_o, heap_bh6_w7_3_d1};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:442:98  */
  assign n254_o = {n253_o, heap_bh6_w6_3_d1};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:442:117  */
  assign n255_o = {n254_o, heap_bh6_w5_3_d1};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:442:136  */
  assign n256_o = {n255_o, heap_bh6_w4_3_d1};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:448:23  */
  assign adder_final6_0_n258 = adder_final6_0_r; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:444:7  */
  intadder_9_f600_uid32 adder_final6_0 (
    .clk(clk),
    .rst(rst),
    .x(finaladderin0_bh6),
    .y(finaladderin1_bh6),
    .cin(finaladdercin_bh6),
    .r(adder_final6_0_r));
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:455:44  */
  assign n261_o = {finaladderout_bh6, tempr_bh6_1_d1};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:455:61  */
  assign n262_o = {n261_o, tempr_bh6_0_d1};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:457:27  */
  assign n263_o = compressionresult6[11:0];
endmodule

module fmul
  (input  clk,
   input  rst,
   input  [12:0] X,
   input  [12:0] Y,
   output [12:0] R);
  wire sign;
  wire sign_d1;
  wire sign_d2;
  wire [4:0] expx;
  wire [4:0] expy;
  wire [6:0] expsumpresub;
  wire [6:0] expsumpresub_d1;
  wire [6:0] bias;
  wire [6:0] bias_d1;
  wire [6:0] expsum;
  wire [5:0] sigx;
  wire [5:0] sigy;
  wire [11:0] sigprod;
  wire [3:0] excsel;
  wire [1:0] exc;
  wire [1:0] exc_d1;
  wire [1:0] exc_d2;
  wire norm;
  wire [6:0] exppostnorm;
  wire [11:0] sigprodext;
  wire [11:0] sigprodext_d1;
  wire [11:0] expsig;
  wire [11:0] expsig_d1;
  wire sticky;
  wire sticky_d1;
  wire guard;
  wire round;
  wire [11:0] expsigpostround;
  wire [1:0] excpostnorm;
  wire [1:0] finalexc;
  reg n14_q;
  reg n15_q;
  reg [6:0] n16_q;
  reg [6:0] n17_q;
  reg [1:0] n18_q;
  reg [1:0] n19_q;
  reg [11:0] n20_q;
  reg [11:0] n21_q;
  reg n22_q;
  wire n23_o;
  wire n24_o;
  wire n25_o;
  wire [4:0] n26_o;
  wire [4:0] n27_o;
  wire [6:0] n29_o;
  wire [6:0] n31_o;
  wire [6:0] n32_o;
  wire [6:0] n34_o;
  wire [4:0] n35_o;
  wire [5:0] n37_o;
  wire [4:0] n38_o;
  wire [5:0] n40_o;
  wire [11:0] significandmultiplication_n41;
  wire [11:0] significandmultiplication_r;
  wire [1:0] n44_o;
  wire [1:0] n45_o;
  wire [3:0] n46_o;
  wire n49_o;
  wire n51_o;
  wire n52_o;
  wire n54_o;
  wire n55_o;
  wire n58_o;
  wire n61_o;
  wire n63_o;
  wire n64_o;
  wire n66_o;
  wire n67_o;
  wire [2:0] n69_o;
  reg [1:0] n70_o;
  wire n71_o;
  wire [6:0] n73_o;
  wire [6:0] n74_o;
  wire [10:0] n75_o;
  wire [11:0] n77_o;
  wire [11:0] n78_o;
  wire [9:0] n79_o;
  wire [11:0] n81_o;
  wire [4:0] n82_o;
  wire [11:0] n83_o;
  wire n84_o;
  wire [5:0] n86_o;
  wire n88_o;
  wire n89_o;
  wire n91_o;
  wire n92_o;
  wire n93_o;
  wire n94_o;
  wire n95_o;
  wire n96_o;
  localparam [11:0] n97_o = 12'b000000000000;
  wire [11:0] roundingadder_n98;
  wire [11:0] roundingadder_r;
  wire [1:0] n101_o;
  wire n104_o;
  wire n107_o;
  wire n110_o;
  wire n112_o;
  wire n113_o;
  wire [2:0] n115_o;
  reg [1:0] n116_o;
  wire n118_o;
  wire n120_o;
  wire n121_o;
  wire n123_o;
  wire n124_o;
  reg [1:0] n125_o;
  wire [2:0] n126_o;
  wire [9:0] n127_o;
  wire [12:0] n128_o;
  assign R = n128_o;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:536:8  */
  assign sign = n25_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:536:14  */
  assign sign_d1 = n14_q; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:536:23  */
  assign sign_d2 = n15_q; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:537:8  */
  assign expx = n26_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:538:8  */
  assign expy = n27_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:539:8  */
  assign expsumpresub = n32_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:539:22  */
  assign expsumpresub_d1 = n16_q; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:540:8  */
  assign bias = 7'b0001111; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:540:14  */
  assign bias_d1 = n17_q; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:541:8  */
  assign expsum = n34_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:542:8  */
  assign sigx = n37_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:543:8  */
  assign sigy = n40_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:544:8  */
  assign sigprod = significandmultiplication_n41; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:545:8  */
  assign excsel = n46_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:546:8  */
  assign exc = n70_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:546:13  */
  assign exc_d1 = n18_q; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:546:21  */
  assign exc_d2 = n19_q; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:547:8  */
  assign norm = n71_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:548:8  */
  assign exppostnorm = n74_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:549:8  */
  assign sigprodext = n78_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:549:20  */
  assign sigprodext_d1 = n20_q; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:550:8  */
  assign expsig = n83_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:550:16  */
  assign expsig_d1 = n21_q; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:551:8  */
  assign sticky = n84_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:551:16  */
  assign sticky_d1 = n22_q; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:552:8  */
  assign guard = n89_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:553:8  */
  assign round = n96_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:554:8  */
  assign expsigpostround = roundingadder_n98; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:555:8  */
  assign excpostnorm = n116_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:556:8  */
  assign finalexc = n125_o; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:560:10  */
  always @(posedge clk)
    n14_q <= sign;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:560:10  */
  always @(posedge clk)
    n15_q <= sign_d1;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:560:10  */
  always @(posedge clk)
    n16_q <= expsumpresub;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:560:10  */
  always @(posedge clk)
    n17_q <= bias;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:560:10  */
  always @(posedge clk)
    n18_q <= exc;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:560:10  */
  always @(posedge clk)
    n19_q <= exc_d1;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:560:10  */
  always @(posedge clk)
    n20_q <= sigprodext;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:560:10  */
  always @(posedge clk)
    n21_q <= expsig;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:560:10  */
  always @(posedge clk)
    n22_q <= sticky;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:572:13  */
  assign n23_o = X[10];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:572:23  */
  assign n24_o = Y[10];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:572:18  */
  assign n25_o = n23_o ^ n24_o;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:573:13  */
  assign n26_o = X[9:5];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:574:13  */
  assign n27_o = Y[9:5];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:575:26  */
  assign n29_o = {2'b00, expx};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:575:42  */
  assign n31_o = {2'b00, expy};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:575:34  */
  assign n32_o = n29_o + n31_o;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:578:30  */
  assign n34_o = expsumpresub_d1 - bias_d1;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:580:19  */
  assign n35_o = X[4:0];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:580:16  */
  assign n37_o = {1'b1, n35_o};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:581:19  */
  assign n38_o = Y[4:0];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:581:16  */
  assign n40_o = {1'b1, n38_o};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:585:23  */
  assign significandmultiplication_n41 = significandmultiplication_r; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:582:4  */
  intmultiplier_usingdsp_6_6_12_unsigned_f600_uid4 significandmultiplication (
    .clk(clk),
    .rst(rst),
    .x(sigx),
    .y(sigy),
    .r(significandmultiplication_r));
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:590:15  */
  assign n44_o = X[12:11];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:590:33  */
  assign n45_o = Y[12:11];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:590:30  */
  assign n46_o = {n44_o, n45_o};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:592:16  */
  assign n49_o = excsel == 4'b0000;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:592:29  */
  assign n51_o = excsel == 4'b0001;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:592:29  */
  assign n52_o = n49_o | n51_o;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:592:38  */
  assign n54_o = excsel == 4'b0100;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:592:38  */
  assign n55_o = n52_o | n54_o;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:593:16  */
  assign n58_o = excsel == 4'b0101;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:594:16  */
  assign n61_o = excsel == 4'b0110;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:594:28  */
  assign n63_o = excsel == 4'b1001;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:594:28  */
  assign n64_o = n61_o | n63_o;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:594:37  */
  assign n66_o = excsel == 4'b1010;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:594:37  */
  assign n67_o = n64_o | n66_o;
  assign n69_o = {n67_o, n58_o, n55_o};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:591:4  */
  always @*
    case (n69_o)
      3'b100: n70_o <= 2'b10;
      3'b010: n70_o <= 2'b01;
      3'b001: n70_o <= 2'b00;
      default: n70_o <= 2'b11;
    endcase
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:596:19  */
  assign n71_o = sigprod[11];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:598:38  */
  assign n73_o = {6'b000000, norm};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:598:26  */
  assign n74_o = expsum + n73_o;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:600:25  */
  assign n75_o = sigprod[10:0];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:600:39  */
  assign n77_o = {n75_o, 1'b0};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:600:45  */
  assign n78_o = norm ? n77_o : n81_o;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:601:33  */
  assign n79_o = sigprod[9:0];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:601:46  */
  assign n81_o = {n79_o, 2'b00};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:602:38  */
  assign n82_o = sigprodext[11:7];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:602:26  */
  assign n83_o = {exppostnorm, n82_o};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:603:24  */
  assign n84_o = sigprodext[6];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:605:35  */
  assign n86_o = sigprodext_d1[5:0];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:605:47  */
  assign n88_o = n86_o == 6'b000000;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:605:17  */
  assign n89_o = n88_o ? 1'b0 : 1'b1;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:606:57  */
  assign n91_o = sigprodext_d1[7];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:606:40  */
  assign n92_o = ~n91_o;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:606:36  */
  assign n93_o = guard & n92_o;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:606:80  */
  assign n94_o = sigprodext_d1[7];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:606:63  */
  assign n95_o = n93_o | n94_o;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:606:23  */
  assign n96_o = sticky_d1 & n95_o;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:611:23  */
  assign roundingadder_n98 = roundingadder_r; // (signal)
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:607:7  */
  intadder_12_f600_uid42 roundingadder (
    .clk(clk),
    .rst(rst),
    .x(expsig_d1),
    .y(n97_o),
    .cin(round),
    .r(roundingadder_r));
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:614:24  */
  assign n101_o = expsigpostround[11:10];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:615:26  */
  assign n104_o = n101_o == 2'b00;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:616:49  */
  assign n107_o = n101_o == 2'b01;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:617:49  */
  assign n110_o = n101_o == 2'b11;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:617:58  */
  assign n112_o = n101_o == 2'b10;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:617:58  */
  assign n113_o = n110_o | n112_o;
  assign n115_o = {n113_o, n107_o, n104_o};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:614:4  */
  always @*
    case (n115_o)
      3'b100: n116_o <= 2'b00;
      3'b010: n116_o <= 2'b10;
      3'b001: n116_o <= 2'b01;
      default: n116_o <= 2'b11;
    endcase
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:620:23  */
  assign n118_o = exc_d2 == 2'b11;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:620:33  */
  assign n120_o = exc_d2 == 2'b10;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:620:33  */
  assign n121_o = n118_o | n120_o;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:620:38  */
  assign n123_o = exc_d2 == 2'b00;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:620:38  */
  assign n124_o = n121_o | n123_o;
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:619:4  */
  always @*
    case (n124_o)
      1'b1: n125_o <= exc_d2;
      default: n125_o <= excpostnorm;
    endcase
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:622:18  */
  assign n126_o = {finalexc, sign_d2};
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:622:45  */
  assign n127_o = expsigpostround[9:0];
  /* /Users/mlevental/dev_projects/bragghls/scripts/../ip_cores/flopoco_fmul_5_5.vhdl:622:28  */
  assign n128_o = {n126_o, n127_o};
endmodule

