library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity buffer_gate is
    Port ( A : in STD_LOGIC;
           Y : out STD_LOGIC);
end buffer_gate;

architecture Behavioral of buffer_gate is
begin
    Y <= A;
end Behavioral;