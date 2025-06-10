##################################################
#  Modelsim do file to run simuilation
#  MS 7/2015
##################################################

vlib work 
vmap work work

# include netlist and testbench files
vlog +acc -incr /courses/ee6321/share/ibm13rflpvt/verilog/ibm13rflpvt.v
vlog +acc -incr ../../innovus/lfsr1/lfsr1.nophy.v 
vlog +acc -incr tb_lfsr1.v 

# run simulation 
vsim -t ps -lib work testbench 
do waveformat.do   
run -all
