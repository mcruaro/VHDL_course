library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity catraca is
    port (
        --Entrada
        clock : in std_logic;
        reset : in std_logic

    );
end catraca;

architecture catraca of catraca is

    begin
        process(clock, reset) 
        begin
            
            if reset = '1' then
               
            elsif rising_edge(clock) then

               
            end if;
        end process;
      
end architecture;
