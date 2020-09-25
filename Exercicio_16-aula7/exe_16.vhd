library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;


entity exe_16 is
    port (
        --Entrada
        clock : in std_logic;
        reset : in std_logic;
        in1   : in std_logic_vector(3 downto 0)
    );
end exe_16;

architecture exe_16 of exe_16 is  

    signal in1_high : std_logic_vector(1 downto 0);--2 bits
    signal in1_low  : std_logic_vector(1 downto 0);--2 bits
    signal test_equal  : std_logic_vector(7 downto 0);--2 bits
    
    begin

        in1_high <= in1(3 downto 2);  
        in1_low  <= in1(1 downto 0);

        process(clock, reset) 
        begin
            if reset = '1' then
                test_equal <= (others => '0');
            
             elsif rising_edge(clock) then --tick_counter= 1
               
                if in1_high = in1_low then
                    test_equal <= test_equal + 1;
                end if;

            end if;
           
        
        end process;
      
end architecture;
