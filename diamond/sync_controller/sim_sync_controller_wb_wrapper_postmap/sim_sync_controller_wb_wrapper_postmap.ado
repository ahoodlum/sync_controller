setenv SIM_WORKING_FOLDER .
set newDesign 0
if {![file exists "C:/lscc/diamond/2.0/examples/sync_controller/sim_sync_controller_wb_wrapper_postmap/sim_sync_controller_wb_wrapper_postmap.adf"]} { 
	design create sim_sync_controller_wb_wrapper_postmap "C:/lscc/diamond/2.0/examples/sync_controller"
  set newDesign 1
}
design open "C:/lscc/diamond/2.0/examples/sync_controller/sim_sync_controller_wb_wrapper_postmap"
cd "C:/lscc/diamond/2.0/examples/sync_controller"
designverincludedir -clear
designverincludedir "C:/lscc/diamond/2.0/examples/sync_controller" "C:/lscc/diamond/2.0/examples/sync_controller/soc" "C:/lscc/diamond/2.0/examples/sw/uart_test" 
designverlibrarysim -PL -clear
designverlibrarysim -L -clear
designverlibrarysim -PL pmi_work
designverlibrarysim ovi_machxo2
designverdefinemacro -clear
if {$newDesign == 0} { 
  removefile -Y -D *
}
addfile "C:/lscc/diamond/2.0/examples/sync_controller/sync_controller_sync_controller_mapvho.vho"
addfile "C:/my_designs/sync_controller/sync_controller_rtl/src/TestBench/sync_controller_wb_wrapper_TB.vhd"
addfile -sdf "C:/lscc/diamond/2.0/examples/sync_controller/sync_controller_sync_controller_mapvho.sdf"
	vlib "C:/lscc/diamond/2.0/examples/sync_controller/sim_sync_controller_wb_wrapper_postmap/work"
set worklib work
adel -all
vcom -dbg "C:/lscc/diamond/2.0/examples/sync_controller/sync_controller_sync_controller_mapvho.vho"
vcom -dbg "C:/my_designs/sync_controller/sync_controller_rtl/src/TestBench/sync_controller_wb_wrapper_TB.vhd"
entity TESTBENCH_FOR_sync_controller_wb_wrapper
designsdffile "C:/lscc/diamond/2.0/examples/sync_controller/sync_controller_sync_controller_mapvho.sdf" /TESTBENCH_FOR_sync_controller_wb_wrapper/UUT -sdfmax -load yes
vsim +access +r TESTBENCH_FOR_sync_controller_wb_wrapper -sdfmax /TESTBENCH_FOR_sync_controller_wb_wrapper/UUT="C:/lscc/diamond/2.0/examples/sync_controller/sync_controller_sync_controller_mapvho.sdf"  -PL pmi_work -L ovi_machxo2
