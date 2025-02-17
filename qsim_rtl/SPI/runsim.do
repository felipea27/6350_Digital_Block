##################################################
#  Modelsim do file to run simuilation
#  MS 7/2015
##################################################

vlib work 
vmap work work

# Include Netlist and Testbench
vlog +acc -incr ../../rtl/SPI/SPI_master.v 
vlog +acc -incr ../../rtl/SPI/SPI_slave.v 
vlog +acc -incr ../../rtl/SPI/APB_interface.v 
vlog +acc -incr SPI_testmodul_3.v 

# Run Simulator 
vsim +acc -t ps -lib work SPI_testmodul_3 
do waveformat.do   
run -all
