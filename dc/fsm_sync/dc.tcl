set target_library [list /tech/gf/GF_22nm/IP/synopsys/dwc_comp_gf22nsd81p11saduv02ms/std_cells.db]
set link_library [list /tech/gf/GF_22nm/IP/synopsys/dwc_comp_gf22nsd81p11saduv02ms/std_cells.db]
set symbol_library ""

set design fsm_sync ;#change design name

read_file -format verilog {../../rtl/fsm_sync/fsm_sync.v}  ;#change path
analyze -library WORK -format verilog {../../rtl/fsm_sync/fsm_sync.v} ;#change path
elaborate $design -architecture verilog -library WORK
analyze {}

source constraints.tcl

compile -exact_map

file mkdir report 
write -hierarchy -format verilog -output ./report/gtlvl.v
write_sdc -nosplit -version 2.0 ./report/con.sdc
report_area -hierarchy > ./report/area.area
report_timing > ./report/tm.timing
report_power > ./report/pwr.power

exit

