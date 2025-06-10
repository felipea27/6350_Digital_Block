##################################################
#  Modelsim do file to run simuilation
#  MS 7/2015
##################################################

vlib work 
vmap work work

# include standard cell verilog model
vlog +acc -incr /courses/ee6350/pdk2025/tcbn65gplus/TSMCHOME/digital/Front_End/verilog/tcbn65gplus_140b/tcbn65gplus_pwr.v

# include the testbench file
vlog +acc -incr tb_down_counter.v

# include verilog modules
vlog +acc -incr ../../innovus/down_counter/down_counter.PG.v 

# run simulation with sdf annotations and check waveforms 

vsim -voptargs=+acc -t ps -lib work \
-sdfmax testbench/down_counter_inst=../../innovus/down_counter/down_counter.verilog.sdf \
testbench

do waveformat.do   
run -all
