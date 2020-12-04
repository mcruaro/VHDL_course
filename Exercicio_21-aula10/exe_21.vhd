library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity exe_21 is
    port (
        --Entrada
        clock : in std_logic;
        reset : in std_logic;

        A       : in std_logic;
        T       : out std_logic 
    );
end exe_21;

architecture exe_21 of exe_21 is
    --              1   0   1   1
    type state is (B0, B1, B2, B3, LIGHT1, LIGHT2); --3 bits
    signal FSM : state;
    
    begin

        --logica combinacional
        T <= '1' when (FSM = LIGHT1 or FSM = LIGHT2) else '0'; 

        --logica sequencial
        process(clock, reset) 
        begin
            if reset = '1' then
                FSM <= B0;
            elsif rising_edge(clock) then

                case FSM is
                    when B0 =>
                        if A = '1' then
                            FSM <= B1;
                        end if;
                    when B1 =>
                        if A = '0' then
                            FSM <= B2;
                        end if;
                    when B2 =>
                        if A = '1' then
                            FSM <= B3;
                        else
                            FSM <= B0;
                        end if;
                    when B3 =>
                        if A = '1' then
                            FSM <= LIGHT1;
                        else
                            FSM <= B2;
                        end if;
                    when LIGHT1 =>
                        FSM <= LIGHT2;
                    when LIGHT2 =>
                        FSM <= B0;
                end case;
            end if;
        end process;
end architecture;