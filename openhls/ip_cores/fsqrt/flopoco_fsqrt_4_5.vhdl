--------------------------------------------------------------------------------
--                                   fsqrt
--                                (FPSqrt_4_5)
-- VHDL generated for Virtex6 @ 300MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: 
--------------------------------------------------------------------------------
-- Pipeline depth: 1 cycles
-- Clock period (ns): 3.33333
-- Target frequency (MHz): 300
-- Input signals: X
-- Output signals: R

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity fsqrt is
    port (clk : in std_logic;
          X : in  std_logic_vector(4+5+2 downto 0);
          R : out  std_logic_vector(4+5+2 downto 0)   );
end entity;

architecture arch of fsqrt is
signal fracX :  std_logic_vector(4 downto 0);
signal eRn0 :  std_logic_vector(3 downto 0);
signal xsX :  std_logic_vector(2 downto 0);
signal eRn1, eRn1_d1 :  std_logic_vector(3 downto 0);
signal fracXnorm :  std_logic_vector(8 downto 0);
signal S0 :  std_logic_vector(1 downto 0);
signal T1 :  std_logic_vector(8 downto 0);
signal d1 :  std_logic;
signal T1s :  std_logic_vector(9 downto 0);
signal T1s_h :  std_logic_vector(5 downto 0);
signal T1s_l :  std_logic_vector(3 downto 0);
signal U1 :  std_logic_vector(5 downto 0);
signal T3_h :  std_logic_vector(5 downto 0);
signal T2 :  std_logic_vector(8 downto 0);
signal S1 :  std_logic_vector(2 downto 0);
signal d2 :  std_logic;
signal T2s :  std_logic_vector(9 downto 0);
signal T2s_h :  std_logic_vector(6 downto 0);
signal T2s_l :  std_logic_vector(2 downto 0);
signal U2 :  std_logic_vector(6 downto 0);
signal T4_h :  std_logic_vector(6 downto 0);
signal T3 :  std_logic_vector(8 downto 0);
signal S2 :  std_logic_vector(3 downto 0);
signal d3, d3_d1 :  std_logic;
signal T3s :  std_logic_vector(9 downto 0);
signal T3s_h, T3s_h_d1 :  std_logic_vector(7 downto 0);
signal T3s_l, T3s_l_d1 :  std_logic_vector(1 downto 0);
signal U3, U3_d1 :  std_logic_vector(7 downto 0);
signal T5_h :  std_logic_vector(7 downto 0);
signal T4 :  std_logic_vector(8 downto 0);
signal S3, S3_d1 :  std_logic_vector(4 downto 0);
signal d4 :  std_logic;
signal T4s :  std_logic_vector(9 downto 0);
signal T4s_h :  std_logic_vector(8 downto 0);
signal T4s_l :  std_logic_vector(0 downto 0);
signal U4 :  std_logic_vector(8 downto 0);
signal T6_h :  std_logic_vector(8 downto 0);
signal T5 :  std_logic_vector(8 downto 0);
signal S4 :  std_logic_vector(5 downto 0);
signal d5 :  std_logic;
signal T5s :  std_logic_vector(9 downto 0);
signal T5s_h :  std_logic_vector(9 downto 0);
signal U5 :  std_logic_vector(9 downto 0);
signal T7_h :  std_logic_vector(9 downto 0);
signal T6 :  std_logic_vector(8 downto 0);
signal S5 :  std_logic_vector(6 downto 0);
signal d7 :  std_logic;
signal mR :  std_logic_vector(7 downto 0);
signal fR :  std_logic_vector(4 downto 0);
signal round :  std_logic;
signal fRrnd :  std_logic_vector(4 downto 0);
signal Rn2 :  std_logic_vector(8 downto 0);
signal xsR, xsR_d1 :  std_logic_vector(2 downto 0);
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
            eRn1_d1 <=  eRn1;
            d3_d1 <=  d3;
            T3s_h_d1 <=  T3s_h;
            T3s_l_d1 <=  T3s_l;
            U3_d1 <=  U3;
            S3_d1 <=  S3;
            xsR_d1 <=  xsR;
         end if;
      end process;
   fracX <= X(4 downto 0); -- fraction
   eRn0 <= "0" & X(8 downto 6); -- exponent
   xsX <= X(11 downto 9); -- exception and sign
   eRn1 <= eRn0 + ("00" & (1 downto 0 => '1')) + X(5);
   fracXnorm <= "1" & fracX & "000" when X(5) = '0' else
         "01" & fracX&"00"; -- pre-normalization
   S0 <= "01";
   T1 <= ("0111" + fracXnorm(8 downto 5)) & fracXnorm(4 downto 0);
   -- now implementing the recurrence 
   --  this is a binary non-restoring algorithm, see ASA book
   -- Step 2
   d1 <= not T1(8); --  bit of weight -1
   T1s <= T1 & "0";
   T1s_h <= T1s(9 downto 4);
   T1s_l <= T1s(3 downto 0);
   U1 <=  "0" & S0 & d1 & (not d1) & "1"; 
   T3_h <=   T1s_h - U1 when d1='1'
        else T1s_h + U1;
   T2 <= T3_h(4 downto 0) & T1s_l;
   S1 <= S0 & d1; -- here -1 becomes 0 and 1 becomes 1
   -- Step 3
   d2 <= not T2(8); --  bit of weight -2
   T2s <= T2 & "0";
   T2s_h <= T2s(9 downto 3);
   T2s_l <= T2s(2 downto 0);
   U2 <=  "0" & S1 & d2 & (not d2) & "1"; 
   T4_h <=   T2s_h - U2 when d2='1'
        else T2s_h + U2;
   T3 <= T4_h(5 downto 0) & T2s_l;
   S2 <= S1 & d2; -- here -1 becomes 0 and 1 becomes 1
   -- Step 4
   d3 <= not T3(8); --  bit of weight -3
   T3s <= T3 & "0";
   T3s_h <= T3s(9 downto 2);
   T3s_l <= T3s(1 downto 0);
   U3 <=  "0" & S2 & d3 & (not d3) & "1"; 
   T5_h <=   T3s_h_d1 - U3_d1 when d3_d1='1'
        else T3s_h_d1 + U3_d1;
   T4 <= T5_h(6 downto 0) & T3s_l_d1;
   S3 <= S2 & d3; -- here -1 becomes 0 and 1 becomes 1
   -- Step 5
   d4 <= not T4(8); --  bit of weight -4
   T4s <= T4 & "0";
   T4s_h <= T4s(9 downto 1);
   T4s_l <= T4s(0 downto 0);
   U4 <=  "0" & S3_d1 & d4 & (not d4) & "1"; 
   T6_h <=   T4s_h - U4 when d4='1'
        else T4s_h + U4;
   T5 <= T6_h(7 downto 0) & T4s_l;
   S4 <= S3_d1 & d4; -- here -1 becomes 0 and 1 becomes 1
   -- Step 6
   d5 <= not T5(8); --  bit of weight -5
   T5s <= T5 & "0";
   T5s_h <= T5s(9 downto 0);
   U5 <=  "0" & S4 & d5 & (not d5) & "1"; 
   T7_h <=   T5s_h - U5 when d5='1'
        else T5s_h + U5;
   T6 <= T7_h(8 downto 0);
   S5 <= S4 & d5; -- here -1 becomes 0 and 1 becomes 1
   d7 <= not T6(8) ; -- the sign of the remainder will become the round bit
   mR <= S5 & d7; -- result significand
   fR <= mR(5 downto 1);-- removing leading 1
   round <= mR(0); -- round bit
   fRrnd <= fR + ((4 downto 1 => '0') & round); -- rounding sqrt never changes exponents 
   Rn2 <= eRn1_d1 & fRrnd;
   -- sign and exception processing
   with xsX  select 
      xsR <= "010"  when "010",  -- normal case
             "100"  when "100",  -- +infty
             "000"  when "000",  -- +0
             "001"  when "001",  -- the infamous sqrt(-0)=-0
             "110"  when others; -- return NaN
   R <= xsR_d1 & Rn2; 
end architecture;

