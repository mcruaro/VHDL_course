library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity exe_14 is
    port (
        clock : in std_logic;
        reset : in std_logic
    );
end exe_14;

architecture exe_14 of exe_14 is

    signal tick_counter : std_logic_vector(31 downto 0);

begin



    process(clock, reset)
    begin
        if reset = '1' then
            
            tick_counter <= "00000000000000000000000000000000";

        elsif rising_edge(clock) then

            tick_counter <= tick_counter + 1;

            if (tick_counter = 2) then
                report "Ola mundo";
            end if;

            --if (tick_counter = 1000) then
             --   report "+1 segundo";
              --  tick_counter <= "00000000000000000000000000000000";
            --end if;

            --Fazer um teste com IF, para detectar
            --a passagem dos segundos.
            --Utilizar o report pra imprimir no log de
            --simulacao do modelsim
            --report "+ 1 segundo";

        end if;
    end process;

end exe_14;