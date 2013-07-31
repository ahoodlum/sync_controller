library IEEE;
use IEEE.std_logic_1164.all;

entity dff_async_rst is
	port( 
		clk		: in std_logic;
		reset	: in std_logic;
		data	: in std_logic;
		q		: out std_logic
	);
end dff_async_rst;

architecture behavioral of dff_async_rst is
begin
	process(clk,reset)
	begin
		if (reset = '1') then
			q <= '0';
		elsif (rising_edge(clk)) then
			q <= data;
		end if;
	end process;
end behavioral;