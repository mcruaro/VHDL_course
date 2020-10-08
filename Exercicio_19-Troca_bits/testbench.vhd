library ieee;
use ieee.std_logic_1164.all;

entity testbench is
end testbench;

architecture testbench of testbench is

    signal clock : std_logic := '0';
    signal reset : std_logic;

    signal tb_ready_in    : std_logic := '0';
    signal tb_in1         : std_logic_vector(7 downto 0) := "00000000";
    
    signal tb_out1        : std_logic_vector(7 downto 0);
    signal tb_ready_out   : std_logic;

    
begin

    my_troca_bits : entity work.troca_bits_v2
        port map(
            clock => clock,
            reset => reset,
            ready_in => tb_ready_in,
            in1 => tb_in1,
            out1 => tb_out1,
            ready_out => tb_ready_out
        );

    reset     <= '1', '0' after 100 ns;
	-- 100 MHz
    clock     <= not clock after 5 ns;
    
    process --configura as entrada do troca bits
    begin
        wait for 205 ns;
        tb_ready_in <= '1';
        tb_in1 <= "00111001";
        wait for 10 ns; --1 pulso de clock
        tb_ready_in <= '0';
        
        wait;
    end process;


    process --Monitora a saida do troca bits e imprime terminou
    begin
        if tb_ready_out = '1' then
            report "TERMINOU";
            wait;
        end if;
        wait for 10 ns;

    end process;

end architecture;

