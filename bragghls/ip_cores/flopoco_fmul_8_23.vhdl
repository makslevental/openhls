--------------------------------------------------------------------------------
--                           IntAdder_42_f300_uid15
--                     (IntAdderClassical_42_F300_uid17)
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Bogdan Pasca, Florent de Dinechin (2008-2010)
--------------------------------------------------------------------------------
-- Pipeline depth: 0 cycles

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity IntAdder_42_f300_uid15 is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(41 downto 0);
          Y : in  std_logic_vector(41 downto 0);
          Cin : in  std_logic;
          R : out  std_logic_vector(41 downto 0)   );
end entity;

architecture arch of IntAdder_42_f300_uid15 is
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
         end if;
      end process;
   --Classical
    R <= X + Y + Cin;
end architecture;

--------------------------------------------------------------------------------
--             IntMultiplier_UsingDSP_24_24_48_unsigned_F300_uid4
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Florent de Dinechin, Kinga Illyes, Bogdan Popa, Bogdan Pasca, 2012
--------------------------------------------------------------------------------
-- Pipeline depth: 1 cycles

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library std;
use std.textio.all;
library work;

entity IntMultiplier_UsingDSP_24_24_48_unsigned_F300_uid4 is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(23 downto 0);
          Y : in  std_logic_vector(23 downto 0);
          R : out  std_logic_vector(47 downto 0)   );
end entity;

architecture arch of IntMultiplier_UsingDSP_24_24_48_unsigned_F300_uid4 is
   component IntAdder_42_f300_uid15 is
      port ( clk, rst : in std_logic;
             X : in  std_logic_vector(41 downto 0);
             Y : in  std_logic_vector(41 downto 0);
             Cin : in  std_logic;
             R : out  std_logic_vector(41 downto 0)   );
   end component;

signal XX_m5 :  std_logic_vector(23 downto 0);
signal YY_m5 :  std_logic_vector(23 downto 0);
signal DSP_bh6_ch0_0 :  std_logic_vector(40 downto 0);
signal heap_bh6_w47_0, heap_bh6_w47_0_d1 :  std_logic;
signal heap_bh6_w46_0, heap_bh6_w46_0_d1 :  std_logic;
signal heap_bh6_w45_0, heap_bh6_w45_0_d1 :  std_logic;
signal heap_bh6_w44_0, heap_bh6_w44_0_d1 :  std_logic;
signal heap_bh6_w43_0, heap_bh6_w43_0_d1 :  std_logic;
signal heap_bh6_w42_0, heap_bh6_w42_0_d1 :  std_logic;
signal heap_bh6_w41_0, heap_bh6_w41_0_d1 :  std_logic;
signal heap_bh6_w40_0, heap_bh6_w40_0_d1 :  std_logic;
signal heap_bh6_w39_0, heap_bh6_w39_0_d1 :  std_logic;
signal heap_bh6_w38_0, heap_bh6_w38_0_d1 :  std_logic;
signal heap_bh6_w37_0, heap_bh6_w37_0_d1 :  std_logic;
signal heap_bh6_w36_0, heap_bh6_w36_0_d1 :  std_logic;
signal heap_bh6_w35_0, heap_bh6_w35_0_d1 :  std_logic;
signal heap_bh6_w34_0, heap_bh6_w34_0_d1 :  std_logic;
signal heap_bh6_w33_0, heap_bh6_w33_0_d1 :  std_logic;
signal heap_bh6_w32_0, heap_bh6_w32_0_d1 :  std_logic;
signal heap_bh6_w31_0, heap_bh6_w31_0_d1 :  std_logic;
signal heap_bh6_w30_0, heap_bh6_w30_0_d1 :  std_logic;
signal heap_bh6_w29_0, heap_bh6_w29_0_d1 :  std_logic;
signal heap_bh6_w28_0, heap_bh6_w28_0_d1 :  std_logic;
signal heap_bh6_w27_0, heap_bh6_w27_0_d1 :  std_logic;
signal heap_bh6_w26_0, heap_bh6_w26_0_d1 :  std_logic;
signal heap_bh6_w25_0, heap_bh6_w25_0_d1 :  std_logic;
signal heap_bh6_w24_0, heap_bh6_w24_0_d1 :  std_logic;
signal heap_bh6_w23_0, heap_bh6_w23_0_d1 :  std_logic;
signal heap_bh6_w22_0, heap_bh6_w22_0_d1 :  std_logic;
signal heap_bh6_w21_0, heap_bh6_w21_0_d1 :  std_logic;
signal heap_bh6_w20_0, heap_bh6_w20_0_d1 :  std_logic;
signal heap_bh6_w19_0, heap_bh6_w19_0_d1 :  std_logic;
signal heap_bh6_w18_0, heap_bh6_w18_0_d1 :  std_logic;
signal heap_bh6_w17_0, heap_bh6_w17_0_d1 :  std_logic;
signal heap_bh6_w16_0, heap_bh6_w16_0_d1 :  std_logic;
signal heap_bh6_w15_0, heap_bh6_w15_0_d1 :  std_logic;
signal heap_bh6_w14_0, heap_bh6_w14_0_d1 :  std_logic;
signal heap_bh6_w13_0, heap_bh6_w13_0_d1 :  std_logic;
signal heap_bh6_w12_0, heap_bh6_w12_0_d1 :  std_logic;
signal heap_bh6_w11_0, heap_bh6_w11_0_d1 :  std_logic;
signal heap_bh6_w10_0, heap_bh6_w10_0_d1 :  std_logic;
signal heap_bh6_w9_0, heap_bh6_w9_0_d1 :  std_logic;
signal heap_bh6_w8_0, heap_bh6_w8_0_d1 :  std_logic;
signal heap_bh6_w7_0, heap_bh6_w7_0_d1 :  std_logic;
signal DSP_bh6_ch1_0 :  std_logic_vector(40 downto 0);
signal heap_bh6_w30_1, heap_bh6_w30_1_d1 :  std_logic;
signal heap_bh6_w29_1, heap_bh6_w29_1_d1 :  std_logic;
signal heap_bh6_w28_1, heap_bh6_w28_1_d1 :  std_logic;
signal heap_bh6_w27_1, heap_bh6_w27_1_d1 :  std_logic;
signal heap_bh6_w26_1, heap_bh6_w26_1_d1 :  std_logic;
signal heap_bh6_w25_1, heap_bh6_w25_1_d1 :  std_logic;
signal heap_bh6_w24_1, heap_bh6_w24_1_d1 :  std_logic;
signal heap_bh6_w23_1, heap_bh6_w23_1_d1 :  std_logic;
signal heap_bh6_w22_1, heap_bh6_w22_1_d1 :  std_logic;
signal heap_bh6_w21_1, heap_bh6_w21_1_d1 :  std_logic;
signal heap_bh6_w20_1, heap_bh6_w20_1_d1 :  std_logic;
signal heap_bh6_w19_1, heap_bh6_w19_1_d1 :  std_logic;
signal heap_bh6_w18_1, heap_bh6_w18_1_d1 :  std_logic;
signal heap_bh6_w17_1, heap_bh6_w17_1_d1 :  std_logic;
signal heap_bh6_w16_1, heap_bh6_w16_1_d1 :  std_logic;
signal heap_bh6_w15_1, heap_bh6_w15_1_d1 :  std_logic;
signal heap_bh6_w14_1, heap_bh6_w14_1_d1 :  std_logic;
signal heap_bh6_w13_1, heap_bh6_w13_1_d1 :  std_logic;
signal heap_bh6_w12_1, heap_bh6_w12_1_d1 :  std_logic;
signal heap_bh6_w11_1, heap_bh6_w11_1_d1 :  std_logic;
signal heap_bh6_w10_1, heap_bh6_w10_1_d1 :  std_logic;
signal heap_bh6_w9_1, heap_bh6_w9_1_d1 :  std_logic;
signal heap_bh6_w8_1, heap_bh6_w8_1_d1 :  std_logic;
signal heap_bh6_w7_1, heap_bh6_w7_1_d1 :  std_logic;
signal heap_bh6_w6_0 :  std_logic;
signal heap_bh6_w5_0 :  std_logic;
signal heap_bh6_w4_0 :  std_logic;
signal heap_bh6_w3_0 :  std_logic;
signal heap_bh6_w2_0 :  std_logic;
signal heap_bh6_w1_0 :  std_logic;
signal heap_bh6_w0_0 :  std_logic;
signal finalAdderIn0_bh6 :  std_logic_vector(41 downto 0);
signal finalAdderIn1_bh6 :  std_logic_vector(41 downto 0);
signal finalAdderCin_bh6 :  std_logic;
signal finalAdderOut_bh6 :  std_logic_vector(41 downto 0);
signal tempR_bh6_0, tempR_bh6_0_d1 :  std_logic_vector(6 downto 0);
signal CompressionResult6 :  std_logic_vector(48 downto 0);
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
            heap_bh6_w47_0_d1 <=  heap_bh6_w47_0;
            heap_bh6_w46_0_d1 <=  heap_bh6_w46_0;
            heap_bh6_w45_0_d1 <=  heap_bh6_w45_0;
            heap_bh6_w44_0_d1 <=  heap_bh6_w44_0;
            heap_bh6_w43_0_d1 <=  heap_bh6_w43_0;
            heap_bh6_w42_0_d1 <=  heap_bh6_w42_0;
            heap_bh6_w41_0_d1 <=  heap_bh6_w41_0;
            heap_bh6_w40_0_d1 <=  heap_bh6_w40_0;
            heap_bh6_w39_0_d1 <=  heap_bh6_w39_0;
            heap_bh6_w38_0_d1 <=  heap_bh6_w38_0;
            heap_bh6_w37_0_d1 <=  heap_bh6_w37_0;
            heap_bh6_w36_0_d1 <=  heap_bh6_w36_0;
            heap_bh6_w35_0_d1 <=  heap_bh6_w35_0;
            heap_bh6_w34_0_d1 <=  heap_bh6_w34_0;
            heap_bh6_w33_0_d1 <=  heap_bh6_w33_0;
            heap_bh6_w32_0_d1 <=  heap_bh6_w32_0;
            heap_bh6_w31_0_d1 <=  heap_bh6_w31_0;
            heap_bh6_w30_0_d1 <=  heap_bh6_w30_0;
            heap_bh6_w29_0_d1 <=  heap_bh6_w29_0;
            heap_bh6_w28_0_d1 <=  heap_bh6_w28_0;
            heap_bh6_w27_0_d1 <=  heap_bh6_w27_0;
            heap_bh6_w26_0_d1 <=  heap_bh6_w26_0;
            heap_bh6_w25_0_d1 <=  heap_bh6_w25_0;
            heap_bh6_w24_0_d1 <=  heap_bh6_w24_0;
            heap_bh6_w23_0_d1 <=  heap_bh6_w23_0;
            heap_bh6_w22_0_d1 <=  heap_bh6_w22_0;
            heap_bh6_w21_0_d1 <=  heap_bh6_w21_0;
            heap_bh6_w20_0_d1 <=  heap_bh6_w20_0;
            heap_bh6_w19_0_d1 <=  heap_bh6_w19_0;
            heap_bh6_w18_0_d1 <=  heap_bh6_w18_0;
            heap_bh6_w17_0_d1 <=  heap_bh6_w17_0;
            heap_bh6_w16_0_d1 <=  heap_bh6_w16_0;
            heap_bh6_w15_0_d1 <=  heap_bh6_w15_0;
            heap_bh6_w14_0_d1 <=  heap_bh6_w14_0;
            heap_bh6_w13_0_d1 <=  heap_bh6_w13_0;
            heap_bh6_w12_0_d1 <=  heap_bh6_w12_0;
            heap_bh6_w11_0_d1 <=  heap_bh6_w11_0;
            heap_bh6_w10_0_d1 <=  heap_bh6_w10_0;
            heap_bh6_w9_0_d1 <=  heap_bh6_w9_0;
            heap_bh6_w8_0_d1 <=  heap_bh6_w8_0;
            heap_bh6_w7_0_d1 <=  heap_bh6_w7_0;
            heap_bh6_w30_1_d1 <=  heap_bh6_w30_1;
            heap_bh6_w29_1_d1 <=  heap_bh6_w29_1;
            heap_bh6_w28_1_d1 <=  heap_bh6_w28_1;
            heap_bh6_w27_1_d1 <=  heap_bh6_w27_1;
            heap_bh6_w26_1_d1 <=  heap_bh6_w26_1;
            heap_bh6_w25_1_d1 <=  heap_bh6_w25_1;
            heap_bh6_w24_1_d1 <=  heap_bh6_w24_1;
            heap_bh6_w23_1_d1 <=  heap_bh6_w23_1;
            heap_bh6_w22_1_d1 <=  heap_bh6_w22_1;
            heap_bh6_w21_1_d1 <=  heap_bh6_w21_1;
            heap_bh6_w20_1_d1 <=  heap_bh6_w20_1;
            heap_bh6_w19_1_d1 <=  heap_bh6_w19_1;
            heap_bh6_w18_1_d1 <=  heap_bh6_w18_1;
            heap_bh6_w17_1_d1 <=  heap_bh6_w17_1;
            heap_bh6_w16_1_d1 <=  heap_bh6_w16_1;
            heap_bh6_w15_1_d1 <=  heap_bh6_w15_1;
            heap_bh6_w14_1_d1 <=  heap_bh6_w14_1;
            heap_bh6_w13_1_d1 <=  heap_bh6_w13_1;
            heap_bh6_w12_1_d1 <=  heap_bh6_w12_1;
            heap_bh6_w11_1_d1 <=  heap_bh6_w11_1;
            heap_bh6_w10_1_d1 <=  heap_bh6_w10_1;
            heap_bh6_w9_1_d1 <=  heap_bh6_w9_1;
            heap_bh6_w8_1_d1 <=  heap_bh6_w8_1;
            heap_bh6_w7_1_d1 <=  heap_bh6_w7_1;
            tempR_bh6_0_d1 <=  tempR_bh6_0;
         end if;
      end process;
   XX_m5 <= X ;
   YY_m5 <= Y ;
   
   -- Beginning of code generated by BitHeap::generateCompressorVHDL
   -- code generated by BitHeap::generateSupertileVHDL()
   ----------------Synchro barrier, entering cycle 0----------------
   DSP_bh6_ch0_0 <= std_logic_vector(unsigned("" & XX_m5(23 downto 0) & "") * unsigned("" & YY_m5(23 downto 7) & ""));
   heap_bh6_w47_0 <= DSP_bh6_ch0_0(40); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w46_0 <= DSP_bh6_ch0_0(39); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w45_0 <= DSP_bh6_ch0_0(38); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w44_0 <= DSP_bh6_ch0_0(37); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w43_0 <= DSP_bh6_ch0_0(36); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w42_0 <= DSP_bh6_ch0_0(35); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w41_0 <= DSP_bh6_ch0_0(34); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w40_0 <= DSP_bh6_ch0_0(33); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w39_0 <= DSP_bh6_ch0_0(32); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w38_0 <= DSP_bh6_ch0_0(31); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w37_0 <= DSP_bh6_ch0_0(30); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w36_0 <= DSP_bh6_ch0_0(29); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w35_0 <= DSP_bh6_ch0_0(28); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w34_0 <= DSP_bh6_ch0_0(27); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w33_0 <= DSP_bh6_ch0_0(26); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w32_0 <= DSP_bh6_ch0_0(25); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w31_0 <= DSP_bh6_ch0_0(24); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w30_0 <= DSP_bh6_ch0_0(23); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w29_0 <= DSP_bh6_ch0_0(22); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w28_0 <= DSP_bh6_ch0_0(21); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w27_0 <= DSP_bh6_ch0_0(20); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w26_0 <= DSP_bh6_ch0_0(19); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w25_0 <= DSP_bh6_ch0_0(18); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w24_0 <= DSP_bh6_ch0_0(17); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w23_0 <= DSP_bh6_ch0_0(16); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w22_0 <= DSP_bh6_ch0_0(15); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w21_0 <= DSP_bh6_ch0_0(14); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w20_0 <= DSP_bh6_ch0_0(13); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w19_0 <= DSP_bh6_ch0_0(12); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w18_0 <= DSP_bh6_ch0_0(11); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w17_0 <= DSP_bh6_ch0_0(10); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w16_0 <= DSP_bh6_ch0_0(9); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w15_0 <= DSP_bh6_ch0_0(8); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w14_0 <= DSP_bh6_ch0_0(7); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w13_0 <= DSP_bh6_ch0_0(6); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w12_0 <= DSP_bh6_ch0_0(5); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w11_0 <= DSP_bh6_ch0_0(4); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w10_0 <= DSP_bh6_ch0_0(3); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w9_0 <= DSP_bh6_ch0_0(2); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w8_0 <= DSP_bh6_ch0_0(1); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w7_0 <= DSP_bh6_ch0_0(0); -- cycle= 0 cp= 1.638e-09
   ----------------Synchro barrier, entering cycle 0----------------
   DSP_bh6_ch1_0 <= std_logic_vector(unsigned("" & XX_m5(23 downto 0) & "") * unsigned("" & YY_m5(6 downto 0) & "0000000000"));
   heap_bh6_w30_1 <= DSP_bh6_ch1_0(40); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w29_1 <= DSP_bh6_ch1_0(39); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w28_1 <= DSP_bh6_ch1_0(38); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w27_1 <= DSP_bh6_ch1_0(37); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w26_1 <= DSP_bh6_ch1_0(36); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w25_1 <= DSP_bh6_ch1_0(35); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w24_1 <= DSP_bh6_ch1_0(34); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w23_1 <= DSP_bh6_ch1_0(33); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w22_1 <= DSP_bh6_ch1_0(32); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w21_1 <= DSP_bh6_ch1_0(31); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w20_1 <= DSP_bh6_ch1_0(30); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w19_1 <= DSP_bh6_ch1_0(29); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w18_1 <= DSP_bh6_ch1_0(28); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w17_1 <= DSP_bh6_ch1_0(27); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w16_1 <= DSP_bh6_ch1_0(26); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w15_1 <= DSP_bh6_ch1_0(25); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w14_1 <= DSP_bh6_ch1_0(24); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w13_1 <= DSP_bh6_ch1_0(23); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w12_1 <= DSP_bh6_ch1_0(22); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w11_1 <= DSP_bh6_ch1_0(21); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w10_1 <= DSP_bh6_ch1_0(20); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w9_1 <= DSP_bh6_ch1_0(19); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w8_1 <= DSP_bh6_ch1_0(18); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w7_1 <= DSP_bh6_ch1_0(17); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w6_0 <= DSP_bh6_ch1_0(16); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w5_0 <= DSP_bh6_ch1_0(15); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w4_0 <= DSP_bh6_ch1_0(14); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w3_0 <= DSP_bh6_ch1_0(13); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w2_0 <= DSP_bh6_ch1_0(12); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w1_0 <= DSP_bh6_ch1_0(11); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w0_0 <= DSP_bh6_ch1_0(10); -- cycle= 0 cp= 1.638e-09
   ----------------Synchro barrier, entering cycle 0----------------

   -- Adding the constant bits
      -- All the constant bits are zero, nothing to add

   ----------------Synchro barrier, entering cycle 0----------------
   ----------------Synchro barrier, entering cycle 0----------------
   ----------------Synchro barrier, entering cycle 1----------------
   finalAdderIn0_bh6 <= "0" & heap_bh6_w47_0_d1 & heap_bh6_w46_0_d1 & heap_bh6_w45_0_d1 & heap_bh6_w44_0_d1 & heap_bh6_w43_0_d1 & heap_bh6_w42_0_d1 & heap_bh6_w41_0_d1 & heap_bh6_w40_0_d1 & heap_bh6_w39_0_d1 & heap_bh6_w38_0_d1 & heap_bh6_w37_0_d1 & heap_bh6_w36_0_d1 & heap_bh6_w35_0_d1 & heap_bh6_w34_0_d1 & heap_bh6_w33_0_d1 & heap_bh6_w32_0_d1 & heap_bh6_w31_0_d1 & heap_bh6_w30_1_d1 & heap_bh6_w29_1_d1 & heap_bh6_w28_1_d1 & heap_bh6_w27_1_d1 & heap_bh6_w26_1_d1 & heap_bh6_w25_1_d1 & heap_bh6_w24_1_d1 & heap_bh6_w23_1_d1 & heap_bh6_w22_1_d1 & heap_bh6_w21_1_d1 & heap_bh6_w20_1_d1 & heap_bh6_w19_1_d1 & heap_bh6_w18_1_d1 & heap_bh6_w17_1_d1 & heap_bh6_w16_1_d1 & heap_bh6_w15_1_d1 & heap_bh6_w14_1_d1 & heap_bh6_w13_1_d1 & heap_bh6_w12_1_d1 & heap_bh6_w11_1_d1 & heap_bh6_w10_1_d1 & heap_bh6_w9_1_d1 & heap_bh6_w8_1_d1 & heap_bh6_w7_1_d1;
   finalAdderIn1_bh6 <= "0" & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & heap_bh6_w30_0_d1 & heap_bh6_w29_0_d1 & heap_bh6_w28_0_d1 & heap_bh6_w27_0_d1 & heap_bh6_w26_0_d1 & heap_bh6_w25_0_d1 & heap_bh6_w24_0_d1 & heap_bh6_w23_0_d1 & heap_bh6_w22_0_d1 & heap_bh6_w21_0_d1 & heap_bh6_w20_0_d1 & heap_bh6_w19_0_d1 & heap_bh6_w18_0_d1 & heap_bh6_w17_0_d1 & heap_bh6_w16_0_d1 & heap_bh6_w15_0_d1 & heap_bh6_w14_0_d1 & heap_bh6_w13_0_d1 & heap_bh6_w12_0_d1 & heap_bh6_w11_0_d1 & heap_bh6_w10_0_d1 & heap_bh6_w9_0_d1 & heap_bh6_w8_0_d1 & heap_bh6_w7_0_d1;
   finalAdderCin_bh6 <= '0';
      Adder_final6_0: IntAdder_42_f300_uid15  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 Cin => finalAdderCin_bh6,
                 R => finalAdderOut_bh6,
                 X => finalAdderIn0_bh6,
                 Y => finalAdderIn1_bh6);
   ----------------Synchro barrier, entering cycle 0----------------
   tempR_bh6_0 <= heap_bh6_w6_0 & heap_bh6_w5_0 & heap_bh6_w4_0 & heap_bh6_w3_0 & heap_bh6_w2_0 & heap_bh6_w1_0 & heap_bh6_w0_0; -- already compressed
   -- concatenate all the compressed chunks
   ----------------Synchro barrier, entering cycle 1----------------
   CompressionResult6 <= finalAdderOut_bh6 & tempR_bh6_0_d1;
   -- End of code generated by BitHeap::generateCompressorVHDL
   R <= CompressionResult6(47 downto 0);
end architecture;

--------------------------------------------------------------------------------
--                           IntAdder_33_f300_uid25
--                    (IntAdderAlternative_33_F300_uid29)
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Bogdan Pasca, Florent de Dinechin (2008-2010)
--------------------------------------------------------------------------------
-- Pipeline depth: 0 cycles

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity IntAdder_33_f300_uid25 is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(32 downto 0);
          Y : in  std_logic_vector(32 downto 0);
          Cin : in  std_logic;
          R : out  std_logic_vector(32 downto 0)   );
end entity;

architecture arch of IntAdder_33_f300_uid25 is
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
         end if;
      end process;
   --Alternative
    R <= X + Y + Cin;
end architecture;

--------------------------------------------------------------------------------
--                                    fmul
--                     (FPMult_8_23_8_23_8_23_F300_uid2)
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Bogdan Pasca, Florent de Dinechin 2008-2011
--------------------------------------------------------------------------------
-- Pipeline depth: 1 cycles

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity fmul is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(8+23+2 downto 0);
          Y : in  std_logic_vector(8+23+2 downto 0);
          R : out  std_logic_vector(8+23+2 downto 0)   );
end entity;

architecture arch of fmul is
   component IntMultiplier_UsingDSP_24_24_48_unsigned_F300_uid4 is
      port ( clk, rst : in std_logic;
             X : in  std_logic_vector(23 downto 0);
             Y : in  std_logic_vector(23 downto 0);
             R : out  std_logic_vector(47 downto 0)   );
   end component;

   component IntAdder_33_f300_uid25 is
      port ( clk, rst : in std_logic;
             X : in  std_logic_vector(32 downto 0);
             Y : in  std_logic_vector(32 downto 0);
             Cin : in  std_logic;
             R : out  std_logic_vector(32 downto 0)   );
   end component;

signal sign, sign_d1 :  std_logic;
signal expX :  std_logic_vector(7 downto 0);
signal expY :  std_logic_vector(7 downto 0);
signal expSumPreSub :  std_logic_vector(9 downto 0);
signal bias :  std_logic_vector(9 downto 0);
signal expSum, expSum_d1 :  std_logic_vector(9 downto 0);
signal sigX :  std_logic_vector(23 downto 0);
signal sigY :  std_logic_vector(23 downto 0);
signal sigProd :  std_logic_vector(47 downto 0);
signal excSel :  std_logic_vector(3 downto 0);
signal exc, exc_d1 :  std_logic_vector(1 downto 0);
signal norm :  std_logic;
signal expPostNorm :  std_logic_vector(9 downto 0);
signal sigProdExt :  std_logic_vector(47 downto 0);
signal expSig :  std_logic_vector(32 downto 0);
signal sticky :  std_logic;
signal guard :  std_logic;
signal round :  std_logic;
signal expSigPostRound :  std_logic_vector(32 downto 0);
signal excPostNorm :  std_logic_vector(1 downto 0);
signal finalExc :  std_logic_vector(1 downto 0);
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
            sign_d1 <=  sign;
            expSum_d1 <=  expSum;
            exc_d1 <=  exc;
         end if;
      end process;
   sign <= X(31) xor Y(31);
   expX <= X(30 downto 23);
   expY <= Y(30 downto 23);
   expSumPreSub <= ("00" & expX) + ("00" & expY);
   bias <= CONV_STD_LOGIC_VECTOR(127,10);
   expSum <= expSumPreSub - bias;
   ----------------Synchro barrier, entering cycle 0----------------
   sigX <= "1" & X(22 downto 0);
   sigY <= "1" & Y(22 downto 0);
   SignificandMultiplication: IntMultiplier_UsingDSP_24_24_48_unsigned_F300_uid4  -- pipelineDepth=1 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 R => sigProd,
                 X => sigX,
                 Y => sigY);
   ----------------Synchro barrier, entering cycle 1----------------
   ----------------Synchro barrier, entering cycle 0----------------
   excSel <= X(33 downto 32) & Y(33 downto 32);
   with excSel select 
   exc <= "00" when  "0000" | "0001" | "0100", 
          "01" when "0101",
          "10" when "0110" | "1001" | "1010" ,
          "11" when others;
   ----------------Synchro barrier, entering cycle 1----------------
   norm <= sigProd(47);
   -- exponent update
   expPostNorm <= expSum_d1 + ("000000000" & norm);
   ----------------Synchro barrier, entering cycle 1----------------
   -- significand normalization shift
   sigProdExt <= sigProd(46 downto 0) & "0" when norm='1' else
                         sigProd(45 downto 0) & "00";
   expSig <= expPostNorm & sigProdExt(47 downto 25);
   sticky <= sigProdExt(24);
   guard <= '0' when sigProdExt(23 downto 0)="000000000000000000000000" else '1';
   round <= sticky and ( (guard and not(sigProdExt(25))) or (sigProdExt(25) ))  ;
      RoundingAdder: IntAdder_33_f300_uid25  -- pipelineDepth=0 maxInDelay=1.92978e-09
      port map ( clk  => clk,
                 rst  => rst,
                 Cin => round,
                 R => expSigPostRound,
                 X => expSig,
                 Y => "000000000000000000000000000000000");
   with expSigPostRound(32 downto 31) select
   excPostNorm <=  "01"  when  "00",
                               "10"             when "01", 
                               "00"             when "11"|"10",
                               "11"             when others;
   with exc_d1 select 
   finalExc <= exc_d1 when  "11"|"10"|"00",
                       excPostNorm when others; 
   R <= finalExc & sign_d1 & expSigPostRound(30 downto 0);
end architecture;

