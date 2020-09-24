library ieee;
use ieee.std_logic_1164.all;

entity testbench is
end testbench;

architecture testbench of testbench is

    signal clock : std_logic := '0';
    signal reset : std_logic;
    signal tb_in1 : std_logic_vector(3 downto 0);

begin

    first_clock : entity work.exe_16
        port map(
            clock => clock,
            reset => reset,
            in1 => tb_in1
        );

    reset     <= '1', '0' after 100 ns;
	-- 100 MHz
	clock     <= not clock after 5 ns;

end architecture;

