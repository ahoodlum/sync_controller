library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity sync_controller_wb_wrapper is
	port (
		-- SYNC_CONTROLLER SIGNALS
		sync_in		: in std_logic;
		clk_counter : in std_logic;
		sync_out	: out std_logic;
		
		-- WISHBONE INTERFACE SIGNALS
		ACK_O: out std_logic;
		CLK_I: in std_logic;
		DAT_I: in std_logic_vector( 7 downto 0 );
		DAT_O: out std_logic_vector( 7 downto 0 );
		RST_I: in std_logic;
		STB_I: in std_logic;
		WE_I: in std_logic; 
		
		-- Output port (non-WISHBONE signals):
		PRT_O: out std_logic_vector( 3 downto 0 )
		);
end sync_controller_wb_wrapper;

architecture behavioral of sync_controller_wb_wrapper is

--component dff_async_rst is
	--port ( 
		--clk		: in std_logic;
		--reset	: in std_logic;
		--data	: in std_logic;
		--q		: out std_logic
	--);
--end component;

--component one_shot_counter is
	--port (
		--clk		:	in std_logic;
		--ce		: 	in std_logic;
		--reset_start	: in std_logic_vector(15 DOWNTO 0);
		--reset_stop	: in std_logic_vector(15 DOWNTO 0);
		--rst_out	:	out std_logic
	--);
--end component;

component sio is
	port (
		reset 		: in std_logic;
		clk   		: in std_logic;
		latch_time	: in std_logic_vector(15 DOWNTO 0);
		signal_in 	: in std_logic;
		signal_out 	: out std_logic
	);
end component;

signal 	ff_clr_i 		: std_logic;

signal reg_0_i			: std_logic_vector(7 DOWNTO 0);
signal reg_1_i			: std_logic_vector(7 DOWNTO 0);
signal reg_2_i			: std_logic_vector(7 DOWNTO 0);
signal reg_3_i			: std_logic_vector(7 DOWNTO 0);
signal reg_4_i			: std_logic_vector(7 DOWNTO 0);
signal reg_5_i			: std_logic_vector(7 DOWNTO 0);
signal reg_6_i			: std_logic_vector(7 DOWNTO 0);
signal reg_7_i			: std_logic_vector(7 DOWNTO 0);

signal Q				: std_logic_vector(7 DOWNTO 0);

signal latch_time_i		: std_logic_vector(15 DOWNTO 0) := (others => '0');
signal reset_start_i	: std_logic_vector(15 DOWNTO 0);
signal reset_stop_i		: std_logic_vector(15 DOWNTO 0);

begin

	REG: process( CLK_I )
		begin
			if( rising_edge( CLK_I ) ) then
				if( RST_I = '1' ) then
					Q <= B"00000000";
				elsif( (STB_I and WE_I) = '1' ) then
					Q <= DAT_I( 7 downto 0 );
				else
					Q <= Q;
				end if;
			end if;
	end process REG;

	--ff1 : dff_async_rst
	--port map (
		--clk => sync_in,
		--reset => ff_clr_i, 
		--data => '1',
		--q => sync_out
	--);
	
	--counter1 : one_shot_counter
	--port map  (
		--clk => clk_counter,
		--ce => sync_in,
		--reset_start => reset_start_i,
		--reset_stop => reset_stop_i,
		--reset_start => "1010100100100000", --43296
		--reset_stop => "1010100100100100",
		--rst_out => ff_clr_i
	--);
	
	triggered_counter : sio
	port map (
		reset => open,
		clk => clk_counter,
		latch_time => latch_time_i,
		signal_in => sync_in,
		signal_out => sync_out
		);

latch_time_i(13 DOWNTO 10)	<= not Q(7 DOWNTO 4);
--latch_time_i(13) <= Q(0);
--latch_time_i(12) <= Q(1);
--latch_time_i(11) <= Q(2);
--latch_time_i(10) <= Q(3);
--latch_time_i(9) <= Q(4);
--latch_time_i(8) <= Q(5);
--latch_time_i(7) <= Q(6);
--latch_time_i(6) <= Q(7);
--latch_time_i	<= "0000011110000000";
--reset_start_i 	<= "0" & Q & "0000000";
--reset_stop_i	<= "0" & Q & "0000100";

ACK_O <= STB_I;
DAT_O <= Q;
PRT_O <= Q(7 DOWNTO 4);

end behavioral;