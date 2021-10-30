LIBRARY IEEE;
USE ieee.std_logic_1164.ALL;

ENTITY testbench IS
END testbench;

ARCHITECTURE testbench OF testbench IS

signal clock_tb : std_logic := '0';
signal reset_tb : std_logic;

signal my_bit_tb   : std_logic;

BEGIN

    fsm : ENTITY work.fsm
        PORT MAP(
            clock   => clock_tb,
            reset   => reset_tb,
            my_bit     => my_bit_tb
        );


    reset_tb <= '1', '0' after 100 ns; --100 MHz
    clock_tb <= not clock_tb after 5 ns;

    process
    begin
        my_bit_tb <= '0';
        wait for 110 ns;
        my_bit_tb <= '0';
        wait for 20 ns;
        my_bit_tb <= '1';
        wait for 20 ns;
        my_bit_tb <= '1';
        wait for 20 ns;
        my_bit_tb <= '1';
        wait for 20 ns;
        my_bit_tb <= '0';
        wait for 20 ns;
        my_bit_tb <= '0';
        wait for 20 ns;
        my_bit_tb <= '1';
        wait for 20 ns;
        my_bit_tb <= '0';
        wait;
    end process;

END testbench;