LIBRARY IEEE;
USE ieee.std_logic_1164.ALL;

ENTITY testbench IS
END testbench;

ARCHITECTURE testbench OF testbench IS

    SIGNAL address_tb     :  std_logic_vector(31 downto 0);
    SIGNAL instruction_tb :  std_logic_vector(15 downto 0);
    SIGNAL absolute_tb    :  std_logic_vector(15 downto 0);

BEGIN

    exe_6 : ENTITY work.exe_6
        PORT MAP(
            address => address_tb,
            instruction => instruction_tb,
            absolute => absolute_tb
        );
    PROCESS
    BEGIN
        address_tb <= x"F00F1010"; 
        WAIT; -- end of test

    END PROCESS;
END testbench;