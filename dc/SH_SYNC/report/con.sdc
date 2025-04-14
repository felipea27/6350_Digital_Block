###################################################################

# Created by write_sdc on Mon Apr 14 00:02:03 2025

###################################################################
set sdc_version 2.0

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current mA
set_max_fanout 4 [current_design]
set_load -pin_load 0.004 [get_ports sh_en]
set_load -pin_load 0.004 [get_ports fsm_rst]
set_load -pin_load 0.004 [get_ports sh_en_done]
set_max_capacitance 0.005 [get_ports clk]
set_max_capacitance 0.005 [get_ports rst]
set_max_capacitance 0.005 [get_ports rfin]
set_max_capacitance 0.005 [get_ports RX]
set_max_capacitance 0.005 [get_ports tx_rdy]
set_max_fanout 4 [get_ports clk]
set_max_fanout 4 [get_ports rst]
set_max_fanout 4 [get_ports rfin]
set_max_fanout 4 [get_ports RX]
set_max_fanout 4 [get_ports tx_rdy]
set_ideal_network [get_ports clk]
create_clock [get_ports clk]  -period 100  -waveform {0 50}
set_clock_uncertainty 0.1  [get_clocks clk]
set_clock_transition -max -rise 0.06 [get_clocks clk]
set_clock_transition -max -fall 0.06 [get_clocks clk]
set_clock_transition -min -rise 0.06 [get_clocks clk]
set_clock_transition -min -fall 0.06 [get_clocks clk]
set_input_delay -clock clk  0.02  [get_ports rst]
set_input_delay -clock clk  0.02  [get_ports rfin]
set_input_delay -clock clk  0.02  [get_ports RX]
set_input_delay -clock clk  0.02  [get_ports tx_rdy]
set_output_delay -clock clk  0.02  [get_ports sh_en]
set_output_delay -clock clk  0.02  [get_ports fsm_rst]
set_output_delay -clock clk  0.02  [get_ports sh_en_done]
