-- 2to4 decoder (concurrent signal assignment statement)

library ieee;
use ieee.std_logic_1164.all;

entity de1 is
	port(  A, B 	        : in std_logic;
	       D0, D1, D2, D3 : out std_logic);
end entity;

architecture my_de1 of de1 is
begin
	D0 <= not A and not B;
	D1 <= not A and     B;
	D2 <= 	  A and not B;
	D3 <=     A and     B;
end architecture;
