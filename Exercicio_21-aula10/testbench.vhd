library ieee;
use ieee.std_logic_1164.all;

entity testbench is
end testbench;

architecture testbench of testbench is

    signal clock : std_logic := '1';
    signal reset : std_logic;

    signal tb_A    : std_logic := '0';
    signal tb_T    : std_logic;
    
    
    --signal bit_container : std_logic_vector(63 downto 0) := x"188ddd03f3f1bf62";
    signal bit_container : std_logic_vector(127 downto 0) := x"77c07a9a7f0c5fcaabbf06e86b2e5eb7";

    signal count : integer := 127;
    
begin

    seq_bits : entity work.exe_21
        port map(
            clock => clock,
            reset => reset,
            A => tb_A,
            T => tb_T
        );

    reset     <= '1', '0' after 100 ns;
	-- 100 MHz
    clock     <= not clock after 5 ns;
    
    process --configura as entrada do troca bits
    begin
        tb_A <= bit_container(count);
        wait for 10 ns;
        
        if count = 0 then
            wait;
        else
            count <= count - 1;
        end if;
    end process;


end architecture;

