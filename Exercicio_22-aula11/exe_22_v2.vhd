library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity exe_22 is
    port (
        --Entrada
        clock : in std_logic;
        reset : in std_logic;

        ena   : in std_logic;
        light : out std_logic
    );
end exe_22;

architecture exe_22 of exe_22 is
    
    type state is (STOP, LIGA, OFF); --2 bits
    signal FSM : state;
    signal counter : std_logic_vector(3 downto 0); --4 bits para representar 10
    
    constant T1 : std_logic_vector(3 downto 0) := "1010"; --Equivale a 10 decimal
    constant T2 : std_logic_vector(3 downto 0) := "0101"; --Equivale a 5 decimal

    begin

        --Logica combinacional
        light <= '1' when FSM = LIGA else '0';

        --Logica sequencia
        --Controla a FSM
        process(clock, reset) 
        begin
            if reset = '1' then
                FSM <= STOP;
            elsif rising_edge(clock) then

                case FSM is
                    
                    when STOP =>
                        if ena = '1' then 
                            FSM <= LIGA;
                        end if;   

                    when LIGA =>
                        if ena = '0' then
                            FSM <= STOP;
                        elsif counter = T1 then --counter = 10
                            FSM <= OFF;
                        end if;

                    when OFF =>
                        if ena = '0' then
                            FSM <= STOP;
                        elsif counter = T2 then --counter = 5
                            FSM <= LIGA;
                        end if;
                end case;
            end if;
        end process;

        --Controla o counter
        process(clock, reset)
        begin
            if reset = '1' then
                counter <= "0001";
            elsif rising_edge(clock) then
                if FSM = STOP or (FSM = LIGA and counter = T1) or (FSM = OFF and counter = T2) then
                    counter <= "0001";
                else
                    counter <= counter + 1;
                end if;

            end if;
            
        end process; 

        
end architecture;