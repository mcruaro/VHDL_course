LIBRARY IEEE;
USE ieee.std_logic_1164.ALL;

ENTITY testbench IS
END testbench;

ARCHITECTURE testbench OF testbench IS

    signal a_en_tb     :  std_logic;
    signal b_en_tb     :  std_logic;
    signal c_en_tb     :  std_logic;
    signal d_en_tb  :  std_logic;  
    signal key_out_tb    :  std_logic_vector(7 downto 0);

BEGIN

    teclado : ENTITY work.teclado
        PORT MAP(
            a_en     => a_en_tb,
            b_en     => b_en_tb,
            c_en     => c_en_tb,
            d_en     => d_en_tb,
            key_out  => key_out_tb
        );
    PROCESS
    BEGIN
    
        a_en_tb <= '1';
        b_en_tb <= '0';
        c_en_tb <= '0';
        d_en_tb <= '0';
        WAIT FOR 10 ns;
        a_en_tb <= '0';
        b_en_tb <= '1';
        WAIT FOR 10 ns;
        b_en_tb <= '0';
        c_en_tb <= '1';
        WAIT FOR 10 ns;
        c_en_tb <= '0';
        d_en_tb <= '1';
        WAIT FOR 10 ns;
        d_en_tb <= '0';
        WAIT; -- end of test

    END PROCESS;
END testbench;