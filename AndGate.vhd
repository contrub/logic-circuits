library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity AndGate_code is
    Port ( 
        A : in STD_LOGIC;
        B : in STD_LOGIC;
        Y : out STD_LOGIC
    );
end AndGate_code;

architecture Behavioral of AndGate_code is
begin
    Y <= A AND B;
end Behavioral;
