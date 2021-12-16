library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity piscaluz is
    port (
        clock : in std_logic;
        reset : in std_logic;

         --Sinal de entrada 'ena' saida 'light' aqui 
        ena : in std_logic;
        light : out std_logic

    );
end piscaluz;

architecture piscaluz of piscaluz is
    
begin


end piscaluz;