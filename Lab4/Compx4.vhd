library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Aung Khant Min and Akshay Bhatia

-------------------------------------------------------------------------

-- compare two numbers that are each four bits
entity Compx4 is port (
	-- bit inputs
   A,B	   :  in  std_logic_vector(3 downto 0);
	-- comparator outputs
   AGTB, ALTB, AEQB :  out std_logic
); 
end Compx4;

architecture Compx4_architecture of Compx4 is

-- comparator for one bit
component Compx1 port (
	-- bit inputs
   A,B	   :  in  std_logic;  
	-- comparator outputs
   AGTB, ALTB, AEQB :  out std_logic
); 
end component Compx1;

-- signals for the magnitude comparisons of each of the four bits
-- signal for bit 3
signal A3GTB3	: std_logic;
signal A3LTB3	: std_logic;
signal A3EQB3	: std_logic;

-- signal for bit 2
signal A2GTB2	: std_logic;
signal A2LTB2	: std_logic;
signal A2EQB2	: std_logic;

-- signal for bit 1
signal A1GTB1	: std_logic;
signal A1LTB1	: std_logic;
signal A1EQB1	: std_logic;

-- signal for bit 0
signal A0GTB0	: std_logic;
signal A0LTB0	: std_logic;
signal A0EQB0	: std_logic;


begin

--  comparator for A3 bit
A3B3Comp: Compx1 port map (A(3), B(3), A3GTB3, A3LTB3, A3EQB3);

-- comparator for A2 bit
A2B2Comp: Compx1 port map (A(2), B(2), A2GTB2, A2LTB2, A2EQB2);

-- comparator for A1 bit
A1B1Comp: Compx1 port map (A(1), B(1), A1GTB1, A1LTB1, A1EQB1);

-- comparator for A0 bit
A0B0Comp: Compx1 port map (A(0), B(0), A0GTB0, A0LTB0, A0EQB0);

-- set the AGTB, ALTB, and AEQB signals based on the compare signals for each bit
AGTB <= A3GTB3 OR (A3EQB3 AND A2GTB2) OR (A3EQB3 AND A2EQB2 AND A1GTB1) OR (A3EQB3 AND A2EQB2 AND A1EQB1 AND A0GTB0);
ALTB <= A3LTB3 OR (A3EQB3 AND A2LTB2) OR (A3EQB3 AND A2EQB2 AND A1LTB1) OR (A3EQB3 AND A2EQB2 AND A1EQB1 AND A0LTB0);
AEQB <= A3EQB3 AND A2EQB2 AND A1EQB1 AND A0EQB0;

end architecture Compx4_architecture; 
----------------------------------------------------------------------