##################################################
#  Modelsim do file to run simuilation
#  MS 7/2015
##################################################

vlib work 
vmap work work

# include standard cell verilog model
vlog +acc -incr /courses/ee6350/pdk2025/tcbn65gplus/TSMCHOME/digital/Front_End/verilog/tcbn65gplus_140b/tcbn65gplus_pwr.v

# include the testbench file
vlog +acc -incr tb_dut.v 

# include verilog modules
vlog +acc -incr ../../innovus/dut/dut.PG.v 
vlog +acc -incr ../../innovus/down_counter/down_counter.PG.v 
vlog +acc -incr ../../innovus/sram_controller/sram_controller.PG.v 
vlog +acc -incr ../../innovus/sram_wrapper/sram_wrapper.PG.v 
vlog +acc -incr +define+POWER_PINS ../../memory_compiler/sram00/sram00.v 

# run simulation with sdf annotations and check waveforms 
# here we suppress some timing checks in dut level sdf

vsim -voptargs=+acc -t ps -lib work \
-suppress 12088,12090,3262 \
-sdfmax testbench/dut_inst=../../innovus/dut/dut.verilog.sdf \
-sdfmax testbench/dut_inst/down_counter_inst=../../innovus/down_counter/down_counter.verilog.sdf \
-sdfmax testbench/dut_inst/sram_controller_inst=../../innovus/sram_controller/sram_controller.verilog.sdf \
-sdfmax testbench/dut_inst/sram_wrapper_inst=../../innovus/sram_wrapper/sram_wrapper.verilog.sdf \
testbench

do waveformat.do   
run -all
