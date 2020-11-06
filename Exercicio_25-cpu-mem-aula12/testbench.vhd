library ieee;
use ieee.std_logic_1164.all;

entity testbench is
end testbench;

architecture testbench of testbench is

    signal clock : std_logic := '1';
    signal reset : std_logic;

    signal sig_data_out_cpu : std_logic_vector(3 downto 0);
    signal sig_data_in_cpu : std_logic_vector(3 downto 0);
    signal sig_read_addr : std_logic_vector(2 downto 0);
    signal sig_write_addr : std_logic_vector(2 downto 0);
    signal sig_we : std_logic;
    
begin

    cpu : entity work.cpu
        port map(
            clock       => clock,
            reset       => reset,

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
    clock     <= not clock after 5 ns;
    

end architecture;

