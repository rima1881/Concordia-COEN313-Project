library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity counter is
    port( 
        X: in STD_LOGIC;
        Y: in std_logic;
		clk: IN STD_LOGIC;
		reset: in STD_LOGIC;
        count: out STD_LOGIC_VECTOR(3 downto 0);
        Z: out std_logic
    );
end counter;


ARCHITECTURE description OF counter IS

begin


END description;