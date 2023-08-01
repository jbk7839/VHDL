-- MUX (Concurrent signal assignment statement)
-- (when ~ else)
library ieee;
use ieee.std_logic_1164.all;

entity MUX2 is
	port(I3, I2, I1, I0 : in std_logic;
	     S1, S0         : in std_logic;
	     Y              : out std_logic);
end entity;

architecture my_MUX2 of MUX2 is
	signal sel: std_logic_vector(1 downto 0);
begin
	sel <= S1&S0;
        Y <= I0 when sel="00" else
      	     I1 when sel="01" else
	     I2 when sel="10" else
             I3 when sel="11" else
	     '0';
end architecture;
