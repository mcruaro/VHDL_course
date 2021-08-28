library ieee;
use ieee.std_logic_1164.all;

entity exe_1 is
    port (
        in1 : in std_logic;
        in2 : in std_logic;
        in3 : in std_logic;
        
        o1 : out std_logic;   --Porta de saida
        o2 : out std_logic   --Porta de saida
    );
end exe_1;

architecture exe_1 of exe_1 is

    signal c : std_logic;
    signal d : std_logic;

begin

    c <= in1 and in2;
    d <= c or in3;

    o1 <= c and d;
    o2 <= d;

    --o1 <= (in1 and in2) and ((in1 and in2)  or  (in3));
    --o2 <=  (in1 and in2)  or  (in3);

end exe_1;