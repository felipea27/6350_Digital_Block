##################################################
#  Modelsim do file to run simuilation
#  MS 7/2015
##################################################

vlib work 
vmap work work

# Include Netlist and Testbench
vlog +acc -incr ../../rtl/Dual_Buf/Dual_Buf.v 
vlog +acc -incr ../../rtl/fsm_sync/fsm_sync.v 
vlog +acc -incr ../../rtl/Shift_Buffer/Shift_Buffer.v 
vlog +acc -incr Dual_Buf_tb.v 

# Run Simulator 
vsim +acc -t ps -lib work Dual_Buf_tb 
do waveformat.do   
run -all
