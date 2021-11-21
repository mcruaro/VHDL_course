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
    signal in_value : std_logic;
    
begin

    in_value <= in1(index);

    --release <= '1' when FSM = Unlocked else '0';
    ready <= '1' when index = 0 else '0';

    process(clock, reset)
    begin
        if reset = '1' then
            FSM <= B0;
        elsif rising_edge(clock) then
            case FSM is
                when B0 =>
                    if in_value = '0' then
                        FSM <= B1;
                    end if;
                when B1 =>
                    if in_value = '1' then
                        FSM <= B0;
                    end if;
            end case;
        end if;
    end process;

    process(clock, reset)
    begin
        if reset = '1' then
            index <= 15;
        elsif rising_edge(clock) then
            if index >= 0 then
                index <= index - 1;
            end if;
        end if;
    end process;

    process(clock, reset)
    begin
        if reset = '1' then
            out1 <= "0000000000000000";
        elsif rising_edge(clock) then
            if FSM /= B1 then
                out1(index) <= in_value;
            end if;
        end if;
    end process;

end exe_18;