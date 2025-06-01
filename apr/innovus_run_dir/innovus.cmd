#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Tue May 27 17:35:50 2025                
#                                                     
#######################################################

#@(#)CDS: Innovus v23.10-p003_1 (64bit) 02/01/2024 13:54 (Linux 3.10.0-693.el7.x86_64)
#@(#)CDS: NanoRoute 23.10-p003_1 NR240109-1512/23_10-UB (database version 18.20.618) {superthreading v2.20}
#@(#)CDS: AAE 23.10-p002 (64bit) 02/01/2024 (Linux 3.10.0-693.el7.x86_64)
#@(#)CDS: CTE 23.10-p003_1 () Dec  5 2023 19:42:23 ( )
#@(#)CDS: SYNTECH 23.10-p002_1 () Nov 29 2023 02:17:21 ( )
#@(#)CDS: CPE v23.10-p004
#@(#)CDS: IQuantus/TQuantus 22.1.1-s215 (64bit) Mon Nov 20 10:05:08 PST 2023 (Linux 3.10.0-693.el7.x86_64)

set_global _enable_mmmc_by_default_flow      $CTE::mmmc_default
suppressMessage ENCEXT-2799
getVersion
setDesignMode -process 22
set_message -id IMPLF-200 -suppress
set_message -id IMPLF-201 -suppress
set_message -id IMPFP-3961 -suppress
set_message -id IMPSP-9025 -suppress
setDesignMode -process 22
set init_gnd_net gnd
set init_lef_file {/tech/gf/GF_22nm/PDK/22FDX-PLUS/V1.0_2.5/PlaceRoute/Innovus/Techfiles/10M_2Mx_5Cx_1Jx_2Qx_LB/22FDSOI_10M_2Mx_5Cx_1Jx_2Qx_LB_116cpp_tech.lef /tech/gf/GF_22nm/PDK/22FDX-PLUS/V1.0_2.5/PlaceRoute/Innovus/Techfiles/22fdsoi_standard_site.lef /tech/gf/GF_22nm/IP/synopsys/v-logic_gf22nspslogl24edl116f/DesignWare_logic_libs/globalfoundaries22nhsp/24hd116/edl/svt/3.00a/lef/5.8/gf22nspslogl24edl116f.lef}
set init_design_settop 0
set init_verilog ../../dc/TOP/TOP.v
set init_mmmc_file ../scripts/mmmc_setup.tcl
set init_pwr_net vdd
init_design -setup view_slow_mission -hold view_fast_mission
getIoFlowFlag
setIoFlowFlag 0
floorPlan -site GF22_DST -s 60 60 4 4 4 4 -flip s
uiSetTool select
getIoFlowFlag
fit
clearGlobalNets
globalNetConnect vdd -type pgpin -pin VDD -inst * -verbose
globalNetConnect gnd -type pgpin -pin VSS -inst * -verbose
addRing -nets {vdd gnd} -layer {top M1 bottom M1 left M2 right M2} -width 1.0 -spacing 0.4 -offset 0.4
sroute -nets {vdd gnd}
saveDesign floorplan
checkDesign -all
check_timing
timeDesign -preplace -prefix preplace_setup -outDir timingReports
gui_open_cell_view
zoomBox -2.01300 -4.64300 28.75900 9.42000 .uiCellView.win
zoomBox -4.97500 -7.55800 45.13400 15.34200 .uiCellView.win
zoomBox -2.24100 -4.60600 28.53300 9.45800 .uiCellView.win
zoomBox -1.21400 -3.30400 21.02200 6.85800 .uiCellView.win
zoomBox -0.68500 -2.37100 15.38000 4.97100 .uiCellView.win
zoomBox -0.47600 -1.65200 11.13200 3.65300 .uiCellView.win
zoomBox -0.35500 -1.09800 8.03300 2.73500 .uiCellView.win
zoomBox -0.28600 -0.89100 6.84400 2.36700 .uiCellView.win
zoomBox -0.22200 -0.71500 5.83900 2.05500 .uiCellView.win
zoomBox -0.12700 -0.44200 4.25400 1.56000 .uiCellView.win
zoomBox -0.05900 -0.25000 3.10700 1.19700 .uiCellView.win
zoomBox -0.46200 -0.47100 3.92100 1.53200 .uiCellView.win
zoomBox -0.96100 -0.60900 4.19600 1.74800 .uiCellView.win
zoomBox -0.69300 -0.43900 3.69200 1.56500 .uiCellView.win
zoomBox -1.05900 -0.60900 4.09900 1.74800 .uiCellView.win
gui_schematic_load_view
gui_show_edge_number
