library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;


ENTITY reg IS PORT(
    d   : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
    clk : IN STD_LOGIC; -- clock.
    q   : OUT STD_LOGIC_VECTOR(6 DOWNTO 0) -- output
);
END reg;

ARCHITECTURE description OF reg IS

BEGIN
    process(clk, clr)
    begin
        if rising_edge(clk) then
            q <= d;
        end if;
    end process;
END description;