###############################################################
#  Generated by:      Cadence Innovus 23.10-p003_1
#  OS:                Linux x86_64(Host ID linrack12.bioeelocal)
#  Generated on:      Thu Jun  5 10:51:33 2025
#  Design:            TOP
#  Command:           saveDesign signoff_drc_clean.dat
###############################################################
current_design TOP
create_clock [get_ports {clk}]  -name clk -period 100.000000 -waveform {0.000000 50.000000}
set_propagated_clock  [get_clocks {clk}]
set_clock_transition  -rise -min 0.06 [get_clocks {clk}]
set_clock_transition  -rise -max 0.06 [get_clocks {clk}]
set_clock_transition  -fall -min 0.06 [get_clocks {clk}]
set_clock_transition  -fall -max 0.06 [get_clocks {clk}]
set_propagated_clock  [get_ports {clk}]
set_max_capacitance 0.005  [get_pins {FE_PHC2420_RX/X}]
set_max_fanout 4  [get_pins {FE_PHC2420_RX/X}]
set_max_capacitance 0.005  [get_pins {FE_PHC2374_MOSI/X}]
set_max_fanout 4  [get_pins {FE_PHC2374_MOSI/X}]
set_max_capacitance 0.005  [get_pins {FE_PHC2371_SCK/X}]
set_max_fanout 4  [get_pins {FE_PHC2371_SCK/X}]
set_max_capacitance 0.005  [get_pins {FE_PHC2366_MOSI/X}]
set_max_fanout 4  [get_pins {FE_PHC2366_MOSI/X}]
set_max_capacitance 0.005  [get_pins {FE_PHC2346_MOSI/X}]
set_max_fanout 4  [get_pins {FE_PHC2346_MOSI/X}]
set_max_capacitance 0.005  [get_pins {FE_PHC2345_SCK/X}]
set_max_fanout 4  [get_pins {FE_PHC2345_SCK/X}]
set_max_capacitance 0.005  [get_pins {FE_PHC2330_CS/X}]
set_max_fanout 4  [get_pins {FE_PHC2330_CS/X}]
set_max_capacitance 0.005  [get_pins {FE_PHC2310_SCK/X}]
set_max_fanout 4  [get_pins {FE_PHC2310_SCK/X}]
set_max_capacitance 0.005  [get_pins {FE_PHC2309_MOSI/X}]
set_max_fanout 4  [get_pins {FE_PHC2309_MOSI/X}]
set_max_capacitance 0.005  [get_pins {FE_PHC2300_i_CONFIG/X}]
set_max_fanout 4  [get_pins {FE_PHC2300_i_CONFIG/X}]
set_max_capacitance 0.005  [get_pins {FE_PHC2259_SCK/X}]
set_max_fanout 4  [get_pins {FE_PHC2259_SCK/X}]
set_max_capacitance 0.005  [get_pins {FE_PHC2256_MOSI/X}]
set_max_fanout 4  [get_pins {FE_PHC2256_MOSI/X}]
set_max_capacitance 0.005  [get_pins {FE_PHC2253_CS/X}]
set_max_fanout 4  [get_pins {FE_PHC2253_CS/X}]
set_max_capacitance 0.005  [get_pins {FE_PHC2227_i_CONFIG/X}]
set_max_fanout 4  [get_pins {FE_PHC2227_i_CONFIG/X}]
set_max_capacitance 0.005  [get_pins {FE_PHC2184_SCK/X}]
set_max_fanout 4  [get_pins {FE_PHC2184_SCK/X}]
set_max_capacitance 0.005  [get_pins {FE_PHC2167_CS/X}]
set_max_fanout 4  [get_pins {FE_PHC2167_CS/X}]
set_max_capacitance 0.005  [get_pins {FE_PHC2131_i_CONFIG/X}]
set_max_fanout 4  [get_pins {FE_PHC2131_i_CONFIG/X}]
set_max_capacitance 0.005  [get_pins {FE_PHC2082_SCK/X}]
set_max_fanout 4  [get_pins {FE_PHC2082_SCK/X}]
set_max_capacitance 0.005  [get_pins {FE_PHC2081_MOSI/X}]
set_max_fanout 4  [get_pins {FE_PHC2081_MOSI/X}]
set_max_capacitance 0.005  [get_pins {FE_PHC2071_CS/X}]
set_max_fanout 4  [get_pins {FE_PHC2071_CS/X}]
set_max_capacitance 0.005  [get_pins {FE_PHC1982_i_CONFIG/X}]
set_max_fanout 4  [get_pins {FE_PHC1982_i_CONFIG/X}]
set_max_capacitance 0.005  [get_pins {FE_PHC1980_rfin/X}]
set_max_fanout 4  [get_pins {FE_PHC1980_rfin/X}]
set_max_capacitance 0.005  [get_pins {FE_PHC1922_CS/X}]
set_max_fanout 4  [get_pins {FE_PHC1922_CS/X}]
set_max_capacitance 0.005  [get_pins {FE_PHC1780_i_CONFIG/X}]
set_max_fanout 4  [get_pins {FE_PHC1780_i_CONFIG/X}]
set_max_capacitance 0.005  [get_pins {FE_PHC1751_rfin/X}]
set_max_fanout 4  [get_pins {FE_PHC1751_rfin/X}]
set_max_capacitance 0.005  [get_pins {FE_PHC1730_MOSI/X}]
set_max_fanout 4  [get_pins {FE_PHC1730_MOSI/X}]
set_max_capacitance 0.005  [get_pins {FE_PHC1727_CS/X}]
set_max_fanout 4  [get_pins {FE_PHC1727_CS/X}]
set_max_capacitance 0.005  [get_pins {FE_PHC1553_i_CONFIG/X}]
set_max_fanout 4  [get_pins {FE_PHC1553_i_CONFIG/X}]
set_max_capacitance 0.005  [get_pins {FE_PHC1521_SCK/X}]
set_max_fanout 4  [get_pins {FE_PHC1521_SCK/X}]
set_max_capacitance 0.005  [get_pins {FE_PHC1519_CS/X}]
set_max_fanout 4  [get_pins {FE_PHC1519_CS/X}]
set_max_capacitance 0.005  [get_pins {FE_PHC1516_rfin/X}]
set_max_fanout 4  [get_pins {FE_PHC1516_rfin/X}]
set_max_capacitance 0.005  [get_pins {FE_PHC1304_RX/X}]
set_max_fanout 4  [get_pins {FE_PHC1304_RX/X}]
set_max_capacitance 0.005  [get_pins {FE_PHC1295_i_CONFIG/X}]
set_max_fanout 4  [get_pins {FE_PHC1295_i_CONFIG/X}]
set_max_capacitance 0.005  [get_pins {FE_PHC1272_SCK/X}]
set_max_fanout 4  [get_pins {FE_PHC1272_SCK/X}]
set_max_capacitance 0.005  [get_pins {FE_PHC1271_CS/X}]
set_max_fanout 4  [get_pins {FE_PHC1271_CS/X}]
set_max_capacitance 0.005  [get_pins {FE_PHC1180_rfin/X}]
set_max_fanout 4  [get_pins {FE_PHC1180_rfin/X}]
set_max_capacitance 0.005  [get_pins {FE_PHC1043_RX/X}]
set_max_fanout 4  [get_pins {FE_PHC1043_RX/X}]
set_max_capacitance 0.005  [get_pins {FE_PHC1034_i_CONFIG/X}]
set_max_fanout 4  [get_pins {FE_PHC1034_i_CONFIG/X}]
set_max_capacitance 0.005  [get_pins {FE_PHC1025_SCK/X}]
set_max_fanout 4  [get_pins {FE_PHC1025_SCK/X}]
set_max_capacitance 0.005  [get_pins {FE_PHC1023_CS/X}]
set_max_fanout 4  [get_pins {FE_PHC1023_CS/X}]
set_max_capacitance 0.005  [get_pins {FE_PHC1022_MOSI/X}]
set_max_fanout 4  [get_pins {FE_PHC1022_MOSI/X}]
set_max_capacitance 0.005  [get_pins {FE_PHC729_i_CONFIG/X}]
set_max_fanout 4  [get_pins {FE_PHC729_i_CONFIG/X}]
set_max_capacitance 0.005  [get_pins {FE_PHC711_SCK/X}]
set_max_fanout 4  [get_pins {FE_PHC711_SCK/X}]
set_max_capacitance 0.005  [get_pins {FE_PHC710_CS/X}]
set_max_fanout 4  [get_pins {FE_PHC710_CS/X}]
set_max_capacitance 0.005  [get_pins {FE_PHC709_RX/X}]
set_max_fanout 4  [get_pins {FE_PHC709_RX/X}]
set_max_capacitance 0.005  [get_pins {FE_PHC389_SCK/X}]
set_max_fanout 4  [get_pins {FE_PHC389_SCK/X}]
set_max_capacitance 0.005  [get_pins {FE_PHC372_i_CONFIG/X}]
set_max_fanout 4  [get_pins {FE_PHC372_i_CONFIG/X}]
set_max_capacitance 0.005  [get_pins {FE_PHC361_CS/X}]
set_max_fanout 4  [get_pins {FE_PHC361_CS/X}]
set_max_capacitance 0.005  [get_pins {FE_PHC317_RX/X}]
set_max_fanout 4  [get_pins {FE_PHC317_RX/X}]
set_max_capacitance 0.005  [get_pins {FE_PHC23_i_CONFIG/X}]
set_max_fanout 4  [get_pins {FE_PHC23_i_CONFIG/X}]
set_max_capacitance 0.005  [get_ports {clk}]
set_max_fanout 4  [get_ports {clk}]
set_max_capacitance 0.005  [get_ports {rfin}]
set_max_fanout 4  [get_ports {rfin}]
set_max_capacitance 0.005  [get_ports {rst}]
set_max_fanout 4  [get_ports {rst}]
set_max_capacitance 0.005  [get_ports {MOSI}]
set_max_fanout 4  [get_ports {MOSI}]
set_max_capacitance 0.005  [get_ports {CS}]
set_max_fanout 4  [get_ports {CS}]
set_max_capacitance 0.005  [get_ports {SCK}]
set_max_fanout 4  [get_ports {SCK}]
set_max_capacitance 0.005  [get_ports {TX_BY}]
set_max_fanout 4  [get_ports {TX_BY}]
set_max_capacitance 0.005  [get_ports {RX}]
set_max_fanout 4  [get_ports {RX}]
set_max_capacitance 0.005  [get_ports {i_CONFIG}]
set_max_fanout 4  [get_ports {i_CONFIG}]
set_load -pin_load -max  0.004  [get_ports {osc_freq[1]}]
set_load -pin_load -min  0.004  [get_ports {osc_freq[1]}]
set_load -pin_load -max  0.004  [get_ports {osc_freq[0]}]
set_load -pin_load -min  0.004  [get_ports {osc_freq[0]}]
set_load -pin_load -max  0.004  [get_ports {arthur[3]}]
set_load -pin_load -min  0.004  [get_ports {arthur[3]}]
set_load -pin_load -max  0.004  [get_ports {arthur[2]}]
set_load -pin_load -min  0.004  [get_ports {arthur[2]}]
set_load -pin_load -max  0.004  [get_ports {arthur[1]}]
set_load -pin_load -min  0.004  [get_ports {arthur[1]}]
set_load -pin_load -max  0.004  [get_ports {arthur[0]}]
set_load -pin_load -min  0.004  [get_ports {arthur[0]}]
set_load -pin_load -max  0.004  [get_ports {pkt_rec}]
set_load -pin_load -min  0.004  [get_ports {pkt_rec}]
set_load -pin_load -max  0.004  [get_ports {MISO}]
set_load -pin_load -min  0.004  [get_ports {MISO}]
set_load -pin_load -max  0.004  [get_ports {TX_OUT}]
set_load -pin_load -min  0.004  [get_ports {TX_OUT}]
set_load -pin_load -max  0.004  [get_ports {sh_en}]
set_load -pin_load -min  0.004  [get_ports {sh_en}]
set_max_fanout 4  [get_designs {TOP}]
set_input_delay -add_delay 0.02 -clock [get_clocks {clk}] [get_ports {SCK}]
set_input_delay -add_delay 0.02 -clock [get_clocks {clk}] [get_ports {RX}]
set_input_delay -add_delay 0.02 -clock [get_clocks {clk}] [get_ports {rst}]
set_input_delay -add_delay 0.02 -clock [get_clocks {clk}] [get_ports {TX_BY}]
set_input_delay -add_delay 0.02 -clock [get_clocks {clk}] [get_ports {CS}]
set_input_delay -add_delay 0.02 -clock [get_clocks {clk}] [get_ports {i_CONFIG}]
set_input_delay -add_delay 0.02 -clock [get_clocks {clk}] [get_ports {rfin}]
set_input_delay -add_delay 0.02 -clock [get_clocks {clk}] [get_ports {MOSI}]
set_output_delay -add_delay 0.02 -clock [get_clocks {clk}] [get_ports {osc_freq[1]}]
set_output_delay -add_delay 0.02 -clock [get_clocks {clk}] [get_ports {arthur[2]}]
set_output_delay -add_delay 0.02 -clock [get_clocks {clk}] [get_ports {arthur[0]}]
set_output_delay -add_delay 0.02 -clock [get_clocks {clk}] [get_ports {MISO}]
set_output_delay -add_delay 0.02 -clock [get_clocks {clk}] [get_ports {arthur[3]}]
set_output_delay -add_delay 0.02 -clock [get_clocks {clk}] [get_ports {osc_freq[0]}]
set_output_delay -add_delay 0.02 -clock [get_clocks {clk}] [get_ports {arthur[1]}]
set_output_delay -add_delay 0.02 -clock [get_clocks {clk}] [get_ports {TX_OUT}]
set_output_delay -add_delay 0.02 -clock [get_clocks {clk}] [get_ports {pkt_rec}]
set_output_delay -add_delay 0.02 -clock [get_clocks {clk}] [get_ports {sh_en}]
set_clock_uncertainty 0.1 [get_clocks {clk}]
set_ideal_network  [get_ports {clk}]
