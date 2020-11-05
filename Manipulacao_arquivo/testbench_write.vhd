library ieee;
use ieee.std_logic_1164.all;

use std.textio.all;
use ieee.std_logic_textio.all;

entity testbench_write is
end testbench_write;

architecture testbench_write of testbench_write is

    signal clock : std_logic := '1';
    signal reset : std_logic;
    
    --Sinais de leitura de arquivo
    file file_DESTINO : text;

    --FSM para controlar as operacoes de arquivos
    type fsm_state is (OPEN_FILE, WRITE, CLOSE_FILE);
    signal FSM : fsm_state;
    
begin

    reset     <= '1', '0' after 100 ns;
	-- 100 MHz
    clock     <= not clock after 5 ns;

    process(clock, reset)
        variable linha_escrita : line;
        variable dado_linha     : std_logic_vector(3 downto 0);
      begin
        if reset = '1' then
        elsif rising_edge(clock) then
            case FSM is
                when OPEN_FILE =>
                    file_open(file_DESTINO, "destino.txt", WRITE_MODE); --file file_DESTINO : text;
                    FSM <= WRITE;
                when WRITE =>
                    dado_linha := "1000";
                    write(linha_escrita, dado_linha);
                    writeline(file_DESTINO, linha_escrita);
                    FSM <= CLOSE_FILE;

                    dado_linha := "0000";
                    write(linha_escrita, dado_linha);
                    writeline(file_DESTINO, linha_escrita);
                    FSM <= CLOSE_FILE;

                when CLOSE_FILE =>
                    file_close(file_DESTINO);
            end case;
        end if;
      end process;

    

end architecture;

