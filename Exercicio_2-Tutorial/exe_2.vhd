library ieee;
use ieee.std_logic_1164.all;

entity exe_2 is
    port (
        a : in std_logic;
        b : in std_logic;
        o : out std_logic   --Porta de saida
    );
end exe_2;

architecture exe_2 of exe_2 is
begin
    
    o <= a or b;

end exe_2;