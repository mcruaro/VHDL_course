library ieee;
use ieee.std_logic_1164.all;

entity exe_1 is
    port (
        a : in std_logic;
        b : in std_logic;
        o : out std_logic   --Porta de saida
    );
end exe_1;

architecture exe_1 of exe_1 is
begin
    
    o <= a and b;

end exe_1;