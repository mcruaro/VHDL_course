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

    type fsm_state is (WRITE, LOAD1, LOAD2, READ1, READ2);
    signal FSM : fsm_state;

    signal counter : std_logic_vector(3 downto 0);
    signal data1 : std_logic_vector(3 downto 0);
    signal data2 : std_logic_vector(3 downto 0);


    begin
        --Logica combinacional
        --write_addr <= counter(2 downto 0);

        process(clock, reset)
        begin
            if reset = '1' then
                we <= '0';
                FSM <= WRITE;
                counter <= "0000";
                data1 <= "0000";
                data2 <= "0000";
            elsif rising_edge(clock) then

                case FSM is 
                    when WRITE =>
                        if counter < "1000" then --8
                            data_out <= counter + 8;
                            counter <= counter + 1;
                            write_addr <= counter(2 downto 0);
                            we <= '1';
                        else
                            we <= '0';
                            FSM <= LOAD1;
                        end if;
                    when LOAD1 =>
                        read_addr <= "110";--6
                        FSM <= LOAD2;
                    when LOAD2 =>
                        read_addr <= "111";--7
                        FSM <= READ1;
                    when READ1 =>
                        data1 <= data_in;
                        FSM <= READ2;
                    when READ2 =>
                        data2 <= data_in;

                end case;



            end if;

        end process; 
end architecture;