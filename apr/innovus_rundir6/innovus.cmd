#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Thu May 29 16:40:34 2025                
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
setDesignMode -congEffort high -flowEffort -extreme
setDesignMode -process 22
setDesignMode -congEffort high -flowEffort extreme
set_message -id IMPLF-200 -suppress
set_message -id IMPLF-201 -suppress
set_message -id IMPFP-3961 -suppress
set_message -id IMPSP-9025 -suppress
set init_gnd_net gnd
set init_lef_file {/tech/gf/GF_22nm/PDK/22FDX-PLUS/V1.0_2.5/PlaceRoute/Innovus/Techfiles/10M_2Mx_5Cx_1Jx_2Qx_LB/22FDSOI_10M_2Mx_5Cx_1Jx_2Qx_LB_116cpp_tech.lef /tech/gf/GF_22nm/PDK/22FDX-PLUS/V1.0_2.5/PlaceRoute/Innovus/Techfiles/22fdsoi_standard_site.lef /tech/gf/GF_22nm/IP/synopsys/v-logic_gf22nspslogl24edl116f/DesignWare_logic_libs/globalfoundaries22nhsp/24hd116/edl/svt/3.00a/lef/5.8/gf22nspslogl24edl116f.lef}
set init_design_settop 0
set init_verilog ../../dc/TOP/TOP.v
set init_mmmc_file ../scripts/mmmc_setup.tcl
set init_pwr_net vdd
init_design -setup view_slow_mission -hold view_fast_mission
setDesignMode -process 22
setDesignMode -congEffort high -flowEffort extreme
getIoFlowFlag
setIoFlowFlag 0
floorPlan -site GF22_DST -s 50 55 4 4 4 4
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
timeDesign -postRoute -hold
timeDesign -postRoute -setup
verify_drc
routeDesign
man NRIG-1306
setAnalysisMode -help
setAnalysisMode -aocv true
setAnalysisMode -analysisType onChipVariation
routeDesign
verify_drc
timeDesign -postRoute -hold
optDesign -postRoute -hold
timeDesign -postRoute -hold
timeDesign -postRoute -setup
verify_drc
zoomBox -14.27200 -21.78400 93.14800 74.07200
zoomBox -20.55900 -46.79900 128.12000 85.87400
zoomBox -9.77500 -4.11000 67.83600 65.14600
zoomBox -4.14600 18.11800 36.36800 54.27100
zoomBox -1.79400 27.52500 23.08700 49.72800
zoomBox -1.14700 29.69800 20.00300 48.57100
zoomBox -0.36500 31.29900 17.61200 47.34100
zoomBox 1.98100 34.01600 13.02200 43.86800
zoomBox 2.68500 34.54400 12.07000 42.91900
zoomBox 3.79100 35.37800 10.57300 41.43000
zoomBox 4.22300 35.70500 9.98900 40.85000
zoomBox 4.59300 35.98300 9.49400 40.35600
zoomBox 2.50900 34.37200 11.89700 42.74900
zoomBox 1.77400 33.80400 12.81900 43.66000
zoomBox -0.70100 31.40400 17.28500 47.45400
zoomBox -1.53100 29.59400 23.36400 51.80900
zoomBox -1.85100 28.49400 27.43800 54.63000
zoomBox -2.13900 27.13300 32.31800 57.88100
verify_connectivity
ecoRoute -target
verify_drc
ecoRoute -fix_drc
verify_drc
verify_connectivity
checkPlace
pan 8.93800 26.41100
zoomBox 3.68800 20.18900 44.22600 56.36300
zoomBox -0.13500 15.39200 47.55700 57.95000
zoomBox -16.67900 -3.84600 60.97900 65.45200
zoomBox -24.82100 -10.67200 66.54300 70.85600
zoomBox -15.89800 -6.81500 61.76100 62.48400
zoomBox -5.36100 -2.58400 50.74800 47.48500
zoomBox 5.32100 1.80100 39.78100 32.55100
zoomBox 8.35100 3.71100 37.64200 29.84900
zoomBox 11.28600 5.56300 36.18300 27.78000
zoomBox 13.98800 7.26300 35.15100 26.14800
zoomBox 20.07800 11.09700 33.07500 22.69500
zoomBox 23.83100 13.42500 31.81400 20.54900
zoomBox 26.59400 15.09100 30.76300 18.81100
zoomBox 28.35500 16.14000 29.92900 17.54500
zoomBox 28.64700 16.32800 29.78400 17.34300
zoomBox 28.93800 16.53200 29.63700 17.15600
zoomBox 29.19600 16.71000 29.50700 16.98800
zoomBox 29.25300 16.74700 29.47900 16.94900
setLayerPreference violation -isVisible 1
violationBrowser -all -no_display_false -displayByLayer
verify_drc
violationBrowser -all -no_display_false -displayByLayer
zoomBox 35.846 31.87 36.886 32.91
violationBrowserClose
ecoRoute -target
verify_drc
ecoRoute -fix_drc
zoomBox 33.96600 29.98800 38.24500 33.80600
verify_drc
ecoRoute -fix_drc
verify_drc
verify_connectivity
zoomBox 34.72100 31.92600 36.33600 33.36700
zoomBox 34.84800 32.25100 36.01600 33.29300
zoomBox 34.94000 32.48600 35.78400 33.23900
zoomBox 8.54400 10.58500 44.05700 42.27500
zoomBox -63.64900 -49.31100 66.68600 66.99300
zoomBox -48.79000 -37.34300 61.99500 61.51600
zoomBox -8.54300 -4.92600 49.28900 46.68000
zoomBox 16.37800 9.29100 34.91800 25.83500
reportCongestion -hep
reportCongestion -help
reportCongestion -hotspot
reportCongestion -overflow
setLayerPreference violation -isVisible 1
violationBrowser -all -no_display_false -displayByLayer
zoomBox 27.888 31.84 28.927 32.99
zoomBox 28.16700 32.23600 28.58200 32.60600
zoomBox 28.19600 32.26400 28.54900 32.57900
zoomBox 28.22000 32.28700 28.52100 32.55600
zoomBox 28.24100 32.30800 28.49700 32.53600
panPage -1 0
panPage -1 0
panPage 0 -1
panPage 0 -1
panPage 1 0
panPage 1 0
zoomBox 27.97100 31.90700 28.65400 32.51600
zoomBox 27.25800 31.20800 29.07000 32.82500
panPage 1 0
panPage 0 1
panPage 1 0
panPage 1 0
panPage 1 0
panPage 1 0
panPage 0 1
panPage 0 1
panPage 0 -1
zoomBox 30.17700 32.36900 31.48700 33.53800
zoomBox 30.46500 32.64500 31.04700 33.16400
zoomBox 30.42400 32.60600 31.10900 33.21700
zoomBox 30.37600 32.56000 31.18200 33.27900
zoomBox 30.25300 32.44200 31.36900 33.43800
zoomBox 30.17500 32.36700 31.48800 33.53900
zoomBox 30.08300 32.27900 31.62800 33.65800
zoomBox 29.69700 31.90800 32.21500 34.15500
zoomBox 28.04400 30.32500 34.72400 36.28600
zoomBox 27.57600 29.87700 35.43500 36.89000
zoomBox 14.85100 17.69200 54.77000 53.31400
zoomBox 12.05500 15.01500 59.01900 56.92300
panPage 0 1
panPage 0 1
panPage 0 -1
panPage -1 0
panPage -1 0
panPage 1 0
panPage -1 0
zoomBox -3.98500 35.74100 13.73000 51.54900
zoomBox -2.88200 36.48200 12.17600 49.91900
zoomBox 1.31900 39.05800 9.18000 46.07300
zoomBox 2.00700 39.48000 8.68900 45.44300
zoomBox 2.59200 39.83800 8.27200 44.90700
zoomBox 1.31800 39.05600 9.18100 46.07300
zoomBox 0.50700 38.55900 9.75900 46.81500
zoomBox 2.07800 41.03500 5.04600 43.68300
zoomBox 2.18900 41.21000 4.71200 43.46100
zoomBox 2.28400 41.35900 4.42800 43.27200
zoomBox 0.09100 37.90300 10.99200 47.63000
zoomBox -1.22200 31.89100 23.34800 53.81600
zoomBox -24.05400 12.70800 52.59400 81.10500
zoomBox 27.84 31.87 28.88 32.91
zoomBox 27.84 31.87 28.88 32.91
zoomBox 27.84 31.87 28.88 32.91
zoomBox 27.93400 32.01700 28.77600 32.76800
zoomBox 28.04900 32.12500 28.65800 32.66800
zoomBox 28.09400 32.16700 28.61200 32.62900
zoomBox 28.13200 32.20200 28.57300 32.59600
selectMarker 28.3880 32.3400 28.4270 32.4900 2 1 2
deselectAll
selectMarker 28.3400 32.3700 28.3800 32.4100 34 1 41
is_innovus_plus
deselectAll
selectMarker 28.3400 32.3700 28.3800 32.4100 34 1 41
deleteSelectedFromFPlan
violationBrowser -all -no_display_false -displayByLayer
deleteSelectedFromFPlan
selectInst FE_PHC582_SH_EN_DONE
zoomBox 28.16700 32.23000 28.54200 32.56500
zoomBox 28.19700 32.25300 28.51600 32.53800
verify_connectivity
violationBrowser -all -no_display_false -displayByLayer
verify_drc
violationBrowser -all -no_display_false -displayByLayer
deselectAll
selectMarker 28.3400 32.3700 28.3800 32.4100 34 1 41
panCenter 28.35200 32.38100
gui_select -rect {28.35000 32.37400 28.35400 32.31500}
deselectAll
pan 0.00100 4.10800
selectMarker 28.3400 32.3700 28.3800 32.4100 34 1 41
deselectAll
selectVia 28.3190 32.3860 28.3630 32.4940 3 FE_PHN1308_n1038
deselectAll
selectInst U1455
zoomBox 31.438 33.85 32.478 34.855
zoomBox 31.438 33.85 32.478 34.855
zoomBox 31.438 33.85 32.478 34.855
zoomBox 16.356 47.5 17.466 48.54
zoomBox 16.42700 47.58000 17.41800 48.46400
zoomBox 16.49900 47.64400 17.34200 48.39600
zoomBox 16.56100 47.69900 17.27700 48.33800
zoomBox 16.61300 47.74600 17.22200 48.28900
zoomBox 16.69400 47.81900 17.13500 48.21300
zoomBox 16.72500 47.84700 17.10100 48.18300
zoomBox 16.75100 47.87200 17.07200 48.15800
zoomBox 16.77400 47.89200 17.04700 48.13600
setLayerPreference node_layer -isVisible 0
setLayerPreference M1 -isVisible 1
zoomBox 16.70500 47.85900 17.08400 48.19700
zoomBox 16.55100 47.78500 17.16900 48.33600
zoomBox 16.39800 47.71100 17.25400 48.47500
zoomBox 16.55100 47.78500 17.16900 48.33600
zoomBox 16.61100 47.81400 17.13600 48.28200
pan 0.10000 31.21800
setLayerPreference V1 -isVisible 1
setLayerPreference M2 -isVisible 1
deselectAll
selectMarker 16.8560 48.0000 16.9660 48.0400 1 1 6
pan -0.05700 31.13500
zoomBox 16.60900 47.81300 17.22700 48.36400
zoomBox 16.69500 47.86800 17.14200 48.26700
zoomBox 16.72900 47.89000 17.10900 48.22900
deselectAll
selectMarker 16.8560 48.0000 16.9660 48.0400 1 1 6
is_innovus_plus
gui_select -rect {16.92000 48.03200 16.94800 48.00400}
deselectAll
gui_select -rect {16.83000 48.07000 16.99800 47.98500}
is_innovus_plus
is_innovus_plus
deselectAll
selectMarker 16.8560 48.0000 16.9660 48.0400 1 1 6
deselectAll
selectMarker 16.8560 48.0000 16.9660 48.0400 1 1 6
deselectAll
selectMarker 16.8560 48.0000 16.9660 48.0400 1 1 6
deselectAll
selectMarker 16.8560 48.0000 16.9660 48.0400 1 1 6
deselectAll
selectMarker 16.8560 48.0000 16.9660 48.0400 1 1 6
deselectAll
selectMarker 16.8560 48.0000 16.9660 48.0400 1 1 6
deselectAll
selectMarker 16.8560 48.0000 16.9660 48.0400 1 1 6
deselectAll
selectInst U1201
deselectAll
selectInst U1201
deselectAll
selectWire 16.7420 48.0000 17.0860 48.0400 1 n801
deselectAll
selectInst U1201
deselectAll
selectWire 16.8580 47.7400 16.8980 47.9950 2 FE_PHN2020_SPI_OUT_6
deselectAll
selectMarker 16.8560 48.0000 16.9660 48.0400 1 1 6
gui_select -rect {16.92500 48.02000 16.93000 48.06800}
deselectAll
gui_select -rect {16.84600 48.05200 16.98100 47.98600}
is_innovus_plus
gui_select -rect {16.93000 48.02200 16.85800 48.05600}
deselectAll
gui_select -rect {16.82000 48.08300 16.94700 48.07500}
uiSetTool flightline
uiSetTool addPoly
editAddPoly 16.939 48.063
editAddPoly 16.975 48.117
editAddPoly 16.891 48.146
editAddPoly 16.88 48.075
editAddPoly 16.939 47.959
uiSetTool stretchWire
selectInst U1201
deselectAll
selectInst U1201
deselectAll
selectWire 16.7420 48.0000 17.0860 48.0400 1 n801
uiSetTool cutWire
editCutWire -only_visible_wires -line { 16.81 48.025 16.81 47.982 }
editCutWire -only_visible_wires -line { 16.808 47.965 16.808 48.058 }
editCutWire -only_visible_wires -line { 16.803 48.073 16.803 47.978 }
uiSetTool addWire
uiSetTool addVia
editAddVia 16.933 48.121
editAddVia 16.952 48.029
editAddVia 16.995 48.009
pan 0.03900 31.15600
pan 0.03800 31.17900
zoomBox 16.70800 47.81800 17.32800 48.37100
zoomBox 16.62800 47.67100 17.48700 48.43800
pan -0.03600 31.05200
editAddVia 16.771 47.912
editAddVia 16.767 47.914
uiSetTool select
pan -0.03400 31.07500
deselectAll
selectWire 3.9440 48.2500 53.9400 48.3100 1 vdd
deselectAll
uiSetTool cutWire
uiSetTool addVia
editAddVia 16.77 48.29
editAddVia 17.149 47.883
editAddVia 17.007 47.796
is_innovus_plus
is_innovus_plus
uiSetTool addWire
setEditMode -type regular
setEditMode -nets n801
uiSetTool layerBlk
createRouteBlk -box 16.97400 48.05500 17.11200 48.09200
uiSetTool util
queryDensityInBox 16.843 48.093 16.982 48.23
uiSetTool select
pan -0.06700 31.12100
selectWire 16.7420 48.0000 17.0860 48.0400 1 n801
pan -0.02100 31.18200
zoomBox 16.40700 47.63300 17.41900 48.53600
editDelete -selected -layer M1 -status {}
verify_drc
violationBrowser -all -no_display_false -displayByLayer
routeDesign
violationBrowser -all -no_display_false -displayByLayer
zoomBox 13.76400 45.86000 20.87700 52.20700
verify_drc
violationBrowser -all -no_display_false -displayByLayer
ecoRoute -help
ecoRoute -target True
ecoRoute -target -fix_drc
ecoRoute -target True -fix_drc
zoomBox 8.86800 41.72800 24.90300 56.03700
zoomBox 7.31500 40.41800 26.18000 57.25200
zoomBox 3.34000 37.06200 29.45100 60.36200
zoomBox 0.81200 34.92800 31.53100 62.34000
zoomBox -146.33600 -89.26100 152.58700 177.48200
zoomBox -296.51100 -216.00400 276.13400 294.99400
zoomBox -67.94600 -40.93500 88.09500 98.30800
zoomBox -55.10600 -31.09900 77.53000 87.25800
zoomBox -34.91300 -15.63300 60.91700 69.88100
zoomBox 6.12900 8.43400 36.85000 35.84800
zoomBox 9.03400 10.13700 35.14700 33.43900
zoomBox 13.60100 12.81600 32.46800 29.65200
zoomBox 2.71000 6.42900 38.85400 38.68200
zoomBox -1.31100 4.07100 41.21200 42.01600
zoomBox -25.85500 -10.32200 55.60500 62.36900
routeDesign
violationBrowser -all -no_display_false -displayByLayer
setLayerPreference node_layer -isVisible 1
timeDesign -postRoute -hold
timeDesign -postRoute -setup
verify_connectivity
violationBrowser -all -no_display_false -displayByLayer
verify_drc
violationBrowser -all -no_display_false -displayByLayer
ecoRoute -fix_drc
verify_drc
violationBrowser -all -no_display_false -displayByLayer
ecoRoute -fix_drc
verify_drc
violationBrowser -all -no_display_false -displayByLayer
editDelete -help
editDelete -regular_wire_with_drc
verify_drc
violationBrowser -all -no_display_false -displayByLayer
ecoRoute
verify_drc
violationBrowser -all -no_display_false -displayByLayer
ecoRoute -target
verify_drc
violationBrowser -all -no_display_false -displayByLayer
editDelete -regular_wire_with_drc
verify_connectivity
violationBrowser -all -no_display_false -displayByLayer
verify_drc
violationBrowser -all -no_display_false -displayByLayer
getNanoRouteMode
setDesignMode -help
setNanoRouteMode -route_with_timing_driven false -route_detail_search_and_repair true -route_detail_post_route_spread_wire true
routeDesign
violationBrowser -all -no_display_false -displayByLayer
uiSetTool stretchWire
uiSetTool select
uiSetTool copy
verify_connectivity
violationBrowser -all -no_display_false -displayByLayer
verify_drc
violationBrowser -all -no_display_false -displayByLayer
timeDesign -postroute -hold
editDelete -regular_wire_with_drc
verify_drc
violationBrowser -all -no_display_false -displayByLayer
violationBrowserClose
ecoRoute
verify_drc
editDelete -regular_wire_with_drc
verify_drc -fix_drc
ecoRoute -fix_drc
ecoRoute
verify_connectivity
verify_drc
ecoRoute -fix_drc
verify_drc
editDelete -regular_wire_with_drc
ecoRoute
ecoRoute -fix_drc
setNanoRouteMode -route_detail_end_iteration 50
ecoRoute -fix_drc
verify_drc
ecoRoute -fix_drc
editDelete -regular_wire_with_drc
ecoRoute
verify_drc
ecoRoute -fix_drc
verify_drc
verify_connectivity
editDelete -regular_wire_with_drc
setNanoRouteMode -route_detail_end_iteration 5
ecoRoute
setNanoRouteMode -route_detail_end_iteration 50
ecoRoute -fix_drc
verify_drc
verify_connectivity
editDelete -regular_wire_with_drc
globalDetailRoute
ecoRoute -fix_drc
verify_drc
getNanoRouteMode
detailRoute
verify_drc
detailRoute
editDelete -regular_wire_with_drc
detailRoute
verify_connectivity
setNanoRouteMode -route_detail_on_grid_only true_
setNanoRouteMode -route_detail_on_grid_only true
ecoRoute
verify_connectivity
verify_drc
pan 8.03000 31.38100
zoomBox -92.47000 -26.44000 91.12300 137.38900
zoomBox -1.09800 12.35800 57.75900 64.87900
zoomBox 25.90600 23.67300 48.10600 43.48300
zoomBox 35.09900 27.23200 44.95000 36.02300
zoomBox 37.17600 27.99000 44.29400 34.34200
zoomBox 39.25800 28.75500 43.63100 32.65700
zoomBox 36.70100 27.41500 45.08100 34.89300
setNanoRouteMode -route_detail_on_grid_only false
editDelete -type Regular
zoomBox -1.45500 -4.47900 80.10400 68.30000
zoomBox -91.58200 -79.80800 162.83100 147.21700
zoomBox 4.03300 15.25700 46.60800 53.24900
zoomBox 9.36500 20.55800 40.12600 48.00800
zoomBox -13.56700 -2.24100 67.99800 70.54300
zoomBox -20.06400 -8.70100 75.89500 76.92800
setDesignMode -bottom_routing_layer M2
setDesignMode -bottomRoutingLayer M2
setNanoRouteMode -routeWithTimingDriven true
setNanoRouteMode -routeWithSiDriven true
setNanoRouteMode -drouteFixAntenna true
setNanoRouteMode -routeInsertAntennaDiode false
setNanoRouteMode -drouteUseMultiCutViaEffort medium
setNanoRouteMode -route_detail_end_iteration 30
setNanoRouteMode -route_detail_search_and_repair true
setNanoRouteMode -route_detail_post_route_spread_wire true
routeDesign
verify_connectivity
verify_drc
ecoRoute -fix_drc
editDelete -regular_wire_with_drc
verify_drc
ecoRoute
verify_drc
ecoRoute -fix_drc
verify_drc
setNanoRouteMode -route_detail_end_iteration 100
ecoRoute -fix_drc
verify_drc
editDelete -regular_wire_with_drc
zoomBox 0.25000 1.86300 59.18200 54.45100
zoomBox 9.22100 6.52800 51.80100 44.52400
zoomBox 18.23500 11.21600 44.38500 34.55100
zoomBox 20.39200 12.34000 42.62000 32.17500
zoomBox 23.78400 14.10700 39.84400 28.43800
zoomBox 24.50900 14.80100 38.16000 26.98200
zoomBox 25.12500 15.38900 36.72900 25.74400
zoomBox 25.66400 15.84000 35.52800 24.64200
zoomBox 26.51200 16.55000 33.63900 22.91000
zoomBox 27.11900 17.05700 32.27000 21.65300
zoomBox 27.55300 17.42500 31.27600 20.74700
reportCongestion -h
reportCongestion -hotSpot
reportCongestion -overflow
setLayerPreference violation -isVisible 1
violationBrowser -all -no_display_false -displayByLayer
verify_drc
violationBrowser -all -no_display_false -displayByLayer
violationBrowserClose
detailRoute
verify_drc
routeDesign
verify_drc
ecoRoute -fix_drc
verify_drc
setDesignMode -bottom_routing_layer C1
setDesignMode -bottomRoutingLayer C1
editDelete -type Regular
routeDesign
verify_drc
routeDesign
verify_drc
editDelete -help
editDelete -regular_wire_with_drc
routeDesign
verify_drc
setNanoRouteMode -route_detail_end_iteration 30
ecoRoute -fix_drc
verify_drc
getNanoRouteMode
setNanoRouteMode -route_detail_auto_stop false
ecoRoute -fix_drc
verify_drc
editDelete -regular_wire_with_drc
ecoRoute
verify_drc
ecoRoute -fix_drc
verify_drc
setNanoRouteMode -route_detail_end_iteration 100
ecoRoute -fix_drc
verify_drc
ecoRoute -fix_drc
saveDesign TOPv6
