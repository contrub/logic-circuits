library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity NotGate_code is
    Port ( 
        A : in STD_LOGIC;
        Y : out STD_LOGIC
    );
end NotGate_code;

architecture Behavioral of NotGate_code is
begin
    Y <= NOT A;
end Behavioral;
