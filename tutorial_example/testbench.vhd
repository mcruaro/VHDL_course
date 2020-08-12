LIBRARY IEEE;
USE ieee.std_logic_1164.ALL;

ENTITY testbench IS
END testbench;

ARCHITECTURE testbench OF testbench IS

    SIGNAL a_tb : std_logic;
    SIGNAL b_tb : std_logic;
    SIGNAL o_tb : std_logic;

BEGIN

    simple_example : ENTITY work.simple_example
        PORT MAP(
            a => a_tb,
            b => b_tb,
            o => o_tb
        );

    PROCESS
    BEGIN
        a_tb <= '0';
        b_tb <= '1';
        WAIT FOR 10 ns;

        a_tb <= '1';
        b_tb <= '0';
        WAIT FOR 10 ns;

        a_tb <= '0';
        WAIT FOR 10 ns;

        WAIT; -- end of test
    END PROCESS;

END testbench;