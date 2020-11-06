library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity cpu is
    port (
        clock : in std_logic;
        reset : in std_logic;
        
        --Interface de escrita na memoria
        data_out : out std_logic_vector(3 downto 0);
        write_addr : out std_logic_vector(2 downto 0);
        we         : out std_logic;

        --Interface de leitura na memoria
        data_in  : in  std_logic_vector(3 downto 0);
        read_addr  : out std_logic_vector(2 downto 0);

        --Novas portas para exercio 26
        v1  : in std_logic_vector(3 downto 0);
        v2  : in std_logic_vector(3 downto 0);
        addr: in std_logic_vector(2 downto 0);
        valid: in std_logic;
        end_operation : out std_logic
       
    );
end cpu;

architecture cpu of cpu is
    
    type fsm_state is (WAIT_VALID, COMPARA, ESCREVE, END_OP);
    signal FSM : fsm_state;

    signal result : std_logic_vector(3 downto 0);

    begin

        process(clock, reset)
        begin
            if reset = '1' then
                FSM <= WAIT_VALID;
                end_operation <= '0';
                result <= "0000";
                data_out <= "0000";
                write_addr <= "000";
                we <= '0';
                read_addr <= "000";
            elsif rising_edge(clock) then
                
                case FSM is
                    when WAIT_VALID =>
                        if valid = '1' then
                            FSM <= COMPARA;
                        end if;
                    when COMPARA =>
                            result <= v1 xor v2;
                            FSM <= ESCREVE;
                    when ESCREVE =>
                            if result = "0000" then
                                data_out <= "0001";
                            else
                                data_out <= "0000";
                            end if;
                            write_addr <= addr;
                            we <= '1';
                            FSM <= END_OP;
                    when END_OP=>
                        we <= '0';
                        end_operation <= '1';
                end case;
            end if;

        end process; 
end architecture;
