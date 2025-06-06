#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Mon Jun  2 21:54:43 2025                
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
set_message -id IMPLF-200 -suppress
set_message -id IMPLF-201 -suppress
set_message -id IMPFP-3961 -suppress
set_message -id IMPSP-9025 -suppress
set init_gnd_net gnd
set init_lef_file {/tech/gf/GF_22nm/PDK/22FDX-PLUS/V1.0_2.5/PlaceRoute/Innovus/Techfiles/10M_2Mx_5Cx_1Jx_2Qx_LB/22FDSOI_10M_2Mx_5Cx_1Jx_2Qx_LB_116cpp_tech.lef /tech/gf/GF_22nm/PDK/22FDX-PLUS/V1.0_2.5/PlaceRoute/Innovus/Techfiles/22fdsoi_standard_site.lef /tech/gf/GF_22nm/IP/synopsys/v-logic_gf22nspslogl24edl116f/DesignWare_logic_libs/globalfoundaries22nhsp/24hd116/edl/svt/3.00a/lef/5.8/gf22nspslogl24edl116f.lef /users/ssokolovskiy/v-logic_gf22nspslogl24edf116f/DesignWare_logic_libs/globalfoundaries22nhsp/24hd116/edf/svt/1.03a/lef/5.8/gf22nspslogl24edf116f.lef}
set init_design_settop 0
set init_verilog ../adder_nl.v
set init_mmmc_file ../mmmc_setup.tcl
set init_pwr_net vdd
init_design -setup view_slow_mission -hold view_fast_mission
setDesignMode -process 22
setDesignMode -congEffort high -flowEffort extreme
setDesignMode -bottomRoutingLayer C1
setMultiCpuUsage -localCpu max
getIoFlowFlag
setIoFlowFlag 0
floorPlan -s 8 8 1 1 1 1
uiSetTool select
getIoFlowFlag
fit
clearGlobalNets
globalNetConnect vdd -type pgpin -pin VDD -inst * -verbose
globalNetConnect gnd -type pgpin -pin VSS -inst * -verbose
applyGlobalNets
addRing -nets {vdd gnd} -layer {top M1 bottom M1 left M2 right M2} -width 0.2 -spacing 0.1 -offset 0.1
sroute -nets {vdd gnd}
saveDesign floorplan
checkDesign -all
check_timing
timeDesign -preplace -prefix preplace_setup -outDir timingReports
setEndCapMode -bottomEdge UDB116SVT24_CAPT_1
setEndCapMode -topEdge UDB116SVT24_CAPB_1
setEndCapMode -rightEdge UDB116SVT24_CAPL9_1
setEndCapMode -leftEdge UDB116SVT24_CAPR9_1
setEndCapMode -leftBottomCorner UDB116SVT24_CAPBOUCL9_1
setEndCapMode -leftTopCorner UDB116SVT24_CAPTOUCL9_1
setEndCapMode -rightBottomCorner UDB116SVT24_CAPBOUCR9_1
setEndCapMode -rightTopCorner UDB116SVT24_CAPTOUCR9_1
addEndCap
zoomBox -0.29000 1.95900 8.54600 9.84400
zoomBox 0.67800 5.01500 5.29200 9.13200
selectInst ENDCAP_3
deselectAll
selectInst ENDCAP_3
deleteFiller
deselectAll
zoomBox 0.38100 4.45500 5.80900 9.29900
zoomBox -0.00300 4.00100 6.38400 9.70000
zoomBox -0.86100 2.94800 7.97900 10.83600
zoomBox -1.42100 2.24600 8.97900 11.52600
pan 1.12000 3.10000
deleteFiller -prefix UDB116SVT24
deleteFiller -prefix UDB116SVT24_CAP
deleteFiller -prefix UDB116SVT24_CAPT_1
deleteFiller -inst UDB116SVT24_CAPT_1
deleteFiller -cell UDB116SVT24_CAPT_1
deleteFiller -cell {UDB116SVT24_CAPT_1 UDB116SVT24_CAPB_1 UDB116SVT24_CAPL9_1 UDB116SVT24_CAPR9_1 UDB116SVT24_CAPBOUCL9_1 UDB116SVT24_CAPTOUCL9_1 UDB116SVT24_CAPBOUCR9_1 UDB116SVT24_CAPTOUCR9_1}
setEndCapMode -bottomEdge UDB116SVT24_CAPT_1
setEndCapMode -topEdge UDB116SVT24_CAPB_1
setEndCapMode -rightEdge UDB116SVT24_CAPL9_1
setEndCapMode -leftEdge UDB116SVT24_CAPR9_1
setEndCapMode -rightBottomCorner UDB116SVT24_CAPBOUCL9_1
setEndCapMode -rightTopCorner UDB116SVT24_CAPTOUCL9_1
setEndCapMode -leftBottomCorner UDB116SVT24_CAPBOUCR9_1
setEndCapMode -leftTopCorner UDB116SVT24_CAPTOUCR9_1
addEndCap
selectInst ENDCAP_3
deselectAll
selectInst ENDCAP_3
deleteFiller -cell {UDB116SVT24_CAPT_1 UDB116SVT24_CAPB_1 UDB116SVT24_CAPL9_1 UDB116SVT24_CAPR9_1 UDB116SVT24_CAPBOUCL9_1 UDB116SVT24_CAPTOUCL9_1 UDB116SVT24_CAPBOUCR9_1 UDB116SVT24_CAPTOUCR9_1}
setEndCapMode -bottomEdge UDB116SVT24_CAPT_1
setEndCapMode -topEdge UDB116SVT24_CAPB_1
setEndCapMode -rightEdge UDB116SVT24_CAPL9_1
setEndCapMode -leftEdge UDB116SVT24_CAPR9_1
setEndCapMode -rightTopCorner UDB116SVT24_CAPBOUCL9_1
setEndCapMode -rightBottomCorner UDB116SVT24_CAPTOUCL9_1
setEndCapMode -leftTopCorner UDB116SVT24_CAPBOUCR9_1
setEndCapMode -leftBottomCorner UDB116SVT24_CAPTOUCR9_1
addEndCap
selectInst ENDCAP_3
deselectAll
selectInst ENDCAP_76
deselectAll
selectWire 1.0440 3.6300 9.0480 3.6900 1 gnd
deselectAll
selectInst ENDCAP_65
zoomBox -2.88600 0.79300 11.50800 13.63700
pan -0.54900 -0.25000
zoomBox -3.43500 -3.13600 13.49900 11.97500
deselectAll
selectInst ENDCAP_2
deselectAll
selectInst ENDCAP_1
deselectAll
selectInst ENDCAP_3
deselectAll
selectInst ENDCAP_4
deselectAll
selectInst ENDCAP_4
deselectAll
selectInst ENDCAP_1
deselectAll
selectInst ENDCAP_1
deselectAll
selectInst ENDCAP_2
deselectAll
selectInst ENDCAP_64
deselectAll
selectWire 1.0440 2.0100 9.0480 2.0700 1 vdd
dbSetStripBoxState [uiGetRecordObjByInfo -objType sWire -rect {1.044 2.01 9.048 2.07} -layer 1 -name vdd] ROUTED
deselectAll
selectInst ENDCAP_56
zoomBox -4.40100 -3.70600 15.52200 14.07200
zoomBox -1.45000 -1.39800 8.95100 7.88300
zoomBox -0.96800 -1.02200 7.87300 6.86700
deselectAll
selectInst ENDCAP_1
is_innovus_plus
is_innovus_plus
deselectAll
selectInst ENDCAP_1
setLayerPreference node_cell -isVisible 1
zoomBox -0.56400 -0.68300 6.95100 6.02300
zoomBox -0.22100 -0.39500 6.16700 5.30500
zoomBox 0.31900 0.05700 4.93500 4.17600
zoomBox 0.70900 0.38300 4.04500 3.36000
zoomBox 0.53300 0.15000 4.45800 3.65200
pan 0.22900 1.66800
pan -0.22400 3.58200
pan -0.13300 6.02500
pan 0.26400 4.68700
pan -0.08100 3.40500
pan 0.13700 2.25400
pan 0.01000 0.71200
pan -0.12200 -0.61100
zoomBox 0.80300 0.40400 3.64000 2.93600
zoomBox 0.45800 -0.01000 5.08000 4.11400
pan 1.86400 -0.35400
pan 2.46400 -2.30200
pan 1.88200 -4.65200
zoomBox 7.10500 0.50400 10.44600 3.48500
zoomBox 7.41500 0.76800 9.82900 2.92200
zoomBox 7.53300 0.87100 9.58500 2.70200
zoomBox 7.82700 1.20500 8.73900 2.01900
zoomBox 7.52800 0.87200 9.58500 2.70800
zoomBox 7.43200 0.76600 9.85300 2.92600
zoomBox 7.32100 0.64200 10.16900 3.18300
pan -0.20700 -4.88000
pan -0.40200 -3.11400
pan 0.48800 -0.89400
pan -0.47300 -1.03200
addWellTap -cell UDB116SVT24_TAPSS -cellInterval 100
deselectAll
zoomBox 6.37900 5.93400 10.32100 9.45200
zoomBox 6.23400 5.79000 10.87100 9.92800
pan -2.58000 -1.33400
pan -2.03300 0.27200
pan -1.55100 2.19700
zoomBox -0.45300 3.54700 5.00300 8.41600
pan 1.33100 3.61700
pan -0.74300 0.19800
pan -0.08500 -0.53100
setPlaceMode -place_global_cong_effort high
setPlaceMode -place_global_clock_power_driven true
setPlaceMode -place_global_clock_power_driven_effort high
setPlaceMode -placeIOPins true -checkRoute true
place_opt_design
checkPlace
reportCongestion -overflow
timeDesign -preCTS -prefix preCTS_setup -outDir timingReports
timeDesign -preCTS -hold -prefix preCTS_hold -outDir timingReports
setDesignMode -powerEffort high
setOptMode -leakageToDynamicRatio 0.5
optPower -preCTS
saveDesign preCTS
setOptMode -holdTargetSlack 0.050
clock_opt_design
timeDesign -postCTS -hold -prefix postCTS_hold -outDir timingReports
optPower -postCTS
saveDesign postCTSopt
setNanoRouteMode -routeWithTimingDriven true
setNanoRouteMode -routeWithSiDriven true
setNanoRouteMode -drouteFixAntenna true
setNanoRouteMode -routeInsertAntennaDiode true
setNanoRouteMode -drouteUseMultiCutViaEffort medium
setNanoRouteMode -route_detail_end_iteration 50
setNanoRouteMode -route_detail_search_and_repair true
setNanoRouteMode -route_detail_post_route_spread_wire true
setAnalysisMode -analysisType onChipVariation -cppr both
routeDesign
setOptMode -fixHoldAllowSetupTnsDegrade false
optDesign -postRoute -setup -hold -drv
timeDesign -postRoute -prefix postRoute_setup -outDir timingReports
timeDesign -postRoute -hold -prefix postRoute_hold -outDir timingReports
optDesign -postRoute -hold
editDelete -regular_wire_with_drc
setDesignMode -bottomRoutingLayer M2
ecoRoute
ecoRoute -fix_drc
editDelete -regular_wire_with_drc
setDesignMode -bottomRoutingLayer M1
ecoRoute
ecoRoute -fix_drc
verify_drc
reportCongestion -overflow
timeDesign -postRoute -prefix postRoute_setup -outDir timingReports
timeDesign -postRoute -hold -prefix postRoute_hold -outDir timingReports
saveDesign postRoute
addDeCapCellCandidates UDB116SVT24_DCAP_ECOCT_16 16
addDeCapCellCandidates UDB116SVT24_DCAP_ECOCT_12 12
addDeCapCellCandidates UDB116SVT24_DCAP_ECOCT_8 8
addDeCapCellCandidates UDB116SVT24_DCAP_ECOCT_4 4
addDeCap -totCap 1000
setFillerMode -core {UDB116SVT24_FILL64 UDB116SVT24_FILL32 UDB116SVT24_FILL16 UDB116SVT24_FILL8 UDB116SVT24_FILL5 UDB116SVT24_FILL4 UDB116SVT24_FILL3 UDB116SVT24_FILL1 UDB116SVT24_FILL1 } -diffCellViol true -fitGap true
zoomBox -0.45500 -0.99800 5.96400 4.73000
zoomBox -1.05300 -1.70900 6.49900 5.03000
pan 2.17500 1.59700
pan -0.17600 1.44000
zoomBox 1.43300 2.85100 7.85300 8.58000
addFiller
pan -0.54100 1.05100
pan 1.57300 0.77600
zoomBox 2.04400 0.04200 9.59700 6.78200
pan -0.39200 -2.60000
zoomBox 2.69800 0.57800 9.11800 6.30700
zoomBox 2.00700 -0.00200 9.56000 6.73800
pan -0.37200 -0.80400
verify_drc
streamOut adder.gds -mapFile /tech/gf/GF_22nm/PDK/22FDX-PLUS/V1.0_2.5/PlaceRoute/Innovus/Techfiles/10M_2Mx_5Cx_1Jx_2Qx_LB/22FDSOI_10M_2Mx_5Cx_1Jx_2Qx_LB_edi2gds_colored.layermap
zoomBox -0.55000 0.22400 9.90400 9.55300
zoomBox -1.09700 -1.04700 11.20300 9.92900
setDesignMode -help
setDesignMode -node g22
addDeCapCellCandidates */UD*_DCAP_V7_7
addDeCapCellCandidates UDB116SVT24_DCAP_V7_7
specifyCellEdgeSpacing FILL FILL -spacing 0.6
specifyCellEdgeSpacing FILL FILL spacing 0.6
specifyCellEdgeSpacing FILL FILL -spacing 0.6
specifyCellEdgeSpacing FILL FILL -spacing 1
specifyCellEdgeSpacing -help
specifyCellEdgeSpacing FILL FILL 0.6
specifyCellEdgeType -cell UDB116SVT24_FILL1 -right -left -group FILL
specifyCellEdgeType -cell UDB116SVT24_FILL1 -right -left FILL
specifyCellEdgeType -cell UDB116SVT24_FILL1 -right FILL -left FILL
specifyCellEdgeType -cell UDB116SVT24_FILL1 -right FILL
specifyCellEdgeType -cell UDB116SVT24_FILL1 -left FILL
report_cell_edge_type UDB116SVT24_FILL1
report_cell_edge_type -cell UDB116SVT24_FILL1
report_cell_edge_type -cell UDB116SVT24_FSDPSBQM8SS_V2Y4_4
report_cell_edge_type -cell UDB116SVT24_TIEDIN_1
report_cell_edge_type -cell UDB116SVT24_INV1
report_cell_edge_type -cell UDB116SVT24_INV_1
setPlaceMode -place_detail_context_aware_legal required
setPlaceMode -place_detail_legalization_inst_gap 1
setPlaceMode -place_detail_use_diffusion_transition_fill true
