##################################################
#  Modelsim do file to run simuilation
#  MS 7/2015
##################################################

vlib work 
vmap work work


#OURS
# include netlist and testbench files
#vlog +acc +neg_tchk -incr /tech/gf/GF_22nm/IP/synopsys/v-logic_gf22nspslogl24edl116f/DesignWare_logic_libs/globalfoundaries22nhsp/24hd116/edl/svt/3.00a/verilog/2.1/gf22nspslogl24edl116f.mv
vlog +acc +neg_tchk -incr /tech/gf/GF_22nm/IP/synopsys/v-logic_gf22nspslogl24edl116f/DesignWare_logic_libs/globalfoundaries22nhsp/24hd116/edl/svt/3.00a/verilog/2.1/gf22nspslogl24edl116f.v
vlog +acc +neg_tchk -incr /tech/gf/GF_22nm/IP/synopsys/v-logic_gf22nspslogl24edl116f/DesignWare_logic_libs/globalfoundaries22nhsp/24hd116/edl/svt/3.00a/verilog/rtl_primitives.v
vlog +acc +neg_tchk -incr /tech/gf/GF_22nm/IP/synopsys/v-logic_gf22nspslogl24edl116f/DesignWare_logic_libs/globalfoundaries22nhsp/24hd116/edl/svt/3.00a/verilog/std_primitives.v
vlog +acc +neg_tchk -incr /tech/gf/GF_22nm/IP/synopsys/v-logic_gf22nspslogl24edl116f/DesignWare_logic_libs/globalfoundaries22nhsp/24hd116/edl/svt/3.00a/verilog/atpg_primitives.v

#REF:
# include the testbench file
# vlog +acc -incr tb_chip.v 

#OURS:
vlog +acc -incr APB_interface_testbench.v


#OURS:
#vlog +acc -incr ../../apr/FINAL_DESIGN/TOP_netlist.v
vlog +acc -incr ../../apr/innovus_rundir9/TOP_netlist_no_pwr.v
vlog +acc -incr ../../rtl/SPI/APB_interface.v
vlog +acc -incr ../../rtl/SPI/SPI_master.v
vlog +acc -incr ../../rtl/SPI/SPI_testmodul2.v

vsim -voptargs=+acc -t ps -lib work \
-sdfmax testbench/top_slave=../../apr/innovus_rundir9/TOP_par.sdf \
testbench 

do waveformat.do   
run -all
