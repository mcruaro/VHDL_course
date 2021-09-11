library ieee;
use ieee.std_logic_1164.all;

entity exemplo is
    port (
        a : in std_logic_vector(1 downto 0);
        b : in std_logic_vector(1 downto 0);

        c : out std_logic_vector(3 downto 0)

    );
end exemplo;

architecture exemplo of exemplo is
begin
    
    c <= a & b;

end exemplo;