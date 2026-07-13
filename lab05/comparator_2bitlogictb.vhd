library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity COMPARATOR_TB_LOGIC is
end entity COMPARATOR_TB_LOGIC;

architecture Simulation of COMPARATOR_TB_LOGIC is
    signal A, B : std_logic_vector(1 downto 0);
    signal EQ, GT, LT : std_logic;
begin

    DUT: entity work.COMPARATOR_2BIT_LOGIC
        port map(A => A, B => B, EQ => EQ, GT => GT, LT => LT);

    STIMULUS: process
    begin
       
        for i in 0 to 3 loop
            for j in 0 to 3 loop
                A <= std_logic_vector(to_unsigned(i, 2));
                B <= std_logic_vector(to_unsigned(j, 2));
                wait for 10 ns;
            end loop;
        end loop;

        wait;
    end process;
end architecture Simulation;