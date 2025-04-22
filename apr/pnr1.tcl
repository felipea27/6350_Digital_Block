#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Mon Apr 21 
#  Sergey Sokolovskiy
#  Columbia University - BIOEE           
#                                                     
#######################################################
#Set Units
#set_units -time ns -resistance kohm -capacitance pf -voltage v -current ma

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
set init_gnd_net gnd
set init_lef_file {/tech/gf/GF_22nm/PDK/22FDX-PLUS/V1.0_2.5/PlaceRoute/Innovus/Techfiles/10M_2Mx_5Cx_1Jx_2Qx_LB/22FDSOI_10M_2Mx_5Cx_1Jx_2Qx_LB_116cpp_tech.lef /tech/gf/GF_22nm/PDK/22FDX-PLUS/V1.0_2.5/PlaceRoute/Innovus/Techfiles/22fdsoi_standard_site.lef /tech/gf/GF_22nm/IP/synopsys/v-logic_gf22nspslogl24edl116f/DesignWare_logic_libs/globalfoundaries22nhsp/24hd116/edl/svt/3.00a/lef/5.8/gf22nspslogl24edl116f.lef}
set init_design_settop 0
set init_verilog ../../dc/TOP/TOP.nl.v
set init_mmmc_file ../mmmc_setup.tcl
set init_pwr_net vdd
init_design
#Set Floorplanning
getIoFlowFlag
setIoFlowFlag 0
floorPlan -site GF22_DST -s 50 50 2 2 2 2 -flip s
uiSetTool select
getIoFlowFlag
fit
globalNetConnect vdd -type pgpin -pin VDD -instanceBasename * -hierarchicalInstance {}
globalNetConnect gnd -type pgpin -pin VSS -instanceBasename * -hierarchicalInstance {}
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer LB -stacked_via_bottom_layer M1 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets { vdd gnd } -type core_rings -follow core -layer {top M2 bottom M2 left M1 right M1} -width {top 0.4 bottom 0.4 left 0.4 right 0.4} -spacing {top 0.4 bottom 0.4 left 0.4 right 0.4} -offset {top 0.4 bottom 0.4 left 0.4 right 0.4} -center 0 -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None
setSrouteMode -viaConnectToShape { noshape }
sroute -connect { blockPin padPin padRing corePin floatingStripe } -layerChangeRange { M1(1) LB(11) } -blockPinTarget { nearestTarget } -padPinPortConnect { allPort oneGeom } -padPinTarget { nearestTarget } -corePinTarget { firstAfterRowEnd } -floatingStripeTarget { blockring padring ring stripe ringpin blockpin followpin } -allowJogging 1 -crossoverViaLayerRange { M1(1) LB(11) } -nets { vdd gnd } -allowLayerChange 1 -blockPin useLef -targetViaLayerRange { M1(1) LB(11) }
getMultiCpuUsage -localCpu
