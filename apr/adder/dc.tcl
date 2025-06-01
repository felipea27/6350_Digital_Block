set top_level adder

set link_library [list "/tech/gf/GF_22nm/IP/synopsys/v-logic_gf22nspslogl24edl116f/DesignWare_logic_libs/globalfoundaries22nhsp/24hd116/edl/svt/3.00a/liberty/logic_synth_lvf/gf22nspslogl24edl116f_TT_0P80V_0P00V_0P00V_0P00V_25C.db"]
set target_library [list "/tech/gf/GF_22nm/IP/synopsys/v-logic_gf22nspslogl24edl116f/DesignWare_logic_libs/globalfoundaries22nhsp/24hd116/edl/svt/3.00a/liberty/logic_synth_lvf/gf22nspslogl24edl116f_TT_0P80V_0P00V_0P00V_0P00V_25C.db"]

analyze -format verilog "adder.v"
elaborate $top_level
list_designs

if {[check_error -v] == 1} { exit 1}

current_design $top_level

link

set_max_fanout 4 $top_level
set_max_fanout 4 [all_inputs]
set_max_capacitance 0.005 [all_inputs]
check_design

source -verbose "timing.tcl"

set_fix_multiple_port_nets -all -buffer_constants

check_design
current_design $top_level

link > ./report/link.txt

compile_ultra

#write -hierarchy -format db -xg_force_db -output $top_level.db

check_design > ./report/check_design.txt

set_propagated_clock [all_clocks]
#write_sdc $top_level.sdc

file mkdir report 
write -hierarchy -format verilog -output "${top_level}_nl.v"
write_sdc -nosplit -version 2.0 ./report/con.sdc
write_sdf "${top_level}.sdf"
report_area -hierarchy > ./report/area.area
report_timing > ./report/tm.timing
report_power > ./report/pwr.power

exit

