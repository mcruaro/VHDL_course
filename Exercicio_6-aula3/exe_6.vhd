library ieee;
use ieee.std_logic_1164.all;

entity exe_6 is
    port (
        --Entrada
        address : in std_logic_vector(31 downto 0);
        --Saida
        instruction : out std_logic_vector(15 downto 0);
        absolute : out std_logic_vector(15 downto 0) 
        );
end exe_6;

architecture exe_6 of exe_6 is
    
    begin
        instruction <= address(31 downto 16);
        absolute <= address(15 downto 0);
       
    end architecture;
