--LIBRARY ieee;
--USE ieee.std_logic_1164.ALL;
--USE ieee.numeric_std.ALL;
--
--ENTITY LogicalStep_Lab4_top IS
--   PORT
--	(
--	Clk			: in	std_logic;
--	pb_n			: in	std_logic_vector(3 downto 0);
-- 	sw   			: in  std_logic_vector(7 downto 0); 
--	leds			: out std_logic_vector(7 downto 0);
--
--------------------------------------------------------------------	
----	xreg, yreg	: out std_logic_vector(3 downto 0);-- (for SIMULATION only)
----	xPOS, yPOS	: out std_logic_vector(3 downto 0);-- (for SIMULATION only)
--------------------------------------------------------------------	
--   seg7_data 	: out std_logic_vector(6 downto 0); -- 7-bit outputs to a 7-segment display (for LogicalStep only)
--	seg7_char1  : out	std_logic;				    		-- seg7 digit1 selector (for LogicalStep only)
--	seg7_char2  : out	std_logic				    		-- seg7 digit2 selector (for LogicalStep only)
--	
--	);
--END LogicalStep_Lab4_top;
--
--ARCHITECTURE Circuit OF LogicalStep_Lab4_top IS
--
---- Provided Project Components Used
--------------------------------------------------------------------- 
--COMPONENT Clock_Source 	port (SIM_FLAG: in boolean;clk_input: in std_logic;clock_out: out std_logic);
--END COMPONENT;
--
--component Bidir_shift_reg 
--	port (
--			CLK    :  in std_logic := '0';
--			RESET  :  in std_logic := '0';
--			CLK_EN :  in std_logic := '0';
--			LEFT0_RIGHT1 : in std_logic := '0';
--			REG_BITS : out std_logic_vector(3 downto 0)
--		);
--end component Bidir_shift_reg; 
--
--component U_D_Bin_Counter4bit 
--	port (
--		CLK    :  in std_logic := '0';
--		RESET  :  in std_logic := '0';
--		CLK_EN :  in std_logic := '0';
--		UP1_DOWN0 : in std_logic := '0';
--		COUNTER_BITS : out std_logic_vector(3 downto 0)
--	);
--end component U_D_Bin_Counter4bit;
--
--component Grappler 
--port (
-- clk_input, reset, grappler, grappler_en : IN std_logic;
-- grappler_on : OUT std_logic
-- );
--END component Grappler;
--
--component Extender port
--(
--	clk_input, reset, extender, extender_en						: IN std_logic;
--	ext_pos 													: IN std_logic_vector(3 downto 0);
--	clk_en, left_right, grappler_en, extender_out										: OUT std_logic
-- );
--END component Extender;
--
--component XY_Motion port
--(
--	clk_input, reset, x_LT, X_EQ, X_GT, Y_LT, Y_EQ, Y_GT, motion, extender_out					: IN std_logic;
--	x_clk_en, y_clk_en, x_up_down, y_up_down, error, capture_x_y, extender_en					: OUT std_logic
-- );
--END component XY_Motion;
--
--component Compx4 port (
--	-- bit inputs
--   A,B	   :  in  std_logic_vector(3 downto 0);
--	-- comparator outputs
--   AGTB, ALTB, AEQB :  out std_logic
--); 
--end component Compx4;
--
--component inverter port (
--			-- inputs to invert 
--			in3, in2, in1, in0 							: in std_logic;
--			-- inverted inputs as outputs
--			out3, out2, out1, out0				 		: out std_logic
--			);
--
-- end component inverter;
-- 
--component capture_register is port 
--	(
--		CLK    :  in std_logic := '0';
--		RESET  :  in std_logic := '0';
--		CAPTURE :  in std_logic := '0';
--		LOCATION :  in std_logic_vector(3 downto 0);
--		OUTPUT :  out std_logic_vector(3 downto 0)
--	);
--end component capture_register;
--
--
--
--				
--component SevenSegment
--  port 
--   (
--      hex	   :  in  std_logic_vector(3 downto 0);   -- The 4 bit data to be displayed
--      sevenseg :  out std_logic_vector(6 downto 0)    -- 7-bit outputs to a 7-segment
--   ); 
--end component SevenSegment;
--
--component segment7_mux 
--  port 
--   (
--      clk        : in  std_logic := '0';
--		DIN2 		: in  std_logic_vector(6 downto 0);	
--		DIN1 		: in  std_logic_vector(6 downto 0);
--		DOUT			: out	std_logic_vector(6 downto 0);
--		DIG2			: out	std_logic;
--		DIG1			: out	std_logic
--   );
--end component segment7_mux;
--------------------------------------------------------------------
---- Add any Other Components here
--------------------------------------------------------------------
--
--
--------------------------------------------------------------------
---- provided signals
---------------------------------------------------------------------
--------------------------------------------------------------------	
--constant SIM_FLAG : boolean := FALSE; -- set to FALSE when compiling for FPGA download to LogicalStep board
--------------------------------------------------------------------	
--------------------------------------------------------------------	
---- x, y position inputs
--signal X_target, Y_target : std_logic_vector(3 downto 0);
--
---- x, y position register outputs
--signal x_reg, y_reg : std_logic_vector(3 downto 0); 
--
---- Create any additional internal signals to be used
--signal clk_in, clock	: std_logic;
--
---- inputs to state machines
--signal motion, reset, extender_signal, grappler_signal : std_logic;
--	
--signal X_LT, X_EQ, X_GT : std_logic;
--
--signal Y_LT, Y_EQ, Y_GT : std_logic;
--
---- signals between state machines
--signal extender_out, extender_en, grappler_en : std_logic;
--
---- signals to registers
--signal x_clk_en, y_clk_en, x_up_down, y_up_down : std_logic;
--
--signal error : std_logic;
-- 
-- -- extender position
--signal ext_pos : std_logic_vector(3 downto 0);
--
---- extender outputs
--signal extender_clk_en, extender_left_right: std_logic;
-- 
---- grappler output
--signal grappler_on : std_logic;
--
---- position signals
--signal x_pos, y_pos: std_logic_vector(3 downto 0);
-- 
--signal capture_xy : std_logic;
--
---- HEx decoder outputs 
--signal x_7_segment : std_logic_vector(6 downto 0); 
--
--signal y_7_segment : std_logic_vector(6 downto 0); 
--
--	
--BEGIN
--clk_in <= clk;
--Y_target <= sw(3 downto 0);
--X_target <= sw(7 downto 4);
-- 
--Clock_Selector: Clock_source port map(SIM_FLAG, clk_in, clock);
--
--x_comparator : Compx4 port map (x_pos, x_reg, X_GT, X_LT, X_EQ);
--
--y_comparator : Compx4 port map (y_pos, y_reg, Y_GT, Y_LT, Y_EQ);
--
--inverter_inst : inverter port map ('1', pb_n(2), pb_n(1), pb_n(0), reset, motion, extender_signal, grappler_signal);
--
--xy_motion_inst : xy_motion port map (clock, reset, X_LT, X_EQ, X_GT, Y_LT, Y_EQ, Y_GT, motion, extender_out,
--									x_clk_en, y_clk_en, x_up_down, y_up_down, error, capture_xy, extender_en);
--									
--extender_inst : extender port map (clock, reset, extender_signal, extender_en, ext_pos, extender_clk_en, extender_left_right, grappler_en, extender_out);
--									
--
--grappler_inst : grappler port map (clock, reset, grappler_signal, grappler_en, grappler_on);
--
--extender_register_inst : Bidir_shift_reg port map (clock, reset, extender_clk_en, extender_left_right, ext_pos);
--
--x_counter_inst : U_D_Bin_Counter4bit port map (clock, reset, x_clk_en, x_up_down, x_pos);
--
--y_counter_inst : U_D_Bin_Counter4bit port map (clock, reset, y_clk_en, y_up_down, y_pos);
--
--x_register : capture_register port map (clock, reset, capture_xy, X_target, x_reg);
--
--y_register : capture_register port map (clock, reset, capture_xy, Y_target, y_reg);
--
---- sevensegment units
--inst1: sevensegment port map (x_pos, x_7_segment );
--inst2: sevensegment port map (y_pos, y_7_segment);
--inst3: segment7_mux port map (clk_in, y_7_segment, x_7_segment, seg7_data, seg7_char2, seg7_char1);		
--
--
----
----xPOS <= x_pos;
----yPOS <= y_pos;
----xreg <= x_reg;
----yreg <= y_reg;
--leds (5 downto 2) <= ext_pos;
--leds(0) <= error;
--leds(1) <= grappler_on;
--
--
----Bidir_shift_reg_inst : Bidir_shift_reg port map(clock, NOT(pb_n(0)), sw(0), sw(1), leds(7 downto 0));
--
----U_D_Bin_Counter4bit_inst : U_D_Bin_Counter4bit port map(clock, NOT(pb_n(0)), sw(0), sw(1), leds(7 downto 0));
--
--END Circuit;




-- Simulation:

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY LogicalStep_Lab4_top IS
   PORT
	(
	Clk			: in	std_logic;
	pb_n			: in	std_logic_vector(3 downto 0);
 	sw   			: in  std_logic_vector(7 downto 0); 
	leds			: out std_logic_vector(7 downto 0);

------------------------------------------------------------------	
	xreg, yreg	: out std_logic_vector(3 downto 0);-- (for SIMULATION only)
	xPOS, yPOS	: out std_logic_vector(3 downto 0);-- (for SIMULATION only)
------------------------------------------------------------------	
   seg7_data 	: out std_logic_vector(6 downto 0); -- 7-bit outputs to a 7-segment display (for LogicalStep only)
	seg7_char1  : out	std_logic;				    		-- seg7 digit1 selector (for LogicalStep only)
	seg7_char2  : out	std_logic				    		-- seg7 digit2 selector (for LogicalStep only)
	
	);
END LogicalStep_Lab4_top;

ARCHITECTURE Circuit OF LogicalStep_Lab4_top IS

-- Provided Project Components Used
------------------------------------------------------------------- 
COMPONENT Clock_Source 	port (SIM_FLAG: in boolean;clk_input: in std_logic;clock_out: out std_logic);
END COMPONENT;


component Bidir_shift_reg 
	port (
			CLK    :  in std_logic := '0';
			RESET  :  in std_logic := '0';
			CLK_EN :  in std_logic := '0';
			LEFT0_RIGHT1 : in std_logic := '0';
			REG_BITS : out std_logic_vector(3 downto 0)
		);
end component Bidir_shift_reg; 

component U_D_Bin_Counter4bit 
	port (
		CLK    :  in std_logic := '0';
		RESET  :  in std_logic := '0';
		CLK_EN :  in std_logic := '0';
		UP1_DOWN0 : in std_logic := '0';
		COUNTER_BITS : out std_logic_vector(3 downto 0)
	);
end component U_D_Bin_Counter4bit;

component Grappler 
port (
 clk_input, reset, grappler, grappler_en : IN std_logic;
 grappler_on : OUT std_logic
 );
END component Grappler;

component Extender port
(
	clk_input, reset, extender, extender_en						: IN std_logic;
	ext_pos 													: IN std_logic_vector(3 downto 0);
	clk_en, left_right, grappler_en, extender_out										: OUT std_logic
 );
END component Extender;

component XY_Motion port
(
	clk_input, reset, x_LT, X_EQ, X_GT, Y_LT, Y_EQ, Y_GT, motion, extender_out					: IN std_logic;
	x_clk_en, y_clk_en, x_up_down, y_up_down, error, capture_x_y, extender_en					: OUT std_logic
 );
END component XY_Motion;

component Compx4 port (
	-- bit inputs
   A,B	   :  in  std_logic_vector(3 downto 0);
	-- comparator outputs
   AGTB, ALTB, AEQB :  out std_logic
); 
end component Compx4;

component inverter port (
			-- inputs to invert 
			in3, in2, in1, in0 							: in std_logic;
			-- inverted inputs as outputs
			out3, out2, out1, out0				 		: out std_logic
			);

 end component inverter;
 
component capture_register is port 
	(
		CLK    :  in std_logic := '0';
		RESET  :  in std_logic := '0';
		CAPTURE :  in std_logic := '0';
		LOCATION :  in std_logic_vector(3 downto 0);
		OUTPUT :  out std_logic_vector(3 downto 0)
	);
end component capture_register;



				
component SevenSegment
  port 
   (
      hex	   :  in  std_logic_vector(3 downto 0);   -- The 4 bit data to be displayed
      sevenseg :  out std_logic_vector(6 downto 0)    -- 7-bit outputs to a 7-segment
   ); 
end component SevenSegment;

component segment7_mux 
  port 
   (
      clk        : in  std_logic := '0';
		DIN2 		: in  std_logic_vector(6 downto 0);	
		DIN1 		: in  std_logic_vector(6 downto 0);
		DOUT			: out	std_logic_vector(6 downto 0);
		DIG2			: out	std_logic;
		DIG1			: out	std_logic
   );
end component segment7_mux;
------------------------------------------------------------------
-- Add any Other Components here
------------------------------------------------------------------


------------------------------------------------------------------
-- provided signals
-------------------------------------------------------------------
------------------------------------------------------------------	
constant SIM_FLAG : boolean := TRUE; -- set to FALSE when compiling for FPGA download to LogicalStep board
------------------------------------------------------------------	
------------------------------------------------------------------	
-- x, y position inputs
signal X_target, Y_target : std_logic_vector(3 downto 0);

-- x, y position register outputs
signal x_reg, y_reg : std_logic_vector(3 downto 0); 

-- Create any additional internal signals to be used
signal clk_in, clock	: std_logic;

-- inputs to state machines
signal motion, reset, extender_signal, grappler_signal : std_logic;
	
signal X_LT, X_EQ, X_GT : std_logic;

signal Y_LT, Y_EQ, Y_GT : std_logic;

-- signals between state machines
signal extender_out, extender_en, grappler_en : std_logic;

-- signals to registers
signal x_clk_en, y_clk_en, x_up_down, y_up_down : std_logic;

signal error : std_logic;
 
 -- extender position
signal ext_pos : std_logic_vector(3 downto 0);

-- extender outputs
signal extender_clk_en, extender_left_right: std_logic;
 
-- grappler output
signal grappler_on : std_logic;

-- position signals
signal x_pos, y_pos: std_logic_vector(3 downto 0);
 
signal capture_xy : std_logic;

	
BEGIN
clk_in <= clk;
Y_target <= sw(3 downto 0);
X_target <= sw(7 downto 4);
 
Clock_Selector: Clock_source port map(SIM_FLAG, clk_in, clock);

x_comparator : Compx4 port map (x_pos, x_reg, X_GT, X_LT, X_EQ);

y_comparator : Compx4 port map (y_pos, y_reg, Y_GT, Y_LT, Y_EQ);

inverter_inst : inverter port map (pb_n(3), pb_n(2), pb_n(1), pb_n(0), reset, motion, extender_signal, grappler_signal);

xy_motion_inst : xy_motion port map (clock, reset, X_LT, X_EQ, X_GT, Y_LT, Y_EQ, Y_GT, motion, extender_out,
									x_clk_en, y_clk_en, x_up_down, y_up_down, error, capture_xy, extender_en);
									
extender_inst : extender port map (clock, reset, extender_signal, extender_en, ext_pos, extender_clk_en, extender_left_right, grappler_en, extender_out);
									

grappler_inst : grappler port map (clock, reset, grappler_signal, grappler_en, grappler_on);

extender_register_inst : Bidir_shift_reg port map (clock, reset, extender_clk_en, extender_left_right, ext_pos);

x_counter_inst : U_D_Bin_Counter4bit port map (clock, reset, x_clk_en, x_up_down, x_pos);

y_counter_inst : U_D_Bin_Counter4bit port map (clock, reset, y_clk_en, y_up_down, y_pos);

x_register : capture_register port map (clock, reset, capture_xy, X_target, x_reg);

y_register : capture_register port map (clock, reset, capture_xy, Y_target, y_reg);


xPOS <= x_pos;
yPOS <= y_pos;
xreg <= x_reg;
yreg <= y_reg;
leds (5 downto 2) <= ext_pos;
leds(0) <= error;
leds(1) <= grappler_on;


--Bidir_shift_reg_inst : Bidir_shift_reg port map(clock, NOT(pb_n(0)), sw(0), sw(1), leds(7 downto 0));

--U_D_Bin_Counter4bit_inst : U_D_Bin_Counter4bit port map(clock, NOT(pb_n(0)), sw(0), sw(1), leds(7 downto 0));

END Circuit;




