library ieee;
use ieee.std_logic_1164.all;

entity exe_4 is
    port (
        --Entrada
        in1 : in std_logic;
        in2 : in std_logic;
        in3 : in std_logic;

        --Saida
        out1 : out std_logic
    );
end exe_4;

architecture exe_4 of exe_4 is
    signal sig1 : std_logic;
    signal sig2 : std_logic;

    begin
        
        

        sig1 <= in1 or in2;
        sig2 <= not in3;
        
        out1 <= sig1 and sig2;
      
    end architecture;


