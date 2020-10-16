library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity exe_22 is
    port (
        --Entrada
        clock : in std_logic;
        reset : in std_logic;

        ena       : in std_logic;
        light     : out std_logic 
    );
end exe_22;

architecture exe_22 of exe_22 is
    
    type state is (STOP, LIGA, OFF); --2 bits
    signal FSM : state;
    signal counter : std_logic_vector(3 downto 0); --4 bits, suporta valor de 10
    
    constant T1 : std_logic_vector(3 downto 0) := "1010"; --10 em binario 
    constant T2 : std_logic_vector(3 downto 0) := "0101"; --5 em binario 

    begin

        --logica combinacional
        light <= '1' when FSM = LIGA else '0'; 

        --logica sequencial
        process(clock, reset) 
        begin
            if reset = '1' then
                FSM <= STOP;
            elsif rising_edge(clock) then

                case FSM is
                    
                    when STOP =>
                        if ena = '1' then
                            counter <= "0001";
                            FSM <= LIGA;
                        end if;

                    when LIGA =>
                        if ena = '0' then
                            FSM <= STOP;
                        elsif counter = T1 then
                            FSM <= OFF;
                            counter <= "0001";
                        else
                            counter <= counter + 1;
                        end if;

                    when OFF =>
                        if ena = '0' then
                            FSM <= STOP;
                        elsif counter = T2 then
                            FSM <= LIGA;
                            counter <= "0001";
                        else
                            counter <= counter + 1;
                        end if;
                end case;
            end if;
        end process;
end architecture;