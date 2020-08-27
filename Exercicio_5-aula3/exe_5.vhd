library ieee;
use ieee.std_logic_1164.all;

entity exe_6 is
    port (
        --Entrada
        in1 : in std_logic_vector(7 downto 0);
        in2 : in std_logic_vector(7 downto 0);

        --Saida
        out1 : out std_logic_vector(31 downto 0)
    );
end exe_6;

architecture exe_6 of exe_5 is
    constant ZERO : std_logic_vector(15 downto 0) := "0000000000000000";

    begin
        
        out1 <= in1 & in2 & ZERO;
      
    end architecture;


