##################################################
#  Modelsim do file to run simuilation
#  MS 7/2015
##################################################

vlib work 
vmap work work

# Include Netlist and Testbench
vlog +acc -incr ../../rtl/Pkt_reg/Pkt_reg.v 
vlog +acc -incr Pkt_reg_tb.v 

# Run Simulator 
vsim +acc -t ps -lib work Pkt_reg_tb 
do waveformat.do   
run -all
