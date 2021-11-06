LIBRARY IEEE;
USE ieee.std_logic_1164.ALL;

ENTITY testbench IS
END testbench;

ARCHITECTURE testbench OF testbench IS

signal clock_tb : std_logic := '0';
signal reset_tb : std_logic;

signal in1_tb   : std_logic_vector(15 downto 0);
signal out1_tb   : std_logic_vector(15 downto 0);
signal ready_tb   : std_logic;

BEGIN

    exe_18 : ENTITY work.exe_18
        PORT MAP(
            clock   => clock_tb,
            reset   => reset_tb,
            in1    => in1_tb,
            out1    => out1_tb,
            ready => ready_tb
        );


    reset_tb <= '1', '0' after 100 ns; --100 MHz
    clock_tb <= not clock_tb after 5 ns;

    process
    begin
        in1_tb <= "0001001110011101";
        wait;
    end process;

END testbench;