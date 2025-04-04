###################################################################

<<<<<<< HEAD:dc/SPI/report/con.sdc
# Created by write_sdc on Sun Mar 30 22:12:47 2025
=======
# Created by write_sdc on Thu Mar 27 12:32:01 2025
>>>>>>> 8334d12b4657a094ccdd22848e8853946d20d6e8:dc/SPI3/report/con.sdc

###################################################################
set sdc_version 2.0

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current mA
set_max_fanout 4 [current_design]
set_load -pin_load 0.004 [get_ports {OUT[7]}]
set_load -pin_load 0.004 [get_ports {OUT[6]}]
set_load -pin_load 0.004 [get_ports {OUT[5]}]
set_load -pin_load 0.004 [get_ports {OUT[4]}]
set_load -pin_load 0.004 [get_ports {OUT[3]}]
set_load -pin_load 0.004 [get_ports {OUT[2]}]
set_load -pin_load 0.004 [get_ports {OUT[1]}]
set_load -pin_load 0.004 [get_ports {OUT[0]}]
set_load -pin_load 0.004 [get_ports MISO]
set_max_capacitance 0.005 [get_ports rst]
set_max_capacitance 0.005 [get_ports MOSI]
set_max_capacitance 0.005 [get_ports SCK]
set_max_capacitance 0.005 [get_ports SS]
set_max_capacitance 0.005 [get_ports {DATA[7]}]
set_max_capacitance 0.005 [get_ports {DATA[6]}]
set_max_capacitance 0.005 [get_ports {DATA[5]}]
set_max_capacitance 0.005 [get_ports {DATA[4]}]
set_max_capacitance 0.005 [get_ports {DATA[3]}]
set_max_capacitance 0.005 [get_ports {DATA[2]}]
set_max_capacitance 0.005 [get_ports {DATA[1]}]
set_max_capacitance 0.005 [get_ports {DATA[0]}]
set_max_fanout 4 [get_ports rst]
set_max_fanout 4 [get_ports MOSI]
set_max_fanout 4 [get_ports SCK]
set_max_fanout 4 [get_ports SS]
set_max_fanout 4 [get_ports {DATA[7]}]
set_max_fanout 4 [get_ports {DATA[6]}]
set_max_fanout 4 [get_ports {DATA[5]}]
set_max_fanout 4 [get_ports {DATA[4]}]
set_max_fanout 4 [get_ports {DATA[3]}]
set_max_fanout 4 [get_ports {DATA[2]}]
set_max_fanout 4 [get_ports {DATA[1]}]
set_max_fanout 4 [get_ports {DATA[0]}]
create_clock -name vclk  -period 100  -waveform {0 50}
set_clock_uncertainty 0.1  [get_clocks vclk]
set_input_delay -clock vclk  0.02  [get_ports rst]
set_input_delay -clock vclk  0.02  [get_ports MOSI]
set_input_delay -clock vclk  0.02  [get_ports SCK]
set_input_delay -clock vclk  0.02  [get_ports SS]
set_input_delay -clock vclk  0.02  [get_ports {DATA[7]}]
set_input_delay -clock vclk  0.02  [get_ports {DATA[6]}]
set_input_delay -clock vclk  0.02  [get_ports {DATA[5]}]
set_input_delay -clock vclk  0.02  [get_ports {DATA[4]}]
set_input_delay -clock vclk  0.02  [get_ports {DATA[3]}]
set_input_delay -clock vclk  0.02  [get_ports {DATA[2]}]
set_input_delay -clock vclk  0.02  [get_ports {DATA[1]}]
set_input_delay -clock vclk  0.02  [get_ports {DATA[0]}]
set_output_delay -clock vclk  0.02  [get_ports {OUT[7]}]
set_output_delay -clock vclk  0.02  [get_ports {OUT[6]}]
set_output_delay -clock vclk  0.02  [get_ports {OUT[5]}]
set_output_delay -clock vclk  0.02  [get_ports {OUT[4]}]
set_output_delay -clock vclk  0.02  [get_ports {OUT[3]}]
set_output_delay -clock vclk  0.02  [get_ports {OUT[2]}]
set_output_delay -clock vclk  0.02  [get_ports {OUT[1]}]
set_output_delay -clock vclk  0.02  [get_ports {OUT[0]}]
set_output_delay -clock vclk  0.02  [get_ports MISO]
