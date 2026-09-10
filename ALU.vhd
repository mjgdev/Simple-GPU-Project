library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ALU is
    port(
        Clock : in std_logic;
        A, B  : in unsigned(7 downto 0);
        OP    : in unsigned(15 downto 0);
        neg   : out std_logic;
        R1    : out unsigned(3 downto 0);
        R2    : out unsigned(3 downto 0)
    );
end ALU;

architecture Behavioral of ALU is
    signal Result : unsigned(7 downto 0) := (others => '0');
begin

    process(Clock)
    begin
        if Clock'event and Clock = '1' then
            case OP is
                when "0000000000000001" =>
                    Result <= A + 2;
                when "0000000000000010" =>
                    Result <= "0000" & B(7 downto 2);
                when "0000000000000100" =>
                    Result <= "1111" & A(7 downto 4);
                when "0000000000001000" =>
                    if A < B then
                        Result <= A;
                    else
                        Result <= B;
                    end if;
                when "0000000000010000" =>
                    Result <= A(1 downto 0) & A(7 downto 2);
                when "0000000000100000" =>
                    Result <= B(0) & B(1) & B(2) & B(3) &
                              B(4) & B(5) & B(6) & B(7);
                when "0000000001000000" =>
                    Result <= A xor B;
                when "0000000010000000" =>
                    Result <= (A + B) - 4;
                when "0000000100000000" =>
                    Result <= (others => '1');
                when others =>
                    Result <= (others => '0');
            end case;
        end if;
    end process;

    R1 <= Result(3 downto 0);
    R2 <= Result(7 downto 4);

    neg <= '1' when Result(7) = '1' else '0';

end Behavioral;
