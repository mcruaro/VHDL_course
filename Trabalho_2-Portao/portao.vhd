library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity portao is
    port (
        --Entrada
        clock : in std_logic;
        reset : in std_logic;

        controle_on     : in std_logic;
        fa              : in std_logic;
        ff              : in std_logic;
        --Saida
        abrir           : out std_logic;
        fechar          : out std_logic
    );
end portao;

--Quanto menos lugares voce alterar o valor de algo, melhor
--Tente separar a atribuicao de sinais em processos diferentes, nao faca tudo no mesmo process

architecture portao of portao is
    --Criacao dos estados e do sinal FSM_P
    type state is (ABERTO, ABRINDO, FECHANDO, FECHADO);
    signal FSM_P : state;

    begin
        
        --Logica combinacional (fora do process)
        abrir <= '1' when FSM_P = ABRINDO else '0';
        fechar <= '1' when FSM_P = FECHANDO else '0';
     
        --Logica combinacional
        process(clock, reset) 
        begin
            if reset = '1' then
                FSM_P <= FECHADO;
            elsif rising_edge(clock) then
                case FSM_P is
                    when ABERTO =>
                        if controle_on = '1' then
                            FSM_P <= FECHANDO;
                        end if;
                    when ABRINDO =>
                        if fa = '1' then
                             FSM_P <= ABERTO;
                        end if; 
                    when FECHANDO =>
                        if ff = '1' then
                            FSM_P <= FECHADO;
                        end if;
                    when FECHADO =>
                        if controle_on = '1' then
                            FSM_P <= ABRINDO;
                        end if;
                end case ;
                               
            end if;
        end process;

end architecture;
