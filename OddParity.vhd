library ieee;
Use ieee.std_logic_1164.all;
Use STD.TEXTIO.all;
Use ieee.numeric_std.all;

Entity OddParity is
Generic ( N : natural := 7 );
Port ( X : in std_logic_vector( N-1 downto 0 );
IsOdd : out std_logic );
End Entity OddParity;

-- chain structure
architecture chain of OddParity is

component XORgate
	port(input_1, input_2: in std_logic ; result : out std_logic);
end component;

signal c : std_logic_vector (N-1 downto 0);

begin
	c(0) <= X(0);
	IsOdd <= c(N-1);

chainGen: for I in 0 to N-2 generate 
	gate: XORgate 
	port map(input_1 => c(I), input_2 => X(I+1), result => c(I+1));
	end generate chainGen;

End chain;

--tree structure			
architecture tree of OddParity is
	signal entityUp, entityLow : std_logic;
	
begin

Recur : if (N > 1) generate 
	upperEn : entity work.OddParity(tree) generic map ( (N+1) / 2 )
		port map (X (N-1 downto N/2 ), entityUp);
	
	lowerEn : entity work.OddParity(tree) generic map ( N/2 )
		port map ( X ( N/2-1 downto 0 ), entityLow);
	IsOdd <= entityUp XNOR entitylow;
end generate Recur;

stopRecur : if N = 1 generate 
	IsOdd <=  X(0);
end generate stopRecur;


end Architecture tree;
							 

