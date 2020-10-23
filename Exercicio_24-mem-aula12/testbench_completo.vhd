library ieee;
use ieee.std_logic_1164.all;

entity testbench is
end testbench;

architecture testbench of testbench is

    signal clock : std_logic := '1';
    signal reset : std_logic;

    signal sig_data_out : std_logic_vector(3 downto 0);
    signal sig_data_in : std_logic_vector(3 downto 0);
    signal sig_read_addr : std_logic_vector(2 downto 0);
    signal sig_write_addr : std_logic_vector(2 downto 0);
    signal sig_we : std_logic;

    type fsm_state is (WRITE, WAITING, READ, LOAD, SET, FINISH);
    signal FSM : fsm_state;

begin

    mem : entity work.ram
        port map(
            clock       => clock,
            
            data_out    => sig_data_out,
            data_in     => sig_data_in,
            read_addr   => sig_read_addr,
            write_addr  => sig_write_addr,
            we          => sig_we
        );

    reset     <= '1', '0' after 100 ns;
    -- 100 MHz
    clock     <= not clock after 5 ns;
    
    process (clock, reset)
    begin
        if reset = '1' then
            FSM <= WRITE;
        elsif rising_edge(clock) then
            case FSM is 
                when WRITE =>
                    sig_we <= '1';
                    sig_write_addr <= "101";
                    sig_data_in <= "0110";
                    FSM <= WAITING;
                when WAITING =>
                    sig_we <= '0';
                    sig_data_in <= "0000";
                    sig_write_addr <= "000";
                    FSM <= READ;
                when READ =>
                    sig_read_addr <= "101";
                    FSM <= LOAD;
                when LOAD =>
                    FSM <= SET;
                when SET =>
                    FSM <= FINISH;
                when FINISH =>
            end case;

        end if;

    end process;


end architecture;

