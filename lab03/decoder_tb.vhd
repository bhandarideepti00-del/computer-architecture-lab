library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DECODER_TB is
end entity DECODER_TB;

architecture Simulation of DECODER_TB is
    signal A  : std_logic_vector(1 downto 0) := "00";
    signal EN : std_logic := '1';
    signal Y  : std_logic_vector(3 downto 0);
begin

    DUT: entity work.DECODER_2T04
        port map(
            A  => A,
            EN => EN,
            Y  => Y
        );

    STIMULUS: process
    begin
        EN <= '1';

        A <= "00"; wait for 10 ns;
        A <= "01"; wait for 10 ns;
        A <= "10"; wait for 10 ns;
        A <= "11"; wait for 10 ns;

        EN <= '0';
        A <= "10"; wait for 10 ns;

        wait;
    end process;

end Simulation;