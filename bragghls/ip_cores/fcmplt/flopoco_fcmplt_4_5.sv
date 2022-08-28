module intcomparator_9_101_f300_uid4
  (input wire clk,
   input wire [8:0] x,
   input wire [8:0] y,
   output wire xlty,
   output wire xgty);
  wire xltyi;
  wire xgtyi;
  wire n91_o;
  wire n92_o;
  wire n95_o;
  wire n96_o;
  assign xlty = xltyi;
  assign xgty = xgtyi;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fcmplt_4_5.vhdl:31:8  */
  assign xltyi = n92_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fcmplt_4_5.vhdl:32:8  */
  assign xgtyi = n96_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fcmplt_4_5.vhdl:34:23  */
  assign n91_o = $unsigned(x) < $unsigned(y);
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fcmplt_4_5.vhdl:34:17  */
  assign n92_o = n91_o ? 1'b1 : 1'b0;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fcmplt_4_5.vhdl:35:23  */
  assign n95_o = $unsigned(x) > $unsigned(y);
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fcmplt_4_5.vhdl:35:17  */
  assign n96_o = n95_o ? 1'b1 : 1'b0;
endmodule

module fcmplt #(parameter ID=1)
  (input wire clk,
   input wire [11:0] X,
   input wire [11:0] Y,
   output wire unordered,
   output wire XltY);
  wire [1:0] excx;
  wire [1:0] excy;
  wire signx;
  wire signy;
  wire [8:0] expfracx;
  wire [8:0] expfracy;
  wire iszerox;
  wire iszeroy;
  wire isnormalx;
  wire isnormaly;
  wire isinfx;
  wire isinfy;
  wire isnanx;
  wire isnany;
  wire negativex;
  wire positivex;
  wire negativey;
  wire positivey;
  wire expfracxltexpfracy;
  wire expfracxgtexpfracy;
  wire xltynum;
  wire unorderedr;
  wire xltyr;
  wire [1:0] n2_o;
  wire [1:0] n3_o;
  wire n4_o;
  wire n5_o;
  wire [8:0] n6_o;
  wire [8:0] n7_o;
  wire n10_o;
  wire n11_o;
  wire n15_o;
  wire n16_o;
  wire n20_o;
  wire n21_o;
  wire n25_o;
  wire n26_o;
  wire n30_o;
  wire n31_o;
  wire n35_o;
  wire n36_o;
  wire n40_o;
  wire n41_o;
  wire n45_o;
  wire n46_o;
  wire n48_o;
  wire n49_o;
  wire expfraccmp_n50;
  wire expfraccmp_n51;
  wire expfraccmp_xlty;
  wire expfraccmp_xgty;
  wire n58_o;
  wire n59_o;
  wire n60_o;
  wire n61_o;
  wire n62_o;
  wire n63_o;
  wire n64_o;
  wire n65_o;
  wire n66_o;
  wire n67_o;
  wire n68_o;
  wire n69_o;
  wire n70_o;
  wire n71_o;
  wire n72_o;
  wire n73_o;
  wire n74_o;
  wire n75_o;
  wire n76_o;
  wire n77_o;
  wire n78_o;
  wire n79_o;
  wire n80_o;
  wire n81_o;
  wire n82_o;
  wire n83_o;
  wire n84_o;
  wire n85_o;
  wire n86_o;
  wire n87_o;
  assign unordered = unorderedr;
  assign XltY = xltyr;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fcmplt_4_5.vhdl:79:8  */
  assign excx = n2_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fcmplt_4_5.vhdl:80:8  */
  assign excy = n3_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fcmplt_4_5.vhdl:81:8  */
  assign signx = n4_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fcmplt_4_5.vhdl:82:8  */
  assign signy = n5_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fcmplt_4_5.vhdl:83:8  */
  assign expfracx = n6_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fcmplt_4_5.vhdl:84:8  */
  assign expfracy = n7_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fcmplt_4_5.vhdl:85:8  */
  assign iszerox = n11_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fcmplt_4_5.vhdl:86:8  */
  assign iszeroy = n16_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fcmplt_4_5.vhdl:87:8  */
  assign isnormalx = n21_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fcmplt_4_5.vhdl:88:8  */
  assign isnormaly = n26_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fcmplt_4_5.vhdl:89:8  */
  assign isinfx = n31_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fcmplt_4_5.vhdl:90:8  */
  assign isinfy = n36_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fcmplt_4_5.vhdl:91:8  */
  assign isnanx = n41_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fcmplt_4_5.vhdl:92:8  */
  assign isnany = n46_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fcmplt_4_5.vhdl:93:8  */
  assign negativex = signx; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fcmplt_4_5.vhdl:94:8  */
  assign positivex = n48_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fcmplt_4_5.vhdl:95:8  */
  assign negativey = signy; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fcmplt_4_5.vhdl:96:8  */
  assign positivey = n49_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fcmplt_4_5.vhdl:97:8  */
  assign expfracxltexpfracy = expfraccmp_n50; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fcmplt_4_5.vhdl:98:8  */
  assign expfracxgtexpfracy = expfraccmp_n51; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fcmplt_4_5.vhdl:100:8  */
  assign xltynum = n84_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fcmplt_4_5.vhdl:101:8  */
  assign unorderedr = n85_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fcmplt_4_5.vhdl:102:8  */
  assign xltyr = n87_o; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fcmplt_4_5.vhdl:104:13  */
  assign n2_o = X[11:10];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fcmplt_4_5.vhdl:105:13  */
  assign n3_o = Y[11:10];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fcmplt_4_5.vhdl:106:14  */
  assign n4_o = X[9];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fcmplt_4_5.vhdl:107:14  */
  assign n5_o = Y[9];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fcmplt_4_5.vhdl:108:17  */
  assign n6_o = X[8:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fcmplt_4_5.vhdl:109:17  */
  assign n7_o = Y[8:0];
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fcmplt_4_5.vhdl:114:28  */
  assign n10_o = excx == 2'b00;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fcmplt_4_5.vhdl:114:19  */
  assign n11_o = n10_o ? 1'b1 : 1'b0;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fcmplt_4_5.vhdl:115:28  */
  assign n15_o = excy == 2'b00;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fcmplt_4_5.vhdl:115:19  */
  assign n16_o = n15_o ? 1'b1 : 1'b0;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fcmplt_4_5.vhdl:116:30  */
  assign n20_o = excx == 2'b01;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fcmplt_4_5.vhdl:116:21  */
  assign n21_o = n20_o ? 1'b1 : 1'b0;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fcmplt_4_5.vhdl:117:30  */
  assign n25_o = excy == 2'b01;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fcmplt_4_5.vhdl:117:21  */
  assign n26_o = n25_o ? 1'b1 : 1'b0;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fcmplt_4_5.vhdl:118:27  */
  assign n30_o = excx == 2'b10;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fcmplt_4_5.vhdl:118:18  */
  assign n31_o = n30_o ? 1'b1 : 1'b0;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fcmplt_4_5.vhdl:119:27  */
  assign n35_o = excy == 2'b10;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fcmplt_4_5.vhdl:119:18  */
  assign n36_o = n35_o ? 1'b1 : 1'b0;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fcmplt_4_5.vhdl:120:27  */
  assign n40_o = excx == 2'b11;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fcmplt_4_5.vhdl:120:18  */
  assign n41_o = n40_o ? 1'b1 : 1'b0;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fcmplt_4_5.vhdl:121:27  */
  assign n45_o = excy == 2'b11;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fcmplt_4_5.vhdl:121:18  */
  assign n46_o = n45_o ? 1'b1 : 1'b0;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fcmplt_4_5.vhdl:124:17  */
  assign n48_o = ~signx;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fcmplt_4_5.vhdl:126:17  */
  assign n49_o = ~signy;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fcmplt_4_5.vhdl:133:26  */
  assign expfraccmp_n50 = expfraccmp_xlty; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fcmplt_4_5.vhdl:132:26  */
  assign expfraccmp_n51 = expfraccmp_xgty; // (signal)
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fcmplt_4_5.vhdl:128:4  */
  intcomparator_9_101_f300_uid4 expfraccmp (
    .clk(clk),
    .x(expfracx),
    .y(expfracy),
    .xlty(expfraccmp_xlty),
    .xgty(expfraccmp_xgty));
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fcmplt_4_5.vhdl:137:25  */
  assign n58_o = isinfx & positivex;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fcmplt_4_5.vhdl:137:13  */
  assign n59_o = ~n58_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fcmplt_4_5.vhdl:137:54  */
  assign n60_o = isinfy & positivey;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fcmplt_4_5.vhdl:137:41  */
  assign n61_o = n59_o & n60_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fcmplt_4_5.vhdl:138:22  */
  assign n62_o = negativex | iszerox;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fcmplt_4_5.vhdl:138:49  */
  assign n63_o = isnormaly & positivey;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fcmplt_4_5.vhdl:138:34  */
  assign n64_o = n62_o & n63_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fcmplt_4_5.vhdl:138:7  */
  assign n65_o = n61_o | n64_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fcmplt_4_5.vhdl:139:26  */
  assign n66_o = ~iszerox;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fcmplt_4_5.vhdl:139:22  */
  assign n67_o = negativex & n66_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fcmplt_4_5.vhdl:139:39  */
  assign n68_o = n67_o & iszeroy;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fcmplt_4_5.vhdl:139:7  */
  assign n69_o = n65_o | n68_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fcmplt_4_5.vhdl:140:21  */
  assign n70_o = isnormalx & isnormaly;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fcmplt_4_5.vhdl:140:35  */
  assign n71_o = n70_o & positivex;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fcmplt_4_5.vhdl:140:49  */
  assign n72_o = n71_o & positivey;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fcmplt_4_5.vhdl:140:63  */
  assign n73_o = n72_o & expfracxltexpfracy;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fcmplt_4_5.vhdl:140:7  */
  assign n74_o = n69_o | n73_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fcmplt_4_5.vhdl:141:21  */
  assign n75_o = isnormalx & isnormaly;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fcmplt_4_5.vhdl:141:35  */
  assign n76_o = n75_o & negativex;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fcmplt_4_5.vhdl:141:49  */
  assign n77_o = n76_o & negativey;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fcmplt_4_5.vhdl:141:63  */
  assign n78_o = n77_o & expfracxgtexpfracy;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fcmplt_4_5.vhdl:141:7  */
  assign n79_o = n74_o | n78_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fcmplt_4_5.vhdl:142:19  */
  assign n80_o = isinfx & negativex;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fcmplt_4_5.vhdl:142:51  */
  assign n81_o = isinfy & negativey;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fcmplt_4_5.vhdl:142:39  */
  assign n82_o = ~n81_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fcmplt_4_5.vhdl:142:34  */
  assign n83_o = n80_o & n82_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fcmplt_4_5.vhdl:142:7  */
  assign n84_o = n79_o | n83_o;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fcmplt_4_5.vhdl:143:26  */
  assign n85_o = isnanx | isnany;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fcmplt_4_5.vhdl:144:25  */
  assign n86_o = ~unorderedr;
  /* /home/mlevental/dev_projects/bragghls/scripts/flopoco_fcmplt_4_5.vhdl:144:21  */
  assign n87_o = xltynum & n86_o;
endmodule

