##################################################
#  Modelsim do file to run simuilation
#  MS 7/2015
##################################################

vlib work 
vmap work work

# include netlist and testbench files
vlog +acc -incr ../../rtl/SPI/APB_interface.v
vlog +acc -incr ../../rtl/SPI/SPI_master.v
vlog +acc -incr ../../rtl/SPI/SPI_slave.v
vlog +acc -incr ../../rtl/SPI/SPI_testmodul2.v


vlog +acc -incr APB_interface_testbench.v

# run simulation 
vsim +acc -t ps -lib work testbench
do waveformat.do   
run -all
