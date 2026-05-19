library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity buffer_tb is
end buffer_tb;

architecture test of buffer_tb is

    signal tb_A : std_logic := '0';
    signal tb_Y : std_logic;

begin

    uut: entity work.buffer_gate
        port map(
            A => tb_A,
            Y => tb_Y
        );

    process
    begin
        tb_A <= '0'; wait for 10 ns;
        tb_A <= '1'; wait for 10 ns;
        tb_A <= '0'; wait for 10 ns;
        wait;
    end process;

end test;