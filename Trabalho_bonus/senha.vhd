library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity senha is
    port (
        clock : in std_logic;
        reset : in std_logic;
        --Novas portas vao aqui em baixo:
        botao_on : in std_logic;

        imprimir : out std_logic;
        valor : out std_logic_vector(15 downto 0)
    );
end senha;

architecture senha of senha is
    
    type state is (W_B, P); --Cria os estados da maquina de estados
    signal FSM : state;     --Cria a variavel da maquina de estado

    signal contador : std_logic_vector(15 downto 0); --Cria o sinal (variavel) contador com 16 bits

    begin

        --Logica combinacional
        valor <= contador;
        imprimir <= '1' when FSM = P else '0';

        --Logica sequencial
        process(clock, reset)
        begin
            if reset = '1' then
                FSM <= W_B;
                contador <= "0000000000000001";
            elsif rising_edge(clock) then
                --Implementacao da maquina de estados, engloba todos os estados possiveis (W_B e P)
                case FSM is
                    when W_B =>
                        if botao_on = '1' then
                            FSM <= P;
                        end if;
                    when P =>
                        contador <= contador + 1;
                        FSM <= W_B;
                end case;

            end if;
        end process;
        

end architecture;