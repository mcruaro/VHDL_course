LIBRARY IEEE;
USE ieee.std_logic_1164.ALL;

ENTITY testbench IS
END testbench;

ARCHITECTURE testbench OF testbench IS

    SIGNAL in1_tb : STD_LOGIC;
    SIGNAL in2_tb : STD_LOGIC;
    SIGNAL in3_tb : STD_LOGIC;
    SIGNAL o1_tb : STD_LOGIC;
    SIGNAL o2_tb : STD_LOGIC;

BEGIN

    exe_1 : ENTITY work.exe_1
        PORT MAP(
            in1 => in1_tb,
            in2 => in2_tb,
            in3 => in3_tb,

            o1  => o1_tb,
            o2  => o2_tb
        );
    PROCESS
    BEGIN
        in1_tb <= '1';
        in2_tb <= '0';
        in3_tb <= '1';
        wait for 10 ns;

        in2_tb <= '1';
        in3_tb <= '0';

        WAIT; -- end of test

    END PROCESS;
END testbench;