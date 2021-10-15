LIBRARY IEEE;
USE ieee.std_logic_1164.ALL;

ENTITY testbench IS
END testbench;

ARCHITECTURE testbench OF testbench IS

signal b_retorno_tb  :  std_logic_vector(6 downto 0);
    signal a_tb : std_logic;
    signal b_tb : std_logic;
    signal c_tb : std_logic;
    signal in1_tb : std_logic_vector(2 downto 0);
    signal in2_tb : std_logic_vector(2 downto 0);
BEGIN

    exe_12 : ENTITY work.exe_12
        PORT MAP(
            a         => a_tb, 
            b         => b_tb, 
            c         => c_tb,
            in1       => in1_tb, 
            in2       => in2_tb
        );

    PROCESS
    BEGIN
        a_tb <= '0';
        b_tb <= '1';
        c_tb <= '1';
        in1_tb <= "011";
        in2_tb <= "100";
        WAIT FOR 10 ns;
        c_tb <= '0';
        WAIT; -- end of test

    END PROCESS;
END testbench;