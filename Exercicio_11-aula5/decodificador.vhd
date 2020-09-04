library ieee;
use ieee.std_logic_1164.all;

entity decodificador is
    port (
        --Entrada

        --Saida
        
        
    );
end decodificador;

architecture decodificador of decodificador is


    begin
        --Ver se esse codigo que fiz em aula esta de acordo com a tabela mesmo
        x1 <=  '0' when p0 = '1' else
               '0' when p1 = '1' else
               '1' when p2 = '1' else
               '1' when p2 = '1' else
               '1';

        --Fazer o WHEN-ELSE do x0
        
        --Fazer o WHEN-else do int (ou pode usar uma porta logica tambem como falei em aula)
                  
    end architecture;


