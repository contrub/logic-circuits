library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity PKNF_code is
    Port ( x1, x2, x3, x4 : in STD_LOGIC;
           isPKNF : out STD_LOGIC);
end PKNF_code;

architecture Behavioral of PKNF_code is
    function OR4(a, b, c, d: STD_LOGIC) return STD_LOGIC is
    begin
        return a or b or c or d;
    end function;
begin
    isPKNF <= '0' when (
			OR4(    x1,     x2, not x3,     x4) = '1' and  -- 0010
			OR4(    x1,     x2, not x3, not x4) = '1' and  -- 0011
			OR4(    x1, not x2,     x3, not x4) = '1' and  -- 0101
			OR4(    x1, not x2, not x3, not x4) = '1' and  -- 0111
			OR4(not x1,     x2,     x3,     x4) = '1' and  -- 1000
			OR4(not x1,     x2, not x3,     x4) = '1' and  -- 1010
			OR4(not x1, not x2,     x3,     x4) = '1' and  -- 1100
			OR4(not x1, not x2,     x3, not x4) = '1' and  -- 1101
			OR4(not x1, not x2, not x3,     x4) = '1' and  -- 1110
			OR4(not x1, not x2, not x3, not x4) = '1'      -- 1111
	) else '1';
end Behavioral;