library ieee;
use ieee.std_logic_1164.all;

use std.textio.all;
use ieee.std_logic_textio.all;

entity testbench is
end testbench;

architecture testbench of testbench is

    signal clock : std_logic := '1';
    signal reset : std_logic;
    
    --Sinais de leitura de arquivo
    file file_ORIGEM  : text;
    file file_DESTINO : text;
    signal dado_recebido : std_logic_vector(3 downto 0);

    --FSM para controlar as operacoes de arquivos
    type fsm_state is (OPEN_FILE, READ_WRITE, CLOSE_FILE);
    signal FSM : fsm_state;
    
begin

    reset     <= '1', '0' after 100 ns;
	-- 100 MHz
    clock     <= not clock after 5 ns;

    process(clock, reset)
        variable linha_lida     : line;

        variable linha_escrita     : line;

        variable dado_linha : std_logic_vector(3 downto 0);
      begin
        if reset = '1' then
            dado_recebido <= "0000";
        elsif rising_edge(clock) then

            case FSM is
                when OPEN_FILE =>
                    file_open(file_ORIGEM, "origem.txt",  READ_MODE);
                    file_open(file_DESTINO, "destino.txt", WRITE_MODE);

                    FSM <= READ_WRITE;
                when READ_WRITE =>
                    if not endfile(file_ORIGEM) then
                        readline(file_ORIGEM, linha_lida);
                        read(linha_lida, dado_linha);
                        dado_recebido <= dado_linha;

                        write(linha_escrita, dado_linha);
                        writeline(file_DESTINO, linha_escrita);
                    else
                        FSM <= CLOSE_FILE;
                    end if;
                when CLOSE_FILE =>
                    file_close(file_ORIGEM);
                    file_close(file_DESTINO);
            end case;
        end if;

      end process;

    

end architecture;

