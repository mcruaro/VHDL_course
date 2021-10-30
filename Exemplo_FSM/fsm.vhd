library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity fsm is
    port (
        clock : in std_logic;
        reset : in std_logic;

        my_bit   : in std_logic
    );
end fsm;

architecture fsm of fsm is
    type stateFSM is (ZERO, ONE);
    signal FSM : stateFSM;
    
begin

    process(clock, reset)
    begin
        if reset = '1' then
            FSM <= ZERO;
        elsif rising_edge(clock) then

            case FSM is
                when ZERO =>
                    if my_bit = '1' then
                        FSM <= ONE;
                    end if;
                when ONE =>
                    if my_bit = '0' then
                        FSM <= ZERO;
                    end if;
            end case;

        end if;
    end process;

end fsm;