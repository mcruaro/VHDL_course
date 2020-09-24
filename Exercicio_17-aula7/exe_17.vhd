library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;


entity exe_17 is
    port (
        --Entrada
        clock : in std_logic;
        reset : in std_logic;
        --Bits que vem do teclado numerico
        zero : in std_logic;
        um : in std_logic;
        dois : in std_logic;
        tres : in std_logic;
        quatro : in std_logic;
        cinco : in std_logic;
        seis : in std_logic;
        sete : in std_logic;
        oito : in std_logic;
        nove : in std_logic
    );
end exe_17;

architecture exe_17 of exe_17 is  

    signal display : std_logic_vector(3 downto 0);
    
    begin
        
        process(clock, reset) 
        begin
            if reset = '1' then
                display <= (others => '0');
            elsif rising_edge(clock) then --tick_counter= 1

                if zero = '1' then
                    display <= "0000";
                elsif um = '1' then
                    display <= "0001";
                elsif dois = '1' then
                    display <= "0010";
                elsif tres = '1' then
                    display <= "0011";
                elsif quatro = '1' then
                    display <= "0100";
                elsif cinco = '1' then
                    display <= "0101";
                elsif seis = '1' then   
                    display <= "0110"; 
                elsif sete = '1' then
                    display <= "0111";
                elsif oito = '1' then
                    display <= "1000";
                elsif nove = '1' then
                    display <= "0101";
                end if;

            end if;
           
        
        end process;
      
end architecture;
