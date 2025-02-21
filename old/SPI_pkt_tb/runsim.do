##################################################
#  Modelsim do file to run simuilation
#  MS 7/2015
##################################################

vlib work 
vmap work work

# Include Netlist and Testbench
vlog +acc -incr ../../rtl/SPI_pkt/SPI_pkt.v 
vlog +acc -incr SPI_pkt_tb.v 

# Run Simulator 
vsim +acc -t ps -lib work SPI_pkt_tb 
do waveformat.do   
run -all
