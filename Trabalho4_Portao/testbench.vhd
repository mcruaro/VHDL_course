library ieee;
use ieee.std_logic_1164.all;

entity testbench is
end testbench;

architecture testbench of testbench is

    signal clock : std_logic := '0';
    signal reset : std_logic;

    --Sinais que sao gerados pelo testbench. Sao a entrada de portao.vhd
    signal tb_controle_on    : std_logic := '0';
    signal tb_fa         : std_logic := '0';
    signal tb_ff         : std_logic := '0';
    
    --Sinais que sao lidos pelo testbench. Sao a saida de portao.vhd
    signal tb_abrir        : std_logic;
    signal tb_fechar        : std_logic;

    
begin

    my_portao : entity work.portao
        port map(
            clock => clock,
            reset => reset,
            controle_on => tb_controle_on,
            fa => tb_fa,
            ff => tb_ff,
            abrir => tb_abrir,
            fechar => tb_fechar
        );

    reset     <= '1', '0' after 100 ns;
	-- 100 MHz
    clock     <= not clock after 5 ns;
    
    process --configura as entrada do troca bits
    begin
        wait for 205 ns;
        tb_controle_on <= '1';
        wait for 10 ns;
        tb_controle_on <= '0';

        wait for 50 ns;
        tb_fa <= '1';
        wait for 10 ns;
        tb_fa <= '0';

        wait for 100 ns;
        tb_controle_on <= '1';
        wait for 10 ns;
        tb_controle_on <= '0';

        wait for 50 ns;
        tb_ff <= '1';
        wait for 10 ns;
        tb_ff <= '0';

        wait for 90 ns;
        tb_controle_on <= '1';
        wait for 10 ns;
        tb_controle_on <= '0';

        wait for 50 ns;
        tb_fa <= '1';
        wait for 10 ns;
        tb_fa <= '0';
        
        wait;
    end process;


end architecture;

