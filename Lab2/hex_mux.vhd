library ieee;
use ieee.std_logic_1164.all;
library work;

-- Aung Khant Min and Akshay Bhatia 

-- quad-bit 4-to-1 mux
entity hex_mux is
 	port (
			hex_num3, hex_num2, hex_num1, hex_num0 : in std_logic_vector(3 downto 0);
			mux_select 										: in std_logic_vector(1 downto 0); 
			hex_out				 							: out std_logic_vector(3 downto 0)
			);

 end hex_mux;

 architecture mux_logic of hex_mux is
 
 
 
 begin
 
 -- select the appropriate input to send to output according to mux_select
with mux_select(1 downto 0) select
hex_out <= hex_num0 when "00",
			  hex_num1 when "01",
			  hex_num2 when "10",
			  hex_num3 when "11";
  
 end mux_logic;
 
 