onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /testbench/i_PCLK
add wave -noupdate /testbench/RX_MODE
add wave -noupdate /testbench/uut/SPI_modul2/w_SCK
add wave -noupdate /testbench/uut/SPI_modul2/top_slave/SPI_slave_inst/SS
add wave -noupdate /testbench/uut/SPI_modul2/top_slave/SPI_slave_inst/PRESETn
add wave -noupdate /testbench/uut/SPI_modul2/top_slave/SPI_slave_inst/SS_neg_flag
add wave -noupdate /testbench/uut/SPI_modul2/top_slave/SPI_slave_inst/counter
add wave -noupdate /testbench/uut/SPI_modul2/top_slave/DIN
add wave -noupdate /testbench/uut/SPI_modul2/top_slave/rfin
add wave -noupdate /testbench/uut/SPI_modul2/top_slave/SH_EN
add wave -noupdate /testbench/uut/SPI_modul2/top_slave/sh_sync_inst/state
add wave -noupdate /testbench/uut/SPI_modul2/top_slave/sh_sync_inst/fsm_en
add wave -noupdate /testbench/uut/SPI_modul2/top_slave/sh_sync_inst/timeout_counter
add wave -noupdate /testbench/uut/SPI_modul2/top_slave/sh_sync_inst/pulse_gen_count
add wave -noupdate /testbench/uut/SPI_modul2/top_slave/sh_sync_inst/counter
add wave -noupdate /testbench/uut/SPI_modul2/top_slave/sh_sync_inst/avg_interval
add wave -noupdate /testbench/uut/SPI_modul2/top_slave/sh_sync_inst/RX
add wave -noupdate /testbench/uut/SPI_modul2/top_slave/sh_sync_inst/rfin_sync1
add wave -noupdate /testbench/uut/SPI_modul2/top_slave/sh_sync_inst/rfin_edge
add wave -noupdate /testbench/uut/SPI_modul2/top_slave/sh_sync_inst/rfin_sync2
add wave -noupdate /testbench/uut/SPI_modul2/top_slave/sh_sync_inst/rfin_prev

add wave -noupdate /testbench/uut/SPI_modul2/top_slave/SPI_slave_inst/OUT
add wave -noupdate /testbench/uut/SPI_modul2/top_slave/TX_OUT
add wave -noupdate /testbench/uut/SPI_modul2/top_slave/tx_buf_inst/buffer
add wave -noupdate /testbench/uut/SPI_modul2/top_slave/shift_buf_inst/shift_reg

add wave -noupdate /testbench/uut/SPI_modul2/top_slave/SPI_slave_inst/SHIFT_REG
add wave -noupdate /testbench/uut/SPI_modul2/top_slave/pkt_rec
add wave -noupdate /testbench/uut/SPI_modul2/top_slave/rx_state
add wave -noupdate /testbench/uut/SPI_modul2/top_slave/tx_state
add wave -noupdate /testbench/uut/SPI_modul2/top_slave/pkt_reg_inst/pkt_reg

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


