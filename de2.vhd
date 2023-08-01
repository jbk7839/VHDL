-- 2to4 decoder (Conditional signal assignment statement)
--(with ~ select ~ when)

library ieee;
use ieee.std_logic_1164.all;

entity de2 is
	port(  A, B 	        : in std_logic;
	       D0, D1, D2, D3 : out std_logic);
end entity;

architecture my_de2 of de2 is
	signal sel : std_logic_vector(1 downto 0);
begin
	sel <= A&B;
	D0 <= '1' when sel = "00" else '0';
	D1 <= '1' when sel = "01" else '0';
	D2 <= '1' when sel = "10" else '0';
	D3 <= '1' when sel = "11" else '0';
end architecture;
