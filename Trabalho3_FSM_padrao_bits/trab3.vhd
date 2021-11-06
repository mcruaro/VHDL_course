library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity trab3 is
    port (
        clock : in std_logic;
        reset : in std_logic;

        my_bit   : in std_logic

        --Adicionar o sinal de saida aqui e alterar o testbench tambem
    );
end trab3;

architecture trab3 of trab3 is
    type stateFSM is (E1, E2, E3, E4, R);
    signal FSM : stateFSM;
    
begin

    --Trabalho 3: 
    -- a) Mudar a FSM pra reconhecer o padrao "1001".
    -- b) Implementar um contador que armazena o numero de padroes detectados
    -- c) Adicionar um sinal de saida, que fica permanentemente positivo apos o contador alcancar o valor de 2
    
    --Data de entrega: até as 19h de 19/11/2021 - via post logos "TRABALHO 3"
    --Entrar em contato com o prof. (marceloruaro@setrem.com.br) pra angendar apresentacao do trabalho
    --Trabalho vale 2 pontos de 10 (mesma coisa que o trabalho 2)
    process(clock, reset)
    begin
        if reset = '1' then
            FSM <= E1;
        elsif rising_edge(clock) then

            case FSM is
                --Adicionar os estados coforme os novos estados 
                when E1 =>
                when E2 =>
                when E3 =>
                when E4 =>
                when R =>
            end case;
        
        end if;
    end process;

end trab3;