#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Wed May 28 16:32:26 2025                
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
editSplit
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
floorPlan -site GF22_DST -r 1.0 0.05 4 4 4 4
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
zoomBox -3.72400 -0.17600 114.46900 105.29300
zoomBox 4.23200 5.66400 104.69600 95.31300
zoomBox 11.48300 12.79800 96.87800 89.00000
zoomBox 17.68000 18.77900 90.26600 83.55100
zoomBox 34.64500 33.76400 72.53600 67.57600
zoomBox 42.20900 42.15000 61.98900 59.80100
zoomBox 44.62300 45.53100 58.91400 58.28400
zoomBox 45.56500 46.85200 57.71300 57.69200
zoomBox 36.74100 34.49000 68.95400 63.23500
zoomBox 18.98100 9.60600 91.58400 74.39300
zoomBox 51.37500 46.99000 51.37500 46.42500
zoomBox 50.94900 46.30100 51.82600 47.08400
zoomBox 50.32000 45.67100 52.64600 47.74700
zoomBox 48.14900 43.43600 55.41100 49.91600
zoomBox 44.30300 39.65800 60.67100 54.26400
zoomBox 35.35700 30.74000 72.25000 63.66100
zoomBox 20.63400 16.01700 91.30900 79.08400
zoomBox -52.38500 -19.02500 135.00700 148.19400
zoomBox -74.81700 -22.62800 145.64400 174.10000
pan 16.01300 30.45700
zoomBox -40.40400 -36.08200 146.98800 131.13700
zoomBox -24.76400 -29.04600 134.52000 113.09100
zoomBox 8.47800 -13.58100 106.29900 73.70900
zoomBox 16.41400 -9.88900 99.56200 64.30800
verify_drc
verify_connectivity
timeDesign -postRoute -hold
timeDesign -postRoute -setup
optDesign -postRoute -hold
zoomBox -43.61800 -41.86500 143.77500 125.35500
zoomBox -29.65500 -35.41200 129.62900 106.72500
zoomBox -17.78700 -29.92700 117.60500 90.89000
zoomBox -7.67300 -25.26500 107.41100 77.43000
timeDesign -postRoute -setup
verify_connectivity
verify_drc
ecoRoute -fix_drc
zoomBox 11.15800 -7.50600 71.24200 46.11000
verify_drc
ecoRoute -fix_drc
pan -0.12500 -18.78900
zoomBox 5.22900 -10.27200 75.91800 52.80700
verify_drc
ecoRoute -fix_drc
verify_drc
ecoRoute -fix_drc
verify_drc
ecoRoute -fix_drc
verify_drc
setLayerPreference violation -isVisible 1
violationBrowser -all -no_display_false -displayByLayer
zoomBox 62.72 51.56 63.72 53.1
zoomBox 67.128 46.16 68.128 47.7
zoomBox 62.72 51.56 63.72 53.1
zoomBox 62.72 51.56 63.72 53.1
zoomBox 58.08 45.62 59.08 47.16
zoomBox 53.64100 43.02600 59.97400 48.67700
zoomBox 52.65200 42.39600 60.10300 49.04500
zoomBox 49.81600 40.87800 61.94900 51.70500
zoomBox 43.49000 37.53500 66.73300 58.27600
zoomBox 31.37000 31.13000 75.89800 70.86400
zoomBox 15.43700 22.71000 87.94600 87.41300
zoomBox -0.71000 15.39400 99.64900 104.94900
zoomBox -23.15800 5.09500 115.74800 129.04700
pan 0.18000 3.03000
zoomBox -12.03300 -13.72300 106.03700 91.63600
zoomBox -2.68400 -8.30300 97.67600 81.25300
uiSetTool ruler
zoomBox -32.52800 -17.29100 106.37900 106.66200
zoomBox -51.03700 -20.90900 112.38500 124.92000
zoomBox -73.74200 -24.35100 118.51900 147.21300
pan 20.19900 50.13900
violationBrowser -all -no_display_false -displayByLayer
verify_connectivity
violationBrowser -all -no_display_false -displayByLayer
timeDesign -postRoute -setup
timeDesign -postRoute -hold
zoomBox 54.04200 6.72300 115.67700 61.72300
zoomBox 78.30400 13.56200 110.48000 42.27400
zoomBox 96.30700 19.82700 106.62400 29.03300
zoomBox 98.61600 20.61000 106.07100 27.26200
zoomBox 104.25000 22.51800 104.72200 22.93900
zoomBox 103.18900 22.05000 105.22900 23.87000
zoomBox 1.08600 -7.58600 140.74700 117.04000
zoomBox -342.65300 -107.34400 260.33200 430.72800
zoomBox -93.79400 -35.12300 173.75400 203.62300
deleteFiller
verify_drc
violationBrowser -all -no_display_false -displayByLayer
verify_connectivity
violationBrowser -all -no_display_false -displayByLayer
zoomBox -4.31300 2.48500 96.59300 92.52800
pan 11.91000 -17.54500
zoomBox -12.51000 -33.57100 127.15300 91.05700
zoomBox -37.41900 -46.99900 155.88700 125.49700
zoomBox 4.78000 -24.45500 105.68800 65.59000
zoomBox 26.29900 -12.73700 78.97500 34.26800
zoomBox 35.09300 -8.01300 67.44300 20.85400
zoomBox 36.79900 -6.86100 64.29600 17.67600
zoomBox 41.02200 -3.88900 57.91000 11.18100
zoomBox 43.09300 -2.57700 55.29600 8.31200
zoomBox 43.90500 -2.06700 54.27800 7.18900
zoomBox 46.71900 -0.79500 51.32200 3.31200
zoomBox 47.94500 -0.33900 50.34800 1.80500
zoomBox 48.30500 -0.18500 50.04200 1.36500
zoomBox 48.53900 -0.07000 49.79500 1.05100
zoomBox 48.68600 0.01700 49.59400 0.82700
zoomBox 48.74900 0.06700 49.52100 0.75600
zoomBox 48.26400 -0.21700 50.00400 1.33600
zoomBox 47.46200 -0.63700 50.79500 2.33700
zoomBox 46.41500 -1.13500 51.84500 3.71000
pan -0.90100 -47.53600
zoomBox 42.72200 -2.06000 53.12600 7.22400
zoomBox 41.68400 -2.41000 53.92400 8.51200
zoomBox 44.47300 -2.67800 58.87300 10.17200
pan 3.38700 -44.30600
zoomBox 45.39800 -2.30300 57.63900 8.62000
zoomBox 44.06200 -2.65400 58.46300 10.19700
zoomBox 42.78000 -3.04900 59.72200 12.06900
zoomBox 41.28700 -3.49500 61.21900 14.29100
zoomBox 38.96900 -3.94800 62.41900 16.97800
zoomBox 33.39500 -6.21100 65.85300 22.75300
zoomBox 25.71400 -9.56000 70.63900 30.52900
zoomBox 8.17600 -15.34500 81.33000 49.93400
pan 6.92700 1.33800
zoomBox 23.51400 6.29300 85.69500 61.78000
zoomBox 18.51800 -2.34700 91.67300 62.93300
pan 3.41500 -17.82900
zoomBox 24.72300 1.28800 86.90500 56.77600
violationBrowserClose
setLayerPreference violation -isVisible 1
violationBrowser -all -no_display_false -displayByLayer
violationBrowserClose
setLayerPreference violation -isVisible 1
violationBrowser -all -no_display_false -displayByLayer
zoomBox 52.396 35.9 53.396 37.44
zoomBox 54.368 35.9 55.368 37.44
zoomBox 54.948 34.28 55.948 35.82
zoomBox 54.92000 34.55500 55.98000 35.50100
zoomBox 55.10800 34.73900 55.75900 35.32000
zoomBox 54.42300 34.34600 56.15100 35.88800
zoomBox 52.59700 33.30600 57.17800 37.39400
violationBrowserUnMarkFalse -tool CheckPlace -violation {      FE_PHC1861_sh_sync_inst_counter_13  (55.448, 34.78) (55.448, 35.32)  0x7fb1366382c0}
zoomBox 54.948 34.28 55.948 35.82
violationBrowserMarkFalse -tool CheckPlace -violation {      FE_PHC1861_sh_sync_inst_counter_13  (55.448, 34.78) (55.448, 35.32)  0x7fb1366382c0}
zoomBox 53.44 32.66 54.44 34.2
violationBrowserUnMarkFalse -tool CheckPlace -violation {        (53.94, 33.16) (53.94, 33.7)  0x7fb136638200}
zoomBox 53.44 32.66 54.44 34.2
zoomBox 54.368 35.9 55.368 37.44
zoomBox 36.814 47.078 37.86 48.105
zoomBox 36.814 47.078 37.86 48.105
zoomBox 36.814 47.078 37.86 48.105
violationBrowserClose
setLayerPreference violation -isVisible 1
violationBrowser -all -no_display_false -displayByLayer
violationBrowser -all -no_display_false -displayByLayer
clearDrc -help
clearDrc
violationBrowser -all -no_display_false -displayByLayer
violationBrowserClose
verify_drc
setLayerPreference violation -isVisible 1
violationBrowser -all -no_display_false -displayByLayer
violationBrowser -all -no_display_false -displayByLayer
violationBrowserClose
report_design
zoomBox 27.98800 38.79900 46.24700 55.09200
zoomBox -14.04500 14.60000 64.78800 84.94600
zoomBox -23.69800 9.04300 69.04600 91.80300
zoomBox -35.05500 2.50400 74.05600 99.86900
zoomBox -209.61800 -70.08200 130.74300 233.63800
addFiller
verify_drc
pan 83.43500 145.71600
zoomBox -52.19000 -44.00900 156.83500 142.51400
zoomBox -9.77000 -25.43000 118.59800 89.11900
zoomBox 0.31900 -20.98500 109.43200 76.38200
zoomBox 15.79200 -14.33400 94.62700 56.01400
setLayerPreference violation -isVisible 1
violationBrowser -all -no_display_false -displayByLayer
violationBrowser -all -no_display_false -displayByLayer
zoomBox 65.736 33.2 67.316 34.74
is_innovus_plus
violationBrowserClose
zoomBox 65.47300 33.03200 67.50400 34.84400
pan -0.22900 -32.66600
uiSetTool ruler
uiSetTool select
selectMarker 66.2360 33.7000 66.8160 34.2400 -1 12 112
setLayerPreference violation -isVisible 1
violationBrowser -all -no_display_false -displayByLayer
violationBrowser -all -no_display_false -displayByLayer
violationBrowserClose
deselectAll
selectMarker 66.2360 33.7000 66.8160 34.2400 -1 12 112
setLayerPreference violation -isVisible 1
violationBrowser -all -no_display_false -displayByLayer
violationBrowser -all -no_display_false -displayByLayer
violationBrowserClose
is_innovus_plus
pan 0.04500 -32.08900
deselectAll
selectMarker 66.2360 33.7000 66.8160 34.2400 -1 12 112
setLayerPreference violation -isVisible 1
violationBrowser -all -no_display_false -displayByLayer
violationBrowser -all -no_display_false -displayByLayer
deselectAll
selectInst FE_PHC341_SHIFT_OUT_5
deselectAll
selectInst FE_PHC388_sh_sync_inst_counter_6
deselectAll
selectWire 4.0600 34.2100 109.8520 34.2700 1 vdd
deselectAll
selectInst {shift_buf_inst/shift_reg_reg[5]}
deselectAll
selectMarker 66.2360 33.7000 66.8160 34.2400 -1 12 112
checkPlace
violationBrowser -all -no_display_false -displayByLayer
deleteFiller
checkPlace
violationBrowser -all -no_display_false -displayByLayer
addFiller
checkPlace
violationBrowser -all -no_display_false -displayByLayer
deleteFiller
checkPlace -prefix FILLER
addFiller -prefix FILLER
checkPlace
violationBrowser -all -no_display_false -displayByLayer
deleteFiller
addFiller
verify_drc
violationBrowser -all -no_display_false -displayByLayer
checkPlace
violationBrowser -all -no_display_false -displayByLayer
addFiller -fixDRC
violationBrowser -all -no_display_false -displayByLayer
checkPlace
violationBrowser -all -no_display_false -displayByLayer
verify_drc
violationBrowser -all -no_display_false -displayByLayer
ecoRoute -target
verify_drc
violationBrowser -all -no_display_false -displayByLayer
checkPlace
violationBrowser -all -no_display_false -displayByLayer
verify_connectivity
violationBrowser -all -no_display_false -displayByLayer
verifyMetalDensity
violationBrowser -all -no_display_false -displayByLayer
checkPlace
violationBrowser -all -no_display_false -displayByLayer
zoomBox 56.859 39.457 76.735 50.0
zoomBox 60.19800 41.38300 67.69500 48.07300
zoomBox 61.32200 43.24200 64.65000 46.21200
zoomBox 61.63600 44.25100 62.70300 45.20300
zoomBox 61.73400 44.47600 62.29200 44.97400
zoomBox 61.37700 44.15500 62.63600 45.27800
zoomBox 60.31900 43.20500 63.65700 46.18400
pan 1.11300 -16.86700
zoomBox 61.69600 43.65500 64.53300 46.18700
zoomBox 61.92000 43.82700 64.33200 45.97900
zoomBox 62.11400 43.97200 64.16500 45.80200
zoomBox 62.64300 44.36400 63.71400 45.32000
zoomBox 62.81400 44.48300 63.58800 45.17400
zoomBox 62.93700 44.56800 63.49700 45.06800
zoomBox 62.98500 44.60200 63.46100 45.02700
zoomBox 63.03100 44.62800 63.43600 44.98900
zoomBox 62.59900 44.38300 63.67300 45.34100
pan -0.42200 -18.28000
pan -0.57700 -17.86100
pan 0.07200 -17.23200
pan 0.49300 -17.26400
pan 0.48800 -17.75000
pan 0.02800 -18.22800
zoomBox 62.57300 44.36600 63.83600 45.49300
zoomBox 62.44300 44.30400 63.92900 45.63000
setLayerPreference layoutObj -isVisible 1
setLayerPreference node_cell -isVisible 1
zoomBox 61.56700 43.54300 64.91900 46.53400
zoomBox 60.97500 42.99100 65.61500 47.13100
zoomBox 60.59600 42.63800 66.05500 47.50900
zoomBox 59.61600 41.73200 67.17400 48.47600
zoomBox 59.02100 41.12700 67.91300 49.06200
zoomBox 58.33700 40.43900 68.79800 49.77400
zoomBox 54.07100 36.56600 74.11300 54.45000
zoomBox 55.43900 37.79000 72.47500 52.99200
zoomBox 52.43800 35.09000 76.01800 56.13200
zoomBox 45.63300 28.95900 84.03200 63.22400
zoomBox 34.58500 19.10100 97.11300 74.89800
zoomBox 38.87900 22.86000 92.02800 70.28700
zoomBox 48.26800 31.06200 80.90900 60.18900
zoomBox 50.51000 33.01800 78.25500 57.77600
zoomBox 38.88700 22.92800 92.03900 70.35800
pan -2.82600 -18.71700
zoomBox 45.84700 30.40400 78.49000 59.53300
zoomBox 51.98800 36.15800 72.03500 54.04700
zoomBox 53.46200 37.51500 70.50200 52.72100
zoomBox 57.33600 39.95300 67.80200 49.29200
setLayerPreference layoutObj -isVisible 0
setLayerPreference node_cell -isVisible 1
setLayerPreference node_cell -isVisible 0
setLayerPreference pinObj -isVisible 1
setLayerPreference cellBlkgObj -isVisible 1
setLayerPreference cellBlkgObj -isVisible 0
setLayerPreference node_cell -isVisible 1
setLayerPreference node_cell -isVisible 0
setLayerPreference pinObj -isVisible 1
setLayerPreference cellBlkgObj -isVisible 1
zoomBox 55.63600 38.01800 70.12200 50.94500
zoomBox 51.96600 35.58600 72.01600 53.47800
zoomBox 53.92800 36.96000 70.97100 52.16800
zoomBox 59.21100 40.71000 68.10800 48.64900
zoomBox 60.78200 41.85300 67.21000 47.58900
zoomBox 62.23900 43.01700 66.18700 46.54000
zoomBox 63.11900 43.73900 65.54500 45.90400
zoomBox 63.32900 43.90900 65.39200 45.75000
zoomBox 63.78900 44.28000 65.05700 45.41100
setLayerPreference cellBlkgObj -isVisible 0
setLayerPreference node_cell -isVisible 1
setLayerPreference node_cell -isVisible 0
pan -0.75800 -19.59300
pan -0.64800 -18.85800
pan -0.20000 -18.20700
pan -0.02100 -17.96900
pan 0.76300 -17.93900
zoomBox 63.08600 44.52800 63.74900 45.12000
zoomBox 63.13600 44.61600 63.61600 45.04400
zoomBox 63.15600 44.64400 63.56400 45.00800
zoomBox 63.17400 44.66700 63.52100 44.97700
setLayerPreference C2 -isVisible 0
zoomBox 63.15600 44.64500 63.56500 45.01000
zoomBox 63.13500 44.61900 63.61700 45.04900
zoomBox 63.11100 44.58900 63.67800 45.09500
zoomBox 62.98600 44.45800 63.90800 45.28100
zoomBox 62.92800 44.39800 64.01300 45.36600
zoomBox 62.86000 44.32600 64.13700 45.46600
selectInst intadd_0/U7
deselectAll
selectInst intadd_0/U7
deselectAll
selectWire 63.2580 44.8380 64.6520 44.8820 6 FE_PHN1191_sh_sync_inst_interval_sum_9
deselectAll
selectWire 63.2580 44.8380 64.6520 44.8820 6 FE_PHN1191_sh_sync_inst_interval_sum_9
deselectAll
selectInst intadd_0/U7
deselectAll
selectWire 63.2580 44.8380 64.6520 44.8820 6 FE_PHN1191_sh_sync_inst_interval_sum_9
zoomBox 62.03800 43.83700 64.48500 46.02100
deselectAll
selectWire 63.2580 44.8380 64.6520 44.8820 6 FE_PHN1191_sh_sync_inst_interval_sum_9
zoomBox 56.42100 38.03000 73.64000 53.39500
zoomBox 29.72200 10.42000 117.19200 88.47400
zoomBox 48.21400 29.54200 87.02500 64.17500
zoomBox 50.42600 31.82900 83.41600 61.26800
zoomBox 52.30600 33.77400 80.34800 58.79700
zoomBox 53.90400 35.42700 77.74000 56.69700
zoomBox 55.26200 36.83200 75.52300 54.91200
zoomBox 57.39800 39.04100 72.03700 52.10400
zoomBox 60.05600 41.79100 67.69900 48.61100
zoomBox 61.17700 42.94800 65.87100 47.13700
zoomBox 62.97500 44.19600 64.48100 45.54000
deselectAll
selectWire 63.2580 44.8380 64.6520 44.8820 6 FE_PHN1191_sh_sync_inst_interval_sum_9
deselectAll
selectInst intadd_0/U7
deselectAll
selectWire 63.2580 44.8380 64.6520 44.8820 6 FE_PHN1191_sh_sync_inst_interval_sum_9
zoomBox 54.483 18.697 76.135 35.678
uiSetTool flightline
uiSetTool select
setLayerPreference stdCell -isVisible 0
zoomBox 55.26600 19.60700 73.67100 36.03100
zoomBox 56.93400 22.01500 70.23300 33.88200
zoomBox 57.48300 23.02100 68.78700 33.10800
zoomBox 57.93800 23.87800 67.54700 32.45300
zoomBox 58.73200 25.70100 64.63300 30.96700
zoomBox 59.19500 26.83200 62.82100 30.06800
zoomBox 59.59100 27.93900 61.20100 29.37600
zoomBox 59.65300 28.09900 61.02200 29.32100
zoomBox 59.70700 28.25500 60.87100 29.29400
zoomBox 59.63100 28.17900 61.00000 29.40100
zoomBox 59.54100 28.08900 61.15200 29.52700
setLayerPreference stdCell -isVisible 1
pan 1.16200 -31.51200
zoomBox 60.49000 27.85900 62.72100 29.85000
zoomBox 60.35500 27.75100 62.98100 30.09400
zoomBox 60.19600 27.62400 63.28600 30.38100
zoomBox 60.78200 28.09300 62.15400 29.31700
zoomBox 60.85100 28.14900 62.01800 29.19000
zoomBox 60.35100 27.74600 62.98300 30.09500
zoomBox 60.19300 27.61900 63.28900 30.38200
pan 1.07600 -31.65800
zoomBox 60.52300 27.65900 65.56600 32.15900
zoomBox 61.25800 28.52000 64.35500 31.28400
zoomBox 61.90900 29.28100 63.28500 30.50900
zoomBox 61.98700 29.37200 63.15700 30.41600
zoomBox 62.10900 29.51500 62.95500 30.27000
pan -0.24900 -32.58000
deselectAll
selectWire 62.1780 29.8180 62.3720 29.8620 3 FE_PHN2083_SHIFT_OUT_10
deselectAll
selectInst {pkt_reg_inst/pkt_reg_reg[2]}
deselectAll
selectVia 62.0630 29.7760 62.1570 29.8840 5 FE_PHN1850_PKT_LD
is_innovus_plus
zoomBox 61.25700 29.14300 62.88100 30.59200
zoomBox 60.46300 28.63700 63.10800 30.99700
zoomBox 59.16600 27.82300 63.47400 31.66700
zoomBox 58.57100 27.45400 63.64000 31.97700
pan 2.41300 -31.57100
pan 0.62500 -35.19400
pan 0.34200 -38.04800
pan -0.94000 -38.90300
zoomBox 59.83200 21.98600 68.08600 29.35100
zoomBox 59.28800 21.50100 68.99900 30.16700
pan 4.01800 -38.37900
zoomBox 64.38800 21.42100 72.64300 28.78700
zoomBox 67.96300 22.98200 71.62800 26.25200
zoomBox 68.71700 23.42000 71.36500 25.78300
zoomBox 69.67900 23.85400 71.06200 25.08800
zoomBox 70.08500 23.96700 70.93500 24.72500
setEditMode -type regular
zoomBox 56.859 39.457 76.735 50.0
zoomBox 56.859 39.457 76.735 50.0
zoomBox 56.859 39.457 76.735 50.0
setEditMode -nets FE_PHN1191_sh_sync_inst_interval_sum_9
zoomBox 56.09500 34.48600 79.47800 55.35200
zoomBox 55.10900 32.77300 82.62000 57.32200
zoomBox 53.84300 30.53700 86.20900 59.41900
zoomBox 56.27700 34.32700 79.66200 55.19500
zoomBox 58.03100 37.10000 74.92800 52.17800
zoomBox 59.86400 40.74500 68.68500 48.61600
zoomBox 60.16400 41.34500 67.66200 48.03600
zoomBox 61.17900 43.29000 64.50800 46.26100
zoomBox 61.48300 43.88100 63.52800 45.70600
pan 0.96100 -17.67900
zoomBox 61.77500 43.19700 65.10600 46.16900
zoomBox 62.54900 44.00300 64.28800 45.55500
zoomBox 62.68400 44.14300 64.16200 45.46200
zoomBox 62.92000 44.43200 63.82900 45.24300
zoomBox 63.06500 44.61000 63.62300 45.10800
zoomBox 63.13100 44.68900 63.53400 45.04900
setLayerPreference C4 -isVisible 0
setLayerPreference C4 -isVisible 1
setLayerPreference A3 -isVisible 0
setLayerPreference A3 -isVisible 1
setLayerPreference A3 -isVisible 0
setLayerPreference A3 -isVisible 1
setLayerPreference A3 -isVisible 0
setLayerPreference A3 -isVisible 1
setLayerPreference A3 -isVisible 0
setLayerPreference A3 -isVisible 1
setLayerPreference C3 -isVisible 0
setLayerPreference C3 -isVisible 1
setLayerPreference C3 -isVisible 0
setLayerPreference C3 -isVisible 1
setEditMode -layer_horizontal C4
setEditMode -layer_vertical C3
deselectAll
selectMarker 61.8280 44.4260 71.7660 45.0310 -1 3 7
zoomBox 62.89200 44.46700 63.66400 45.15600
zoomBox 62.57700 44.17500 63.83600 45.29800
zoomBox 62.26400 43.88400 64.00700 45.43900
zoomBox 62.06500 43.69900 64.11600 45.52900
zoomBox 61.83100 43.48200 64.24400 45.63500
zoomBox 60.70400 42.57100 64.63300 46.07700
pan 2.74700 -17.71000
pan 2.58900 -20.29900
pan 2.56300 -22.95400
zoomBox 66.55100 41.59700 74.07900 48.31500
zoomBox 67.35200 42.04700 73.75100 47.75700
zoomBox 69.51000 43.26800 72.85200 46.25000
zoomBox 70.65800 44.04000 72.14100 45.36300
zoomBox 70.65700 44.04000 72.14000 45.36300
zoomBox 70.83800 44.12400 72.09800 45.24800
zoomBox 71.15100 44.32200 71.92600 45.01400
zoomBox 71.22600 44.37000 71.88500 44.95800
zoomBox 70.77700 44.08100 72.26400 45.40800
pan -0.11200 -26.69200
zoomBox 69.68300 43.54400 72.53400 46.08800
zoomBox 69.32100 43.34500 72.67500 46.33800
zoomBox 71.25600 44.41000 71.91800 45.00100
zoomBox 70.91500 44.25300 71.99300 45.21500
zoomBox 70.75900 44.18100 72.02800 45.31300
verifyEndCap
violationBrowser -all -no_display_false -displayByLayer
verifyMetalDensity
violationBrowser -all -no_display_false -displayByLayer
verifyACLimit
violationBrowser -all -no_display_false -displayByLayer
saveDesign TOPv4
verify_antenna
violationBrowser -all -no_display_false -displayByLayer
checkPlace
violationBrowser -all -no_display_false -displayByLayer
zoomBox 70.42100 43.75800 72.85300 45.92800
zoomBox 69.52600 42.93100 74.18500 47.08800
zoomBox 67.16200 40.76200 77.66300 50.13300
zoomBox 60.14100 34.30500 87.98900 59.15500
zoomBox 41.46600 17.12300 115.31100 83.01800
zoomBox 3.75800 -17.58300 170.18800 130.93000
zoomBox -21.82800 -32.78300 173.97200 141.93900
pan -73.07600 -54.57200
zoomBox -69.31900 -24.60600 97.11200 123.90800
zoomBox -42.94500 -5.88500 77.30300 101.41800
zoomBox -21.55000 8.21600 65.33000 85.74300
pan 22.76300 22.44200
setLayerPreference node_cell -isVisible 1
pan 12.17000 -9.56100
zoomBox 37.16700 10.00100 90.52300 57.61300
zoomBox 47.07600 18.83400 85.62600 53.23400
zoomBox 54.42600 26.44300 78.10200 47.57000
zoomBox 58.97300 31.16100 73.51400 44.13700
zoomBox 61.76700 34.06900 70.69700 42.03800
