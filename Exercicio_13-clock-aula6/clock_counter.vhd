library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity clock_counter is
    port (
        --Entrada
        clock : in std_logic;
        reset : in std_logic

    );
end clock_counter;

architecture clock_counter of clock_counter is

    --signal tick_counter : integer range 0 to 200; 
    signal tick_counter : unsigned(31 downto 0);

    begin

        process(clock, reset) 
        begin
            
            if reset = '1' then
            
                tick_counter <= (others => '0');
            
            elsif rising_edge(clock) then

                tick_counter <= tick_counter + 1;

            end if;
        
        end process;
      
    end architecture;
