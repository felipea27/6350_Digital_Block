onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /TOP_tb/clk
add wave -noupdate /TOP_tb/din
add wave -noupdate /TOP_tb/rst
add wave -noupdate /TOP_tb/pkt_rec
add wave -noupdate /TOP_tb/sh_en
add wave -noupdate /TOP_tb/CS
add wave -noupdate /TOP_tb/MOSI
add wave -noupdate /TOP_tb/MISO
add wave -noupdate /TOP_tb/uut/pkt_reg_inst/pkt_reg

add wave -noupdate /TOP_tb/uut/counter
add wave -noupdate /TOP_tb/uut/SH_EN
add wave -noupdate /TOP_tb/uut/PKT_EN
add wave -noupdate /TOP_tb/uut/SPI_EN
add wave -noupdate /TOP_tb/uut/SPI_LD
add wave -noupdate /TOP_tb/uut/CS_prev
add wave -noupdate /TOP_tb/uut/SPI_RDY

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


