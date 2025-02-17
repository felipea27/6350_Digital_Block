##################################################
#  Modelsim do file to run simuilation
#  MS 7/2015
##################################################

vlib work 
vmap work work

# Include Netlist and Testbench
vlog +acc -incr ../../rtl/Shift_Buffer/Shift_Buffer.v 
vlog +acc -incr Shift_Buffer_tb.v 

# Run Simulator 
vsim +acc -t ps -lib work Shift_Buffer_tb 
do waveformat.do   
run -all
