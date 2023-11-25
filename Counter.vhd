library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity counter is
    port( 
        X: in STD_LOGIC;
        Y: in std_logic;
		reset: in STD_LOGIC;
        result: out STD_LOGIC_VECTOR(5 downto 0);
        Z: out std_logic
    );
end counter;


ARCHITECTURE description OF counter IS
    signal max_reg : STD_LOGIC_VECTOR(5 downto 0);
    signal count_reg : STD_LOGIC_VECTOR(5 downto 0);
    signal max_occupancy: STD_LOGIC_VECTOR(5 downto 0);
    type state_type is (init ,idle , add , sub , full);
    signal state_reg : state_type := init;
begin


    process(reset,X,Y)
        variable max_var: STD_LOGIC_VECTOR(5 downto 0) := "000000";
        variable next_value: STD_LOGIC_VECTOR(5 downto 0);
    begin
        if reset='1' then
            state_reg <= init;
        end if;
        case state_reg is
            when init =>
                max_reg <= max_occupancy;
                count_reg <= "000000";
                state_reg <= idle;
            when idle =>
                if X='1' and Y='1' then
                    state_reg <= idle;
                elsif X='1' then
                    state_reg <= add;
                elsif Y='1' then
                    state_reg <= sub;
                end if;
            when add =>
                next_value := count_reg + "000001";
                if next_value = max_reg then
                    state_reg <= full;
                else
                    state_reg <= idle;
                end if;
                count_reg <= next_value;
            when sub =>
                if not (count_reg = "000000") then
                    count_reg <= count_reg - 1;
                end if;
                state_reg <= idle;
            when full =>
                if (y='1') then
                    state_reg <= sub;
                end if;
            end case;
    end process;


    process (count_reg)
    begin
        if count_reg = max_reg then
            z <= '1';
        else
            z <= '0';
        end if;
    end process;

END description;