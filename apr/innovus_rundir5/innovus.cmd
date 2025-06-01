#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Thu May 29 09:03:58 2025                
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
floorPlan -site GF22_DST -s 45 60 4 4 4 4
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
optDesign -postRoute -hold
setFillerMode -core {UDB116SVT24_FILL_ECOCT20 UDB116SVT24_FILL_ECOCT19 UDB116SVT24_FILL_ECOCT18 UDB116SVT24_FILL_ECOCT17 UDB116SVT24_FILL_ECOCT16 UDB116SVT24_FILL_ECOCT15 UDB116SVT24_FILL_ECOCT14 UDB116SVT24_FILL_ECOCT13 UDB116SVT24_FILL_ECOCT12 UDB116SVT24_FILL_ECOCT11 UDB116SVT24_FILL_ECOCT10 UDB116SVT24_FILL_ECOCT9 UDB116SVT24_FILL_ECOCT8 UDB116SVT24_FILL_ECOCT7 UDB116SVT24_FILL_ECOCT6 UDB116SVT24_FILL_ECOCT5 UDB116SVT24_FILL_ECOCT4 UDB116SVT24_FILL_ECOCT3 UDB116SVT24_FILL_ECOCT2 UDB116SVT24_FILL_ECOCT1}
addFiller
addFiller -fixDRC
pan 1.08700 9.23700
zoomBox -19.30800 -16.89500 79.30900 71.10600
zoomBox -31.34500 -41.85200 105.15000 79.94900
zoomBox -23.85700 -33.30100 92.16400 70.23000
zoomBox -18.73300 -25.26600 79.88500 62.73600
zoomBox -10.92600 -12.29400 60.32700 51.28800
zoomBox -5.28400 -2.90900 46.19700 43.03000
zoomBox -3.33200 -1.38700 40.42800 37.66200
zoomBox -1.67200 -0.11000 35.52400 33.08200
zoomBox -1.00700 0.33100 30.61100 28.54500
zoomBox 0.79600 1.57100 17.30100 16.29900
zoomBox 1.72500 2.55500 10.34200 10.24400
zoomBox 2.28100 3.74300 5.53200 6.64400
zoomBox 1.54900 2.21600 11.69300 11.26800
zoomBox -2.27900 -2.37100 24.62200 21.63400
zoomBox -9.97900 -11.60300 50.65200 42.50100
pan -1.33700 19.29400
zoomBox -26.77600 -15.16900 89.37500 88.47800
zoomBox -32.38600 -24.20800 104.26300 97.73000
zoomBox -10.34700 13.69400 41.19000 59.68300
zoomBox -4.34200 24.65300 22.56200 48.66100
zoomBox -2.86200 27.26500 13.66100 42.00900
zoomBox -2.20700 28.41900 9.73000 39.07100
zoomBox -1.70100 29.17000 6.92500 36.86700
zoomBox -1.50300 29.46300 5.82900 36.00600
zoomBox -7.67600 24.42100 15.20100 44.83500
zoomBox -18.72500 14.67300 32.83400 60.68200
zoomBox -26.35600 7.94200 45.00900 71.62400
pan 18.04900 21.89500
zoomBox -80.85500 -36.47700 79.98500 107.04800
zoomBox -0.93300 2.30500 59.72900 56.43700
zoomBox 30.13500 16.76100 53.01600 37.17900
zoomBox 42.18500 21.03000 50.81600 28.73200
zoomBox 37.02800 18.66200 53.56300 33.41700
zoomBox 34.15300 24.82800 53.60600 42.18700
pan -3.65700 -9.70200
pan -4.76900 -3.21900
zoomBox 25.96500 29.43500 48.85200 49.85800
zoomBox 16.07000 22.34500 59.91500 61.47000
zoomBox 13.39000 17.85900 64.97300 63.88900
pan -16.05700 4.66900
zoomBox -8.31100 12.95800 52.37500 67.11100
zoomBox -14.96500 6.97100 56.43100 70.68100
pan 2.59300 18.60200
zoomBox -20.10200 -3.70100 63.89400 71.25300
pan 3.26900 15.20200
zoomBox -82.44200 -94.55400 140.27300 104.18500
fit
timeDesign -postRoute -hold
timeDesign -postRoute -setup
checkPlace
verify_connectivity
selectWire 22.5520 31.2480 22.5960 33.7220 5 FE_PHN1799_sh_sync_inst_n226
deselectAll
uiSetTool ruler
uiSetTool select
verify_drc
ecoRoute -fixDRC
ecoRoute -fix_Drc
verify_drc
ecoRoute -fix_Drc
ecoRoute -target
verify_drc
setLayerPreference violation -isVisible 1
violationBrowser -all -no_display_false -displayByLayer
violationBrowser -all -no_display_false -displayByLayer
verify_connectivity
violationBrowser -all -no_display_false -displayByLayer
verifyWellAntenna
violationBrowser -all -no_display_false -displayByLayer
zoomBox 1.06200 24.66200 44.81800 63.70800
zoomBox 3.76900 29.25900 40.96200 62.44800
zoomBox 7.88100 37.83900 30.72400 58.22300
zoomBox 8.86300 39.88700 28.28000 57.21400
zoomBox 9.69700 41.62800 26.20200 56.35600
zoomBox 10.40700 43.10800 24.43600 55.62700
zoomBox 11.01000 44.36600 22.93500 55.00700
zoomBox 11.52300 45.43500 21.65900 54.48000
zoomBox 11.95900 46.34400 20.57400 54.03200
zoomBox 12.32900 47.11600 19.65200 53.65100
zoomBox 3.76100 29.25000 40.96500 62.44900
zoomBox -9.61000 1.35900 74.24000 76.18200
violationBrowserClose
is_innovus_plus
setLayerPreference violation -isVisible 1
violationBrowser -all -no_display_false -displayByLayer
zoomBox 22.662 41.678 23.708 42.705
verify_connectivity
violationBrowser -all -no_display_false -displayByLayer
reportCongestion -overflow
zoomBox 22.88900 41.82200 23.59800 42.45500
zoomBox 22.95700 41.85800 23.56000 42.39600
zoomBox 22.71300 41.72800 23.69600 42.60500
zoomBox 22.31300 41.51700 23.91600 42.94700
zoomBox 21.66200 41.16800 24.27300 43.49800
zoomBox 21.35000 40.98500 24.42200 43.72600
zoomBox 20.45400 40.47700 24.70600 44.27100
zoomBox 20.94400 40.80400 24.55900 44.03000
zoomBox 18.37600 39.11000 25.30300 45.29100
zoomBox 17.40100 38.47700 25.55000 45.74900
zoomBox 16.28000 36.87700 27.55900 46.94200
zoomBox 15.77400 35.86000 29.04300 47.70100
zoomBox 16.70900 37.75000 26.29700 46.30600
zoomBox 18.36300 39.20900 25.29100 45.39100
zoomBox 16.57100 36.79400 27.85200 46.86100
zoomBox 18.81400 39.85700 24.70400 45.11300
zoomBox 19.75900 41.15000 23.37800 44.37900
zoomBox 18.37600 39.26500 25.31100 45.45300
zoomBox 16.55000 36.79400 27.84300 46.87100
zoomBox 12.19000 30.93200 33.82500 50.23800
zoomBox 6.42900 23.20200 41.65900 54.63900
zoomBox -3.01800 10.55800 54.34900 61.74900
zoomBox -12.47800 -2.04600 66.92300 68.80700
zoomBox -7.34900 4.78200 60.14200 65.00700
zoomBox -11.80500 -7.72500 81.60800 75.63200
zoomBox -8.49800 -1.74600 70.90400 69.10800
zoomBox -5.68700 2.99600 61.80500 63.22200
zoomBox -0.05400 9.73200 57.31400 60.92400
zoomBox 11.72500 21.49200 53.17400 58.47900
zoomBox 22.45000 31.53200 47.90500 54.24700
zoomBox 27.18600 35.99400 45.57800 52.40600
zoomBox 28.94300 37.30700 44.57600 51.25700
zoomBox 23.38900 32.97400 48.84400 55.68900
zoomBox 10.20700 22.60500 58.97100 66.11900
zoomBox -0.38400 14.27300 67.10900 74.50000
zoomBox 10.86900 25.11000 52.31900 62.09800
zoomBox 13.50600 27.72300 48.73900 59.16300
zoomBox -16.62100 7.63800 50.87300 67.86600
zoomBox -12.68200 13.14000 44.68800 64.33400
zoomBox -9.32300 17.86100 39.44200 61.37600
zoomBox -24.62400 5.02400 54.78200 75.88200
zoomBox 26.61300 39.82900 37.90900 49.90900
zoomBox 27.13300 41.20900 36.73500 49.77700
zoomBox 27.97400 43.34600 34.91200 49.53700
zoomBox 25.95400 38.25300 39.24600 50.11400
zoomBox 24.33100 34.16100 42.72900 50.57800
zoomBox 23.29900 31.54900 44.94400 50.86400
zoomBox 22.08500 28.47700 47.55000 51.20100
setDesignMode --help
setDesignMode -help
zoomBox 18.76100 22.66700 54.00700 54.11900
zoomBox 16.64600 18.89100 58.11300 55.89400
zoomBox 14.15900 14.44900 62.94400 57.98200
pan -11.00900 -4.07600
pan -3.67000 2.69400
pan -3.54000 1.13500
zoomBox -4.06000 0.61500 53.33400 51.83000
zoomBox -7.79100 -4.08900 59.73200 56.16500
pan 0.35000 2.82600
zoomBox -3.76300 -0.09100 53.63200 51.12500
getDesignMode
setDesignMode -congEffort high
setDesignMode -flowEffort extreme
saveDesign TOPv5
