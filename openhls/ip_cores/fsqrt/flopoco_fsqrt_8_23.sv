module fsqrt#(parameter ID=1)
  (input  clk,
   input  [33:0] X,
   output [33:0] R);
  wire [22:0] fracx;
  wire [7:0] ern0;
  wire [2:0] xsx;
  wire [7:0] ern1;
  wire [7:0] ern1_d1;
  wire [7:0] ern1_d2;
  wire [7:0] ern1_d3;
  wire [7:0] ern1_d4;
  wire [7:0] ern1_d5;
  wire [7:0] ern1_d6;
  wire [7:0] ern1_d7;
  wire [26:0] fracxnorm;
  wire [1:0] s0;
  wire [26:0] t1;
  wire d1;
  wire [27:0] t1s;
  wire [5:0] t1s_h;
  wire [21:0] t1s_l;
  wire [5:0] u1;
  wire [5:0] t3_h;
  wire [26:0] t2;
  wire [2:0] s1;
  wire d2;
  wire [27:0] t2s;
  wire [6:0] t2s_h;
  wire [20:0] t2s_l;
  wire [6:0] u2;
  wire [6:0] t4_h;
  wire [26:0] t3;
  wire [3:0] s2;
  wire d3;
  wire d3_d1;
  wire [27:0] t3s;
  wire [7:0] t3s_h;
  wire [7:0] t3s_h_d1;
  wire [19:0] t3s_l;
  wire [19:0] t3s_l_d1;
  wire [7:0] u3;
  wire [7:0] u3_d1;
  wire [7:0] t5_h;
  wire [26:0] t4;
  wire [4:0] s3;
  wire [4:0] s3_d1;
  wire d4;
  wire [27:0] t4s;
  wire [8:0] t4s_h;
  wire [18:0] t4s_l;
  wire [8:0] u4;
  wire [8:0] t6_h;
  wire [26:0] t5;
  wire [5:0] s4;
  wire d5;
  wire [27:0] t5s;
  wire [9:0] t5s_h;
  wire [17:0] t5s_l;
  wire [9:0] u5;
  wire [9:0] t7_h;
  wire [26:0] t6;
  wire [6:0] s5;
  wire d6;
  wire [27:0] t6s;
  wire [10:0] t6s_h;
  wire [16:0] t6s_l;
  wire [10:0] u6;
  wire [10:0] t8_h;
  wire [26:0] t7;
  wire [7:0] s6;
  wire d7;
  wire d7_d1;
  wire [27:0] t7s;
  wire [11:0] t7s_h;
  wire [11:0] t7s_h_d1;
  wire [15:0] t7s_l;
  wire [15:0] t7s_l_d1;
  wire [11:0] u7;
  wire [11:0] u7_d1;
  wire [11:0] t9_h;
  wire [26:0] t8;
  wire [8:0] s7;
  wire [8:0] s7_d1;
  wire d8;
  wire [27:0] t8s;
  wire [12:0] t8s_h;
  wire [14:0] t8s_l;
  wire [12:0] u8;
  wire [12:0] t10_h;
  wire [26:0] t9;
  wire [9:0] s8;
  wire d9;
  wire [27:0] t9s;
  wire [13:0] t9s_h;
  wire [13:0] t9s_l;
  wire [13:0] u9;
  wire [13:0] t11_h;
  wire [26:0] t10;
  wire [10:0] s9;
  wire d10;
  wire d10_d1;
  wire [27:0] t10s;
  wire [14:0] t10s_h;
  wire [14:0] t10s_h_d1;
  wire [12:0] t10s_l;
  wire [12:0] t10s_l_d1;
  wire [14:0] u10;
  wire [14:0] u10_d1;
  wire [14:0] t12_h;
  wire [26:0] t11;
  wire [11:0] s10;
  wire [11:0] s10_d1;
  wire d11;
  wire [27:0] t11s;
  wire [15:0] t11s_h;
  wire [11:0] t11s_l;
  wire [15:0] u11;
  wire [15:0] t13_h;
  wire [26:0] t12;
  wire [12:0] s11;
  wire d12;
  wire [27:0] t12s;
  wire [16:0] t12s_h;
  wire [10:0] t12s_l;
  wire [16:0] u12;
  wire [16:0] t14_h;
  wire [26:0] t13;
  wire [13:0] s12;
  wire d13;
  wire d13_d1;
  wire [27:0] t13s;
  wire [17:0] t13s_h;
  wire [17:0] t13s_h_d1;
  wire [9:0] t13s_l;
  wire [9:0] t13s_l_d1;
  wire [17:0] u13;
  wire [17:0] u13_d1;
  wire [17:0] t15_h;
  wire [26:0] t14;
  wire [14:0] s13;
  wire [14:0] s13_d1;
  wire d14;
  wire [27:0] t14s;
  wire [18:0] t14s_h;
  wire [8:0] t14s_l;
  wire [18:0] u14;
  wire [18:0] t16_h;
  wire [26:0] t15;
  wire [15:0] s14;
  wire d15;
  wire [27:0] t15s;
  wire [19:0] t15s_h;
  wire [7:0] t15s_l;
  wire [19:0] u15;
  wire [19:0] t17_h;
  wire [26:0] t16;
  wire [16:0] s15;
  wire d16;
  wire d16_d1;
  wire [27:0] t16s;
  wire [20:0] t16s_h;
  wire [20:0] t16s_h_d1;
  wire [6:0] t16s_l;
  wire [6:0] t16s_l_d1;
  wire [20:0] u16;
  wire [20:0] u16_d1;
  wire [20:0] t18_h;
  wire [26:0] t17;
  wire [17:0] s16;
  wire [17:0] s16_d1;
  wire d17;
  wire [27:0] t17s;
  wire [21:0] t17s_h;
  wire [5:0] t17s_l;
  wire [21:0] u17;
  wire [21:0] t19_h;
  wire [26:0] t18;
  wire [18:0] s17;
  wire d18;
  wire [27:0] t18s;
  wire [22:0] t18s_h;
  wire [4:0] t18s_l;
  wire [22:0] u18;
  wire [22:0] t20_h;
  wire [26:0] t19;
  wire [19:0] s18;
  wire d19;
  wire d19_d1;
  wire [27:0] t19s;
  wire [23:0] t19s_h;
  wire [23:0] t19s_h_d1;
  wire [3:0] t19s_l;
  wire [3:0] t19s_l_d1;
  wire [23:0] u19;
  wire [23:0] u19_d1;
  wire [23:0] t21_h;
  wire [26:0] t20;
  wire [20:0] s19;
  wire [20:0] s19_d1;
  wire d20;
  wire [27:0] t20s;
  wire [24:0] t20s_h;
  wire [2:0] t20s_l;
  wire [24:0] u20;
  wire [24:0] t22_h;
  wire [26:0] t21;
  wire [21:0] s20;
  wire d21;
  wire [27:0] t21s;
  wire [25:0] t21s_h;
  wire [1:0] t21s_l;
  wire [25:0] u21;
  wire [25:0] t23_h;
  wire [26:0] t22;
  wire [22:0] s21;
  wire d22;
  wire d22_d1;
  wire [27:0] t22s;
  wire [26:0] t22s_h;
  wire [26:0] t22s_h_d1;
  wire t22s_l;
  wire t22s_l_d1;
  wire [26:0] u22;
  wire [26:0] u22_d1;
  wire [26:0] t24_h;
  wire [26:0] t23;
  wire [23:0] s22;
  wire [23:0] s22_d1;
  wire d23;
  wire [27:0] t23s;
  wire [27:0] t23s_h;
  wire [27:0] u23;
  wire [27:0] t25_h;
  wire [26:0] t24;
  wire [24:0] s23;
  wire d25;
  wire [25:0] mr;
  wire [22:0] fr;
  wire round;
  wire [22:0] frrnd;
  wire [30:0] rn2;
  wire [2:0] xsr;
  wire [2:0] xsr_d1;
  wire [2:0] xsr_d2;
  wire [2:0] xsr_d3;
  wire [2:0] xsr_d4;
  wire [2:0] xsr_d5;
  wire [2:0] xsr_d6;
  wire [2:0] xsr_d7;
  wire [22:0] n54_o;
  wire [6:0] n55_o;
  wire [7:0] n57_o;
  wire [2:0] n58_o;
  wire [7:0] n60_o;
  wire n61_o;
  wire [7:0] n62_o;
  wire [7:0] n63_o;
  wire [23:0] n65_o;
  wire [26:0] n67_o;
  wire n68_o;
  wire n69_o;
  wire [26:0] n70_o;
  wire [24:0] n72_o;
  wire [26:0] n74_o;
  wire [3:0] n76_o;
  wire [3:0] n78_o;
  wire [22:0] n79_o;
  wire [26:0] n80_o;
  wire n81_o;
  wire n82_o;
  wire [27:0] n84_o;
  wire [5:0] n85_o;
  wire [21:0] n86_o;
  wire [2:0] n88_o;
  wire [3:0] n89_o;
  wire n90_o;
  wire [4:0] n91_o;
  wire [5:0] n93_o;
  wire [5:0] n94_o;
  wire [5:0] n95_o;
  wire [5:0] n96_o;
  wire [4:0] n97_o;
  wire [26:0] n98_o;
  wire [2:0] n99_o;
  wire n100_o;
  wire n101_o;
  wire [27:0] n103_o;
  wire [6:0] n104_o;
  wire [20:0] n105_o;
  wire [3:0] n107_o;
  wire [4:0] n108_o;
  wire n109_o;
  wire [5:0] n110_o;
  wire [6:0] n112_o;
  wire [6:0] n113_o;
  wire [6:0] n114_o;
  wire [6:0] n115_o;
  wire [5:0] n116_o;
  wire [26:0] n117_o;
  wire [3:0] n118_o;
  wire n119_o;
  wire n120_o;
  wire [27:0] n122_o;
  wire [7:0] n123_o;
  wire [19:0] n124_o;
  wire [4:0] n126_o;
  wire [5:0] n127_o;
  wire n128_o;
  wire [6:0] n129_o;
  wire [7:0] n131_o;
  wire [7:0] n132_o;
  wire [7:0] n133_o;
  wire [7:0] n134_o;
  wire [6:0] n135_o;
  wire [26:0] n136_o;
  wire [4:0] n137_o;
  wire n138_o;
  wire n139_o;
  wire [27:0] n141_o;
  wire [8:0] n142_o;
  wire [18:0] n143_o;
  wire [5:0] n145_o;
  wire [6:0] n146_o;
  wire n147_o;
  wire [7:0] n148_o;
  wire [8:0] n150_o;
  wire [8:0] n151_o;
  wire [8:0] n152_o;
  wire [8:0] n153_o;
  wire [7:0] n154_o;
  wire [26:0] n155_o;
  wire [5:0] n156_o;
  wire n157_o;
  wire n158_o;
  wire [27:0] n160_o;
  wire [9:0] n161_o;
  wire [17:0] n162_o;
  wire [6:0] n164_o;
  wire [7:0] n165_o;
  wire n166_o;
  wire [8:0] n167_o;
  wire [9:0] n169_o;
  wire [9:0] n170_o;
  wire [9:0] n171_o;
  wire [9:0] n172_o;
  wire [8:0] n173_o;
  wire [26:0] n174_o;
  wire [6:0] n175_o;
  wire n176_o;
  wire n177_o;
  wire [27:0] n179_o;
  wire [10:0] n180_o;
  wire [16:0] n181_o;
  wire [7:0] n183_o;
  wire [8:0] n184_o;
  wire n185_o;
  wire [9:0] n186_o;
  wire [10:0] n188_o;
  wire [10:0] n189_o;
  wire [10:0] n190_o;
  wire [10:0] n191_o;
  wire [9:0] n192_o;
  wire [26:0] n193_o;
  wire [7:0] n194_o;
  wire n195_o;
  wire n196_o;
  wire [27:0] n198_o;
  wire [11:0] n199_o;
  wire [15:0] n200_o;
  wire [8:0] n202_o;
  wire [9:0] n203_o;
  wire n204_o;
  wire [10:0] n205_o;
  wire [11:0] n207_o;
  wire [11:0] n208_o;
  wire [11:0] n209_o;
  wire [11:0] n210_o;
  wire [10:0] n211_o;
  wire [26:0] n212_o;
  wire [8:0] n213_o;
  wire n214_o;
  wire n215_o;
  wire [27:0] n217_o;
  wire [12:0] n218_o;
  wire [14:0] n219_o;
  wire [9:0] n221_o;
  wire [10:0] n222_o;
  wire n223_o;
  wire [11:0] n224_o;
  wire [12:0] n226_o;
  wire [12:0] n227_o;
  wire [12:0] n228_o;
  wire [12:0] n229_o;
  wire [11:0] n230_o;
  wire [26:0] n231_o;
  wire [9:0] n232_o;
  wire n233_o;
  wire n234_o;
  wire [27:0] n236_o;
  wire [13:0] n237_o;
  wire [13:0] n238_o;
  wire [10:0] n240_o;
  wire [11:0] n241_o;
  wire n242_o;
  wire [12:0] n243_o;
  wire [13:0] n245_o;
  wire [13:0] n246_o;
  wire [13:0] n247_o;
  wire [13:0] n248_o;
  wire [12:0] n249_o;
  wire [26:0] n250_o;
  wire [10:0] n251_o;
  wire n252_o;
  wire n253_o;
  wire [27:0] n255_o;
  wire [14:0] n256_o;
  wire [12:0] n257_o;
  wire [11:0] n259_o;
  wire [12:0] n260_o;
  wire n261_o;
  wire [13:0] n262_o;
  wire [14:0] n264_o;
  wire [14:0] n265_o;
  wire [14:0] n266_o;
  wire [14:0] n267_o;
  wire [13:0] n268_o;
  wire [26:0] n269_o;
  wire [11:0] n270_o;
  wire n271_o;
  wire n272_o;
  wire [27:0] n274_o;
  wire [15:0] n275_o;
  wire [11:0] n276_o;
  wire [12:0] n278_o;
  wire [13:0] n279_o;
  wire n280_o;
  wire [14:0] n281_o;
  wire [15:0] n283_o;
  wire [15:0] n284_o;
  wire [15:0] n285_o;
  wire [15:0] n286_o;
  wire [14:0] n287_o;
  wire [26:0] n288_o;
  wire [12:0] n289_o;
  wire n290_o;
  wire n291_o;
  wire [27:0] n293_o;
  wire [16:0] n294_o;
  wire [10:0] n295_o;
  wire [13:0] n297_o;
  wire [14:0] n298_o;
  wire n299_o;
  wire [15:0] n300_o;
  wire [16:0] n302_o;
  wire [16:0] n303_o;
  wire [16:0] n304_o;
  wire [16:0] n305_o;
  wire [15:0] n306_o;
  wire [26:0] n307_o;
  wire [13:0] n308_o;
  wire n309_o;
  wire n310_o;
  wire [27:0] n312_o;
  wire [17:0] n313_o;
  wire [9:0] n314_o;
  wire [14:0] n316_o;
  wire [15:0] n317_o;
  wire n318_o;
  wire [16:0] n319_o;
  wire [17:0] n321_o;
  wire [17:0] n322_o;
  wire [17:0] n323_o;
  wire [17:0] n324_o;
  wire [16:0] n325_o;
  wire [26:0] n326_o;
  wire [14:0] n327_o;
  wire n328_o;
  wire n329_o;
  wire [27:0] n331_o;
  wire [18:0] n332_o;
  wire [8:0] n333_o;
  wire [15:0] n335_o;
  wire [16:0] n336_o;
  wire n337_o;
  wire [17:0] n338_o;
  wire [18:0] n340_o;
  wire [18:0] n341_o;
  wire [18:0] n342_o;
  wire [18:0] n343_o;
  wire [17:0] n344_o;
  wire [26:0] n345_o;
  wire [15:0] n346_o;
  wire n347_o;
  wire n348_o;
  wire [27:0] n350_o;
  wire [19:0] n351_o;
  wire [7:0] n352_o;
  wire [16:0] n354_o;
  wire [17:0] n355_o;
  wire n356_o;
  wire [18:0] n357_o;
  wire [19:0] n359_o;
  wire [19:0] n360_o;
  wire [19:0] n361_o;
  wire [19:0] n362_o;
  wire [18:0] n363_o;
  wire [26:0] n364_o;
  wire [16:0] n365_o;
  wire n366_o;
  wire n367_o;
  wire [27:0] n369_o;
  wire [20:0] n370_o;
  wire [6:0] n371_o;
  wire [17:0] n373_o;
  wire [18:0] n374_o;
  wire n375_o;
  wire [19:0] n376_o;
  wire [20:0] n378_o;
  wire [20:0] n379_o;
  wire [20:0] n380_o;
  wire [20:0] n381_o;
  wire [19:0] n382_o;
  wire [26:0] n383_o;
  wire [17:0] n384_o;
  wire n385_o;
  wire n386_o;
  wire [27:0] n388_o;
  wire [21:0] n389_o;
  wire [5:0] n390_o;
  wire [18:0] n392_o;
  wire [19:0] n393_o;
  wire n394_o;
  wire [20:0] n395_o;
  wire [21:0] n397_o;
  wire [21:0] n398_o;
  wire [21:0] n399_o;
  wire [21:0] n400_o;
  wire [20:0] n401_o;
  wire [26:0] n402_o;
  wire [18:0] n403_o;
  wire n404_o;
  wire n405_o;
  wire [27:0] n407_o;
  wire [22:0] n408_o;
  wire [4:0] n409_o;
  wire [19:0] n411_o;
  wire [20:0] n412_o;
  wire n413_o;
  wire [21:0] n414_o;
  wire [22:0] n416_o;
  wire [22:0] n417_o;
  wire [22:0] n418_o;
  wire [22:0] n419_o;
  wire [21:0] n420_o;
  wire [26:0] n421_o;
  wire [19:0] n422_o;
  wire n423_o;
  wire n424_o;
  wire [27:0] n426_o;
  wire [23:0] n427_o;
  wire [3:0] n428_o;
  wire [20:0] n430_o;
  wire [21:0] n431_o;
  wire n432_o;
  wire [22:0] n433_o;
  wire [23:0] n435_o;
  wire [23:0] n436_o;
  wire [23:0] n437_o;
  wire [23:0] n438_o;
  wire [22:0] n439_o;
  wire [26:0] n440_o;
  wire [20:0] n441_o;
  wire n442_o;
  wire n443_o;
  wire [27:0] n445_o;
  wire [24:0] n446_o;
  wire [2:0] n447_o;
  wire [21:0] n449_o;
  wire [22:0] n450_o;
  wire n451_o;
  wire [23:0] n452_o;
  wire [24:0] n454_o;
  wire [24:0] n455_o;
  wire [24:0] n456_o;
  wire [24:0] n457_o;
  wire [23:0] n458_o;
  wire [26:0] n459_o;
  wire [21:0] n460_o;
  wire n461_o;
  wire n462_o;
  wire [27:0] n464_o;
  wire [25:0] n465_o;
  wire [1:0] n466_o;
  wire [22:0] n468_o;
  wire [23:0] n469_o;
  wire n470_o;
  wire [24:0] n471_o;
  wire [25:0] n473_o;
  wire [25:0] n474_o;
  wire [25:0] n475_o;
  wire [25:0] n476_o;
  wire [24:0] n477_o;
  wire [26:0] n478_o;
  wire [22:0] n479_o;
  wire n480_o;
  wire n481_o;
  wire [27:0] n483_o;
  wire [26:0] n484_o;
  wire n485_o;
  wire [23:0] n487_o;
  wire [24:0] n488_o;
  wire n489_o;
  wire [25:0] n490_o;
  wire [26:0] n492_o;
  wire [26:0] n493_o;
  wire [26:0] n494_o;
  wire [26:0] n495_o;
  wire [25:0] n496_o;
  wire [26:0] n497_o;
  wire [23:0] n498_o;
  wire n499_o;
  wire n500_o;
  wire [27:0] n502_o;
  wire [24:0] n504_o;
  wire [25:0] n505_o;
  wire n506_o;
  wire [26:0] n507_o;
  wire [27:0] n509_o;
  wire [27:0] n510_o;
  wire [27:0] n511_o;
  wire [27:0] n512_o;
  wire [26:0] n513_o;
  wire [24:0] n514_o;
  wire n515_o;
  wire n516_o;
  wire [25:0] n517_o;
  wire [22:0] n518_o;
  wire n519_o;
  wire [22:0] n521_o;
  wire [22:0] n522_o;
  wire [30:0] n523_o;
  wire n526_o;
  wire n529_o;
  wire n532_o;
  wire n535_o;
  wire [3:0] n537_o;
  reg [2:0] n538_o;
  wire [33:0] n539_o;
  reg [7:0] n540_q;
  reg [7:0] n541_q;
  reg [7:0] n542_q;
  reg [7:0] n543_q;
  reg [7:0] n544_q;
  reg [7:0] n545_q;
  reg [7:0] n546_q;
  reg n547_q;
  reg [7:0] n548_q;
  reg [19:0] n549_q;
  reg [7:0] n550_q;
  reg [4:0] n551_q;
  reg n552_q;
  reg [11:0] n553_q;
  reg [15:0] n554_q;
  reg [11:0] n555_q;
  reg [8:0] n556_q;
  reg n557_q;
  reg [14:0] n558_q;
  reg [12:0] n559_q;
  reg [14:0] n560_q;
  reg [11:0] n561_q;
  reg n562_q;
  reg [17:0] n563_q;
  reg [9:0] n564_q;
  reg [17:0] n565_q;
  reg [14:0] n566_q;
  reg n567_q;
  reg [20:0] n568_q;
  reg [6:0] n569_q;
  reg [20:0] n570_q;
  reg [17:0] n571_q;
  reg n572_q;
  reg [23:0] n573_q;
  reg [3:0] n574_q;
  reg [23:0] n575_q;
  reg [20:0] n576_q;
  reg n577_q;
  reg [26:0] n578_q;
  reg n579_q;
  reg [26:0] n580_q;
  reg [23:0] n581_q;
  reg [2:0] n582_q;
  reg [2:0] n583_q;
  reg [2:0] n584_q;
  reg [2:0] n585_q;
  reg [2:0] n586_q;
  reg [2:0] n587_q;
  reg [2:0] n588_q;
  assign R = n539_o;
  assign fracx = n54_o; // (signal)
  assign ern0 = n57_o; // (signal)
  assign xsx = n58_o; // (signal)
  assign ern1 = n63_o; // (signal)
  assign ern1_d1 = n540_q; // (signal)
  assign ern1_d2 = n541_q; // (signal)
  assign ern1_d3 = n542_q; // (signal)
  assign ern1_d4 = n543_q; // (signal)
  assign ern1_d5 = n544_q; // (signal)
  assign ern1_d6 = n545_q; // (signal)
  assign ern1_d7 = n546_q; // (signal)
  assign fracxnorm = n70_o; // (signal)
  assign s0 = 2'b01; // (signal)
  assign t1 = n80_o; // (signal)
  assign d1 = n82_o; // (signal)
  assign t1s = n84_o; // (signal)
  assign t1s_h = n85_o; // (signal)
  assign t1s_l = n86_o; // (signal)
  assign u1 = n93_o; // (signal)
  assign t3_h = n95_o; // (signal)
  assign t2 = n98_o; // (signal)
  assign s1 = n99_o; // (signal)
  assign d2 = n101_o; // (signal)
  assign t2s = n103_o; // (signal)
  assign t2s_h = n104_o; // (signal)
  assign t2s_l = n105_o; // (signal)
  assign u2 = n112_o; // (signal)
  assign t4_h = n114_o; // (signal)
  assign t3 = n117_o; // (signal)
  assign s2 = n118_o; // (signal)
  assign d3 = n120_o; // (signal)
  assign d3_d1 = n547_q; // (signal)
  assign t3s = n122_o; // (signal)
  assign t3s_h = n123_o; // (signal)
  assign t3s_h_d1 = n548_q; // (signal)
  assign t3s_l = n124_o; // (signal)
  assign t3s_l_d1 = n549_q; // (signal)
  assign u3 = n131_o; // (signal)
  assign u3_d1 = n550_q; // (signal)
  assign t5_h = n133_o; // (signal)
  assign t4 = n136_o; // (signal)
  assign s3 = n137_o; // (signal)
  assign s3_d1 = n551_q; // (signal)
  assign d4 = n139_o; // (signal)
  assign t4s = n141_o; // (signal)
  assign t4s_h = n142_o; // (signal)
  assign t4s_l = n143_o; // (signal)
  assign u4 = n150_o; // (signal)
  assign t6_h = n152_o; // (signal)
  assign t5 = n155_o; // (signal)
  assign s4 = n156_o; // (signal)
  assign d5 = n158_o; // (signal)
  assign t5s = n160_o; // (signal)
  assign t5s_h = n161_o; // (signal)
  assign t5s_l = n162_o; // (signal)
  assign u5 = n169_o; // (signal)
  assign t7_h = n171_o; // (signal)
  assign t6 = n174_o; // (signal)
  assign s5 = n175_o; // (signal)
  assign d6 = n177_o; // (signal)
  assign t6s = n179_o; // (signal)
  assign t6s_h = n180_o; // (signal)
  assign t6s_l = n181_o; // (signal)
  assign u6 = n188_o; // (signal)
  assign t8_h = n190_o; // (signal)
  assign t7 = n193_o; // (signal)
  assign s6 = n194_o; // (signal)
  assign d7 = n196_o; // (signal)
  assign d7_d1 = n552_q; // (signal)
  assign t7s = n198_o; // (signal)
  assign t7s_h = n199_o; // (signal)
  assign t7s_h_d1 = n553_q; // (signal)
  assign t7s_l = n200_o; // (signal)
  assign t7s_l_d1 = n554_q; // (signal)
  assign u7 = n207_o; // (signal)
  assign u7_d1 = n555_q; // (signal)
  assign t9_h = n209_o; // (signal)
  assign t8 = n212_o; // (signal)
  assign s7 = n213_o; // (signal)
  assign s7_d1 = n556_q; // (signal)
  assign d8 = n215_o; // (signal)
  assign t8s = n217_o; // (signal)
  assign t8s_h = n218_o; // (signal)
  assign t8s_l = n219_o; // (signal)
  assign u8 = n226_o; // (signal)
  assign t10_h = n228_o; // (signal)
  assign t9 = n231_o; // (signal)
  assign s8 = n232_o; // (signal)
  assign d9 = n234_o; // (signal)
  assign t9s = n236_o; // (signal)
  assign t9s_h = n237_o; // (signal)
  assign t9s_l = n238_o; // (signal)
  assign u9 = n245_o; // (signal)
  assign t11_h = n247_o; // (signal)
  assign t10 = n250_o; // (signal)
  assign s9 = n251_o; // (signal)
  assign d10 = n253_o; // (signal)
  assign d10_d1 = n557_q; // (signal)
  assign t10s = n255_o; // (signal)
  assign t10s_h = n256_o; // (signal)
  assign t10s_h_d1 = n558_q; // (signal)
  assign t10s_l = n257_o; // (signal)
  assign t10s_l_d1 = n559_q; // (signal)
  assign u10 = n264_o; // (signal)
  assign u10_d1 = n560_q; // (signal)
  assign t12_h = n266_o; // (signal)
  assign t11 = n269_o; // (signal)
  assign s10 = n270_o; // (signal)
  assign s10_d1 = n561_q; // (signal)
  assign d11 = n272_o; // (signal)
  assign t11s = n274_o; // (signal)
  assign t11s_h = n275_o; // (signal)
  assign t11s_l = n276_o; // (signal)
  assign u11 = n283_o; // (signal)
  assign t13_h = n285_o; // (signal)
  assign t12 = n288_o; // (signal)
  assign s11 = n289_o; // (signal)
  assign d12 = n291_o; // (signal)
  assign t12s = n293_o; // (signal)
  assign t12s_h = n294_o; // (signal)
  assign t12s_l = n295_o; // (signal)
  assign u12 = n302_o; // (signal)
  assign t14_h = n304_o; // (signal)
  assign t13 = n307_o; // (signal)
  assign s12 = n308_o; // (signal)
  assign d13 = n310_o; // (signal)
  assign d13_d1 = n562_q; // (signal)
  assign t13s = n312_o; // (signal)
  assign t13s_h = n313_o; // (signal)
  assign t13s_h_d1 = n563_q; // (signal)
  assign t13s_l = n314_o; // (signal)
  assign t13s_l_d1 = n564_q; // (signal)
  assign u13 = n321_o; // (signal)
  assign u13_d1 = n565_q; // (signal)
  assign t15_h = n323_o; // (signal)
  assign t14 = n326_o; // (signal)
  assign s13 = n327_o; // (signal)
  assign s13_d1 = n566_q; // (signal)
  assign d14 = n329_o; // (signal)
  assign t14s = n331_o; // (signal)
  assign t14s_h = n332_o; // (signal)
  assign t14s_l = n333_o; // (signal)
  assign u14 = n340_o; // (signal)
  assign t16_h = n342_o; // (signal)
  assign t15 = n345_o; // (signal)
  assign s14 = n346_o; // (signal)
  assign d15 = n348_o; // (signal)
  assign t15s = n350_o; // (signal)
  assign t15s_h = n351_o; // (signal)
  assign t15s_l = n352_o; // (signal)
  assign u15 = n359_o; // (signal)
  assign t17_h = n361_o; // (signal)
  assign t16 = n364_o; // (signal)
  assign s15 = n365_o; // (signal)
  assign d16 = n367_o; // (signal)
  assign d16_d1 = n567_q; // (signal)
  assign t16s = n369_o; // (signal)
  assign t16s_h = n370_o; // (signal)
  assign t16s_h_d1 = n568_q; // (signal)
  assign t16s_l = n371_o; // (signal)
  assign t16s_l_d1 = n569_q; // (signal)
  assign u16 = n378_o; // (signal)
  assign u16_d1 = n570_q; // (signal)
  assign t18_h = n380_o; // (signal)
  assign t17 = n383_o; // (signal)
  assign s16 = n384_o; // (signal)
  assign s16_d1 = n571_q; // (signal)
  assign d17 = n386_o; // (signal)
  assign t17s = n388_o; // (signal)
  assign t17s_h = n389_o; // (signal)
  assign t17s_l = n390_o; // (signal)
  assign u17 = n397_o; // (signal)
  assign t19_h = n399_o; // (signal)
  assign t18 = n402_o; // (signal)
  assign s17 = n403_o; // (signal)
  assign d18 = n405_o; // (signal)
  assign t18s = n407_o; // (signal)
  assign t18s_h = n408_o; // (signal)
  assign t18s_l = n409_o; // (signal)
  assign u18 = n416_o; // (signal)
  assign t20_h = n418_o; // (signal)
  assign t19 = n421_o; // (signal)
  assign s18 = n422_o; // (signal)
  assign d19 = n424_o; // (signal)
  assign d19_d1 = n572_q; // (signal)
  assign t19s = n426_o; // (signal)
  assign t19s_h = n427_o; // (signal)
  assign t19s_h_d1 = n573_q; // (signal)
  assign t19s_l = n428_o; // (signal)
  assign t19s_l_d1 = n574_q; // (signal)
  assign u19 = n435_o; // (signal)
  assign u19_d1 = n575_q; // (signal)
  assign t21_h = n437_o; // (signal)
  assign t20 = n440_o; // (signal)
  assign s19 = n441_o; // (signal)
  assign s19_d1 = n576_q; // (signal)
  assign d20 = n443_o; // (signal)
  assign t20s = n445_o; // (signal)
  assign t20s_h = n446_o; // (signal)
  assign t20s_l = n447_o; // (signal)
  assign u20 = n454_o; // (signal)
  assign t22_h = n456_o; // (signal)
  assign t21 = n459_o; // (signal)
  assign s20 = n460_o; // (signal)
  assign d21 = n462_o; // (signal)
  assign t21s = n464_o; // (signal)
  assign t21s_h = n465_o; // (signal)
  assign t21s_l = n466_o; // (signal)
  assign u21 = n473_o; // (signal)
  assign t23_h = n475_o; // (signal)
  assign t22 = n478_o; // (signal)
  assign s21 = n479_o; // (signal)
  assign d22 = n481_o; // (signal)
  assign d22_d1 = n577_q; // (signal)
  assign t22s = n483_o; // (signal)
  assign t22s_h = n484_o; // (signal)
  assign t22s_h_d1 = n578_q; // (signal)
  assign t22s_l = n485_o; // (signal)
  assign t22s_l_d1 = n579_q; // (signal)
  assign u22 = n492_o; // (signal)
  assign u22_d1 = n580_q; // (signal)
  assign t24_h = n494_o; // (signal)
  assign t23 = n497_o; // (signal)
  assign s22 = n498_o; // (signal)
  assign s22_d1 = n581_q; // (signal)
  assign d23 = n500_o; // (signal)
  assign t23s = n502_o; // (signal)
  assign t23s_h = t23s; // (signal)
  assign u23 = n509_o; // (signal)
  assign t25_h = n511_o; // (signal)
  assign t24 = n513_o; // (signal)
  assign s23 = n514_o; // (signal)
  assign d25 = n516_o; // (signal)
  assign mr = n517_o; // (signal)
  assign fr = n518_o; // (signal)
  assign round = n519_o; // (signal)
  assign frrnd = n522_o; // (signal)
  assign rn2 = n523_o; // (signal)
  assign xsr = n538_o; // (signal)
  assign xsr_d1 = n582_q; // (signal)
  assign xsr_d2 = n583_q; // (signal)
  assign xsr_d3 = n584_q; // (signal)
  assign xsr_d4 = n585_q; // (signal)
  assign xsr_d5 = n586_q; // (signal)
  assign xsr_d6 = n587_q; // (signal)
  assign xsr_d7 = n588_q; // (signal)
  assign n54_o = X[22:0];
  assign n55_o = X[30:24];
  assign n57_o = {1'b0, n55_o};
  assign n58_o = X[33:31];
  assign n60_o = ern0 + 8'b00111111;
  assign n61_o = X[23];
  assign n62_o = {7'b0, n61_o};  //  uext
  assign n63_o = n60_o + n62_o;
  assign n65_o = {1'b1, fracx};
  assign n67_o = {n65_o, 3'b000};
  assign n68_o = X[23];
  assign n69_o = ~n68_o;
  assign n70_o = n69_o ? n67_o : n74_o;
  assign n72_o = {2'b01, fracx};
  assign n74_o = {n72_o, 2'b00};
  assign n76_o = fracxnorm[26:23];
  assign n78_o = 4'b0111 + n76_o;
  assign n79_o = fracxnorm[22:0];
  assign n80_o = {n78_o, n79_o};
  assign n81_o = t1[26];
  assign n82_o = ~n81_o;
  assign n84_o = {t1, 1'b0};
  assign n85_o = t1s[27:22];
  assign n86_o = t1s[21:0];
  assign n88_o = {1'b0, s0};
  assign n89_o = {n88_o, d1};
  assign n90_o = ~d1;
  assign n91_o = {n89_o, n90_o};
  assign n93_o = {n91_o, 1'b1};
  assign n94_o = t1s_h - u1;
  assign n95_o = d1 ? n94_o : n96_o;
  assign n96_o = t1s_h + u1;
  assign n97_o = t3_h[4:0];
  assign n98_o = {n97_o, t1s_l};
  assign n99_o = {s0, d1};
  assign n100_o = t2[26];
  assign n101_o = ~n100_o;
  assign n103_o = {t2, 1'b0};
  assign n104_o = t2s[27:21];
  assign n105_o = t2s[20:0];
  assign n107_o = {1'b0, s1};
  assign n108_o = {n107_o, d2};
  assign n109_o = ~d2;
  assign n110_o = {n108_o, n109_o};
  assign n112_o = {n110_o, 1'b1};
  assign n113_o = t2s_h - u2;
  assign n114_o = d2 ? n113_o : n115_o;
  assign n115_o = t2s_h + u2;
  assign n116_o = t4_h[5:0];
  assign n117_o = {n116_o, t2s_l};
  assign n118_o = {s1, d2};
  assign n119_o = t3[26];
  assign n120_o = ~n119_o;
  assign n122_o = {t3, 1'b0};
  assign n123_o = t3s[27:20];
  assign n124_o = t3s[19:0];
  assign n126_o = {1'b0, s2};
  assign n127_o = {n126_o, d3};
  assign n128_o = ~d3;
  assign n129_o = {n127_o, n128_o};
  assign n131_o = {n129_o, 1'b1};
  assign n132_o = t3s_h_d1 - u3_d1;
  assign n133_o = d3_d1 ? n132_o : n134_o;
  assign n134_o = t3s_h_d1 + u3_d1;
  assign n135_o = t5_h[6:0];
  assign n136_o = {n135_o, t3s_l_d1};
  assign n137_o = {s2, d3};
  assign n138_o = t4[26];
  assign n139_o = ~n138_o;
  assign n141_o = {t4, 1'b0};
  assign n142_o = t4s[27:19];
  assign n143_o = t4s[18:0];
  assign n145_o = {1'b0, s3_d1};
  assign n146_o = {n145_o, d4};
  assign n147_o = ~d4;
  assign n148_o = {n146_o, n147_o};
  assign n150_o = {n148_o, 1'b1};
  assign n151_o = t4s_h - u4;
  assign n152_o = d4 ? n151_o : n153_o;
  assign n153_o = t4s_h + u4;
  assign n154_o = t6_h[7:0];
  assign n155_o = {n154_o, t4s_l};
  assign n156_o = {s3_d1, d4};
  assign n157_o = t5[26];
  assign n158_o = ~n157_o;
  assign n160_o = {t5, 1'b0};
  assign n161_o = t5s[27:18];
  assign n162_o = t5s[17:0];
  assign n164_o = {1'b0, s4};
  assign n165_o = {n164_o, d5};
  assign n166_o = ~d5;
  assign n167_o = {n165_o, n166_o};
  assign n169_o = {n167_o, 1'b1};
  assign n170_o = t5s_h - u5;
  assign n171_o = d5 ? n170_o : n172_o;
  assign n172_o = t5s_h + u5;
  assign n173_o = t7_h[8:0];
  assign n174_o = {n173_o, t5s_l};
  assign n175_o = {s4, d5};
  assign n176_o = t6[26];
  assign n177_o = ~n176_o;
  assign n179_o = {t6, 1'b0};
  assign n180_o = t6s[27:17];
  assign n181_o = t6s[16:0];
  assign n183_o = {1'b0, s5};
  assign n184_o = {n183_o, d6};
  assign n185_o = ~d6;
  assign n186_o = {n184_o, n185_o};
  assign n188_o = {n186_o, 1'b1};
  assign n189_o = t6s_h - u6;
  assign n190_o = d6 ? n189_o : n191_o;
  assign n191_o = t6s_h + u6;
  assign n192_o = t8_h[9:0];
  assign n193_o = {n192_o, t6s_l};
  assign n194_o = {s5, d6};
  assign n195_o = t7[26];
  assign n196_o = ~n195_o;
  assign n198_o = {t7, 1'b0};
  assign n199_o = t7s[27:16];
  assign n200_o = t7s[15:0];
  assign n202_o = {1'b0, s6};
  assign n203_o = {n202_o, d7};
  assign n204_o = ~d7;
  assign n205_o = {n203_o, n204_o};
  assign n207_o = {n205_o, 1'b1};
  assign n208_o = t7s_h_d1 - u7_d1;
  assign n209_o = d7_d1 ? n208_o : n210_o;
  assign n210_o = t7s_h_d1 + u7_d1;
  assign n211_o = t9_h[10:0];
  assign n212_o = {n211_o, t7s_l_d1};
  assign n213_o = {s6, d7};
  assign n214_o = t8[26];
  assign n215_o = ~n214_o;
  assign n217_o = {t8, 1'b0};
  assign n218_o = t8s[27:15];
  assign n219_o = t8s[14:0];
  assign n221_o = {1'b0, s7_d1};
  assign n222_o = {n221_o, d8};
  assign n223_o = ~d8;
  assign n224_o = {n222_o, n223_o};
  assign n226_o = {n224_o, 1'b1};
  assign n227_o = t8s_h - u8;
  assign n228_o = d8 ? n227_o : n229_o;
  assign n229_o = t8s_h + u8;
  assign n230_o = t10_h[11:0];
  assign n231_o = {n230_o, t8s_l};
  assign n232_o = {s7_d1, d8};
  assign n233_o = t9[26];
  assign n234_o = ~n233_o;
  assign n236_o = {t9, 1'b0};
  assign n237_o = t9s[27:14];
  assign n238_o = t9s[13:0];
  assign n240_o = {1'b0, s8};
  assign n241_o = {n240_o, d9};
  assign n242_o = ~d9;
  assign n243_o = {n241_o, n242_o};
  assign n245_o = {n243_o, 1'b1};
  assign n246_o = t9s_h - u9;
  assign n247_o = d9 ? n246_o : n248_o;
  assign n248_o = t9s_h + u9;
  assign n249_o = t11_h[12:0];
  assign n250_o = {n249_o, t9s_l};
  assign n251_o = {s8, d9};
  assign n252_o = t10[26];
  assign n253_o = ~n252_o;
  assign n255_o = {t10, 1'b0};
  assign n256_o = t10s[27:13];
  assign n257_o = t10s[12:0];
  assign n259_o = {1'b0, s9};
  assign n260_o = {n259_o, d10};
  assign n261_o = ~d10;
  assign n262_o = {n260_o, n261_o};
  assign n264_o = {n262_o, 1'b1};
  assign n265_o = t10s_h_d1 - u10_d1;
  assign n266_o = d10_d1 ? n265_o : n267_o;
  assign n267_o = t10s_h_d1 + u10_d1;
  assign n268_o = t12_h[13:0];
  assign n269_o = {n268_o, t10s_l_d1};
  assign n270_o = {s9, d10};
  assign n271_o = t11[26];
  assign n272_o = ~n271_o;
  assign n274_o = {t11, 1'b0};
  assign n275_o = t11s[27:12];
  assign n276_o = t11s[11:0];
  assign n278_o = {1'b0, s10_d1};
  assign n279_o = {n278_o, d11};
  assign n280_o = ~d11;
  assign n281_o = {n279_o, n280_o};
  assign n283_o = {n281_o, 1'b1};
  assign n284_o = t11s_h - u11;
  assign n285_o = d11 ? n284_o : n286_o;
  assign n286_o = t11s_h + u11;
  assign n287_o = t13_h[14:0];
  assign n288_o = {n287_o, t11s_l};
  assign n289_o = {s10_d1, d11};
  assign n290_o = t12[26];
  assign n291_o = ~n290_o;
  assign n293_o = {t12, 1'b0};
  assign n294_o = t12s[27:11];
  assign n295_o = t12s[10:0];
  assign n297_o = {1'b0, s11};
  assign n298_o = {n297_o, d12};
  assign n299_o = ~d12;
  assign n300_o = {n298_o, n299_o};
  assign n302_o = {n300_o, 1'b1};
  assign n303_o = t12s_h - u12;
  assign n304_o = d12 ? n303_o : n305_o;
  assign n305_o = t12s_h + u12;
  assign n306_o = t14_h[15:0];
  assign n307_o = {n306_o, t12s_l};
  assign n308_o = {s11, d12};
  assign n309_o = t13[26];
  assign n310_o = ~n309_o;
  assign n312_o = {t13, 1'b0};
  assign n313_o = t13s[27:10];
  assign n314_o = t13s[9:0];
  assign n316_o = {1'b0, s12};
  assign n317_o = {n316_o, d13};
  assign n318_o = ~d13;
  assign n319_o = {n317_o, n318_o};
  assign n321_o = {n319_o, 1'b1};
  assign n322_o = t13s_h_d1 - u13_d1;
  assign n323_o = d13_d1 ? n322_o : n324_o;
  assign n324_o = t13s_h_d1 + u13_d1;
  assign n325_o = t15_h[16:0];
  assign n326_o = {n325_o, t13s_l_d1};
  assign n327_o = {s12, d13};
  assign n328_o = t14[26];
  assign n329_o = ~n328_o;
  assign n331_o = {t14, 1'b0};
  assign n332_o = t14s[27:9];
  assign n333_o = t14s[8:0];
  assign n335_o = {1'b0, s13_d1};
  assign n336_o = {n335_o, d14};
  assign n337_o = ~d14;
  assign n338_o = {n336_o, n337_o};
  assign n340_o = {n338_o, 1'b1};
  assign n341_o = t14s_h - u14;
  assign n342_o = d14 ? n341_o : n343_o;
  assign n343_o = t14s_h + u14;
  assign n344_o = t16_h[17:0];
  assign n345_o = {n344_o, t14s_l};
  assign n346_o = {s13_d1, d14};
  assign n347_o = t15[26];
  assign n348_o = ~n347_o;
  assign n350_o = {t15, 1'b0};
  assign n351_o = t15s[27:8];
  assign n352_o = t15s[7:0];
  assign n354_o = {1'b0, s14};
  assign n355_o = {n354_o, d15};
  assign n356_o = ~d15;
  assign n357_o = {n355_o, n356_o};
  assign n359_o = {n357_o, 1'b1};
  assign n360_o = t15s_h - u15;
  assign n361_o = d15 ? n360_o : n362_o;
  assign n362_o = t15s_h + u15;
  assign n363_o = t17_h[18:0];
  assign n364_o = {n363_o, t15s_l};
  assign n365_o = {s14, d15};
  assign n366_o = t16[26];
  assign n367_o = ~n366_o;
  assign n369_o = {t16, 1'b0};
  assign n370_o = t16s[27:7];
  assign n371_o = t16s[6:0];
  assign n373_o = {1'b0, s15};
  assign n374_o = {n373_o, d16};
  assign n375_o = ~d16;
  assign n376_o = {n374_o, n375_o};
  assign n378_o = {n376_o, 1'b1};
  assign n379_o = t16s_h_d1 - u16_d1;
  assign n380_o = d16_d1 ? n379_o : n381_o;
  assign n381_o = t16s_h_d1 + u16_d1;
  assign n382_o = t18_h[19:0];
  assign n383_o = {n382_o, t16s_l_d1};
  assign n384_o = {s15, d16};
  assign n385_o = t17[26];
  assign n386_o = ~n385_o;
  assign n388_o = {t17, 1'b0};
  assign n389_o = t17s[27:6];
  assign n390_o = t17s[5:0];
  assign n392_o = {1'b0, s16_d1};
  assign n393_o = {n392_o, d17};
  assign n394_o = ~d17;
  assign n395_o = {n393_o, n394_o};
  assign n397_o = {n395_o, 1'b1};
  assign n398_o = t17s_h - u17;
  assign n399_o = d17 ? n398_o : n400_o;
  assign n400_o = t17s_h + u17;
  assign n401_o = t19_h[20:0];
  assign n402_o = {n401_o, t17s_l};
  assign n403_o = {s16_d1, d17};
  assign n404_o = t18[26];
  assign n405_o = ~n404_o;
  assign n407_o = {t18, 1'b0};
  assign n408_o = t18s[27:5];
  assign n409_o = t18s[4:0];
  assign n411_o = {1'b0, s17};
  assign n412_o = {n411_o, d18};
  assign n413_o = ~d18;
  assign n414_o = {n412_o, n413_o};
  assign n416_o = {n414_o, 1'b1};
  assign n417_o = t18s_h - u18;
  assign n418_o = d18 ? n417_o : n419_o;
  assign n419_o = t18s_h + u18;
  assign n420_o = t20_h[21:0];
  assign n421_o = {n420_o, t18s_l};
  assign n422_o = {s17, d18};
  assign n423_o = t19[26];
  assign n424_o = ~n423_o;
  assign n426_o = {t19, 1'b0};
  assign n427_o = t19s[27:4];
  assign n428_o = t19s[3:0];
  assign n430_o = {1'b0, s18};
  assign n431_o = {n430_o, d19};
  assign n432_o = ~d19;
  assign n433_o = {n431_o, n432_o};
  assign n435_o = {n433_o, 1'b1};
  assign n436_o = t19s_h_d1 - u19_d1;
  assign n437_o = d19_d1 ? n436_o : n438_o;
  assign n438_o = t19s_h_d1 + u19_d1;
  assign n439_o = t21_h[22:0];
  assign n440_o = {n439_o, t19s_l_d1};
  assign n441_o = {s18, d19};
  assign n442_o = t20[26];
  assign n443_o = ~n442_o;
  assign n445_o = {t20, 1'b0};
  assign n446_o = t20s[27:3];
  assign n447_o = t20s[2:0];
  assign n449_o = {1'b0, s19_d1};
  assign n450_o = {n449_o, d20};
  assign n451_o = ~d20;
  assign n452_o = {n450_o, n451_o};
  assign n454_o = {n452_o, 1'b1};
  assign n455_o = t20s_h - u20;
  assign n456_o = d20 ? n455_o : n457_o;
  assign n457_o = t20s_h + u20;
  assign n458_o = t22_h[23:0];
  assign n459_o = {n458_o, t20s_l};
  assign n460_o = {s19_d1, d20};
  assign n461_o = t21[26];
  assign n462_o = ~n461_o;
  assign n464_o = {t21, 1'b0};
  assign n465_o = t21s[27:2];
  assign n466_o = t21s[1:0];
  assign n468_o = {1'b0, s20};
  assign n469_o = {n468_o, d21};
  assign n470_o = ~d21;
  assign n471_o = {n469_o, n470_o};
  assign n473_o = {n471_o, 1'b1};
  assign n474_o = t21s_h - u21;
  assign n475_o = d21 ? n474_o : n476_o;
  assign n476_o = t21s_h + u21;
  assign n477_o = t23_h[24:0];
  assign n478_o = {n477_o, t21s_l};
  assign n479_o = {s20, d21};
  assign n480_o = t22[26];
  assign n481_o = ~n480_o;
  assign n483_o = {t22, 1'b0};
  assign n484_o = t22s[27:1];
  assign n485_o = t22s[0];
  assign n487_o = {1'b0, s21};
  assign n488_o = {n487_o, d22};
  assign n489_o = ~d22;
  assign n490_o = {n488_o, n489_o};
  assign n492_o = {n490_o, 1'b1};
  assign n493_o = t22s_h_d1 - u22_d1;
  assign n494_o = d22_d1 ? n493_o : n495_o;
  assign n495_o = t22s_h_d1 + u22_d1;
  assign n496_o = t24_h[25:0];
  assign n497_o = {n496_o, t22s_l_d1};
  assign n498_o = {s21, d22};
  assign n499_o = t23[26];
  assign n500_o = ~n499_o;
  assign n502_o = {t23, 1'b0};
  assign n504_o = {1'b0, s22_d1};
  assign n505_o = {n504_o, d23};
  assign n506_o = ~d23;
  assign n507_o = {n505_o, n506_o};
  assign n509_o = {n507_o, 1'b1};
  assign n510_o = t23s_h - u23;
  assign n511_o = d23 ? n510_o : n512_o;
  assign n512_o = t23s_h + u23;
  assign n513_o = t25_h[26:0];
  assign n514_o = {s22_d1, d23};
  assign n515_o = t24[26];
  assign n516_o = ~n515_o;
  assign n517_o = {s23, d25};
  assign n518_o = mr[23:1];
  assign n519_o = mr[0];
  assign n521_o = {22'b0000000000000000000000, round};
  assign n522_o = fr + n521_o;
  assign n523_o = {ern1_d7, frrnd};
  assign n526_o = xsx == 3'b010;
  assign n529_o = xsx == 3'b100;
  assign n532_o = xsx == 3'b000;
  assign n535_o = xsx == 3'b001;
  assign n537_o = {n535_o, n532_o, n529_o, n526_o};
  always @*
    case (n537_o)
      4'b1000: n538_o = 3'b001;
      4'b0100: n538_o = 3'b000;
      4'b0010: n538_o = 3'b100;
      4'b0001: n538_o = 3'b010;
      default: n538_o = 3'b110;
    endcase
  assign n539_o = {xsr_d7, rn2};
  always @(posedge clk)
    n540_q <= ern1;
  always @(posedge clk)
    n541_q <= ern1_d1;
  always @(posedge clk)
    n542_q <= ern1_d2;
  always @(posedge clk)
    n543_q <= ern1_d3;
  always @(posedge clk)
    n544_q <= ern1_d4;
  always @(posedge clk)
    n545_q <= ern1_d5;
  always @(posedge clk)
    n546_q <= ern1_d6;
  always @(posedge clk)
    n547_q <= d3;
  always @(posedge clk)
    n548_q <= t3s_h;
  always @(posedge clk)
    n549_q <= t3s_l;
  always @(posedge clk)
    n550_q <= u3;
  always @(posedge clk)
    n551_q <= s3;
  always @(posedge clk)
    n552_q <= d7;
  always @(posedge clk)
    n553_q <= t7s_h;
  always @(posedge clk)
    n554_q <= t7s_l;
  always @(posedge clk)
    n555_q <= u7;
  always @(posedge clk)
    n556_q <= s7;
  always @(posedge clk)
    n557_q <= d10;
  always @(posedge clk)
    n558_q <= t10s_h;
  always @(posedge clk)
    n559_q <= t10s_l;
  always @(posedge clk)
    n560_q <= u10;
  always @(posedge clk)
    n561_q <= s10;
  always @(posedge clk)
    n562_q <= d13;
  always @(posedge clk)
    n563_q <= t13s_h;
  always @(posedge clk)
    n564_q <= t13s_l;
  always @(posedge clk)
    n565_q <= u13;
  always @(posedge clk)
    n566_q <= s13;
  always @(posedge clk)
    n567_q <= d16;
  always @(posedge clk)
    n568_q <= t16s_h;
  always @(posedge clk)
    n569_q <= t16s_l;
  always @(posedge clk)
    n570_q <= u16;
  always @(posedge clk)
    n571_q <= s16;
  always @(posedge clk)
    n572_q <= d19;
  always @(posedge clk)
    n573_q <= t19s_h;
  always @(posedge clk)
    n574_q <= t19s_l;
  always @(posedge clk)
    n575_q <= u19;
  always @(posedge clk)
    n576_q <= s19;
  always @(posedge clk)
    n577_q <= d22;
  always @(posedge clk)
    n578_q <= t22s_h;
  always @(posedge clk)
    n579_q <= t22s_l;
  always @(posedge clk)
    n580_q <= u22;
  always @(posedge clk)
    n581_q <= s22;
  always @(posedge clk)
    n582_q <= xsr;
  always @(posedge clk)
    n583_q <= xsr_d1;
  always @(posedge clk)
    n584_q <= xsr_d2;
  always @(posedge clk)
    n585_q <= xsr_d3;
  always @(posedge clk)
    n586_q <= xsr_d4;
  always @(posedge clk)
    n587_q <= xsr_d5;
  always @(posedge clk)
    n588_q <= xsr_d6;
endmodule

