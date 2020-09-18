library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity exe_15 is
    port (
        --Entrada
        clock : in std_logic;
        reset : in std_logic;
        in1 : in std_logic_vector(1 downto 0)
    );
end exe_15;

architecture exe_15 of exe_15 is  
    begin

       

        process(clock, reset) 
        begin
            if reset = '1' then
             
            elsif rising_edge(clock) then --tick_counter= 1

                if in1 = "00" then 
                    report "ZERO";
                elsif in1 = "01" then
                    report "UM";
                elsif in1 = "10" then
                    report "DOIS";
                elsif in1 = "11" then
                    report "TRES";
                end if;

            end if;
           
        
        end process;
      
end architecture;
