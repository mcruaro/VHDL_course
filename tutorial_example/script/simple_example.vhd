LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY simple_example IS
    PORT (
        a : IN std_logic;
        b : IN std_logic;
        o : OUT std_logic
    );
END simple_example;

ARCHITECTURE simple_example OF simple_example IS
BEGIN

    o <= a AND b;

END simple_example;