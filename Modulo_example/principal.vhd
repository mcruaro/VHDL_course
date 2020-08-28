library ieee;
use ieee.std_logic_1164.all;

entity principal is
  port (
    --Entrada
    in1 : in std_logic_vector(1 downto 0);--2 bits
    --Saida
    out1 : out std_logic -- 1 bit
  ) ;
end principal ;

architecture principal of principal is
begin
   
    modulo1 : entity work.modulo
    port map(
        A => in1(1),
        B => in1(0),
        C => out1
    );

end architecture ; 