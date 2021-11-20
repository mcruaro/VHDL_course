LIBRARY IEEE;
USE ieee.std_logic_1164.ALL;

ENTITY testbench IS
END testbench;

ARCHITECTURE testbench OF testbench IS

    signal p0_tb     :  std_logic;
    signal p1_tb     :  std_logic;
    signal p2_tb     :  std_logic;
    signal p3_tb     :  std_logic;  

    signal x0_tb     :  std_logic;  
    signal x1_tb     :  std_logic;  

    signal int_tb    :  std_logic;

BEGIN

    decod : ENTITY work.decod
        PORT MAP(
            p0     => p0_tb,
            p1     => p1_tb,
            p2     => p2_tb,
            p3     => p3_tb,
            x1     => x1_tb,
            x0     => x0_tb,
            int    => int_tb
        );
    PROCESS
    BEGIN
    
        p0_tb <= '1';
        p1_tb <= '0';
        p2_tb <= '0';
        p3_tb <= '0';
        WAIT FOR 10 ns;
        p0_tb <= '0';
        p1_tb <= '1';
        WAIT FOR 10 ns;
        p1_tb <= '0';
        p2_tb <= '1';
        WAIT FOR 10 ns;
        p2_tb <= '0';
        p3_tb <= '1';
        WAIT FOR 10 ns;
        p3_tb <= '0';
        WAIT; -- end of test

    END PROCESS;
END testbench;