#######################################################
#              
#  Innnovus PnR Flow File                                       
#  Created on Mon May 26 
#  Sergey Sokolovskiy
#  Columbia Universit- BIOEE           
#                                                     
#######################################################

#Start by loading all tech information, verilog file and MMMC file
set TECH_LEF {/tech/gf/GF_22nm/PDK/22FDX-PLUS/V1.0_2.5/PlaceRoute/Innovus/Techfiles/10M_2Mx_5Cx_1Jx_2Qx_LB/22FDSOI_10M_2Mx_5Cx_1Jx_2Qx_LB_116cpp_tech.lef /tech/gf/GF_22nm/PDK/22FDX-PLUS/V1.0_2.5/PlaceRoute/Innovus/Techfiles/22fdsoi_standard_site.lef /tech/gf/GF_22nm/IP/synopsys/v-logic_gf22nspslogl24edl116f/DesignWare_logic_libs/globalfoundaries22nhsp/24hd116/edl/svt/3.00a/lef/5.8/gf22nspslogl24edl116f.lef /tech/gf/GF_22nm/IP/synopsys/v-logic_gf22nspslogl24edf116f/DesignWare_logic_libs/globalfoundaries22nhsp/24hd116/edf/svt/1.03a/lef/5.8/gf22nspslogl24edf116f.lef}


#DO NOT FORGET TO CHANGE THIS LINE
set VERILOG_TOPLEVEL ../../dc/TOP/TOP.nl.v 

set GDS_MAPFILE 	/tech/gf/GF_22nm/PDK/22FDX-PLUS/V1.0_2.5/PlaceRoute/Innovus/Techfiles/10M_2Mx_5Cx_1Jx_2Qx_LB/22FDSOI_10M_2Mx_5Cx_1Jx_2Qx_LB_edi2gds_colored.layermap

set METAL_RULEFILE {/tech/gf/GF_22nm/PDK/22FDX-PLUS/V1.0_2.5/FILLGEN/Pegasus/fill_fdsoi22.enc.pvl}

set MMMC_FILE ../scripts/mmmc_setup.tcl


#set IO_FILE ../scripts/pin_placement.io
set IO_FILE ../scripts/io.tcl


#Silince certain warnings
#antenna diffusion area warning
set_message -id IMPLF-200 -suppress 
set_message -id IMPLF-201 -suppress
#fill cell warning
set_message -id TECHLIB-302 -suppress
#techsite mismatch warnign
set_message -id IMPFP-3961 -suppress
#scan chain ignore
set_message -id IMPSP-9025 -suppress


#Import the Design
set init_gnd_net gnd
set init_lef_file $TECH_LEF
set init_design_settop 0
set init_verilog $VERILOG_TOPLEVEL
set init_mmmc_file $MMMC_FILE
#set init_io_file $IO_FILE
set init_pwr_net vdd
init_design -setup view_slow_mission -hold view_fast_mission 

#Set Design Mode
setDesignMode -process 22
#setDesignMode -congEffort high -flowEffort extreme 
setDesignMode -bottomRoutingLayer C1
setMultiCpuUsage -localCpu max


#Set Floorplanning
floorPlan -site GF22_DST -s 55 55 4 4 4 4
generateTracks

#Pin Assignment
source $IO_FILE


#Connect Global Nets
clearGlobalNets
globalNetConnect vdd -type pgpin -pin VDD -inst * -verbose
globalNetConnect gnd -type pgpin -pin VSS -inst * -verbose
applyGlobalNets


#Create Power Rings and Horizontal Power Strips
addRing -nets {vdd gnd} -layer {top M1 bottom M1 left M2 right M2} -width 1.0 -spacing 0.4 -offset 0.4 
sroute -nets {vdd gnd}
saveDesign floorplan

#------------------------------------------------------------
# Check timing (and generate timing graph for placement)
#------------------------------------------------------------
checkDesign -all
check_timing
timeDesign -preplace -prefix preplace_setup -outDir timingReports

#------------------------------------------------------------
# Add Boundary Cells / EndCap Cells
#------------------------------------------------------------
setEndCapMode -bottomEdge UDB116SVT24_CAPT_1
setEndCapMode -topEdge UDB116SVT24_CAPB_1
setEndCapMode -rightEdge UDB116SVT24_CAPL9_1
setEndCapMode -leftEdge UDB116SVT24_CAPR9_1
setEndCapMode -rightTopCorner UDB116SVT24_CAPBOUCL9_1
setEndCapMode -rightBottomCorner UDB116SVT24_CAPTOUCL9_1
setEndCapMode -leftTopCorner UDB116SVT24_CAPBOUCR9_1
setEndCapMode -leftBottomCorner UDB116SVT24_CAPTOUCR9_1
#setEndCapMode -leftBottomEdge UDB116SVT24_CAPBLINC9_1
#setEndCapMode -leftTopEdge UDB116SVT24_CAPTLINC9_1
#setEndCapMode -rightBottomEdge UDB116SVT24_CAPBRINC9_1
#setEndCapMode -rightTopEdge UDB116SVT24_CAPTRINC9_1
addEndCap

#------------------------------------------------------------
# Add Hi/Low Ties and Tap Wells
#------------------------------------------------------------
addWellTap -cell UDB116SVT24_TAPSS -cellInterval 40 -checkerBoard
#addTieHiLo -cell {UDB116SVT24_TIE0_ECOCT_1 UDB116SVT24_TIE1_ECOCT_1}

#------------------------------------------------------------
# Placement and preCTS optimization
#------------------------------------------------------------
setPlaceMode -place_global_cong_effort high
setPlaceMode -place_global_clock_power_driven true
setPlaceMode -place_global_clock_power_driven_effort high
setPlaceMode -place_detail_check_inst_space_group true
setPlaceMode -place_detail_legalization_inst_gap 1
setPlaceMode -place_detail_use_diffusion_transition_fill true
#setOptMode -reclaimArea true -effort high
place_opt_design

#------------------------------------------------------------
# Checks and reports
#------------------------------------------------------------
checkPlace
reportCongestion -overflow
timeDesign -preCTS -prefix preCTS_setup -outDir timingReports
timeDesign -preCTS -hold -prefix preCTS_hold -outDir timingReports

#------------------------------------------------------------
# Optimize for Power
#------------------------------------------------------------
setDesignMode -powerEffort high
setOptMode -leakageToDynamicRatio 0.5
optPower -preCTS
saveDesign preCTS

#------------------------------------------------------------
# CTS and timing
#------------------------------------------------------------
setOptMode -holdTargetSlack 0.050
clock_opt_design
timeDesign -postCTS -hold -prefix postCTS_hold -outDir timingReports
optPower -postCTS
saveDesign postCTSopt

#------------------------------------------------------------
# Routing Options
#------------------------------------------------------------
setNanoRouteMode -routeWithTimingDriven true 
setNanoRouteMode -routeWithSiDriven true 
setNanoRouteMode -drouteFixAntenna true
setNanoRouteMode -routeInsertAntennaDiode true
setNanoRouteMode -drouteUseMultiCutViaEffort medium
setNanoRouteMode -route_detail_end_iteration 50
setNanoRouteMode -route_detail_search_and_repair true 
setNanoRouteMode -route_detail_post_route_spread_wire true

#------------------------------------------------------------
# Routing, optimization and timing
#------------------------------------------------------------
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

#editDelete -regular_wire_with_drc
#setDesignMode -bottomRoutingLayer M1
#ecoRoute
#ecoRoute -fix_drc

#------------------------------------------------------------
# PostRoute Verifications
#------------------------------------------------------------
verify_connectivity 
verify_drc
reportCongestion -overflow
timeDesign -postRoute -prefix postRoute_setup -outDir timingReports
timeDesign -postRoute -hold -prefix postRoute_hold -outDir timingReports
saveDesign postRoute

#------------------------------------------------------------
# DeCap Cells
#------------------------------------------------------------
addDeCapCellCandidates UDB116SVT24_DCAP_ECOCT_16 16
addDeCapCellCandidates UDB116SVT24_DCAP_ECOCT_12 12
addDeCapCellCandidates UDB116SVT24_DCAP_ECOCT_8 8  
addDeCapCellCandidates UDB116SVT24_DCAP_ECOCT_4 4
addDeCap -totCap 1000 


#------------------------------------------------------------
# Filler Cells
#------------------------------------------------------------
setFillerMode -core {UDB116SVT24_FILL64 UDB116SVT24_FILL32 UDB116SVT24_FILL16 UDB116SVT24_FILL12 UDB116SVT24_FILL8 UDB116SVT24_FILL6 UDB116SVT24_FILL5 UDB116SVT24_FILL4 UDB116SVT24_FILL3 UDB116SVT24_FILL2 UDB116SVT24_FILL1} -diffCellViol true 

addFiller 


#------------------------------------------------------------
# Fixing Remaining DRC Errors
#------------------------------------------------------------
editDelete -regular_wire_with_drc
route_opt_design
ecoRoute -fix_drc
addFiller

editDelete -regular_wire_with_drc
route_opt_design
ecoRoute -fix_drc
addFiller

setDesignMode -bottomRoutingLayer M1
ecoRoute
editDelete -regular_wire_with_drc
ecoRoute

#------------------------------------------------------------
# Add Metal Fill
#------------------------------------------------------------
#add_metal_fill_signoff -fill -layer_map_file $GDS_MAPFILE -rule_file $METAL_RULEFILE 
#-fill_layer {M1 M2 C1 C2 3 C4 C5 JA QA QB LB}                    


#------------------------------------------------------------
# Final Verifications
#------------------------------------------------------------
verify_connectivity 
verify_drc
verify_antenna
verifyEndCap
verifyMetalDensity
timeDesign -postRoute -prefix postRoute_setup -outDir timingReports
timeDesign -postRoute -hold -prefix postRoute_hold -outDir timingReports
saveDesign signoff


#============================================================
# Write Outputs
#============================================================
# Write SDF timing
write_sdf TOP_par.sdf -version 3.0 -min_view view_fast_mission -max_view view_slow_mission -collapse_internal_pins
# Write out placed and routed verilog netlist for LVS
saveNetlist TOP_netlist_no_phys_inst.v -includePowerGround
# Write verilog netlist without power and ground pins for each instance
saveNetlist TOP_netlist_no_pwr.v
# Write out netlist (all components - power and physical only)
saveNetlist TOP_netlist.v -includePowerGround -includePhysicalInst
# StreamOut
streamOut TOP.gds -mapFile ${GDS_MAPFILE}

verify_connectivity
verify_drc



