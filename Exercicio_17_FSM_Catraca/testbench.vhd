LIBRARY IEEE;
USE ieee.std_logic_1164.ALL;

ENTITY testbench IS
END testbench;

ARCHITECTURE testbench OF testbench IS

signal clock_tb : std_logic := '0';
signal reset_tb : std_logic;

signal coin_tb   : std_logic;
signal push_tb   : std_logic;

BEGIN

    exe_17 : ENTITY work.exe_17
        PORT MAP(
            clock   => clock_tb,
            reset   => reset_tb,
            coin    => coin_tb,
            push    => push_tb
        );


    reset_tb <= '1', '0' after 100 ns; --100 MHz
    clock_tb <= not clock_tb after 5 ns;

    process
    begin
        coin_tb <= '0';
        push_tb <= '0';
        wait for 105 ns;--aguarda o reset baixar
        
        coin_tb <= '0';
        push_tb <= '1';
        wait for 10 ns;

        coin_tb <= '0';
        push_tb <= '0';
        wait for 10 ns;

        coin_tb <= '1';
        push_tb <= '0';
        wait for 10 ns;

        coin_tb <= '0';
        push_tb <= '0';
        wait for 10 ns;

        coin_tb <= '0';
        push_tb <= '1';
        wait for 10 ns;

        coin_tb <= '0';
        push_tb <= '0';
        wait for 10 ns;

        coin_tb <= '0';
        push_tb <= '1';
        wait for 10 ns;
        
        wait;
    end process;

END testbench;