##################################################
#  Modelsim do file to run simuilation
#  MS 7/2015
##################################################

vlib work 
vmap work work

# Include Netlist and Testbench
vlog +acc +neg_tchk -incr /tech/gf/GF_22nm/IP/synopsys/v-logic_gf22nspslogl24edl116f/DesignWare_logic_libs/globalfoundaries22nhsp/24hd116/edl/svt/3.00a/verilog/3.0/gf22nspslogl24edl116f.v
vlog +acc +neg_tchk -incr /tech/gf/GF_22nm/IP/synopsys/v-logic_gf22nspslogl24edl116f/DesignWare_logic_libs/globalfoundaries22nhsp/24hd116/edl/svt/3.00a/verilog/rtl_primitives.v
vlog +acc +neg_tchk -incr /tech/gf/GF_22nm/IP/synopsys/v-logic_gf22nspslogl24edl116f/DesignWare_logic_libs/globalfoundaries22nhsp/24hd116/edl/svt/3.00a/verilog/std_primitives.v
vlog +acc +neg_tchk -incr /tech/gf/GF_22nm/IP/synopsys/v-logic_gf22nspslogl24edl116f/DesignWare_logic_libs/globalfoundaries22nhsp/24hd116/edl/svt/3.00a/verilog/atpg_primitives.v

vlog +acc -incr ../../rtl/TX_Buffer/TX_Buffer.v 
vlog +acc -incr TX_Buffer_tb.v 

# Run Simulator 
vsim +acc -t ps -lib work TX_Buffer_tb 
do waveformat.do   
run -all
