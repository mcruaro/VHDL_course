library ieee;
use ieee.std_logic_1164.all;

entity modulo is
    port (
        --Entrada
        A : in std_logic;
        B : in std_logic;

        --Saida
        C : out std_logic
    );
end modulo;

architecture modulo of modulo is

    begin
        
        C <= (A and B) or (not B);
      
end architecture;