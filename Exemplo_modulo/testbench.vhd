LIBRARY IEEE;
USE ieee.std_logic_1164.ALL;

ENTITY testbench IS
END testbench;

ARCHITECTURE testbench OF testbench IS

    SIGNAL in1_tb : std_logic_vector(1 downto 0);
    SIGNAL out1_tb : std_logic;

BEGIN

    principal : ENTITY work.principal
        PORT MAP(
            in1 => in1_tb,
            out1 => out1_tb
        );

    PROCESS
    BEGIN
        in1_tb <= "10";
        wait for 10 ns;
        in1_tb <= "11";
        wait for 10 ns;
        in1_tb <= "01";
        wait for 10 ns;
        in1_tb <= "00";
        WAIT; -- end of test

    END PROCESS;
END testbench;