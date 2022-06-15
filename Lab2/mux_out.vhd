library ieee;
use ieee.std_logic_1164.all;
library work;

-- Aung Khant Min and Akshay Bhatia 

-- five-bit 2-to-1 mux
entity mux_out is
 	port (
			input1, input0									: in std_logic_vector(4 downto 0);
			mux_select 										: in std_logic; 
			output				 							: out std_logic_vector(4 downto 0)
			);

 end mux_out;

 architecture mux_out_logic of mux_out is
 
 
 
 begin
 
 -- select the appropriate input to send to output according to mux_select
with mux_select select

output <= input0 when '0',
			  input1 when '1';
  
 end mux_out_logic;
 
 