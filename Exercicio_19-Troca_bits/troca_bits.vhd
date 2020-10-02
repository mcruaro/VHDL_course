library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity troca_bits is
    port (
        --Entrada
        clock : in std_logic;
        reset : in std_logic;

        ready_in    : in std_logic;
        in1         : in std_logic_vector(7 downto 0);
        out1        : out std_logic_vector(7 downto 0);
        ready_out   : out std_logic 
    );
end troca_bits;

architecture troca_bits of troca_bits is

    type state is (INIT, B0, B1, R);
    signal FTB : state;
    signal counter : integer range 0 to 7;

    begin
        --IN = 1000110
     
        process(clock, reset) 
        begin
            if reset = '1' then
                FTB <= INIT;
                counter <= 7;
                out1 <= (others => '0');
                ready_out <= '0';
            elsif rising_edge(clock) then
       
                case FTB is --switch(FTB) {
                    when INIT => --case INIT:
                        ready_out <= '0';
                        if ready_in = '1' then
                            if in1(counter) = '0' then
                                FTB <= B0;
                            else
                                FTB <= B1;
                            end if;
                            counter <= counter - 1;
                            out1(counter) <= in1(counter);
                        end if;
                            --     210 = counter
                    when B0 =>   --001
                        --Testa a troca do bit 
                        if in1(counter) = '1' and counter /= 0 then --Se o bit atual eh 1 e eu estou em B0 "01"
                            FTB <= B1;                                           
                        end if;

                        out1(counter) <= '0';
                        
                        --Controla o counter
                        if counter = 0 then
                            FTB <= R;
                        else
                            counter <= counter - 1;
                        end if;                  
                
                    when B1 => 
                        
                        if in1(counter) = '0' and counter /= 0 then   
                            FTB <= B0;    
                        end if;
                        out1(counter) <= in1(counter);
                        
                        --Controla o counter
                        if counter = 0 then
                            FTB <= R;
                        else
                            counter <= counter - 1;
                        end if; 

                        
                    when R => 
                        ready_out <= '1';
                        FTB <= INIT;
                end case;

                               

            end if;
        end process;
      
end architecture;
