library ieee;
use ieee.std_logic_1164.all;

entity teclado is
    port (
        --Entrada
        a_en : in std_logic; 
        b_en : in std_logic; 
        c_en : in std_logic; 
        d_en : in std_logic; 

        --Saida
        key_out : out std_logic_vector(7 downto 0) --2 bits
        
    );
end teclado;

architecture teclado of teclado is
    constant A : std_logic_vector(7 downto 0) := "01000001";
    constant B : std_logic_vector(7 downto 0) := "01000010";
    constant C : std_logic_vector(7 downto 0) := "01000011";
    constant D : std_logic_vector(7 downto 0) := "01000100";

    begin

        key_out <=  A when a_en = '1' else
                    B when b_en = '1' else
                    C when c_en = '1' else
                    D when d_en = '1' else
                    (others=> '0');--equivale a completar tudo com zero == "00000000"
       
    end architecture;


