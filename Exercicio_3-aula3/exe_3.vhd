library ieee;
use ieee.std_logic_1164.all;

entity exe_3  is
  port (
    in1 : in std_logic;
    out1 : out std_logic;
    out2 : out std_logic;
    out3 : out std_logic
  ) ;
end exe_3  ;

architecture exe_3  of exe_3  is
    constant ENABLED : std_logic := '1';
    constant BUS_S   : std_logic_vector(7 downto 0) := "11101010";
    constant INDEX   : integer := 7;
begin

    out1 <= in1 and ENABLED;
    out2 <= BUS_S(3);
    out3 <= BUS_S(INDEX);
    

end architecture ; 