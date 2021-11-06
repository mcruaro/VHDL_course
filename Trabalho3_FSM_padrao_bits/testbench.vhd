LIBRARY IEEE;
USE ieee.std_logic_1164.ALL;

ENTITY testbench IS
END testbench;

ARCHITECTURE testbench OF testbench IS

signal clock_tb : std_logic := '0';
signal reset_tb : std_logic;

signal my_bit_tb   : std_logic;

BEGIN

    trab3 : ENTITY work.trab3
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
        wait for 105 ns;
        my_bit_tb <= '0';
        wait for 10 ns;
        my_bit_tb <= '1';
        wait for 10 ns;
        my_bit_tb <= '1';
        wait for 10 ns;
        my_bit_tb <= '0'; --
        wait for 10 ns;
        my_bit_tb <= '0'; --
        wait for 10 ns;
        my_bit_tb <= '1'; --
        wait for 10 ns;
        my_bit_tb <= '1';
        wait for 10 ns;
        my_bit_tb <= '0'; --
        wait for 10 ns;
        my_bit_tb <= '0'; --
        wait for 10 ns;
        my_bit_tb <= '1'; --xx
        wait for 10 ns;
        my_bit_tb <= '0';
        wait for 10 ns;
        my_bit_tb <= '1';
        wait for 10 ns;
        my_bit_tb <= '0'; --
        wait for 10 ns;
        my_bit_tb <= '1'; --
        wait for 10 ns;
        my_bit_tb <= '1'; --xx
        wait for 10 ns;
        my_bit_tb <= '0';
        wait for 10 ns;
        my_bit_tb <= '1';
        wait for 10 ns;
        my_bit_tb <= '0'; --
        wait for 10 ns;
        my_bit_tb <= '0'; --
        wait for 10 ns;
        my_bit_tb <= '0'; --xx
        wait for 10 ns;
        my_bit_tb <= '1';
        --Adicionar aqui mais testes de 1 e 0 se quiser testar melhor seu circuito
        wait;
    end process;

END testbench;