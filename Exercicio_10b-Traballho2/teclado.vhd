library ieee;
use ieee.std_logic_1164.all;

entity teclado is
    port (
        a_en : in std_logic;
        b_en : in std_logic;
        c_en : in std_logic;
        d_en : in std_logic;

        key_out : out std_logic_vector(7 downto 0)
    );
end teclado;

architecture teclado of teclado is

    constant A : std_logic_vector(7 downto 0) := x"41"; --A
    constant B : std_logic_vector(7 downto 0) := x"42"; --B
    constant C : std_logic_vector(7 downto 0) := x"43"; --C
    constant D : std_logic_vector(7 downto 0) := x"44"; --D
begin
    
    key_out <= A when a_en = '1' else
               B when b_en = '1' else
               C when c_en = '1' else
               D;

end teclado;