LIBRARY IEEE;
USE ieee.std_logic_1164.ALL;

ENTITY testbench IS
END testbench;

ARCHITECTURE testbench OF testbench IS

signal clock_tb : std_logic := '0';
signal reset_tb : std_logic;

signal in1_tb   : std_logic_vector(1 downto 0);

BEGIN

    exe_15 : ENTITY work.exe_15
        PORT MAP(
            clock   => clock_tb,
            reset   => reset_tb,
            in1     => in1_tb
        );


    reset_tb <= '1', '0' after 100 ns; --100 MHz
    clock_tb <= not clock_tb after 5 ns;

    process
    begin
        in1_tb <= "00";
        wait for 110 ns;
        in1_tb <= "00";
        wait for 20 ns;
        in1_tb <= "01";
        wait for 20 ns;
        in1_tb <= "10";
        wait for 20 ns;
        in1_tb <= "11";
        wait;
    end process;

END testbench;