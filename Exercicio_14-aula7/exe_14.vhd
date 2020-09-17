library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity exe_14 is
    port (
        --Entrada
        clock : in std_logic;
        reset : in std_logic
    );
end exe_14;

architecture exe_14 of exe_14 is

    signal tick_counter : unsigned (2 downto 0); --3 bits

    begin

        process(clock, reset) 
        begin
            if reset = '1' then
                
                tick_counter <= "000";

            elsif rising_edge(clock) then --tick_counter= 1

                tick_counter <= tick_counter + 1;
                
                if tick_counter = 2 then
                    report "Ola mundao";
                end if;

            end if;
           
        
        end process;
      
end architecture;
