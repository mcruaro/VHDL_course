LIBRARY IEEE;
USE ieee.std_logic_1164.ALL;

ENTITY testbench IS
END testbench;

ARCHITECTURE testbench OF testbench IS

signal clock_tb : std_logic := '0';
signal reset_tb : std_logic;

BEGIN

    clock_exemplo : ENTITY work.clock_exemplo
        PORT MAP(
            clock   => clock_tb,
            reset   => reset_tb 
        );


    reset_tb <= '1', '0' after 100 ns;
    clock_tb <= not clock_tb after 5 ns;

END testbench;