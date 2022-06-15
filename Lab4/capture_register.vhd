library IEEE; 
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

Entity capture_register is port 
	(
		CLK    :  in std_logic := '0';
		RESET  :  in std_logic := '0';
		CAPTURE :  in std_logic := '0';
		LOCATION :  in std_logic_vector(3 downto 0);
		OUTPUT :  out std_logic_vector(3 downto 0)
	);
end Entity;

ARCHITECTURE one OF capture_register IS 

Signal sreg   : std_logic_vector(3 downto 0);


BEGIN 

process (CLK, RESET) is

begin 
	if (RESET = '1') then 
		sreg <= "0000";
	elsif (rising_edge(CLK) AND (CAPTURE = '1')) then 
		sreg <= LOCATION;
	end if;
	OUTPUT <= sreg;
	
end process;

END one;