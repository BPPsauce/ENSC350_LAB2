library ieee;
use ieee.std_logic_1164.all;

Entity XORgate is
	port (
		input_1 : in std_logic;
		input_2 : in std_logic;
		result  : out std_logic
		);
end XORgate;

architecture XORgate of XORgate is 
begin

	process (input_1, input_2)
	begin
		if (input_1 = '1' and input_2 = '0') or (input_1 = '0' and input_2  = '1') then
			result <= '1';
		else 
			result <= '0';
		end if;
end process;
end XORgate; 