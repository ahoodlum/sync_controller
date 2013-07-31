Library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library lattice;
use lattice.components.all;

library machxo2;
use machxo2.all;

entity sync_controller_top is
	port (
		uart_sin	: in std_logic;
		uart_sout	: out std_logic;
		
		led_pio_out	: out std_logic_vector(3 DOWNTO 0);
		led_wb_out	: out std_logic_vector(3 DOWNTO 0);
	
		rst			: in std_logic;
	
		sync_in		: in std_logic;
		sync_out	: out std_logic
	);
end sync_controller_top;

architecture behavioral of sync_controller_top is

component clock_divider is
	generic (DIVIDER_RATIO : integer := 4);  	-- ratio by which to divide the clk: clkout = clk/DIVRATIO. Conditions: DIVRATIO > 1.
												-- if DIVRATIO is an even number, then clkout is 50% duty cycle.
												-- if odd, clkout is greater than 50% duty cycle
    port (
        clk    	 : in std_logic;         -- input clock
        reset_n  : in std_logic;         -- active-low asynchronous global reset
        clk_out  : out std_logic         -- output clock
    );
end component;

	component OSCH
	-- synthesis translate_off
    	GENERIC  (NOM_FREQ: string := "66.50");
	-- synthesis translate_on
      PORT ( 
			stdby 		:IN std_logic;
			osc			:OUT std_logic;
			sedstdby	:OUT std_logic
		);
	end component;
	attribute syn_noprune: boolean ;
	attribute syn_noprune of OSCH: component is true;
	attribute NOM_FREQ	: string;
	attribute NOM_FREQ of OSCInst0 : label is "66.50";

	component sync_controller
	port(
      clk_i   : in std_logic
      ; reset_n : in std_logic
      ; LEDPIO_OUT : out std_logic_vector(3 downto 0)
      ; uartSIN : in std_logic
      ; uartSOUT : out std_logic
      ; slave_passthruclk : out std_logic
      ; slave_passthrurst : out std_logic
      ; slave_passthruslv_adr : out std_logic_vector(31 downto 0)
      ; slave_passthruslv_master_data : out std_logic_vector(7 downto 0)
      ; slave_passthruslv_slave_data : in std_logic_vector(7 downto 0)
      ; slave_passthruslv_strb : out std_logic
      ; slave_passthruslv_cyc : out std_logic
      ; slave_passthruslv_ack : in std_logic
      ; slave_passthruslv_err : in std_logic
      ; slave_passthruslv_rty : in std_logic
      ; slave_passthruslv_sel : out std_logic_vector(3 downto 0)
      ; slave_passthruslv_we : out std_logic
      ; slave_passthruslv_bte : out std_logic_vector(1 downto 0)
      ; slave_passthruslv_cti : out std_logic_vector(2 downto 0)
      ; slave_passthruslv_lock : out std_logic
      ; slave_passthruintr_active_high : in std_logic
      );
	end component;
	
	component sync_controller_wb_wrapper
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
	end component;

	signal 	clk_i			: std_logic;
	signal 	ff_clr_i 		: std_logic;
	signal	clk_out_div512	: std_logic;
	signal	rst_n			: std_logic;

	-- WB SYNC_CONTROLLER SIGNALS --
	signal wb_ack_o			: std_logic;
	signal wb_clk_i			: std_logic;
	signal wb_dat_i			: std_logic_vector(7 DOWNTO 0);
	signal wb_dat_o			: std_logic_vector(7 DOWNTO 0);
	signal wb_rst_i			: std_logic;
	signal wb_stb_i			: std_logic;
	signal wb_we_i			: std_logic;

begin

	rst_n <= not rst;

	--ff1 : dff_async_rst
	--port map (
		--clk => sync_in,
		--reset => ff_clr_i, 
		--data => '1',
		--q => sync_out
	--);
	
	--counter1 : one_shot_counter
	--port map  (
		--clk => clk_out_div512,
		--ce => sync_in,
		--reset_start => "1010100100100000", --43296
		--reset_stop => "1010100100100100",
		--rst_out => ff_clr_i
	--);
		
	OSCInst0: OSCH
	--	 synthesis translate_off
	GENERIC MAP ( NOM_FREQ  => "66.50" )
	--	 synthesis translate_on
	PORT MAP ( 
			stdby		=>  '0',
			osc			=>  clk_i,
			sedstdby	=>  open
	);
	
	clk_div: clock_divider 
	generic map ( DIVIDER_RATIO => 512)
	port map ( 
		clk => clk_i,
		reset_n => rst_n,
		clk_out => clk_out_div512 );
		
	--lm8_inst : sync_controller
	--port map (
	   --clk_i  => clk_i
	   --,reset_n  => '1'
	   --,LEDPIO_OUT  => led_pio_out
	   --,uartSIN  => uart_sin
	   --,uartSOUT  => uart_sout
	   --);
	lm8_inst : sync_controller
	port map (
	   clk_i  => clk_i
	   ,reset_n  => '1'
	   ,LEDPIO_OUT  => led_pio_out
	   ,uartSIN  => uart_sin
	   ,uartSOUT  => uart_sout
	   ,slave_passthruclk  => wb_clk_i
	   ,slave_passthrurst  => wb_rst_i
	   ,slave_passthruslv_adr  => open
	   ,slave_passthruslv_master_data  => wb_dat_i
	   ,slave_passthruslv_slave_data  => wb_dat_o
	   ,slave_passthruslv_strb  => wb_stb_i
	   ,slave_passthruslv_cyc  => open
	   ,slave_passthruslv_ack  => wb_ack_o
	   ,slave_passthruslv_err  => open
	   ,slave_passthruslv_rty  => open
	   ,slave_passthruslv_sel  => open
	   ,slave_passthruslv_we  => wb_we_i
	   ,slave_passthruslv_bte  => open
	   ,slave_passthruslv_cti  => open
	   ,slave_passthruslv_lock  => open
	   ,slave_passthruintr_active_high  => open
	   );
	   
	 wb_sync_wrapper : sync_controller_wb_wrapper
	   port map (
	   sync_in => sync_in,
	   clk_counter => clk_out_div512,
	   sync_out => sync_out,
	   
	   ack_o => wb_ack_o,
	   clk_i => wb_clk_i,
	   dat_i => wb_dat_i,
	   dat_o => wb_dat_o,
	   rst_i => wb_rst_i,
	   stb_i => wb_stb_i,
	   we_i => wb_we_i,
	   prt_o => led_wb_out
	   );
	
end behavioral;