library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity ram is
    port (
        clock       : in    std_logic;

        data_in     : in    std_logic_vector(3 downto 0);
        data_out    : out   std_logic_vector(3 downto 0);
        read_addr   : in    std_logic_vector(2 downto 0);
        write_addr  : in    std_logic_vector(2 downto 0);
        we          : in    std_logic
    );
end ram;

architecture ram of ram is
    type mem_type is array(7 downto 0) of std_logic_vector(3 downto 0);
    signal memoria : mem_type;
    
    begin
        process(clock)
        begin
            if rising_edge(clock) then
                if we = '1' then
                    memoria(CONV_INTEGER(write_addr)) <= data_in;
                end if;
                data_out <= memoria(CONV_INTEGER(read_addr));
            end if;
        end process;
end architecture;