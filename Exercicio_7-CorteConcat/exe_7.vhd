library ieee;
use ieee.std_logic_1164.all;

entity exe_7 is
    port (
        in1 : in std_logic_vector(3 downto 0);
        out1 : out std_logic_vector(5 downto 0)   --Porta de saida
    );
end exe_7;

architecture exe_7 of exe_7 is
    signal sig1 : std_logic;
    constant ZERO : std_logic_vector(5 downto 0) := "000000";
begin
    
    sig1 <= in1(3) and in1(2);

    out1 <= sig1 & (sig1 or in1(1)) & in1(0) & ZERO(5 downto 3);

end exe_7;