LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY counter_tb IS
END counter_tb;

ARCHITECTURE behavior OF counter_tb IS
    SIGNAL clk, reset, X, Y, Z : STD_LOGIC := '0';
    SIGNAL result : STD_LOGIC_VECTOR(5 DOWNTO 0);
BEGIN
    -- Instantiate the counter unit
    UUT : ENTITY work.counter
        PORT MAP(
            X => X,
            Y => Y,
            reset => reset,
            result => result,
            Z => Z
        );

    -- Clock process
    PROCESS
    BEGIN
        WAIT FOR 10 ns; -- Adjust the clock period as needed
        clk <= NOT clk;
    END PROCESS;

    -- Stimulus process
    PROCESS
    BEGIN
        -- Initialize inputs
        reset <= '1';
        X <= '0';
        Y <= '0';

        -- Apply reset
        WAIT FOR 20 ns;
        reset <= '0';

        -- Test case 1: Increment counter
        WAIT FOR 10 ns;
        X <= '1';
        WAIT FOR 10 ns;
        X <= '0';

        -- Test case 2: Decrement counter
        WAIT FOR 10 ns;
        Y <= '1';
        WAIT FOR 10 ns;
        Y <= '0';

        -- Test case 3: Check full condition
        WAIT FOR 10 ns;
        X <= '1';
        WAIT FOR 10 ns;
        X <= '0';

        -- Test case 4: Check sub condition in full state
        WAIT FOR 10 ns;
        Y <= '1';
        WAIT FOR 10 ns;
        Y <= '0';

        -- Add more test cases as needed

        WAIT;
    END PROCESS;

    -- Monitor process
    PROCESS
    BEGIN
        WAIT FOR 1 ns; -- Initial delay for signal stability

        LOOP
            WAIT UNTIL rising_edge(clk);

            -- Display simulation time and relevant signals
            IF reset = '1' THEN
                REPORT "Simulation time: " & TIME'HIGH & " Reset asserted";
            ELSE
                REPORT "Simulation time: " & TIME'HIGH & " X = " & X & ", Y = " & Y & ", Z = " & Z & ", Result = " & result;
            END IF;
        END LOOP;
    END PROCESS;

END behavior;