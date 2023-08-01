-- 2to4 decoder (Selected signal assignment statement)
--(with ~ select ~ when)

library ieee;
use ieee.std_logic_1164.all;

entity de3 is
	port(  A, B 	        : in std_logic;
	       D0, D1, D2, D3 : out std_logic);
end entity;

architecture my_de3 of de3 is
	signal sel: std_logic_vector(1 downto 0);
begin
	sel <= A&B;
	with sel select
	D0 <= '1' when "00", '0' when others;
	with sel select
	D1 <= '1' when "01", '0' when others;
	with sel select
	D2 <= '1' when "10", '0' when others;
	with sel select
	D3 <= '1' when "11", '0' when others;
end architecture;
