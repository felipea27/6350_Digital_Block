#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Mon Apr 21 12:06:48 2025                
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
set init_gnd_net gnd
set init_lef_file {/tech/gf/GF_22nm/PDK/22FDX-PLUS/V1.0_2.5/PlaceRoute/Innovus/Techfiles/10M_2Mx_5Cx_1Jx_2Qx_LB/22FDSOI_10M_2Mx_5Cx_1Jx_2Qx_LB_116cpp_tech.lef /tech/gf/GF_22nm/PDK/22FDX-PLUS/V1.0_2.5/PlaceRoute/Innovus/Techfiles/22fdsoi_standard_site.lef /tech/gf/GF_22nm/IP/synopsys/v-logic_gf22nspslogl24edl116f/DesignWare_logic_libs/globalfoundaries22nhsp/24hd116/edl/svt/3.00a/lef/5.8/gf22nspslogl24edl116f.lef}
set init_design_settop 0
set init_verilog ../../dc/TOP/TOP.nl.v
set init_mmmc_file ../scripts/mmmc_setup.tcl
set init_pwr_net vdd
init_design
getIoFlowFlag
setIoFlowFlag 0
floorPlan -site GF22_DST -s 50 50 2 2 2 2
uiSetTool select
getIoFlowFlag
fit
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
addRing -nets {} -type core_rings -follow core -layer {top M1 bottom M1 left M2 right M2} -width {top 0.4 bottom 0.4 left 0.4 right 0.4} -spacing {top 0.4 bottom 0.4 left 0.4 right 0.4} -offset {top 0.4 bottom 0.4 left 0.4 right 0.4} -center 0 -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None
clearGlobalNets
globalNetConnect vdd -type pgpin -pin VDD -instanceBasename * -hierarchicalInstance {}
globalNetConnect gnd -type pgpin -pin VSS -instanceBasename * -hierarchicalInstance {}
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer LB -stacked_via_bottom_layer M1 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {vdd gnd} -type core_rings -follow core -layer {top M1 bottom M1 left M2 right M2} -width {top 0.4 bottom 0.4 left 0.4 right 0.4} -spacing {top 0.4 bottom 0.4 left 0.4 right 0.4} -offset {top 0.4 bottom 0.4 left 0.4 right 0.4} -center 0 -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None
setSrouteMode -viaConnectToShape { noshape }
sroute -connect { blockPin padPin padRing corePin floatingStripe } -layerChangeRange { M1(1) LB(11) } -blockPinTarget { nearestTarget } -padPinPortConnect { allPort oneGeom } -padPinTarget { nearestTarget } -corePinTarget { firstAfterRowEnd } -floatingStripeTarget { blockring padring ring stripe ringpin blockpin followpin } -allowJogging 1 -crossoverViaLayerRange { M1(1) LB(11) } -nets { vdd gnd } -allowLayerChange 1 -blockPin useLef -targetViaLayerRange { M1(1) LB(11) }
getMultiCpuUsage -localCpu
get_verify_drc_mode -disable_rules -quiet
get_verify_drc_mode -quiet -area
get_verify_drc_mode -quiet -layer_range
get_verify_drc_mode -check_ndr_spacing -quiet
get_verify_drc_mode -check_only -quiet
get_verify_drc_mode -check_same_via_cell -quiet
get_verify_drc_mode -exclude_pg_net -quiet
get_verify_drc_mode -ignore_trial_route -quiet
get_verify_drc_mode -max_wrong_way_halo -quiet
get_verify_drc_mode -use_min_spacing_on_block_obs -quiet
get_verify_drc_mode -limit -quiet
set_verify_drc_mode -disable_rules {} -check_ndr_spacing auto -check_only default -check_same_via_cell true -exclude_pg_net false -ignore_trial_route false -ignore_cell_blockage false -use_min_spacing_on_block_obs auto -report TOP.drc.rpt -limit 1000
verify_drc
set_verify_drc_mode -area {0 0 0 0}
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -prePlace -pathReports -drvReports -slackReports -numPaths 50 -prefix TOP_prePlace -outDir timingReports
zoomBox -0.49300 6.76500 40.38700 43.24400
zoomBox 0.47800 10.34100 30.01400 36.69700
zoomBox 1.13700 12.93400 22.47700 31.97700
zoomBox 1.39300 13.94700 19.53300 30.13400
zoomBox 1.79800 15.54000 14.90400 27.23500
zoomBox 2.20400 17.14000 10.25300 24.32300
zoomBox 2.46900 18.17000 7.41200 22.58100
zoomBox 2.53200 18.41600 6.73400 22.16600
zoomBox 2.70200 19.08200 4.89700 21.04100
zoomBox 2.72900 19.19100 4.59600 20.85700
pan -1.65900 16.42800
zoomBox 0.74900 19.04200 2.94500 21.00200
pan -0.85500 18.25800
zoomBox 0.25500 19.37700 2.06200 20.65000
zoomBox 0.38500 19.55300 1.49600 20.33600
zoomBox 0.12500 19.31400 2.25600 20.81600
zoomBox -0.36800 18.85900 3.71500 21.73600
zoomBox -1.66300 17.65800 7.54100 24.14400
zoomBox -4.57900 14.95300 16.16600 29.57300
zoomBox -7.87200 11.89900 25.90800 35.70500
zoomBox -15.68900 4.65200 49.02400 50.25800
pan 10.39900 44.71000
zoomBox -2.31100 29.42500 52.69500 68.19000
pan 2.66200 16.08000
zoomBox -5.19200 4.95400 70.94100 58.60800
pan -1.47400 3.58700
zoomBox -10.75000 -6.27400 78.81800 56.84800
zoomBox -15.55500 -11.76800 89.82000 62.49400
pan -4.38600 4.19500
setPlaceMode -fp false
place_design
saveDesign TOPv1 -tcon
pan 3.36700 8.27500
zoomBox -5.56300 -1.36300 70.57100 52.29200
zoomBox 1.14500 5.36600 56.15200 44.13200
zoomBox 3.76500 7.99400 50.52100 40.94500
zoomBox 3.76300 7.99200 50.52200 40.94500
zoomBox 7.82700 11.84800 41.61000 35.65600
zoomBox 9.60200 14.54100 34.01000 31.74200
zoomBox 10.71600 16.51800 28.35100 28.94600
zoomBox 11.48700 17.31700 26.47700 27.88100
zoomBox 12.54200 18.56500 23.37300 26.19800
zoomBox 12.80500 19.13300 22.01100 25.62100
zoomBox 12.95100 19.41500 20.77700 24.93000
zoomBox 13.05100 19.67400 19.70300 24.36200
zoomBox 13.13500 19.89500 18.79000 23.88000
zoomBox 13.23200 20.08200 18.03900 23.47000
zoomBox 13.56700 20.35200 17.04100 22.80000
zoomBox 13.69900 20.45700 16.65200 22.53800
zoomBox 13.81100 20.54600 16.32100 22.31500
zoomBox 13.58000 20.34700 17.05500 22.79600
zoomBox 13.43300 20.22000 17.52200 23.10200
zoomBox 12.81600 19.69200 19.47700 24.38600
zoomBox 12.20400 19.16700 21.42300 25.66400
pan 4.05100 5.50000
zoomBox 16.95800 17.86500 24.79400 23.38700
zoomBox 17.55500 18.00100 24.21600 22.69500
zoomBox 18.06200 18.11600 23.72400 22.10600
zoomBox 18.36500 18.18600 23.17800 21.57800
zoomBox 18.62300 18.24700 22.71400 21.13000
zoomBox 18.84200 18.29900 22.32000 20.75000
zoomBox 19.17700 18.40600 21.69000 20.17700
zoomBox 19.40400 18.49200 21.22000 19.77200
zoomBox 19.49200 18.52600 21.03600 19.61400
zoomBox 19.56500 18.55500 20.87800 19.48000
zoomBox 19.62700 18.58000 20.74300 19.36600
zoomBox 19.72100 18.62000 20.52700 19.18800
zoomBox 19.42000 18.48600 21.23800 19.76700
zoomBox 19.08000 18.33400 22.04100 20.42100
zoomBox 18.92400 18.26500 22.40800 20.72000
zoomBox 18.27200 17.97400 23.94600 21.97300
zoomBox 17.97400 17.84100 24.65000 22.54600
zoomBox 16.72700 17.28500 27.59800 24.94600
pan 5.69300 -1.21000
pan 3.94600 -7.78700
get_verify_drc_mode -disable_rules -quiet
get_verify_drc_mode -quiet -area
get_verify_drc_mode -quiet -layer_range
get_verify_drc_mode -check_ndr_spacing -quiet
get_verify_drc_mode -check_only -quiet
get_verify_drc_mode -check_same_via_cell -quiet
get_verify_drc_mode -exclude_pg_net -quiet
get_verify_drc_mode -ignore_trial_route -quiet
get_verify_drc_mode -max_wrong_way_halo -quiet
get_verify_drc_mode -use_min_spacing_on_block_obs -quiet
get_verify_drc_mode -limit -quiet
set_verify_drc_mode -disable_rules {} -check_ndr_spacing auto -check_only default -check_same_via_cell true -exclude_pg_net false -ignore_trial_route false -ignore_cell_blockage false -use_min_spacing_on_block_obs auto -report TOP.drc.rpt -limit 1000
verify_drc
set_verify_drc_mode -area {0 0 0 0}
zoomBox 25.06400 13.39600 40.11000 24.00000
zoomBox 24.23500 12.60900 41.93800 25.08500
pan -1.30300 -11.55700
zoomBox 18.60100 9.40300 47.43000 29.72000
zoomBox 16.62100 7.90500 50.53800 31.80800
zoomBox 8.32800 1.63400 63.55500 40.55500
zoomBox -3.63200 -6.79800 86.29600 56.57800
pan -7.31300 -3.94900
zoomBox -12.17400 -10.86900 93.62400 63.69100
setOptMode -fixCap true -fixTran true -fixFanoutLoad false
optDesign -preCTS
saveDesign TOPv1 -tcon
zoomBox -24.40800 -26.56900 122.02500 76.62900
zoomBox 0.18700 3.85400 76.62800 57.72500
zoomBox 16.87100 24.51300 45.70200 44.83100
zoomBox 15.10800 22.32600 49.02700 46.23000
pan -6.53400 8.17100
zoomBox 13.18400 26.97800 37.69100 44.24900
zoomBox 18.54700 31.40000 31.34000 40.41600
zoomBox 20.16400 32.73000 29.40800 39.24500
zoomBox 20.78400 33.22600 28.64200 38.76400
zoomBox 21.80800 34.00200 27.48700 38.00400
panCenter 24.15000 36.04100
pan -0.73700 12.47700
zoomBox 21.61000 34.50400 25.09900 36.96300
zoomBox 22.06800 34.82000 24.58900 36.59700
zoomBox 20.56800 33.78500 26.25400 37.79200
zoomBox 17.19200 31.45200 30.00800 40.48400
zoomBox 11.63400 27.61100 36.18900 44.91600
zoomBox 0.98900 20.25300 48.03000 53.40500
zoomBox -8.09000 14.53200 57.02100 60.41900
zoomBox -29.71600 2.80800 76.30900 77.52800
pan 8.00600 21.02800
zoomBox -7.21300 -0.71400 69.39100 53.27200
