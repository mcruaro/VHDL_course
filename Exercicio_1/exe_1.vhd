library ieee;
use ieee.std_logic_1164.all;

entity exe_1 is
  port (
    in1 : in std_logic;
    in2 : in std_logic;
    in3 : in std_logic;

    o1 : out std_logic;
    o2 : out std_logic
  ) ;
end exe_1 ;

architecture arch_exe_1 of exe_1 is
begin
    
  o1 <= in1 and in2;
  o2 <= in2 or in3;

end architecture ; 

