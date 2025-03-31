onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /SH_SYNC_tb/clk
add wave -noupdate /SH_SYNC_tb/rst
add wave -noupdate /SH_SYNC_tb/sh_en
add wave -noupdate /SH_SYNC_tb/rfin
add wave -noupdate /SH_SYNC_tb/RX
add wave -noupdate /SH_SYNC_tb/tx_rdy
add wave -noupdate /SH_SYNC_tb/uut/rfin_prev_reg
add wave -noupdate /SH_SYNC_tb/uut/rfin_edge
add wave -noupdate /SH_SYNC_tb/uut/rfin_sync1
add wave -noupdate /SH_SYNC_tb/uut/rfin_sync2
add wave -noupdate /SH_SYNC_tb/uut/state

add wave -noupdate /SH_SYNC_tb/uut/n243 #state2
add wave -noupdate /SH_SYNC_tb/uut/n227 #state1
add wave -noupdate /SH_SYNC_tb/uut/n205 #state0
add wave -noupdate /SH_SYNC_tb/uut/n223 #rfin_edge
add wave -noupdate /SH_SYNC_tb/uut/n208 #pc1
add wave -noupdate /SH_SYNC_tb/uut/n203 #pc0

add wave -noupdate /SH_SYNC_tb/uut/n553 #pc1 int
add wave -noupdate /SH_SYNC_tb/uut/n554 #pc1 int
add wave -noupdate /SH_SYNC_tb/uut/n555 #pc1 int


add wave -noupdate /SH_SYNC_tb/uut/tx
add wave -noupdate /SH_SYNC_tb/uut/tx_rdy
add wave -noupdate /SH_SYNC_tb/uut/tx_rdy_p
add wave -noupdate /SH_SYNC_tb/uut/tx_rdy_prev
add wave -noupdate /SH_SYNC_tb/uut/counter
add wave -noupdate /SH_SYNC_tb/uut/interval_sum
add wave -noupdate /SH_SYNC_tb/uut/pulse_count
add wave -noupdate /SH_SYNC_tb/uut/avg_interval
add wave -noupdate /SH_SYNC_tb/uut/timeout_counter
add wave -noupdate /SH_SYNC_tb/uut/ *

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


