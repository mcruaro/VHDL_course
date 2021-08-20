library ieee;
use ieee.std_logic_1164.all;

entity simple_example is
    port (
        a : in std_logic;
        b : in std_logic;
        o : out std_logic   --Porta de saida
    );
end simple_example;

architecture simple_example of simple_example is
begin
    o <= a and b;
end simple_example;