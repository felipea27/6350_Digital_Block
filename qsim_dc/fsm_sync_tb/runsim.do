vlib work
vmap work work

# Include Source File and Testbench

vlog +acc +neg_tchk -incr /tech/gf/GF_22nm/IP/synopsys/v-logic_gf22nspslogl24edl116f/DesignWare_logic_libs/globalfoundaries22nhsp/24hd116/edl/svt/3.00a/verilog/3.0/gf22nspslogl24edl116f.v
vlog +acc +neg_tchk -incr /tech/gf/GF_22nm/IP/synopsys/v-logic_gf22nspslogl24edl116f/DesignWare_logic_libs/globalfoundaries22nhsp/24hd116/edl/svt/3.00a/verilog/rtl_primitives.v
vlog +acc +neg_tchk -incr /tech/gf/GF_22nm/IP/synopsys/v-logic_gf22nspslogl24edl116f/DesignWare_logic_libs/globalfoundaries22nhsp/24hd116/edl/svt/3.00a/verilog/std_primitives.v
vlog +acc +neg_tchk -incr /tech/gf/GF_22nm/IP/synopsys/v-logic_gf22nspslogl24edl116f/DesignWare_logic_libs/globalfoundaries22nhsp/24hd116/edl/svt/3.00a/verilog/atpg_primitives.v

vlog +acc -incr ../../dc/fsm_sync/fsm_sync.nl.v 
vlog +acc -incr fsm_sync_tb.v


# Run Simulator
vsim -t ps -lib work fsm_sync_tb
do waveformat.do
run -all
