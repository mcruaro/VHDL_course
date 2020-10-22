library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity rom is
    port (
        data_out    : out   std_logic_vector(3 downto 0);
        address     : in    std_logic_vector(2 downto 0);
        re          : in    std_logic
    );
end rom;

architecture rom of rom is
 
    type mem_type is array(7 downto 0) of std_logic_vector(3 downto 0);
    constant memoria : mem_type := 
    ("1001", 
     "1110", 
     "0011", 
     "1000", 
     "1111",
     "0101",
     "1100",
     "0011");
    
    begin

        data_out <= memoria(CONV_INTEGER(address)) when re = '1' else "0000";
        
end architecture;
