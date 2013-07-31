-- clkdiv.vhd
-- Description: Clock divider by DIVRATIO (a parameter).
-- Author: Thientu Ho at FPGAcore.com
-- Date: 2/28/2010

library IEEE;
use IEEE.std_logic_1164.all;

entity clock_divider is
    generic (DIVIDER_RATIO : integer := 4);  	-- ratio by which to divide the clk: clkout = clk/DIVRATIO. Conditions: DIVRATIO > 1.
												-- if DIVRATIO is an even number, then clkout is 50% duty cycle.
												-- if odd, clkout is greater than 50% duty cycle
    port (
        clk    	 : in std_logic;         -- input clock
        reset_n  : in std_logic;         -- active-low asynchronous global reset
        --
        clk_out  : out std_logic         -- output clock
    );
end entity clock_divider;

architecture behavioral of clock_divider is
signal clk_out_i : std_logic;        -- internal clkout signal (can't use clkout directly because sometimes
                                    -- you need to read present value of clkout, and it's illegal to read
                                    -- an output port), to be buffered out to clkout port
begin
    
    -- this process implement clock divider by counter:
    -- The counter counts from 0 to DIVRATIO-1. At midpoint and end point, clkout is toggled.
    -- For example, if DIVRATIO = 4:
    -- clkout is toggled at count=1 and count=3, creating a 50% duty cycle clock, whose period equals 4 times
    -- the input clock period.
    clkdiv_proc : process (clk, reset_n)
    variable count : integer range 0 to DIVIDER_RATIO - 1;
	
    begin
        if reset_n='0' then          -- initialize power up reset conditions
            clk_out_i <= '0';
            count := 0;
        elsif rising_edge(clk) then
            if count = DIVIDER_RATIO / 2 - 1 then      -- toggle at half period
                clk_out_i <= not clk_out_i;
                count := count + 1;
            elsif count=DIVIDER_RATIO - 1 then     -- toggle at end 
                clk_out_i <= not clk_out_i;
                count := 0;                 -- reached end of clock period. reset count
            else
                count := count + 1;
            end if;
        end if;
    end process;

    clk_out <= clk_out_i;     -- buffer to output port
end behavioral;