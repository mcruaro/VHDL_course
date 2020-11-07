library ieee;
use ieee.std_logic_1164.all;

entity testbench is
end testbench;

architecture testbench of testbench is

    signal clock : std_logic := '1';
    signal reset : std_logic;

    signal sig_data_out_cpu     : std_logic_vector(3 downto 0);
    signal sig_data_in_cpu      : std_logic_vector(3 downto 0);
    signal sig_read_addr        : std_logic_vector(2 downto 0);
    signal sig_write_addr       : std_logic_vector(2 downto 0);
    signal sig_we               : std_logic;

    signal sig_v1               : std_logic_vector(3 downto 0);
    signal sig_v2               : std_logic_vector(3 downto 0);
    signal sig_addr             : std_logic_vector(2 downto 0);
    signal sig_valid            : std_logic;
    signal sig_end_operation    : std_logic;
    
begin

    cpu : entity work.cpu
        port map(
            clock       => clock,
            reset       => reset,

            v1            =>  sig_v1,
            v2            =>  sig_v2,
            addr          =>  sig_addr,
            valid         =>  sig_valid,
            end_operation =>  sig_end_operation,

            data_out    => sig_data_out_cpu,
            data_in     => sig_data_in_cpu,
            read_addr   => sig_read_addr,
            write_addr  => sig_write_addr,
            we          => sig_we
        );

    mem : entity work.ram
        port map(
            clock       => clock,
            
            data_out    => sig_data_in_cpu,
            data_in     => sig_data_out_cpu,
            read_addr   => sig_read_addr,
            write_addr  => sig_write_addr,
            we          => sig_we
        );

    reset     <= '1', '0' after 100 ns;
	-- 100 MHz
    clock     <= not clock after 5 ns;
    
    process
    begin
        sig_v1 <= "0000";
        sig_v2 <= "0000";
        sig_addr <= "000";
        sig_valid <= '0';
        wait for 120 ns;
        sig_v1 <= "1010";
        sig_v2 <= "1010";
        sig_addr <= "010";
        sig_valid <= '1';
        wait until sig_end_operation = '1';
        wait;
    end process;


end architecture;

