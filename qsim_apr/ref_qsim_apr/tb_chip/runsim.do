##################################################
#  Modelsim do file to run simuilation
#  MS 7/2015
##################################################

vlib work 
vmap work work

# include standard cell verilog model
vlog +acc -incr /courses/ee6350/pdk2025/tcbn65gplus/TSMCHOME/digital/Front_End/verilog/tcbn65gplus_140b/tcbn65gplus_pwr.v
vlog +acc -incr ./verilog/tpfn65gpgv2od3_pwr.v

# include the testbench file
vlog +acc -incr tb_chip.v 

# include verilog modules
vlog +acc -incr ../../innovus/chip/chip.apr.v
    vlog +acc -incr ../../innovus/top/top.PG.v 
        vlog +acc -incr ../../innovus/scan_chain/scan_chain.PG.v
        vlog +acc -incr ../../innovus/test_clkgen/test_clkgen.PG.v
        vlog +acc -incr ../../innovus/dut/dut.PG.v 
            vlog +acc -incr ../../innovus/down_counter/down_counter.PG.v 
            vlog +acc -incr ../../innovus/sram_controller/sram_controller.PG.v 
            vlog +acc -incr ../../innovus/sram_wrapper/sram_wrapper.PG.v 
            vlog +acc -incr +define+POWER_PINS ../../memory_compiler/sram00/sram00.v 

# run simulation with sdf annotations and check waveforms 
# here we suppress some timing checks in dut level sdf

vsim -voptargs=+acc -t ps -lib work \
-suppress 12088,12090,3262 \
-sdfmax testbench/chip_inst=../../innovus/chip/chip.verilog.sdf \
-sdfmax testbench/chip_inst/top_inst=../../innovus/top/top.verilog.sdf \
-sdfmax testbench/chip_inst/top_inst/scan_chain_inst=../../innovus/scan_chain/scan_chain.verilog.sdf \
-sdfmax testbench/chip_inst/top_inst/test_clkgen_inst=../../innovus/test_clkgen/test_clkgen.verilog.sdf \
-sdfmax testbench/chip_inst/top_inst/dut_inst=../../innovus/dut/dut.verilog.sdf \
-sdfmax testbench/chip_inst/top_inst/dut_inst/down_counter_inst=../../innovus/down_counter/down_counter.verilog.sdf \
-sdfmax testbench/chip_inst/top_inst/dut_inst/sram_controller_inst=../../innovus/sram_controller/sram_controller.verilog.sdf \
-sdfmax testbench/chip_inst/top_inst/dut_inst/sram_wrapper_inst=../../innovus/sram_wrapper/sram_wrapper.verilog.sdf \
testbench

do waveformat.do   
run -all
