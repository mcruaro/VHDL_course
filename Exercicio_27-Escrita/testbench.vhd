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
    file file_DESTINO : text;

    --FSM para controlar as operacoes de arquivos
    type fsm_state is (OPEN_FILE, WRITE, CLOSE_FILE);
    signal FSM : fsm_state;

    type meu_tipo_array is array(3 downto 0) of std_logic_vector(4 downto 0);
    
    constant d_set : meu_tipo_array :=
    ("10111",
    "00000",
    "11011",
    "11011");

    signal counter : integer range 0 to 3;
    
begin

    reset     <= '1', '0' after 100 ns;
    clock     <= not clock after 5 ns;

    process(clock, reset)
        variable linha_escrita : line;
        variable dado_linha     : std_logic_vector(4 downto 0);--|4|3|2|1|0|
      begin
        if reset = '1' then
            counter <= 3;
        elsif rising_edge(clock) then
            case FSM is
                when OPEN_FILE =>
                    file_open(file_DESTINO, "output.txt", WRITE_MODE); --file file_DESTINO : text;
                    FSM <= WRITE;
                
                when WRITE =>
                    dado_linha := d_set(counter);
                    write(linha_escrita, dado_linha);
                    writeline(file_DESTINO, linha_escrita);
                    
                    if counter = 0 then
                        FSM <= CLOSE_FILE;
                    else
                        counter <= counter - 1;
                    end if;

                when CLOSE_FILE =>
                    file_close(file_DESTINO);
            end case;
        end if;
      end process;

    

end architecture;

