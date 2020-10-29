library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity cpu is
    port (
        clock : in std_logic;
        reset : in std_logic;

        v1  : in std_logic_vector(3 downto 0);
        v2  : in std_logic_vector(3 downto 0);
        addr: in std_logic_vector(2 downto 0);
        valid:in std_logic;

        end_operation : out std_logic;

        data_out : out std_logic_vector(3 downto 0);
        data_in  : in  std_logic_vector(3 downto 0);

        read_addr  : out std_logic_vector(2 downto 0);
        write_addr : out std_logic_vector(2 downto 0);
        we         : out std_logic
    );
end cpu;

architecture cpu of cpu is
    
    signal result : std_logic_vector(3 downto 0);

    type fsm_state is (WAIT_VALID, COMPARE, STORE, WAIT_MEM, FINISH);
    signal FSM : fsm_state;

    begin

        process(clock, reset)
        begin
            if reset = '1' then
                write_addr <= "000";
                read_addr <= "000";

                we <= '0';
                FSM <= WAIT_VALID;

                result <= "0000";
                end_operation <= '0';
                
            elsif rising_edge(clock) then
                case FSM is
                    when WAIT_VALID =>
                        if valid = '1' then
                            FSM <= COMPARE;
                        end if;
                    when COMPARE =>
                        result <= v1 xor v2;
                        FSM <= STORE;
                    when STORE =>
                        we <= '1';
                        write_addr <= addr;
                        if result = "0000" then
                            data_out <= "0001";
                        else
                            data_out <= "0000";
                        end if;
                        FSM <= WAIT_MEM;
                    when WAIT_MEM =>
                        FSM <= FINISH;
                        we <= '0';
                    when FINISH =>
                        end_operation <= '0';
                end case;
            end if;

        end process; 
end architecture;
