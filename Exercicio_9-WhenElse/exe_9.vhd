library ieee;
use ieee.std_logic_1164.all;

entity exe_9 is
    port (
        in1     : in std_logic_vector(1 downto 0);
        in2     : in std_logic_vector(1 downto 0);
        in3     : in std_logic_vector(1 downto 0);
        control : in std_logic_vector(1 downto 0);  
        
        out1    : out std_logic_vector(1 downto 0)
    );
end exe_9;

architecture exe_9 of exe_9 is
begin
    
    out1 <= in1 when control = "00" else
            in2 when control = "01" else
            in3 when control = "10" else
            "01";

end exe_9;