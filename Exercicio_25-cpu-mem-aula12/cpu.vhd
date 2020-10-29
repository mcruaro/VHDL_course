library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity cpu is
    port (
        clock : in std_logic;
        reset : in std_logic;

        data_out : out std_logic_vector(3 downto 0);
        data_in  : in  std_logic_vector(3 downto 0);

        read_addr  : out std_logic_vector(2 downto 0);
        write_addr : out std_logic_vector(2 downto 0);
        we         : out std_logic
    );
end cpu;

architecture cpu of cpu is
    
    type fsm_state is (S1, S2...);
    signal FSM : fsm_state;

    begin

        process(clock, reset)
        begin
            if reset = '1' then
                we <= '0';
                FSM <= WRITE;
            elsif rising_edge(clock) then
                
            end if;

        end process; 
end architecture;
