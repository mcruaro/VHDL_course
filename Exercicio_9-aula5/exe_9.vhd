library ieee;
use ieee.std_logic_1164.all;

entity exe_9 is
    port (
        --Entrada
        in1 : in std_logic_vector(1 downto 0); --2 bits
        in2 : in std_logic_vector(1 downto 0); --2 bits
        control : in std_logic; --1 bit

        --Saida
        out1 : out std_logic_vector(1 downto 0) --2 bits
        
    );
end exe_9;

architecture exe_9 of exe_9 is

    begin

        out1 <= in1 when control = '1' else
                in2;          
      
    end architecture;


