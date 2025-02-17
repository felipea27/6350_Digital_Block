##################################################
#  Modelsim do file to run simuilation
#  MS 7/2015
##################################################

vlib work 
vmap work work

# Include Netlist and Testbench
vlog +acc -incr ../../rtl/SR_Latch/SR_Latch.v 
vlog +acc -incr SR_Latch_tb.v 

# Run Simulator 
vsim +acc -t ps -lib work SR_Latch_tb 
do waveformat.do   
run -all
