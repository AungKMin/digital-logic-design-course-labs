library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library work;

-- Aung Khant Min and Akshay Bhatia 

entity LogicalStep_Lab2_top is port (
	pb					: in	std_logic_vector(6 downto 0); 	-- push buttons used for data input selection/operation control
 	sw   				: in  std_logic_vector(15 downto 0); 	-- The switch inputs used for data inputs
   leds				: out std_logic_vector(5 downto 0) 		--  leds for outputs
	
); 
end LogicalStep_Lab2_top;

architecture Circuit of LogicalStep_Lab2_top is

-- Declare any Components to be Used ---
------------------------------------------------------------------- 
 
 -- mux to select operands 
 component hex_mux
 	port (
			hex_num3, hex_num2, hex_num1, hex_num0 : in std_logic_vector(3 downto 0);
			mux_select 										: in std_logic_vector(1 downto 0); 
			hex_out 											: out std_logic_vector(3 downto 0)
			);
			
 end component;
 
 -- adder for two 4bit numbers
 component full_adder_4bit 
 	port (
			cin						: in std_logic;
			hex_val_A, hex_val_B	: in std_logic_vector(3 downto 0);
			hex_sum 					: out std_logic_vector(3 downto 0);
		   carry_out				: out std_logic
			);
			
 end component;
 
 -- logic processor
component logic_proc is
 	port (
			logic_in1, logic_in0							: in std_logic_vector(3 downto 0);
			logic_select 									: in std_logic_vector(1 downto 0); 
			logic_out				 						: out std_logic_vector(3 downto 0)
			);

 end component;
 
 -- five-bit 2-to-1 mux
component mux_out is
 	port (
			input1, input0									: in std_logic_vector(4 downto 0);
			mux_select 										: in std_logic; 
			output				 							: out std_logic_vector(4 downto 0)
			);

 end component;
-- 
-------------------------------------------------------
-- Declare any signals here to be used within the design ---
-------------------------------------------------------
-- groups of logic signals with each group defined as std_logic_vector(MSB downto LSB)
	signal hex_A, hex_B, hex_C, hex_D			: std_logic_vector(3 downto 0);
--- some mux_selector nets
	signal mux_sel_0									: std_logic_vector(1 downto 0);
	signal mux_sel_1									: std_logic_vector(1 downto 0);
	signal mux_sel_2									: std_logic;
-- logic select input
	signal logic_select								: std_logic_vector(1 downto 0);

-- outputs from hex_mux
	signal hex_mux_output_0							: std_logic_vector(3 downto 0);
	signal hex_mux_output_1							: std_logic_vector(3 downto 0);
-- logic proc output
	signal logic_proc_out							: std_logic_vector(3 downto 0);
-- adder sum output
	signal adder_hex_sum_output					: std_logic_vector(3 downto 0);
-- adder carry output
	signal adder_carry_out_output					: std_logic;
-------------------------------------------------------------------
-------------------------------------------------------------------

begin

-- assign (connect) one end of each input group (bus) to sepecific switch inputs
hex_A <= sw(3 downto 0);
hex_B <= sw(7 downto 4);
hex_C <= sw(11 downto 8);
hex_D <= sw(15 downto 12);

-- the other ends of hex_A - hex_D will connect to other parts of the circuit in the design

-- assign mux select signals to the appropriate inputs
mux_sel_0 <= pb(1 downto 0);
mux_sel_1 <= pb(3 downto 2);
mux_sel_2 <= pb(6);

-- assign logic select signal to the appropriate input
logic_select <= pb(5 downto 4);

-- assign output 
leds(5) <= pb(6);

----------------------------------------------------------------------------
-- PLACE your compnent instances below with the interconnection required ---
----------------------------------------------------------------------------

-- first mux to select operands
hex_mux_inst_0: hex_mux port map (
									hex_D, hex_C, hex_B, hex_A, mux_sel_0, 
									hex_mux_output_0
									);

-- second mux to select operand 
hex_mux_inst_1: hex_mux port map (
									hex_D, hex_C, hex_B, hex_A, mux_sel_1, 
									hex_mux_output_1
									);
					
-- logic processor
logic_proc_inst: logic_proc port map (
									hex_mux_output_1, hex_mux_output_0, logic_select, 
									logic_proc_out
									);		
									
-- adder			
full_addder_4bit_inst: full_adder_4bit port map (
									'0', hex_mux_output_0, hex_mux_output_1, 
									adder_hex_sum_output, adder_carry_out_output
									);
									
-- mux to select the signal to output
mux_out_inst: mux_out port map (
									adder_carry_out_output & adder_hex_sum_output, '0' & logic_proc_out, mux_sel_2, 
									leds(4 downto 0)
									);
							
							
end Circuit;

