library ieee;
use ieee.std_logic_1164.all;
library work;

-- Aung Khant Min and Akshay Bhatia 

entity logic_proc is
 	port (
			logic_in1, logic_in0							: in std_logic_vector(3 downto 0);
			logic_select 									: in std_logic_vector(1 downto 0); 
			logic_out				 						: out std_logic_vector(3 downto 0)
			);

 end logic_proc;

 architecture logic_proc_logic of logic_proc is
 
 
 
 begin
 
 -- complete the with/select construct with the VHDL coding from the Lab Manual for Lab2.
 -- select the approriate operation to apply to the two inputs based on the logic_select select input
with logic_select(1 downto 0) select
logic_out <= 	(logic_in0 AND logic_in1) when "00",
					(logic_in0 OR logic_in1) when "01",
					(logic_in0 XOR logic_in1) when "10",
					(logic_in0 XNOR logic_in1) when "11";
  
 end logic_proc_logic;
 
 