LIBRARY ieee;
USE ieee.std_logic_1164.all;
LIBRARY work;

--Akshay Bhatia and Aung Khant Min

ENTITY VHDL_polarity_controller IS 
	PORT (
		IN1, IN2, IN3, IN4, POLARITY_CNTRL:IN STD_LOGIC;
		OUT1, OUT2, OUT3, OUT4:OUT STD_LOGIC
		);
END VHDL_polarity_controller;

ARCHITECTURE polarity_gates OF VHDL_polarity_controller IS
BEGIN 

OUT1 <= IN1 XNOR POLARITY_CNTRL;
OUT2 <= IN2 XNOR POLARITY_CNTRL;
OUT3 <= IN3 XNOR POLARITY_CNTRL;
OUT4 <= IN4 XNOR POLARITY_CNTRL;

END polarity_gates;