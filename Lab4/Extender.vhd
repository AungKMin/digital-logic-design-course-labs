library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

Entity Extender IS Port
(
	clk_input, reset, extender, extender_en						: IN std_logic;
	ext_pos 													: IN std_logic_vector(3 downto 0);
	clk_en, left_right, grappler_en, extender_out										: OUT std_logic
 );
END ENTITY;
 

 Architecture E of Extender is
 
 TYPE STATE_NAMES IS (DOWN0, DOWN1, UP0, UP1);   -- list all the STATE_NAMES values

 SIGNAL current_state, next_state	:  STATE_NAMES;     	-- signals of type STATE_NAMES

 BEGIN
 
 --------------------------------------------------------------------------------
 --State Machine:
 --------------------------------------------------------------------------------

 -- REGISTER_LOGIC PROCESS:
 
Register_Section: PROCESS (clk_input, reset, next_state)  -- this process synchronizes the activity to a clock
BEGIN
	IF (reset = '1') THEN
		current_state <= UP0;
	ELSIF(rising_edge(clk_input)) THEN
		current_state <= next_State;
	END IF;
END PROCESS;	



-- TRANSITION LOGIC PROCESS

Transition_Section: PROCESS (extender, extender_en, ext_pos, current_state) 

BEGIN
	 IF (extender_en='1') THEN
		 CASE current_state IS
				WHEN UP0 =>		
					IF (ext_pos /= "0000" OR extender = '0') THEN
						next_state <= UP0;
					ELSE
						next_state <= DOWN1;
					END IF;
				WHEN DOWN1 =>		
					IF (extender = '0') THEN
						next_state <= DOWN0;
					ELSE
						next_state <= DOWN1;
					END IF;	
				WHEN DOWN0 =>		
					IF (ext_pos /= "1111" OR extender = '0') THEN
						next_state <= DOWN0;
					ELSE
						next_state <= UP1;
					END IF;
				WHEN UP1 =>		
					IF (extender = '0') THEN
						next_state <= UP0;
					ELSE
						next_state <= UP1;
					END IF;
				WHEN OTHERS =>
					next_state <= current_state;
					
			END CASE;
		ELSE	
			next_state <= current_state;
		END IF;

 END PROCESS;

-- DECODER SECTION PROCESS

Decoder_Section: PROCESS (extender, extender_en, ext_pos, current_state) 

BEGIN
		
	  IF (ext_pos = "1111") THEN
			grappler_en <= '1';
	  ELSE 
			grappler_en <= '0';
	  END IF;
	  
	  IF (ext_pos = "0000") THEN
			extender_out <= '0';
	  ELSE
			extender_out <= '1';
	  END IF;
		
     CASE current_state IS
	  
			WHEN UP0 =>
				IF (ext_pos /= "0000") THEN
					clk_en <= '1';
					left_right <= '0';
				ELSE
					clk_en <= '0';
					left_right <= '0';
				END IF;
				
			WHEN UP1 => 
				IF (extender = '0') THEN
					clk_en <= '1';
					left_right <= '0';
				ELSE 
					clk_en <= '0';
					left_right <= '0';
				END IF;
				
			WHEN DOWN0 =>
				IF (ext_pos /= "1111") THEN
					clk_en <= '1';
					left_right <= '1';
				ELSE 
					clk_en <= '0';
					left_right <= '1';
				END IF;
				
			WHEN DOWN1 => 
				IF (extender = '0') THEN
					clk_en <= '1';
					left_right <= '1';
				ELSE 
					clk_en <= '0';
					left_right <= '1';
				END IF;
				
         WHEN OTHERS =>		

	  END CASE;
 END PROCESS;

 END ARCHITECTURE E;
