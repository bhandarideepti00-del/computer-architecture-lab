library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity COMPARATOR_2BIT_LOGIC is
    port(
        A  : in std_logic_vector(1 downto 0); -- A1A0
        B  : in std_logic_vector(1 downto 0); -- B1B0
        EQ : out std_logic;
        GT : out std_logic;
        LT : out std_logic
    );
end entity COMPARATOR_2BIT_LOGIC;

architecture Behavioral of COMPARATOR_2BIT_LOGIC is
begin
    EQ <= (not(A(1) xor B(1))) and (not(A(0) xor B(0)));
    GT <= (A(1) and not B(1)) or ((not(A(1) xor B(1))) and (A(0) and not B(0)));
    LT <= ((not A(1)) and B(1)) or ((not(A(1) xor B(1))) and ((not A(0)) and B(0)));
end architecture Behavioral;