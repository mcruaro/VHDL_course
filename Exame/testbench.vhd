library ieee;
use ieee.std_logic_1164.all;

entity testbench is
end testbench;

architecture testbench of testbench is

    signal clock : std_logic := '1';
    signal reset : std_logic;

    signal sig_iniciar    : std_logic := '0';
    signal sig_parar      : std_logic := '0';
    signal sig_ativo      : std_logic;
    
begin    

  -- ___           _                   _                          _   
  --|_ _|_ __  ___| |_ __ _ _ __   ___(_) ___    __ _  __ _ _   _(_)_ 
   --| || '_ \/ __| __/ _` | '_ \ / __| |/ _ \  / _` |/ _` | | | | (_)
   --| || | | \__ \ || (_| | | | | (__| |  __/ | (_| | (_| | |_| | |_ 
  --|___|_| |_|___/\__\__,_|_| |_|\___|_|\___|  \__,_|\__, |\__,_|_(_)
  --                                                     |_|          
  --Instancie o modulo microondas.vhd abaixo, ligue as portas de entrada do microondas com os sinais do testbench, que foram criados acima.
                                                                                        










   --############# FIM DA INSTANCIACAO ##################


    reset     <= '1', '0' after 100 ns;
    clock     <= not clock after 5 ns;
    
    --Esse processo simula a interacao do usuario com os botoes iniciar e parar
    process 
    begin
        --Teste 1: liga o microondas e espera os 30s terminarem
        wait for 120 ns;
        sig_iniciar <= '1';
        wait for 10 ns;
        sig_iniciar <= '0';
        wait for 400 ns;

        --Teste 2: liga o microondas e incrementa o valor do temporizador durante o seu funcionamento
        sig_iniciar <= '1';
        wait for 10 ns;
        sig_iniciar <= '0';
        wait for 150 ns;
        sig_iniciar <= '1';
        wait for 10 ns;
        sig_iniciar <= '0';
        wait for 500 ns;

        --Teste 3: liga o microondas e interrompe seu funcionamento atraves do botao parar
        sig_iniciar <= '1';
        wait for 10 ns;
        sig_iniciar <= '0';
        wait for 100 ns;
        sig_parar <= '1';
        wait for 10 ns;
        sig_parar <= '0';

        wait;

    end process;


end architecture;

