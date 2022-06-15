library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

Entity Grappler IS Port
(
 clk_input, reset, grappler, grappler_en : IN std_logic;
 grappler_on : OUT std_logic
 );
END ENTITY;
 

 Architecture G of Grappler is
 
 TYPE STATE_NAMES IS (OPEN0, OPEN1, CLOSED1, CLOSED0);   -- list all the STATE_NAMES values

 SIGNAL current_state, next_state :  STATE_NAMES;     -- signals of type STATE_NAMES
 
 BEGIN
 


 
 
 --------------------------------------------------------------------------------
 --State Machine:
 --------------------------------------------------------------------------------

 -- REGISTER_LOGIC PROCESS:
 --
Register_Section: PROCESS (clk_input, reset, next_state)  -- this process synchronizes the activity to a clock
BEGIN
IF (reset = '1') THEN
current_state <= OPEN0;
ELSIF(rising_edge(clk_input)) THEN
current_state <= next_state;
END IF;
END PROCESS;



-- TRANSITION LOGIC PROCESS

Transition_Section: PROCESS (grappler, grappler_en, current_state)

BEGIN
    IF (grappler_en = '1') THEN
		CASE current_state IS
            WHEN CLOSED1 =>
                IF(grappler = '1') THEN
                next_state <= CLOSED1;
                ELSE
                next_state <= CLOSED0;
                END IF;

            WHEN OPEN0 =>
                IF (grappler = '1') THEN
                next_state <= CLOSED1;
                ELSE
                next_state <= OPEN0;
                END IF;
           
            WHEN CLOSED0 =>
                IF (grappler = '1') THEN
                next_state <= OPEN1;
                ELSE
                next_state <= CLOSED0;
                END IF;

				WHEN OPEN1 => 
					IF (grappler = '1') THEN 
						next_state <= OPEN1;
					ELSE 
						next_state <= OPEN0;
					END IF;
	
            WHEN OTHERS =>
                next_state <= current_state;
		END CASE;
	 ELSE 
		next_state <= current_state;
	 END IF;
END PROCESS;

-- DECODER SECTION PROCESS

Decoder_Section: PROCESS (grappler, grappler_en, current_state)

BEGIN
    CASE current_state IS
        WHEN CLOSED1 =>
            grappler_on <= '0';
        WHEN CLOSED0 =>
            grappler_on <= '1'; 
        WHEN OPEN0 =>
            grappler_on <= '0';
        WHEN others =>
            grappler_on <= '1';
    END CASE;
END PROCESS;

END ARCHITECTURE G;