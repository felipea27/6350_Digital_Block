onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /SPI_testmodul_3/MOSI
add wave -noupdate /SPI_testmodul_3/MISO
add wave -noupdate /SPI_testmodul_3/SS
add wave -noupdate /SPI_testmodul_3/SCK
add wave -noupdate /SPI_testmodul_3/DATA
add wave -noupdate /SPI_testmodul_3/MDATA
add wave -noupdate /SPI_testmodul_3/master_data_received
add wave -noupdate /SPI_testmodul_3/slave_data_received
add wave -noupdate /SPI_testmodul_3/uut/OUT
add wave -noupdate /SPI_testmodul_3/uut/SHIFT_IN
add wave -noupdate /SPI_testmodul_3/uut/SHIFT_REG
add wave -noupdate /SPI_testmodul_3/uut/DATA
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


