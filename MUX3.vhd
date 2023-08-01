-- MUX (Selected signal assignment statement)
-- (with ~ select ~ when)
library ieee;
use ieee.std_logic_1164.all;

entity MUX3 is
	port(I3, I2, I1, I0 : in  std_logic;
              S1, S0         : in  std_logic;
	      Y              : out std_logic);
end entity;

architecture my_MUX3 of MUX3 is
	signal sel : std_logic_vector(1 downto 0);
begin
	sel <= S1&S0;
with sel select
	Y <= I0 when "00",
	     I1 when "01",
	     I2 when "10",
	     I3 when "11",
	     '0' when others;
end architecture;
