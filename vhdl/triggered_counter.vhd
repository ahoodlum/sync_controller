library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity sio is
	port (
		reset 		: in std_logic;
		clk   		: in std_logic;
		latch_time	: in std_logic_vector(15 DOWNTO 0);
		signal_in 	: in std_logic;
		signal_out 	: out std_logic
	);
end entity;

architecture sio_arch of sio is
  --signal delay_so : integer := to_integer(unsigned(latch_time));
  signal latch : std_logic;
  signal signal_in_delayed : std_logic;
  signal reset_delay_cntr : std_logic;
  signal delay_cntr : std_logic_vector(31 downto 0)	:= (others => '0');
  signal signal_in_pulse : std_logic;
  signal signal_in_pulse2 : std_logic;
  
begin

signal_out <= signal_in_pulse or signal_in_pulse2 or latch;
--signal_out <= '1';

signal_in_pulse <= signal_in and not(signal_in_delayed);


process(clk)
begin
  if (reset = '1') then
    delay_cntr <= (others => '0');
    latch <= '0';
    reset_delay_cntr <= '0';
    signal_in_pulse2 <= '0';
    signal_in_delayed <= '0';
  elsif rising_edge(clk) then
    if signal_in = '1' then 
      latch <= '1';
	  reset_delay_cntr <= '0';
	  signal_in_pulse2 <= '0';
      signal_in_delayed <= '0';
    end if;  
    if reset_delay_cntr = '1' then
      delay_cntr <= (others => '0');
      latch <= '0'; 
    elsif latch = '1' then
      delay_cntr <= delay_cntr + '1';
    end if;
	
    signal_in_delayed <= signal_in;
    signal_in_pulse2 <= signal_in_pulse; 
    
if (delay_cntr = latch_time) then
    reset_delay_cntr  <= '1';
  elsif signal_in_pulse = '1' then
    reset_delay_cntr  <= '0';     
  end if;

 end if;
  end process;

end sio_arch;