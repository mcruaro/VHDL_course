library ieee;
use ieee.std_logic_1164.all;

entity exemplo is
    port (
        a : in std_logic_vector(3 downto 0);

        c : out std_logic_vector(1 downto 0)

    );
end exemplo;

architecture exemplo of exemplo is
begin
    --Corte
    c <= a(3 downto 2);

    --Concatenação
    --c <= a(3) & a(0);

end exemplo;