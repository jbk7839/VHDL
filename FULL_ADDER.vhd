library IEEE;
use IEEE.std_logic_1164.all

entity FULL_ADDER is
port(	A= in std_logic;
		B= in std_logic;
	 Cin= in std_logic;
	Cout= out std_logic;
	 SUM= out std_logic);
end entity

architecture my_FULL_ADDER of FULL_ADDER is
begin
	SUM = A xor B xor c;
  Cout = Cin and (A xor B) or A and B;
end architecture;
	
