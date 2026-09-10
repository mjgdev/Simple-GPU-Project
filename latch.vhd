LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY register_latch IS
    PORT (
        D      : IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
        resetn : IN  STD_LOGIC;
        clock  : IN  STD_LOGIC;
        Q      : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
    );
END register_latch;

ARCHITECTURE Behaviour OF register_latch IS
BEGIN

    PROCESS (resetn, clock)
    BEGIN
        
        IF resetn = '0' THEN
            Q <= (others => '0');

        ELSIF clock'event AND clock = '1' THEN
            Q <= D;

        END IF;
    END PROCESS;

END Behaviour;
