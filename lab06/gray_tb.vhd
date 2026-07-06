library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity GRAY_TB is
end entity GRAY_TB;

architecture Simulation of GRAY_TB is
    signal B : std_logic_vector(3 downto 0) := "0000";
    signal G : std_logic_vector(3 downto 0);
begin
    DUT : entity work.BIN_TO_GRAY port map (B => B, G => G);

    STIMULUS : process
    begin
        B <= "0000"; wait for 10 ns;
        B <= "0001"; wait for 10 ns;
        B <= "0010"; wait for 10 ns;
        B <= "0011"; wait for 10 ns;
        B <= "0100"; wait for 10 ns;
        B <= "1111"; wait for 10 ns;
        wait;
    end process;
end architecture Simulation;