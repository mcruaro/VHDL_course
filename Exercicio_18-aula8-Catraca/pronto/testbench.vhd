library ieee;
use ieee.std_logic_1164.all;

entity testbench is
end testbench;

architecture testbench of testbench is

    signal clock : std_logic := '0';
    signal reset : std_logic;

    signal tb_push : std_logic := '0';
    signal tb_coin : std_logic := '0';
    signal tb_free : std_logic;


begin

    my_catraca : entity work.catraca
        port map(
            clock => clock,
            reset => reset,
            push => tb_push,
            coin => tb_coin,
            free => tb_free
        );

    reset     <= '1', '0' after 100 ns;
	-- 100 MHz
    clock     <= not clock after 5 ns;
    
    process
    begin
        tb_push <= '1';
        wait for 50 ns;
        tb_push <= '0';
        wait for 50 ns;

        tb_coin <= '1';
        wait for 10 ns;
        tb_coin <= '0';
        wait for 50 ns;

        tb_push <= '1';
        wait for 50 ns;
        tb_push <= '0';
        wait for 50 ns;

        wait;


    end process;

end architecture;

