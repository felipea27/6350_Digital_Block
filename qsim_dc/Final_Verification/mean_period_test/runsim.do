##################################################
#  Modelsim do file to run simuilation
#  MS 7/2015
##################################################

vlib work
vmap work work

# include netlist and testbench files
vlog +acc -incr ../../../rtl/SPI3/APB_interface.v
vlog +acc -incr ../../../rtl/SPI3/SPI_master.v
vlog +acc -incr ../../../rtl/SPI3/SPI_slave.v
vlog +acc -incr ../../../rtl/SPI3/SPI_testmodul2.v
vlog +acc -incr ../../../rtl/TOP/TOP3.v
vlog +acc -incr ../../../rtl/fsm_sync/fsm_sync.v
vlog +acc -incr ../../../rtl/Pkt_reg/Pkt_reg.v
vlog +acc -incr ../../../rtl/Shift_Buffer/Shift_Buffer.v
vlog +acc -incr ../../../rtl/TX_Buffer/TX_Buffer.v
vlog +acc -incr ../../../rtl/SH_SYNC/SH_SYNC.v


vlog +acc -incr APB_interface_testbench.v

# run simulation
vsim +acc -t ps -lib work testbench 
do waveformat.do
run -all
exec rm -f vsim.wlf
quit -f

