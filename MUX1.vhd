-- MUX (Concurrent signal assignment statement)
-- Boolean

library ieee;
use ieee.std_logic_1164.all;

entity MUX1 is
	port(I3, I2, I1, I0 : in std_logic;
		  S1, S0          : in std_logic;
		  Y               : out std_logic);
end entity;  

architecture my_MUX1 of MUX1 is
begin
	Y <= (NOT S1 and NOT S0 and I0) or
	     (NOT S1 and     S0 and I1) or
	     (    S1 and NOT S0 and I2) or
	     (    S1 and     S0 and I3);
end architecture;
