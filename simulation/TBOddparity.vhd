library ieee;
Use ieee.std_logic_1164.all;
Use STD.TEXTIO.all;
Use ieee.numeric_std.all;

entity TBOddParity is
Generic ( N : natural := 7 );
End Entity TBOddParity;

type TestVectorOP is
record 
	input : std_logic_vector (N-1 downto 0);
	output : std_logic;
end record;

type TestDataTable is array (5 downto 0) of TestVectorOP;
--array of record 
constant Table1 : interge 
input = std_logic_vector(to_unsigned(Table1, N));

Architecture tb of TBOddParity is
	signal tb_x : std_logic_vector(N-1 downto 0);
	signal tb_IsOdd : std_logic;
	Constant PREPTIME : TIME := 40 ps;
	Constant MEASTIME : TIME := 200 ps;
begin
	DUT: entity work.OddParity(tree) port map (X => tb_x(N-1 downto 0), IsOdd => tb_IsOdd);
	Process
	begin 
		tb_x <= (others => 'X'); 
		wait for PREPTIME;
		tb_x <= (others => '0');
		wait for MEASTIME;
	end Process;

end architecture;
