##################################################
#  Modelsim do file to run simuilation
#  MS 7/2015
##################################################

vlib work 
vmap work work

# Include Netlist and Testbench
vlog +acc -incr ../../rtl/SH_SYNC/SH_SYNC.v 
vlog +acc -incr SH_SYNC_tb.v 

# Run Simulator 
vsim +acc -t ps -lib work SH_SYNC_tb 
do waveformat.do   
run -all
