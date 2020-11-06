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
    type fsm_state is (OPEN_FILE, READ, CLOSE_FILE);
    signal FSM : fsm_state;

     --Sinais de leitura de arquivo
    file file_ORIGEM  : text;

    type meu_tipo_array is array(3 downto 0) of std_logic_vector(4 downto 0);
    signal d_in : meu_tipo_array;
    
    signal counter : integer range 0 to 4;
    
begin
    reset     <= '1', '0' after 100 ns;
    clock     <= not clock after 5 ns;-- 100 MHz

    process(clock, reset)
        variable linha_lida     : line;
        variable dado_linha : std_logic_vector(4 downto 0);
      begin
        if reset = '1' then
            counter <= 0;
            --d_in <= ( others => "00000");
        elsif rising_edge(clock) then

            case FSM is
                when OPEN_FILE =>
                    file_open(file_ORIGEM, "output.txt",  READ_MODE); --file file_ORIGEM  : text;
                    FSM <= READ;
                when READ =>
                    if not endfile(file_ORIGEM) then
                        readline(file_ORIGEM, linha_lida);
                        read(linha_lida, dado_linha);
                        
                        d_in(counter) <= dado_linha; --signal dado_recebido : std_logic_vector(3 downto 0);
                        counter <= counter + 1;
                    else
                        FSM <= CLOSE_FILE;
                    end if;
                when CLOSE_FILE =>
                    file_close(file_ORIGEM);
            end case;
        end if;

      end process;

    

end architecture;

