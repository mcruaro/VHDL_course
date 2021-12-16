LIBRARY IEEE;
USE ieee.std_logic_1164.ALL;

ENTITY testbench IS
END testbench;

ARCHITECTURE testbench OF testbench IS

signal clock_tb : std_logic := '0';
signal reset_tb : std_logic;

signal ena_tb   : std_logic;
signal light_tb   : std_logic;

BEGIN

    piscaluz : ENTITY work.piscaluz
        PORT MAP(
            clock       => clock_tb,
            reset       => reset_tb,
            ena         => ena_tb,
            light       => light_tb
        );


    reset_tb <= '1', '0' after 100 ns; --100 MHz
    clock_tb <= not clock_tb after 5 ns;

    process
    begin
        ena_tb <= '0';
        wait for 105 ns;
        ena_tb <= '1';
        wait for 500 ns;
        ena_tb <= '0';
        wait for 100 ns;
        ena_tb <= '1';
        wait for 400 ns;
        ena_tb <= '0';
    end process;

END testbench;