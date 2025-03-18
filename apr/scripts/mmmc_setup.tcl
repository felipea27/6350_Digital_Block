#create library sets
create_library_set -name lib_slow -timing {/users/ssokolovskiy/v-logic_gf22nspslogl24edl116f/DesignWare_logic_libs/globalfoundaries22nhsp/24hd116/edl/svt/3.00a/liberty/logic_synth_lvf/gf22nspslogl24edl116f_SSG_0P72V_0P00V_0P00V_0P00V_125C.lib} 
create_library_set -name lib_fast -timing {/users/ssokolovskiy/v-logic_gf22nspslogl24edl116f/DesignWare_logic_libs/globalfoundaries22nhsp/24hd116/edl/svt/3.00a/liberty/logic_synth_lvf/gf22nspslogl24edl116f_FFG_0P88V_0P00V_0P00V_0P00V_M40C.lib}
#create_library_set -name lib_combined -timing {/users/ssokolovskiy/v-logic_gf22nspslogl24edl116f/DesignWare_logic_libs/globalfoundaries22nhsp/24hd116/edl/svt/3.00a/liberty/logic_synth_lvf/gf22nspslogl24edl116f_TT_0P80V_0P00V_0P00V_0P00V_25C.lib}

#create Constraint Modes
create_constraint_mode -name mode_mission -sdc_files {scripts/timing.sdc}

#create RC Corners 
create_rc_corner -name rc_slow -qx_tech_file /tech/gf/GF_22nm/PDK/22FDX-PLUS/V1.0_2.5/PEX/QRC/10M_2Mx_5Cx_1Jx_2Qx_LBthick/FuncRCmax/qrcTechFile
create_rc_corner -name rc_fast -qx_tech_file /tech/gf/GF_22nm/PDK/22FDX-PLUS/V1.0_2.5/PEX/QRC/10M_2Mx_5Cx_1Jx_2Qx_LBthick/FuncRCmin/qrcTechFile

#create Delay Corners 
create_delay_corner -name dc_slow -library_set lib_slow  -rc_corner rc_slow
create_delay_corner -name dc_fast -library_set lib_fast -rc_corner rc_fast

#create analysis views
create_analysis_view -name view_slow_mission -constraint_mode mode_mission -delay_corner dc_slow 
create_analysis_view -name view_fast_mission -constraint_mode mode_mission -delay_corner dc_fast

#set current analysis views
set_analysis_view -setup view_slow_mission -hold view_fast_mission
