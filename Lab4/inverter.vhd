library ieee;
use ieee.std_logic_1164.all;
library work;

-- Aung Khant Min and Akshay Bhatia 

-- inverter
entity inverter is
 	port (
			-- inputs to invert 
			in3, in2, in1, in0 							: in std_logic;
			-- inverted inputs as outputs
			out3, out2, out1, out0				 		: out std_logic
			);

 end inverter;

 architecture inverter_logic of inverter is
 
 
 
 begin
 
 -- select the appropriate input to send to output according to mux_select
 -- converting active low inputs to active high 
out3 <= NOT in3;
out2 <= NOT in2;
out1 <= NOT in1;
out0 <= NOT in0;
  
 end inverter_logic;
 
 