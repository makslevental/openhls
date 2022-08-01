--------------------------------------------------------------------------------
--                     SmallMultTableP3x3r6XuYu_F600_uid9
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Florent de Dinechin (2007-2012)
--------------------------------------------------------------------------------
library ieee; 
use ieee.std_logic_1164.all;
library work;
entity SmallMultTableP3x3r6XuYu_F600_uid9 is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(5 downto 0);
          Y : out  std_logic_vector(5 downto 0)   );
end entity;

architecture arch of SmallMultTableP3x3r6XuYu_F600_uid9 is
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
--                           IntAdder_9_f600_uid32
--                      (IntAdderClassical_9_F600_uid34)
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

entity IntAdder_9_f600_uid32 is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(8 downto 0);
          Y : in  std_logic_vector(8 downto 0);
          Cin : in  std_logic;
          R : out  std_logic_vector(8 downto 0)   );
end entity;

architecture arch of IntAdder_9_f600_uid32 is
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
--              IntMultiplier_UsingDSP_6_6_12_unsigned_F600_uid4
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

entity IntMultiplier_UsingDSP_6_6_12_unsigned_F600_uid4 is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(5 downto 0);
          Y : in  std_logic_vector(5 downto 0);
          R : out  std_logic_vector(11 downto 0)   );
end entity;

architecture arch of IntMultiplier_UsingDSP_6_6_12_unsigned_F600_uid4 is
   component IntAdder_9_f600_uid32 is
      port ( clk, rst : in std_logic;
             X : in  std_logic_vector(8 downto 0);
             Y : in  std_logic_vector(8 downto 0);
             Cin : in  std_logic;
             R : out  std_logic_vector(8 downto 0)   );
   end component;

   component SmallMultTableP3x3r6XuYu_F600_uid9 is
      port ( clk, rst : in std_logic;
             X : in  std_logic_vector(5 downto 0);
             Y : out  std_logic_vector(5 downto 0)   );
   end component;

   component Compressor_23_3 is
      port ( X0 : in  std_logic_vector(2 downto 0);
             X1 : in  std_logic_vector(1 downto 0);
             R : out  std_logic_vector(2 downto 0)   );
   end component;

signal XX_m5 :  std_logic_vector(5 downto 0);
signal YY_m5 :  std_logic_vector(5 downto 0);
signal Xp_m5b7 :  std_logic_vector(5 downto 0);
signal Yp_m5b7 :  std_logic_vector(5 downto 0);
signal x_m5b7_0 :  std_logic_vector(2 downto 0);
signal x_m5b7_1 :  std_logic_vector(2 downto 0);
signal y_m5b7_0 :  std_logic_vector(2 downto 0);
signal y_m5b7_1 :  std_logic_vector(2 downto 0);
signal Y0X0_7_m5 :  std_logic_vector(5 downto 0);
signal PP7X0Y0_m5 :  std_logic_vector(5 downto 0);
signal heap_bh6_w0_0 :  std_logic;
signal heap_bh6_w1_0 :  std_logic;
signal heap_bh6_w2_0 :  std_logic;
signal heap_bh6_w3_0 :  std_logic;
signal heap_bh6_w4_0, heap_bh6_w4_0_d1 :  std_logic;
signal heap_bh6_w5_0 :  std_logic;
signal Y0X1_7_m5 :  std_logic_vector(5 downto 0);
signal PP7X1Y0_m5 :  std_logic_vector(5 downto 0);
signal heap_bh6_w3_1 :  std_logic;
signal heap_bh6_w4_1 :  std_logic;
signal heap_bh6_w5_1 :  std_logic;
signal heap_bh6_w6_0, heap_bh6_w6_0_d1 :  std_logic;
signal heap_bh6_w7_0 :  std_logic;
signal heap_bh6_w8_0, heap_bh6_w8_0_d1 :  std_logic;
signal Y1X0_7_m5 :  std_logic_vector(5 downto 0);
signal PP7X0Y1_m5 :  std_logic_vector(5 downto 0);
signal heap_bh6_w3_2 :  std_logic;
signal heap_bh6_w4_2 :  std_logic;
signal heap_bh6_w5_2 :  std_logic;
signal heap_bh6_w6_1 :  std_logic;
signal heap_bh6_w7_1 :  std_logic;
signal heap_bh6_w8_1 :  std_logic;
signal Y1X1_7_m5 :  std_logic_vector(5 downto 0);
signal PP7X1Y1_m5 :  std_logic_vector(5 downto 0);
signal heap_bh6_w6_2 :  std_logic;
signal heap_bh6_w7_2 :  std_logic;
signal heap_bh6_w8_2 :  std_logic;
signal heap_bh6_w9_0, heap_bh6_w9_0_d1 :  std_logic;
signal heap_bh6_w10_0, heap_bh6_w10_0_d1 :  std_logic;
signal heap_bh6_w11_0, heap_bh6_w11_0_d1 :  std_logic;
signal tempR_bh6_0, tempR_bh6_0_d1 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_0_0 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_0_1 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_0_0 :  std_logic_vector(2 downto 0);
signal heap_bh6_w3_3 :  std_logic;
signal heap_bh6_w4_3, heap_bh6_w4_3_d1 :  std_logic;
signal heap_bh6_w5_3, heap_bh6_w5_3_d1 :  std_logic;
signal CompressorIn_bh6_1_2 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_1_3 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_1_1 :  std_logic_vector(2 downto 0);
signal heap_bh6_w5_4, heap_bh6_w5_4_d1 :  std_logic;
signal heap_bh6_w6_3, heap_bh6_w6_3_d1 :  std_logic;
signal heap_bh6_w7_3, heap_bh6_w7_3_d1 :  std_logic;
signal CompressorIn_bh6_2_4 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_2_5 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_2_2 :  std_logic_vector(2 downto 0);
signal heap_bh6_w7_4, heap_bh6_w7_4_d1 :  std_logic;
signal heap_bh6_w8_3, heap_bh6_w8_3_d1 :  std_logic;
signal heap_bh6_w9_1, heap_bh6_w9_1_d1 :  std_logic;
signal finalAdderIn0_bh6 :  std_logic_vector(8 downto 0);
signal finalAdderIn1_bh6 :  std_logic_vector(8 downto 0);
signal finalAdderCin_bh6 :  std_logic;
signal finalAdderOut_bh6 :  std_logic_vector(8 downto 0);
signal tempR_bh6_1, tempR_bh6_1_d1 :  std_logic;
signal CompressionResult6 :  std_logic_vector(12 downto 0);
attribute rom_extract: string;
attribute rom_style: string;
attribute rom_extract of SmallMultTableP3x3r6XuYu_F600_uid9: component is "yes";
attribute rom_style of SmallMultTableP3x3r6XuYu_F600_uid9: component is "distributed";
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
            heap_bh6_w4_0_d1 <=  heap_bh6_w4_0;
            heap_bh6_w6_0_d1 <=  heap_bh6_w6_0;
            heap_bh6_w8_0_d1 <=  heap_bh6_w8_0;
            heap_bh6_w9_0_d1 <=  heap_bh6_w9_0;
            heap_bh6_w10_0_d1 <=  heap_bh6_w10_0;
            heap_bh6_w11_0_d1 <=  heap_bh6_w11_0;
            tempR_bh6_0_d1 <=  tempR_bh6_0;
            heap_bh6_w4_3_d1 <=  heap_bh6_w4_3;
            heap_bh6_w5_3_d1 <=  heap_bh6_w5_3;
            heap_bh6_w5_4_d1 <=  heap_bh6_w5_4;
            heap_bh6_w6_3_d1 <=  heap_bh6_w6_3;
            heap_bh6_w7_3_d1 <=  heap_bh6_w7_3;
            heap_bh6_w7_4_d1 <=  heap_bh6_w7_4;
            heap_bh6_w8_3_d1 <=  heap_bh6_w8_3;
            heap_bh6_w9_1_d1 <=  heap_bh6_w9_1;
            tempR_bh6_1_d1 <=  tempR_bh6_1;
         end if;
      end process;
   XX_m5 <= X ;
   YY_m5 <= Y ;
   -- code generated by IntMultiplier::buildHeapLogicOnly()
   -- buildheaplogiconly called for lsbX=0 lsbY=0 msbX=6 msbY=6
   Xp_m5b7 <= XX_m5(5 downto 0) & "";
   Yp_m5b7 <= YY_m5(5 downto 0) & "";
   x_m5b7_0 <= Xp_m5b7(2 downto 0);
   x_m5b7_1 <= Xp_m5b7(5 downto 3);
   y_m5b7_0 <= Yp_m5b7(2 downto 0);
   y_m5b7_1 <= Yp_m5b7(5 downto 3);
   ----------------Synchro barrier, entering cycle 0----------------
   -- Partial product row number 0
   Y0X0_7_m5 <= y_m5b7_0 & x_m5b7_0;
   PP_m5_7X0Y0_Tbl: SmallMultTableP3x3r6XuYu_F600_uid9  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 X => Y0X0_7_m5,
                 Y => PP7X0Y0_m5);
   -- Adding the relevant bits to the heap of bits
   heap_bh6_w0_0 <= PP7X0Y0_m5(0); -- cycle= 0 cp= 3.7852e-10
   heap_bh6_w1_0 <= PP7X0Y0_m5(1); -- cycle= 0 cp= 3.7852e-10
   heap_bh6_w2_0 <= PP7X0Y0_m5(2); -- cycle= 0 cp= 3.7852e-10
   heap_bh6_w3_0 <= PP7X0Y0_m5(3); -- cycle= 0 cp= 3.7852e-10
   heap_bh6_w4_0 <= PP7X0Y0_m5(4); -- cycle= 0 cp= 3.7852e-10
   heap_bh6_w5_0 <= PP7X0Y0_m5(5); -- cycle= 0 cp= 3.7852e-10

   Y0X1_7_m5 <= y_m5b7_0 & x_m5b7_1;
   PP_m5_7X1Y0_Tbl: SmallMultTableP3x3r6XuYu_F600_uid9  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 X => Y0X1_7_m5,
                 Y => PP7X1Y0_m5);
   -- Adding the relevant bits to the heap of bits
   heap_bh6_w3_1 <= PP7X1Y0_m5(0); -- cycle= 0 cp= 3.7852e-10
   heap_bh6_w4_1 <= PP7X1Y0_m5(1); -- cycle= 0 cp= 3.7852e-10
   heap_bh6_w5_1 <= PP7X1Y0_m5(2); -- cycle= 0 cp= 3.7852e-10
   heap_bh6_w6_0 <= PP7X1Y0_m5(3); -- cycle= 0 cp= 3.7852e-10
   heap_bh6_w7_0 <= PP7X1Y0_m5(4); -- cycle= 0 cp= 3.7852e-10
   heap_bh6_w8_0 <= PP7X1Y0_m5(5); -- cycle= 0 cp= 3.7852e-10

   -- Partial product row number 1
   Y1X0_7_m5 <= y_m5b7_1 & x_m5b7_0;
   PP_m5_7X0Y1_Tbl: SmallMultTableP3x3r6XuYu_F600_uid9  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 X => Y1X0_7_m5,
                 Y => PP7X0Y1_m5);
   -- Adding the relevant bits to the heap of bits
   heap_bh6_w3_2 <= PP7X0Y1_m5(0); -- cycle= 0 cp= 3.7852e-10
   heap_bh6_w4_2 <= PP7X0Y1_m5(1); -- cycle= 0 cp= 3.7852e-10
   heap_bh6_w5_2 <= PP7X0Y1_m5(2); -- cycle= 0 cp= 3.7852e-10
   heap_bh6_w6_1 <= PP7X0Y1_m5(3); -- cycle= 0 cp= 3.7852e-10
   heap_bh6_w7_1 <= PP7X0Y1_m5(4); -- cycle= 0 cp= 3.7852e-10
   heap_bh6_w8_1 <= PP7X0Y1_m5(5); -- cycle= 0 cp= 3.7852e-10

   Y1X1_7_m5 <= y_m5b7_1 & x_m5b7_1;
   PP_m5_7X1Y1_Tbl: SmallMultTableP3x3r6XuYu_F600_uid9  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 X => Y1X1_7_m5,
                 Y => PP7X1Y1_m5);
   -- Adding the relevant bits to the heap of bits
   heap_bh6_w6_2 <= PP7X1Y1_m5(0); -- cycle= 0 cp= 3.7852e-10
   heap_bh6_w7_2 <= PP7X1Y1_m5(1); -- cycle= 0 cp= 3.7852e-10
   heap_bh6_w8_2 <= PP7X1Y1_m5(2); -- cycle= 0 cp= 3.7852e-10
   heap_bh6_w9_0 <= PP7X1Y1_m5(3); -- cycle= 0 cp= 3.7852e-10
   heap_bh6_w10_0 <= PP7X1Y1_m5(4); -- cycle= 0 cp= 3.7852e-10
   heap_bh6_w11_0 <= PP7X1Y1_m5(5); -- cycle= 0 cp= 3.7852e-10

   
   -- Beginning of code generated by BitHeap::generateCompressorVHDL
   -- code generated by BitHeap::generateSupertileVHDL()
   ----------------Synchro barrier, entering cycle 0----------------

   -- Adding the constant bits
      -- All the constant bits are zero, nothing to add

   ----------------Synchro barrier, entering cycle 0----------------
   ----------------Synchro barrier, entering cycle 0----------------
   tempR_bh6_0 <= heap_bh6_w2_0 & heap_bh6_w1_0 & heap_bh6_w0_0; -- already compressed

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_0_0 <= heap_bh6_w3_2 & heap_bh6_w3_1 & heap_bh6_w3_0;
   CompressorIn_bh6_0_1 <= heap_bh6_w4_2 & heap_bh6_w4_1;
      Compressor_bh6_0: Compressor_23_3
      port map ( R => CompressorOut_bh6_0_0,
                 X0 => CompressorIn_bh6_0_0,
                 X1 => CompressorIn_bh6_0_1);
   heap_bh6_w3_3 <= CompressorOut_bh6_0_0(0); -- cycle= 0 cp= 7.5078e-10
   heap_bh6_w4_3 <= CompressorOut_bh6_0_0(1); -- cycle= 0 cp= 7.5078e-10
   heap_bh6_w5_3 <= CompressorOut_bh6_0_0(2); -- cycle= 0 cp= 7.5078e-10

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_1_2 <= heap_bh6_w5_2 & heap_bh6_w5_1 & heap_bh6_w5_0;
   CompressorIn_bh6_1_3 <= heap_bh6_w6_2 & heap_bh6_w6_1;
      Compressor_bh6_1: Compressor_23_3
      port map ( R => CompressorOut_bh6_1_1,
                 X0 => CompressorIn_bh6_1_2,
                 X1 => CompressorIn_bh6_1_3);
   heap_bh6_w5_4 <= CompressorOut_bh6_1_1(0); -- cycle= 0 cp= 7.5078e-10
   heap_bh6_w6_3 <= CompressorOut_bh6_1_1(1); -- cycle= 0 cp= 7.5078e-10
   heap_bh6_w7_3 <= CompressorOut_bh6_1_1(2); -- cycle= 0 cp= 7.5078e-10

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_2_4 <= heap_bh6_w7_2 & heap_bh6_w7_1 & heap_bh6_w7_0;
   CompressorIn_bh6_2_5 <= heap_bh6_w8_2 & heap_bh6_w8_1;
      Compressor_bh6_2: Compressor_23_3
      port map ( R => CompressorOut_bh6_2_2,
                 X0 => CompressorIn_bh6_2_4,
                 X1 => CompressorIn_bh6_2_5);
   heap_bh6_w7_4 <= CompressorOut_bh6_2_2(0); -- cycle= 0 cp= 7.5078e-10
   heap_bh6_w8_3 <= CompressorOut_bh6_2_2(1); -- cycle= 0 cp= 7.5078e-10
   heap_bh6_w9_1 <= CompressorOut_bh6_2_2(2); -- cycle= 0 cp= 7.5078e-10
   ----------------Synchro barrier, entering cycle 0----------------
   ----------------Synchro barrier, entering cycle 1----------------
   finalAdderIn0_bh6 <= "0" & heap_bh6_w11_0_d1 & heap_bh6_w10_0_d1 & heap_bh6_w9_0_d1 & heap_bh6_w8_0_d1 & heap_bh6_w7_4_d1 & heap_bh6_w6_0_d1 & heap_bh6_w5_4_d1 & heap_bh6_w4_0_d1;
   finalAdderIn1_bh6 <= "0" & '0' & '0' & heap_bh6_w9_1_d1 & heap_bh6_w8_3_d1 & heap_bh6_w7_3_d1 & heap_bh6_w6_3_d1 & heap_bh6_w5_3_d1 & heap_bh6_w4_3_d1;
   finalAdderCin_bh6 <= '0';
      Adder_final6_0: IntAdder_9_f600_uid32  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 Cin => finalAdderCin_bh6,
                 R => finalAdderOut_bh6,
                 X => finalAdderIn0_bh6,
                 Y => finalAdderIn1_bh6);
   ----------------Synchro barrier, entering cycle 0----------------
   tempR_bh6_1 <= heap_bh6_w3_3; -- already compressed
   -- concatenate all the compressed chunks
   ----------------Synchro barrier, entering cycle 1----------------
   CompressionResult6 <= finalAdderOut_bh6 & tempR_bh6_1_d1 & tempR_bh6_0_d1;
   -- End of code generated by BitHeap::generateCompressorVHDL
   R <= CompressionResult6(11 downto 0);
end architecture;

--------------------------------------------------------------------------------
--                           IntAdder_12_f600_uid42
--                     (IntAdderClassical_12_F600_uid44)
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

entity IntAdder_12_f600_uid42 is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(11 downto 0);
          Y : in  std_logic_vector(11 downto 0);
          Cin : in  std_logic;
          R : out  std_logic_vector(11 downto 0)   );
end entity;

architecture arch of IntAdder_12_f600_uid42 is
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
--                                    fmul
--                       (FPMult_5_5_5_5_5_5_F600_uid2)
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Bogdan Pasca, Florent de Dinechin 2008-2011
--------------------------------------------------------------------------------
-- Pipeline depth: 2 cycles

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity fmul is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(5+5+2 downto 0);
          Y : in  std_logic_vector(5+5+2 downto 0);
          R : out  std_logic_vector(5+5+2 downto 0)   );
end entity;

architecture arch of fmul is
   component IntMultiplier_UsingDSP_6_6_12_unsigned_F600_uid4 is
      port ( clk, rst : in std_logic;
             X : in  std_logic_vector(5 downto 0);
             Y : in  std_logic_vector(5 downto 0);
             R : out  std_logic_vector(11 downto 0)   );
   end component;

   component IntAdder_12_f600_uid42 is
      port ( clk, rst : in std_logic;
             X : in  std_logic_vector(11 downto 0);
             Y : in  std_logic_vector(11 downto 0);
             Cin : in  std_logic;
             R : out  std_logic_vector(11 downto 0)   );
   end component;

signal sign, sign_d1, sign_d2 :  std_logic;
signal expX :  std_logic_vector(4 downto 0);
signal expY :  std_logic_vector(4 downto 0);
signal expSumPreSub, expSumPreSub_d1 :  std_logic_vector(6 downto 0);
signal bias, bias_d1 :  std_logic_vector(6 downto 0);
signal expSum :  std_logic_vector(6 downto 0);
signal sigX :  std_logic_vector(5 downto 0);
signal sigY :  std_logic_vector(5 downto 0);
signal sigProd :  std_logic_vector(11 downto 0);
signal excSel :  std_logic_vector(3 downto 0);
signal exc, exc_d1, exc_d2 :  std_logic_vector(1 downto 0);
signal norm :  std_logic;
signal expPostNorm :  std_logic_vector(6 downto 0);
signal sigProdExt, sigProdExt_d1 :  std_logic_vector(11 downto 0);
signal expSig, expSig_d1 :  std_logic_vector(11 downto 0);
signal sticky, sticky_d1 :  std_logic;
signal guard :  std_logic;
signal round :  std_logic;
signal expSigPostRound :  std_logic_vector(11 downto 0);
signal excPostNorm :  std_logic_vector(1 downto 0);
signal finalExc :  std_logic_vector(1 downto 0);
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
            sign_d1 <=  sign;
            sign_d2 <=  sign_d1;
            expSumPreSub_d1 <=  expSumPreSub;
            bias_d1 <=  bias;
            exc_d1 <=  exc;
            exc_d2 <=  exc_d1;
            sigProdExt_d1 <=  sigProdExt;
            expSig_d1 <=  expSig;
            sticky_d1 <=  sticky;
         end if;
      end process;
   sign <= X(10) xor Y(10);
   expX <= X(9 downto 5);
   expY <= Y(9 downto 5);
   expSumPreSub <= ("00" & expX) + ("00" & expY);
   bias <= CONV_STD_LOGIC_VECTOR(15,7);
   ----------------Synchro barrier, entering cycle 1----------------
   expSum <= expSumPreSub_d1 - bias_d1;
   ----------------Synchro barrier, entering cycle 0----------------
   sigX <= "1" & X(4 downto 0);
   sigY <= "1" & Y(4 downto 0);
   SignificandMultiplication: IntMultiplier_UsingDSP_6_6_12_unsigned_F600_uid4  -- pipelineDepth=1 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 R => sigProd,
                 X => sigX,
                 Y => sigY);
   ----------------Synchro barrier, entering cycle 1----------------
   ----------------Synchro barrier, entering cycle 0----------------
   excSel <= X(12 downto 11) & Y(12 downto 11);
   with excSel select 
   exc <= "00" when  "0000" | "0001" | "0100", 
          "01" when "0101",
          "10" when "0110" | "1001" | "1010" ,
          "11" when others;
   norm <= sigProd(11);
   -- exponent update
   expPostNorm <= expSum + ("000000" & norm);
   -- significand normalization shift
   sigProdExt <= sigProd(10 downto 0) & "0" when norm='1' else
                         sigProd(9 downto 0) & "00";
   expSig <= expPostNorm & sigProdExt(11 downto 7);
   sticky <= sigProdExt(6);
   ----------------Synchro barrier, entering cycle 2----------------
   guard <= '0' when sigProdExt_d1(5 downto 0)="000000" else '1';
   round <= sticky_d1 and ( (guard and not(sigProdExt_d1(7))) or (sigProdExt_d1(7) ))  ;
      RoundingAdder: IntAdder_12_f600_uid42  -- pipelineDepth=0 maxInDelay=3.7226e-10
      port map ( clk  => clk,
                 rst  => rst,
                 Cin => round,
                 R => expSigPostRound,
                 X => expSig_d1,
                 Y => "000000000000");
   with expSigPostRound(11 downto 10) select
   excPostNorm <=  "01"  when  "00",
                               "10"             when "01", 
                               "00"             when "11"|"10",
                               "11"             when others;
   with exc_d2 select 
   finalExc <= exc_d2 when  "11"|"10"|"00",
                       excPostNorm when others; 
   R <= finalExc & sign_d2 & expSigPostRound(9 downto 0);
end architecture;

