LIBRARY IEEE;
USE ieee.std_logic_1164.ALL;

ENTITY testbench IS
END testbench;

ARCHITECTURE testbench OF testbench IS

    SIGNAL in1_tb :  std_logic_vector(7 downto 0);
    SIGNAL in2_tb :  std_logic_vector(7 downto 0);
    SIGNAL out1_tb : std_logic_vector(31 downto 0);

BEGIN

    exe_5 : ENTITY work.exe_5
        PORT MAP(
            in1 => in1_tb,
            in2 => in2_tb,
            out1 => out1_tb
        );
    PROCESS
    BEGIN
        in1_tb <= x"10"; --"00010000";
        in2_tb <= x"20";
        WAIT; -- end of test

    END PROCESS;
END testbench;