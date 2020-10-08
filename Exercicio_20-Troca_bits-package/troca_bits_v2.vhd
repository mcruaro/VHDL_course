library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use work.standards.all;

entity troca_bits_v2 is
    port (
        --Entrada
        clock : in std_logic;
        reset : in std_logic;

        ready_in    : in std_logic;
        in1         : in reg8;
        out1        : out reg8;
        ready_out   : out std_logic 
    );
end troca_bits_v2;

--Quanto menos lugares voce alterar o valor de algo, melhor
--Tente separar a atribuicao de sinais em processos diferentes, nao faca tudo no mesmo process

architecture troca_bits_v2 of troca_bits_v2 is

    type state is (INIT, BITS);
    signal FTB : state;
    signal counter : integer range 0 to BUS_HIGH_INDEX;

    begin
        --IN = 1000110
     
        process(clock, reset) 
        begin
            if reset = '1' then
                FTB <= INIT;
                ready_out <= '0';
                counter <= BUS_HIGH_INDEX;
                out1 <= (others => '0');
            elsif rising_edge(clock) then

                case FTB is    
                    when INIT =>
                        counter <= BUS_HIGH_INDEX;      
                        ready_out <= '0';

                        if ready_in = '1' then
                            FTB <= BITS;            
                        end if; 
       
                    when BITS =>   
                        --Testa a troca do bit 
                        if counter < BUS_HIGH_INDEX and in1(counter+1) = '0' and in1(counter) = '1' then
                            out1(counter) <= '0';
                        else
                            out1(counter) <= in1(counter);                                    
                        end if;    
                        
                        if counter = 0 then
                            ready_out <= '1';
                            FTB <= INIT;
                        else
                            counter <= counter - 1;
                        end if;


                
                end case;
                               
            end if;
        end process;
end architecture;