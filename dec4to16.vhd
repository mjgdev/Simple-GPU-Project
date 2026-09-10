LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY dec4to16 IS
    PORT (
        w  : IN  STD_LOGIC_VECTOR(3 DOWNTO 0);  
        En : IN  STD_LOGIC;                     
        y  : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)   
    );
END dec4to16;

ARCHITECTURE Behavior OF dec4to16 IS
BEGIN
    PROCESS(w, En)
    BEGIN
        IF En = '1' THEN
            y <= (others => '0');
            y(to_integer(unsigned(w))) <= '1';
        ELSE
            y <= (others => '0');
        END IF;
    END PROCESS;
END Behavior;
