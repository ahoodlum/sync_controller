library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
entity sync_controller_vhd is
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
end sync_controller_vhd;

architecture sync_controller_vhd_a of sync_controller_vhd is

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

begin

lm8_inst : sync_controller
port map (
   clk_i  => clk_i
   ,reset_n  => reset_n
   ,LEDPIO_OUT  => LEDPIO_OUT
   ,uartSIN  => uartSIN
   ,uartSOUT  => uartSOUT
   ,slave_passthruclk  => slave_passthruclk
   ,slave_passthrurst  => slave_passthrurst
   ,slave_passthruslv_adr  => slave_passthruslv_adr
   ,slave_passthruslv_master_data  => slave_passthruslv_master_data
   ,slave_passthruslv_slave_data  => slave_passthruslv_slave_data
   ,slave_passthruslv_strb  => slave_passthruslv_strb
   ,slave_passthruslv_cyc  => slave_passthruslv_cyc
   ,slave_passthruslv_ack  => slave_passthruslv_ack
   ,slave_passthruslv_err  => slave_passthruslv_err
   ,slave_passthruslv_rty  => slave_passthruslv_rty
   ,slave_passthruslv_sel  => slave_passthruslv_sel
   ,slave_passthruslv_we  => slave_passthruslv_we
   ,slave_passthruslv_bte  => slave_passthruslv_bte
   ,slave_passthruslv_cti  => slave_passthruslv_cti
   ,slave_passthruslv_lock  => slave_passthruslv_lock
   ,slave_passthruintr_active_high  => slave_passthruintr_active_high
   );

end sync_controller_vhd_a;

