--------------------------------------------------------------------------------
--                       IntComparator_8_101_F300_uid4
-- VHDL generated for Virtex6 @ 300MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Florent de Dinechin (2021)
--------------------------------------------------------------------------------
-- Pipeline depth: 0 cycles
-- Clock period (ns): 3.33333
-- Target frequency (MHz): 300
-- Input signals: X Y
-- Output signals: XltY XgtY

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity IntComparator_8_101_F300_uid4 is
    port (clk : in std_logic;
          X : in  std_logic_vector(7 downto 0);
          Y : in  std_logic_vector(7 downto 0);
          XltY : out  std_logic;
          XgtY : out  std_logic   );
end entity;

architecture arch of IntComparator_8_101_F300_uid4 is
signal XltYi :  std_logic;
signal XgtYi :  std_logic;
begin
   XltYi <= '1' when X<Y else '0';
   XgtYi <= '1' when X>Y else '0';
   XltY <= XltYi;
   XgtY <= XgtYi;
end architecture;

--------------------------------------------------------------------------------
--                                   fcmplt
--                        (FPComparator_5_3_F300_uid2)
-- VHDL generated for Virtex6 @ 300MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Florent de Dinechin (2021)
--------------------------------------------------------------------------------
-- Pipeline depth: 0 cycles
-- Clock period (ns): 3.33333
-- Target frequency (MHz): 300
-- Input signals: X Y
-- Output signals: unordered XltY

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity fcmplt is
    port (clk : in std_logic;
          X : in  std_logic_vector(5+3+2 downto 0);
          Y : in  std_logic_vector(5+3+2 downto 0);
          unordered : out  std_logic;
          XltY : out  std_logic   );
end entity;

architecture arch of fcmplt is
   component IntComparator_8_101_F300_uid4 is
      port ( clk : in std_logic;
             X : in  std_logic_vector(7 downto 0);
             Y : in  std_logic_vector(7 downto 0);
             XltY : out  std_logic;
             XgtY : out  std_logic   );
   end component;

signal excX :  std_logic_vector(1 downto 0);
signal excY :  std_logic_vector(1 downto 0);
signal signX :  std_logic;
signal signY :  std_logic;
signal ExpFracX :  std_logic_vector(7 downto 0);
signal ExpFracY :  std_logic_vector(7 downto 0);
signal isZeroX :  std_logic;
signal isZeroY :  std_logic;
signal isNormalX :  std_logic;
signal isNormalY :  std_logic;
signal isInfX :  std_logic;
signal isInfY :  std_logic;
signal isNaNX :  std_logic;
signal isNaNY :  std_logic;
signal negativeX :  std_logic;
signal positiveX :  std_logic;
signal negativeY :  std_logic;
signal positiveY :  std_logic;
signal ExpFracXltExpFracY :  std_logic;
signal ExpFracXgtExpFracY :  std_logic;
signal sameSign :  std_logic;
signal XltYNum :  std_logic;
signal unorderedR :  std_logic;
signal XltYR :  std_logic;
begin
   excX <= X(10 downto 9);
   excY <= Y(10 downto 9);
   signX <= X(8);
   signY <= Y(8);
   ExpFracX <= X(7 downto 0);
   ExpFracY <= Y(7 downto 0);
   -- Comparing (as integers) excX & ExpFracX with excY & ExpFracY would almost work 
   --  since indeed inf>normal>0	
   -- However we wouldn't capture infinity equality in cases when the infinities have different ExpFracs (who knows)...	 
   -- Besides, expliciting the isXXX bits will help factoring code with a comparator for IEEE format (some day)
   isZeroX <= '1' when excX="00" else '0' ;
   isZeroY <= '1' when excY="00" else '0' ;
   isNormalX <= '1' when excX="01" else '0' ;
   isNormalY <= '1' when excY="01" else '0' ;
   isInfX <= '1' when excX="10" else '0' ;
   isInfY <= '1' when excY="10" else '0' ;
   isNaNX <= '1' when excX="11" else '0' ;
   isNaNY <= '1' when excY="11" else '0' ;
   -- Just for readability of the formulae below
   negativeX <= signX ;
   positiveX <= not signX ;
   negativeY <= signY ;
   positiveY <= not signY ;
   -- expfrac comparisons 
   ExpFracCmp: IntComparator_8_101_F300_uid4
      port map ( clk  => clk,
                 X => ExpFracX,
                 Y => ExpFracY,
                 XgtY => ExpFracXgtExpFracY,
                 XltY => ExpFracXltExpFracY);
   -- -- and now the logic
   sameSign <= not (signX xor signY) ;
   XltYNum <=     -- case enumeration on Y
         ( (not (isInfX and positiveX)) and (isInfY  and positiveY)) 
      or ((negativeX or isZeroX) and (isNormalY and positiveY)) 
      or ((negativeX and not isZeroX) and isZeroY) 
      or (isNormalX and isNormalY and positiveX and positiveY and ExpFracXltExpFracY)
      or (isNormalX and isNormalY and negativeX and negativeY and ExpFracXgtExpFracY)
      or ((isInfX and negativeX) and (not (isInfY and negativeY)))    ;
   unorderedR <=  isNaNX or isNaNY;
   XltYR <= XltYNum and not unorderedR;
   unordered <= unorderedR;
   XltY <= XltYR;
end architecture;

