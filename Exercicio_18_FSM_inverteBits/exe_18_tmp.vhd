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
    type stateFSM is (B0, B1);
    signal FSM : stateFSM;
    signal index : integer range 0 to 15;
    
begin

    --release <= '1' when FSM = Unlocked else '0';
    ready <= '1' when index = 0 else '0';

    process(clock, reset)
    begin
        if reset = '1' then
            FSM <= B0;
            index <= 15;
            out1 <= "0000000000000000";
        elsif rising_edge(clock) then

            if index > 0 then
                index <= index - 1;
                case FSM is
                    when B0 =>
                        if in1(index) = '1' then
                            FSM <= B1;
                        end if;
                    when B1 =>
                        if in1(index) = '0' then
                            FSM <= B0;
                        end if;
                        out1(index) <= in1(index);
                end case;

            end if;
        
        end if;
    end process;

end exe_18;