library IEEE;
use IEEE.Std_Logic_1164.all;

package function_standards is
    
    --Funções
    function CONV_VECTOR( int: integer ) return std_logic_vector;

end function_standards;


package body function_standards is 

    --
    -- converte um inteiro em um std_logic_vector(1 downto 0) 
    --
    function CONV_VECTOR( int: integer ) return std_logic_vector is
        variable bin: std_logic_vector(1 downto 0);
    begin 
        case(int) is
                when 0 => bin := "00";
                when 1 => bin := "01";
                when 2 => bin := "10";
                when 3 => bin := "11";
                when others => bin := "00";
        end case;
        return bin; 
    end CONV_VECTOR;

end function_standards;