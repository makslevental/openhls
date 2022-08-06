--------------------------------------------------------------------------------
--                           IntAdder_53_f300_uid4
--                      (IntAdderClassical_53_F300_uid6)
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

entity IntAdder_53_f300_uid4 is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(52 downto 0);
          Y : in  std_logic_vector(52 downto 0);
          Cin : in  std_logic;
          R : out  std_logic_vector(52 downto 0)   );
end entity;

architecture arch of IntAdder_53_f300_uid4 is
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
--                    RightShifter_41_by_max_43_F300_uid12
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Bogdan Pasca, Florent de Dinechin (2008-2011)
--------------------------------------------------------------------------------
-- Pipeline depth: 1 cycles

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity RightShifter_41_by_max_43_F300_uid12 is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(40 downto 0);
          S : in  std_logic_vector(5 downto 0);
          R : out  std_logic_vector(83 downto 0)   );
end entity;

architecture arch of RightShifter_41_by_max_43_F300_uid12 is
signal level0 :  std_logic_vector(40 downto 0);
signal ps, ps_d1 :  std_logic_vector(5 downto 0);
signal level1 :  std_logic_vector(41 downto 0);
signal level2 :  std_logic_vector(43 downto 0);
signal level3 :  std_logic_vector(47 downto 0);
signal level4, level4_d1 :  std_logic_vector(55 downto 0);
signal level5 :  std_logic_vector(71 downto 0);
signal level6 :  std_logic_vector(103 downto 0);
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
            ps_d1 <=  ps;
            level4_d1 <=  level4;
         end if;
      end process;
   level0<= X;
   ps<= S;
   level1<=  (0 downto 0 => '0') & level0 when ps(0) = '1' else    level0 & (0 downto 0 => '0');
   level2<=  (1 downto 0 => '0') & level1 when ps(1) = '1' else    level1 & (1 downto 0 => '0');
   level3<=  (3 downto 0 => '0') & level2 when ps(2) = '1' else    level2 & (3 downto 0 => '0');
   level4<=  (7 downto 0 => '0') & level3 when ps(3) = '1' else    level3 & (7 downto 0 => '0');
   ----------------Synchro barrier, entering cycle 1----------------
   level5<=  (15 downto 0 => '0') & level4_d1 when ps_d1(4) = '1' else    level4_d1 & (15 downto 0 => '0');
   level6<=  (31 downto 0 => '0') & level5 when ps_d1(5) = '1' else    level5 & (31 downto 0 => '0');
   R <= level6(103 downto 20);
end architecture;

--------------------------------------------------------------------------------
--                           IntAdder_44_f300_uid16
--                     (IntAdderClassical_44_F300_uid18)
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

entity IntAdder_44_f300_uid16 is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(43 downto 0);
          Y : in  std_logic_vector(43 downto 0);
          Cin : in  std_logic;
          R : out  std_logic_vector(43 downto 0)   );
end entity;

architecture arch of IntAdder_44_f300_uid16 is
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
--                 LZCShifter_45_to_45_counting_64_F300_uid24
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Florent de Dinechin, Bogdan Pasca (2007)
--------------------------------------------------------------------------------
-- Pipeline depth: 1 cycles

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity LZCShifter_45_to_45_counting_64_F300_uid24 is
   port ( clk, rst : in std_logic;
          I : in  std_logic_vector(44 downto 0);
          Count : out  std_logic_vector(5 downto 0);
          O : out  std_logic_vector(44 downto 0)   );
end entity;

architecture arch of LZCShifter_45_to_45_counting_64_F300_uid24 is
signal level6 :  std_logic_vector(44 downto 0);
signal count5, count5_d1 :  std_logic;
signal level5 :  std_logic_vector(44 downto 0);
signal count4, count4_d1 :  std_logic;
signal level4 :  std_logic_vector(44 downto 0);
signal count3, count3_d1 :  std_logic;
signal level3, level3_d1 :  std_logic_vector(44 downto 0);
signal count2 :  std_logic;
signal level2 :  std_logic_vector(44 downto 0);
signal count1 :  std_logic;
signal level1 :  std_logic_vector(44 downto 0);
signal count0 :  std_logic;
signal level0 :  std_logic_vector(44 downto 0);
signal sCount :  std_logic_vector(5 downto 0);
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
            count5_d1 <=  count5;
            count4_d1 <=  count4;
            count3_d1 <=  count3;
            level3_d1 <=  level3;
         end if;
      end process;
   level6 <= I ;
   count5<= '1' when level6(44 downto 13) = (44 downto 13=>'0') else '0';
   level5<= level6(44 downto 0) when count5='0' else level6(12 downto 0) & (31 downto 0 => '0');

   count4<= '1' when level5(44 downto 29) = (44 downto 29=>'0') else '0';
   level4<= level5(44 downto 0) when count4='0' else level5(28 downto 0) & (15 downto 0 => '0');

   count3<= '1' when level4(44 downto 37) = (44 downto 37=>'0') else '0';
   level3<= level4(44 downto 0) when count3='0' else level4(36 downto 0) & (7 downto 0 => '0');

   ----------------Synchro barrier, entering cycle 1----------------
   count2<= '1' when level3_d1(44 downto 41) = (44 downto 41=>'0') else '0';
   level2<= level3_d1(44 downto 0) when count2='0' else level3_d1(40 downto 0) & (3 downto 0 => '0');

   count1<= '1' when level2(44 downto 43) = (44 downto 43=>'0') else '0';
   level1<= level2(44 downto 0) when count1='0' else level2(42 downto 0) & (1 downto 0 => '0');

   count0<= '1' when level1(44 downto 44) = (44 downto 44=>'0') else '0';
   level0<= level1(44 downto 0) when count0='0' else level1(43 downto 0) & (0 downto 0 => '0');

   O <= level0;
   sCount <= count5_d1 & count4_d1 & count3_d1 & count2 & count1 & count0;
   Count <= sCount;
end architecture;

--------------------------------------------------------------------------------
--                           IntAdder_53_f300_uid28
--                     (IntAdderClassical_53_F300_uid30)
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

entity IntAdder_53_f300_uid28 is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(52 downto 0);
          Y : in  std_logic_vector(52 downto 0);
          Cin : in  std_logic;
          R : out  std_logic_vector(52 downto 0)   );
end entity;

architecture arch of IntAdder_53_f300_uid28 is
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
--                                    fadd
--                          (FPAdd_10_40_F300_uid2)
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Bogdan Pasca, Florent de Dinechin (2010)
--------------------------------------------------------------------------------
-- Pipeline depth: 5 cycles

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity fadd is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(10+40+2 downto 0);
          Y : in  std_logic_vector(10+40+2 downto 0);
          R : out  std_logic_vector(10+40+2 downto 0)   );
end entity;

architecture arch of fadd is
   component IntAdder_53_f300_uid4 is
      port ( clk, rst : in std_logic;
             X : in  std_logic_vector(52 downto 0);
             Y : in  std_logic_vector(52 downto 0);
             Cin : in  std_logic;
             R : out  std_logic_vector(52 downto 0)   );
   end component;

   component RightShifter_41_by_max_43_F300_uid12 is
      port ( clk, rst : in std_logic;
             X : in  std_logic_vector(40 downto 0);
             S : in  std_logic_vector(5 downto 0);
             R : out  std_logic_vector(83 downto 0)   );
   end component;

   component IntAdder_44_f300_uid16 is
      port ( clk, rst : in std_logic;
             X : in  std_logic_vector(43 downto 0);
             Y : in  std_logic_vector(43 downto 0);
             Cin : in  std_logic;
             R : out  std_logic_vector(43 downto 0)   );
   end component;

   component LZCShifter_45_to_45_counting_64_F300_uid24 is
      port ( clk, rst : in std_logic;
             I : in  std_logic_vector(44 downto 0);
             Count : out  std_logic_vector(5 downto 0);
             O : out  std_logic_vector(44 downto 0)   );
   end component;

   component IntAdder_53_f300_uid28 is
      port ( clk, rst : in std_logic;
             X : in  std_logic_vector(52 downto 0);
             Y : in  std_logic_vector(52 downto 0);
             Cin : in  std_logic;
             R : out  std_logic_vector(52 downto 0)   );
   end component;

signal excExpFracX :  std_logic_vector(51 downto 0);
signal excExpFracY :  std_logic_vector(51 downto 0);
signal eXmeY :  std_logic_vector(10 downto 0);
signal eYmeX :  std_logic_vector(10 downto 0);
signal addCmpOp1 :  std_logic_vector(52 downto 0);
signal addCmpOp2 :  std_logic_vector(52 downto 0);
signal cmpRes :  std_logic_vector(52 downto 0);
signal swap :  std_logic;
signal newX, newX_d1, newX_d2, newX_d3 :  std_logic_vector(52 downto 0);
signal newY :  std_logic_vector(52 downto 0);
signal expX, expX_d1, expX_d2, expX_d3 :  std_logic_vector(9 downto 0);
signal excX :  std_logic_vector(1 downto 0);
signal excY :  std_logic_vector(1 downto 0);
signal signX, signX_d1 :  std_logic;
signal signY :  std_logic;
signal EffSub, EffSub_d1, EffSub_d2, EffSub_d3, EffSub_d4, EffSub_d5 :  std_logic;
signal sXsYExnXY, sXsYExnXY_d1 :  std_logic_vector(5 downto 0);
signal sdExnXY :  std_logic_vector(3 downto 0);
signal fracY, fracY_d1 :  std_logic_vector(40 downto 0);
signal excRt, excRt_d1, excRt_d2, excRt_d3, excRt_d4, excRt_d5 :  std_logic_vector(1 downto 0);
signal signR, signR_d1, signR_d2, signR_d3, signR_d4 :  std_logic;
signal expDiff, expDiff_d1 :  std_logic_vector(10 downto 0);
signal shiftedOut, shiftedOut_d1 :  std_logic;
signal shiftVal :  std_logic_vector(5 downto 0);
signal shiftedFracY, shiftedFracY_d1 :  std_logic_vector(83 downto 0);
signal sticky :  std_logic;
signal fracYfar :  std_logic_vector(43 downto 0);
signal EffSubVector :  std_logic_vector(43 downto 0);
signal fracYfarXorOp :  std_logic_vector(43 downto 0);
signal fracXfar :  std_logic_vector(43 downto 0);
signal cInAddFar :  std_logic;
signal fracAddResult :  std_logic_vector(43 downto 0);
signal fracGRS :  std_logic_vector(44 downto 0);
signal extendedExpInc, extendedExpInc_d1, extendedExpInc_d2 :  std_logic_vector(11 downto 0);
signal nZerosNew, nZerosNew_d1 :  std_logic_vector(5 downto 0);
signal shiftedFrac, shiftedFrac_d1 :  std_logic_vector(44 downto 0);
signal updatedExp :  std_logic_vector(11 downto 0);
signal eqdiffsign :  std_logic;
signal expFrac :  std_logic_vector(52 downto 0);
signal stk, stk_d1 :  std_logic;
signal rnd, rnd_d1 :  std_logic;
signal grd, grd_d1 :  std_logic;
signal lsb, lsb_d1 :  std_logic;
signal addToRoundBit :  std_logic;
signal RoundedExpFrac :  std_logic_vector(52 downto 0);
signal upExc :  std_logic_vector(1 downto 0);
signal fracR :  std_logic_vector(39 downto 0);
signal expR :  std_logic_vector(9 downto 0);
signal exExpExc :  std_logic_vector(3 downto 0);
signal excRt2 :  std_logic_vector(1 downto 0);
signal excR :  std_logic_vector(1 downto 0);
signal signR2 :  std_logic;
signal computedR :  std_logic_vector(52 downto 0);
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
            newX_d1 <=  newX;
            newX_d2 <=  newX_d1;
            newX_d3 <=  newX_d2;
            expX_d1 <=  expX;
            expX_d2 <=  expX_d1;
            expX_d3 <=  expX_d2;
            signX_d1 <=  signX;
            EffSub_d1 <=  EffSub;
            EffSub_d2 <=  EffSub_d1;
            EffSub_d3 <=  EffSub_d2;
            EffSub_d4 <=  EffSub_d3;
            EffSub_d5 <=  EffSub_d4;
            sXsYExnXY_d1 <=  sXsYExnXY;
            fracY_d1 <=  fracY;
            excRt_d1 <=  excRt;
            excRt_d2 <=  excRt_d1;
            excRt_d3 <=  excRt_d2;
            excRt_d4 <=  excRt_d3;
            excRt_d5 <=  excRt_d4;
            signR_d1 <=  signR;
            signR_d2 <=  signR_d1;
            signR_d3 <=  signR_d2;
            signR_d4 <=  signR_d3;
            expDiff_d1 <=  expDiff;
            shiftedOut_d1 <=  shiftedOut;
            shiftedFracY_d1 <=  shiftedFracY;
            extendedExpInc_d1 <=  extendedExpInc;
            extendedExpInc_d2 <=  extendedExpInc_d1;
            nZerosNew_d1 <=  nZerosNew;
            shiftedFrac_d1 <=  shiftedFrac;
            stk_d1 <=  stk;
            rnd_d1 <=  rnd;
            grd_d1 <=  grd;
            lsb_d1 <=  lsb;
         end if;
      end process;
-- Exponent difference and swap  --
   excExpFracX <= X(52 downto 51) & X(49 downto 0);
   excExpFracY <= Y(52 downto 51) & Y(49 downto 0);
   eXmeY <= ("0" & X(49 downto 40)) - ("0" & Y(49 downto 40));
   eYmeX <= ("0" & Y(49 downto 40)) - ("0" & X(49 downto 40));
   addCmpOp1<= "0" & excExpFracX;
   addCmpOp2<= "1" & not(excExpFracY);
   cmpAdder: IntAdder_53_f300_uid4  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 Cin => '1',
                 R => cmpRes,
                 X => addCmpOp1,
                 Y => addCmpOp2);
   swap <= cmpRes(52);
   newX <= X when swap = '0' else Y;
   newY <= Y when swap = '0' else X;
   expX<= newX(49 downto 40);
   excX<= newX(52 downto 51);
   excY<= newY(52 downto 51);
   signX<= newX(50);
   signY<= newY(50);
   EffSub <= signX xor signY;
   sXsYExnXY <= signX & signY & excX & excY;
   sdExnXY <= excX & excY;
   fracY <= "00000000000000000000000000000000000000000" when excY="00" else ('1' & newY(39 downto 0));
   with sXsYExnXY select 
   excRt <= "00" when "000000"|"010000"|"100000"|"110000",
      "01" when "000101"|"010101"|"100101"|"110101"|"000100"|"010100"|"100100"|"110100"|"000001"|"010001"|"100001"|"110001",
      "10" when "111010"|"001010"|"001000"|"011000"|"101000"|"111000"|"000010"|"010010"|"100010"|"110010"|"001001"|"011001"|"101001"|"111001"|"000110"|"010110"|"100110"|"110110", 
      "11" when others;
   ----------------Synchro barrier, entering cycle 1----------------
   signR<= '0' when (sXsYExnXY_d1="100000" or sXsYExnXY_d1="010000") else signX_d1;
   ---------------- cycle 0----------------
   expDiff <= eXmeY when swap = '0' else eYmeX;
   shiftedOut <= '1' when (expDiff > 42) else '0';
   ----------------Synchro barrier, entering cycle 1----------------
   shiftVal <= expDiff_d1(5 downto 0) when shiftedOut_d1='0' else CONV_STD_LOGIC_VECTOR(43,6) ;
   RightShifterComponent: RightShifter_41_by_max_43_F300_uid12  -- pipelineDepth=1 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 R => shiftedFracY,
                 S => shiftVal,
                 X => fracY_d1);
   ----------------Synchro barrier, entering cycle 2----------------
   ----------------Synchro barrier, entering cycle 3----------------
   sticky <= '0' when (shiftedFracY_d1(40 downto 0)=CONV_STD_LOGIC_VECTOR(0,41)) else '1';
   ---------------- cycle 2----------------
   ----------------Synchro barrier, entering cycle 3----------------
   fracYfar <= "0" & shiftedFracY_d1(83 downto 41);
   EffSubVector <= (43 downto 0 => EffSub_d3);
   fracYfarXorOp <= fracYfar xor EffSubVector;
   fracXfar <= "01" & (newX_d3(39 downto 0)) & "00";
   cInAddFar <= EffSub_d3 and not sticky;
   fracAdder: IntAdder_44_f300_uid16  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 Cin => cInAddFar,
                 R => fracAddResult,
                 X => fracXfar,
                 Y => fracYfarXorOp);
   fracGRS<= fracAddResult & sticky; 
   extendedExpInc<= ("00" & expX_d3) + '1';
   LZC_component: LZCShifter_45_to_45_counting_64_F300_uid24  -- pipelineDepth=1 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 Count => nZerosNew,
                 I => fracGRS,
                 O => shiftedFrac);
   ----------------Synchro barrier, entering cycle 4----------------
   ----------------Synchro barrier, entering cycle 5----------------
   updatedExp <= extendedExpInc_d2 - ("000000" & nZerosNew_d1);
   eqdiffsign <= '1' when nZerosNew_d1="111111" else '0';
   expFrac<= updatedExp & shiftedFrac_d1(43 downto 3);
   ---------------- cycle 4----------------
   stk<= shiftedFrac(1) or shiftedFrac(0);
   rnd<= shiftedFrac(2);
   grd<= shiftedFrac(3);
   lsb<= shiftedFrac(4);
   ----------------Synchro barrier, entering cycle 5----------------
   addToRoundBit<= '0' when (lsb_d1='0' and grd_d1='1' and rnd_d1='0' and stk_d1='0')  else '1';
   roundingAdder: IntAdder_53_f300_uid28  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 Cin => addToRoundBit,
                 R => RoundedExpFrac,
                 X => expFrac,
                 Y => "00000000000000000000000000000000000000000000000000000");
   ---------------- cycle 5----------------
   upExc <= RoundedExpFrac(52 downto 51);
   fracR <= RoundedExpFrac(40 downto 1);
   expR <= RoundedExpFrac(50 downto 41);
   exExpExc <= upExc & excRt_d5;
   with (exExpExc) select 
   excRt2<= "00" when "0000"|"0100"|"1000"|"1100"|"1001"|"1101",
      "01" when "0001",
      "10" when "0010"|"0110"|"1010"|"1110"|"0101",
      "11" when others;
   excR <= "00" when (eqdiffsign='1' and EffSub_d5='1' and not(excRt_d5="11")) else excRt2;
   signR2 <= '0' when (eqdiffsign='1' and EffSub_d5='1') else signR_d4;
   computedR <= excR & signR2 & expR & fracR;
   R <= computedR;
end architecture;

