library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity troca_bits_v2 is
    port (
        --Entrada
        clock : in std_logic;
        reset : in std_logic;

        ready_in    : in std_logic;
        in1         : in std_logic_vector(7 downto 0);
        out1        : out std_logic_vector(7 downto 0);
        ready_out   : out std_logic 
    );
end troca_bits_v2;

--Quanto menos lugares voce alterar o valor de algo, melhor
--Tente separar a atribuicao de sinais em processos diferentes, nao faca tudo no mesmo process

architecture troca_bits_v2 of troca_bits_v2 is

    type state is (INIT, B0, B1, R);
    signal FTB : state;
    signal counter : integer range 0 to 7;
    signal last_zero : std_logic;

    begin
        --IN = 1000110
     
        process(clock, reset) 
        begin
            if reset = '1' then
                FTB <= B1;
                ready_out <= '0';
                last_zero <= '0';
            elsif rising_edge(clock) then

                    when INIT =>

                        ready_out <= '0';

                        if ready_in = '1' then

                            last_zero <= '0';

                            if in1(counter) = '0' then
                                FTB <= B0; 
                            else
                                FTB <= B1;
                            end if;
                        end if; 
       
                    when B0 =>   --001
                        --Testa a troca do bit 
                        if counter = 0 then
                            FTB <= R;
                        elsif in1(counter) = '1' then
                            FTB <= B1;      
                            last_zero <= '1';                                     
                        end if;        
                
                    when B1 => 
                        
                        if last_zero = '1' then
                            last_zero <= '0';
                        end if;

                        if counter = 0 then
                            FTB <= R;
                        elsif in1(counter) = '0' then
                            FTB <= B0;   
                        end if;
                        
                    when R => 
                        ready_out <= '1';
                        FTB <= INIT;
                end case;
                               
            end if;
        end process;

        process(clock, reset) 
        begin
            if reset = '1' then
                out1 <= (others => '0');
            elsif rising_edge(clock) then

                if last_zero = '1' then
                    out1(counter) <= '0';
                else
                    out1(counter) <= in1(counter);
                end if;
            
            end if;
        end process;


        process(clock, reset) 
        begin
            if reset = '1' then
                counter <= 7;
            elsif rising_edge(clock) then

                if FTB = B0 or FTB = B1 then
                    counter = counter - 1;
                else 
                    counter <= 7;
                end if;
            
            end if;
        end process;

      
end architecture;
