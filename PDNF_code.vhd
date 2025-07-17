library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity PDNF_code is
    Port ( x1, x2, x3, x4 : in STD_LOGIC;
           isPDNF : out STD_LOGIC);
end PDNF_code;

architecture Behavioral of PDNF_code is
    function AND4(a, b, c, d: STD_LOGIC) return STD_LOGIC is
    begin
        return a and b and c and d;
    end function;
begin
    isPDNF <= '1' when (
			AND4(not x1, not x2, not x3, not x4) = '1' or  -- 0000
			AND4(not x1, not x2, not x3,     x4) = '1' or  -- 0001
			AND4(not x1,     x2, not x3, not x4) = '1' or  -- 0100
			AND4(not x1,     x2,     x3, not x4) = '1' or  -- 0110
			AND4(    x1, not x2, not x3,     x4) = '1' or  -- 1001
			AND4(    x1, not x2,     x3,     x4) = '1'     -- 1011
    ) else '0';
end Behavioral;