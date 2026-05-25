library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity gates_tb is
end gates_tb;

architecture test of gates_tb is

    signal A, B : STD_LOGIC := '0';
    signal Y_and, Y_or, Y_nand, Y_nor, Y_xor, Y_xnor, Y_not : STD_LOGIC;

begin

    uut1: entity work.and_gate port map(A => A, B => B, Y => Y_and);
    uut2: entity work.or_gate port map(A => A, B => B, Y => Y_or);
    uut3: entity work.nand_gate port map(A => A, B => B, Y => Y_nand);
    uut4: entity work.nor_gate port map(A => A, B => B, Y => Y_nor);
    uut5: entity work.xor_gate port map(A => A, B => B, Y => Y_xor);
    uut6: entity work.xnor_gate port map(A => A, B => B, Y => Y_xnor);
    uut7: entity work.not_gate port map(A => A, Y => Y_not);

    process
    begin
        A <= '0'; B <= '0'; wait for 10 ns;
        A <= '0'; B <= '1'; wait for 10 ns;
        A <= '1'; B <= '0'; wait for 10 ns;
        A <= '1'; B <= '1'; wait for 10 ns;
        wait;
    end process;

end test;