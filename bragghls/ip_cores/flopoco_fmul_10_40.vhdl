--------------------------------------------------------------------------------
--                     SmallMultTableP3x3r6XuYu_F300_uid9
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Florent de Dinechin (2007-2012)
--------------------------------------------------------------------------------
library ieee; 
use ieee.std_logic_1164.all;
library work;
entity SmallMultTableP3x3r6XuYu_F300_uid9 is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(5 downto 0);
          Y : out  std_logic_vector(5 downto 0)   );
end entity;

architecture arch of SmallMultTableP3x3r6XuYu_F300_uid9 is
signal TableOut :  std_logic_vector(5 downto 0);
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
         end if;
      end process;
  with X select TableOut <= 
   "000000" when "000000",
   "000000" when "000001",
   "000000" when "000010",
   "000000" when "000011",
   "000000" when "000100",
   "000000" when "000101",
   "000000" when "000110",
   "000000" when "000111",
   "000000" when "001000",
   "000001" when "001001",
   "000010" when "001010",
   "000011" when "001011",
   "000100" when "001100",
   "000101" when "001101",
   "000110" when "001110",
   "000111" when "001111",
   "000000" when "010000",
   "000010" when "010001",
   "000100" when "010010",
   "000110" when "010011",
   "001000" when "010100",
   "001010" when "010101",
   "001100" when "010110",
   "001110" when "010111",
   "000000" when "011000",
   "000011" when "011001",
   "000110" when "011010",
   "001001" when "011011",
   "001100" when "011100",
   "001111" when "011101",
   "010010" when "011110",
   "010101" when "011111",
   "000000" when "100000",
   "000100" when "100001",
   "001000" when "100010",
   "001100" when "100011",
   "010000" when "100100",
   "010100" when "100101",
   "011000" when "100110",
   "011100" when "100111",
   "000000" when "101000",
   "000101" when "101001",
   "001010" when "101010",
   "001111" when "101011",
   "010100" when "101100",
   "011001" when "101101",
   "011110" when "101110",
   "100011" when "101111",
   "000000" when "110000",
   "000110" when "110001",
   "001100" when "110010",
   "010010" when "110011",
   "011000" when "110100",
   "011110" when "110101",
   "100100" when "110110",
   "101010" when "110111",
   "000000" when "111000",
   "000111" when "111001",
   "001110" when "111010",
   "010101" when "111011",
   "011100" when "111100",
   "100011" when "111101",
   "101010" when "111110",
   "110001" when "111111",
   "------" when others;
    Y <= TableOut;
end architecture;

--------------------------------------------------------------------------------
--                              Compressor_14_3
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Bogdan Popa, Illyes Kinga, 2012
--------------------------------------------------------------------------------
-- combinatorial

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity Compressor_14_3 is
   port ( X0 : in  std_logic_vector(3 downto 0);
          X1 : in  std_logic_vector(0 downto 0);
          R : out  std_logic_vector(2 downto 0)   );
end entity;

architecture arch of Compressor_14_3 is
signal X :  std_logic_vector(4 downto 0);
begin
   X <=X1 & X0 ;
   with X select R <= 
      "000" when "00000", 
      "001" when "00001", 
      "001" when "00010", 
      "010" when "00011", 
      "001" when "00100", 
      "010" when "00101", 
      "010" when "00110", 
      "011" when "00111", 
      "001" when "01000", 
      "010" when "01001", 
      "010" when "01010", 
      "011" when "01011", 
      "010" when "01100", 
      "011" when "01101", 
      "011" when "01110", 
      "100" when "01111", 
      "010" when "10000", 
      "011" when "10001", 
      "011" when "10010", 
      "100" when "10011", 
      "011" when "10100", 
      "100" when "10101", 
      "100" when "10110", 
      "101" when "10111", 
      "011" when "11000", 
      "100" when "11001", 
      "100" when "11010", 
      "101" when "11011", 
      "100" when "11100", 
      "101" when "11101", 
      "101" when "11110", 
      "110" when "11111", 
      "---" when others;

end architecture;

--------------------------------------------------------------------------------
--                              Compressor_23_3
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Bogdan Popa, Illyes Kinga, 2012
--------------------------------------------------------------------------------
-- combinatorial

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity Compressor_23_3 is
   port ( X0 : in  std_logic_vector(2 downto 0);
          X1 : in  std_logic_vector(1 downto 0);
          R : out  std_logic_vector(2 downto 0)   );
end entity;

architecture arch of Compressor_23_3 is
signal X :  std_logic_vector(4 downto 0);
begin
   X <=X1 & X0 ;
   with X select R <= 
      "000" when "00000", 
      "001" when "00001", 
      "001" when "00010", 
      "010" when "00011", 
      "001" when "00100", 
      "010" when "00101", 
      "010" when "00110", 
      "011" when "00111", 
      "010" when "01000", 
      "011" when "01001", 
      "011" when "01010", 
      "100" when "01011", 
      "011" when "01100", 
      "100" when "01101", 
      "100" when "01110", 
      "101" when "01111", 
      "010" when "10000", 
      "011" when "10001", 
      "011" when "10010", 
      "100" when "10011", 
      "011" when "10100", 
      "100" when "10101", 
      "100" when "10110", 
      "101" when "10111", 
      "100" when "11000", 
      "101" when "11001", 
      "101" when "11010", 
      "110" when "11011", 
      "101" when "11100", 
      "110" when "11101", 
      "110" when "11110", 
      "111" when "11111", 
      "---" when others;

end architecture;

--------------------------------------------------------------------------------
--                              Compressor_13_3
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Bogdan Popa, Illyes Kinga, 2012
--------------------------------------------------------------------------------
-- combinatorial

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity Compressor_13_3 is
   port ( X0 : in  std_logic_vector(2 downto 0);
          X1 : in  std_logic_vector(0 downto 0);
          R : out  std_logic_vector(2 downto 0)   );
end entity;

architecture arch of Compressor_13_3 is
signal X :  std_logic_vector(3 downto 0);
begin
   X <=X1 & X0 ;
   with X select R <= 
      "000" when "0000", 
      "001" when "0001", 
      "001" when "0010", 
      "010" when "0011", 
      "001" when "0100", 
      "010" when "0101", 
      "010" when "0110", 
      "011" when "0111", 
      "010" when "1000", 
      "011" when "1001", 
      "011" when "1010", 
      "100" when "1011", 
      "011" when "1100", 
      "100" when "1101", 
      "100" when "1110", 
      "101" when "1111", 
      "---" when others;

end architecture;

--------------------------------------------------------------------------------
--                               Compressor_3_2
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Bogdan Popa, Illyes Kinga, 2012
--------------------------------------------------------------------------------
-- combinatorial

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity Compressor_3_2 is
   port ( X0 : in  std_logic_vector(2 downto 0);
          R : out  std_logic_vector(1 downto 0)   );
end entity;

architecture arch of Compressor_3_2 is
signal X :  std_logic_vector(2 downto 0);
begin
   X <=X0 ;
   with X select R <= 
      "00" when "000", 
      "01" when "001", 
      "01" when "010", 
      "10" when "011", 
      "01" when "100", 
      "10" when "101", 
      "10" when "110", 
      "11" when "111", 
      "--" when others;

end architecture;

--------------------------------------------------------------------------------
--                          IntAdder_66_f300_uid138
--                     (IntAdderClassical_66_F300_uid140)
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

entity IntAdder_66_f300_uid138 is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(65 downto 0);
          Y : in  std_logic_vector(65 downto 0);
          Cin : in  std_logic;
          R : out  std_logic_vector(65 downto 0)   );
end entity;

architecture arch of IntAdder_66_f300_uid138 is
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
--             IntMultiplier_UsingDSP_41_41_82_unsigned_F300_uid4
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

entity IntMultiplier_UsingDSP_41_41_82_unsigned_F300_uid4 is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(40 downto 0);
          Y : in  std_logic_vector(40 downto 0);
          R : out  std_logic_vector(81 downto 0)   );
end entity;

architecture arch of IntMultiplier_UsingDSP_41_41_82_unsigned_F300_uid4 is
   component IntAdder_66_f300_uid138 is
      port ( clk, rst : in std_logic;
             X : in  std_logic_vector(65 downto 0);
             Y : in  std_logic_vector(65 downto 0);
             Cin : in  std_logic;
             R : out  std_logic_vector(65 downto 0)   );
   end component;

   component SmallMultTableP3x3r6XuYu_F300_uid9 is
      port ( clk, rst : in std_logic;
             X : in  std_logic_vector(5 downto 0);
             Y : out  std_logic_vector(5 downto 0)   );
   end component;

   component Compressor_14_3 is
      port ( X0 : in  std_logic_vector(3 downto 0);
             X1 : in  std_logic_vector(0 downto 0);
             R : out  std_logic_vector(2 downto 0)   );
   end component;

   component Compressor_23_3 is
      port ( X0 : in  std_logic_vector(2 downto 0);
             X1 : in  std_logic_vector(1 downto 0);
             R : out  std_logic_vector(2 downto 0)   );
   end component;

   component Compressor_13_3 is
      port ( X0 : in  std_logic_vector(2 downto 0);
             X1 : in  std_logic_vector(0 downto 0);
             R : out  std_logic_vector(2 downto 0)   );
   end component;

   component Compressor_3_2 is
      port ( X0 : in  std_logic_vector(2 downto 0);
             R : out  std_logic_vector(1 downto 0)   );
   end component;

signal XX_m5 :  std_logic_vector(40 downto 0);
signal YY_m5 :  std_logic_vector(40 downto 0);
signal Xp_m5b7 :  std_logic_vector(8 downto 0);
signal Yp_m5b7 :  std_logic_vector(8 downto 0);
signal x_m5b7_0 :  std_logic_vector(2 downto 0);
signal x_m5b7_1 :  std_logic_vector(2 downto 0);
signal x_m5b7_2 :  std_logic_vector(2 downto 0);
signal y_m5b7_0 :  std_logic_vector(2 downto 0);
signal y_m5b7_1 :  std_logic_vector(2 downto 0);
signal y_m5b7_2 :  std_logic_vector(2 downto 0);
signal Y0X0_7_m5 :  std_logic_vector(5 downto 0);
signal PP7X0Y0_m5 :  std_logic_vector(5 downto 0);
signal heap_bh6_w34_0 :  std_logic;
signal heap_bh6_w35_0 :  std_logic;
signal Y0X1_7_m5 :  std_logic_vector(5 downto 0);
signal PP7X1Y0_m5 :  std_logic_vector(5 downto 0);
signal heap_bh6_w35_1 :  std_logic;
signal heap_bh6_w36_0 :  std_logic;
signal heap_bh6_w37_0 :  std_logic;
signal heap_bh6_w38_0 :  std_logic;
signal Y0X2_7_m5 :  std_logic_vector(5 downto 0);
signal PP7X2Y0_m5 :  std_logic_vector(5 downto 0);
signal heap_bh6_w38_1 :  std_logic;
signal heap_bh6_w39_0 :  std_logic;
signal heap_bh6_w40_0 :  std_logic;
signal heap_bh6_w41_0 :  std_logic;
signal Y1X0_7_m5 :  std_logic_vector(5 downto 0);
signal PP7X0Y1_m5 :  std_logic_vector(5 downto 0);
signal heap_bh6_w35_2 :  std_logic;
signal heap_bh6_w36_1 :  std_logic;
signal heap_bh6_w37_1 :  std_logic;
signal heap_bh6_w38_2 :  std_logic;
signal Y1X1_7_m5 :  std_logic_vector(5 downto 0);
signal PP7X1Y1_m5 :  std_logic_vector(5 downto 0);
signal heap_bh6_w36_2 :  std_logic;
signal heap_bh6_w37_2 :  std_logic;
signal heap_bh6_w38_3 :  std_logic;
signal heap_bh6_w39_1 :  std_logic;
signal heap_bh6_w40_1 :  std_logic;
signal heap_bh6_w41_1 :  std_logic;
signal Y1X2_7_m5 :  std_logic_vector(5 downto 0);
signal PP7X2Y1_m5 :  std_logic_vector(5 downto 0);
signal heap_bh6_w39_2 :  std_logic;
signal heap_bh6_w40_2 :  std_logic;
signal heap_bh6_w41_2 :  std_logic;
signal heap_bh6_w42_0 :  std_logic;
signal heap_bh6_w43_0 :  std_logic;
signal heap_bh6_w44_0 :  std_logic;
signal Y2X0_7_m5 :  std_logic_vector(5 downto 0);
signal PP7X0Y2_m5 :  std_logic_vector(5 downto 0);
signal heap_bh6_w38_4 :  std_logic;
signal heap_bh6_w39_3 :  std_logic;
signal heap_bh6_w40_3 :  std_logic;
signal heap_bh6_w41_3 :  std_logic;
signal Y2X1_7_m5 :  std_logic_vector(5 downto 0);
signal PP7X1Y2_m5 :  std_logic_vector(5 downto 0);
signal heap_bh6_w39_4 :  std_logic;
signal heap_bh6_w40_4 :  std_logic;
signal heap_bh6_w41_4 :  std_logic;
signal heap_bh6_w42_1 :  std_logic;
signal heap_bh6_w43_1 :  std_logic;
signal heap_bh6_w44_1 :  std_logic;
signal Y2X2_7_m5 :  std_logic_vector(5 downto 0);
signal PP7X2Y2_m5 :  std_logic_vector(5 downto 0);
signal heap_bh6_w42_2 :  std_logic;
signal heap_bh6_w43_2 :  std_logic;
signal heap_bh6_w44_2 :  std_logic;
signal heap_bh6_w45_0 :  std_logic;
signal heap_bh6_w46_0 :  std_logic;
signal heap_bh6_w47_0 :  std_logic;
signal DSP_bh6_ch0_0 :  std_logic_vector(40 downto 0);
signal heap_bh6_w40_5 :  std_logic;
signal heap_bh6_w39_5 :  std_logic;
signal heap_bh6_w38_5 :  std_logic;
signal heap_bh6_w37_3 :  std_logic;
signal heap_bh6_w36_3 :  std_logic;
signal heap_bh6_w35_3 :  std_logic;
signal heap_bh6_w34_1 :  std_logic;
signal heap_bh6_w33_0, heap_bh6_w33_0_d1 :  std_logic;
signal heap_bh6_w32_0 :  std_logic;
signal heap_bh6_w31_0, heap_bh6_w31_0_d1 :  std_logic;
signal heap_bh6_w30_0 :  std_logic;
signal heap_bh6_w29_0, heap_bh6_w29_0_d1 :  std_logic;
signal heap_bh6_w28_0 :  std_logic;
signal heap_bh6_w27_0, heap_bh6_w27_0_d1 :  std_logic;
signal heap_bh6_w26_0 :  std_logic;
signal heap_bh6_w25_0, heap_bh6_w25_0_d1 :  std_logic;
signal heap_bh6_w24_0 :  std_logic;
signal heap_bh6_w23_0, heap_bh6_w23_0_d1 :  std_logic;
signal heap_bh6_w22_0, heap_bh6_w22_0_d1 :  std_logic;
signal heap_bh6_w21_0, heap_bh6_w21_0_d1 :  std_logic;
signal heap_bh6_w20_0, heap_bh6_w20_0_d1 :  std_logic;
signal heap_bh6_w19_0, heap_bh6_w19_0_d1 :  std_logic;
signal heap_bh6_w18_0, heap_bh6_w18_0_d1 :  std_logic;
signal heap_bh6_w17_0, heap_bh6_w17_0_d1 :  std_logic;
signal heap_bh6_w16_0 :  std_logic;
signal heap_bh6_w15_0 :  std_logic;
signal heap_bh6_w14_0 :  std_logic;
signal heap_bh6_w13_0 :  std_logic;
signal heap_bh6_w12_0 :  std_logic;
signal heap_bh6_w11_0 :  std_logic;
signal heap_bh6_w10_0 :  std_logic;
signal heap_bh6_w9_0 :  std_logic;
signal heap_bh6_w8_0 :  std_logic;
signal heap_bh6_w7_0 :  std_logic;
signal heap_bh6_w6_0 :  std_logic;
signal heap_bh6_w5_0 :  std_logic;
signal heap_bh6_w4_0 :  std_logic;
signal heap_bh6_w3_0 :  std_logic;
signal heap_bh6_w2_0 :  std_logic;
signal heap_bh6_w1_0 :  std_logic;
signal heap_bh6_w0_0 :  std_logic;
signal DSP_bh6_ch1_0 :  std_logic_vector(40 downto 0);
signal heap_bh6_w64_0, heap_bh6_w64_0_d1 :  std_logic;
signal heap_bh6_w63_0, heap_bh6_w63_0_d1 :  std_logic;
signal heap_bh6_w62_0 :  std_logic;
signal heap_bh6_w61_0 :  std_logic;
signal heap_bh6_w60_0 :  std_logic;
signal heap_bh6_w59_0 :  std_logic;
signal heap_bh6_w58_0 :  std_logic;
signal heap_bh6_w57_0 :  std_logic;
signal heap_bh6_w56_0, heap_bh6_w56_0_d1 :  std_logic;
signal heap_bh6_w55_0 :  std_logic;
signal heap_bh6_w54_0, heap_bh6_w54_0_d1 :  std_logic;
signal heap_bh6_w53_0 :  std_logic;
signal heap_bh6_w52_0, heap_bh6_w52_0_d1 :  std_logic;
signal heap_bh6_w51_0 :  std_logic;
signal heap_bh6_w50_0 :  std_logic;
signal heap_bh6_w49_0 :  std_logic;
signal heap_bh6_w48_0 :  std_logic;
signal heap_bh6_w47_1 :  std_logic;
signal heap_bh6_w46_1 :  std_logic;
signal heap_bh6_w45_1 :  std_logic;
signal heap_bh6_w44_3 :  std_logic;
signal heap_bh6_w43_3 :  std_logic;
signal heap_bh6_w42_3 :  std_logic;
signal heap_bh6_w41_5 :  std_logic;
signal heap_bh6_w40_6 :  std_logic;
signal heap_bh6_w39_6 :  std_logic;
signal heap_bh6_w38_6 :  std_logic;
signal heap_bh6_w37_4 :  std_logic;
signal heap_bh6_w36_4 :  std_logic;
signal heap_bh6_w35_4 :  std_logic;
signal heap_bh6_w34_2 :  std_logic;
signal heap_bh6_w33_1 :  std_logic;
signal heap_bh6_w32_1 :  std_logic;
signal heap_bh6_w31_1 :  std_logic;
signal heap_bh6_w30_1 :  std_logic;
signal heap_bh6_w29_1 :  std_logic;
signal heap_bh6_w28_1 :  std_logic;
signal heap_bh6_w27_1 :  std_logic;
signal heap_bh6_w26_1 :  std_logic;
signal heap_bh6_w25_1 :  std_logic;
signal heap_bh6_w24_1 :  std_logic;
signal DSP_bh6_ch2_0 :  std_logic_vector(40 downto 0);
signal heap_bh6_w81_0, heap_bh6_w81_0_d1 :  std_logic;
signal heap_bh6_w80_0, heap_bh6_w80_0_d1 :  std_logic;
signal heap_bh6_w79_0, heap_bh6_w79_0_d1 :  std_logic;
signal heap_bh6_w78_0, heap_bh6_w78_0_d1 :  std_logic;
signal heap_bh6_w77_0, heap_bh6_w77_0_d1 :  std_logic;
signal heap_bh6_w76_0, heap_bh6_w76_0_d1 :  std_logic;
signal heap_bh6_w75_0, heap_bh6_w75_0_d1 :  std_logic;
signal heap_bh6_w74_0, heap_bh6_w74_0_d1 :  std_logic;
signal heap_bh6_w73_0, heap_bh6_w73_0_d1 :  std_logic;
signal heap_bh6_w72_0, heap_bh6_w72_0_d1 :  std_logic;
signal heap_bh6_w71_0, heap_bh6_w71_0_d1 :  std_logic;
signal heap_bh6_w70_0, heap_bh6_w70_0_d1 :  std_logic;
signal heap_bh6_w69_0, heap_bh6_w69_0_d1 :  std_logic;
signal heap_bh6_w68_0, heap_bh6_w68_0_d1 :  std_logic;
signal heap_bh6_w67_0, heap_bh6_w67_0_d1 :  std_logic;
signal heap_bh6_w66_0, heap_bh6_w66_0_d1 :  std_logic;
signal heap_bh6_w65_0, heap_bh6_w65_0_d1 :  std_logic;
signal heap_bh6_w64_1, heap_bh6_w64_1_d1 :  std_logic;
signal heap_bh6_w63_1, heap_bh6_w63_1_d1 :  std_logic;
signal heap_bh6_w62_1 :  std_logic;
signal heap_bh6_w61_1 :  std_logic;
signal heap_bh6_w60_1 :  std_logic;
signal heap_bh6_w59_1 :  std_logic;
signal heap_bh6_w58_1 :  std_logic;
signal heap_bh6_w57_1 :  std_logic;
signal heap_bh6_w56_1 :  std_logic;
signal heap_bh6_w55_1 :  std_logic;
signal heap_bh6_w54_1 :  std_logic;
signal heap_bh6_w53_1 :  std_logic;
signal heap_bh6_w52_1 :  std_logic;
signal heap_bh6_w51_1 :  std_logic;
signal heap_bh6_w50_1 :  std_logic;
signal heap_bh6_w49_1 :  std_logic;
signal heap_bh6_w48_1 :  std_logic;
signal heap_bh6_w47_2 :  std_logic;
signal heap_bh6_w46_2 :  std_logic;
signal heap_bh6_w45_2 :  std_logic;
signal heap_bh6_w44_4 :  std_logic;
signal heap_bh6_w43_4 :  std_logic;
signal heap_bh6_w42_4 :  std_logic;
signal heap_bh6_w41_6 :  std_logic;
signal DSP_bh6_ch3_0 :  std_logic_vector(40 downto 0);
signal heap_bh6_w57_2 :  std_logic;
signal heap_bh6_w56_2 :  std_logic;
signal heap_bh6_w55_2 :  std_logic;
signal heap_bh6_w54_2 :  std_logic;
signal heap_bh6_w53_2 :  std_logic;
signal heap_bh6_w52_2 :  std_logic;
signal heap_bh6_w51_2 :  std_logic;
signal heap_bh6_w50_2 :  std_logic;
signal heap_bh6_w49_2 :  std_logic;
signal heap_bh6_w48_2 :  std_logic;
signal heap_bh6_w47_3 :  std_logic;
signal heap_bh6_w46_3 :  std_logic;
signal heap_bh6_w45_3 :  std_logic;
signal heap_bh6_w44_5 :  std_logic;
signal heap_bh6_w43_5 :  std_logic;
signal heap_bh6_w42_5 :  std_logic;
signal heap_bh6_w41_7 :  std_logic;
signal heap_bh6_w40_7 :  std_logic;
signal heap_bh6_w39_7 :  std_logic;
signal heap_bh6_w38_7 :  std_logic;
signal heap_bh6_w37_5 :  std_logic;
signal heap_bh6_w36_5 :  std_logic;
signal heap_bh6_w35_5 :  std_logic;
signal heap_bh6_w34_3 :  std_logic;
signal heap_bh6_w33_2 :  std_logic;
signal heap_bh6_w32_2 :  std_logic;
signal heap_bh6_w31_2 :  std_logic;
signal heap_bh6_w30_2 :  std_logic;
signal heap_bh6_w29_2 :  std_logic;
signal heap_bh6_w28_2 :  std_logic;
signal heap_bh6_w27_2 :  std_logic;
signal heap_bh6_w26_2 :  std_logic;
signal heap_bh6_w25_2 :  std_logic;
signal heap_bh6_w24_2 :  std_logic;
signal heap_bh6_w23_1, heap_bh6_w23_1_d1 :  std_logic;
signal heap_bh6_w22_1, heap_bh6_w22_1_d1 :  std_logic;
signal heap_bh6_w21_1, heap_bh6_w21_1_d1 :  std_logic;
signal heap_bh6_w20_1, heap_bh6_w20_1_d1 :  std_logic;
signal heap_bh6_w19_1, heap_bh6_w19_1_d1 :  std_logic;
signal heap_bh6_w18_1, heap_bh6_w18_1_d1 :  std_logic;
signal heap_bh6_w17_1, heap_bh6_w17_1_d1 :  std_logic;
signal tempR_bh6_0, tempR_bh6_0_d1 :  std_logic_vector(16 downto 0);
signal CompressorIn_bh6_0_0 :  std_logic_vector(3 downto 0);
signal CompressorIn_bh6_0_1 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_0_0 :  std_logic_vector(2 downto 0);
signal heap_bh6_w38_8 :  std_logic;
signal heap_bh6_w39_8 :  std_logic;
signal heap_bh6_w40_8 :  std_logic;
signal CompressorIn_bh6_1_2 :  std_logic_vector(3 downto 0);
signal CompressorIn_bh6_1_3 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_1_1 :  std_logic_vector(2 downto 0);
signal heap_bh6_w39_9 :  std_logic;
signal heap_bh6_w40_9 :  std_logic;
signal heap_bh6_w41_8 :  std_logic;
signal CompressorIn_bh6_2_4 :  std_logic_vector(3 downto 0);
signal CompressorIn_bh6_2_5 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_2_2 :  std_logic_vector(2 downto 0);
signal heap_bh6_w40_10 :  std_logic;
signal heap_bh6_w41_9 :  std_logic;
signal heap_bh6_w42_6 :  std_logic;
signal CompressorIn_bh6_3_6 :  std_logic_vector(3 downto 0);
signal CompressorIn_bh6_3_7 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_3_3 :  std_logic_vector(2 downto 0);
signal heap_bh6_w41_10 :  std_logic;
signal heap_bh6_w42_7 :  std_logic;
signal heap_bh6_w43_6 :  std_logic;
signal CompressorIn_bh6_4_8 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_4_9 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_4_4 :  std_logic_vector(2 downto 0);
signal heap_bh6_w35_6 :  std_logic;
signal heap_bh6_w36_6 :  std_logic;
signal heap_bh6_w37_6 :  std_logic;
signal CompressorIn_bh6_5_10 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_5_11 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_5_5 :  std_logic_vector(2 downto 0);
signal heap_bh6_w43_7 :  std_logic;
signal heap_bh6_w44_6 :  std_logic;
signal heap_bh6_w45_4 :  std_logic;
signal CompressorIn_bh6_6_12 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_6_13 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_6_6 :  std_logic_vector(2 downto 0);
signal heap_bh6_w37_7 :  std_logic;
signal heap_bh6_w38_9 :  std_logic;
signal heap_bh6_w39_10 :  std_logic;
signal CompressorIn_bh6_7_14 :  std_logic_vector(3 downto 0);
signal CompressorIn_bh6_7_15 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_7_7 :  std_logic_vector(2 downto 0);
signal heap_bh6_w42_8 :  std_logic;
signal heap_bh6_w43_8 :  std_logic;
signal heap_bh6_w44_7 :  std_logic;
signal CompressorIn_bh6_8_16 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_8_17 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_8_8 :  std_logic_vector(2 downto 0);
signal heap_bh6_w39_11 :  std_logic;
signal heap_bh6_w40_11 :  std_logic;
signal heap_bh6_w41_11 :  std_logic;
signal CompressorIn_bh6_9_18 :  std_logic_vector(2 downto 0);
signal CompressorOut_bh6_9_9 :  std_logic_vector(1 downto 0);
signal heap_bh6_w41_12 :  std_logic;
signal heap_bh6_w42_9 :  std_logic;
signal CompressorIn_bh6_10_19 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_10_20 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_10_10 :  std_logic_vector(2 downto 0);
signal heap_bh6_w44_8 :  std_logic;
signal heap_bh6_w45_5 :  std_logic;
signal heap_bh6_w46_4 :  std_logic;
signal CompressorIn_bh6_11_21 :  std_logic_vector(3 downto 0);
signal CompressorIn_bh6_11_22 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_11_11 :  std_logic_vector(2 downto 0);
signal heap_bh6_w34_4, heap_bh6_w34_4_d1 :  std_logic;
signal heap_bh6_w35_7, heap_bh6_w35_7_d1 :  std_logic;
signal heap_bh6_w36_7 :  std_logic;
signal CompressorIn_bh6_12_23 :  std_logic_vector(3 downto 0);
signal CompressorIn_bh6_12_24 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_12_12 :  std_logic_vector(2 downto 0);
signal heap_bh6_w36_8 :  std_logic;
signal heap_bh6_w37_8, heap_bh6_w37_8_d1 :  std_logic;
signal heap_bh6_w38_10 :  std_logic;
signal CompressorIn_bh6_13_25 :  std_logic_vector(3 downto 0);
signal CompressorIn_bh6_13_26 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_13_13 :  std_logic_vector(2 downto 0);
signal heap_bh6_w37_9 :  std_logic;
signal heap_bh6_w38_11 :  std_logic;
signal heap_bh6_w39_12, heap_bh6_w39_12_d1 :  std_logic;
signal CompressorIn_bh6_14_27 :  std_logic_vector(3 downto 0);
signal CompressorIn_bh6_14_28 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_14_14 :  std_logic_vector(2 downto 0);
signal heap_bh6_w38_12 :  std_logic;
signal heap_bh6_w39_13 :  std_logic;
signal heap_bh6_w40_12 :  std_logic;
signal CompressorIn_bh6_15_29 :  std_logic_vector(3 downto 0);
signal CompressorIn_bh6_15_30 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_15_15 :  std_logic_vector(2 downto 0);
signal heap_bh6_w40_13 :  std_logic;
signal heap_bh6_w41_13, heap_bh6_w41_13_d1 :  std_logic;
signal heap_bh6_w42_10 :  std_logic;
signal CompressorIn_bh6_16_31 :  std_logic_vector(3 downto 0);
signal CompressorIn_bh6_16_32 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_16_16 :  std_logic_vector(2 downto 0);
signal heap_bh6_w41_14 :  std_logic;
signal heap_bh6_w42_11 :  std_logic;
signal heap_bh6_w43_9, heap_bh6_w43_9_d1 :  std_logic;
signal CompressorIn_bh6_17_33 :  std_logic_vector(3 downto 0);
signal CompressorIn_bh6_17_34 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_17_17 :  std_logic_vector(2 downto 0);
signal heap_bh6_w42_12 :  std_logic;
signal heap_bh6_w43_10 :  std_logic;
signal heap_bh6_w44_9 :  std_logic;
signal CompressorIn_bh6_18_35 :  std_logic_vector(3 downto 0);
signal CompressorIn_bh6_18_36 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_18_18 :  std_logic_vector(2 downto 0);
signal heap_bh6_w43_11 :  std_logic;
signal heap_bh6_w44_10 :  std_logic;
signal heap_bh6_w45_6, heap_bh6_w45_6_d1 :  std_logic;
signal CompressorIn_bh6_19_37 :  std_logic_vector(3 downto 0);
signal CompressorIn_bh6_19_38 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_19_19 :  std_logic_vector(2 downto 0);
signal heap_bh6_w45_7 :  std_logic;
signal heap_bh6_w46_5 :  std_logic;
signal heap_bh6_w47_4 :  std_logic;
signal CompressorIn_bh6_20_39 :  std_logic_vector(3 downto 0);
signal CompressorIn_bh6_20_40 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_20_20 :  std_logic_vector(2 downto 0);
signal heap_bh6_w46_6 :  std_logic;
signal heap_bh6_w47_5 :  std_logic;
signal heap_bh6_w48_3, heap_bh6_w48_3_d1 :  std_logic;
signal CompressorIn_bh6_21_41 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_21_42 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_21_21 :  std_logic_vector(2 downto 0);
signal heap_bh6_w24_3, heap_bh6_w24_3_d1 :  std_logic;
signal heap_bh6_w25_3, heap_bh6_w25_3_d1 :  std_logic;
signal heap_bh6_w26_3, heap_bh6_w26_3_d1 :  std_logic;
signal CompressorIn_bh6_22_43 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_22_44 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_22_22 :  std_logic_vector(2 downto 0);
signal heap_bh6_w26_4, heap_bh6_w26_4_d1 :  std_logic;
signal heap_bh6_w27_3, heap_bh6_w27_3_d1 :  std_logic;
signal heap_bh6_w28_3, heap_bh6_w28_3_d1 :  std_logic;
signal CompressorIn_bh6_23_45 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_23_46 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_23_23 :  std_logic_vector(2 downto 0);
signal heap_bh6_w28_4, heap_bh6_w28_4_d1 :  std_logic;
signal heap_bh6_w29_3, heap_bh6_w29_3_d1 :  std_logic;
signal heap_bh6_w30_3, heap_bh6_w30_3_d1 :  std_logic;
signal CompressorIn_bh6_24_47 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_24_48 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_24_24 :  std_logic_vector(2 downto 0);
signal heap_bh6_w30_4, heap_bh6_w30_4_d1 :  std_logic;
signal heap_bh6_w31_3, heap_bh6_w31_3_d1 :  std_logic;
signal heap_bh6_w32_3, heap_bh6_w32_3_d1 :  std_logic;
signal CompressorIn_bh6_25_49 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_25_50 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_25_25 :  std_logic_vector(2 downto 0);
signal heap_bh6_w32_4, heap_bh6_w32_4_d1 :  std_logic;
signal heap_bh6_w33_3, heap_bh6_w33_3_d1 :  std_logic;
signal heap_bh6_w34_5, heap_bh6_w34_5_d1 :  std_logic;
signal CompressorIn_bh6_26_51 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_26_52 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_26_26 :  std_logic_vector(2 downto 0);
signal heap_bh6_w47_6 :  std_logic;
signal heap_bh6_w48_4 :  std_logic;
signal heap_bh6_w49_3 :  std_logic;
signal CompressorIn_bh6_27_53 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_27_54 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_27_27 :  std_logic_vector(2 downto 0);
signal heap_bh6_w49_4 :  std_logic;
signal heap_bh6_w50_3 :  std_logic;
signal heap_bh6_w51_3, heap_bh6_w51_3_d1 :  std_logic;
signal CompressorIn_bh6_28_55 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_28_56 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_28_28 :  std_logic_vector(2 downto 0);
signal heap_bh6_w51_4, heap_bh6_w51_4_d1 :  std_logic;
signal heap_bh6_w52_3, heap_bh6_w52_3_d1 :  std_logic;
signal heap_bh6_w53_3, heap_bh6_w53_3_d1 :  std_logic;
signal CompressorIn_bh6_29_57 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_29_58 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_29_29 :  std_logic_vector(2 downto 0);
signal heap_bh6_w53_4, heap_bh6_w53_4_d1 :  std_logic;
signal heap_bh6_w54_3, heap_bh6_w54_3_d1 :  std_logic;
signal heap_bh6_w55_3, heap_bh6_w55_3_d1 :  std_logic;
signal CompressorIn_bh6_30_59 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_30_60 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_30_30 :  std_logic_vector(2 downto 0);
signal heap_bh6_w55_4, heap_bh6_w55_4_d1 :  std_logic;
signal heap_bh6_w56_3, heap_bh6_w56_3_d1 :  std_logic;
signal heap_bh6_w57_3, heap_bh6_w57_3_d1 :  std_logic;
signal CompressorIn_bh6_31_61 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_31_62 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_31_31 :  std_logic_vector(2 downto 0);
signal heap_bh6_w57_4, heap_bh6_w57_4_d1 :  std_logic;
signal heap_bh6_w58_2, heap_bh6_w58_2_d1 :  std_logic;
signal heap_bh6_w59_2 :  std_logic;
signal CompressorIn_bh6_32_63 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_32_64 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_32_32 :  std_logic_vector(2 downto 0);
signal heap_bh6_w35_8, heap_bh6_w35_8_d1 :  std_logic;
signal heap_bh6_w36_9 :  std_logic;
signal heap_bh6_w37_10 :  std_logic;
signal CompressorIn_bh6_33_65 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_33_66 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_33_33 :  std_logic_vector(2 downto 0);
signal heap_bh6_w39_14 :  std_logic;
signal heap_bh6_w40_14 :  std_logic;
signal heap_bh6_w41_15 :  std_logic;
signal CompressorIn_bh6_34_67 :  std_logic_vector(2 downto 0);
signal CompressorOut_bh6_34_34 :  std_logic_vector(1 downto 0);
signal heap_bh6_w44_11 :  std_logic;
signal heap_bh6_w45_8 :  std_logic;
signal CompressorIn_bh6_35_68 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_35_69 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_35_35 :  std_logic_vector(2 downto 0);
signal heap_bh6_w36_10, heap_bh6_w36_10_d1 :  std_logic;
signal heap_bh6_w37_11, heap_bh6_w37_11_d1 :  std_logic;
signal heap_bh6_w38_13, heap_bh6_w38_13_d1 :  std_logic;
signal CompressorIn_bh6_36_70 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_36_71 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_36_36 :  std_logic_vector(2 downto 0);
signal heap_bh6_w38_14, heap_bh6_w38_14_d1 :  std_logic;
signal heap_bh6_w39_15, heap_bh6_w39_15_d1 :  std_logic;
signal heap_bh6_w40_15, heap_bh6_w40_15_d1 :  std_logic;
signal CompressorIn_bh6_37_72 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_37_73 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_37_37 :  std_logic_vector(2 downto 0);
signal heap_bh6_w40_16, heap_bh6_w40_16_d1 :  std_logic;
signal heap_bh6_w41_16, heap_bh6_w41_16_d1 :  std_logic;
signal heap_bh6_w42_13, heap_bh6_w42_13_d1 :  std_logic;
signal CompressorIn_bh6_38_74 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_38_75 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_38_38 :  std_logic_vector(2 downto 0);
signal heap_bh6_w42_14, heap_bh6_w42_14_d1 :  std_logic;
signal heap_bh6_w43_12, heap_bh6_w43_12_d1 :  std_logic;
signal heap_bh6_w44_12, heap_bh6_w44_12_d1 :  std_logic;
signal CompressorIn_bh6_39_76 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_39_77 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_39_39 :  std_logic_vector(2 downto 0);
signal heap_bh6_w44_13, heap_bh6_w44_13_d1 :  std_logic;
signal heap_bh6_w45_9, heap_bh6_w45_9_d1 :  std_logic;
signal heap_bh6_w46_7 :  std_logic;
signal CompressorIn_bh6_40_78 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_40_79 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_40_40 :  std_logic_vector(2 downto 0);
signal heap_bh6_w47_7 :  std_logic;
signal heap_bh6_w48_5, heap_bh6_w48_5_d1 :  std_logic;
signal heap_bh6_w49_5 :  std_logic;
signal CompressorIn_bh6_41_80 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_41_81 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_41_41 :  std_logic_vector(2 downto 0);
signal heap_bh6_w59_3, heap_bh6_w59_3_d1 :  std_logic;
signal heap_bh6_w60_2, heap_bh6_w60_2_d1 :  std_logic;
signal heap_bh6_w61_2 :  std_logic;
signal CompressorIn_bh6_42_82 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_42_83 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_42_42 :  std_logic_vector(2 downto 0);
signal heap_bh6_w49_6, heap_bh6_w49_6_d1 :  std_logic;
signal heap_bh6_w50_4, heap_bh6_w50_4_d1 :  std_logic;
signal heap_bh6_w51_5, heap_bh6_w51_5_d1 :  std_logic;
signal CompressorIn_bh6_43_84 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_43_85 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_43_43 :  std_logic_vector(2 downto 0);
signal heap_bh6_w61_3, heap_bh6_w61_3_d1 :  std_logic;
signal heap_bh6_w62_2, heap_bh6_w62_2_d1 :  std_logic;
signal heap_bh6_w63_2, heap_bh6_w63_2_d1 :  std_logic;
signal CompressorIn_bh6_44_86 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_44_87 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_44_44 :  std_logic_vector(2 downto 0);
signal heap_bh6_w46_8, heap_bh6_w46_8_d1 :  std_logic;
signal heap_bh6_w47_8, heap_bh6_w47_8_d1 :  std_logic;
signal heap_bh6_w48_6, heap_bh6_w48_6_d1 :  std_logic;
signal CompressorIn_bh6_45_88 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_45_89 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_45_45 :  std_logic_vector(2 downto 0);
signal heap_bh6_w51_6 :  std_logic;
signal heap_bh6_w52_4 :  std_logic;
signal heap_bh6_w53_5 :  std_logic;
signal CompressorIn_bh6_46_90 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_46_91 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_46_46 :  std_logic_vector(2 downto 0);
signal heap_bh6_w63_3 :  std_logic;
signal heap_bh6_w64_2 :  std_logic;
signal heap_bh6_w65_1 :  std_logic;
signal CompressorIn_bh6_47_92 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_47_93 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_47_47 :  std_logic_vector(2 downto 0);
signal heap_bh6_w48_7 :  std_logic;
signal heap_bh6_w49_7 :  std_logic;
signal heap_bh6_w50_5 :  std_logic;
signal CompressorIn_bh6_48_94 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_48_95 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_48_48 :  std_logic_vector(2 downto 0);
signal heap_bh6_w53_6 :  std_logic;
signal heap_bh6_w54_4 :  std_logic;
signal heap_bh6_w55_5 :  std_logic;
signal CompressorIn_bh6_49_96 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_49_97 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_49_49 :  std_logic_vector(2 downto 0);
signal heap_bh6_w55_6 :  std_logic;
signal heap_bh6_w56_4 :  std_logic;
signal heap_bh6_w57_5 :  std_logic;
signal CompressorIn_bh6_50_98 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_50_99 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_50_50 :  std_logic_vector(2 downto 0);
signal heap_bh6_w57_6 :  std_logic;
signal heap_bh6_w58_3 :  std_logic;
signal heap_bh6_w59_4 :  std_logic;
signal finalAdderIn0_bh6 :  std_logic_vector(65 downto 0);
signal finalAdderIn1_bh6 :  std_logic_vector(65 downto 0);
signal finalAdderCin_bh6 :  std_logic;
signal finalAdderOut_bh6 :  std_logic_vector(65 downto 0);
signal CompressionResult6 :  std_logic_vector(82 downto 0);
attribute rom_extract: string;
attribute rom_style: string;
attribute rom_extract of SmallMultTableP3x3r6XuYu_F300_uid9: component is "yes";
attribute rom_style of SmallMultTableP3x3r6XuYu_F300_uid9: component is "distributed";
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
            heap_bh6_w33_0_d1 <=  heap_bh6_w33_0;
            heap_bh6_w31_0_d1 <=  heap_bh6_w31_0;
            heap_bh6_w29_0_d1 <=  heap_bh6_w29_0;
            heap_bh6_w27_0_d1 <=  heap_bh6_w27_0;
            heap_bh6_w25_0_d1 <=  heap_bh6_w25_0;
            heap_bh6_w23_0_d1 <=  heap_bh6_w23_0;
            heap_bh6_w22_0_d1 <=  heap_bh6_w22_0;
            heap_bh6_w21_0_d1 <=  heap_bh6_w21_0;
            heap_bh6_w20_0_d1 <=  heap_bh6_w20_0;
            heap_bh6_w19_0_d1 <=  heap_bh6_w19_0;
            heap_bh6_w18_0_d1 <=  heap_bh6_w18_0;
            heap_bh6_w17_0_d1 <=  heap_bh6_w17_0;
            heap_bh6_w64_0_d1 <=  heap_bh6_w64_0;
            heap_bh6_w63_0_d1 <=  heap_bh6_w63_0;
            heap_bh6_w56_0_d1 <=  heap_bh6_w56_0;
            heap_bh6_w54_0_d1 <=  heap_bh6_w54_0;
            heap_bh6_w52_0_d1 <=  heap_bh6_w52_0;
            heap_bh6_w81_0_d1 <=  heap_bh6_w81_0;
            heap_bh6_w80_0_d1 <=  heap_bh6_w80_0;
            heap_bh6_w79_0_d1 <=  heap_bh6_w79_0;
            heap_bh6_w78_0_d1 <=  heap_bh6_w78_0;
            heap_bh6_w77_0_d1 <=  heap_bh6_w77_0;
            heap_bh6_w76_0_d1 <=  heap_bh6_w76_0;
            heap_bh6_w75_0_d1 <=  heap_bh6_w75_0;
            heap_bh6_w74_0_d1 <=  heap_bh6_w74_0;
            heap_bh6_w73_0_d1 <=  heap_bh6_w73_0;
            heap_bh6_w72_0_d1 <=  heap_bh6_w72_0;
            heap_bh6_w71_0_d1 <=  heap_bh6_w71_0;
            heap_bh6_w70_0_d1 <=  heap_bh6_w70_0;
            heap_bh6_w69_0_d1 <=  heap_bh6_w69_0;
            heap_bh6_w68_0_d1 <=  heap_bh6_w68_0;
            heap_bh6_w67_0_d1 <=  heap_bh6_w67_0;
            heap_bh6_w66_0_d1 <=  heap_bh6_w66_0;
            heap_bh6_w65_0_d1 <=  heap_bh6_w65_0;
            heap_bh6_w64_1_d1 <=  heap_bh6_w64_1;
            heap_bh6_w63_1_d1 <=  heap_bh6_w63_1;
            heap_bh6_w23_1_d1 <=  heap_bh6_w23_1;
            heap_bh6_w22_1_d1 <=  heap_bh6_w22_1;
            heap_bh6_w21_1_d1 <=  heap_bh6_w21_1;
            heap_bh6_w20_1_d1 <=  heap_bh6_w20_1;
            heap_bh6_w19_1_d1 <=  heap_bh6_w19_1;
            heap_bh6_w18_1_d1 <=  heap_bh6_w18_1;
            heap_bh6_w17_1_d1 <=  heap_bh6_w17_1;
            tempR_bh6_0_d1 <=  tempR_bh6_0;
            heap_bh6_w34_4_d1 <=  heap_bh6_w34_4;
            heap_bh6_w35_7_d1 <=  heap_bh6_w35_7;
            heap_bh6_w37_8_d1 <=  heap_bh6_w37_8;
            heap_bh6_w39_12_d1 <=  heap_bh6_w39_12;
            heap_bh6_w41_13_d1 <=  heap_bh6_w41_13;
            heap_bh6_w43_9_d1 <=  heap_bh6_w43_9;
            heap_bh6_w45_6_d1 <=  heap_bh6_w45_6;
            heap_bh6_w48_3_d1 <=  heap_bh6_w48_3;
            heap_bh6_w24_3_d1 <=  heap_bh6_w24_3;
            heap_bh6_w25_3_d1 <=  heap_bh6_w25_3;
            heap_bh6_w26_3_d1 <=  heap_bh6_w26_3;
            heap_bh6_w26_4_d1 <=  heap_bh6_w26_4;
            heap_bh6_w27_3_d1 <=  heap_bh6_w27_3;
            heap_bh6_w28_3_d1 <=  heap_bh6_w28_3;
            heap_bh6_w28_4_d1 <=  heap_bh6_w28_4;
            heap_bh6_w29_3_d1 <=  heap_bh6_w29_3;
            heap_bh6_w30_3_d1 <=  heap_bh6_w30_3;
            heap_bh6_w30_4_d1 <=  heap_bh6_w30_4;
            heap_bh6_w31_3_d1 <=  heap_bh6_w31_3;
            heap_bh6_w32_3_d1 <=  heap_bh6_w32_3;
            heap_bh6_w32_4_d1 <=  heap_bh6_w32_4;
            heap_bh6_w33_3_d1 <=  heap_bh6_w33_3;
            heap_bh6_w34_5_d1 <=  heap_bh6_w34_5;
            heap_bh6_w51_3_d1 <=  heap_bh6_w51_3;
            heap_bh6_w51_4_d1 <=  heap_bh6_w51_4;
            heap_bh6_w52_3_d1 <=  heap_bh6_w52_3;
            heap_bh6_w53_3_d1 <=  heap_bh6_w53_3;
            heap_bh6_w53_4_d1 <=  heap_bh6_w53_4;
            heap_bh6_w54_3_d1 <=  heap_bh6_w54_3;
            heap_bh6_w55_3_d1 <=  heap_bh6_w55_3;
            heap_bh6_w55_4_d1 <=  heap_bh6_w55_4;
            heap_bh6_w56_3_d1 <=  heap_bh6_w56_3;
            heap_bh6_w57_3_d1 <=  heap_bh6_w57_3;
            heap_bh6_w57_4_d1 <=  heap_bh6_w57_4;
            heap_bh6_w58_2_d1 <=  heap_bh6_w58_2;
            heap_bh6_w35_8_d1 <=  heap_bh6_w35_8;
            heap_bh6_w36_10_d1 <=  heap_bh6_w36_10;
            heap_bh6_w37_11_d1 <=  heap_bh6_w37_11;
            heap_bh6_w38_13_d1 <=  heap_bh6_w38_13;
            heap_bh6_w38_14_d1 <=  heap_bh6_w38_14;
            heap_bh6_w39_15_d1 <=  heap_bh6_w39_15;
            heap_bh6_w40_15_d1 <=  heap_bh6_w40_15;
            heap_bh6_w40_16_d1 <=  heap_bh6_w40_16;
            heap_bh6_w41_16_d1 <=  heap_bh6_w41_16;
            heap_bh6_w42_13_d1 <=  heap_bh6_w42_13;
            heap_bh6_w42_14_d1 <=  heap_bh6_w42_14;
            heap_bh6_w43_12_d1 <=  heap_bh6_w43_12;
            heap_bh6_w44_12_d1 <=  heap_bh6_w44_12;
            heap_bh6_w44_13_d1 <=  heap_bh6_w44_13;
            heap_bh6_w45_9_d1 <=  heap_bh6_w45_9;
            heap_bh6_w48_5_d1 <=  heap_bh6_w48_5;
            heap_bh6_w59_3_d1 <=  heap_bh6_w59_3;
            heap_bh6_w60_2_d1 <=  heap_bh6_w60_2;
            heap_bh6_w49_6_d1 <=  heap_bh6_w49_6;
            heap_bh6_w50_4_d1 <=  heap_bh6_w50_4;
            heap_bh6_w51_5_d1 <=  heap_bh6_w51_5;
            heap_bh6_w61_3_d1 <=  heap_bh6_w61_3;
            heap_bh6_w62_2_d1 <=  heap_bh6_w62_2;
            heap_bh6_w63_2_d1 <=  heap_bh6_w63_2;
            heap_bh6_w46_8_d1 <=  heap_bh6_w46_8;
            heap_bh6_w47_8_d1 <=  heap_bh6_w47_8;
            heap_bh6_w48_6_d1 <=  heap_bh6_w48_6;
         end if;
      end process;
   XX_m5 <= X ;
   YY_m5 <= Y ;
   -- code generated by IntMultiplier::buildHeapLogicOnly()
   -- buildheaplogiconly called for lsbX=17 lsbY=17 msbX=24 msbY=24
   Xp_m5b7 <= XX_m5(23 downto 17) & "00";
   Yp_m5b7 <= YY_m5(23 downto 17) & "00";
   x_m5b7_0 <= Xp_m5b7(2 downto 0);
   x_m5b7_1 <= Xp_m5b7(5 downto 3);
   x_m5b7_2 <= Xp_m5b7(8 downto 6);
   y_m5b7_0 <= Yp_m5b7(2 downto 0);
   y_m5b7_1 <= Yp_m5b7(5 downto 3);
   y_m5b7_2 <= Yp_m5b7(8 downto 6);
   ----------------Synchro barrier, entering cycle 0----------------
   -- Partial product row number 0
   Y0X0_7_m5 <= y_m5b7_0 & x_m5b7_0;
   PP_m5_7X0Y0_Tbl: SmallMultTableP3x3r6XuYu_F300_uid9  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 X => Y0X0_7_m5,
                 Y => PP7X0Y0_m5);
   -- Adding the relevant bits to the heap of bits
   heap_bh6_w34_0 <= PP7X0Y0_m5(4); -- cycle= 0 cp= 3.8478e-10
   heap_bh6_w35_0 <= PP7X0Y0_m5(5); -- cycle= 0 cp= 3.8478e-10

   Y0X1_7_m5 <= y_m5b7_0 & x_m5b7_1;
   PP_m5_7X1Y0_Tbl: SmallMultTableP3x3r6XuYu_F300_uid9  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 X => Y0X1_7_m5,
                 Y => PP7X1Y0_m5);
   -- Adding the relevant bits to the heap of bits
   heap_bh6_w35_1 <= PP7X1Y0_m5(2); -- cycle= 0 cp= 3.8478e-10
   heap_bh6_w36_0 <= PP7X1Y0_m5(3); -- cycle= 0 cp= 3.8478e-10
   heap_bh6_w37_0 <= PP7X1Y0_m5(4); -- cycle= 0 cp= 3.8478e-10
   heap_bh6_w38_0 <= PP7X1Y0_m5(5); -- cycle= 0 cp= 3.8478e-10

   Y0X2_7_m5 <= y_m5b7_0 & x_m5b7_2;
   PP_m5_7X2Y0_Tbl: SmallMultTableP3x3r6XuYu_F300_uid9  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 X => Y0X2_7_m5,
                 Y => PP7X2Y0_m5);
   -- Adding the relevant bits to the heap of bits
   heap_bh6_w38_1 <= PP7X2Y0_m5(2); -- cycle= 0 cp= 3.8478e-10
   heap_bh6_w39_0 <= PP7X2Y0_m5(3); -- cycle= 0 cp= 3.8478e-10
   heap_bh6_w40_0 <= PP7X2Y0_m5(4); -- cycle= 0 cp= 3.8478e-10
   heap_bh6_w41_0 <= PP7X2Y0_m5(5); -- cycle= 0 cp= 3.8478e-10

   -- Partial product row number 1
   Y1X0_7_m5 <= y_m5b7_1 & x_m5b7_0;
   PP_m5_7X0Y1_Tbl: SmallMultTableP3x3r6XuYu_F300_uid9  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 X => Y1X0_7_m5,
                 Y => PP7X0Y1_m5);
   -- Adding the relevant bits to the heap of bits
   heap_bh6_w35_2 <= PP7X0Y1_m5(2); -- cycle= 0 cp= 3.8478e-10
   heap_bh6_w36_1 <= PP7X0Y1_m5(3); -- cycle= 0 cp= 3.8478e-10
   heap_bh6_w37_1 <= PP7X0Y1_m5(4); -- cycle= 0 cp= 3.8478e-10
   heap_bh6_w38_2 <= PP7X0Y1_m5(5); -- cycle= 0 cp= 3.8478e-10

   Y1X1_7_m5 <= y_m5b7_1 & x_m5b7_1;
   PP_m5_7X1Y1_Tbl: SmallMultTableP3x3r6XuYu_F300_uid9  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 X => Y1X1_7_m5,
                 Y => PP7X1Y1_m5);
   -- Adding the relevant bits to the heap of bits
   heap_bh6_w36_2 <= PP7X1Y1_m5(0); -- cycle= 0 cp= 3.8478e-10
   heap_bh6_w37_2 <= PP7X1Y1_m5(1); -- cycle= 0 cp= 3.8478e-10
   heap_bh6_w38_3 <= PP7X1Y1_m5(2); -- cycle= 0 cp= 3.8478e-10
   heap_bh6_w39_1 <= PP7X1Y1_m5(3); -- cycle= 0 cp= 3.8478e-10
   heap_bh6_w40_1 <= PP7X1Y1_m5(4); -- cycle= 0 cp= 3.8478e-10
   heap_bh6_w41_1 <= PP7X1Y1_m5(5); -- cycle= 0 cp= 3.8478e-10

   Y1X2_7_m5 <= y_m5b7_1 & x_m5b7_2;
   PP_m5_7X2Y1_Tbl: SmallMultTableP3x3r6XuYu_F300_uid9  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 X => Y1X2_7_m5,
                 Y => PP7X2Y1_m5);
   -- Adding the relevant bits to the heap of bits
   heap_bh6_w39_2 <= PP7X2Y1_m5(0); -- cycle= 0 cp= 3.8478e-10
   heap_bh6_w40_2 <= PP7X2Y1_m5(1); -- cycle= 0 cp= 3.8478e-10
   heap_bh6_w41_2 <= PP7X2Y1_m5(2); -- cycle= 0 cp= 3.8478e-10
   heap_bh6_w42_0 <= PP7X2Y1_m5(3); -- cycle= 0 cp= 3.8478e-10
   heap_bh6_w43_0 <= PP7X2Y1_m5(4); -- cycle= 0 cp= 3.8478e-10
   heap_bh6_w44_0 <= PP7X2Y1_m5(5); -- cycle= 0 cp= 3.8478e-10

   -- Partial product row number 2
   Y2X0_7_m5 <= y_m5b7_2 & x_m5b7_0;
   PP_m5_7X0Y2_Tbl: SmallMultTableP3x3r6XuYu_F300_uid9  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 X => Y2X0_7_m5,
                 Y => PP7X0Y2_m5);
   -- Adding the relevant bits to the heap of bits
   heap_bh6_w38_4 <= PP7X0Y2_m5(2); -- cycle= 0 cp= 3.8478e-10
   heap_bh6_w39_3 <= PP7X0Y2_m5(3); -- cycle= 0 cp= 3.8478e-10
   heap_bh6_w40_3 <= PP7X0Y2_m5(4); -- cycle= 0 cp= 3.8478e-10
   heap_bh6_w41_3 <= PP7X0Y2_m5(5); -- cycle= 0 cp= 3.8478e-10

   Y2X1_7_m5 <= y_m5b7_2 & x_m5b7_1;
   PP_m5_7X1Y2_Tbl: SmallMultTableP3x3r6XuYu_F300_uid9  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 X => Y2X1_7_m5,
                 Y => PP7X1Y2_m5);
   -- Adding the relevant bits to the heap of bits
   heap_bh6_w39_4 <= PP7X1Y2_m5(0); -- cycle= 0 cp= 3.8478e-10
   heap_bh6_w40_4 <= PP7X1Y2_m5(1); -- cycle= 0 cp= 3.8478e-10
   heap_bh6_w41_4 <= PP7X1Y2_m5(2); -- cycle= 0 cp= 3.8478e-10
   heap_bh6_w42_1 <= PP7X1Y2_m5(3); -- cycle= 0 cp= 3.8478e-10
   heap_bh6_w43_1 <= PP7X1Y2_m5(4); -- cycle= 0 cp= 3.8478e-10
   heap_bh6_w44_1 <= PP7X1Y2_m5(5); -- cycle= 0 cp= 3.8478e-10

   Y2X2_7_m5 <= y_m5b7_2 & x_m5b7_2;
   PP_m5_7X2Y2_Tbl: SmallMultTableP3x3r6XuYu_F300_uid9  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 X => Y2X2_7_m5,
                 Y => PP7X2Y2_m5);
   -- Adding the relevant bits to the heap of bits
   heap_bh6_w42_2 <= PP7X2Y2_m5(0); -- cycle= 0 cp= 3.8478e-10
   heap_bh6_w43_2 <= PP7X2Y2_m5(1); -- cycle= 0 cp= 3.8478e-10
   heap_bh6_w44_2 <= PP7X2Y2_m5(2); -- cycle= 0 cp= 3.8478e-10
   heap_bh6_w45_0 <= PP7X2Y2_m5(3); -- cycle= 0 cp= 3.8478e-10
   heap_bh6_w46_0 <= PP7X2Y2_m5(4); -- cycle= 0 cp= 3.8478e-10
   heap_bh6_w47_0 <= PP7X2Y2_m5(5); -- cycle= 0 cp= 3.8478e-10

   
   -- Beginning of code generated by BitHeap::generateCompressorVHDL
   -- code generated by BitHeap::generateSupertileVHDL()
   ----------------Synchro barrier, entering cycle 0----------------
   DSP_bh6_ch0_0 <= std_logic_vector(unsigned("" & XX_m5(23 downto 0) & "") * unsigned("" & YY_m5(16 downto 0) & ""));
   heap_bh6_w40_5 <= DSP_bh6_ch0_0(40); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w39_5 <= DSP_bh6_ch0_0(39); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w38_5 <= DSP_bh6_ch0_0(38); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w37_3 <= DSP_bh6_ch0_0(37); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w36_3 <= DSP_bh6_ch0_0(36); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w35_3 <= DSP_bh6_ch0_0(35); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w34_1 <= DSP_bh6_ch0_0(34); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w33_0 <= DSP_bh6_ch0_0(33); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w32_0 <= DSP_bh6_ch0_0(32); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w31_0 <= DSP_bh6_ch0_0(31); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w30_0 <= DSP_bh6_ch0_0(30); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w29_0 <= DSP_bh6_ch0_0(29); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w28_0 <= DSP_bh6_ch0_0(28); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w27_0 <= DSP_bh6_ch0_0(27); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w26_0 <= DSP_bh6_ch0_0(26); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w25_0 <= DSP_bh6_ch0_0(25); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w24_0 <= DSP_bh6_ch0_0(24); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w23_0 <= DSP_bh6_ch0_0(23); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w22_0 <= DSP_bh6_ch0_0(22); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w21_0 <= DSP_bh6_ch0_0(21); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w20_0 <= DSP_bh6_ch0_0(20); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w19_0 <= DSP_bh6_ch0_0(19); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w18_0 <= DSP_bh6_ch0_0(18); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w17_0 <= DSP_bh6_ch0_0(17); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w16_0 <= DSP_bh6_ch0_0(16); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w15_0 <= DSP_bh6_ch0_0(15); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w14_0 <= DSP_bh6_ch0_0(14); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w13_0 <= DSP_bh6_ch0_0(13); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w12_0 <= DSP_bh6_ch0_0(12); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w11_0 <= DSP_bh6_ch0_0(11); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w10_0 <= DSP_bh6_ch0_0(10); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w9_0 <= DSP_bh6_ch0_0(9); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w8_0 <= DSP_bh6_ch0_0(8); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w7_0 <= DSP_bh6_ch0_0(7); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w6_0 <= DSP_bh6_ch0_0(6); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w5_0 <= DSP_bh6_ch0_0(5); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w4_0 <= DSP_bh6_ch0_0(4); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w3_0 <= DSP_bh6_ch0_0(3); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w2_0 <= DSP_bh6_ch0_0(2); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w1_0 <= DSP_bh6_ch0_0(1); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w0_0 <= DSP_bh6_ch0_0(0); -- cycle= 0 cp= 1.638e-09
   ----------------Synchro barrier, entering cycle 0----------------
   DSP_bh6_ch1_0 <= std_logic_vector(unsigned("" & XX_m5(40 downto 24) & "") * unsigned("" & YY_m5(23 downto 0) & ""));
   heap_bh6_w64_0 <= DSP_bh6_ch1_0(40); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w63_0 <= DSP_bh6_ch1_0(39); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w62_0 <= DSP_bh6_ch1_0(38); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w61_0 <= DSP_bh6_ch1_0(37); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w60_0 <= DSP_bh6_ch1_0(36); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w59_0 <= DSP_bh6_ch1_0(35); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w58_0 <= DSP_bh6_ch1_0(34); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w57_0 <= DSP_bh6_ch1_0(33); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w56_0 <= DSP_bh6_ch1_0(32); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w55_0 <= DSP_bh6_ch1_0(31); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w54_0 <= DSP_bh6_ch1_0(30); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w53_0 <= DSP_bh6_ch1_0(29); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w52_0 <= DSP_bh6_ch1_0(28); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w51_0 <= DSP_bh6_ch1_0(27); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w50_0 <= DSP_bh6_ch1_0(26); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w49_0 <= DSP_bh6_ch1_0(25); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w48_0 <= DSP_bh6_ch1_0(24); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w47_1 <= DSP_bh6_ch1_0(23); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w46_1 <= DSP_bh6_ch1_0(22); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w45_1 <= DSP_bh6_ch1_0(21); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w44_3 <= DSP_bh6_ch1_0(20); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w43_3 <= DSP_bh6_ch1_0(19); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w42_3 <= DSP_bh6_ch1_0(18); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w41_5 <= DSP_bh6_ch1_0(17); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w40_6 <= DSP_bh6_ch1_0(16); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w39_6 <= DSP_bh6_ch1_0(15); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w38_6 <= DSP_bh6_ch1_0(14); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w37_4 <= DSP_bh6_ch1_0(13); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w36_4 <= DSP_bh6_ch1_0(12); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w35_4 <= DSP_bh6_ch1_0(11); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w34_2 <= DSP_bh6_ch1_0(10); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w33_1 <= DSP_bh6_ch1_0(9); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w32_1 <= DSP_bh6_ch1_0(8); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w31_1 <= DSP_bh6_ch1_0(7); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w30_1 <= DSP_bh6_ch1_0(6); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w29_1 <= DSP_bh6_ch1_0(5); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w28_1 <= DSP_bh6_ch1_0(4); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w27_1 <= DSP_bh6_ch1_0(3); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w26_1 <= DSP_bh6_ch1_0(2); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w25_1 <= DSP_bh6_ch1_0(1); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w24_1 <= DSP_bh6_ch1_0(0); -- cycle= 0 cp= 1.638e-09
   ----------------Synchro barrier, entering cycle 0----------------
   DSP_bh6_ch2_0 <= std_logic_vector(unsigned("" & XX_m5(40 downto 17) & "") * unsigned("" & YY_m5(40 downto 24) & ""));
   heap_bh6_w81_0 <= DSP_bh6_ch2_0(40); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w80_0 <= DSP_bh6_ch2_0(39); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w79_0 <= DSP_bh6_ch2_0(38); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w78_0 <= DSP_bh6_ch2_0(37); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w77_0 <= DSP_bh6_ch2_0(36); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w76_0 <= DSP_bh6_ch2_0(35); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w75_0 <= DSP_bh6_ch2_0(34); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w74_0 <= DSP_bh6_ch2_0(33); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w73_0 <= DSP_bh6_ch2_0(32); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w72_0 <= DSP_bh6_ch2_0(31); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w71_0 <= DSP_bh6_ch2_0(30); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w70_0 <= DSP_bh6_ch2_0(29); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w69_0 <= DSP_bh6_ch2_0(28); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w68_0 <= DSP_bh6_ch2_0(27); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w67_0 <= DSP_bh6_ch2_0(26); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w66_0 <= DSP_bh6_ch2_0(25); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w65_0 <= DSP_bh6_ch2_0(24); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w64_1 <= DSP_bh6_ch2_0(23); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w63_1 <= DSP_bh6_ch2_0(22); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w62_1 <= DSP_bh6_ch2_0(21); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w61_1 <= DSP_bh6_ch2_0(20); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w60_1 <= DSP_bh6_ch2_0(19); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w59_1 <= DSP_bh6_ch2_0(18); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w58_1 <= DSP_bh6_ch2_0(17); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w57_1 <= DSP_bh6_ch2_0(16); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w56_1 <= DSP_bh6_ch2_0(15); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w55_1 <= DSP_bh6_ch2_0(14); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w54_1 <= DSP_bh6_ch2_0(13); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w53_1 <= DSP_bh6_ch2_0(12); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w52_1 <= DSP_bh6_ch2_0(11); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w51_1 <= DSP_bh6_ch2_0(10); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w50_1 <= DSP_bh6_ch2_0(9); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w49_1 <= DSP_bh6_ch2_0(8); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w48_1 <= DSP_bh6_ch2_0(7); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w47_2 <= DSP_bh6_ch2_0(6); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w46_2 <= DSP_bh6_ch2_0(5); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w45_2 <= DSP_bh6_ch2_0(4); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w44_4 <= DSP_bh6_ch2_0(3); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w43_4 <= DSP_bh6_ch2_0(2); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w42_4 <= DSP_bh6_ch2_0(1); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w41_6 <= DSP_bh6_ch2_0(0); -- cycle= 0 cp= 1.638e-09
   ----------------Synchro barrier, entering cycle 0----------------
   DSP_bh6_ch3_0 <= std_logic_vector(unsigned("" & XX_m5(16 downto 0) & "") * unsigned("" & YY_m5(40 downto 17) & ""));
   heap_bh6_w57_2 <= DSP_bh6_ch3_0(40); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w56_2 <= DSP_bh6_ch3_0(39); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w55_2 <= DSP_bh6_ch3_0(38); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w54_2 <= DSP_bh6_ch3_0(37); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w53_2 <= DSP_bh6_ch3_0(36); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w52_2 <= DSP_bh6_ch3_0(35); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w51_2 <= DSP_bh6_ch3_0(34); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w50_2 <= DSP_bh6_ch3_0(33); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w49_2 <= DSP_bh6_ch3_0(32); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w48_2 <= DSP_bh6_ch3_0(31); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w47_3 <= DSP_bh6_ch3_0(30); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w46_3 <= DSP_bh6_ch3_0(29); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w45_3 <= DSP_bh6_ch3_0(28); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w44_5 <= DSP_bh6_ch3_0(27); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w43_5 <= DSP_bh6_ch3_0(26); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w42_5 <= DSP_bh6_ch3_0(25); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w41_7 <= DSP_bh6_ch3_0(24); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w40_7 <= DSP_bh6_ch3_0(23); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w39_7 <= DSP_bh6_ch3_0(22); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w38_7 <= DSP_bh6_ch3_0(21); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w37_5 <= DSP_bh6_ch3_0(20); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w36_5 <= DSP_bh6_ch3_0(19); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w35_5 <= DSP_bh6_ch3_0(18); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w34_3 <= DSP_bh6_ch3_0(17); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w33_2 <= DSP_bh6_ch3_0(16); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w32_2 <= DSP_bh6_ch3_0(15); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w31_2 <= DSP_bh6_ch3_0(14); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w30_2 <= DSP_bh6_ch3_0(13); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w29_2 <= DSP_bh6_ch3_0(12); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w28_2 <= DSP_bh6_ch3_0(11); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w27_2 <= DSP_bh6_ch3_0(10); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w26_2 <= DSP_bh6_ch3_0(9); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w25_2 <= DSP_bh6_ch3_0(8); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w24_2 <= DSP_bh6_ch3_0(7); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w23_1 <= DSP_bh6_ch3_0(6); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w22_1 <= DSP_bh6_ch3_0(5); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w21_1 <= DSP_bh6_ch3_0(4); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w20_1 <= DSP_bh6_ch3_0(3); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w19_1 <= DSP_bh6_ch3_0(2); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w18_1 <= DSP_bh6_ch3_0(1); -- cycle= 0 cp= 1.638e-09
   heap_bh6_w17_1 <= DSP_bh6_ch3_0(0); -- cycle= 0 cp= 1.638e-09
   ----------------Synchro barrier, entering cycle 0----------------

   -- Adding the constant bits
      -- All the constant bits are zero, nothing to add

   ----------------Synchro barrier, entering cycle 0----------------
   ----------------Synchro barrier, entering cycle 0----------------
   tempR_bh6_0 <= heap_bh6_w16_0 & heap_bh6_w15_0 & heap_bh6_w14_0 & heap_bh6_w13_0 & heap_bh6_w12_0 & heap_bh6_w11_0 & heap_bh6_w10_0 & heap_bh6_w9_0 & heap_bh6_w8_0 & heap_bh6_w7_0 & heap_bh6_w6_0 & heap_bh6_w5_0 & heap_bh6_w4_0 & heap_bh6_w3_0 & heap_bh6_w2_0 & heap_bh6_w1_0 & heap_bh6_w0_0; -- already compressed

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_0_0 <= heap_bh6_w38_4 & heap_bh6_w38_3 & heap_bh6_w38_2 & heap_bh6_w38_1;
   CompressorIn_bh6_0_1(0) <= heap_bh6_w39_4;
      Compressor_bh6_0: Compressor_14_3
      port map ( R => CompressorOut_bh6_0_0,
                 X0 => CompressorIn_bh6_0_0,
                 X1 => CompressorIn_bh6_0_1);
   heap_bh6_w38_8 <= CompressorOut_bh6_0_0(0); -- cycle= 0 cp= 7.5704e-10
   heap_bh6_w39_8 <= CompressorOut_bh6_0_0(1); -- cycle= 0 cp= 7.5704e-10
   heap_bh6_w40_8 <= CompressorOut_bh6_0_0(2); -- cycle= 0 cp= 7.5704e-10

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_1_2 <= heap_bh6_w39_3 & heap_bh6_w39_2 & heap_bh6_w39_1 & heap_bh6_w39_0;
   CompressorIn_bh6_1_3(0) <= heap_bh6_w40_4;
      Compressor_bh6_1: Compressor_14_3
      port map ( R => CompressorOut_bh6_1_1,
                 X0 => CompressorIn_bh6_1_2,
                 X1 => CompressorIn_bh6_1_3);
   heap_bh6_w39_9 <= CompressorOut_bh6_1_1(0); -- cycle= 0 cp= 7.5704e-10
   heap_bh6_w40_9 <= CompressorOut_bh6_1_1(1); -- cycle= 0 cp= 7.5704e-10
   heap_bh6_w41_8 <= CompressorOut_bh6_1_1(2); -- cycle= 0 cp= 7.5704e-10

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_2_4 <= heap_bh6_w40_3 & heap_bh6_w40_2 & heap_bh6_w40_1 & heap_bh6_w40_0;
   CompressorIn_bh6_2_5(0) <= heap_bh6_w41_4;
      Compressor_bh6_2: Compressor_14_3
      port map ( R => CompressorOut_bh6_2_2,
                 X0 => CompressorIn_bh6_2_4,
                 X1 => CompressorIn_bh6_2_5);
   heap_bh6_w40_10 <= CompressorOut_bh6_2_2(0); -- cycle= 0 cp= 7.5704e-10
   heap_bh6_w41_9 <= CompressorOut_bh6_2_2(1); -- cycle= 0 cp= 7.5704e-10
   heap_bh6_w42_6 <= CompressorOut_bh6_2_2(2); -- cycle= 0 cp= 7.5704e-10

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_3_6 <= heap_bh6_w41_3 & heap_bh6_w41_2 & heap_bh6_w41_1 & heap_bh6_w41_0;
   CompressorIn_bh6_3_7(0) <= heap_bh6_w42_2;
      Compressor_bh6_3: Compressor_14_3
      port map ( R => CompressorOut_bh6_3_3,
                 X0 => CompressorIn_bh6_3_6,
                 X1 => CompressorIn_bh6_3_7);
   heap_bh6_w41_10 <= CompressorOut_bh6_3_3(0); -- cycle= 0 cp= 7.5704e-10
   heap_bh6_w42_7 <= CompressorOut_bh6_3_3(1); -- cycle= 0 cp= 7.5704e-10
   heap_bh6_w43_6 <= CompressorOut_bh6_3_3(2); -- cycle= 0 cp= 7.5704e-10

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_4_8 <= heap_bh6_w35_2 & heap_bh6_w35_1 & heap_bh6_w35_0;
   CompressorIn_bh6_4_9 <= heap_bh6_w36_2 & heap_bh6_w36_1;
      Compressor_bh6_4: Compressor_23_3
      port map ( R => CompressorOut_bh6_4_4,
                 X0 => CompressorIn_bh6_4_8,
                 X1 => CompressorIn_bh6_4_9);
   heap_bh6_w35_6 <= CompressorOut_bh6_4_4(0); -- cycle= 0 cp= 7.5704e-10
   heap_bh6_w36_6 <= CompressorOut_bh6_4_4(1); -- cycle= 0 cp= 7.5704e-10
   heap_bh6_w37_6 <= CompressorOut_bh6_4_4(2); -- cycle= 0 cp= 7.5704e-10

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_5_10 <= heap_bh6_w43_2 & heap_bh6_w43_1 & heap_bh6_w43_0;
   CompressorIn_bh6_5_11 <= heap_bh6_w44_2 & heap_bh6_w44_1;
      Compressor_bh6_5: Compressor_23_3
      port map ( R => CompressorOut_bh6_5_5,
                 X0 => CompressorIn_bh6_5_10,
                 X1 => CompressorIn_bh6_5_11);
   heap_bh6_w43_7 <= CompressorOut_bh6_5_5(0); -- cycle= 0 cp= 7.5704e-10
   heap_bh6_w44_6 <= CompressorOut_bh6_5_5(1); -- cycle= 0 cp= 7.5704e-10
   heap_bh6_w45_4 <= CompressorOut_bh6_5_5(2); -- cycle= 0 cp= 7.5704e-10

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_6_12 <= heap_bh6_w37_2 & heap_bh6_w37_1 & heap_bh6_w37_0;
   CompressorIn_bh6_6_13(0) <= heap_bh6_w38_0;
      Compressor_bh6_6: Compressor_13_3
      port map ( R => CompressorOut_bh6_6_6,
                 X0 => CompressorIn_bh6_6_12,
                 X1 => CompressorIn_bh6_6_13);
   heap_bh6_w37_7 <= CompressorOut_bh6_6_6(0); -- cycle= 0 cp= 7.5704e-10
   heap_bh6_w38_9 <= CompressorOut_bh6_6_6(1); -- cycle= 0 cp= 7.5704e-10
   heap_bh6_w39_10 <= CompressorOut_bh6_6_6(2); -- cycle= 0 cp= 7.5704e-10

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_7_14 <= heap_bh6_w42_1 & heap_bh6_w42_0 & heap_bh6_w42_7 & heap_bh6_w42_6;
   CompressorIn_bh6_7_15(0) <= heap_bh6_w43_7;
      Compressor_bh6_7: Compressor_14_3
      port map ( R => CompressorOut_bh6_7_7,
                 X0 => CompressorIn_bh6_7_14,
                 X1 => CompressorIn_bh6_7_15);
   heap_bh6_w42_8 <= CompressorOut_bh6_7_7(0); -- cycle= 0 cp= 1.1293e-09
   heap_bh6_w43_8 <= CompressorOut_bh6_7_7(1); -- cycle= 0 cp= 1.1293e-09
   heap_bh6_w44_7 <= CompressorOut_bh6_7_7(2); -- cycle= 0 cp= 1.1293e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_8_16 <= heap_bh6_w39_10 & heap_bh6_w39_9 & heap_bh6_w39_8;
   CompressorIn_bh6_8_17 <= heap_bh6_w40_10 & heap_bh6_w40_9;
      Compressor_bh6_8: Compressor_23_3
      port map ( R => CompressorOut_bh6_8_8,
                 X0 => CompressorIn_bh6_8_16,
                 X1 => CompressorIn_bh6_8_17);
   heap_bh6_w39_11 <= CompressorOut_bh6_8_8(0); -- cycle= 0 cp= 1.1293e-09
   heap_bh6_w40_11 <= CompressorOut_bh6_8_8(1); -- cycle= 0 cp= 1.1293e-09
   heap_bh6_w41_11 <= CompressorOut_bh6_8_8(2); -- cycle= 0 cp= 1.1293e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_9_18 <= heap_bh6_w41_10 & heap_bh6_w41_9 & heap_bh6_w41_8;
      Compressor_bh6_9: Compressor_3_2
      port map ( R => CompressorOut_bh6_9_9,
                 X0 => CompressorIn_bh6_9_18);
   heap_bh6_w41_12 <= CompressorOut_bh6_9_9(0); -- cycle= 0 cp= 1.1293e-09
   heap_bh6_w42_9 <= CompressorOut_bh6_9_9(1); -- cycle= 0 cp= 1.1293e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_10_19 <= heap_bh6_w44_0 & heap_bh6_w44_6 & heap_bh6_w44_7;
   CompressorIn_bh6_10_20 <= heap_bh6_w45_0 & heap_bh6_w45_4;
      Compressor_bh6_10: Compressor_23_3
      port map ( R => CompressorOut_bh6_10_10,
                 X0 => CompressorIn_bh6_10_19,
                 X1 => CompressorIn_bh6_10_20);
   heap_bh6_w44_8 <= CompressorOut_bh6_10_10(0); -- cycle= 0 cp= 1.50156e-09
   heap_bh6_w45_5 <= CompressorOut_bh6_10_10(1); -- cycle= 0 cp= 1.50156e-09
   heap_bh6_w46_4 <= CompressorOut_bh6_10_10(2); -- cycle= 0 cp= 1.50156e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_11_21 <= heap_bh6_w34_0 & heap_bh6_w34_3 & heap_bh6_w34_2 & heap_bh6_w34_1;
   CompressorIn_bh6_11_22(0) <= heap_bh6_w35_6;
      Compressor_bh6_11: Compressor_14_3
      port map ( R => CompressorOut_bh6_11_11,
                 X0 => CompressorIn_bh6_11_21,
                 X1 => CompressorIn_bh6_11_22);
   heap_bh6_w34_4 <= CompressorOut_bh6_11_11(0); -- cycle= 0 cp= 2.01026e-09
   heap_bh6_w35_7 <= CompressorOut_bh6_11_11(1); -- cycle= 0 cp= 2.01026e-09
   heap_bh6_w36_7 <= CompressorOut_bh6_11_11(2); -- cycle= 0 cp= 2.01026e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_12_23 <= heap_bh6_w36_0 & heap_bh6_w36_6 & heap_bh6_w36_5 & heap_bh6_w36_4;
   CompressorIn_bh6_12_24(0) <= heap_bh6_w37_7;
      Compressor_bh6_12: Compressor_14_3
      port map ( R => CompressorOut_bh6_12_12,
                 X0 => CompressorIn_bh6_12_23,
                 X1 => CompressorIn_bh6_12_24);
   heap_bh6_w36_8 <= CompressorOut_bh6_12_12(0); -- cycle= 0 cp= 2.01026e-09
   heap_bh6_w37_8 <= CompressorOut_bh6_12_12(1); -- cycle= 0 cp= 2.01026e-09
   heap_bh6_w38_10 <= CompressorOut_bh6_12_12(2); -- cycle= 0 cp= 2.01026e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_13_25 <= heap_bh6_w37_6 & heap_bh6_w37_5 & heap_bh6_w37_4 & heap_bh6_w37_3;
   CompressorIn_bh6_13_26(0) <= heap_bh6_w38_9;
      Compressor_bh6_13: Compressor_14_3
      port map ( R => CompressorOut_bh6_13_13,
                 X0 => CompressorIn_bh6_13_25,
                 X1 => CompressorIn_bh6_13_26);
   heap_bh6_w37_9 <= CompressorOut_bh6_13_13(0); -- cycle= 0 cp= 2.01026e-09
   heap_bh6_w38_11 <= CompressorOut_bh6_13_13(1); -- cycle= 0 cp= 2.01026e-09
   heap_bh6_w39_12 <= CompressorOut_bh6_13_13(2); -- cycle= 0 cp= 2.01026e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_14_27 <= heap_bh6_w38_8 & heap_bh6_w38_7 & heap_bh6_w38_6 & heap_bh6_w38_5;
   CompressorIn_bh6_14_28(0) <= heap_bh6_w39_11;
      Compressor_bh6_14: Compressor_14_3
      port map ( R => CompressorOut_bh6_14_14,
                 X0 => CompressorIn_bh6_14_27,
                 X1 => CompressorIn_bh6_14_28);
   heap_bh6_w38_12 <= CompressorOut_bh6_14_14(0); -- cycle= 0 cp= 2.01026e-09
   heap_bh6_w39_13 <= CompressorOut_bh6_14_14(1); -- cycle= 0 cp= 2.01026e-09
   heap_bh6_w40_12 <= CompressorOut_bh6_14_14(2); -- cycle= 0 cp= 2.01026e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_15_29 <= heap_bh6_w40_8 & heap_bh6_w40_11 & heap_bh6_w40_7 & heap_bh6_w40_6;
   CompressorIn_bh6_15_30(0) <= heap_bh6_w41_12;
      Compressor_bh6_15: Compressor_14_3
      port map ( R => CompressorOut_bh6_15_15,
                 X0 => CompressorIn_bh6_15_29,
                 X1 => CompressorIn_bh6_15_30);
   heap_bh6_w40_13 <= CompressorOut_bh6_15_15(0); -- cycle= 0 cp= 2.01026e-09
   heap_bh6_w41_13 <= CompressorOut_bh6_15_15(1); -- cycle= 0 cp= 2.01026e-09
   heap_bh6_w42_10 <= CompressorOut_bh6_15_15(2); -- cycle= 0 cp= 2.01026e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_16_31 <= heap_bh6_w41_11 & heap_bh6_w41_7 & heap_bh6_w41_6 & heap_bh6_w41_5;
   CompressorIn_bh6_16_32(0) <= heap_bh6_w42_9;
      Compressor_bh6_16: Compressor_14_3
      port map ( R => CompressorOut_bh6_16_16,
                 X0 => CompressorIn_bh6_16_31,
                 X1 => CompressorIn_bh6_16_32);
   heap_bh6_w41_14 <= CompressorOut_bh6_16_16(0); -- cycle= 0 cp= 2.01026e-09
   heap_bh6_w42_11 <= CompressorOut_bh6_16_16(1); -- cycle= 0 cp= 2.01026e-09
   heap_bh6_w43_9 <= CompressorOut_bh6_16_16(2); -- cycle= 0 cp= 2.01026e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_17_33 <= heap_bh6_w42_8 & heap_bh6_w42_5 & heap_bh6_w42_4 & heap_bh6_w42_3;
   CompressorIn_bh6_17_34(0) <= heap_bh6_w43_6;
      Compressor_bh6_17: Compressor_14_3
      port map ( R => CompressorOut_bh6_17_17,
                 X0 => CompressorIn_bh6_17_33,
                 X1 => CompressorIn_bh6_17_34);
   heap_bh6_w42_12 <= CompressorOut_bh6_17_17(0); -- cycle= 0 cp= 2.01026e-09
   heap_bh6_w43_10 <= CompressorOut_bh6_17_17(1); -- cycle= 0 cp= 2.01026e-09
   heap_bh6_w44_9 <= CompressorOut_bh6_17_17(2); -- cycle= 0 cp= 2.01026e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_18_35 <= heap_bh6_w43_8 & heap_bh6_w43_5 & heap_bh6_w43_4 & heap_bh6_w43_3;
   CompressorIn_bh6_18_36(0) <= heap_bh6_w44_8;
      Compressor_bh6_18: Compressor_14_3
      port map ( R => CompressorOut_bh6_18_18,
                 X0 => CompressorIn_bh6_18_35,
                 X1 => CompressorIn_bh6_18_36);
   heap_bh6_w43_11 <= CompressorOut_bh6_18_18(0); -- cycle= 0 cp= 2.01026e-09
   heap_bh6_w44_10 <= CompressorOut_bh6_18_18(1); -- cycle= 0 cp= 2.01026e-09
   heap_bh6_w45_6 <= CompressorOut_bh6_18_18(2); -- cycle= 0 cp= 2.01026e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_19_37 <= heap_bh6_w45_5 & heap_bh6_w45_3 & heap_bh6_w45_2 & heap_bh6_w45_1;
   CompressorIn_bh6_19_38(0) <= heap_bh6_w46_0;
      Compressor_bh6_19: Compressor_14_3
      port map ( R => CompressorOut_bh6_19_19,
                 X0 => CompressorIn_bh6_19_37,
                 X1 => CompressorIn_bh6_19_38);
   heap_bh6_w45_7 <= CompressorOut_bh6_19_19(0); -- cycle= 0 cp= 2.01026e-09
   heap_bh6_w46_5 <= CompressorOut_bh6_19_19(1); -- cycle= 0 cp= 2.01026e-09
   heap_bh6_w47_4 <= CompressorOut_bh6_19_19(2); -- cycle= 0 cp= 2.01026e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_20_39 <= heap_bh6_w46_4 & heap_bh6_w46_3 & heap_bh6_w46_2 & heap_bh6_w46_1;
   CompressorIn_bh6_20_40(0) <= heap_bh6_w47_0;
      Compressor_bh6_20: Compressor_14_3
      port map ( R => CompressorOut_bh6_20_20,
                 X0 => CompressorIn_bh6_20_39,
                 X1 => CompressorIn_bh6_20_40);
   heap_bh6_w46_6 <= CompressorOut_bh6_20_20(0); -- cycle= 0 cp= 2.01026e-09
   heap_bh6_w47_5 <= CompressorOut_bh6_20_20(1); -- cycle= 0 cp= 2.01026e-09
   heap_bh6_w48_3 <= CompressorOut_bh6_20_20(2); -- cycle= 0 cp= 2.01026e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_21_41 <= heap_bh6_w24_2 & heap_bh6_w24_1 & heap_bh6_w24_0;
   CompressorIn_bh6_21_42 <= heap_bh6_w25_2 & heap_bh6_w25_1;
      Compressor_bh6_21: Compressor_23_3
      port map ( R => CompressorOut_bh6_21_21,
                 X0 => CompressorIn_bh6_21_41,
                 X1 => CompressorIn_bh6_21_42);
   heap_bh6_w24_3 <= CompressorOut_bh6_21_21(0); -- cycle= 0 cp= 2.01026e-09
   heap_bh6_w25_3 <= CompressorOut_bh6_21_21(1); -- cycle= 0 cp= 2.01026e-09
   heap_bh6_w26_3 <= CompressorOut_bh6_21_21(2); -- cycle= 0 cp= 2.01026e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_22_43 <= heap_bh6_w26_2 & heap_bh6_w26_1 & heap_bh6_w26_0;
   CompressorIn_bh6_22_44 <= heap_bh6_w27_2 & heap_bh6_w27_1;
      Compressor_bh6_22: Compressor_23_3
      port map ( R => CompressorOut_bh6_22_22,
                 X0 => CompressorIn_bh6_22_43,
                 X1 => CompressorIn_bh6_22_44);
   heap_bh6_w26_4 <= CompressorOut_bh6_22_22(0); -- cycle= 0 cp= 2.01026e-09
   heap_bh6_w27_3 <= CompressorOut_bh6_22_22(1); -- cycle= 0 cp= 2.01026e-09
   heap_bh6_w28_3 <= CompressorOut_bh6_22_22(2); -- cycle= 0 cp= 2.01026e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_23_45 <= heap_bh6_w28_2 & heap_bh6_w28_1 & heap_bh6_w28_0;
   CompressorIn_bh6_23_46 <= heap_bh6_w29_2 & heap_bh6_w29_1;
      Compressor_bh6_23: Compressor_23_3
      port map ( R => CompressorOut_bh6_23_23,
                 X0 => CompressorIn_bh6_23_45,
                 X1 => CompressorIn_bh6_23_46);
   heap_bh6_w28_4 <= CompressorOut_bh6_23_23(0); -- cycle= 0 cp= 2.01026e-09
   heap_bh6_w29_3 <= CompressorOut_bh6_23_23(1); -- cycle= 0 cp= 2.01026e-09
   heap_bh6_w30_3 <= CompressorOut_bh6_23_23(2); -- cycle= 0 cp= 2.01026e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_24_47 <= heap_bh6_w30_2 & heap_bh6_w30_1 & heap_bh6_w30_0;
   CompressorIn_bh6_24_48 <= heap_bh6_w31_2 & heap_bh6_w31_1;
      Compressor_bh6_24: Compressor_23_3
      port map ( R => CompressorOut_bh6_24_24,
                 X0 => CompressorIn_bh6_24_47,
                 X1 => CompressorIn_bh6_24_48);
   heap_bh6_w30_4 <= CompressorOut_bh6_24_24(0); -- cycle= 0 cp= 2.01026e-09
   heap_bh6_w31_3 <= CompressorOut_bh6_24_24(1); -- cycle= 0 cp= 2.01026e-09
   heap_bh6_w32_3 <= CompressorOut_bh6_24_24(2); -- cycle= 0 cp= 2.01026e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_25_49 <= heap_bh6_w32_2 & heap_bh6_w32_1 & heap_bh6_w32_0;
   CompressorIn_bh6_25_50 <= heap_bh6_w33_2 & heap_bh6_w33_1;
      Compressor_bh6_25: Compressor_23_3
      port map ( R => CompressorOut_bh6_25_25,
                 X0 => CompressorIn_bh6_25_49,
                 X1 => CompressorIn_bh6_25_50);
   heap_bh6_w32_4 <= CompressorOut_bh6_25_25(0); -- cycle= 0 cp= 2.01026e-09
   heap_bh6_w33_3 <= CompressorOut_bh6_25_25(1); -- cycle= 0 cp= 2.01026e-09
   heap_bh6_w34_5 <= CompressorOut_bh6_25_25(2); -- cycle= 0 cp= 2.01026e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_26_51 <= heap_bh6_w47_3 & heap_bh6_w47_2 & heap_bh6_w47_1;
   CompressorIn_bh6_26_52 <= heap_bh6_w48_2 & heap_bh6_w48_1;
      Compressor_bh6_26: Compressor_23_3
      port map ( R => CompressorOut_bh6_26_26,
                 X0 => CompressorIn_bh6_26_51,
                 X1 => CompressorIn_bh6_26_52);
   heap_bh6_w47_6 <= CompressorOut_bh6_26_26(0); -- cycle= 0 cp= 2.01026e-09
   heap_bh6_w48_4 <= CompressorOut_bh6_26_26(1); -- cycle= 0 cp= 2.01026e-09
   heap_bh6_w49_3 <= CompressorOut_bh6_26_26(2); -- cycle= 0 cp= 2.01026e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_27_53 <= heap_bh6_w49_2 & heap_bh6_w49_1 & heap_bh6_w49_0;
   CompressorIn_bh6_27_54 <= heap_bh6_w50_2 & heap_bh6_w50_1;
      Compressor_bh6_27: Compressor_23_3
      port map ( R => CompressorOut_bh6_27_27,
                 X0 => CompressorIn_bh6_27_53,
                 X1 => CompressorIn_bh6_27_54);
   heap_bh6_w49_4 <= CompressorOut_bh6_27_27(0); -- cycle= 0 cp= 2.01026e-09
   heap_bh6_w50_3 <= CompressorOut_bh6_27_27(1); -- cycle= 0 cp= 2.01026e-09
   heap_bh6_w51_3 <= CompressorOut_bh6_27_27(2); -- cycle= 0 cp= 2.01026e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_28_55 <= heap_bh6_w51_2 & heap_bh6_w51_1 & heap_bh6_w51_0;
   CompressorIn_bh6_28_56 <= heap_bh6_w52_2 & heap_bh6_w52_1;
      Compressor_bh6_28: Compressor_23_3
      port map ( R => CompressorOut_bh6_28_28,
                 X0 => CompressorIn_bh6_28_55,
                 X1 => CompressorIn_bh6_28_56);
   heap_bh6_w51_4 <= CompressorOut_bh6_28_28(0); -- cycle= 0 cp= 2.01026e-09
   heap_bh6_w52_3 <= CompressorOut_bh6_28_28(1); -- cycle= 0 cp= 2.01026e-09
   heap_bh6_w53_3 <= CompressorOut_bh6_28_28(2); -- cycle= 0 cp= 2.01026e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_29_57 <= heap_bh6_w53_2 & heap_bh6_w53_1 & heap_bh6_w53_0;
   CompressorIn_bh6_29_58 <= heap_bh6_w54_2 & heap_bh6_w54_1;
      Compressor_bh6_29: Compressor_23_3
      port map ( R => CompressorOut_bh6_29_29,
                 X0 => CompressorIn_bh6_29_57,
                 X1 => CompressorIn_bh6_29_58);
   heap_bh6_w53_4 <= CompressorOut_bh6_29_29(0); -- cycle= 0 cp= 2.01026e-09
   heap_bh6_w54_3 <= CompressorOut_bh6_29_29(1); -- cycle= 0 cp= 2.01026e-09
   heap_bh6_w55_3 <= CompressorOut_bh6_29_29(2); -- cycle= 0 cp= 2.01026e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_30_59 <= heap_bh6_w55_2 & heap_bh6_w55_1 & heap_bh6_w55_0;
   CompressorIn_bh6_30_60 <= heap_bh6_w56_2 & heap_bh6_w56_1;
      Compressor_bh6_30: Compressor_23_3
      port map ( R => CompressorOut_bh6_30_30,
                 X0 => CompressorIn_bh6_30_59,
                 X1 => CompressorIn_bh6_30_60);
   heap_bh6_w55_4 <= CompressorOut_bh6_30_30(0); -- cycle= 0 cp= 2.01026e-09
   heap_bh6_w56_3 <= CompressorOut_bh6_30_30(1); -- cycle= 0 cp= 2.01026e-09
   heap_bh6_w57_3 <= CompressorOut_bh6_30_30(2); -- cycle= 0 cp= 2.01026e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_31_61 <= heap_bh6_w57_2 & heap_bh6_w57_1 & heap_bh6_w57_0;
   CompressorIn_bh6_31_62 <= heap_bh6_w58_1 & heap_bh6_w58_0;
      Compressor_bh6_31: Compressor_23_3
      port map ( R => CompressorOut_bh6_31_31,
                 X0 => CompressorIn_bh6_31_61,
                 X1 => CompressorIn_bh6_31_62);
   heap_bh6_w57_4 <= CompressorOut_bh6_31_31(0); -- cycle= 0 cp= 2.01026e-09
   heap_bh6_w58_2 <= CompressorOut_bh6_31_31(1); -- cycle= 0 cp= 2.01026e-09
   heap_bh6_w59_2 <= CompressorOut_bh6_31_31(2); -- cycle= 0 cp= 2.01026e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_32_63 <= heap_bh6_w35_5 & heap_bh6_w35_4 & heap_bh6_w35_3;
   CompressorIn_bh6_32_64(0) <= heap_bh6_w36_3;
      Compressor_bh6_32: Compressor_13_3
      port map ( R => CompressorOut_bh6_32_32,
                 X0 => CompressorIn_bh6_32_63,
                 X1 => CompressorIn_bh6_32_64);
   heap_bh6_w35_8 <= CompressorOut_bh6_32_32(0); -- cycle= 0 cp= 2.01026e-09
   heap_bh6_w36_9 <= CompressorOut_bh6_32_32(1); -- cycle= 0 cp= 2.01026e-09
   heap_bh6_w37_10 <= CompressorOut_bh6_32_32(2); -- cycle= 0 cp= 2.01026e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_33_65 <= heap_bh6_w39_7 & heap_bh6_w39_6 & heap_bh6_w39_5;
   CompressorIn_bh6_33_66(0) <= heap_bh6_w40_5;
      Compressor_bh6_33: Compressor_13_3
      port map ( R => CompressorOut_bh6_33_33,
                 X0 => CompressorIn_bh6_33_65,
                 X1 => CompressorIn_bh6_33_66);
   heap_bh6_w39_14 <= CompressorOut_bh6_33_33(0); -- cycle= 0 cp= 2.01026e-09
   heap_bh6_w40_14 <= CompressorOut_bh6_33_33(1); -- cycle= 0 cp= 2.01026e-09
   heap_bh6_w41_15 <= CompressorOut_bh6_33_33(2); -- cycle= 0 cp= 2.01026e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_34_67 <= heap_bh6_w44_5 & heap_bh6_w44_4 & heap_bh6_w44_3;
      Compressor_bh6_34: Compressor_3_2
      port map ( R => CompressorOut_bh6_34_34,
                 X0 => CompressorIn_bh6_34_67);
   heap_bh6_w44_11 <= CompressorOut_bh6_34_34(0); -- cycle= 0 cp= 2.01026e-09
   heap_bh6_w45_8 <= CompressorOut_bh6_34_34(1); -- cycle= 0 cp= 2.01026e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_35_68 <= heap_bh6_w36_9 & heap_bh6_w36_8 & heap_bh6_w36_7;
   CompressorIn_bh6_35_69 <= heap_bh6_w37_10 & heap_bh6_w37_9;
      Compressor_bh6_35: Compressor_23_3
      port map ( R => CompressorOut_bh6_35_35,
                 X0 => CompressorIn_bh6_35_68,
                 X1 => CompressorIn_bh6_35_69);
   heap_bh6_w36_10 <= CompressorOut_bh6_35_35(0); -- cycle= 0 cp= 2.38252e-09
   heap_bh6_w37_11 <= CompressorOut_bh6_35_35(1); -- cycle= 0 cp= 2.38252e-09
   heap_bh6_w38_13 <= CompressorOut_bh6_35_35(2); -- cycle= 0 cp= 2.38252e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_36_70 <= heap_bh6_w38_12 & heap_bh6_w38_11 & heap_bh6_w38_10;
   CompressorIn_bh6_36_71 <= heap_bh6_w39_14 & heap_bh6_w39_13;
      Compressor_bh6_36: Compressor_23_3
      port map ( R => CompressorOut_bh6_36_36,
                 X0 => CompressorIn_bh6_36_70,
                 X1 => CompressorIn_bh6_36_71);
   heap_bh6_w38_14 <= CompressorOut_bh6_36_36(0); -- cycle= 0 cp= 2.38252e-09
   heap_bh6_w39_15 <= CompressorOut_bh6_36_36(1); -- cycle= 0 cp= 2.38252e-09
   heap_bh6_w40_15 <= CompressorOut_bh6_36_36(2); -- cycle= 0 cp= 2.38252e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_37_72 <= heap_bh6_w40_14 & heap_bh6_w40_13 & heap_bh6_w40_12;
   CompressorIn_bh6_37_73 <= heap_bh6_w41_15 & heap_bh6_w41_14;
      Compressor_bh6_37: Compressor_23_3
      port map ( R => CompressorOut_bh6_37_37,
                 X0 => CompressorIn_bh6_37_72,
                 X1 => CompressorIn_bh6_37_73);
   heap_bh6_w40_16 <= CompressorOut_bh6_37_37(0); -- cycle= 0 cp= 2.38252e-09
   heap_bh6_w41_16 <= CompressorOut_bh6_37_37(1); -- cycle= 0 cp= 2.38252e-09
   heap_bh6_w42_13 <= CompressorOut_bh6_37_37(2); -- cycle= 0 cp= 2.38252e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_38_74 <= heap_bh6_w42_12 & heap_bh6_w42_11 & heap_bh6_w42_10;
   CompressorIn_bh6_38_75 <= heap_bh6_w43_11 & heap_bh6_w43_10;
      Compressor_bh6_38: Compressor_23_3
      port map ( R => CompressorOut_bh6_38_38,
                 X0 => CompressorIn_bh6_38_74,
                 X1 => CompressorIn_bh6_38_75);
   heap_bh6_w42_14 <= CompressorOut_bh6_38_38(0); -- cycle= 0 cp= 2.38252e-09
   heap_bh6_w43_12 <= CompressorOut_bh6_38_38(1); -- cycle= 0 cp= 2.38252e-09
   heap_bh6_w44_12 <= CompressorOut_bh6_38_38(2); -- cycle= 0 cp= 2.38252e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_39_76 <= heap_bh6_w44_11 & heap_bh6_w44_10 & heap_bh6_w44_9;
   CompressorIn_bh6_39_77 <= heap_bh6_w45_8 & heap_bh6_w45_7;
      Compressor_bh6_39: Compressor_23_3
      port map ( R => CompressorOut_bh6_39_39,
                 X0 => CompressorIn_bh6_39_76,
                 X1 => CompressorIn_bh6_39_77);
   heap_bh6_w44_13 <= CompressorOut_bh6_39_39(0); -- cycle= 0 cp= 2.38252e-09
   heap_bh6_w45_9 <= CompressorOut_bh6_39_39(1); -- cycle= 0 cp= 2.38252e-09
   heap_bh6_w46_7 <= CompressorOut_bh6_39_39(2); -- cycle= 0 cp= 2.38252e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_40_78 <= heap_bh6_w47_6 & heap_bh6_w47_5 & heap_bh6_w47_4;
   CompressorIn_bh6_40_79 <= heap_bh6_w48_0 & heap_bh6_w48_4;
      Compressor_bh6_40: Compressor_23_3
      port map ( R => CompressorOut_bh6_40_40,
                 X0 => CompressorIn_bh6_40_78,
                 X1 => CompressorIn_bh6_40_79);
   heap_bh6_w47_7 <= CompressorOut_bh6_40_40(0); -- cycle= 0 cp= 2.38252e-09
   heap_bh6_w48_5 <= CompressorOut_bh6_40_40(1); -- cycle= 0 cp= 2.38252e-09
   heap_bh6_w49_5 <= CompressorOut_bh6_40_40(2); -- cycle= 0 cp= 2.38252e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_41_80 <= heap_bh6_w59_1 & heap_bh6_w59_0 & heap_bh6_w59_2;
   CompressorIn_bh6_41_81 <= heap_bh6_w60_1 & heap_bh6_w60_0;
      Compressor_bh6_41: Compressor_23_3
      port map ( R => CompressorOut_bh6_41_41,
                 X0 => CompressorIn_bh6_41_80,
                 X1 => CompressorIn_bh6_41_81);
   heap_bh6_w59_3 <= CompressorOut_bh6_41_41(0); -- cycle= 0 cp= 2.38252e-09
   heap_bh6_w60_2 <= CompressorOut_bh6_41_41(1); -- cycle= 0 cp= 2.38252e-09
   heap_bh6_w61_2 <= CompressorOut_bh6_41_41(2); -- cycle= 0 cp= 2.38252e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_42_82 <= heap_bh6_w49_4 & heap_bh6_w49_3 & heap_bh6_w49_5;
   CompressorIn_bh6_42_83 <= heap_bh6_w50_0 & heap_bh6_w50_3;
      Compressor_bh6_42: Compressor_23_3
      port map ( R => CompressorOut_bh6_42_42,
                 X0 => CompressorIn_bh6_42_82,
                 X1 => CompressorIn_bh6_42_83);
   heap_bh6_w49_6 <= CompressorOut_bh6_42_42(0); -- cycle= 0 cp= 2.75478e-09
   heap_bh6_w50_4 <= CompressorOut_bh6_42_42(1); -- cycle= 0 cp= 2.75478e-09
   heap_bh6_w51_5 <= CompressorOut_bh6_42_42(2); -- cycle= 0 cp= 2.75478e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_43_84 <= heap_bh6_w61_1 & heap_bh6_w61_0 & heap_bh6_w61_2;
   CompressorIn_bh6_43_85 <= heap_bh6_w62_1 & heap_bh6_w62_0;
      Compressor_bh6_43: Compressor_23_3
      port map ( R => CompressorOut_bh6_43_43,
                 X0 => CompressorIn_bh6_43_84,
                 X1 => CompressorIn_bh6_43_85);
   heap_bh6_w61_3 <= CompressorOut_bh6_43_43(0); -- cycle= 0 cp= 2.75478e-09
   heap_bh6_w62_2 <= CompressorOut_bh6_43_43(1); -- cycle= 0 cp= 2.75478e-09
   heap_bh6_w63_2 <= CompressorOut_bh6_43_43(2); -- cycle= 0 cp= 2.75478e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_44_86 <= heap_bh6_w46_6 & heap_bh6_w46_5 & heap_bh6_w46_7;
   CompressorIn_bh6_44_87(0) <= heap_bh6_w47_7;
      Compressor_bh6_44: Compressor_13_3
      port map ( R => CompressorOut_bh6_44_44,
                 X0 => CompressorIn_bh6_44_86,
                 X1 => CompressorIn_bh6_44_87);
   heap_bh6_w46_8 <= CompressorOut_bh6_44_44(0); -- cycle= 0 cp= 2.75478e-09
   heap_bh6_w47_8 <= CompressorOut_bh6_44_44(1); -- cycle= 0 cp= 2.75478e-09
   heap_bh6_w48_6 <= CompressorOut_bh6_44_44(2); -- cycle= 0 cp= 2.75478e-09

   ----------------Synchro barrier, entering cycle 0----------------
   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_45_88 <= heap_bh6_w51_4_d1 & heap_bh6_w51_3_d1 & heap_bh6_w51_5_d1;
   CompressorIn_bh6_45_89 <= heap_bh6_w52_0_d1 & heap_bh6_w52_3_d1;
      Compressor_bh6_45: Compressor_23_3
      port map ( R => CompressorOut_bh6_45_45,
                 X0 => CompressorIn_bh6_45_88,
                 X1 => CompressorIn_bh6_45_89);
   heap_bh6_w51_6 <= CompressorOut_bh6_45_45(0); -- cycle= 1 cp= 0
   heap_bh6_w52_4 <= CompressorOut_bh6_45_45(1); -- cycle= 1 cp= 0
   heap_bh6_w53_5 <= CompressorOut_bh6_45_45(2); -- cycle= 1 cp= 0

   ----------------Synchro barrier, entering cycle 0----------------
   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_46_90 <= heap_bh6_w63_1_d1 & heap_bh6_w63_0_d1 & heap_bh6_w63_2_d1;
   CompressorIn_bh6_46_91 <= heap_bh6_w64_1_d1 & heap_bh6_w64_0_d1;
      Compressor_bh6_46: Compressor_23_3
      port map ( R => CompressorOut_bh6_46_46,
                 X0 => CompressorIn_bh6_46_90,
                 X1 => CompressorIn_bh6_46_91);
   heap_bh6_w63_3 <= CompressorOut_bh6_46_46(0); -- cycle= 1 cp= 0
   heap_bh6_w64_2 <= CompressorOut_bh6_46_46(1); -- cycle= 1 cp= 0
   heap_bh6_w65_1 <= CompressorOut_bh6_46_46(2); -- cycle= 1 cp= 0

   ----------------Synchro barrier, entering cycle 0----------------
   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_47_92 <= heap_bh6_w48_3_d1 & heap_bh6_w48_5_d1 & heap_bh6_w48_6_d1;
   CompressorIn_bh6_47_93(0) <= heap_bh6_w49_6_d1;
      Compressor_bh6_47: Compressor_13_3
      port map ( R => CompressorOut_bh6_47_47,
                 X0 => CompressorIn_bh6_47_92,
                 X1 => CompressorIn_bh6_47_93);
   heap_bh6_w48_7 <= CompressorOut_bh6_47_47(0); -- cycle= 1 cp= 0
   heap_bh6_w49_7 <= CompressorOut_bh6_47_47(1); -- cycle= 1 cp= 0
   heap_bh6_w50_5 <= CompressorOut_bh6_47_47(2); -- cycle= 1 cp= 0

   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_48_94 <= heap_bh6_w53_4_d1 & heap_bh6_w53_3_d1 & heap_bh6_w53_5;
   CompressorIn_bh6_48_95 <= heap_bh6_w54_0_d1 & heap_bh6_w54_3_d1;
      Compressor_bh6_48: Compressor_23_3
      port map ( R => CompressorOut_bh6_48_48,
                 X0 => CompressorIn_bh6_48_94,
                 X1 => CompressorIn_bh6_48_95);
   heap_bh6_w53_6 <= CompressorOut_bh6_48_48(0); -- cycle= 1 cp= 3.7226e-10
   heap_bh6_w54_4 <= CompressorOut_bh6_48_48(1); -- cycle= 1 cp= 3.7226e-10
   heap_bh6_w55_5 <= CompressorOut_bh6_48_48(2); -- cycle= 1 cp= 3.7226e-10

   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_49_96 <= heap_bh6_w55_4_d1 & heap_bh6_w55_3_d1 & heap_bh6_w55_5;
   CompressorIn_bh6_49_97 <= heap_bh6_w56_0_d1 & heap_bh6_w56_3_d1;
      Compressor_bh6_49: Compressor_23_3
      port map ( R => CompressorOut_bh6_49_49,
                 X0 => CompressorIn_bh6_49_96,
                 X1 => CompressorIn_bh6_49_97);
   heap_bh6_w55_6 <= CompressorOut_bh6_49_49(0); -- cycle= 1 cp= 7.4452e-10
   heap_bh6_w56_4 <= CompressorOut_bh6_49_49(1); -- cycle= 1 cp= 7.4452e-10
   heap_bh6_w57_5 <= CompressorOut_bh6_49_49(2); -- cycle= 1 cp= 7.4452e-10

   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_50_98 <= heap_bh6_w57_4_d1 & heap_bh6_w57_3_d1 & heap_bh6_w57_5;
   CompressorIn_bh6_50_99(0) <= heap_bh6_w58_2_d1;
      Compressor_bh6_50: Compressor_13_3
      port map ( R => CompressorOut_bh6_50_50,
                 X0 => CompressorIn_bh6_50_98,
                 X1 => CompressorIn_bh6_50_99);
   heap_bh6_w57_6 <= CompressorOut_bh6_50_50(0); -- cycle= 1 cp= 1.11678e-09
   heap_bh6_w58_3 <= CompressorOut_bh6_50_50(1); -- cycle= 1 cp= 1.11678e-09
   heap_bh6_w59_4 <= CompressorOut_bh6_50_50(2); -- cycle= 1 cp= 1.11678e-09
   ----------------Synchro barrier, entering cycle 1----------------
   finalAdderIn0_bh6 <= "0" & heap_bh6_w81_0_d1 & heap_bh6_w80_0_d1 & heap_bh6_w79_0_d1 & heap_bh6_w78_0_d1 & heap_bh6_w77_0_d1 & heap_bh6_w76_0_d1 & heap_bh6_w75_0_d1 & heap_bh6_w74_0_d1 & heap_bh6_w73_0_d1 & heap_bh6_w72_0_d1 & heap_bh6_w71_0_d1 & heap_bh6_w70_0_d1 & heap_bh6_w69_0_d1 & heap_bh6_w68_0_d1 & heap_bh6_w67_0_d1 & heap_bh6_w66_0_d1 & heap_bh6_w65_0_d1 & heap_bh6_w64_2 & heap_bh6_w63_3 & heap_bh6_w62_2_d1 & heap_bh6_w61_3_d1 & heap_bh6_w60_2_d1 & heap_bh6_w59_3_d1 & heap_bh6_w58_3 & heap_bh6_w57_6 & heap_bh6_w56_4 & heap_bh6_w55_6 & heap_bh6_w54_4 & heap_bh6_w53_6 & heap_bh6_w52_4 & heap_bh6_w51_6 & heap_bh6_w50_4_d1 & heap_bh6_w49_7 & heap_bh6_w48_7 & heap_bh6_w47_8_d1 & heap_bh6_w46_8_d1 & heap_bh6_w45_6_d1 & heap_bh6_w44_13_d1 & heap_bh6_w43_9_d1 & heap_bh6_w42_14_d1 & heap_bh6_w41_13_d1 & heap_bh6_w40_16_d1 & heap_bh6_w39_12_d1 & heap_bh6_w38_14_d1 & heap_bh6_w37_8_d1 & heap_bh6_w36_10_d1 & heap_bh6_w35_8_d1 & heap_bh6_w34_5_d1 & heap_bh6_w33_0_d1 & heap_bh6_w32_4_d1 & heap_bh6_w31_0_d1 & heap_bh6_w30_4_d1 & heap_bh6_w29_0_d1 & heap_bh6_w28_4_d1 & heap_bh6_w27_0_d1 & heap_bh6_w26_4_d1 & heap_bh6_w25_0_d1 & heap_bh6_w24_3_d1 & heap_bh6_w23_1_d1 & heap_bh6_w22_1_d1 & heap_bh6_w21_1_d1 & heap_bh6_w20_1_d1 & heap_bh6_w19_1_d1 & heap_bh6_w18_1_d1 & heap_bh6_w17_1_d1;
   finalAdderIn1_bh6 <= "0" & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & heap_bh6_w65_1 & '0' & '0' & '0' & '0' & '0' & heap_bh6_w59_4 & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & heap_bh6_w50_5 & '0' & '0' & '0' & '0' & heap_bh6_w45_9_d1 & heap_bh6_w44_12_d1 & heap_bh6_w43_12_d1 & heap_bh6_w42_13_d1 & heap_bh6_w41_16_d1 & heap_bh6_w40_15_d1 & heap_bh6_w39_15_d1 & heap_bh6_w38_13_d1 & heap_bh6_w37_11_d1 & '0' & heap_bh6_w35_7_d1 & heap_bh6_w34_4_d1 & heap_bh6_w33_3_d1 & heap_bh6_w32_3_d1 & heap_bh6_w31_3_d1 & heap_bh6_w30_3_d1 & heap_bh6_w29_3_d1 & heap_bh6_w28_3_d1 & heap_bh6_w27_3_d1 & heap_bh6_w26_3_d1 & heap_bh6_w25_3_d1 & '0' & heap_bh6_w23_0_d1 & heap_bh6_w22_0_d1 & heap_bh6_w21_0_d1 & heap_bh6_w20_0_d1 & heap_bh6_w19_0_d1 & heap_bh6_w18_0_d1 & heap_bh6_w17_0_d1;
   finalAdderCin_bh6 <= '0';
      Adder_final6_0: IntAdder_66_f300_uid138  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 Cin => finalAdderCin_bh6,
                 R => finalAdderOut_bh6,
                 X => finalAdderIn0_bh6,
                 Y => finalAdderIn1_bh6);
   -- concatenate all the compressed chunks
   CompressionResult6 <= finalAdderOut_bh6 & tempR_bh6_0_d1;
   -- End of code generated by BitHeap::generateCompressorVHDL
   R <= CompressionResult6(81 downto 0);
end architecture;

--------------------------------------------------------------------------------
--                          IntAdder_52_f300_uid148
--                    (IntAdderAlternative_52_F300_uid152)
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

entity IntAdder_52_f300_uid148 is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(51 downto 0);
          Y : in  std_logic_vector(51 downto 0);
          Cin : in  std_logic;
          R : out  std_logic_vector(51 downto 0)   );
end entity;

architecture arch of IntAdder_52_f300_uid148 is
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
--                    (FPMult_10_40_10_40_10_40_F300_uid2)
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
          X : in  std_logic_vector(10+40+2 downto 0);
          Y : in  std_logic_vector(10+40+2 downto 0);
          R : out  std_logic_vector(10+40+2 downto 0)   );
end entity;

architecture arch of fmul is
   component IntMultiplier_UsingDSP_41_41_82_unsigned_F300_uid4 is
      port ( clk, rst : in std_logic;
             X : in  std_logic_vector(40 downto 0);
             Y : in  std_logic_vector(40 downto 0);
             R : out  std_logic_vector(81 downto 0)   );
   end component;

   component IntAdder_52_f300_uid148 is
      port ( clk, rst : in std_logic;
             X : in  std_logic_vector(51 downto 0);
             Y : in  std_logic_vector(51 downto 0);
             Cin : in  std_logic;
             R : out  std_logic_vector(51 downto 0)   );
   end component;

signal sign, sign_d1 :  std_logic;
signal expX :  std_logic_vector(9 downto 0);
signal expY :  std_logic_vector(9 downto 0);
signal expSumPreSub :  std_logic_vector(11 downto 0);
signal bias :  std_logic_vector(11 downto 0);
signal expSum, expSum_d1 :  std_logic_vector(11 downto 0);
signal sigX :  std_logic_vector(40 downto 0);
signal sigY :  std_logic_vector(40 downto 0);
signal sigProd :  std_logic_vector(81 downto 0);
signal excSel :  std_logic_vector(3 downto 0);
signal exc, exc_d1 :  std_logic_vector(1 downto 0);
signal norm :  std_logic;
signal expPostNorm :  std_logic_vector(11 downto 0);
signal sigProdExt :  std_logic_vector(81 downto 0);
signal expSig :  std_logic_vector(51 downto 0);
signal sticky :  std_logic;
signal guard :  std_logic;
signal round :  std_logic;
signal expSigPostRound :  std_logic_vector(51 downto 0);
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
   sign <= X(50) xor Y(50);
   expX <= X(49 downto 40);
   expY <= Y(49 downto 40);
   expSumPreSub <= ("00" & expX) + ("00" & expY);
   bias <= CONV_STD_LOGIC_VECTOR(511,12);
   expSum <= expSumPreSub - bias;
   ----------------Synchro barrier, entering cycle 0----------------
   sigX <= "1" & X(39 downto 0);
   sigY <= "1" & Y(39 downto 0);
   SignificandMultiplication: IntMultiplier_UsingDSP_41_41_82_unsigned_F300_uid4  -- pipelineDepth=1 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 R => sigProd,
                 X => sigX,
                 Y => sigY);
   ----------------Synchro barrier, entering cycle 1----------------
   ----------------Synchro barrier, entering cycle 0----------------
   excSel <= X(52 downto 51) & Y(52 downto 51);
   with excSel select 
   exc <= "00" when  "0000" | "0001" | "0100", 
          "01" when "0101",
          "10" when "0110" | "1001" | "1010" ,
          "11" when others;
   ----------------Synchro barrier, entering cycle 1----------------
   norm <= sigProd(81);
   -- exponent update
   expPostNorm <= expSum_d1 + ("00000000000" & norm);
   ----------------Synchro barrier, entering cycle 1----------------
   -- significand normalization shift
   sigProdExt <= sigProd(80 downto 0) & "0" when norm='1' else
                         sigProd(79 downto 0) & "00";
   expSig <= expPostNorm & sigProdExt(81 downto 42);
   sticky <= sigProdExt(41);
   guard <= '0' when sigProdExt(40 downto 0)="00000000000000000000000000000000000000000" else '1';
   round <= sticky and ( (guard and not(sigProdExt(42))) or (sigProdExt(42) ))  ;
      RoundingAdder: IntAdder_52_f300_uid148  -- pipelineDepth=0 maxInDelay=2.00478e-09
      port map ( clk  => clk,
                 rst  => rst,
                 Cin => round,
                 R => expSigPostRound,
                 X => expSig,
                 Y => "0000000000000000000000000000000000000000000000000000");
   with expSigPostRound(51 downto 50) select
   excPostNorm <=  "01"  when  "00",
                               "10"             when "01", 
                               "00"             when "11"|"10",
                               "11"             when others;
   with exc_d1 select 
   finalExc <= exc_d1 when  "11"|"10"|"00",
                       excPostNorm when others; 
   R <= finalExc & sign_d1 & expSigPostRound(49 downto 0);
end architecture;

