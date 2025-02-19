##################################################
#  Modelsim do file to run simuilation
#  MS 7/2015
##################################################

vlib work 
vmap work work

# Include Netlist and Testbench
vlog +acc -incr ../../rtl/TOP/TOP.v 
vlog +acc -incr ../../rtl/Shift_Buffer/Shift_Buffer.v 
vlog +acc -incr ../../rtl/SPI_pkt/SPI_pkt.v 
vlog +acc -incr ../../rtl/Pkt_reg/Pkt_reg.v 
vlog +acc -incr ../../rtl/SPI/SPI_slave.v
vlog +acc -incr TOP_tb.v 

# Run Simulator 
vsim +acc -t ps -lib work TOP_tb 
do waveformat.do   
run -all
