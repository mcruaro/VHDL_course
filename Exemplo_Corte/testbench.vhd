LIBRARY IEEE;
USE ieee.std_logic_1164.ALL;

ENTITY testbench IS
END testbench;

ARCHITECTURE testbench OF testbench IS

    SIGNAL in1_tb : STD_LOGIC_VECTOR(3 downto 0);
    SIGNAL o1_tb : STD_LOGIC_VECTOR(1 downto 0);

BEGIN

    exemplo : ENTITY work.exemplo
        PORT MAP(
            a => in1_tb,
            c  => o1_tb
        );

    PROCESS
    BEGIN
        in1_tb <= "1001"; --a
        --wait for 30 ns;
        WAIT; -- end of test

    END PROCESS;
END testbench;