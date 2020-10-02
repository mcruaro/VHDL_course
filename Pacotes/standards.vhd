library IEEE;
use IEEE.Std_Logic_1164.all;

package standards is

    --Constantes
    constant BUS_SIZE  : integer := 16;
    constant START_BUS_ADDRESS  : std_logic_vector(BUS_SIZE-1 downto 0) := x"0A1F";
    
    --Tipos e Subtipos 
    subtype data_channel is std_logic_vector(3 downto 0); 
    type data_channel_array is array(2 downto 0) of data_channel;

    --Funções

end standards;

