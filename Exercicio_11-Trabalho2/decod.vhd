library ieee;
use ieee.std_logic_1164.all;

entity decod is
    port (
        p0 : in std_logic;
        p1 : in std_logic;
        p2 : in std_logic;
        p3 : in std_logic;

        x1 : out std_logic;
        x0 : out std_logic;

        int : out std_logic
    );
end decod;

architecture decod of decod is
begin

    x0 <= '0' when p0 = '1' else
          '1' when p1 = '1' else
          '0' when p2 = '1' else
          '1' when p3 = '1' else
          '1';

    x1 <= '0' when p0 = '1' else
          '0' when p1 = '1' else
          '1' when p2 = '1' else
          '1' when p3 = '1' else
          '1';

    int <= p0 or p1 or p2 or p3;
    
end decod;