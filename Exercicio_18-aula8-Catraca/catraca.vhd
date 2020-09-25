library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity catraca is
    port (
        --Entrada
        clock : in std_logic;
        reset : in std_logic;

        push : in std_logic;
        coin : in std_logic;

        free : out std_logic

    );
end catraca;

architecture catraca of catraca is

    type state is (LOCKED, UNLOCKED);
    signal fsm_catraca : state;

    begin

        free <= '1' when fsm_catraca = UNLOCKED else '0';

        process(clock, reset) 
        begin
            if reset = '1' then
                fsm_catraca <= LOCKED;
            elsif rising_edge(clock) then

                case fsm_catraca is 
                    
                    when LOCKED =>
                        --Logica do estado LOCKED
                        if coin = '1' then
                            fsm_catraca <= UNLOCKED;
                        end if;
                    
                    when UNLOCKED =>
                        --Logica do estado UNLOCKED
                        if push = '1' then
                            fsm_catraca <= LOCKED;
                        end if;
                end case;

            end if;
        end process;
      
end architecture;
