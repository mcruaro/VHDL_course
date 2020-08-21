library ieee;
use ieee.std_logic_1164.all;

entity exe_2 is
  port (
    a : in std_logic;
    b : in std_logic;
    c : in std_logic;
    d : in std_logic;

    s1 : out std_logic;
    s2 : out std_logic;
    s3 : out std_logic
  ) ;
end exe_2 ;

architecture arch_exe_2 of exe_2 is
begin
  s1 <= a and (not b);
  s2 <= (a or b) and (c or d);
  s3 <= (a or (not b)) and not(c or (a and d));
end architecture ; 

