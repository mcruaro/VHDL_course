LIBRARY IEEE;
USE ieee.std_logic_1164.ALL;

ENTITY testbench IS
END testbench;

ARCHITECTURE testbench OF testbench IS

    SIGNAL in1_tb : std_logic_vector(3 downto 0);
    SIGNAL out1_tb : std_logic_vector(5 downto 0);

BEGIN

    exe_7 : ENTITY work.exe_7
        PORT MAP(
            in1 => in1_tb,
            out1 => out1_tb
        );
    PROCESS
    BEGIN
        in1_tb <= "1001";
        WAIT FOR 10 ns;
        in1_tb <= "0110";
        WAIT FOR 10 ns;
        in1_tb <= "1111";
        WAIT FOR 10 ns;
        in1_tb <= "0000";
        WAIT; -- end of test

    END PROCESS;
END testbench;