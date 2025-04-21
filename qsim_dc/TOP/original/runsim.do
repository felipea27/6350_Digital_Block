##################################################
#  Modelsim do file to run simuilation
#  MS 7/2015
##################################################

vlib work
vmap work work

# include netlist and testbench files
#vlog +acc +neg_tchk -incr /tech/gf/GF_22nm/IP/synopsys/v-logic_gf22nspslogl24edl116f/DesignWare_logic_libs/globalfoundaries22nhsp/24hd116/edl/svt/3.00a/verilog/2.1/gf22nspslogl24edl116f.mv
vlog +acc +neg_tchk -incr /tech/gf/GF_22nm/IP/synopsys/v-logic_gf22nspslogl24edl116f/DesignWare_logic_libs/globalfoundaries22nhsp/24hd116/edl/svt/3.00a/verilog/2.1/gf22nspslogl24edl116f.v
vlog +acc +neg_tchk -incr /tech/gf/GF_22nm/IP/synopsys/v-logic_gf22nspslogl24edl116f/DesignWare_logic_libs/globalfoundaries22nhsp/24hd116/edl/svt/3.00a/verilog/rtl_primitives.v
vlog +acc +neg_tchk -incr /tech/gf/GF_22nm/IP/synopsys/v-logic_gf22nspslogl24edl116f/DesignWare_logic_libs/globalfoundaries22nhsp/24hd116/edl/svt/3.00a/verilog/std_primitives.v
vlog +acc +neg_tchk -incr /tech/gf/GF_22nm/IP/synopsys/v-logic_gf22nspslogl24edl116f/DesignWare_logic_libs/globalfoundaries22nhsp/24hd116/edl/svt/3.00a/verilog/atpg_primitives.v


vlog +acc -incr ../../../rtl/SPI/APB_interface.v
vlog +acc -incr ../../../rtl/SPI/SPI_master.v
vlog +acc -incr ../../../rtl/SPI/SPI_testmodul2.v
vlog +acc -incr ../../../dc/SPI/SPI_slave.nl.v
vlog +acc -incr ../../../dc/TOP/TOP.nl.v
vlog +acc -incr ../../../dc/fsm_sync/fsm_sync.nl.v
vlog +acc -incr ../../../dc/Pkt_reg/Pkt_reg.nl.v
vlog +acc -incr ../../../dc/Shift_Buffer/Shift_Buffer.nl.v
vlog +acc -incr ../../../dc/TX_Buffer/TX_Buffer.nl.v
vlog +acc -incr ../../../dc/SH_SYNC/SH_SYNC.nl.v


vlog +acc -incr APB_interface_testbench.v

# run simulation
vsim +acc -t ps -lib work -sdftyp top_slave=../../../dc/TOP/TOP.syn.sdf testbench 
do waveformat.do
run -all
#quit -f

