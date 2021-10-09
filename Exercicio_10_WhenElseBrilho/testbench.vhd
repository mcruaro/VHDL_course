LIBRARY IEEE;
USE ieee.std_logic_1164.ALL;

ENTITY testbench IS
END testbench;

ARCHITECTURE testbench OF testbench IS

signal b_retorno_tb  :  std_logic_vector(6 downto 0);

BEGIN

    seletor_brilho : ENTITY work.seletor_brilho
        PORT MAP(
            b0         => "0101000", --40%
            b1         => "0111100", --60%
            b2         => "1010000", --80%
            b3         => "1100100", --100%
            bs         => "00000011", --Valor do seletor
            b_retorno  => b_retorno_tb
        );
    PROCESS
    BEGIN
        
        WAIT FOR 10 ns;
        WAIT; -- end of test

    END PROCESS;
END testbench;