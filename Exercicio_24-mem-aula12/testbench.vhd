library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity testbench is
end testbench;

architecture testbench of testbench is

    signal clock : std_logic := '1';
    signal reset : std_logic;

    signal sig_data_in     :  std_logic_vector(3 downto 0);
    signal sig_data_out    :  std_logic_vector(3 downto 0);
    signal sig_read_addr   :  std_logic_vector(2 downto 0);
    signal sig_write_addr  :  std_logic_vector(2 downto 0);
    signal sig_we          :  std_logic;

    signal data1           :  std_logic_vector(3 downto 0);
    signal data2           :  std_logic_vector(3 downto 0);
    signal soma            :  std_logic_vector(3 downto 0);


    type state is (WRITE, WRITE2, IDLE, READ, COMMIT_READ, READ_DATA1, READ_DATA2, SOMAR, FIM);
    signal FSM : state;

begin

    mem : entity work.ram
    port map(
        clock => clock,
        
        --Escrita
        we         => sig_we,
        write_addr => sig_write_addr,
        data_in    => sig_data_in,

        --Leitura
        read_addr  => sig_read_addr,
        data_out   => sig_data_out
       
    );

    reset     <= '1', '0' after 100 ns;
	-- 100 MHz
    clock     <= not clock after 5 ns;
    
    
    process(clock, reset)
    begin
        if reset = '1' then
            FSM <= WRITE;
            sig_we <= '0'; 
        elsif rising_edge(clock) then

            case FSM is

                when WRITE =>
                    sig_we <= '1';
                    sig_write_addr <= "101";--5
                    sig_data_in <= "0110"; --6
                    FSM <= WRITE2;
                when WRITE2 =>
                    sig_write_addr <= "011";--3
                    sig_data_in <= "0111"; --7
                    FSM <= IDLE;
                when IDLE =>
                    sig_we <= '0';
                    FSM <= READ;

                when READ =>
                    sig_read_addr <= "101"; --5
                    FSM <= COMMIT_READ;
                when COMMIT_READ =>
                    FSM <= READ_DATA1;
                    sig_read_addr <= "011"; --3

                when READ_DATA1 =>
                    
                    data1 <= sig_data_out;
                    FSM <= READ_DATA2;

                when READ_DATA2 =>
                    data2 <= sig_data_out;
                    FSM <= SOMAR;
                when SOMAR =>
                    soma <= data1 + data2;
                    FSM <= FIM;
                when FIM =>
    
            end case;
        end if;
    end process;

end architecture;

