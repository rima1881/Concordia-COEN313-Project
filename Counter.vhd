library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity counter is
    port( 
        X: in STD_LOGIC;
        Y: in std_logic;
		reset: in STD_LOGIC;
        max_occupancy: in unsigned(5 downto 0);
        result: out unsigned(5 downto 0);
        Z: out std_logic
    );
end counter;


ARCHITECTURE description OF counter IS
    signal max_reg : unsigned(5 downto 0);
    signal count_reg : unsigned(5 downto 0);
    signal z_sig:std_logic;
    signal change_value : signed(1 downto 0);
    type state_type is (init ,idle , change);
    signal state_reg : state_type := init;
begin

    --counter
    process(reset,X,Y)
    variable next_count : unsigned(5 downto 0);
    begin
        if reset='1' then
            state_reg <= init;
        end if;
        case state_reg IS

            when init =>
                max_reg <= max_occupancy;
                count_reg <= "000000";
                state_reg <= idle;

            when idle =>
                if (X='1' and z_sig='0') xor Y='1' then
                    state_reg <= change;
                    change_value(1) <= Y;
                    change_value(0) <= '1';
                end if;

            when change =>

                count_reg <= unsigned(signed(count_reg)+change_value);
                state_reg <= idle;

            end case;

    end process;

    --warning signal
    process (count_reg)
    begin
        if count_reg = max_reg then
            z_sig <= '1';
        else
            z_sig <= '0';
        end if;
    end process;

    z <= z_sig;
    result <= count_reg;

END description;