--------------------------------------------------------------------------------
--                           IntDualSub_6_F300_uid4
-- VHDL generated for Virtex6 @ 300MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Bogdan Pasca, Florent de Dinechin (2008-2017)
--------------------------------------------------------------------------------
-- Pipeline depth: 0 cycles
-- Clock period (ns): 3.33333
-- Target frequency (MHz): 300
-- Input signals: X Y
-- Output signals: XmY YmX

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity IntDualSub_6_F300_uid4 is
    port (clk : in std_logic;
          X : in  std_logic_vector(5 downto 0);
          Y : in  std_logic_vector(5 downto 0);
          XmY : out  std_logic_vector(5 downto 0);
          YmX : out  std_logic_vector(5 downto 0)   );
end entity;

architecture arch of IntDualSub_6_F300_uid4 is
signal tempRxMy :  std_logic_vector(5 downto 0);
signal tempRYmX :  std_logic_vector(5 downto 0);
begin
   tempRxMy <= X + (not Y) + '1';
   tempRYmX <= Y + (not X) + '1';
   XmY <= tempRxMy;
   YmX <= tempRYmX;
end architecture;

--------------------------------------------------------------------------------
--                        Normalizer_Z_5_5_5_F300_uid6
-- VHDL generated for Virtex6 @ 300MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Florent de Dinechin, (2007-2020)
--------------------------------------------------------------------------------
-- Pipeline depth: 2 cycles
-- Clock period (ns): 3.33333
-- Target frequency (MHz): 300
-- Input signals: X
-- Output signals: Count R

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity Normalizer_Z_5_5_5_F300_uid6 is
    port (clk : in std_logic;
          X : in  std_logic_vector(4 downto 0);
          Count : out  std_logic_vector(2 downto 0);
          R : out  std_logic_vector(4 downto 0)   );
end entity;

architecture arch of Normalizer_Z_5_5_5_F300_uid6 is
signal level3, level3_d1 :  std_logic_vector(4 downto 0);
signal count2 :  std_logic;
signal level2 :  std_logic_vector(4 downto 0);
signal count1 :  std_logic;
signal level1, level1_d1 :  std_logic_vector(4 downto 0);
signal count0, count0_d1 :  std_logic;
signal level0 :  std_logic_vector(4 downto 0);
signal sCount :  std_logic_vector(2 downto 0);
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
            level3_d1 <=  level3;
            level1_d1 <=  level1;
            count0_d1 <=  count0;
         end if;
      end process;
   level3 <= X ;
   count2<= '1' when level3_d1(4 downto 1) = (4 downto 1=>'0') else '0';
   level2<= level3_d1(4 downto 0) when count2='0' else level3_d1(0 downto 0) & (3 downto 0 => '0');

   count1<= '1' when level2(4 downto 3) = (4 downto 3=>'0') else '0';
   level1<= level2(4 downto 0) when count1='0' else level2(2 downto 0) & (1 downto 0 => '0');

   count0<= '1' when level1(4 downto 4) = (4 downto 4=>'0') else '0';
   level0<= level1_d1(4 downto 0) when count0_d1='0' else level1_d1(3 downto 0) & (0 downto 0 => '0');

   R <= level0;
   sCount <= count2 & count1 & count0;
   Count <= sCount;
end architecture;

--------------------------------------------------------------------------------
--                   RightShifterSticky4_by_max_6_F300_uid8
-- VHDL generated for Virtex6 @ 300MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Bogdan Pasca (2008-2011), Florent de Dinechin (2008-2019)
--------------------------------------------------------------------------------
-- Pipeline depth: 2 cycles
-- Clock period (ns): 3.33333
-- Target frequency (MHz): 300
-- Input signals: X S
-- Output signals: R Sticky

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity RightShifterSticky4_by_max_6_F300_uid8 is
    port (clk : in std_logic;
          X : in  std_logic_vector(3 downto 0);
          S : in  std_logic_vector(2 downto 0);
          R : out  std_logic_vector(5 downto 0);
          Sticky : out  std_logic   );
end entity;

architecture arch of RightShifterSticky4_by_max_6_F300_uid8 is
signal ps, ps_d1, ps_d2 :  std_logic_vector(2 downto 0);
signal Xpadded :  std_logic_vector(5 downto 0);
signal level3, level3_d1 :  std_logic_vector(5 downto 0);
signal stk2 :  std_logic;
signal level2, level2_d1 :  std_logic_vector(5 downto 0);
signal stk1, stk1_d1 :  std_logic;
signal level1, level1_d1, level1_d2 :  std_logic_vector(5 downto 0);
signal stk0 :  std_logic;
signal level0 :  std_logic_vector(5 downto 0);
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
            ps_d1 <=  ps;
            ps_d2 <=  ps_d1;
            level3_d1 <=  level3;
            level2_d1 <=  level2;
            stk1_d1 <=  stk1;
            level1_d1 <=  level1;
            level1_d2 <=  level1_d1;
         end if;
      end process;
   ps<= S;
   Xpadded <= X&(1 downto 0 => '0');
   level3<= Xpadded;
   stk2 <= '1' when (level3_d1(3 downto 0)/="0000" and ps_d1(2)='1')   else '0';
   level2 <=  level3 when  ps(2)='0'    else (3 downto 0 => '0') & level3(5 downto 4);
   stk1 <= '1' when (level2_d1(1 downto 0)/="00" and ps_d1(1)='1') or stk2 ='1'   else '0';
   level1 <=  level2 when  ps(1)='0'    else (1 downto 0 => '0') & level2(5 downto 2);
   stk0 <= '1' when (level1_d2(0 downto 0)/="0" and ps_d2(0)='1') or stk1_d1 ='1'   else '0';
   level0 <=  level1 when  ps(0)='0'    else (0 downto 0 => '0') & level1(5 downto 1);
   R <= level0;
   Sticky <= stk0;
end architecture;

--------------------------------------------------------------------------------
--                           IntAdder_7_F300_uid10
-- VHDL generated for Virtex6 @ 300MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Bogdan Pasca, Florent de Dinechin (2008-2016)
--------------------------------------------------------------------------------
-- Pipeline depth: 0 cycles
-- Clock period (ns): 3.33333
-- Target frequency (MHz): 300
-- Input signals: X Y Cin
-- Output signals: R

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity IntAdder_7_F300_uid10 is
    port (clk : in std_logic;
          X : in  std_logic_vector(6 downto 0);
          Y : in  std_logic_vector(6 downto 0);
          Cin : in  std_logic;
          R : out  std_logic_vector(6 downto 0)   );
end entity;

architecture arch of IntAdder_7_F300_uid10 is
signal Rtmp :  std_logic_vector(6 downto 0);
signal X_d1, X_d2 :  std_logic_vector(6 downto 0);
signal Y_d1, Y_d2 :  std_logic_vector(6 downto 0);
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
            X_d1 <=  X;
            X_d2 <=  X_d1;
            Y_d1 <=  Y;
            Y_d2 <=  Y_d1;
         end if;
      end process;
   Rtmp <= X_d2 + Y_d2 + Cin;
   R <= Rtmp;
end architecture;

--------------------------------------------------------------------------------
--                           IntAdder_9_F300_uid13
-- VHDL generated for Virtex6 @ 300MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Bogdan Pasca, Florent de Dinechin (2008-2016)
--------------------------------------------------------------------------------
-- Pipeline depth: 0 cycles
-- Clock period (ns): 3.33333
-- Target frequency (MHz): 300
-- Input signals: X Y Cin
-- Output signals: R

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity IntAdder_9_F300_uid13 is
    port (clk : in std_logic;
          X : in  std_logic_vector(8 downto 0);
          Y : in  std_logic_vector(8 downto 0);
          Cin : in  std_logic;
          R : out  std_logic_vector(8 downto 0)   );
end entity;

architecture arch of IntAdder_9_F300_uid13 is
signal Rtmp :  std_logic_vector(8 downto 0);
signal Y_d1, Y_d2 :  std_logic_vector(8 downto 0);
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
            Y_d1 <=  Y;
            Y_d2 <=  Y_d1;
         end if;
      end process;
   Rtmp <= X + Y_d2 + Cin;
   R <= Rtmp;
end architecture;

--------------------------------------------------------------------------------
--                                    fsub
--                           (FPSub_4_3_F300_uid2)
-- VHDL generated for Virtex6 @ 300MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Jérémie Detrey, Bogdan Pasca, Florent de Dinechin (2008-2017)
--------------------------------------------------------------------------------
-- Pipeline depth: 2 cycles
-- Clock period (ns): 3.33333
-- Target frequency (MHz): 300
-- Input signals: X Y
-- Output signals: R

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity fsub is
    port (clk : in std_logic;
          X : in  std_logic_vector(4+3+2 downto 0);
          Y : in  std_logic_vector(4+3+2 downto 0);
          R : out  std_logic_vector(4+3+2 downto 0)   );
end entity;

architecture arch of fsub is
   component IntDualSub_6_F300_uid4 is
      port ( clk : in std_logic;
             X : in  std_logic_vector(5 downto 0);
             Y : in  std_logic_vector(5 downto 0);
             XmY : out  std_logic_vector(5 downto 0);
             YmX : out  std_logic_vector(5 downto 0)   );
   end component;

   component Normalizer_Z_5_5_5_F300_uid6 is
      port ( clk : in std_logic;
             X : in  std_logic_vector(4 downto 0);
             Count : out  std_logic_vector(2 downto 0);
             R : out  std_logic_vector(4 downto 0)   );
   end component;

   component RightShifterSticky4_by_max_6_F300_uid8 is
      port ( clk : in std_logic;
             X : in  std_logic_vector(3 downto 0);
             S : in  std_logic_vector(2 downto 0);
             R : out  std_logic_vector(5 downto 0);
             Sticky : out  std_logic   );
   end component;

   component IntAdder_7_F300_uid10 is
      port ( clk : in std_logic;
             X : in  std_logic_vector(6 downto 0);
             Y : in  std_logic_vector(6 downto 0);
             Cin : in  std_logic;
             R : out  std_logic_vector(6 downto 0)   );
   end component;

   component IntAdder_9_F300_uid13 is
      port ( clk : in std_logic;
             X : in  std_logic_vector(8 downto 0);
             Y : in  std_logic_vector(8 downto 0);
             Cin : in  std_logic;
             R : out  std_logic_vector(8 downto 0)   );
   end component;

signal inX :  std_logic_vector(9 downto 0);
signal inY :  std_logic_vector(9 downto 0);
signal exceptionXSuperiorY :  std_logic;
signal exceptionXEqualY :  std_logic;
signal signedExponentX :  std_logic_vector(4 downto 0);
signal signedExponentY :  std_logic_vector(4 downto 0);
signal exponentDifferenceXY :  std_logic_vector(4 downto 0);
signal exponentDifferenceYX :  std_logic_vector(3 downto 0);
signal swap :  std_logic;
signal mY :  std_logic_vector(9 downto 0);
signal newX, newX_d1 :  std_logic_vector(9 downto 0);
signal newY :  std_logic_vector(9 downto 0);
signal exponentDifference :  std_logic_vector(3 downto 0);
signal shiftedOut :  std_logic;
signal shiftVal :  std_logic_vector(2 downto 0);
signal EffSub, EffSub_d1, EffSub_d2 :  std_logic;
signal selectClosePath, selectClosePath_d1, selectClosePath_d2 :  std_logic;
signal sdExnXY :  std_logic_vector(3 downto 0);
signal pipeSignY :  std_logic;
signal fracXClose1 :  std_logic_vector(5 downto 0);
signal fracYClose1 :  std_logic_vector(5 downto 0);
signal fracRClosexMy :  std_logic_vector(5 downto 0);
signal fracRCloseyMx :  std_logic_vector(5 downto 0);
signal fracSignClose :  std_logic;
signal fracRClose1 :  std_logic_vector(4 downto 0);
signal resSign :  std_logic;
signal nZerosNew :  std_logic_vector(2 downto 0);
signal shiftedFrac :  std_logic_vector(4 downto 0);
signal roundClose0 :  std_logic;
signal resultCloseIsZero0 :  std_logic;
signal exponentResultClose, exponentResultClose_d1 :  std_logic_vector(5 downto 0);
signal resultBeforeRoundClose :  std_logic_vector(8 downto 0);
signal roundClose :  std_logic;
signal resultCloseIsZero :  std_logic;
signal fracNewY :  std_logic_vector(3 downto 0);
signal shiftedFracY :  std_logic_vector(5 downto 0);
signal sticky :  std_logic;
signal fracYfar :  std_logic_vector(6 downto 0);
signal EffSubVector :  std_logic_vector(6 downto 0);
signal fracYfarXorOp :  std_logic_vector(6 downto 0);
signal fracXfar :  std_logic_vector(6 downto 0);
signal cInAddFar :  std_logic;
signal fracResultfar0 :  std_logic_vector(6 downto 0);
signal fracResultFarNormStage :  std_logic_vector(6 downto 0);
signal fracLeadingBits :  std_logic_vector(1 downto 0);
signal fracResultFar1 :  std_logic_vector(2 downto 0);
signal fracResultRoundBit :  std_logic;
signal fracResultStickyBit :  std_logic;
signal roundFar1 :  std_logic;
signal expOperationSel :  std_logic_vector(1 downto 0);
signal exponentUpdate :  std_logic_vector(5 downto 0);
signal exponentResultfar0, exponentResultfar0_d1, exponentResultfar0_d2 :  std_logic_vector(5 downto 0);
signal exponentResultFar1 :  std_logic_vector(5 downto 0);
signal resultBeforeRoundFar :  std_logic_vector(8 downto 0);
signal roundFar :  std_logic;
signal resultBeforeRound :  std_logic_vector(8 downto 0);
signal round :  std_logic;
signal zeroFromClose, zeroFromClose_d1 :  std_logic;
signal resultRounded :  std_logic_vector(8 downto 0);
signal syncEffSub, syncEffSub_d1, syncEffSub_d2 :  std_logic;
signal syncX, syncX_d1, syncX_d2 :  std_logic_vector(9 downto 0);
signal syncSignY, syncSignY_d1, syncSignY_d2 :  std_logic;
signal syncResSign, syncResSign_d1, syncResSign_d2 :  std_logic;
signal UnderflowOverflow :  std_logic_vector(1 downto 0);
signal resultNoExn :  std_logic_vector(9 downto 0);
signal syncExnXY, syncExnXY_d1, syncExnXY_d2 :  std_logic_vector(3 downto 0);
signal exnR :  std_logic_vector(1 downto 0);
signal sgnR :  std_logic;
signal expsigR :  std_logic_vector(6 downto 0);
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
            newX_d1 <=  newX;
            EffSub_d1 <=  EffSub;
            EffSub_d2 <=  EffSub_d1;
            selectClosePath_d1 <=  selectClosePath;
            selectClosePath_d2 <=  selectClosePath_d1;
            exponentResultClose_d1 <=  exponentResultClose;
            exponentResultfar0_d1 <=  exponentResultfar0;
            exponentResultfar0_d2 <=  exponentResultfar0_d1;
            zeroFromClose_d1 <=  zeroFromClose;
            syncEffSub_d1 <=  syncEffSub;
            syncEffSub_d2 <=  syncEffSub_d1;
            syncX_d1 <=  syncX;
            syncX_d2 <=  syncX_d1;
            syncSignY_d1 <=  syncSignY;
            syncSignY_d2 <=  syncSignY_d1;
            syncResSign_d1 <=  syncResSign;
            syncResSign_d2 <=  syncResSign_d1;
            syncExnXY_d1 <=  syncExnXY;
            syncExnXY_d2 <=  syncExnXY_d1;
         end if;
      end process;
-- Exponent difference and swap  --
   inX <= X;
   inY <= Y;
   exceptionXSuperiorY <= '1' when inX(9 downto 8) >= inY(9 downto 8) else '0';
   exceptionXEqualY <= '1' when inX(9 downto 8) = inY(9 downto 8) else '0';
   signedExponentX <= "0" & inX(6 downto 3);
   signedExponentY <= "0" & inY(6 downto 3);
   exponentDifferenceXY <= signedExponentX - signedExponentY ;
   exponentDifferenceYX <= signedExponentY(3 downto 0) - signedExponentX(3 downto 0);
   swap <= (exceptionXEqualY and exponentDifferenceXY(4)) or (not(exceptionXSuperiorY));
   mY <= inY(9 downto 8) & not(inY(7)) & inY(6 downto 0);
   newX <= mY when swap = '1' else inX;
   newY <= inX when swap = '1' else mY;
   exponentDifference <= exponentDifferenceYX when swap = '1' else exponentDifferenceXY(3 downto 0);
   shiftedOut <= exponentDifference(3);
   shiftVal <= exponentDifference(2 downto 0) when shiftedOut='0'
          else CONV_STD_LOGIC_VECTOR(6,3) ;
   EffSub <= newX(7) xor newY(7);
   selectClosePath <= EffSub when exponentDifference(3 downto 1) = (3 downto 1 => '0') else '0';
   sdExnXY <= newX(9 downto 8) & newY(9 downto 8);
   pipeSignY <= newY(7);

-- Close Path --
   fracXClose1 <= "01" & newX(2 downto 0) & '0';
   with exponentDifference(0)  select 
   fracYClose1 <=  "01" & newY(2 downto 0) & '0' when '0',
                  "001" & newY(2 downto 0)       when others;
   FPSub_4_3_F300_uid2_DualSubClose: IntDualSub_6_F300_uid4
      port map ( clk  => clk,
                 X => fracXClose1,
                 Y => fracYClose1,
                 XmY => fracRClosexMy,
                 YmX => fracRCloseyMx);
   fracSignClose <= fracRClosexMy(5);
   fracRClose1 <= fracRClosexMy(4 downto 0) when fracSignClose='0' else fracRCloseyMx(4 downto 0);
   resSign <= '0' when selectClosePath='1' and fracRClose1 = (4 downto 0 => '0') else
             newX(7) xor (selectClosePath and fracSignClose);
   norm: Normalizer_Z_5_5_5_F300_uid6
      port map ( clk  => clk,
                 X => fracRClose1,
                 Count => nZerosNew,
                 R => shiftedFrac);
   roundClose0 <= shiftedFrac(0) and shiftedFrac(1);
   resultCloseIsZero0 <= '1' when nZerosNew = CONV_STD_LOGIC_VECTOR(7, 3) else '0';
   exponentResultClose <= ("00" & newX_d1(6 downto 3)) - (CONV_STD_LOGIC_VECTOR(0,3) & nZerosNew);
   resultBeforeRoundClose <= exponentResultClose_d1(5 downto 0) & shiftedFrac(3 downto 1);
   roundClose <= roundClose0;
   resultCloseIsZero <= resultCloseIsZero0;

-- Far Path --
   fracNewY <= '1' & newY(2 downto 0);
   RightShifterComponent: RightShifterSticky4_by_max_6_F300_uid8
      port map ( clk  => clk,
                 S => shiftVal,
                 X => fracNewY,
                 R => shiftedFracY,
                 Sticky => sticky);
   fracYfar <= "0" & shiftedFracY;
   EffSubVector <= (6 downto 0 => EffSub);
   fracYfarXorOp <= fracYfar xor EffSubVector;
   fracXfar <= "01" & (newX(2 downto 0)) & "00";
   cInAddFar <= EffSub_d2 and not sticky;
   FPSub_4_3_F300_uid2_fracAddFar: IntAdder_7_F300_uid10
      port map ( clk  => clk,
                 Cin => cInAddFar,
                 X => fracXfar,
                 Y => fracYfarXorOp,
                 R => fracResultfar0);
   -- 2-bit normalisation
   fracResultFarNormStage <= fracResultfar0;
   fracLeadingBits <= fracResultFarNormStage(6 downto 5) ;
   fracResultFar1 <=
           fracResultFarNormStage(3 downto 1)  when fracLeadingBits = "00" 
      else fracResultFarNormStage(4 downto 2)  when fracLeadingBits = "01" 
      else fracResultFarNormStage(5 downto 3);
   fracResultRoundBit <=
           fracResultFarNormStage(0) 	 when fracLeadingBits = "00" 
      else fracResultFarNormStage(1)    when fracLeadingBits = "01" 
      else fracResultFarNormStage(2) ;
   fracResultStickyBit <=
           sticky 	 when fracLeadingBits = "00" 
      else fracResultFarNormStage(0) or  sticky   when fracLeadingBits = "01" 
      else fracResultFarNormStage(1) or fracResultFarNormStage(0) or sticky;
   roundFar1 <= fracResultRoundBit and (fracResultStickyBit or fracResultFar1(0));
   expOperationSel <= "11" when fracLeadingBits = "00" -- add -1 to exponent
               else   "00" when fracLeadingBits = "01" -- add 0 
               else   "01";                              -- add 1
   exponentUpdate <= (5 downto 1 => expOperationSel(1)) & expOperationSel(0);
   exponentResultfar0<="00" & (newX(6 downto 3));
   exponentResultFar1 <= exponentResultfar0_d2 + exponentUpdate;
   resultBeforeRoundFar <= exponentResultFar1 & fracResultFar1;
   roundFar <= roundFar1;

-- Synchronization of both paths --
   with selectClosePath_d2  select 
   resultBeforeRound <= resultBeforeRoundClose when '1',
                        resultBeforeRoundFar   when others;
   with selectClosePath_d2  select 
   round <= roundClose when '1',
            roundFar   when others;
   zeroFromClose <= selectClosePath_d1 and resultCloseIsZero;

-- Rounding --
   FPSub_4_3_F300_uid2_finalRoundAdd: IntAdder_9_F300_uid13
      port map ( clk  => clk,
                 Cin => round,
                 X => resultBeforeRound,
                 Y => "000000000",
                 R => resultRounded);
   syncEffSub <= EffSub;
   syncX <= newX;
   syncSignY <= pipeSignY;
   syncResSign <= resSign;
   UnderflowOverflow <= resultRounded(8 downto 7);
   with UnderflowOverflow  select 
   resultNoExn(9 downto 8) <=   (not zeroFromClose_d1) & "0" when "01", -- overflow
                                 "00" when "10" | "11",  -- underflow
                                 "0" &  not zeroFromClose_d1  when others; -- normal 
   resultNoExn(7 downto 0) <= syncResSign_d2 & resultRounded(6 downto 0);
   syncExnXY <= sdExnXY;
   -- Exception bits of the result
   with syncExnXY_d2  select  -- remember that ExnX > ExnY 
      exnR <= resultNoExn(9 downto 8) when "0101",
              "1" & syncEffSub_d2          when "1010",
              "11"                      when "1110",
              syncExnXY_d2(3 downto 2)     when others;
   -- Sign bit of the result
   with syncExnXY_d2  select 
      sgnR <= resultNoExn(7)         when "0101",
              syncX_d2(7) and syncSignY_d2 when "0000",
              syncX_d2(7)               when others;
   -- Exponent and significand of the result
   with syncExnXY_d2  select   
      expsigR <= resultNoExn(6 downto 0)   when "0101" ,
                 syncX_d2(6 downto  0)        when others; -- 0100, or at least one NaN or one infty 
   R <= exnR & sgnR & expsigR;
end architecture;

