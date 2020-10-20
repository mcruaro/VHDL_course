library ieee;
use ieee.std_logic_1164.all;

entity testbench is
end testbench;

architecture testbench of testbench is

    signal clock : std_logic := '1';
    signal reset : std_logic;

    signal tb_sync1 : std_logic;
    signal tb_sync2 : std_logic;
    
begin

    semaforo1 : entity work.semaforo
        port map(
            clock       => clock,
            reset       => reset,

            initial     => '1',

            sync_in     => tb_sync2,
            sync_out    => tb_sync1
        );

    semaforo2 : entity work.semaforo
        port map(
            clock       => clock,
            reset       => reset,

            initial     => '0',
            sync_in     => tb_sync1,
            sync_out    => tb_sync2
        );

    reset     <= '1', '0' after 100 ns;
	-- 100 MHz
    clock     <= not clock after 5 ns;
    
    process --configura as entrada do troca bits
    begin
       -- tb_sync_in1 <= '1';
        --wait for 340 ns;
        --tb_sync_in1 <= '0';
        wait;

    end process;


end architecture;

