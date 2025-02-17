##################################################
#  Modelsim do file to run simuilation
#  MS 7/2015
##################################################

vlib work 
vmap work work

# Include Netlist and Testbench
vlog +acc -incr ../../rtl/Sync_SPI/Sync_SPI.v 
vlog +acc -incr Sync_SPI_tb.v 

# Run Simulator 
vsim +acc -t ps -lib work Sync_SPI_tb 
do waveformat.do   
run -all
