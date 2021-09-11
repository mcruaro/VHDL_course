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
    SIGNAL o3_tb : STD_LOGIC;

BEGIN

    exe_5 : ENTITY work.exe_5
        PORT MAP(
            in1 => in1_tb,

            out1  => o1_tb,
            out2  => o2_tb,
            out3  => o3_tb
        );

    PROCESS
    BEGIN
        in1_tb <= '1';
        wait for 30 ns;
        in1_tb <= '0';

        WAIT; -- end of test

    END PROCESS;
END testbench;