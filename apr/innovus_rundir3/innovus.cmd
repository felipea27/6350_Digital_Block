#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Wed May 28 14:22:42 2025                
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
win
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
floorPlan -site GF22_DST -r 1.0 0.2 4 4 4 4
uiSetTool select
getIoFlowFlag
fit
clearGlobalNets
globalNetConnect vdd -type pgpin -pin VDD -inst * -verbose
globalNetConnect gnd -type pgpin -pin VSS -inst * -verbose
applyGlobalNets
addRing -nets {vdd gnd} -layer {top M1 bottom M1 left M2 right M2} -width 1.0 -spacing 0.4 -offset 0.4
sroute -nets {vdd gnd}
saveDesign floorplan.inn
checkDesign -all
check_timing
timeDesign -preplace -prefix preplace_setup -outDir timingReports
timeDesign -preplace -hold -prefix preplace_hold -outDir timingReports
setPlaceMode -place_global_cong_effort high
setPlaceMode -place_global_clock_power_driven true
setPlaceMode -place_global_clock_power_driven_effort high
setPlaceMode -placeIOPins true -checkRoute true
place_opt_design
addTieHiLo -cell {UDB116SVT24_TIE0_ECOCT_1 UDB116SVT24_TIE1_ECOCT_1}
addDeCapCellCandidates UDB116SVT24_DCAP_ECOCT_16 16
addDeCapCellCandidates UDB116SVT24_DCAP_ECOCT_8 8
addDeCapCellCandidates UDB116SVT24_DCAP_ECOCT_4 4
addDeCap -totCap 5000
reportCongestion -overflow
timeDesign -preCTS -prefix preCTS_setup -outDir timingReports
timeDesign -preCTS -hold -prefix preCTS_hold -outDir timingReports
setDesignMode -powerEffort high
setOptMode -leakageToDynamicRatio 0.5
optPower -preCTS
saveDesign preCTS.inn
setOptMode -holdTargetSlack 0.050
clock_opt_design
timeDesign -postCTS -hold -prefix postCTS_hold -outDir timingReports
optPower -postCTS
saveDesign postCTSopt.inn
setNanoRouteMode -routeWithTimingDriven true
setNanoRouteMode -routeWithSiDriven true
setNanoRouteMode -drouteFixAntenna true
setNanoRouteMode -routeInsertAntennaDiode false
setNanoRouteMode -drouteUseMultiCutViaEffort medium
setNanoRouteMode -route_detail_end_iteration 30
routeDesign
setAnalysisMode -analysisType onChipVariation -cppr both
setOptMode -fixHoldAllowSetupTnsDegrade false
optDesign -postRoute -setup -hold -drv
timeDesign -postRoute -prefix postRoute_setup -outDir timingReports
timeDesign -postRoute -hold -prefix postRoute_hold -outDir timingReports
setFillerMode -core {UDB116SVT24_FILL_ECOCT20 UDB116SVT24_FILL_ECOCT19 UDB116SVT24_FILL_ECOCT18 UDB116SVT24_FILL_ECOCT17 UDB116SVT24_FILL_ECOCT16 UDB116SVT24_FILL_ECOCT15 UDB116SVT24_FILL_ECOCT14 UDB116SVT24_FILL_ECOCT13 UDB116SVT24_FILL_ECOCT12 UDB116SVT24_FILL_ECOCT11 UDB116SVT24_FILL_ECOCT10 UDB116SVT24_FILL_ECOCT9 UDB116SVT24_FILL_ECOCT8 UDB116SVT24_FILL_ECOCT7 UDB116SVT24_FILL_ECOCT6 UDB116SVT24_FILL_ECOCT5 UDB116SVT24_FILL_ECOCT4 UDB116SVT24_FILL_ECOCT3 UDB116SVT24_FILL_ECOCT2 UDB116SVT24_FILL_ECOCT1}
addFiller
verify_drc
timeDesign -postRoute -hold
optDesign -postRoute -hold
zoomBox 0.20700 19.12100 33.24400 48.60100
zoomBox 3.54800 22.96100 27.41800 44.26100
zoomBox 4.85300 24.46000 25.14300 42.56600
zoomBox 5.96200 25.73500 23.20900 41.12500
zoomBox 6.90500 26.81800 21.56500 39.90000
zoomBox 2.01200 21.19400 30.09600 46.25500
zoomBox -1.91900 16.67500 36.95200 51.36100
zoomBox -7.36100 10.41900 46.44100 58.42900
zoomBox -10.82200 6.44100 52.47500 62.92400
pan 13.21700 14.06200
zoomBox -0.54600 -2.03300 73.92100 64.41700
pan -9.27300 -1.00500
timeDesign -postRoute -hold
verify_connectivity
verify_drc
ecoRoute -fix_drc
verify_drc
verify_connectivity
timeDesign -postRoute -hold
timeDesign -postRoute -setup
ecoRoute -fix_drc
verify_drc
verify_connectivity
timeDesign -postRoute -setup
timeDesign -postRoute -hold
setNanoRouteMode -route_detail_end_iteration 15
ecoRoute -fix_drc
verify_drc
ecoRoute -fix_drc
verify_drc
saveDesign TOPv3
