#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Wed May 28 13:28:32 2025                
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
floorPlan -site GF22_DST -s 60 60 4 4 4 4 -r 1.0 0.5
floorPlan -site GF22_DST -r 1.0 0.5 4 4 4 4
uiSetTool select
getIoFlowFlag
fit
clearGlobalNets
globalNetConnect vdd -type pgpin -pin VDD -inst * -verbose
globalNetConnect gnd -type pgpin -pin VSS -inst * -verbose
applyGlobalNets
addRing -nets {vdd gnd} -layer {top M1 bottom M1 left M2 right M2} -width 1.0 -spacing 0.4 -offset 0.4
sroute -nets {vdd gnd}
timeDesign -preplace -hold
zoomBox -9.72400 -10.24900 60.16200 52.11400
zoomBox -13.13200 -15.46400 69.08800 57.90500
zoomBox -17.14100 -21.60000 79.58900 64.71700
zoomBox -13.13300 -15.46600 69.08800 57.90400
zoomBox -9.72600 -10.25100 60.16200 52.11300
zoomBox -2.27600 1.15100 40.64400 39.45100
zoomBox 4.32000 11.24600 23.36500 28.24100
zoomBox 7.59600 16.26100 14.78000 22.67200
zoomBox 8.83100 18.15200 11.54100 20.57000
zoomBox 6.34700 14.34900 18.04800 24.79000
zoomBox -0.53700 3.86300 35.96400 36.43500
zoomBox -13.43500 -15.48800 68.83100 57.92200
zoomBox -6.27000 -5.95300 53.16700 47.08500
setPlaceMode -place_global_cong_effort high
setPlaceMode -place_global_clock_power_driven true
setPlaceMode -place_global_clock_power_driven_effort high
setPlaceMode -placeIOPins true -checkRoute true
place_opt_design
zoomBox -10.29700 -8.83700 59.62900 53.56100
zoomBox -1.09300 -3.06400 41.85100 35.25700
zoomBox 1.10400 -1.68600 37.60700 30.88700
zoomBox 2.97200 -0.51400 33.99900 27.17300
zoomBox 4.56000 0.48200 30.93300 24.01600
zoomBox 5.90900 1.32900 28.32600 21.33300
zoomBox 7.05600 2.04800 26.11100 19.05200
zoomBox 8.03100 2.66000 24.22800 17.11300
zoomBox 9.56400 3.62200 21.26600 14.06400
zoomBox 10.16300 3.99700 20.11000 12.87300
zoomBox 9.56400 3.62100 21.26700 14.06400
zoomBox 2.97000 -0.51600 34.00200 27.17500
zoomBox 1.10200 -1.68800 37.61000 30.89000
zoomBox -3.64500 -4.81600 46.88600 40.27500
pan 1.18000 1.45000
zoomBox 1.46600 9.91800 32.49800 37.60900
zoomBox 6.43000 15.24500 25.48800 32.25100
zoomBox 9.56400 18.45900 21.26900 28.90400
zoomBox 8.68300 17.55600 22.45300 29.84400
zoomBox 1.31700 10.01000 32.35000 37.70200
zoomBox -1.02000 7.61500 35.49000 40.19500
zoomBox -7.81400 2.15900 42.71900 47.25200
pan 3.67100 5.18800
verify_drc
addDeCapCellCandidates UDB116SVT24_DCAP_ECOCT_16 16
addDeCapCellCandidates UDB116SVT24_DCAP_ECOCT_8 8
addDeCapCellCandidates UDB116SVT24_DCAP_ECOCT_4 4
addDeCap -totCap 5000
zoomBox -11.67100 -16.32000 58.27200 46.09300
zoomBox -7.94200 -10.41400 51.50900 42.63700
zoomBox -4.77300 -5.39500 45.76100 39.69900
zoomBox -2.07900 -1.12800 40.87500 37.20200
zoomBox 2.15700 5.58100 33.19200 33.27500
zoomBox 3.81100 8.20100 30.19100 31.74100
zoomBox -2.37900 4.45600 34.13300 37.03700
zoomBox -6.31500 2.07400 36.64000 40.40500
zoomBox -10.94600 -0.72900 39.59000 44.36700
zoomBox -6.31600 2.07300 36.64000 40.40500
reportCongestion -hotspot
setNanoRouteMode -routeWithTimingDriven true
setNanoRouteMode -routeWithSiDriven true
setNanoRouteMode -drouteFixAntenna true
setNanoRouteMode -routeInsertAntennaDiode false
setNanoRouteMode -drouteUseMultiCutViaEffort medium
setNanoRouteMode -route_detail_end_iteration 30
routeDesign
panCenter 14.18700 18.89900
zoomBox 1.14100 11.93000 14.91400 24.22000
verify_drc
timeDesign -postroute -hold
setAnalysisMode -analysisType onChipVariation -cppr both
timeDesign -postRoute -setup
timeDesign -postRoute -hold
setNanoRouteMode -route_detail_end_iteration 20
optDesign -postRoute -hold -drv
setOptMode -fixHoldAllowSetupTnsDegrade false
optDesign -postRoute -hold -drv
man IMPOPT-570
optDesign -reset
optDesign -hold
optDesign -postRoute -hold
verify_drc
timeDesign -postRoute -hold
optDesign -postRoute -hold
timeDesign -postRoute -hold
ecoRoute -fix_drc
timeDesign -postRoute -hold
verify_drc
saveDesign TOPv2
zoomBox 5.98100 15.23700 9.73500 18.58700
zoomBox 6.96300 15.98000 8.63000 17.46800
zoomBox 7.27400 16.20100 8.29900 17.11600
zoomBox 6.96200 15.97900 8.63100 17.46800
zoomBox 6.45200 15.61600 9.17200 18.04300
zoomBox 5.24200 14.75500 10.45500 19.40700
zoomBox 2.92600 13.10700 12.91300 22.01900
zoomBox -1.51200 9.95100 17.62200 27.02500
zoomBox -7.34500 5.80100 23.81300 33.60500
zoomBox -13.15200 1.67200 29.97500 40.15600
zoomBox -21.18800 -4.04300 38.50400 49.22300
pan 15.71700 26.97700
zoomBox -1.58700 19.41100 35.07200 52.12400
zoomBox 0.53600 24.27900 27.02300 47.91500
zoomBox 2.68200 29.23700 18.94900 43.75300
zoomBox -1.84400 19.10400 34.82100 51.82200
zoomBox -7.31400 6.41500 52.39100 59.69300
pan 1.78100 -2.37800
