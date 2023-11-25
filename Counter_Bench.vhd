LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

ENTITY counter_tb IS
    port( 
        result: out unsigned(5 downto 0);
        Z: out std_logic
    );
END counter_tb;

ARCHITECTURE behavior OF counter_tb IS
    SIGNAL reset, X, Y: STD_LOGIC := '0';
    Signal max_occupancy: unsigned(5 downto 0);

BEGIN

    UUT : ENTITY work.counter
        PORT MAP(
            X => X,
            Y => Y,
            reset => reset,
            max_occupancy => max_occupancy,
            result => result,
            Z => Z
        );

    PROCESS
    BEGIN

        reset <= '1';
        max_occupancy <= "111111";
        X <= '0';
        Y <= '0';

        WAIT FOR 20 ns;
        reset <= '0';

        WAIT FOR 10 ns;
        X <= '1';
        WAIT FOR 10 ns;
        X <= '0';

        WAIT FOR 10 ns;
        Y <= '1';
        WAIT FOR 10 ns;
        Y <= '0';

        WAIT FOR 10 ns;
        X <= '1';
        WAIT FOR 10 ns;
        X <= '0';

        WAIT FOR 10 ns;
        X <= '1';
        WAIT FOR 10 ns;
        X <= '0';

        WAIT FOR 10 ns;
        X <= '1';
        WAIT FOR 10 ns;
        X <= '0';


        WAIT FOR 10 ns;
        X <= '1';
        WAIT FOR 10 ns;
        X <= '0';

        WAIT FOR 10 ns;
        X <= '1';
        WAIT FOR 10 ns;
        X <= '0';

        WAIT FOR 10 ns;
        X <= '1';
        WAIT FOR 10 ns;
        X <= '0';



WAIT FOR 10 ns;
        X <= '1';
        WAIT FOR 10 ns;
        X <= '0';

        WAIT FOR 10 ns;
        X <= '1';
        WAIT FOR 10 ns;
        X <= '0';

        WAIT FOR 10 ns;
        X <= '1';
        WAIT FOR 10 ns;
        X <= '0';



WAIT FOR 10 ns;
        X <= '1';
        WAIT FOR 10 ns;
        X <= '0';

        WAIT FOR 10 ns;
        X <= '1';
        WAIT FOR 10 ns;
        X <= '0';

        WAIT FOR 10 ns;
        X <= '1';
        WAIT FOR 10 ns;
        X <= '0';


WAIT FOR 10 ns;
        X <= '1';
        WAIT FOR 10 ns;
        X <= '0';

        WAIT FOR 10 ns;
        X <= '1';
        WAIT FOR 10 ns;
        X <= '0';

        WAIT FOR 10 ns;
        X <= '1';
        WAIT FOR 10 ns;
        X <= '0';



WAIT FOR 10 ns;
        X <= '1';
        WAIT FOR 10 ns;
        X <= '0';

        WAIT FOR 10 ns;
        X <= '1';
        WAIT FOR 10 ns;
        X <= '0';

        WAIT FOR 10 ns;
        X <= '1';
        WAIT FOR 10 ns;
        X <= '0';


WAIT FOR 10 ns;
        X <= '1';
        WAIT FOR 10 ns;
        X <= '0';

        WAIT FOR 10 ns;
        X <= '1';
        WAIT FOR 10 ns;
        X <= '0';

        WAIT FOR 10 ns;
        X <= '1';
        WAIT FOR 10 ns;
        X <= '0';


WAIT FOR 10 ns;
        X <= '1';
        WAIT FOR 10 ns;
        X <= '0';

        WAIT FOR 10 ns;
        X <= '1';
        WAIT FOR 10 ns;
        X <= '0';

        WAIT FOR 10 ns;
        X <= '1';
        WAIT FOR 10 ns;
        X <= '0';


WAIT FOR 10 ns;
        X <= '1';
        WAIT FOR 10 ns;
        X <= '0';

        WAIT FOR 10 ns;
        X <= '1';
        WAIT FOR 10 ns;
        X <= '0';

        WAIT FOR 10 ns;
        X <= '1';
        WAIT FOR 10 ns;
        X <= '0';


WAIT FOR 10 ns;
        X <= '1';
        WAIT FOR 10 ns;
        X <= '0';

        WAIT FOR 10 ns;
        X <= '1';
        WAIT FOR 10 ns;
        X <= '0';

        WAIT FOR 10 ns;
        X <= '1';
        WAIT FOR 10 ns;
        X <= '0';

WAIT FOR 10 ns;
        X <= '1';
        WAIT FOR 10 ns;
        X <= '0';

        WAIT FOR 10 ns;
        X <= '1';
        WAIT FOR 10 ns;
        X <= '0';

        WAIT FOR 10 ns;
        X <= '1';
        WAIT FOR 10 ns;
        X <= '0';


WAIT FOR 10 ns;
        X <= '1';
        WAIT FOR 10 ns;
        X <= '0';

        WAIT FOR 10 ns;
        X <= '1';
        WAIT FOR 10 ns;
        X <= '0';

        WAIT FOR 10 ns;
        X <= '1';
        WAIT FOR 10 ns;
        X <= '0';


WAIT FOR 10 ns;
        X <= '1';
        WAIT FOR 10 ns;
        X <= '0';

        WAIT FOR 10 ns;
        X <= '1';
        WAIT FOR 10 ns;
        X <= '0';

        WAIT FOR 10 ns;
        X <= '1';
        WAIT FOR 10 ns;
        X <= '0';


WAIT FOR 10 ns;
        X <= '1';
        WAIT FOR 10 ns;
        X <= '0';

        WAIT FOR 10 ns;
        X <= '1';
        WAIT FOR 10 ns;
        X <= '0';

        WAIT FOR 10 ns;
        X <= '1';
        WAIT FOR 10 ns;
        X <= '0';


WAIT FOR 10 ns;
        X <= '1';
        WAIT FOR 10 ns;
        X <= '0';

        WAIT FOR 10 ns;
        X <= '1';
        WAIT FOR 10 ns;
        X <= '0';

        WAIT FOR 10 ns;
        X <= '1';
        WAIT FOR 10 ns;
        X <= '0';



        WAIT FOR 10 ns;
        Y <= '1';
        WAIT FOR 10 ns;
        Y <= '0';


        WAIT FOR 10 ns;
        X <= '1';
        WAIT FOR 10 ns;
        X <= '0';

        WAIT FOR 10 ns;
        X <= '1';
        WAIT FOR 10 ns;
        X <= '0';

        WAIT FOR 10 ns;
        X <= '1';
        WAIT FOR 10 ns;
        X <= '0';

        WAIT FOR 10 ns;
        Y <= '1';
        WAIT FOR 10 ns;
        Y <= '0';

        WAIT FOR 10 ns;
        X <= '1';
        WAIT FOR 10 ns;
        X <= '0';

        WAIT FOR 10 ns;
        X <= '1';
        WAIT FOR 10 ns;
        X <= '0';


        WAIT FOR 10 ns;
        X <= '1';
        WAIT FOR 10 ns;
        X <= '0';

        WAIT FOR 10 ns;
        X <= '1';
        WAIT FOR 10 ns;
        X <= '0';



        WAIT FOR 10 ns;
        X <= '1';
        WAIT FOR 10 ns;
        X <= '0';

        WAIT FOR 10 ns;
        X <= '1';
        WAIT FOR 10 ns;
        X <= '0';



        WAIT FOR 10 ns;
        X <= '1';
        WAIT FOR 10 ns;
        X <= '0';

        WAIT FOR 10 ns;
        X <= '1';
        WAIT FOR 10 ns;
        X <= '0';



        WAIT FOR 10 ns;
        X <= '1';
        WAIT FOR 10 ns;
        X <= '0';

        WAIT FOR 10 ns;
        X <= '1';
        WAIT FOR 10 ns;
        X <= '0';


        WAIT FOR 10 ns;
        Y <= '1';
        WAIT FOR 10 ns;
        Y <= '0';

        WAIT FOR 10 ns;
        X <= '1';
        WAIT FOR 10 ns;
        X <= '0';

        WAIT FOR 10 ns;
        X <= '1';
        WAIT FOR 10 ns;
        X <= '0';

        WAIT FOR 10 ns;
        X <= '1';
        WAIT FOR 10 ns;
        X <= '0';

        WAIT FOR 10 ns;
        X <= '1';
        WAIT FOR 10 ns;
        X <= '0';

        WAIT FOR 10 ns;
        X <= '1';
        WAIT FOR 10 ns;
        X <= '0';

        WAIT FOR 10 ns;
        Y <= '1';
        WAIT FOR 10 ns;
        Y <= '0';


    END PROCESS;

END behavior;