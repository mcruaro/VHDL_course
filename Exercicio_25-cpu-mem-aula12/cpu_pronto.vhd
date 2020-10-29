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
    signal data1 : std_logic_vector(3 downto 0);
    signal data2 : std_logic_vector(3 downto 0);
    signal write_counter : std_logic_vector(3 downto 0);
    
    type fsm_state is (WRITE, READ1, READ2, FINISH);
    signal FSM : fsm_state;

    begin

        process(clock, reset)
        begin
            if reset = '1' then
                we <= '0';
                FSM <= WRITE;
                write_counter <= "0000";
                write_addr <= "000";
                read_addr <= "000";
                data1 <= "0000";
                data2 <= "0000";
            elsif rising_edge(clock) then
                case FSM is
                    when WRITE =>

                        if write_counter < "1000" then
                            we <= '1';
                            
                            write_addr <= write_counter(2 downto 0);
                            data_out <= write_counter + 8;

                            write_counter <= write_counter + 1;
                        else
                            we <= '0';
                            FSM <= READ1;
                        end if;

                    when READ1 =>
                        read_addr <= "110"; --6 em decimal
                        FSM <= READ2;

                    when READ2 =>
                        data1 <= data_in;
                        
                        read_addr <= "111"; --7 em decimal
                        FSM <= FINISH;

                    when FINISH =>
                        data2 <= data_in;
                end case;
            end if;

        end process; 
end architecture;
