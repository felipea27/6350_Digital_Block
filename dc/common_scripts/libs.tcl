set link_library [list "/tech/gf/GF_22nm/IP/synopsys/v-logic_gf22nspslogl24edl116f/DesignWare_logic_libs/globalfoundaries22nhsp/24hd116/edl/svt/3.00a/liberty/logic_synth_lvf/gf22nspslogl24edl116f_TT_0P80V_0P00V_0P00V_0P00V_25C.db"]
set target_library [list "/tech/gf/GF_22nm/IP/synopsys/v-logic_gf22nspslogl24edl116f/DesignWare_logic_libs/globalfoundaries22nhsp/24hd116/edl/svt/3.00a/liberty/logic_synth_lvf/gf22nspslogl24edl116f_TT_0P80V_0P00V_0P00V_0P00V_25C.db"]


analyze -format verilog "../fsm_sync/fsm_sync.nl.v"
analyze -format verilog "../Shift_Buffer/Shift_Buffer.nl.v"
analyze -format verilog "../SH_SYNC/SH_SYNC.nl.v"
analyze -format verilog "../Pkt_reg/Pkt_reg.nl.v"
analyze -format verilog "../SPI/SPI_slave.nl.v"
analyze -format verilog "../TX_Buffer/TX_Buffer.nl.v"
analyze -format verilog "../CONFIG/CONFIG.nl.v"
#analyze -format verilog "../TOP/TOP.nl.v"

