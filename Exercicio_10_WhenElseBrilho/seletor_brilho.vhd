library ieee;
use ieee.std_logic_1164.all;

entity seletor_brilho is
    port (
        b0     : in std_logic_vector(6 downto 0);
        b1     : in std_logic_vector(6 downto 0);
        b2     : in std_logic_vector(6 downto 0);
        b3     : in std_logic_vector(6 downto 0);
        
        bs     : in std_logic_vector(7 downto 0);  
        
        b_retorno    : out std_logic_vector(6 downto 0)
    );
end seletor_brilho;

architecture seletor_brilho of seletor_brilho is
begin
    
    b_retorno <= b0 when bs < x"40" else --x"40" == 64 em decimal
                 b1 when bs < x"80" else --x"80" == 128 em decimal
                 b2 when bs < x"c0" else --x"c0" == 196 em decimal
                 b3;


end seletor_brilho;