library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

Entity XY_Motion IS Port
(
	clk_input, reset, x_LT, X_EQ, X_GT, Y_LT, Y_EQ, Y_GT, motion, extender_out					: IN std_logic;
	x_clk_en, y_clk_en, x_up_down, y_up_down, error, capture_x_y, extender_en										: OUT std_logic
 );
END ENTITY;
 

 Architecture E of XY_Motion is
 
 TYPE STATE_NAMES IS (HOLD, HOLD_ERROR, PRESSED, RELEASE);   -- list all the STATE_NAMES values

 SIGNAL current_state, next_state	:  STATE_NAMES;     	-- signals of type STATE_NAMES
 
 SIGNAL error_flash : std_logic;

 BEGIN
 
 --------------------------------------------------------------------------------
 --State Machine:
 --------------------------------------------------------------------------------

 -- REGISTER_LOGIC PROCESS:
 
Register_Section: PROCESS (clk_input, reset, next_state)  -- this process synchronizes the activity to a clock
BEGIN
	IF (reset = '1') THEN
		current_state <= HOLD;
		error_flash <= '0';
	ELSIF(rising_edge(clk_input)) THEN
		current_state <= next_State;
	END IF;
END PROCESS;	

--Flash : PROCESS (clk_input, reset) 
--BEGIN 
--	
--	IF (error_flash = '1') THEN
--		error <= clk_input;
--	END IF;
--END PROCESS; 

-- TRANSITION LOGIC PROCESS

Transition_Section: PROCESS (clk_input, reset, x_LT, X_EQ, X_GT, Y_LT, Y_EQ, Y_GT, motion, extender_out) 

BEGIN
	 CASE current_state IS
			WHEN HOLD =>	
				IF (motion = '0') THEN
				   next_state <= HOLD;
				ELSIF (motion = '1' AND extender_out = '1') THEN 
					next_state <= PRESSED;
				ELSE 
					next_state <= PRESSED;
				END IF;
			WHEN HOLD_ERROR =>
				IF (motion = '0') THEN
				   next_state <= HOLD_ERROR;
				ELSIF (motion = '1' AND extender_out = '1') THEN 
					next_state <= HOLD_ERROR;
				ELSE 
					next_state <= PRESSED;
				END IF;
				IF (NOT extender_out = '1') THEN
					next_state <= HOLD;
				ELSE
				END IF;
					
			WHEN PRESSED =>		
				IF (motion = '1') THEN
					next_state <= PRESSED;
				ELSIF (extender_out = '1' AND motion = '0') THEN
					next_state <= HOLD_ERROR;
				ELSE
					next_state <= RELEASE;
				END IF;	
			WHEN RELEASE =>		
				IF (extender_out = '0' AND (X_EQ = '0' OR Y_EQ = '0')) THEN
					next_state <= RELEASE;
				ELSE
					next_state <= HOLD;
				END IF;
			WHEN OTHERS =>
				
		END CASE;

 END PROCESS;

-- DECODER SECTION PROCESS

Decoder_Section: PROCESS (clk_input, reset, x_LT, X_EQ, X_GT, Y_LT, Y_EQ, Y_GT, motion, extender_out) 

BEGIN

	 CASE current_state IS

			WHEN HOLD =>	
				IF (motion = '0') THEN
					capture_x_y <= '0';
					x_clk_en <= '0';
					y_clk_en <= '0';
					error <= '0';
					x_up_down <= '0';
					y_up_down <= '0';
					extender_en <= '1';
				ELSIF (motion = '1' AND extender_out = '1') THEN 
					capture_x_y <= '0';
					x_clk_en <= '0';
					y_clk_en <= '0';
					error <= '0';
					x_up_down <= '0';
					y_up_down <= '0';
					extender_en <= '1';
				ELSE 
					capture_x_y <= '1';
					x_clk_en <= '0';
					y_clk_en <= '0';
					error <= '0';
					x_up_down <= '0';
					y_up_down <= '0';
					extender_en <= '1';
				END IF;
			WHEN HOLD_ERROR =>	
				IF (motion = '0') THEN
					capture_x_y <= '0';
					x_clk_en <= '0';
					y_clk_en <= '0';
					x_up_down <= '0';
					y_up_down <= '0';
					extender_en <= '1';
				ELSIF (motion = '1' AND extender_out = '1') THEN 
					capture_x_y <= '0';
					x_clk_en <= '0';
					y_clk_en <= '0';
					x_up_down <= '0';
					y_up_down <= '0';
					extender_en <= '1';
				ELSE 
					capture_x_y <= '1';
					x_clk_en <= '0';
					y_clk_en <= '0';
					x_up_down <= '0';
					y_up_down <= '0';
					extender_en <= '1';
				END IF;
				IF (extender_out = '1') THEN 
					error <= clk_input;
				ELSE 
					error <= '0';
				END IF;
			WHEN PRESSED =>		
				IF (motion = '1') THEN
					capture_x_y <= '0';
					x_clk_en <= '0';
					y_clk_en <= '0';
					error <= '0';
					x_up_down <= '0';
					y_up_down <= '0';
					extender_en <= '1';
				ELSIF (extender_out = '1' AND motion = '0') THEN
					capture_x_y <= '0';
					x_clk_en <= '0';
					y_clk_en <= '0';
					error <= clk_input;
					x_up_down <= '0';
					y_up_down <= '0';
					extender_en <= '1';
				ELSE
					capture_x_y <= '0';
					x_clk_en <= NOT X_EQ;
					y_clk_en <= NOT Y_EQ;
					error <= '0';
--					x_up_down <= X_GT;
--					y_up_down <= Y_GT;
					x_up_down <= X_LT;
					y_up_down <= Y_LT;
					extender_en <= '0';
				END IF;	
			WHEN RELEASE =>		
				IF (extender_out = '0' AND (X_EQ = '0' OR Y_EQ = '0')) THEN
					capture_x_y <= '0';
					x_clk_en <= NOT X_EQ;
					y_clk_en <= NOT Y_EQ;
					error <= '0';
--					x_up_down <= X_GT;
--					y_up_down <= Y_GT;
					x_up_down <= X_LT;
					y_up_down <= Y_LT;
					extender_en <= '0';
				ELSE
					capture_x_y <= '0';
					x_clk_en <= '0';
					y_clk_en <= '0';
					error <= '0';
					x_up_down <= '0';
					y_up_down <= '0';
					extender_en <= '1';
				END IF;
			WHEN OTHERS =>			

				
		END CASE;
 END PROCESS;

 END ARCHITECTURE E;
