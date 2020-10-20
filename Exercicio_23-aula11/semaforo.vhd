library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity semaforo is

    port (
        --Entrada
        clock : in std_logic;
        reset : in std_logic;

        --sinal inicial que diz qual modulo sera o primeiro a inciar em verde
        initial : in std_logic; 

        verde : out std_logic;
        amarelo : out std_logic;
        vermelho: out std_logic;

        sync_in   : in std_logic;
        sync_out  : out std_logic


    );
end semaforo;

architecture semaforo of semaforo is
    
    type state is (GREEN, YELLOW, RED); --2 bits
    signal FSM : state;
    signal counter : std_logic_vector(3 downto 0); --4 bits para representar 10

    begin

       
        process(clock, reset) 
        begin
            if reset = '1' then

                counter <= "0001";
                if initial = '1' then --Conforme o valor em initial o semaforo inicia de uma forma
                    FSM <= GREEN;
                else
                    FSM <= RED;
                end if;

            elsif rising_edge(clock) then

                

            end if;
        end process;

        
end architecture;