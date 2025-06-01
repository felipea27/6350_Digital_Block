if {![namespace exists ::IMEX]} { namespace eval ::IMEX {} }
set ::IMEX::dataVar [file dirname [file normalize [info script]]]
set ::IMEX::libVar ${::IMEX::dataVar}/libs

create_library_set -name lib_fast\
   -timing\
    [list ${::IMEX::libVar}/mmmc/gf22nspslogl24edl116f_FFG_0P88V_0P00V_0P00V_0P00V_M40C.lib]
create_library_set -name lib_slow\
   -timing\
    [list ${::IMEX::libVar}/mmmc/gf22nspslogl24edl116f_SSG_0P72V_0P00V_0P00V_0P00V_125C.lib]
create_rc_corner -name rc_fast\
   -preRoute_res 1\
   -postRoute_res 1\
   -preRoute_cap 1\
   -postRoute_cap 1\
   -postRoute_xcap 1\
   -preRoute_clkres 0\
   -preRoute_clkcap 0\
   -qx_tech_file ${::IMEX::libVar}/mmmc/rc_fast/qrcTechFile
create_rc_corner -name rc_slow\
   -preRoute_res 1\
   -postRoute_res 1\
   -preRoute_cap 1\
   -postRoute_cap 1\
   -postRoute_xcap 1\
   -preRoute_clkres 0\
   -preRoute_clkcap 0\
   -qx_tech_file ${::IMEX::libVar}/mmmc/rc_slow/qrcTechFile
create_delay_corner -name dc_fast\
   -library_set lib_fast\
   -rc_corner rc_fast
create_delay_corner -name dc_slow\
   -library_set lib_slow\
   -rc_corner rc_slow
create_constraint_mode -name mode_mission\
   -sdc_files\
    [list ${::IMEX::dataVar}/mmmc/modes/mode_mission/mode_mission.sdc]
create_analysis_view -name view_fast_mission -constraint_mode mode_mission -delay_corner dc_fast -latency_file ${::IMEX::dataVar}/mmmc/views/view_fast_mission/latency.sdc
create_analysis_view -name view_slow_mission -constraint_mode mode_mission -delay_corner dc_slow -latency_file ${::IMEX::dataVar}/mmmc/views/view_slow_mission/latency.sdc
set_analysis_view -setup [list view_slow_mission] -hold [list view_fast_mission]
catch {set_interactive_constraint_mode [list mode_mission] } 
