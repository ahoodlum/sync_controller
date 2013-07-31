sync_controller
===============

Variable time latch circuit with USB serial interface - Lattice MachXO2 Breakout Board

#### 2013-07-30 ####
Initial implementation synced to GitHub

Everything put into directories under this repo 
(diamond - diamond and MSB files; vhdl - firmware source; software - mico8 C code; documentation - what else) 

Known issues:
  - Sometimes will stop working if valid value is entered
  - Need to not handle LED inversion in the C code but rather in the VHDL (i.e. 255 - rcvdValue)
  
