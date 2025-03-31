vlib work
vmap work work

# Include Source File and Testbench
vlog +acc -incr ../../rtl/fsm_sync/fsm_sync.v 
vlog +acc -incr fsm_sync_tb.v


# Run Simulator
vsim -t ps -lib work fsm_sync_tb
do waveformat.do
run -all
