library IEEE;
use IEEE.std_Logic_1164.all;

package standards is

    --Constantes
    constant BUS_HIGH_INDEX  : integer := 7; --8 bits

    --Subtipo
    subtype reg is std_logic_vector(BUS_HIGH_INDEX downto 0);


end standards;
