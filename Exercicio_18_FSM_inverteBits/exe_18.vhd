library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity exe_18 is
    port (
        clock : in std_logic;
        reset : in std_logic;

        in1    : in std_logic_vector(15 downto 0);

        out1   : out std_logic_vector(15 downto 0);
        ready : out std_logic
    );
end exe_18;

architecture exe_18 of exe_18 is
    type stateFSM is (B0, B1, R);
    signal FSM : stateFSM;
    
begin

    --release <= '1' when FSM = Unlocked else '0';
    
    process(clock, reset)
    begin
        if reset = '1' then
            FSM <= B0;

        elsif rising_edge(clock) then

            case FSM is
                when B0 =>
                when B1 =>
                when R =>
            end case;
        
        end if;
    end process;

end exe_18;