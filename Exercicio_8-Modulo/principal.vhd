library ieee;
use ieee.std_logic_1164.all;

entity principal is
    port (
        in1 : in std_logic_vector(3 downto 0);
        out1: out std_logic
    );
end principal;

architecture principal of principal is
    signal sig_out1 : std_logic;
    signal sig_out2 : std_logic;

    signal sig_a : std_logic;
    signal sig_b : std_logic;
begin

    out1 <= sig_out1 or sig_out2;

    modulo1 : entity work.modulo
    port map(
        A => in1(3),
        B => in1(2),
        C => sig_out1
    );

    modulo2 : entity work.modulo
    port map(
        A => in1(1),
        B => in1(0),
        C => sig_out2
    );


end principal;