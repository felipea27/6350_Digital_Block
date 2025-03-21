##################################################
#  Modelsim do file to run simuilation
#  MS 7/2015
##################################################

vlib work 
vmap work work

# Include Netlist and Testbench
vlog +acc -incr ../../rtl/CLK_Counter/CLK_Counter.v 
vlog +acc -incr CLK_Counter_tb.v 

# Run Simulator 
vsim +acc -t ps -lib work CLK_Counter_tb 
do waveformat.do   
run -all
