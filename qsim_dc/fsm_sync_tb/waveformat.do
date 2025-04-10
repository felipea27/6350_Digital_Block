onerror {resume}
quietly WaveActivateNextPane {} 0

add wave -noupdate /fsm_sync_tb/clk
add wave -noupdate /fsm_sync_tb/rst
add wave -noupdate /fsm_sync_tb/rfin
add wave -noupdate /fsm_sync_tb/fsm_rst
add wave -noupdate /fsm_sync_tb/state
add wave -noupdate /fsm_sync_tb/sh_en
add wave -noupdate /fsm_sync_tb/uut/next_state_pos
add wave -noupdate /fsm_sync_tb/uut/next_state_neg
add wave -noupdate /fsm_sync_tb/uut/state_pos
add wave -noupdate /fsm_sync_tb/uut/state_neg
add wave -noupdate /fsm_sync_tb/uut/sh_en_prev


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
