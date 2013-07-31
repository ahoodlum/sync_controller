lappend auto_path "C:/lscc/diamond/2.1_x64/data/script"
package require simulation_generation
set ::bali::simulation::Para(PROJECT) {sim_triggered_counter_postmap}
set ::bali::simulation::Para(PROJECTPATH) {C:/lscc/diamond/2.0/examples/sync_controller}
set ::bali::simulation::Para(FILELIST) {"C:/lscc/diamond/2.0/examples/sync_controller/sync_controller_sync_controller_mapvho.vho" "C:/my_designs/sync_controller/sync_controller_rtl/src/TestBench/sio_TB.vhd" }
set ::bali::simulation::Para(GLBINCLIST) {"C:/lscc/diamond/2.0/examples/sync_controller" "C:/lscc/diamond/2.0/examples/sync_controller/soc" "C:/lscc/diamond/2.0/examples/sw/uart_test"}
set ::bali::simulation::Para(INCLIST) {"none" "none" "none"}
set ::bali::simulation::Para(WORKLIBLIST) {"" "" "" }
set ::bali::simulation::Para(COMPLIST) {"VHDL" "none" "none" }
set ::bali::simulation::Para(SIMLIBLIST) {pmi_work ovi_machxo2}
set ::bali::simulation::Para(MACROLIST) {}
set ::bali::simulation::Para(SIMULATIONTOPMODULE) {TESTBENCH_FOR_sio}
set ::bali::simulation::Para(SIMULATIONINSTANCE) {/UUT}
set ::bali::simulation::Para(LANGUAGE) {VHDL}
set ::bali::simulation::Para(SDFPATH)  {C:/lscc/diamond/2.0/examples/sync_controller/sync_controller_sync_controller_mapvho.sdf}
set ::bali::simulation::Para(ADDTOPLEVELSIGNALSTOWAVEFORM)  {1}
set ::bali::simulation::Para(RUNSIMULATION)  {0}
set ::bali::simulation::Para(POJO2LIBREFRESH)    {}
set ::bali::simulation::Para(POJO2MODELSIMLIB)   {}
::bali::simulation::ActiveHDL_Run
