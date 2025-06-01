##############################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Mon Apr 21 
#  Sergey Sokolovskiy
#  Columbia University - BIOEE           
#                                                     
#######################################################
#Set Units
#set_units -time ns -resistance kohm -capacitance pf -voltage v -current ma


set VERILOG_TOPLEVEL ../../dc/TOP/TOP.nl.v
set GDS_MAPFILE 	/tech/gf/GF_22nm/PDK/22FDX-PLUS/V1.0_2.5/PlaceRoute/Innovus/Techfiles/10M_2Mx_5Cx_1Jx_2Qx_LB/22FDSOI_10M_2Mx_5Cx_1Jx_2Qx_LB_edi2gds_colored.layermap


set_global _enable_mmmc_by_default_flow      $CTE::mmmc_default
suppressMessage ENCEXT-2799
getVersion
win


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
setDesignMode -process 22
set init_gnd_net gnd
set init_lef_file {/tech/gf/GF_22nm/PDK/22FDX-PLUS/V1.0_2.5/PlaceRoute/Innovus/Techfiles/10M_2Mx_5Cx_1Jx_2Qx_LB/22FDSOI_10M_2Mx_5Cx_1Jx_2Qx_LB_116cpp_tech.lef /tech/gf/GF_22nm/PDK/22FDX-PLUS/V1.0_2.5/PlaceRoute/Innovus/Techfiles/22fdsoi_standard_site.lef /tech/gf/GF_22nm/IP/synopsys/v-logic_gf22nspslogl24edl116f/DesignWare_logic_libs/globalfoundaries22nhsp/24hd116/edl/svt/3.00a/lef/5.8/gf22nspslogl24edl116f.lef}
set init_design_settop 0
set init_verilog $VERILOG_TOPLEVEL
set init_mmmc_file ../mmmc_setup.tcl
set init_pwr_net vdd
init_design



#Set Floorplanning
getIoFlowFlag
setIoFlowFlag 0
floorPlan -site GF22_DST -s 100 100 2 2 2 2 -flip s
uiSetTool select
getIoFlowFlag
fit

#Connect Global Nets
clearGlobalNets
globalNetConnect vdd -type pgpin -pin VDD -instanceBasename * -hierarchicalInstance {}
globalNetConnect gnd -type pgpin -pin VSS -instanceBasename * -hierarchicalInstance {}


#Create Power Rings and Horizontal Power Strips 
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 1 -skip_crossing_trunks none -stacked_via_top_layer LB -stacked_via_bottom_layer M1 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {vdd gnd} -type core_rings -follow core -layer {top M2 bottom M2 left M1 right M1} -width {top 0.4 bottom 0.4 left 0.4 right 0.4} -spacing {top 0.4 bottom 0.4 left 0.4 right 0.4} -offset {top 0.4 bottom 0.4 left 0.4 right 0.4} -center 0 -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None

#------------------------------------------------------------
# Check timing (and generate timing graph for placement)
#------------------------------------------------------------
# Sanity check
checkDesign -all
check_timing

timeDesign -preplace -prefix preplace_setup -outDir timingReports
timeDesign -preplace -hold -prefix preplace_hold -outDir timingReports

#============================================================
# Placement
#============================================================
#------------------------------------------------------------
# Placement and preCTS optimization
#------------------------------------------------------------
setDesignMode -bottomRoutingLayer M1 -topRoutingLayer C1
setPlaceMode -place_global_cong_effort high
setPlaceMode -place_global_clock_power_driven true
setPlaceMode -place_global_clock_power_driven_effort high
setOptMode -reclaimArea true -effort high
place_opt_design

#------------------------------------------------------------
# Checks and reports
#------------------------------------------------------------
#addTieHiLo -cell $TOP -prefix TIE
checkPlace checkPlace.rpt
reportCongestion -overflow
timeDesign -preCTS -prefix preCTS_setup -outDir timingReports
timeDesign -preCTS -hold -prefix preCTS_hold -outDir timingReports

#------------------------------------------------------------
# Optimize for Power
#------------------------------------------------------------
setDesignMode -powerEffort high
setOptMode -leakageToDynamicRatio 0.5
optPower -preCTS
saveDesign preCTS.inn

#------------------------------------------------------------
# Power Routing with SRoute
#------------------------------------------------------------
setSrouteMode -viaConnectToShape { noshape }
sroute -connect { corePin } -layerChangeRange { M1(1) C2(4) } -blockPinTarget { nearestTarget } -corePinTarget { firstAfterRowEnd } -allowJogging 1 -crossoverViaLayerRange { M1(1) C4(4) } -nets { vdd gnd } -allowLayerChange 1 -targetViaLayerRange { M1(1) C4(4) }

#============================================================
# Clock tree synthesis
#============================================================
setOptMode -holdTargetSlack 0.050
#------------------------------------------------------------
# Create Clock Tree Specification
#------------------------------------------------------------
create_ccopt_clock_tree_spec -file ccopt.spec
source ccopt.spec

#------------------------------------------------------------
# CTS and timing
#------------------------------------------------------------
clock_opt_design
timeDesign -postCTS -hold -prefix postCTS_hold -outDir timingReports
optPower -postCTS
saveDesign postCTSopt.inn

#============================================================
# Detail Routing
#============================================================

#------------------------------------------------------------
# Routing Options
#------------------------------------------------------------
setNanoRouteMode -routeWithTimingDriven true 
setNanoRouteMode -routeWithSiDriven true 
setNanoRouteMode -drouteFixAntenna true
setNanoRouteMode -routeInsertAntennaDiode false
setNanoRouteMode -drouteUseMultiCutViaEffort medium
setNanoRouteMode -quiet -drouteEndIteration 30

d

