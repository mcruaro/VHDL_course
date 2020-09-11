library ieee;
use ieee.std_logic_1164.all;

entity testbench is
end testbench;

architecture testbench of testbench is

    signal clock : std_logic := '0';
    signal reset : std_logic;

begin

    first_clock : entity work.clock_counter
        port map(
            clock => clock,
            reset => reset
        );

    reset     <= '1', '0' after 100 ns;
	-- 100 MHz
	clock     <= not clock after 5 ns;

end architecture;

