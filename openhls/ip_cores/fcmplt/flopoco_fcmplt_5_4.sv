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
  assign xltyi = n92_o; // (signal)
  assign xgtyi = n96_o; // (signal)
  assign n91_o = $unsigned(x) < $unsigned(y);
  assign n92_o = n91_o ? 1'b1 : 1'b0;
  assign n95_o = $unsigned(x) > $unsigned(y);
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
  assign excx = n2_o; // (signal)
  assign excy = n3_o; // (signal)
  assign signx = n4_o; // (signal)
  assign signy = n5_o; // (signal)
  assign expfracx = n6_o; // (signal)
  assign expfracy = n7_o; // (signal)
  assign iszerox = n11_o; // (signal)
  assign iszeroy = n16_o; // (signal)
  assign isnormalx = n21_o; // (signal)
  assign isnormaly = n26_o; // (signal)
  assign isinfx = n31_o; // (signal)
  assign isinfy = n36_o; // (signal)
  assign isnanx = n41_o; // (signal)
  assign isnany = n46_o; // (signal)
  assign negativex = signx; // (signal)
  assign positivex = n48_o; // (signal)
  assign negativey = signy; // (signal)
  assign positivey = n49_o; // (signal)
  assign expfracxltexpfracy = expfraccmp_n50; // (signal)
  assign expfracxgtexpfracy = expfraccmp_n51; // (signal)
  assign xltynum = n84_o; // (signal)
  assign unorderedr = n85_o; // (signal)
  assign xltyr = n87_o; // (signal)
  assign n2_o = X[11:10];
  assign n3_o = Y[11:10];
  assign n4_o = X[9];
  assign n5_o = Y[9];
  assign n6_o = X[8:0];
  assign n7_o = Y[8:0];
  assign n10_o = excx == 2'b00;
  assign n11_o = n10_o ? 1'b1 : 1'b0;
  assign n15_o = excy == 2'b00;
  assign n16_o = n15_o ? 1'b1 : 1'b0;
  assign n20_o = excx == 2'b01;
  assign n21_o = n20_o ? 1'b1 : 1'b0;
  assign n25_o = excy == 2'b01;
  assign n26_o = n25_o ? 1'b1 : 1'b0;
  assign n30_o = excx == 2'b10;
  assign n31_o = n30_o ? 1'b1 : 1'b0;
  assign n35_o = excy == 2'b10;
  assign n36_o = n35_o ? 1'b1 : 1'b0;
  assign n40_o = excx == 2'b11;
  assign n41_o = n40_o ? 1'b1 : 1'b0;
  assign n45_o = excy == 2'b11;
  assign n46_o = n45_o ? 1'b1 : 1'b0;
  assign n48_o = ~signx;
  assign n49_o = ~signy;
  assign expfraccmp_n50 = expfraccmp_xlty; // (signal)
  assign expfraccmp_n51 = expfraccmp_xgty; // (signal)
  intcomparator_9_101_f300_uid4 expfraccmp (
    .clk(clk),
    .x(expfracx),
    .y(expfracy),
    .xlty(expfraccmp_xlty),
    .xgty(expfraccmp_xgty));
  assign n58_o = isinfx & positivex;
  assign n59_o = ~n58_o;
  assign n60_o = isinfy & positivey;
  assign n61_o = n59_o & n60_o;
  assign n62_o = negativex | iszerox;
  assign n63_o = isnormaly & positivey;
  assign n64_o = n62_o & n63_o;
  assign n65_o = n61_o | n64_o;
  assign n66_o = ~iszerox;
  assign n67_o = negativex & n66_o;
  assign n68_o = n67_o & iszeroy;
  assign n69_o = n65_o | n68_o;
  assign n70_o = isnormalx & isnormaly;
  assign n71_o = n70_o & positivex;
  assign n72_o = n71_o & positivey;
  assign n73_o = n72_o & expfracxltexpfracy;
  assign n74_o = n69_o | n73_o;
  assign n75_o = isnormalx & isnormaly;
  assign n76_o = n75_o & negativex;
  assign n77_o = n76_o & negativey;
  assign n78_o = n77_o & expfracxgtexpfracy;
  assign n79_o = n74_o | n78_o;
  assign n80_o = isinfx & negativex;
  assign n81_o = isinfy & negativey;
  assign n82_o = ~n81_o;
  assign n83_o = n80_o & n82_o;
  assign n84_o = n79_o | n83_o;
  assign n85_o = isnanx | isnany;
  assign n86_o = ~unorderedr;
  assign n87_o = xltynum & n86_o;
endmodule

