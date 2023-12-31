library ieee;
use ieee.std_logic_1164.all;

entity lab6 is
	port(		x,y,z :  in std_logic;
		  f1,f2,f3,f4 : out std_logic );
end lab6;

architecture my_lab6 of lab6 is
	signal sel: std_logic_vector(2 downto 0);

begin
	sel <= x&y&z;
with sel select
	f1 <= '1' when "000" | "001" | "110" | "111"
	f2 <= '1' when "001" | "010" | "011" | "110" | "111"
	f3 <= '1' when "011" | "101" | "110" | "111" 
	f4 <= '1' when "000" | "010" | "011" | "100" | "110"
	      '0' when others;
end architecture;
