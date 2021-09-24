library ieee;
use ieee.std_logic_1164.all;

entity principal is
    port (
        in1 : in std_logic_vector(1 downto 0);
        out1: out std_logic
    );
end principal;

architecture principal of principal is

begin

    modulo1 : entity work.modulo
    port map(
        A => in1(1),
        B => in1(0),
        C => out1
    );


end principal;