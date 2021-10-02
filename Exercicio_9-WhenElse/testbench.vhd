LIBRARY IEEE;
USE ieee.std_logic_1164.ALL;

ENTITY testbench IS
END testbench;

ARCHITECTURE testbench OF testbench IS

    signal in1_tb     :  std_logic_vector(1 downto 0);
    signal in2_tb     :  std_logic_vector(1 downto 0);
    signal in3_tb     :  std_logic_vector(1 downto 0);
    signal control_tb :  std_logic_vector(1 downto 0);  
    signal out1_tb    :  std_logic_vector(1 downto 0);

BEGIN

    exe_9 : ENTITY work.exe_9
        PORT MAP(
            in1     => in1_tb,
            in2     => in2_tb,
            in3     => in3_tb,
            control => control_tb,
            out1    => out1_tb
        );
    PROCESS
    BEGIN
        in1_tb <= "11";
        in2_tb <= "00";
        in3_tb <= "01";
        
        control_tb <= "00";
        WAIT FOR 10 ns;
        control_tb <= "01";
        WAIT FOR 10 ns;
        control_tb <= "10";
        WAIT FOR 10 ns;
        control_tb <= "11";
        WAIT; -- end of test

    END PROCESS;
END testbench;