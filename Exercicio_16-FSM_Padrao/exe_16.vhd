library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity exe_16 is
    port (
        clock : in std_logic;
        reset : in std_logic;

        my_bit   : in std_logic
    );
end exe_16;

architecture exe_16 of exe_16 is
    type stateFSM is (E1, E2, E3, R);
    signal FSM : stateFSM;
    
begin

    --TEMA: Mudar a FSM PRA RECONHECER O PADRAO "0110".
    --SERA NECESSARIO CRIAR MAIS UM ESTADO?
    process(clock, reset)
    begin
        if reset = '1' then
            FSM <= E1;
        elsif rising_edge(clock) then

            case FSM is
                when E1 =>
                    if my_bit = '0' then
                        FSM <= E2;
                    end if;
                when E2 =>
                    if my_bit = '1' then
                        FSM <= E3;
                    end if;  
                when E3 =>
                    if my_bit = '1' then
                        FSM <= R;
                    end if;
                when R =>
                    if my_bit = '1' then
                        FSM <= E1;
                    else
                        FSM <= E2;
                    end if; 
            end case;
        
        end if;
    end process;

end exe_16;