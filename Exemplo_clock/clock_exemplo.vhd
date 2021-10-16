library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity clock_exemplo is
    port (
        clock : in std_logic;
        reset : in std_logic
    );
end clock_exemplo;

architecture clock_exemplo of clock_exemplo is

    signal tick_counter : std_logic_vector(31 downto 0);

begin

    process(clock, reset)
    begin
        if reset = '1' then
            
            tick_counter <= "00000000000000000000000000000000";

        elsif rising_edge(clock) then

            tick_counter <= tick_counter + 1;
            --Fazer um teste com IF, para detectar
            --a passagem dos segundos.
            --Utilizar o report pra imprimir no log de
            --simulacao do modelsim
            --report "+ 1 segundo";

        end if;
    end process;

end clock_exemplo;