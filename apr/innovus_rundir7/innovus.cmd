#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Wed Jun  4 23:08:50 2025                
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
set_message -id IMPLF-200 -suppress
set_message -id IMPLF-201 -suppress
set_message -id TECHLIB-302 -suppress
set_message -id IMPFP-3961 -suppress
set_message -id IMPSP-9025 -suppress
set init_gnd_net gnd
set init_lef_file {/tech/gf/GF_22nm/PDK/22FDX-PLUS/V1.0_2.5/PlaceRoute/Innovus/Techfiles/10M_2Mx_5Cx_1Jx_2Qx_LB/22FDSOI_10M_2Mx_5Cx_1Jx_2Qx_LB_116cpp_tech.lef /tech/gf/GF_22nm/PDK/22FDX-PLUS/V1.0_2.5/PlaceRoute/Innovus/Techfiles/22fdsoi_standard_site.lef /tech/gf/GF_22nm/IP/synopsys/v-logic_gf22nspslogl24edl116f/DesignWare_logic_libs/globalfoundaries22nhsp/24hd116/edl/svt/3.00a/lef/5.8/gf22nspslogl24edl116f.lef /tech/gf/GF_22nm/IP/synopsys/v-logic_gf22nspslogl24edf116f/DesignWare_logic_libs/globalfoundaries22nhsp/24hd116/edf/svt/1.03a/lef/5.8/gf22nspslogl24edf116f.lef}
set init_design_settop 0
set init_verilog ../../dc/TOP/TOP.nl.v
set init_mmmc_file ../scripts/mmmc_setup.tcl
set init_pwr_net vdd
init_design -setup view_slow_mission -hold view_fast_mission
setDesignMode -process 22
setDesignMode -bottomRoutingLayer C1
setMultiCpuUsage -localCpu max
getIoFlowFlag
setIoFlowFlag 0
floorPlan -site GF22_DST -s 50 50 4 4 4 4
uiSetTool select
getIoFlowFlag
fit
clearGlobalNets
globalNetConnect vdd -type pgpin -pin VDD -inst * -verbose
globalNetConnect gnd -type pgpin -pin VSS -inst * -verbose
applyGlobalNets
addRing -nets {vdd gnd} -layer {top M1 bottom M1 left M2 right M2} -width 1.0 -spacing 0.4 -offset 0.4
sroute -nets {vdd gnd}
saveDesign floorplan
checkDesign -all
check_timing
timeDesign -preplace -prefix preplace_setup -outDir timingReports
setEndCapMode -bottomEdge UDB116SVT24_CAPT_1
setEndCapMode -topEdge UDB116SVT24_CAPB_1
setEndCapMode -rightEdge UDB116SVT24_CAPL9_1
setEndCapMode -leftEdge UDB116SVT24_CAPR9_1
setEndCapMode -rightTopCorner UDB116SVT24_CAPBOUCL9_1
setEndCapMode -rightBottomCorner UDB116SVT24_CAPTOUCL9_1
setEndCapMode -leftTopCorner UDB116SVT24_CAPBOUCR9_1
setEndCapMode -leftBottomCorner UDB116SVT24_CAPTOUCR9_1
addEndCap
addWellTap -cell UDB116SVT24_TAPSS -cellInterval 40 -checkerBoard
setPlaceMode -place_global_cong_effort high
setPlaceMode -place_global_clock_power_driven true
setPlaceMode -place_global_clock_power_driven_effort high
setPlaceMode -placeIOPins true -checkRoute true
setPlaceMode -place_detail_check_inst_space_group true
setPlaceMode -place_detail_legalization_inst_gap 1
setPlaceMode -place_detail_use_diffusion_transition_fill true
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
verify_connectivity
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
setFillerMode -core {UDB116SVT24_FILL64 UDB116SVT24_FILL32 UDB116SVT24_FILL16 UDB116SVT24_FILL12 UDB116SVT24_FILL8 UDB116SVT24_FILL6 UDB116SVT24_FILL5 UDB116SVT24_FILL4 UDB116SVT24_FILL3 UDB116SVT24_FILL2 UDB116SVT24_FILL1} -diffCellViol true
addFiller
editDelete -regular_wire_with_drc
route_opt_design
ecoRoute -fix_drc
addFiller
editDelete -regular_wire_with_drc
route_opt_design
ecoRoute -fix_drc
addFiller
verify_connectivity
verify_drc
verify_antenna
verifyEndCap
verifyMetalDensity
timeDesign -postRoute -prefix postRoute_setup -outDir timingReports
timeDesign -postRoute -hold -prefix postRoute_hold -outDir timingReports
saveDesign signoff
write_sdf TOP_par.sdf -version 3.0 -min_view view_fast_mission -max_view view_slow_mission -collapse_internal_pins
saveNetlist TOP_netlist_no_phys_inst.v -excludeLeafCell -includePowerGround
saveNetlist TOP_netlist_no_pwr.v -excludeLeafCell
saveNetlist TOP_netlist.v -includePowerGround -includePhysicalInst
streamOut TOP.gds -mapFile /tech/gf/GF_22nm/PDK/22FDX-PLUS/V1.0_2.5/PlaceRoute/Innovus/Techfiles/10M_2Mx_5Cx_1Jx_2Qx_LB/22FDSOI_10M_2Mx_5Cx_1Jx_2Qx_LB_edi2gds_colored.layermap
verify_drc
ecoRoute -fix_drc
verify_drc
reportCongestion -overflow
reportCongestion -hotSpot
verify_connectivity
editDelete -regular_wire_with_drc
detailRoute
ecoRoute -fix_drc
addFiller
verify_drc
verify_connectivity
detailRoute
verify_drc
detailRoute setNanoRouteMode -route_detail_end_iteration 50
detailRoute setNanoRouteMode -route_detail_end_iteration 50
setNanoRouteMode -route_detail_end_iteration 50
detailRoute
editDelete -regular_wire_with_drc
route_opt_design
ecoRoute -fix_drc
addFiller
verify_drc
