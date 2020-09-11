library ieee;
use ieee.std_logic_1164.all;

entity decodificador is
    port (
        --Entrada
        p0 : in std_logic;
        p1 : in std_logic;
        p2 : in std_logic;
        p3 : in std_logic;

        --Saida
        x1 : out std_logic;
        x0 : out std_logic;
        int: out std_logic
    );
end decodificador;

architecture decodificador of decodificador is

    --destino <= valor WHEN condicao_verdadeira ELSE
     --          valor WHEN condicao_verdadeira ELSE
    --           valor_padrao
    --

    begin
        --Ver se esse codigo que fiz em aula esta de acordo com a tabela mesmo        
        x1 <= '0' when (p0 = '1' or p1 = '1') else '1';
        x0 <= '0' when (p0 = '1' or p2 = '1') else '1';
        int <= '0' when (p0 = '0' and p1 = '0' and p2 = '0' and p3 = '0') else '1';

    end architecture;


