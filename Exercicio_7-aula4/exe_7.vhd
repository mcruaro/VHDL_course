library ieee;
use ieee.std_logic_1164.all;

entity exe_6 is
    port (
        --Entrada
        in1 : in std_logic_vector(7 downto 0);
        in2 : in std_logic_vector(7 downto 0);

        --Saida
        out1 : out std_logic
    );
end exe_6;

architecture exe_6 of exe_6 is
    begin
        
        out1 <= '1' when in1 > in2 else '0';
      
    end architecture;


