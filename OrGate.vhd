library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity OrGate_code is
    Port ( 
        A : in STD_LOGIC;
        B : in STD_LOGIC;
        Y : out STD_LOGIC
    );
end OrGate_code;

architecture Behavioral of OrGate_code is
begin
    Y <= A OR B;
end Behavioral;
