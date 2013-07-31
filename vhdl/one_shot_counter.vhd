Library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity one_shot_counter is
	port(
		clk		:	in std_logic;
		ce		:	in std_logic;
		reset_start	: in std_logic_vector(15 DOWNTO 0);
		reset_stop	: in std_logic_vector(15 DOWNTO 0);
		rst_out	:	out std_logic
	);
end one_shot_counter;

architecture behavioral of one_shot_counter is

type state_type is (idle, counting, pulse_re, count_high);
signal state		: state_type := idle;
signal next_state 	: state_type := idle;

signal counter 			: natural := 0;
--constant reset_start	: natural := 20000;
--constant reset_stop		: natural := 20004;

begin

	process(clk, ce)
	begin
		case state is
			when idle => 
				if (rising_edge(ce)) then
					next_state <= counting;
				end if;
			when counting =>
				if (counter = to_integer(unsigned(reset_start))) then
					next_state <= pulse_re;
				end if;
			when pulse_re =>
				next_state <= count_high;
			when count_high => 
				if (counter >= to_integer(unsigned(reset_stop))) then
					next_state <= idle;
				end if;
			when others => 
				next_state <= idle;
		end case;
	end process;
	
	process(clk)
	begin
		if (rising_edge(clk)) then
			state <= next_state;
		end if;
	end process;
	
	process(clk)
	begin
		if (rising_edge(clk)) then
			case state is
				when idle =>
					counter <= 0;
					rst_out <= '0';
				when counting => 
					counter <= counter + 1;
					rst_out <= '0';
				when pulse_re =>
					counter <= counter + 1;
					rst_out <= '1';
				when count_high =>
					counter <= counter + 1;
					rst_out <= '1';
				when others =>
					counter <= 0;
					rst_out <= '0';
			end case;
		end if;
	end process;

end architecture;