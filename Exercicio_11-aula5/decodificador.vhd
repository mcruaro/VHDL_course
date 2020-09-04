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

        key_out <=  A when a_en = '1' else
                    B when b_en = '1' else
                    C when c_en = '1' else
                    D when d_en = '1' else
                    (others=> '0');--equivale a completar tudo com zero == "00000000"
       
    end architecture;


