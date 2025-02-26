###################################################################

# Created by write_sdc on Wed Feb 26 14:25:09 2025

###################################################################
set sdc_version 2.0

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current mA
set_max_fanout 10 [current_design]
set_load -pin_load 0.1 [get_ports state]
set_load -pin_load 0.1 [get_ports sh_en_sync2]
