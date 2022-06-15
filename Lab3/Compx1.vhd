library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-------------------------------------------------------------------------

entity Compx1 is port (
   A,B	   :  in  std_logic;  
   AGTB, ALTB, AEQB :  out std_logic
); 
end Compx1;

architecture Compx1_architecture of Compx1 is




begin

	AGTB <= A AND NOT B; 
	ALTB <= NOT A AND B; 
	AEQB <= (A AND B) OR (NOT A AND NOT B);
	
end architecture Compx1_architecture; 
----------------------------------------------------------------------