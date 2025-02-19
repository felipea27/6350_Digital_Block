onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /testbench/i_PCLK
add wave -noupdate /testbench/i_PRESETn


add wave -noupdate /testbench/i_PADDR
add wave -noupdate /testbench/i_BASE_ADDR
add wave -noupdate -radix unsigned /testbench/i_PWDATA
add wave -noupdate -radix unsigned /testbench/i_PRDATA
add wave -noupdate /testbench/i_PWRITE
add wave -noupdate /testbench/i_PSEL0

add wave -noupdate /testbench/i_PENABLE
add wave -noupdate /testbench/PREADY
add wave -noupdate /testbench/PSLVERR


add wave -noupdate /testbench/spi_clk
add wave -noupdate /testbench/o_PWDATA
add wave -noupdate /testbench/o_PRDATA



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


