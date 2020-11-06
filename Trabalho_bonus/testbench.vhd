library ieee;
use ieee.std_logic_1164.all;

entity testbench is
end testbench;

architecture testbench of testbench is

    signal clock : std_logic := '0';
    signal reset : std_logic;


    signal tb_botao_on    : std_logic := '0';
    signal tb_print         : std_logic;
    signal tb_valor         : std_logic_vector(15 downto 0);
    
    
begin

    my_senha : entity work.senha
        port map(
            clock => clock,
            reset => reset,
            botao_on => tb_botao_on,
            print => tb_print,
            valor => tb_valor
        );

    reset     <= '1', '0' after 100 ns;
	-- 100 MHz
    clock     <= not clock after 5 ns;
    
    process --configura as entrada do troca bits
    begin
        wait for 205 ns;

        for i in 0 to 5 loop
            tb_botao_on <= '1';
            wait for 10 ns;
            tb_botao_on <= '0';
            wait for 50 ns;
        end loop;
        wait;
    end process;


end architecture;

