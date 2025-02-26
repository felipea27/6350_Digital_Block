create_clock 100 [get_ports clk];
set_input_delay 1 [get_ports rst] -clock clk
set_input_delay 1 [get_ports rfin] -clock clk
set_input_delay 1 [get_ports sh_en] -clock clk
set_output_delay 1 [get_ports state] -clock clk
set_output_delay 1 [get_ports sh_en_sync2] -clock clk

set_driving_cell -lib_cell INVX1 -pin Y [get_ports rst]
set_driving_cell -lib_cell INVX1 -pin Y [get_ports rfin]
set_driving_cell -lib_cell INVX1 -pin Y [get_ports sh_en]

set_load 0.1 [get_ports state]
set_load 0.1 [get_ports sh_en_sync2]

set_max_fanout 10 [get_designs]

