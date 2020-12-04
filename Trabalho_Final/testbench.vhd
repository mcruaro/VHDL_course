library ieee;
use ieee.std_logic_1164.all;
--Novos includes
use std.textio.all;
use ieee.std_logic_textio.all;

entity testbench is
end testbench;

architecture testbench of testbench is

    signal clock : std_logic := '1';
    signal reset : std_logic;
    

    --FSM para controlar as operacoes de arquivos
    type fsm_state_read is (OPEN_FILE, READ, CLOSE_FILE);
    type fsm_state_write is (OPEN_FILE, WRITE, CLOSE_FILE);
    signal FSM_READ : fsm_state_read;
    signal FSM_WRITE : fsm_state_write;

     --Sinais de leitura de arquivo
    file file_ORIGEM  : text;
    file file_DESTINO  : text;

    --Sinais que devem ser ligados ao modulo recognizer.vhd durante a sua instanciacao
    signal sig_bit_in : std_logic; --deve ser ligado a porta bit_in de recognizer.vhd
    signal sig_rec : std_logic; --deve ser ligado a porta recongized de recognizer.vhd
    signal sig_line : std_logic_vector(15 downto 0); --deve ser ligado a porta line de recognizer.vhd

    
begin

    --Instanciar o recognizer.vhd





    --Logica que gera o clock e reset artificialmente
    reset     <= '1', '0' after 100 ns;
    clock     <= not clock after 5 ns;-- 100 MHz

    --Processo de leitura, a cada ciclo de clock, le uma linha de input.txt e grava em sig_bit_in
    process(clock, reset)
        variable linha_lida     : line;
        variable dado_linha : std_logic;
      begin
        if reset = '1' then
            FSM_READ <= OPEN_FILE;
            sig_bit_in <= '0';
        elsif rising_edge(clock) then

            case FSM_READ is
                when OPEN_FILE =>
                    file_open(file_ORIGEM, "input.txt",  READ_MODE); --file file_ORIGEM  : text;
                    FSM_READ <= READ;
                when READ =>
                    if not endfile(file_ORIGEM) then
                        readline(file_ORIGEM, linha_lida);
                        read(linha_lida, dado_linha);
                        sig_bit_in <= dado_linha; --signal dado_recebido : std_logic_vector(3 downto 0);
                    else
                        FSM_READ <= CLOSE_FILE;
                    end if;
                when CLOSE_FILE =>
                    file_close(file_ORIGEM);
            end case;
        end if;

      end process;


    --Processo de escrita, a cada ciclo de clock, testa se o valor de sig_rec eh 1, se sim, grava o valor de sig_line na proxima linha de output.tx
    process(clock, reset)
      variable linha_escrita : line;
      variable dado_linha     : std_logic_vector(15 downto 0);
    begin
      if reset = '1' then
        FSM_WRITE <= OPEN_FILE;
      elsif rising_edge(clock) then
          case FSM_WRITE is
              when OPEN_FILE =>
                  file_open(file_DESTINO, "output.txt", WRITE_MODE); --file file_DESTINO : text;
                  FSM_WRITE <= WRITE;
              when WRITE =>
                if sig_rec = '1' then
                  dado_linha := sig_line;
                  write(linha_escrita, dado_linha);
                  writeline(file_DESTINO, linha_escrita);
                end if;

              when CLOSE_FILE =>
                  file_close(file_DESTINO);
          end case;
      end if;
    end process;


end architecture;

