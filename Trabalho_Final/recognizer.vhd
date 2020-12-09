library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity recognizer is

    port (
        clock : in std_logic;
        reset : in std_logic;

        --Entrada
        --Criar o sinal de entrada bit_in conforme o pdf

        --Saidas
        --Criar os sinais de saida recognized e line conforme o pdf

        --ATENCAO: Só depois de criar esses sinais acima, e que a compilacao ira funcionar
    );
    
end recognizer;

architecture recognizer of recognizer is
   
    
    
    

    begin

        --Logica combinacional
       
    
        --Logical sequencial
        process(clock, reset)
        begin
            if reset = '1' then
               
            elsif rising_edge(clock) then

                
            end if;
        end process;
end architecture;