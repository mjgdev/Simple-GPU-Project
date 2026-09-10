library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity FSM is
    port(
        clk           : in  std_logic;
        reset         : in  std_logic;
        data_in       : in  std_logic;                  
        student_id    : out std_logic_vector(3 downto 0);
        current_state : out std_logic_vector(3 downto 0);
        yn            : out std_logic
    );
end FSM;

architecture behavior of FSM is
    type state_type is (s0, s1, s2, s3, s4, s5, s6, s7, s8);
    signal yfsm : state_type := s0;
begin

    
    process(clk, reset)
    begin
        if reset = '1' then
            yfsm <= s0;
        elsif clk'event and clk = '1' then   
            case yfsm is
                when s0 => yfsm <= s1;
                when s1 => yfsm <= s2;
                when s2 => yfsm <= s3;
                when s3 => yfsm <= s4;
                when s4 => yfsm <= s5;
                when s5 => yfsm <= s6;
                when s6 => yfsm <= s7;
                when s7 => yfsm <= s8;
                when s8 => yfsm <= s0;
            end case;
        end if;
    end process;

    
    process(yfsm, data_in)
    begin
        case yfsm is
            when s0 => current_state <= "0000";
            when s1 => current_state <= "0001";
            when s2 => current_state <= "0010";
            when s3 => current_state <= "0011";
            when s4 => current_state <= "0100";
            when s5 => current_state <= "0101";
            when s6 => current_state <= "0110";
            when s7 => current_state <= "0111";
            when s8 => current_state <= "1000";
        end case;
        student_id <= "0000";

        
        yn <= data_in;
    end process;

end behavior;

