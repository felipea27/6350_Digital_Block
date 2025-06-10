onerror {resume}
quietly WaveActivateNextPane {} 0

add wave -noupdate -radix unsigned /testbench/*
add wave -noupdate -radix unsigned /testbench/chip_inst/*
add wave -noupdate -radix unsigned /testbench/chip_inst/top_inst/*
add wave -noupdate -radix unsigned /testbench/chip_inst/top_inst/scan_chain_inst/*
add wave -noupdate -radix unsigned /testbench/chip_inst/top_inst/test_clkgen_inst/*
add wave -noupdate -radix unsigned /testbench/chip_inst/top_inst/dut_inst/*
add wave -noupdate -radix unsigned /testbench/chip_inst/top_inst/dut_inst/down_counter_inst/*
add wave -noupdate -radix unsigned /testbench/chip_inst/top_inst/dut_inst/sram_controller_inst/*
add wave -noupdate -radix unsigned /testbench/chip_inst/top_inst/dut_inst/sram_wrapper_inst/*

TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {3 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 223
configure wave -valuecolwidth 89
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ns} {12 ns}


