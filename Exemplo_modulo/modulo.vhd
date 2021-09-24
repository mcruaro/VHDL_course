library ieee;
use ieee.std_logic_1164.all;

entity modulo is
    port (
        A  : in std_logic;
        B  : in std_logic;

        C : out std_logic   --Porta de saida
    );
end modulo;

architecture modulo of modulo is

    signal s1 : std_logic;
    signal s2 : std_logic;

begin

    s1 <= A and B;
    s2 <= not B;

    C <= s1 or s2;

end modulo;