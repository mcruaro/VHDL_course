library ieee;
use ieee.std_logic_1164.all;

entity exe_12 is
    port (
        --Entrada
        in1 : in std_logic_vector(2 downto 0);
        in2 : in std_logic_vector(2 downto 0);

        a : in std_logic;
        b : in std_logic;
        c : in std_logic;

        --Saida
        out1 : std_logic_vector(2 downto 0)
    );
end exe_12;

architecture exe_12 of exe_12 is

    signal sel : std_logic;

    begin
       
        --parte 1
        sel <= (a and b) or (not c);


    --destino <= valor WHEN condicao_verdadeira ELSE
     --          valor WHEN condicao_verdadeira ELSE
    --           valor_padrao
        --parte 2
        out1 <= in1 when sel = '1' else
                in2 when sel = '0' else
                "000";

    end architecture;


