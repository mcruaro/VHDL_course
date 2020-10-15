library ieee;
use ieee.std_logic_1164.all;

entity testbench is
end testbench;

architecture testbench of testbench is

    signal clock : std_logic := '1';
    signal reset : std_logic;

    signal tb_ena    : std_logic := '0';
    
begin

    seq_bits : entity work.exe_22
        port map(
            clock => clock,
            reset => reset,
            ena => tb_ena
        );

    reset     <= '1', '0' after 100 ns;
	-- 100 MHz
    clock     <= not clock after 5 ns;
    
    process --configura as entrada do troca bits
    begin

        wait for 205 ns;
        tb_ena <= '1';
        wait for 1000 ns;
        tb_ena <= '0';
        wait;

    end process;


end architecture;

