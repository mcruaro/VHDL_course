library ieee;
use ieee.std_logic_1164.all;

entity exe_7 is
    port (
        --Entrada
        in1 : in std_logic_vector(3 downto 0);
       
        --Saida
        out1 : out std_logic_vector(5 downto 0)
    );
end exe_7;

architecture exe_7 of exe_7 is

    constant ZERO : std_logic_vector(5 downto 0) := "000000";
    signal sig1 : std_logic;

    begin

        sig1 <= in1(3) and in1(2);

        out1(5) <= sig1;
        out1(4) <= sig1 or in1(1);
        out1(3) <= in1(0);
        
        --
        --out1(2) <= ZERO(5);
        --out1(1) <= ZERO(4);
        --out1(0) <= ZERO(3);

        --
        out1(2 downto 0) <= ZERO(5 downto 3);
      
    end architecture;


