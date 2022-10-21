library ieee;
Use ieee.std_logic_1164.all;
Use STD.TEXTIO.all;
Use ieee.numeric_std.all;

entity TBOddParity is
Generic ( N : natural := 7 );
End Entity TBOddParity;


Architecture tb of TBOddParity is
	signal tb_X : std_logic_vector(N-1 downto 0);
--	signal tb_IdOdd : std_logic;
	Constant PREPTIME : TIME := 40ps;
	Constant MEASTIME : TIME := 200ps;
begin
	DUT: entity work.OddParity(tree) port map (x => tb_X);
	Process(tb_x)
	begin
		for i in tb_x'left downto tb_x'right + 1 loop
			tb_x <= "X";
		end loop;
		wait for PREPTIME;
		tb_x <= (others => '0');
		wait for MEASTIME;
	end Process;

end architecture;
