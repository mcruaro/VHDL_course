library ieee;
use ieee.std_logic_1164.all;

entity testbench is
end testbench;

architecture testbench of testbench is

    signal clock : std_logic := '0';
    signal reset : std_logic;
    signal zero :  std_logic := '0';
    signal um :  std_logic := '0';
    signal dois :  std_logic := '0';
    signal tres :  std_logic := '0';
    signal quatro :  std_logic := '0';
    signal cinco :  std_logic := '0';
    signal seis :  std_logic := '0';
    signal sete :  std_logic := '0';
    signal oito :  std_logic := '0';
    signal nove :  std_logic := '0';

begin

    first_clock : entity work.exe_17
        port map(
            clock => clock,
            reset => reset,

            zero => zero,
            um =>      um,
            dois =>    dois,
            tres =>    tres,
            quatro =>  quatro,
            cinco =>   cinco,
            seis =>    seis,
            sete =>    sete,
            oito =>    oito,
            nove =>    nove
        );

    reset     <= '1', '0' after 100 ns;
	-- 100 MHz
    clock     <= not clock after 5 ns;
    
    process
    begin
        
        wait for 100 ns;
        cinco <= '1';
        wait for 10 ns;
        cinco <= '0';

        wait for 100 ns;
        tres <= '1';
        wait for 50 ns;
        tres <= '0';

        wait;

    end process;

end architecture;

