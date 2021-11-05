library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity exe_17 is
    port (
        clock : in std_logic;
        reset : in std_logic;

        coin   : in std_logic;
        push   : in std_logic
    );
end exe_17;

architecture exe_17 of exe_17 is
    type stateFSM is (Lock, Unlock);
    signal FSM : stateFSM;
    
begin

    --TEMA: Mudar a FSM PRA RECONHECER O PADRAO "0110".
    --SERA NECESSARIO CRIAR MAIS UM ESTADO?
    process(clock, reset)
    begin
        if reset = '1' then
            FSM <= Lock;
        elsif rising_edge(clock) then

            case FSM is
                when Lock =>
                when Unlock =>
            end case;
        
        end if;
    end process;

end exe_17;