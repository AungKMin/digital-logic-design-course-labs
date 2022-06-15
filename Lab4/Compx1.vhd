library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Aung Khant Min and Akshay Bhatia

-------------------------------------------------------------------------

-- compare two bits
entity Compx1 is port (
	-- bit inputs
   A,B	   :  in  std_logic;  
	-- comparator signal outputs
   AGTB, ALTB, AEQB :  out std_logic
); 
end Compx1;

architecture Compx1_architecture of Compx1 is

begin

	-- A greater  than B if A is 1 and B is 0
	AGTB <= A AND NOT B; 
	-- A is less than B if A is 0 and B is 1
	ALTB <= NOT A AND B; 
	-- A is equal to B if A is 0 and B is 0 or A is 1 and B is 1
	AEQB <= (A AND B) OR (NOT A AND NOT B);
	
end architecture Compx1_architecture; 
----------------------------------------------------------------------