
#Begin clock constraint
define_clock -name {sync_controller_wb_wrapper|CLK_I} {p:sync_controller_wb_wrapper|CLK_I} -period 10000000.000 -clockgroup Autoconstr_clkgroup_0 -rise 0.000 -fall 5000000.000 -route 0.000 
#End clock constraint

#Begin clock constraint
define_clock -name {sync_controller_wb_wrapper|clk_counter} {p:sync_controller_wb_wrapper|clk_counter} -period 5.355 -clockgroup Autoconstr_clkgroup_1 -rise 0.000 -fall 2.678 -route 0.000 
#End clock constraint

#Begin clock constraint
define_clock -name {sync_controller_wb_wrapper|sync_in} {p:sync_controller_wb_wrapper|sync_in} -period 2.828 -clockgroup Autoconstr_clkgroup_2 -rise 0.000 -fall 1.414 -route 0.000 
#End clock constraint
