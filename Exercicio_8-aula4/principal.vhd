library ieee;
use ieee.std_logic_1164.all;

entity principal is
    port (
        --Entrada
        in1 : in std_logic_vector(3 downto 0);
        --Saida
        out1    : out std_logic
    );
end principal;

architecture principal of principal is
    signal sig_out1 : std_logic;
    signal sig_out2 : std_logic;
    
    begin

        --Instanciacao de modulo em um objeto chamado modulo1
        modulo1 : entity work.modulo
        port map(
            A  => in1(3),
            B  => in1(2),
            C  => sig_out1
        );

        --Instanciacao de modulo em um objeto chamado modulo1
        modulo2 : entity work.modulo
        port map(
            A  => in1(1), 
            B  => in1(0), 
            C  => sig_out2
        );

        out1 <= sig_out1 or sig_out2;

end architecture;


