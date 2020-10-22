library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity semaforo is
    generic(
        init : in std_logic --bit usado para informar qual modulo sera o primeiro a inciar em verde
    );

    port (
        --Entrada
        clock : in std_logic;
        reset : in std_logic;

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
    
    constant Tg : std_logic_vector(3 downto 0) := "1000"; --Equivale a 8 decimal
    constant Ty : std_logic_vector(3 downto 0) := "0010"; --Equivale a 2 decimal
    constant Tr : std_logic_vector(3 downto 0) := "1010"; --Equivale a 10 decimal

    begin
       
        GENERATE_TESTE_ON: if init = '1' generate
            sync_out <= '1';
        end generate GENERATE_TESTE_ON;

        GENERATE_TESTE_OFF: if init = '0' generate
            sync_out <= '0';
        end generate GENERATE_TESTE_OFF;

         --Logica combinacional
         verde    <= '1' when FSM = GREEN   else '0';
         amarelo  <= '1' when FSM = YELLOW  else '0';
         vermelho <= '1' when FSM = RED     else '0';
         --sync_out <= '1' when FSM = GREEN or FSM = YELLOW else '0';


        --Logica sequencia
        --Controla a FSM
        process(clock, reset) 
        begin
            if reset = '1' then
                counter <= "0001";
                
                if init = '1' then
                    FSM <= GREEN;
                else
                    FSM <= RED;
                end if;

            elsif rising_edge(clock) then

                case FSM  is
                
                    when GREEN =>
                        if counter < Tg then
                            counter <= counter + 1;
                        else
                            FSM <= YELLOW;     
                            counter <= "0001"; 
                        end if;
                    when YELLOW =>
                        if counter < Ty then
                            counter <= counter + 1;
                        else
                            FSM <= RED;
                            counter <= "0001";
                        end if;
                    when RED =>
                        if counter < Tr then
                            counter <= counter + 1;
                        elsif sync_in = '0' then
                            FSM <= GREEN;
                            counter <= "0001";
                        end if;

                end case ;

            end if;
        end process;

        
end architecture;