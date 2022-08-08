--------------------------------------------------------------------------------
--                       SelFunctionTable_r8_F300_uid4
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Maxime Christ, Florent de Dinechin (2015)
--------------------------------------------------------------------------------
library ieee; 
use ieee.std_logic_1164.all;
library work;
entity SelFunctionTable_r8_F300_uid4 is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(6 downto 0);
          Y : out  std_logic_vector(3 downto 0)   );
end entity;

architecture arch of SelFunctionTable_r8_F300_uid4 is
signal TableOut :  std_logic_vector(3 downto 0);
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
         end if;
      end process;
  with X select TableOut <= 
   "0000" when "0000000",
   "0000" when "0000001",
   "0000" when "0000010",
   "0000" when "0000011",
   "0001" when "0000100",
   "0001" when "0000101",
   "0001" when "0000110",
   "0001" when "0000111",
   "0001" when "0001000",
   "0001" when "0001001",
   "0001" when "0001010",
   "0001" when "0001011",
   "0010" when "0001100",
   "0010" when "0001101",
   "0010" when "0001110",
   "0010" when "0001111",
   "0011" when "0010000",
   "0011" when "0010001",
   "0010" when "0010010",
   "0010" when "0010011",
   "0011" when "0010100",
   "0011" when "0010101",
   "0011" when "0010110",
   "0011" when "0010111",
   "0100" when "0011000",
   "0100" when "0011001",
   "0011" when "0011010",
   "0011" when "0011011",
   "0101" when "0011100",
   "0100" when "0011101",
   "0100" when "0011110",
   "0100" when "0011111",
   "0101" when "0100000",
   "0101" when "0100001",
   "0101" when "0100010",
   "0100" when "0100011",
   "0110" when "0100100",
   "0110" when "0100101",
   "0101" when "0100110",
   "0101" when "0100111",
   "0111" when "0101000",
   "0110" when "0101001",
   "0110" when "0101010",
   "0101" when "0101011",
   "0111" when "0101100",
   "0111" when "0101101",
   "0110" when "0101110",
   "0110" when "0101111",
   "0111" when "0110000",
   "0111" when "0110001",
   "0111" when "0110010",
   "0110" when "0110011",
   "0111" when "0110100",
   "0111" when "0110101",
   "0111" when "0110110",
   "0111" when "0110111",
   "0111" when "0111000",
   "0111" when "0111001",
   "0111" when "0111010",
   "0111" when "0111011",
   "0111" when "0111100",
   "0111" when "0111101",
   "0111" when "0111110",
   "0111" when "0111111",
   "1001" when "1000000",
   "1001" when "1000001",
   "1001" when "1000010",
   "1001" when "1000011",
   "1001" when "1000100",
   "1001" when "1000101",
   "1001" when "1000110",
   "1001" when "1000111",
   "1001" when "1001000",
   "1001" when "1001001",
   "1001" when "1001010",
   "1001" when "1001011",
   "1001" when "1001100",
   "1001" when "1001101",
   "1001" when "1001110",
   "1001" when "1001111",
   "1001" when "1010000",
   "1001" when "1010001",
   "1010" when "1010010",
   "1010" when "1010011",
   "1001" when "1010100",
   "1010" when "1010101",
   "1010" when "1010110",
   "1010" when "1010111",
   "1010" when "1011000",
   "1010" when "1011001",
   "1011" when "1011010",
   "1011" when "1011011",
   "1011" when "1011100",
   "1011" when "1011101",
   "1011" when "1011110",
   "1011" when "1011111",
   "1011" when "1100000",
   "1011" when "1100001",
   "1100" when "1100010",
   "1100" when "1100011",
   "1100" when "1100100",
   "1100" when "1100101",
   "1100" when "1100110",
   "1100" when "1100111",
   "1100" when "1101000",
   "1101" when "1101001",
   "1101" when "1101010",
   "1101" when "1101011",
   "1101" when "1101100",
   "1101" when "1101101",
   "1101" when "1101110",
   "1101" when "1101111",
   "1110" when "1110000",
   "1110" when "1110001",
   "1110" when "1110010",
   "1110" when "1110011",
   "1110" when "1110100",
   "1110" when "1110101",
   "1110" when "1110110",
   "1110" when "1110111",
   "1111" when "1111000",
   "1111" when "1111001",
   "1111" when "1111010",
   "1111" when "1111011",
   "1111" when "1111100",
   "1111" when "1111101",
   "1111" when "1111110",
   "1111" when "1111111",
   "----" when others;
    Y <= TableOut;
end architecture;

--------------------------------------------------------------------------------
--                                    fdiv
--                           (FPDiv_7_7_F300_uid2)
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Maxime Christ, Florent de Dinechin (2015)
--------------------------------------------------------------------------------
-- Pipeline depth: 4 cycles

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity fdiv is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(7+7+2 downto 0);
          Y : in  std_logic_vector(7+7+2 downto 0);
          R : out  std_logic_vector(7+7+2 downto 0)   );
end entity;

architecture arch of fdiv is
   component SelFunctionTable_r8_F300_uid4 is
      port ( clk, rst : in std_logic;
             X : in  std_logic_vector(6 downto 0);
             Y : out  std_logic_vector(3 downto 0)   );
   end component;

signal partialFX :  std_logic_vector(7 downto 0);
signal partialFY :  std_logic_vector(7 downto 0);
signal expR0, expR0_d1, expR0_d2, expR0_d3 :  std_logic_vector(8 downto 0);
signal sR, sR_d1, sR_d2, sR_d3, sR_d4 :  std_logic;
signal exnXY :  std_logic_vector(3 downto 0);
signal exnR0, exnR0_d1, exnR0_d2, exnR0_d3, exnR0_d4 :  std_logic_vector(1 downto 0);
signal fY, fY_d1, fY_d2 :  std_logic_vector(9 downto 0);
signal fX :  std_logic_vector(10 downto 0);
signal w4 :  std_logic_vector(12 downto 0);
signal sel4 :  std_logic_vector(6 downto 0);
signal q4, q4_d1, q4_d2 :  std_logic_vector(3 downto 0);
signal w4pad :  std_logic_vector(13 downto 0);
signal w3fulla :  std_logic_vector(13 downto 0);
signal fYdec3 :  std_logic_vector(13 downto 0);
signal w3full :  std_logic_vector(13 downto 0);
signal w3, w3_d1 :  std_logic_vector(12 downto 0);
signal sel3 :  std_logic_vector(6 downto 0);
signal q3, q3_d1 :  std_logic_vector(3 downto 0);
signal w3pad :  std_logic_vector(13 downto 0);
signal w2fulla :  std_logic_vector(13 downto 0);
signal fYdec2 :  std_logic_vector(13 downto 0);
signal w2full :  std_logic_vector(13 downto 0);
signal w2 :  std_logic_vector(12 downto 0);
signal sel2 :  std_logic_vector(6 downto 0);
signal q2, q2_d1 :  std_logic_vector(3 downto 0);
signal w2pad :  std_logic_vector(13 downto 0);
signal w1fulla :  std_logic_vector(13 downto 0);
signal fYdec1 :  std_logic_vector(13 downto 0);
signal w1full :  std_logic_vector(13 downto 0);
signal w1, w1_d1 :  std_logic_vector(12 downto 0);
signal sel1 :  std_logic_vector(6 downto 0);
signal q1 :  std_logic_vector(3 downto 0);
signal w1pad :  std_logic_vector(13 downto 0);
signal w0fulla :  std_logic_vector(13 downto 0);
signal fYdec0 :  std_logic_vector(13 downto 0);
signal w0full :  std_logic_vector(13 downto 0);
signal w0 :  std_logic_vector(12 downto 0);
signal q0 :  std_logic_vector(3 downto 0);
signal qP4 :  std_logic_vector(2 downto 0);
signal qM4 :  std_logic_vector(2 downto 0);
signal qP3 :  std_logic_vector(2 downto 0);
signal qM3 :  std_logic_vector(2 downto 0);
signal qP2 :  std_logic_vector(2 downto 0);
signal qM2 :  std_logic_vector(2 downto 0);
signal qP1 :  std_logic_vector(2 downto 0);
signal qM1 :  std_logic_vector(2 downto 0);
signal qP0 :  std_logic_vector(2 downto 0);
signal qM0 :  std_logic_vector(2 downto 0);
signal qP :  std_logic_vector(14 downto 0);
signal qM :  std_logic_vector(14 downto 0);
signal fR0, fR0_d1 :  std_logic_vector(14 downto 0);
signal fR :  std_logic_vector(12 downto 0);
signal fRn1, fRn1_d1 :  std_logic_vector(10 downto 0);
signal expR1, expR1_d1 :  std_logic_vector(8 downto 0);
signal round, round_d1 :  std_logic;
signal expfrac :  std_logic_vector(15 downto 0);
signal expfracR :  std_logic_vector(15 downto 0);
signal exnR :  std_logic_vector(1 downto 0);
signal exnRfinal :  std_logic_vector(1 downto 0);
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
            expR0_d1 <=  expR0;
            expR0_d2 <=  expR0_d1;
            expR0_d3 <=  expR0_d2;
            sR_d1 <=  sR;
            sR_d2 <=  sR_d1;
            sR_d3 <=  sR_d2;
            sR_d4 <=  sR_d3;
            exnR0_d1 <=  exnR0;
            exnR0_d2 <=  exnR0_d1;
            exnR0_d3 <=  exnR0_d2;
            exnR0_d4 <=  exnR0_d3;
            fY_d1 <=  fY;
            fY_d2 <=  fY_d1;
            q4_d1 <=  q4;
            q4_d2 <=  q4_d1;
            w3_d1 <=  w3;
            q3_d1 <=  q3;
            q2_d1 <=  q2;
            w1_d1 <=  w1;
            fR0_d1 <=  fR0;
            fRn1_d1 <=  fRn1;
            expR1_d1 <=  expR1;
            round_d1 <=  round;
         end if;
      end process;
   partialFX <= "1" & X(6 downto 0);
   partialFY <= "1" & Y(6 downto 0);
   -- exponent difference, sign and exception combination computed early, to have less bits to pipeline
   expR0 <= ("00" & X(13 downto 7)) - ("00" & Y(13 downto 7));
   sR <= X(14) xor Y(14);
   -- early exception handling 
   exnXY <= X(16 downto 15) & Y(16 downto 15);
   with exnXY select
      exnR0 <= 
         "01"  when "0101",                   -- normal
         "00"  when "0001" | "0010" | "0110", -- zero
         "10"  when "0100" | "1000" | "1001", -- overflow
         "11"  when others;                   -- NaN
    -- Prescaling
   with partialFY (6 downto 5) select
      fY <= 
         ("0" & partialFY & "0") + (partialFY & "00") when "00",
         ("00" & partialFY) + (partialFY & "00") when "01",
         partialFY &"00" when others;
   with partialFY (6 downto 5) select
      fX <= 
         ("00" & partialFX & "0") + ("0" & partialFX & "00") when "00",
         ("000" & partialFX) + ("0" & partialFX & "00") when "01",
         "0" & partialFX &"00" when others;
   w4 <=  "00" & fX;
   sel4 <= w4(12 downto 8) & fY(7 downto 6);
   SelFunctionTable4: SelFunctionTable_r8_F300_uid4  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 X => sel4,
                 Y => q4);
   w4pad <= w4 & '0';
   with q4(1 downto 0) select 
   w3fulla <= 
      w4pad - ("0000" & fY)			when "01",
      w4pad + ("0000" & fY)			when "11",
      w4pad + ("000" & fY & "0")	  when "10",
      w4pad 			   		  when others;
   with q4(3 downto 1) select 
   fYdec3 <= 
      ("00" & fY & "00")			when "001" | "010" | "110"| "101",
      ("0" & fY & "000")			when "011"| "100",
      (13 downto 0 => '0')when others;
   with q4(3) select
   w3full <= 
      w3fulla - fYdec3			when '0',
      w3fulla + fYdec3			when others;
   w3 <= w3full(10 downto 0) & "00";
   ----------------Synchro barrier, entering cycle 1----------------
   sel3 <= w3_d1(12 downto 8) & fY_d1(7 downto 6);
   SelFunctionTable3: SelFunctionTable_r8_F300_uid4  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 X => sel3,
                 Y => q3);
   w3pad <= w3_d1 & '0';
   with q3(1 downto 0) select 
   w2fulla <= 
      w3pad - ("0000" & fY_d1)			when "01",
      w3pad + ("0000" & fY_d1)			when "11",
      w3pad + ("000" & fY_d1 & "0")	  when "10",
      w3pad 			   		  when others;
   with q3(3 downto 1) select 
   fYdec2 <= 
      ("00" & fY_d1 & "00")			when "001" | "010" | "110"| "101",
      ("0" & fY_d1 & "000")			when "011"| "100",
      (13 downto 0 => '0')when others;
   with q3(3) select
   w2full <= 
      w2fulla - fYdec2			when '0',
      w2fulla + fYdec2			when others;
   w2 <= w2full(10 downto 0) & "00";
   sel2 <= w2(12 downto 8) & fY_d1(7 downto 6);
   SelFunctionTable2: SelFunctionTable_r8_F300_uid4  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 X => sel2,
                 Y => q2);
   w2pad <= w2 & '0';
   with q2(1 downto 0) select 
   w1fulla <= 
      w2pad - ("0000" & fY_d1)			when "01",
      w2pad + ("0000" & fY_d1)			when "11",
      w2pad + ("000" & fY_d1 & "0")	  when "10",
      w2pad 			   		  when others;
   with q2(3 downto 1) select 
   fYdec1 <= 
      ("00" & fY_d1 & "00")			when "001" | "010" | "110"| "101",
      ("0" & fY_d1 & "000")			when "011"| "100",
      (13 downto 0 => '0')when others;
   with q2(3) select
   w1full <= 
      w1fulla - fYdec1			when '0',
      w1fulla + fYdec1			when others;
   w1 <= w1full(10 downto 0) & "00";
   ----------------Synchro barrier, entering cycle 2----------------
   sel1 <= w1_d1(12 downto 8) & fY_d2(7 downto 6);
   SelFunctionTable1: SelFunctionTable_r8_F300_uid4  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 X => sel1,
                 Y => q1);
   w1pad <= w1_d1 & '0';
   with q1(1 downto 0) select 
   w0fulla <= 
      w1pad - ("0000" & fY_d2)			when "01",
      w1pad + ("0000" & fY_d2)			when "11",
      w1pad + ("000" & fY_d2 & "0")	  when "10",
      w1pad 			   		  when others;
   with q1(3 downto 1) select 
   fYdec0 <= 
      ("00" & fY_d2 & "00")			when "001" | "010" | "110"| "101",
      ("0" & fY_d2 & "000")			when "011"| "100",
      (13 downto 0 => '0')when others;
   with q1(3) select
   w0full <= 
      w0fulla - fYdec0			when '0',
      w0fulla + fYdec0			when others;
   w0 <= w0full(10 downto 0) & "00";
   q0(3 downto 0) <= "0000" when  w0 = (12 downto 0 => '0')
                else w0(12) & "010";
   qP4 <=      q4_d2(2 downto 0);
   qM4 <=      q4_d2(3) & "00";
   qP3 <=      q3_d1(2 downto 0);
   qM3 <=      q3_d1(3) & "00";
   qP2 <=      q2_d1(2 downto 0);
   qM2 <=      q2_d1(3) & "00";
   qP1 <=      q1(2 downto 0);
   qM1 <=      q1(3) & "00";
   qP0 <= q0(2 downto 0);
   qM0 <= q0(3)  & "00";
   qP <= qP4 & qP3 & qP2 & qP1 & qP0;
   qM <= qM4(1 downto 0) & qM3 & qM2 & qM1 & qM0 & "0";
   fR0 <= qP - qM;
   ----------------Synchro barrier, entering cycle 3----------------
   fR <= fR0_d1(14 downto 3) & (fR0_d1(0) or fR0_d1(1) or fR0_d1(2)); 
   -- normalisation
   with fR(11) select
      fRn1 <= fR(11 downto 2) & (fR(0) or fR(1)) when '1',
              fR(10 downto 0)          when others;
   expR1 <= expR0_d3 + ("000" & (5 downto 1 => '1') & fR(11)); -- add back bias
   round <= fRn1(2) and (fRn1(0) or fRn1(1) or fRn1(3)); -- fRn1(0) is the sticky bit
   ----------------Synchro barrier, entering cycle 4----------------
   -- final rounding
   expfrac <= expR1_d1 & fRn1_d1(9 downto 3) ;
   expfracR <= expfrac + ((15 downto 1 => '0') & round_d1);
   exnR <=      "00"  when expfracR(15) = '1'   -- underflow
           else "10"  when  expfracR(15 downto 14) =  "01" -- overflow
           else "01";      -- 00, normal case
   with exnR0_d4 select
      exnRfinal <= 
         exnR   when "01", -- normal
         exnR0_d4  when others;
   R <= exnRfinal & sR_d4 & expfracR(13 downto 0);
end architecture;

