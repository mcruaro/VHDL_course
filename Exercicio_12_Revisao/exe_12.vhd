library ieee;
use ieee.std_logic_1164.all;

entity exe_12 is
    port (
        a : in std_logic;
        b : in std_logic;
        c : in std_logic;

        in1 : in std_logic_vector(2 downto 0);
        in2 : in std_logic_vector(2 downto 0);

        out1 : out std_logic_vector(2 downto 0)
    );
end exe_12;

architecture exe_12 of exe_12 is
    signal sel : std_logic;
begin

    sel <= (a and b) or (not c);

    out1 <= in1 when sel = '1' else
            in2 when sel = '0' else
            "000";

end exe_12;