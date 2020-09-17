library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity fsm is
    port (
        --Entrada
        clock : in std_logic;
        reset : in std_logic;

        push : in std_logic;
        coin : in std_logic;

        catraca : out std_logic

    );
end fsm;

architecture fsm of fsm is

    type state is (LOCKED, UNLOCKED);
    signal fsm_catraca: state;


    begin

        process(clock, reset) 
        begin
            
            if reset = '1' then
                fsm_catraca <= LOCKED;
            elsif rising_edge(clock) then
                case sel is
                    when LOCKED =>
                    --logica do estado LOCKED
                    when UNLOCKED =>
                    --logica do estado UNLOCKED
                end case;
            end if;
        end process;
      
end architecture;
