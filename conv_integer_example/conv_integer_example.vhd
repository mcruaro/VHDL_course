library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity conv_integer_example is
  port (
      a : in std_logic_vector (10 downto 0)
  ) ;
end conv_integer_example ;

architecture arch of conv_integer_example is
    signal my_int : integer range 0 to 3;
    constant x : std_logic_vector(3 downto 0) := "1011";
    constant y : std_logic := '1';
    constant z : integer := 12;
begin

    my_int <= CONV_INTEGER(a);


end architecture ; 



