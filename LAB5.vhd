library ieee;
use ieee.std_logic_1164.all;

entity LAB5 is
	port( 
		X,Y,Z:			 in  std_logic;
		F1, F2, F3, F4: out std_logic);
	end entity;
	
architecture my LAB5 of LAB5 is
	signal m0, m1, m2, m3, m4, m5, m6, m7: std_logic;
begin
	m0 <= not X and not y and not Z;
	m1 <= not X and not y and 		Z;
	m2 <= not X and 	  y and not Z;
	m3 <= not X and 	  y and 	   Z;
	m4 <= 	 X and not y and not Z;
	m1 <= 	 X and not y and 		Z;
	m2 <= 	 X and 	  y and not Z;
	m3 <= 	 X and 	  y and 	   Z;
	
end architecture;
